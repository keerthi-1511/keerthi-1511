// (c) Copyright 2008 - 2013 Xilinx, Inc. All rights reserved.
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
// \   \   \/     Version: $Revision: #1 $
//  \   \         
//  /   /         Filename: $File: //Groups/video_ip/demos/A7/xapp1097_a7_sdi_demos/Verilog/ac701_TEDSDI_control/lcd_control5.v $
// /___/   /\     Timestamp: $DateTime: 2013/09/30 13:31:35 $
// \   \  /  \
//  \___\/\___\
//
// Description:
//  This module controls the 16x2 character LCD display. It displays the status
//  of up to 4 SDI receivers.
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

module lcd_control5 #(
    ROM_FILE_NAME           = "file_name.txt",
    MIN_FMC_FPGA_REVISION   = 8'h08,
    REQUIRED_CML_TYPE       = 16'h0000,
    REQUIRED_CMH_TYPE       = 16'h0000)
(
    input   wire            clk,                // 27 MHz FMC clock
    input   wire            rst,
    input   wire            sw_c,               // center switch
    input   wire            sw_w,               // west switch
    input   wire            sw_e,               // east switch
    input   wire            sw_n,               // north switch
    input   wire            sw_s,               // south switch
    input   wire [7:0]      fpga_rev,           // FMC FPGA revision code
    input   wire [15:0]     cml_type,           // Clock module L type code
    input   wire            cml_type_valid,
    input   wire            cml_type_error,
    input   wire [15:0]     cmh_type,           // Clock module H type code
    input   wire            cmh_type_valid,
    input   wire            cmh_type_error,
    input   wire [3:0]      active_rx,          // Indicates which SDI RX are active in demo
    input   wire            rx0_locked,
    input   wire [1:0]      rx0_mode,
    input   wire            rx0_level,
    input   wire [3:0]      rx0_t_family,
    input   wire [3:0]      rx0_t_rate,
    input   wire            rx0_t_scan,
    input   wire            rx0_m,
    input   wire            rx1_locked,
    input   wire [1:0]      rx1_mode,
    input   wire            rx1_level,
    input   wire [3:0]      rx1_t_family,
    input   wire [3:0]      rx1_t_rate,
    input   wire            rx1_t_scan,
    input   wire            rx1_m,
    input   wire            rx2_locked,
    input   wire [1:0]      rx2_mode,
    input   wire            rx2_level,
    input   wire [3:0]      rx2_t_family,
    input   wire [3:0]      rx2_t_rate,
    input   wire            rx2_t_scan,
    input   wire            rx2_m,
    input   wire            rx3_locked,
    input   wire [1:0]      rx3_mode,
    input   wire            rx3_level,
    input   wire [3:0]      rx3_t_family,
    input   wire [3:0]      rx3_t_rate,
    input   wire            rx3_t_scan,
    input   wire            rx3_m,
    input   wire            sync_active,
    input   wire            sync_enable,
    input   wire            sync_v,
    input   wire            sync_err,
    input   wire            sync_m,
    input   wire [2:0]      sync_frame_rate,
    input   wire [10:0]     sync_video_fmt,
    output  wire            lcd_e,              // LCD E signal
    output  wire            lcd_rw,             // LCD RW signal
    output  wire            lcd_rs,             // LCD RS signal
    output  wire [3:0]      lcd_d               // LCD data bus
);

//
// Internal signals
//
wire    [7:0]       port_id;            // PicoBlaze port ID output
wire                write_strobe;       // PicoBlaze write strobe
wire                read_strobe;        // PicoBlaze read strobe
wire    [7:0]       output_port;        // PicoBlaze output port
reg     [7:0]       input_port;         // PicoBlaze input port
wire    [9:0]       address;
wire    [17:0]      instruction;
wire    [17:0]      instruction_main;
wire    [17:0]      instruction_aux;
reg                 bank_sel = 1'b0;
reg     [3:0]       lcd_d_int;
reg                 lcd_rs_int;
reg                 lcd_e_int;
reg     [1:0]       sw_c_sync;
reg     [1:0]       sw_w_sync;
reg     [1:0]       sw_e_sync;
reg     [1:0]       sw_n_sync;
reg     [1:0]       sw_s_sync;
reg     [7:0]       name_rom [31:0];

//------------------------------------------------------------------------------
// The name ROM contains the ASCII characters that will be sent to the LCD 
// display on the carrier board.
//
initial
    $readmemb(ROM_FILE_NAME, name_rom);

assign lcd_d  = lcd_d_int;
assign lcd_e  = lcd_e_int;
assign lcd_rs = lcd_rs_int;
assign lcd_rw = 1'b0;

lcdctrl5 CODEROM (
    .address            (address),
    .instruction        (instruction_main),
    .clk                (clk));

lcdaux5 AUXROM (
    .address            (address),
    .instruction        (instruction_aux),
    .clk                (clk));

assign instruction = bank_sel ? instruction_aux : instruction_main;
    
//
// PicoBlaze processor
//
kcpsm3 LCD_PICO (
    .address            (address),
    .instruction        (instruction),
    .port_id            (port_id),
    .write_strobe       (write_strobe),
    .out_port           (output_port),
    .read_strobe        (read_strobe),
    .in_port            (input_port),
    .interrupt          (1'b0),
    .interrupt_ack      (),
    .reset              (rst),
    .clk                (clk));

always @ (posedge clk)
    if (write_strobe & port_id[6])
    begin
        lcd_d_int  <= output_port[7:4];
        lcd_rs_int <= output_port[2];
        lcd_e_int  <= output_port[0];  
    end

always @ (posedge clk)
    if (write_strobe & port_id[7])
        bank_sel <= port_id[0];

always @ (posedge clk)
begin
    sw_c_sync <= {sw_c_sync[0], sw_c};
    sw_w_sync <= {sw_w_sync[0], sw_w};
    sw_e_sync <= {sw_e_sync[0], sw_e};
    sw_n_sync <= {sw_n_sync[0], sw_n};
    sw_s_sync <= {sw_s_sync[0], sw_s};
end

always @ (*)
    if (port_id[7])
        case(port_id[3:0])
            4'h1:       input_port <= MIN_FMC_FPGA_REVISION;
            4'h2:       input_port <= cml_type[15:8];
            4'h3:       input_port <= cml_type[7:0];
            4'h4:       input_port <= REQUIRED_CML_TYPE[15:8];
            4'h5:       input_port <= REQUIRED_CML_TYPE[7:0];
            4'h6:       input_port <= {6'b0, cml_type_error, cml_type_valid};
            4'h8:       input_port <= cmh_type[15:8];
            4'h9:       input_port <= cmh_type[7:0];
            4'hA:       input_port <= REQUIRED_CMH_TYPE[15:8];
            4'hB:       input_port <= REQUIRED_CMH_TYPE[7:0];
            4'hC:       input_port <= {6'b0, cmh_type_error, cmh_type_valid};
            default:    input_port <= fpga_rev;
        endcase
    else if (port_id[6])
        input_port <= name_rom[port_id[4:0]];
    else if (port_id[5])
        case(port_id[3:0])
            4'b0000:    input_port <= {rx0_t_family, rx0_level, rx0_mode, rx0_locked};
            4'b0001:    input_port <= {rx1_t_family, rx1_level, rx1_mode, rx1_locked};
            4'b0010:    input_port <= {rx2_t_family, rx2_level, rx2_mode, rx2_locked};
            4'b0011:    input_port <= {rx3_t_family, rx3_level, rx3_mode, rx3_locked};
            4'b0100:    input_port <= {2'b00, rx0_t_scan, rx0_t_rate, rx0_m};
            4'b0101:    input_port <= {2'b00, rx1_t_scan, rx1_t_rate, rx1_m};
            4'b0110:    input_port <= {2'b00, rx2_t_scan, rx2_t_rate, rx2_m};
            4'b0111:    input_port <= {2'b00, rx3_t_scan, rx3_t_rate, rx3_m};
            4'b1000:    input_port <= {4'b0, active_rx};
            4'b1001:    input_port <= {~sync_enable, sync_active, sync_v, sync_err, sync_m, sync_frame_rate};
            4'b1010:    input_port <= {5'b0, sync_video_fmt[10:8]};
            default:    input_port <= sync_video_fmt[7:0];
        endcase
    else
        input_port <= {3'b0, sw_s_sync[1], sw_n_sync[1], sw_e_sync[1], sw_w_sync[1], sw_c_sync[1]};

endmodule
