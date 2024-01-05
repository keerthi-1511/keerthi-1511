//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Command: generate_target bd_3c9d_0_wrapper.bd
//Design : bd_3c9d_0_wrapper
//Purpose: IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module bd_3c9d_0_wrapper
   (Clk,
    GPI1_Interrupt,
    GPIO1_tri_i,
    GPIO1_tri_o,
    INTC_IRQ,
    IO_addr_strobe,
    IO_address,
    IO_byte_enable,
    IO_read_data,
    IO_read_strobe,
    IO_ready,
    IO_write_data,
    IO_write_strobe,
    Reset,
    UART_Interrupt,
    UART_rxd,
    UART_txd);
  input Clk;
  output GPI1_Interrupt;
  input [7:0]GPIO1_tri_i;
  output [7:0]GPIO1_tri_o;
  output INTC_IRQ;
  output IO_addr_strobe;
  output [31:0]IO_address;
  output [3:0]IO_byte_enable;
  input [31:0]IO_read_data;
  output IO_read_strobe;
  input IO_ready;
  output [31:0]IO_write_data;
  output IO_write_strobe;
  input Reset;
  output UART_Interrupt;
  input UART_rxd;
  output UART_txd;

  wire Clk;
  wire GPI1_Interrupt;
  wire [7:0]GPIO1_tri_i;
  wire [7:0]GPIO1_tri_o;
  wire INTC_IRQ;
  wire IO_addr_strobe;
  wire [31:0]IO_address;
  wire [3:0]IO_byte_enable;
  wire [31:0]IO_read_data;
  wire IO_read_strobe;
  wire IO_ready;
  wire [31:0]IO_write_data;
  wire IO_write_strobe;
  wire Reset;
  wire UART_Interrupt;
  wire UART_rxd;
  wire UART_txd;

  bd_3c9d_0 bd_3c9d_0_i
       (.Clk(Clk),
        .GPI1_Interrupt(GPI1_Interrupt),
        .GPIO1_tri_i(GPIO1_tri_i),
        .GPIO1_tri_o(GPIO1_tri_o),
        .INTC_IRQ(INTC_IRQ),
        .IO_addr_strobe(IO_addr_strobe),
        .IO_address(IO_address),
        .IO_byte_enable(IO_byte_enable),
        .IO_read_data(IO_read_data),
        .IO_read_strobe(IO_read_strobe),
        .IO_ready(IO_ready),
        .IO_write_data(IO_write_data),
        .IO_write_strobe(IO_write_strobe),
        .Reset(Reset),
        .UART_Interrupt(UART_Interrupt),
        .UART_rxd(UART_rxd),
        .UART_txd(UART_txd));
endmodule
