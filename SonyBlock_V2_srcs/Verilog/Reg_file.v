`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/04/2023 04:59:53 PM
// Design Name: 
// Module Name: Reg_file
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


module Reg_file(
        input  clk,
        input  rst_n,
        input  regWe,
        input  [7:0] regAddr,
        input  [7:0] regWr_data,
        input  regRd,
        output reg [7:0] regReadData,
        output  [39:0]memory_cmd ,
        output gpo_up
    );
    
  wire flash_status;
  parameter MEMORY_CMD =1;
  parameter FILE_SIZE = 6;
  parameter FIRMWARE_UPDATE=7;
  parameter FLASH_STATUS = 8;
  
  reg [7:0] Reg_set [0:255];
  
  
 
  
  assign memory_cmd ={Reg_set[MEMORY_CMD],Reg_set[MEMORY_CMD+1],Reg_set[MEMORY_CMD+2],Reg_set[MEMORY_CMD+3],Reg_set[MEMORY_CMD+4]};
  assign gpo_up  =  ((regAddr==FIRMWARE_UPDATE ) & regWe );
 // assign flash_status =Reg_set[FLASH_STATUS] ;
  always@(posedge clk) begin
   if(!rst_n) begin
     Reg_set [0] <=  0 ;
     Reg_set [1] <=  0 ;
     Reg_set [2] <=  0 ;
     Reg_set [3] <=  0 ;
     Reg_set [4] <=  0 ; 
     regReadData  <= 0;
   end
   else begin
     Reg_set [regAddr] <= Reg_set [regAddr]   ; 
   if(regWe)
      Reg_set [regAddr] <= regWr_data ;
   
   
   
   if(regRd)
       regReadData <= Reg_set[regAddr]; 
       
       
       
       
   end
  end
   
//   wire [19:0]probe0;

//assign probe0={ regWe , regWr_data,regReadData,regRd}; 
   
                                                                                 
//         ila_0 u_ila_0 (                                                                      
//                           .clk(clk), // input wire clk                                                     
//                           .probe0(probe0) // input wire [63:0] probe0    
//         );    
   
    
endmodule
