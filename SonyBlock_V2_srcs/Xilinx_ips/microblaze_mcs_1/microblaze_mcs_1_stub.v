// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Tue Oct 17 14:01:34 2023
// Host        : Analinear-PC20 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top microblaze_mcs_1 -prefix
//               microblaze_mcs_1_ microblaze_mcs_1_stub.v
// Design      : microblaze_mcs_1
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7s15csga225-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "bd_3c9d_0,Vivado 2018.2" *)
module microblaze_mcs_1(Clk, Reset, UART_Interrupt, GPI1_Interrupt, 
  INTC_IRQ, IO_addr_strobe, IO_address, IO_byte_enable, IO_read_data, IO_read_strobe, IO_ready, 
  IO_write_data, IO_write_strobe, UART_rxd, UART_txd, GPIO1_tri_i, GPIO1_tri_o)
/* synthesis syn_black_box black_box_pad_pin="Clk,Reset,UART_Interrupt,GPI1_Interrupt,INTC_IRQ,IO_addr_strobe,IO_address[31:0],IO_byte_enable[3:0],IO_read_data[31:0],IO_read_strobe,IO_ready,IO_write_data[31:0],IO_write_strobe,UART_rxd,UART_txd,GPIO1_tri_i[7:0],GPIO1_tri_o[7:0]" */;
  input Clk;
  input Reset;
  output UART_Interrupt;
  output GPI1_Interrupt;
  output INTC_IRQ;
  output IO_addr_strobe;
  output [31:0]IO_address;
  output [3:0]IO_byte_enable;
  input [31:0]IO_read_data;
  output IO_read_strobe;
  input IO_ready;
  output [31:0]IO_write_data;
  output IO_write_strobe;
  input UART_rxd;
  output UART_txd;
  input [7:0]GPIO1_tri_i;
  output [7:0]GPIO1_tri_o;
endmodule
