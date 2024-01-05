

module i2c_cntr (
            // Clock and Reset
            i2c_host_clk_i                               ,
            i2c_host_reset_ni                            ,

            // Inputs to Counter
            i2c_host_cnt_load_i                          ,
            i2c_ms_cnt_en_i                              ,
            
            // Outputs From Counter
            i2c_ms_cnt_to_o
           )                                             ;


parameter  I2C_WR_RD_PTR        =  9  ;
parameter  I2C_FIFO_DEPTH       =  512;
parameter  DATA_WIDTH           =  8  ;
parameter  ADDR_WIDTH           =  6  ;
parameter  HOST_DATA_BYTES      =  10 ;
parameter  HOST_DATA_WIDTH      =  8  ;
parameter  HOST_OWN_DATA_WIDTH  =  10 ;
parameter  HOST_TGT_DATA_WIDTH  =  10 ;


///////////////////////////////////////////////////////////////////////////////
// Inputs
///////////////////////////////////////////////////////////////////////////////
input             i2c_host_clk_i                         ;
input             i2c_host_reset_ni                      ;
input  [15:0]     i2c_host_cnt_load_i                    ;
input             i2c_ms_cnt_en_i                        ;
         
///////////////////////////////////////////////////////////////////////////////
// Outputs
///////////////////////////////////////////////////////////////////////////////
output            i2c_ms_cnt_to_o                        ;

///////////////////////////////////////////////////////////////////////////////
// Input wire declarations
///////////////////////////////////////////////////////////////////////////////
wire              i2c_host_clk_i                         ;
wire              i2c_host_reset_ni                      ;
wire  [15:0]      i2c_host_cnt_load_i                    ;
wire              i2c_ms_cnt_en_i                        ;

///////////////////////////////////////////////////////////////////////////////
// Output wire/reg declarations
///////////////////////////////////////////////////////////////////////////////
reg               i2c_ms_cnt_to_o                        ;

///////////////////////////////////////////////////////////////////////////////
// Local wire/reg declarations
///////////////////////////////////////////////////////////////////////////////
reg  [15:0]       scl_count                              ;
reg  [15:0]       scl_count_d                            ;
reg               count_en                               ;
reg               count_en_d                             ;
reg               i2c_ms_cnt_en_reg                      ;

///////////////////////////////////////////////////////////////////////////////
// Module
///////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////
// Sequential Part
///////////////////////////////////////////////////////////////////////////////
always @ (scl_count or i2c_host_cnt_load_i)
begin
  if (scl_count == i2c_host_cnt_load_i)
  begin
    i2c_ms_cnt_to_o = 'b1 ;
  end
  else
  begin
    i2c_ms_cnt_to_o = 'b0 ;
  end
end

always @ (count_en or scl_count)
begin
  if(count_en)
  begin
    scl_count_d  = scl_count + 'b1;
  end
  else
  begin
    scl_count_d  = 'b0 ;
  end
end


always @ (posedge i2c_host_clk_i or negedge i2c_host_reset_ni)
begin
  if(!i2c_host_reset_ni)
  begin
    i2c_ms_cnt_en_reg    <= 'b0 ;
    count_en             <= 'b0 ;
  end
  else
  begin
    i2c_ms_cnt_en_reg    <= i2c_ms_cnt_en_i ;
    count_en             <= count_en_d      ;
  end
end

always @ (posedge i2c_host_clk_i or negedge i2c_host_reset_ni)
begin
  if(!i2c_host_reset_ni)
  begin
    scl_count            <= 'b0 ;
  end
  else if (i2c_ms_cnt_to_o || (!i2c_ms_cnt_en_i && i2c_ms_cnt_en_reg))
  begin
    scl_count            <= 'b0 ;
  end
  else
  begin
    scl_count            <= scl_count_d     ;
  end
end


always @ (i2c_ms_cnt_en_reg or i2c_ms_cnt_to_o or count_en or i2c_ms_cnt_en_i
          or i2c_ms_cnt_en_reg )
begin
  if(i2c_ms_cnt_to_o || (!i2c_ms_cnt_en_i && i2c_ms_cnt_en_reg))
  begin
    count_en_d = 'b0 ;
  end
  else if(i2c_ms_cnt_en_reg)
  begin
    count_en_d = 'b1 ;
  end
  else
  begin
    count_en_d = count_en ;
  end
end

endmodule

