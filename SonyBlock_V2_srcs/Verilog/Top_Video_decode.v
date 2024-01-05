`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.10.2023 10:56:25
// Design Name: 
// Module Name: top_vedio_decode
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

//`define SINGLE_SERDES 1
module Top_Video_decode(

input tx_clk_p,
input tx_clk_n,

input tx_out0_p,
input tx_out0_n,

input tx_out1_p,
input tx_out1_n,

input tx_out2_p,
input tx_out2_n,

input tx_out3_p,
input tx_out3_n,

input tx_out4_p,
input tx_out4_n,

input locked_out,

output wire [7:0]decode_Y_Data ,
output wire [7:0]decode_C_Data ,
output wire decode_fval ,
output wire decode_lval ,
output wire vid_slw_clk


    );
    
  
  
  
wire vid_fast_clk;
wire locked_vid;
wire [3:0] data_in1_from_pins_p;
wire [3:0] data_in1_from_pins_n;
`ifdef SINGLE_SERDES
wire [27:0]data_in_to_device1;
 `else
wire [6:0]data_in_to_device1;
wire [6:0]data_in_to_device2;
wire [6:0]data_in_to_device3;
wire [6:0]data_in_to_device4;
`endif
 
 wire bit_slip;
 wire [7:0]Y_Data;
 wire [7:0]C_Data;
 reg bitslip_in;
 reg bitslip_in_d;

VID_CLK u_vid_clk   (

  // Clock out ports
  .clk_out1(vid_fast_clk ),     // output clk_out1
  .clk_out2(vid_slw_clk ),     // output clk_out2
  // Status and control signals
  .reset(!locked_out), // input reset
  .locked(locked_vid),       // output locked
 // Clock in ports
  .clk_in1_p( tx_clk_p),    // input clk_in1_p
  .clk_in1_n( tx_clk_n)
  );  
    
  
  
  
  
  
  
      
   `ifdef SINGLE_SERDES
            sens_vid_in 
     u_sens_vid_in_1
     (
      .data_in_from_pins_p   (data_in1_from_pins_p), // input [3:0] data_in_from_pins_p
      .data_in_from_pins_n   (data_in1_from_pins_n), // input [3:0] data_in_from_pins_n
      .data_in_to_device     (data_in_to_device1), // output [31:0] data_in_to_device
      .bitslip               (bit_slip), // input bitslip                           
      .clk_in                (vid_fast_clk), // input clk_in                            
      .clk_div_in            (vid_slw_clk ), // input clk_div_in 
      .io_reset              (!locked_vid) // input io_reset
     ); 
     
   `else
         
         
         
      sens_vid_in 
      u_sens_vid_in_1
      (
       .data_in_from_pins_p   (tx_out0_p), // input [3:0] data_in_from_pins_p
       .data_in_from_pins_n   (tx_out0_n), // input [3:0] data_in_from_pins_n
       .data_in_to_device     (data_in_to_device1), // output [31:0] data_in_to_device
       .bitslip               (bit_slip), // input bitslip                           
       .clk_in                (vid_fast_clk), // input clk_in                            
       .clk_div_in            (vid_slw_clk ), // input clk_div_in 
       .io_reset              (!locked_vid) // input io_reset
      ); 
    
   
       sens_vid_in 
      u_sens_vid_in_2
      (
       .data_in_from_pins_p   (tx_out1_p), // input [3:0] data_in_from_pins_p
       .data_in_from_pins_n   (tx_out1_n), // input [3:0] data_in_from_pins_n
       .data_in_to_device     (data_in_to_device2), // output [31:0] data_in_to_device
       .bitslip               (bit_slip), // input bitslip                           
       .clk_in                (vid_fast_clk), // input clk_in                            
       .clk_div_in            (vid_slw_clk ), // input clk_div_in 
       .io_reset              (!locked_vid) // input io_reset
      ); 
    
        sens_vid_in 
     u_sens_vid_in_3
     (
      .data_in_from_pins_p   (tx_out2_p), // input [3:0] data_in_from_pins_p
      .data_in_from_pins_n   (tx_out2_n), // input [3:0] data_in_from_pins_n
      .data_in_to_device     (data_in_to_device3), // output [31:0] data_in_to_device
      .bitslip               (bit_slip), // input bitslip                           
      .clk_in                (vid_fast_clk), // input clk_in                            
      .clk_div_in            (vid_slw_clk ), // input clk_div_in 
      .io_reset              (!locked_vid) // input io_reset
     );
    
    
    
         sens_vid_in 
   u_sens_vid_in_4
   (
   .data_in_from_pins_p   (tx_out3_p), // input [3:0] data_in_from_pins_p
   .data_in_from_pins_n   (tx_out3_n), // input [3:0] data_in_from_pins_n
   .data_in_to_device     (data_in_to_device4), // output [31:0] data_in_to_device
   .bitslip               (bit_slip), // input bitslip                           
   .clk_in                (vid_fast_clk), // input clk_in                            
   .clk_div_in            (vid_slw_clk ), // input clk_div_in 
   .io_reset              (!locked_vid) // input io_reset
   );
   
   `endif
   
   

   wire [7:0]pix_data;
   
    /*
   
   27    26    25    24    23    22    21
   Y6    Y5    Y4    Y3    Y2    Y1    Y0
   
   20    19    18    17    16    15    14
   0    0    0    *    *    *    Y7
   
   13    12    11    10    9    8    7
   *    C5    C4    C3    C2    C1    C0
   
   6    5    4    3    2    1    0
   0    0    0    0    0    C6    C7
   
   
   
   
   */ 
   
   
   
   assign Y_Data = {data_in_to_device2[6],data_in_to_device1[0],data_in_to_device1[1],data_in_to_device1[2],data_in_to_device1[3],data_in_to_device1[4],data_in_to_device1[5],data_in_to_device1[6]};
   
   
   assign C_Data = {data_in_to_device4[6],data_in_to_device3[0],data_in_to_device3[1],data_in_to_device3[2],data_in_to_device3[3],data_in_to_device3[4],data_in_to_device3[5],data_in_to_device3[6]};
    
    assign bit_slip = bitslip_in & ~bitslip_in_d;
    assign data_in1_from_pins_p={tx_out3_p,tx_out2_p,tx_out1_p,tx_out0_p};
    assign data_in1_from_pins_n={tx_out3_n,tx_out2_n,tx_out1_n,tx_out0_n};
         
         
         
        always@(posedge  vid_fast_clk)begin
        if(!locked_vid)begin
         bitslip_in_d <= 1'b0;
        end
        else begin
          bitslip_in_d <= bitslip_in ;
          
    
         
        end
        end
         
         
         
       always@(posedge  vid_fast_clk)begin
        if(!locked_vid)begin
         bitslip_in_d <= 1'b0;
        end
        else begin
          bitslip_in_d <= bitslip_in ;
          
    
         
        end
        end
         
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   Video_Decode u_Video_Decode(
   
   .pixel_clk     (vid_slw_clk   ),//input pixel_clk,
   .reset_n       (locked_vid    ),//input reset_n,
   .Y_Data        (Y_Data        ),//input [7:0]Y_Data,
   .C_Data        (C_Data        ),//input [7:0]C_Data,
   .decode_Y_Data (decode_Y_Data ),//output [7:0]pix_data,
   .decode_C_Data (decode_C_Data ),
   .decode_fval   (decode_fval   ),//output fval,
   .decode_lval   (decode_lval   ) //output lval
   
       );
     
    
endmodule
