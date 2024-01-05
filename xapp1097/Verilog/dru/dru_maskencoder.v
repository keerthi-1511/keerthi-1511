//-----------------------------------------------------------------------------
//  (c) Copyright 2010-2013 Xilinx, Inc. All rights reserved.
//
//  This file contains confidential and proprietary information
//  of Xilinx, Inc. and is protected under U.S. and
//  international copyright and other intellectual property
//  laws.
//
//------------------------------------------------------------------------------
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: $Revision: #3 $
//  \   \         
//  /   /         Filename: $File: //Groups/video_ip/demos/A7/xapp1097_a7_sdi_demos/Verilog/dru/dru_maskencoder.v $
// /___/   /\     Timestamp: $DateTime: 2013/09/30 13:31:35 $
// \   \  /  \
//  \___\/\___\
//
// Description:
//  Mask encoder for NI-DRU barrel shifter.
//------------------------------------------------------------------------------
//  DISCLAIMER
//  This disclaimer is not a license and does not grant any
//  rights to the materials distributed herewith. Except as
//  otherwise provided in a valid license issued to you by
//  Xilinx, and to the maximum extent permitted by applicable
//  law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
//  WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
//  AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
//  BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
//  INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
//  (2) Xilinx shall not be liable (whether in contract or tort,
//  including negligence, or under any other theory of
//  liability) for any loss or damage of any kind or nature
//  related to, arising under or in connection with these
//  materials, including for any direct, or any indirect,
//  special, incidental, or consequential loss or damage
//  (including loss of data, profits, goodwill, or any type of
//  loss or damage suffered as a result of any action brought
//  by a third party) even if such damage or loss was
//  reasonably foreseeable or Xilinx had been advised of the
//  possibility of the same.
//
//  CRITICAL APPLICATIONS
//  Xilinx products are not designed or intended to be fail-
//  safe, or for use in any application requiring fail-safe
//  performance, such as life-support or safety devices or
//  systems, Class III medical devices, nuclear facilities,
//  applications related to the deployment of airbags, or any
//  other applications that could lead to death, personal
//  injury, or severe property or environmental damage
//  (individually and collectively, "Critical
//  Applications"). Customer assumes the sole risk and
//  liability of any use of Xilinx products in Critical
//  Applications, subject only to applicable laws and
//  regulations governing limitations on product liability.
//
//  THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
//  PART OF THIS FILE AT ALL TIMES. 
//
//----------------------------------------------------------

`timescale 1ns / 1ps

module dru_maskencoder (
    input  wire         CLK,        // clock
    input  wire         RST,        // reset
    input  wire [4:0]   SHIFT,      // shift count
    output wire [19:0]  MASK);      // output mask
    
    reg [19:0] maschera = 20'b0;

    assign MASK = maschera;

    always @(posedge CLK)
    begin
        if (~RST)
            maschera <= 20'b0;
        else
            case (SHIFT)
                5'b00000: maschera <= 20'b00000000001111111111;
                5'b00001: maschera <= 20'b00000000011111111110;
                5'b00010: maschera <= 20'b00000000111111111100;
                5'b00011: maschera <= 20'b00000001111111111000;
                5'b00100: maschera <= 20'b00000011111111110000;
                5'b00101: maschera <= 20'b00000111111111100000;
                5'b00110: maschera <= 20'b00001111111111000000;
                5'b00111: maschera <= 20'b00011111111110000000;
                5'b01000: maschera <= 20'b00111111111100000000;
                5'b01001: maschera <= 20'b01111111111000000000;
                5'b01010: maschera <= 20'b11111111110000000000;
                5'b01011: maschera <= 20'b11111111100000000001;
                5'b01100: maschera <= 20'b11111111000000000011;
                5'b01101: maschera <= 20'b11111110000000000111;
                5'b01110: maschera <= 20'b11111100000000001111;
                5'b01111: maschera <= 20'b11111000000000011111;
                5'b10000: maschera <= 20'b11110000000000111111;
                5'b10001: maschera <= 20'b11100000000001111111;
                5'b10010: maschera <= 20'b11000000000011111111;
                5'b10011: maschera <= 20'b10000000000111111111;
                default:  maschera <= 20'b00000000001111111111;
            endcase
    end

endmodule