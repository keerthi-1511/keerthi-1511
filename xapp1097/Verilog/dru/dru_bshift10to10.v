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
//  /   /         Filename: $File: //Groups/video_ip/demos/A7/xapp1097_a7_sdi_demos/Verilog/dru/dru_bshift10to10.v $
// /___/   /\     Timestamp: $DateTime: 2013/09/30 13:31:35 $
// \   \  /  \
//  \___\/\___\
//
// Description:
//  Barrel shifter for the NI-DRU used to recover SD-SDI data.
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

module dru_bshift10to10 (
    input   wire           CLK,             // clock
    input   wire           RST,             // reset
    input   wire [9:0]     DIN,             // data in
    input   wire [3:0]     DV,              // data in valid
    output  reg            DV10 = 1'b0,     // data valid output
    output  reg  [9:0]     DOUT10 = 10'b0); // output data



    reg  [19:0] reg20 = 20'b0;
    reg  [4:0]  i;

    wire [19:0] dinext;
    wire [19:0] dinext_rot;
    wire [19:0] mask;
    wire [4:0]  pointer1;
    wire [9:0]  regout;
    wire        wrflag;
    wire        valid;


    dru_maskencoder I_Maskdec (
        .CLK(CLK),
        .RST(RST),
        .SHIFT(pointer1),
        .MASK(mask));


    dru_control I_control (
        .CLK(CLK),
        .RST(RST),
        .DV(DV),
        .SHIFT(pointer1),
        .WRFLAG(wrflag),
        .VALID(valid));


    assign dinext = {10'b0000000000, DIN};

    dru_rot20 Inst_data_bs (
        .CLK(CLK),
        .RST(RST),
        .HIN(dinext),
        .HOUT(dinext_rot),
        .P  (pointer1));



    // writing in the 20 bit register
    always @(posedge CLK)
        if (RST == 1'b0)
            reg20 <= 20'b00000000000000000000;
        else
            begin
            for(i=0; i<20; i=i+1)
                begin
                    if (mask[i]==1'b1)
                        reg20[i] <= dinext_rot[i];
                    else
                        reg20[i] <= reg20[i]; 
                end //for
            end //process begin
              
    
    
    assign regout =  (wrflag == 1'b0) ?  reg20[9:0] : reg20[19:10];       
    
    always @(posedge CLK)
        if (RST == 1'b0)
            DOUT10 <= 10'b0000000000;
        else
            DOUT10 <= regout;

    always @(posedge CLK)
        if (RST == 1'b0)
            DV10 <= 1'b0;
        else
            DV10 <= valid;
endmodule