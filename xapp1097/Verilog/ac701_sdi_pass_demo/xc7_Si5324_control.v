// (c) Copyright 2009-2012 Xilinx, Inc. All rights reserved.
//
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
//
//------------------------------------------------------------------------------
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: $Revision:
//  \   \         
//  /   /         Filename: $File:
// /___/   /\     Timestamp: $DateTime:
// \   \  /  \
//  \___\/\___\
//
// Description:
//  Control module for the Si5324 on the KC705 board. The Si5324 is controlled
//  via the I2C bus. This module allows the input frequency and output frequency
//  to be selected from a set of predefined combinations suitable for broadcast
//  applications. The bandwidth of the Si5324 may also be selected from a set that
//  varies with each input/output frequency combination.
//------------------------------------------------------------------------------
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
//
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
//
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.

`timescale 1ns / 1ns

module xc7_Si5324_control #(
    IIC_BUS_SELECT              = 8'h80)            // Unary bit select for target I2C bus through MUX
(
// Timing and control
    input   wire                clk,                // clock (27 MHz)
    input   wire                rst,                // sync reset
    input   wire [3:0]          Si5324_out_fsel,    // ouput frequency select
    input   wire [4:0]          Si5324_in_fsel,     // input frequency select
    input   wire [3:0]          Si5324_bw_sel,      // bandwidth select
    input   wire                Si5324_DHOLD,       // digital holdover mode enable
    input   wire                Si5324_reset,       // 1 resets the Si5324
    output  wire                Si5324_LOL,         // 1 = loss of lock
    inout   wire                Si5324_scl,         // I2C SCL signal
    inout   wire                Si5324_sda,         // I2C SDA signal
    output  wire                Si5324_rst_b        // RST pin asserted low
);

//
// Internal signals
//
wire    [11:0]      address;            // PicoBlaze block RAM address
wire    [17:0]      instruction;        // PicoBlaze block RAM data output
wire    [7:0]       port_id;            // PicoBlaze port ID output
wire                write_strobe;       // PicoBlaze write strobe
wire                read_strobe;        // PicoBlaze read strobe
wire    [7:0]       out_port;           // PicoBlaze output port
reg     [7:0]       in_port = 0;        // PicoBlaze input port
wire                interrupt;
wire                kcpsm6_sleep;
wire                kcpsm6_reset;
wire                bram_enable;
reg     [1:0]       i2c_reg = 2'b11;    // [SCL,SDA] control bits from pBlaze
reg                 rst_reg = 1'b0;     // I2C reset control bit
wire                scl_in;             // SCL input signal
wire                sda_in;             // SDA input signal
reg     [7:0]       rom_addr_ms = 0;    // ROM address reg
reg     [3:0]       rom_addr_ls = 0;    // LS ROM address counter
wire    [11:0]      rom_addr;           // complete ROM address
wire    [8:0]       rom_data;
reg     [7:0]       Si5324_status;      // Si5324 status register
wire    [7:0]       Si5324_fsel;
wire    [7:0]       Si5324_bwsel;
wire    [7:0]       Si5324_ctrl;

//
// Bidirectional buffers for the I2C SCL and SDA signals.
//
IOBUF #(
    .IOSTANDARD ("LVCMOS25"),
    .SLEW       ("SLOW"),
    .DRIVE      (8))
IOBUF_SCL (
    .I          (1'b0),
    .O          (scl_in),
    .IO         (Si5324_scl),
    .T          (i2c_reg[1]));

IOBUF #(
    .IOSTANDARD ("LVCMOS25"),
    .SLEW       ("SLOW"),
    .DRIVE      (8))
IOBUF_SDA (
    .I          (1'b0),
    .O          (sda_in),
    .IO         (Si5324_sda),
    .T          (i2c_reg[0]));

//
// PicoBlaze CPU
//
kcpsm6 #(
    .interrupt_vector           (12'h3FF),
    .scratch_pad_memory_size    (64),
    .hwbuild                    (8'h00))
processor (
    .address        (address),
    .instruction    (instruction),
    .bram_enable    (bram_enable),
    .port_id        (port_id),
    .write_strobe   (write_strobe),
    .k_write_strobe (),
    .out_port       (out_port),
    .read_strobe    (read_strobe),
    .in_port        (in_port),
    .interrupt      (interrupt),
    .interrupt_ack  (),
    .reset          (kcpsm6_reset),
    .sleep          (kcpsm6_sleep),
    .clk            (clk)); 

assign kcpsm6_sleep = 1'b0;
assign interrupt = 1'b0;
assign kcpsm6_reset = 1'b0;

//
// Program ROM for PicoBlaze
//
XCSi5324 program_rom (
    .enable         (bram_enable),
    .address        (address),
    .instruction    (instruction),
    .clk            (clk));

//
// I2C control register
//
always @ (posedge clk)
    if (rst)
    begin
        i2c_reg <= 2'b11;
        rst_reg <= 1'b0;
    end
    else if (write_strobe & port_id[2])
    begin
        i2c_reg <= out_port[1:0];
        rst_reg <= out_port[7];
    end

assign Si5324_rst_b = ~rst_reg;

//
// Si5324 status registers
//
always @ (posedge clk)
    if (rst)
        Si5324_status <= 0;
    else if (write_strobe & port_id[3])
        Si5324_status <= out_port;

assign Si5324_LOL = Si5324_status[0];

//
// Si5324 value ROM
//
// This ROM contains the Si5324 register values to be used based on the input
// and output frequency combinations.
//
Si5324_settings_rom SI5324_VALROM (
    .clka   (clk),
    .addra  (rom_addr),
    .douta  (rom_data),
    .clkb   (1'b0),
    .addrb  (12'b0),
    .doutb  ());

always @ (posedge clk)
    if (write_strobe & port_id[6])
        rom_addr_ms <= out_port;

always @ (posedge clk)
    if (write_strobe & port_id[6])
        rom_addr_ls <= 4'b0000;
    else if (read_strobe & port_id[6] & ~port_id[0])
        rom_addr_ls <= rom_addr_ls + 4'b0001;

assign rom_addr = {rom_addr_ms, rom_addr_ls};

//
// PicoBlaze Input Port Mux
//
assign Si5324_ctrl = {3'b0, Si5324_DHOLD, 1'b0, Si5324_reset, 2'b10};   // LS 2 bits must be 10 to select CKIN1 of Si5324
assign Si5324_bwsel = {4'b0, Si5324_bw_sel};

always @ (posedge clk)
    if (port_id[1])
        in_port <= IIC_BUS_SELECT;
    else if (port_id[2])
        in_port <= {6'b0, scl_in, sda_in};
    else if (port_id[3])
        in_port <= Si5324_ctrl;
    else if (port_id[4])
        in_port <= port_id[0] ? Si5324_bwsel : Si5324_fsel;
    else if (port_id[5])
        in_port <= 8'b0;
    else if (port_id[6])
        in_port <= port_id[0] ? {7'b0, rom_data[8]} : rom_data[7:0];
    else if (port_id[7])
        in_port <= 8'b0;
    else
        in_port <= 8'b0;

//
// Si5324 frequency select mapping
//
// For all output frequencies selected by Si5324_out_fsel codes 0 through 7,
// the mapping is simply the concatenation of the LS 3 bits of Si5324_out_fsel
// with the 5 bits of Si5324_in_fsel, just as was previously done when
// Si53234_out_fsel was just 3 bits. However, if bit 3 of Si5324_out_fsel is 1,
// use a mapping looking up ROM.
//

Si5324_fsel_lookup FSEL (
    .clk            (clk),
    .in_fsel        (Si5324_in_fsel),
    .out_fsel       (Si5324_out_fsel),
    .fsel           (Si5324_fsel));

endmodule