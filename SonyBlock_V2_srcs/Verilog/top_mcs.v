`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/03/2023 06:56:21 PM
// Design Name: 
// Module Name: top_mcs
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


module top_mcs(
        input clk,
        input rd_clk ,
        input rst_n,
        input fifo_rst ,
        input IO_addr_strobe,
        input IO_write_strobe,
        input [7:0] IO_Write_data, 
        input  uart_buffer_rst,
        input [3:0]  IO_Byte_Enable,
        input [31:0] IO_Address,
        input        IO_read_strobe, 
        output [31:0] IO_Read_Data,
        output uart_buffer_empty,
        output fifo_buffer_empty,
        output IO_ready,
        output regWren,
        output [7:0] regAddr,
        output [7:0] regData,
        output regRden,
        input  [7:0] regReadData,
        input flash_rd_en  ,
        output   [3:0]flash_data ,
          //Flash Data
       output wire       flash_wren,
       output wire [7:0] flash_wrdata,     
       output wire FLASH_DATA_EN,
       output wire  Flash_rd,
       output wire [1:0] mem_sel,
       input [7:0]flash_read
        
        
        

    );
    
    
   localparam REGDATA      = 2'b00;
   localparam UART         = 2'b01;
   localparam FLASHDATA    = 2'b10;
   
    
   reg IO_write_strobe_d;
   reg IO_write_strobe_dd,IO_write_strobe_3d;
   
   reg IO_read_strobe_d;
   reg IO_read_strobe_dd;
   reg IO_read_strobe_3d;
   
   wire [7:0] IO_read_data ;
   
//  wire [1:0] mem_sel;
  
  wire Wr_en;
  reg Wr_en_d;
  reg Wr_en_dd;
  
  reg [7:0] addr;
  wire rd_en;
  wire Wr_en_ne;
  wire rd_en_ne;
  
  
  wire [7:0] uart_read_data ;

  wire REG_DATA_EN;
//  wire FLASH_DATA_EN;
  wire UART_EN;
  
 wire uart_buf_wren;
 wire [7:0] uart_buf_wrdata;
 wire uart_buf_rden;
 
 reg [7:0]data;
  reg [7:0] flash_wrdata_d;
   
  reg  [7:0]  regReadData_d     ;
  reg  [7:0]  flash_read_d      ;
  reg  [7:0]  uart_read_data_d  ;
  wire [7:0]  uart_fin_data;
 reg rd_en_d;
  assign REG_DATA_EN    = (mem_sel == REGDATA) ;
  assign FLASH_DATA_EN  = (mem_sel == FLASHDATA) ;
  assign UART_EN        = (mem_sel == UART) ;
  
  assign Wr_en =  IO_write_strobe & IO_addr_strobe;// (~IO_write_strobe_d & IO_write_strobe) ;//posedge
  assign rd_en =  IO_read_strobe  & IO_addr_strobe;// (~IO_read_strobe_d & IO_read_strobe) ; //posedge   
  
  assign Wr_en_ne = Wr_en_d &~ Wr_en; //( IO_write_strobe_d & ~IO_write_strobe) ;
  assign rd_en_ne = rd_en_d & ~rd_en;//( IO_read_strobe_d & ~IO_read_strobe) ;
  
   
   assign IO_ready     =    (Wr_en_ne) || (rd_en_ne) ; 
   assign IO_Read_Data =    (IO_Byte_Enable[0])?  {24'b0,  IO_read_data     }:
                            (IO_Byte_Enable[1])?  {16'b0,  IO_read_data,8'b0 }:     
                            (IO_Byte_Enable[2])?  {8'b0,   IO_read_data,16'b0}:
                                                  {IO_read_data,24'b0       };   

   assign IO_read_data = (REG_DATA_EN)   ?     regReadData : 
                         (FLASH_DATA_EN) ?     0  : uart_read_data;
 
 
   assign mem_sel = (IO_Address[31:8] == 24'hC00002  ) ?  FLASHDATA : 
                    (IO_Address[31:8] == 24'hC00001  ) ?  UART      : REGDATA;
                                          
                                          
      //0x0100 - UART
      //0x0200 - FLASH
                                          
                                                                  
   //Regitser Data
   assign regWren = (REG_DATA_EN) & Wr_en ;
   assign regAddr = (IO_Address[7:0]);  
   assign regRden = (REG_DATA_EN) & rd_en ; 
   assign regData = (IO_Write_data[7:0]); 
   

  //UART Data 
  assign uart_buf_wren   =  Wr_en  &  UART_EN   ;
  assign uart_buf_wrdata =  IO_Write_data       ;
  assign uart_buf_rden   =  rd_en &  UART_EN    ;
  
  

  assign flash_wren   =  Wr_en  &  FLASH_DATA_EN  ;
  assign flash_wrdata =  IO_Write_data                     ; 
  assign Flash_rd  =    flash_rd_en               ;//& FLASH_DATA_EN;
 
          reg [7:0]wr_cnt;
          reg flash_wren_d;



assign uart_fin_data = rd_en_d?uart_read_data:0;
 always@(posedge clk) begin
  if(!rst_n) begin
    IO_write_strobe_d <= 0 ;
    IO_write_strobe_dd<= 0 ; 
    IO_write_strobe_3d  <= 0;
    
    IO_read_strobe_d <=0 ;
    IO_read_strobe_dd<=0 ;
    IO_read_strobe_3d<=0 ;
    
    Wr_en_d <= 0;
    Wr_en_dd<= 0;
    rd_en_d  <= 0;
    addr <= 0 ;
    flash_wrdata_d  <= 0;
    
    regReadData_d      <= 0;
    flash_read_d       <= 0;
    uart_read_data_d   <= 0;
    flash_wren_d       <= 0;
    data               <= 0;
    
    
  end
  else begin
        rd_en_d            <= rd_en;
        flash_wren_d       <= flash_wren;

        regReadData_d      <= regReadData ;
        flash_read_d       <= flash_read  ;
        uart_read_data_d   <= uart_read_data;
  
    

  
     flash_wrdata_d   <= flash_wrdata;
    IO_write_strobe_d <= IO_write_strobe;
    IO_write_strobe_dd<= IO_write_strobe_d; 
    IO_write_strobe_3d <= IO_write_strobe_dd;
    
    IO_read_strobe_d <= IO_read_strobe;
    IO_read_strobe_dd<= IO_read_strobe_d;
    IO_read_strobe_3d<= IO_read_strobe_dd;
    
    Wr_en_d <= Wr_en;
    Wr_en_dd<= Wr_en_d;
    data    <= IO_Write_data;
      addr <= addr;
    if(Wr_en | rd_en)
      addr <= IO_Address[7:0];
     
  end
end
//      wire [49:0]probe0;
                
//               assign probe0={flash_wren,flash_wrdata,wr_cnt,Flash_rd,flash_data};
                                                                
                                                      
//              ila_0 uut_ila1 (
//                   .clk(clk), // input wire clk
//                   .probe0(probe0) // input wire [32:0]  probe0  
//               );         
                       
 
wire full,u_full;
wire empty;
wire wr_rst_busy;
wire rd_rst_busy;
wire [3:0]fifo_buffer_data;
reg [9:0]flash_cnt;
 

uart_buffer uut_uart (
   .clk     (clk),      // input wire clk
   .srst    (uart_buffer_rst | !rst_n),    // input wire srst
   .din     (uart_buf_wrdata),      // input wire [7 : 0] din
   .wr_en   (uart_buf_wren),  // input wire wr_en
   .rd_en   (uart_buf_rden),  // input wire rd_en
   .dout    (uart_read_data),    // output wire [7 : 0] dout
   .full    (u_full),    // output wire full
   .empty   (uart_buffer_empty)  // output wire empty
 ); 
 

// wire [49:0]probe0;
                        
//                       assign probe0={regWren,regAddr,regRden,uart_fin_data,flash_wrdata,flash_wren,Flash_rd,flash_data,uart_read_data,IO_read_data,uart_buf_rden};
                                                                        
                                                              
//                      ila_0 uut_ila1 (
//                           .clk(clk), // input wire clk
//                           .probe0(probe0) // input wire [32:0]  probe0  
//                       ); 

reg[8:0]rd_cnt;   
reg en;
reg en_d,en_2d;
reg flash_wr;
wire en_pos;
assign en_pos= ~en_2d & en_d;
always@(posedge clk)begin
if(!rst_n)begin
wr_cnt   <= 0;
en       <= 0;
en_d     <= 0;
en_2d    <= 0;

end
else begin
 en      <= 1'b1;
 en_d    <= en;
 en_2d   <= en_d;

// flash_wr  <= flash_wr;
//if(wr_cnt==255)begin
//flash_wr  <= 0;
//wr_cnt    <= 0;
//end
//else if(en_pos)
//   flash_wr <= 1;
   
    wr_cnt  <= wr_cnt;
 if(flash_wren)
 wr_cnt <= wr_cnt+1;
   
 


end
end

always@(posedge rd_clk)begin
if(!rst_n)begin


rd_cnt   <= 0;

end
else begin
  rd_cnt  <= 0;
 if(Flash_rd)
 rd_cnt  <= rd_cnt+1;


end
end

 fifo_generator_1 uut_fifo (
  .rst         (!rst_n  | fifo_rst       ),                  // input wire rst
  .wr_clk      (clk           ),            // input wire wr_clk
  .rd_clk      (rd_clk        ),            // input wire rd_clk
  .din         (flash_wrdata        ),                  // input wire [7 : 0] din
  .wr_en       (flash_wren    ),              // input wire wr_en
  .rd_en       (Flash_rd      ),              // input wire rd_en
  .dout        (flash_data    ),                // output wire [3 : 0] dout
  .full        (full          ),                // output wire full
  .empty       (fifo_buffer_empty        ),              // output wire empty
  .wr_rst_busy (  wr_rst_busy            ),  // output wire wr_rst_busy
  .rd_rst_busy (  rd_rst_busy            )  // output wire rd_rst_busy
);




// wire[49:0]probe0;
//assign probe0 ={en_pos,en,en_d,flash_wr,rd_cnt,wr_cnt,flash_wrdata,flash_wren,Flash_rd,flash_data} ; 
//    ila_1 uut_ila1 (
//         .clk(clk), // input wire clk
//         .probe0(probe0) // input wire [32:0]  probe0  
//     );

//assign probe1 =  {flash_wren,Flash_rd,FLASH_DATA_EN,mem_sel};

//ila_1 uut_ila1 (
//	  .clk(clk), // input wire clk
//	  .probe0(probe1) // input wire [19:0] probe0
//);







//   wire [5:0]probe0;

//assign probe0={ mem_sel ,   uart_buf_wren , uart_buffer_rst , uart_buffer_empty,
   
//rd_en , IO_read_strobe_dd}; 
                                                                                 
//         ila_0 u_ila_0 (                                                                      
//         	              .clk(clk), // input wire clk                                                     
//         	              .probe0(probe0) // input wire [63:0] probe0    
//         );    


//   wire [29:0]probe0;

//assign probe0={ mem_sel,regWren , regData,regRden,REG_DATA_EN,regAddr,rd_en}; 
 
                                                                               
//         ila_0 u_ila_0 (                                                                      
//                           .clk(clk), // input wire clk                                                     
//                           .probe0(probe0) // input wire [63:0] probe0    
//         );    

 endmodule
