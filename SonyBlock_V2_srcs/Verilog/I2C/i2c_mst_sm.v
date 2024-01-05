
module i2c_mst_sm (
               // Clock & Reset
               i2c_host_clk_i               ,// Host Clock
               i2c_host_reset_ni            ,// System Reset

               //Input signals from HIF 
               i2c_host_mst_slv_i           ,
               i2c_host_tx_rx_i             ,
               i2c_host_data_bytes_i        ,
               i2c_host_own_addr_i          ,
               i2c_host_target_addr_i       ,
               i2c_host_start_i             ,
               i2c_host_stop_i              ,
               i2c_host_rpt_start_i         ,
               i2c_host_10bit_addr_i        ,
               i2c_ms_timeout_cnt_i         ,

               //Input signals from I2C Bus (Top Level) 

               i2c_sda_i                    , 
               i2c_scl_i                    , 

               cont_bit_i                   ,

               //Input signal from Time Out Counter Module 
               i2c_ms_cnt_tout_i            ,

               //Output from FIFO
               mst_fifo_en_o                ,
               mst_fifo_wr_en_o             ,
               mst_fifo_rd_en_o             ,
               mst_fifo_wr_data_o           ,

               //Input from FIFO
               mst_fifo_rd_data_i           ,
               mst_fifo_full_i              ,
               mst_fifo_empty_i             ,

               //Output signal to HIF 
               i2c_ms_bus_busy_o            ,
       	       i2c_ms_arb_lost_o            ,
               i2c_ms_ack_o                 ,
               i2c_ms_byte_cnt_o            ,
               i2c_ms_tx_rx_done_o          ,

               //Output signal to I2C Bus (Top Level) 
               i2c_sda_o                    , 
               i2c_sda_ben_o                , 
               i2c_scl_o                    , 
               i2c_scl_ben_o                , 
               

               //Output signals to Time Out Module 
               i2c_ms_cnt_en_o               

               );

//`define ACTEL

parameter  I2C_WR_RD_PTR        =  9  ;
parameter  I2C_FIFO_DEPTH       =  512;
parameter  DATA_WIDTH           =  8  ;
parameter  ADDR_WIDTH           =  6  ;
parameter  HOST_DATA_BYTES      =  10 ;
parameter  HOST_DATA_WIDTH      =  8  ;
parameter  HOST_OWN_DATA_WIDTH  =  10 ;
parameter  HOST_TGT_DATA_WIDTH  =  10 ;


///////////////////////////////////////////////////////////////////////////////
// Parameters Declaration
///////////////////////////////////////////////////////////////////////////////
parameter       IDLE           =      4'b0000           ;
parameter       ARB_CHECK      =      4'b0001           ;
parameter       START          =      4'b0010           ;
parameter       ADDRESS        =      4'b0011           ;
parameter       ADD_7BIT       =      4'b0100           ;
parameter       ADD_10BIT      =      4'b0101           ;
parameter       RX_ADD_ACK     =      4'b0110           ;
parameter       TX_MODE        =      4'b0111           ;
parameter       RX_MODE        =      4'b1000           ;
parameter       RX_ACK         =      4'b1001           ;
parameter       TX_ACK         =      4'b1010           ;
parameter       REP_ST         =      4'b1011           ;
parameter       STOP           =      4'b1100           ;
parameter       WAIT           =      4'b1101           ;


////////////////////////////////////////////////////////////////////////////////
// Inputs ports declaration
////////////////////////////////////////////////////////////////////////////////
input                             i2c_host_clk_i        ;// Host Clock
input                             i2c_host_reset_ni     ;// System Reset
input                             i2c_host_mst_slv_i    ;
input                             i2c_host_tx_rx_i      ;
input [HOST_DATA_BYTES -1 :0]     i2c_host_data_bytes_i ;
input [HOST_DATA_WIDTH -1 :0]     mst_fifo_rd_data_i    ;
input [HOST_OWN_DATA_WIDTH -1 :0] i2c_host_own_addr_i   ;
input [HOST_TGT_DATA_WIDTH -1 :0] i2c_host_target_addr_i;
input                             i2c_host_start_i      ;
input                             i2c_host_stop_i       ;
input                             i2c_host_rpt_start_i  ;
input                             i2c_host_10bit_addr_i ;
input                             i2c_sda_i             ; 
input                             i2c_scl_i             ; 
input                             cont_bit_i            ; 
input                             i2c_ms_cnt_tout_i     ;
input                             mst_fifo_full_i       ;
input                             mst_fifo_empty_i      ;
input [15:0]                      i2c_ms_timeout_cnt_i  ;

////////////////////////////////////////////////////////////////////////////////
// Outputs ports declaration
////////////////////////////////////////////////////////////////////////////////
output                            i2c_ms_bus_busy_o     ;
output                            i2c_ms_arb_lost_o     ;
output                            i2c_ms_ack_o          ;
output                            i2c_ms_tx_rx_done_o   ;
output                            i2c_sda_o             ; 
output                            i2c_sda_ben_o         ; 
output                            i2c_scl_o             ; 
output                            i2c_scl_ben_o         ; 
output                            i2c_ms_cnt_en_o       ;
output                            mst_fifo_en_o         ;
output                            mst_fifo_wr_en_o      ;
output                            mst_fifo_rd_en_o      ;
output [HOST_DATA_WIDTH -1 :0]    mst_fifo_wr_data_o    ;
output [HOST_DATA_BYTES -1 :0]    i2c_ms_byte_cnt_o     ;

////////////////////////////////////////////////////////////////////////////////
// Inputs ports wire declaration
////////////////////////////////////////////////////////////////////////////////
wire                              i2c_host_clk_i        ;// State Machine Clock
wire                              i2c_host_reset_ni     ;// System Reset
wire                              i2c_host_mst_slv_i    ;
wire                              i2c_host_tx_rx_i      ;
wire [HOST_DATA_BYTES -1 :0]      i2c_host_data_bytes_i ;
wire [HOST_OWN_DATA_WIDTH -1:0]   i2c_host_own_addr_i   ;
wire [HOST_TGT_DATA_WIDTH -1:0]   i2c_host_target_addr_i;
wire                              i2c_host_start_i      ;
wire                              i2c_host_stop_i       ;
wire                              i2c_host_rpt_start_i  ;
wire                              i2c_host_10bit_addr_i ;
wire                              i2c_sda_i             ; 
wire                              i2c_scl_i             ; 

wire                              cont_bit_i            ; 

wire                              i2c_ms_cnt_tout_i     ;
wire [HOST_DATA_WIDTH -1 :0]      mst_fifo_rd_data_i    ;
wire                              mst_fifo_full_i       ;
wire                              mst_fifo_empty_i      ;
wire [15:0]                       i2c_ms_timeout_cnt_i  ;
 
////////////////////////////////////////////////////////////////////////////////
// Outputs ports wire/reg declaration
////////////////////////////////////////////////////////////////////////////////
reg                               i2c_ms_bus_busy_o     ;
reg                               i2c_ms_arb_lost_o     ;
reg                               i2c_ms_ack_o          ;
reg                               i2c_ms_tx_rx_done_o   ;
reg                               i2c_sda_o             ; 
reg                               i2c_sda_ben_o         ; 
reg                               i2c_scl_o             ; 
reg                               i2c_scl_ben_o         ; 
reg                               i2c_ms_cnt_en_o       ;
reg                               mst_fifo_en_o         ;
reg                               mst_fifo_wr_en_o      ;
reg                               mst_fifo_rd_en_o      ;
reg [HOST_DATA_WIDTH -1 :0]       mst_fifo_wr_data_o    ;
wire [9:0]                        i2c_ms_byte_cnt_o     ; 

////////////////////////////////////////////////////////////////////////////////
// Local wire declaration
////////////////////////////////////////////////////////////////////////////////
wire                              mst_start             ;
wire                              sda_level             ;
wire                              bus_free              ;
wire                              rx_add_done           ; 
wire                              tx_rx_mode            ;
wire                              rpt_st_detect         ; 
wire                              cnt7_end              ;
wire                              cnt10_end             ;
wire  [6:0]                       address_7bit          ;
wire  [9:0]                       address_10bit         ;
wire                              sda_i                 ;
wire                              scl_i                 ;
wire                              data_cnt_end          ;
wire                              rx_byte_cnt_end       ;
wire  [9:0]                       byte_cnt              ;
wire                              byte_cnt_done         ;
wire                              stop_sm               ;
wire                              stop                  ;
reg                               host_stop             ;
reg                               stop_reg              ;
reg                               stop_reg1             ;
wire                              rx_add_ack_state      ;
wire                              rx_ack_state          ;
wire                              tx_ack_state          ;
wire                              ack_rx_state          ;
wire                              ms_byte_cnt_end       ;
wire                              toggle_nlevel         ;
wire                              toggle_plevel         ;
wire                              tout_cnt_end          ;
wire                              scl_posedge           ;
reg                               scl_posedge_reg1      ;
reg                               scl_posedge_reg2      ;
wire                              add7_o                ;
wire                              mst_wait              ;
wire                              temp1                 ;
wire                              temp2                 ;
wire                              temp3                 ;
reg                               ack_fail_d            ; 
reg                               ack_fail_dd            ; 
reg                               ack_fail              ; 

////////////////////////////////////////////////////////////////////////////////
// Local reg declaration
////////////////////////////////////////////////////////////////////////////////
reg                               i2c_scl_o_reg1        ; 
reg                               i2c_scl_o_reg2        ; 
reg                               rpt_st                ; 
reg                               rpt_st_d              ; 
reg [9:0]                         i2c_ms_byte_cnt_o_temp; 
reg                               mst_fifo_wr_en_o_reg  ;
reg                               mst_fifo_wr_en        ;
reg                               i2c_ms_tx_rx_done_o_temp;
reg                               mst_fifo_rd_en        ;
reg [3:0]                         mst_current_state     ;
reg [3:0]                         mst_next_state        ;
reg                               i2c_ms_bus_busy_d     ;
wire                              i2c_ms_ack_d          ;
reg [3:0]                         cnt7                  ;
reg [3:0]                         cnt10                 ;
reg                               cnt7_en               ; 
reg                               cnt10_en              ;
reg                               add10_o               ;
reg                               add_7bit              ;
reg                               add_7bit_reg          ;
reg                               add_10bit             ;
reg [3:0]                         data_cnt              ;
reg                               data_8bit             ;
reg                               data_cnt_en           ; 
reg [HOST_DATA_WIDTH -1:0]        rx_data               ;
reg [HOST_DATA_WIDTH -1:0]        rx_data_d             ;
reg [3:0]                         rx_data_cnt           ; 
reg                               ack_o                 ;
reg                               i2c_sda_d             ;
reg                               i2c_sda_en_d          ;
reg                               i2c_scl_d             ;
reg                               i2c_scl_en_d          ;
reg                               data_o                ;
reg                               data_o_reg            ;
reg                               rx_cnt_en             ;
reg                               i2c_ms_tx_rx_done_d   ;
reg                               i2c_ms_arb_lost_d     ;
reg                               i2c_ack_tout_en       ; 
reg [7:0]                         hst_data_i            ;
reg                               fifo_en               ;
reg                               fifo_rd_en            ;
reg                               fifo_wr_en            ; 
reg[HOST_DATA_BYTES -1 :0]        ms_byte_cnt           ;
reg                               toggle_cnt            ;
reg                               toggle_cnt_d          ;
reg                               tout_en               ;
reg [15:0]                        timeout_cnt           ;
reg                               mst_start_d           ;
reg                               tout_en_d             ;
reg                               i2c_scl_reg           ;
reg                               stop_detect           ;
reg                               addr_check_reg        ;
reg                               addr_check            ;
reg                               i2c_sda_o_reg1        ; 
reg                               i2c_sda_o_reg2        ; 
wire                              cont_bit              ;
reg                               cont_bit_reg          ;
reg                               scl_hold_reg          ;
reg                               scl_d                 ;
wire                              scl_low_level         ;
reg                               scl_hold              ;
reg                               reload_cnt_reg        ;
reg                               reload_cnt            ;


////////////////////////////////////////////////////////////////////////////////
// Combinatorial part of internal signals.
////////////////////////////////////////////////////////////////////////////////
assign   mst_start       = i2c_host_start_i                 ;
assign   sda_i           = i2c_sda_i                        ;
assign   scl_i           = i2c_scl_i                        ;
assign   bus_free        = sda_i && scl_i                   ; 
assign   rx_add_done     = cnt10_end || cnt7_end            ;
assign   tx_rx_mode      = i2c_host_tx_rx_i                 ;
assign   address_7bit    = i2c_host_target_addr_i[6:0]      ;
assign   cnt7_end        = (cnt7 == 'd8)                    ;
assign   cnt10_end       = &cnt10                           ;
assign   address_10bit   = i2c_host_target_addr_i[9:0]      ;
assign   data_cnt_end    = (data_cnt == 'd8)                ;
assign   byte_cnt        = (i2c_host_data_bytes_i)          ;
assign   byte_cnt_done   = (ms_byte_cnt == 'b0)             ;
assign   rx_byte_cnt_end = (rx_data_cnt == 'd8)             ; 
assign   stop_sm         = rx_byte_cnt_end || byte_cnt_done ;
assign   stop            = stop_reg  ;
assign   rx_add_ack_state = (mst_current_state == RX_ADD_ACK) ? 1'b1 : 1'b0 ;
assign   rx_ack_state     = (mst_current_state == RX_ACK  )   ? 1'b1 : 1'b0 ;
assign   tx_ack_state     = (mst_current_state == TX_ACK  )   ? 1'b1 : 1'b0 ;
assign   ack_rx_state     = rx_add_ack_state || rx_ack_state || tx_ack_state ;
assign   ms_byte_cnt_end  = cont_bit ? 1'b0 : !(|ms_byte_cnt)  ;
assign   tout_cnt_end     =  (timeout_cnt == i2c_ms_timeout_cnt_i) ? 'b1 : 'b0 ;
assign   add7_o           = (mst_current_state == ADD_7BIT) ? add_7bit_reg : 'b1 ;
assign   temp1            = !mst_fifo_rd_en && fifo_rd_en    ;
assign   i2c_ms_byte_cnt_o = (i2c_host_data_bytes_i - i2c_ms_byte_cnt_o_temp)    ;
assign   sda_level        = (i2c_sda_d && (!i2c_sda_o))      ;
assign   scl_posedge      = ((i2c_scl_o) && (!i2c_scl_reg))  ;
assign   toggle_nlevel    = ((toggle_cnt_d) && (!toggle_cnt)) ; 
assign   toggle_plevel    = ((!toggle_cnt_d) && (toggle_cnt)) ; 
assign   rpt_st_detect    = ((i2c_host_rpt_start_i) && (!rpt_st_d))              ;
assign   temp2            = mst_fifo_wr_en && rx_byte_cnt_end ;
assign   temp3            = !mst_fifo_wr_en_o_reg && temp2   ;

assign cont_bit = cont_bit_i  ;

always@(posedge i2c_host_clk_i or negedge i2c_host_reset_ni)
begin
  if(!i2c_host_reset_ni)
  begin
    stop_reg1  <=   'b0 ;
    stop_reg  <=   'b0 ;
  end
  else
  begin
    stop_reg1  <=   host_stop ;
    stop_reg  <=   stop_reg1 ;
  end
end

always@*
begin
  if(i2c_host_stop_i && ((mst_current_state == TX_MODE) || (mst_current_state == RX_MODE)))
  begin
    host_stop = 1'b1 ;
  end
  else if ((mst_current_state == IDLE))
  begin
    host_stop = 1'b0 ;
  end
  else
  begin
    host_stop = stop_reg1;
  end
end

always@(posedge i2c_host_clk_i or negedge i2c_host_reset_ni)
begin
  if(!i2c_host_reset_ni)
  begin
    addr_check_reg <= 1'b0       ;
  end
  else
  begin
    addr_check_reg <= addr_check ;
  end
end

always@*
begin
  if((mst_current_state == ADD_7BIT))
  begin
    addr_check = 1'b1 ;
  end
  else if((mst_current_state == TX_MODE) || (mst_current_state == RX_MODE))
  begin
    addr_check = 1'b0 ;
  end
  else
  begin
    addr_check = addr_check_reg ;
  end
end

always@* 
begin
  if(addr_check_reg && (mst_current_state == RX_ADD_ACK) && toggle_plevel && scl_i && sda_i )
  begin
    ack_fail_d = 1'b1 ;
  end
  else if((mst_current_state != RX_ADD_ACK))
  begin
    ack_fail_d = 1'b0 ;
  end
  else
  begin
    ack_fail_d = ack_fail ;
  end
end

always@(posedge i2c_host_clk_i or negedge i2c_host_reset_ni)
begin
  if(!i2c_host_reset_ni)
  begin
    {ack_fail_dd,ack_fail}   <= 2'b00  ;
  end
  else
  begin
    {ack_fail_dd, ack_fail}   <= {ack_fail,ack_fail_d}  ;
  end
end


////////////////////////////////////////////////////////////////////////////////
// Combinatorial part of Master State Machine.
////////////////////////////////////////////////////////////////////////////////

always@*
begin

  case(mst_current_state)

  IDLE    : begin  // IDLE
            if(mst_start && toggle_plevel)
            begin
              mst_next_state  = ARB_CHECK;
            end
            else
            begin
              mst_next_state  = IDLE     ;
            end
            end

  ARB_CHECK:begin // ARB_CHECK
            if(bus_free && toggle_plevel && i2c_scl_o )
            begin
              mst_next_state = START   ;
            end
            else if (tout_cnt_end)
            begin
              mst_next_state = IDLE    ;
            end
            else  
            begin
              mst_next_state = mst_current_state    ;
            end
            end

  START  :  begin  // START
             if(toggle_plevel && i2c_scl_o)
             begin 
               mst_next_state = ADDRESS  ;
             end
             else
             begin
               mst_next_state = mst_current_state  ;
             end
            end

 ADDRESS : begin // ADDRESS 
           if(!i2c_host_10bit_addr_i && toggle_plevel)
           begin
              mst_next_state  = ADD_7BIT   ;
           end
           else if(i2c_host_10bit_addr_i && toggle_plevel)
           begin
              mst_next_state  = ADD_10BIT  ;
           end
           else
           begin
              mst_next_state  = mst_current_state  ;
           end
           end

 ADD_7BIT: begin // 7-BIT ADDRESSING MODE
           if(cnt7_end && toggle_plevel && !i2c_scl_o)
           begin
             mst_next_state  = RX_ADD_ACK          ;
           end
           else
           begin
             mst_next_state  = mst_current_state   ;
           end
           end
 
 ADD_10BIT: begin // 10-BIT ADDRESSING MODE
           if(cnt10_end && toggle_plevel)
           begin
             mst_next_state  = RX_ADD_ACK          ;
           end
           else
           begin
             mst_next_state  = mst_current_state   ;
           end
           end

 RX_ADD_ACK: begin // Receive Add ACK 
              if(!i2c_scl_o)
              begin
                case({ack_fail,toggle_plevel,rx_add_done,!tx_rx_mode})
                4'b0100,4'b0101 : begin
                                if(tout_en_d && !tout_cnt_end) 
                                begin 
                                  mst_next_state  = mst_current_state ;
                                end
                                else
                                begin
                                  mst_next_state  = IDLE       ;  
                                end 
                              end
                4'b0110       : begin 
                                  mst_next_state    = RX_MODE  ;
                              end
                4'b0111       : begin
                                  mst_next_state    = TX_MODE  ;
                              end
                4'b1110, 4'b1111 : begin
                                  mst_next_state    = STOP     ;
                              end
                default      : begin
                                  mst_next_state    = mst_current_state  ;
                              end
                endcase
              end
              else
              begin
                mst_next_state    = mst_current_state  ;
              end
           end

 TX_MODE : begin // TX_MODE
           if(data_cnt_end && !i2c_scl_o)
	   begin
             mst_next_state  =  RX_ACK             ;
           end
           else
	   begin
             mst_next_state  =  mst_current_state  ;
           end
           end

 RX_MODE : begin // RX_MODE
           if(rx_byte_cnt_end && toggle_plevel && !i2c_scl_o)
	   begin
	     mst_next_state  =  TX_ACK             ;
           end
           else
	   begin
             mst_next_state  =  mst_current_state  ;
           end
           end
	   
 RX_ACK : begin // RX_ACK
	   if((i2c_ms_tx_rx_done_o_temp && toggle_plevel && !scl_i) || (stop && toggle_plevel && !scl_i))
	         begin
	     mst_next_state  =  STOP            ;
           end  
	   else if(!i2c_ms_tx_rx_done_o_temp && toggle_plevel && !i2c_scl_o && (!stop) && !scl_hold)
           begin
	     mst_next_state  =  TX_MODE         ;
           end           
	   else if(!i2c_ms_tx_rx_done_o_temp && toggle_plevel && !i2c_scl_o && (!stop) && scl_hold)
           begin
	     mst_next_state  =  WAIT          ;
           end           
	   else if(rpt_st && toggle_plevel && (!stop))
           begin
	     mst_next_state  =  REP_ST          ;
           end
           else
	   begin
	     mst_next_state  =  mst_current_state ;
	   end
           end

 WAIT 	:begin
           if(!scl_hold && toggle_plevel && !i2c_scl_o)
           begin
	     mst_next_state  =  TX_MODE         ;
           end
           else
           begin
	     mst_next_state  =   mst_current_state ;
           end
         end

   
 TX_ACK : begin  // TX_ACK
           if((i2c_ms_tx_rx_done_o_temp && toggle_plevel && !scl_i) || (stop && toggle_plevel && !scl_i))
	   begin
	     mst_next_state  =  STOP              ;
           end
	   else if(!i2c_ms_tx_rx_done_o_temp && toggle_plevel && !i2c_scl_o && (!stop))
           begin
	     mst_next_state  =  RX_MODE         ;
           end
	   else if(rpt_st && toggle_plevel && !i2c_scl_o && (!stop))
           begin
	     mst_next_state  =  REP_ST            ;
           end
           else
	   begin
	     mst_next_state  =  mst_current_state ;
	   end
           end

 REP_ST :  begin // REP_ST
             if(toggle_plevel && !i2c_scl_o)
             begin
	       mst_next_state  =   ADDRESS        ;
             end
             else
             begin
               mst_next_state  = mst_current_state ;
             end
           end
  	   
 STOP   :  begin // STOP
             if(toggle_plevel && scl_i)
             begin
	       mst_next_state  =   IDLE           ;
             end
             else
             begin
               mst_next_state  = mst_current_state ;
             end
           end


 default  : begin  //DEFAULT
              mst_next_state =   IDLE           ;
            end
    
 	   
 endcase
end

always@(posedge i2c_host_clk_i or negedge i2c_host_reset_ni)
begin
  if(!i2c_host_reset_ni)
  begin
    i2c_ms_tx_rx_done_o  <= 'b1 ;
  end
  else if (stop_detect && i2c_ms_tx_rx_done_o_temp   ||
           ((mst_current_state == IDLE) && (stop_reg || stop_detect)))
  begin
    i2c_ms_tx_rx_done_o  <= 'b1 ;
  end
  else if(i2c_host_start_i)
  begin
    i2c_ms_tx_rx_done_o  <= 'b0 ;
  end
end

////////////////////////////////////////////////////////////////////////////////
// Sequential part of Master State Machine.
////////////////////////////////////////////////////////////////////////////////
always@(posedge i2c_host_clk_i or negedge i2c_host_reset_ni)
begin
  if(!i2c_host_reset_ni)
  begin
    mst_current_state   <=   IDLE         ;
  end
  else
  begin
    mst_current_state  <=   mst_next_state ;
  end
end


//SDA and SDA_EN signal generation

always @*
begin

  case(mst_current_state)
  ARB_CHECK : begin
                i2c_sda_d   = 'b1             ;
            end

  START   : begin

                i2c_sda_d   = 'b1             ;
              end               

  ADDRESS : begin
                i2c_sda_d   = 'b0             ;
            end
  ADD_7BIT: begin
              i2c_sda_d    = add7_o         ;
            end
  ADD_10BIT: begin
              i2c_sda_d    = add10_o        ;
            end
  TX_MODE : begin
              i2c_sda_d    = data_o         ;
            end
  TX_ACK  : begin
              i2c_sda_d    = ack_o          ;
            end
  REP_ST  : begin
              i2c_sda_d    = 'b0            ;
            end
  STOP    : begin
              if(i2c_scl_i && toggle_plevel)
              begin
                i2c_sda_d    = 'b1          ;
              end
              else
              begin
                i2c_sda_d    = 'b0          ;
              end
            end
  default : begin
              i2c_sda_d    = 'b1            ;
            end
  endcase
end            


always@*
begin
  case(mst_current_state)
  
  IDLE     : begin
               i2c_sda_en_d = 'b1          ;
             end

  START    : begin
               i2c_sda_en_d = 'b0          ;
             end
  
  ADD_7BIT : begin
             if((cnt7 == 'd8) && !i2c_scl_o && toggle_cnt)
             begin 
               i2c_sda_en_d = 'b1          ;
             end
             else
             begin
               i2c_sda_en_d = i2c_sda_ben_o     ;
             end 
             end


  ADD_10BIT : begin
             if(cnt10 != 'd16 && !i2c_scl_o && toggle_cnt)
             begin 
               i2c_sda_en_d = 'b0          ;
             end
             else
             begin
               i2c_sda_en_d = i2c_sda_ben_o  ;
             end 
             end

   RX_ADD_ACK :begin
             if((cnt7 == 'd9) || (cnt10 == 'd17))
             begin 
               i2c_sda_en_d = 'b0          ;
             end
             else
             begin
               i2c_sda_en_d = 'b1          ;
             end 
             end


  TX_MODE   :begin
             if(data_cnt != 'd8)
             begin 
               i2c_sda_en_d = 'b0          ;
             end
             else
             begin
               i2c_sda_en_d = 'b1          ;
             end 
             end             

  RX_MODE   :begin
               i2c_sda_en_d = 'b1          ;
             end             

  REP_ST    : begin
               i2c_sda_en_d = 'b0          ;
             end

  RX_ACK   :begin
               i2c_sda_en_d = 'b1          ;
             end

  TX_ACK   :begin
               if((i2c_ms_byte_cnt_o_temp == 'b0) || stop_reg)
               begin
                  i2c_sda_en_d = 'b1          ;
               end
               else
               begin
                  i2c_sda_en_d = 'b0          ;
               end
            end

  STOP     :begin
               i2c_sda_en_d = 'b0          ;
             end

  default  : begin
               i2c_sda_en_d = i2c_sda_ben_o          ;
             end
  endcase
end 

always@*
begin
  if(mst_current_state == IDLE)
  begin
    i2c_scl_d    =  'b1       ;
  end
  else if (scl_hold || (mst_current_state == WAIT))
  begin
    i2c_scl_d    =  'b0       ;
  end
  else if(toggle_nlevel && (mst_current_state != IDLE) && (mst_current_state != START) 
      && (mst_current_state != ARB_CHECK) )
  begin
    i2c_scl_d    =  !i2c_scl_o           ;
  end
  else
  begin
    i2c_scl_d    =  i2c_scl_o           ;
  end
end


always @ *
begin
  if(i2c_scl_i && i2c_sda_i && (mst_current_state == IDLE))
  begin
    i2c_ms_bus_busy_d = 'b0 ;
  end
  else
  begin
    i2c_ms_bus_busy_d = 'b1 ;
  end
end

always@(posedge i2c_host_clk_i or negedge i2c_host_reset_ni)
begin
  if(!i2c_host_reset_ni)
  begin
    i2c_ms_bus_busy_o  <=   'b0               ;
  end
  else
  begin
    i2c_ms_bus_busy_o  <=   i2c_ms_bus_busy_d ;
  end
end

// Arbitration Lost 

always@*
begin
  if((mst_current_state == ADD_7BIT) && (sda_i != i2c_sda_o_reg2) && scl_i)
  begin
    i2c_ms_arb_lost_d    =   'b1    ;
  end
  else
  begin
    i2c_ms_arb_lost_d    =   'b0    ;
  end
end

always@(posedge i2c_host_clk_i or negedge i2c_host_reset_ni)
begin
  if(!i2c_host_reset_ni)
  begin
    i2c_sda_o_reg1  <= 1'b0 ;
    i2c_sda_o_reg2  <= 1'b0 ;
  end
  else
  begin
    i2c_sda_o_reg1  <= i2c_sda_o      ;
    i2c_sda_o_reg2  <= i2c_sda_o_reg1 ;
  end
end


always@(posedge i2c_host_clk_i or negedge i2c_host_reset_ni)
begin
  if(!i2c_host_reset_ni)
  begin
    i2c_ms_arb_lost_o  <=   'b0               ;
  end
  else
  begin
    i2c_ms_arb_lost_o  <=   i2c_ms_arb_lost_d ;
  end
end

always@(posedge i2c_host_clk_i or negedge i2c_host_reset_ni)
begin
  if(!i2c_host_reset_ni)
  begin
    add_7bit_reg  <=   'b0               ;
  end
  else
  begin
    add_7bit_reg  <=   add_7bit  ;
  end
end


//7-Bit Addressing Mode

always@*
begin
  if((mst_current_state == ADD_7BIT) && (!cnt7_end) && (scl_posedge))
  begin
    cnt7_en      =   'b1      ;
  end
  else 
  begin
    cnt7_en      =   'b0      ;
  end
end


always@(posedge i2c_host_clk_i or negedge i2c_host_reset_ni)
begin
  if(!i2c_host_reset_ni)
  begin
    cnt7             <=   'b0              ;
  end
  else if((cnt7_en) && (!cnt7_end))
  begin
    cnt7             <=   cnt7 + 'b1       ; 
  end
  else if((mst_current_state == REP_ST) || (mst_current_state == STOP)) 
  begin
    cnt7             <=   'b0              ;
  end
end

always@*
begin
  if(toggle_plevel && !i2c_scl_o)
  begin
    case(cnt7)
    4'b0000   :  begin
                  add_7bit  =  address_7bit[6]  ;
                end
    4'b0001   :  begin
                  add_7bit  =  address_7bit[5]  ;
                end 
                 
    4'b0010   :  begin
                  add_7bit  =  address_7bit[4]  ;
                end 
  
    4'b0011   :  begin
                  add_7bit  =  address_7bit[3]  ;
                end 
  
    4'b0100   :  begin
                  add_7bit  =  address_7bit[2]  ;
                end 
    4'b0101   :  begin
                  add_7bit  =  address_7bit[1]  ;
                end 
  
    4'b0110   :  begin
                  add_7bit  =  address_7bit[0]  ;
                end 
    4'b0111   :  begin
                  add_7bit  =  tx_rx_mode       ;
                end
    default  : begin
                 add_7bit   =  'b0              ;
               end 
    endcase
 end
 else
 begin
                 add_7bit   =  add_7bit_reg     ;
 end
end


//10-Bit Addressing Mode


always@*
begin
  if((mst_current_state == ADD_10BIT) && (!cnt10_end) && toggle_nlevel)
  begin
    cnt10_en     =   'b1       ;
    add10_o      =  add_10bit  ;
  end
  else
  begin
    cnt10_en     =   'b0       ;
    add10_o      =   'b0       ;
  end
end


always@(posedge i2c_host_clk_i or negedge i2c_host_reset_ni)
begin
  if(!i2c_host_reset_ni)
  begin
    cnt10             <=   'b0              ;
  end
  else if((cnt10_en) && (!cnt10_end))
  begin
    cnt10             <=   cnt10 + 'b1      ; 
  end
  else if((mst_current_state == REP_ST) || (mst_current_state == STOP))
  begin
    cnt10             <=   'b0              ;
  end
end

always@*
begin
  case(cnt10)

  4'b0000  :  begin
                add_10bit  =  'b1             ; 
              end
  4'b0001  :  begin
                add_10bit  =  'b1             ;
              end 
               
  4'b0010  :  begin
                add_10bit  =  'b1             ;
              end 

  4'b0011  :  begin
                add_10bit  =  'b1             ;
              end 

  4'b0100  :  begin
                add_10bit  =  'b0             ;
              end

  4'b0101  :  begin
                add_10bit  =  address_10bit[9];
              end

  4'b0110  :  begin
                add_10bit  =  address_10bit[8];
              end
  4'b0111  :  begin
                add_10bit  =  !tx_rx_mode     ;
              end 
               
  4'b1000  :  begin
                add_10bit  =  address_10bit[7];
              end 

  4'b1001  :  begin
                add_10bit  =  address_10bit[6];
              end 

  4'b1010  :  begin
                add_10bit  =  address_10bit[5];
              end

  4'b1011  :  begin
                add_10bit  =  address_10bit[4];
              end

  4'b1100  :  begin
                add_10bit  =  address_10bit[3];
              end

  4'b1101  :  begin
                add_10bit  =  address_10bit[2];
              end

  4'b1110  :  begin
                add_10bit  =  address_10bit[1];
              end

  4'b1111  :  begin
                add_10bit  =  address_10bit[0];
              end
  default  : begin
               add_10bit   = 'b0              ;
             end
 
  endcase
end

// ACK Receive - Data And Address 
assign i2c_ms_ack_d = (!ack_fail & ack_fail_dd);

always@*
begin
  case({ack_rx_state,scl_posedge_reg2})
  2'b11 : begin
//            i2c_ms_ack_d    = ack_fail;// sda_i    ;
            i2c_ack_tout_en = 1'b1    ;
          end

 default: begin
//            i2c_ms_ack_d   = 'b0    ;
            i2c_ack_tout_en = 'b0   ;
          end
 endcase
end                               


always@(posedge i2c_host_clk_i or negedge i2c_host_reset_ni)
begin
  if(!i2c_host_reset_ni)
  begin
    i2c_ms_ack_o         <=   'b0              ;
    scl_posedge_reg1     <=   'b0              ;
    scl_posedge_reg2     <=   'b0              ;
  end
  else
  begin
    i2c_ms_ack_o         <=   i2c_ms_ack_d     ;
    scl_posedge_reg1     <=   scl_posedge      ;
    scl_posedge_reg2     <=   scl_posedge_reg1 ;
  end
end


always@(posedge i2c_host_clk_i or negedge i2c_host_reset_ni)
begin
  if(!i2c_host_reset_ni)
  begin
    timeout_cnt      <=   'b0                      ;
  end
  else if(tout_en_d && !tout_cnt_end)
  begin
    timeout_cnt      <=    timeout_cnt + 'b1       ;
  end
  else
  begin
    timeout_cnt      <=    'b0                     ;
  end
end


always@*
begin
  case(mst_current_state)
  
  ARB_CHECK : begin
              if(!bus_free)
              begin
                tout_en  =  'b1 ;
              end
              else
              begin
                tout_en  =  'b0 ;
              end 
              end 

  RX_ADD_ACK,RX_ACK,TX_ACK : begin
              if(i2c_ack_tout_en)
              begin
                tout_en  =  'b1 ;
              end
              else
              begin
                tout_en  =  'b0 ;
              end 
              end
 
  default  : begin
               tout_en  =  'b0 ;
             end
  endcase
end   

// TX MODE

always @*
begin
  if((mst_current_state == TX_MODE) && (!data_cnt_end) && (!i2c_scl_o && toggle_plevel))
  begin
    data_cnt_en     =   'b1        ;
  end
  else
  begin
    data_cnt_en     =   'b0        ;
  end
end

always @ *
begin
  if((mst_current_state == TX_MODE) && (!data_cnt_end))
  begin
    data_o          =  data_8bit   ;
  end
  else
  begin
    data_o          =   data_o_reg ;
  end
end

always@(posedge i2c_host_clk_i or negedge i2c_host_reset_ni)
begin
  if(!i2c_host_reset_ni)
  begin
    data_o_reg      <=   'b0       ;
  end
  else
  begin
    data_o_reg      <=   data_o    ;
  end
end

always@(posedge i2c_host_clk_i or negedge i2c_host_reset_ni)
begin
  if(!i2c_host_reset_ni)
  begin
    data_cnt             <=   'b0              ;
  end
  else if((data_cnt_en) && (!data_cnt_end))
  begin
    data_cnt             <=   data_cnt + 'b1   ; 
  end
  else if((mst_current_state == RX_ACK)) 
  begin
    data_cnt             <=   'b0              ;
  end 
end

always@*
begin
  case(data_cnt)
  4'b0000   :  begin
                data_8bit  =  hst_data_i[7];
              end
  4'b0001   :  begin
                data_8bit  =  hst_data_i[6];
              end 
               
  4'b0010   :  begin
                data_8bit  =  hst_data_i[5];
              end 

  4'b0011   :  begin
                data_8bit  =  hst_data_i[4];
              end 

  4'b0100   :  begin
                data_8bit  =  hst_data_i[3];
              end 
  4'b0101   :  begin
                data_8bit  =  hst_data_i[2];
              end 

  4'b0110   :  begin
                data_8bit  =  hst_data_i[1];
              end 
  4'b0111   :  begin
                data_8bit  =  hst_data_i[0];
              end
   default  : begin
                data_8bit  =  'b0          ;
              end
  endcase
end

always @ *
begin
  if(mst_fifo_wr_en_o || mst_fifo_rd_en_o)
  begin
    ms_byte_cnt  = i2c_ms_byte_cnt_o_temp - 'b1 ;
  end
  else if (cont_bit && (i2c_ms_byte_cnt_o_temp == 'b0))
  begin
    ms_byte_cnt  =  byte_cnt  ;
  end
  else if ((reload_cnt_reg && (i2c_ms_byte_cnt_o_temp == 'b0)) || (mst_current_state == IDLE))
  begin
    ms_byte_cnt  =  byte_cnt  ;
  end
  else
  begin
    ms_byte_cnt  =  i2c_ms_byte_cnt_o_temp  ;
  end
end

always @ *
begin
  if(!cont_bit && cont_bit_reg)
  begin
    reload_cnt = 1'b1 ;
  end
  else if ((i2c_ms_byte_cnt_o_temp == 'b0))
  begin
    reload_cnt = 1'b0 ;
  end
  else
  begin
    reload_cnt = reload_cnt_reg  ;
  end
end

always @(posedge i2c_host_clk_i)
begin
  reload_cnt_reg <= reload_cnt   ;
end

always@*
begin
  case(mst_current_state)
  
  IDLE     : begin
               if(mst_start_d)
               begin
                 i2c_ms_tx_rx_done_d =  'b0  ;
               end
               else
               begin
                 i2c_ms_tx_rx_done_d =  i2c_ms_tx_rx_done_o_temp  ;
               end
             end

   RX_ACK    : begin
                 i2c_ms_tx_rx_done_d = ms_byte_cnt_end ;
             end

   TX_ACK    : begin
                 if(i2c_ms_byte_cnt_o_temp == 'b0)
                 begin
                   i2c_ms_tx_rx_done_d = 'b1 ;
                 end
                 else
                 begin
                   i2c_ms_tx_rx_done_d = i2c_ms_tx_rx_done_o_temp ;
                 end
             end

 default   : begin
               i2c_ms_tx_rx_done_d = i2c_ms_tx_rx_done_o_temp ;
             end
 endcase        
  
end




always@(posedge i2c_host_clk_i or negedge i2c_host_reset_ni)
begin
  if(!i2c_host_reset_ni)
  begin
    i2c_ms_byte_cnt_o_temp       <= 'b0                     ;
  end
  else 
  begin
    i2c_ms_byte_cnt_o_temp       <=  ms_byte_cnt      ;
  end
end


always@(posedge i2c_host_clk_i or negedge i2c_host_reset_ni)
begin
  if(!i2c_host_reset_ni)
  begin
    i2c_ms_tx_rx_done_o_temp    <= 'b1                     ;
  end
  else
  begin
    i2c_ms_tx_rx_done_o_temp    <= i2c_ms_tx_rx_done_d     ;
  end
end

// RX MODE

always @*
begin
  if((mst_current_state == RX_MODE) && (!rx_byte_cnt_end) && (i2c_scl_i && toggle_plevel))
  begin
    case(rx_data_cnt)
    4'b0000 : rx_data_d  = {sda_i       , rx_data[6:0]      } ;
    4'b0001 : rx_data_d  = {rx_data[7]  , sda_i,rx_data[5:0]} ;
    4'b0010 : rx_data_d  = {rx_data[7:6], sda_i,rx_data[4:0]} ;
    4'b0011 : rx_data_d  = {rx_data[7:5], sda_i,rx_data[3:0]} ;
    4'b0100 : rx_data_d  = {rx_data[7:4], sda_i,rx_data[2:0]} ;
    4'b0101 : rx_data_d  = {rx_data[7:3], sda_i,rx_data[1:0]} ;
    4'b0110 : rx_data_d  = {rx_data[7:2], sda_i,rx_data[0]  } ;
    4'b0111 : rx_data_d  = {rx_data[7:1], sda_i             } ;
    default : rx_data_d  = rx_data                            ;     
    endcase
    rx_cnt_en       =  'b1        ; 
  end
  else if(rx_data_cnt == 'b0)
  begin
    rx_data_d       =  'b0        ;
    rx_cnt_en       =  'b0        ;   
  end
  else
  begin
    rx_data_d       =  rx_data    ;
    rx_cnt_en       =  'b0        ;   
  end
end

always@(posedge i2c_host_clk_i or negedge i2c_host_reset_ni)
begin
  if(!i2c_host_reset_ni)
  begin
    rx_data             <=   'b0              ;
  end
  else
  begin
    rx_data             <=   rx_data_d        ;
  end
end

always@(posedge i2c_host_clk_i or negedge i2c_host_reset_ni)
begin
  if(!i2c_host_reset_ni)
  begin
    rx_data_cnt             <=   'b0              ;
  end
  else if((rx_cnt_en) && (!rx_byte_cnt_end))
  begin
    rx_data_cnt             <=   rx_data_cnt + 'b1   ; 
  end
  else if((mst_current_state == TX_ACK))
  begin
    rx_data_cnt             <=   'b0              ;
  end
end

// TX_ACK

always@*
begin
  if((mst_current_state == TX_ACK) && !mst_fifo_full_i && !stop_reg)
  begin
    ack_o           =       'b0                ;
  end
  else
  begin
    ack_o           =       'b1                ;
  end
end  


//Driving SCL outputs 

always@(posedge i2c_host_clk_i or negedge i2c_host_reset_ni)
begin
  if(!i2c_host_reset_ni)
  begin
    i2c_scl_o      <=   'b1        ;
    i2c_scl_ben_o  <=   'b1        ;
  end
  else
  begin
    i2c_scl_o     <=  i2c_scl_d    ;
    i2c_scl_ben_o <=  i2c_scl_en_d ;
  end
end

always@(posedge i2c_host_clk_i or negedge i2c_host_reset_ni)
begin
  if(!i2c_host_reset_ni)
  begin
    i2c_scl_reg      <=   'b1        ;
  end
  else
  begin
    i2c_scl_reg     <=  i2c_scl_o    ;
  end
end



//Driving SDA outputs 

always@(posedge i2c_host_clk_i or negedge i2c_host_reset_ni)
begin
  if(!i2c_host_reset_ni)
  begin
    i2c_sda_o      <=   'b1        ;
    i2c_sda_ben_o  <=   'b1        ; //Enable = Active Low
  end
  else 
  begin
    i2c_sda_o     <=  i2c_sda_d    ;
    i2c_sda_ben_o <=  i2c_sda_en_d ;
  end
end


////////////////////////////////////////////////////////////////////////////////
// FIFO SIGNALS
////////////////////////////////////////////////////////////////////////////////// 

// FIFO ENABLE SIGNAL
 
always@*
begin
  case(mst_current_state)
  
  TX_MODE : begin
              if(data_cnt == 3'b000)
              begin
                fifo_en    =  'b1  ;
              end
              else
              begin
                fifo_en    =  'b0  ;
              end 
            end
  RX_MODE,TX_ACK :  begin
              if(rx_data_cnt == 'h7)
              begin
                fifo_en      = 'b1 ;
              end
              else if(rx_data_cnt == 'h1)
              begin
                fifo_en      = 'b0 ;
              end
              else
              begin
                fifo_en      = mst_fifo_en_o ;
              end
            end

  default : begin
              fifo_en      = 'b0   ;
            end
  endcase
end 


always@(posedge i2c_host_clk_i or negedge i2c_host_reset_ni)
begin
  if(!i2c_host_reset_ni)
  begin
    mst_fifo_en_o            <=   'b0              ;
  end
  else
  begin
    mst_fifo_en_o            <=   fifo_en          ;
  end
end

//FIFO READ ENABLE

always@*
begin
  if((mst_current_state == TX_MODE))
  begin
    fifo_rd_en      =  'b1     ;
  end
  else
  begin
    fifo_rd_en      =  'b0     ;
  end
end 


always@(posedge i2c_host_clk_i or negedge i2c_host_reset_ni)
begin
  if(!i2c_host_reset_ni)
  begin
    mst_fifo_rd_en            <=   'b0              ;
    mst_fifo_rd_en_o          <=   'b0              ;
  end
  else
  begin
    mst_fifo_rd_en            <=   fifo_rd_en       ;
    mst_fifo_rd_en_o          <=   temp1 ;
  end
end


// FIFO WRITE ENABLE

always@*
begin
  if((mst_current_state == RX_MODE) )
  begin
    fifo_wr_en      =  'b1     ;
  end
  else
  begin
    fifo_wr_en      =  'b0     ;
  end
end
 
always@(posedge i2c_host_clk_i or negedge i2c_host_reset_ni)
begin
  if(!i2c_host_reset_ni)
  begin
    mst_fifo_wr_en            <=   'b0              ;
    mst_fifo_wr_en_o_reg      <=   'b0              ;
    mst_fifo_wr_en_o          <=   'b0              ;
  end
  else
  begin
    mst_fifo_wr_en            <=   fifo_wr_en       ;
    mst_fifo_wr_en_o_reg      <=   temp2            ;
    mst_fifo_wr_en_o          <=   temp3            ;
  end
end




// Output Data

always@(posedge i2c_host_clk_i or negedge i2c_host_reset_ni)
begin
  if(!i2c_host_reset_ni)
  begin
    mst_fifo_wr_data_o            <=   'b0              ;
  end
  else if(rx_byte_cnt_end)
  begin
    mst_fifo_wr_data_o            <=   rx_data          ;
  end
end

// Input Data

always@(posedge i2c_host_clk_i or negedge i2c_host_reset_ni)
begin
  if(!i2c_host_reset_ni)
  begin
    hst_data_i                    <=   'b0                ;
  end
  else if(mst_fifo_en_o)
  begin
    hst_data_i                    <=   mst_fifo_rd_data_i ;
  end
  else 
  begin
    hst_data_i                    <=   hst_data_i         ;
  end
end

// Counter Enable Generation Logic
always@(posedge i2c_host_clk_i or negedge i2c_host_reset_ni)
begin
  if(!i2c_host_reset_ni)
  begin
    i2c_scl_o_reg1   <=   1'b0        ;
    i2c_scl_o_reg2   <=   1'b0        ;
  end
  else
  begin
    i2c_scl_o_reg1  <=   i2c_scl_o      ;
    i2c_scl_o_reg2  <=   i2c_scl_o_reg1 ;
  end
end

assign mst_wait = ((mst_current_state != IDLE) && (i2c_scl_o_reg2 != i2c_scl_i));

always@(posedge i2c_host_clk_i or negedge i2c_host_reset_ni)
begin
  if(!i2c_host_reset_ni)
  begin
    i2c_ms_cnt_en_o <= 'b0 ;
  end
  else if (mst_current_state == IDLE)
  begin
    i2c_ms_cnt_en_o <= 'b1 ;
  end
  else if (mst_wait)
  begin
    i2c_ms_cnt_en_o <= 'b0 ;
  end
  else if (!mst_wait)
  begin
    i2c_ms_cnt_en_o <= 'b1 ;
  end
  else if(stop_detect)
  begin
    i2c_ms_cnt_en_o <= 'b0 ;
  end
end

// Toggle Count Generation Logic

always@(posedge i2c_host_clk_i or negedge i2c_host_reset_ni)
begin
  if(!i2c_host_reset_ni)
  begin
    toggle_cnt    <=  'b0  ;
  end
  else if(i2c_ms_cnt_tout_i)
  begin
    toggle_cnt    <=  ~toggle_cnt ;
  end
end   



always@(posedge i2c_host_clk_i or negedge i2c_host_reset_ni)
begin
  if(!i2c_host_reset_ni)
  begin
    toggle_cnt_d    <=  'b0        ;
  end
  else 
  begin
    toggle_cnt_d    <=  toggle_cnt ;
  end
end



always@*
begin
  if(mst_current_state == IDLE && mst_start)
  begin
     mst_start_d    =  'b0   ;
  end
  else
  begin
    mst_start_d    =   'b1   ;
  end
end  

always@*
begin
  if(tout_en && !tout_cnt_end)
  begin
    tout_en_d      =  'b1    ;
  end 
  else
  begin
    tout_en_d     =   tout_en   ;
  end
end


always @ * 
begin
  if(mst_current_state == IDLE)
  begin
    i2c_scl_en_d = 'b1 ;
  end
  else if (scl_hold || (mst_current_state == WAIT))
  begin
    i2c_scl_en_d = 'b0 ;
  end
  else if((mst_start || rpt_st) && (mst_current_state != IDLE) && (mst_current_state != ARB_CHECK) )
  begin
    i2c_scl_en_d = 'b0 ;
  end
  else if (stop_detect)
  begin
    i2c_scl_en_d = 'b1 ;
  end
  else
  begin
    i2c_scl_en_d = i2c_scl_ben_o ;
  end
end

//Edge Detection of SDA line for Stop condition

always@(posedge i2c_host_clk_i or negedge i2c_host_reset_ni)
begin
  if(!i2c_host_reset_ni)
  begin
    stop_detect <= 'b0 ;
  end
  else if(sda_level && i2c_scl_o)
  begin
    stop_detect <= 'b1 ;
  end
  else
  begin
    stop_detect <= 'b0 ;
  end
end

always@(posedge i2c_host_clk_i or negedge i2c_host_reset_ni)
begin
  if(!i2c_host_reset_ni)
  begin
    rpt_st_d  <= 'b0                  ;
  end
  else
  begin
    rpt_st_d  <= i2c_host_rpt_start_i ;
  end
end



always@(posedge i2c_host_clk_i or negedge i2c_host_reset_ni)
begin
  if(!i2c_host_reset_ni)
  begin
    rpt_st     <= 'b0                  ;
  end
  else if(rpt_st_detect)
  begin
    rpt_st     <=  'b1                 ;
  end
  else if (mst_current_state == ADDRESS)
  begin
    rpt_st     <=  'b0                 ;
  end
end

//////////////////////////////////////////////////////////////////////////////
//  Logic For Holding SCL Low While Transmitt FIFO is Empty
//////////////////////////////////////////////////////////////////////////////

always@(posedge i2c_host_clk_i or negedge i2c_host_reset_ni)
begin
  if(!i2c_host_reset_ni)
  begin
    scl_hold_reg <= 1'b0 ;
    scl_d        <= 1'b0 ;
    cont_bit_reg <= 1'b0 ;
  end
  else
  begin
    scl_hold_reg <= scl_hold ;
    scl_d        <= scl_i    ;
    cont_bit_reg <= cont_bit ;
  end
end

assign   scl_low_level     = (!scl_i) && (scl_d)                ;

always @*
begin
  if((mst_current_state == RX_ACK) && mst_fifo_empty_i && scl_low_level && 
     (i2c_ms_byte_cnt_o_temp != 'b0) )
  begin
    scl_hold = 1'b1 ;
  end
  else if(!mst_fifo_empty_i)
  begin
    scl_hold = 1'b0 ;
  end
  else
  begin
    scl_hold = scl_hold_reg ;
  end
end



endmodule  

