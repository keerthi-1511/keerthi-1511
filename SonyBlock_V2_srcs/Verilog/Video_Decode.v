`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.07.2020 18:09:17
// Design Name: 
// Module Name: Video_Decode
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


module Video_Decode(
input pixel_clk,
input reset_n,

input [7:0]Y_Data,
input [7:0]C_Data,

output reg [7:0]decode_Y_Data,
output reg [7:0]decode_C_Data,
output decode_fval,
output decode_lval

    );
    
    //-----------Declarations------------------//
    
    reg trig_FF;
    reg [2:0]count;
    reg [12:0]col_ct;
    reg [12:0]row_ct;
    reg lval_d;
    wire lval_pe;
    reg fval_d;
    wire fval_ne;
    reg lval,fval;
    //---------------Assignments----------////
    
        
 assign decode_lval = lval_d&(col_ct<=1920);
 assign decode_fval = fval&((row_ct>=1)&&(row_ct<=1080));
  
    
 //----Sequencial Logic Block-----------//
 always@(posedge pixel_clk)begin
  if(!reset_n)begin
     trig_FF <= 1'b0;
     count   <= 0;
     fval    <= 1'b0;
     lval    <= 1'b0;
     col_ct  <= 0;
     row_ct  <= 0;
     
     lval_d <= 0;
     fval_d <= 0;
     
     decode_Y_Data <= 0;
     decode_C_Data <= 0;
end
 else begin
   lval_d <= lval;
   fval_d <= fval;
   
   decode_Y_Data <= Y_Data;
   decode_C_Data <= C_Data;

   
       if(Y_Data == 8'hFF)
           trig_FF <= 1'b1;
       else if( count == 2)
           trig_FF <= 1'b0;  
        else
           trig_FF <= trig_FF;
           
        
        if( trig_FF == 1'b1)
              count <= count +1 ;
        else
             count <= 0; 
             
             
        if(count == 2)begin
            if( (Y_Data == 8'h80) || (Y_Data == 8'hC1))begin//Active SAV
                    fval <= 1'b1;
                    lval <= 1'b1;
            end
            else  if( (Y_Data == 8'h9D) || (Y_Data == 8'hDA))begin//Active EAV
                    fval <= 1'b1;
                    lval <= 1'b0;
            end
            else  if( (Y_Data == 8'hAB) || (Y_Data == 8'hEC))begin//Non Active SAV
                    fval <= 1'b0;
                    lval <= 1'b0;
            end
            else  if( (Y_Data == 8'hB6) || (Y_Data == 8'hF1))begin//Non Active EAV
                     fval <= 1'b0;
                     lval <= 1'b0;
            end
            else begin
                   fval <= fval;
                   lval <= lval;
            end
            
        
         end
        
             
             if(lval)
             col_ct <= col_ct + 1;
             else
             col_ct <= 0;
             
             
            if(~fval & fval_d)
                row_ct <= 0;
            else if(lval & ~lval_d)
                  row_ct <= row_ct +1;
              else
                 row_ct <= row_ct;
                  
        end
    end
    
    
           
//wire [63:0]probe0;

//assign probe0={Y_Data,trig_FF,count,fval,lval,col_ct,row_ct,decode_lval,decode_fval
//};

//ila_0 u_ila_0 (
// .clk(pixel_clk), // input wire clk
// .probe0(probe0) // input wire [63:0] probe0
//);

    
endmodule
