// (c) Copyright 2009 - 2013 Xilinx, Inc. All rights reserved.
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
//  /   /         Filename: $File: //Groups/video_ip/demos/A7/xapp1097_a7_sdi_demos/Verilog/ac701_sdi_pass_demo/Si5324_fsel_lookup.v $
// /___/   /\     Timestamp: $DateTime: 2013/09/30 13:31:35 $
// \   \  /  \
//  \___\/\___\
//
// Description:
//   This module converts the Si5324 input and output frequency select values 
//   into an 8-bit frequency select number that is sent to the Si5324.
//
//   For out_fsel values of 7 or less, the mapping is just a concatenation of
//   {out_fsel[2:0], in_fsel} which corresponds to the original 8-bit direct 
//   mapping implemented in early versions of the CTXIL671 Spartan-3A code. If 
//   out_fsel[3] is 1, then there is a mapping process that goes on to fit these
//   other mapping values into unused code spaces in the sparse 256-entry 
//   programming lookup table.
//------------------------------------------------------------------------------
//
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

`timescale 1ns / 1 ns

module Si5324_fsel_lookup
( 
    input   wire            clk,             // clock input
    input   wire [3:0]      out_fsel,        // selects the output frequency
    input   wire [4:0]      in_fsel,         // selects the input frequency
    output  wire [7:0]      fsel);           // frequency select value


reg  [7:0]  lookup_rom = 0;
reg  [3:0]  out_fsel_reg = 4'b0000;
reg  [4:0]  in_fsel_reg = 5'b00000;

always @ (posedge clk)
begin
    out_fsel_reg <= out_fsel;
    in_fsel_reg  <= in_fsel;
end

always @ (posedge clk)
    if (out_fsel[2:0] == 3'b000)        // corresponds to 297 MHz (out_fsel = 1000)
        case(in_fsel)
            5'd23:      lookup_rom <= 8'd247;
            5'd24:      lookup_rom <= 8'd248;
            5'd25:      lookup_rom <= 8'd249;
            5'd26:      lookup_rom <= 8'd250;
            5'd27:      lookup_rom <= 8'd251;
            5'd28:      lookup_rom <= 8'd252;
            default:    lookup_rom <= 8'd247;
        endcase
    else if (out_fsel[2:0] == 3'b001)   // corresponds to 297/1.001 MHz (out_fsel = 1001)
        case(in_fsel)
            5'd23:      lookup_rom <= 8'd209;
            5'd24:      lookup_rom <= 8'd210;
            5'd25:      lookup_rom <= 8'd211;
            5'd26:      lookup_rom <= 8'd212;
            5'd27:      lookup_rom <= 8'd213;
            5'd28:      lookup_rom <= 8'd214;
            default:    lookup_rom <= 8'd209;
            endcase
    else if (out_fsel[2:0] == 3'b010)   // corresponds to 156.25 MHz (out_fsel = 1010)
        lookup_rom <= 8'd255;           // only 27 MHz to 156.25 MHz is supported
    else
        lookup_rom <= 8'd0;

assign fsel = out_fsel_reg[3] ? lookup_rom : {out_fsel_reg[2:0], in_fsel_reg};

endmodule

