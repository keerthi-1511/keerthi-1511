`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Analinear
// Engineer: kartheek
// 
// Create Date: 14.10.2021 10:27:48
// Design Name: 
// Module Name: flash_spi_quad
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


module quad_spi(
    input  clk,
    input  rst,
    input  [23:0]address,  //31
    input  [3:0] data,
    input  read_puls,  
    input  erase_4_32KB_puls,
    input  erase_4_4KB_puls,
    input  erase_4_sector_puls,
    input  chip_id_read_puls,
    input  enter_byte_4_addr_puls,
    input  exit_byte_4_addr_puls,
    input  page_prgm_4_byte_puls,
    output read_error,
    output write_error,
    output erase_error,
    output f_cs,       //chip select
    output f_sclk,     // serial clock 
    inout  f_DQ0,       //inout pin of DQ0
    inout f_DQ1,
    inout f_DQ2,
    inout f_DQ3  ,    //inout pin of DQ1
    output reg flash_busy,
    output reg data_en,
    output reg [7:0]r_data_flash,
    output  reg rd_valid,
    input clk_200,
    input flash_de
    );
    
//    reg [3:0]data;
    
  ////////////////////states of the state machine//////////////////////// 
    parameter  idle_state              = 'd0; 
    parameter  read_state              = 'd1;
    parameter  write_enable_state      = 'd2;
    parameter  erase_4_32KB_state      = 'd3;
    parameter  chip_id_read_state      = 'd4;
    parameter  status_reg_state        = 'd5;
    parameter     quad_mode_state      = 'd6;
    parameter  enter_byte_4_addr_state = 'd7;
    parameter  exit_byte_4_addr_state  = 'd8;
    parameter  write_disable_state     = 'd9;
    parameter  wait_state              = 'd10;
    parameter  read_flag_status_state  = 'd11;
    parameter  erase_4_4KB_state       = 'd12;
    parameter  erase_4_sector_state    = 'd13;
    parameter  dummy_state             = 'd14;
    parameter  page_4_byte_prgm_state  = 'd15;
    parameter  page_4_byte_prgm_state1 = 'd16;
    parameter write_dummy_state        = 'd17;
//    parameter  WRITE_LOCK_BITS_state   = 'd17;
   
    
    parameter s_mode = 3'd01;
    parameter d_mode = 3'd02;
    parameter q_mode = 3'd04;
 ////////////////////////////////////////////////////////////////////////
 
 ////////////// commands //////////////               
 `define read_id  'h9f  //to read chip id 
 `define read_id_1  'h9f  //to read chip id
 `define write_enable  'h06
 `define READ_STATUS_REGISTER  'h05
 `define enter_quad_mode 'h35
 `define ENTER_4_BYTE_ADDRESS_MODE 'hb7
 `define EXIT_4_BYTE_ADDRESS_MODE  'he9
 `define erase_4_byte_32KB_mode   'h5c
 `define erase_4_byte_4KB_mode   'h21
 `define erase_4_byte_sector_mode 'hd8
 `define WRITE_DISABLE 'h04
 `define READ_FLAG_STATUS_REGISTER 'h70
 `define PAGE_PROGRAM_4_BYTE 'h02 //02
// `define WRITE_VOLATILE_LOCK_BITS 'he4
 `define READ_4_BYTE_page 'h0b
 
 ///////////////parameters for logic//////////////////////////////////
    parameter A=24; // for 32 address bit
    parameter D=32; // for data stoarge maximum 40 bit data -- 8 bit data and 32 bit addressv//48
    parameter C=10;  // counter for maximum 40 bit data transmission to flash and 256 pagedata for flash when page write
    
    parameter S=8; // for counter 1 for seconds clock
    parameter m=10; // for counter 2 for milisecond clock 
    parameter u=5; // for counter 3 for microsecond clock 
   

 /// registers of state machine///
    reg [4:0]state_reg  ;
    reg [4:0]next_state ;
    reg [D-1:0] d_in    ; // max of 40 bit data from state_machine
    reg [7:0] no_of_bits;  //  no_of_bits // for no of data bits, maximum of 8 bit
    reg [15:0] clk_cnt   ;  // clk_cnt //no of clock required to send command ,address , data 
    reg [11:0] rd_wait_cnt;   // rd_wait_cnt  // number of clock cycles to read data from flash 
    reg [2:0]mode       ; 
    wire qchip_id_read_puls;
    reg fchip_id_read_puls;
    reg dchip_id_read_puls;
    reg [7:0]status_reg ; // to store 8 bit status register obatianed from the flash 
    reg status_read_flag; 
    
    reg fenter_byte_4_addr_puls;
    reg denter_byte_4_addr_puls;
    wire qenter_byte_4_addr_puls; 
    reg enter_byte_4_addr_flag; 
    reg enter_byte_4_addr_flag1; 
    reg byte4_cycle;
    
    reg wait_flag;
    reg wait_flag1;
    reg wait_cycle;
    
    reg [7:0]flag_status_reg;
    reg flag_status_read_flag;
    
    reg ferase_4_32KB_puls;
    wire qerase_4_32KB_puls;  
    reg derase_4_32KB_puls;
    reg  erase_4_32KB_flag;
    reg  erase_4_32KB_flag1;
    reg  erase_4_32KB_cycle;
    
    reg ferase_4_4KB_puls;
    reg derase_4_4KB_puls;
    wire qerase_4_4KB_puls;
    reg  erase_4_4KB_flag;
    reg  erase_4_4KB_flag1;
    reg  erase_4_4KB_cycle;
    
    reg derase_4_sector_puls;
    reg ferase_4_sector_puls;
    wire qerase_4_sector_puls;
    reg  erase_4_sector_flag;
    reg  erase_4_sector_flag1;
    reg  erase_4_sector_cycle;    
    
    reg fpage_prgm_4_byte_puls;
    reg dpage_prgm_4_byte_puls;
    wire qpage_prgm_4_byte_puls;
    reg  page_prgm_4_byte_flag;
    reg  page_prgm_4_byte_flag1;
    reg  page_prgm_4_byte_cycle;    
    
    reg page_prgm_4_byte_flag_1;
    reg page_prgm_4_byte_flag_11;
    reg page_prgm_4_byte_cycle1;    
    
//    reg WRITE_LOCK_BITS_flag;
//    reg WRITE_LOCK_BITS_flag1;
//    reg WRITE_LOCK_BITS_cycle;
    
    reg fread_puls;
    reg dread_puls;
    wire qread_puls;
    
    reg read_err;
    reg write_err;
    reg erase_err;

 ////////////registers for spi logic/////////////////
    reg  [C-1:0] cnt      ; // counter for 40 bit data 
    reg          cnt_en   ; 
    reg  [S-1:0] cnt_s    ; // seconds clock
    reg          cnt_en_s ;
    reg  [m-1:0] cnt_m    ; //millisecond clock
    reg          cnt_en_m ; 
    reg  [u-1:0] cnt_u    ; // microsecond clock
    reg          cnt_en_u ;
   
    reg          din_rdy    ; // it enables after the data wrtien in din  
    reg  [D-1:0] din_la          ; // internal data register the data come from state machine
    reg  trgr              ;
    reg  ftrgr             ;
    wire start                ;  //after getting trigger, the start of process 
    reg flag_s_mode           ;  // flag is 0 at the last bit of coomand
    reg flag_d_mode           ;  // flag is 0 at the last bit of coomand
    reg flag_q_mode           ;  // flag is 0 at the last bit of coomand
    reg flag_cs               ;  // flag for chip select
    reg flag_cs1              ; 
    reg DQ0 ;
    reg DQ1 ;
    reg DQ2 ;
    reg DQ3 ; 
    reg  rd_en;
    wire [12:0]dwn_cnt; 
    
 /////////logic for spi /////////////  
    assign start = ~ftrgr & (trgr || erase_4_sector_flag || erase_4_4KB_flag || erase_4_32KB_flag || enter_byte_4_addr_flag
                                 /* || WRITE_LOCK_BITS_flag */ || page_prgm_4_byte_flag);
                     
    assign dwn_cnt = rd_wait_cnt + (clk_cnt-1) ; 
    
 ///////// at negedge clock all enables begins and ends according to logic ///  
     always@(posedge clk) begin//posedge
         if(!rst) begin 
            ftrgr        <= 1'b0;    
            din_la       <= 40'h0;
            flag_cs      <= 1'b0;
            cnt_en       <= 1'b0;
            cnt          <= 8'd0;
            flag_s_mode  <= 1'b0;
            flag_d_mode  <= 1'b0;
            flag_q_mode  <= 1'b0;  
             
            din_rdy    <= 1'b0;
         end
         else begin
             ftrgr       <= trgr;          
             din_rdy     <= 1'b0; 
                         
             if (start) 
              din_rdy <= 1'b1;

              din_la    <= din_la;    
              flag_cs   <= flag_cs;
              cnt_en    <= cnt_en; 
                        
             if (din_rdy)  begin
              din_la       <= d_in;
              flag_cs      <= 1'b1;
              cnt_en       <= 1'b1;  
             end   
             else if (cnt == dwn_cnt ) begin
              flag_cs <= 1'b0;
              cnt_en  <= 1'b0;
             end
             
            if (page_prgm_4_byte_cycle1)
                din_la       <= d_in;
                 
             
             
         cnt       <= 8'd0;    
         if(din_rdy)
          cnt <= 8'd0 ;
         else  if(cnt == dwn_cnt)
          cnt <= 8'd0 ;
         else if(cnt_en)
          cnt <= cnt + 1;
          
          
              
          flag_s_mode   <= flag_s_mode;
          flag_d_mode   <= flag_d_mode;
          flag_q_mode   <= flag_q_mode;     
                      
          if (din_rdy) begin
            flag_s_mode  <= 1'b1;
            flag_d_mode  <= 1'b1;
            flag_q_mode  <= 1'b1;        
          end          
          else if (cnt == (clk_cnt-1))  begin
            flag_s_mode <= 1'b0;
            flag_d_mode <= 1'b0;
            flag_q_mode <= 1'b0;           
           end    
                    
         end    
     end    
     
     wire ex1 ;
     wire ex2 ;
     wire ex3 ;
     wire ex4 ;
     wire ex5 ;
     wire ex6 ;
     wire ex7 ; 
     wire [9:0]cnter;
     
     assign cnter = page_prgm_4_byte_cycle1 ? 0 : cnt;
        
     assign ex1 = flag_cs ? flag_s_mode ? din_la[(no_of_bits-1)-cnt] : 1'bZ : 1'b0; 
     
     assign ex2 = flag_cs ? flag_d_mode ? din_la[(no_of_bits-1)-(cnt << 1)] : 1'bZ : 1'b0;
     assign ex3 = flag_cs ? flag_d_mode ? din_la[(no_of_bits-1)-((cnt << 1)+1)] : 1'bZ : 1'b0;
     
     assign ex4 = flag_cs ? flag_q_mode ? din_la[(no_of_bits-1)-((cnter << 2)+3)] : 1'bZ : 1'b0; // LSB
     assign ex5 = flag_cs ? flag_q_mode ? din_la[(no_of_bits-1)-((cnter << 2)+2)] : 1'bZ : 1'b0;
     assign ex6 = flag_cs ? flag_q_mode ? din_la[(no_of_bits-1)-((cnter << 2)+1)] : 1'bZ : 1'b0;
     assign ex7 = flag_cs ? flag_q_mode ? din_la[(no_of_bits-1)-(cnter << 2)] : 1'bZ : 1'b0;     // MSB
   
     assign f_DQ0 = DQ0;
     assign f_DQ1 = DQ1;
     assign f_DQ2 = DQ2;
     assign f_DQ3 = DQ3; 
      
     assign f_cs  = flag_cs1? 1'b0 : 1'b1; //flag_cs1;
     assign f_sclk = !f_cs ? clk : 0; 
     
     assign read_error = read_err;
     assign write_error = write_err;
     assign erase_error = erase_err;
     
     always@(negedge clk) begin  //negedge
            if(!rst) begin
                DQ0 <= 1'b0;
                DQ1 <= 1'b0;
                DQ2 <= 1'b0;
                DQ3 <= 1'b0; 
                flag_cs1 <= 1'b0;
            end
            else begin 
                DQ0      <= 1'bz;
                DQ1      <= 1'bz;
                DQ2      <= 1'bz;
                DQ3      <= 1'bz;
                flag_cs1 <= flag_cs;
                
            if(mode == s_mode) begin
                DQ0 <= ex1 ; 
                DQ1 <= 1'bz;
                DQ2 <= 1'bz;
                DQ3 <= 1'bz;
            end
            else if(mode == d_mode) begin
                DQ1 <= ex2;
                DQ0 <= ex3;
                DQ2 <= 1'bz;
                DQ3 <= 1'bz;
            end
            else if(mode == q_mode) begin
                DQ0 <= ex4;
                DQ1 <= ex5;
                DQ2 <= ex6;
                DQ3 <= ex7;
            end
            end
        end    
        

        
           always@(posedge clk) begin   // every posedge clock state reg is assigned by next state 
            if(!rst)
              state_reg  <= 'd0;     // at reset it is in idle state 
            else 
              state_reg  <= next_state;
         end      
     ///////////////////Trigger Pulse Generation//////////////////////////////
     
         assign qchip_id_read_puls      = ~dchip_id_read_puls & fchip_id_read_puls;
         assign qenter_byte_4_addr_puls = ~denter_byte_4_addr_puls & fenter_byte_4_addr_puls;
         assign qerase_4_32KB_puls      = ~derase_4_32KB_puls & ferase_4_32KB_puls;
         assign qerase_4_4KB_puls       = ~derase_4_4KB_puls & ferase_4_4KB_puls;
         assign qerase_4_sector_puls    = ~derase_4_sector_puls & ferase_4_sector_puls; 
         assign qpage_prgm_4_byte_puls    = ~dpage_prgm_4_byte_puls & fpage_prgm_4_byte_puls;
         assign qread_puls    = ~dread_puls & fread_puls; 
         
         always@(posedge clk) begin
             if(!rst) begin
               fchip_id_read_puls       <= 1'b0;
               fenter_byte_4_addr_puls  <= 1'b0;
               ferase_4_32KB_puls       <= 1'b0;
               dchip_id_read_puls       <= 1'b0;
               denter_byte_4_addr_puls  <= 1'b0;
               derase_4_32KB_puls       <= 1'b0;
               ferase_4_4KB_puls        <= 1'b0;
               derase_4_4KB_puls        <= 1'b0;
               ferase_4_sector_puls     <= 1'b0;
               derase_4_sector_puls     <= 1'b0;
               dpage_prgm_4_byte_puls<= 1'b0;
               fpage_prgm_4_byte_puls<= 1'b0; 
               dread_puls <= 1'b0;
               fread_puls <= 1'b0;
               
               byte4_cycle <= 1'b0;
               wait_cycle <= 1'b0; 
               erase_4_32KB_cycle <= 1'b0;
               erase_4_4KB_cycle <= 1'b0;
               erase_4_sector_cycle <= 1'b0;
               page_prgm_4_byte_cycle <= 1'b0;
//               WRITE_LOCK_BITS_cycle <= 1'b0; 
               page_prgm_4_byte_cycle1 <= 1'b0;
             end
             else begin
               fchip_id_read_puls       <= chip_id_read_puls;
               dchip_id_read_puls       <= fchip_id_read_puls;
               
               fenter_byte_4_addr_puls <= enter_byte_4_addr_puls;
               denter_byte_4_addr_puls <= fenter_byte_4_addr_puls;
               
               ferase_4_32KB_puls <= erase_4_32KB_puls;
               derase_4_32KB_puls <= ferase_4_32KB_puls;
               
               ferase_4_4KB_puls <= erase_4_4KB_puls;
               derase_4_4KB_puls <= ferase_4_4KB_puls;
               
               ferase_4_sector_puls <= erase_4_sector_puls;
               derase_4_sector_puls <= ferase_4_sector_puls;
               
               fpage_prgm_4_byte_puls <= page_prgm_4_byte_puls;
               dpage_prgm_4_byte_puls <= fpage_prgm_4_byte_puls;
               
                fread_puls <= read_puls;
                dread_puls <= fread_puls;
               
               if(enter_byte_4_addr_flag)
                  byte4_cycle <= 1'b1;
               else if(enter_byte_4_addr_flag1)
                 byte4_cycle <= 1'b0;
               else if (erase_4_32KB_flag ) begin
                    erase_4_32KB_cycle <= 1'b1;
//                    WRITE_LOCK_BITS_cycle <= 1'b1;
                    end
               else if (wait_flag1 || erase_4_32KB_flag1 || erase_4_4KB_flag1 || erase_4_sector_flag1 ) begin
                   erase_4_32KB_cycle <= 1'b0; 
                   erase_4_4KB_cycle <= 1'b0;
                    erase_4_sector_cycle <= 1'b0;
                     wait_cycle <= 1'b0;
                   end
               else if (erase_4_4KB_flag ) begin
                   erase_4_4KB_cycle <= 1'b1; 
//                   WRITE_LOCK_BITS_cycle <= 1'b1;
                   end
       
               else if (erase_4_sector_flag ) begin
                   erase_4_sector_cycle <= 1'b1;
//                    WRITE_LOCK_BITS_cycle <= 1'b1;
                   end 
                else if(wait_flag)
                      wait_cycle <= 1'b1;  
            
               else if (page_prgm_4_byte_flag)
                    page_prgm_4_byte_cycle <= 1'b1; 
               else if (page_prgm_4_byte_flag1) begin
                    page_prgm_4_byte_cycle <= 1'b0; 
                    page_prgm_4_byte_cycle1 <= 1'b1; 
                    end
               else if (page_prgm_4_byte_flag_11)
                     page_prgm_4_byte_cycle1 <= 1'b0;
//               else if (WRITE_LOCK_BITS_flag1)
//                     WRITE_LOCK_BITS_cycle <= 1'b0; 
                    
             end
         end
         

         
      // data written from the flash stored in status reg 
      wire status_flag;
      
      assign status_flag = (state_reg == status_reg_state) ? 1'b1 : 1'b0 ; 
      
         always@(posedge clk) begin
             if(!rst) begin
                 status_reg       <= 8'd0;
                 status_read_flag <= 1'b0;
             end  
             else begin
                 status_reg      <= status_reg;
                 status_read_flag <= status_read_flag ;
                 
                 if(status_flag) begin  
                         if(!flag_q_mode && flag_cs1) begin
                          if(!status_read_flag) begin
                           status_reg[7:4] <= {f_DQ3,f_DQ2,f_DQ1,f_DQ0}; // MSB first 
                           status_read_flag <=1'b1;
                          end
                          else begin
                           status_reg[3:0] <= {f_DQ3,f_DQ2,f_DQ1,f_DQ0};
                           status_read_flag <= 1'b0;
                          end
                         end
                   end  
              end
           end
           
           
  // data written from the flash stored in flag status reg 
        wire read_status_falg;
        
        assign read_status_falg = (state_reg == read_flag_status_state) ? 1'b1 : 1'b0 ; 
        
        always@(posedge clk) begin
            if(!rst) begin
                flag_status_reg       <='d0;
                flag_status_read_flag <=1'b0;
            end  
            else begin
                flag_status_reg      <= flag_status_reg;
                flag_status_read_flag <= flag_status_read_flag ;
                
                if(read_status_falg) begin
                        if ((!flag_q_mode) && (flag_cs1)) begin
                                if (!flag_status_read_flag) begin
                                   flag_status_reg[7:4] <= {f_DQ3,f_DQ2,f_DQ1,f_DQ0}; // MSB first 
                                   flag_status_read_flag <=1'b1;
                                end
                                else begin
                                  flag_status_reg[3:0] <= {f_DQ3,f_DQ2,f_DQ1,f_DQ0};
                                  flag_status_read_flag <= 1'b0;
                                end
                         end
                  end  
             end
          end   
          
          
          
     /// counter clock upto 1 sec with milli-second clock///////
        always@(posedge clk) begin
            if(!rst) begin
                cnt_en_m <=1'b0;
                cnt_en_s <=1'b0;
                cnt_en_u <=1'b0;
            end
            else begin
                cnt_en_m <= 1'b0;
                cnt_en_s <= 1'b0 ;
                cnt_en_u <=1'b0;
                
                if(wait_cycle) begin
                    cnt_en_u <=1'b1;
                    cnt_en_m <= 1'b0;
                    cnt_en_s <= 1'b0;
                    
                    if(cnt_u == 'd25) begin
                      cnt_en_u <=1'b0;
                      cnt_en_m <= 1'b1;
                    end  
                    if ((erase_4_32KB_cycle) || (erase_4_sector_cycle)) begin
                     if(cnt_m == 'd1000) begin
                       cnt_en_s <= 1'b1;
                       cnt_en_m <= 1'b0;
                       end
                    end                  
                    else if (erase_4_4KB_cycle) begin
                      if(cnt_m == 'd400) begin
                         cnt_en_s <= 1'b1;
                         cnt_en_m <= 1'b0;
                       end
                    end  
                             
                 end                         
            end
        end
        
        
        
       
       always@(posedge clk)  begin
         if(!rst) begin
          cnt_s <= 'd0;
          cnt_m <= 'd0;
          cnt_u <= 'd0;
         end
         else begin
           
           cnt_u <= 'd0;
          
          if(cnt_en_u)
            cnt_u <= cnt_u +1;
          
          cnt_m <= cnt_m;
          if(cnt_en_m)
            cnt_m <= cnt_m +1;
          else if(cnt_m=='d1000)
            cnt_m <= 'd0;
          
          cnt_s <= cnt_s;     
          if(cnt_en_s)
            cnt_s <= cnt_s +1;
          else if(cnt_s == 'd3)
               cnt_s <= 'd0;
               
         end
       end
       
       
           reg rd_en_d;
           reg flag;
           reg [10:0]rd_cnt;
          
           
      always@(posedge clk )  begin
       if(!rst) begin
        r_data_flash <=0;
        rd_en_d      <=0;
        flag <=0;
        rd_valid  <=0;
       end
       else begin
         rd_valid <=0;
         rd_en_d <=rd_en_d;
          if(rd_cnt == 513)
            rd_en_d <=0;
         else if(rd_en)
          rd_en_d <=1;
          
          rd_cnt <=0;
        if(rd_en_d)  
          rd_cnt <=rd_cnt+1;
          
          flag <=flag;
          r_data_flash <=r_data_flash;
         if(rd_en_d  && !flag && flag_cs1) begin
            r_data_flash[7:4] <= {f_DQ3,f_DQ2,f_DQ1,f_DQ0};
            flag <=1;
         end
         else  if(rd_en_d  && flag && flag_cs1) begin
                 rd_valid <=1;
                  r_data_flash[3:0] <= {f_DQ3,f_DQ2,f_DQ1,f_DQ0};
                  flag <=0;
               end
       end
      end  
      
     /////////state machine ////////
        always@(*) begin
            next_state  = state_reg;
            trgr     = 1'b0;
            d_in        = 'd0; 
            no_of_bits  = 'd0;  //  no_of_bits 
            clk_cnt     = 'd0;  // clk_cnt // number of clock cycles to enter  the command and address if required
            rd_wait_cnt = 'd0;   // rd_wait_cnt //no of clock cycles required to wait to get the data from flash
            mode        = q_mode;
            
            enter_byte_4_addr_flag  =1'b0;
            enter_byte_4_addr_flag1 =1'b0;
            
            erase_4_32KB_flag       = 1'b0;
            erase_4_32KB_flag1      = 1'b0;
            
            wait_flag               = 1'b0;
            wait_flag1              = 1'b0;
            
            erase_4_4KB_flag        = 1'b0;
            erase_4_4KB_flag1       = 1'b0;
            
            erase_4_sector_flag     = 1'b0;
            erase_4_sector_flag1    = 1'b0;
            
            page_prgm_4_byte_flag=1'b0;
            page_prgm_4_byte_flag1=1'b0;
            
            page_prgm_4_byte_flag_1 = 1'b0;
            page_prgm_4_byte_flag_11= 1'b0;
            
//            WRITE_LOCK_BITS_flag = 1'b0;
//            WRITE_LOCK_BITS_flag1= 1'b0;
            
            read_err = 1'b0;
            write_err = 1'b0;
            erase_err = 1'b0;
            data_en   = 1'b0;
            flash_busy  =1'b0;
            rd_en       = 1'b0;
            case (state_reg) 

                idle_state :  begin
                                flash_busy = 1'b0;
                                
                                if(qchip_id_read_puls) begin
                                trgr = 1'b1;
                                next_state = dummy_state;
                                end
                                
                                else if(qerase_4_32KB_puls) begin
                                erase_4_32KB_flag= 1'b1;
                                next_state = write_enable_state;
                                end
                                
                                else if(qread_puls) begin
                                trgr = 1'b1;
                                next_state = read_state;   
                                end
                                else if(qenter_byte_4_addr_puls) begin
                                enter_byte_4_addr_flag = 1'b1;
                                next_state = write_enable_state;
                                end
                                
                                else if(exit_byte_4_addr_puls)
                                next_state=exit_byte_4_addr_state;
                                
                                else if(qerase_4_4KB_puls) begin
//                                WRITE_LOCK_BITS_flag = 1'b1;
                                erase_4_4KB_flag = 1'b1;
                                next_state = write_enable_state;
                                end
                                
                                else if(qerase_4_32KB_puls) begin
//                                WRITE_LOCK_BITS_flag = 1'b1;
                                erase_4_32KB_flag = 1'b1;
                                next_state = write_enable_state;
                                end
                                
                                else if(qerase_4_sector_puls) begin
                                erase_4_sector_flag = 1'b1;
//                                WRITE_LOCK_BITS_flag = 1'b1;
                                next_state = write_enable_state;
                                end
                                
                                else if(qpage_prgm_4_byte_puls) begin
                                page_prgm_4_byte_flag=1'b1;
                                next_state = write_enable_state;
                                end
                             end

        dummy_state        : begin
                                d_in     = 40'd0;
                                clk_cnt = 8'd10;
                                
                                if(cnt == 'd9) begin
                                trgr = 1'b1;
                                next_state = chip_id_read_state;
                                end
                              end                  

        chip_id_read_state : begin
                                flash_busy = 1'b1;
                                d_in        = `read_id;  //'h9e
                                no_of_bits  = 8'd8;  //  no_of_bits 
                                clk_cnt     = 8'd8;  // clk_cnt
                                rd_wait_cnt = 8'd8;   // rd_wait_cnt 
                                mode        = s_mode;
                                
                                if (cnt == 'd15) begin
                                trgr    = 1'b1;       // Generating trigger again to go quad mode irrespective of the input signals
                                next_state = quad_mode_state; 
                                end                                        
                              end                    

        quad_mode_state     :  begin
                                flash_busy = 1'b1;
                                d_in        = `enter_quad_mode; //'h35 
                                clk_cnt     = 8'd8; 
                                no_of_bits  = 8'd8;   
                                rd_wait_cnt = 8'd0;
                                mode        = s_mode;  
                                if (cnt == 'd7)
                                next_state = idle_state;
                               end 

    enter_byte_4_addr_state : begin
                                flash_busy = 1'b1;
                                if (status_reg[1:0] == 2'b10) begin
                                d_in        =`ENTER_4_BYTE_ADDRESS_MODE;  //'hb7
                                clk_cnt     = 8'd2; 
                                no_of_bits  = 8'd8;
                                rd_wait_cnt = 8'd0;
                                mode        = q_mode;
                                
                                enter_byte_4_addr_flag1 = 1'b1;                          
                                if(cnt == 'd1)
                                next_state = idle_state;  
                                end    
                               end  

        write_enable_state    : begin  
                                flash_busy = 1'b1;
                                d_in        = `write_enable;  //'h06
                                clk_cnt     = 8'd2; 
                                no_of_bits  = 8'd8;
                                rd_wait_cnt = 8'd0;
                                mode        = q_mode;
                                
                                if(cnt == 'd1) begin
                                  if(byte4_cycle) begin
                                    trgr    = 1'b1;
                                    next_state = status_reg_state;
                                    end
                                    else if(page_prgm_4_byte_cycle) begin
                                    trgr = 1'b1;
                                    next_state= page_4_byte_prgm_state;
                                    end
                                    else if(erase_4_32KB_cycle) begin
                                    trgr    = 1'b1;
                                    next_state = erase_4_32KB_state;
                                    end
                                    else  if(erase_4_4KB_cycle) begin
                                    trgr    = 1'b1;
                                    next_state = erase_4_4KB_state;
                                    end     
                                    else if(erase_4_sector_cycle) begin
                                    trgr = 1'b1;
                                    next_state= erase_4_sector_state;
                                    end
                                end 
                              end 
                              
       write_dummy_state    :  begin
                                d_in      = 40'd0;
                                clk_cnt   = 8'd10;
                                
                                if(cnt == 'd9) begin
                                    if(byte4_cycle) begin
                                        trgr    = 1'b1;
                                        next_state = status_reg_state;
                                        end
                                        else if(page_prgm_4_byte_cycle) begin
                                        trgr = 1'b1;
                                        next_state= page_4_byte_prgm_state;
                                        end
                                        else if(erase_4_32KB_cycle) begin
                                        trgr    = 1'b1;
                                        next_state = erase_4_32KB_state;
                                        end
                                        else  if(erase_4_4KB_cycle) begin
                                        trgr    = 1'b1;
                                        next_state = erase_4_4KB_state;
                                        end     
                                        else if(erase_4_sector_cycle) begin
                                        trgr = 1'b1;
                                        next_state= erase_4_sector_state;
                                        end
                            end
                            end
                                                              
        status_reg_state    : begin     
                                flash_busy = 1'b1;                           
                                d_in        =`READ_STATUS_REGISTER; //'h05 
                                clk_cnt     = 8'd2; 
                                no_of_bits  = 8'd8;
                                rd_wait_cnt = 8'd2;
                                mode        = q_mode; 
                                
                                if(cnt == 'd3) begin
                                    if ( byte4_cycle ) begin   
                                    trgr = 1'b1;                        
                                    next_state =enter_byte_4_addr_state; 
                                    end
                                end
                               end    

//    WRITE_LOCK_BITS_state   : begin
//                                d_in [7:0]= `WRITE_VOLATILE_LOCK_BITS;  //'he5
//                                //                                         d_in [39:8] = address;
//                                //                                         d_in [7:0] = 8'd0;
//                                no_of_bits  = 8'd8;  //  no_of_bits 
//                                clk_cnt     = 8'd2;  // clk_cnt
//                                rd_wait_cnt = 8'd0;   // rd_wait_cnt 
//                                mode        = q_mode;
//                                WRITE_LOCK_BITS_flag1 = 1'b1;
//                                if(cnt == 'd1) begin
//                                trgr = 1'b1;
//                                next_state = write_enable_state;
//                                end
//                                end      
                                                              
        erase_4_32KB_state   : begin
                                flash_busy = 1'b1;
                                d_in [31:24]= `erase_4_byte_32KB_mode;  //'h5c
                                d_in [23:0] = address;
                                no_of_bits  = 8'd32;  //  no_of_bits 
                                clk_cnt     = 8'd8;  // clk_cnt
                                rd_wait_cnt = 8'd0;   // rd_wait_cnt 
                                mode        = q_mode;
                                
                                if(cnt == 'd7) begin
                                wait_flag  = 1'b1;
                                next_state = wait_state;
                                end
                              end 

        erase_4_4KB_state   : begin
                                 flash_busy = 1'b1;
                                d_in [31:24]= `erase_4_byte_4KB_mode;  //'h21
                                d_in [23:0] = address;
                                clk_cnt     = 8'd8; 
                                no_of_bits  = 8'd32;
                                rd_wait_cnt = 8'd0;
                                mode        = q_mode;
                                
                                if(cnt == 'd7) begin
                                wait_flag = 1'b1;
                                next_state = wait_state;
                                end
                              end

    erase_4_sector_state   : begin
                                d_in [31:24]= `erase_4_byte_sector_mode;  //'hdc
                                d_in [23:0] = address;
                                clk_cnt     = 10'd8; //10
                                no_of_bits  = 8'd32;
                                rd_wait_cnt = 8'd0;
                                mode        = q_mode;
                                flash_busy  = 1'b1;
                                if(cnt == 'd7) begin
                                wait_flag = 1'b1;
                                next_state = wait_state;
                                end
                              end 

            wait_state   : begin
                             flash_busy = 1'b1;
                            if((erase_4_32KB_cycle) || (erase_4_sector_cycle) )begin
                                if(cnt_m == 'd1000) begin
                                trgr = 1'b1;
                                next_state = read_flag_status_state;
                                end
                            end 
                            else if(erase_4_4KB_cycle) begin
                                if(cnt_m == 'd400) begin
                                trgr = 1'b1;
                                next_state = read_flag_status_state;
                                end
                            end
                          end   

read_flag_status_state   : begin
                       flash_busy = 1'b1;
                        d_in        = `READ_FLAG_STATUS_REGISTER;  //'h70
                        clk_cnt     = 8'd2; 
                        no_of_bits  = 8'd8;
                        rd_wait_cnt = 8'd2;
                        mode        = q_mode;
                         if(flag_cs) 
                            erase_err = 1'b0;
                           else
                            erase_err = 1'b1;
                        
                        if(cnt == 'd3) begin 
                            if ((flag_status_reg [5] == 1'b0) || (cnt_s == 'd3)) begin
                                wait_flag1 = 1'b1;
                                erase_4_sector_flag1 = 1'b1;
                                erase_4_4KB_flag1 = 1'b1;
                                erase_4_32KB_flag1 = 1'b1;
                                erase_err = 1'b1;
                                next_state = idle_state;
                            end  
                            else if (erase_4_32KB_cycle) begin
                                trgr = 1'b1;
                                next_state = erase_4_32KB_state; 
                                end
                            else if (erase_4_4KB_cycle) begin
                                trgr = 1'b1;
                                next_state = erase_4_4KB_state; 
                                end 
                            else if (erase_4_sector_cycle) begin
                                trgr = 1'b1;
                                next_state = erase_4_sector_state;  
                                end                    
                        end  
                      end    
                                                      
page_4_byte_prgm_state   : begin
                            d_in [31:24]= `PAGE_PROGRAM_4_BYTE;  //'h12
                            d_in [23:0] = address;
                            clk_cnt     = 10'd520; //522
                            no_of_bits  = 8'd32;//40
                            rd_wait_cnt = 8'd0;
                            mode        = q_mode;
                            flash_busy = 1'b1;
                             
                             if(cnt == 'd5)//7 //5
                                data_en = 1'b1;
                                
                            if(cnt == 'd6) begin  //6
                            page_prgm_4_byte_flag1 =1'b1;
                            next_state = page_4_byte_prgm_state1;
                            end
                           end    
                            
page_4_byte_prgm_state1   : begin
                                d_in [3:0]= data;  //'h12
                                clk_cnt     = 10'd520;  //520
                                no_of_bits  = 8'd4;
                                flash_busy = 1'b1;
                                 if(flag_cs) 
                                    write_err = 1'b0;
                                   else
                                    write_err = 1'b1;
                                if(cnt == 'd519) begin //519
                                page_prgm_4_byte_flag_11=1'b1;
                                next_state = idle_state;
                                end
                              end       

        read_state           : begin
                                d_in [31:24]= `READ_4_BYTE_page;  //'h13
                                d_in [23:0] = address;
                                clk_cnt     = 8'd8; 
                                no_of_bits  = 8'd32;
                                rd_wait_cnt = 10'd523;
                                mode        = q_mode;
                                flash_busy = 1'b1;
                                if(flag_cs) 
                                 read_err = 1'b0;
                                else
                                 read_err = 1'b1;
                                 
                                 if(cnt == 'd17)
                                  rd_en = 1'b1;
                                  
                                if(cnt == 'd530) begin  
                                next_state = idle_state;
                               end
                              end               

            endcase
        end
        
//          wire[49:0]probe0;
//          assign probe0 ={data,flash_de,r_data_flash,rd_valid,page_prgm_4_byte_puls,read_puls,erase_4_sector_puls} ;   
            
//              ila_1 uut_ila1 (
//                   .clk(clk_200), // input wire clk
//                   .probe0(probe0) // input wire [32:0]  probe0  
//               );
        
endmodule
