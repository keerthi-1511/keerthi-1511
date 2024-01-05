`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.05.2022 13:08:16
// Design Name: 
// Module Name: wrapper_q_spi
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


module wrapper_q_spi(
input clk,
input rst,
input  cmd_puls,
input [39:0]flash_cmd,
input [3:0]din_flash,
output reg flash_de,
output flash_cs,
output  wire f_sclk,
inout  flash_fq0,
inout flash_fq1,
inout flash_fq2,
inout flash_fq3,
output flash_busy,
output read_err,
output write_err,
output erase_err,
output  [7:0]r_data_flash,
output   rd_valid,
input clk_200,


output  reg page_prgm_4_byte_puls,
output reg erase_4_sector_puls,
output reg read_puls,

input        nor_tab_rd_pulse ,
input [31:0] nor_tab_rd_addr,  
input        nortab_load_busy  
    );
    
   
   
    wire data_en;
    reg cmd_puls_d;
    reg cmd_puls_dd;
    reg [39:0]flash_cmd_d;
   
    wire cmd_en;
    wire [23:0]addr;
    wire chip_id_read_puls;
    reg chip_id_en;
    reg chip_id_en_d,chip_id_en_dd;
    reg enter_byte_4_addr_puls;
    //reg page_prgm_4_byte_puls;
    //reg read_puls;
    reg erase_4_32KB_puls;
    reg [9:0]de_cnt;
    reg erase_4_4KB_puls;
    //reg erase_4_sector_puls;
    reg [3:0]cmd_cnt;
    
    assign cmd_en = cmd_puls_d & ~cmd_puls_dd;
    assign addr = nortab_load_busy ? nor_tab_rd_addr : flash_cmd_d[23:0];
    assign chip_id_read_puls = chip_id_en_d & ~chip_id_en_dd; 
    
   always@(posedge clk)  begin
    if(!rst) begin
      cmd_puls_d  <=0;
      cmd_puls_dd <=0;   
      chip_id_en  <= 0;
      chip_id_en_d <= 0;
      chip_id_en_dd <= 0;
      enter_byte_4_addr_puls <=0;
      erase_4_32KB_puls<=0;
      erase_4_sector_puls <=0;
      erase_4_4KB_puls <=0;
      page_prgm_4_byte_puls <=0;
      read_puls  <=0;
      flash_cmd_d <=0;
      flash_de   <=0;
      de_cnt     <=0;
      cmd_cnt     <= 0;
    end
    else begin
       cmd_puls_d  <=cmd_puls;
       cmd_puls_dd <=cmd_puls_d; 
       chip_id_en  <= 1;
       chip_id_en_d <= chip_id_en;
       chip_id_en_dd <= chip_id_en_d;
       
       flash_cmd_d <=flash_cmd;
       
        flash_de <=flash_de;
         if(de_cnt == 514)
           flash_de <=0;
         else if(data_en)
          flash_de <=1;
           
           de_cnt <=0;
          if(flash_de)
           de_cnt <=de_cnt+1;
           
                      cmd_cnt <= 0;
                      if(cmd_puls)
                       cmd_cnt <= cmd_cnt +1; 
       
        
        enter_byte_4_addr_puls <=0;
        page_prgm_4_byte_puls <=0;
        erase_4_32KB_puls <=0;
        read_puls   <=0;
        erase_4_sector_puls <=0;
        erase_4_4KB_puls <=0;
        
        
        if(cmd_cnt==3)begin
             
                enter_byte_4_addr_puls <=0;
                page_prgm_4_byte_puls <=0;
                erase_4_32KB_puls <=0;
                read_puls   <=0;
                erase_4_sector_puls <=0;
                erase_4_4KB_puls <=0;
                end
//       else if(cmd_en & (flash_cmd_d[39:32] == 8'h04)) 
//          chip_id_read_puls <=1;
//       else if (cmd_en & (flash_cmd_d[38:32] == 8'h08)) 
//        enter_byte_4_addr_puls <=1;
        else if(cmd_en & (flash_cmd_d[39:32] == 8'h03))
         page_prgm_4_byte_puls <=1;
       else if (cmd_en & (flash_cmd_d[39:32] == 8'h05))
          erase_4_sector_puls <=1;
        else if ((cmd_en & (flash_cmd_d[39:32] == 8'h04))  || nor_tab_rd_pulse)
          read_puls <=1;
          
          
          
          
    end
   end
     
reg [3:0]flash_cnt;

    quad_spi dt_spi(
                .clk                       (clk),
                .rst                       (rst),
                .address                   (addr), // 32 bit adress
                .data                      (din_flash), // 4 bit data nibble
                .read_puls                 (read_puls),  
                .erase_4_32KB_puls         (erase_4_32KB_puls),
                .erase_4_4KB_puls          (erase_4_4KB_puls),
                .erase_4_sector_puls       (erase_4_sector_puls),
                .chip_id_read_puls         (chip_id_read_puls),
                .enter_byte_4_addr_puls    (enter_byte_4_addr_puls),
                .exit_byte_4_addr_puls     (),
                .page_prgm_4_byte_puls     (page_prgm_4_byte_puls),
                .data_en                   (data_en),                    /// data_en to lacth the data after the enable pulse
                .flash_busy                (flash_busy),
                .r_data_flash              (r_data_flash),
                .rd_valid                  (rd_valid),
                .read_error                (),
                .write_error               (),
                .erase_error               (),
                .f_cs                      (flash_cs),       //chip select
                .f_sclk                    (f_sclk),     // serial clock 
                .f_DQ0                     (flash_fq0),       //inout pin of DQ0
                .f_DQ1                     (flash_fq1),
                .f_DQ2                     (flash_fq2),
                .f_DQ3                     (flash_fq3),      //inout pin of DQ1
                .clk_200                   (clk_200) ,
                .flash_de                  (flash_de )
        );
        
//   wire [127:0]probe0;
          
//         assign probe0={flash_cnt,chip_id_read_puls, enter_byte_4_addr_puls,r_data_flash,flash_busy,rd_valid,flash_de,page_prgm_4_byte_puls,read_puls,erase_4_sector_puls};
         
//              vio_0 uut_vio (
//           .clk(clk),                // input wire clk
//           .probe_out0(flash_cmd),  // output wire [39 : 0] probe_out0
//           .probe_out1(cmd_puls)  // output wire [0 : 0] probe_out1
//         );
                                                                                  
                                                
//        ila_0 uut_ila0 (
//             .clk(clk_200), // input wire clk
//             .probe0(probe0) // input wire [32:0]  probe0  
//         );   



 always@(posedge clk)begin
 if(!rst)begin
 
 flash_cnt  <= 0;
 
 end
 else begin
 
   flash_cnt  <= 0;
   if(flash_de)
   flash_cnt  <= flash_cnt+1;
 
 
 
 end
 end





//wire[49:0]probe0;

//assign probe0 ={
//addr,
//read_puls,
//erase_4_32KB_puls,
//erase_4_4KB_puls,
//erase_4_sector_puls,
//enter_byte_4_addr_puls,
//page_prgm_4_byte_puls
//};

//ila_1 uut_ila1 (
//.clk(clk_200), // input wire clk
//.probe0(probe0) // input wire [32:0]  probe0  
//);






        
endmodule
