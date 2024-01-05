/*

I2c_cntrl     [0]     tx_rx 0-write, 1-read
              [7:1]   7 bit i2c Device Address
              [14:8]  No of Bytes to be transferred
	              MAX 34 Bytes [13:0] including reg_add
	      [15]    Continuos Transfer Mode 0-Fixed Bytes 1-Continous

i2c_cmd       [7:0]   {8'bXXXXX,STOP_bit,Start_bit} --> STOP_bit in case of 
                                                                Continous Transfer Mode
i2c_status    [0]     i2c_bus_busy_o    
              [1]     i2c_ack_o     
              [7:2]   i2c_byte_cnt_o   

i2c_reg_add   [15:0]  Device Subaddress

i2c_prescaler  [15:0]  i2c_clock = F(Hostclk) / 4 x (Prescaler Value + 1)

*/

/* 
// Top level IO buffer Instantiation
assign i2c_sda_io = (!i2c_sda_ben_o & !i2c_sda_o)  ? i2c_sda_o : 1'bZ;
assign i2c_sda_i = i2c_sda_io;
pullup(i2c_sda_io);##For Testbench Only

assign i2c_scl_io = (!i2c_scl_ben_o & !i2c_scl_o) ? i2c_scl_o : 1'bZ;
assign i2c_scl_i = i2c_scl_io;
pullup(i2c_scl_io);##For testbench Only      
	
*/

module i2c_reg_top_u (
	i2c_host_clk,
	i2c_host_reset,

	i2c_cntrl,
	i2c_cmd,
	i2c_status,
	i2c_reg_add,
	i2c_prescaler,

	i2c_fifo_en,
	i2c_fifo_wr_en,
	i2c_fifo_rd_en,
	
	i2c_fifo_full,
	i2c_fifo_empty,

	i2c_fifo_wr_data,
	i2c_fifo_rd_data,

	i2c_sda_i,
	i2c_sda_o,
	i2c_sda_en_o,
	i2c_scl_i,
	i2c_scl_o,
	i2c_scl_en_o,
	tx_rx);



input         i2c_host_clk;      //System clock
input         i2c_host_reset;   //Active Low Reset

input  [15:0] i2c_cntrl;         
input  [7:0]  i2c_cmd;
output [7:0]  i2c_status;
input  [15:0] i2c_prescaler;
input  [15:0] i2c_reg_add;
    
output        i2c_fifo_en;        //To Both the Fifos
output        i2c_fifo_wr_en;     // To Wr Fifo 
output  [7:0] i2c_fifo_wr_data;   //Frm Device To Master FPGA
input         i2c_fifo_full;      //

output reg    i2c_fifo_rd_en;     // To Rd Fifo
input   [7:0] i2c_fifo_rd_data;   //Frm Master FPGA to Device
input         i2c_fifo_empty;     //
    
input         i2c_sda_i;          //input Buffer
output        i2c_sda_o;          //output Buffer
output        i2c_sda_en_o;       //Tristate Enable to Open Drain
input         i2c_scl_i;          //input Buffer 
output        i2c_scl_o;          //output Buffer 
output        i2c_scl_en_o;       //Tristate Enable to Open Drain

////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////


wire         i2c_cnt_en;
wire         tout_cnt;
wire         bus_busy;  
wire         arb_lost;  
wire         i2c_ack;       
wire [9:0]   byte_cnt;  
wire         tx_rx_done;

reg          start_en_d, start_en;
wire         start_bit;
reg          stop_en_d,  stop_en;
wire         stop_bit;
output reg          tx_rx; 
wire         read_en;
reg          rpt_en;
reg          cont_bit;
wire         burst_mode;
wire [6:0]   device_add;
wire [5:0]   n_of_bytes;
reg  [7:0]   data_load;
reg fifo_rdd, fifo_rddd; 
wire         fifo_rd; 
reg          rep_start;
//wire [7:0]   tmp111_addr;
//wire [15:0]  tmp111_data;
reg          rpt_en_d;
                       
//////////////////////// 
//wire i2c_sda_i;        
//wire i2c_sda_o;        
//wire i2c_sda_en_o;     
//wire i2c_scl_i;   
//wire i2c_scl_o;   
//wire i2c_scl_en_o;
//
//assign i2c_sda_io = (!i2c_sda_en_o & !i2c_sda_o)  ? i2c_sda_o : 1'bZ;
//assign i2c_sda_i = i2c_sda_io;
//pullup(i2c_sda_io);//For Testbench Only
//
//assign i2c_scl_io = (!i2c_scl_en_o & !i2c_scl_o) ? i2c_scl_o : 1'bZ;
//assign i2c_scl_i = i2c_scl_io;
//pullup(i2c_scl_io);//For testbench Only  
//
/////////////////////////////////////////////////////////////
//  I2C Master State Machine                               //
/////////////////////////////////////////////////////////////


i2c_mst_sm U_i2c_mst_sm(
            // Clock & Reset
            .i2c_host_clk_i              (i2c_host_clk),// Host Clock
            .i2c_host_reset_ni           (i2c_host_reset),// System Reset

            //Input signals from HIF 
            .i2c_host_mst_slv_i          (1'b0 ),
            .i2c_host_tx_rx_i            (tx_rx ),
            .i2c_host_data_bytes_i       ({4'h0,n_of_bytes}),
            .i2c_host_own_addr_i         (10'h000),
            .i2c_host_target_addr_i      ({3'h0,device_add}),
            .i2c_host_start_i            (start_en_d),
            .i2c_host_stop_i             (stop_en_d),
            .i2c_host_rpt_start_i        (1'b0),//rpt_en,
            .i2c_host_10bit_addr_i       (1'b0),
            .i2c_ms_timeout_cnt_i        (16'h00f),

            .cont_bit_i                  (cont_bit),

            //Input signal from Time Out Counter Module 
            .i2c_ms_cnt_tout_i           (tout_cnt),

            //Output from FIFO
            .mst_fifo_en_o               (i2c_fifo_en ),
            .mst_fifo_wr_en_o            (i2c_fifo_wr_en),
            .mst_fifo_rd_en_o            (fifo_rd),
            .mst_fifo_wr_data_o          (i2c_fifo_wr_data),

            //Input from FIFO
            .mst_fifo_rd_data_i          (data_load),
            .mst_fifo_full_i             (i2c_fifo_full),
            .mst_fifo_empty_i            (i2c_fifo_empty),

            //Output signal to HIF 
            .i2c_ms_bus_busy_o           (bus_busy),
       	    .i2c_ms_arb_lost_o           (arb_lost),
            .i2c_ms_ack_o                (i2c_ack),
            .i2c_ms_byte_cnt_o           (byte_cnt),
            .i2c_ms_tx_rx_done_o         (tx_rx_done),

            //Input signals from I2C Bus (Top Level) 
            .i2c_sda_i                   (i2c_sda_i), 
            .i2c_scl_i                   (i2c_scl_i), 
            //Output signal to I2C Bus (Top Level) 
            .i2c_sda_o                   (i2c_sda_o), 
            .i2c_sda_ben_o               (i2c_sda_en_o), 
            .i2c_scl_o                   (i2c_scl_o), 
            .i2c_scl_ben_o               (i2c_scl_en_o), 

            //Output signals to Time Out Module 
            .i2c_ms_cnt_en_o             (i2c_cnt_en));	


/////////////////////////////////////////////////////////////////
// Counter Module instantiation                                //
/////////////////////////////////////////////////////////////////

i2c_cntr  U_i2c_cntr (
            // Clock and Reset
            .i2c_host_clk_i              (i2c_host_clk),
            .i2c_host_reset_ni           (i2c_host_reset),
            // Inputs to Counter
            .i2c_host_cnt_load_i         (i2c_prescaler),
            .i2c_ms_cnt_en_i             (i2c_cnt_en),
            // Outputs From Counter
            .i2c_ms_cnt_to_o             (tout_cnt));


///////////////////////////////////////////////////////
//////////////////////////////////////////////////////


assign     start_bit = i2c_cmd [0] | (tx_rx_done & rpt_en) ; 
assign     stop_bit  = rpt_en ;//i2c_cmd [1]; 
assign     read_en   = i2c_cntrl[0];
assign     device_add= i2c_cntrl[7:1];
assign     n_of_bytes= read_en ? {6'b000100} : {(i2c_cntrl[14:9]), 1'b1};//read_en ? {(i2c_cntrl[14:9] - 6'd1), 1'b0} : {(i2c_cntrl[14:9]), 1'b1};
assign     burst_mode= i2c_cntrl[15];
assign     i2c_status= {byte_cnt[5:0], i2c_ack, bus_busy};


always@(posedge i2c_host_clk or negedge i2c_host_reset)
begin
	if(!i2c_host_reset)
	begin
		start_en_d <= 0;
	end
	else
	begin
		start_en_d <= start_en;
	end
end

always@*
begin
        if(start_bit)
	begin
		start_en <= 1'b1;
	end
	else if(!i2c_scl_en_o)
	begin
		start_en <= 1'b0;
	end
	else
	begin
		start_en <= start_en_d;
	end
end

always@(posedge i2c_host_clk or negedge i2c_host_reset)
begin
	if(!i2c_host_reset)
	begin
		rpt_en_d   <= 0;
		 stop_en_d <= 0;
		 {fifo_rddd, fifo_rdd} <= 0;
	end
	else
	begin
		 stop_en_d <=  stop_en;
		 {fifo_rddd, fifo_rdd} <= {fifo_rdd, fifo_rd};
		 rpt_en_d <= rpt_en;
	end
end

always@*
begin
        if( stop_bit)
	begin
		 stop_en <= 1'b1;
	end
	else if(tx_rx_done)
	begin
		 stop_en <= 1'b0;
	end
	else
	begin
		 stop_en <=  stop_en_d;
	end
end

always@(posedge i2c_host_clk or negedge i2c_host_reset)
begin
	if(!i2c_host_reset)
	begin
		rpt_en <= 0;
	end
	else if (tx_rx_done)
	begin
		rpt_en <= 1'b0;
	end
	else if (~tx_rx && read_en && (byte_cnt == 'h002 ))
	begin
		rpt_en <= 1'b1;
	end
//	else
//	begin
//		rpt_en <= 1'b0;
//	end
end

always@(posedge i2c_host_clk or negedge i2c_host_reset)
begin
	if(!i2c_host_reset)
	begin
		tx_rx <= 0;
		cont_bit <= 0;
	end
	else if(!read_en)
	begin
		tx_rx <= 0;
		cont_bit <= burst_mode;
	end
	else 
	begin
		if(rpt_en_d)
		begin
			tx_rx <= 1'b1;
			cont_bit <= 1'b0;
		end
		else if(tx_rx_done)
		begin
			tx_rx <= 1'b0;
			cont_bit <= 1'b0;
		end
	end
end


always@(posedge i2c_host_clk or negedge i2c_host_reset)
begin
	if(!i2c_host_reset)
	begin
		data_load <= 0;
		i2c_fifo_rd_en <= 0;
	end
	else if(byte_cnt ==10'h001)
	begin
		data_load <= i2c_reg_add[15:8];
		i2c_fifo_rd_en <= 1'b0;
	end
        else if(byte_cnt ==10'h002)
	begin
	        data_load <= i2c_reg_add[7:0];
		i2c_fifo_rd_en <= 1'b0;
	end
        else if(byte_cnt ==10'h003)
	begin
	        data_load <= i2c_fifo_rd_data;
		i2c_fifo_rd_en <= 1'b0;
	end
        else
	begin
	        data_load <= i2c_fifo_rd_data;
		i2c_fifo_rd_en <= fifo_rddd;
	end
end


endmodule
