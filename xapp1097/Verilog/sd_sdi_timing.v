`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Analinear 
// Engineer:  Anil Sutej 
// 
// Create Date: 08.11.2023 20:59:09
// Design Name: 
// Module Name: sd_sdi_timing
// Project Name: OWL
// Target Devices: Artix-7 
// Tool Versions: 2018.2
// Description: SD-SDI Timing generation Module 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module sd_sdi_timing(
input tx_usrclk,
input tx_fabric_reset,
output reg  tx_sd_ce,

output reg [9:0] tx_pal_patgen

    );
    
  //  reg tx_usrclk ;
  //  reg tx_fabric_reset ;
    
//    initial begin
//     tx_usrclk = 0 ;
//     forever #3.367  tx_usrclk = ~tx_usrclk ;
    
//    end
    
//    initial begin
//     tx_fabric_reset = 0;
//     #10000
//     tx_fabric_reset = 1;
//     #10000
//     tx_fabric_reset = 0 ;
    
//    end
    
    
    reg [10:0] tx_gen_sd_ce ;
 
    
    
    
    // A shift register that continuously circulates a pattern to generate the
    // 5/6/5/6 cadence for the tx_sd_ce.
    always @ (posedge tx_usrclk)
        if (tx_fabric_reset)
            tx_gen_sd_ce <= 11'b00000100001;
        else
            tx_gen_sd_ce <= {tx_gen_sd_ce[9:0], tx_gen_sd_ce[10]};
    
    always @ (posedge tx_usrclk  ) begin
        tx_sd_ce <= tx_gen_sd_ce[10];
      
    end    
    
//    vidgen_pal PAL (
//        .clk                (tx_usrclk),
//        .rst                (tx_fabric_reset),
//        .ce                 (tx_sd_ce),
//        .pattern            (0),
//        .q                  (tx_pal_patgen),
//        .h_sync             (),
//        .v_sync             (),
//        .field              ()
//        );


reg [1:0]samples_new ;
reg [12:0]h_count ;
wire [12:0] h_count_new;
reg [9:0]v_count;
wire [9:0] v_count_new ;
reg field_new ;
reg vsync ;
reg hsync ; 

wire new_clk ;
reg field_new_d ;
reg hsync_d ;
reg vsync_d ;

wire field_new_o ;
wire hsync_o ;
wire vsync_o ;


reg [9:0] data_out;
//reg [9:0] data_out_d ;


assign h_count_new = h_count + 1;
assign v_count_new = v_count + 1;

assign field_new_o = field_new_d ;
assign hsync_o     = hsync_d ;
assign vsync_o     = vsync_d ;

assign new_clk = (tx_sd_ce & tx_usrclk) ;
       
    always @ (posedge tx_usrclk)
            if (tx_fabric_reset)
                samples_new <= 2'b11;
            else if (tx_sd_ce)
                samples_new <= samples_new + 1;
                
             always @ (posedge tx_usrclk)begin
              if (tx_fabric_reset)begin
             //  data_out_d    <= 0 ;
               tx_pal_patgen <= 0;
               end
              else begin
              // data_out_d   <= data_out ;
               tx_pal_patgen <= data_out;  
                
              end
              end
              
              
    
    always @ (posedge tx_sd_ce or posedge tx_fabric_reset) begin
     if(tx_fabric_reset)begin
        h_count <= 0 ;
        v_count <= 0 ;
        field_new <= 0 ;
     end   
     else begin
        
        if((h_count == 1727))// && tx_sd_ce)
         h_count <= 0 ;
        else //if(tx_sd_ce)
         h_count <= h_count + 1;
         
         if((v_count == 624) && (h_count == 1727))// & tx_sd_ce)
          v_count <= 0 ;
         else if(h_count == 1727 )//& tx_sd_ce)
          v_count <= v_count + 1;
          
          if(v_count_new < 313)
           field_new <= 1'b0 ; // ODD
          else
           field_new <= 1'b1 ; //Even

          

        
     end
    end
    
       reg hsync_blanking ;
    reg h_active ;
    reg rd_active ;
    reg rd_active_full ;
    
    always @ (posedge tx_sd_ce or posedge tx_fabric_reset) begin
     if(tx_fabric_reset) begin
      vsync       <= 1'b0; 
      hsync       <= 0 ;
      hsync_d     <= 0;
      vsync_d     <= 0;
      field_new_d <= 0; 
      
       hsync_blanking <= 0 ;
       h_active <= 0;
       rd_active <= 0;
       rd_active_full <= 0;
     end
     else begin
     
     hsync_d     <= hsync;
     vsync_d     <= vsync;
     field_new_d <= field_new; 
        
     // if(enable_dd) begin
       if(((v_count_new >= 1) && (v_count_new <=22)) ||
         ((v_count_new >= 311) && (v_count_new <=335)) ||
         ((v_count_new >= 624) && (v_count_new <= 625)))
        vsync <= 1'b1 ;
       else
        vsync <= 1'b0 ; 
   //   end
   //   else
   //     vsync <= 1'b0 ; 
   
   
   
       
 //if(enable_dd) begin  
  if((h_count_new >= 1 && h_count_new <= 284))
   hsync <= 1'b1 ;
  else
   hsync <= 1'b0 ; 
 //end
 //else
  // hsync <= 1'b0 ; 
   
   

   
   
   if((h_count_new >= 5 && h_count_new <= 284))
    hsync_blanking <= 1'b1 ;
   else
    hsync_blanking <= 1'b0 ;  
    
  if(h_count_new >= 289 && h_count_new <= 1728)  // Active Area In sync with h_count_new_d  
    h_active <= 1'b1 ;
  else
    h_active <= 1'b0 ;
    
    //(h_count_new >= 368 && h_count_new <= 1647) &&
  if( ( (v_count_new >=44  && v_count_new <= 283)  || 
                                                      (v_count_new >=357 && v_count_new <= 596)    ) )  // Active Area In sync with h_count_new_d  
   rd_active <= 1'b1 ;
  else
   rd_active <= 1'b0 ;    
   
  if(h_count_new >= 288 && h_count_new <= 1728)  // Active Area In sync with h_count_new_d  
   rd_active_full <= 1'b1 ;
  else
   rd_active_full <= 1'b0 ;      

   
            
     end
    end


reg sav ;
reg eav ;

always @ (posedge tx_sd_ce or posedge tx_fabric_reset) begin
 if(tx_fabric_reset) begin
  sav <= 1'b0 ;
  eav <= 1'b0 ;
 end
 else begin
 
 //if(enable_dd) begin
  if(h_count_new >=1 && h_count_new <=4)
   eav <= 1'b1 ;
  else
   eav <= 1'b0 ;
 //end
 //else
 //  eav <= 1'b0 ;  
  
  
  if(h_count_new >=285 && h_count_new <=288)
   sav  <= 1'b1 ;
  else
   sav  <= 1'b0 ; 
 
     
 end
end


reg [1:0]count_sel ;
reg [9:0] count_data ;


always @ (posedge tx_sd_ce  or posedge tx_fabric_reset) begin
 if(tx_fabric_reset) begin
  count_sel <= 0 ;
  data_out  <= 0; 
  //data_out_d <= 0 ;
  count_data <= 0 ;
  //tx_pal_patgen <= 0 ;
 end
 else begin

  
 // End of Active Video
//if(enable_dd)  begin
  if(eav) begin
  count_data <= 0 ;
   if(count_sel == 3 )// && tx_sd_ce)
    count_sel <= 0 ;
   else //if(tx_sd_ce)     
    count_sel <= count_sel + 1 ;
    
   if(count_sel == 0)
    data_out <= 10'h3ff;//8'hff ;
   else if(count_sel == 1)
    data_out <= 10'h000;//8'h00 ;
   else if (count_sel == 2)
    data_out <= 10'h000;//8'h00 ;
   else if (count_sel == 3) begin
    if(field_new & vsync & hsync)
     data_out <= 10'h3c4;//8'hF1;//10'h3c4 ;   //3c4
    else if (field_new & !vsync & hsync)
     data_out <= 10'h368 ;//8'hDA;//10'h368 ;
    else if (!field_new & vsync & hsync)
     data_out <= 10'h2d8;//8'hB6;//10'h2d8 ;
    else if(!field_new & !vsync & hsync) 
     data_out <= 10'h274 ;//8'h9D;//10'h274 ;
   end   
  end
  
 // Blanking
   
  else if (hsync_blanking) begin
  count_data <= 0 ;
   if(count_sel == 1  )// && tx_sd_ce)
    count_sel <= 0 ;
   else //if(tx_sd_ce)
    count_sel <= count_sel + 1;
   
   if(count_sel ==0 )// && tx_sd_ce)
    data_out <= 10'h200;
   else if(count_sel == 1)
    data_out <= 10'h040;  
    
  end
  
// Start of Active Video  
  else if(sav) begin
  count_data <= 0 ;
   if(count_sel == 3 )// && tx_sd_ce)
    count_sel <= 0 ;
   else //if(tx_sd_ce) 
    count_sel <= count_sel + 1 ;
       
    if(count_sel == 0)
     data_out <= 10'h3ff ;
    else if(count_sel == 1)
     data_out <= 10'h000 ;
    else if (count_sel == 2)
     data_out <= 10'h000 ;
    else if (count_sel == 3) begin

     if(field_new & vsync & !hsync)
      data_out <= 10'h3b0  ;
     else if (field_new & !vsync & !hsync)
      data_out <= 10'h31c  ;
     else if (!field_new & vsync & !hsync)
      data_out <= 10'h2ac  ;
     else if(!field_new & !vsync & !hsync) 
      data_out <= 10'h200  ;
    end     
            
  end
  
  else if(h_active) begin
//   if(input_val_data == 8'h00)
//   data_out <= 8'h02;
//   else if(input_val_data == 8'hff)
//   data_out <= 8'hfd;
//   else
//    data_out <= input_val_data ;
   count_data <= count_data + 1 ;
   data_out <= count_data ;
  // count_sel <= 0 ;      
  end
  

 else begin
  data_out  <= 0;
  count_sel <= 0 ;  
  count_data <= 0 ;
 end  
 
 end
end

wire [255:0]probe0;

assign  probe0 = {h_active,count_data ,data_out ,tx_pal_patgen ,vsync,hsync,h_count,v_count} ;

ila_sdi uut_sdi (
	.clk(tx_usrclk), // input wire clk
	.probe0(probe0) // input wire [255:0] probe0
);
/*
 else if(color_bkg_green & valid_1) begin
  Cb_data <= 85;
  Cr_data <= 115;
  y_data  <= 179;       
end            
else if(color_bkg_yellow & valid_1) begin
  Cb_data <= 71;
  Cr_data <= 158;
  y_data  <= 245;       
end            
else if(color_bkg_red & valid_1) begin
  Cb_data <= 84;
  Cr_data <= 175;
  y_data  <= 153;       
end 
 else if(color_bkg_orange & valid_1) begin
  Cb_data <= 71;
  Cr_data <= 166;
  y_data  <= 170;       
end       

*/

             
 
    
endmodule
