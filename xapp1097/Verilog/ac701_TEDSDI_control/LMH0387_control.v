// (c) Copyright 2011 - 2013 Xilinx, Inc. All rights reserved.
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
// \   \   \/     Version: $Revision: #3 $
//  \   \         
//  /   /         Filename: $File: //Groups/video_ip/demos/A7/xapp1097_a7_sdi_demos/Verilog/ac701_TEDSDI_control/LMH0387_control.v $
// /___/   /\     Timestamp: $DateTime: 2013/09/30 13:31:35 $
// \   \  /  \
//  \___\/\___\
//
// Description:
//  Control module for the LMH0387 devices on the TED SDI FMC mezzanine board. 
//  There are 6 of these devices on the board. They are all connected to the 
//  same SPI bus.
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

module LMH0387_control (
// Timing and control
    input   wire                clk,                // clock (27 MHz)
    input   wire                rst,                // sync reset
    output  wire                sclk,               // SPI clock output
    output  wire                mosi,               // SPI MOSI
    input   wire                miso,               // SPI MISO
    output  reg                 ss0t,               // LMH0387 TX0 slave select
    output  reg                 ss0r,               // LMH0387 RX0 slave select
    output  reg                 ss1t,               // LMH0387 TX1 slave select
    output  reg                 ss1r,               // LMH0387 RX0 slave select
    output  reg                 ss2,                // LMH0387 RX/TX3 slave select
    output  reg                 ss3,                // LMH0387 RX/TX4 slave select
    input   wire [3:0]          rxeq_en             // Unary RX EQ enable input
);

//
// Internal signals
//
wire    [11:0]      address;            // PicoBlaze block RAM address
wire    [17:0]      instruction;        // PicoBlaze block RAM data output
wire    [7:0]       port_id;            // PicoBlaze port ID output
wire                write_strobe;       // PicoBlaze write strobe
wire                k_write_strobe;     // PicoBlaze k write strobe
wire                h_write_strobe;     // OR of the two write strobes
wire                read_strobe;        // PicoBlaze read strobe
wire    [7:0]       out_port;           // PicoBlaze output port
reg     [7:0]       in_port = 0;        // PicoBlaze input port
wire                interrupt;
wire                kcpsm6_reset;
wire                kcpsm6_sleep;
wire                bram_enable;
reg     [2:0]       spi_reg = 3'b100;   // [SS,SCK,MOSI] control bits from pBlaze
reg     [2:0]       ss_reg = 3'b000;    // individual slave select register
wire                ss;                 // master SS signal
wire    [5:0]       rxeqen_bits;

assign rxeqen_bits = {rxeq_en[3], rxeq_en[2], rxeq_en[1], 1'b1, rxeq_en[0], 1'b1};

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
    .k_write_strobe (k_write_strobe),
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
assign kcpsm6_reset = rst;
assign h_write_strobe = k_write_strobe | write_strobe;

lmh0387t inst_rom (
    .address        (address),
    .instruction    (instruction),
    .enable         (bram_enable),
    .clk            (clk));

//
// SPI control register
//
always @ (posedge clk)
    if (rst)
        spi_reg <= 3'b100;
    else if (h_write_strobe & ~port_id[0])
        spi_reg <= out_port[2:0];

assign ss   = spi_reg[2];
assign sclk = spi_reg[1];
assign mosi = spi_reg[0];

//
// SS register
//
always @ (posedge clk)
    if (rst)
        ss_reg <= 3'b000;
    else if (h_write_strobe & port_id[0])
        ss_reg <= out_port[2:0];

always @ (*)
begin
    ss0t = 1'b1;
    ss0r = 1'b1;
    ss1t = 1'b1;
    ss1r = 1'b1;
    ss2  = 1'b1;
    ss3  = 1'b1;
        
    if (~ss)
        case(ss_reg)
            3'd0:       ss0t = 1'b0;
            3'd1:       ss0r = 1'b0;
            3'd2:       ss1t = 1'b0;
            3'd3:       ss1r = 1'b0;
            3'd4:       ss2  = 1'b0;
            3'd5:       ss3  = 1'b0;
            default:    ;
        endcase
end

//
// PicoBlaze Input Port Mux
//
always @ (posedge clk)
    if (~port_id[0])
        in_port <= {7'b0, miso};
    else
        in_port <= {2'b00, rxeqen_bits};

endmodule