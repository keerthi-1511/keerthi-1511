//-----------------------------------------------------------------------------
//  (c) Copyright 2010-2011 Xilinx, Inc. All rights reserved.
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
//  /   /         Filename: $File: //Groups/video_ip/demos/A7/xapp1097_a7_sdi_demos/Verilog/dru/dru_rot20.v $
// /___/   /\     Timestamp: $DateTime: 2013/09/30 13:31:35 $
// \   \  /  \
//  \___\/\___\
//
// Description:
//  Part of the DRU barrel shifter.
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

module dru_rot20 (
    input  wire         CLK,    // clock
    input  wire         RST,    // reset   
    input  wire [19:0]  HIN,    // hin      
    output wire [19:0]  HOUT,   // hout    
    input  wire [4:0]   P);     // p 

    wire [19:0] a;
    wire [19:0] b;
    wire [19:0] c;
    wire [19:0] d;
    wire [19:0] e;
    reg  [19:0] temp = 20'b0;
    
    assign a =  (P[0] == 1'b0) ?  HIN[19:0] : {HIN[18:0], HIN[19]};       
    assign b =  (P[1] == 1'b0) ?  a[19:0]   : {a[17:0], a[19:18]};       
    assign c =  (P[2] == 1'b0) ?  b[19:0]   : {b[15:0], b[19:16]};       
    assign d =  (P[3] == 1'b0) ?  c[19:0]   : {c[11:0], c[19:12]};       
    assign e =  (P[4] == 1'b0) ?  d[19:0]   : {d[3:0],  d[19:4]};       

    always @(posedge CLK)
    if (RST == 1'b0)
        temp <= 20'b00000000000000000000;
    else
        temp <= e;
        
    assign HOUT = temp;

endmodule

