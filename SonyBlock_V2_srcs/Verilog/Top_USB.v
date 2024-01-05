`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.10.2023 11:33:04
// Design Name: 
// Module Name: Top_USB
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


module Top_USB(


//---USB Controls-----//
input   reset_in            ,
input   sys_clk_p           ,
input   usb_en              ,
output    lv                ,
output    fv                ,
output    clk               ,
output    [15:0] databus    ,
output    clk_32            ,
output    W_BAR             ,
input   vid_slw_clk         ,
input   clk_100             ,
input   [7:0]decode_Y_Data  , 
input   [7:0]decode_C_Data  , 
input   decode_fval         ,      
input   decode_lval      

 
    );
wire [12:0]   no_of_cols,no_of_rows;
assign  no_of_cols = 1919;//1279;
assign  no_of_rows = 1080;


reg         USB_fifo_rst     ;
reg [7:0]   USB_fifo_rst_cnt ;
wire reset_tst;

wire [15:0] pixel_data;
wire        lv_cam;
wire        fv_cam ;
wire       clk_cam_75 ;

reg         enable_usb ;
reg         enable_read ;
reg [13:0]  cnt_read ;
reg         enable_read_d ;
reg         enable_usb_dd ;
reg         enable_usb_d ;
reg [10:0]   usb_row_cnt ;
reg         usb_fval ;
wire        usb_lval ;
wire [15:0] dout ;
reg    fvalid1_d ;
reg fvalid1_dd ;
reg lvalid1_d   ;
reg lvalid1_dd  ;
wire locked_out;
wire fvalid_out ;
wire empty_usb;
wire full;
wire empty;
wire wr_rst_busy;
wire rd_rst_busy ;
assign usb_lval = enable_read_d ;  
assign clk_32 = 1'bZ;
assign clk 		  = usb_en?0:clk_100 ;
assign reset_tst  = reset_in ;
assign databus	  =  usb_en?0:  dout;    //toggle_new ? dout : 8'h80 ;//toggle ? Inpixel_Data1[7:0] : 8'h80; //{8'h80,Inpixel_Data1[7:0]};//

assign fv         = usb_en?0: usb_fval ;
assign lv         = usb_en?0: usb_lval ;
assign W_BAR      = 1'b0;
assign reset_tst  = reset_in ;
assign fv_cam     = decode_fval;
assign lv_cam     = decode_lval;  





















fifo_generator_0 u_usb_vid (
                 .rst           ( !reset_tst   |  USB_fifo_rst  ), 
                 .wr_clk        ( vid_slw_clk                   ),//(clk_cam_40),            // input wire wr_clk
                 .rd_clk        ( clk_100                       ),                         // input wire [15 : 0] din
                 .din           ( {decode_C_Data,decode_Y_Data} ),
                 .wr_en         ( enable_usb & lv_cam & fv_cam  ),              // input wire wr_en
                 .rd_en         ( enable_read                   ),              // input wire rd_en
                 .dout          ( dout                          ),                // output wire [15 : 0] dout
                 .full          ( full                          ),                // output wire full
                 .empty         ( empty                         )             // output wire empty
//                 .wr_rst_busy   ( wr_rst_busy                   ),  // output wire wr_rst_busy
               //  .rd_rst_busy   ( rd_rst_busy                   )  // output wire rd_rst_busy
               );          
                 
reg usb_fval_d;
reg usb_fval_dd;
always @ (posedge clk_100)   begin
 if(!reset_tst) begin
  fvalid1_d  <= 0 ;
  fvalid1_dd <= 0 ;
  enable_usb <= 0 ;
  usb_row_cnt <= 0 ;
  usb_fval  <= 0 ;
  
  USB_fifo_rst_cnt <=0 ;
  USB_fifo_rst <= 0;
  
  usb_fval_d <= 0;
  usb_fval_dd<= 0;
 end
 else begin
  fvalid1_d  <=  fv_cam;
  fvalid1_dd <= fvalid1_d ;
  
  
  if(fvalid1_dd & (~fvalid1_d))
    enable_usb <= 1'b1 ;
  else
    enable_usb <= enable_usb ;  
     
    usb_row_cnt   <=  usb_row_cnt;
    if(!usb_fval)  //usb_row_cnt == 1080
     usb_row_cnt <= 0 ;
    else if(cnt_read == no_of_cols)
     usb_row_cnt <= usb_row_cnt + 1;
 
    if(usb_row_cnt == 1080)
     usb_fval <= 1'b0 ;
    else if(~fvalid1_dd & fvalid1_d) //(usb_row_cnt == 0) &&  enable_read
     usb_fval <= 1'b1 ;   
     
        
          
       
       usb_fval_d    <= usb_fval;
       usb_fval_dd   <= usb_fval_d;   
        
        
           USB_fifo_rst <= USB_fifo_rst;
        if(USB_fifo_rst_cnt == 15)
           USB_fifo_rst <= 1'b0;
        else if(usb_fval_dd & ~usb_fval_d)
           USB_fifo_rst <= 1'b1;
        
           USB_fifo_rst_cnt <= 0;
        if(USB_fifo_rst)
             USB_fifo_rst_cnt <= USB_fifo_rst_cnt+ 1 ;                
      end
  end           
               
               
 always @ (posedge clk_100)   begin
   if(!reset_tst) begin
    lvalid1_d     <= 0 ;
    lvalid1_dd    <= 0 ;
    cnt_read      <= 0 ;  
    enable_read   <= 0 ;
    enable_read_d <= 0 ;
  //  toggle_new  <= 0 ;
    enable_usb_d  <= 0 ;
    enable_usb_dd <= 0 ;
  end
  else begin
   lvalid1_d  <= lv_cam ;
   lvalid1_dd <= lvalid1_d ;
     
   enable_usb_d  <= enable_usb ;
   enable_usb_dd <= enable_usb_d ;
   
   enable_read_d <= enable_read ;
    
   if(cnt_read == no_of_cols)
    enable_read <= 0 ;
   else if(enable_usb_dd & usb_fval & (lvalid1_dd & (~lvalid1_d)))// & (!empty_usb)
    enable_read <= 1'b1 ;  
     
   if(cnt_read == no_of_cols)
    cnt_read <= 0 ;  
   else if(enable_read)
    cnt_read <= cnt_read + 1;    
    
         end
         
    end                 
    
    
endmodule
