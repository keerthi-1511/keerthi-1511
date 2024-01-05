
module sensor_i2c(
	clk   ,
	rst_n ,
   i2c_en,
	i2c_data,
	sens_sda_io,
	sens_scl_io,
	sensor_id  
	

  );


//---- IN & OUTS 
input clk      ;
input rst_n    ;
input i2c_en   ;
input [23:0] i2c_data ;
inout        sens_sda_io;
inout        sens_scl_io;
output[31:0] sensor_id  ;
//-----signals

wire fifo_wren  ; 
wire i2c_fifo_en     ;
wire [7:0] data      ;
wire [7:0] fifo_data ;
reg [31:0] id_data ;

wire  i2c_sda_o     ;
wire i2c_sda_en_o   ;

wire i2c_scl_o      ;
wire i2c_scl_en_o   ;

//------------

assign sens_sda_io = (!i2c_sda_en_o & !i2c_sda_o)  ? i2c_sda_o : 1'bZ;
assign i2c_sda_i = sens_sda_io;


assign sens_scl_io = (!i2c_scl_en_o & !i2c_scl_o)  ? i2c_scl_o : 1'bZ;
assign i2c_scl_i = sens_scl_io;    

assign rnw = 1'b0;//i2c_data[23];
assign data = rnw? 8'h0:i2c_data[7:0] ;
assign sensor_id = id_data ;

//-----sensor id reading
always@(posedge clk )begin

if(!rst_n)begin
id_data <= 32'h00;

end 

else begin

if(fifo_wren  )
 id_data <= {id_data[23:0],fifo_data };
 else 
 id_data <= id_data ;



 
end
end 
i2c_reg_top_u  U_i2c_reg(

	.i2c_host_clk     (clk         ) ,
	.i2c_host_reset   (rst_n       ) ,

	.i2c_cntrl        ({8'h03,7'b1010000,rnw}),//sensor physical address 7'h12
	.i2c_cmd          ({7'b0000000, i2c_en} ),
	.i2c_status       (i2c_status   ),
	.i2c_reg_add      ({1'b0,i2c_data[22:8]}),
	.i2c_prescaler    (16'd29        ),//333 khz

	.i2c_fifo_en      (i2c_fifo_en),
	.i2c_fifo_wr_en   (fifo_wren),
	.i2c_fifo_rd_en   (i2c_fifo_rd_en),

	.i2c_fifo_full    (1'b0),
	.i2c_fifo_empty   (1'b0),

	.i2c_fifo_wr_data (fifo_data ),
	.i2c_fifo_rd_data (data      ),//---write data then if it is read ,data=0

	.i2c_sda_i        (i2c_sda_i),
	.i2c_sda_o        (i2c_sda_o),
	.i2c_sda_en_o     (i2c_sda_en_o),
	.i2c_scl_i        (i2c_scl_i),
	.i2c_scl_o        (i2c_scl_o),
	.i2c_scl_en_o     (i2c_scl_en_o),
	.tx_rx());



endmodule




