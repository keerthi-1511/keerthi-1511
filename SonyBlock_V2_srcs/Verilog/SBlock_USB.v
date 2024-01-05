`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.04.2019 12:19:17
// Design Name: 
// Module Name: Python_USB
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

`include "GPIOs.vh"



module SBlock_USB(

input  UART_RX,
output UART_TX,
//-----SBLOCK Interface-----//
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

input tx_out5_p,
input tx_out5_n,

input tx_out6_p,
input tx_out6_n,

input tx_out7_p,
input tx_out7_n,

//---USB Controls-----//
input   reset_in,
input   sys_clk_p,
output  lv,
output  fv,
output  clk ,
output [15:0] databus ,
output  reset_out ,
output  clk_32,
output  W_BAR,
//inout   EPROM_SCL,
//inout   EPROM_SDA,
//input   clk_flash,
output  flash_cs ,
inout   flash_fq0,
inout   flash_fq1,
inout   flash_fq2,
inout   flash_fq3


    );



 reg usb_en;  
wire [15:0] pixel_data;
wire        lv_cam;
wire        fv_cam ;
wire       clk_cam_75 ;
reg     UART_rxd ;
wire    UART_txd ;
wire UART_Interrupt          ;
wire INTC_IRQ                ;
wire IO_addr_strobe          ;
wire [31 : 0] IO_address     ;
wire [3 : 0] IO_byte_enable  ;
wire [31 : 0] IO_read_data    ;
wire IO_read_strobe          ;
wire IO_ready                 ;
wire [7 : 0] IO_write_data  ;
wire IO_write_strobe         ;
wire  [7 : 0] GPIO1_tri_i    ;
wire [7 : 0] GPIO1_tri_o     ;
reg [0 : 0] INTC_Interrupt   ;
wire UART_txd1;
wire flash_de;
wire  flash_busy    ;
wire  read_err      ;
wire  write_err     ;
wire  erase_err     ;
wire  [7:0]r_data_flash ;
wire   rd_valid         ;       
reg clk_200;



wire reset_tst;
wire clk_100;
wire locked_out;
assign clk_32 = 1'bZ;
//assign clk 		  =  clk_100 ;
assign reset_tst  = reset_in ;

wire clk_10;
wire clk_40;
wire clk_50;
wire clk_20;

clk_wiz_0 
  u_clk(
  // Clock in ports
   .clk_in1     ( sys_clk_p    )  ,
   .clk_out1    ( clk_100      )  ,
   .clk_out2    ( clk_cam_75   )  ,
   .clk_out3    (clk_10        )  ,
   .clk_out4    (clk_40        )  ,
   .clk_out5    (clk_50        )  ,
   .clk_out6    (clk_20        )  ,
   .reset       ( 1'b0         )  ,
   .locked      ( locked_out   )
  ); 
 

 wire [7:0]decode_Y_Data  ;
 wire [7:0]decode_C_Data  ;
 wire decode_fval         ;
 wire decode_lval         ;
 wire vid_slw_clk         ;
 
 
// FL_GEN
// u_flgen(
//  // .clk			(vid_slw_clk) ,
// .clk( clk_cam_40),
//   .rst_n		(reset_tst) ,
//	.Frame_Valid1(fv_cam)		      ,
//	.Line_Valid1(lv_cam) 			  ,
//	.Data_Valid1()     		  ,
//   .Inpixel_Data1(pixel_data)  			  ,
// 	.oImNoCol(1920),//640//1920
// 	.oImNoRow(1080) ,//480//1280
//	.toggle(), 
//	.trig()
//	 ); 

Top_Video_decode     uut_ved(

                       .tx_clk_p       (tx_clk_p     )      ,
                       .tx_clk_n       (tx_clk_n     )      ,
                       .tx_out0_p      (tx_out0_p    )      ,
                       .tx_out0_n      (tx_out0_n    )      ,
                       .tx_out1_p      (tx_out1_p    )      ,
                       .tx_out1_n      (tx_out1_n    )      ,
                       .tx_out2_p      (tx_out2_p    )      ,
                       .tx_out2_n      (tx_out2_n    )      ,
                       .tx_out3_p      (tx_out3_p    )      ,
                       .tx_out3_n      (tx_out3_n    )      ,
                       .tx_out4_p      (tx_out4_p    )      ,
                       .tx_out4_n      (tx_out4_n    )      ,
                       .locked_out     (locked_out   )      ,
                       .decode_Y_Data  (decode_Y_Data)     ,
                       .decode_C_Data  (decode_C_Data)     ,
                       .decode_fval    (decode_fval  )     ,
                       .decode_lval    (decode_lval  )     ,
                       .vid_slw_clk    (vid_slw_clk  )
                       
                       );




wire lv_ch;
wire fv_ch;
assign lv_ch = lv ;
assign fv_ch = fv ;

 Top_USB    uut_usb(


                              //---USB Controls-----//
                               . reset_in     ( reset_in  )         ,
                               . sys_clk_p    ( sys_clk_p )         ,
                               .usb_en        (usb_en      )        ,
                               . lv           (lv           )       ,
                               . fv           (fv           )        ,
                               . clk          (clk          )        ,
                               . databus      (databus      )        ,
                               . clk_32       (clk_32       )        ,
                               . W_BAR        (W_BAR        )        ,
                               . vid_slw_clk  (vid_slw_clk  )        ,
                               . clk_100      (clk_100      )        ,
                               . decode_Y_Data(decode_Y_Data)        , 
                               . decode_C_Data(decode_C_Data)        , 
                               . decode_fval  (decode_fval  )        ,      
                               . decode_lval  (decode_lval  )    

 
    );








    wire cmd_puls;
    
    
// assign   GPIO1_tri_i = 8'd0;//{cmd_puls,7'd0};
// assign    cmd_puls  =  GPIO1_tri_i[7];
      
 wire    read_puls               ;
 wire    erase_4_sector_puls     ;
 wire    page_prgm_4_byte_puls   ; 
 wire   data_en;
 wire   [47:0] d_in ;  
 
 
     wire uart_buffer_rst;    
 wire uart_buffer_empty;
 
 wire regWren      ; 
 wire [7:0] regData      ; 
 wire regRden      ; 
 wire [7:0] regReadData  ; 
 wire [7:0] regAddr      ; 
 wire fifo_rst;
 wire fifo_buffer_empty;

 
assign  fifo_rst               = GPIO1_tri_o [`FIFO_BUF_RESET ] ;
assign uart_buffer_rst         = GPIO1_tri_o [`UART_BUF_RESET] ; 
assign GPIO1_tri_i             = {5'd0,flash_busy,fifo_buffer_empty , uart_buffer_empty};       

  

    wire    [39:0]memory_cmd ;
    
    
 wire [3:0]flash_data,final_data;
 reg  [3:0]flash_data_d;
    
  reg flash_de_d,flash_de_dd;

    assign  cmd_puls = GPIO1_tri_o[2];
    
    wire chip_id_read_puls;
    wire enter_byte_4_addr_puls;
    
    assign final_data = flash_de_d ?flash_data:0;
    wire f_sclk;
    
    
    
    reg cmd_puls_d;
    reg cmd_puls_dd;
    reg cmd_puls_3d;
    reg cmd_puls_4d;
    reg [39:0] memory_cmd_d , memory_cmd_dd, memory_cmd_3d;
    
    always@(posedge clk_20) begin
     if(!locked_out) begin
            cmd_puls_d <=0 ;
            cmd_puls_dd<=0 ;
            cmd_puls_3d<=0 ;
            cmd_puls_4d<=0 ;
            
            memory_cmd_d <=0 ;
            memory_cmd_dd<=0 ;
            memory_cmd_3d<=0 ;
     end
     else begin
     cmd_puls_d   <=cmd_puls ;
     cmd_puls_dd  <=cmd_puls_d  ;
     cmd_puls_3d  <=cmd_puls_dd ;    
     cmd_puls_4d  <=cmd_puls_3d ;
     
     memory_cmd_d <= memory_cmd ;
     memory_cmd_dd<= memory_cmd_d  ;
     
     
     memory_cmd_3d<= memory_cmd_3d ; 
     
     if(~cmd_puls_dd & cmd_puls_d)
         memory_cmd_3d <=  memory_cmd_dd;
         
         
     end
   end
   
    
    
    
    
    
    
    
    
    
  wrapper_q_spi   uut_spi( 
                                 .clk                  ( clk_20                )       , 
                                 .rst                  ( locked_out            )       , 
                                 .cmd_puls             ( cmd_puls_4d           )       ,  //cmd pulse
                                 .flash_cmd            ( memory_cmd_3d         )       ,
                                 .din_flash            ( flash_data            )       , 
                                 .flash_de             ( flash_de              )       , 
                                 .flash_cs             ( flash_cs              )       , 
                                 .f_sclk               ( f_sclk                )       ,
                                 .flash_fq0            ( flash_fq0             )       , 
                                .flash_fq1             ( flash_fq1             )       , 
                                .flash_fq2             ( flash_fq2             )       , 
                                .flash_fq3             ( flash_fq3             )       , 
                                .flash_busy            ( flash_busy            )       , 
                                .read_err              (                       )       , 
                                .write_err             (                       )       , 
                                .erase_err             (                       )       , 
                                .r_data_flash          (r_data_flash           )       , 
                                .page_prgm_4_byte_puls ( page_prgm_4_byte_puls )       ,
                                .erase_4_sector_puls   (erase_4_sector_puls    )       ,
                                .read_puls             (read_puls              )       ,
                                .rd_valid              (rd_valid               )       , 
                                .clk_200               ( clk_100               )       ,
                                . nor_tab_rd_pulse     (                       )       ,
                                . nor_tab_rd_addr      (                       )       ,
                                . nortab_load_busy     (        0              )  
                                 
                                 
                             
             );  
             
//       wire[49:0]probe0;
//             assign probe0 ={memory_cmd,flash_data,flash_de,page_prgm_4_byte_puls,erase_4_sector_puls,read_puls} ; 
//                 ila_1 uut_ila1 (
//                      .clk(clk_100), // input wire clk
//                      .probe0(probe0) // input wire [32:0]  probe0  
//                  );
      
wire boot_done;
      
STARTUPE2 #(
      .PROG_USR("FALSE"),  // Activate program event security feature. Requires encrypted bitstreams.
      .SIM_CCLK_FREQ(0.0)  // Set the Configuration Clock Frequency(ns) for simulation.
      )
      STARTUPE2_inst (
      .CFGCLK   ( ),         // 1-bit output: Configuration main clock output
      .CFGMCLK  ( ),         // 1-bit output: Configuration internal oscillator clock output
      .EOS      (boot_done),       // 1-bit output: Active high output signal indicating the End Of Startup.
      .PREQ     ( ),       // 1-bit output: PROGRAM request to fabric output
      .CLK      (1'b0 ),   // 1-bit input: User start-up clock input
      .GSR      (1'b0 ),   // 1-bit input: Global Set/Reset input (GSR cannot be used for the port name)
      .GTS      (1'b0 ),   // 1-bit input: Global 3-state input (GTS cannot be used for the port name)
      .KEYCLEARB(1'b0 ),   // 1-bit input: Clear AES Decrypter Key input from Battery-Backed RAM (BBRAM)
      .PACK     (1'b0 ),   // 1-bit input: PROGRAM acknowledge input
      .USRCCLKO (f_sclk),       // 1-bit input: User CCLK input
      .USRCCLKTS(1'b0 ),   // 1-bit input: User CCLK 3-state enable input
      .USRDONEO (1'b0 ),   // 1-bit input: User DONE pin output control
      .USRDONETS(1'b0 )    // 1-bit input: User DONE 3-state enable output
      );
      
      
      
      
//      vio_0 your_instance_name (
//        .clk(clk_40),                // input wire clk
//        .probe_out0(memory_cmd),  // output wire [39 : 0] probe_out0
//        .probe_out1(cmd_puls)  // output wire [0 : 0] probe_out1
//      );
  wire       flash_wren   ;    
  wire [7:0] flash_wrdata ;  
  wire FLASH_DATA_EN      ;       
  wire  Flash_rd          ;           
  wire [1:0] mem_sel      ;     
      
      
//wire [49:0]probe0;

//  reg [8:0]flash_cnt;   
  
// assign probe0={flash_cnt,chip_id_read_puls, enter_byte_4_addr_puls,r_data_flash,flash_busy,rd_valid,flash_de,page_prgm_4_byte_puls,read_puls,erase_4_sector_puls};

                                                                          
                                        
//ila_0 uut_ila1 (
//     .clk(clk), // input wire clk
//     .probe0(probe0) // input wire [32:0]  probe0  
// );
     
// always@(posedge clk_40)begin
// if(!locked_out)begin
 
// flash_cnt  <= 0;
 
// end
// else begin
 
//   flash_cnt  <= 0;
//   if(flash_de)
//   flash_cnt  <= flash_cnt+1;
 
 

// end
// end

reg UART_RX_d;
reg UART_RX_dd;  

 
wire GPI1_Interrupt; 



   microblaze_mcs_1 uut_mcs (
                .Clk            (clk_100),                          // input wire Clk
                .Reset          (!locked_out),                      // input wire Reset
                .UART_Interrupt (UART_Interrupt),    // output wire UART_Interrupt
                .GPI1_Interrupt (GPI1_Interrupt),    // output wire GPI1_Interrupt
                .INTC_IRQ       (INTC_IRQ),                // output wire INTC_IRQ
                .IO_addr_strobe (IO_addr_strobe),    // output wire IO_addr_strobe
                .IO_address     (IO_address),            // output wire [31 : 0] IO_address
                .IO_byte_enable (IO_byte_enable),    // output wire [3 : 0] IO_byte_enable
                .IO_read_data   (IO_read_data  ),        // input wire [31 : 0] IO_read_data
                .IO_read_strobe (IO_read_strobe),    // output wire IO_read_strobe
                .IO_ready       (IO_ready       ),                // input wire IO_ready
                .IO_write_data  (IO_write_data  ),      // output wire [31 : 0] IO_write_data
                .IO_write_strobe(IO_write_strobe),  // output wire IO_write_strobe
                .UART_rxd       (UART_RX_dd      ),                // input wire UART_rxd
                .UART_txd       (UART_TX),                // output wire UART_txd
                .GPIO1_tri_i    (GPIO1_tri_i),          // input wire [7 : 0] GPIO1_tri_i
                .GPIO1_tri_o    (GPIO1_tri_o)          // output wire [7 : 0] GPIO1_tri_o
   );



top_mcs    uut_mcs1(
                      .clk                (  clk_100      ),
                      .rd_clk             (  clk_20       ),
                      .fifo_rst           ( fifo_rst      ) ,
                      .rst_n              (locked_out      ),
                      .IO_write_strobe    (IO_write_strobe ),
                      .IO_Write_data      (IO_write_data   ), 
                      .IO_addr_strobe     (IO_addr_strobe  ),
                      .uart_buffer_rst    (uart_buffer_rst ),
                      .IO_read_strobe     (IO_read_strobe  ),
                      .IO_Read_Data       (IO_read_data    ),
                      .uart_buffer_empty  (uart_buffer_empty),
                      .fifo_buffer_empty  (fifo_buffer_empty),
                      .IO_ready           (IO_ready      ),
                      .IO_Byte_Enable     (IO_byte_enable),
                      .IO_Address         (IO_address    ), 
                      .regWren            (regWren       ),
                      .regAddr            (regAddr       ),
                      .regData            (regData       ),
                      .regRden            (regRden       ),
                      .regReadData        (regReadData   ),
                      .flash_rd_en         (flash_de     ) ,
                      .flash_data         (flash_data    ) ,
                       .flash_wren        (flash_wren    )   ,   
                       .flash_wrdata      (flash_wrdata  )   , 
                       .FLASH_DATA_EN     (FLASH_DATA_EN )   ,      
                       .Flash_rd          (Flash_rd      )   ,          
                       .mem_sel           (mem_sel       )   ,
                       .flash_read        (r_data_flash  )
                  );
                  
                  
//           wire [49:0]probe0;
                    
//                   assign probe0={flash_data,rd_valid,regReadData,FLASH_DATA_EN,flash_wren,flash_de,r_data_flash,flash_wrdata,mem_sel,page_prgm_4_byte_puls,erase_4_sector_puls,read_puls};
                                                                    
                                                          
//                  ila_0 uut_ila1 (
//                       .clk(clk), // input wire clk
//                       .probe0(probe0) // input wire [32:0]  probe0  
//                   );         
                           
 
//   wire [49:0]probe0;
   
//  assign probe0={FLASH_DATA_EN,chip_id_read_puls,r_data_flash,flash_busy,rd_valid,flash_data,page_prgm_4_byte_puls,read_puls,erase_4_sector_puls};
  
// //      vio_0 uut_vio (
// //   .clk(clk),                // input wire clk
// //   .probe_out0(flash_cmd),  // output wire [39 : 0] probe_out0
// //   .probe_out1(cmd_puls)  // output wire [0 : 0] probe_out1
// // );
                                                                           
                                         
// ila_0 uut_ila1 (
//      .clk(clk_100), // input wire clk
//      .probe0(probe0) // input wire [32:0]  probe0  
//  );         
          
          
          
Reg_file   uut_Reg (

           .clk            (clk_100    ),
           .rst_n          (locked_out ),
           .regWe          (regWren    ),
           .regAddr        (regAddr    ),
           .regWr_data     (regData    ),
           .regRd          (regRden    ),
           .regReadData    (regReadData),
            . memory_cmd   (memory_cmd  )
           
           
            ); 
            
            
            

 ///////////////testing purpose only////////////////////     
 reg en;
 reg en_d;
 reg [7:0]cnt;
 
 
 wire en_pos =   ~en_d & en;
 always@(posedge clk_40)begin
 if(!locked_out)begin
 en       <= 1'b0;
 en_d     <= 0;
 cnt      <= 0;
 flash_de_d  <= 0;
 flash_de_dd <= 0;
 flash_data_d  <= 0;
 end
 else begin
 flash_de_d  <=  flash_de;
 flash_de_dd  <= flash_de_d;
 flash_data_d <= flash_data;
 
  
 

   en    <= 1'b1;
   cnt   <=  0;
   en_d  <= en;
   if(cnt==30)begin
   cnt   <=  0;
   en    <=  0;
   end
   
   else if(en)
   cnt <= cnt+1;

//   read_puls  <= 0;
//     if(cnt==20)
//     read_puls   <=1'b1;
     
     
//    enter_byte_4_addr_puls <= 0;
//    if(cnt==30)
//    enter_byte_4_addr_puls   <=1'b1; 
    
       
//    read_puls  <= 0;
//      if(cnt==50)
//      read_puls   <=1'b1;
    
//   page_prgm_4_byte_puls <= 0;
//   if(cnt==70)
//   page_prgm_4_byte_puls   <=1'b1; 
  
  
//   read_puls  <= 0;
//        if(cnt==90)
//        read_puls   <=1'b1;
  
//   erase_4_sector_puls <= 0;
//   if(cnt==110)
//   erase_4_sector_puls   <=1'b1; 
  
//      read_puls  <= 0;
//          if(cnt==130)
//          read_puls   <=1'b1;
     
     
 
 end
 end
    
    
    
//////////////////////testing purpose only ////////////////////////
    
    
    


   
wire rx_2;
assign rx_2 = UART_RX;
    
reg [31:0] Cyrst_ct; 
wire reset_n;
reg  reset_out_i;   
wire reset_chip;

assign reset_n=locked_out;  
assign reset_out = reset_out_i ;//& reset_chip; 

reg[5:0]usb_rst_cnt;
reg reset_out_i_d ;


always@(posedge clk_10)begin
if(!reset_n)begin
Cyrst_ct     <=    0;
reset_out_i  <=   1'b1;
usb_en       <=   1'b0;
usb_rst_cnt  <=   0;

end
else begin
    //if(Cyrst_ct<=5000000)
    
    reset_out_i_d <= reset_out_i ;
      
    if(Cyrst_ct ==32'h5F5E100) // 32'h186A0 5msecs//32'd100000000  //23C3460
      Cyrst_ct <= Cyrst_ct ;
    else     
      Cyrst_ct <= Cyrst_ct+1;
         
         
    if(Cyrst_ct ==32'h5F5E100)  //23C3460  
      reset_out_i <= 1'b1;
    else
      reset_out_i <= 0;  
                   
                if(usb_rst_cnt==10)  
                   usb_en   <= 0;
                else if(reset_out_i &~reset_out_i_d)
                   usb_en    <= 1;
                
                usb_rst_cnt  <= 0;
                if(usb_en )
                usb_rst_cnt <= usb_rst_cnt+1;
               
               
end


end


 
 
       
 /////----------UART Communication------------////

wire transmit;
wire [7:0]tx_byte;
wire [7:0]rx_byte;
wire is_receiving;
wire is_transmitting;
wire recv_error;
wire received;
reg received_d;
reg received_dd;


reg [7:0] rx_byte_d ;
reg [7:0] rx_byte_dd ;
wire transmit_cy;
wire [7:0]tx_byte_cy;

wire transmit_ce;
wire [7:0]transmit_byte_ce;

 assign transmit_cy = transmit | transmit_ce;
 
 assign tx_byte_cy = transmit_ce ? transmit_byte_ce : tx_byte;



//UART u_UART(
//      .clk              (clk_cam_75), // The master clock for this module
//      .rst              (!reset_n), // Synchronous reset.
//      .rx               (UART_RX_dd), // Incoming serial line
//      .tx               (UART_TX), // Outgoing serial line
//      .transmit_pulse   (transmit), // Signal to transmit //transmit
//      .tx_byte          (tx_byte), // Byte to transmit  //tx_byte
//      .received         (received), // Indicated that a byte has been received.
//      .rx_byte          (rx_byte), // Byte received
//      .is_receiving     (is_receiving), // Low when receive line is idle.
//      .is_transmitting  (is_transmitting), // Low when transmit line is idle.
//      .recv_error       (recv_error) // Indicates error in receiving packet.
//    );
 
        

 
 
   assign transmit = ~received_d & received_dd;
   assign tx_byte  =  rx_byte;
       
   always@(posedge clk_100)begin
    if(!reset_n)begin
      UART_RX_d   <= 1'b0;
      UART_RX_dd  <= 1'b0;
    end
    else begin
      UART_RX_d   <= UART_RX;
      UART_RX_dd  <= UART_RX_d;
    end
   end
    
    always@(posedge clk_10)begin
    if(!reset_n)begin
       rx_byte_d   <= 0 ;
       rx_byte_dd  <= 0 ; 
       received_d  <= 1'b0;
       received_dd <= 1'b0;        
    end
    else begin
      received_d  <= received;
      received_dd <= received_d;     
      rx_byte_d  <= rx_byte ;
      rx_byte_dd <= rx_byte_d ;
     end
    end     
///-----------End of UART Communication-------///       
       
     wire [15:0] eprom_data;
     wire [31:0]sensor_id;
     wire eprom_i2c_en;

   assign  eprom_data = 16'h0000;
       
  sensor_i2c u_sens_i2c( 
                  .clk         ( clk_cam_75          )  ,
                  .rst_n       ( reset_n             )  ,
                  .i2c_en      ( eprom_i2c_en        )  , 
                  .i2c_data    ( {eprom_data,8'hFF}  )  ,
                  .sens_sda_io (                     )  ,//EPROM_SDA
                  .sens_scl_io (                     )  , //EPROM_SCL
                  .sensor_id   ( sensor_id           )
                  
                                   );        
       
  
//   wire tx_clk;


//IBUFDS #(
// .DIFF_TERM("FALSE"),       // Differential Termination
// .IBUF_LOW_PWR("TRUE"),     // Low power="TRUE", Highest performance="FALSE" 
// .IOSTANDARD("DEFAULT")     // Specify the input I/O standard
//) IBUFDS_inst (
// .O(tx_clk),  // Buffer output
// .I(tx_clk_p),  // Diff_p buffer input (connect directly to top-level port)
// .IB(tx_clk_n) // Diff_n buffer input (connect directly to top-level port)
////);
       
       
//   wire [4:0]probe0;
 
//assign probe0={UART_TX,rx_2}; 
                                                                                   
//ila_0 u_ila_0 (                                                                      
//	.clk(clk_40), // input wire clk                                                 
//	.probe0(probe0) // input wire [63:0] probe0
//);
 
 
 endmodule

 
 