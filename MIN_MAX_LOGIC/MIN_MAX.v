`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.09.2023 11:51:30
// Design Name: 
// Module Name: MIN_MAX_LOGIC
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



module  MIN_MAX_LOGIC #(parameter    DATA_WIDTH = 13,
                                     OUT_WIDTH  = 8
                                 
                                 )
                    
                    (
                       input      clk,
                       input      rst_n,
                       input      min_max_en,
                       input      lval_in,
                       input      fval_in,
                       input      [DATA_WIDTH-1:0] data,
                       input      [DATA_WIDTH-1:0] min_val,
                       input      [DATA_WIDTH-1:0] max_val,
                       output reg [OUT_WIDTH-1:0]  out_pixel,
                       output reg  new_lval,
                       output reg  new_fval
                       
                       );
   
                 //////////////////////////////////////////////
                 //                                          //
                 //   out_pixel = (pixel_in - min_val)*m     //
                 //   where m   =  256/(max_val - min_val)   //
                 //                                          //
                 //////////////////////////////////////////////  
  
  reg    lval_d,lval_2d,lval_3d,lval_4d,lval_5d,lval_6d;
  reg    fval_d;
  reg    [DATA_WIDTH-1:0] min_reg;
  reg    [DATA_WIDTH-1:0] max_reg;
  reg    signed [DATA_WIDTH:0] temp_sub;
   reg   [DATA_WIDTH-1:0] temp_sub_D;
  reg    [DATA_WIDTH-1:0] temp_sub_den;
  wire   m_axis_dout_tvalid;
  wire   [39:0]m_axis_dout_tdata;
  reg    [37:0]temp_mult1;
  wire   [50 :0]OUT_mult;
  wire   fval_neg;
  wire   fval_pos;
  reg    [3:0]valid_cnt;
  reg    valid_in;
  
  assign fval_neg     =  ~fval_in & fval_d;
  assign fval_pos     =   fval_in & ~fval_d;
  
  always@(posedge clk)begin
  if(!rst_n)begin
  
  min_reg      <= 0;
  max_reg      <= 0;
  valid_in     <= 0;
  valid_cnt    <= 0;
  end
  else begin
  
          min_reg   <=  min_reg ;
          max_reg   <=  max_reg ;
         if(fval_neg)begin
         min_reg    <= min_val;
         max_reg    <= max_val; 
         end
         
            valid_in <= valid_in ;
         if(valid_cnt==3)
            valid_in  <=0;
         else if(fval_neg)
            valid_in   <= 1;
         
         valid_cnt  <= 0;
         if(valid_in)
         valid_cnt  <= valid_cnt+1;
    
  end
  end
  
  
  
  always@(posedge clk)begin
  if(!rst_n)begin
  
   temp_sub      <= 0;
   temp_sub_den  <= 0;
   temp_mult1    <= 0;
   temp_sub_D    <=0;
  end
  else begin
    
    
      temp_sub      <=  data-min_reg;
      
       temp_sub_D  <= temp_sub;
       if( temp_sub < 0)
       temp_sub_D   <= 0;
              
              
        if((max_reg-min_reg)==0)   //for removing the deviding by zero condition
        temp_sub_den   <= 1;
        else
        temp_sub_den   <= max_reg-min_reg;
     
   
     temp_mult1   <= temp_mult1;
    if(m_axis_dout_tvalid)
     
     temp_mult1  <= m_axis_dout_tdata[39:2];  
  
  
  
  end
  end
  
  
  always@(posedge clk)begin
  if(!rst_n)begin
     lval_d      <=  0;
     lval_2d     <=  0;
     lval_3d     <=  0;
     lval_4d     <=  0;
     lval_5d     <=  0;
     lval_6d     <=  0;
     new_lval    <=  0;
     fval_d      <=  0;
     new_fval    <=  0;
     out_pixel   <=  0;
  end
  else begin
                lval_d    <=   lval_in ;
                lval_2d   <=   lval_d  ;
                lval_3d   <=   lval_2d ;
                lval_4d   <=   lval_3d ;
                lval_5d   <=   lval_4d ;
                lval_6d   <=   lval_5d ;
                fval_d    <=   fval_in ;
                
              if(min_max_en)begin
              
                new_lval    <=  lval_6d ; //For a devision ip output data delayed by 29 flops
                new_fval    <=  fval_d       ; 
                out_pixel   <=  (OUT_mult[50:24]>255)?8'd255: OUT_mult[31:24] ;
                
              end  
             else begin
               new_lval    <=    lval_in ;
               new_fval    <=    fval_in ;
               out_pixel   <=    data    ;
             end
       
       
  end
  end
  
  
 
  
  
  div_gen_d1 u_d1 (
       .aclk                    ( clk                         ) ,       // input wire aclk                            
       .s_axis_divisor_tvalid   ( valid_in                    ) ,       // input wire s_axis_divisor_tvalid           
       .s_axis_divisor_tdata    ( {3'd0,temp_sub_den[12:0] }  ) , // input wire [15 : 0] s_axis_divisor_tdata   
       .s_axis_dividend_tvalid  (  valid_in                     ) ,       // input wire s_axis_dividend_tvalid          
       .s_axis_dividend_tdata   ( 32'hFFFFFFFF                ) ,   // input wire [23 : 0] s_axis_dividend_tdata  
       .m_axis_dout_tvalid      ( m_axis_dout_tvalid          ) ,       // output wire m_axis_dout_tvalid             
       .m_axis_dout_tdata       ( m_axis_dout_tdata           )         // output wire [31 : 0] m_axis_dout_tdata      
     );
  
   mult_gen_1 u_2 (
         .CLK        ( clk           ) ,            // input wire CLK
         .A          ( temp_mult1    ) ,        // input wire [8 : 0] A
         .B          ( temp_sub_D      ) ,          // input wire [12 : 0] B
         .P          ( OUT_mult      )           // output wire [22 : 0] P
       );
  
  
  
  
  endmodule