//-----------------------------------------------------------------------------
//  (c) Copyright 2010-2013 Xilinx, Inc. All rights reserved.
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
//  /   /         Filename: $File: //Groups/video_ip/demos/A7/xapp1097_a7_sdi_demos/Verilog/dru/dru.v $
// /___/   /\     Timestamp: $DateTime: 2013/09/30 13:31:35 $
// \   \  /  \
//  \___\/\___\
//
// Description:
//  This file is a black box instantiation of the DRU used to receive SD-SDI.
//  The DRU is actually defined in a pre-generated and encrypted file dru.ngc.
//  In Verilog SDI implementations, the dru.v file is included in the project
//  to define the ports of the DRU.
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
//
//----------------------------------------------------------
`timescale 1ns / 1ps

module dru(
    input  [19:0]   DT_IN,      // data in from MGT
    input  [36:0]   CENTER_F,   // center frequency
    input  [4:0]    G1,         // G1
    input  [4:0]    G1_P,       // G1_P
    input  [4:0]    G2,         // G2
    input           CLK,        // RXRECCLK from MGT
    input           RST,        // reset
    input           RST_FREQ,   // rst freq
    output [7:0]    VER,        // version
    input           EN,         // enable
    output [31:0]   INTEG,      // integ
    output [31:0]   DIRECT,     // direct
    output [31:0]   CTRL,       // ctrl
    output [20:0]   PH_OUT,     // ph_out
    output [19:0]   RECCLK,     // connect to MGT TXDATA port for generating recovered clok
    output [3:0]    SAMV,       // output valid signals
    output [9:0]    SAM         // output data
    );


endmodule
