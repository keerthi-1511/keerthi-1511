// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Tue Oct 17 16:07:28 2023
// Host        : Analinear-PC20 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top fifo_generator_0 -prefix
//               fifo_generator_0_ fifo_generator_0_sim_netlist.v
// Design      : fifo_generator_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7s15csga225-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "fifo_generator_0,fifo_generator_v13_2_2,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_2,Vivado 2018.2" *) 
(* NotValidForBitStream *)
module fifo_generator_0
   (rst,
    wr_clk,
    rd_clk,
    din,
    wr_en,
    rd_en,
    dout,
    full,
    empty);
  input rst;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 write_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME write_clk, FREQ_HZ 100000000, PHASE 0.000" *) input wr_clk;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 read_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME read_clk, FREQ_HZ 100000000, PHASE 0.000" *) input rd_clk;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_DATA" *) input [15:0]din;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_EN" *) input wr_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_EN" *) input rd_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_DATA" *) output [15:0]dout;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE FULL" *) output full;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ EMPTY" *) output empty;

  wire [15:0]din;
  wire [15:0]dout;
  wire empty;
  wire full;
  wire rd_clk;
  wire rd_en;
  wire rst;
  wire wr_clk;
  wire wr_en;
  wire NLW_U0_almost_empty_UNCONNECTED;
  wire NLW_U0_almost_full_UNCONNECTED;
  wire NLW_U0_axi_ar_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_overflow_UNCONNECTED;
  wire NLW_U0_axi_ar_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_ar_prog_full_UNCONNECTED;
  wire NLW_U0_axi_ar_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_underflow_UNCONNECTED;
  wire NLW_U0_axi_aw_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_overflow_UNCONNECTED;
  wire NLW_U0_axi_aw_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_aw_prog_full_UNCONNECTED;
  wire NLW_U0_axi_aw_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_underflow_UNCONNECTED;
  wire NLW_U0_axi_b_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_overflow_UNCONNECTED;
  wire NLW_U0_axi_b_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_b_prog_full_UNCONNECTED;
  wire NLW_U0_axi_b_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_underflow_UNCONNECTED;
  wire NLW_U0_axi_r_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_overflow_UNCONNECTED;
  wire NLW_U0_axi_r_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_r_prog_full_UNCONNECTED;
  wire NLW_U0_axi_r_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_underflow_UNCONNECTED;
  wire NLW_U0_axi_w_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_overflow_UNCONNECTED;
  wire NLW_U0_axi_w_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_w_prog_full_UNCONNECTED;
  wire NLW_U0_axi_w_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_underflow_UNCONNECTED;
  wire NLW_U0_axis_dbiterr_UNCONNECTED;
  wire NLW_U0_axis_overflow_UNCONNECTED;
  wire NLW_U0_axis_prog_empty_UNCONNECTED;
  wire NLW_U0_axis_prog_full_UNCONNECTED;
  wire NLW_U0_axis_sbiterr_UNCONNECTED;
  wire NLW_U0_axis_underflow_UNCONNECTED;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_m_axi_arvalid_UNCONNECTED;
  wire NLW_U0_m_axi_awvalid_UNCONNECTED;
  wire NLW_U0_m_axi_bready_UNCONNECTED;
  wire NLW_U0_m_axi_rready_UNCONNECTED;
  wire NLW_U0_m_axi_wlast_UNCONNECTED;
  wire NLW_U0_m_axi_wvalid_UNCONNECTED;
  wire NLW_U0_m_axis_tlast_UNCONNECTED;
  wire NLW_U0_m_axis_tvalid_UNCONNECTED;
  wire NLW_U0_overflow_UNCONNECTED;
  wire NLW_U0_prog_empty_UNCONNECTED;
  wire NLW_U0_prog_full_UNCONNECTED;
  wire NLW_U0_rd_rst_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_s_axis_tready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire NLW_U0_underflow_UNCONNECTED;
  wire NLW_U0_valid_UNCONNECTED;
  wire NLW_U0_wr_ack_UNCONNECTED;
  wire NLW_U0_wr_rst_busy_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_wr_data_count_UNCONNECTED;
  wire [11:0]NLW_U0_data_count_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_araddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_arburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arcache_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_arid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_arlen_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_arlock_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_arprot_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arqos_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arregion_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_arsize_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_aruser_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_awaddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_awburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awcache_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_awlen_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awlock_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_awprot_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awqos_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awregion_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_awsize_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awuser_UNCONNECTED;
  wire [63:0]NLW_U0_m_axi_wdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_wid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_wstrb_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_wuser_UNCONNECTED;
  wire [7:0]NLW_U0_m_axis_tdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tdest_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tid_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tkeep_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tstrb_UNCONNECTED;
  wire [3:0]NLW_U0_m_axis_tuser_UNCONNECTED;
  wire [11:0]NLW_U0_rd_data_count_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_buser_UNCONNECTED;
  wire [63:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_ruser_UNCONNECTED;
  wire [11:0]NLW_U0_wr_data_count_UNCONNECTED;

  (* C_ADD_NGC_CONSTRAINT = "0" *) 
  (* C_APPLICATION_TYPE_AXIS = "0" *) 
  (* C_APPLICATION_TYPE_RACH = "0" *) 
  (* C_APPLICATION_TYPE_RDCH = "0" *) 
  (* C_APPLICATION_TYPE_WACH = "0" *) 
  (* C_APPLICATION_TYPE_WDCH = "0" *) 
  (* C_APPLICATION_TYPE_WRCH = "0" *) 
  (* C_AXIS_TDATA_WIDTH = "8" *) 
  (* C_AXIS_TDEST_WIDTH = "1" *) 
  (* C_AXIS_TID_WIDTH = "1" *) 
  (* C_AXIS_TKEEP_WIDTH = "1" *) 
  (* C_AXIS_TSTRB_WIDTH = "1" *) 
  (* C_AXIS_TUSER_WIDTH = "4" *) 
  (* C_AXIS_TYPE = "0" *) 
  (* C_AXI_ADDR_WIDTH = "32" *) 
  (* C_AXI_ARUSER_WIDTH = "1" *) 
  (* C_AXI_AWUSER_WIDTH = "1" *) 
  (* C_AXI_BUSER_WIDTH = "1" *) 
  (* C_AXI_DATA_WIDTH = "64" *) 
  (* C_AXI_ID_WIDTH = "1" *) 
  (* C_AXI_LEN_WIDTH = "8" *) 
  (* C_AXI_LOCK_WIDTH = "1" *) 
  (* C_AXI_RUSER_WIDTH = "1" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_AXI_WUSER_WIDTH = "1" *) 
  (* C_COMMON_CLOCK = "0" *) 
  (* C_COUNT_TYPE = "0" *) 
  (* C_DATA_COUNT_WIDTH = "12" *) 
  (* C_DEFAULT_VALUE = "BlankString" *) 
  (* C_DIN_WIDTH = "16" *) 
  (* C_DIN_WIDTH_AXIS = "1" *) 
  (* C_DIN_WIDTH_RACH = "32" *) 
  (* C_DIN_WIDTH_RDCH = "64" *) 
  (* C_DIN_WIDTH_WACH = "1" *) 
  (* C_DIN_WIDTH_WDCH = "64" *) 
  (* C_DIN_WIDTH_WRCH = "2" *) 
  (* C_DOUT_RST_VAL = "0" *) 
  (* C_DOUT_WIDTH = "16" *) 
  (* C_ENABLE_RLOCS = "0" *) 
  (* C_ENABLE_RST_SYNC = "1" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_ERROR_INJECTION_TYPE = "0" *) 
  (* C_ERROR_INJECTION_TYPE_AXIS = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WRCH = "0" *) 
  (* C_FAMILY = "spartan7" *) 
  (* C_FULL_FLAGS_RST_VAL = "1" *) 
  (* C_HAS_ALMOST_EMPTY = "0" *) 
  (* C_HAS_ALMOST_FULL = "0" *) 
  (* C_HAS_AXIS_TDATA = "1" *) 
  (* C_HAS_AXIS_TDEST = "0" *) 
  (* C_HAS_AXIS_TID = "0" *) 
  (* C_HAS_AXIS_TKEEP = "0" *) 
  (* C_HAS_AXIS_TLAST = "0" *) 
  (* C_HAS_AXIS_TREADY = "1" *) 
  (* C_HAS_AXIS_TSTRB = "0" *) 
  (* C_HAS_AXIS_TUSER = "1" *) 
  (* C_HAS_AXI_ARUSER = "0" *) 
  (* C_HAS_AXI_AWUSER = "0" *) 
  (* C_HAS_AXI_BUSER = "0" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_AXI_RD_CHANNEL = "1" *) 
  (* C_HAS_AXI_RUSER = "0" *) 
  (* C_HAS_AXI_WR_CHANNEL = "1" *) 
  (* C_HAS_AXI_WUSER = "0" *) 
  (* C_HAS_BACKUP = "0" *) 
  (* C_HAS_DATA_COUNT = "0" *) 
  (* C_HAS_DATA_COUNTS_AXIS = "0" *) 
  (* C_HAS_DATA_COUNTS_RACH = "0" *) 
  (* C_HAS_DATA_COUNTS_RDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WACH = "0" *) 
  (* C_HAS_DATA_COUNTS_WDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WRCH = "0" *) 
  (* C_HAS_INT_CLK = "0" *) 
  (* C_HAS_MASTER_CE = "0" *) 
  (* C_HAS_MEMINIT_FILE = "0" *) 
  (* C_HAS_OVERFLOW = "0" *) 
  (* C_HAS_PROG_FLAGS_AXIS = "0" *) 
  (* C_HAS_PROG_FLAGS_RACH = "0" *) 
  (* C_HAS_PROG_FLAGS_RDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WACH = "0" *) 
  (* C_HAS_PROG_FLAGS_WDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WRCH = "0" *) 
  (* C_HAS_RD_DATA_COUNT = "0" *) 
  (* C_HAS_RD_RST = "0" *) 
  (* C_HAS_RST = "1" *) 
  (* C_HAS_SLAVE_CE = "0" *) 
  (* C_HAS_SRST = "0" *) 
  (* C_HAS_UNDERFLOW = "0" *) 
  (* C_HAS_VALID = "0" *) 
  (* C_HAS_WR_ACK = "0" *) 
  (* C_HAS_WR_DATA_COUNT = "0" *) 
  (* C_HAS_WR_RST = "0" *) 
  (* C_IMPLEMENTATION_TYPE = "2" *) 
  (* C_IMPLEMENTATION_TYPE_AXIS = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WRCH = "1" *) 
  (* C_INIT_WR_PNTR_VAL = "0" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_MEMORY_TYPE = "2" *) 
  (* C_MIF_FILE_NAME = "BlankString" *) 
  (* C_MSGON_VAL = "1" *) 
  (* C_OPTIMIZATION_MODE = "0" *) 
  (* C_OVERFLOW_LOW = "0" *) 
  (* C_POWER_SAVING_MODE = "0" *) 
  (* C_PRELOAD_LATENCY = "1" *) 
  (* C_PRELOAD_REGS = "0" *) 
  (* C_PRIM_FIFO_TYPE = "4kx9" *) 
  (* C_PRIM_FIFO_TYPE_AXIS = "1kx18" *) 
  (* C_PRIM_FIFO_TYPE_RACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_RDCH = "1kx36" *) 
  (* C_PRIM_FIFO_TYPE_WACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_WDCH = "1kx36" *) 
  (* C_PRIM_FIFO_TYPE_WRCH = "512x36" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL = "2" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_NEGATE_VAL = "3" *) 
  (* C_PROG_EMPTY_TYPE = "0" *) 
  (* C_PROG_EMPTY_TYPE_AXIS = "0" *) 
  (* C_PROG_EMPTY_TYPE_RACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_RDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WRCH = "0" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL = "4093" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "1023" *) 
  (* C_PROG_FULL_THRESH_NEGATE_VAL = "4092" *) 
  (* C_PROG_FULL_TYPE = "0" *) 
  (* C_PROG_FULL_TYPE_AXIS = "0" *) 
  (* C_PROG_FULL_TYPE_RACH = "0" *) 
  (* C_PROG_FULL_TYPE_RDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WACH = "0" *) 
  (* C_PROG_FULL_TYPE_WDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WRCH = "0" *) 
  (* C_RACH_TYPE = "0" *) 
  (* C_RDCH_TYPE = "0" *) 
  (* C_RD_DATA_COUNT_WIDTH = "12" *) 
  (* C_RD_DEPTH = "4096" *) 
  (* C_RD_FREQ = "1" *) 
  (* C_RD_PNTR_WIDTH = "12" *) 
  (* C_REG_SLICE_MODE_AXIS = "0" *) 
  (* C_REG_SLICE_MODE_RACH = "0" *) 
  (* C_REG_SLICE_MODE_RDCH = "0" *) 
  (* C_REG_SLICE_MODE_WACH = "0" *) 
  (* C_REG_SLICE_MODE_WDCH = "0" *) 
  (* C_REG_SLICE_MODE_WRCH = "0" *) 
  (* C_SELECT_XPM = "0" *) 
  (* C_SYNCHRONIZER_STAGE = "2" *) 
  (* C_UNDERFLOW_LOW = "0" *) 
  (* C_USE_COMMON_OVERFLOW = "0" *) 
  (* C_USE_COMMON_UNDERFLOW = "0" *) 
  (* C_USE_DEFAULT_SETTINGS = "0" *) 
  (* C_USE_DOUT_RST = "1" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_ECC_AXIS = "0" *) 
  (* C_USE_ECC_RACH = "0" *) 
  (* C_USE_ECC_RDCH = "0" *) 
  (* C_USE_ECC_WACH = "0" *) 
  (* C_USE_ECC_WDCH = "0" *) 
  (* C_USE_ECC_WRCH = "0" *) 
  (* C_USE_EMBEDDED_REG = "0" *) 
  (* C_USE_FIFO16_FLAGS = "0" *) 
  (* C_USE_FWFT_DATA_COUNT = "0" *) 
  (* C_USE_PIPELINE_REG = "0" *) 
  (* C_VALID_LOW = "0" *) 
  (* C_WACH_TYPE = "0" *) 
  (* C_WDCH_TYPE = "0" *) 
  (* C_WRCH_TYPE = "0" *) 
  (* C_WR_ACK_LOW = "0" *) 
  (* C_WR_DATA_COUNT_WIDTH = "12" *) 
  (* C_WR_DEPTH = "4096" *) 
  (* C_WR_DEPTH_AXIS = "1024" *) 
  (* C_WR_DEPTH_RACH = "16" *) 
  (* C_WR_DEPTH_RDCH = "1024" *) 
  (* C_WR_DEPTH_WACH = "16" *) 
  (* C_WR_DEPTH_WDCH = "1024" *) 
  (* C_WR_DEPTH_WRCH = "16" *) 
  (* C_WR_FREQ = "1" *) 
  (* C_WR_PNTR_WIDTH = "12" *) 
  (* C_WR_PNTR_WIDTH_AXIS = "10" *) 
  (* C_WR_PNTR_WIDTH_RACH = "4" *) 
  (* C_WR_PNTR_WIDTH_RDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WACH = "4" *) 
  (* C_WR_PNTR_WIDTH_WDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WRCH = "4" *) 
  (* C_WR_RESPONSE_LATENCY = "1" *) 
  fifo_generator_0_fifo_generator_v13_2_2 U0
       (.almost_empty(NLW_U0_almost_empty_UNCONNECTED),
        .almost_full(NLW_U0_almost_full_UNCONNECTED),
        .axi_ar_data_count(NLW_U0_axi_ar_data_count_UNCONNECTED[4:0]),
        .axi_ar_dbiterr(NLW_U0_axi_ar_dbiterr_UNCONNECTED),
        .axi_ar_injectdbiterr(1'b0),
        .axi_ar_injectsbiterr(1'b0),
        .axi_ar_overflow(NLW_U0_axi_ar_overflow_UNCONNECTED),
        .axi_ar_prog_empty(NLW_U0_axi_ar_prog_empty_UNCONNECTED),
        .axi_ar_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_prog_full(NLW_U0_axi_ar_prog_full_UNCONNECTED),
        .axi_ar_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_rd_data_count(NLW_U0_axi_ar_rd_data_count_UNCONNECTED[4:0]),
        .axi_ar_sbiterr(NLW_U0_axi_ar_sbiterr_UNCONNECTED),
        .axi_ar_underflow(NLW_U0_axi_ar_underflow_UNCONNECTED),
        .axi_ar_wr_data_count(NLW_U0_axi_ar_wr_data_count_UNCONNECTED[4:0]),
        .axi_aw_data_count(NLW_U0_axi_aw_data_count_UNCONNECTED[4:0]),
        .axi_aw_dbiterr(NLW_U0_axi_aw_dbiterr_UNCONNECTED),
        .axi_aw_injectdbiterr(1'b0),
        .axi_aw_injectsbiterr(1'b0),
        .axi_aw_overflow(NLW_U0_axi_aw_overflow_UNCONNECTED),
        .axi_aw_prog_empty(NLW_U0_axi_aw_prog_empty_UNCONNECTED),
        .axi_aw_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_prog_full(NLW_U0_axi_aw_prog_full_UNCONNECTED),
        .axi_aw_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_rd_data_count(NLW_U0_axi_aw_rd_data_count_UNCONNECTED[4:0]),
        .axi_aw_sbiterr(NLW_U0_axi_aw_sbiterr_UNCONNECTED),
        .axi_aw_underflow(NLW_U0_axi_aw_underflow_UNCONNECTED),
        .axi_aw_wr_data_count(NLW_U0_axi_aw_wr_data_count_UNCONNECTED[4:0]),
        .axi_b_data_count(NLW_U0_axi_b_data_count_UNCONNECTED[4:0]),
        .axi_b_dbiterr(NLW_U0_axi_b_dbiterr_UNCONNECTED),
        .axi_b_injectdbiterr(1'b0),
        .axi_b_injectsbiterr(1'b0),
        .axi_b_overflow(NLW_U0_axi_b_overflow_UNCONNECTED),
        .axi_b_prog_empty(NLW_U0_axi_b_prog_empty_UNCONNECTED),
        .axi_b_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_prog_full(NLW_U0_axi_b_prog_full_UNCONNECTED),
        .axi_b_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_rd_data_count(NLW_U0_axi_b_rd_data_count_UNCONNECTED[4:0]),
        .axi_b_sbiterr(NLW_U0_axi_b_sbiterr_UNCONNECTED),
        .axi_b_underflow(NLW_U0_axi_b_underflow_UNCONNECTED),
        .axi_b_wr_data_count(NLW_U0_axi_b_wr_data_count_UNCONNECTED[4:0]),
        .axi_r_data_count(NLW_U0_axi_r_data_count_UNCONNECTED[10:0]),
        .axi_r_dbiterr(NLW_U0_axi_r_dbiterr_UNCONNECTED),
        .axi_r_injectdbiterr(1'b0),
        .axi_r_injectsbiterr(1'b0),
        .axi_r_overflow(NLW_U0_axi_r_overflow_UNCONNECTED),
        .axi_r_prog_empty(NLW_U0_axi_r_prog_empty_UNCONNECTED),
        .axi_r_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_prog_full(NLW_U0_axi_r_prog_full_UNCONNECTED),
        .axi_r_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_rd_data_count(NLW_U0_axi_r_rd_data_count_UNCONNECTED[10:0]),
        .axi_r_sbiterr(NLW_U0_axi_r_sbiterr_UNCONNECTED),
        .axi_r_underflow(NLW_U0_axi_r_underflow_UNCONNECTED),
        .axi_r_wr_data_count(NLW_U0_axi_r_wr_data_count_UNCONNECTED[10:0]),
        .axi_w_data_count(NLW_U0_axi_w_data_count_UNCONNECTED[10:0]),
        .axi_w_dbiterr(NLW_U0_axi_w_dbiterr_UNCONNECTED),
        .axi_w_injectdbiterr(1'b0),
        .axi_w_injectsbiterr(1'b0),
        .axi_w_overflow(NLW_U0_axi_w_overflow_UNCONNECTED),
        .axi_w_prog_empty(NLW_U0_axi_w_prog_empty_UNCONNECTED),
        .axi_w_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_prog_full(NLW_U0_axi_w_prog_full_UNCONNECTED),
        .axi_w_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_rd_data_count(NLW_U0_axi_w_rd_data_count_UNCONNECTED[10:0]),
        .axi_w_sbiterr(NLW_U0_axi_w_sbiterr_UNCONNECTED),
        .axi_w_underflow(NLW_U0_axi_w_underflow_UNCONNECTED),
        .axi_w_wr_data_count(NLW_U0_axi_w_wr_data_count_UNCONNECTED[10:0]),
        .axis_data_count(NLW_U0_axis_data_count_UNCONNECTED[10:0]),
        .axis_dbiterr(NLW_U0_axis_dbiterr_UNCONNECTED),
        .axis_injectdbiterr(1'b0),
        .axis_injectsbiterr(1'b0),
        .axis_overflow(NLW_U0_axis_overflow_UNCONNECTED),
        .axis_prog_empty(NLW_U0_axis_prog_empty_UNCONNECTED),
        .axis_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_prog_full(NLW_U0_axis_prog_full_UNCONNECTED),
        .axis_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_rd_data_count(NLW_U0_axis_rd_data_count_UNCONNECTED[10:0]),
        .axis_sbiterr(NLW_U0_axis_sbiterr_UNCONNECTED),
        .axis_underflow(NLW_U0_axis_underflow_UNCONNECTED),
        .axis_wr_data_count(NLW_U0_axis_wr_data_count_UNCONNECTED[10:0]),
        .backup(1'b0),
        .backup_marker(1'b0),
        .clk(1'b0),
        .data_count(NLW_U0_data_count_UNCONNECTED[11:0]),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .din(din),
        .dout(dout),
        .empty(empty),
        .full(full),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .int_clk(1'b0),
        .m_aclk(1'b0),
        .m_aclk_en(1'b0),
        .m_axi_araddr(NLW_U0_m_axi_araddr_UNCONNECTED[31:0]),
        .m_axi_arburst(NLW_U0_m_axi_arburst_UNCONNECTED[1:0]),
        .m_axi_arcache(NLW_U0_m_axi_arcache_UNCONNECTED[3:0]),
        .m_axi_arid(NLW_U0_m_axi_arid_UNCONNECTED[0]),
        .m_axi_arlen(NLW_U0_m_axi_arlen_UNCONNECTED[7:0]),
        .m_axi_arlock(NLW_U0_m_axi_arlock_UNCONNECTED[0]),
        .m_axi_arprot(NLW_U0_m_axi_arprot_UNCONNECTED[2:0]),
        .m_axi_arqos(NLW_U0_m_axi_arqos_UNCONNECTED[3:0]),
        .m_axi_arready(1'b0),
        .m_axi_arregion(NLW_U0_m_axi_arregion_UNCONNECTED[3:0]),
        .m_axi_arsize(NLW_U0_m_axi_arsize_UNCONNECTED[2:0]),
        .m_axi_aruser(NLW_U0_m_axi_aruser_UNCONNECTED[0]),
        .m_axi_arvalid(NLW_U0_m_axi_arvalid_UNCONNECTED),
        .m_axi_awaddr(NLW_U0_m_axi_awaddr_UNCONNECTED[31:0]),
        .m_axi_awburst(NLW_U0_m_axi_awburst_UNCONNECTED[1:0]),
        .m_axi_awcache(NLW_U0_m_axi_awcache_UNCONNECTED[3:0]),
        .m_axi_awid(NLW_U0_m_axi_awid_UNCONNECTED[0]),
        .m_axi_awlen(NLW_U0_m_axi_awlen_UNCONNECTED[7:0]),
        .m_axi_awlock(NLW_U0_m_axi_awlock_UNCONNECTED[0]),
        .m_axi_awprot(NLW_U0_m_axi_awprot_UNCONNECTED[2:0]),
        .m_axi_awqos(NLW_U0_m_axi_awqos_UNCONNECTED[3:0]),
        .m_axi_awready(1'b0),
        .m_axi_awregion(NLW_U0_m_axi_awregion_UNCONNECTED[3:0]),
        .m_axi_awsize(NLW_U0_m_axi_awsize_UNCONNECTED[2:0]),
        .m_axi_awuser(NLW_U0_m_axi_awuser_UNCONNECTED[0]),
        .m_axi_awvalid(NLW_U0_m_axi_awvalid_UNCONNECTED),
        .m_axi_bid(1'b0),
        .m_axi_bready(NLW_U0_m_axi_bready_UNCONNECTED),
        .m_axi_bresp({1'b0,1'b0}),
        .m_axi_buser(1'b0),
        .m_axi_bvalid(1'b0),
        .m_axi_rdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi_rid(1'b0),
        .m_axi_rlast(1'b0),
        .m_axi_rready(NLW_U0_m_axi_rready_UNCONNECTED),
        .m_axi_rresp({1'b0,1'b0}),
        .m_axi_ruser(1'b0),
        .m_axi_rvalid(1'b0),
        .m_axi_wdata(NLW_U0_m_axi_wdata_UNCONNECTED[63:0]),
        .m_axi_wid(NLW_U0_m_axi_wid_UNCONNECTED[0]),
        .m_axi_wlast(NLW_U0_m_axi_wlast_UNCONNECTED),
        .m_axi_wready(1'b0),
        .m_axi_wstrb(NLW_U0_m_axi_wstrb_UNCONNECTED[7:0]),
        .m_axi_wuser(NLW_U0_m_axi_wuser_UNCONNECTED[0]),
        .m_axi_wvalid(NLW_U0_m_axi_wvalid_UNCONNECTED),
        .m_axis_tdata(NLW_U0_m_axis_tdata_UNCONNECTED[7:0]),
        .m_axis_tdest(NLW_U0_m_axis_tdest_UNCONNECTED[0]),
        .m_axis_tid(NLW_U0_m_axis_tid_UNCONNECTED[0]),
        .m_axis_tkeep(NLW_U0_m_axis_tkeep_UNCONNECTED[0]),
        .m_axis_tlast(NLW_U0_m_axis_tlast_UNCONNECTED),
        .m_axis_tready(1'b0),
        .m_axis_tstrb(NLW_U0_m_axis_tstrb_UNCONNECTED[0]),
        .m_axis_tuser(NLW_U0_m_axis_tuser_UNCONNECTED[3:0]),
        .m_axis_tvalid(NLW_U0_m_axis_tvalid_UNCONNECTED),
        .overflow(NLW_U0_overflow_UNCONNECTED),
        .prog_empty(NLW_U0_prog_empty_UNCONNECTED),
        .prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full(NLW_U0_prog_full_UNCONNECTED),
        .prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rd_clk(rd_clk),
        .rd_data_count(NLW_U0_rd_data_count_UNCONNECTED[11:0]),
        .rd_en(rd_en),
        .rd_rst(1'b0),
        .rd_rst_busy(NLW_U0_rd_rst_busy_UNCONNECTED),
        .rst(rst),
        .s_aclk(1'b0),
        .s_aclk_en(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arid(1'b0),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlock(1'b0),
        .s_axi_arprot({1'b0,1'b0,1'b0}),
        .s_axi_arqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_aruser(1'b0),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awid(1'b0),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlock(1'b0),
        .s_axi_awprot({1'b0,1'b0,1'b0}),
        .s_axi_awqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awuser(1'b0),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_buser(NLW_U0_s_axi_buser_UNCONNECTED[0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[63:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_ruser(NLW_U0_s_axi_ruser_UNCONNECTED[0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wid(1'b0),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wuser(1'b0),
        .s_axi_wvalid(1'b0),
        .s_axis_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tdest(1'b0),
        .s_axis_tid(1'b0),
        .s_axis_tkeep(1'b0),
        .s_axis_tlast(1'b0),
        .s_axis_tready(NLW_U0_s_axis_tready_UNCONNECTED),
        .s_axis_tstrb(1'b0),
        .s_axis_tuser({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .sleep(1'b0),
        .srst(1'b0),
        .underflow(NLW_U0_underflow_UNCONNECTED),
        .valid(NLW_U0_valid_UNCONNECTED),
        .wr_ack(NLW_U0_wr_ack_UNCONNECTED),
        .wr_clk(wr_clk),
        .wr_data_count(NLW_U0_wr_data_count_UNCONNECTED[11:0]),
        .wr_en(wr_en),
        .wr_rst(1'b0),
        .wr_rst_busy(NLW_U0_wr_rst_busy_UNCONNECTED));
endmodule

(* DEF_VAL = "1'b0" *) (* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) 
(* INV_DEF_VAL = "1'b1" *) (* RST_ACTIVE_HIGH = "1" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* xpm_cdc = "ASYNC_RST" *) 
module fifo_generator_0_xpm_cdc_async_rst
   (src_arst,
    dest_clk,
    dest_arst);
  input src_arst;
  input dest_clk;
  output dest_arst;

  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "ASYNC_RST" *) wire [1:0]arststages_ff;
  wire dest_clk;
  wire src_arst;

  assign dest_arst = arststages_ff[1];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDPE #(
    .INIT(1'b0)) 
    \arststages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(src_arst),
        .Q(arststages_ff[0]));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDPE #(
    .INIT(1'b0)) 
    \arststages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(arststages_ff[0]),
        .PRE(src_arst),
        .Q(arststages_ff[1]));
endmodule

(* DEF_VAL = "1'b0" *) (* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) 
(* INV_DEF_VAL = "1'b1" *) (* ORIG_REF_NAME = "xpm_cdc_async_rst" *) (* RST_ACTIVE_HIGH = "1" *) 
(* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) (* xpm_cdc = "ASYNC_RST" *) 
module fifo_generator_0_xpm_cdc_async_rst__1
   (src_arst,
    dest_clk,
    dest_arst);
  input src_arst;
  input dest_clk;
  output dest_arst;

  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "ASYNC_RST" *) wire [1:0]arststages_ff;
  wire dest_clk;
  wire src_arst;

  assign dest_arst = arststages_ff[1];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDPE #(
    .INIT(1'b0)) 
    \arststages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(src_arst),
        .Q(arststages_ff[0]));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDPE #(
    .INIT(1'b0)) 
    \arststages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(arststages_ff[0]),
        .PRE(src_arst),
        .Q(arststages_ff[1]));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* REG_OUTPUT = "1" *) 
(* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) (* VERSION = "0" *) 
(* WIDTH = "12" *) (* XPM_MODULE = "TRUE" *) (* xpm_cdc = "GRAY" *) 
module fifo_generator_0_xpm_cdc_gray
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [11:0]src_in_bin;
  input dest_clk;
  output [11:0]dest_out_bin;

  wire [11:0]async_path;
  wire [10:0]binval;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [11:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [11:0]\dest_graysync_ff[1] ;
  wire [11:0]dest_out_bin;
  wire [10:0]gray_enc;
  wire src_clk;
  wire [11:0]src_in_bin;

  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[0]),
        .Q(\dest_graysync_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][10] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[10]),
        .Q(\dest_graysync_ff[0] [10]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][11] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[11]),
        .Q(\dest_graysync_ff[0] [11]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[1]),
        .Q(\dest_graysync_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[2]),
        .Q(\dest_graysync_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[3]),
        .Q(\dest_graysync_ff[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[4]),
        .Q(\dest_graysync_ff[0] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[5]),
        .Q(\dest_graysync_ff[0] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[6]),
        .Q(\dest_graysync_ff[0] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[7]),
        .Q(\dest_graysync_ff[0] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[8]),
        .Q(\dest_graysync_ff[0] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[9]),
        .Q(\dest_graysync_ff[0] [9]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][10] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [10]),
        .Q(\dest_graysync_ff[1] [10]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][11] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [11]),
        .Q(\dest_graysync_ff[1] [11]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [1]),
        .Q(\dest_graysync_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [2]),
        .Q(\dest_graysync_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [3]),
        .Q(\dest_graysync_ff[1] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [4]),
        .Q(\dest_graysync_ff[1] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [5]),
        .Q(\dest_graysync_ff[1] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [6]),
        .Q(\dest_graysync_ff[1] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [7]),
        .Q(\dest_graysync_ff[1] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [8]),
        .Q(\dest_graysync_ff[1] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [9]),
        .Q(\dest_graysync_ff[1] [9]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[0]_i_1 
       (.I0(\dest_graysync_ff[1] [0]),
        .I1(binval[1]),
        .O(binval[0]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[10]_i_1 
       (.I0(\dest_graysync_ff[1] [10]),
        .I1(\dest_graysync_ff[1] [11]),
        .O(binval[10]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \dest_out_bin_ff[1]_i_1 
       (.I0(\dest_graysync_ff[1] [1]),
        .I1(\dest_graysync_ff[1] [3]),
        .I2(\dest_graysync_ff[1] [5]),
        .I3(binval[6]),
        .I4(\dest_graysync_ff[1] [4]),
        .I5(\dest_graysync_ff[1] [2]),
        .O(binval[1]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin_ff[2]_i_1 
       (.I0(\dest_graysync_ff[1] [2]),
        .I1(\dest_graysync_ff[1] [4]),
        .I2(binval[6]),
        .I3(\dest_graysync_ff[1] [5]),
        .I4(\dest_graysync_ff[1] [3]),
        .O(binval[2]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[3]_i_1 
       (.I0(\dest_graysync_ff[1] [3]),
        .I1(\dest_graysync_ff[1] [5]),
        .I2(binval[6]),
        .I3(\dest_graysync_ff[1] [4]),
        .O(binval[3]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[4]_i_1 
       (.I0(\dest_graysync_ff[1] [4]),
        .I1(binval[6]),
        .I2(\dest_graysync_ff[1] [5]),
        .O(binval[4]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[5]_i_1 
       (.I0(\dest_graysync_ff[1] [5]),
        .I1(binval[6]),
        .O(binval[5]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \dest_out_bin_ff[6]_i_1 
       (.I0(\dest_graysync_ff[1] [6]),
        .I1(\dest_graysync_ff[1] [8]),
        .I2(\dest_graysync_ff[1] [10]),
        .I3(\dest_graysync_ff[1] [11]),
        .I4(\dest_graysync_ff[1] [9]),
        .I5(\dest_graysync_ff[1] [7]),
        .O(binval[6]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin_ff[7]_i_1 
       (.I0(\dest_graysync_ff[1] [7]),
        .I1(\dest_graysync_ff[1] [9]),
        .I2(\dest_graysync_ff[1] [11]),
        .I3(\dest_graysync_ff[1] [10]),
        .I4(\dest_graysync_ff[1] [8]),
        .O(binval[7]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[8]_i_1 
       (.I0(\dest_graysync_ff[1] [8]),
        .I1(\dest_graysync_ff[1] [10]),
        .I2(\dest_graysync_ff[1] [11]),
        .I3(\dest_graysync_ff[1] [9]),
        .O(binval[8]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[9]_i_1 
       (.I0(\dest_graysync_ff[1] [9]),
        .I1(\dest_graysync_ff[1] [11]),
        .I2(\dest_graysync_ff[1] [10]),
        .O(binval[9]));
  FDRE \dest_out_bin_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[0]),
        .Q(dest_out_bin[0]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[10] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[10]),
        .Q(dest_out_bin[10]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[11] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [11]),
        .Q(dest_out_bin[11]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[1]),
        .Q(dest_out_bin[1]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[2]),
        .Q(dest_out_bin[2]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[3]),
        .Q(dest_out_bin[3]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[4]),
        .Q(dest_out_bin[4]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[5]),
        .Q(dest_out_bin[5]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[6]),
        .Q(dest_out_bin[6]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[7]),
        .Q(dest_out_bin[7]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[8]),
        .Q(dest_out_bin[8]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[9]),
        .Q(dest_out_bin[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[10]_i_1 
       (.I0(src_in_bin[11]),
        .I1(src_in_bin[10]),
        .O(gray_enc[10]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[3]_i_1 
       (.I0(src_in_bin[4]),
        .I1(src_in_bin[3]),
        .O(gray_enc[3]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[4]_i_1 
       (.I0(src_in_bin[5]),
        .I1(src_in_bin[4]),
        .O(gray_enc[4]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[5]_i_1 
       (.I0(src_in_bin[6]),
        .I1(src_in_bin[5]),
        .O(gray_enc[5]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[6]_i_1 
       (.I0(src_in_bin[7]),
        .I1(src_in_bin[6]),
        .O(gray_enc[6]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[7]_i_1 
       (.I0(src_in_bin[8]),
        .I1(src_in_bin[7]),
        .O(gray_enc[7]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[8]_i_1 
       (.I0(src_in_bin[9]),
        .I1(src_in_bin[8]),
        .O(gray_enc[8]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[9]_i_1 
       (.I0(src_in_bin[10]),
        .I1(src_in_bin[9]),
        .O(gray_enc[9]));
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[10] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[10]),
        .Q(async_path[10]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[11] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[11]),
        .Q(async_path[11]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[1]),
        .Q(async_path[1]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[2] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[2]),
        .Q(async_path[2]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[3] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[3]),
        .Q(async_path[3]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[4] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[4]),
        .Q(async_path[4]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[5] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[5]),
        .Q(async_path[5]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[6] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[6]),
        .Q(async_path[6]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[7] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[7]),
        .Q(async_path[7]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[8] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[8]),
        .Q(async_path[8]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[9] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[9]),
        .Q(async_path[9]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "1" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "12" *) (* XPM_MODULE = "TRUE" *) 
(* xpm_cdc = "GRAY" *) 
module fifo_generator_0_xpm_cdc_gray__1
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [11:0]src_in_bin;
  input dest_clk;
  output [11:0]dest_out_bin;

  wire [11:0]async_path;
  wire [10:0]binval;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [11:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [11:0]\dest_graysync_ff[1] ;
  wire [11:0]dest_out_bin;
  wire [10:0]gray_enc;
  wire src_clk;
  wire [11:0]src_in_bin;

  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[0]),
        .Q(\dest_graysync_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][10] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[10]),
        .Q(\dest_graysync_ff[0] [10]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][11] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[11]),
        .Q(\dest_graysync_ff[0] [11]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[1]),
        .Q(\dest_graysync_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[2]),
        .Q(\dest_graysync_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[3]),
        .Q(\dest_graysync_ff[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[4]),
        .Q(\dest_graysync_ff[0] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[5]),
        .Q(\dest_graysync_ff[0] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[6]),
        .Q(\dest_graysync_ff[0] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[7]),
        .Q(\dest_graysync_ff[0] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[8]),
        .Q(\dest_graysync_ff[0] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[9]),
        .Q(\dest_graysync_ff[0] [9]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][10] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [10]),
        .Q(\dest_graysync_ff[1] [10]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][11] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [11]),
        .Q(\dest_graysync_ff[1] [11]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [1]),
        .Q(\dest_graysync_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [2]),
        .Q(\dest_graysync_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [3]),
        .Q(\dest_graysync_ff[1] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [4]),
        .Q(\dest_graysync_ff[1] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [5]),
        .Q(\dest_graysync_ff[1] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [6]),
        .Q(\dest_graysync_ff[1] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [7]),
        .Q(\dest_graysync_ff[1] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [8]),
        .Q(\dest_graysync_ff[1] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [9]),
        .Q(\dest_graysync_ff[1] [9]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[0]_i_1 
       (.I0(\dest_graysync_ff[1] [0]),
        .I1(binval[1]),
        .O(binval[0]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[10]_i_1 
       (.I0(\dest_graysync_ff[1] [10]),
        .I1(\dest_graysync_ff[1] [11]),
        .O(binval[10]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \dest_out_bin_ff[1]_i_1 
       (.I0(\dest_graysync_ff[1] [1]),
        .I1(\dest_graysync_ff[1] [3]),
        .I2(\dest_graysync_ff[1] [5]),
        .I3(binval[6]),
        .I4(\dest_graysync_ff[1] [4]),
        .I5(\dest_graysync_ff[1] [2]),
        .O(binval[1]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin_ff[2]_i_1 
       (.I0(\dest_graysync_ff[1] [2]),
        .I1(\dest_graysync_ff[1] [4]),
        .I2(binval[6]),
        .I3(\dest_graysync_ff[1] [5]),
        .I4(\dest_graysync_ff[1] [3]),
        .O(binval[2]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[3]_i_1 
       (.I0(\dest_graysync_ff[1] [3]),
        .I1(\dest_graysync_ff[1] [5]),
        .I2(binval[6]),
        .I3(\dest_graysync_ff[1] [4]),
        .O(binval[3]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[4]_i_1 
       (.I0(\dest_graysync_ff[1] [4]),
        .I1(binval[6]),
        .I2(\dest_graysync_ff[1] [5]),
        .O(binval[4]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[5]_i_1 
       (.I0(\dest_graysync_ff[1] [5]),
        .I1(binval[6]),
        .O(binval[5]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \dest_out_bin_ff[6]_i_1 
       (.I0(\dest_graysync_ff[1] [6]),
        .I1(\dest_graysync_ff[1] [8]),
        .I2(\dest_graysync_ff[1] [10]),
        .I3(\dest_graysync_ff[1] [11]),
        .I4(\dest_graysync_ff[1] [9]),
        .I5(\dest_graysync_ff[1] [7]),
        .O(binval[6]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin_ff[7]_i_1 
       (.I0(\dest_graysync_ff[1] [7]),
        .I1(\dest_graysync_ff[1] [9]),
        .I2(\dest_graysync_ff[1] [11]),
        .I3(\dest_graysync_ff[1] [10]),
        .I4(\dest_graysync_ff[1] [8]),
        .O(binval[7]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[8]_i_1 
       (.I0(\dest_graysync_ff[1] [8]),
        .I1(\dest_graysync_ff[1] [10]),
        .I2(\dest_graysync_ff[1] [11]),
        .I3(\dest_graysync_ff[1] [9]),
        .O(binval[8]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[9]_i_1 
       (.I0(\dest_graysync_ff[1] [9]),
        .I1(\dest_graysync_ff[1] [11]),
        .I2(\dest_graysync_ff[1] [10]),
        .O(binval[9]));
  FDRE \dest_out_bin_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[0]),
        .Q(dest_out_bin[0]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[10] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[10]),
        .Q(dest_out_bin[10]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[11] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [11]),
        .Q(dest_out_bin[11]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[1]),
        .Q(dest_out_bin[1]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[2]),
        .Q(dest_out_bin[2]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[3]),
        .Q(dest_out_bin[3]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[4]),
        .Q(dest_out_bin[4]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[5]),
        .Q(dest_out_bin[5]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[6]),
        .Q(dest_out_bin[6]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[7]),
        .Q(dest_out_bin[7]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[8]),
        .Q(dest_out_bin[8]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[9]),
        .Q(dest_out_bin[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[10]_i_1 
       (.I0(src_in_bin[11]),
        .I1(src_in_bin[10]),
        .O(gray_enc[10]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[3]_i_1 
       (.I0(src_in_bin[4]),
        .I1(src_in_bin[3]),
        .O(gray_enc[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[4]_i_1 
       (.I0(src_in_bin[5]),
        .I1(src_in_bin[4]),
        .O(gray_enc[4]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[5]_i_1 
       (.I0(src_in_bin[6]),
        .I1(src_in_bin[5]),
        .O(gray_enc[5]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[6]_i_1 
       (.I0(src_in_bin[7]),
        .I1(src_in_bin[6]),
        .O(gray_enc[6]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[7]_i_1 
       (.I0(src_in_bin[8]),
        .I1(src_in_bin[7]),
        .O(gray_enc[7]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[8]_i_1 
       (.I0(src_in_bin[9]),
        .I1(src_in_bin[8]),
        .O(gray_enc[8]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[9]_i_1 
       (.I0(src_in_bin[10]),
        .I1(src_in_bin[9]),
        .O(gray_enc[9]));
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[10] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[10]),
        .Q(async_path[10]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[11] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[11]),
        .Q(async_path[11]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[1]),
        .Q(async_path[1]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[2] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[2]),
        .Q(async_path[2]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[3] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[3]),
        .Q(async_path[3]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[4] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[4]),
        .Q(async_path[4]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[5] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[5]),
        .Q(async_path[5]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[6] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[6]),
        .Q(async_path[6]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[7] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[7]),
        .Q(async_path[7]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[8] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[8]),
        .Q(async_path[8]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[9] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[9]),
        .Q(async_path[9]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "4" *) (* INIT_SYNC_FF = "0" *) (* SIM_ASSERT_CHK = "0" *) 
(* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) 
(* xpm_cdc = "SINGLE" *) 
module fifo_generator_0_xpm_cdc_single
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input src_in;
  input dest_clk;
  output dest_out;

  wire dest_clk;
  wire src_in;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SINGLE" *) wire [3:0]syncstages_ff;

  assign dest_out = syncstages_ff[3];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_in),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "4" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* xpm_cdc = "SINGLE" *) 
module fifo_generator_0_xpm_cdc_single__1
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input src_in;
  input dest_clk;
  output dest_out;

  wire dest_clk;
  wire src_in;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SINGLE" *) wire [3:0]syncstages_ff;

  assign dest_out = syncstages_ff[3];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_in),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
endmodule

module fifo_generator_0_clk_x_pntrs
   (WR_PNTR_RD,
    RD_PNTR_WR,
    wr_clk,
    Q,
    rd_clk,
    \gc0.count_d1_reg[11] );
  output [11:0]WR_PNTR_RD;
  output [11:0]RD_PNTR_WR;
  input wr_clk;
  input [11:0]Q;
  input rd_clk;
  input [11:0]\gc0.count_d1_reg[11] ;

  wire [11:0]Q;
  wire [11:0]RD_PNTR_WR;
  wire [11:0]WR_PNTR_RD;
  wire [11:0]\gc0.count_d1_reg[11] ;
  wire rd_clk;
  wire wr_clk;

  (* DEST_SYNC_FF = "2" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* REG_OUTPUT = "1" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
  (* VERSION = "0" *) 
  (* WIDTH = "12" *) 
  (* XPM_CDC = "GRAY" *) 
  (* XPM_MODULE = "TRUE" *) 
  fifo_generator_0_xpm_cdc_gray rd_pntr_cdc_inst
       (.dest_clk(wr_clk),
        .dest_out_bin(RD_PNTR_WR),
        .src_clk(rd_clk),
        .src_in_bin(\gc0.count_d1_reg[11] ));
  (* DEST_SYNC_FF = "2" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* REG_OUTPUT = "1" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
  (* VERSION = "0" *) 
  (* WIDTH = "12" *) 
  (* XPM_CDC = "GRAY" *) 
  (* XPM_MODULE = "TRUE" *) 
  fifo_generator_0_xpm_cdc_gray__1 wr_pntr_cdc_inst
       (.dest_clk(rd_clk),
        .dest_out_bin(WR_PNTR_RD),
        .src_clk(wr_clk),
        .src_in_bin(Q));
endmodule

module fifo_generator_0_compare
   (comp1,
    RD_PNTR_WR,
    \gic0.gc0.count_d1_reg[11] );
  output comp1;
  input [11:0]RD_PNTR_WR;
  input [11:0]\gic0.gc0.count_d1_reg[11] ;

  wire [11:0]RD_PNTR_WR;
  wire carrynet_0;
  wire carrynet_1;
  wire carrynet_2;
  wire carrynet_3;
  wire carrynet_4;
  wire comp1;
  wire [11:0]\gic0.gc0.count_d1_reg[11] ;
  wire [5:0]v1_reg;
  wire [3:0]\NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED ;
  wire [3:2]\NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED ;
  wire [3:2]\NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED ;
  wire [3:0]\NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED ;
  wire [3:2]\NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED ;

  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \gmux.gm[0].gm1.m1_CARRY4 
       (.CI(1'b0),
        .CO({carrynet_3,carrynet_2,carrynet_1,carrynet_0}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED [3:0]),
        .S(v1_reg[3:0]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[0].gm1.m1_i_1 
       (.I0(RD_PNTR_WR[0]),
        .I1(\gic0.gc0.count_d1_reg[11] [0]),
        .I2(RD_PNTR_WR[1]),
        .I3(\gic0.gc0.count_d1_reg[11] [1]),
        .O(v1_reg[0]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[1].gms.ms_i_1 
       (.I0(RD_PNTR_WR[2]),
        .I1(\gic0.gc0.count_d1_reg[11] [2]),
        .I2(RD_PNTR_WR[3]),
        .I3(\gic0.gc0.count_d1_reg[11] [3]),
        .O(v1_reg[1]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[2].gms.ms_i_1 
       (.I0(RD_PNTR_WR[4]),
        .I1(\gic0.gc0.count_d1_reg[11] [4]),
        .I2(RD_PNTR_WR[5]),
        .I3(\gic0.gc0.count_d1_reg[11] [5]),
        .O(v1_reg[2]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[3].gms.ms_i_1 
       (.I0(RD_PNTR_WR[6]),
        .I1(\gic0.gc0.count_d1_reg[11] [6]),
        .I2(RD_PNTR_WR[7]),
        .I3(\gic0.gc0.count_d1_reg[11] [7]),
        .O(v1_reg[3]));
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \gmux.gm[4].gms.ms_CARRY4 
       (.CI(carrynet_3),
        .CO({\NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED [3:2],comp1,carrynet_4}),
        .CYINIT(1'b0),
        .DI({\NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED [3:2],1'b0,1'b0}),
        .O(\NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED [3:0]),
        .S({\NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED [3:2],v1_reg[5:4]}));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[4].gms.ms_i_1 
       (.I0(RD_PNTR_WR[8]),
        .I1(\gic0.gc0.count_d1_reg[11] [8]),
        .I2(RD_PNTR_WR[9]),
        .I3(\gic0.gc0.count_d1_reg[11] [9]),
        .O(v1_reg[4]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[5].gms.ms_i_1 
       (.I0(RD_PNTR_WR[10]),
        .I1(\gic0.gc0.count_d1_reg[11] [10]),
        .I2(RD_PNTR_WR[11]),
        .I3(\gic0.gc0.count_d1_reg[11] [11]),
        .O(v1_reg[5]));
endmodule

(* ORIG_REF_NAME = "compare" *) 
module fifo_generator_0_compare_0
   (comp2,
    RD_PNTR_WR,
    D);
  output comp2;
  input [11:0]RD_PNTR_WR;
  input [11:0]D;

  wire [11:0]D;
  wire [11:0]RD_PNTR_WR;
  wire carrynet_0;
  wire carrynet_1;
  wire carrynet_2;
  wire carrynet_3;
  wire carrynet_4;
  wire comp2;
  wire [5:0]v1_reg;
  wire [3:0]\NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED ;
  wire [3:2]\NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED ;
  wire [3:2]\NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED ;
  wire [3:0]\NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED ;
  wire [3:2]\NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED ;

  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \gmux.gm[0].gm1.m1_CARRY4 
       (.CI(1'b0),
        .CO({carrynet_3,carrynet_2,carrynet_1,carrynet_0}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED [3:0]),
        .S(v1_reg[3:0]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[0].gm1.m1_i_1 
       (.I0(RD_PNTR_WR[0]),
        .I1(D[0]),
        .I2(RD_PNTR_WR[1]),
        .I3(D[1]),
        .O(v1_reg[0]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[1].gms.ms_i_1 
       (.I0(RD_PNTR_WR[2]),
        .I1(D[2]),
        .I2(RD_PNTR_WR[3]),
        .I3(D[3]),
        .O(v1_reg[1]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[2].gms.ms_i_1 
       (.I0(RD_PNTR_WR[4]),
        .I1(D[4]),
        .I2(RD_PNTR_WR[5]),
        .I3(D[5]),
        .O(v1_reg[2]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[3].gms.ms_i_1 
       (.I0(RD_PNTR_WR[6]),
        .I1(D[6]),
        .I2(RD_PNTR_WR[7]),
        .I3(D[7]),
        .O(v1_reg[3]));
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \gmux.gm[4].gms.ms_CARRY4 
       (.CI(carrynet_3),
        .CO({\NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED [3:2],comp2,carrynet_4}),
        .CYINIT(1'b0),
        .DI({\NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED [3:2],1'b0,1'b0}),
        .O(\NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED [3:0]),
        .S({\NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED [3:2],v1_reg[5:4]}));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[4].gms.ms_i_1 
       (.I0(RD_PNTR_WR[8]),
        .I1(D[8]),
        .I2(RD_PNTR_WR[9]),
        .I3(D[9]),
        .O(v1_reg[4]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[5].gms.ms_i_1 
       (.I0(RD_PNTR_WR[10]),
        .I1(D[10]),
        .I2(RD_PNTR_WR[11]),
        .I3(D[11]),
        .O(v1_reg[5]));
endmodule

(* ORIG_REF_NAME = "compare" *) 
module fifo_generator_0_compare_1
   (comp0,
    Q,
    WR_PNTR_RD);
  output comp0;
  input [11:0]Q;
  input [11:0]WR_PNTR_RD;

  wire [11:0]Q;
  wire [11:0]WR_PNTR_RD;
  wire carrynet_0;
  wire carrynet_1;
  wire carrynet_2;
  wire carrynet_3;
  wire carrynet_4;
  wire comp0;
  wire [5:0]v1_reg;
  wire [3:0]\NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED ;
  wire [3:2]\NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED ;
  wire [3:2]\NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED ;
  wire [3:0]\NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED ;
  wire [3:2]\NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED ;

  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \gmux.gm[0].gm1.m1_CARRY4 
       (.CI(1'b0),
        .CO({carrynet_3,carrynet_2,carrynet_1,carrynet_0}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED [3:0]),
        .S(v1_reg[3:0]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[0].gm1.m1_i_1 
       (.I0(Q[0]),
        .I1(WR_PNTR_RD[0]),
        .I2(Q[1]),
        .I3(WR_PNTR_RD[1]),
        .O(v1_reg[0]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[1].gms.ms_i_1 
       (.I0(Q[2]),
        .I1(WR_PNTR_RD[2]),
        .I2(Q[3]),
        .I3(WR_PNTR_RD[3]),
        .O(v1_reg[1]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[2].gms.ms_i_1 
       (.I0(Q[4]),
        .I1(WR_PNTR_RD[4]),
        .I2(Q[5]),
        .I3(WR_PNTR_RD[5]),
        .O(v1_reg[2]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[3].gms.ms_i_1 
       (.I0(Q[6]),
        .I1(WR_PNTR_RD[6]),
        .I2(Q[7]),
        .I3(WR_PNTR_RD[7]),
        .O(v1_reg[3]));
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \gmux.gm[4].gms.ms_CARRY4 
       (.CI(carrynet_3),
        .CO({\NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED [3:2],comp0,carrynet_4}),
        .CYINIT(1'b0),
        .DI({\NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED [3:2],1'b0,1'b0}),
        .O(\NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED [3:0]),
        .S({\NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED [3:2],v1_reg[5:4]}));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[4].gms.ms_i_1 
       (.I0(Q[8]),
        .I1(WR_PNTR_RD[8]),
        .I2(Q[9]),
        .I3(WR_PNTR_RD[9]),
        .O(v1_reg[4]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[5].gms.ms_i_1 
       (.I0(Q[10]),
        .I1(WR_PNTR_RD[10]),
        .I2(Q[11]),
        .I3(WR_PNTR_RD[11]),
        .O(v1_reg[5]));
endmodule

(* ORIG_REF_NAME = "compare" *) 
module fifo_generator_0_compare_2
   (comp1,
    rd_pntr_plus1,
    WR_PNTR_RD);
  output comp1;
  input [11:0]rd_pntr_plus1;
  input [11:0]WR_PNTR_RD;

  wire [11:0]WR_PNTR_RD;
  wire carrynet_0;
  wire carrynet_1;
  wire carrynet_2;
  wire carrynet_3;
  wire carrynet_4;
  wire comp1;
  wire [11:0]rd_pntr_plus1;
  wire [5:0]v1_reg;
  wire [3:0]\NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED ;
  wire [3:2]\NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED ;
  wire [3:2]\NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED ;
  wire [3:0]\NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED ;
  wire [3:2]\NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED ;

  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \gmux.gm[0].gm1.m1_CARRY4 
       (.CI(1'b0),
        .CO({carrynet_3,carrynet_2,carrynet_1,carrynet_0}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED [3:0]),
        .S(v1_reg[3:0]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[0].gm1.m1_i_1 
       (.I0(rd_pntr_plus1[0]),
        .I1(WR_PNTR_RD[0]),
        .I2(rd_pntr_plus1[1]),
        .I3(WR_PNTR_RD[1]),
        .O(v1_reg[0]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[1].gms.ms_i_1 
       (.I0(rd_pntr_plus1[2]),
        .I1(WR_PNTR_RD[2]),
        .I2(rd_pntr_plus1[3]),
        .I3(WR_PNTR_RD[3]),
        .O(v1_reg[1]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[2].gms.ms_i_1 
       (.I0(rd_pntr_plus1[4]),
        .I1(WR_PNTR_RD[4]),
        .I2(rd_pntr_plus1[5]),
        .I3(WR_PNTR_RD[5]),
        .O(v1_reg[2]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[3].gms.ms_i_1 
       (.I0(rd_pntr_plus1[6]),
        .I1(WR_PNTR_RD[6]),
        .I2(rd_pntr_plus1[7]),
        .I3(WR_PNTR_RD[7]),
        .O(v1_reg[3]));
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \gmux.gm[4].gms.ms_CARRY4 
       (.CI(carrynet_3),
        .CO({\NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED [3:2],comp1,carrynet_4}),
        .CYINIT(1'b0),
        .DI({\NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED [3:2],1'b0,1'b0}),
        .O(\NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED [3:0]),
        .S({\NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED [3:2],v1_reg[5:4]}));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[4].gms.ms_i_1 
       (.I0(rd_pntr_plus1[8]),
        .I1(WR_PNTR_RD[8]),
        .I2(rd_pntr_plus1[9]),
        .I3(WR_PNTR_RD[9]),
        .O(v1_reg[4]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[5].gms.ms_i_1 
       (.I0(rd_pntr_plus1[10]),
        .I1(WR_PNTR_RD[10]),
        .I2(rd_pntr_plus1[11]),
        .I3(WR_PNTR_RD[11]),
        .O(v1_reg[5]));
endmodule

module fifo_generator_0_dmem
   (dout,
    wr_clk,
    din,
    \gic0.gc0.count_d2_reg[6] ,
    \gc0.count_d1_reg[5]_rep__0 ,
    Q,
    \gic0.gc0.count_d2_reg[9] ,
    \gic0.gc0.count_d2_reg[9]_0 ,
    \gic0.gc0.count_d2_reg[6]_0 ,
    \gic0.gc0.count_d2_reg[9]_1 ,
    \gic0.gc0.count_d2_reg[7] ,
    \gic0.gc0.count_d2_reg[9]_2 ,
    \gic0.gc0.count_d2_reg[8] ,
    \gic0.gc0.count_d2_reg[8]_0 ,
    \gic0.gc0.count_d2_reg[6]_1 ,
    \gic0.gc0.count_d2_reg[8]_1 ,
    \gic0.gc0.count_d2_reg[9]_3 ,
    \gic0.gc0.count_d2_reg[8]_2 ,
    \gic0.gc0.count_d2_reg[7]_0 ,
    \gic0.gc0.count_d2_reg[6]_2 ,
    \gic0.gc0.count_d2_reg[8]_3 ,
    \gic0.gc0.count_d2_reg[6]_3 ,
    \gic0.gc0.count_d2_reg[7]_1 ,
    \gic0.gc0.count_d2_reg[6]_4 ,
    \gic0.gc0.count_d2_reg[6]_5 ,
    \gic0.gc0.count_d2_reg[9]_4 ,
    \gic0.gc0.count_d2_reg[10] ,
    \gic0.gc0.count_d2_reg[9]_5 ,
    \gic0.gc0.count_d2_reg[6]_6 ,
    \gic0.gc0.count_d2_reg[8]_4 ,
    \gic0.gc0.count_d2_reg[9]_6 ,
    \gic0.gc0.count_d2_reg[8]_5 ,
    \gic0.gc0.count_d2_reg[8]_6 ,
    \gic0.gc0.count_d2_reg[9]_7 ,
    \gic0.gc0.count_d2_reg[7]_2 ,
    \gic0.gc0.count_d2_reg[6]_7 ,
    \gic0.gc0.count_d2_reg[8]_7 ,
    \gic0.gc0.count_d2_reg[6]_8 ,
    ADDRC,
    \gic0.gc0.count_d2_reg[9]_8 ,
    \gic0.gc0.count_d2_reg[9]_9 ,
    \gic0.gc0.count_d2_reg[6]_9 ,
    \gic0.gc0.count_d2_reg[9]_10 ,
    \gic0.gc0.count_d2_reg[9]_11 ,
    \gic0.gc0.count_d2_reg[9]_12 ,
    \gic0.gc0.count_d2_reg[9]_13 ,
    \gic0.gc0.count_d2_reg[8]_8 ,
    \gic0.gc0.count_d2_reg[6]_10 ,
    \gic0.gc0.count_d2_reg[8]_9 ,
    \gic0.gc0.count_d2_reg[6]_11 ,
    \gic0.gc0.count_d2_reg[8]_10 ,
    \gic0.gc0.count_d2_reg[10]_0 ,
    \gic0.gc0.count_d2_reg[6]_12 ,
    \gic0.gc0.count_d2_reg[8]_11 ,
    \gic0.gc0.count_d2_reg[6]_13 ,
    \gic0.gc0.count_d2_reg[6]_14 ,
    \gic0.gc0.count_d2_reg[9]_14 ,
    \gic0.gc0.count_d2_reg[6]_15 ,
    \gic0.gc0.count_d2_reg[8]_12 ,
    \gic0.gc0.count_d2_reg[6]_16 ,
    \gic0.gc0.count_d2_reg[10]_1 ,
    \gic0.gc0.count_d2_reg[6]_17 ,
    \gic0.gc0.count_d2_reg[9]_15 ,
    \gic0.gc0.count_d2_reg[6]_18 ,
    \gic0.gc0.count_d2_reg[9]_16 ,
    \gic0.gc0.count_d2_reg[9]_17 ,
    \gic0.gc0.count_d2_reg[10]_2 ,
    \gic0.gc0.count_d2_reg[7]_3 ,
    \gic0.gc0.count_d2_reg[6]_19 ,
    \gic0.gc0.count_d2_reg[8]_13 ,
    \gc0.count_d1_reg[5]_rep__2 ,
    ADDRD,
    \gc0.count_d1_reg[5]_rep__1 ,
    \gc0.count_d1_reg[5]_rep__4 ,
    \gic0.gc0.count_d2_reg[5]_rep__0 ,
    \gc0.count_d1_reg[5]_rep__3 ,
    \gc0.count_d1_reg[5]_rep__6 ,
    \gic0.gc0.count_d2_reg[5]_rep__1 ,
    \gc0.count_d1_reg[5]_rep__5 ,
    \gc0.count_d1_reg[5]_rep__8 ,
    \gic0.gc0.count_d2_reg[5]_rep__2 ,
    \gc0.count_d1_reg[5]_rep__7 ,
    \gic0.gc0.count_d2_reg[0]_rep__3 ,
    \gic0.gc0.count_d2_reg[1]_rep__3 ,
    \gic0.gc0.count_d2_reg[2]_rep__3 ,
    \gic0.gc0.count_d2_reg[3]_rep__3 ,
    \gic0.gc0.count_d2_reg[4]_rep__3 ,
    \gic0.gc0.count_d2_reg[5]_rep__3 ,
    \gc0.count_d1_reg[11] ,
    \gc0.count_d1_reg[7]_rep ,
    \gc0.count_d1_reg[6]_rep ,
    E,
    rd_clk,
    AR);
  output [15:0]dout;
  input wr_clk;
  input [15:0]din;
  input \gic0.gc0.count_d2_reg[6] ;
  input [5:0]\gc0.count_d1_reg[5]_rep__0 ;
  input [5:0]Q;
  input \gic0.gc0.count_d2_reg[9] ;
  input \gic0.gc0.count_d2_reg[9]_0 ;
  input \gic0.gc0.count_d2_reg[6]_0 ;
  input \gic0.gc0.count_d2_reg[9]_1 ;
  input \gic0.gc0.count_d2_reg[7] ;
  input \gic0.gc0.count_d2_reg[9]_2 ;
  input \gic0.gc0.count_d2_reg[8] ;
  input \gic0.gc0.count_d2_reg[8]_0 ;
  input \gic0.gc0.count_d2_reg[6]_1 ;
  input \gic0.gc0.count_d2_reg[8]_1 ;
  input \gic0.gc0.count_d2_reg[9]_3 ;
  input \gic0.gc0.count_d2_reg[8]_2 ;
  input \gic0.gc0.count_d2_reg[7]_0 ;
  input \gic0.gc0.count_d2_reg[6]_2 ;
  input \gic0.gc0.count_d2_reg[8]_3 ;
  input \gic0.gc0.count_d2_reg[6]_3 ;
  input \gic0.gc0.count_d2_reg[7]_1 ;
  input \gic0.gc0.count_d2_reg[6]_4 ;
  input \gic0.gc0.count_d2_reg[6]_5 ;
  input \gic0.gc0.count_d2_reg[9]_4 ;
  input \gic0.gc0.count_d2_reg[10] ;
  input \gic0.gc0.count_d2_reg[9]_5 ;
  input \gic0.gc0.count_d2_reg[6]_6 ;
  input \gic0.gc0.count_d2_reg[8]_4 ;
  input \gic0.gc0.count_d2_reg[9]_6 ;
  input \gic0.gc0.count_d2_reg[8]_5 ;
  input \gic0.gc0.count_d2_reg[8]_6 ;
  input \gic0.gc0.count_d2_reg[9]_7 ;
  input \gic0.gc0.count_d2_reg[7]_2 ;
  input \gic0.gc0.count_d2_reg[6]_7 ;
  input \gic0.gc0.count_d2_reg[8]_7 ;
  input \gic0.gc0.count_d2_reg[6]_8 ;
  input [5:0]ADDRC;
  input \gic0.gc0.count_d2_reg[9]_8 ;
  input \gic0.gc0.count_d2_reg[9]_9 ;
  input \gic0.gc0.count_d2_reg[6]_9 ;
  input \gic0.gc0.count_d2_reg[9]_10 ;
  input \gic0.gc0.count_d2_reg[9]_11 ;
  input \gic0.gc0.count_d2_reg[9]_12 ;
  input \gic0.gc0.count_d2_reg[9]_13 ;
  input \gic0.gc0.count_d2_reg[8]_8 ;
  input \gic0.gc0.count_d2_reg[6]_10 ;
  input \gic0.gc0.count_d2_reg[8]_9 ;
  input \gic0.gc0.count_d2_reg[6]_11 ;
  input \gic0.gc0.count_d2_reg[8]_10 ;
  input \gic0.gc0.count_d2_reg[10]_0 ;
  input \gic0.gc0.count_d2_reg[6]_12 ;
  input \gic0.gc0.count_d2_reg[8]_11 ;
  input \gic0.gc0.count_d2_reg[6]_13 ;
  input \gic0.gc0.count_d2_reg[6]_14 ;
  input \gic0.gc0.count_d2_reg[9]_14 ;
  input \gic0.gc0.count_d2_reg[6]_15 ;
  input \gic0.gc0.count_d2_reg[8]_12 ;
  input \gic0.gc0.count_d2_reg[6]_16 ;
  input \gic0.gc0.count_d2_reg[10]_1 ;
  input \gic0.gc0.count_d2_reg[6]_17 ;
  input \gic0.gc0.count_d2_reg[9]_15 ;
  input \gic0.gc0.count_d2_reg[6]_18 ;
  input \gic0.gc0.count_d2_reg[9]_16 ;
  input \gic0.gc0.count_d2_reg[9]_17 ;
  input \gic0.gc0.count_d2_reg[10]_2 ;
  input \gic0.gc0.count_d2_reg[7]_3 ;
  input \gic0.gc0.count_d2_reg[6]_19 ;
  input \gic0.gc0.count_d2_reg[8]_13 ;
  input [5:0]\gc0.count_d1_reg[5]_rep__2 ;
  input [5:0]ADDRD;
  input [5:0]\gc0.count_d1_reg[5]_rep__1 ;
  input [5:0]\gc0.count_d1_reg[5]_rep__4 ;
  input [5:0]\gic0.gc0.count_d2_reg[5]_rep__0 ;
  input [5:0]\gc0.count_d1_reg[5]_rep__3 ;
  input [5:0]\gc0.count_d1_reg[5]_rep__6 ;
  input [5:0]\gic0.gc0.count_d2_reg[5]_rep__1 ;
  input [5:0]\gc0.count_d1_reg[5]_rep__5 ;
  input [5:0]\gc0.count_d1_reg[5]_rep__8 ;
  input [5:0]\gic0.gc0.count_d2_reg[5]_rep__2 ;
  input [5:0]\gc0.count_d1_reg[5]_rep__7 ;
  input \gic0.gc0.count_d2_reg[0]_rep__3 ;
  input \gic0.gc0.count_d2_reg[1]_rep__3 ;
  input \gic0.gc0.count_d2_reg[2]_rep__3 ;
  input \gic0.gc0.count_d2_reg[3]_rep__3 ;
  input \gic0.gc0.count_d2_reg[4]_rep__3 ;
  input \gic0.gc0.count_d2_reg[5]_rep__3 ;
  input [11:0]\gc0.count_d1_reg[11] ;
  input \gc0.count_d1_reg[7]_rep ;
  input \gc0.count_d1_reg[6]_rep ;
  input [0:0]E;
  input rd_clk;
  input [0:0]AR;

  wire [5:0]ADDRC;
  wire [5:0]ADDRD;
  wire [0:0]AR;
  wire [0:0]E;
  wire [5:0]Q;
  wire RAM_reg_0_63_0_2_n_0;
  wire RAM_reg_0_63_0_2_n_1;
  wire RAM_reg_0_63_0_2_n_2;
  wire RAM_reg_0_63_12_14_n_0;
  wire RAM_reg_0_63_12_14_n_1;
  wire RAM_reg_0_63_12_14_n_2;
  wire RAM_reg_0_63_15_15_n_0;
  wire RAM_reg_0_63_3_5_n_0;
  wire RAM_reg_0_63_3_5_n_1;
  wire RAM_reg_0_63_3_5_n_2;
  wire RAM_reg_0_63_6_8_n_0;
  wire RAM_reg_0_63_6_8_n_1;
  wire RAM_reg_0_63_6_8_n_2;
  wire RAM_reg_0_63_9_11_n_0;
  wire RAM_reg_0_63_9_11_n_1;
  wire RAM_reg_0_63_9_11_n_2;
  wire RAM_reg_1024_1087_0_2_n_0;
  wire RAM_reg_1024_1087_0_2_n_1;
  wire RAM_reg_1024_1087_0_2_n_2;
  wire RAM_reg_1024_1087_12_14_n_0;
  wire RAM_reg_1024_1087_12_14_n_1;
  wire RAM_reg_1024_1087_12_14_n_2;
  wire RAM_reg_1024_1087_15_15_n_0;
  wire RAM_reg_1024_1087_3_5_n_0;
  wire RAM_reg_1024_1087_3_5_n_1;
  wire RAM_reg_1024_1087_3_5_n_2;
  wire RAM_reg_1024_1087_6_8_n_0;
  wire RAM_reg_1024_1087_6_8_n_1;
  wire RAM_reg_1024_1087_6_8_n_2;
  wire RAM_reg_1024_1087_9_11_n_0;
  wire RAM_reg_1024_1087_9_11_n_1;
  wire RAM_reg_1024_1087_9_11_n_2;
  wire RAM_reg_1088_1151_0_2_n_0;
  wire RAM_reg_1088_1151_0_2_n_1;
  wire RAM_reg_1088_1151_0_2_n_2;
  wire RAM_reg_1088_1151_12_14_n_0;
  wire RAM_reg_1088_1151_12_14_n_1;
  wire RAM_reg_1088_1151_12_14_n_2;
  wire RAM_reg_1088_1151_15_15_n_0;
  wire RAM_reg_1088_1151_3_5_n_0;
  wire RAM_reg_1088_1151_3_5_n_1;
  wire RAM_reg_1088_1151_3_5_n_2;
  wire RAM_reg_1088_1151_6_8_n_0;
  wire RAM_reg_1088_1151_6_8_n_1;
  wire RAM_reg_1088_1151_6_8_n_2;
  wire RAM_reg_1088_1151_9_11_n_0;
  wire RAM_reg_1088_1151_9_11_n_1;
  wire RAM_reg_1088_1151_9_11_n_2;
  wire RAM_reg_1152_1215_0_2_n_0;
  wire RAM_reg_1152_1215_0_2_n_1;
  wire RAM_reg_1152_1215_0_2_n_2;
  wire RAM_reg_1152_1215_12_14_n_0;
  wire RAM_reg_1152_1215_12_14_n_1;
  wire RAM_reg_1152_1215_12_14_n_2;
  wire RAM_reg_1152_1215_15_15_n_0;
  wire RAM_reg_1152_1215_3_5_n_0;
  wire RAM_reg_1152_1215_3_5_n_1;
  wire RAM_reg_1152_1215_3_5_n_2;
  wire RAM_reg_1152_1215_6_8_n_0;
  wire RAM_reg_1152_1215_6_8_n_1;
  wire RAM_reg_1152_1215_6_8_n_2;
  wire RAM_reg_1152_1215_9_11_n_0;
  wire RAM_reg_1152_1215_9_11_n_1;
  wire RAM_reg_1152_1215_9_11_n_2;
  wire RAM_reg_1216_1279_0_2_n_0;
  wire RAM_reg_1216_1279_0_2_n_1;
  wire RAM_reg_1216_1279_0_2_n_2;
  wire RAM_reg_1216_1279_12_14_n_0;
  wire RAM_reg_1216_1279_12_14_n_1;
  wire RAM_reg_1216_1279_12_14_n_2;
  wire RAM_reg_1216_1279_15_15_n_0;
  wire RAM_reg_1216_1279_3_5_n_0;
  wire RAM_reg_1216_1279_3_5_n_1;
  wire RAM_reg_1216_1279_3_5_n_2;
  wire RAM_reg_1216_1279_6_8_n_0;
  wire RAM_reg_1216_1279_6_8_n_1;
  wire RAM_reg_1216_1279_6_8_n_2;
  wire RAM_reg_1216_1279_9_11_n_0;
  wire RAM_reg_1216_1279_9_11_n_1;
  wire RAM_reg_1216_1279_9_11_n_2;
  wire RAM_reg_1280_1343_0_2_n_0;
  wire RAM_reg_1280_1343_0_2_n_1;
  wire RAM_reg_1280_1343_0_2_n_2;
  wire RAM_reg_1280_1343_12_14_n_0;
  wire RAM_reg_1280_1343_12_14_n_1;
  wire RAM_reg_1280_1343_12_14_n_2;
  wire RAM_reg_1280_1343_15_15_n_0;
  wire RAM_reg_1280_1343_3_5_n_0;
  wire RAM_reg_1280_1343_3_5_n_1;
  wire RAM_reg_1280_1343_3_5_n_2;
  wire RAM_reg_1280_1343_6_8_n_0;
  wire RAM_reg_1280_1343_6_8_n_1;
  wire RAM_reg_1280_1343_6_8_n_2;
  wire RAM_reg_1280_1343_9_11_n_0;
  wire RAM_reg_1280_1343_9_11_n_1;
  wire RAM_reg_1280_1343_9_11_n_2;
  wire RAM_reg_128_191_0_2_n_0;
  wire RAM_reg_128_191_0_2_n_1;
  wire RAM_reg_128_191_0_2_n_2;
  wire RAM_reg_128_191_12_14_n_0;
  wire RAM_reg_128_191_12_14_n_1;
  wire RAM_reg_128_191_12_14_n_2;
  wire RAM_reg_128_191_15_15_n_0;
  wire RAM_reg_128_191_3_5_n_0;
  wire RAM_reg_128_191_3_5_n_1;
  wire RAM_reg_128_191_3_5_n_2;
  wire RAM_reg_128_191_6_8_n_0;
  wire RAM_reg_128_191_6_8_n_1;
  wire RAM_reg_128_191_6_8_n_2;
  wire RAM_reg_128_191_9_11_n_0;
  wire RAM_reg_128_191_9_11_n_1;
  wire RAM_reg_128_191_9_11_n_2;
  wire RAM_reg_1344_1407_0_2_n_0;
  wire RAM_reg_1344_1407_0_2_n_1;
  wire RAM_reg_1344_1407_0_2_n_2;
  wire RAM_reg_1344_1407_12_14_n_0;
  wire RAM_reg_1344_1407_12_14_n_1;
  wire RAM_reg_1344_1407_12_14_n_2;
  wire RAM_reg_1344_1407_15_15_n_0;
  wire RAM_reg_1344_1407_3_5_n_0;
  wire RAM_reg_1344_1407_3_5_n_1;
  wire RAM_reg_1344_1407_3_5_n_2;
  wire RAM_reg_1344_1407_6_8_n_0;
  wire RAM_reg_1344_1407_6_8_n_1;
  wire RAM_reg_1344_1407_6_8_n_2;
  wire RAM_reg_1344_1407_9_11_n_0;
  wire RAM_reg_1344_1407_9_11_n_1;
  wire RAM_reg_1344_1407_9_11_n_2;
  wire RAM_reg_1408_1471_0_2_n_0;
  wire RAM_reg_1408_1471_0_2_n_1;
  wire RAM_reg_1408_1471_0_2_n_2;
  wire RAM_reg_1408_1471_12_14_n_0;
  wire RAM_reg_1408_1471_12_14_n_1;
  wire RAM_reg_1408_1471_12_14_n_2;
  wire RAM_reg_1408_1471_15_15_n_0;
  wire RAM_reg_1408_1471_3_5_n_0;
  wire RAM_reg_1408_1471_3_5_n_1;
  wire RAM_reg_1408_1471_3_5_n_2;
  wire RAM_reg_1408_1471_6_8_n_0;
  wire RAM_reg_1408_1471_6_8_n_1;
  wire RAM_reg_1408_1471_6_8_n_2;
  wire RAM_reg_1408_1471_9_11_n_0;
  wire RAM_reg_1408_1471_9_11_n_1;
  wire RAM_reg_1408_1471_9_11_n_2;
  wire RAM_reg_1472_1535_0_2_n_0;
  wire RAM_reg_1472_1535_0_2_n_1;
  wire RAM_reg_1472_1535_0_2_n_2;
  wire RAM_reg_1472_1535_12_14_n_0;
  wire RAM_reg_1472_1535_12_14_n_1;
  wire RAM_reg_1472_1535_12_14_n_2;
  wire RAM_reg_1472_1535_15_15_n_0;
  wire RAM_reg_1472_1535_3_5_n_0;
  wire RAM_reg_1472_1535_3_5_n_1;
  wire RAM_reg_1472_1535_3_5_n_2;
  wire RAM_reg_1472_1535_6_8_n_0;
  wire RAM_reg_1472_1535_6_8_n_1;
  wire RAM_reg_1472_1535_6_8_n_2;
  wire RAM_reg_1472_1535_9_11_n_0;
  wire RAM_reg_1472_1535_9_11_n_1;
  wire RAM_reg_1472_1535_9_11_n_2;
  wire RAM_reg_1536_1599_0_2_n_0;
  wire RAM_reg_1536_1599_0_2_n_1;
  wire RAM_reg_1536_1599_0_2_n_2;
  wire RAM_reg_1536_1599_12_14_n_0;
  wire RAM_reg_1536_1599_12_14_n_1;
  wire RAM_reg_1536_1599_12_14_n_2;
  wire RAM_reg_1536_1599_15_15_n_0;
  wire RAM_reg_1536_1599_3_5_n_0;
  wire RAM_reg_1536_1599_3_5_n_1;
  wire RAM_reg_1536_1599_3_5_n_2;
  wire RAM_reg_1536_1599_6_8_n_0;
  wire RAM_reg_1536_1599_6_8_n_1;
  wire RAM_reg_1536_1599_6_8_n_2;
  wire RAM_reg_1536_1599_9_11_n_0;
  wire RAM_reg_1536_1599_9_11_n_1;
  wire RAM_reg_1536_1599_9_11_n_2;
  wire RAM_reg_1600_1663_0_2_n_0;
  wire RAM_reg_1600_1663_0_2_n_1;
  wire RAM_reg_1600_1663_0_2_n_2;
  wire RAM_reg_1600_1663_12_14_n_0;
  wire RAM_reg_1600_1663_12_14_n_1;
  wire RAM_reg_1600_1663_12_14_n_2;
  wire RAM_reg_1600_1663_15_15_n_0;
  wire RAM_reg_1600_1663_3_5_n_0;
  wire RAM_reg_1600_1663_3_5_n_1;
  wire RAM_reg_1600_1663_3_5_n_2;
  wire RAM_reg_1600_1663_6_8_n_0;
  wire RAM_reg_1600_1663_6_8_n_1;
  wire RAM_reg_1600_1663_6_8_n_2;
  wire RAM_reg_1600_1663_9_11_n_0;
  wire RAM_reg_1600_1663_9_11_n_1;
  wire RAM_reg_1600_1663_9_11_n_2;
  wire RAM_reg_1664_1727_0_2_n_0;
  wire RAM_reg_1664_1727_0_2_n_1;
  wire RAM_reg_1664_1727_0_2_n_2;
  wire RAM_reg_1664_1727_12_14_n_0;
  wire RAM_reg_1664_1727_12_14_n_1;
  wire RAM_reg_1664_1727_12_14_n_2;
  wire RAM_reg_1664_1727_15_15_n_0;
  wire RAM_reg_1664_1727_3_5_n_0;
  wire RAM_reg_1664_1727_3_5_n_1;
  wire RAM_reg_1664_1727_3_5_n_2;
  wire RAM_reg_1664_1727_6_8_n_0;
  wire RAM_reg_1664_1727_6_8_n_1;
  wire RAM_reg_1664_1727_6_8_n_2;
  wire RAM_reg_1664_1727_9_11_n_0;
  wire RAM_reg_1664_1727_9_11_n_1;
  wire RAM_reg_1664_1727_9_11_n_2;
  wire RAM_reg_1728_1791_0_2_n_0;
  wire RAM_reg_1728_1791_0_2_n_1;
  wire RAM_reg_1728_1791_0_2_n_2;
  wire RAM_reg_1728_1791_12_14_n_0;
  wire RAM_reg_1728_1791_12_14_n_1;
  wire RAM_reg_1728_1791_12_14_n_2;
  wire RAM_reg_1728_1791_15_15_n_0;
  wire RAM_reg_1728_1791_3_5_n_0;
  wire RAM_reg_1728_1791_3_5_n_1;
  wire RAM_reg_1728_1791_3_5_n_2;
  wire RAM_reg_1728_1791_6_8_n_0;
  wire RAM_reg_1728_1791_6_8_n_1;
  wire RAM_reg_1728_1791_6_8_n_2;
  wire RAM_reg_1728_1791_9_11_n_0;
  wire RAM_reg_1728_1791_9_11_n_1;
  wire RAM_reg_1728_1791_9_11_n_2;
  wire RAM_reg_1792_1855_0_2_n_0;
  wire RAM_reg_1792_1855_0_2_n_1;
  wire RAM_reg_1792_1855_0_2_n_2;
  wire RAM_reg_1792_1855_12_14_n_0;
  wire RAM_reg_1792_1855_12_14_n_1;
  wire RAM_reg_1792_1855_12_14_n_2;
  wire RAM_reg_1792_1855_15_15_n_0;
  wire RAM_reg_1792_1855_3_5_n_0;
  wire RAM_reg_1792_1855_3_5_n_1;
  wire RAM_reg_1792_1855_3_5_n_2;
  wire RAM_reg_1792_1855_6_8_n_0;
  wire RAM_reg_1792_1855_6_8_n_1;
  wire RAM_reg_1792_1855_6_8_n_2;
  wire RAM_reg_1792_1855_9_11_n_0;
  wire RAM_reg_1792_1855_9_11_n_1;
  wire RAM_reg_1792_1855_9_11_n_2;
  wire RAM_reg_1856_1919_0_2_n_0;
  wire RAM_reg_1856_1919_0_2_n_1;
  wire RAM_reg_1856_1919_0_2_n_2;
  wire RAM_reg_1856_1919_12_14_n_0;
  wire RAM_reg_1856_1919_12_14_n_1;
  wire RAM_reg_1856_1919_12_14_n_2;
  wire RAM_reg_1856_1919_15_15_n_0;
  wire RAM_reg_1856_1919_3_5_n_0;
  wire RAM_reg_1856_1919_3_5_n_1;
  wire RAM_reg_1856_1919_3_5_n_2;
  wire RAM_reg_1856_1919_6_8_n_0;
  wire RAM_reg_1856_1919_6_8_n_1;
  wire RAM_reg_1856_1919_6_8_n_2;
  wire RAM_reg_1856_1919_9_11_n_0;
  wire RAM_reg_1856_1919_9_11_n_1;
  wire RAM_reg_1856_1919_9_11_n_2;
  wire RAM_reg_1920_1983_0_2_n_0;
  wire RAM_reg_1920_1983_0_2_n_1;
  wire RAM_reg_1920_1983_0_2_n_2;
  wire RAM_reg_1920_1983_12_14_n_0;
  wire RAM_reg_1920_1983_12_14_n_1;
  wire RAM_reg_1920_1983_12_14_n_2;
  wire RAM_reg_1920_1983_15_15_n_0;
  wire RAM_reg_1920_1983_3_5_n_0;
  wire RAM_reg_1920_1983_3_5_n_1;
  wire RAM_reg_1920_1983_3_5_n_2;
  wire RAM_reg_1920_1983_6_8_n_0;
  wire RAM_reg_1920_1983_6_8_n_1;
  wire RAM_reg_1920_1983_6_8_n_2;
  wire RAM_reg_1920_1983_9_11_n_0;
  wire RAM_reg_1920_1983_9_11_n_1;
  wire RAM_reg_1920_1983_9_11_n_2;
  wire RAM_reg_192_255_0_2_n_0;
  wire RAM_reg_192_255_0_2_n_1;
  wire RAM_reg_192_255_0_2_n_2;
  wire RAM_reg_192_255_12_14_n_0;
  wire RAM_reg_192_255_12_14_n_1;
  wire RAM_reg_192_255_12_14_n_2;
  wire RAM_reg_192_255_15_15_n_0;
  wire RAM_reg_192_255_3_5_n_0;
  wire RAM_reg_192_255_3_5_n_1;
  wire RAM_reg_192_255_3_5_n_2;
  wire RAM_reg_192_255_6_8_n_0;
  wire RAM_reg_192_255_6_8_n_1;
  wire RAM_reg_192_255_6_8_n_2;
  wire RAM_reg_192_255_9_11_n_0;
  wire RAM_reg_192_255_9_11_n_1;
  wire RAM_reg_192_255_9_11_n_2;
  wire RAM_reg_1984_2047_0_2_n_0;
  wire RAM_reg_1984_2047_0_2_n_1;
  wire RAM_reg_1984_2047_0_2_n_2;
  wire RAM_reg_1984_2047_12_14_n_0;
  wire RAM_reg_1984_2047_12_14_n_1;
  wire RAM_reg_1984_2047_12_14_n_2;
  wire RAM_reg_1984_2047_15_15_n_0;
  wire RAM_reg_1984_2047_3_5_n_0;
  wire RAM_reg_1984_2047_3_5_n_1;
  wire RAM_reg_1984_2047_3_5_n_2;
  wire RAM_reg_1984_2047_6_8_n_0;
  wire RAM_reg_1984_2047_6_8_n_1;
  wire RAM_reg_1984_2047_6_8_n_2;
  wire RAM_reg_1984_2047_9_11_n_0;
  wire RAM_reg_1984_2047_9_11_n_1;
  wire RAM_reg_1984_2047_9_11_n_2;
  wire RAM_reg_2048_2111_0_2_n_0;
  wire RAM_reg_2048_2111_0_2_n_1;
  wire RAM_reg_2048_2111_0_2_n_2;
  wire RAM_reg_2048_2111_12_14_n_0;
  wire RAM_reg_2048_2111_12_14_n_1;
  wire RAM_reg_2048_2111_12_14_n_2;
  wire RAM_reg_2048_2111_15_15_n_0;
  wire RAM_reg_2048_2111_3_5_n_0;
  wire RAM_reg_2048_2111_3_5_n_1;
  wire RAM_reg_2048_2111_3_5_n_2;
  wire RAM_reg_2048_2111_6_8_n_0;
  wire RAM_reg_2048_2111_6_8_n_1;
  wire RAM_reg_2048_2111_6_8_n_2;
  wire RAM_reg_2048_2111_9_11_n_0;
  wire RAM_reg_2048_2111_9_11_n_1;
  wire RAM_reg_2048_2111_9_11_n_2;
  wire RAM_reg_2112_2175_0_2_n_0;
  wire RAM_reg_2112_2175_0_2_n_1;
  wire RAM_reg_2112_2175_0_2_n_2;
  wire RAM_reg_2112_2175_12_14_n_0;
  wire RAM_reg_2112_2175_12_14_n_1;
  wire RAM_reg_2112_2175_12_14_n_2;
  wire RAM_reg_2112_2175_15_15_n_0;
  wire RAM_reg_2112_2175_3_5_n_0;
  wire RAM_reg_2112_2175_3_5_n_1;
  wire RAM_reg_2112_2175_3_5_n_2;
  wire RAM_reg_2112_2175_6_8_n_0;
  wire RAM_reg_2112_2175_6_8_n_1;
  wire RAM_reg_2112_2175_6_8_n_2;
  wire RAM_reg_2112_2175_9_11_n_0;
  wire RAM_reg_2112_2175_9_11_n_1;
  wire RAM_reg_2112_2175_9_11_n_2;
  wire RAM_reg_2176_2239_0_2_n_0;
  wire RAM_reg_2176_2239_0_2_n_1;
  wire RAM_reg_2176_2239_0_2_n_2;
  wire RAM_reg_2176_2239_12_14_n_0;
  wire RAM_reg_2176_2239_12_14_n_1;
  wire RAM_reg_2176_2239_12_14_n_2;
  wire RAM_reg_2176_2239_15_15_n_0;
  wire RAM_reg_2176_2239_3_5_n_0;
  wire RAM_reg_2176_2239_3_5_n_1;
  wire RAM_reg_2176_2239_3_5_n_2;
  wire RAM_reg_2176_2239_6_8_n_0;
  wire RAM_reg_2176_2239_6_8_n_1;
  wire RAM_reg_2176_2239_6_8_n_2;
  wire RAM_reg_2176_2239_9_11_n_0;
  wire RAM_reg_2176_2239_9_11_n_1;
  wire RAM_reg_2176_2239_9_11_n_2;
  wire RAM_reg_2240_2303_0_2_n_0;
  wire RAM_reg_2240_2303_0_2_n_1;
  wire RAM_reg_2240_2303_0_2_n_2;
  wire RAM_reg_2240_2303_12_14_n_0;
  wire RAM_reg_2240_2303_12_14_n_1;
  wire RAM_reg_2240_2303_12_14_n_2;
  wire RAM_reg_2240_2303_15_15_n_0;
  wire RAM_reg_2240_2303_3_5_n_0;
  wire RAM_reg_2240_2303_3_5_n_1;
  wire RAM_reg_2240_2303_3_5_n_2;
  wire RAM_reg_2240_2303_6_8_n_0;
  wire RAM_reg_2240_2303_6_8_n_1;
  wire RAM_reg_2240_2303_6_8_n_2;
  wire RAM_reg_2240_2303_9_11_n_0;
  wire RAM_reg_2240_2303_9_11_n_1;
  wire RAM_reg_2240_2303_9_11_n_2;
  wire RAM_reg_2304_2367_0_2_n_0;
  wire RAM_reg_2304_2367_0_2_n_1;
  wire RAM_reg_2304_2367_0_2_n_2;
  wire RAM_reg_2304_2367_12_14_n_0;
  wire RAM_reg_2304_2367_12_14_n_1;
  wire RAM_reg_2304_2367_12_14_n_2;
  wire RAM_reg_2304_2367_15_15_n_0;
  wire RAM_reg_2304_2367_3_5_n_0;
  wire RAM_reg_2304_2367_3_5_n_1;
  wire RAM_reg_2304_2367_3_5_n_2;
  wire RAM_reg_2304_2367_6_8_n_0;
  wire RAM_reg_2304_2367_6_8_n_1;
  wire RAM_reg_2304_2367_6_8_n_2;
  wire RAM_reg_2304_2367_9_11_n_0;
  wire RAM_reg_2304_2367_9_11_n_1;
  wire RAM_reg_2304_2367_9_11_n_2;
  wire RAM_reg_2368_2431_0_2_n_0;
  wire RAM_reg_2368_2431_0_2_n_1;
  wire RAM_reg_2368_2431_0_2_n_2;
  wire RAM_reg_2368_2431_12_14_n_0;
  wire RAM_reg_2368_2431_12_14_n_1;
  wire RAM_reg_2368_2431_12_14_n_2;
  wire RAM_reg_2368_2431_15_15_n_0;
  wire RAM_reg_2368_2431_3_5_n_0;
  wire RAM_reg_2368_2431_3_5_n_1;
  wire RAM_reg_2368_2431_3_5_n_2;
  wire RAM_reg_2368_2431_6_8_n_0;
  wire RAM_reg_2368_2431_6_8_n_1;
  wire RAM_reg_2368_2431_6_8_n_2;
  wire RAM_reg_2368_2431_9_11_n_0;
  wire RAM_reg_2368_2431_9_11_n_1;
  wire RAM_reg_2368_2431_9_11_n_2;
  wire RAM_reg_2432_2495_0_2_n_0;
  wire RAM_reg_2432_2495_0_2_n_1;
  wire RAM_reg_2432_2495_0_2_n_2;
  wire RAM_reg_2432_2495_12_14_n_0;
  wire RAM_reg_2432_2495_12_14_n_1;
  wire RAM_reg_2432_2495_12_14_n_2;
  wire RAM_reg_2432_2495_15_15_n_0;
  wire RAM_reg_2432_2495_3_5_n_0;
  wire RAM_reg_2432_2495_3_5_n_1;
  wire RAM_reg_2432_2495_3_5_n_2;
  wire RAM_reg_2432_2495_6_8_n_0;
  wire RAM_reg_2432_2495_6_8_n_1;
  wire RAM_reg_2432_2495_6_8_n_2;
  wire RAM_reg_2432_2495_9_11_n_0;
  wire RAM_reg_2432_2495_9_11_n_1;
  wire RAM_reg_2432_2495_9_11_n_2;
  wire RAM_reg_2496_2559_0_2_n_0;
  wire RAM_reg_2496_2559_0_2_n_1;
  wire RAM_reg_2496_2559_0_2_n_2;
  wire RAM_reg_2496_2559_12_14_n_0;
  wire RAM_reg_2496_2559_12_14_n_1;
  wire RAM_reg_2496_2559_12_14_n_2;
  wire RAM_reg_2496_2559_15_15_n_0;
  wire RAM_reg_2496_2559_3_5_n_0;
  wire RAM_reg_2496_2559_3_5_n_1;
  wire RAM_reg_2496_2559_3_5_n_2;
  wire RAM_reg_2496_2559_6_8_n_0;
  wire RAM_reg_2496_2559_6_8_n_1;
  wire RAM_reg_2496_2559_6_8_n_2;
  wire RAM_reg_2496_2559_9_11_n_0;
  wire RAM_reg_2496_2559_9_11_n_1;
  wire RAM_reg_2496_2559_9_11_n_2;
  wire RAM_reg_2560_2623_0_2_n_0;
  wire RAM_reg_2560_2623_0_2_n_1;
  wire RAM_reg_2560_2623_0_2_n_2;
  wire RAM_reg_2560_2623_12_14_n_0;
  wire RAM_reg_2560_2623_12_14_n_1;
  wire RAM_reg_2560_2623_12_14_n_2;
  wire RAM_reg_2560_2623_15_15_n_0;
  wire RAM_reg_2560_2623_3_5_n_0;
  wire RAM_reg_2560_2623_3_5_n_1;
  wire RAM_reg_2560_2623_3_5_n_2;
  wire RAM_reg_2560_2623_6_8_n_0;
  wire RAM_reg_2560_2623_6_8_n_1;
  wire RAM_reg_2560_2623_6_8_n_2;
  wire RAM_reg_2560_2623_9_11_n_0;
  wire RAM_reg_2560_2623_9_11_n_1;
  wire RAM_reg_2560_2623_9_11_n_2;
  wire RAM_reg_256_319_0_2_n_0;
  wire RAM_reg_256_319_0_2_n_1;
  wire RAM_reg_256_319_0_2_n_2;
  wire RAM_reg_256_319_12_14_n_0;
  wire RAM_reg_256_319_12_14_n_1;
  wire RAM_reg_256_319_12_14_n_2;
  wire RAM_reg_256_319_15_15_n_0;
  wire RAM_reg_256_319_3_5_n_0;
  wire RAM_reg_256_319_3_5_n_1;
  wire RAM_reg_256_319_3_5_n_2;
  wire RAM_reg_256_319_6_8_n_0;
  wire RAM_reg_256_319_6_8_n_1;
  wire RAM_reg_256_319_6_8_n_2;
  wire RAM_reg_256_319_9_11_n_0;
  wire RAM_reg_256_319_9_11_n_1;
  wire RAM_reg_256_319_9_11_n_2;
  wire RAM_reg_2624_2687_0_2_n_0;
  wire RAM_reg_2624_2687_0_2_n_1;
  wire RAM_reg_2624_2687_0_2_n_2;
  wire RAM_reg_2624_2687_12_14_n_0;
  wire RAM_reg_2624_2687_12_14_n_1;
  wire RAM_reg_2624_2687_12_14_n_2;
  wire RAM_reg_2624_2687_15_15_n_0;
  wire RAM_reg_2624_2687_3_5_n_0;
  wire RAM_reg_2624_2687_3_5_n_1;
  wire RAM_reg_2624_2687_3_5_n_2;
  wire RAM_reg_2624_2687_6_8_n_0;
  wire RAM_reg_2624_2687_6_8_n_1;
  wire RAM_reg_2624_2687_6_8_n_2;
  wire RAM_reg_2624_2687_9_11_n_0;
  wire RAM_reg_2624_2687_9_11_n_1;
  wire RAM_reg_2624_2687_9_11_n_2;
  wire RAM_reg_2688_2751_0_2_n_0;
  wire RAM_reg_2688_2751_0_2_n_1;
  wire RAM_reg_2688_2751_0_2_n_2;
  wire RAM_reg_2688_2751_12_14_n_0;
  wire RAM_reg_2688_2751_12_14_n_1;
  wire RAM_reg_2688_2751_12_14_n_2;
  wire RAM_reg_2688_2751_15_15_n_0;
  wire RAM_reg_2688_2751_3_5_n_0;
  wire RAM_reg_2688_2751_3_5_n_1;
  wire RAM_reg_2688_2751_3_5_n_2;
  wire RAM_reg_2688_2751_6_8_n_0;
  wire RAM_reg_2688_2751_6_8_n_1;
  wire RAM_reg_2688_2751_6_8_n_2;
  wire RAM_reg_2688_2751_9_11_n_0;
  wire RAM_reg_2688_2751_9_11_n_1;
  wire RAM_reg_2688_2751_9_11_n_2;
  wire RAM_reg_2752_2815_0_2_n_0;
  wire RAM_reg_2752_2815_0_2_n_1;
  wire RAM_reg_2752_2815_0_2_n_2;
  wire RAM_reg_2752_2815_12_14_n_0;
  wire RAM_reg_2752_2815_12_14_n_1;
  wire RAM_reg_2752_2815_12_14_n_2;
  wire RAM_reg_2752_2815_15_15_n_0;
  wire RAM_reg_2752_2815_3_5_n_0;
  wire RAM_reg_2752_2815_3_5_n_1;
  wire RAM_reg_2752_2815_3_5_n_2;
  wire RAM_reg_2752_2815_6_8_n_0;
  wire RAM_reg_2752_2815_6_8_n_1;
  wire RAM_reg_2752_2815_6_8_n_2;
  wire RAM_reg_2752_2815_9_11_n_0;
  wire RAM_reg_2752_2815_9_11_n_1;
  wire RAM_reg_2752_2815_9_11_n_2;
  wire RAM_reg_2816_2879_0_2_n_0;
  wire RAM_reg_2816_2879_0_2_n_1;
  wire RAM_reg_2816_2879_0_2_n_2;
  wire RAM_reg_2816_2879_12_14_n_0;
  wire RAM_reg_2816_2879_12_14_n_1;
  wire RAM_reg_2816_2879_12_14_n_2;
  wire RAM_reg_2816_2879_15_15_n_0;
  wire RAM_reg_2816_2879_3_5_n_0;
  wire RAM_reg_2816_2879_3_5_n_1;
  wire RAM_reg_2816_2879_3_5_n_2;
  wire RAM_reg_2816_2879_6_8_n_0;
  wire RAM_reg_2816_2879_6_8_n_1;
  wire RAM_reg_2816_2879_6_8_n_2;
  wire RAM_reg_2816_2879_9_11_n_0;
  wire RAM_reg_2816_2879_9_11_n_1;
  wire RAM_reg_2816_2879_9_11_n_2;
  wire RAM_reg_2880_2943_0_2_n_0;
  wire RAM_reg_2880_2943_0_2_n_1;
  wire RAM_reg_2880_2943_0_2_n_2;
  wire RAM_reg_2880_2943_12_14_n_0;
  wire RAM_reg_2880_2943_12_14_n_1;
  wire RAM_reg_2880_2943_12_14_n_2;
  wire RAM_reg_2880_2943_15_15_n_0;
  wire RAM_reg_2880_2943_3_5_n_0;
  wire RAM_reg_2880_2943_3_5_n_1;
  wire RAM_reg_2880_2943_3_5_n_2;
  wire RAM_reg_2880_2943_6_8_n_0;
  wire RAM_reg_2880_2943_6_8_n_1;
  wire RAM_reg_2880_2943_6_8_n_2;
  wire RAM_reg_2880_2943_9_11_n_0;
  wire RAM_reg_2880_2943_9_11_n_1;
  wire RAM_reg_2880_2943_9_11_n_2;
  wire RAM_reg_2944_3007_0_2_n_0;
  wire RAM_reg_2944_3007_0_2_n_1;
  wire RAM_reg_2944_3007_0_2_n_2;
  wire RAM_reg_2944_3007_12_14_n_0;
  wire RAM_reg_2944_3007_12_14_n_1;
  wire RAM_reg_2944_3007_12_14_n_2;
  wire RAM_reg_2944_3007_15_15_n_0;
  wire RAM_reg_2944_3007_3_5_n_0;
  wire RAM_reg_2944_3007_3_5_n_1;
  wire RAM_reg_2944_3007_3_5_n_2;
  wire RAM_reg_2944_3007_6_8_n_0;
  wire RAM_reg_2944_3007_6_8_n_1;
  wire RAM_reg_2944_3007_6_8_n_2;
  wire RAM_reg_2944_3007_9_11_n_0;
  wire RAM_reg_2944_3007_9_11_n_1;
  wire RAM_reg_2944_3007_9_11_n_2;
  wire RAM_reg_3008_3071_0_2_n_0;
  wire RAM_reg_3008_3071_0_2_n_1;
  wire RAM_reg_3008_3071_0_2_n_2;
  wire RAM_reg_3008_3071_12_14_n_0;
  wire RAM_reg_3008_3071_12_14_n_1;
  wire RAM_reg_3008_3071_12_14_n_2;
  wire RAM_reg_3008_3071_15_15_n_0;
  wire RAM_reg_3008_3071_3_5_n_0;
  wire RAM_reg_3008_3071_3_5_n_1;
  wire RAM_reg_3008_3071_3_5_n_2;
  wire RAM_reg_3008_3071_6_8_n_0;
  wire RAM_reg_3008_3071_6_8_n_1;
  wire RAM_reg_3008_3071_6_8_n_2;
  wire RAM_reg_3008_3071_9_11_n_0;
  wire RAM_reg_3008_3071_9_11_n_1;
  wire RAM_reg_3008_3071_9_11_n_2;
  wire RAM_reg_3072_3135_0_2_n_0;
  wire RAM_reg_3072_3135_0_2_n_1;
  wire RAM_reg_3072_3135_0_2_n_2;
  wire RAM_reg_3072_3135_12_14_n_0;
  wire RAM_reg_3072_3135_12_14_n_1;
  wire RAM_reg_3072_3135_12_14_n_2;
  wire RAM_reg_3072_3135_15_15_n_0;
  wire RAM_reg_3072_3135_3_5_n_0;
  wire RAM_reg_3072_3135_3_5_n_1;
  wire RAM_reg_3072_3135_3_5_n_2;
  wire RAM_reg_3072_3135_6_8_n_0;
  wire RAM_reg_3072_3135_6_8_n_1;
  wire RAM_reg_3072_3135_6_8_n_2;
  wire RAM_reg_3072_3135_9_11_n_0;
  wire RAM_reg_3072_3135_9_11_n_1;
  wire RAM_reg_3072_3135_9_11_n_2;
  wire RAM_reg_3136_3199_0_2_n_0;
  wire RAM_reg_3136_3199_0_2_n_1;
  wire RAM_reg_3136_3199_0_2_n_2;
  wire RAM_reg_3136_3199_12_14_n_0;
  wire RAM_reg_3136_3199_12_14_n_1;
  wire RAM_reg_3136_3199_12_14_n_2;
  wire RAM_reg_3136_3199_15_15_n_0;
  wire RAM_reg_3136_3199_3_5_n_0;
  wire RAM_reg_3136_3199_3_5_n_1;
  wire RAM_reg_3136_3199_3_5_n_2;
  wire RAM_reg_3136_3199_6_8_n_0;
  wire RAM_reg_3136_3199_6_8_n_1;
  wire RAM_reg_3136_3199_6_8_n_2;
  wire RAM_reg_3136_3199_9_11_n_0;
  wire RAM_reg_3136_3199_9_11_n_1;
  wire RAM_reg_3136_3199_9_11_n_2;
  wire RAM_reg_3200_3263_0_2_n_0;
  wire RAM_reg_3200_3263_0_2_n_1;
  wire RAM_reg_3200_3263_0_2_n_2;
  wire RAM_reg_3200_3263_12_14_n_0;
  wire RAM_reg_3200_3263_12_14_n_1;
  wire RAM_reg_3200_3263_12_14_n_2;
  wire RAM_reg_3200_3263_15_15_n_0;
  wire RAM_reg_3200_3263_3_5_n_0;
  wire RAM_reg_3200_3263_3_5_n_1;
  wire RAM_reg_3200_3263_3_5_n_2;
  wire RAM_reg_3200_3263_6_8_n_0;
  wire RAM_reg_3200_3263_6_8_n_1;
  wire RAM_reg_3200_3263_6_8_n_2;
  wire RAM_reg_3200_3263_9_11_n_0;
  wire RAM_reg_3200_3263_9_11_n_1;
  wire RAM_reg_3200_3263_9_11_n_2;
  wire RAM_reg_320_383_0_2_n_0;
  wire RAM_reg_320_383_0_2_n_1;
  wire RAM_reg_320_383_0_2_n_2;
  wire RAM_reg_320_383_12_14_n_0;
  wire RAM_reg_320_383_12_14_n_1;
  wire RAM_reg_320_383_12_14_n_2;
  wire RAM_reg_320_383_15_15_n_0;
  wire RAM_reg_320_383_3_5_n_0;
  wire RAM_reg_320_383_3_5_n_1;
  wire RAM_reg_320_383_3_5_n_2;
  wire RAM_reg_320_383_6_8_n_0;
  wire RAM_reg_320_383_6_8_n_1;
  wire RAM_reg_320_383_6_8_n_2;
  wire RAM_reg_320_383_9_11_n_0;
  wire RAM_reg_320_383_9_11_n_1;
  wire RAM_reg_320_383_9_11_n_2;
  wire RAM_reg_3264_3327_0_2_n_0;
  wire RAM_reg_3264_3327_0_2_n_1;
  wire RAM_reg_3264_3327_0_2_n_2;
  wire RAM_reg_3264_3327_12_14_n_0;
  wire RAM_reg_3264_3327_12_14_n_1;
  wire RAM_reg_3264_3327_12_14_n_2;
  wire RAM_reg_3264_3327_15_15_n_0;
  wire RAM_reg_3264_3327_3_5_n_0;
  wire RAM_reg_3264_3327_3_5_n_1;
  wire RAM_reg_3264_3327_3_5_n_2;
  wire RAM_reg_3264_3327_6_8_n_0;
  wire RAM_reg_3264_3327_6_8_n_1;
  wire RAM_reg_3264_3327_6_8_n_2;
  wire RAM_reg_3264_3327_9_11_n_0;
  wire RAM_reg_3264_3327_9_11_n_1;
  wire RAM_reg_3264_3327_9_11_n_2;
  wire RAM_reg_3328_3391_0_2_n_0;
  wire RAM_reg_3328_3391_0_2_n_1;
  wire RAM_reg_3328_3391_0_2_n_2;
  wire RAM_reg_3328_3391_12_14_n_0;
  wire RAM_reg_3328_3391_12_14_n_1;
  wire RAM_reg_3328_3391_12_14_n_2;
  wire RAM_reg_3328_3391_15_15_n_0;
  wire RAM_reg_3328_3391_3_5_n_0;
  wire RAM_reg_3328_3391_3_5_n_1;
  wire RAM_reg_3328_3391_3_5_n_2;
  wire RAM_reg_3328_3391_6_8_n_0;
  wire RAM_reg_3328_3391_6_8_n_1;
  wire RAM_reg_3328_3391_6_8_n_2;
  wire RAM_reg_3328_3391_9_11_n_0;
  wire RAM_reg_3328_3391_9_11_n_1;
  wire RAM_reg_3328_3391_9_11_n_2;
  wire RAM_reg_3392_3455_0_2_n_0;
  wire RAM_reg_3392_3455_0_2_n_1;
  wire RAM_reg_3392_3455_0_2_n_2;
  wire RAM_reg_3392_3455_12_14_n_0;
  wire RAM_reg_3392_3455_12_14_n_1;
  wire RAM_reg_3392_3455_12_14_n_2;
  wire RAM_reg_3392_3455_15_15_n_0;
  wire RAM_reg_3392_3455_3_5_n_0;
  wire RAM_reg_3392_3455_3_5_n_1;
  wire RAM_reg_3392_3455_3_5_n_2;
  wire RAM_reg_3392_3455_6_8_n_0;
  wire RAM_reg_3392_3455_6_8_n_1;
  wire RAM_reg_3392_3455_6_8_n_2;
  wire RAM_reg_3392_3455_9_11_n_0;
  wire RAM_reg_3392_3455_9_11_n_1;
  wire RAM_reg_3392_3455_9_11_n_2;
  wire RAM_reg_3456_3519_0_2_n_0;
  wire RAM_reg_3456_3519_0_2_n_1;
  wire RAM_reg_3456_3519_0_2_n_2;
  wire RAM_reg_3456_3519_12_14_n_0;
  wire RAM_reg_3456_3519_12_14_n_1;
  wire RAM_reg_3456_3519_12_14_n_2;
  wire RAM_reg_3456_3519_15_15_n_0;
  wire RAM_reg_3456_3519_3_5_n_0;
  wire RAM_reg_3456_3519_3_5_n_1;
  wire RAM_reg_3456_3519_3_5_n_2;
  wire RAM_reg_3456_3519_6_8_n_0;
  wire RAM_reg_3456_3519_6_8_n_1;
  wire RAM_reg_3456_3519_6_8_n_2;
  wire RAM_reg_3456_3519_9_11_n_0;
  wire RAM_reg_3456_3519_9_11_n_1;
  wire RAM_reg_3456_3519_9_11_n_2;
  wire RAM_reg_3520_3583_0_2_n_0;
  wire RAM_reg_3520_3583_0_2_n_1;
  wire RAM_reg_3520_3583_0_2_n_2;
  wire RAM_reg_3520_3583_12_14_n_0;
  wire RAM_reg_3520_3583_12_14_n_1;
  wire RAM_reg_3520_3583_12_14_n_2;
  wire RAM_reg_3520_3583_15_15_n_0;
  wire RAM_reg_3520_3583_3_5_n_0;
  wire RAM_reg_3520_3583_3_5_n_1;
  wire RAM_reg_3520_3583_3_5_n_2;
  wire RAM_reg_3520_3583_6_8_n_0;
  wire RAM_reg_3520_3583_6_8_n_1;
  wire RAM_reg_3520_3583_6_8_n_2;
  wire RAM_reg_3520_3583_9_11_n_0;
  wire RAM_reg_3520_3583_9_11_n_1;
  wire RAM_reg_3520_3583_9_11_n_2;
  wire RAM_reg_3584_3647_0_2_n_0;
  wire RAM_reg_3584_3647_0_2_n_1;
  wire RAM_reg_3584_3647_0_2_n_2;
  wire RAM_reg_3584_3647_12_14_n_0;
  wire RAM_reg_3584_3647_12_14_n_1;
  wire RAM_reg_3584_3647_12_14_n_2;
  wire RAM_reg_3584_3647_15_15_n_0;
  wire RAM_reg_3584_3647_3_5_n_0;
  wire RAM_reg_3584_3647_3_5_n_1;
  wire RAM_reg_3584_3647_3_5_n_2;
  wire RAM_reg_3584_3647_6_8_n_0;
  wire RAM_reg_3584_3647_6_8_n_1;
  wire RAM_reg_3584_3647_6_8_n_2;
  wire RAM_reg_3584_3647_9_11_n_0;
  wire RAM_reg_3584_3647_9_11_n_1;
  wire RAM_reg_3584_3647_9_11_n_2;
  wire RAM_reg_3648_3711_0_2_n_0;
  wire RAM_reg_3648_3711_0_2_n_1;
  wire RAM_reg_3648_3711_0_2_n_2;
  wire RAM_reg_3648_3711_12_14_n_0;
  wire RAM_reg_3648_3711_12_14_n_1;
  wire RAM_reg_3648_3711_12_14_n_2;
  wire RAM_reg_3648_3711_15_15_n_0;
  wire RAM_reg_3648_3711_3_5_n_0;
  wire RAM_reg_3648_3711_3_5_n_1;
  wire RAM_reg_3648_3711_3_5_n_2;
  wire RAM_reg_3648_3711_6_8_n_0;
  wire RAM_reg_3648_3711_6_8_n_1;
  wire RAM_reg_3648_3711_6_8_n_2;
  wire RAM_reg_3648_3711_9_11_n_0;
  wire RAM_reg_3648_3711_9_11_n_1;
  wire RAM_reg_3648_3711_9_11_n_2;
  wire RAM_reg_3712_3775_0_2_n_0;
  wire RAM_reg_3712_3775_0_2_n_1;
  wire RAM_reg_3712_3775_0_2_n_2;
  wire RAM_reg_3712_3775_12_14_n_0;
  wire RAM_reg_3712_3775_12_14_n_1;
  wire RAM_reg_3712_3775_12_14_n_2;
  wire RAM_reg_3712_3775_15_15_n_0;
  wire RAM_reg_3712_3775_3_5_n_0;
  wire RAM_reg_3712_3775_3_5_n_1;
  wire RAM_reg_3712_3775_3_5_n_2;
  wire RAM_reg_3712_3775_6_8_n_0;
  wire RAM_reg_3712_3775_6_8_n_1;
  wire RAM_reg_3712_3775_6_8_n_2;
  wire RAM_reg_3712_3775_9_11_n_0;
  wire RAM_reg_3712_3775_9_11_n_1;
  wire RAM_reg_3712_3775_9_11_n_2;
  wire RAM_reg_3776_3839_0_2_n_0;
  wire RAM_reg_3776_3839_0_2_n_1;
  wire RAM_reg_3776_3839_0_2_n_2;
  wire RAM_reg_3776_3839_12_14_n_0;
  wire RAM_reg_3776_3839_12_14_n_1;
  wire RAM_reg_3776_3839_12_14_n_2;
  wire RAM_reg_3776_3839_15_15_n_0;
  wire RAM_reg_3776_3839_3_5_n_0;
  wire RAM_reg_3776_3839_3_5_n_1;
  wire RAM_reg_3776_3839_3_5_n_2;
  wire RAM_reg_3776_3839_6_8_n_0;
  wire RAM_reg_3776_3839_6_8_n_1;
  wire RAM_reg_3776_3839_6_8_n_2;
  wire RAM_reg_3776_3839_9_11_n_0;
  wire RAM_reg_3776_3839_9_11_n_1;
  wire RAM_reg_3776_3839_9_11_n_2;
  wire RAM_reg_3840_3903_0_2_n_0;
  wire RAM_reg_3840_3903_0_2_n_1;
  wire RAM_reg_3840_3903_0_2_n_2;
  wire RAM_reg_3840_3903_12_14_n_0;
  wire RAM_reg_3840_3903_12_14_n_1;
  wire RAM_reg_3840_3903_12_14_n_2;
  wire RAM_reg_3840_3903_15_15_n_0;
  wire RAM_reg_3840_3903_3_5_n_0;
  wire RAM_reg_3840_3903_3_5_n_1;
  wire RAM_reg_3840_3903_3_5_n_2;
  wire RAM_reg_3840_3903_6_8_n_0;
  wire RAM_reg_3840_3903_6_8_n_1;
  wire RAM_reg_3840_3903_6_8_n_2;
  wire RAM_reg_3840_3903_9_11_n_0;
  wire RAM_reg_3840_3903_9_11_n_1;
  wire RAM_reg_3840_3903_9_11_n_2;
  wire RAM_reg_384_447_0_2_n_0;
  wire RAM_reg_384_447_0_2_n_1;
  wire RAM_reg_384_447_0_2_n_2;
  wire RAM_reg_384_447_12_14_n_0;
  wire RAM_reg_384_447_12_14_n_1;
  wire RAM_reg_384_447_12_14_n_2;
  wire RAM_reg_384_447_15_15_n_0;
  wire RAM_reg_384_447_3_5_n_0;
  wire RAM_reg_384_447_3_5_n_1;
  wire RAM_reg_384_447_3_5_n_2;
  wire RAM_reg_384_447_6_8_n_0;
  wire RAM_reg_384_447_6_8_n_1;
  wire RAM_reg_384_447_6_8_n_2;
  wire RAM_reg_384_447_9_11_n_0;
  wire RAM_reg_384_447_9_11_n_1;
  wire RAM_reg_384_447_9_11_n_2;
  wire RAM_reg_3904_3967_0_2_n_0;
  wire RAM_reg_3904_3967_0_2_n_1;
  wire RAM_reg_3904_3967_0_2_n_2;
  wire RAM_reg_3904_3967_12_14_n_0;
  wire RAM_reg_3904_3967_12_14_n_1;
  wire RAM_reg_3904_3967_12_14_n_2;
  wire RAM_reg_3904_3967_15_15_n_0;
  wire RAM_reg_3904_3967_3_5_n_0;
  wire RAM_reg_3904_3967_3_5_n_1;
  wire RAM_reg_3904_3967_3_5_n_2;
  wire RAM_reg_3904_3967_6_8_n_0;
  wire RAM_reg_3904_3967_6_8_n_1;
  wire RAM_reg_3904_3967_6_8_n_2;
  wire RAM_reg_3904_3967_9_11_n_0;
  wire RAM_reg_3904_3967_9_11_n_1;
  wire RAM_reg_3904_3967_9_11_n_2;
  wire RAM_reg_3968_4031_0_2_n_0;
  wire RAM_reg_3968_4031_0_2_n_1;
  wire RAM_reg_3968_4031_0_2_n_2;
  wire RAM_reg_3968_4031_12_14_n_0;
  wire RAM_reg_3968_4031_12_14_n_1;
  wire RAM_reg_3968_4031_12_14_n_2;
  wire RAM_reg_3968_4031_15_15_n_0;
  wire RAM_reg_3968_4031_3_5_n_0;
  wire RAM_reg_3968_4031_3_5_n_1;
  wire RAM_reg_3968_4031_3_5_n_2;
  wire RAM_reg_3968_4031_6_8_n_0;
  wire RAM_reg_3968_4031_6_8_n_1;
  wire RAM_reg_3968_4031_6_8_n_2;
  wire RAM_reg_3968_4031_9_11_n_0;
  wire RAM_reg_3968_4031_9_11_n_1;
  wire RAM_reg_3968_4031_9_11_n_2;
  wire RAM_reg_4032_4095_0_2_n_0;
  wire RAM_reg_4032_4095_0_2_n_1;
  wire RAM_reg_4032_4095_0_2_n_2;
  wire RAM_reg_4032_4095_12_14_n_0;
  wire RAM_reg_4032_4095_12_14_n_1;
  wire RAM_reg_4032_4095_12_14_n_2;
  wire RAM_reg_4032_4095_15_15_n_0;
  wire RAM_reg_4032_4095_3_5_n_0;
  wire RAM_reg_4032_4095_3_5_n_1;
  wire RAM_reg_4032_4095_3_5_n_2;
  wire RAM_reg_4032_4095_6_8_n_0;
  wire RAM_reg_4032_4095_6_8_n_1;
  wire RAM_reg_4032_4095_6_8_n_2;
  wire RAM_reg_4032_4095_9_11_n_0;
  wire RAM_reg_4032_4095_9_11_n_1;
  wire RAM_reg_4032_4095_9_11_n_2;
  wire RAM_reg_448_511_0_2_n_0;
  wire RAM_reg_448_511_0_2_n_1;
  wire RAM_reg_448_511_0_2_n_2;
  wire RAM_reg_448_511_12_14_n_0;
  wire RAM_reg_448_511_12_14_n_1;
  wire RAM_reg_448_511_12_14_n_2;
  wire RAM_reg_448_511_15_15_n_0;
  wire RAM_reg_448_511_3_5_n_0;
  wire RAM_reg_448_511_3_5_n_1;
  wire RAM_reg_448_511_3_5_n_2;
  wire RAM_reg_448_511_6_8_n_0;
  wire RAM_reg_448_511_6_8_n_1;
  wire RAM_reg_448_511_6_8_n_2;
  wire RAM_reg_448_511_9_11_n_0;
  wire RAM_reg_448_511_9_11_n_1;
  wire RAM_reg_448_511_9_11_n_2;
  wire RAM_reg_512_575_0_2_n_0;
  wire RAM_reg_512_575_0_2_n_1;
  wire RAM_reg_512_575_0_2_n_2;
  wire RAM_reg_512_575_12_14_n_0;
  wire RAM_reg_512_575_12_14_n_1;
  wire RAM_reg_512_575_12_14_n_2;
  wire RAM_reg_512_575_15_15_n_0;
  wire RAM_reg_512_575_3_5_n_0;
  wire RAM_reg_512_575_3_5_n_1;
  wire RAM_reg_512_575_3_5_n_2;
  wire RAM_reg_512_575_6_8_n_0;
  wire RAM_reg_512_575_6_8_n_1;
  wire RAM_reg_512_575_6_8_n_2;
  wire RAM_reg_512_575_9_11_n_0;
  wire RAM_reg_512_575_9_11_n_1;
  wire RAM_reg_512_575_9_11_n_2;
  wire RAM_reg_576_639_0_2_n_0;
  wire RAM_reg_576_639_0_2_n_1;
  wire RAM_reg_576_639_0_2_n_2;
  wire RAM_reg_576_639_12_14_n_0;
  wire RAM_reg_576_639_12_14_n_1;
  wire RAM_reg_576_639_12_14_n_2;
  wire RAM_reg_576_639_15_15_n_0;
  wire RAM_reg_576_639_3_5_n_0;
  wire RAM_reg_576_639_3_5_n_1;
  wire RAM_reg_576_639_3_5_n_2;
  wire RAM_reg_576_639_6_8_n_0;
  wire RAM_reg_576_639_6_8_n_1;
  wire RAM_reg_576_639_6_8_n_2;
  wire RAM_reg_576_639_9_11_n_0;
  wire RAM_reg_576_639_9_11_n_1;
  wire RAM_reg_576_639_9_11_n_2;
  wire RAM_reg_640_703_0_2_n_0;
  wire RAM_reg_640_703_0_2_n_1;
  wire RAM_reg_640_703_0_2_n_2;
  wire RAM_reg_640_703_12_14_n_0;
  wire RAM_reg_640_703_12_14_n_1;
  wire RAM_reg_640_703_12_14_n_2;
  wire RAM_reg_640_703_15_15_n_0;
  wire RAM_reg_640_703_3_5_n_0;
  wire RAM_reg_640_703_3_5_n_1;
  wire RAM_reg_640_703_3_5_n_2;
  wire RAM_reg_640_703_6_8_n_0;
  wire RAM_reg_640_703_6_8_n_1;
  wire RAM_reg_640_703_6_8_n_2;
  wire RAM_reg_640_703_9_11_n_0;
  wire RAM_reg_640_703_9_11_n_1;
  wire RAM_reg_640_703_9_11_n_2;
  wire RAM_reg_64_127_0_2_n_0;
  wire RAM_reg_64_127_0_2_n_1;
  wire RAM_reg_64_127_0_2_n_2;
  wire RAM_reg_64_127_12_14_n_0;
  wire RAM_reg_64_127_12_14_n_1;
  wire RAM_reg_64_127_12_14_n_2;
  wire RAM_reg_64_127_15_15_n_0;
  wire RAM_reg_64_127_3_5_n_0;
  wire RAM_reg_64_127_3_5_n_1;
  wire RAM_reg_64_127_3_5_n_2;
  wire RAM_reg_64_127_6_8_n_0;
  wire RAM_reg_64_127_6_8_n_1;
  wire RAM_reg_64_127_6_8_n_2;
  wire RAM_reg_64_127_9_11_n_0;
  wire RAM_reg_64_127_9_11_n_1;
  wire RAM_reg_64_127_9_11_n_2;
  wire RAM_reg_704_767_0_2_n_0;
  wire RAM_reg_704_767_0_2_n_1;
  wire RAM_reg_704_767_0_2_n_2;
  wire RAM_reg_704_767_12_14_n_0;
  wire RAM_reg_704_767_12_14_n_1;
  wire RAM_reg_704_767_12_14_n_2;
  wire RAM_reg_704_767_15_15_n_0;
  wire RAM_reg_704_767_3_5_n_0;
  wire RAM_reg_704_767_3_5_n_1;
  wire RAM_reg_704_767_3_5_n_2;
  wire RAM_reg_704_767_6_8_n_0;
  wire RAM_reg_704_767_6_8_n_1;
  wire RAM_reg_704_767_6_8_n_2;
  wire RAM_reg_704_767_9_11_n_0;
  wire RAM_reg_704_767_9_11_n_1;
  wire RAM_reg_704_767_9_11_n_2;
  wire RAM_reg_768_831_0_2_n_0;
  wire RAM_reg_768_831_0_2_n_1;
  wire RAM_reg_768_831_0_2_n_2;
  wire RAM_reg_768_831_12_14_n_0;
  wire RAM_reg_768_831_12_14_n_1;
  wire RAM_reg_768_831_12_14_n_2;
  wire RAM_reg_768_831_15_15_n_0;
  wire RAM_reg_768_831_3_5_n_0;
  wire RAM_reg_768_831_3_5_n_1;
  wire RAM_reg_768_831_3_5_n_2;
  wire RAM_reg_768_831_6_8_n_0;
  wire RAM_reg_768_831_6_8_n_1;
  wire RAM_reg_768_831_6_8_n_2;
  wire RAM_reg_768_831_9_11_n_0;
  wire RAM_reg_768_831_9_11_n_1;
  wire RAM_reg_768_831_9_11_n_2;
  wire RAM_reg_832_895_0_2_n_0;
  wire RAM_reg_832_895_0_2_n_1;
  wire RAM_reg_832_895_0_2_n_2;
  wire RAM_reg_832_895_12_14_n_0;
  wire RAM_reg_832_895_12_14_n_1;
  wire RAM_reg_832_895_12_14_n_2;
  wire RAM_reg_832_895_15_15_n_0;
  wire RAM_reg_832_895_3_5_n_0;
  wire RAM_reg_832_895_3_5_n_1;
  wire RAM_reg_832_895_3_5_n_2;
  wire RAM_reg_832_895_6_8_n_0;
  wire RAM_reg_832_895_6_8_n_1;
  wire RAM_reg_832_895_6_8_n_2;
  wire RAM_reg_832_895_9_11_n_0;
  wire RAM_reg_832_895_9_11_n_1;
  wire RAM_reg_832_895_9_11_n_2;
  wire RAM_reg_896_959_0_2_n_0;
  wire RAM_reg_896_959_0_2_n_1;
  wire RAM_reg_896_959_0_2_n_2;
  wire RAM_reg_896_959_12_14_n_0;
  wire RAM_reg_896_959_12_14_n_1;
  wire RAM_reg_896_959_12_14_n_2;
  wire RAM_reg_896_959_15_15_n_0;
  wire RAM_reg_896_959_3_5_n_0;
  wire RAM_reg_896_959_3_5_n_1;
  wire RAM_reg_896_959_3_5_n_2;
  wire RAM_reg_896_959_6_8_n_0;
  wire RAM_reg_896_959_6_8_n_1;
  wire RAM_reg_896_959_6_8_n_2;
  wire RAM_reg_896_959_9_11_n_0;
  wire RAM_reg_896_959_9_11_n_1;
  wire RAM_reg_896_959_9_11_n_2;
  wire RAM_reg_960_1023_0_2_n_0;
  wire RAM_reg_960_1023_0_2_n_1;
  wire RAM_reg_960_1023_0_2_n_2;
  wire RAM_reg_960_1023_12_14_n_0;
  wire RAM_reg_960_1023_12_14_n_1;
  wire RAM_reg_960_1023_12_14_n_2;
  wire RAM_reg_960_1023_15_15_n_0;
  wire RAM_reg_960_1023_3_5_n_0;
  wire RAM_reg_960_1023_3_5_n_1;
  wire RAM_reg_960_1023_3_5_n_2;
  wire RAM_reg_960_1023_6_8_n_0;
  wire RAM_reg_960_1023_6_8_n_1;
  wire RAM_reg_960_1023_6_8_n_2;
  wire RAM_reg_960_1023_9_11_n_0;
  wire RAM_reg_960_1023_9_11_n_1;
  wire RAM_reg_960_1023_9_11_n_2;
  wire [15:0]din;
  wire [15:0]dout;
  wire [11:0]\gc0.count_d1_reg[11] ;
  wire [5:0]\gc0.count_d1_reg[5]_rep__0 ;
  wire [5:0]\gc0.count_d1_reg[5]_rep__1 ;
  wire [5:0]\gc0.count_d1_reg[5]_rep__2 ;
  wire [5:0]\gc0.count_d1_reg[5]_rep__3 ;
  wire [5:0]\gc0.count_d1_reg[5]_rep__4 ;
  wire [5:0]\gc0.count_d1_reg[5]_rep__5 ;
  wire [5:0]\gc0.count_d1_reg[5]_rep__6 ;
  wire [5:0]\gc0.count_d1_reg[5]_rep__7 ;
  wire [5:0]\gc0.count_d1_reg[5]_rep__8 ;
  wire \gc0.count_d1_reg[6]_rep ;
  wire \gc0.count_d1_reg[7]_rep ;
  wire \gic0.gc0.count_d2_reg[0]_rep__3 ;
  wire \gic0.gc0.count_d2_reg[10] ;
  wire \gic0.gc0.count_d2_reg[10]_0 ;
  wire \gic0.gc0.count_d2_reg[10]_1 ;
  wire \gic0.gc0.count_d2_reg[10]_2 ;
  wire \gic0.gc0.count_d2_reg[1]_rep__3 ;
  wire \gic0.gc0.count_d2_reg[2]_rep__3 ;
  wire \gic0.gc0.count_d2_reg[3]_rep__3 ;
  wire \gic0.gc0.count_d2_reg[4]_rep__3 ;
  wire [5:0]\gic0.gc0.count_d2_reg[5]_rep__0 ;
  wire [5:0]\gic0.gc0.count_d2_reg[5]_rep__1 ;
  wire [5:0]\gic0.gc0.count_d2_reg[5]_rep__2 ;
  wire \gic0.gc0.count_d2_reg[5]_rep__3 ;
  wire \gic0.gc0.count_d2_reg[6] ;
  wire \gic0.gc0.count_d2_reg[6]_0 ;
  wire \gic0.gc0.count_d2_reg[6]_1 ;
  wire \gic0.gc0.count_d2_reg[6]_10 ;
  wire \gic0.gc0.count_d2_reg[6]_11 ;
  wire \gic0.gc0.count_d2_reg[6]_12 ;
  wire \gic0.gc0.count_d2_reg[6]_13 ;
  wire \gic0.gc0.count_d2_reg[6]_14 ;
  wire \gic0.gc0.count_d2_reg[6]_15 ;
  wire \gic0.gc0.count_d2_reg[6]_16 ;
  wire \gic0.gc0.count_d2_reg[6]_17 ;
  wire \gic0.gc0.count_d2_reg[6]_18 ;
  wire \gic0.gc0.count_d2_reg[6]_19 ;
  wire \gic0.gc0.count_d2_reg[6]_2 ;
  wire \gic0.gc0.count_d2_reg[6]_3 ;
  wire \gic0.gc0.count_d2_reg[6]_4 ;
  wire \gic0.gc0.count_d2_reg[6]_5 ;
  wire \gic0.gc0.count_d2_reg[6]_6 ;
  wire \gic0.gc0.count_d2_reg[6]_7 ;
  wire \gic0.gc0.count_d2_reg[6]_8 ;
  wire \gic0.gc0.count_d2_reg[6]_9 ;
  wire \gic0.gc0.count_d2_reg[7] ;
  wire \gic0.gc0.count_d2_reg[7]_0 ;
  wire \gic0.gc0.count_d2_reg[7]_1 ;
  wire \gic0.gc0.count_d2_reg[7]_2 ;
  wire \gic0.gc0.count_d2_reg[7]_3 ;
  wire \gic0.gc0.count_d2_reg[8] ;
  wire \gic0.gc0.count_d2_reg[8]_0 ;
  wire \gic0.gc0.count_d2_reg[8]_1 ;
  wire \gic0.gc0.count_d2_reg[8]_10 ;
  wire \gic0.gc0.count_d2_reg[8]_11 ;
  wire \gic0.gc0.count_d2_reg[8]_12 ;
  wire \gic0.gc0.count_d2_reg[8]_13 ;
  wire \gic0.gc0.count_d2_reg[8]_2 ;
  wire \gic0.gc0.count_d2_reg[8]_3 ;
  wire \gic0.gc0.count_d2_reg[8]_4 ;
  wire \gic0.gc0.count_d2_reg[8]_5 ;
  wire \gic0.gc0.count_d2_reg[8]_6 ;
  wire \gic0.gc0.count_d2_reg[8]_7 ;
  wire \gic0.gc0.count_d2_reg[8]_8 ;
  wire \gic0.gc0.count_d2_reg[8]_9 ;
  wire \gic0.gc0.count_d2_reg[9] ;
  wire \gic0.gc0.count_d2_reg[9]_0 ;
  wire \gic0.gc0.count_d2_reg[9]_1 ;
  wire \gic0.gc0.count_d2_reg[9]_10 ;
  wire \gic0.gc0.count_d2_reg[9]_11 ;
  wire \gic0.gc0.count_d2_reg[9]_12 ;
  wire \gic0.gc0.count_d2_reg[9]_13 ;
  wire \gic0.gc0.count_d2_reg[9]_14 ;
  wire \gic0.gc0.count_d2_reg[9]_15 ;
  wire \gic0.gc0.count_d2_reg[9]_16 ;
  wire \gic0.gc0.count_d2_reg[9]_17 ;
  wire \gic0.gc0.count_d2_reg[9]_2 ;
  wire \gic0.gc0.count_d2_reg[9]_3 ;
  wire \gic0.gc0.count_d2_reg[9]_4 ;
  wire \gic0.gc0.count_d2_reg[9]_5 ;
  wire \gic0.gc0.count_d2_reg[9]_6 ;
  wire \gic0.gc0.count_d2_reg[9]_7 ;
  wire \gic0.gc0.count_d2_reg[9]_8 ;
  wire \gic0.gc0.count_d2_reg[9]_9 ;
  wire \gpr1.dout_i[0]_i_14_n_0 ;
  wire \gpr1.dout_i[0]_i_15_n_0 ;
  wire \gpr1.dout_i[0]_i_16_n_0 ;
  wire \gpr1.dout_i[0]_i_17_n_0 ;
  wire \gpr1.dout_i[0]_i_18_n_0 ;
  wire \gpr1.dout_i[0]_i_19_n_0 ;
  wire \gpr1.dout_i[0]_i_20_n_0 ;
  wire \gpr1.dout_i[0]_i_21_n_0 ;
  wire \gpr1.dout_i[0]_i_22_n_0 ;
  wire \gpr1.dout_i[0]_i_23_n_0 ;
  wire \gpr1.dout_i[0]_i_24_n_0 ;
  wire \gpr1.dout_i[0]_i_25_n_0 ;
  wire \gpr1.dout_i[0]_i_26_n_0 ;
  wire \gpr1.dout_i[0]_i_27_n_0 ;
  wire \gpr1.dout_i[0]_i_28_n_0 ;
  wire \gpr1.dout_i[0]_i_29_n_0 ;
  wire \gpr1.dout_i[10]_i_14_n_0 ;
  wire \gpr1.dout_i[10]_i_15_n_0 ;
  wire \gpr1.dout_i[10]_i_16_n_0 ;
  wire \gpr1.dout_i[10]_i_17_n_0 ;
  wire \gpr1.dout_i[10]_i_18_n_0 ;
  wire \gpr1.dout_i[10]_i_19_n_0 ;
  wire \gpr1.dout_i[10]_i_20_n_0 ;
  wire \gpr1.dout_i[10]_i_21_n_0 ;
  wire \gpr1.dout_i[10]_i_22_n_0 ;
  wire \gpr1.dout_i[10]_i_23_n_0 ;
  wire \gpr1.dout_i[10]_i_24_n_0 ;
  wire \gpr1.dout_i[10]_i_25_n_0 ;
  wire \gpr1.dout_i[10]_i_26_n_0 ;
  wire \gpr1.dout_i[10]_i_27_n_0 ;
  wire \gpr1.dout_i[10]_i_28_n_0 ;
  wire \gpr1.dout_i[10]_i_29_n_0 ;
  wire \gpr1.dout_i[11]_i_14_n_0 ;
  wire \gpr1.dout_i[11]_i_15_n_0 ;
  wire \gpr1.dout_i[11]_i_16_n_0 ;
  wire \gpr1.dout_i[11]_i_17_n_0 ;
  wire \gpr1.dout_i[11]_i_18_n_0 ;
  wire \gpr1.dout_i[11]_i_19_n_0 ;
  wire \gpr1.dout_i[11]_i_20_n_0 ;
  wire \gpr1.dout_i[11]_i_21_n_0 ;
  wire \gpr1.dout_i[11]_i_22_n_0 ;
  wire \gpr1.dout_i[11]_i_23_n_0 ;
  wire \gpr1.dout_i[11]_i_24_n_0 ;
  wire \gpr1.dout_i[11]_i_25_n_0 ;
  wire \gpr1.dout_i[11]_i_26_n_0 ;
  wire \gpr1.dout_i[11]_i_27_n_0 ;
  wire \gpr1.dout_i[11]_i_28_n_0 ;
  wire \gpr1.dout_i[11]_i_29_n_0 ;
  wire \gpr1.dout_i[12]_i_14_n_0 ;
  wire \gpr1.dout_i[12]_i_15_n_0 ;
  wire \gpr1.dout_i[12]_i_16_n_0 ;
  wire \gpr1.dout_i[12]_i_17_n_0 ;
  wire \gpr1.dout_i[12]_i_18_n_0 ;
  wire \gpr1.dout_i[12]_i_19_n_0 ;
  wire \gpr1.dout_i[12]_i_20_n_0 ;
  wire \gpr1.dout_i[12]_i_21_n_0 ;
  wire \gpr1.dout_i[12]_i_22_n_0 ;
  wire \gpr1.dout_i[12]_i_23_n_0 ;
  wire \gpr1.dout_i[12]_i_24_n_0 ;
  wire \gpr1.dout_i[12]_i_25_n_0 ;
  wire \gpr1.dout_i[12]_i_26_n_0 ;
  wire \gpr1.dout_i[12]_i_27_n_0 ;
  wire \gpr1.dout_i[12]_i_28_n_0 ;
  wire \gpr1.dout_i[12]_i_29_n_0 ;
  wire \gpr1.dout_i[13]_i_14_n_0 ;
  wire \gpr1.dout_i[13]_i_15_n_0 ;
  wire \gpr1.dout_i[13]_i_16_n_0 ;
  wire \gpr1.dout_i[13]_i_17_n_0 ;
  wire \gpr1.dout_i[13]_i_18_n_0 ;
  wire \gpr1.dout_i[13]_i_19_n_0 ;
  wire \gpr1.dout_i[13]_i_20_n_0 ;
  wire \gpr1.dout_i[13]_i_21_n_0 ;
  wire \gpr1.dout_i[13]_i_22_n_0 ;
  wire \gpr1.dout_i[13]_i_23_n_0 ;
  wire \gpr1.dout_i[13]_i_24_n_0 ;
  wire \gpr1.dout_i[13]_i_25_n_0 ;
  wire \gpr1.dout_i[13]_i_26_n_0 ;
  wire \gpr1.dout_i[13]_i_27_n_0 ;
  wire \gpr1.dout_i[13]_i_28_n_0 ;
  wire \gpr1.dout_i[13]_i_29_n_0 ;
  wire \gpr1.dout_i[14]_i_14_n_0 ;
  wire \gpr1.dout_i[14]_i_15_n_0 ;
  wire \gpr1.dout_i[14]_i_16_n_0 ;
  wire \gpr1.dout_i[14]_i_17_n_0 ;
  wire \gpr1.dout_i[14]_i_18_n_0 ;
  wire \gpr1.dout_i[14]_i_19_n_0 ;
  wire \gpr1.dout_i[14]_i_20_n_0 ;
  wire \gpr1.dout_i[14]_i_21_n_0 ;
  wire \gpr1.dout_i[14]_i_22_n_0 ;
  wire \gpr1.dout_i[14]_i_23_n_0 ;
  wire \gpr1.dout_i[14]_i_24_n_0 ;
  wire \gpr1.dout_i[14]_i_25_n_0 ;
  wire \gpr1.dout_i[14]_i_26_n_0 ;
  wire \gpr1.dout_i[14]_i_27_n_0 ;
  wire \gpr1.dout_i[14]_i_28_n_0 ;
  wire \gpr1.dout_i[14]_i_29_n_0 ;
  wire \gpr1.dout_i[15]_i_15_n_0 ;
  wire \gpr1.dout_i[15]_i_16_n_0 ;
  wire \gpr1.dout_i[15]_i_17_n_0 ;
  wire \gpr1.dout_i[15]_i_18_n_0 ;
  wire \gpr1.dout_i[15]_i_19_n_0 ;
  wire \gpr1.dout_i[15]_i_20_n_0 ;
  wire \gpr1.dout_i[15]_i_21_n_0 ;
  wire \gpr1.dout_i[15]_i_22_n_0 ;
  wire \gpr1.dout_i[15]_i_23_n_0 ;
  wire \gpr1.dout_i[15]_i_24_n_0 ;
  wire \gpr1.dout_i[15]_i_25_n_0 ;
  wire \gpr1.dout_i[15]_i_26_n_0 ;
  wire \gpr1.dout_i[15]_i_27_n_0 ;
  wire \gpr1.dout_i[15]_i_28_n_0 ;
  wire \gpr1.dout_i[15]_i_29_n_0 ;
  wire \gpr1.dout_i[15]_i_30_n_0 ;
  wire \gpr1.dout_i[1]_i_14_n_0 ;
  wire \gpr1.dout_i[1]_i_15_n_0 ;
  wire \gpr1.dout_i[1]_i_16_n_0 ;
  wire \gpr1.dout_i[1]_i_17_n_0 ;
  wire \gpr1.dout_i[1]_i_18_n_0 ;
  wire \gpr1.dout_i[1]_i_19_n_0 ;
  wire \gpr1.dout_i[1]_i_20_n_0 ;
  wire \gpr1.dout_i[1]_i_21_n_0 ;
  wire \gpr1.dout_i[1]_i_22_n_0 ;
  wire \gpr1.dout_i[1]_i_23_n_0 ;
  wire \gpr1.dout_i[1]_i_24_n_0 ;
  wire \gpr1.dout_i[1]_i_25_n_0 ;
  wire \gpr1.dout_i[1]_i_26_n_0 ;
  wire \gpr1.dout_i[1]_i_27_n_0 ;
  wire \gpr1.dout_i[1]_i_28_n_0 ;
  wire \gpr1.dout_i[1]_i_29_n_0 ;
  wire \gpr1.dout_i[2]_i_14_n_0 ;
  wire \gpr1.dout_i[2]_i_15_n_0 ;
  wire \gpr1.dout_i[2]_i_16_n_0 ;
  wire \gpr1.dout_i[2]_i_17_n_0 ;
  wire \gpr1.dout_i[2]_i_18_n_0 ;
  wire \gpr1.dout_i[2]_i_19_n_0 ;
  wire \gpr1.dout_i[2]_i_20_n_0 ;
  wire \gpr1.dout_i[2]_i_21_n_0 ;
  wire \gpr1.dout_i[2]_i_22_n_0 ;
  wire \gpr1.dout_i[2]_i_23_n_0 ;
  wire \gpr1.dout_i[2]_i_24_n_0 ;
  wire \gpr1.dout_i[2]_i_25_n_0 ;
  wire \gpr1.dout_i[2]_i_26_n_0 ;
  wire \gpr1.dout_i[2]_i_27_n_0 ;
  wire \gpr1.dout_i[2]_i_28_n_0 ;
  wire \gpr1.dout_i[2]_i_29_n_0 ;
  wire \gpr1.dout_i[3]_i_14_n_0 ;
  wire \gpr1.dout_i[3]_i_15_n_0 ;
  wire \gpr1.dout_i[3]_i_16_n_0 ;
  wire \gpr1.dout_i[3]_i_17_n_0 ;
  wire \gpr1.dout_i[3]_i_18_n_0 ;
  wire \gpr1.dout_i[3]_i_19_n_0 ;
  wire \gpr1.dout_i[3]_i_20_n_0 ;
  wire \gpr1.dout_i[3]_i_21_n_0 ;
  wire \gpr1.dout_i[3]_i_22_n_0 ;
  wire \gpr1.dout_i[3]_i_23_n_0 ;
  wire \gpr1.dout_i[3]_i_24_n_0 ;
  wire \gpr1.dout_i[3]_i_25_n_0 ;
  wire \gpr1.dout_i[3]_i_26_n_0 ;
  wire \gpr1.dout_i[3]_i_27_n_0 ;
  wire \gpr1.dout_i[3]_i_28_n_0 ;
  wire \gpr1.dout_i[3]_i_29_n_0 ;
  wire \gpr1.dout_i[4]_i_14_n_0 ;
  wire \gpr1.dout_i[4]_i_15_n_0 ;
  wire \gpr1.dout_i[4]_i_16_n_0 ;
  wire \gpr1.dout_i[4]_i_17_n_0 ;
  wire \gpr1.dout_i[4]_i_18_n_0 ;
  wire \gpr1.dout_i[4]_i_19_n_0 ;
  wire \gpr1.dout_i[4]_i_20_n_0 ;
  wire \gpr1.dout_i[4]_i_21_n_0 ;
  wire \gpr1.dout_i[4]_i_22_n_0 ;
  wire \gpr1.dout_i[4]_i_23_n_0 ;
  wire \gpr1.dout_i[4]_i_24_n_0 ;
  wire \gpr1.dout_i[4]_i_25_n_0 ;
  wire \gpr1.dout_i[4]_i_26_n_0 ;
  wire \gpr1.dout_i[4]_i_27_n_0 ;
  wire \gpr1.dout_i[4]_i_28_n_0 ;
  wire \gpr1.dout_i[4]_i_29_n_0 ;
  wire \gpr1.dout_i[5]_i_14_n_0 ;
  wire \gpr1.dout_i[5]_i_15_n_0 ;
  wire \gpr1.dout_i[5]_i_16_n_0 ;
  wire \gpr1.dout_i[5]_i_17_n_0 ;
  wire \gpr1.dout_i[5]_i_18_n_0 ;
  wire \gpr1.dout_i[5]_i_19_n_0 ;
  wire \gpr1.dout_i[5]_i_20_n_0 ;
  wire \gpr1.dout_i[5]_i_21_n_0 ;
  wire \gpr1.dout_i[5]_i_22_n_0 ;
  wire \gpr1.dout_i[5]_i_23_n_0 ;
  wire \gpr1.dout_i[5]_i_24_n_0 ;
  wire \gpr1.dout_i[5]_i_25_n_0 ;
  wire \gpr1.dout_i[5]_i_26_n_0 ;
  wire \gpr1.dout_i[5]_i_27_n_0 ;
  wire \gpr1.dout_i[5]_i_28_n_0 ;
  wire \gpr1.dout_i[5]_i_29_n_0 ;
  wire \gpr1.dout_i[6]_i_14_n_0 ;
  wire \gpr1.dout_i[6]_i_15_n_0 ;
  wire \gpr1.dout_i[6]_i_16_n_0 ;
  wire \gpr1.dout_i[6]_i_17_n_0 ;
  wire \gpr1.dout_i[6]_i_18_n_0 ;
  wire \gpr1.dout_i[6]_i_19_n_0 ;
  wire \gpr1.dout_i[6]_i_20_n_0 ;
  wire \gpr1.dout_i[6]_i_21_n_0 ;
  wire \gpr1.dout_i[6]_i_22_n_0 ;
  wire \gpr1.dout_i[6]_i_23_n_0 ;
  wire \gpr1.dout_i[6]_i_24_n_0 ;
  wire \gpr1.dout_i[6]_i_25_n_0 ;
  wire \gpr1.dout_i[6]_i_26_n_0 ;
  wire \gpr1.dout_i[6]_i_27_n_0 ;
  wire \gpr1.dout_i[6]_i_28_n_0 ;
  wire \gpr1.dout_i[6]_i_29_n_0 ;
  wire \gpr1.dout_i[7]_i_14_n_0 ;
  wire \gpr1.dout_i[7]_i_15_n_0 ;
  wire \gpr1.dout_i[7]_i_16_n_0 ;
  wire \gpr1.dout_i[7]_i_17_n_0 ;
  wire \gpr1.dout_i[7]_i_18_n_0 ;
  wire \gpr1.dout_i[7]_i_19_n_0 ;
  wire \gpr1.dout_i[7]_i_20_n_0 ;
  wire \gpr1.dout_i[7]_i_21_n_0 ;
  wire \gpr1.dout_i[7]_i_22_n_0 ;
  wire \gpr1.dout_i[7]_i_23_n_0 ;
  wire \gpr1.dout_i[7]_i_24_n_0 ;
  wire \gpr1.dout_i[7]_i_25_n_0 ;
  wire \gpr1.dout_i[7]_i_26_n_0 ;
  wire \gpr1.dout_i[7]_i_27_n_0 ;
  wire \gpr1.dout_i[7]_i_28_n_0 ;
  wire \gpr1.dout_i[7]_i_29_n_0 ;
  wire \gpr1.dout_i[8]_i_14_n_0 ;
  wire \gpr1.dout_i[8]_i_15_n_0 ;
  wire \gpr1.dout_i[8]_i_16_n_0 ;
  wire \gpr1.dout_i[8]_i_17_n_0 ;
  wire \gpr1.dout_i[8]_i_18_n_0 ;
  wire \gpr1.dout_i[8]_i_19_n_0 ;
  wire \gpr1.dout_i[8]_i_20_n_0 ;
  wire \gpr1.dout_i[8]_i_21_n_0 ;
  wire \gpr1.dout_i[8]_i_22_n_0 ;
  wire \gpr1.dout_i[8]_i_23_n_0 ;
  wire \gpr1.dout_i[8]_i_24_n_0 ;
  wire \gpr1.dout_i[8]_i_25_n_0 ;
  wire \gpr1.dout_i[8]_i_26_n_0 ;
  wire \gpr1.dout_i[8]_i_27_n_0 ;
  wire \gpr1.dout_i[8]_i_28_n_0 ;
  wire \gpr1.dout_i[8]_i_29_n_0 ;
  wire \gpr1.dout_i[9]_i_14_n_0 ;
  wire \gpr1.dout_i[9]_i_15_n_0 ;
  wire \gpr1.dout_i[9]_i_16_n_0 ;
  wire \gpr1.dout_i[9]_i_17_n_0 ;
  wire \gpr1.dout_i[9]_i_18_n_0 ;
  wire \gpr1.dout_i[9]_i_19_n_0 ;
  wire \gpr1.dout_i[9]_i_20_n_0 ;
  wire \gpr1.dout_i[9]_i_21_n_0 ;
  wire \gpr1.dout_i[9]_i_22_n_0 ;
  wire \gpr1.dout_i[9]_i_23_n_0 ;
  wire \gpr1.dout_i[9]_i_24_n_0 ;
  wire \gpr1.dout_i[9]_i_25_n_0 ;
  wire \gpr1.dout_i[9]_i_26_n_0 ;
  wire \gpr1.dout_i[9]_i_27_n_0 ;
  wire \gpr1.dout_i[9]_i_28_n_0 ;
  wire \gpr1.dout_i[9]_i_29_n_0 ;
  wire \gpr1.dout_i_reg[0]_i_10_n_0 ;
  wire \gpr1.dout_i_reg[0]_i_11_n_0 ;
  wire \gpr1.dout_i_reg[0]_i_12_n_0 ;
  wire \gpr1.dout_i_reg[0]_i_13_n_0 ;
  wire \gpr1.dout_i_reg[0]_i_2_n_0 ;
  wire \gpr1.dout_i_reg[0]_i_3_n_0 ;
  wire \gpr1.dout_i_reg[0]_i_4_n_0 ;
  wire \gpr1.dout_i_reg[0]_i_5_n_0 ;
  wire \gpr1.dout_i_reg[0]_i_6_n_0 ;
  wire \gpr1.dout_i_reg[0]_i_7_n_0 ;
  wire \gpr1.dout_i_reg[0]_i_8_n_0 ;
  wire \gpr1.dout_i_reg[0]_i_9_n_0 ;
  wire \gpr1.dout_i_reg[10]_i_10_n_0 ;
  wire \gpr1.dout_i_reg[10]_i_11_n_0 ;
  wire \gpr1.dout_i_reg[10]_i_12_n_0 ;
  wire \gpr1.dout_i_reg[10]_i_13_n_0 ;
  wire \gpr1.dout_i_reg[10]_i_2_n_0 ;
  wire \gpr1.dout_i_reg[10]_i_3_n_0 ;
  wire \gpr1.dout_i_reg[10]_i_4_n_0 ;
  wire \gpr1.dout_i_reg[10]_i_5_n_0 ;
  wire \gpr1.dout_i_reg[10]_i_6_n_0 ;
  wire \gpr1.dout_i_reg[10]_i_7_n_0 ;
  wire \gpr1.dout_i_reg[10]_i_8_n_0 ;
  wire \gpr1.dout_i_reg[10]_i_9_n_0 ;
  wire \gpr1.dout_i_reg[11]_i_10_n_0 ;
  wire \gpr1.dout_i_reg[11]_i_11_n_0 ;
  wire \gpr1.dout_i_reg[11]_i_12_n_0 ;
  wire \gpr1.dout_i_reg[11]_i_13_n_0 ;
  wire \gpr1.dout_i_reg[11]_i_2_n_0 ;
  wire \gpr1.dout_i_reg[11]_i_3_n_0 ;
  wire \gpr1.dout_i_reg[11]_i_4_n_0 ;
  wire \gpr1.dout_i_reg[11]_i_5_n_0 ;
  wire \gpr1.dout_i_reg[11]_i_6_n_0 ;
  wire \gpr1.dout_i_reg[11]_i_7_n_0 ;
  wire \gpr1.dout_i_reg[11]_i_8_n_0 ;
  wire \gpr1.dout_i_reg[11]_i_9_n_0 ;
  wire \gpr1.dout_i_reg[12]_i_10_n_0 ;
  wire \gpr1.dout_i_reg[12]_i_11_n_0 ;
  wire \gpr1.dout_i_reg[12]_i_12_n_0 ;
  wire \gpr1.dout_i_reg[12]_i_13_n_0 ;
  wire \gpr1.dout_i_reg[12]_i_2_n_0 ;
  wire \gpr1.dout_i_reg[12]_i_3_n_0 ;
  wire \gpr1.dout_i_reg[12]_i_4_n_0 ;
  wire \gpr1.dout_i_reg[12]_i_5_n_0 ;
  wire \gpr1.dout_i_reg[12]_i_6_n_0 ;
  wire \gpr1.dout_i_reg[12]_i_7_n_0 ;
  wire \gpr1.dout_i_reg[12]_i_8_n_0 ;
  wire \gpr1.dout_i_reg[12]_i_9_n_0 ;
  wire \gpr1.dout_i_reg[13]_i_10_n_0 ;
  wire \gpr1.dout_i_reg[13]_i_11_n_0 ;
  wire \gpr1.dout_i_reg[13]_i_12_n_0 ;
  wire \gpr1.dout_i_reg[13]_i_13_n_0 ;
  wire \gpr1.dout_i_reg[13]_i_2_n_0 ;
  wire \gpr1.dout_i_reg[13]_i_3_n_0 ;
  wire \gpr1.dout_i_reg[13]_i_4_n_0 ;
  wire \gpr1.dout_i_reg[13]_i_5_n_0 ;
  wire \gpr1.dout_i_reg[13]_i_6_n_0 ;
  wire \gpr1.dout_i_reg[13]_i_7_n_0 ;
  wire \gpr1.dout_i_reg[13]_i_8_n_0 ;
  wire \gpr1.dout_i_reg[13]_i_9_n_0 ;
  wire \gpr1.dout_i_reg[14]_i_10_n_0 ;
  wire \gpr1.dout_i_reg[14]_i_11_n_0 ;
  wire \gpr1.dout_i_reg[14]_i_12_n_0 ;
  wire \gpr1.dout_i_reg[14]_i_13_n_0 ;
  wire \gpr1.dout_i_reg[14]_i_2_n_0 ;
  wire \gpr1.dout_i_reg[14]_i_3_n_0 ;
  wire \gpr1.dout_i_reg[14]_i_4_n_0 ;
  wire \gpr1.dout_i_reg[14]_i_5_n_0 ;
  wire \gpr1.dout_i_reg[14]_i_6_n_0 ;
  wire \gpr1.dout_i_reg[14]_i_7_n_0 ;
  wire \gpr1.dout_i_reg[14]_i_8_n_0 ;
  wire \gpr1.dout_i_reg[14]_i_9_n_0 ;
  wire \gpr1.dout_i_reg[15]_i_10_n_0 ;
  wire \gpr1.dout_i_reg[15]_i_11_n_0 ;
  wire \gpr1.dout_i_reg[15]_i_12_n_0 ;
  wire \gpr1.dout_i_reg[15]_i_13_n_0 ;
  wire \gpr1.dout_i_reg[15]_i_14_n_0 ;
  wire \gpr1.dout_i_reg[15]_i_3_n_0 ;
  wire \gpr1.dout_i_reg[15]_i_4_n_0 ;
  wire \gpr1.dout_i_reg[15]_i_5_n_0 ;
  wire \gpr1.dout_i_reg[15]_i_6_n_0 ;
  wire \gpr1.dout_i_reg[15]_i_7_n_0 ;
  wire \gpr1.dout_i_reg[15]_i_8_n_0 ;
  wire \gpr1.dout_i_reg[15]_i_9_n_0 ;
  wire \gpr1.dout_i_reg[1]_i_10_n_0 ;
  wire \gpr1.dout_i_reg[1]_i_11_n_0 ;
  wire \gpr1.dout_i_reg[1]_i_12_n_0 ;
  wire \gpr1.dout_i_reg[1]_i_13_n_0 ;
  wire \gpr1.dout_i_reg[1]_i_2_n_0 ;
  wire \gpr1.dout_i_reg[1]_i_3_n_0 ;
  wire \gpr1.dout_i_reg[1]_i_4_n_0 ;
  wire \gpr1.dout_i_reg[1]_i_5_n_0 ;
  wire \gpr1.dout_i_reg[1]_i_6_n_0 ;
  wire \gpr1.dout_i_reg[1]_i_7_n_0 ;
  wire \gpr1.dout_i_reg[1]_i_8_n_0 ;
  wire \gpr1.dout_i_reg[1]_i_9_n_0 ;
  wire \gpr1.dout_i_reg[2]_i_10_n_0 ;
  wire \gpr1.dout_i_reg[2]_i_11_n_0 ;
  wire \gpr1.dout_i_reg[2]_i_12_n_0 ;
  wire \gpr1.dout_i_reg[2]_i_13_n_0 ;
  wire \gpr1.dout_i_reg[2]_i_2_n_0 ;
  wire \gpr1.dout_i_reg[2]_i_3_n_0 ;
  wire \gpr1.dout_i_reg[2]_i_4_n_0 ;
  wire \gpr1.dout_i_reg[2]_i_5_n_0 ;
  wire \gpr1.dout_i_reg[2]_i_6_n_0 ;
  wire \gpr1.dout_i_reg[2]_i_7_n_0 ;
  wire \gpr1.dout_i_reg[2]_i_8_n_0 ;
  wire \gpr1.dout_i_reg[2]_i_9_n_0 ;
  wire \gpr1.dout_i_reg[3]_i_10_n_0 ;
  wire \gpr1.dout_i_reg[3]_i_11_n_0 ;
  wire \gpr1.dout_i_reg[3]_i_12_n_0 ;
  wire \gpr1.dout_i_reg[3]_i_13_n_0 ;
  wire \gpr1.dout_i_reg[3]_i_2_n_0 ;
  wire \gpr1.dout_i_reg[3]_i_3_n_0 ;
  wire \gpr1.dout_i_reg[3]_i_4_n_0 ;
  wire \gpr1.dout_i_reg[3]_i_5_n_0 ;
  wire \gpr1.dout_i_reg[3]_i_6_n_0 ;
  wire \gpr1.dout_i_reg[3]_i_7_n_0 ;
  wire \gpr1.dout_i_reg[3]_i_8_n_0 ;
  wire \gpr1.dout_i_reg[3]_i_9_n_0 ;
  wire \gpr1.dout_i_reg[4]_i_10_n_0 ;
  wire \gpr1.dout_i_reg[4]_i_11_n_0 ;
  wire \gpr1.dout_i_reg[4]_i_12_n_0 ;
  wire \gpr1.dout_i_reg[4]_i_13_n_0 ;
  wire \gpr1.dout_i_reg[4]_i_2_n_0 ;
  wire \gpr1.dout_i_reg[4]_i_3_n_0 ;
  wire \gpr1.dout_i_reg[4]_i_4_n_0 ;
  wire \gpr1.dout_i_reg[4]_i_5_n_0 ;
  wire \gpr1.dout_i_reg[4]_i_6_n_0 ;
  wire \gpr1.dout_i_reg[4]_i_7_n_0 ;
  wire \gpr1.dout_i_reg[4]_i_8_n_0 ;
  wire \gpr1.dout_i_reg[4]_i_9_n_0 ;
  wire \gpr1.dout_i_reg[5]_i_10_n_0 ;
  wire \gpr1.dout_i_reg[5]_i_11_n_0 ;
  wire \gpr1.dout_i_reg[5]_i_12_n_0 ;
  wire \gpr1.dout_i_reg[5]_i_13_n_0 ;
  wire \gpr1.dout_i_reg[5]_i_2_n_0 ;
  wire \gpr1.dout_i_reg[5]_i_3_n_0 ;
  wire \gpr1.dout_i_reg[5]_i_4_n_0 ;
  wire \gpr1.dout_i_reg[5]_i_5_n_0 ;
  wire \gpr1.dout_i_reg[5]_i_6_n_0 ;
  wire \gpr1.dout_i_reg[5]_i_7_n_0 ;
  wire \gpr1.dout_i_reg[5]_i_8_n_0 ;
  wire \gpr1.dout_i_reg[5]_i_9_n_0 ;
  wire \gpr1.dout_i_reg[6]_i_10_n_0 ;
  wire \gpr1.dout_i_reg[6]_i_11_n_0 ;
  wire \gpr1.dout_i_reg[6]_i_12_n_0 ;
  wire \gpr1.dout_i_reg[6]_i_13_n_0 ;
  wire \gpr1.dout_i_reg[6]_i_2_n_0 ;
  wire \gpr1.dout_i_reg[6]_i_3_n_0 ;
  wire \gpr1.dout_i_reg[6]_i_4_n_0 ;
  wire \gpr1.dout_i_reg[6]_i_5_n_0 ;
  wire \gpr1.dout_i_reg[6]_i_6_n_0 ;
  wire \gpr1.dout_i_reg[6]_i_7_n_0 ;
  wire \gpr1.dout_i_reg[6]_i_8_n_0 ;
  wire \gpr1.dout_i_reg[6]_i_9_n_0 ;
  wire \gpr1.dout_i_reg[7]_i_10_n_0 ;
  wire \gpr1.dout_i_reg[7]_i_11_n_0 ;
  wire \gpr1.dout_i_reg[7]_i_12_n_0 ;
  wire \gpr1.dout_i_reg[7]_i_13_n_0 ;
  wire \gpr1.dout_i_reg[7]_i_2_n_0 ;
  wire \gpr1.dout_i_reg[7]_i_3_n_0 ;
  wire \gpr1.dout_i_reg[7]_i_4_n_0 ;
  wire \gpr1.dout_i_reg[7]_i_5_n_0 ;
  wire \gpr1.dout_i_reg[7]_i_6_n_0 ;
  wire \gpr1.dout_i_reg[7]_i_7_n_0 ;
  wire \gpr1.dout_i_reg[7]_i_8_n_0 ;
  wire \gpr1.dout_i_reg[7]_i_9_n_0 ;
  wire \gpr1.dout_i_reg[8]_i_10_n_0 ;
  wire \gpr1.dout_i_reg[8]_i_11_n_0 ;
  wire \gpr1.dout_i_reg[8]_i_12_n_0 ;
  wire \gpr1.dout_i_reg[8]_i_13_n_0 ;
  wire \gpr1.dout_i_reg[8]_i_2_n_0 ;
  wire \gpr1.dout_i_reg[8]_i_3_n_0 ;
  wire \gpr1.dout_i_reg[8]_i_4_n_0 ;
  wire \gpr1.dout_i_reg[8]_i_5_n_0 ;
  wire \gpr1.dout_i_reg[8]_i_6_n_0 ;
  wire \gpr1.dout_i_reg[8]_i_7_n_0 ;
  wire \gpr1.dout_i_reg[8]_i_8_n_0 ;
  wire \gpr1.dout_i_reg[8]_i_9_n_0 ;
  wire \gpr1.dout_i_reg[9]_i_10_n_0 ;
  wire \gpr1.dout_i_reg[9]_i_11_n_0 ;
  wire \gpr1.dout_i_reg[9]_i_12_n_0 ;
  wire \gpr1.dout_i_reg[9]_i_13_n_0 ;
  wire \gpr1.dout_i_reg[9]_i_2_n_0 ;
  wire \gpr1.dout_i_reg[9]_i_3_n_0 ;
  wire \gpr1.dout_i_reg[9]_i_4_n_0 ;
  wire \gpr1.dout_i_reg[9]_i_5_n_0 ;
  wire \gpr1.dout_i_reg[9]_i_6_n_0 ;
  wire \gpr1.dout_i_reg[9]_i_7_n_0 ;
  wire \gpr1.dout_i_reg[9]_i_8_n_0 ;
  wire \gpr1.dout_i_reg[9]_i_9_n_0 ;
  wire [15:0]p_0_out;
  wire rd_clk;
  wire wr_clk;
  wire NLW_RAM_reg_0_63_0_2_DOD_UNCONNECTED;
  wire NLW_RAM_reg_0_63_12_14_DOD_UNCONNECTED;
  wire NLW_RAM_reg_0_63_15_15_SPO_UNCONNECTED;
  wire NLW_RAM_reg_0_63_3_5_DOD_UNCONNECTED;
  wire NLW_RAM_reg_0_63_6_8_DOD_UNCONNECTED;
  wire NLW_RAM_reg_0_63_9_11_DOD_UNCONNECTED;
  wire NLW_RAM_reg_1024_1087_0_2_DOD_UNCONNECTED;
  wire NLW_RAM_reg_1024_1087_12_14_DOD_UNCONNECTED;
  wire NLW_RAM_reg_1024_1087_15_15_SPO_UNCONNECTED;
  wire NLW_RAM_reg_1024_1087_3_5_DOD_UNCONNECTED;
  wire NLW_RAM_reg_1024_1087_6_8_DOD_UNCONNECTED;
  wire NLW_RAM_reg_1024_1087_9_11_DOD_UNCONNECTED;
  wire NLW_RAM_reg_1088_1151_0_2_DOD_UNCONNECTED;
  wire NLW_RAM_reg_1088_1151_12_14_DOD_UNCONNECTED;
  wire NLW_RAM_reg_1088_1151_15_15_SPO_UNCONNECTED;
  wire NLW_RAM_reg_1088_1151_3_5_DOD_UNCONNECTED;
  wire NLW_RAM_reg_1088_1151_6_8_DOD_UNCONNECTED;
  wire NLW_RAM_reg_1088_1151_9_11_DOD_UNCONNECTED;
  wire NLW_RAM_reg_1152_1215_0_2_DOD_UNCONNECTED;
  wire NLW_RAM_reg_1152_1215_12_14_DOD_UNCONNECTED;
  wire NLW_RAM_reg_1152_1215_15_15_SPO_UNCONNECTED;
  wire NLW_RAM_reg_1152_1215_3_5_DOD_UNCONNECTED;
  wire NLW_RAM_reg_1152_1215_6_8_DOD_UNCONNECTED;
  wire NLW_RAM_reg_1152_1215_9_11_DOD_UNCONNECTED;
  wire NLW_RAM_reg_1216_1279_0_2_DOD_UNCONNECTED;
  wire NLW_RAM_reg_1216_1279_12_14_DOD_UNCONNECTED;
  wire NLW_RAM_reg_1216_1279_15_15_SPO_UNCONNECTED;
  wire NLW_RAM_reg_1216_1279_3_5_DOD_UNCONNECTED;
  wire NLW_RAM_reg_1216_1279_6_8_DOD_UNCONNECTED;
  wire NLW_RAM_reg_1216_1279_9_11_DOD_UNCONNECTED;
  wire NLW_RAM_reg_1280_1343_0_2_DOD_UNCONNECTED;
  wire NLW_RAM_reg_1280_1343_12_14_DOD_UNCONNECTED;
  wire NLW_RAM_reg_1280_1343_15_15_SPO_UNCONNECTED;
  wire NLW_RAM_reg_1280_1343_3_5_DOD_UNCONNECTED;
  wire NLW_RAM_reg_1280_1343_6_8_DOD_UNCONNECTED;
  wire NLW_RAM_reg_1280_1343_9_11_DOD_UNCONNECTED;
  wire NLW_RAM_reg_128_191_0_2_DOD_UNCONNECTED;
  wire NLW_RAM_reg_128_191_12_14_DOD_UNCONNECTED;
  wire NLW_RAM_reg_128_191_15_15_SPO_UNCONNECTED;
  wire NLW_RAM_reg_128_191_3_5_DOD_UNCONNECTED;
  wire NLW_RAM_reg_128_191_6_8_DOD_UNCONNECTED;
  wire NLW_RAM_reg_128_191_9_11_DOD_UNCONNECTED;
  wire NLW_RAM_reg_1344_1407_0_2_DOD_UNCONNECTED;
  wire NLW_RAM_reg_1344_1407_12_14_DOD_UNCONNECTED;
  wire NLW_RAM_reg_1344_1407_15_15_SPO_UNCONNECTED;
  wire NLW_RAM_reg_1344_1407_3_5_DOD_UNCONNECTED;
  wire NLW_RAM_reg_1344_1407_6_8_DOD_UNCONNECTED;
  wire NLW_RAM_reg_1344_1407_9_11_DOD_UNCONNECTED;
  wire NLW_RAM_reg_1408_1471_0_2_DOD_UNCONNECTED;
  wire NLW_RAM_reg_1408_1471_12_14_DOD_UNCONNECTED;
  wire NLW_RAM_reg_1408_1471_15_15_SPO_UNCONNECTED;
  wire NLW_RAM_reg_1408_1471_3_5_DOD_UNCONNECTED;
  wire NLW_RAM_reg_1408_1471_6_8_DOD_UNCONNECTED;
  wire NLW_RAM_reg_1408_1471_9_11_DOD_UNCONNECTED;
  wire NLW_RAM_reg_1472_1535_0_2_DOD_UNCONNECTED;
  wire NLW_RAM_reg_1472_1535_12_14_DOD_UNCONNECTED;
  wire NLW_RAM_reg_1472_1535_15_15_SPO_UNCONNECTED;
  wire NLW_RAM_reg_1472_1535_3_5_DOD_UNCONNECTED;
  wire NLW_RAM_reg_1472_1535_6_8_DOD_UNCONNECTED;
  wire NLW_RAM_reg_1472_1535_9_11_DOD_UNCONNECTED;
  wire NLW_RAM_reg_1536_1599_0_2_DOD_UNCONNECTED;
  wire NLW_RAM_reg_1536_1599_12_14_DOD_UNCONNECTED;
  wire NLW_RAM_reg_1536_1599_15_15_SPO_UNCONNECTED;
  wire NLW_RAM_reg_1536_1599_3_5_DOD_UNCONNECTED;
  wire NLW_RAM_reg_1536_1599_6_8_DOD_UNCONNECTED;
  wire NLW_RAM_reg_1536_1599_9_11_DOD_UNCONNECTED;
  wire NLW_RAM_reg_1600_1663_0_2_DOD_UNCONNECTED;
  wire NLW_RAM_reg_1600_1663_12_14_DOD_UNCONNECTED;
  wire NLW_RAM_reg_1600_1663_15_15_SPO_UNCONNECTED;
  wire NLW_RAM_reg_1600_1663_3_5_DOD_UNCONNECTED;
  wire NLW_RAM_reg_1600_1663_6_8_DOD_UNCONNECTED;
  wire NLW_RAM_reg_1600_1663_9_11_DOD_UNCONNECTED;
  wire NLW_RAM_reg_1664_1727_0_2_DOD_UNCONNECTED;
  wire NLW_RAM_reg_1664_1727_12_14_DOD_UNCONNECTED;
  wire NLW_RAM_reg_1664_1727_15_15_SPO_UNCONNECTED;
  wire NLW_RAM_reg_1664_1727_3_5_DOD_UNCONNECTED;
  wire NLW_RAM_reg_1664_1727_6_8_DOD_UNCONNECTED;
  wire NLW_RAM_reg_1664_1727_9_11_DOD_UNCONNECTED;
  wire NLW_RAM_reg_1728_1791_0_2_DOD_UNCONNECTED;
  wire NLW_RAM_reg_1728_1791_12_14_DOD_UNCONNECTED;
  wire NLW_RAM_reg_1728_1791_15_15_SPO_UNCONNECTED;
  wire NLW_RAM_reg_1728_1791_3_5_DOD_UNCONNECTED;
  wire NLW_RAM_reg_1728_1791_6_8_DOD_UNCONNECTED;
  wire NLW_RAM_reg_1728_1791_9_11_DOD_UNCONNECTED;
  wire NLW_RAM_reg_1792_1855_0_2_DOD_UNCONNECTED;
  wire NLW_RAM_reg_1792_1855_12_14_DOD_UNCONNECTED;
  wire NLW_RAM_reg_1792_1855_15_15_SPO_UNCONNECTED;
  wire NLW_RAM_reg_1792_1855_3_5_DOD_UNCONNECTED;
  wire NLW_RAM_reg_1792_1855_6_8_DOD_UNCONNECTED;
  wire NLW_RAM_reg_1792_1855_9_11_DOD_UNCONNECTED;
  wire NLW_RAM_reg_1856_1919_0_2_DOD_UNCONNECTED;
  wire NLW_RAM_reg_1856_1919_12_14_DOD_UNCONNECTED;
  wire NLW_RAM_reg_1856_1919_15_15_SPO_UNCONNECTED;
  wire NLW_RAM_reg_1856_1919_3_5_DOD_UNCONNECTED;
  wire NLW_RAM_reg_1856_1919_6_8_DOD_UNCONNECTED;
  wire NLW_RAM_reg_1856_1919_9_11_DOD_UNCONNECTED;
  wire NLW_RAM_reg_1920_1983_0_2_DOD_UNCONNECTED;
  wire NLW_RAM_reg_1920_1983_12_14_DOD_UNCONNECTED;
  wire NLW_RAM_reg_1920_1983_15_15_SPO_UNCONNECTED;
  wire NLW_RAM_reg_1920_1983_3_5_DOD_UNCONNECTED;
  wire NLW_RAM_reg_1920_1983_6_8_DOD_UNCONNECTED;
  wire NLW_RAM_reg_1920_1983_9_11_DOD_UNCONNECTED;
  wire NLW_RAM_reg_192_255_0_2_DOD_UNCONNECTED;
  wire NLW_RAM_reg_192_255_12_14_DOD_UNCONNECTED;
  wire NLW_RAM_reg_192_255_15_15_SPO_UNCONNECTED;
  wire NLW_RAM_reg_192_255_3_5_DOD_UNCONNECTED;
  wire NLW_RAM_reg_192_255_6_8_DOD_UNCONNECTED;
  wire NLW_RAM_reg_192_255_9_11_DOD_UNCONNECTED;
  wire NLW_RAM_reg_1984_2047_0_2_DOD_UNCONNECTED;
  wire NLW_RAM_reg_1984_2047_12_14_DOD_UNCONNECTED;
  wire NLW_RAM_reg_1984_2047_15_15_SPO_UNCONNECTED;
  wire NLW_RAM_reg_1984_2047_3_5_DOD_UNCONNECTED;
  wire NLW_RAM_reg_1984_2047_6_8_DOD_UNCONNECTED;
  wire NLW_RAM_reg_1984_2047_9_11_DOD_UNCONNECTED;
  wire NLW_RAM_reg_2048_2111_0_2_DOD_UNCONNECTED;
  wire NLW_RAM_reg_2048_2111_12_14_DOD_UNCONNECTED;
  wire NLW_RAM_reg_2048_2111_15_15_SPO_UNCONNECTED;
  wire NLW_RAM_reg_2048_2111_3_5_DOD_UNCONNECTED;
  wire NLW_RAM_reg_2048_2111_6_8_DOD_UNCONNECTED;
  wire NLW_RAM_reg_2048_2111_9_11_DOD_UNCONNECTED;
  wire NLW_RAM_reg_2112_2175_0_2_DOD_UNCONNECTED;
  wire NLW_RAM_reg_2112_2175_12_14_DOD_UNCONNECTED;
  wire NLW_RAM_reg_2112_2175_15_15_SPO_UNCONNECTED;
  wire NLW_RAM_reg_2112_2175_3_5_DOD_UNCONNECTED;
  wire NLW_RAM_reg_2112_2175_6_8_DOD_UNCONNECTED;
  wire NLW_RAM_reg_2112_2175_9_11_DOD_UNCONNECTED;
  wire NLW_RAM_reg_2176_2239_0_2_DOD_UNCONNECTED;
  wire NLW_RAM_reg_2176_2239_12_14_DOD_UNCONNECTED;
  wire NLW_RAM_reg_2176_2239_15_15_SPO_UNCONNECTED;
  wire NLW_RAM_reg_2176_2239_3_5_DOD_UNCONNECTED;
  wire NLW_RAM_reg_2176_2239_6_8_DOD_UNCONNECTED;
  wire NLW_RAM_reg_2176_2239_9_11_DOD_UNCONNECTED;
  wire NLW_RAM_reg_2240_2303_0_2_DOD_UNCONNECTED;
  wire NLW_RAM_reg_2240_2303_12_14_DOD_UNCONNECTED;
  wire NLW_RAM_reg_2240_2303_15_15_SPO_UNCONNECTED;
  wire NLW_RAM_reg_2240_2303_3_5_DOD_UNCONNECTED;
  wire NLW_RAM_reg_2240_2303_6_8_DOD_UNCONNECTED;
  wire NLW_RAM_reg_2240_2303_9_11_DOD_UNCONNECTED;
  wire NLW_RAM_reg_2304_2367_0_2_DOD_UNCONNECTED;
  wire NLW_RAM_reg_2304_2367_12_14_DOD_UNCONNECTED;
  wire NLW_RAM_reg_2304_2367_15_15_SPO_UNCONNECTED;
  wire NLW_RAM_reg_2304_2367_3_5_DOD_UNCONNECTED;
  wire NLW_RAM_reg_2304_2367_6_8_DOD_UNCONNECTED;
  wire NLW_RAM_reg_2304_2367_9_11_DOD_UNCONNECTED;
  wire NLW_RAM_reg_2368_2431_0_2_DOD_UNCONNECTED;
  wire NLW_RAM_reg_2368_2431_12_14_DOD_UNCONNECTED;
  wire NLW_RAM_reg_2368_2431_15_15_SPO_UNCONNECTED;
  wire NLW_RAM_reg_2368_2431_3_5_DOD_UNCONNECTED;
  wire NLW_RAM_reg_2368_2431_6_8_DOD_UNCONNECTED;
  wire NLW_RAM_reg_2368_2431_9_11_DOD_UNCONNECTED;
  wire NLW_RAM_reg_2432_2495_0_2_DOD_UNCONNECTED;
  wire NLW_RAM_reg_2432_2495_12_14_DOD_UNCONNECTED;
  wire NLW_RAM_reg_2432_2495_15_15_SPO_UNCONNECTED;
  wire NLW_RAM_reg_2432_2495_3_5_DOD_UNCONNECTED;
  wire NLW_RAM_reg_2432_2495_6_8_DOD_UNCONNECTED;
  wire NLW_RAM_reg_2432_2495_9_11_DOD_UNCONNECTED;
  wire NLW_RAM_reg_2496_2559_0_2_DOD_UNCONNECTED;
  wire NLW_RAM_reg_2496_2559_12_14_DOD_UNCONNECTED;
  wire NLW_RAM_reg_2496_2559_15_15_SPO_UNCONNECTED;
  wire NLW_RAM_reg_2496_2559_3_5_DOD_UNCONNECTED;
  wire NLW_RAM_reg_2496_2559_6_8_DOD_UNCONNECTED;
  wire NLW_RAM_reg_2496_2559_9_11_DOD_UNCONNECTED;
  wire NLW_RAM_reg_2560_2623_0_2_DOD_UNCONNECTED;
  wire NLW_RAM_reg_2560_2623_12_14_DOD_UNCONNECTED;
  wire NLW_RAM_reg_2560_2623_15_15_SPO_UNCONNECTED;
  wire NLW_RAM_reg_2560_2623_3_5_DOD_UNCONNECTED;
  wire NLW_RAM_reg_2560_2623_6_8_DOD_UNCONNECTED;
  wire NLW_RAM_reg_2560_2623_9_11_DOD_UNCONNECTED;
  wire NLW_RAM_reg_256_319_0_2_DOD_UNCONNECTED;
  wire NLW_RAM_reg_256_319_12_14_DOD_UNCONNECTED;
  wire NLW_RAM_reg_256_319_15_15_SPO_UNCONNECTED;
  wire NLW_RAM_reg_256_319_3_5_DOD_UNCONNECTED;
  wire NLW_RAM_reg_256_319_6_8_DOD_UNCONNECTED;
  wire NLW_RAM_reg_256_319_9_11_DOD_UNCONNECTED;
  wire NLW_RAM_reg_2624_2687_0_2_DOD_UNCONNECTED;
  wire NLW_RAM_reg_2624_2687_12_14_DOD_UNCONNECTED;
  wire NLW_RAM_reg_2624_2687_15_15_SPO_UNCONNECTED;
  wire NLW_RAM_reg_2624_2687_3_5_DOD_UNCONNECTED;
  wire NLW_RAM_reg_2624_2687_6_8_DOD_UNCONNECTED;
  wire NLW_RAM_reg_2624_2687_9_11_DOD_UNCONNECTED;
  wire NLW_RAM_reg_2688_2751_0_2_DOD_UNCONNECTED;
  wire NLW_RAM_reg_2688_2751_12_14_DOD_UNCONNECTED;
  wire NLW_RAM_reg_2688_2751_15_15_SPO_UNCONNECTED;
  wire NLW_RAM_reg_2688_2751_3_5_DOD_UNCONNECTED;
  wire NLW_RAM_reg_2688_2751_6_8_DOD_UNCONNECTED;
  wire NLW_RAM_reg_2688_2751_9_11_DOD_UNCONNECTED;
  wire NLW_RAM_reg_2752_2815_0_2_DOD_UNCONNECTED;
  wire NLW_RAM_reg_2752_2815_12_14_DOD_UNCONNECTED;
  wire NLW_RAM_reg_2752_2815_15_15_SPO_UNCONNECTED;
  wire NLW_RAM_reg_2752_2815_3_5_DOD_UNCONNECTED;
  wire NLW_RAM_reg_2752_2815_6_8_DOD_UNCONNECTED;
  wire NLW_RAM_reg_2752_2815_9_11_DOD_UNCONNECTED;
  wire NLW_RAM_reg_2816_2879_0_2_DOD_UNCONNECTED;
  wire NLW_RAM_reg_2816_2879_12_14_DOD_UNCONNECTED;
  wire NLW_RAM_reg_2816_2879_15_15_SPO_UNCONNECTED;
  wire NLW_RAM_reg_2816_2879_3_5_DOD_UNCONNECTED;
  wire NLW_RAM_reg_2816_2879_6_8_DOD_UNCONNECTED;
  wire NLW_RAM_reg_2816_2879_9_11_DOD_UNCONNECTED;
  wire NLW_RAM_reg_2880_2943_0_2_DOD_UNCONNECTED;
  wire NLW_RAM_reg_2880_2943_12_14_DOD_UNCONNECTED;
  wire NLW_RAM_reg_2880_2943_15_15_SPO_UNCONNECTED;
  wire NLW_RAM_reg_2880_2943_3_5_DOD_UNCONNECTED;
  wire NLW_RAM_reg_2880_2943_6_8_DOD_UNCONNECTED;
  wire NLW_RAM_reg_2880_2943_9_11_DOD_UNCONNECTED;
  wire NLW_RAM_reg_2944_3007_0_2_DOD_UNCONNECTED;
  wire NLW_RAM_reg_2944_3007_12_14_DOD_UNCONNECTED;
  wire NLW_RAM_reg_2944_3007_15_15_SPO_UNCONNECTED;
  wire NLW_RAM_reg_2944_3007_3_5_DOD_UNCONNECTED;
  wire NLW_RAM_reg_2944_3007_6_8_DOD_UNCONNECTED;
  wire NLW_RAM_reg_2944_3007_9_11_DOD_UNCONNECTED;
  wire NLW_RAM_reg_3008_3071_0_2_DOD_UNCONNECTED;
  wire NLW_RAM_reg_3008_3071_12_14_DOD_UNCONNECTED;
  wire NLW_RAM_reg_3008_3071_15_15_SPO_UNCONNECTED;
  wire NLW_RAM_reg_3008_3071_3_5_DOD_UNCONNECTED;
  wire NLW_RAM_reg_3008_3071_6_8_DOD_UNCONNECTED;
  wire NLW_RAM_reg_3008_3071_9_11_DOD_UNCONNECTED;
  wire NLW_RAM_reg_3072_3135_0_2_DOD_UNCONNECTED;
  wire NLW_RAM_reg_3072_3135_12_14_DOD_UNCONNECTED;
  wire NLW_RAM_reg_3072_3135_15_15_SPO_UNCONNECTED;
  wire NLW_RAM_reg_3072_3135_3_5_DOD_UNCONNECTED;
  wire NLW_RAM_reg_3072_3135_6_8_DOD_UNCONNECTED;
  wire NLW_RAM_reg_3072_3135_9_11_DOD_UNCONNECTED;
  wire NLW_RAM_reg_3136_3199_0_2_DOD_UNCONNECTED;
  wire NLW_RAM_reg_3136_3199_12_14_DOD_UNCONNECTED;
  wire NLW_RAM_reg_3136_3199_15_15_SPO_UNCONNECTED;
  wire NLW_RAM_reg_3136_3199_3_5_DOD_UNCONNECTED;
  wire NLW_RAM_reg_3136_3199_6_8_DOD_UNCONNECTED;
  wire NLW_RAM_reg_3136_3199_9_11_DOD_UNCONNECTED;
  wire NLW_RAM_reg_3200_3263_0_2_DOD_UNCONNECTED;
  wire NLW_RAM_reg_3200_3263_12_14_DOD_UNCONNECTED;
  wire NLW_RAM_reg_3200_3263_15_15_SPO_UNCONNECTED;
  wire NLW_RAM_reg_3200_3263_3_5_DOD_UNCONNECTED;
  wire NLW_RAM_reg_3200_3263_6_8_DOD_UNCONNECTED;
  wire NLW_RAM_reg_3200_3263_9_11_DOD_UNCONNECTED;
  wire NLW_RAM_reg_320_383_0_2_DOD_UNCONNECTED;
  wire NLW_RAM_reg_320_383_12_14_DOD_UNCONNECTED;
  wire NLW_RAM_reg_320_383_15_15_SPO_UNCONNECTED;
  wire NLW_RAM_reg_320_383_3_5_DOD_UNCONNECTED;
  wire NLW_RAM_reg_320_383_6_8_DOD_UNCONNECTED;
  wire NLW_RAM_reg_320_383_9_11_DOD_UNCONNECTED;
  wire NLW_RAM_reg_3264_3327_0_2_DOD_UNCONNECTED;
  wire NLW_RAM_reg_3264_3327_12_14_DOD_UNCONNECTED;
  wire NLW_RAM_reg_3264_3327_15_15_SPO_UNCONNECTED;
  wire NLW_RAM_reg_3264_3327_3_5_DOD_UNCONNECTED;
  wire NLW_RAM_reg_3264_3327_6_8_DOD_UNCONNECTED;
  wire NLW_RAM_reg_3264_3327_9_11_DOD_UNCONNECTED;
  wire NLW_RAM_reg_3328_3391_0_2_DOD_UNCONNECTED;
  wire NLW_RAM_reg_3328_3391_12_14_DOD_UNCONNECTED;
  wire NLW_RAM_reg_3328_3391_15_15_SPO_UNCONNECTED;
  wire NLW_RAM_reg_3328_3391_3_5_DOD_UNCONNECTED;
  wire NLW_RAM_reg_3328_3391_6_8_DOD_UNCONNECTED;
  wire NLW_RAM_reg_3328_3391_9_11_DOD_UNCONNECTED;
  wire NLW_RAM_reg_3392_3455_0_2_DOD_UNCONNECTED;
  wire NLW_RAM_reg_3392_3455_12_14_DOD_UNCONNECTED;
  wire NLW_RAM_reg_3392_3455_15_15_SPO_UNCONNECTED;
  wire NLW_RAM_reg_3392_3455_3_5_DOD_UNCONNECTED;
  wire NLW_RAM_reg_3392_3455_6_8_DOD_UNCONNECTED;
  wire NLW_RAM_reg_3392_3455_9_11_DOD_UNCONNECTED;
  wire NLW_RAM_reg_3456_3519_0_2_DOD_UNCONNECTED;
  wire NLW_RAM_reg_3456_3519_12_14_DOD_UNCONNECTED;
  wire NLW_RAM_reg_3456_3519_15_15_SPO_UNCONNECTED;
  wire NLW_RAM_reg_3456_3519_3_5_DOD_UNCONNECTED;
  wire NLW_RAM_reg_3456_3519_6_8_DOD_UNCONNECTED;
  wire NLW_RAM_reg_3456_3519_9_11_DOD_UNCONNECTED;
  wire NLW_RAM_reg_3520_3583_0_2_DOD_UNCONNECTED;
  wire NLW_RAM_reg_3520_3583_12_14_DOD_UNCONNECTED;
  wire NLW_RAM_reg_3520_3583_15_15_SPO_UNCONNECTED;
  wire NLW_RAM_reg_3520_3583_3_5_DOD_UNCONNECTED;
  wire NLW_RAM_reg_3520_3583_6_8_DOD_UNCONNECTED;
  wire NLW_RAM_reg_3520_3583_9_11_DOD_UNCONNECTED;
  wire NLW_RAM_reg_3584_3647_0_2_DOD_UNCONNECTED;
  wire NLW_RAM_reg_3584_3647_12_14_DOD_UNCONNECTED;
  wire NLW_RAM_reg_3584_3647_15_15_SPO_UNCONNECTED;
  wire NLW_RAM_reg_3584_3647_3_5_DOD_UNCONNECTED;
  wire NLW_RAM_reg_3584_3647_6_8_DOD_UNCONNECTED;
  wire NLW_RAM_reg_3584_3647_9_11_DOD_UNCONNECTED;
  wire NLW_RAM_reg_3648_3711_0_2_DOD_UNCONNECTED;
  wire NLW_RAM_reg_3648_3711_12_14_DOD_UNCONNECTED;
  wire NLW_RAM_reg_3648_3711_15_15_SPO_UNCONNECTED;
  wire NLW_RAM_reg_3648_3711_3_5_DOD_UNCONNECTED;
  wire NLW_RAM_reg_3648_3711_6_8_DOD_UNCONNECTED;
  wire NLW_RAM_reg_3648_3711_9_11_DOD_UNCONNECTED;
  wire NLW_RAM_reg_3712_3775_0_2_DOD_UNCONNECTED;
  wire NLW_RAM_reg_3712_3775_12_14_DOD_UNCONNECTED;
  wire NLW_RAM_reg_3712_3775_15_15_SPO_UNCONNECTED;
  wire NLW_RAM_reg_3712_3775_3_5_DOD_UNCONNECTED;
  wire NLW_RAM_reg_3712_3775_6_8_DOD_UNCONNECTED;
  wire NLW_RAM_reg_3712_3775_9_11_DOD_UNCONNECTED;
  wire NLW_RAM_reg_3776_3839_0_2_DOD_UNCONNECTED;
  wire NLW_RAM_reg_3776_3839_12_14_DOD_UNCONNECTED;
  wire NLW_RAM_reg_3776_3839_15_15_SPO_UNCONNECTED;
  wire NLW_RAM_reg_3776_3839_3_5_DOD_UNCONNECTED;
  wire NLW_RAM_reg_3776_3839_6_8_DOD_UNCONNECTED;
  wire NLW_RAM_reg_3776_3839_9_11_DOD_UNCONNECTED;
  wire NLW_RAM_reg_3840_3903_0_2_DOD_UNCONNECTED;
  wire NLW_RAM_reg_3840_3903_12_14_DOD_UNCONNECTED;
  wire NLW_RAM_reg_3840_3903_15_15_SPO_UNCONNECTED;
  wire NLW_RAM_reg_3840_3903_3_5_DOD_UNCONNECTED;
  wire NLW_RAM_reg_3840_3903_6_8_DOD_UNCONNECTED;
  wire NLW_RAM_reg_3840_3903_9_11_DOD_UNCONNECTED;
  wire NLW_RAM_reg_384_447_0_2_DOD_UNCONNECTED;
  wire NLW_RAM_reg_384_447_12_14_DOD_UNCONNECTED;
  wire NLW_RAM_reg_384_447_15_15_SPO_UNCONNECTED;
  wire NLW_RAM_reg_384_447_3_5_DOD_UNCONNECTED;
  wire NLW_RAM_reg_384_447_6_8_DOD_UNCONNECTED;
  wire NLW_RAM_reg_384_447_9_11_DOD_UNCONNECTED;
  wire NLW_RAM_reg_3904_3967_0_2_DOD_UNCONNECTED;
  wire NLW_RAM_reg_3904_3967_12_14_DOD_UNCONNECTED;
  wire NLW_RAM_reg_3904_3967_15_15_SPO_UNCONNECTED;
  wire NLW_RAM_reg_3904_3967_3_5_DOD_UNCONNECTED;
  wire NLW_RAM_reg_3904_3967_6_8_DOD_UNCONNECTED;
  wire NLW_RAM_reg_3904_3967_9_11_DOD_UNCONNECTED;
  wire NLW_RAM_reg_3968_4031_0_2_DOD_UNCONNECTED;
  wire NLW_RAM_reg_3968_4031_12_14_DOD_UNCONNECTED;
  wire NLW_RAM_reg_3968_4031_15_15_SPO_UNCONNECTED;
  wire NLW_RAM_reg_3968_4031_3_5_DOD_UNCONNECTED;
  wire NLW_RAM_reg_3968_4031_6_8_DOD_UNCONNECTED;
  wire NLW_RAM_reg_3968_4031_9_11_DOD_UNCONNECTED;
  wire NLW_RAM_reg_4032_4095_0_2_DOD_UNCONNECTED;
  wire NLW_RAM_reg_4032_4095_12_14_DOD_UNCONNECTED;
  wire NLW_RAM_reg_4032_4095_15_15_SPO_UNCONNECTED;
  wire NLW_RAM_reg_4032_4095_3_5_DOD_UNCONNECTED;
  wire NLW_RAM_reg_4032_4095_6_8_DOD_UNCONNECTED;
  wire NLW_RAM_reg_4032_4095_9_11_DOD_UNCONNECTED;
  wire NLW_RAM_reg_448_511_0_2_DOD_UNCONNECTED;
  wire NLW_RAM_reg_448_511_12_14_DOD_UNCONNECTED;
  wire NLW_RAM_reg_448_511_15_15_SPO_UNCONNECTED;
  wire NLW_RAM_reg_448_511_3_5_DOD_UNCONNECTED;
  wire NLW_RAM_reg_448_511_6_8_DOD_UNCONNECTED;
  wire NLW_RAM_reg_448_511_9_11_DOD_UNCONNECTED;
  wire NLW_RAM_reg_512_575_0_2_DOD_UNCONNECTED;
  wire NLW_RAM_reg_512_575_12_14_DOD_UNCONNECTED;
  wire NLW_RAM_reg_512_575_15_15_SPO_UNCONNECTED;
  wire NLW_RAM_reg_512_575_3_5_DOD_UNCONNECTED;
  wire NLW_RAM_reg_512_575_6_8_DOD_UNCONNECTED;
  wire NLW_RAM_reg_512_575_9_11_DOD_UNCONNECTED;
  wire NLW_RAM_reg_576_639_0_2_DOD_UNCONNECTED;
  wire NLW_RAM_reg_576_639_12_14_DOD_UNCONNECTED;
  wire NLW_RAM_reg_576_639_15_15_SPO_UNCONNECTED;
  wire NLW_RAM_reg_576_639_3_5_DOD_UNCONNECTED;
  wire NLW_RAM_reg_576_639_6_8_DOD_UNCONNECTED;
  wire NLW_RAM_reg_576_639_9_11_DOD_UNCONNECTED;
  wire NLW_RAM_reg_640_703_0_2_DOD_UNCONNECTED;
  wire NLW_RAM_reg_640_703_12_14_DOD_UNCONNECTED;
  wire NLW_RAM_reg_640_703_15_15_SPO_UNCONNECTED;
  wire NLW_RAM_reg_640_703_3_5_DOD_UNCONNECTED;
  wire NLW_RAM_reg_640_703_6_8_DOD_UNCONNECTED;
  wire NLW_RAM_reg_640_703_9_11_DOD_UNCONNECTED;
  wire NLW_RAM_reg_64_127_0_2_DOD_UNCONNECTED;
  wire NLW_RAM_reg_64_127_12_14_DOD_UNCONNECTED;
  wire NLW_RAM_reg_64_127_15_15_SPO_UNCONNECTED;
  wire NLW_RAM_reg_64_127_3_5_DOD_UNCONNECTED;
  wire NLW_RAM_reg_64_127_6_8_DOD_UNCONNECTED;
  wire NLW_RAM_reg_64_127_9_11_DOD_UNCONNECTED;
  wire NLW_RAM_reg_704_767_0_2_DOD_UNCONNECTED;
  wire NLW_RAM_reg_704_767_12_14_DOD_UNCONNECTED;
  wire NLW_RAM_reg_704_767_15_15_SPO_UNCONNECTED;
  wire NLW_RAM_reg_704_767_3_5_DOD_UNCONNECTED;
  wire NLW_RAM_reg_704_767_6_8_DOD_UNCONNECTED;
  wire NLW_RAM_reg_704_767_9_11_DOD_UNCONNECTED;
  wire NLW_RAM_reg_768_831_0_2_DOD_UNCONNECTED;
  wire NLW_RAM_reg_768_831_12_14_DOD_UNCONNECTED;
  wire NLW_RAM_reg_768_831_15_15_SPO_UNCONNECTED;
  wire NLW_RAM_reg_768_831_3_5_DOD_UNCONNECTED;
  wire NLW_RAM_reg_768_831_6_8_DOD_UNCONNECTED;
  wire NLW_RAM_reg_768_831_9_11_DOD_UNCONNECTED;
  wire NLW_RAM_reg_832_895_0_2_DOD_UNCONNECTED;
  wire NLW_RAM_reg_832_895_12_14_DOD_UNCONNECTED;
  wire NLW_RAM_reg_832_895_15_15_SPO_UNCONNECTED;
  wire NLW_RAM_reg_832_895_3_5_DOD_UNCONNECTED;
  wire NLW_RAM_reg_832_895_6_8_DOD_UNCONNECTED;
  wire NLW_RAM_reg_832_895_9_11_DOD_UNCONNECTED;
  wire NLW_RAM_reg_896_959_0_2_DOD_UNCONNECTED;
  wire NLW_RAM_reg_896_959_12_14_DOD_UNCONNECTED;
  wire NLW_RAM_reg_896_959_15_15_SPO_UNCONNECTED;
  wire NLW_RAM_reg_896_959_3_5_DOD_UNCONNECTED;
  wire NLW_RAM_reg_896_959_6_8_DOD_UNCONNECTED;
  wire NLW_RAM_reg_896_959_9_11_DOD_UNCONNECTED;
  wire NLW_RAM_reg_960_1023_0_2_DOD_UNCONNECTED;
  wire NLW_RAM_reg_960_1023_12_14_DOD_UNCONNECTED;
  wire NLW_RAM_reg_960_1023_15_15_SPO_UNCONNECTED;
  wire NLW_RAM_reg_960_1023_3_5_DOD_UNCONNECTED;
  wire NLW_RAM_reg_960_1023_6_8_DOD_UNCONNECTED;
  wire NLW_RAM_reg_960_1023_9_11_DOD_UNCONNECTED;

  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_0_63_0_2
       (.ADDRA(\gc0.count_d1_reg[5]_rep__0 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__0 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__0 ),
        .ADDRD(Q),
        .DIA(din[0]),
        .DIB(din[1]),
        .DIC(din[2]),
        .DID(1'b0),
        .DOA(RAM_reg_0_63_0_2_n_0),
        .DOB(RAM_reg_0_63_0_2_n_1),
        .DOC(RAM_reg_0_63_0_2_n_2),
        .DOD(NLW_RAM_reg_0_63_0_2_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[6] ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_0_63_12_14
       (.ADDRA(\gc0.count_d1_reg[5]_rep__8 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__8 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__8 ),
        .ADDRD(\gic0.gc0.count_d2_reg[5]_rep__2 ),
        .DIA(din[12]),
        .DIB(din[13]),
        .DIC(din[14]),
        .DID(1'b0),
        .DOA(RAM_reg_0_63_12_14_n_0),
        .DOB(RAM_reg_0_63_12_14_n_1),
        .DOC(RAM_reg_0_63_12_14_n_2),
        .DOD(NLW_RAM_reg_0_63_12_14_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[6] ));
  RAM64X1D RAM_reg_0_63_15_15
       (.A0(\gic0.gc0.count_d2_reg[0]_rep__3 ),
        .A1(\gic0.gc0.count_d2_reg[1]_rep__3 ),
        .A2(\gic0.gc0.count_d2_reg[2]_rep__3 ),
        .A3(\gic0.gc0.count_d2_reg[3]_rep__3 ),
        .A4(\gic0.gc0.count_d2_reg[4]_rep__3 ),
        .A5(\gic0.gc0.count_d2_reg[5]_rep__3 ),
        .D(din[15]),
        .DPO(RAM_reg_0_63_15_15_n_0),
        .DPRA0(\gc0.count_d1_reg[11] [0]),
        .DPRA1(\gc0.count_d1_reg[11] [1]),
        .DPRA2(\gc0.count_d1_reg[11] [2]),
        .DPRA3(\gc0.count_d1_reg[11] [3]),
        .DPRA4(\gc0.count_d1_reg[11] [4]),
        .DPRA5(\gc0.count_d1_reg[11] [5]),
        .SPO(NLW_RAM_reg_0_63_15_15_SPO_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[6] ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_0_63_3_5
       (.ADDRA(\gc0.count_d1_reg[5]_rep__2 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__2 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__2 ),
        .ADDRD(ADDRD),
        .DIA(din[3]),
        .DIB(din[4]),
        .DIC(din[5]),
        .DID(1'b0),
        .DOA(RAM_reg_0_63_3_5_n_0),
        .DOB(RAM_reg_0_63_3_5_n_1),
        .DOC(RAM_reg_0_63_3_5_n_2),
        .DOD(NLW_RAM_reg_0_63_3_5_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[6] ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_0_63_6_8
       (.ADDRA(\gc0.count_d1_reg[5]_rep__4 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__4 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__4 ),
        .ADDRD(\gic0.gc0.count_d2_reg[5]_rep__0 ),
        .DIA(din[6]),
        .DIB(din[7]),
        .DIC(din[8]),
        .DID(1'b0),
        .DOA(RAM_reg_0_63_6_8_n_0),
        .DOB(RAM_reg_0_63_6_8_n_1),
        .DOC(RAM_reg_0_63_6_8_n_2),
        .DOD(NLW_RAM_reg_0_63_6_8_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[6] ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_0_63_9_11
       (.ADDRA(\gc0.count_d1_reg[5]_rep__6 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__6 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__6 ),
        .ADDRD(\gic0.gc0.count_d2_reg[5]_rep__1 ),
        .DIA(din[9]),
        .DIB(din[10]),
        .DIC(din[11]),
        .DID(1'b0),
        .DOA(RAM_reg_0_63_9_11_n_0),
        .DOB(RAM_reg_0_63_9_11_n_1),
        .DOC(RAM_reg_0_63_9_11_n_2),
        .DOD(NLW_RAM_reg_0_63_9_11_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[6] ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_1024_1087_0_2
       (.ADDRA(\gc0.count_d1_reg[5]_rep__0 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__0 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__0 ),
        .ADDRD(Q),
        .DIA(din[0]),
        .DIB(din[1]),
        .DIC(din[2]),
        .DID(1'b0),
        .DOA(RAM_reg_1024_1087_0_2_n_0),
        .DOB(RAM_reg_1024_1087_0_2_n_1),
        .DOC(RAM_reg_1024_1087_0_2_n_2),
        .DOD(NLW_RAM_reg_1024_1087_0_2_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[6]_3 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_1024_1087_12_14
       (.ADDRA(\gc0.count_d1_reg[5]_rep__8 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__8 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__8 ),
        .ADDRD(\gic0.gc0.count_d2_reg[5]_rep__2 ),
        .DIA(din[12]),
        .DIB(din[13]),
        .DIC(din[14]),
        .DID(1'b0),
        .DOA(RAM_reg_1024_1087_12_14_n_0),
        .DOB(RAM_reg_1024_1087_12_14_n_1),
        .DOC(RAM_reg_1024_1087_12_14_n_2),
        .DOD(NLW_RAM_reg_1024_1087_12_14_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[6]_3 ));
  RAM64X1D RAM_reg_1024_1087_15_15
       (.A0(\gic0.gc0.count_d2_reg[0]_rep__3 ),
        .A1(\gic0.gc0.count_d2_reg[1]_rep__3 ),
        .A2(\gic0.gc0.count_d2_reg[2]_rep__3 ),
        .A3(\gic0.gc0.count_d2_reg[3]_rep__3 ),
        .A4(\gic0.gc0.count_d2_reg[4]_rep__3 ),
        .A5(\gic0.gc0.count_d2_reg[5]_rep__3 ),
        .D(din[15]),
        .DPO(RAM_reg_1024_1087_15_15_n_0),
        .DPRA0(\gc0.count_d1_reg[11] [0]),
        .DPRA1(\gc0.count_d1_reg[11] [1]),
        .DPRA2(\gc0.count_d1_reg[11] [2]),
        .DPRA3(\gc0.count_d1_reg[11] [3]),
        .DPRA4(\gc0.count_d1_reg[11] [4]),
        .DPRA5(\gc0.count_d1_reg[11] [5]),
        .SPO(NLW_RAM_reg_1024_1087_15_15_SPO_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[6]_3 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_1024_1087_3_5
       (.ADDRA(\gc0.count_d1_reg[5]_rep__2 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__2 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__2 ),
        .ADDRD(ADDRD),
        .DIA(din[3]),
        .DIB(din[4]),
        .DIC(din[5]),
        .DID(1'b0),
        .DOA(RAM_reg_1024_1087_3_5_n_0),
        .DOB(RAM_reg_1024_1087_3_5_n_1),
        .DOC(RAM_reg_1024_1087_3_5_n_2),
        .DOD(NLW_RAM_reg_1024_1087_3_5_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[6]_3 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_1024_1087_6_8
       (.ADDRA(\gc0.count_d1_reg[5]_rep__4 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__4 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__4 ),
        .ADDRD(\gic0.gc0.count_d2_reg[5]_rep__0 ),
        .DIA(din[6]),
        .DIB(din[7]),
        .DIC(din[8]),
        .DID(1'b0),
        .DOA(RAM_reg_1024_1087_6_8_n_0),
        .DOB(RAM_reg_1024_1087_6_8_n_1),
        .DOC(RAM_reg_1024_1087_6_8_n_2),
        .DOD(NLW_RAM_reg_1024_1087_6_8_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[6]_3 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_1024_1087_9_11
       (.ADDRA(\gc0.count_d1_reg[5]_rep__6 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__6 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__6 ),
        .ADDRD(\gic0.gc0.count_d2_reg[5]_rep__1 ),
        .DIA(din[9]),
        .DIB(din[10]),
        .DIC(din[11]),
        .DID(1'b0),
        .DOA(RAM_reg_1024_1087_9_11_n_0),
        .DOB(RAM_reg_1024_1087_9_11_n_1),
        .DOC(RAM_reg_1024_1087_9_11_n_2),
        .DOD(NLW_RAM_reg_1024_1087_9_11_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[6]_3 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_1088_1151_0_2
       (.ADDRA(\gc0.count_d1_reg[5]_rep__0 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__0 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__0 ),
        .ADDRD(Q),
        .DIA(din[0]),
        .DIB(din[1]),
        .DIC(din[2]),
        .DID(1'b0),
        .DOA(RAM_reg_1088_1151_0_2_n_0),
        .DOB(RAM_reg_1088_1151_0_2_n_1),
        .DOC(RAM_reg_1088_1151_0_2_n_2),
        .DOD(NLW_RAM_reg_1088_1151_0_2_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[7]_1 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_1088_1151_12_14
       (.ADDRA(\gc0.count_d1_reg[5]_rep__8 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__8 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__8 ),
        .ADDRD(\gic0.gc0.count_d2_reg[5]_rep__2 ),
        .DIA(din[12]),
        .DIB(din[13]),
        .DIC(din[14]),
        .DID(1'b0),
        .DOA(RAM_reg_1088_1151_12_14_n_0),
        .DOB(RAM_reg_1088_1151_12_14_n_1),
        .DOC(RAM_reg_1088_1151_12_14_n_2),
        .DOD(NLW_RAM_reg_1088_1151_12_14_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[7]_1 ));
  RAM64X1D RAM_reg_1088_1151_15_15
       (.A0(\gic0.gc0.count_d2_reg[0]_rep__3 ),
        .A1(\gic0.gc0.count_d2_reg[1]_rep__3 ),
        .A2(\gic0.gc0.count_d2_reg[2]_rep__3 ),
        .A3(\gic0.gc0.count_d2_reg[3]_rep__3 ),
        .A4(\gic0.gc0.count_d2_reg[4]_rep__3 ),
        .A5(\gic0.gc0.count_d2_reg[5]_rep__3 ),
        .D(din[15]),
        .DPO(RAM_reg_1088_1151_15_15_n_0),
        .DPRA0(\gc0.count_d1_reg[11] [0]),
        .DPRA1(\gc0.count_d1_reg[11] [1]),
        .DPRA2(\gc0.count_d1_reg[11] [2]),
        .DPRA3(\gc0.count_d1_reg[11] [3]),
        .DPRA4(\gc0.count_d1_reg[11] [4]),
        .DPRA5(\gc0.count_d1_reg[11] [5]),
        .SPO(NLW_RAM_reg_1088_1151_15_15_SPO_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[7]_1 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_1088_1151_3_5
       (.ADDRA(\gc0.count_d1_reg[5]_rep__2 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__2 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__2 ),
        .ADDRD(ADDRD),
        .DIA(din[3]),
        .DIB(din[4]),
        .DIC(din[5]),
        .DID(1'b0),
        .DOA(RAM_reg_1088_1151_3_5_n_0),
        .DOB(RAM_reg_1088_1151_3_5_n_1),
        .DOC(RAM_reg_1088_1151_3_5_n_2),
        .DOD(NLW_RAM_reg_1088_1151_3_5_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[7]_1 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_1088_1151_6_8
       (.ADDRA(\gc0.count_d1_reg[5]_rep__4 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__4 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__4 ),
        .ADDRD(\gic0.gc0.count_d2_reg[5]_rep__0 ),
        .DIA(din[6]),
        .DIB(din[7]),
        .DIC(din[8]),
        .DID(1'b0),
        .DOA(RAM_reg_1088_1151_6_8_n_0),
        .DOB(RAM_reg_1088_1151_6_8_n_1),
        .DOC(RAM_reg_1088_1151_6_8_n_2),
        .DOD(NLW_RAM_reg_1088_1151_6_8_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[7]_1 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_1088_1151_9_11
       (.ADDRA(\gc0.count_d1_reg[5]_rep__6 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__6 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__6 ),
        .ADDRD(\gic0.gc0.count_d2_reg[5]_rep__1 ),
        .DIA(din[9]),
        .DIB(din[10]),
        .DIC(din[11]),
        .DID(1'b0),
        .DOA(RAM_reg_1088_1151_9_11_n_0),
        .DOB(RAM_reg_1088_1151_9_11_n_1),
        .DOC(RAM_reg_1088_1151_9_11_n_2),
        .DOD(NLW_RAM_reg_1088_1151_9_11_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[7]_1 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_1152_1215_0_2
       (.ADDRA(\gc0.count_d1_reg[5]_rep__0 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__0 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__0 ),
        .ADDRD(Q),
        .DIA(din[0]),
        .DIB(din[1]),
        .DIC(din[2]),
        .DID(1'b0),
        .DOA(RAM_reg_1152_1215_0_2_n_0),
        .DOB(RAM_reg_1152_1215_0_2_n_1),
        .DOC(RAM_reg_1152_1215_0_2_n_2),
        .DOD(NLW_RAM_reg_1152_1215_0_2_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[6]_4 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_1152_1215_12_14
       (.ADDRA(\gc0.count_d1_reg[5]_rep__8 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__8 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__8 ),
        .ADDRD(\gic0.gc0.count_d2_reg[5]_rep__2 ),
        .DIA(din[12]),
        .DIB(din[13]),
        .DIC(din[14]),
        .DID(1'b0),
        .DOA(RAM_reg_1152_1215_12_14_n_0),
        .DOB(RAM_reg_1152_1215_12_14_n_1),
        .DOC(RAM_reg_1152_1215_12_14_n_2),
        .DOD(NLW_RAM_reg_1152_1215_12_14_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[6]_4 ));
  RAM64X1D RAM_reg_1152_1215_15_15
       (.A0(\gic0.gc0.count_d2_reg[0]_rep__3 ),
        .A1(\gic0.gc0.count_d2_reg[1]_rep__3 ),
        .A2(\gic0.gc0.count_d2_reg[2]_rep__3 ),
        .A3(\gic0.gc0.count_d2_reg[3]_rep__3 ),
        .A4(\gic0.gc0.count_d2_reg[4]_rep__3 ),
        .A5(\gic0.gc0.count_d2_reg[5]_rep__3 ),
        .D(din[15]),
        .DPO(RAM_reg_1152_1215_15_15_n_0),
        .DPRA0(\gc0.count_d1_reg[11] [0]),
        .DPRA1(\gc0.count_d1_reg[11] [1]),
        .DPRA2(\gc0.count_d1_reg[11] [2]),
        .DPRA3(\gc0.count_d1_reg[11] [3]),
        .DPRA4(\gc0.count_d1_reg[11] [4]),
        .DPRA5(\gc0.count_d1_reg[11] [5]),
        .SPO(NLW_RAM_reg_1152_1215_15_15_SPO_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[6]_4 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_1152_1215_3_5
       (.ADDRA(\gc0.count_d1_reg[5]_rep__2 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__2 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__2 ),
        .ADDRD(ADDRD),
        .DIA(din[3]),
        .DIB(din[4]),
        .DIC(din[5]),
        .DID(1'b0),
        .DOA(RAM_reg_1152_1215_3_5_n_0),
        .DOB(RAM_reg_1152_1215_3_5_n_1),
        .DOC(RAM_reg_1152_1215_3_5_n_2),
        .DOD(NLW_RAM_reg_1152_1215_3_5_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[6]_4 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_1152_1215_6_8
       (.ADDRA(\gc0.count_d1_reg[5]_rep__4 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__4 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__4 ),
        .ADDRD(\gic0.gc0.count_d2_reg[5]_rep__0 ),
        .DIA(din[6]),
        .DIB(din[7]),
        .DIC(din[8]),
        .DID(1'b0),
        .DOA(RAM_reg_1152_1215_6_8_n_0),
        .DOB(RAM_reg_1152_1215_6_8_n_1),
        .DOC(RAM_reg_1152_1215_6_8_n_2),
        .DOD(NLW_RAM_reg_1152_1215_6_8_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[6]_4 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_1152_1215_9_11
       (.ADDRA(\gc0.count_d1_reg[5]_rep__6 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__6 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__6 ),
        .ADDRD(\gic0.gc0.count_d2_reg[5]_rep__1 ),
        .DIA(din[9]),
        .DIB(din[10]),
        .DIC(din[11]),
        .DID(1'b0),
        .DOA(RAM_reg_1152_1215_9_11_n_0),
        .DOB(RAM_reg_1152_1215_9_11_n_1),
        .DOC(RAM_reg_1152_1215_9_11_n_2),
        .DOD(NLW_RAM_reg_1152_1215_9_11_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[6]_4 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_1216_1279_0_2
       (.ADDRA(\gc0.count_d1_reg[5]_rep__0 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__0 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__0 ),
        .ADDRD(Q),
        .DIA(din[0]),
        .DIB(din[1]),
        .DIC(din[2]),
        .DID(1'b0),
        .DOA(RAM_reg_1216_1279_0_2_n_0),
        .DOB(RAM_reg_1216_1279_0_2_n_1),
        .DOC(RAM_reg_1216_1279_0_2_n_2),
        .DOD(NLW_RAM_reg_1216_1279_0_2_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[6]_5 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_1216_1279_12_14
       (.ADDRA(\gc0.count_d1_reg[5]_rep__8 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__8 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__8 ),
        .ADDRD(\gic0.gc0.count_d2_reg[5]_rep__2 ),
        .DIA(din[12]),
        .DIB(din[13]),
        .DIC(din[14]),
        .DID(1'b0),
        .DOA(RAM_reg_1216_1279_12_14_n_0),
        .DOB(RAM_reg_1216_1279_12_14_n_1),
        .DOC(RAM_reg_1216_1279_12_14_n_2),
        .DOD(NLW_RAM_reg_1216_1279_12_14_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[6]_5 ));
  RAM64X1D RAM_reg_1216_1279_15_15
       (.A0(\gic0.gc0.count_d2_reg[0]_rep__3 ),
        .A1(\gic0.gc0.count_d2_reg[1]_rep__3 ),
        .A2(\gic0.gc0.count_d2_reg[2]_rep__3 ),
        .A3(\gic0.gc0.count_d2_reg[3]_rep__3 ),
        .A4(\gic0.gc0.count_d2_reg[4]_rep__3 ),
        .A5(\gic0.gc0.count_d2_reg[5]_rep__3 ),
        .D(din[15]),
        .DPO(RAM_reg_1216_1279_15_15_n_0),
        .DPRA0(\gc0.count_d1_reg[11] [0]),
        .DPRA1(\gc0.count_d1_reg[11] [1]),
        .DPRA2(\gc0.count_d1_reg[11] [2]),
        .DPRA3(\gc0.count_d1_reg[11] [3]),
        .DPRA4(\gc0.count_d1_reg[11] [4]),
        .DPRA5(\gc0.count_d1_reg[11] [5]),
        .SPO(NLW_RAM_reg_1216_1279_15_15_SPO_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[6]_5 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_1216_1279_3_5
       (.ADDRA(\gc0.count_d1_reg[5]_rep__2 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__2 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__2 ),
        .ADDRD(ADDRD),
        .DIA(din[3]),
        .DIB(din[4]),
        .DIC(din[5]),
        .DID(1'b0),
        .DOA(RAM_reg_1216_1279_3_5_n_0),
        .DOB(RAM_reg_1216_1279_3_5_n_1),
        .DOC(RAM_reg_1216_1279_3_5_n_2),
        .DOD(NLW_RAM_reg_1216_1279_3_5_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[6]_5 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_1216_1279_6_8
       (.ADDRA(\gc0.count_d1_reg[5]_rep__4 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__4 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__4 ),
        .ADDRD(\gic0.gc0.count_d2_reg[5]_rep__0 ),
        .DIA(din[6]),
        .DIB(din[7]),
        .DIC(din[8]),
        .DID(1'b0),
        .DOA(RAM_reg_1216_1279_6_8_n_0),
        .DOB(RAM_reg_1216_1279_6_8_n_1),
        .DOC(RAM_reg_1216_1279_6_8_n_2),
        .DOD(NLW_RAM_reg_1216_1279_6_8_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[6]_5 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_1216_1279_9_11
       (.ADDRA(\gc0.count_d1_reg[5]_rep__6 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__6 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__6 ),
        .ADDRD(\gic0.gc0.count_d2_reg[5]_rep__1 ),
        .DIA(din[9]),
        .DIB(din[10]),
        .DIC(din[11]),
        .DID(1'b0),
        .DOA(RAM_reg_1216_1279_9_11_n_0),
        .DOB(RAM_reg_1216_1279_9_11_n_1),
        .DOC(RAM_reg_1216_1279_9_11_n_2),
        .DOD(NLW_RAM_reg_1216_1279_9_11_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[6]_5 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_1280_1343_0_2
       (.ADDRA(\gc0.count_d1_reg[5]_rep__0 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__0 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__0 ),
        .ADDRD(Q),
        .DIA(din[0]),
        .DIB(din[1]),
        .DIC(din[2]),
        .DID(1'b0),
        .DOA(RAM_reg_1280_1343_0_2_n_0),
        .DOB(RAM_reg_1280_1343_0_2_n_1),
        .DOC(RAM_reg_1280_1343_0_2_n_2),
        .DOD(NLW_RAM_reg_1280_1343_0_2_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[9]_4 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_1280_1343_12_14
       (.ADDRA(\gc0.count_d1_reg[5]_rep__8 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__8 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__8 ),
        .ADDRD(\gic0.gc0.count_d2_reg[5]_rep__2 ),
        .DIA(din[12]),
        .DIB(din[13]),
        .DIC(din[14]),
        .DID(1'b0),
        .DOA(RAM_reg_1280_1343_12_14_n_0),
        .DOB(RAM_reg_1280_1343_12_14_n_1),
        .DOC(RAM_reg_1280_1343_12_14_n_2),
        .DOD(NLW_RAM_reg_1280_1343_12_14_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[9]_4 ));
  RAM64X1D RAM_reg_1280_1343_15_15
       (.A0(\gic0.gc0.count_d2_reg[0]_rep__3 ),
        .A1(\gic0.gc0.count_d2_reg[1]_rep__3 ),
        .A2(\gic0.gc0.count_d2_reg[2]_rep__3 ),
        .A3(\gic0.gc0.count_d2_reg[3]_rep__3 ),
        .A4(\gic0.gc0.count_d2_reg[4]_rep__3 ),
        .A5(\gic0.gc0.count_d2_reg[5]_rep__3 ),
        .D(din[15]),
        .DPO(RAM_reg_1280_1343_15_15_n_0),
        .DPRA0(\gc0.count_d1_reg[11] [0]),
        .DPRA1(\gc0.count_d1_reg[11] [1]),
        .DPRA2(\gc0.count_d1_reg[11] [2]),
        .DPRA3(\gc0.count_d1_reg[11] [3]),
        .DPRA4(\gc0.count_d1_reg[11] [4]),
        .DPRA5(\gc0.count_d1_reg[11] [5]),
        .SPO(NLW_RAM_reg_1280_1343_15_15_SPO_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[9]_4 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_1280_1343_3_5
       (.ADDRA(\gc0.count_d1_reg[5]_rep__2 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__2 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__2 ),
        .ADDRD(ADDRD),
        .DIA(din[3]),
        .DIB(din[4]),
        .DIC(din[5]),
        .DID(1'b0),
        .DOA(RAM_reg_1280_1343_3_5_n_0),
        .DOB(RAM_reg_1280_1343_3_5_n_1),
        .DOC(RAM_reg_1280_1343_3_5_n_2),
        .DOD(NLW_RAM_reg_1280_1343_3_5_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[9]_4 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_1280_1343_6_8
       (.ADDRA(\gc0.count_d1_reg[5]_rep__4 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__4 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__4 ),
        .ADDRD(\gic0.gc0.count_d2_reg[5]_rep__0 ),
        .DIA(din[6]),
        .DIB(din[7]),
        .DIC(din[8]),
        .DID(1'b0),
        .DOA(RAM_reg_1280_1343_6_8_n_0),
        .DOB(RAM_reg_1280_1343_6_8_n_1),
        .DOC(RAM_reg_1280_1343_6_8_n_2),
        .DOD(NLW_RAM_reg_1280_1343_6_8_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[9]_4 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_1280_1343_9_11
       (.ADDRA(\gc0.count_d1_reg[5]_rep__6 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__6 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__6 ),
        .ADDRD(\gic0.gc0.count_d2_reg[5]_rep__1 ),
        .DIA(din[9]),
        .DIB(din[10]),
        .DIC(din[11]),
        .DID(1'b0),
        .DOA(RAM_reg_1280_1343_9_11_n_0),
        .DOB(RAM_reg_1280_1343_9_11_n_1),
        .DOC(RAM_reg_1280_1343_9_11_n_2),
        .DOD(NLW_RAM_reg_1280_1343_9_11_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[9]_4 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_128_191_0_2
       (.ADDRA(\gc0.count_d1_reg[5]_rep__0 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__0 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__0 ),
        .ADDRD(Q),
        .DIA(din[0]),
        .DIB(din[1]),
        .DIC(din[2]),
        .DID(1'b0),
        .DOA(RAM_reg_128_191_0_2_n_0),
        .DOB(RAM_reg_128_191_0_2_n_1),
        .DOC(RAM_reg_128_191_0_2_n_2),
        .DOD(NLW_RAM_reg_128_191_0_2_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[9]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_128_191_12_14
       (.ADDRA(\gc0.count_d1_reg[5]_rep__8 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__8 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__8 ),
        .ADDRD(\gic0.gc0.count_d2_reg[5]_rep__2 ),
        .DIA(din[12]),
        .DIB(din[13]),
        .DIC(din[14]),
        .DID(1'b0),
        .DOA(RAM_reg_128_191_12_14_n_0),
        .DOB(RAM_reg_128_191_12_14_n_1),
        .DOC(RAM_reg_128_191_12_14_n_2),
        .DOD(NLW_RAM_reg_128_191_12_14_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[9]_0 ));
  RAM64X1D RAM_reg_128_191_15_15
       (.A0(\gic0.gc0.count_d2_reg[0]_rep__3 ),
        .A1(\gic0.gc0.count_d2_reg[1]_rep__3 ),
        .A2(\gic0.gc0.count_d2_reg[2]_rep__3 ),
        .A3(\gic0.gc0.count_d2_reg[3]_rep__3 ),
        .A4(\gic0.gc0.count_d2_reg[4]_rep__3 ),
        .A5(\gic0.gc0.count_d2_reg[5]_rep__3 ),
        .D(din[15]),
        .DPO(RAM_reg_128_191_15_15_n_0),
        .DPRA0(\gc0.count_d1_reg[11] [0]),
        .DPRA1(\gc0.count_d1_reg[11] [1]),
        .DPRA2(\gc0.count_d1_reg[11] [2]),
        .DPRA3(\gc0.count_d1_reg[11] [3]),
        .DPRA4(\gc0.count_d1_reg[11] [4]),
        .DPRA5(\gc0.count_d1_reg[11] [5]),
        .SPO(NLW_RAM_reg_128_191_15_15_SPO_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[9]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_128_191_3_5
       (.ADDRA(\gc0.count_d1_reg[5]_rep__2 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__2 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__2 ),
        .ADDRD(ADDRD),
        .DIA(din[3]),
        .DIB(din[4]),
        .DIC(din[5]),
        .DID(1'b0),
        .DOA(RAM_reg_128_191_3_5_n_0),
        .DOB(RAM_reg_128_191_3_5_n_1),
        .DOC(RAM_reg_128_191_3_5_n_2),
        .DOD(NLW_RAM_reg_128_191_3_5_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[9]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_128_191_6_8
       (.ADDRA(\gc0.count_d1_reg[5]_rep__4 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__4 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__4 ),
        .ADDRD(\gic0.gc0.count_d2_reg[5]_rep__0 ),
        .DIA(din[6]),
        .DIB(din[7]),
        .DIC(din[8]),
        .DID(1'b0),
        .DOA(RAM_reg_128_191_6_8_n_0),
        .DOB(RAM_reg_128_191_6_8_n_1),
        .DOC(RAM_reg_128_191_6_8_n_2),
        .DOD(NLW_RAM_reg_128_191_6_8_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[9]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_128_191_9_11
       (.ADDRA(\gc0.count_d1_reg[5]_rep__6 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__6 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__6 ),
        .ADDRD(\gic0.gc0.count_d2_reg[5]_rep__1 ),
        .DIA(din[9]),
        .DIB(din[10]),
        .DIC(din[11]),
        .DID(1'b0),
        .DOA(RAM_reg_128_191_9_11_n_0),
        .DOB(RAM_reg_128_191_9_11_n_1),
        .DOC(RAM_reg_128_191_9_11_n_2),
        .DOD(NLW_RAM_reg_128_191_9_11_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[9]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_1344_1407_0_2
       (.ADDRA(\gc0.count_d1_reg[5]_rep__0 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__0 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__0 ),
        .ADDRD(Q),
        .DIA(din[0]),
        .DIB(din[1]),
        .DIC(din[2]),
        .DID(1'b0),
        .DOA(RAM_reg_1344_1407_0_2_n_0),
        .DOB(RAM_reg_1344_1407_0_2_n_1),
        .DOC(RAM_reg_1344_1407_0_2_n_2),
        .DOD(NLW_RAM_reg_1344_1407_0_2_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[10] ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_1344_1407_12_14
       (.ADDRA(\gc0.count_d1_reg[5]_rep__8 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__8 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__8 ),
        .ADDRD(\gic0.gc0.count_d2_reg[5]_rep__2 ),
        .DIA(din[12]),
        .DIB(din[13]),
        .DIC(din[14]),
        .DID(1'b0),
        .DOA(RAM_reg_1344_1407_12_14_n_0),
        .DOB(RAM_reg_1344_1407_12_14_n_1),
        .DOC(RAM_reg_1344_1407_12_14_n_2),
        .DOD(NLW_RAM_reg_1344_1407_12_14_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[10] ));
  RAM64X1D RAM_reg_1344_1407_15_15
       (.A0(\gic0.gc0.count_d2_reg[0]_rep__3 ),
        .A1(\gic0.gc0.count_d2_reg[1]_rep__3 ),
        .A2(\gic0.gc0.count_d2_reg[2]_rep__3 ),
        .A3(\gic0.gc0.count_d2_reg[3]_rep__3 ),
        .A4(\gic0.gc0.count_d2_reg[4]_rep__3 ),
        .A5(\gic0.gc0.count_d2_reg[5]_rep__3 ),
        .D(din[15]),
        .DPO(RAM_reg_1344_1407_15_15_n_0),
        .DPRA0(\gc0.count_d1_reg[11] [0]),
        .DPRA1(\gc0.count_d1_reg[11] [1]),
        .DPRA2(\gc0.count_d1_reg[11] [2]),
        .DPRA3(\gc0.count_d1_reg[11] [3]),
        .DPRA4(\gc0.count_d1_reg[11] [4]),
        .DPRA5(\gc0.count_d1_reg[11] [5]),
        .SPO(NLW_RAM_reg_1344_1407_15_15_SPO_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[10] ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_1344_1407_3_5
       (.ADDRA(\gc0.count_d1_reg[5]_rep__2 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__2 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__2 ),
        .ADDRD(ADDRD),
        .DIA(din[3]),
        .DIB(din[4]),
        .DIC(din[5]),
        .DID(1'b0),
        .DOA(RAM_reg_1344_1407_3_5_n_0),
        .DOB(RAM_reg_1344_1407_3_5_n_1),
        .DOC(RAM_reg_1344_1407_3_5_n_2),
        .DOD(NLW_RAM_reg_1344_1407_3_5_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[10] ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_1344_1407_6_8
       (.ADDRA(\gc0.count_d1_reg[5]_rep__4 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__4 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__4 ),
        .ADDRD(\gic0.gc0.count_d2_reg[5]_rep__0 ),
        .DIA(din[6]),
        .DIB(din[7]),
        .DIC(din[8]),
        .DID(1'b0),
        .DOA(RAM_reg_1344_1407_6_8_n_0),
        .DOB(RAM_reg_1344_1407_6_8_n_1),
        .DOC(RAM_reg_1344_1407_6_8_n_2),
        .DOD(NLW_RAM_reg_1344_1407_6_8_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[10] ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_1344_1407_9_11
       (.ADDRA(\gc0.count_d1_reg[5]_rep__6 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__6 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__6 ),
        .ADDRD(\gic0.gc0.count_d2_reg[5]_rep__1 ),
        .DIA(din[9]),
        .DIB(din[10]),
        .DIC(din[11]),
        .DID(1'b0),
        .DOA(RAM_reg_1344_1407_9_11_n_0),
        .DOB(RAM_reg_1344_1407_9_11_n_1),
        .DOC(RAM_reg_1344_1407_9_11_n_2),
        .DOD(NLW_RAM_reg_1344_1407_9_11_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[10] ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_1408_1471_0_2
       (.ADDRA(\gc0.count_d1_reg[5]_rep__0 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__0 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__0 ),
        .ADDRD(Q),
        .DIA(din[0]),
        .DIB(din[1]),
        .DIC(din[2]),
        .DID(1'b0),
        .DOA(RAM_reg_1408_1471_0_2_n_0),
        .DOB(RAM_reg_1408_1471_0_2_n_1),
        .DOC(RAM_reg_1408_1471_0_2_n_2),
        .DOD(NLW_RAM_reg_1408_1471_0_2_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[9]_5 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_1408_1471_12_14
       (.ADDRA(\gc0.count_d1_reg[5]_rep__8 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__8 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__8 ),
        .ADDRD(\gic0.gc0.count_d2_reg[5]_rep__2 ),
        .DIA(din[12]),
        .DIB(din[13]),
        .DIC(din[14]),
        .DID(1'b0),
        .DOA(RAM_reg_1408_1471_12_14_n_0),
        .DOB(RAM_reg_1408_1471_12_14_n_1),
        .DOC(RAM_reg_1408_1471_12_14_n_2),
        .DOD(NLW_RAM_reg_1408_1471_12_14_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[9]_5 ));
  RAM64X1D RAM_reg_1408_1471_15_15
       (.A0(\gic0.gc0.count_d2_reg[0]_rep__3 ),
        .A1(\gic0.gc0.count_d2_reg[1]_rep__3 ),
        .A2(\gic0.gc0.count_d2_reg[2]_rep__3 ),
        .A3(\gic0.gc0.count_d2_reg[3]_rep__3 ),
        .A4(\gic0.gc0.count_d2_reg[4]_rep__3 ),
        .A5(\gic0.gc0.count_d2_reg[5]_rep__3 ),
        .D(din[15]),
        .DPO(RAM_reg_1408_1471_15_15_n_0),
        .DPRA0(\gc0.count_d1_reg[11] [0]),
        .DPRA1(\gc0.count_d1_reg[11] [1]),
        .DPRA2(\gc0.count_d1_reg[11] [2]),
        .DPRA3(\gc0.count_d1_reg[11] [3]),
        .DPRA4(\gc0.count_d1_reg[11] [4]),
        .DPRA5(\gc0.count_d1_reg[11] [5]),
        .SPO(NLW_RAM_reg_1408_1471_15_15_SPO_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[9]_5 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_1408_1471_3_5
       (.ADDRA(\gc0.count_d1_reg[5]_rep__2 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__2 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__2 ),
        .ADDRD(ADDRD),
        .DIA(din[3]),
        .DIB(din[4]),
        .DIC(din[5]),
        .DID(1'b0),
        .DOA(RAM_reg_1408_1471_3_5_n_0),
        .DOB(RAM_reg_1408_1471_3_5_n_1),
        .DOC(RAM_reg_1408_1471_3_5_n_2),
        .DOD(NLW_RAM_reg_1408_1471_3_5_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[9]_5 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_1408_1471_6_8
       (.ADDRA(\gc0.count_d1_reg[5]_rep__4 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__4 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__4 ),
        .ADDRD(\gic0.gc0.count_d2_reg[5]_rep__0 ),
        .DIA(din[6]),
        .DIB(din[7]),
        .DIC(din[8]),
        .DID(1'b0),
        .DOA(RAM_reg_1408_1471_6_8_n_0),
        .DOB(RAM_reg_1408_1471_6_8_n_1),
        .DOC(RAM_reg_1408_1471_6_8_n_2),
        .DOD(NLW_RAM_reg_1408_1471_6_8_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[9]_5 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_1408_1471_9_11
       (.ADDRA(\gc0.count_d1_reg[5]_rep__6 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__6 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__6 ),
        .ADDRD(\gic0.gc0.count_d2_reg[5]_rep__1 ),
        .DIA(din[9]),
        .DIB(din[10]),
        .DIC(din[11]),
        .DID(1'b0),
        .DOA(RAM_reg_1408_1471_9_11_n_0),
        .DOB(RAM_reg_1408_1471_9_11_n_1),
        .DOC(RAM_reg_1408_1471_9_11_n_2),
        .DOD(NLW_RAM_reg_1408_1471_9_11_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[9]_5 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_1472_1535_0_2
       (.ADDRA(\gc0.count_d1_reg[5]_rep__0 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__0 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__0 ),
        .ADDRD(Q),
        .DIA(din[0]),
        .DIB(din[1]),
        .DIC(din[2]),
        .DID(1'b0),
        .DOA(RAM_reg_1472_1535_0_2_n_0),
        .DOB(RAM_reg_1472_1535_0_2_n_1),
        .DOC(RAM_reg_1472_1535_0_2_n_2),
        .DOD(NLW_RAM_reg_1472_1535_0_2_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[6]_6 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_1472_1535_12_14
       (.ADDRA(\gc0.count_d1_reg[5]_rep__8 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__8 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__8 ),
        .ADDRD(\gic0.gc0.count_d2_reg[5]_rep__2 ),
        .DIA(din[12]),
        .DIB(din[13]),
        .DIC(din[14]),
        .DID(1'b0),
        .DOA(RAM_reg_1472_1535_12_14_n_0),
        .DOB(RAM_reg_1472_1535_12_14_n_1),
        .DOC(RAM_reg_1472_1535_12_14_n_2),
        .DOD(NLW_RAM_reg_1472_1535_12_14_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[6]_6 ));
  RAM64X1D RAM_reg_1472_1535_15_15
       (.A0(\gic0.gc0.count_d2_reg[0]_rep__3 ),
        .A1(\gic0.gc0.count_d2_reg[1]_rep__3 ),
        .A2(\gic0.gc0.count_d2_reg[2]_rep__3 ),
        .A3(\gic0.gc0.count_d2_reg[3]_rep__3 ),
        .A4(\gic0.gc0.count_d2_reg[4]_rep__3 ),
        .A5(\gic0.gc0.count_d2_reg[5]_rep__3 ),
        .D(din[15]),
        .DPO(RAM_reg_1472_1535_15_15_n_0),
        .DPRA0(\gc0.count_d1_reg[11] [0]),
        .DPRA1(\gc0.count_d1_reg[11] [1]),
        .DPRA2(\gc0.count_d1_reg[11] [2]),
        .DPRA3(\gc0.count_d1_reg[11] [3]),
        .DPRA4(\gc0.count_d1_reg[11] [4]),
        .DPRA5(\gc0.count_d1_reg[11] [5]),
        .SPO(NLW_RAM_reg_1472_1535_15_15_SPO_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[6]_6 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_1472_1535_3_5
       (.ADDRA(\gc0.count_d1_reg[5]_rep__2 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__2 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__2 ),
        .ADDRD(ADDRD),
        .DIA(din[3]),
        .DIB(din[4]),
        .DIC(din[5]),
        .DID(1'b0),
        .DOA(RAM_reg_1472_1535_3_5_n_0),
        .DOB(RAM_reg_1472_1535_3_5_n_1),
        .DOC(RAM_reg_1472_1535_3_5_n_2),
        .DOD(NLW_RAM_reg_1472_1535_3_5_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[6]_6 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_1472_1535_6_8
       (.ADDRA(\gc0.count_d1_reg[5]_rep__4 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__4 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__4 ),
        .ADDRD(\gic0.gc0.count_d2_reg[5]_rep__0 ),
        .DIA(din[6]),
        .DIB(din[7]),
        .DIC(din[8]),
        .DID(1'b0),
        .DOA(RAM_reg_1472_1535_6_8_n_0),
        .DOB(RAM_reg_1472_1535_6_8_n_1),
        .DOC(RAM_reg_1472_1535_6_8_n_2),
        .DOD(NLW_RAM_reg_1472_1535_6_8_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[6]_6 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_1472_1535_9_11
       (.ADDRA(\gc0.count_d1_reg[5]_rep__6 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__6 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__6 ),
        .ADDRD(\gic0.gc0.count_d2_reg[5]_rep__1 ),
        .DIA(din[9]),
        .DIB(din[10]),
        .DIC(din[11]),
        .DID(1'b0),
        .DOA(RAM_reg_1472_1535_9_11_n_0),
        .DOB(RAM_reg_1472_1535_9_11_n_1),
        .DOC(RAM_reg_1472_1535_9_11_n_2),
        .DOD(NLW_RAM_reg_1472_1535_9_11_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[6]_6 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_1536_1599_0_2
       (.ADDRA(\gc0.count_d1_reg[5]_rep__0 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__0 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__0 ),
        .ADDRD(Q),
        .DIA(din[0]),
        .DIB(din[1]),
        .DIC(din[2]),
        .DID(1'b0),
        .DOA(RAM_reg_1536_1599_0_2_n_0),
        .DOB(RAM_reg_1536_1599_0_2_n_1),
        .DOC(RAM_reg_1536_1599_0_2_n_2),
        .DOD(NLW_RAM_reg_1536_1599_0_2_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[8]_4 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_1536_1599_12_14
       (.ADDRA(\gc0.count_d1_reg[5]_rep__8 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__8 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__8 ),
        .ADDRD(\gic0.gc0.count_d2_reg[5]_rep__2 ),
        .DIA(din[12]),
        .DIB(din[13]),
        .DIC(din[14]),
        .DID(1'b0),
        .DOA(RAM_reg_1536_1599_12_14_n_0),
        .DOB(RAM_reg_1536_1599_12_14_n_1),
        .DOC(RAM_reg_1536_1599_12_14_n_2),
        .DOD(NLW_RAM_reg_1536_1599_12_14_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[8]_4 ));
  RAM64X1D RAM_reg_1536_1599_15_15
       (.A0(\gic0.gc0.count_d2_reg[0]_rep__3 ),
        .A1(\gic0.gc0.count_d2_reg[1]_rep__3 ),
        .A2(\gic0.gc0.count_d2_reg[2]_rep__3 ),
        .A3(\gic0.gc0.count_d2_reg[3]_rep__3 ),
        .A4(\gic0.gc0.count_d2_reg[4]_rep__3 ),
        .A5(\gic0.gc0.count_d2_reg[5]_rep__3 ),
        .D(din[15]),
        .DPO(RAM_reg_1536_1599_15_15_n_0),
        .DPRA0(\gc0.count_d1_reg[11] [0]),
        .DPRA1(\gc0.count_d1_reg[11] [1]),
        .DPRA2(\gc0.count_d1_reg[11] [2]),
        .DPRA3(\gc0.count_d1_reg[11] [3]),
        .DPRA4(\gc0.count_d1_reg[11] [4]),
        .DPRA5(\gc0.count_d1_reg[11] [5]),
        .SPO(NLW_RAM_reg_1536_1599_15_15_SPO_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[8]_4 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_1536_1599_3_5
       (.ADDRA(\gc0.count_d1_reg[5]_rep__2 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__2 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__2 ),
        .ADDRD(ADDRD),
        .DIA(din[3]),
        .DIB(din[4]),
        .DIC(din[5]),
        .DID(1'b0),
        .DOA(RAM_reg_1536_1599_3_5_n_0),
        .DOB(RAM_reg_1536_1599_3_5_n_1),
        .DOC(RAM_reg_1536_1599_3_5_n_2),
        .DOD(NLW_RAM_reg_1536_1599_3_5_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[8]_4 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_1536_1599_6_8
       (.ADDRA(\gc0.count_d1_reg[5]_rep__4 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__4 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__4 ),
        .ADDRD(\gic0.gc0.count_d2_reg[5]_rep__0 ),
        .DIA(din[6]),
        .DIB(din[7]),
        .DIC(din[8]),
        .DID(1'b0),
        .DOA(RAM_reg_1536_1599_6_8_n_0),
        .DOB(RAM_reg_1536_1599_6_8_n_1),
        .DOC(RAM_reg_1536_1599_6_8_n_2),
        .DOD(NLW_RAM_reg_1536_1599_6_8_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[8]_4 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_1536_1599_9_11
       (.ADDRA(\gc0.count_d1_reg[5]_rep__6 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__6 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__6 ),
        .ADDRD(\gic0.gc0.count_d2_reg[5]_rep__1 ),
        .DIA(din[9]),
        .DIB(din[10]),
        .DIC(din[11]),
        .DID(1'b0),
        .DOA(RAM_reg_1536_1599_9_11_n_0),
        .DOB(RAM_reg_1536_1599_9_11_n_1),
        .DOC(RAM_reg_1536_1599_9_11_n_2),
        .DOD(NLW_RAM_reg_1536_1599_9_11_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[8]_4 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_1600_1663_0_2
       (.ADDRA(\gc0.count_d1_reg[5]_rep__0 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__0 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__0 ),
        .ADDRD(Q),
        .DIA(din[0]),
        .DIB(din[1]),
        .DIC(din[2]),
        .DID(1'b0),
        .DOA(RAM_reg_1600_1663_0_2_n_0),
        .DOB(RAM_reg_1600_1663_0_2_n_1),
        .DOC(RAM_reg_1600_1663_0_2_n_2),
        .DOD(NLW_RAM_reg_1600_1663_0_2_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[9]_6 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_1600_1663_12_14
       (.ADDRA(\gc0.count_d1_reg[5]_rep__8 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__8 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__8 ),
        .ADDRD(\gic0.gc0.count_d2_reg[5]_rep__2 ),
        .DIA(din[12]),
        .DIB(din[13]),
        .DIC(din[14]),
        .DID(1'b0),
        .DOA(RAM_reg_1600_1663_12_14_n_0),
        .DOB(RAM_reg_1600_1663_12_14_n_1),
        .DOC(RAM_reg_1600_1663_12_14_n_2),
        .DOD(NLW_RAM_reg_1600_1663_12_14_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[9]_6 ));
  RAM64X1D RAM_reg_1600_1663_15_15
       (.A0(\gic0.gc0.count_d2_reg[0]_rep__3 ),
        .A1(\gic0.gc0.count_d2_reg[1]_rep__3 ),
        .A2(\gic0.gc0.count_d2_reg[2]_rep__3 ),
        .A3(\gic0.gc0.count_d2_reg[3]_rep__3 ),
        .A4(\gic0.gc0.count_d2_reg[4]_rep__3 ),
        .A5(\gic0.gc0.count_d2_reg[5]_rep__3 ),
        .D(din[15]),
        .DPO(RAM_reg_1600_1663_15_15_n_0),
        .DPRA0(\gc0.count_d1_reg[11] [0]),
        .DPRA1(\gc0.count_d1_reg[11] [1]),
        .DPRA2(\gc0.count_d1_reg[11] [2]),
        .DPRA3(\gc0.count_d1_reg[11] [3]),
        .DPRA4(\gc0.count_d1_reg[11] [4]),
        .DPRA5(\gc0.count_d1_reg[11] [5]),
        .SPO(NLW_RAM_reg_1600_1663_15_15_SPO_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[9]_6 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_1600_1663_3_5
       (.ADDRA(\gc0.count_d1_reg[5]_rep__2 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__2 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__2 ),
        .ADDRD(ADDRD),
        .DIA(din[3]),
        .DIB(din[4]),
        .DIC(din[5]),
        .DID(1'b0),
        .DOA(RAM_reg_1600_1663_3_5_n_0),
        .DOB(RAM_reg_1600_1663_3_5_n_1),
        .DOC(RAM_reg_1600_1663_3_5_n_2),
        .DOD(NLW_RAM_reg_1600_1663_3_5_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[9]_6 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_1600_1663_6_8
       (.ADDRA(\gc0.count_d1_reg[5]_rep__4 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__4 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__4 ),
        .ADDRD(\gic0.gc0.count_d2_reg[5]_rep__0 ),
        .DIA(din[6]),
        .DIB(din[7]),
        .DIC(din[8]),
        .DID(1'b0),
        .DOA(RAM_reg_1600_1663_6_8_n_0),
        .DOB(RAM_reg_1600_1663_6_8_n_1),
        .DOC(RAM_reg_1600_1663_6_8_n_2),
        .DOD(NLW_RAM_reg_1600_1663_6_8_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[9]_6 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_1600_1663_9_11
       (.ADDRA(\gc0.count_d1_reg[5]_rep__6 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__6 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__6 ),
        .ADDRD(\gic0.gc0.count_d2_reg[5]_rep__1 ),
        .DIA(din[9]),
        .DIB(din[10]),
        .DIC(din[11]),
        .DID(1'b0),
        .DOA(RAM_reg_1600_1663_9_11_n_0),
        .DOB(RAM_reg_1600_1663_9_11_n_1),
        .DOC(RAM_reg_1600_1663_9_11_n_2),
        .DOD(NLW_RAM_reg_1600_1663_9_11_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[9]_6 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_1664_1727_0_2
       (.ADDRA(\gc0.count_d1_reg[5]_rep__0 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__0 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__0 ),
        .ADDRD(Q),
        .DIA(din[0]),
        .DIB(din[1]),
        .DIC(din[2]),
        .DID(1'b0),
        .DOA(RAM_reg_1664_1727_0_2_n_0),
        .DOB(RAM_reg_1664_1727_0_2_n_1),
        .DOC(RAM_reg_1664_1727_0_2_n_2),
        .DOD(NLW_RAM_reg_1664_1727_0_2_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[8]_5 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_1664_1727_12_14
       (.ADDRA(\gc0.count_d1_reg[5]_rep__8 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__8 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__8 ),
        .ADDRD(\gic0.gc0.count_d2_reg[5]_rep__2 ),
        .DIA(din[12]),
        .DIB(din[13]),
        .DIC(din[14]),
        .DID(1'b0),
        .DOA(RAM_reg_1664_1727_12_14_n_0),
        .DOB(RAM_reg_1664_1727_12_14_n_1),
        .DOC(RAM_reg_1664_1727_12_14_n_2),
        .DOD(NLW_RAM_reg_1664_1727_12_14_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[8]_5 ));
  RAM64X1D RAM_reg_1664_1727_15_15
       (.A0(\gic0.gc0.count_d2_reg[0]_rep__3 ),
        .A1(\gic0.gc0.count_d2_reg[1]_rep__3 ),
        .A2(\gic0.gc0.count_d2_reg[2]_rep__3 ),
        .A3(\gic0.gc0.count_d2_reg[3]_rep__3 ),
        .A4(\gic0.gc0.count_d2_reg[4]_rep__3 ),
        .A5(\gic0.gc0.count_d2_reg[5]_rep__3 ),
        .D(din[15]),
        .DPO(RAM_reg_1664_1727_15_15_n_0),
        .DPRA0(\gc0.count_d1_reg[11] [0]),
        .DPRA1(\gc0.count_d1_reg[11] [1]),
        .DPRA2(\gc0.count_d1_reg[11] [2]),
        .DPRA3(\gc0.count_d1_reg[11] [3]),
        .DPRA4(\gc0.count_d1_reg[11] [4]),
        .DPRA5(\gc0.count_d1_reg[11] [5]),
        .SPO(NLW_RAM_reg_1664_1727_15_15_SPO_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[8]_5 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_1664_1727_3_5
       (.ADDRA(\gc0.count_d1_reg[5]_rep__2 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__2 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__2 ),
        .ADDRD(ADDRD),
        .DIA(din[3]),
        .DIB(din[4]),
        .DIC(din[5]),
        .DID(1'b0),
        .DOA(RAM_reg_1664_1727_3_5_n_0),
        .DOB(RAM_reg_1664_1727_3_5_n_1),
        .DOC(RAM_reg_1664_1727_3_5_n_2),
        .DOD(NLW_RAM_reg_1664_1727_3_5_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[8]_5 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_1664_1727_6_8
       (.ADDRA(\gc0.count_d1_reg[5]_rep__4 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__4 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__4 ),
        .ADDRD(\gic0.gc0.count_d2_reg[5]_rep__0 ),
        .DIA(din[6]),
        .DIB(din[7]),
        .DIC(din[8]),
        .DID(1'b0),
        .DOA(RAM_reg_1664_1727_6_8_n_0),
        .DOB(RAM_reg_1664_1727_6_8_n_1),
        .DOC(RAM_reg_1664_1727_6_8_n_2),
        .DOD(NLW_RAM_reg_1664_1727_6_8_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[8]_5 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_1664_1727_9_11
       (.ADDRA(\gc0.count_d1_reg[5]_rep__6 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__6 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__6 ),
        .ADDRD(\gic0.gc0.count_d2_reg[5]_rep__1 ),
        .DIA(din[9]),
        .DIB(din[10]),
        .DIC(din[11]),
        .DID(1'b0),
        .DOA(RAM_reg_1664_1727_9_11_n_0),
        .DOB(RAM_reg_1664_1727_9_11_n_1),
        .DOC(RAM_reg_1664_1727_9_11_n_2),
        .DOD(NLW_RAM_reg_1664_1727_9_11_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[8]_5 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_1728_1791_0_2
       (.ADDRA(\gc0.count_d1_reg[5]_rep__0 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__0 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__0 ),
        .ADDRD(Q),
        .DIA(din[0]),
        .DIB(din[1]),
        .DIC(din[2]),
        .DID(1'b0),
        .DOA(RAM_reg_1728_1791_0_2_n_0),
        .DOB(RAM_reg_1728_1791_0_2_n_1),
        .DOC(RAM_reg_1728_1791_0_2_n_2),
        .DOD(NLW_RAM_reg_1728_1791_0_2_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[8]_6 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_1728_1791_12_14
       (.ADDRA(\gc0.count_d1_reg[5]_rep__8 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__8 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__8 ),
        .ADDRD(\gic0.gc0.count_d2_reg[5]_rep__2 ),
        .DIA(din[12]),
        .DIB(din[13]),
        .DIC(din[14]),
        .DID(1'b0),
        .DOA(RAM_reg_1728_1791_12_14_n_0),
        .DOB(RAM_reg_1728_1791_12_14_n_1),
        .DOC(RAM_reg_1728_1791_12_14_n_2),
        .DOD(NLW_RAM_reg_1728_1791_12_14_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[8]_6 ));
  RAM64X1D RAM_reg_1728_1791_15_15
       (.A0(\gic0.gc0.count_d2_reg[0]_rep__3 ),
        .A1(\gic0.gc0.count_d2_reg[1]_rep__3 ),
        .A2(\gic0.gc0.count_d2_reg[2]_rep__3 ),
        .A3(\gic0.gc0.count_d2_reg[3]_rep__3 ),
        .A4(\gic0.gc0.count_d2_reg[4]_rep__3 ),
        .A5(\gic0.gc0.count_d2_reg[5]_rep__3 ),
        .D(din[15]),
        .DPO(RAM_reg_1728_1791_15_15_n_0),
        .DPRA0(\gc0.count_d1_reg[11] [0]),
        .DPRA1(\gc0.count_d1_reg[11] [1]),
        .DPRA2(\gc0.count_d1_reg[11] [2]),
        .DPRA3(\gc0.count_d1_reg[11] [3]),
        .DPRA4(\gc0.count_d1_reg[11] [4]),
        .DPRA5(\gc0.count_d1_reg[11] [5]),
        .SPO(NLW_RAM_reg_1728_1791_15_15_SPO_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[8]_6 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_1728_1791_3_5
       (.ADDRA(\gc0.count_d1_reg[5]_rep__2 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__2 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__2 ),
        .ADDRD(ADDRD),
        .DIA(din[3]),
        .DIB(din[4]),
        .DIC(din[5]),
        .DID(1'b0),
        .DOA(RAM_reg_1728_1791_3_5_n_0),
        .DOB(RAM_reg_1728_1791_3_5_n_1),
        .DOC(RAM_reg_1728_1791_3_5_n_2),
        .DOD(NLW_RAM_reg_1728_1791_3_5_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[8]_6 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_1728_1791_6_8
       (.ADDRA(\gc0.count_d1_reg[5]_rep__4 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__4 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__4 ),
        .ADDRD(\gic0.gc0.count_d2_reg[5]_rep__0 ),
        .DIA(din[6]),
        .DIB(din[7]),
        .DIC(din[8]),
        .DID(1'b0),
        .DOA(RAM_reg_1728_1791_6_8_n_0),
        .DOB(RAM_reg_1728_1791_6_8_n_1),
        .DOC(RAM_reg_1728_1791_6_8_n_2),
        .DOD(NLW_RAM_reg_1728_1791_6_8_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[8]_6 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_1728_1791_9_11
       (.ADDRA(\gc0.count_d1_reg[5]_rep__6 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__6 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__6 ),
        .ADDRD(\gic0.gc0.count_d2_reg[5]_rep__1 ),
        .DIA(din[9]),
        .DIB(din[10]),
        .DIC(din[11]),
        .DID(1'b0),
        .DOA(RAM_reg_1728_1791_9_11_n_0),
        .DOB(RAM_reg_1728_1791_9_11_n_1),
        .DOC(RAM_reg_1728_1791_9_11_n_2),
        .DOD(NLW_RAM_reg_1728_1791_9_11_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[8]_6 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_1792_1855_0_2
       (.ADDRA(\gc0.count_d1_reg[5]_rep__0 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__0 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__0 ),
        .ADDRD(Q),
        .DIA(din[0]),
        .DIB(din[1]),
        .DIC(din[2]),
        .DID(1'b0),
        .DOA(RAM_reg_1792_1855_0_2_n_0),
        .DOB(RAM_reg_1792_1855_0_2_n_1),
        .DOC(RAM_reg_1792_1855_0_2_n_2),
        .DOD(NLW_RAM_reg_1792_1855_0_2_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[9]_7 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_1792_1855_12_14
       (.ADDRA(\gc0.count_d1_reg[5]_rep__8 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__8 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__8 ),
        .ADDRD(\gic0.gc0.count_d2_reg[5]_rep__2 ),
        .DIA(din[12]),
        .DIB(din[13]),
        .DIC(din[14]),
        .DID(1'b0),
        .DOA(RAM_reg_1792_1855_12_14_n_0),
        .DOB(RAM_reg_1792_1855_12_14_n_1),
        .DOC(RAM_reg_1792_1855_12_14_n_2),
        .DOD(NLW_RAM_reg_1792_1855_12_14_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[9]_7 ));
  RAM64X1D RAM_reg_1792_1855_15_15
       (.A0(\gic0.gc0.count_d2_reg[0]_rep__3 ),
        .A1(\gic0.gc0.count_d2_reg[1]_rep__3 ),
        .A2(\gic0.gc0.count_d2_reg[2]_rep__3 ),
        .A3(\gic0.gc0.count_d2_reg[3]_rep__3 ),
        .A4(\gic0.gc0.count_d2_reg[4]_rep__3 ),
        .A5(\gic0.gc0.count_d2_reg[5]_rep__3 ),
        .D(din[15]),
        .DPO(RAM_reg_1792_1855_15_15_n_0),
        .DPRA0(\gc0.count_d1_reg[11] [0]),
        .DPRA1(\gc0.count_d1_reg[11] [1]),
        .DPRA2(\gc0.count_d1_reg[11] [2]),
        .DPRA3(\gc0.count_d1_reg[11] [3]),
        .DPRA4(\gc0.count_d1_reg[11] [4]),
        .DPRA5(\gc0.count_d1_reg[11] [5]),
        .SPO(NLW_RAM_reg_1792_1855_15_15_SPO_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[9]_7 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_1792_1855_3_5
       (.ADDRA(\gc0.count_d1_reg[5]_rep__2 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__2 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__2 ),
        .ADDRD(ADDRD),
        .DIA(din[3]),
        .DIB(din[4]),
        .DIC(din[5]),
        .DID(1'b0),
        .DOA(RAM_reg_1792_1855_3_5_n_0),
        .DOB(RAM_reg_1792_1855_3_5_n_1),
        .DOC(RAM_reg_1792_1855_3_5_n_2),
        .DOD(NLW_RAM_reg_1792_1855_3_5_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[9]_7 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_1792_1855_6_8
       (.ADDRA(\gc0.count_d1_reg[5]_rep__4 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__4 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__4 ),
        .ADDRD(\gic0.gc0.count_d2_reg[5]_rep__0 ),
        .DIA(din[6]),
        .DIB(din[7]),
        .DIC(din[8]),
        .DID(1'b0),
        .DOA(RAM_reg_1792_1855_6_8_n_0),
        .DOB(RAM_reg_1792_1855_6_8_n_1),
        .DOC(RAM_reg_1792_1855_6_8_n_2),
        .DOD(NLW_RAM_reg_1792_1855_6_8_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[9]_7 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_1792_1855_9_11
       (.ADDRA(\gc0.count_d1_reg[5]_rep__6 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__6 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__6 ),
        .ADDRD(\gic0.gc0.count_d2_reg[5]_rep__1 ),
        .DIA(din[9]),
        .DIB(din[10]),
        .DIC(din[11]),
        .DID(1'b0),
        .DOA(RAM_reg_1792_1855_9_11_n_0),
        .DOB(RAM_reg_1792_1855_9_11_n_1),
        .DOC(RAM_reg_1792_1855_9_11_n_2),
        .DOD(NLW_RAM_reg_1792_1855_9_11_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[9]_7 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_1856_1919_0_2
       (.ADDRA(\gc0.count_d1_reg[5]_rep__0 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__0 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__0 ),
        .ADDRD(Q),
        .DIA(din[0]),
        .DIB(din[1]),
        .DIC(din[2]),
        .DID(1'b0),
        .DOA(RAM_reg_1856_1919_0_2_n_0),
        .DOB(RAM_reg_1856_1919_0_2_n_1),
        .DOC(RAM_reg_1856_1919_0_2_n_2),
        .DOD(NLW_RAM_reg_1856_1919_0_2_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[7]_2 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_1856_1919_12_14
       (.ADDRA(\gc0.count_d1_reg[5]_rep__8 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__8 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__8 ),
        .ADDRD(\gic0.gc0.count_d2_reg[5]_rep__2 ),
        .DIA(din[12]),
        .DIB(din[13]),
        .DIC(din[14]),
        .DID(1'b0),
        .DOA(RAM_reg_1856_1919_12_14_n_0),
        .DOB(RAM_reg_1856_1919_12_14_n_1),
        .DOC(RAM_reg_1856_1919_12_14_n_2),
        .DOD(NLW_RAM_reg_1856_1919_12_14_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[7]_2 ));
  RAM64X1D RAM_reg_1856_1919_15_15
       (.A0(\gic0.gc0.count_d2_reg[0]_rep__3 ),
        .A1(\gic0.gc0.count_d2_reg[1]_rep__3 ),
        .A2(\gic0.gc0.count_d2_reg[2]_rep__3 ),
        .A3(\gic0.gc0.count_d2_reg[3]_rep__3 ),
        .A4(\gic0.gc0.count_d2_reg[4]_rep__3 ),
        .A5(\gic0.gc0.count_d2_reg[5]_rep__3 ),
        .D(din[15]),
        .DPO(RAM_reg_1856_1919_15_15_n_0),
        .DPRA0(\gc0.count_d1_reg[11] [0]),
        .DPRA1(\gc0.count_d1_reg[11] [1]),
        .DPRA2(\gc0.count_d1_reg[11] [2]),
        .DPRA3(\gc0.count_d1_reg[11] [3]),
        .DPRA4(\gc0.count_d1_reg[11] [4]),
        .DPRA5(\gc0.count_d1_reg[11] [5]),
        .SPO(NLW_RAM_reg_1856_1919_15_15_SPO_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[7]_2 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_1856_1919_3_5
       (.ADDRA(\gc0.count_d1_reg[5]_rep__2 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__2 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__2 ),
        .ADDRD(ADDRD),
        .DIA(din[3]),
        .DIB(din[4]),
        .DIC(din[5]),
        .DID(1'b0),
        .DOA(RAM_reg_1856_1919_3_5_n_0),
        .DOB(RAM_reg_1856_1919_3_5_n_1),
        .DOC(RAM_reg_1856_1919_3_5_n_2),
        .DOD(NLW_RAM_reg_1856_1919_3_5_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[7]_2 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_1856_1919_6_8
       (.ADDRA(\gc0.count_d1_reg[5]_rep__4 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__4 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__4 ),
        .ADDRD(\gic0.gc0.count_d2_reg[5]_rep__0 ),
        .DIA(din[6]),
        .DIB(din[7]),
        .DIC(din[8]),
        .DID(1'b0),
        .DOA(RAM_reg_1856_1919_6_8_n_0),
        .DOB(RAM_reg_1856_1919_6_8_n_1),
        .DOC(RAM_reg_1856_1919_6_8_n_2),
        .DOD(NLW_RAM_reg_1856_1919_6_8_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[7]_2 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_1856_1919_9_11
       (.ADDRA(\gc0.count_d1_reg[5]_rep__6 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__6 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__6 ),
        .ADDRD(\gic0.gc0.count_d2_reg[5]_rep__1 ),
        .DIA(din[9]),
        .DIB(din[10]),
        .DIC(din[11]),
        .DID(1'b0),
        .DOA(RAM_reg_1856_1919_9_11_n_0),
        .DOB(RAM_reg_1856_1919_9_11_n_1),
        .DOC(RAM_reg_1856_1919_9_11_n_2),
        .DOD(NLW_RAM_reg_1856_1919_9_11_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[7]_2 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_1920_1983_0_2
       (.ADDRA(\gc0.count_d1_reg[5]_rep__0 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__0 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__0 ),
        .ADDRD(Q),
        .DIA(din[0]),
        .DIB(din[1]),
        .DIC(din[2]),
        .DID(1'b0),
        .DOA(RAM_reg_1920_1983_0_2_n_0),
        .DOB(RAM_reg_1920_1983_0_2_n_1),
        .DOC(RAM_reg_1920_1983_0_2_n_2),
        .DOD(NLW_RAM_reg_1920_1983_0_2_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[6]_7 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_1920_1983_12_14
       (.ADDRA(\gc0.count_d1_reg[5]_rep__8 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__8 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__8 ),
        .ADDRD(\gic0.gc0.count_d2_reg[5]_rep__2 ),
        .DIA(din[12]),
        .DIB(din[13]),
        .DIC(din[14]),
        .DID(1'b0),
        .DOA(RAM_reg_1920_1983_12_14_n_0),
        .DOB(RAM_reg_1920_1983_12_14_n_1),
        .DOC(RAM_reg_1920_1983_12_14_n_2),
        .DOD(NLW_RAM_reg_1920_1983_12_14_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[6]_7 ));
  RAM64X1D RAM_reg_1920_1983_15_15
       (.A0(\gic0.gc0.count_d2_reg[0]_rep__3 ),
        .A1(\gic0.gc0.count_d2_reg[1]_rep__3 ),
        .A2(\gic0.gc0.count_d2_reg[2]_rep__3 ),
        .A3(\gic0.gc0.count_d2_reg[3]_rep__3 ),
        .A4(\gic0.gc0.count_d2_reg[4]_rep__3 ),
        .A5(\gic0.gc0.count_d2_reg[5]_rep__3 ),
        .D(din[15]),
        .DPO(RAM_reg_1920_1983_15_15_n_0),
        .DPRA0(\gc0.count_d1_reg[11] [0]),
        .DPRA1(\gc0.count_d1_reg[11] [1]),
        .DPRA2(\gc0.count_d1_reg[11] [2]),
        .DPRA3(\gc0.count_d1_reg[11] [3]),
        .DPRA4(\gc0.count_d1_reg[11] [4]),
        .DPRA5(\gc0.count_d1_reg[11] [5]),
        .SPO(NLW_RAM_reg_1920_1983_15_15_SPO_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[6]_7 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_1920_1983_3_5
       (.ADDRA(\gc0.count_d1_reg[5]_rep__2 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__2 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__2 ),
        .ADDRD(ADDRD),
        .DIA(din[3]),
        .DIB(din[4]),
        .DIC(din[5]),
        .DID(1'b0),
        .DOA(RAM_reg_1920_1983_3_5_n_0),
        .DOB(RAM_reg_1920_1983_3_5_n_1),
        .DOC(RAM_reg_1920_1983_3_5_n_2),
        .DOD(NLW_RAM_reg_1920_1983_3_5_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[6]_7 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_1920_1983_6_8
       (.ADDRA(\gc0.count_d1_reg[5]_rep__4 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__4 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__4 ),
        .ADDRD(\gic0.gc0.count_d2_reg[5]_rep__0 ),
        .DIA(din[6]),
        .DIB(din[7]),
        .DIC(din[8]),
        .DID(1'b0),
        .DOA(RAM_reg_1920_1983_6_8_n_0),
        .DOB(RAM_reg_1920_1983_6_8_n_1),
        .DOC(RAM_reg_1920_1983_6_8_n_2),
        .DOD(NLW_RAM_reg_1920_1983_6_8_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[6]_7 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_1920_1983_9_11
       (.ADDRA(\gc0.count_d1_reg[5]_rep__6 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__6 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__6 ),
        .ADDRD(\gic0.gc0.count_d2_reg[5]_rep__1 ),
        .DIA(din[9]),
        .DIB(din[10]),
        .DIC(din[11]),
        .DID(1'b0),
        .DOA(RAM_reg_1920_1983_9_11_n_0),
        .DOB(RAM_reg_1920_1983_9_11_n_1),
        .DOC(RAM_reg_1920_1983_9_11_n_2),
        .DOD(NLW_RAM_reg_1920_1983_9_11_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[6]_7 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_192_255_0_2
       (.ADDRA(\gc0.count_d1_reg[5]_rep__0 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__0 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__0 ),
        .ADDRD(Q),
        .DIA(din[0]),
        .DIB(din[1]),
        .DIC(din[2]),
        .DID(1'b0),
        .DOA(RAM_reg_192_255_0_2_n_0),
        .DOB(RAM_reg_192_255_0_2_n_1),
        .DOC(RAM_reg_192_255_0_2_n_2),
        .DOD(NLW_RAM_reg_192_255_0_2_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[6]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_192_255_12_14
       (.ADDRA(\gc0.count_d1_reg[5]_rep__8 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__8 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__8 ),
        .ADDRD(\gic0.gc0.count_d2_reg[5]_rep__2 ),
        .DIA(din[12]),
        .DIB(din[13]),
        .DIC(din[14]),
        .DID(1'b0),
        .DOA(RAM_reg_192_255_12_14_n_0),
        .DOB(RAM_reg_192_255_12_14_n_1),
        .DOC(RAM_reg_192_255_12_14_n_2),
        .DOD(NLW_RAM_reg_192_255_12_14_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[6]_0 ));
  RAM64X1D RAM_reg_192_255_15_15
       (.A0(\gic0.gc0.count_d2_reg[0]_rep__3 ),
        .A1(\gic0.gc0.count_d2_reg[1]_rep__3 ),
        .A2(\gic0.gc0.count_d2_reg[2]_rep__3 ),
        .A3(\gic0.gc0.count_d2_reg[3]_rep__3 ),
        .A4(\gic0.gc0.count_d2_reg[4]_rep__3 ),
        .A5(\gic0.gc0.count_d2_reg[5]_rep__3 ),
        .D(din[15]),
        .DPO(RAM_reg_192_255_15_15_n_0),
        .DPRA0(\gc0.count_d1_reg[11] [0]),
        .DPRA1(\gc0.count_d1_reg[11] [1]),
        .DPRA2(\gc0.count_d1_reg[11] [2]),
        .DPRA3(\gc0.count_d1_reg[11] [3]),
        .DPRA4(\gc0.count_d1_reg[11] [4]),
        .DPRA5(\gc0.count_d1_reg[11] [5]),
        .SPO(NLW_RAM_reg_192_255_15_15_SPO_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[6]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_192_255_3_5
       (.ADDRA(\gc0.count_d1_reg[5]_rep__2 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__2 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__2 ),
        .ADDRD(ADDRD),
        .DIA(din[3]),
        .DIB(din[4]),
        .DIC(din[5]),
        .DID(1'b0),
        .DOA(RAM_reg_192_255_3_5_n_0),
        .DOB(RAM_reg_192_255_3_5_n_1),
        .DOC(RAM_reg_192_255_3_5_n_2),
        .DOD(NLW_RAM_reg_192_255_3_5_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[6]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_192_255_6_8
       (.ADDRA(\gc0.count_d1_reg[5]_rep__4 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__4 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__4 ),
        .ADDRD(\gic0.gc0.count_d2_reg[5]_rep__0 ),
        .DIA(din[6]),
        .DIB(din[7]),
        .DIC(din[8]),
        .DID(1'b0),
        .DOA(RAM_reg_192_255_6_8_n_0),
        .DOB(RAM_reg_192_255_6_8_n_1),
        .DOC(RAM_reg_192_255_6_8_n_2),
        .DOD(NLW_RAM_reg_192_255_6_8_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[6]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_192_255_9_11
       (.ADDRA(\gc0.count_d1_reg[5]_rep__6 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__6 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__6 ),
        .ADDRD(\gic0.gc0.count_d2_reg[5]_rep__1 ),
        .DIA(din[9]),
        .DIB(din[10]),
        .DIC(din[11]),
        .DID(1'b0),
        .DOA(RAM_reg_192_255_9_11_n_0),
        .DOB(RAM_reg_192_255_9_11_n_1),
        .DOC(RAM_reg_192_255_9_11_n_2),
        .DOD(NLW_RAM_reg_192_255_9_11_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[6]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_1984_2047_0_2
       (.ADDRA(\gc0.count_d1_reg[5]_rep__0 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__0 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__0 ),
        .ADDRD(Q),
        .DIA(din[0]),
        .DIB(din[1]),
        .DIC(din[2]),
        .DID(1'b0),
        .DOA(RAM_reg_1984_2047_0_2_n_0),
        .DOB(RAM_reg_1984_2047_0_2_n_1),
        .DOC(RAM_reg_1984_2047_0_2_n_2),
        .DOD(NLW_RAM_reg_1984_2047_0_2_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[8]_7 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_1984_2047_12_14
       (.ADDRA(\gc0.count_d1_reg[5]_rep__8 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__8 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__8 ),
        .ADDRD(\gic0.gc0.count_d2_reg[5]_rep__2 ),
        .DIA(din[12]),
        .DIB(din[13]),
        .DIC(din[14]),
        .DID(1'b0),
        .DOA(RAM_reg_1984_2047_12_14_n_0),
        .DOB(RAM_reg_1984_2047_12_14_n_1),
        .DOC(RAM_reg_1984_2047_12_14_n_2),
        .DOD(NLW_RAM_reg_1984_2047_12_14_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[8]_7 ));
  RAM64X1D RAM_reg_1984_2047_15_15
       (.A0(\gic0.gc0.count_d2_reg[0]_rep__3 ),
        .A1(\gic0.gc0.count_d2_reg[1]_rep__3 ),
        .A2(\gic0.gc0.count_d2_reg[2]_rep__3 ),
        .A3(\gic0.gc0.count_d2_reg[3]_rep__3 ),
        .A4(\gic0.gc0.count_d2_reg[4]_rep__3 ),
        .A5(\gic0.gc0.count_d2_reg[5]_rep__3 ),
        .D(din[15]),
        .DPO(RAM_reg_1984_2047_15_15_n_0),
        .DPRA0(\gc0.count_d1_reg[11] [0]),
        .DPRA1(\gc0.count_d1_reg[11] [1]),
        .DPRA2(\gc0.count_d1_reg[11] [2]),
        .DPRA3(\gc0.count_d1_reg[11] [3]),
        .DPRA4(\gc0.count_d1_reg[11] [4]),
        .DPRA5(\gc0.count_d1_reg[11] [5]),
        .SPO(NLW_RAM_reg_1984_2047_15_15_SPO_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[8]_7 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_1984_2047_3_5
       (.ADDRA(\gc0.count_d1_reg[5]_rep__2 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__2 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__2 ),
        .ADDRD(ADDRD),
        .DIA(din[3]),
        .DIB(din[4]),
        .DIC(din[5]),
        .DID(1'b0),
        .DOA(RAM_reg_1984_2047_3_5_n_0),
        .DOB(RAM_reg_1984_2047_3_5_n_1),
        .DOC(RAM_reg_1984_2047_3_5_n_2),
        .DOD(NLW_RAM_reg_1984_2047_3_5_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[8]_7 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_1984_2047_6_8
       (.ADDRA(\gc0.count_d1_reg[5]_rep__4 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__4 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__4 ),
        .ADDRD(\gic0.gc0.count_d2_reg[5]_rep__0 ),
        .DIA(din[6]),
        .DIB(din[7]),
        .DIC(din[8]),
        .DID(1'b0),
        .DOA(RAM_reg_1984_2047_6_8_n_0),
        .DOB(RAM_reg_1984_2047_6_8_n_1),
        .DOC(RAM_reg_1984_2047_6_8_n_2),
        .DOD(NLW_RAM_reg_1984_2047_6_8_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[8]_7 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_1984_2047_9_11
       (.ADDRA(\gc0.count_d1_reg[5]_rep__6 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__6 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__6 ),
        .ADDRD(\gic0.gc0.count_d2_reg[5]_rep__1 ),
        .DIA(din[9]),
        .DIB(din[10]),
        .DIC(din[11]),
        .DID(1'b0),
        .DOA(RAM_reg_1984_2047_9_11_n_0),
        .DOB(RAM_reg_1984_2047_9_11_n_1),
        .DOC(RAM_reg_1984_2047_9_11_n_2),
        .DOD(NLW_RAM_reg_1984_2047_9_11_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[8]_7 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_2048_2111_0_2
       (.ADDRA(ADDRC),
        .ADDRB(ADDRC),
        .ADDRC(ADDRC),
        .ADDRD(Q),
        .DIA(din[0]),
        .DIB(din[1]),
        .DIC(din[2]),
        .DID(1'b0),
        .DOA(RAM_reg_2048_2111_0_2_n_0),
        .DOB(RAM_reg_2048_2111_0_2_n_1),
        .DOC(RAM_reg_2048_2111_0_2_n_2),
        .DOD(NLW_RAM_reg_2048_2111_0_2_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[6]_8 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_2048_2111_12_14
       (.ADDRA(\gc0.count_d1_reg[5]_rep__7 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__7 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__7 ),
        .ADDRD(\gic0.gc0.count_d2_reg[5]_rep__2 ),
        .DIA(din[12]),
        .DIB(din[13]),
        .DIC(din[14]),
        .DID(1'b0),
        .DOA(RAM_reg_2048_2111_12_14_n_0),
        .DOB(RAM_reg_2048_2111_12_14_n_1),
        .DOC(RAM_reg_2048_2111_12_14_n_2),
        .DOD(NLW_RAM_reg_2048_2111_12_14_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[6]_8 ));
  RAM64X1D RAM_reg_2048_2111_15_15
       (.A0(\gic0.gc0.count_d2_reg[0]_rep__3 ),
        .A1(\gic0.gc0.count_d2_reg[1]_rep__3 ),
        .A2(\gic0.gc0.count_d2_reg[2]_rep__3 ),
        .A3(\gic0.gc0.count_d2_reg[3]_rep__3 ),
        .A4(\gic0.gc0.count_d2_reg[4]_rep__3 ),
        .A5(\gic0.gc0.count_d2_reg[5]_rep__3 ),
        .D(din[15]),
        .DPO(RAM_reg_2048_2111_15_15_n_0),
        .DPRA0(\gc0.count_d1_reg[11] [0]),
        .DPRA1(\gc0.count_d1_reg[11] [1]),
        .DPRA2(\gc0.count_d1_reg[11] [2]),
        .DPRA3(\gc0.count_d1_reg[11] [3]),
        .DPRA4(\gc0.count_d1_reg[11] [4]),
        .DPRA5(\gc0.count_d1_reg[11] [5]),
        .SPO(NLW_RAM_reg_2048_2111_15_15_SPO_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[6]_8 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_2048_2111_3_5
       (.ADDRA(\gc0.count_d1_reg[5]_rep__1 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__1 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__1 ),
        .ADDRD(ADDRD),
        .DIA(din[3]),
        .DIB(din[4]),
        .DIC(din[5]),
        .DID(1'b0),
        .DOA(RAM_reg_2048_2111_3_5_n_0),
        .DOB(RAM_reg_2048_2111_3_5_n_1),
        .DOC(RAM_reg_2048_2111_3_5_n_2),
        .DOD(NLW_RAM_reg_2048_2111_3_5_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[6]_8 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_2048_2111_6_8
       (.ADDRA(\gc0.count_d1_reg[5]_rep__3 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__3 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__3 ),
        .ADDRD(\gic0.gc0.count_d2_reg[5]_rep__0 ),
        .DIA(din[6]),
        .DIB(din[7]),
        .DIC(din[8]),
        .DID(1'b0),
        .DOA(RAM_reg_2048_2111_6_8_n_0),
        .DOB(RAM_reg_2048_2111_6_8_n_1),
        .DOC(RAM_reg_2048_2111_6_8_n_2),
        .DOD(NLW_RAM_reg_2048_2111_6_8_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[6]_8 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_2048_2111_9_11
       (.ADDRA(\gc0.count_d1_reg[5]_rep__5 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__5 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__5 ),
        .ADDRD(\gic0.gc0.count_d2_reg[5]_rep__1 ),
        .DIA(din[9]),
        .DIB(din[10]),
        .DIC(din[11]),
        .DID(1'b0),
        .DOA(RAM_reg_2048_2111_9_11_n_0),
        .DOB(RAM_reg_2048_2111_9_11_n_1),
        .DOC(RAM_reg_2048_2111_9_11_n_2),
        .DOD(NLW_RAM_reg_2048_2111_9_11_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[6]_8 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_2112_2175_0_2
       (.ADDRA(ADDRC),
        .ADDRB(ADDRC),
        .ADDRC(ADDRC),
        .ADDRD(Q),
        .DIA(din[0]),
        .DIB(din[1]),
        .DIC(din[2]),
        .DID(1'b0),
        .DOA(RAM_reg_2112_2175_0_2_n_0),
        .DOB(RAM_reg_2112_2175_0_2_n_1),
        .DOC(RAM_reg_2112_2175_0_2_n_2),
        .DOD(NLW_RAM_reg_2112_2175_0_2_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[9]_8 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_2112_2175_12_14
       (.ADDRA(\gc0.count_d1_reg[5]_rep__7 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__7 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__7 ),
        .ADDRD(\gic0.gc0.count_d2_reg[5]_rep__2 ),
        .DIA(din[12]),
        .DIB(din[13]),
        .DIC(din[14]),
        .DID(1'b0),
        .DOA(RAM_reg_2112_2175_12_14_n_0),
        .DOB(RAM_reg_2112_2175_12_14_n_1),
        .DOC(RAM_reg_2112_2175_12_14_n_2),
        .DOD(NLW_RAM_reg_2112_2175_12_14_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[9]_8 ));
  RAM64X1D RAM_reg_2112_2175_15_15
       (.A0(\gic0.gc0.count_d2_reg[0]_rep__3 ),
        .A1(\gic0.gc0.count_d2_reg[1]_rep__3 ),
        .A2(\gic0.gc0.count_d2_reg[2]_rep__3 ),
        .A3(\gic0.gc0.count_d2_reg[3]_rep__3 ),
        .A4(\gic0.gc0.count_d2_reg[4]_rep__3 ),
        .A5(\gic0.gc0.count_d2_reg[5]_rep__3 ),
        .D(din[15]),
        .DPO(RAM_reg_2112_2175_15_15_n_0),
        .DPRA0(\gc0.count_d1_reg[11] [0]),
        .DPRA1(\gc0.count_d1_reg[11] [1]),
        .DPRA2(\gc0.count_d1_reg[11] [2]),
        .DPRA3(\gc0.count_d1_reg[11] [3]),
        .DPRA4(\gc0.count_d1_reg[11] [4]),
        .DPRA5(\gc0.count_d1_reg[11] [5]),
        .SPO(NLW_RAM_reg_2112_2175_15_15_SPO_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[9]_8 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_2112_2175_3_5
       (.ADDRA(\gc0.count_d1_reg[5]_rep__1 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__1 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__1 ),
        .ADDRD(ADDRD),
        .DIA(din[3]),
        .DIB(din[4]),
        .DIC(din[5]),
        .DID(1'b0),
        .DOA(RAM_reg_2112_2175_3_5_n_0),
        .DOB(RAM_reg_2112_2175_3_5_n_1),
        .DOC(RAM_reg_2112_2175_3_5_n_2),
        .DOD(NLW_RAM_reg_2112_2175_3_5_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[9]_8 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_2112_2175_6_8
       (.ADDRA(\gc0.count_d1_reg[5]_rep__3 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__3 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__3 ),
        .ADDRD(\gic0.gc0.count_d2_reg[5]_rep__0 ),
        .DIA(din[6]),
        .DIB(din[7]),
        .DIC(din[8]),
        .DID(1'b0),
        .DOA(RAM_reg_2112_2175_6_8_n_0),
        .DOB(RAM_reg_2112_2175_6_8_n_1),
        .DOC(RAM_reg_2112_2175_6_8_n_2),
        .DOD(NLW_RAM_reg_2112_2175_6_8_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[9]_8 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_2112_2175_9_11
       (.ADDRA(\gc0.count_d1_reg[5]_rep__5 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__5 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__5 ),
        .ADDRD(\gic0.gc0.count_d2_reg[5]_rep__1 ),
        .DIA(din[9]),
        .DIB(din[10]),
        .DIC(din[11]),
        .DID(1'b0),
        .DOA(RAM_reg_2112_2175_9_11_n_0),
        .DOB(RAM_reg_2112_2175_9_11_n_1),
        .DOC(RAM_reg_2112_2175_9_11_n_2),
        .DOD(NLW_RAM_reg_2112_2175_9_11_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[9]_8 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_2176_2239_0_2
       (.ADDRA(ADDRC),
        .ADDRB(ADDRC),
        .ADDRC(ADDRC),
        .ADDRD(Q),
        .DIA(din[0]),
        .DIB(din[1]),
        .DIC(din[2]),
        .DID(1'b0),
        .DOA(RAM_reg_2176_2239_0_2_n_0),
        .DOB(RAM_reg_2176_2239_0_2_n_1),
        .DOC(RAM_reg_2176_2239_0_2_n_2),
        .DOD(NLW_RAM_reg_2176_2239_0_2_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[9]_9 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_2176_2239_12_14
       (.ADDRA(\gc0.count_d1_reg[5]_rep__7 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__7 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__7 ),
        .ADDRD(\gic0.gc0.count_d2_reg[5]_rep__2 ),
        .DIA(din[12]),
        .DIB(din[13]),
        .DIC(din[14]),
        .DID(1'b0),
        .DOA(RAM_reg_2176_2239_12_14_n_0),
        .DOB(RAM_reg_2176_2239_12_14_n_1),
        .DOC(RAM_reg_2176_2239_12_14_n_2),
        .DOD(NLW_RAM_reg_2176_2239_12_14_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[9]_9 ));
  RAM64X1D RAM_reg_2176_2239_15_15
       (.A0(\gic0.gc0.count_d2_reg[0]_rep__3 ),
        .A1(\gic0.gc0.count_d2_reg[1]_rep__3 ),
        .A2(\gic0.gc0.count_d2_reg[2]_rep__3 ),
        .A3(\gic0.gc0.count_d2_reg[3]_rep__3 ),
        .A4(\gic0.gc0.count_d2_reg[4]_rep__3 ),
        .A5(\gic0.gc0.count_d2_reg[5]_rep__3 ),
        .D(din[15]),
        .DPO(RAM_reg_2176_2239_15_15_n_0),
        .DPRA0(\gc0.count_d1_reg[11] [0]),
        .DPRA1(\gc0.count_d1_reg[11] [1]),
        .DPRA2(\gc0.count_d1_reg[11] [2]),
        .DPRA3(\gc0.count_d1_reg[11] [3]),
        .DPRA4(\gc0.count_d1_reg[11] [4]),
        .DPRA5(\gc0.count_d1_reg[11] [5]),
        .SPO(NLW_RAM_reg_2176_2239_15_15_SPO_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[9]_9 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_2176_2239_3_5
       (.ADDRA(\gc0.count_d1_reg[5]_rep__1 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__1 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__1 ),
        .ADDRD(ADDRD),
        .DIA(din[3]),
        .DIB(din[4]),
        .DIC(din[5]),
        .DID(1'b0),
        .DOA(RAM_reg_2176_2239_3_5_n_0),
        .DOB(RAM_reg_2176_2239_3_5_n_1),
        .DOC(RAM_reg_2176_2239_3_5_n_2),
        .DOD(NLW_RAM_reg_2176_2239_3_5_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[9]_9 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_2176_2239_6_8
       (.ADDRA(\gc0.count_d1_reg[5]_rep__3 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__3 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__3 ),
        .ADDRD(\gic0.gc0.count_d2_reg[5]_rep__0 ),
        .DIA(din[6]),
        .DIB(din[7]),
        .DIC(din[8]),
        .DID(1'b0),
        .DOA(RAM_reg_2176_2239_6_8_n_0),
        .DOB(RAM_reg_2176_2239_6_8_n_1),
        .DOC(RAM_reg_2176_2239_6_8_n_2),
        .DOD(NLW_RAM_reg_2176_2239_6_8_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[9]_9 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_2176_2239_9_11
       (.ADDRA(\gc0.count_d1_reg[5]_rep__5 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__5 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__5 ),
        .ADDRD(\gic0.gc0.count_d2_reg[5]_rep__1 ),
        .DIA(din[9]),
        .DIB(din[10]),
        .DIC(din[11]),
        .DID(1'b0),
        .DOA(RAM_reg_2176_2239_9_11_n_0),
        .DOB(RAM_reg_2176_2239_9_11_n_1),
        .DOC(RAM_reg_2176_2239_9_11_n_2),
        .DOD(NLW_RAM_reg_2176_2239_9_11_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[9]_9 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_2240_2303_0_2
       (.ADDRA(ADDRC),
        .ADDRB(ADDRC),
        .ADDRC(ADDRC),
        .ADDRD(Q),
        .DIA(din[0]),
        .DIB(din[1]),
        .DIC(din[2]),
        .DID(1'b0),
        .DOA(RAM_reg_2240_2303_0_2_n_0),
        .DOB(RAM_reg_2240_2303_0_2_n_1),
        .DOC(RAM_reg_2240_2303_0_2_n_2),
        .DOD(NLW_RAM_reg_2240_2303_0_2_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[6]_9 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_2240_2303_12_14
       (.ADDRA(\gc0.count_d1_reg[5]_rep__7 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__7 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__7 ),
        .ADDRD(\gic0.gc0.count_d2_reg[5]_rep__2 ),
        .DIA(din[12]),
        .DIB(din[13]),
        .DIC(din[14]),
        .DID(1'b0),
        .DOA(RAM_reg_2240_2303_12_14_n_0),
        .DOB(RAM_reg_2240_2303_12_14_n_1),
        .DOC(RAM_reg_2240_2303_12_14_n_2),
        .DOD(NLW_RAM_reg_2240_2303_12_14_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[6]_9 ));
  RAM64X1D RAM_reg_2240_2303_15_15
       (.A0(\gic0.gc0.count_d2_reg[0]_rep__3 ),
        .A1(\gic0.gc0.count_d2_reg[1]_rep__3 ),
        .A2(\gic0.gc0.count_d2_reg[2]_rep__3 ),
        .A3(\gic0.gc0.count_d2_reg[3]_rep__3 ),
        .A4(\gic0.gc0.count_d2_reg[4]_rep__3 ),
        .A5(\gic0.gc0.count_d2_reg[5]_rep__3 ),
        .D(din[15]),
        .DPO(RAM_reg_2240_2303_15_15_n_0),
        .DPRA0(\gc0.count_d1_reg[11] [0]),
        .DPRA1(\gc0.count_d1_reg[11] [1]),
        .DPRA2(\gc0.count_d1_reg[11] [2]),
        .DPRA3(\gc0.count_d1_reg[11] [3]),
        .DPRA4(\gc0.count_d1_reg[11] [4]),
        .DPRA5(\gc0.count_d1_reg[11] [5]),
        .SPO(NLW_RAM_reg_2240_2303_15_15_SPO_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[6]_9 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_2240_2303_3_5
       (.ADDRA(\gc0.count_d1_reg[5]_rep__1 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__1 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__1 ),
        .ADDRD(ADDRD),
        .DIA(din[3]),
        .DIB(din[4]),
        .DIC(din[5]),
        .DID(1'b0),
        .DOA(RAM_reg_2240_2303_3_5_n_0),
        .DOB(RAM_reg_2240_2303_3_5_n_1),
        .DOC(RAM_reg_2240_2303_3_5_n_2),
        .DOD(NLW_RAM_reg_2240_2303_3_5_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[6]_9 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_2240_2303_6_8
       (.ADDRA(\gc0.count_d1_reg[5]_rep__3 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__3 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__3 ),
        .ADDRD(\gic0.gc0.count_d2_reg[5]_rep__0 ),
        .DIA(din[6]),
        .DIB(din[7]),
        .DIC(din[8]),
        .DID(1'b0),
        .DOA(RAM_reg_2240_2303_6_8_n_0),
        .DOB(RAM_reg_2240_2303_6_8_n_1),
        .DOC(RAM_reg_2240_2303_6_8_n_2),
        .DOD(NLW_RAM_reg_2240_2303_6_8_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[6]_9 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_2240_2303_9_11
       (.ADDRA(\gc0.count_d1_reg[5]_rep__5 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__5 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__5 ),
        .ADDRD(\gic0.gc0.count_d2_reg[5]_rep__1 ),
        .DIA(din[9]),
        .DIB(din[10]),
        .DIC(din[11]),
        .DID(1'b0),
        .DOA(RAM_reg_2240_2303_9_11_n_0),
        .DOB(RAM_reg_2240_2303_9_11_n_1),
        .DOC(RAM_reg_2240_2303_9_11_n_2),
        .DOD(NLW_RAM_reg_2240_2303_9_11_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[6]_9 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_2304_2367_0_2
       (.ADDRA(ADDRC),
        .ADDRB(ADDRC),
        .ADDRC(ADDRC),
        .ADDRD(Q),
        .DIA(din[0]),
        .DIB(din[1]),
        .DIC(din[2]),
        .DID(1'b0),
        .DOA(RAM_reg_2304_2367_0_2_n_0),
        .DOB(RAM_reg_2304_2367_0_2_n_1),
        .DOC(RAM_reg_2304_2367_0_2_n_2),
        .DOD(NLW_RAM_reg_2304_2367_0_2_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[9]_10 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_2304_2367_12_14
       (.ADDRA(\gc0.count_d1_reg[5]_rep__7 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__7 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__7 ),
        .ADDRD(\gic0.gc0.count_d2_reg[5]_rep__2 ),
        .DIA(din[12]),
        .DIB(din[13]),
        .DIC(din[14]),
        .DID(1'b0),
        .DOA(RAM_reg_2304_2367_12_14_n_0),
        .DOB(RAM_reg_2304_2367_12_14_n_1),
        .DOC(RAM_reg_2304_2367_12_14_n_2),
        .DOD(NLW_RAM_reg_2304_2367_12_14_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[9]_10 ));
  RAM64X1D RAM_reg_2304_2367_15_15
       (.A0(\gic0.gc0.count_d2_reg[0]_rep__3 ),
        .A1(\gic0.gc0.count_d2_reg[1]_rep__3 ),
        .A2(\gic0.gc0.count_d2_reg[2]_rep__3 ),
        .A3(\gic0.gc0.count_d2_reg[3]_rep__3 ),
        .A4(\gic0.gc0.count_d2_reg[4]_rep__3 ),
        .A5(\gic0.gc0.count_d2_reg[5]_rep__3 ),
        .D(din[15]),
        .DPO(RAM_reg_2304_2367_15_15_n_0),
        .DPRA0(\gc0.count_d1_reg[11] [0]),
        .DPRA1(\gc0.count_d1_reg[11] [1]),
        .DPRA2(\gc0.count_d1_reg[11] [2]),
        .DPRA3(\gc0.count_d1_reg[11] [3]),
        .DPRA4(\gc0.count_d1_reg[11] [4]),
        .DPRA5(\gc0.count_d1_reg[11] [5]),
        .SPO(NLW_RAM_reg_2304_2367_15_15_SPO_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[9]_10 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_2304_2367_3_5
       (.ADDRA(\gc0.count_d1_reg[5]_rep__1 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__1 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__1 ),
        .ADDRD(ADDRD),
        .DIA(din[3]),
        .DIB(din[4]),
        .DIC(din[5]),
        .DID(1'b0),
        .DOA(RAM_reg_2304_2367_3_5_n_0),
        .DOB(RAM_reg_2304_2367_3_5_n_1),
        .DOC(RAM_reg_2304_2367_3_5_n_2),
        .DOD(NLW_RAM_reg_2304_2367_3_5_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[9]_10 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_2304_2367_6_8
       (.ADDRA(\gc0.count_d1_reg[5]_rep__3 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__3 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__3 ),
        .ADDRD(\gic0.gc0.count_d2_reg[5]_rep__0 ),
        .DIA(din[6]),
        .DIB(din[7]),
        .DIC(din[8]),
        .DID(1'b0),
        .DOA(RAM_reg_2304_2367_6_8_n_0),
        .DOB(RAM_reg_2304_2367_6_8_n_1),
        .DOC(RAM_reg_2304_2367_6_8_n_2),
        .DOD(NLW_RAM_reg_2304_2367_6_8_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[9]_10 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_2304_2367_9_11
       (.ADDRA(\gc0.count_d1_reg[5]_rep__5 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__5 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__5 ),
        .ADDRD(\gic0.gc0.count_d2_reg[5]_rep__1 ),
        .DIA(din[9]),
        .DIB(din[10]),
        .DIC(din[11]),
        .DID(1'b0),
        .DOA(RAM_reg_2304_2367_9_11_n_0),
        .DOB(RAM_reg_2304_2367_9_11_n_1),
        .DOC(RAM_reg_2304_2367_9_11_n_2),
        .DOD(NLW_RAM_reg_2304_2367_9_11_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[9]_10 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_2368_2431_0_2
       (.ADDRA(ADDRC),
        .ADDRB(ADDRC),
        .ADDRC(ADDRC),
        .ADDRD(Q),
        .DIA(din[0]),
        .DIB(din[1]),
        .DIC(din[2]),
        .DID(1'b0),
        .DOA(RAM_reg_2368_2431_0_2_n_0),
        .DOB(RAM_reg_2368_2431_0_2_n_1),
        .DOC(RAM_reg_2368_2431_0_2_n_2),
        .DOD(NLW_RAM_reg_2368_2431_0_2_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[9]_11 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_2368_2431_12_14
       (.ADDRA(\gc0.count_d1_reg[5]_rep__7 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__7 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__7 ),
        .ADDRD(\gic0.gc0.count_d2_reg[5]_rep__2 ),
        .DIA(din[12]),
        .DIB(din[13]),
        .DIC(din[14]),
        .DID(1'b0),
        .DOA(RAM_reg_2368_2431_12_14_n_0),
        .DOB(RAM_reg_2368_2431_12_14_n_1),
        .DOC(RAM_reg_2368_2431_12_14_n_2),
        .DOD(NLW_RAM_reg_2368_2431_12_14_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[9]_11 ));
  RAM64X1D RAM_reg_2368_2431_15_15
       (.A0(\gic0.gc0.count_d2_reg[0]_rep__3 ),
        .A1(\gic0.gc0.count_d2_reg[1]_rep__3 ),
        .A2(\gic0.gc0.count_d2_reg[2]_rep__3 ),
        .A3(\gic0.gc0.count_d2_reg[3]_rep__3 ),
        .A4(\gic0.gc0.count_d2_reg[4]_rep__3 ),
        .A5(\gic0.gc0.count_d2_reg[5]_rep__3 ),
        .D(din[15]),
        .DPO(RAM_reg_2368_2431_15_15_n_0),
        .DPRA0(\gc0.count_d1_reg[11] [0]),
        .DPRA1(\gc0.count_d1_reg[11] [1]),
        .DPRA2(\gc0.count_d1_reg[11] [2]),
        .DPRA3(\gc0.count_d1_reg[11] [3]),
        .DPRA4(\gc0.count_d1_reg[11] [4]),
        .DPRA5(\gc0.count_d1_reg[11] [5]),
        .SPO(NLW_RAM_reg_2368_2431_15_15_SPO_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[9]_11 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_2368_2431_3_5
       (.ADDRA(\gc0.count_d1_reg[5]_rep__1 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__1 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__1 ),
        .ADDRD(ADDRD),
        .DIA(din[3]),
        .DIB(din[4]),
        .DIC(din[5]),
        .DID(1'b0),
        .DOA(RAM_reg_2368_2431_3_5_n_0),
        .DOB(RAM_reg_2368_2431_3_5_n_1),
        .DOC(RAM_reg_2368_2431_3_5_n_2),
        .DOD(NLW_RAM_reg_2368_2431_3_5_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[9]_11 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_2368_2431_6_8
       (.ADDRA(\gc0.count_d1_reg[5]_rep__3 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__3 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__3 ),
        .ADDRD(\gic0.gc0.count_d2_reg[5]_rep__0 ),
        .DIA(din[6]),
        .DIB(din[7]),
        .DIC(din[8]),
        .DID(1'b0),
        .DOA(RAM_reg_2368_2431_6_8_n_0),
        .DOB(RAM_reg_2368_2431_6_8_n_1),
        .DOC(RAM_reg_2368_2431_6_8_n_2),
        .DOD(NLW_RAM_reg_2368_2431_6_8_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[9]_11 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_2368_2431_9_11
       (.ADDRA(\gc0.count_d1_reg[5]_rep__5 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__5 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__5 ),
        .ADDRD(\gic0.gc0.count_d2_reg[5]_rep__1 ),
        .DIA(din[9]),
        .DIB(din[10]),
        .DIC(din[11]),
        .DID(1'b0),
        .DOA(RAM_reg_2368_2431_9_11_n_0),
        .DOB(RAM_reg_2368_2431_9_11_n_1),
        .DOC(RAM_reg_2368_2431_9_11_n_2),
        .DOD(NLW_RAM_reg_2368_2431_9_11_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[9]_11 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_2432_2495_0_2
       (.ADDRA(ADDRC),
        .ADDRB(ADDRC),
        .ADDRC(ADDRC),
        .ADDRD(Q),
        .DIA(din[0]),
        .DIB(din[1]),
        .DIC(din[2]),
        .DID(1'b0),
        .DOA(RAM_reg_2432_2495_0_2_n_0),
        .DOB(RAM_reg_2432_2495_0_2_n_1),
        .DOC(RAM_reg_2432_2495_0_2_n_2),
        .DOD(NLW_RAM_reg_2432_2495_0_2_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[9]_12 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_2432_2495_12_14
       (.ADDRA(\gc0.count_d1_reg[5]_rep__7 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__7 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__7 ),
        .ADDRD(\gic0.gc0.count_d2_reg[5]_rep__2 ),
        .DIA(din[12]),
        .DIB(din[13]),
        .DIC(din[14]),
        .DID(1'b0),
        .DOA(RAM_reg_2432_2495_12_14_n_0),
        .DOB(RAM_reg_2432_2495_12_14_n_1),
        .DOC(RAM_reg_2432_2495_12_14_n_2),
        .DOD(NLW_RAM_reg_2432_2495_12_14_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[9]_12 ));
  RAM64X1D RAM_reg_2432_2495_15_15
       (.A0(\gic0.gc0.count_d2_reg[0]_rep__3 ),
        .A1(\gic0.gc0.count_d2_reg[1]_rep__3 ),
        .A2(\gic0.gc0.count_d2_reg[2]_rep__3 ),
        .A3(\gic0.gc0.count_d2_reg[3]_rep__3 ),
        .A4(\gic0.gc0.count_d2_reg[4]_rep__3 ),
        .A5(\gic0.gc0.count_d2_reg[5]_rep__3 ),
        .D(din[15]),
        .DPO(RAM_reg_2432_2495_15_15_n_0),
        .DPRA0(\gc0.count_d1_reg[11] [0]),
        .DPRA1(\gc0.count_d1_reg[11] [1]),
        .DPRA2(\gc0.count_d1_reg[11] [2]),
        .DPRA3(\gc0.count_d1_reg[11] [3]),
        .DPRA4(\gc0.count_d1_reg[11] [4]),
        .DPRA5(\gc0.count_d1_reg[11] [5]),
        .SPO(NLW_RAM_reg_2432_2495_15_15_SPO_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[9]_12 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_2432_2495_3_5
       (.ADDRA(\gc0.count_d1_reg[5]_rep__1 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__1 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__1 ),
        .ADDRD(ADDRD),
        .DIA(din[3]),
        .DIB(din[4]),
        .DIC(din[5]),
        .DID(1'b0),
        .DOA(RAM_reg_2432_2495_3_5_n_0),
        .DOB(RAM_reg_2432_2495_3_5_n_1),
        .DOC(RAM_reg_2432_2495_3_5_n_2),
        .DOD(NLW_RAM_reg_2432_2495_3_5_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[9]_12 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_2432_2495_6_8
       (.ADDRA(\gc0.count_d1_reg[5]_rep__3 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__3 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__3 ),
        .ADDRD(\gic0.gc0.count_d2_reg[5]_rep__0 ),
        .DIA(din[6]),
        .DIB(din[7]),
        .DIC(din[8]),
        .DID(1'b0),
        .DOA(RAM_reg_2432_2495_6_8_n_0),
        .DOB(RAM_reg_2432_2495_6_8_n_1),
        .DOC(RAM_reg_2432_2495_6_8_n_2),
        .DOD(NLW_RAM_reg_2432_2495_6_8_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[9]_12 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_2432_2495_9_11
       (.ADDRA(\gc0.count_d1_reg[5]_rep__5 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__5 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__5 ),
        .ADDRD(\gic0.gc0.count_d2_reg[5]_rep__1 ),
        .DIA(din[9]),
        .DIB(din[10]),
        .DIC(din[11]),
        .DID(1'b0),
        .DOA(RAM_reg_2432_2495_9_11_n_0),
        .DOB(RAM_reg_2432_2495_9_11_n_1),
        .DOC(RAM_reg_2432_2495_9_11_n_2),
        .DOD(NLW_RAM_reg_2432_2495_9_11_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[9]_12 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_2496_2559_0_2
       (.ADDRA(ADDRC),
        .ADDRB(ADDRC),
        .ADDRC(ADDRC),
        .ADDRD(Q),
        .DIA(din[0]),
        .DIB(din[1]),
        .DIC(din[2]),
        .DID(1'b0),
        .DOA(RAM_reg_2496_2559_0_2_n_0),
        .DOB(RAM_reg_2496_2559_0_2_n_1),
        .DOC(RAM_reg_2496_2559_0_2_n_2),
        .DOD(NLW_RAM_reg_2496_2559_0_2_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[9]_13 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_2496_2559_12_14
       (.ADDRA(\gc0.count_d1_reg[5]_rep__7 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__7 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__7 ),
        .ADDRD(\gic0.gc0.count_d2_reg[5]_rep__2 ),
        .DIA(din[12]),
        .DIB(din[13]),
        .DIC(din[14]),
        .DID(1'b0),
        .DOA(RAM_reg_2496_2559_12_14_n_0),
        .DOB(RAM_reg_2496_2559_12_14_n_1),
        .DOC(RAM_reg_2496_2559_12_14_n_2),
        .DOD(NLW_RAM_reg_2496_2559_12_14_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[9]_13 ));
  RAM64X1D RAM_reg_2496_2559_15_15
       (.A0(\gic0.gc0.count_d2_reg[0]_rep__3 ),
        .A1(\gic0.gc0.count_d2_reg[1]_rep__3 ),
        .A2(\gic0.gc0.count_d2_reg[2]_rep__3 ),
        .A3(\gic0.gc0.count_d2_reg[3]_rep__3 ),
        .A4(\gic0.gc0.count_d2_reg[4]_rep__3 ),
        .A5(\gic0.gc0.count_d2_reg[5]_rep__3 ),
        .D(din[15]),
        .DPO(RAM_reg_2496_2559_15_15_n_0),
        .DPRA0(\gc0.count_d1_reg[11] [0]),
        .DPRA1(\gc0.count_d1_reg[11] [1]),
        .DPRA2(\gc0.count_d1_reg[11] [2]),
        .DPRA3(\gc0.count_d1_reg[11] [3]),
        .DPRA4(\gc0.count_d1_reg[11] [4]),
        .DPRA5(\gc0.count_d1_reg[11] [5]),
        .SPO(NLW_RAM_reg_2496_2559_15_15_SPO_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[9]_13 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_2496_2559_3_5
       (.ADDRA(\gc0.count_d1_reg[5]_rep__1 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__1 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__1 ),
        .ADDRD(ADDRD),
        .DIA(din[3]),
        .DIB(din[4]),
        .DIC(din[5]),
        .DID(1'b0),
        .DOA(RAM_reg_2496_2559_3_5_n_0),
        .DOB(RAM_reg_2496_2559_3_5_n_1),
        .DOC(RAM_reg_2496_2559_3_5_n_2),
        .DOD(NLW_RAM_reg_2496_2559_3_5_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[9]_13 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_2496_2559_6_8
       (.ADDRA(\gc0.count_d1_reg[5]_rep__3 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__3 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__3 ),
        .ADDRD(\gic0.gc0.count_d2_reg[5]_rep__0 ),
        .DIA(din[6]),
        .DIB(din[7]),
        .DIC(din[8]),
        .DID(1'b0),
        .DOA(RAM_reg_2496_2559_6_8_n_0),
        .DOB(RAM_reg_2496_2559_6_8_n_1),
        .DOC(RAM_reg_2496_2559_6_8_n_2),
        .DOD(NLW_RAM_reg_2496_2559_6_8_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[9]_13 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_2496_2559_9_11
       (.ADDRA(\gc0.count_d1_reg[5]_rep__5 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__5 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__5 ),
        .ADDRD(\gic0.gc0.count_d2_reg[5]_rep__1 ),
        .DIA(din[9]),
        .DIB(din[10]),
        .DIC(din[11]),
        .DID(1'b0),
        .DOA(RAM_reg_2496_2559_9_11_n_0),
        .DOB(RAM_reg_2496_2559_9_11_n_1),
        .DOC(RAM_reg_2496_2559_9_11_n_2),
        .DOD(NLW_RAM_reg_2496_2559_9_11_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[9]_13 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_2560_2623_0_2
       (.ADDRA(ADDRC),
        .ADDRB(ADDRC),
        .ADDRC(ADDRC),
        .ADDRD(Q),
        .DIA(din[0]),
        .DIB(din[1]),
        .DIC(din[2]),
        .DID(1'b0),
        .DOA(RAM_reg_2560_2623_0_2_n_0),
        .DOB(RAM_reg_2560_2623_0_2_n_1),
        .DOC(RAM_reg_2560_2623_0_2_n_2),
        .DOD(NLW_RAM_reg_2560_2623_0_2_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[8]_8 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_2560_2623_12_14
       (.ADDRA(\gc0.count_d1_reg[5]_rep__7 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__7 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__7 ),
        .ADDRD(\gic0.gc0.count_d2_reg[5]_rep__2 ),
        .DIA(din[12]),
        .DIB(din[13]),
        .DIC(din[14]),
        .DID(1'b0),
        .DOA(RAM_reg_2560_2623_12_14_n_0),
        .DOB(RAM_reg_2560_2623_12_14_n_1),
        .DOC(RAM_reg_2560_2623_12_14_n_2),
        .DOD(NLW_RAM_reg_2560_2623_12_14_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[8]_8 ));
  RAM64X1D RAM_reg_2560_2623_15_15
       (.A0(\gic0.gc0.count_d2_reg[0]_rep__3 ),
        .A1(\gic0.gc0.count_d2_reg[1]_rep__3 ),
        .A2(\gic0.gc0.count_d2_reg[2]_rep__3 ),
        .A3(\gic0.gc0.count_d2_reg[3]_rep__3 ),
        .A4(\gic0.gc0.count_d2_reg[4]_rep__3 ),
        .A5(\gic0.gc0.count_d2_reg[5]_rep__3 ),
        .D(din[15]),
        .DPO(RAM_reg_2560_2623_15_15_n_0),
        .DPRA0(\gc0.count_d1_reg[11] [0]),
        .DPRA1(\gc0.count_d1_reg[11] [1]),
        .DPRA2(\gc0.count_d1_reg[11] [2]),
        .DPRA3(\gc0.count_d1_reg[11] [3]),
        .DPRA4(\gc0.count_d1_reg[11] [4]),
        .DPRA5(\gc0.count_d1_reg[11] [5]),
        .SPO(NLW_RAM_reg_2560_2623_15_15_SPO_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[8]_8 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_2560_2623_3_5
       (.ADDRA(\gc0.count_d1_reg[5]_rep__1 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__1 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__1 ),
        .ADDRD(ADDRD),
        .DIA(din[3]),
        .DIB(din[4]),
        .DIC(din[5]),
        .DID(1'b0),
        .DOA(RAM_reg_2560_2623_3_5_n_0),
        .DOB(RAM_reg_2560_2623_3_5_n_1),
        .DOC(RAM_reg_2560_2623_3_5_n_2),
        .DOD(NLW_RAM_reg_2560_2623_3_5_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[8]_8 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_2560_2623_6_8
       (.ADDRA(\gc0.count_d1_reg[5]_rep__3 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__3 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__3 ),
        .ADDRD(\gic0.gc0.count_d2_reg[5]_rep__0 ),
        .DIA(din[6]),
        .DIB(din[7]),
        .DIC(din[8]),
        .DID(1'b0),
        .DOA(RAM_reg_2560_2623_6_8_n_0),
        .DOB(RAM_reg_2560_2623_6_8_n_1),
        .DOC(RAM_reg_2560_2623_6_8_n_2),
        .DOD(NLW_RAM_reg_2560_2623_6_8_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[8]_8 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_2560_2623_9_11
       (.ADDRA(\gc0.count_d1_reg[5]_rep__5 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__5 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__5 ),
        .ADDRD(\gic0.gc0.count_d2_reg[5]_rep__1 ),
        .DIA(din[9]),
        .DIB(din[10]),
        .DIC(din[11]),
        .DID(1'b0),
        .DOA(RAM_reg_2560_2623_9_11_n_0),
        .DOB(RAM_reg_2560_2623_9_11_n_1),
        .DOC(RAM_reg_2560_2623_9_11_n_2),
        .DOD(NLW_RAM_reg_2560_2623_9_11_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[8]_8 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_256_319_0_2
       (.ADDRA(\gc0.count_d1_reg[5]_rep__0 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__0 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__0 ),
        .ADDRD(Q),
        .DIA(din[0]),
        .DIB(din[1]),
        .DIC(din[2]),
        .DID(1'b0),
        .DOA(RAM_reg_256_319_0_2_n_0),
        .DOB(RAM_reg_256_319_0_2_n_1),
        .DOC(RAM_reg_256_319_0_2_n_2),
        .DOD(NLW_RAM_reg_256_319_0_2_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[9]_1 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_256_319_12_14
       (.ADDRA(\gc0.count_d1_reg[5]_rep__8 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__8 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__8 ),
        .ADDRD(\gic0.gc0.count_d2_reg[5]_rep__2 ),
        .DIA(din[12]),
        .DIB(din[13]),
        .DIC(din[14]),
        .DID(1'b0),
        .DOA(RAM_reg_256_319_12_14_n_0),
        .DOB(RAM_reg_256_319_12_14_n_1),
        .DOC(RAM_reg_256_319_12_14_n_2),
        .DOD(NLW_RAM_reg_256_319_12_14_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[9]_1 ));
  RAM64X1D RAM_reg_256_319_15_15
       (.A0(\gic0.gc0.count_d2_reg[0]_rep__3 ),
        .A1(\gic0.gc0.count_d2_reg[1]_rep__3 ),
        .A2(\gic0.gc0.count_d2_reg[2]_rep__3 ),
        .A3(\gic0.gc0.count_d2_reg[3]_rep__3 ),
        .A4(\gic0.gc0.count_d2_reg[4]_rep__3 ),
        .A5(\gic0.gc0.count_d2_reg[5]_rep__3 ),
        .D(din[15]),
        .DPO(RAM_reg_256_319_15_15_n_0),
        .DPRA0(\gc0.count_d1_reg[11] [0]),
        .DPRA1(\gc0.count_d1_reg[11] [1]),
        .DPRA2(\gc0.count_d1_reg[11] [2]),
        .DPRA3(\gc0.count_d1_reg[11] [3]),
        .DPRA4(\gc0.count_d1_reg[11] [4]),
        .DPRA5(\gc0.count_d1_reg[11] [5]),
        .SPO(NLW_RAM_reg_256_319_15_15_SPO_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[9]_1 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_256_319_3_5
       (.ADDRA(\gc0.count_d1_reg[5]_rep__2 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__2 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__2 ),
        .ADDRD(ADDRD),
        .DIA(din[3]),
        .DIB(din[4]),
        .DIC(din[5]),
        .DID(1'b0),
        .DOA(RAM_reg_256_319_3_5_n_0),
        .DOB(RAM_reg_256_319_3_5_n_1),
        .DOC(RAM_reg_256_319_3_5_n_2),
        .DOD(NLW_RAM_reg_256_319_3_5_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[9]_1 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_256_319_6_8
       (.ADDRA(\gc0.count_d1_reg[5]_rep__4 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__4 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__4 ),
        .ADDRD(\gic0.gc0.count_d2_reg[5]_rep__0 ),
        .DIA(din[6]),
        .DIB(din[7]),
        .DIC(din[8]),
        .DID(1'b0),
        .DOA(RAM_reg_256_319_6_8_n_0),
        .DOB(RAM_reg_256_319_6_8_n_1),
        .DOC(RAM_reg_256_319_6_8_n_2),
        .DOD(NLW_RAM_reg_256_319_6_8_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[9]_1 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_256_319_9_11
       (.ADDRA(\gc0.count_d1_reg[5]_rep__6 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__6 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__6 ),
        .ADDRD(\gic0.gc0.count_d2_reg[5]_rep__1 ),
        .DIA(din[9]),
        .DIB(din[10]),
        .DIC(din[11]),
        .DID(1'b0),
        .DOA(RAM_reg_256_319_9_11_n_0),
        .DOB(RAM_reg_256_319_9_11_n_1),
        .DOC(RAM_reg_256_319_9_11_n_2),
        .DOD(NLW_RAM_reg_256_319_9_11_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[9]_1 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_2624_2687_0_2
       (.ADDRA(ADDRC),
        .ADDRB(ADDRC),
        .ADDRC(ADDRC),
        .ADDRD(Q),
        .DIA(din[0]),
        .DIB(din[1]),
        .DIC(din[2]),
        .DID(1'b0),
        .DOA(RAM_reg_2624_2687_0_2_n_0),
        .DOB(RAM_reg_2624_2687_0_2_n_1),
        .DOC(RAM_reg_2624_2687_0_2_n_2),
        .DOD(NLW_RAM_reg_2624_2687_0_2_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[6]_10 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_2624_2687_12_14
       (.ADDRA(\gc0.count_d1_reg[5]_rep__7 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__7 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__7 ),
        .ADDRD(\gic0.gc0.count_d2_reg[5]_rep__2 ),
        .DIA(din[12]),
        .DIB(din[13]),
        .DIC(din[14]),
        .DID(1'b0),
        .DOA(RAM_reg_2624_2687_12_14_n_0),
        .DOB(RAM_reg_2624_2687_12_14_n_1),
        .DOC(RAM_reg_2624_2687_12_14_n_2),
        .DOD(NLW_RAM_reg_2624_2687_12_14_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[6]_10 ));
  RAM64X1D RAM_reg_2624_2687_15_15
       (.A0(\gic0.gc0.count_d2_reg[0]_rep__3 ),
        .A1(\gic0.gc0.count_d2_reg[1]_rep__3 ),
        .A2(\gic0.gc0.count_d2_reg[2]_rep__3 ),
        .A3(\gic0.gc0.count_d2_reg[3]_rep__3 ),
        .A4(\gic0.gc0.count_d2_reg[4]_rep__3 ),
        .A5(\gic0.gc0.count_d2_reg[5]_rep__3 ),
        .D(din[15]),
        .DPO(RAM_reg_2624_2687_15_15_n_0),
        .DPRA0(\gc0.count_d1_reg[11] [0]),
        .DPRA1(\gc0.count_d1_reg[11] [1]),
        .DPRA2(\gc0.count_d1_reg[11] [2]),
        .DPRA3(\gc0.count_d1_reg[11] [3]),
        .DPRA4(\gc0.count_d1_reg[11] [4]),
        .DPRA5(\gc0.count_d1_reg[11] [5]),
        .SPO(NLW_RAM_reg_2624_2687_15_15_SPO_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[6]_10 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_2624_2687_3_5
       (.ADDRA(\gc0.count_d1_reg[5]_rep__1 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__1 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__1 ),
        .ADDRD(ADDRD),
        .DIA(din[3]),
        .DIB(din[4]),
        .DIC(din[5]),
        .DID(1'b0),
        .DOA(RAM_reg_2624_2687_3_5_n_0),
        .DOB(RAM_reg_2624_2687_3_5_n_1),
        .DOC(RAM_reg_2624_2687_3_5_n_2),
        .DOD(NLW_RAM_reg_2624_2687_3_5_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[6]_10 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_2624_2687_6_8
       (.ADDRA(\gc0.count_d1_reg[5]_rep__3 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__3 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__3 ),
        .ADDRD(\gic0.gc0.count_d2_reg[5]_rep__0 ),
        .DIA(din[6]),
        .DIB(din[7]),
        .DIC(din[8]),
        .DID(1'b0),
        .DOA(RAM_reg_2624_2687_6_8_n_0),
        .DOB(RAM_reg_2624_2687_6_8_n_1),
        .DOC(RAM_reg_2624_2687_6_8_n_2),
        .DOD(NLW_RAM_reg_2624_2687_6_8_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[6]_10 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_2624_2687_9_11
       (.ADDRA(\gc0.count_d1_reg[5]_rep__5 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__5 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__5 ),
        .ADDRD(\gic0.gc0.count_d2_reg[5]_rep__1 ),
        .DIA(din[9]),
        .DIB(din[10]),
        .DIC(din[11]),
        .DID(1'b0),
        .DOA(RAM_reg_2624_2687_9_11_n_0),
        .DOB(RAM_reg_2624_2687_9_11_n_1),
        .DOC(RAM_reg_2624_2687_9_11_n_2),
        .DOD(NLW_RAM_reg_2624_2687_9_11_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[6]_10 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_2688_2751_0_2
       (.ADDRA(ADDRC),
        .ADDRB(ADDRC),
        .ADDRC(ADDRC),
        .ADDRD(Q),
        .DIA(din[0]),
        .DIB(din[1]),
        .DIC(din[2]),
        .DID(1'b0),
        .DOA(RAM_reg_2688_2751_0_2_n_0),
        .DOB(RAM_reg_2688_2751_0_2_n_1),
        .DOC(RAM_reg_2688_2751_0_2_n_2),
        .DOD(NLW_RAM_reg_2688_2751_0_2_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[8]_9 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_2688_2751_12_14
       (.ADDRA(\gc0.count_d1_reg[5]_rep__7 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__7 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__7 ),
        .ADDRD(\gic0.gc0.count_d2_reg[5]_rep__2 ),
        .DIA(din[12]),
        .DIB(din[13]),
        .DIC(din[14]),
        .DID(1'b0),
        .DOA(RAM_reg_2688_2751_12_14_n_0),
        .DOB(RAM_reg_2688_2751_12_14_n_1),
        .DOC(RAM_reg_2688_2751_12_14_n_2),
        .DOD(NLW_RAM_reg_2688_2751_12_14_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[8]_9 ));
  RAM64X1D RAM_reg_2688_2751_15_15
       (.A0(\gic0.gc0.count_d2_reg[0]_rep__3 ),
        .A1(\gic0.gc0.count_d2_reg[1]_rep__3 ),
        .A2(\gic0.gc0.count_d2_reg[2]_rep__3 ),
        .A3(\gic0.gc0.count_d2_reg[3]_rep__3 ),
        .A4(\gic0.gc0.count_d2_reg[4]_rep__3 ),
        .A5(\gic0.gc0.count_d2_reg[5]_rep__3 ),
        .D(din[15]),
        .DPO(RAM_reg_2688_2751_15_15_n_0),
        .DPRA0(\gc0.count_d1_reg[11] [0]),
        .DPRA1(\gc0.count_d1_reg[11] [1]),
        .DPRA2(\gc0.count_d1_reg[11] [2]),
        .DPRA3(\gc0.count_d1_reg[11] [3]),
        .DPRA4(\gc0.count_d1_reg[11] [4]),
        .DPRA5(\gc0.count_d1_reg[11] [5]),
        .SPO(NLW_RAM_reg_2688_2751_15_15_SPO_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[8]_9 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_2688_2751_3_5
       (.ADDRA(\gc0.count_d1_reg[5]_rep__1 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__1 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__1 ),
        .ADDRD(ADDRD),
        .DIA(din[3]),
        .DIB(din[4]),
        .DIC(din[5]),
        .DID(1'b0),
        .DOA(RAM_reg_2688_2751_3_5_n_0),
        .DOB(RAM_reg_2688_2751_3_5_n_1),
        .DOC(RAM_reg_2688_2751_3_5_n_2),
        .DOD(NLW_RAM_reg_2688_2751_3_5_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[8]_9 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_2688_2751_6_8
       (.ADDRA(\gc0.count_d1_reg[5]_rep__3 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__3 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__3 ),
        .ADDRD(\gic0.gc0.count_d2_reg[5]_rep__0 ),
        .DIA(din[6]),
        .DIB(din[7]),
        .DIC(din[8]),
        .DID(1'b0),
        .DOA(RAM_reg_2688_2751_6_8_n_0),
        .DOB(RAM_reg_2688_2751_6_8_n_1),
        .DOC(RAM_reg_2688_2751_6_8_n_2),
        .DOD(NLW_RAM_reg_2688_2751_6_8_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[8]_9 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_2688_2751_9_11
       (.ADDRA(\gc0.count_d1_reg[5]_rep__5 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__5 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__5 ),
        .ADDRD(\gic0.gc0.count_d2_reg[5]_rep__1 ),
        .DIA(din[9]),
        .DIB(din[10]),
        .DIC(din[11]),
        .DID(1'b0),
        .DOA(RAM_reg_2688_2751_9_11_n_0),
        .DOB(RAM_reg_2688_2751_9_11_n_1),
        .DOC(RAM_reg_2688_2751_9_11_n_2),
        .DOD(NLW_RAM_reg_2688_2751_9_11_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[8]_9 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_2752_2815_0_2
       (.ADDRA(ADDRC),
        .ADDRB(ADDRC),
        .ADDRC(ADDRC),
        .ADDRD(Q),
        .DIA(din[0]),
        .DIB(din[1]),
        .DIC(din[2]),
        .DID(1'b0),
        .DOA(RAM_reg_2752_2815_0_2_n_0),
        .DOB(RAM_reg_2752_2815_0_2_n_1),
        .DOC(RAM_reg_2752_2815_0_2_n_2),
        .DOD(NLW_RAM_reg_2752_2815_0_2_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[6]_11 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_2752_2815_12_14
       (.ADDRA(\gc0.count_d1_reg[5]_rep__7 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__7 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__7 ),
        .ADDRD(\gic0.gc0.count_d2_reg[5]_rep__2 ),
        .DIA(din[12]),
        .DIB(din[13]),
        .DIC(din[14]),
        .DID(1'b0),
        .DOA(RAM_reg_2752_2815_12_14_n_0),
        .DOB(RAM_reg_2752_2815_12_14_n_1),
        .DOC(RAM_reg_2752_2815_12_14_n_2),
        .DOD(NLW_RAM_reg_2752_2815_12_14_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[6]_11 ));
  RAM64X1D RAM_reg_2752_2815_15_15
       (.A0(\gic0.gc0.count_d2_reg[0]_rep__3 ),
        .A1(\gic0.gc0.count_d2_reg[1]_rep__3 ),
        .A2(\gic0.gc0.count_d2_reg[2]_rep__3 ),
        .A3(\gic0.gc0.count_d2_reg[3]_rep__3 ),
        .A4(\gic0.gc0.count_d2_reg[4]_rep__3 ),
        .A5(\gic0.gc0.count_d2_reg[5]_rep__3 ),
        .D(din[15]),
        .DPO(RAM_reg_2752_2815_15_15_n_0),
        .DPRA0(\gc0.count_d1_reg[11] [0]),
        .DPRA1(\gc0.count_d1_reg[11] [1]),
        .DPRA2(\gc0.count_d1_reg[11] [2]),
        .DPRA3(\gc0.count_d1_reg[11] [3]),
        .DPRA4(\gc0.count_d1_reg[11] [4]),
        .DPRA5(\gc0.count_d1_reg[11] [5]),
        .SPO(NLW_RAM_reg_2752_2815_15_15_SPO_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[6]_11 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_2752_2815_3_5
       (.ADDRA(\gc0.count_d1_reg[5]_rep__1 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__1 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__1 ),
        .ADDRD(ADDRD),
        .DIA(din[3]),
        .DIB(din[4]),
        .DIC(din[5]),
        .DID(1'b0),
        .DOA(RAM_reg_2752_2815_3_5_n_0),
        .DOB(RAM_reg_2752_2815_3_5_n_1),
        .DOC(RAM_reg_2752_2815_3_5_n_2),
        .DOD(NLW_RAM_reg_2752_2815_3_5_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[6]_11 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_2752_2815_6_8
       (.ADDRA(\gc0.count_d1_reg[5]_rep__3 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__3 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__3 ),
        .ADDRD(\gic0.gc0.count_d2_reg[5]_rep__0 ),
        .DIA(din[6]),
        .DIB(din[7]),
        .DIC(din[8]),
        .DID(1'b0),
        .DOA(RAM_reg_2752_2815_6_8_n_0),
        .DOB(RAM_reg_2752_2815_6_8_n_1),
        .DOC(RAM_reg_2752_2815_6_8_n_2),
        .DOD(NLW_RAM_reg_2752_2815_6_8_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[6]_11 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_2752_2815_9_11
       (.ADDRA(\gc0.count_d1_reg[5]_rep__5 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__5 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__5 ),
        .ADDRD(\gic0.gc0.count_d2_reg[5]_rep__1 ),
        .DIA(din[9]),
        .DIB(din[10]),
        .DIC(din[11]),
        .DID(1'b0),
        .DOA(RAM_reg_2752_2815_9_11_n_0),
        .DOB(RAM_reg_2752_2815_9_11_n_1),
        .DOC(RAM_reg_2752_2815_9_11_n_2),
        .DOD(NLW_RAM_reg_2752_2815_9_11_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[6]_11 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_2816_2879_0_2
       (.ADDRA(ADDRC),
        .ADDRB(ADDRC),
        .ADDRC(ADDRC),
        .ADDRD(Q),
        .DIA(din[0]),
        .DIB(din[1]),
        .DIC(din[2]),
        .DID(1'b0),
        .DOA(RAM_reg_2816_2879_0_2_n_0),
        .DOB(RAM_reg_2816_2879_0_2_n_1),
        .DOC(RAM_reg_2816_2879_0_2_n_2),
        .DOD(NLW_RAM_reg_2816_2879_0_2_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[8]_10 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_2816_2879_12_14
       (.ADDRA(\gc0.count_d1_reg[5]_rep__7 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__7 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__7 ),
        .ADDRD(\gic0.gc0.count_d2_reg[5]_rep__2 ),
        .DIA(din[12]),
        .DIB(din[13]),
        .DIC(din[14]),
        .DID(1'b0),
        .DOA(RAM_reg_2816_2879_12_14_n_0),
        .DOB(RAM_reg_2816_2879_12_14_n_1),
        .DOC(RAM_reg_2816_2879_12_14_n_2),
        .DOD(NLW_RAM_reg_2816_2879_12_14_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[8]_10 ));
  RAM64X1D RAM_reg_2816_2879_15_15
       (.A0(\gic0.gc0.count_d2_reg[0]_rep__3 ),
        .A1(\gic0.gc0.count_d2_reg[1]_rep__3 ),
        .A2(\gic0.gc0.count_d2_reg[2]_rep__3 ),
        .A3(\gic0.gc0.count_d2_reg[3]_rep__3 ),
        .A4(\gic0.gc0.count_d2_reg[4]_rep__3 ),
        .A5(\gic0.gc0.count_d2_reg[5]_rep__3 ),
        .D(din[15]),
        .DPO(RAM_reg_2816_2879_15_15_n_0),
        .DPRA0(\gc0.count_d1_reg[11] [0]),
        .DPRA1(\gc0.count_d1_reg[11] [1]),
        .DPRA2(\gc0.count_d1_reg[11] [2]),
        .DPRA3(\gc0.count_d1_reg[11] [3]),
        .DPRA4(\gc0.count_d1_reg[11] [4]),
        .DPRA5(\gc0.count_d1_reg[11] [5]),
        .SPO(NLW_RAM_reg_2816_2879_15_15_SPO_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[8]_10 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_2816_2879_3_5
       (.ADDRA(\gc0.count_d1_reg[5]_rep__1 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__1 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__1 ),
        .ADDRD(ADDRD),
        .DIA(din[3]),
        .DIB(din[4]),
        .DIC(din[5]),
        .DID(1'b0),
        .DOA(RAM_reg_2816_2879_3_5_n_0),
        .DOB(RAM_reg_2816_2879_3_5_n_1),
        .DOC(RAM_reg_2816_2879_3_5_n_2),
        .DOD(NLW_RAM_reg_2816_2879_3_5_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[8]_10 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_2816_2879_6_8
       (.ADDRA(\gc0.count_d1_reg[5]_rep__3 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__3 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__3 ),
        .ADDRD(\gic0.gc0.count_d2_reg[5]_rep__0 ),
        .DIA(din[6]),
        .DIB(din[7]),
        .DIC(din[8]),
        .DID(1'b0),
        .DOA(RAM_reg_2816_2879_6_8_n_0),
        .DOB(RAM_reg_2816_2879_6_8_n_1),
        .DOC(RAM_reg_2816_2879_6_8_n_2),
        .DOD(NLW_RAM_reg_2816_2879_6_8_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[8]_10 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_2816_2879_9_11
       (.ADDRA(\gc0.count_d1_reg[5]_rep__5 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__5 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__5 ),
        .ADDRD(\gic0.gc0.count_d2_reg[5]_rep__1 ),
        .DIA(din[9]),
        .DIB(din[10]),
        .DIC(din[11]),
        .DID(1'b0),
        .DOA(RAM_reg_2816_2879_9_11_n_0),
        .DOB(RAM_reg_2816_2879_9_11_n_1),
        .DOC(RAM_reg_2816_2879_9_11_n_2),
        .DOD(NLW_RAM_reg_2816_2879_9_11_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[8]_10 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_2880_2943_0_2
       (.ADDRA(ADDRC),
        .ADDRB(ADDRC),
        .ADDRC(ADDRC),
        .ADDRD(Q),
        .DIA(din[0]),
        .DIB(din[1]),
        .DIC(din[2]),
        .DID(1'b0),
        .DOA(RAM_reg_2880_2943_0_2_n_0),
        .DOB(RAM_reg_2880_2943_0_2_n_1),
        .DOC(RAM_reg_2880_2943_0_2_n_2),
        .DOD(NLW_RAM_reg_2880_2943_0_2_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[10]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_2880_2943_12_14
       (.ADDRA(\gc0.count_d1_reg[5]_rep__7 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__7 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__7 ),
        .ADDRD(\gic0.gc0.count_d2_reg[5]_rep__2 ),
        .DIA(din[12]),
        .DIB(din[13]),
        .DIC(din[14]),
        .DID(1'b0),
        .DOA(RAM_reg_2880_2943_12_14_n_0),
        .DOB(RAM_reg_2880_2943_12_14_n_1),
        .DOC(RAM_reg_2880_2943_12_14_n_2),
        .DOD(NLW_RAM_reg_2880_2943_12_14_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[10]_0 ));
  RAM64X1D RAM_reg_2880_2943_15_15
       (.A0(\gic0.gc0.count_d2_reg[0]_rep__3 ),
        .A1(\gic0.gc0.count_d2_reg[1]_rep__3 ),
        .A2(\gic0.gc0.count_d2_reg[2]_rep__3 ),
        .A3(\gic0.gc0.count_d2_reg[3]_rep__3 ),
        .A4(\gic0.gc0.count_d2_reg[4]_rep__3 ),
        .A5(\gic0.gc0.count_d2_reg[5]_rep__3 ),
        .D(din[15]),
        .DPO(RAM_reg_2880_2943_15_15_n_0),
        .DPRA0(\gc0.count_d1_reg[11] [0]),
        .DPRA1(\gc0.count_d1_reg[11] [1]),
        .DPRA2(\gc0.count_d1_reg[11] [2]),
        .DPRA3(\gc0.count_d1_reg[11] [3]),
        .DPRA4(\gc0.count_d1_reg[11] [4]),
        .DPRA5(\gc0.count_d1_reg[11] [5]),
        .SPO(NLW_RAM_reg_2880_2943_15_15_SPO_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[10]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_2880_2943_3_5
       (.ADDRA(\gc0.count_d1_reg[5]_rep__1 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__1 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__1 ),
        .ADDRD(ADDRD),
        .DIA(din[3]),
        .DIB(din[4]),
        .DIC(din[5]),
        .DID(1'b0),
        .DOA(RAM_reg_2880_2943_3_5_n_0),
        .DOB(RAM_reg_2880_2943_3_5_n_1),
        .DOC(RAM_reg_2880_2943_3_5_n_2),
        .DOD(NLW_RAM_reg_2880_2943_3_5_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[10]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_2880_2943_6_8
       (.ADDRA(\gc0.count_d1_reg[5]_rep__3 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__3 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__3 ),
        .ADDRD(\gic0.gc0.count_d2_reg[5]_rep__0 ),
        .DIA(din[6]),
        .DIB(din[7]),
        .DIC(din[8]),
        .DID(1'b0),
        .DOA(RAM_reg_2880_2943_6_8_n_0),
        .DOB(RAM_reg_2880_2943_6_8_n_1),
        .DOC(RAM_reg_2880_2943_6_8_n_2),
        .DOD(NLW_RAM_reg_2880_2943_6_8_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[10]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_2880_2943_9_11
       (.ADDRA(\gc0.count_d1_reg[5]_rep__5 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__5 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__5 ),
        .ADDRD(\gic0.gc0.count_d2_reg[5]_rep__1 ),
        .DIA(din[9]),
        .DIB(din[10]),
        .DIC(din[11]),
        .DID(1'b0),
        .DOA(RAM_reg_2880_2943_9_11_n_0),
        .DOB(RAM_reg_2880_2943_9_11_n_1),
        .DOC(RAM_reg_2880_2943_9_11_n_2),
        .DOD(NLW_RAM_reg_2880_2943_9_11_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[10]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_2944_3007_0_2
       (.ADDRA(ADDRC),
        .ADDRB(ADDRC),
        .ADDRC(ADDRC),
        .ADDRD(Q),
        .DIA(din[0]),
        .DIB(din[1]),
        .DIC(din[2]),
        .DID(1'b0),
        .DOA(RAM_reg_2944_3007_0_2_n_0),
        .DOB(RAM_reg_2944_3007_0_2_n_1),
        .DOC(RAM_reg_2944_3007_0_2_n_2),
        .DOD(NLW_RAM_reg_2944_3007_0_2_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[6]_12 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_2944_3007_12_14
       (.ADDRA(\gc0.count_d1_reg[5]_rep__7 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__7 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__7 ),
        .ADDRD(\gic0.gc0.count_d2_reg[5]_rep__2 ),
        .DIA(din[12]),
        .DIB(din[13]),
        .DIC(din[14]),
        .DID(1'b0),
        .DOA(RAM_reg_2944_3007_12_14_n_0),
        .DOB(RAM_reg_2944_3007_12_14_n_1),
        .DOC(RAM_reg_2944_3007_12_14_n_2),
        .DOD(NLW_RAM_reg_2944_3007_12_14_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[6]_12 ));
  RAM64X1D RAM_reg_2944_3007_15_15
       (.A0(\gic0.gc0.count_d2_reg[0]_rep__3 ),
        .A1(\gic0.gc0.count_d2_reg[1]_rep__3 ),
        .A2(\gic0.gc0.count_d2_reg[2]_rep__3 ),
        .A3(\gic0.gc0.count_d2_reg[3]_rep__3 ),
        .A4(\gic0.gc0.count_d2_reg[4]_rep__3 ),
        .A5(\gic0.gc0.count_d2_reg[5]_rep__3 ),
        .D(din[15]),
        .DPO(RAM_reg_2944_3007_15_15_n_0),
        .DPRA0(\gc0.count_d1_reg[11] [0]),
        .DPRA1(\gc0.count_d1_reg[11] [1]),
        .DPRA2(\gc0.count_d1_reg[11] [2]),
        .DPRA3(\gc0.count_d1_reg[11] [3]),
        .DPRA4(\gc0.count_d1_reg[11] [4]),
        .DPRA5(\gc0.count_d1_reg[11] [5]),
        .SPO(NLW_RAM_reg_2944_3007_15_15_SPO_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[6]_12 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_2944_3007_3_5
       (.ADDRA(\gc0.count_d1_reg[5]_rep__1 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__1 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__1 ),
        .ADDRD(ADDRD),
        .DIA(din[3]),
        .DIB(din[4]),
        .DIC(din[5]),
        .DID(1'b0),
        .DOA(RAM_reg_2944_3007_3_5_n_0),
        .DOB(RAM_reg_2944_3007_3_5_n_1),
        .DOC(RAM_reg_2944_3007_3_5_n_2),
        .DOD(NLW_RAM_reg_2944_3007_3_5_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[6]_12 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_2944_3007_6_8
       (.ADDRA(\gc0.count_d1_reg[5]_rep__3 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__3 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__3 ),
        .ADDRD(\gic0.gc0.count_d2_reg[5]_rep__0 ),
        .DIA(din[6]),
        .DIB(din[7]),
        .DIC(din[8]),
        .DID(1'b0),
        .DOA(RAM_reg_2944_3007_6_8_n_0),
        .DOB(RAM_reg_2944_3007_6_8_n_1),
        .DOC(RAM_reg_2944_3007_6_8_n_2),
        .DOD(NLW_RAM_reg_2944_3007_6_8_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[6]_12 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_2944_3007_9_11
       (.ADDRA(\gc0.count_d1_reg[5]_rep__5 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__5 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__5 ),
        .ADDRD(\gic0.gc0.count_d2_reg[5]_rep__1 ),
        .DIA(din[9]),
        .DIB(din[10]),
        .DIC(din[11]),
        .DID(1'b0),
        .DOA(RAM_reg_2944_3007_9_11_n_0),
        .DOB(RAM_reg_2944_3007_9_11_n_1),
        .DOC(RAM_reg_2944_3007_9_11_n_2),
        .DOD(NLW_RAM_reg_2944_3007_9_11_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[6]_12 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_3008_3071_0_2
       (.ADDRA(ADDRC),
        .ADDRB(ADDRC),
        .ADDRC(ADDRC),
        .ADDRD(Q),
        .DIA(din[0]),
        .DIB(din[1]),
        .DIC(din[2]),
        .DID(1'b0),
        .DOA(RAM_reg_3008_3071_0_2_n_0),
        .DOB(RAM_reg_3008_3071_0_2_n_1),
        .DOC(RAM_reg_3008_3071_0_2_n_2),
        .DOD(NLW_RAM_reg_3008_3071_0_2_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[8]_11 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_3008_3071_12_14
       (.ADDRA(\gc0.count_d1_reg[5]_rep__7 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__7 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__7 ),
        .ADDRD(\gic0.gc0.count_d2_reg[5]_rep__2 ),
        .DIA(din[12]),
        .DIB(din[13]),
        .DIC(din[14]),
        .DID(1'b0),
        .DOA(RAM_reg_3008_3071_12_14_n_0),
        .DOB(RAM_reg_3008_3071_12_14_n_1),
        .DOC(RAM_reg_3008_3071_12_14_n_2),
        .DOD(NLW_RAM_reg_3008_3071_12_14_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[8]_11 ));
  RAM64X1D RAM_reg_3008_3071_15_15
       (.A0(\gic0.gc0.count_d2_reg[0]_rep__3 ),
        .A1(\gic0.gc0.count_d2_reg[1]_rep__3 ),
        .A2(\gic0.gc0.count_d2_reg[2]_rep__3 ),
        .A3(\gic0.gc0.count_d2_reg[3]_rep__3 ),
        .A4(\gic0.gc0.count_d2_reg[4]_rep__3 ),
        .A5(\gic0.gc0.count_d2_reg[5]_rep__3 ),
        .D(din[15]),
        .DPO(RAM_reg_3008_3071_15_15_n_0),
        .DPRA0(\gc0.count_d1_reg[11] [0]),
        .DPRA1(\gc0.count_d1_reg[11] [1]),
        .DPRA2(\gc0.count_d1_reg[11] [2]),
        .DPRA3(\gc0.count_d1_reg[11] [3]),
        .DPRA4(\gc0.count_d1_reg[11] [4]),
        .DPRA5(\gc0.count_d1_reg[11] [5]),
        .SPO(NLW_RAM_reg_3008_3071_15_15_SPO_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[8]_11 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_3008_3071_3_5
       (.ADDRA(\gc0.count_d1_reg[5]_rep__1 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__1 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__1 ),
        .ADDRD(ADDRD),
        .DIA(din[3]),
        .DIB(din[4]),
        .DIC(din[5]),
        .DID(1'b0),
        .DOA(RAM_reg_3008_3071_3_5_n_0),
        .DOB(RAM_reg_3008_3071_3_5_n_1),
        .DOC(RAM_reg_3008_3071_3_5_n_2),
        .DOD(NLW_RAM_reg_3008_3071_3_5_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[8]_11 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_3008_3071_6_8
       (.ADDRA(\gc0.count_d1_reg[5]_rep__3 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__3 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__3 ),
        .ADDRD(\gic0.gc0.count_d2_reg[5]_rep__0 ),
        .DIA(din[6]),
        .DIB(din[7]),
        .DIC(din[8]),
        .DID(1'b0),
        .DOA(RAM_reg_3008_3071_6_8_n_0),
        .DOB(RAM_reg_3008_3071_6_8_n_1),
        .DOC(RAM_reg_3008_3071_6_8_n_2),
        .DOD(NLW_RAM_reg_3008_3071_6_8_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[8]_11 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_3008_3071_9_11
       (.ADDRA(\gc0.count_d1_reg[5]_rep__5 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__5 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__5 ),
        .ADDRD(\gic0.gc0.count_d2_reg[5]_rep__1 ),
        .DIA(din[9]),
        .DIB(din[10]),
        .DIC(din[11]),
        .DID(1'b0),
        .DOA(RAM_reg_3008_3071_9_11_n_0),
        .DOB(RAM_reg_3008_3071_9_11_n_1),
        .DOC(RAM_reg_3008_3071_9_11_n_2),
        .DOD(NLW_RAM_reg_3008_3071_9_11_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[8]_11 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_3072_3135_0_2
       (.ADDRA(ADDRC),
        .ADDRB(ADDRC),
        .ADDRC(ADDRC),
        .ADDRD(Q),
        .DIA(din[0]),
        .DIB(din[1]),
        .DIC(din[2]),
        .DID(1'b0),
        .DOA(RAM_reg_3072_3135_0_2_n_0),
        .DOB(RAM_reg_3072_3135_0_2_n_1),
        .DOC(RAM_reg_3072_3135_0_2_n_2),
        .DOD(NLW_RAM_reg_3072_3135_0_2_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[6]_13 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_3072_3135_12_14
       (.ADDRA(\gc0.count_d1_reg[5]_rep__7 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__7 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__7 ),
        .ADDRD(\gic0.gc0.count_d2_reg[5]_rep__2 ),
        .DIA(din[12]),
        .DIB(din[13]),
        .DIC(din[14]),
        .DID(1'b0),
        .DOA(RAM_reg_3072_3135_12_14_n_0),
        .DOB(RAM_reg_3072_3135_12_14_n_1),
        .DOC(RAM_reg_3072_3135_12_14_n_2),
        .DOD(NLW_RAM_reg_3072_3135_12_14_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[6]_13 ));
  RAM64X1D RAM_reg_3072_3135_15_15
       (.A0(\gic0.gc0.count_d2_reg[0]_rep__3 ),
        .A1(\gic0.gc0.count_d2_reg[1]_rep__3 ),
        .A2(\gic0.gc0.count_d2_reg[2]_rep__3 ),
        .A3(\gic0.gc0.count_d2_reg[3]_rep__3 ),
        .A4(\gic0.gc0.count_d2_reg[4]_rep__3 ),
        .A5(\gic0.gc0.count_d2_reg[5]_rep__3 ),
        .D(din[15]),
        .DPO(RAM_reg_3072_3135_15_15_n_0),
        .DPRA0(\gc0.count_d1_reg[11] [0]),
        .DPRA1(\gc0.count_d1_reg[11] [1]),
        .DPRA2(\gc0.count_d1_reg[11] [2]),
        .DPRA3(\gc0.count_d1_reg[11] [3]),
        .DPRA4(\gc0.count_d1_reg[11] [4]),
        .DPRA5(\gc0.count_d1_reg[11] [5]),
        .SPO(NLW_RAM_reg_3072_3135_15_15_SPO_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[6]_13 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_3072_3135_3_5
       (.ADDRA(\gc0.count_d1_reg[5]_rep__1 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__1 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__1 ),
        .ADDRD(ADDRD),
        .DIA(din[3]),
        .DIB(din[4]),
        .DIC(din[5]),
        .DID(1'b0),
        .DOA(RAM_reg_3072_3135_3_5_n_0),
        .DOB(RAM_reg_3072_3135_3_5_n_1),
        .DOC(RAM_reg_3072_3135_3_5_n_2),
        .DOD(NLW_RAM_reg_3072_3135_3_5_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[6]_13 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_3072_3135_6_8
       (.ADDRA(\gc0.count_d1_reg[5]_rep__3 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__3 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__3 ),
        .ADDRD(\gic0.gc0.count_d2_reg[5]_rep__0 ),
        .DIA(din[6]),
        .DIB(din[7]),
        .DIC(din[8]),
        .DID(1'b0),
        .DOA(RAM_reg_3072_3135_6_8_n_0),
        .DOB(RAM_reg_3072_3135_6_8_n_1),
        .DOC(RAM_reg_3072_3135_6_8_n_2),
        .DOD(NLW_RAM_reg_3072_3135_6_8_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[6]_13 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_3072_3135_9_11
       (.ADDRA(\gc0.count_d1_reg[5]_rep__5 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__5 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__5 ),
        .ADDRD(\gic0.gc0.count_d2_reg[5]_rep__1 ),
        .DIA(din[9]),
        .DIB(din[10]),
        .DIC(din[11]),
        .DID(1'b0),
        .DOA(RAM_reg_3072_3135_9_11_n_0),
        .DOB(RAM_reg_3072_3135_9_11_n_1),
        .DOC(RAM_reg_3072_3135_9_11_n_2),
        .DOD(NLW_RAM_reg_3072_3135_9_11_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[6]_13 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_3136_3199_0_2
       (.ADDRA(ADDRC),
        .ADDRB(ADDRC),
        .ADDRC(ADDRC),
        .ADDRD(Q),
        .DIA(din[0]),
        .DIB(din[1]),
        .DIC(din[2]),
        .DID(1'b0),
        .DOA(RAM_reg_3136_3199_0_2_n_0),
        .DOB(RAM_reg_3136_3199_0_2_n_1),
        .DOC(RAM_reg_3136_3199_0_2_n_2),
        .DOD(NLW_RAM_reg_3136_3199_0_2_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[6]_14 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_3136_3199_12_14
       (.ADDRA(\gc0.count_d1_reg[5]_rep__7 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__7 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__7 ),
        .ADDRD(\gic0.gc0.count_d2_reg[5]_rep__2 ),
        .DIA(din[12]),
        .DIB(din[13]),
        .DIC(din[14]),
        .DID(1'b0),
        .DOA(RAM_reg_3136_3199_12_14_n_0),
        .DOB(RAM_reg_3136_3199_12_14_n_1),
        .DOC(RAM_reg_3136_3199_12_14_n_2),
        .DOD(NLW_RAM_reg_3136_3199_12_14_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[6]_14 ));
  RAM64X1D RAM_reg_3136_3199_15_15
       (.A0(\gic0.gc0.count_d2_reg[0]_rep__3 ),
        .A1(\gic0.gc0.count_d2_reg[1]_rep__3 ),
        .A2(\gic0.gc0.count_d2_reg[2]_rep__3 ),
        .A3(\gic0.gc0.count_d2_reg[3]_rep__3 ),
        .A4(\gic0.gc0.count_d2_reg[4]_rep__3 ),
        .A5(\gic0.gc0.count_d2_reg[5]_rep__3 ),
        .D(din[15]),
        .DPO(RAM_reg_3136_3199_15_15_n_0),
        .DPRA0(\gc0.count_d1_reg[11] [0]),
        .DPRA1(\gc0.count_d1_reg[11] [1]),
        .DPRA2(\gc0.count_d1_reg[11] [2]),
        .DPRA3(\gc0.count_d1_reg[11] [3]),
        .DPRA4(\gc0.count_d1_reg[11] [4]),
        .DPRA5(\gc0.count_d1_reg[11] [5]),
        .SPO(NLW_RAM_reg_3136_3199_15_15_SPO_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[6]_14 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_3136_3199_3_5
       (.ADDRA(\gc0.count_d1_reg[5]_rep__1 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__1 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__1 ),
        .ADDRD(ADDRD),
        .DIA(din[3]),
        .DIB(din[4]),
        .DIC(din[5]),
        .DID(1'b0),
        .DOA(RAM_reg_3136_3199_3_5_n_0),
        .DOB(RAM_reg_3136_3199_3_5_n_1),
        .DOC(RAM_reg_3136_3199_3_5_n_2),
        .DOD(NLW_RAM_reg_3136_3199_3_5_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[6]_14 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_3136_3199_6_8
       (.ADDRA(\gc0.count_d1_reg[5]_rep__3 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__3 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__3 ),
        .ADDRD(\gic0.gc0.count_d2_reg[5]_rep__0 ),
        .DIA(din[6]),
        .DIB(din[7]),
        .DIC(din[8]),
        .DID(1'b0),
        .DOA(RAM_reg_3136_3199_6_8_n_0),
        .DOB(RAM_reg_3136_3199_6_8_n_1),
        .DOC(RAM_reg_3136_3199_6_8_n_2),
        .DOD(NLW_RAM_reg_3136_3199_6_8_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[6]_14 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_3136_3199_9_11
       (.ADDRA(\gc0.count_d1_reg[5]_rep__5 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__5 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__5 ),
        .ADDRD(\gic0.gc0.count_d2_reg[5]_rep__1 ),
        .DIA(din[9]),
        .DIB(din[10]),
        .DIC(din[11]),
        .DID(1'b0),
        .DOA(RAM_reg_3136_3199_9_11_n_0),
        .DOB(RAM_reg_3136_3199_9_11_n_1),
        .DOC(RAM_reg_3136_3199_9_11_n_2),
        .DOD(NLW_RAM_reg_3136_3199_9_11_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[6]_14 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_3200_3263_0_2
       (.ADDRA(ADDRC),
        .ADDRB(ADDRC),
        .ADDRC(ADDRC),
        .ADDRD(Q),
        .DIA(din[0]),
        .DIB(din[1]),
        .DIC(din[2]),
        .DID(1'b0),
        .DOA(RAM_reg_3200_3263_0_2_n_0),
        .DOB(RAM_reg_3200_3263_0_2_n_1),
        .DOC(RAM_reg_3200_3263_0_2_n_2),
        .DOD(NLW_RAM_reg_3200_3263_0_2_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[9]_14 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_3200_3263_12_14
       (.ADDRA(\gc0.count_d1_reg[5]_rep__7 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__7 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__7 ),
        .ADDRD(\gic0.gc0.count_d2_reg[5]_rep__2 ),
        .DIA(din[12]),
        .DIB(din[13]),
        .DIC(din[14]),
        .DID(1'b0),
        .DOA(RAM_reg_3200_3263_12_14_n_0),
        .DOB(RAM_reg_3200_3263_12_14_n_1),
        .DOC(RAM_reg_3200_3263_12_14_n_2),
        .DOD(NLW_RAM_reg_3200_3263_12_14_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[9]_14 ));
  RAM64X1D RAM_reg_3200_3263_15_15
       (.A0(\gic0.gc0.count_d2_reg[0]_rep__3 ),
        .A1(\gic0.gc0.count_d2_reg[1]_rep__3 ),
        .A2(\gic0.gc0.count_d2_reg[2]_rep__3 ),
        .A3(\gic0.gc0.count_d2_reg[3]_rep__3 ),
        .A4(\gic0.gc0.count_d2_reg[4]_rep__3 ),
        .A5(\gic0.gc0.count_d2_reg[5]_rep__3 ),
        .D(din[15]),
        .DPO(RAM_reg_3200_3263_15_15_n_0),
        .DPRA0(\gc0.count_d1_reg[11] [0]),
        .DPRA1(\gc0.count_d1_reg[11] [1]),
        .DPRA2(\gc0.count_d1_reg[11] [2]),
        .DPRA3(\gc0.count_d1_reg[11] [3]),
        .DPRA4(\gc0.count_d1_reg[11] [4]),
        .DPRA5(\gc0.count_d1_reg[11] [5]),
        .SPO(NLW_RAM_reg_3200_3263_15_15_SPO_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[9]_14 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_3200_3263_3_5
       (.ADDRA(\gc0.count_d1_reg[5]_rep__1 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__1 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__1 ),
        .ADDRD(ADDRD),
        .DIA(din[3]),
        .DIB(din[4]),
        .DIC(din[5]),
        .DID(1'b0),
        .DOA(RAM_reg_3200_3263_3_5_n_0),
        .DOB(RAM_reg_3200_3263_3_5_n_1),
        .DOC(RAM_reg_3200_3263_3_5_n_2),
        .DOD(NLW_RAM_reg_3200_3263_3_5_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[9]_14 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_3200_3263_6_8
       (.ADDRA(\gc0.count_d1_reg[5]_rep__3 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__3 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__3 ),
        .ADDRD(\gic0.gc0.count_d2_reg[5]_rep__0 ),
        .DIA(din[6]),
        .DIB(din[7]),
        .DIC(din[8]),
        .DID(1'b0),
        .DOA(RAM_reg_3200_3263_6_8_n_0),
        .DOB(RAM_reg_3200_3263_6_8_n_1),
        .DOC(RAM_reg_3200_3263_6_8_n_2),
        .DOD(NLW_RAM_reg_3200_3263_6_8_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[9]_14 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_3200_3263_9_11
       (.ADDRA(\gc0.count_d1_reg[5]_rep__5 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__5 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__5 ),
        .ADDRD(\gic0.gc0.count_d2_reg[5]_rep__1 ),
        .DIA(din[9]),
        .DIB(din[10]),
        .DIC(din[11]),
        .DID(1'b0),
        .DOA(RAM_reg_3200_3263_9_11_n_0),
        .DOB(RAM_reg_3200_3263_9_11_n_1),
        .DOC(RAM_reg_3200_3263_9_11_n_2),
        .DOD(NLW_RAM_reg_3200_3263_9_11_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[9]_14 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_320_383_0_2
       (.ADDRA(\gc0.count_d1_reg[5]_rep__0 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__0 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__0 ),
        .ADDRD(Q),
        .DIA(din[0]),
        .DIB(din[1]),
        .DIC(din[2]),
        .DID(1'b0),
        .DOA(RAM_reg_320_383_0_2_n_0),
        .DOB(RAM_reg_320_383_0_2_n_1),
        .DOC(RAM_reg_320_383_0_2_n_2),
        .DOD(NLW_RAM_reg_320_383_0_2_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[7] ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_320_383_12_14
       (.ADDRA(\gc0.count_d1_reg[5]_rep__8 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__8 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__8 ),
        .ADDRD(\gic0.gc0.count_d2_reg[5]_rep__2 ),
        .DIA(din[12]),
        .DIB(din[13]),
        .DIC(din[14]),
        .DID(1'b0),
        .DOA(RAM_reg_320_383_12_14_n_0),
        .DOB(RAM_reg_320_383_12_14_n_1),
        .DOC(RAM_reg_320_383_12_14_n_2),
        .DOD(NLW_RAM_reg_320_383_12_14_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[7] ));
  RAM64X1D RAM_reg_320_383_15_15
       (.A0(\gic0.gc0.count_d2_reg[0]_rep__3 ),
        .A1(\gic0.gc0.count_d2_reg[1]_rep__3 ),
        .A2(\gic0.gc0.count_d2_reg[2]_rep__3 ),
        .A3(\gic0.gc0.count_d2_reg[3]_rep__3 ),
        .A4(\gic0.gc0.count_d2_reg[4]_rep__3 ),
        .A5(\gic0.gc0.count_d2_reg[5]_rep__3 ),
        .D(din[15]),
        .DPO(RAM_reg_320_383_15_15_n_0),
        .DPRA0(\gc0.count_d1_reg[11] [0]),
        .DPRA1(\gc0.count_d1_reg[11] [1]),
        .DPRA2(\gc0.count_d1_reg[11] [2]),
        .DPRA3(\gc0.count_d1_reg[11] [3]),
        .DPRA4(\gc0.count_d1_reg[11] [4]),
        .DPRA5(\gc0.count_d1_reg[11] [5]),
        .SPO(NLW_RAM_reg_320_383_15_15_SPO_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[7] ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_320_383_3_5
       (.ADDRA(\gc0.count_d1_reg[5]_rep__2 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__2 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__2 ),
        .ADDRD(ADDRD),
        .DIA(din[3]),
        .DIB(din[4]),
        .DIC(din[5]),
        .DID(1'b0),
        .DOA(RAM_reg_320_383_3_5_n_0),
        .DOB(RAM_reg_320_383_3_5_n_1),
        .DOC(RAM_reg_320_383_3_5_n_2),
        .DOD(NLW_RAM_reg_320_383_3_5_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[7] ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_320_383_6_8
       (.ADDRA(\gc0.count_d1_reg[5]_rep__4 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__4 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__4 ),
        .ADDRD(\gic0.gc0.count_d2_reg[5]_rep__0 ),
        .DIA(din[6]),
        .DIB(din[7]),
        .DIC(din[8]),
        .DID(1'b0),
        .DOA(RAM_reg_320_383_6_8_n_0),
        .DOB(RAM_reg_320_383_6_8_n_1),
        .DOC(RAM_reg_320_383_6_8_n_2),
        .DOD(NLW_RAM_reg_320_383_6_8_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[7] ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_320_383_9_11
       (.ADDRA(\gc0.count_d1_reg[5]_rep__6 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__6 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__6 ),
        .ADDRD(\gic0.gc0.count_d2_reg[5]_rep__1 ),
        .DIA(din[9]),
        .DIB(din[10]),
        .DIC(din[11]),
        .DID(1'b0),
        .DOA(RAM_reg_320_383_9_11_n_0),
        .DOB(RAM_reg_320_383_9_11_n_1),
        .DOC(RAM_reg_320_383_9_11_n_2),
        .DOD(NLW_RAM_reg_320_383_9_11_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[7] ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_3264_3327_0_2
       (.ADDRA(ADDRC),
        .ADDRB(ADDRC),
        .ADDRC(ADDRC),
        .ADDRD(Q),
        .DIA(din[0]),
        .DIB(din[1]),
        .DIC(din[2]),
        .DID(1'b0),
        .DOA(RAM_reg_3264_3327_0_2_n_0),
        .DOB(RAM_reg_3264_3327_0_2_n_1),
        .DOC(RAM_reg_3264_3327_0_2_n_2),
        .DOD(NLW_RAM_reg_3264_3327_0_2_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[6]_15 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_3264_3327_12_14
       (.ADDRA(\gc0.count_d1_reg[5]_rep__7 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__7 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__7 ),
        .ADDRD(\gic0.gc0.count_d2_reg[5]_rep__2 ),
        .DIA(din[12]),
        .DIB(din[13]),
        .DIC(din[14]),
        .DID(1'b0),
        .DOA(RAM_reg_3264_3327_12_14_n_0),
        .DOB(RAM_reg_3264_3327_12_14_n_1),
        .DOC(RAM_reg_3264_3327_12_14_n_2),
        .DOD(NLW_RAM_reg_3264_3327_12_14_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[6]_15 ));
  RAM64X1D RAM_reg_3264_3327_15_15
       (.A0(\gic0.gc0.count_d2_reg[0]_rep__3 ),
        .A1(\gic0.gc0.count_d2_reg[1]_rep__3 ),
        .A2(\gic0.gc0.count_d2_reg[2]_rep__3 ),
        .A3(\gic0.gc0.count_d2_reg[3]_rep__3 ),
        .A4(\gic0.gc0.count_d2_reg[4]_rep__3 ),
        .A5(\gic0.gc0.count_d2_reg[5]_rep__3 ),
        .D(din[15]),
        .DPO(RAM_reg_3264_3327_15_15_n_0),
        .DPRA0(\gc0.count_d1_reg[11] [0]),
        .DPRA1(\gc0.count_d1_reg[11] [1]),
        .DPRA2(\gc0.count_d1_reg[11] [2]),
        .DPRA3(\gc0.count_d1_reg[11] [3]),
        .DPRA4(\gc0.count_d1_reg[11] [4]),
        .DPRA5(\gc0.count_d1_reg[11] [5]),
        .SPO(NLW_RAM_reg_3264_3327_15_15_SPO_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[6]_15 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_3264_3327_3_5
       (.ADDRA(\gc0.count_d1_reg[5]_rep__1 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__1 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__1 ),
        .ADDRD(ADDRD),
        .DIA(din[3]),
        .DIB(din[4]),
        .DIC(din[5]),
        .DID(1'b0),
        .DOA(RAM_reg_3264_3327_3_5_n_0),
        .DOB(RAM_reg_3264_3327_3_5_n_1),
        .DOC(RAM_reg_3264_3327_3_5_n_2),
        .DOD(NLW_RAM_reg_3264_3327_3_5_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[6]_15 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_3264_3327_6_8
       (.ADDRA(\gc0.count_d1_reg[5]_rep__3 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__3 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__3 ),
        .ADDRD(\gic0.gc0.count_d2_reg[5]_rep__0 ),
        .DIA(din[6]),
        .DIB(din[7]),
        .DIC(din[8]),
        .DID(1'b0),
        .DOA(RAM_reg_3264_3327_6_8_n_0),
        .DOB(RAM_reg_3264_3327_6_8_n_1),
        .DOC(RAM_reg_3264_3327_6_8_n_2),
        .DOD(NLW_RAM_reg_3264_3327_6_8_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[6]_15 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_3264_3327_9_11
       (.ADDRA(\gc0.count_d1_reg[5]_rep__5 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__5 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__5 ),
        .ADDRD(\gic0.gc0.count_d2_reg[5]_rep__1 ),
        .DIA(din[9]),
        .DIB(din[10]),
        .DIC(din[11]),
        .DID(1'b0),
        .DOA(RAM_reg_3264_3327_9_11_n_0),
        .DOB(RAM_reg_3264_3327_9_11_n_1),
        .DOC(RAM_reg_3264_3327_9_11_n_2),
        .DOD(NLW_RAM_reg_3264_3327_9_11_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[6]_15 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_3328_3391_0_2
       (.ADDRA(ADDRC),
        .ADDRB(ADDRC),
        .ADDRC(ADDRC),
        .ADDRD(Q),
        .DIA(din[0]),
        .DIB(din[1]),
        .DIC(din[2]),
        .DID(1'b0),
        .DOA(RAM_reg_3328_3391_0_2_n_0),
        .DOB(RAM_reg_3328_3391_0_2_n_1),
        .DOC(RAM_reg_3328_3391_0_2_n_2),
        .DOD(NLW_RAM_reg_3328_3391_0_2_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[8]_12 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_3328_3391_12_14
       (.ADDRA(\gc0.count_d1_reg[5]_rep__7 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__7 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__7 ),
        .ADDRD(\gic0.gc0.count_d2_reg[5]_rep__2 ),
        .DIA(din[12]),
        .DIB(din[13]),
        .DIC(din[14]),
        .DID(1'b0),
        .DOA(RAM_reg_3328_3391_12_14_n_0),
        .DOB(RAM_reg_3328_3391_12_14_n_1),
        .DOC(RAM_reg_3328_3391_12_14_n_2),
        .DOD(NLW_RAM_reg_3328_3391_12_14_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[8]_12 ));
  RAM64X1D RAM_reg_3328_3391_15_15
       (.A0(\gic0.gc0.count_d2_reg[0]_rep__3 ),
        .A1(\gic0.gc0.count_d2_reg[1]_rep__3 ),
        .A2(\gic0.gc0.count_d2_reg[2]_rep__3 ),
        .A3(\gic0.gc0.count_d2_reg[3]_rep__3 ),
        .A4(\gic0.gc0.count_d2_reg[4]_rep__3 ),
        .A5(\gic0.gc0.count_d2_reg[5]_rep__3 ),
        .D(din[15]),
        .DPO(RAM_reg_3328_3391_15_15_n_0),
        .DPRA0(\gc0.count_d1_reg[11] [0]),
        .DPRA1(\gc0.count_d1_reg[11] [1]),
        .DPRA2(\gc0.count_d1_reg[11] [2]),
        .DPRA3(\gc0.count_d1_reg[11] [3]),
        .DPRA4(\gc0.count_d1_reg[11] [4]),
        .DPRA5(\gc0.count_d1_reg[11] [5]),
        .SPO(NLW_RAM_reg_3328_3391_15_15_SPO_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[8]_12 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_3328_3391_3_5
       (.ADDRA(\gc0.count_d1_reg[5]_rep__1 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__1 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__1 ),
        .ADDRD(ADDRD),
        .DIA(din[3]),
        .DIB(din[4]),
        .DIC(din[5]),
        .DID(1'b0),
        .DOA(RAM_reg_3328_3391_3_5_n_0),
        .DOB(RAM_reg_3328_3391_3_5_n_1),
        .DOC(RAM_reg_3328_3391_3_5_n_2),
        .DOD(NLW_RAM_reg_3328_3391_3_5_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[8]_12 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_3328_3391_6_8
       (.ADDRA(\gc0.count_d1_reg[5]_rep__3 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__3 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__3 ),
        .ADDRD(\gic0.gc0.count_d2_reg[5]_rep__0 ),
        .DIA(din[6]),
        .DIB(din[7]),
        .DIC(din[8]),
        .DID(1'b0),
        .DOA(RAM_reg_3328_3391_6_8_n_0),
        .DOB(RAM_reg_3328_3391_6_8_n_1),
        .DOC(RAM_reg_3328_3391_6_8_n_2),
        .DOD(NLW_RAM_reg_3328_3391_6_8_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[8]_12 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_3328_3391_9_11
       (.ADDRA(\gc0.count_d1_reg[5]_rep__5 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__5 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__5 ),
        .ADDRD(\gic0.gc0.count_d2_reg[5]_rep__1 ),
        .DIA(din[9]),
        .DIB(din[10]),
        .DIC(din[11]),
        .DID(1'b0),
        .DOA(RAM_reg_3328_3391_9_11_n_0),
        .DOB(RAM_reg_3328_3391_9_11_n_1),
        .DOC(RAM_reg_3328_3391_9_11_n_2),
        .DOD(NLW_RAM_reg_3328_3391_9_11_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[8]_12 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_3392_3455_0_2
       (.ADDRA(ADDRC),
        .ADDRB(ADDRC),
        .ADDRC(ADDRC),
        .ADDRD(Q),
        .DIA(din[0]),
        .DIB(din[1]),
        .DIC(din[2]),
        .DID(1'b0),
        .DOA(RAM_reg_3392_3455_0_2_n_0),
        .DOB(RAM_reg_3392_3455_0_2_n_1),
        .DOC(RAM_reg_3392_3455_0_2_n_2),
        .DOD(NLW_RAM_reg_3392_3455_0_2_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[6]_16 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_3392_3455_12_14
       (.ADDRA(\gc0.count_d1_reg[5]_rep__7 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__7 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__7 ),
        .ADDRD(\gic0.gc0.count_d2_reg[5]_rep__2 ),
        .DIA(din[12]),
        .DIB(din[13]),
        .DIC(din[14]),
        .DID(1'b0),
        .DOA(RAM_reg_3392_3455_12_14_n_0),
        .DOB(RAM_reg_3392_3455_12_14_n_1),
        .DOC(RAM_reg_3392_3455_12_14_n_2),
        .DOD(NLW_RAM_reg_3392_3455_12_14_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[6]_16 ));
  RAM64X1D RAM_reg_3392_3455_15_15
       (.A0(\gic0.gc0.count_d2_reg[0]_rep__3 ),
        .A1(\gic0.gc0.count_d2_reg[1]_rep__3 ),
        .A2(\gic0.gc0.count_d2_reg[2]_rep__3 ),
        .A3(\gic0.gc0.count_d2_reg[3]_rep__3 ),
        .A4(\gic0.gc0.count_d2_reg[4]_rep__3 ),
        .A5(\gic0.gc0.count_d2_reg[5]_rep__3 ),
        .D(din[15]),
        .DPO(RAM_reg_3392_3455_15_15_n_0),
        .DPRA0(\gc0.count_d1_reg[11] [0]),
        .DPRA1(\gc0.count_d1_reg[11] [1]),
        .DPRA2(\gc0.count_d1_reg[11] [2]),
        .DPRA3(\gc0.count_d1_reg[11] [3]),
        .DPRA4(\gc0.count_d1_reg[11] [4]),
        .DPRA5(\gc0.count_d1_reg[11] [5]),
        .SPO(NLW_RAM_reg_3392_3455_15_15_SPO_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[6]_16 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_3392_3455_3_5
       (.ADDRA(\gc0.count_d1_reg[5]_rep__1 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__1 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__1 ),
        .ADDRD(ADDRD),
        .DIA(din[3]),
        .DIB(din[4]),
        .DIC(din[5]),
        .DID(1'b0),
        .DOA(RAM_reg_3392_3455_3_5_n_0),
        .DOB(RAM_reg_3392_3455_3_5_n_1),
        .DOC(RAM_reg_3392_3455_3_5_n_2),
        .DOD(NLW_RAM_reg_3392_3455_3_5_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[6]_16 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_3392_3455_6_8
       (.ADDRA(\gc0.count_d1_reg[5]_rep__3 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__3 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__3 ),
        .ADDRD(\gic0.gc0.count_d2_reg[5]_rep__0 ),
        .DIA(din[6]),
        .DIB(din[7]),
        .DIC(din[8]),
        .DID(1'b0),
        .DOA(RAM_reg_3392_3455_6_8_n_0),
        .DOB(RAM_reg_3392_3455_6_8_n_1),
        .DOC(RAM_reg_3392_3455_6_8_n_2),
        .DOD(NLW_RAM_reg_3392_3455_6_8_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[6]_16 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_3392_3455_9_11
       (.ADDRA(\gc0.count_d1_reg[5]_rep__5 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__5 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__5 ),
        .ADDRD(\gic0.gc0.count_d2_reg[5]_rep__1 ),
        .DIA(din[9]),
        .DIB(din[10]),
        .DIC(din[11]),
        .DID(1'b0),
        .DOA(RAM_reg_3392_3455_9_11_n_0),
        .DOB(RAM_reg_3392_3455_9_11_n_1),
        .DOC(RAM_reg_3392_3455_9_11_n_2),
        .DOD(NLW_RAM_reg_3392_3455_9_11_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[6]_16 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_3456_3519_0_2
       (.ADDRA(ADDRC),
        .ADDRB(ADDRC),
        .ADDRC(ADDRC),
        .ADDRD(Q),
        .DIA(din[0]),
        .DIB(din[1]),
        .DIC(din[2]),
        .DID(1'b0),
        .DOA(RAM_reg_3456_3519_0_2_n_0),
        .DOB(RAM_reg_3456_3519_0_2_n_1),
        .DOC(RAM_reg_3456_3519_0_2_n_2),
        .DOD(NLW_RAM_reg_3456_3519_0_2_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[10]_1 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_3456_3519_12_14
       (.ADDRA(\gc0.count_d1_reg[5]_rep__7 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__7 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__7 ),
        .ADDRD(\gic0.gc0.count_d2_reg[5]_rep__2 ),
        .DIA(din[12]),
        .DIB(din[13]),
        .DIC(din[14]),
        .DID(1'b0),
        .DOA(RAM_reg_3456_3519_12_14_n_0),
        .DOB(RAM_reg_3456_3519_12_14_n_1),
        .DOC(RAM_reg_3456_3519_12_14_n_2),
        .DOD(NLW_RAM_reg_3456_3519_12_14_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[10]_1 ));
  RAM64X1D RAM_reg_3456_3519_15_15
       (.A0(\gic0.gc0.count_d2_reg[0]_rep__3 ),
        .A1(\gic0.gc0.count_d2_reg[1]_rep__3 ),
        .A2(\gic0.gc0.count_d2_reg[2]_rep__3 ),
        .A3(\gic0.gc0.count_d2_reg[3]_rep__3 ),
        .A4(\gic0.gc0.count_d2_reg[4]_rep__3 ),
        .A5(\gic0.gc0.count_d2_reg[5]_rep__3 ),
        .D(din[15]),
        .DPO(RAM_reg_3456_3519_15_15_n_0),
        .DPRA0(\gc0.count_d1_reg[11] [0]),
        .DPRA1(\gc0.count_d1_reg[11] [1]),
        .DPRA2(\gc0.count_d1_reg[11] [2]),
        .DPRA3(\gc0.count_d1_reg[11] [3]),
        .DPRA4(\gc0.count_d1_reg[11] [4]),
        .DPRA5(\gc0.count_d1_reg[11] [5]),
        .SPO(NLW_RAM_reg_3456_3519_15_15_SPO_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[10]_1 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_3456_3519_3_5
       (.ADDRA(\gc0.count_d1_reg[5]_rep__1 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__1 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__1 ),
        .ADDRD(ADDRD),
        .DIA(din[3]),
        .DIB(din[4]),
        .DIC(din[5]),
        .DID(1'b0),
        .DOA(RAM_reg_3456_3519_3_5_n_0),
        .DOB(RAM_reg_3456_3519_3_5_n_1),
        .DOC(RAM_reg_3456_3519_3_5_n_2),
        .DOD(NLW_RAM_reg_3456_3519_3_5_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[10]_1 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_3456_3519_6_8
       (.ADDRA(\gc0.count_d1_reg[5]_rep__3 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__3 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__3 ),
        .ADDRD(\gic0.gc0.count_d2_reg[5]_rep__0 ),
        .DIA(din[6]),
        .DIB(din[7]),
        .DIC(din[8]),
        .DID(1'b0),
        .DOA(RAM_reg_3456_3519_6_8_n_0),
        .DOB(RAM_reg_3456_3519_6_8_n_1),
        .DOC(RAM_reg_3456_3519_6_8_n_2),
        .DOD(NLW_RAM_reg_3456_3519_6_8_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[10]_1 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_3456_3519_9_11
       (.ADDRA(\gc0.count_d1_reg[5]_rep__5 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__5 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__5 ),
        .ADDRD(\gic0.gc0.count_d2_reg[5]_rep__1 ),
        .DIA(din[9]),
        .DIB(din[10]),
        .DIC(din[11]),
        .DID(1'b0),
        .DOA(RAM_reg_3456_3519_9_11_n_0),
        .DOB(RAM_reg_3456_3519_9_11_n_1),
        .DOC(RAM_reg_3456_3519_9_11_n_2),
        .DOD(NLW_RAM_reg_3456_3519_9_11_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[10]_1 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_3520_3583_0_2
       (.ADDRA(ADDRC),
        .ADDRB(ADDRC),
        .ADDRC(ADDRC),
        .ADDRD(Q),
        .DIA(din[0]),
        .DIB(din[1]),
        .DIC(din[2]),
        .DID(1'b0),
        .DOA(RAM_reg_3520_3583_0_2_n_0),
        .DOB(RAM_reg_3520_3583_0_2_n_1),
        .DOC(RAM_reg_3520_3583_0_2_n_2),
        .DOD(NLW_RAM_reg_3520_3583_0_2_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[6]_17 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_3520_3583_12_14
       (.ADDRA(\gc0.count_d1_reg[5]_rep__7 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__7 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__7 ),
        .ADDRD(\gic0.gc0.count_d2_reg[5]_rep__2 ),
        .DIA(din[12]),
        .DIB(din[13]),
        .DIC(din[14]),
        .DID(1'b0),
        .DOA(RAM_reg_3520_3583_12_14_n_0),
        .DOB(RAM_reg_3520_3583_12_14_n_1),
        .DOC(RAM_reg_3520_3583_12_14_n_2),
        .DOD(NLW_RAM_reg_3520_3583_12_14_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[6]_17 ));
  RAM64X1D RAM_reg_3520_3583_15_15
       (.A0(\gic0.gc0.count_d2_reg[0]_rep__3 ),
        .A1(\gic0.gc0.count_d2_reg[1]_rep__3 ),
        .A2(\gic0.gc0.count_d2_reg[2]_rep__3 ),
        .A3(\gic0.gc0.count_d2_reg[3]_rep__3 ),
        .A4(\gic0.gc0.count_d2_reg[4]_rep__3 ),
        .A5(\gic0.gc0.count_d2_reg[5]_rep__3 ),
        .D(din[15]),
        .DPO(RAM_reg_3520_3583_15_15_n_0),
        .DPRA0(\gc0.count_d1_reg[11] [0]),
        .DPRA1(\gc0.count_d1_reg[11] [1]),
        .DPRA2(\gc0.count_d1_reg[11] [2]),
        .DPRA3(\gc0.count_d1_reg[11] [3]),
        .DPRA4(\gc0.count_d1_reg[11] [4]),
        .DPRA5(\gc0.count_d1_reg[11] [5]),
        .SPO(NLW_RAM_reg_3520_3583_15_15_SPO_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[6]_17 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_3520_3583_3_5
       (.ADDRA(\gc0.count_d1_reg[5]_rep__1 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__1 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__1 ),
        .ADDRD(ADDRD),
        .DIA(din[3]),
        .DIB(din[4]),
        .DIC(din[5]),
        .DID(1'b0),
        .DOA(RAM_reg_3520_3583_3_5_n_0),
        .DOB(RAM_reg_3520_3583_3_5_n_1),
        .DOC(RAM_reg_3520_3583_3_5_n_2),
        .DOD(NLW_RAM_reg_3520_3583_3_5_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[6]_17 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_3520_3583_6_8
       (.ADDRA(\gc0.count_d1_reg[5]_rep__3 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__3 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__3 ),
        .ADDRD(\gic0.gc0.count_d2_reg[5]_rep__0 ),
        .DIA(din[6]),
        .DIB(din[7]),
        .DIC(din[8]),
        .DID(1'b0),
        .DOA(RAM_reg_3520_3583_6_8_n_0),
        .DOB(RAM_reg_3520_3583_6_8_n_1),
        .DOC(RAM_reg_3520_3583_6_8_n_2),
        .DOD(NLW_RAM_reg_3520_3583_6_8_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[6]_17 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_3520_3583_9_11
       (.ADDRA(\gc0.count_d1_reg[5]_rep__5 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__5 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__5 ),
        .ADDRD(\gic0.gc0.count_d2_reg[5]_rep__1 ),
        .DIA(din[9]),
        .DIB(din[10]),
        .DIC(din[11]),
        .DID(1'b0),
        .DOA(RAM_reg_3520_3583_9_11_n_0),
        .DOB(RAM_reg_3520_3583_9_11_n_1),
        .DOC(RAM_reg_3520_3583_9_11_n_2),
        .DOD(NLW_RAM_reg_3520_3583_9_11_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[6]_17 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_3584_3647_0_2
       (.ADDRA(ADDRC),
        .ADDRB(ADDRC),
        .ADDRC(ADDRC),
        .ADDRD(Q),
        .DIA(din[0]),
        .DIB(din[1]),
        .DIC(din[2]),
        .DID(1'b0),
        .DOA(RAM_reg_3584_3647_0_2_n_0),
        .DOB(RAM_reg_3584_3647_0_2_n_1),
        .DOC(RAM_reg_3584_3647_0_2_n_2),
        .DOD(NLW_RAM_reg_3584_3647_0_2_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[9]_15 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_3584_3647_12_14
       (.ADDRA(\gc0.count_d1_reg[5]_rep__7 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__7 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__7 ),
        .ADDRD(\gic0.gc0.count_d2_reg[5]_rep__2 ),
        .DIA(din[12]),
        .DIB(din[13]),
        .DIC(din[14]),
        .DID(1'b0),
        .DOA(RAM_reg_3584_3647_12_14_n_0),
        .DOB(RAM_reg_3584_3647_12_14_n_1),
        .DOC(RAM_reg_3584_3647_12_14_n_2),
        .DOD(NLW_RAM_reg_3584_3647_12_14_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[9]_15 ));
  RAM64X1D RAM_reg_3584_3647_15_15
       (.A0(\gic0.gc0.count_d2_reg[0]_rep__3 ),
        .A1(\gic0.gc0.count_d2_reg[1]_rep__3 ),
        .A2(\gic0.gc0.count_d2_reg[2]_rep__3 ),
        .A3(\gic0.gc0.count_d2_reg[3]_rep__3 ),
        .A4(\gic0.gc0.count_d2_reg[4]_rep__3 ),
        .A5(\gic0.gc0.count_d2_reg[5]_rep__3 ),
        .D(din[15]),
        .DPO(RAM_reg_3584_3647_15_15_n_0),
        .DPRA0(\gc0.count_d1_reg[11] [0]),
        .DPRA1(\gc0.count_d1_reg[11] [1]),
        .DPRA2(\gc0.count_d1_reg[11] [2]),
        .DPRA3(\gc0.count_d1_reg[11] [3]),
        .DPRA4(\gc0.count_d1_reg[11] [4]),
        .DPRA5(\gc0.count_d1_reg[11] [5]),
        .SPO(NLW_RAM_reg_3584_3647_15_15_SPO_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[9]_15 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_3584_3647_3_5
       (.ADDRA(\gc0.count_d1_reg[5]_rep__1 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__1 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__1 ),
        .ADDRD(ADDRD),
        .DIA(din[3]),
        .DIB(din[4]),
        .DIC(din[5]),
        .DID(1'b0),
        .DOA(RAM_reg_3584_3647_3_5_n_0),
        .DOB(RAM_reg_3584_3647_3_5_n_1),
        .DOC(RAM_reg_3584_3647_3_5_n_2),
        .DOD(NLW_RAM_reg_3584_3647_3_5_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[9]_15 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_3584_3647_6_8
       (.ADDRA(\gc0.count_d1_reg[5]_rep__3 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__3 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__3 ),
        .ADDRD(\gic0.gc0.count_d2_reg[5]_rep__0 ),
        .DIA(din[6]),
        .DIB(din[7]),
        .DIC(din[8]),
        .DID(1'b0),
        .DOA(RAM_reg_3584_3647_6_8_n_0),
        .DOB(RAM_reg_3584_3647_6_8_n_1),
        .DOC(RAM_reg_3584_3647_6_8_n_2),
        .DOD(NLW_RAM_reg_3584_3647_6_8_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[9]_15 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_3584_3647_9_11
       (.ADDRA(\gc0.count_d1_reg[5]_rep__5 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__5 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__5 ),
        .ADDRD(\gic0.gc0.count_d2_reg[5]_rep__1 ),
        .DIA(din[9]),
        .DIB(din[10]),
        .DIC(din[11]),
        .DID(1'b0),
        .DOA(RAM_reg_3584_3647_9_11_n_0),
        .DOB(RAM_reg_3584_3647_9_11_n_1),
        .DOC(RAM_reg_3584_3647_9_11_n_2),
        .DOD(NLW_RAM_reg_3584_3647_9_11_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[9]_15 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_3648_3711_0_2
       (.ADDRA(ADDRC),
        .ADDRB(ADDRC),
        .ADDRC(ADDRC),
        .ADDRD(Q),
        .DIA(din[0]),
        .DIB(din[1]),
        .DIC(din[2]),
        .DID(1'b0),
        .DOA(RAM_reg_3648_3711_0_2_n_0),
        .DOB(RAM_reg_3648_3711_0_2_n_1),
        .DOC(RAM_reg_3648_3711_0_2_n_2),
        .DOD(NLW_RAM_reg_3648_3711_0_2_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[6]_18 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_3648_3711_12_14
       (.ADDRA(\gc0.count_d1_reg[5]_rep__7 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__7 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__7 ),
        .ADDRD(\gic0.gc0.count_d2_reg[5]_rep__2 ),
        .DIA(din[12]),
        .DIB(din[13]),
        .DIC(din[14]),
        .DID(1'b0),
        .DOA(RAM_reg_3648_3711_12_14_n_0),
        .DOB(RAM_reg_3648_3711_12_14_n_1),
        .DOC(RAM_reg_3648_3711_12_14_n_2),
        .DOD(NLW_RAM_reg_3648_3711_12_14_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[6]_18 ));
  RAM64X1D RAM_reg_3648_3711_15_15
       (.A0(\gic0.gc0.count_d2_reg[0]_rep__3 ),
        .A1(\gic0.gc0.count_d2_reg[1]_rep__3 ),
        .A2(\gic0.gc0.count_d2_reg[2]_rep__3 ),
        .A3(\gic0.gc0.count_d2_reg[3]_rep__3 ),
        .A4(\gic0.gc0.count_d2_reg[4]_rep__3 ),
        .A5(\gic0.gc0.count_d2_reg[5]_rep__3 ),
        .D(din[15]),
        .DPO(RAM_reg_3648_3711_15_15_n_0),
        .DPRA0(\gc0.count_d1_reg[11] [0]),
        .DPRA1(\gc0.count_d1_reg[11] [1]),
        .DPRA2(\gc0.count_d1_reg[11] [2]),
        .DPRA3(\gc0.count_d1_reg[11] [3]),
        .DPRA4(\gc0.count_d1_reg[11] [4]),
        .DPRA5(\gc0.count_d1_reg[11] [5]),
        .SPO(NLW_RAM_reg_3648_3711_15_15_SPO_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[6]_18 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_3648_3711_3_5
       (.ADDRA(\gc0.count_d1_reg[5]_rep__1 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__1 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__1 ),
        .ADDRD(ADDRD),
        .DIA(din[3]),
        .DIB(din[4]),
        .DIC(din[5]),
        .DID(1'b0),
        .DOA(RAM_reg_3648_3711_3_5_n_0),
        .DOB(RAM_reg_3648_3711_3_5_n_1),
        .DOC(RAM_reg_3648_3711_3_5_n_2),
        .DOD(NLW_RAM_reg_3648_3711_3_5_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[6]_18 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_3648_3711_6_8
       (.ADDRA(\gc0.count_d1_reg[5]_rep__3 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__3 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__3 ),
        .ADDRD(\gic0.gc0.count_d2_reg[5]_rep__0 ),
        .DIA(din[6]),
        .DIB(din[7]),
        .DIC(din[8]),
        .DID(1'b0),
        .DOA(RAM_reg_3648_3711_6_8_n_0),
        .DOB(RAM_reg_3648_3711_6_8_n_1),
        .DOC(RAM_reg_3648_3711_6_8_n_2),
        .DOD(NLW_RAM_reg_3648_3711_6_8_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[6]_18 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_3648_3711_9_11
       (.ADDRA(\gc0.count_d1_reg[5]_rep__5 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__5 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__5 ),
        .ADDRD(\gic0.gc0.count_d2_reg[5]_rep__1 ),
        .DIA(din[9]),
        .DIB(din[10]),
        .DIC(din[11]),
        .DID(1'b0),
        .DOA(RAM_reg_3648_3711_9_11_n_0),
        .DOB(RAM_reg_3648_3711_9_11_n_1),
        .DOC(RAM_reg_3648_3711_9_11_n_2),
        .DOD(NLW_RAM_reg_3648_3711_9_11_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[6]_18 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_3712_3775_0_2
       (.ADDRA(ADDRC),
        .ADDRB(ADDRC),
        .ADDRC(ADDRC),
        .ADDRD(Q),
        .DIA(din[0]),
        .DIB(din[1]),
        .DIC(din[2]),
        .DID(1'b0),
        .DOA(RAM_reg_3712_3775_0_2_n_0),
        .DOB(RAM_reg_3712_3775_0_2_n_1),
        .DOC(RAM_reg_3712_3775_0_2_n_2),
        .DOD(NLW_RAM_reg_3712_3775_0_2_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[9]_16 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_3712_3775_12_14
       (.ADDRA(\gc0.count_d1_reg[5]_rep__7 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__7 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__7 ),
        .ADDRD(\gic0.gc0.count_d2_reg[5]_rep__2 ),
        .DIA(din[12]),
        .DIB(din[13]),
        .DIC(din[14]),
        .DID(1'b0),
        .DOA(RAM_reg_3712_3775_12_14_n_0),
        .DOB(RAM_reg_3712_3775_12_14_n_1),
        .DOC(RAM_reg_3712_3775_12_14_n_2),
        .DOD(NLW_RAM_reg_3712_3775_12_14_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[9]_16 ));
  RAM64X1D RAM_reg_3712_3775_15_15
       (.A0(\gic0.gc0.count_d2_reg[0]_rep__3 ),
        .A1(\gic0.gc0.count_d2_reg[1]_rep__3 ),
        .A2(\gic0.gc0.count_d2_reg[2]_rep__3 ),
        .A3(\gic0.gc0.count_d2_reg[3]_rep__3 ),
        .A4(\gic0.gc0.count_d2_reg[4]_rep__3 ),
        .A5(\gic0.gc0.count_d2_reg[5]_rep__3 ),
        .D(din[15]),
        .DPO(RAM_reg_3712_3775_15_15_n_0),
        .DPRA0(\gc0.count_d1_reg[11] [0]),
        .DPRA1(\gc0.count_d1_reg[11] [1]),
        .DPRA2(\gc0.count_d1_reg[11] [2]),
        .DPRA3(\gc0.count_d1_reg[11] [3]),
        .DPRA4(\gc0.count_d1_reg[11] [4]),
        .DPRA5(\gc0.count_d1_reg[11] [5]),
        .SPO(NLW_RAM_reg_3712_3775_15_15_SPO_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[9]_16 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_3712_3775_3_5
       (.ADDRA(\gc0.count_d1_reg[5]_rep__1 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__1 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__1 ),
        .ADDRD(ADDRD),
        .DIA(din[3]),
        .DIB(din[4]),
        .DIC(din[5]),
        .DID(1'b0),
        .DOA(RAM_reg_3712_3775_3_5_n_0),
        .DOB(RAM_reg_3712_3775_3_5_n_1),
        .DOC(RAM_reg_3712_3775_3_5_n_2),
        .DOD(NLW_RAM_reg_3712_3775_3_5_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[9]_16 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_3712_3775_6_8
       (.ADDRA(\gc0.count_d1_reg[5]_rep__3 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__3 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__3 ),
        .ADDRD(\gic0.gc0.count_d2_reg[5]_rep__0 ),
        .DIA(din[6]),
        .DIB(din[7]),
        .DIC(din[8]),
        .DID(1'b0),
        .DOA(RAM_reg_3712_3775_6_8_n_0),
        .DOB(RAM_reg_3712_3775_6_8_n_1),
        .DOC(RAM_reg_3712_3775_6_8_n_2),
        .DOD(NLW_RAM_reg_3712_3775_6_8_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[9]_16 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_3712_3775_9_11
       (.ADDRA(\gc0.count_d1_reg[5]_rep__5 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__5 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__5 ),
        .ADDRD(\gic0.gc0.count_d2_reg[5]_rep__1 ),
        .DIA(din[9]),
        .DIB(din[10]),
        .DIC(din[11]),
        .DID(1'b0),
        .DOA(RAM_reg_3712_3775_9_11_n_0),
        .DOB(RAM_reg_3712_3775_9_11_n_1),
        .DOC(RAM_reg_3712_3775_9_11_n_2),
        .DOD(NLW_RAM_reg_3712_3775_9_11_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[9]_16 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_3776_3839_0_2
       (.ADDRA(ADDRC),
        .ADDRB(ADDRC),
        .ADDRC(ADDRC),
        .ADDRD(Q),
        .DIA(din[0]),
        .DIB(din[1]),
        .DIC(din[2]),
        .DID(1'b0),
        .DOA(RAM_reg_3776_3839_0_2_n_0),
        .DOB(RAM_reg_3776_3839_0_2_n_1),
        .DOC(RAM_reg_3776_3839_0_2_n_2),
        .DOD(NLW_RAM_reg_3776_3839_0_2_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[9]_17 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_3776_3839_12_14
       (.ADDRA(\gc0.count_d1_reg[5]_rep__7 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__7 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__7 ),
        .ADDRD(\gic0.gc0.count_d2_reg[5]_rep__2 ),
        .DIA(din[12]),
        .DIB(din[13]),
        .DIC(din[14]),
        .DID(1'b0),
        .DOA(RAM_reg_3776_3839_12_14_n_0),
        .DOB(RAM_reg_3776_3839_12_14_n_1),
        .DOC(RAM_reg_3776_3839_12_14_n_2),
        .DOD(NLW_RAM_reg_3776_3839_12_14_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[9]_17 ));
  RAM64X1D RAM_reg_3776_3839_15_15
       (.A0(\gic0.gc0.count_d2_reg[0]_rep__3 ),
        .A1(\gic0.gc0.count_d2_reg[1]_rep__3 ),
        .A2(\gic0.gc0.count_d2_reg[2]_rep__3 ),
        .A3(\gic0.gc0.count_d2_reg[3]_rep__3 ),
        .A4(\gic0.gc0.count_d2_reg[4]_rep__3 ),
        .A5(\gic0.gc0.count_d2_reg[5]_rep__3 ),
        .D(din[15]),
        .DPO(RAM_reg_3776_3839_15_15_n_0),
        .DPRA0(\gc0.count_d1_reg[11] [0]),
        .DPRA1(\gc0.count_d1_reg[11] [1]),
        .DPRA2(\gc0.count_d1_reg[11] [2]),
        .DPRA3(\gc0.count_d1_reg[11] [3]),
        .DPRA4(\gc0.count_d1_reg[11] [4]),
        .DPRA5(\gc0.count_d1_reg[11] [5]),
        .SPO(NLW_RAM_reg_3776_3839_15_15_SPO_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[9]_17 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_3776_3839_3_5
       (.ADDRA(\gc0.count_d1_reg[5]_rep__1 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__1 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__1 ),
        .ADDRD(ADDRD),
        .DIA(din[3]),
        .DIB(din[4]),
        .DIC(din[5]),
        .DID(1'b0),
        .DOA(RAM_reg_3776_3839_3_5_n_0),
        .DOB(RAM_reg_3776_3839_3_5_n_1),
        .DOC(RAM_reg_3776_3839_3_5_n_2),
        .DOD(NLW_RAM_reg_3776_3839_3_5_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[9]_17 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_3776_3839_6_8
       (.ADDRA(\gc0.count_d1_reg[5]_rep__3 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__3 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__3 ),
        .ADDRD(\gic0.gc0.count_d2_reg[5]_rep__0 ),
        .DIA(din[6]),
        .DIB(din[7]),
        .DIC(din[8]),
        .DID(1'b0),
        .DOA(RAM_reg_3776_3839_6_8_n_0),
        .DOB(RAM_reg_3776_3839_6_8_n_1),
        .DOC(RAM_reg_3776_3839_6_8_n_2),
        .DOD(NLW_RAM_reg_3776_3839_6_8_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[9]_17 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_3776_3839_9_11
       (.ADDRA(\gc0.count_d1_reg[5]_rep__5 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__5 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__5 ),
        .ADDRD(\gic0.gc0.count_d2_reg[5]_rep__1 ),
        .DIA(din[9]),
        .DIB(din[10]),
        .DIC(din[11]),
        .DID(1'b0),
        .DOA(RAM_reg_3776_3839_9_11_n_0),
        .DOB(RAM_reg_3776_3839_9_11_n_1),
        .DOC(RAM_reg_3776_3839_9_11_n_2),
        .DOD(NLW_RAM_reg_3776_3839_9_11_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[9]_17 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_3840_3903_0_2
       (.ADDRA(ADDRC),
        .ADDRB(ADDRC),
        .ADDRC(ADDRC),
        .ADDRD(Q),
        .DIA(din[0]),
        .DIB(din[1]),
        .DIC(din[2]),
        .DID(1'b0),
        .DOA(RAM_reg_3840_3903_0_2_n_0),
        .DOB(RAM_reg_3840_3903_0_2_n_1),
        .DOC(RAM_reg_3840_3903_0_2_n_2),
        .DOD(NLW_RAM_reg_3840_3903_0_2_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[10]_2 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_3840_3903_12_14
       (.ADDRA(\gc0.count_d1_reg[5]_rep__7 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__7 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__7 ),
        .ADDRD(\gic0.gc0.count_d2_reg[5]_rep__2 ),
        .DIA(din[12]),
        .DIB(din[13]),
        .DIC(din[14]),
        .DID(1'b0),
        .DOA(RAM_reg_3840_3903_12_14_n_0),
        .DOB(RAM_reg_3840_3903_12_14_n_1),
        .DOC(RAM_reg_3840_3903_12_14_n_2),
        .DOD(NLW_RAM_reg_3840_3903_12_14_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[10]_2 ));
  RAM64X1D RAM_reg_3840_3903_15_15
       (.A0(\gic0.gc0.count_d2_reg[0]_rep__3 ),
        .A1(\gic0.gc0.count_d2_reg[1]_rep__3 ),
        .A2(\gic0.gc0.count_d2_reg[2]_rep__3 ),
        .A3(\gic0.gc0.count_d2_reg[3]_rep__3 ),
        .A4(\gic0.gc0.count_d2_reg[4]_rep__3 ),
        .A5(\gic0.gc0.count_d2_reg[5]_rep__3 ),
        .D(din[15]),
        .DPO(RAM_reg_3840_3903_15_15_n_0),
        .DPRA0(\gc0.count_d1_reg[11] [0]),
        .DPRA1(\gc0.count_d1_reg[11] [1]),
        .DPRA2(\gc0.count_d1_reg[11] [2]),
        .DPRA3(\gc0.count_d1_reg[11] [3]),
        .DPRA4(\gc0.count_d1_reg[11] [4]),
        .DPRA5(\gc0.count_d1_reg[11] [5]),
        .SPO(NLW_RAM_reg_3840_3903_15_15_SPO_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[10]_2 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_3840_3903_3_5
       (.ADDRA(\gc0.count_d1_reg[5]_rep__1 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__1 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__1 ),
        .ADDRD(ADDRD),
        .DIA(din[3]),
        .DIB(din[4]),
        .DIC(din[5]),
        .DID(1'b0),
        .DOA(RAM_reg_3840_3903_3_5_n_0),
        .DOB(RAM_reg_3840_3903_3_5_n_1),
        .DOC(RAM_reg_3840_3903_3_5_n_2),
        .DOD(NLW_RAM_reg_3840_3903_3_5_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[10]_2 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_3840_3903_6_8
       (.ADDRA(\gc0.count_d1_reg[5]_rep__3 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__3 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__3 ),
        .ADDRD(\gic0.gc0.count_d2_reg[5]_rep__0 ),
        .DIA(din[6]),
        .DIB(din[7]),
        .DIC(din[8]),
        .DID(1'b0),
        .DOA(RAM_reg_3840_3903_6_8_n_0),
        .DOB(RAM_reg_3840_3903_6_8_n_1),
        .DOC(RAM_reg_3840_3903_6_8_n_2),
        .DOD(NLW_RAM_reg_3840_3903_6_8_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[10]_2 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_3840_3903_9_11
       (.ADDRA(\gc0.count_d1_reg[5]_rep__5 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__5 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__5 ),
        .ADDRD(\gic0.gc0.count_d2_reg[5]_rep__1 ),
        .DIA(din[9]),
        .DIB(din[10]),
        .DIC(din[11]),
        .DID(1'b0),
        .DOA(RAM_reg_3840_3903_9_11_n_0),
        .DOB(RAM_reg_3840_3903_9_11_n_1),
        .DOC(RAM_reg_3840_3903_9_11_n_2),
        .DOD(NLW_RAM_reg_3840_3903_9_11_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[10]_2 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_384_447_0_2
       (.ADDRA(\gc0.count_d1_reg[5]_rep__0 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__0 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__0 ),
        .ADDRD(Q),
        .DIA(din[0]),
        .DIB(din[1]),
        .DIC(din[2]),
        .DID(1'b0),
        .DOA(RAM_reg_384_447_0_2_n_0),
        .DOB(RAM_reg_384_447_0_2_n_1),
        .DOC(RAM_reg_384_447_0_2_n_2),
        .DOD(NLW_RAM_reg_384_447_0_2_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[9]_2 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_384_447_12_14
       (.ADDRA(\gc0.count_d1_reg[5]_rep__8 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__8 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__8 ),
        .ADDRD(\gic0.gc0.count_d2_reg[5]_rep__2 ),
        .DIA(din[12]),
        .DIB(din[13]),
        .DIC(din[14]),
        .DID(1'b0),
        .DOA(RAM_reg_384_447_12_14_n_0),
        .DOB(RAM_reg_384_447_12_14_n_1),
        .DOC(RAM_reg_384_447_12_14_n_2),
        .DOD(NLW_RAM_reg_384_447_12_14_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[9]_2 ));
  RAM64X1D RAM_reg_384_447_15_15
       (.A0(\gic0.gc0.count_d2_reg[0]_rep__3 ),
        .A1(\gic0.gc0.count_d2_reg[1]_rep__3 ),
        .A2(\gic0.gc0.count_d2_reg[2]_rep__3 ),
        .A3(\gic0.gc0.count_d2_reg[3]_rep__3 ),
        .A4(\gic0.gc0.count_d2_reg[4]_rep__3 ),
        .A5(\gic0.gc0.count_d2_reg[5]_rep__3 ),
        .D(din[15]),
        .DPO(RAM_reg_384_447_15_15_n_0),
        .DPRA0(\gc0.count_d1_reg[11] [0]),
        .DPRA1(\gc0.count_d1_reg[11] [1]),
        .DPRA2(\gc0.count_d1_reg[11] [2]),
        .DPRA3(\gc0.count_d1_reg[11] [3]),
        .DPRA4(\gc0.count_d1_reg[11] [4]),
        .DPRA5(\gc0.count_d1_reg[11] [5]),
        .SPO(NLW_RAM_reg_384_447_15_15_SPO_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[9]_2 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_384_447_3_5
       (.ADDRA(\gc0.count_d1_reg[5]_rep__2 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__2 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__2 ),
        .ADDRD(ADDRD),
        .DIA(din[3]),
        .DIB(din[4]),
        .DIC(din[5]),
        .DID(1'b0),
        .DOA(RAM_reg_384_447_3_5_n_0),
        .DOB(RAM_reg_384_447_3_5_n_1),
        .DOC(RAM_reg_384_447_3_5_n_2),
        .DOD(NLW_RAM_reg_384_447_3_5_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[9]_2 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_384_447_6_8
       (.ADDRA(\gc0.count_d1_reg[5]_rep__4 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__4 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__4 ),
        .ADDRD(\gic0.gc0.count_d2_reg[5]_rep__0 ),
        .DIA(din[6]),
        .DIB(din[7]),
        .DIC(din[8]),
        .DID(1'b0),
        .DOA(RAM_reg_384_447_6_8_n_0),
        .DOB(RAM_reg_384_447_6_8_n_1),
        .DOC(RAM_reg_384_447_6_8_n_2),
        .DOD(NLW_RAM_reg_384_447_6_8_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[9]_2 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_384_447_9_11
       (.ADDRA(\gc0.count_d1_reg[5]_rep__6 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__6 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__6 ),
        .ADDRD(\gic0.gc0.count_d2_reg[5]_rep__1 ),
        .DIA(din[9]),
        .DIB(din[10]),
        .DIC(din[11]),
        .DID(1'b0),
        .DOA(RAM_reg_384_447_9_11_n_0),
        .DOB(RAM_reg_384_447_9_11_n_1),
        .DOC(RAM_reg_384_447_9_11_n_2),
        .DOD(NLW_RAM_reg_384_447_9_11_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[9]_2 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_3904_3967_0_2
       (.ADDRA(ADDRC),
        .ADDRB(ADDRC),
        .ADDRC(ADDRC),
        .ADDRD(Q),
        .DIA(din[0]),
        .DIB(din[1]),
        .DIC(din[2]),
        .DID(1'b0),
        .DOA(RAM_reg_3904_3967_0_2_n_0),
        .DOB(RAM_reg_3904_3967_0_2_n_1),
        .DOC(RAM_reg_3904_3967_0_2_n_2),
        .DOD(NLW_RAM_reg_3904_3967_0_2_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[7]_3 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_3904_3967_12_14
       (.ADDRA(\gc0.count_d1_reg[5]_rep__7 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__7 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__7 ),
        .ADDRD(\gic0.gc0.count_d2_reg[5]_rep__2 ),
        .DIA(din[12]),
        .DIB(din[13]),
        .DIC(din[14]),
        .DID(1'b0),
        .DOA(RAM_reg_3904_3967_12_14_n_0),
        .DOB(RAM_reg_3904_3967_12_14_n_1),
        .DOC(RAM_reg_3904_3967_12_14_n_2),
        .DOD(NLW_RAM_reg_3904_3967_12_14_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[7]_3 ));
  RAM64X1D RAM_reg_3904_3967_15_15
       (.A0(\gic0.gc0.count_d2_reg[0]_rep__3 ),
        .A1(\gic0.gc0.count_d2_reg[1]_rep__3 ),
        .A2(\gic0.gc0.count_d2_reg[2]_rep__3 ),
        .A3(\gic0.gc0.count_d2_reg[3]_rep__3 ),
        .A4(\gic0.gc0.count_d2_reg[4]_rep__3 ),
        .A5(\gic0.gc0.count_d2_reg[5]_rep__3 ),
        .D(din[15]),
        .DPO(RAM_reg_3904_3967_15_15_n_0),
        .DPRA0(\gc0.count_d1_reg[11] [0]),
        .DPRA1(\gc0.count_d1_reg[11] [1]),
        .DPRA2(\gc0.count_d1_reg[11] [2]),
        .DPRA3(\gc0.count_d1_reg[11] [3]),
        .DPRA4(\gc0.count_d1_reg[11] [4]),
        .DPRA5(\gc0.count_d1_reg[11] [5]),
        .SPO(NLW_RAM_reg_3904_3967_15_15_SPO_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[7]_3 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_3904_3967_3_5
       (.ADDRA(\gc0.count_d1_reg[5]_rep__1 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__1 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__1 ),
        .ADDRD(ADDRD),
        .DIA(din[3]),
        .DIB(din[4]),
        .DIC(din[5]),
        .DID(1'b0),
        .DOA(RAM_reg_3904_3967_3_5_n_0),
        .DOB(RAM_reg_3904_3967_3_5_n_1),
        .DOC(RAM_reg_3904_3967_3_5_n_2),
        .DOD(NLW_RAM_reg_3904_3967_3_5_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[7]_3 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_3904_3967_6_8
       (.ADDRA(\gc0.count_d1_reg[5]_rep__3 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__3 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__3 ),
        .ADDRD(\gic0.gc0.count_d2_reg[5]_rep__0 ),
        .DIA(din[6]),
        .DIB(din[7]),
        .DIC(din[8]),
        .DID(1'b0),
        .DOA(RAM_reg_3904_3967_6_8_n_0),
        .DOB(RAM_reg_3904_3967_6_8_n_1),
        .DOC(RAM_reg_3904_3967_6_8_n_2),
        .DOD(NLW_RAM_reg_3904_3967_6_8_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[7]_3 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_3904_3967_9_11
       (.ADDRA(\gc0.count_d1_reg[5]_rep__5 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__5 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__5 ),
        .ADDRD(\gic0.gc0.count_d2_reg[5]_rep__1 ),
        .DIA(din[9]),
        .DIB(din[10]),
        .DIC(din[11]),
        .DID(1'b0),
        .DOA(RAM_reg_3904_3967_9_11_n_0),
        .DOB(RAM_reg_3904_3967_9_11_n_1),
        .DOC(RAM_reg_3904_3967_9_11_n_2),
        .DOD(NLW_RAM_reg_3904_3967_9_11_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[7]_3 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_3968_4031_0_2
       (.ADDRA(ADDRC),
        .ADDRB(ADDRC),
        .ADDRC(ADDRC),
        .ADDRD(Q),
        .DIA(din[0]),
        .DIB(din[1]),
        .DIC(din[2]),
        .DID(1'b0),
        .DOA(RAM_reg_3968_4031_0_2_n_0),
        .DOB(RAM_reg_3968_4031_0_2_n_1),
        .DOC(RAM_reg_3968_4031_0_2_n_2),
        .DOD(NLW_RAM_reg_3968_4031_0_2_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[6]_19 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_3968_4031_12_14
       (.ADDRA(\gc0.count_d1_reg[5]_rep__7 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__7 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__7 ),
        .ADDRD(\gic0.gc0.count_d2_reg[5]_rep__2 ),
        .DIA(din[12]),
        .DIB(din[13]),
        .DIC(din[14]),
        .DID(1'b0),
        .DOA(RAM_reg_3968_4031_12_14_n_0),
        .DOB(RAM_reg_3968_4031_12_14_n_1),
        .DOC(RAM_reg_3968_4031_12_14_n_2),
        .DOD(NLW_RAM_reg_3968_4031_12_14_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[6]_19 ));
  RAM64X1D RAM_reg_3968_4031_15_15
       (.A0(\gic0.gc0.count_d2_reg[0]_rep__3 ),
        .A1(\gic0.gc0.count_d2_reg[1]_rep__3 ),
        .A2(\gic0.gc0.count_d2_reg[2]_rep__3 ),
        .A3(\gic0.gc0.count_d2_reg[3]_rep__3 ),
        .A4(\gic0.gc0.count_d2_reg[4]_rep__3 ),
        .A5(\gic0.gc0.count_d2_reg[5]_rep__3 ),
        .D(din[15]),
        .DPO(RAM_reg_3968_4031_15_15_n_0),
        .DPRA0(\gc0.count_d1_reg[11] [0]),
        .DPRA1(\gc0.count_d1_reg[11] [1]),
        .DPRA2(\gc0.count_d1_reg[11] [2]),
        .DPRA3(\gc0.count_d1_reg[11] [3]),
        .DPRA4(\gc0.count_d1_reg[11] [4]),
        .DPRA5(\gc0.count_d1_reg[11] [5]),
        .SPO(NLW_RAM_reg_3968_4031_15_15_SPO_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[6]_19 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_3968_4031_3_5
       (.ADDRA(\gc0.count_d1_reg[5]_rep__1 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__1 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__1 ),
        .ADDRD(ADDRD),
        .DIA(din[3]),
        .DIB(din[4]),
        .DIC(din[5]),
        .DID(1'b0),
        .DOA(RAM_reg_3968_4031_3_5_n_0),
        .DOB(RAM_reg_3968_4031_3_5_n_1),
        .DOC(RAM_reg_3968_4031_3_5_n_2),
        .DOD(NLW_RAM_reg_3968_4031_3_5_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[6]_19 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_3968_4031_6_8
       (.ADDRA(\gc0.count_d1_reg[5]_rep__3 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__3 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__3 ),
        .ADDRD(\gic0.gc0.count_d2_reg[5]_rep__0 ),
        .DIA(din[6]),
        .DIB(din[7]),
        .DIC(din[8]),
        .DID(1'b0),
        .DOA(RAM_reg_3968_4031_6_8_n_0),
        .DOB(RAM_reg_3968_4031_6_8_n_1),
        .DOC(RAM_reg_3968_4031_6_8_n_2),
        .DOD(NLW_RAM_reg_3968_4031_6_8_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[6]_19 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_3968_4031_9_11
       (.ADDRA(\gc0.count_d1_reg[5]_rep__5 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__5 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__5 ),
        .ADDRD(\gic0.gc0.count_d2_reg[5]_rep__1 ),
        .DIA(din[9]),
        .DIB(din[10]),
        .DIC(din[11]),
        .DID(1'b0),
        .DOA(RAM_reg_3968_4031_9_11_n_0),
        .DOB(RAM_reg_3968_4031_9_11_n_1),
        .DOC(RAM_reg_3968_4031_9_11_n_2),
        .DOD(NLW_RAM_reg_3968_4031_9_11_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[6]_19 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_4032_4095_0_2
       (.ADDRA(ADDRC),
        .ADDRB(ADDRC),
        .ADDRC(ADDRC),
        .ADDRD(Q),
        .DIA(din[0]),
        .DIB(din[1]),
        .DIC(din[2]),
        .DID(1'b0),
        .DOA(RAM_reg_4032_4095_0_2_n_0),
        .DOB(RAM_reg_4032_4095_0_2_n_1),
        .DOC(RAM_reg_4032_4095_0_2_n_2),
        .DOD(NLW_RAM_reg_4032_4095_0_2_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[8]_13 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_4032_4095_12_14
       (.ADDRA(\gc0.count_d1_reg[5]_rep__7 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__7 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__7 ),
        .ADDRD(\gic0.gc0.count_d2_reg[5]_rep__2 ),
        .DIA(din[12]),
        .DIB(din[13]),
        .DIC(din[14]),
        .DID(1'b0),
        .DOA(RAM_reg_4032_4095_12_14_n_0),
        .DOB(RAM_reg_4032_4095_12_14_n_1),
        .DOC(RAM_reg_4032_4095_12_14_n_2),
        .DOD(NLW_RAM_reg_4032_4095_12_14_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[8]_13 ));
  RAM64X1D RAM_reg_4032_4095_15_15
       (.A0(\gic0.gc0.count_d2_reg[0]_rep__3 ),
        .A1(\gic0.gc0.count_d2_reg[1]_rep__3 ),
        .A2(\gic0.gc0.count_d2_reg[2]_rep__3 ),
        .A3(\gic0.gc0.count_d2_reg[3]_rep__3 ),
        .A4(\gic0.gc0.count_d2_reg[4]_rep__3 ),
        .A5(\gic0.gc0.count_d2_reg[5]_rep__3 ),
        .D(din[15]),
        .DPO(RAM_reg_4032_4095_15_15_n_0),
        .DPRA0(\gc0.count_d1_reg[11] [0]),
        .DPRA1(\gc0.count_d1_reg[11] [1]),
        .DPRA2(\gc0.count_d1_reg[11] [2]),
        .DPRA3(\gc0.count_d1_reg[11] [3]),
        .DPRA4(\gc0.count_d1_reg[11] [4]),
        .DPRA5(\gc0.count_d1_reg[11] [5]),
        .SPO(NLW_RAM_reg_4032_4095_15_15_SPO_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[8]_13 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_4032_4095_3_5
       (.ADDRA(\gc0.count_d1_reg[5]_rep__1 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__1 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__1 ),
        .ADDRD(ADDRD),
        .DIA(din[3]),
        .DIB(din[4]),
        .DIC(din[5]),
        .DID(1'b0),
        .DOA(RAM_reg_4032_4095_3_5_n_0),
        .DOB(RAM_reg_4032_4095_3_5_n_1),
        .DOC(RAM_reg_4032_4095_3_5_n_2),
        .DOD(NLW_RAM_reg_4032_4095_3_5_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[8]_13 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_4032_4095_6_8
       (.ADDRA(\gc0.count_d1_reg[5]_rep__3 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__3 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__3 ),
        .ADDRD(\gic0.gc0.count_d2_reg[5]_rep__0 ),
        .DIA(din[6]),
        .DIB(din[7]),
        .DIC(din[8]),
        .DID(1'b0),
        .DOA(RAM_reg_4032_4095_6_8_n_0),
        .DOB(RAM_reg_4032_4095_6_8_n_1),
        .DOC(RAM_reg_4032_4095_6_8_n_2),
        .DOD(NLW_RAM_reg_4032_4095_6_8_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[8]_13 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_4032_4095_9_11
       (.ADDRA(\gc0.count_d1_reg[5]_rep__5 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__5 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__5 ),
        .ADDRD(\gic0.gc0.count_d2_reg[5]_rep__1 ),
        .DIA(din[9]),
        .DIB(din[10]),
        .DIC(din[11]),
        .DID(1'b0),
        .DOA(RAM_reg_4032_4095_9_11_n_0),
        .DOB(RAM_reg_4032_4095_9_11_n_1),
        .DOC(RAM_reg_4032_4095_9_11_n_2),
        .DOD(NLW_RAM_reg_4032_4095_9_11_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[8]_13 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_448_511_0_2
       (.ADDRA(\gc0.count_d1_reg[5]_rep__0 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__0 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__0 ),
        .ADDRD(Q),
        .DIA(din[0]),
        .DIB(din[1]),
        .DIC(din[2]),
        .DID(1'b0),
        .DOA(RAM_reg_448_511_0_2_n_0),
        .DOB(RAM_reg_448_511_0_2_n_1),
        .DOC(RAM_reg_448_511_0_2_n_2),
        .DOD(NLW_RAM_reg_448_511_0_2_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[8] ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_448_511_12_14
       (.ADDRA(\gc0.count_d1_reg[5]_rep__8 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__8 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__8 ),
        .ADDRD(\gic0.gc0.count_d2_reg[5]_rep__2 ),
        .DIA(din[12]),
        .DIB(din[13]),
        .DIC(din[14]),
        .DID(1'b0),
        .DOA(RAM_reg_448_511_12_14_n_0),
        .DOB(RAM_reg_448_511_12_14_n_1),
        .DOC(RAM_reg_448_511_12_14_n_2),
        .DOD(NLW_RAM_reg_448_511_12_14_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[8] ));
  RAM64X1D RAM_reg_448_511_15_15
       (.A0(\gic0.gc0.count_d2_reg[0]_rep__3 ),
        .A1(\gic0.gc0.count_d2_reg[1]_rep__3 ),
        .A2(\gic0.gc0.count_d2_reg[2]_rep__3 ),
        .A3(\gic0.gc0.count_d2_reg[3]_rep__3 ),
        .A4(\gic0.gc0.count_d2_reg[4]_rep__3 ),
        .A5(\gic0.gc0.count_d2_reg[5]_rep__3 ),
        .D(din[15]),
        .DPO(RAM_reg_448_511_15_15_n_0),
        .DPRA0(\gc0.count_d1_reg[11] [0]),
        .DPRA1(\gc0.count_d1_reg[11] [1]),
        .DPRA2(\gc0.count_d1_reg[11] [2]),
        .DPRA3(\gc0.count_d1_reg[11] [3]),
        .DPRA4(\gc0.count_d1_reg[11] [4]),
        .DPRA5(\gc0.count_d1_reg[11] [5]),
        .SPO(NLW_RAM_reg_448_511_15_15_SPO_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[8] ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_448_511_3_5
       (.ADDRA(\gc0.count_d1_reg[5]_rep__2 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__2 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__2 ),
        .ADDRD(ADDRD),
        .DIA(din[3]),
        .DIB(din[4]),
        .DIC(din[5]),
        .DID(1'b0),
        .DOA(RAM_reg_448_511_3_5_n_0),
        .DOB(RAM_reg_448_511_3_5_n_1),
        .DOC(RAM_reg_448_511_3_5_n_2),
        .DOD(NLW_RAM_reg_448_511_3_5_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[8] ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_448_511_6_8
       (.ADDRA(\gc0.count_d1_reg[5]_rep__4 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__4 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__4 ),
        .ADDRD(\gic0.gc0.count_d2_reg[5]_rep__0 ),
        .DIA(din[6]),
        .DIB(din[7]),
        .DIC(din[8]),
        .DID(1'b0),
        .DOA(RAM_reg_448_511_6_8_n_0),
        .DOB(RAM_reg_448_511_6_8_n_1),
        .DOC(RAM_reg_448_511_6_8_n_2),
        .DOD(NLW_RAM_reg_448_511_6_8_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[8] ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_448_511_9_11
       (.ADDRA(\gc0.count_d1_reg[5]_rep__6 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__6 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__6 ),
        .ADDRD(\gic0.gc0.count_d2_reg[5]_rep__1 ),
        .DIA(din[9]),
        .DIB(din[10]),
        .DIC(din[11]),
        .DID(1'b0),
        .DOA(RAM_reg_448_511_9_11_n_0),
        .DOB(RAM_reg_448_511_9_11_n_1),
        .DOC(RAM_reg_448_511_9_11_n_2),
        .DOD(NLW_RAM_reg_448_511_9_11_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[8] ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_512_575_0_2
       (.ADDRA(\gc0.count_d1_reg[5]_rep__0 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__0 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__0 ),
        .ADDRD(Q),
        .DIA(din[0]),
        .DIB(din[1]),
        .DIC(din[2]),
        .DID(1'b0),
        .DOA(RAM_reg_512_575_0_2_n_0),
        .DOB(RAM_reg_512_575_0_2_n_1),
        .DOC(RAM_reg_512_575_0_2_n_2),
        .DOD(NLW_RAM_reg_512_575_0_2_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[8]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_512_575_12_14
       (.ADDRA(\gc0.count_d1_reg[5]_rep__8 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__8 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__8 ),
        .ADDRD(\gic0.gc0.count_d2_reg[5]_rep__2 ),
        .DIA(din[12]),
        .DIB(din[13]),
        .DIC(din[14]),
        .DID(1'b0),
        .DOA(RAM_reg_512_575_12_14_n_0),
        .DOB(RAM_reg_512_575_12_14_n_1),
        .DOC(RAM_reg_512_575_12_14_n_2),
        .DOD(NLW_RAM_reg_512_575_12_14_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[8]_0 ));
  RAM64X1D RAM_reg_512_575_15_15
       (.A0(\gic0.gc0.count_d2_reg[0]_rep__3 ),
        .A1(\gic0.gc0.count_d2_reg[1]_rep__3 ),
        .A2(\gic0.gc0.count_d2_reg[2]_rep__3 ),
        .A3(\gic0.gc0.count_d2_reg[3]_rep__3 ),
        .A4(\gic0.gc0.count_d2_reg[4]_rep__3 ),
        .A5(\gic0.gc0.count_d2_reg[5]_rep__3 ),
        .D(din[15]),
        .DPO(RAM_reg_512_575_15_15_n_0),
        .DPRA0(\gc0.count_d1_reg[11] [0]),
        .DPRA1(\gc0.count_d1_reg[11] [1]),
        .DPRA2(\gc0.count_d1_reg[11] [2]),
        .DPRA3(\gc0.count_d1_reg[11] [3]),
        .DPRA4(\gc0.count_d1_reg[11] [4]),
        .DPRA5(\gc0.count_d1_reg[11] [5]),
        .SPO(NLW_RAM_reg_512_575_15_15_SPO_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[8]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_512_575_3_5
       (.ADDRA(\gc0.count_d1_reg[5]_rep__2 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__2 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__2 ),
        .ADDRD(ADDRD),
        .DIA(din[3]),
        .DIB(din[4]),
        .DIC(din[5]),
        .DID(1'b0),
        .DOA(RAM_reg_512_575_3_5_n_0),
        .DOB(RAM_reg_512_575_3_5_n_1),
        .DOC(RAM_reg_512_575_3_5_n_2),
        .DOD(NLW_RAM_reg_512_575_3_5_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[8]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_512_575_6_8
       (.ADDRA(\gc0.count_d1_reg[5]_rep__4 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__4 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__4 ),
        .ADDRD(\gic0.gc0.count_d2_reg[5]_rep__0 ),
        .DIA(din[6]),
        .DIB(din[7]),
        .DIC(din[8]),
        .DID(1'b0),
        .DOA(RAM_reg_512_575_6_8_n_0),
        .DOB(RAM_reg_512_575_6_8_n_1),
        .DOC(RAM_reg_512_575_6_8_n_2),
        .DOD(NLW_RAM_reg_512_575_6_8_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[8]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_512_575_9_11
       (.ADDRA(\gc0.count_d1_reg[5]_rep__6 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__6 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__6 ),
        .ADDRD(\gic0.gc0.count_d2_reg[5]_rep__1 ),
        .DIA(din[9]),
        .DIB(din[10]),
        .DIC(din[11]),
        .DID(1'b0),
        .DOA(RAM_reg_512_575_9_11_n_0),
        .DOB(RAM_reg_512_575_9_11_n_1),
        .DOC(RAM_reg_512_575_9_11_n_2),
        .DOD(NLW_RAM_reg_512_575_9_11_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[8]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_576_639_0_2
       (.ADDRA(\gc0.count_d1_reg[5]_rep__0 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__0 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__0 ),
        .ADDRD(Q),
        .DIA(din[0]),
        .DIB(din[1]),
        .DIC(din[2]),
        .DID(1'b0),
        .DOA(RAM_reg_576_639_0_2_n_0),
        .DOB(RAM_reg_576_639_0_2_n_1),
        .DOC(RAM_reg_576_639_0_2_n_2),
        .DOD(NLW_RAM_reg_576_639_0_2_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[6]_1 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_576_639_12_14
       (.ADDRA(\gc0.count_d1_reg[5]_rep__8 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__8 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__8 ),
        .ADDRD(\gic0.gc0.count_d2_reg[5]_rep__2 ),
        .DIA(din[12]),
        .DIB(din[13]),
        .DIC(din[14]),
        .DID(1'b0),
        .DOA(RAM_reg_576_639_12_14_n_0),
        .DOB(RAM_reg_576_639_12_14_n_1),
        .DOC(RAM_reg_576_639_12_14_n_2),
        .DOD(NLW_RAM_reg_576_639_12_14_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[6]_1 ));
  RAM64X1D RAM_reg_576_639_15_15
       (.A0(\gic0.gc0.count_d2_reg[0]_rep__3 ),
        .A1(\gic0.gc0.count_d2_reg[1]_rep__3 ),
        .A2(\gic0.gc0.count_d2_reg[2]_rep__3 ),
        .A3(\gic0.gc0.count_d2_reg[3]_rep__3 ),
        .A4(\gic0.gc0.count_d2_reg[4]_rep__3 ),
        .A5(\gic0.gc0.count_d2_reg[5]_rep__3 ),
        .D(din[15]),
        .DPO(RAM_reg_576_639_15_15_n_0),
        .DPRA0(\gc0.count_d1_reg[11] [0]),
        .DPRA1(\gc0.count_d1_reg[11] [1]),
        .DPRA2(\gc0.count_d1_reg[11] [2]),
        .DPRA3(\gc0.count_d1_reg[11] [3]),
        .DPRA4(\gc0.count_d1_reg[11] [4]),
        .DPRA5(\gc0.count_d1_reg[11] [5]),
        .SPO(NLW_RAM_reg_576_639_15_15_SPO_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[6]_1 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_576_639_3_5
       (.ADDRA(\gc0.count_d1_reg[5]_rep__2 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__2 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__2 ),
        .ADDRD(ADDRD),
        .DIA(din[3]),
        .DIB(din[4]),
        .DIC(din[5]),
        .DID(1'b0),
        .DOA(RAM_reg_576_639_3_5_n_0),
        .DOB(RAM_reg_576_639_3_5_n_1),
        .DOC(RAM_reg_576_639_3_5_n_2),
        .DOD(NLW_RAM_reg_576_639_3_5_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[6]_1 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_576_639_6_8
       (.ADDRA(\gc0.count_d1_reg[5]_rep__4 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__4 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__4 ),
        .ADDRD(\gic0.gc0.count_d2_reg[5]_rep__0 ),
        .DIA(din[6]),
        .DIB(din[7]),
        .DIC(din[8]),
        .DID(1'b0),
        .DOA(RAM_reg_576_639_6_8_n_0),
        .DOB(RAM_reg_576_639_6_8_n_1),
        .DOC(RAM_reg_576_639_6_8_n_2),
        .DOD(NLW_RAM_reg_576_639_6_8_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[6]_1 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_576_639_9_11
       (.ADDRA(\gc0.count_d1_reg[5]_rep__6 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__6 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__6 ),
        .ADDRD(\gic0.gc0.count_d2_reg[5]_rep__1 ),
        .DIA(din[9]),
        .DIB(din[10]),
        .DIC(din[11]),
        .DID(1'b0),
        .DOA(RAM_reg_576_639_9_11_n_0),
        .DOB(RAM_reg_576_639_9_11_n_1),
        .DOC(RAM_reg_576_639_9_11_n_2),
        .DOD(NLW_RAM_reg_576_639_9_11_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[6]_1 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_640_703_0_2
       (.ADDRA(\gc0.count_d1_reg[5]_rep__0 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__0 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__0 ),
        .ADDRD(Q),
        .DIA(din[0]),
        .DIB(din[1]),
        .DIC(din[2]),
        .DID(1'b0),
        .DOA(RAM_reg_640_703_0_2_n_0),
        .DOB(RAM_reg_640_703_0_2_n_1),
        .DOC(RAM_reg_640_703_0_2_n_2),
        .DOD(NLW_RAM_reg_640_703_0_2_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[8]_1 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_640_703_12_14
       (.ADDRA(\gc0.count_d1_reg[5]_rep__8 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__8 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__8 ),
        .ADDRD(\gic0.gc0.count_d2_reg[5]_rep__2 ),
        .DIA(din[12]),
        .DIB(din[13]),
        .DIC(din[14]),
        .DID(1'b0),
        .DOA(RAM_reg_640_703_12_14_n_0),
        .DOB(RAM_reg_640_703_12_14_n_1),
        .DOC(RAM_reg_640_703_12_14_n_2),
        .DOD(NLW_RAM_reg_640_703_12_14_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[8]_1 ));
  RAM64X1D RAM_reg_640_703_15_15
       (.A0(\gic0.gc0.count_d2_reg[0]_rep__3 ),
        .A1(\gic0.gc0.count_d2_reg[1]_rep__3 ),
        .A2(\gic0.gc0.count_d2_reg[2]_rep__3 ),
        .A3(\gic0.gc0.count_d2_reg[3]_rep__3 ),
        .A4(\gic0.gc0.count_d2_reg[4]_rep__3 ),
        .A5(\gic0.gc0.count_d2_reg[5]_rep__3 ),
        .D(din[15]),
        .DPO(RAM_reg_640_703_15_15_n_0),
        .DPRA0(\gc0.count_d1_reg[11] [0]),
        .DPRA1(\gc0.count_d1_reg[11] [1]),
        .DPRA2(\gc0.count_d1_reg[11] [2]),
        .DPRA3(\gc0.count_d1_reg[11] [3]),
        .DPRA4(\gc0.count_d1_reg[11] [4]),
        .DPRA5(\gc0.count_d1_reg[11] [5]),
        .SPO(NLW_RAM_reg_640_703_15_15_SPO_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[8]_1 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_640_703_3_5
       (.ADDRA(\gc0.count_d1_reg[5]_rep__2 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__2 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__2 ),
        .ADDRD(ADDRD),
        .DIA(din[3]),
        .DIB(din[4]),
        .DIC(din[5]),
        .DID(1'b0),
        .DOA(RAM_reg_640_703_3_5_n_0),
        .DOB(RAM_reg_640_703_3_5_n_1),
        .DOC(RAM_reg_640_703_3_5_n_2),
        .DOD(NLW_RAM_reg_640_703_3_5_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[8]_1 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_640_703_6_8
       (.ADDRA(\gc0.count_d1_reg[5]_rep__4 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__4 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__4 ),
        .ADDRD(\gic0.gc0.count_d2_reg[5]_rep__0 ),
        .DIA(din[6]),
        .DIB(din[7]),
        .DIC(din[8]),
        .DID(1'b0),
        .DOA(RAM_reg_640_703_6_8_n_0),
        .DOB(RAM_reg_640_703_6_8_n_1),
        .DOC(RAM_reg_640_703_6_8_n_2),
        .DOD(NLW_RAM_reg_640_703_6_8_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[8]_1 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_640_703_9_11
       (.ADDRA(\gc0.count_d1_reg[5]_rep__6 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__6 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__6 ),
        .ADDRD(\gic0.gc0.count_d2_reg[5]_rep__1 ),
        .DIA(din[9]),
        .DIB(din[10]),
        .DIC(din[11]),
        .DID(1'b0),
        .DOA(RAM_reg_640_703_9_11_n_0),
        .DOB(RAM_reg_640_703_9_11_n_1),
        .DOC(RAM_reg_640_703_9_11_n_2),
        .DOD(NLW_RAM_reg_640_703_9_11_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[8]_1 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_64_127_0_2
       (.ADDRA(\gc0.count_d1_reg[5]_rep__0 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__0 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__0 ),
        .ADDRD(Q),
        .DIA(din[0]),
        .DIB(din[1]),
        .DIC(din[2]),
        .DID(1'b0),
        .DOA(RAM_reg_64_127_0_2_n_0),
        .DOB(RAM_reg_64_127_0_2_n_1),
        .DOC(RAM_reg_64_127_0_2_n_2),
        .DOD(NLW_RAM_reg_64_127_0_2_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[9] ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_64_127_12_14
       (.ADDRA(\gc0.count_d1_reg[5]_rep__8 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__8 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__8 ),
        .ADDRD(\gic0.gc0.count_d2_reg[5]_rep__2 ),
        .DIA(din[12]),
        .DIB(din[13]),
        .DIC(din[14]),
        .DID(1'b0),
        .DOA(RAM_reg_64_127_12_14_n_0),
        .DOB(RAM_reg_64_127_12_14_n_1),
        .DOC(RAM_reg_64_127_12_14_n_2),
        .DOD(NLW_RAM_reg_64_127_12_14_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[9] ));
  RAM64X1D RAM_reg_64_127_15_15
       (.A0(\gic0.gc0.count_d2_reg[0]_rep__3 ),
        .A1(\gic0.gc0.count_d2_reg[1]_rep__3 ),
        .A2(\gic0.gc0.count_d2_reg[2]_rep__3 ),
        .A3(\gic0.gc0.count_d2_reg[3]_rep__3 ),
        .A4(\gic0.gc0.count_d2_reg[4]_rep__3 ),
        .A5(\gic0.gc0.count_d2_reg[5]_rep__3 ),
        .D(din[15]),
        .DPO(RAM_reg_64_127_15_15_n_0),
        .DPRA0(\gc0.count_d1_reg[11] [0]),
        .DPRA1(\gc0.count_d1_reg[11] [1]),
        .DPRA2(\gc0.count_d1_reg[11] [2]),
        .DPRA3(\gc0.count_d1_reg[11] [3]),
        .DPRA4(\gc0.count_d1_reg[11] [4]),
        .DPRA5(\gc0.count_d1_reg[11] [5]),
        .SPO(NLW_RAM_reg_64_127_15_15_SPO_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[9] ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_64_127_3_5
       (.ADDRA(\gc0.count_d1_reg[5]_rep__2 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__2 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__2 ),
        .ADDRD(ADDRD),
        .DIA(din[3]),
        .DIB(din[4]),
        .DIC(din[5]),
        .DID(1'b0),
        .DOA(RAM_reg_64_127_3_5_n_0),
        .DOB(RAM_reg_64_127_3_5_n_1),
        .DOC(RAM_reg_64_127_3_5_n_2),
        .DOD(NLW_RAM_reg_64_127_3_5_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[9] ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_64_127_6_8
       (.ADDRA(\gc0.count_d1_reg[5]_rep__4 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__4 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__4 ),
        .ADDRD(\gic0.gc0.count_d2_reg[5]_rep__0 ),
        .DIA(din[6]),
        .DIB(din[7]),
        .DIC(din[8]),
        .DID(1'b0),
        .DOA(RAM_reg_64_127_6_8_n_0),
        .DOB(RAM_reg_64_127_6_8_n_1),
        .DOC(RAM_reg_64_127_6_8_n_2),
        .DOD(NLW_RAM_reg_64_127_6_8_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[9] ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_64_127_9_11
       (.ADDRA(\gc0.count_d1_reg[5]_rep__6 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__6 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__6 ),
        .ADDRD(\gic0.gc0.count_d2_reg[5]_rep__1 ),
        .DIA(din[9]),
        .DIB(din[10]),
        .DIC(din[11]),
        .DID(1'b0),
        .DOA(RAM_reg_64_127_9_11_n_0),
        .DOB(RAM_reg_64_127_9_11_n_1),
        .DOC(RAM_reg_64_127_9_11_n_2),
        .DOD(NLW_RAM_reg_64_127_9_11_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[9] ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_704_767_0_2
       (.ADDRA(\gc0.count_d1_reg[5]_rep__0 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__0 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__0 ),
        .ADDRD(Q),
        .DIA(din[0]),
        .DIB(din[1]),
        .DIC(din[2]),
        .DID(1'b0),
        .DOA(RAM_reg_704_767_0_2_n_0),
        .DOB(RAM_reg_704_767_0_2_n_1),
        .DOC(RAM_reg_704_767_0_2_n_2),
        .DOD(NLW_RAM_reg_704_767_0_2_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[9]_3 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_704_767_12_14
       (.ADDRA(\gc0.count_d1_reg[5]_rep__8 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__8 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__8 ),
        .ADDRD(\gic0.gc0.count_d2_reg[5]_rep__2 ),
        .DIA(din[12]),
        .DIB(din[13]),
        .DIC(din[14]),
        .DID(1'b0),
        .DOA(RAM_reg_704_767_12_14_n_0),
        .DOB(RAM_reg_704_767_12_14_n_1),
        .DOC(RAM_reg_704_767_12_14_n_2),
        .DOD(NLW_RAM_reg_704_767_12_14_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[9]_3 ));
  RAM64X1D RAM_reg_704_767_15_15
       (.A0(\gic0.gc0.count_d2_reg[0]_rep__3 ),
        .A1(\gic0.gc0.count_d2_reg[1]_rep__3 ),
        .A2(\gic0.gc0.count_d2_reg[2]_rep__3 ),
        .A3(\gic0.gc0.count_d2_reg[3]_rep__3 ),
        .A4(\gic0.gc0.count_d2_reg[4]_rep__3 ),
        .A5(\gic0.gc0.count_d2_reg[5]_rep__3 ),
        .D(din[15]),
        .DPO(RAM_reg_704_767_15_15_n_0),
        .DPRA0(\gc0.count_d1_reg[11] [0]),
        .DPRA1(\gc0.count_d1_reg[11] [1]),
        .DPRA2(\gc0.count_d1_reg[11] [2]),
        .DPRA3(\gc0.count_d1_reg[11] [3]),
        .DPRA4(\gc0.count_d1_reg[11] [4]),
        .DPRA5(\gc0.count_d1_reg[11] [5]),
        .SPO(NLW_RAM_reg_704_767_15_15_SPO_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[9]_3 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_704_767_3_5
       (.ADDRA(\gc0.count_d1_reg[5]_rep__2 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__2 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__2 ),
        .ADDRD(ADDRD),
        .DIA(din[3]),
        .DIB(din[4]),
        .DIC(din[5]),
        .DID(1'b0),
        .DOA(RAM_reg_704_767_3_5_n_0),
        .DOB(RAM_reg_704_767_3_5_n_1),
        .DOC(RAM_reg_704_767_3_5_n_2),
        .DOD(NLW_RAM_reg_704_767_3_5_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[9]_3 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_704_767_6_8
       (.ADDRA(\gc0.count_d1_reg[5]_rep__4 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__4 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__4 ),
        .ADDRD(\gic0.gc0.count_d2_reg[5]_rep__0 ),
        .DIA(din[6]),
        .DIB(din[7]),
        .DIC(din[8]),
        .DID(1'b0),
        .DOA(RAM_reg_704_767_6_8_n_0),
        .DOB(RAM_reg_704_767_6_8_n_1),
        .DOC(RAM_reg_704_767_6_8_n_2),
        .DOD(NLW_RAM_reg_704_767_6_8_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[9]_3 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_704_767_9_11
       (.ADDRA(\gc0.count_d1_reg[5]_rep__6 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__6 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__6 ),
        .ADDRD(\gic0.gc0.count_d2_reg[5]_rep__1 ),
        .DIA(din[9]),
        .DIB(din[10]),
        .DIC(din[11]),
        .DID(1'b0),
        .DOA(RAM_reg_704_767_9_11_n_0),
        .DOB(RAM_reg_704_767_9_11_n_1),
        .DOC(RAM_reg_704_767_9_11_n_2),
        .DOD(NLW_RAM_reg_704_767_9_11_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[9]_3 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_768_831_0_2
       (.ADDRA(\gc0.count_d1_reg[5]_rep__0 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__0 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__0 ),
        .ADDRD(Q),
        .DIA(din[0]),
        .DIB(din[1]),
        .DIC(din[2]),
        .DID(1'b0),
        .DOA(RAM_reg_768_831_0_2_n_0),
        .DOB(RAM_reg_768_831_0_2_n_1),
        .DOC(RAM_reg_768_831_0_2_n_2),
        .DOD(NLW_RAM_reg_768_831_0_2_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[8]_2 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_768_831_12_14
       (.ADDRA(\gc0.count_d1_reg[5]_rep__8 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__8 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__8 ),
        .ADDRD(\gic0.gc0.count_d2_reg[5]_rep__2 ),
        .DIA(din[12]),
        .DIB(din[13]),
        .DIC(din[14]),
        .DID(1'b0),
        .DOA(RAM_reg_768_831_12_14_n_0),
        .DOB(RAM_reg_768_831_12_14_n_1),
        .DOC(RAM_reg_768_831_12_14_n_2),
        .DOD(NLW_RAM_reg_768_831_12_14_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[8]_2 ));
  RAM64X1D RAM_reg_768_831_15_15
       (.A0(\gic0.gc0.count_d2_reg[0]_rep__3 ),
        .A1(\gic0.gc0.count_d2_reg[1]_rep__3 ),
        .A2(\gic0.gc0.count_d2_reg[2]_rep__3 ),
        .A3(\gic0.gc0.count_d2_reg[3]_rep__3 ),
        .A4(\gic0.gc0.count_d2_reg[4]_rep__3 ),
        .A5(\gic0.gc0.count_d2_reg[5]_rep__3 ),
        .D(din[15]),
        .DPO(RAM_reg_768_831_15_15_n_0),
        .DPRA0(\gc0.count_d1_reg[11] [0]),
        .DPRA1(\gc0.count_d1_reg[11] [1]),
        .DPRA2(\gc0.count_d1_reg[11] [2]),
        .DPRA3(\gc0.count_d1_reg[11] [3]),
        .DPRA4(\gc0.count_d1_reg[11] [4]),
        .DPRA5(\gc0.count_d1_reg[11] [5]),
        .SPO(NLW_RAM_reg_768_831_15_15_SPO_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[8]_2 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_768_831_3_5
       (.ADDRA(\gc0.count_d1_reg[5]_rep__2 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__2 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__2 ),
        .ADDRD(ADDRD),
        .DIA(din[3]),
        .DIB(din[4]),
        .DIC(din[5]),
        .DID(1'b0),
        .DOA(RAM_reg_768_831_3_5_n_0),
        .DOB(RAM_reg_768_831_3_5_n_1),
        .DOC(RAM_reg_768_831_3_5_n_2),
        .DOD(NLW_RAM_reg_768_831_3_5_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[8]_2 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_768_831_6_8
       (.ADDRA(\gc0.count_d1_reg[5]_rep__4 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__4 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__4 ),
        .ADDRD(\gic0.gc0.count_d2_reg[5]_rep__0 ),
        .DIA(din[6]),
        .DIB(din[7]),
        .DIC(din[8]),
        .DID(1'b0),
        .DOA(RAM_reg_768_831_6_8_n_0),
        .DOB(RAM_reg_768_831_6_8_n_1),
        .DOC(RAM_reg_768_831_6_8_n_2),
        .DOD(NLW_RAM_reg_768_831_6_8_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[8]_2 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_768_831_9_11
       (.ADDRA(\gc0.count_d1_reg[5]_rep__6 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__6 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__6 ),
        .ADDRD(\gic0.gc0.count_d2_reg[5]_rep__1 ),
        .DIA(din[9]),
        .DIB(din[10]),
        .DIC(din[11]),
        .DID(1'b0),
        .DOA(RAM_reg_768_831_9_11_n_0),
        .DOB(RAM_reg_768_831_9_11_n_1),
        .DOC(RAM_reg_768_831_9_11_n_2),
        .DOD(NLW_RAM_reg_768_831_9_11_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[8]_2 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_832_895_0_2
       (.ADDRA(\gc0.count_d1_reg[5]_rep__0 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__0 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__0 ),
        .ADDRD(Q),
        .DIA(din[0]),
        .DIB(din[1]),
        .DIC(din[2]),
        .DID(1'b0),
        .DOA(RAM_reg_832_895_0_2_n_0),
        .DOB(RAM_reg_832_895_0_2_n_1),
        .DOC(RAM_reg_832_895_0_2_n_2),
        .DOD(NLW_RAM_reg_832_895_0_2_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[7]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_832_895_12_14
       (.ADDRA(\gc0.count_d1_reg[5]_rep__8 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__8 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__8 ),
        .ADDRD(\gic0.gc0.count_d2_reg[5]_rep__2 ),
        .DIA(din[12]),
        .DIB(din[13]),
        .DIC(din[14]),
        .DID(1'b0),
        .DOA(RAM_reg_832_895_12_14_n_0),
        .DOB(RAM_reg_832_895_12_14_n_1),
        .DOC(RAM_reg_832_895_12_14_n_2),
        .DOD(NLW_RAM_reg_832_895_12_14_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[7]_0 ));
  RAM64X1D RAM_reg_832_895_15_15
       (.A0(\gic0.gc0.count_d2_reg[0]_rep__3 ),
        .A1(\gic0.gc0.count_d2_reg[1]_rep__3 ),
        .A2(\gic0.gc0.count_d2_reg[2]_rep__3 ),
        .A3(\gic0.gc0.count_d2_reg[3]_rep__3 ),
        .A4(\gic0.gc0.count_d2_reg[4]_rep__3 ),
        .A5(\gic0.gc0.count_d2_reg[5]_rep__3 ),
        .D(din[15]),
        .DPO(RAM_reg_832_895_15_15_n_0),
        .DPRA0(\gc0.count_d1_reg[11] [0]),
        .DPRA1(\gc0.count_d1_reg[11] [1]),
        .DPRA2(\gc0.count_d1_reg[11] [2]),
        .DPRA3(\gc0.count_d1_reg[11] [3]),
        .DPRA4(\gc0.count_d1_reg[11] [4]),
        .DPRA5(\gc0.count_d1_reg[11] [5]),
        .SPO(NLW_RAM_reg_832_895_15_15_SPO_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[7]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_832_895_3_5
       (.ADDRA(\gc0.count_d1_reg[5]_rep__2 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__2 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__2 ),
        .ADDRD(ADDRD),
        .DIA(din[3]),
        .DIB(din[4]),
        .DIC(din[5]),
        .DID(1'b0),
        .DOA(RAM_reg_832_895_3_5_n_0),
        .DOB(RAM_reg_832_895_3_5_n_1),
        .DOC(RAM_reg_832_895_3_5_n_2),
        .DOD(NLW_RAM_reg_832_895_3_5_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[7]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_832_895_6_8
       (.ADDRA(\gc0.count_d1_reg[5]_rep__4 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__4 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__4 ),
        .ADDRD(\gic0.gc0.count_d2_reg[5]_rep__0 ),
        .DIA(din[6]),
        .DIB(din[7]),
        .DIC(din[8]),
        .DID(1'b0),
        .DOA(RAM_reg_832_895_6_8_n_0),
        .DOB(RAM_reg_832_895_6_8_n_1),
        .DOC(RAM_reg_832_895_6_8_n_2),
        .DOD(NLW_RAM_reg_832_895_6_8_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[7]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_832_895_9_11
       (.ADDRA(\gc0.count_d1_reg[5]_rep__6 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__6 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__6 ),
        .ADDRD(\gic0.gc0.count_d2_reg[5]_rep__1 ),
        .DIA(din[9]),
        .DIB(din[10]),
        .DIC(din[11]),
        .DID(1'b0),
        .DOA(RAM_reg_832_895_9_11_n_0),
        .DOB(RAM_reg_832_895_9_11_n_1),
        .DOC(RAM_reg_832_895_9_11_n_2),
        .DOD(NLW_RAM_reg_832_895_9_11_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[7]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_896_959_0_2
       (.ADDRA(\gc0.count_d1_reg[5]_rep__0 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__0 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__0 ),
        .ADDRD(Q),
        .DIA(din[0]),
        .DIB(din[1]),
        .DIC(din[2]),
        .DID(1'b0),
        .DOA(RAM_reg_896_959_0_2_n_0),
        .DOB(RAM_reg_896_959_0_2_n_1),
        .DOC(RAM_reg_896_959_0_2_n_2),
        .DOD(NLW_RAM_reg_896_959_0_2_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[6]_2 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_896_959_12_14
       (.ADDRA(\gc0.count_d1_reg[5]_rep__8 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__8 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__8 ),
        .ADDRD(\gic0.gc0.count_d2_reg[5]_rep__2 ),
        .DIA(din[12]),
        .DIB(din[13]),
        .DIC(din[14]),
        .DID(1'b0),
        .DOA(RAM_reg_896_959_12_14_n_0),
        .DOB(RAM_reg_896_959_12_14_n_1),
        .DOC(RAM_reg_896_959_12_14_n_2),
        .DOD(NLW_RAM_reg_896_959_12_14_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[6]_2 ));
  RAM64X1D RAM_reg_896_959_15_15
       (.A0(\gic0.gc0.count_d2_reg[0]_rep__3 ),
        .A1(\gic0.gc0.count_d2_reg[1]_rep__3 ),
        .A2(\gic0.gc0.count_d2_reg[2]_rep__3 ),
        .A3(\gic0.gc0.count_d2_reg[3]_rep__3 ),
        .A4(\gic0.gc0.count_d2_reg[4]_rep__3 ),
        .A5(\gic0.gc0.count_d2_reg[5]_rep__3 ),
        .D(din[15]),
        .DPO(RAM_reg_896_959_15_15_n_0),
        .DPRA0(\gc0.count_d1_reg[11] [0]),
        .DPRA1(\gc0.count_d1_reg[11] [1]),
        .DPRA2(\gc0.count_d1_reg[11] [2]),
        .DPRA3(\gc0.count_d1_reg[11] [3]),
        .DPRA4(\gc0.count_d1_reg[11] [4]),
        .DPRA5(\gc0.count_d1_reg[11] [5]),
        .SPO(NLW_RAM_reg_896_959_15_15_SPO_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[6]_2 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_896_959_3_5
       (.ADDRA(\gc0.count_d1_reg[5]_rep__2 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__2 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__2 ),
        .ADDRD(ADDRD),
        .DIA(din[3]),
        .DIB(din[4]),
        .DIC(din[5]),
        .DID(1'b0),
        .DOA(RAM_reg_896_959_3_5_n_0),
        .DOB(RAM_reg_896_959_3_5_n_1),
        .DOC(RAM_reg_896_959_3_5_n_2),
        .DOD(NLW_RAM_reg_896_959_3_5_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[6]_2 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_896_959_6_8
       (.ADDRA(\gc0.count_d1_reg[5]_rep__4 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__4 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__4 ),
        .ADDRD(\gic0.gc0.count_d2_reg[5]_rep__0 ),
        .DIA(din[6]),
        .DIB(din[7]),
        .DIC(din[8]),
        .DID(1'b0),
        .DOA(RAM_reg_896_959_6_8_n_0),
        .DOB(RAM_reg_896_959_6_8_n_1),
        .DOC(RAM_reg_896_959_6_8_n_2),
        .DOD(NLW_RAM_reg_896_959_6_8_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[6]_2 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_896_959_9_11
       (.ADDRA(\gc0.count_d1_reg[5]_rep__6 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__6 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__6 ),
        .ADDRD(\gic0.gc0.count_d2_reg[5]_rep__1 ),
        .DIA(din[9]),
        .DIB(din[10]),
        .DIC(din[11]),
        .DID(1'b0),
        .DOA(RAM_reg_896_959_9_11_n_0),
        .DOB(RAM_reg_896_959_9_11_n_1),
        .DOC(RAM_reg_896_959_9_11_n_2),
        .DOD(NLW_RAM_reg_896_959_9_11_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[6]_2 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_960_1023_0_2
       (.ADDRA(\gc0.count_d1_reg[5]_rep__0 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__0 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__0 ),
        .ADDRD(Q),
        .DIA(din[0]),
        .DIB(din[1]),
        .DIC(din[2]),
        .DID(1'b0),
        .DOA(RAM_reg_960_1023_0_2_n_0),
        .DOB(RAM_reg_960_1023_0_2_n_1),
        .DOC(RAM_reg_960_1023_0_2_n_2),
        .DOD(NLW_RAM_reg_960_1023_0_2_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[8]_3 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_960_1023_12_14
       (.ADDRA(\gc0.count_d1_reg[5]_rep__8 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__8 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__8 ),
        .ADDRD(\gic0.gc0.count_d2_reg[5]_rep__2 ),
        .DIA(din[12]),
        .DIB(din[13]),
        .DIC(din[14]),
        .DID(1'b0),
        .DOA(RAM_reg_960_1023_12_14_n_0),
        .DOB(RAM_reg_960_1023_12_14_n_1),
        .DOC(RAM_reg_960_1023_12_14_n_2),
        .DOD(NLW_RAM_reg_960_1023_12_14_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[8]_3 ));
  RAM64X1D RAM_reg_960_1023_15_15
       (.A0(\gic0.gc0.count_d2_reg[0]_rep__3 ),
        .A1(\gic0.gc0.count_d2_reg[1]_rep__3 ),
        .A2(\gic0.gc0.count_d2_reg[2]_rep__3 ),
        .A3(\gic0.gc0.count_d2_reg[3]_rep__3 ),
        .A4(\gic0.gc0.count_d2_reg[4]_rep__3 ),
        .A5(\gic0.gc0.count_d2_reg[5]_rep__3 ),
        .D(din[15]),
        .DPO(RAM_reg_960_1023_15_15_n_0),
        .DPRA0(\gc0.count_d1_reg[11] [0]),
        .DPRA1(\gc0.count_d1_reg[11] [1]),
        .DPRA2(\gc0.count_d1_reg[11] [2]),
        .DPRA3(\gc0.count_d1_reg[11] [3]),
        .DPRA4(\gc0.count_d1_reg[11] [4]),
        .DPRA5(\gc0.count_d1_reg[11] [5]),
        .SPO(NLW_RAM_reg_960_1023_15_15_SPO_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[8]_3 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_960_1023_3_5
       (.ADDRA(\gc0.count_d1_reg[5]_rep__2 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__2 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__2 ),
        .ADDRD(ADDRD),
        .DIA(din[3]),
        .DIB(din[4]),
        .DIC(din[5]),
        .DID(1'b0),
        .DOA(RAM_reg_960_1023_3_5_n_0),
        .DOB(RAM_reg_960_1023_3_5_n_1),
        .DOC(RAM_reg_960_1023_3_5_n_2),
        .DOD(NLW_RAM_reg_960_1023_3_5_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[8]_3 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_960_1023_6_8
       (.ADDRA(\gc0.count_d1_reg[5]_rep__4 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__4 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__4 ),
        .ADDRD(\gic0.gc0.count_d2_reg[5]_rep__0 ),
        .DIA(din[6]),
        .DIB(din[7]),
        .DIC(din[8]),
        .DID(1'b0),
        .DOA(RAM_reg_960_1023_6_8_n_0),
        .DOB(RAM_reg_960_1023_6_8_n_1),
        .DOC(RAM_reg_960_1023_6_8_n_2),
        .DOD(NLW_RAM_reg_960_1023_6_8_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[8]_3 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M RAM_reg_960_1023_9_11
       (.ADDRA(\gc0.count_d1_reg[5]_rep__6 ),
        .ADDRB(\gc0.count_d1_reg[5]_rep__6 ),
        .ADDRC(\gc0.count_d1_reg[5]_rep__6 ),
        .ADDRD(\gic0.gc0.count_d2_reg[5]_rep__1 ),
        .DIA(din[9]),
        .DIB(din[10]),
        .DIC(din[11]),
        .DID(1'b0),
        .DOA(RAM_reg_960_1023_9_11_n_0),
        .DOB(RAM_reg_960_1023_9_11_n_1),
        .DOC(RAM_reg_960_1023_9_11_n_2),
        .DOD(NLW_RAM_reg_960_1023_9_11_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gic0.gc0.count_d2_reg[8]_3 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[0]_i_1 
       (.I0(\gpr1.dout_i_reg[0]_i_2_n_0 ),
        .I1(\gpr1.dout_i_reg[0]_i_3_n_0 ),
        .I2(\gc0.count_d1_reg[11] [11]),
        .I3(\gpr1.dout_i_reg[0]_i_4_n_0 ),
        .I4(\gc0.count_d1_reg[11] [10]),
        .I5(\gpr1.dout_i_reg[0]_i_5_n_0 ),
        .O(p_0_out[0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[0]_i_14 
       (.I0(RAM_reg_3264_3327_0_2_n_0),
        .I1(RAM_reg_3200_3263_0_2_n_0),
        .I2(\gc0.count_d1_reg[11] [7]),
        .I3(RAM_reg_3136_3199_0_2_n_0),
        .I4(\gc0.count_d1_reg[11] [6]),
        .I5(RAM_reg_3072_3135_0_2_n_0),
        .O(\gpr1.dout_i[0]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[0]_i_15 
       (.I0(RAM_reg_3520_3583_0_2_n_0),
        .I1(RAM_reg_3456_3519_0_2_n_0),
        .I2(\gc0.count_d1_reg[11] [7]),
        .I3(RAM_reg_3392_3455_0_2_n_0),
        .I4(\gc0.count_d1_reg[11] [6]),
        .I5(RAM_reg_3328_3391_0_2_n_0),
        .O(\gpr1.dout_i[0]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[0]_i_16 
       (.I0(RAM_reg_3776_3839_0_2_n_0),
        .I1(RAM_reg_3712_3775_0_2_n_0),
        .I2(\gc0.count_d1_reg[11] [7]),
        .I3(RAM_reg_3648_3711_0_2_n_0),
        .I4(\gc0.count_d1_reg[11] [6]),
        .I5(RAM_reg_3584_3647_0_2_n_0),
        .O(\gpr1.dout_i[0]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[0]_i_17 
       (.I0(RAM_reg_4032_4095_0_2_n_0),
        .I1(RAM_reg_3968_4031_0_2_n_0),
        .I2(\gc0.count_d1_reg[11] [7]),
        .I3(RAM_reg_3904_3967_0_2_n_0),
        .I4(\gc0.count_d1_reg[11] [6]),
        .I5(RAM_reg_3840_3903_0_2_n_0),
        .O(\gpr1.dout_i[0]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[0]_i_18 
       (.I0(RAM_reg_2240_2303_0_2_n_0),
        .I1(RAM_reg_2176_2239_0_2_n_0),
        .I2(\gc0.count_d1_reg[11] [7]),
        .I3(RAM_reg_2112_2175_0_2_n_0),
        .I4(\gc0.count_d1_reg[11] [6]),
        .I5(RAM_reg_2048_2111_0_2_n_0),
        .O(\gpr1.dout_i[0]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[0]_i_19 
       (.I0(RAM_reg_2496_2559_0_2_n_0),
        .I1(RAM_reg_2432_2495_0_2_n_0),
        .I2(\gc0.count_d1_reg[11] [7]),
        .I3(RAM_reg_2368_2431_0_2_n_0),
        .I4(\gc0.count_d1_reg[11] [6]),
        .I5(RAM_reg_2304_2367_0_2_n_0),
        .O(\gpr1.dout_i[0]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[0]_i_20 
       (.I0(RAM_reg_2752_2815_0_2_n_0),
        .I1(RAM_reg_2688_2751_0_2_n_0),
        .I2(\gc0.count_d1_reg[11] [7]),
        .I3(RAM_reg_2624_2687_0_2_n_0),
        .I4(\gc0.count_d1_reg[11] [6]),
        .I5(RAM_reg_2560_2623_0_2_n_0),
        .O(\gpr1.dout_i[0]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[0]_i_21 
       (.I0(RAM_reg_3008_3071_0_2_n_0),
        .I1(RAM_reg_2944_3007_0_2_n_0),
        .I2(\gc0.count_d1_reg[11] [7]),
        .I3(RAM_reg_2880_2943_0_2_n_0),
        .I4(\gc0.count_d1_reg[11] [6]),
        .I5(RAM_reg_2816_2879_0_2_n_0),
        .O(\gpr1.dout_i[0]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[0]_i_22 
       (.I0(RAM_reg_1216_1279_0_2_n_0),
        .I1(RAM_reg_1152_1215_0_2_n_0),
        .I2(\gc0.count_d1_reg[11] [7]),
        .I3(RAM_reg_1088_1151_0_2_n_0),
        .I4(\gc0.count_d1_reg[11] [6]),
        .I5(RAM_reg_1024_1087_0_2_n_0),
        .O(\gpr1.dout_i[0]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[0]_i_23 
       (.I0(RAM_reg_1472_1535_0_2_n_0),
        .I1(RAM_reg_1408_1471_0_2_n_0),
        .I2(\gc0.count_d1_reg[11] [7]),
        .I3(RAM_reg_1344_1407_0_2_n_0),
        .I4(\gc0.count_d1_reg[11] [6]),
        .I5(RAM_reg_1280_1343_0_2_n_0),
        .O(\gpr1.dout_i[0]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[0]_i_24 
       (.I0(RAM_reg_1728_1791_0_2_n_0),
        .I1(RAM_reg_1664_1727_0_2_n_0),
        .I2(\gc0.count_d1_reg[11] [7]),
        .I3(RAM_reg_1600_1663_0_2_n_0),
        .I4(\gc0.count_d1_reg[11] [6]),
        .I5(RAM_reg_1536_1599_0_2_n_0),
        .O(\gpr1.dout_i[0]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[0]_i_25 
       (.I0(RAM_reg_1984_2047_0_2_n_0),
        .I1(RAM_reg_1920_1983_0_2_n_0),
        .I2(\gc0.count_d1_reg[11] [7]),
        .I3(RAM_reg_1856_1919_0_2_n_0),
        .I4(\gc0.count_d1_reg[11] [6]),
        .I5(RAM_reg_1792_1855_0_2_n_0),
        .O(\gpr1.dout_i[0]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[0]_i_26 
       (.I0(RAM_reg_192_255_0_2_n_0),
        .I1(RAM_reg_128_191_0_2_n_0),
        .I2(\gc0.count_d1_reg[11] [7]),
        .I3(RAM_reg_64_127_0_2_n_0),
        .I4(\gc0.count_d1_reg[11] [6]),
        .I5(RAM_reg_0_63_0_2_n_0),
        .O(\gpr1.dout_i[0]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[0]_i_27 
       (.I0(RAM_reg_448_511_0_2_n_0),
        .I1(RAM_reg_384_447_0_2_n_0),
        .I2(\gc0.count_d1_reg[11] [7]),
        .I3(RAM_reg_320_383_0_2_n_0),
        .I4(\gc0.count_d1_reg[11] [6]),
        .I5(RAM_reg_256_319_0_2_n_0),
        .O(\gpr1.dout_i[0]_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[0]_i_28 
       (.I0(RAM_reg_704_767_0_2_n_0),
        .I1(RAM_reg_640_703_0_2_n_0),
        .I2(\gc0.count_d1_reg[11] [7]),
        .I3(RAM_reg_576_639_0_2_n_0),
        .I4(\gc0.count_d1_reg[11] [6]),
        .I5(RAM_reg_512_575_0_2_n_0),
        .O(\gpr1.dout_i[0]_i_28_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[0]_i_29 
       (.I0(RAM_reg_960_1023_0_2_n_0),
        .I1(RAM_reg_896_959_0_2_n_0),
        .I2(\gc0.count_d1_reg[11] [7]),
        .I3(RAM_reg_832_895_0_2_n_0),
        .I4(\gc0.count_d1_reg[11] [6]),
        .I5(RAM_reg_768_831_0_2_n_0),
        .O(\gpr1.dout_i[0]_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[10]_i_1 
       (.I0(\gpr1.dout_i_reg[10]_i_2_n_0 ),
        .I1(\gpr1.dout_i_reg[10]_i_3_n_0 ),
        .I2(\gc0.count_d1_reg[11] [11]),
        .I3(\gpr1.dout_i_reg[10]_i_4_n_0 ),
        .I4(\gc0.count_d1_reg[11] [10]),
        .I5(\gpr1.dout_i_reg[10]_i_5_n_0 ),
        .O(p_0_out[10]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[10]_i_14 
       (.I0(RAM_reg_3264_3327_9_11_n_1),
        .I1(RAM_reg_3200_3263_9_11_n_1),
        .I2(\gc0.count_d1_reg[7]_rep ),
        .I3(RAM_reg_3136_3199_9_11_n_1),
        .I4(\gc0.count_d1_reg[6]_rep ),
        .I5(RAM_reg_3072_3135_9_11_n_1),
        .O(\gpr1.dout_i[10]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[10]_i_15 
       (.I0(RAM_reg_3520_3583_9_11_n_1),
        .I1(RAM_reg_3456_3519_9_11_n_1),
        .I2(\gc0.count_d1_reg[7]_rep ),
        .I3(RAM_reg_3392_3455_9_11_n_1),
        .I4(\gc0.count_d1_reg[6]_rep ),
        .I5(RAM_reg_3328_3391_9_11_n_1),
        .O(\gpr1.dout_i[10]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[10]_i_16 
       (.I0(RAM_reg_3776_3839_9_11_n_1),
        .I1(RAM_reg_3712_3775_9_11_n_1),
        .I2(\gc0.count_d1_reg[7]_rep ),
        .I3(RAM_reg_3648_3711_9_11_n_1),
        .I4(\gc0.count_d1_reg[6]_rep ),
        .I5(RAM_reg_3584_3647_9_11_n_1),
        .O(\gpr1.dout_i[10]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[10]_i_17 
       (.I0(RAM_reg_4032_4095_9_11_n_1),
        .I1(RAM_reg_3968_4031_9_11_n_1),
        .I2(\gc0.count_d1_reg[7]_rep ),
        .I3(RAM_reg_3904_3967_9_11_n_1),
        .I4(\gc0.count_d1_reg[6]_rep ),
        .I5(RAM_reg_3840_3903_9_11_n_1),
        .O(\gpr1.dout_i[10]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[10]_i_18 
       (.I0(RAM_reg_2240_2303_9_11_n_1),
        .I1(RAM_reg_2176_2239_9_11_n_1),
        .I2(\gc0.count_d1_reg[7]_rep ),
        .I3(RAM_reg_2112_2175_9_11_n_1),
        .I4(\gc0.count_d1_reg[6]_rep ),
        .I5(RAM_reg_2048_2111_9_11_n_1),
        .O(\gpr1.dout_i[10]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[10]_i_19 
       (.I0(RAM_reg_2496_2559_9_11_n_1),
        .I1(RAM_reg_2432_2495_9_11_n_1),
        .I2(\gc0.count_d1_reg[7]_rep ),
        .I3(RAM_reg_2368_2431_9_11_n_1),
        .I4(\gc0.count_d1_reg[6]_rep ),
        .I5(RAM_reg_2304_2367_9_11_n_1),
        .O(\gpr1.dout_i[10]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[10]_i_20 
       (.I0(RAM_reg_2752_2815_9_11_n_1),
        .I1(RAM_reg_2688_2751_9_11_n_1),
        .I2(\gc0.count_d1_reg[7]_rep ),
        .I3(RAM_reg_2624_2687_9_11_n_1),
        .I4(\gc0.count_d1_reg[6]_rep ),
        .I5(RAM_reg_2560_2623_9_11_n_1),
        .O(\gpr1.dout_i[10]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[10]_i_21 
       (.I0(RAM_reg_3008_3071_9_11_n_1),
        .I1(RAM_reg_2944_3007_9_11_n_1),
        .I2(\gc0.count_d1_reg[7]_rep ),
        .I3(RAM_reg_2880_2943_9_11_n_1),
        .I4(\gc0.count_d1_reg[6]_rep ),
        .I5(RAM_reg_2816_2879_9_11_n_1),
        .O(\gpr1.dout_i[10]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[10]_i_22 
       (.I0(RAM_reg_1216_1279_9_11_n_1),
        .I1(RAM_reg_1152_1215_9_11_n_1),
        .I2(\gc0.count_d1_reg[7]_rep ),
        .I3(RAM_reg_1088_1151_9_11_n_1),
        .I4(\gc0.count_d1_reg[6]_rep ),
        .I5(RAM_reg_1024_1087_9_11_n_1),
        .O(\gpr1.dout_i[10]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[10]_i_23 
       (.I0(RAM_reg_1472_1535_9_11_n_1),
        .I1(RAM_reg_1408_1471_9_11_n_1),
        .I2(\gc0.count_d1_reg[7]_rep ),
        .I3(RAM_reg_1344_1407_9_11_n_1),
        .I4(\gc0.count_d1_reg[6]_rep ),
        .I5(RAM_reg_1280_1343_9_11_n_1),
        .O(\gpr1.dout_i[10]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[10]_i_24 
       (.I0(RAM_reg_1728_1791_9_11_n_1),
        .I1(RAM_reg_1664_1727_9_11_n_1),
        .I2(\gc0.count_d1_reg[7]_rep ),
        .I3(RAM_reg_1600_1663_9_11_n_1),
        .I4(\gc0.count_d1_reg[6]_rep ),
        .I5(RAM_reg_1536_1599_9_11_n_1),
        .O(\gpr1.dout_i[10]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[10]_i_25 
       (.I0(RAM_reg_1984_2047_9_11_n_1),
        .I1(RAM_reg_1920_1983_9_11_n_1),
        .I2(\gc0.count_d1_reg[7]_rep ),
        .I3(RAM_reg_1856_1919_9_11_n_1),
        .I4(\gc0.count_d1_reg[6]_rep ),
        .I5(RAM_reg_1792_1855_9_11_n_1),
        .O(\gpr1.dout_i[10]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[10]_i_26 
       (.I0(RAM_reg_192_255_9_11_n_1),
        .I1(RAM_reg_128_191_9_11_n_1),
        .I2(\gc0.count_d1_reg[7]_rep ),
        .I3(RAM_reg_64_127_9_11_n_1),
        .I4(\gc0.count_d1_reg[6]_rep ),
        .I5(RAM_reg_0_63_9_11_n_1),
        .O(\gpr1.dout_i[10]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[10]_i_27 
       (.I0(RAM_reg_448_511_9_11_n_1),
        .I1(RAM_reg_384_447_9_11_n_1),
        .I2(\gc0.count_d1_reg[7]_rep ),
        .I3(RAM_reg_320_383_9_11_n_1),
        .I4(\gc0.count_d1_reg[6]_rep ),
        .I5(RAM_reg_256_319_9_11_n_1),
        .O(\gpr1.dout_i[10]_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[10]_i_28 
       (.I0(RAM_reg_704_767_9_11_n_1),
        .I1(RAM_reg_640_703_9_11_n_1),
        .I2(\gc0.count_d1_reg[7]_rep ),
        .I3(RAM_reg_576_639_9_11_n_1),
        .I4(\gc0.count_d1_reg[6]_rep ),
        .I5(RAM_reg_512_575_9_11_n_1),
        .O(\gpr1.dout_i[10]_i_28_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[10]_i_29 
       (.I0(RAM_reg_960_1023_9_11_n_1),
        .I1(RAM_reg_896_959_9_11_n_1),
        .I2(\gc0.count_d1_reg[7]_rep ),
        .I3(RAM_reg_832_895_9_11_n_1),
        .I4(\gc0.count_d1_reg[6]_rep ),
        .I5(RAM_reg_768_831_9_11_n_1),
        .O(\gpr1.dout_i[10]_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[11]_i_1 
       (.I0(\gpr1.dout_i_reg[11]_i_2_n_0 ),
        .I1(\gpr1.dout_i_reg[11]_i_3_n_0 ),
        .I2(\gc0.count_d1_reg[11] [11]),
        .I3(\gpr1.dout_i_reg[11]_i_4_n_0 ),
        .I4(\gc0.count_d1_reg[11] [10]),
        .I5(\gpr1.dout_i_reg[11]_i_5_n_0 ),
        .O(p_0_out[11]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[11]_i_14 
       (.I0(RAM_reg_3264_3327_9_11_n_2),
        .I1(RAM_reg_3200_3263_9_11_n_2),
        .I2(\gc0.count_d1_reg[7]_rep ),
        .I3(RAM_reg_3136_3199_9_11_n_2),
        .I4(\gc0.count_d1_reg[6]_rep ),
        .I5(RAM_reg_3072_3135_9_11_n_2),
        .O(\gpr1.dout_i[11]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[11]_i_15 
       (.I0(RAM_reg_3520_3583_9_11_n_2),
        .I1(RAM_reg_3456_3519_9_11_n_2),
        .I2(\gc0.count_d1_reg[7]_rep ),
        .I3(RAM_reg_3392_3455_9_11_n_2),
        .I4(\gc0.count_d1_reg[6]_rep ),
        .I5(RAM_reg_3328_3391_9_11_n_2),
        .O(\gpr1.dout_i[11]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[11]_i_16 
       (.I0(RAM_reg_3776_3839_9_11_n_2),
        .I1(RAM_reg_3712_3775_9_11_n_2),
        .I2(\gc0.count_d1_reg[7]_rep ),
        .I3(RAM_reg_3648_3711_9_11_n_2),
        .I4(\gc0.count_d1_reg[6]_rep ),
        .I5(RAM_reg_3584_3647_9_11_n_2),
        .O(\gpr1.dout_i[11]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[11]_i_17 
       (.I0(RAM_reg_4032_4095_9_11_n_2),
        .I1(RAM_reg_3968_4031_9_11_n_2),
        .I2(\gc0.count_d1_reg[7]_rep ),
        .I3(RAM_reg_3904_3967_9_11_n_2),
        .I4(\gc0.count_d1_reg[6]_rep ),
        .I5(RAM_reg_3840_3903_9_11_n_2),
        .O(\gpr1.dout_i[11]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[11]_i_18 
       (.I0(RAM_reg_2240_2303_9_11_n_2),
        .I1(RAM_reg_2176_2239_9_11_n_2),
        .I2(\gc0.count_d1_reg[7]_rep ),
        .I3(RAM_reg_2112_2175_9_11_n_2),
        .I4(\gc0.count_d1_reg[6]_rep ),
        .I5(RAM_reg_2048_2111_9_11_n_2),
        .O(\gpr1.dout_i[11]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[11]_i_19 
       (.I0(RAM_reg_2496_2559_9_11_n_2),
        .I1(RAM_reg_2432_2495_9_11_n_2),
        .I2(\gc0.count_d1_reg[7]_rep ),
        .I3(RAM_reg_2368_2431_9_11_n_2),
        .I4(\gc0.count_d1_reg[6]_rep ),
        .I5(RAM_reg_2304_2367_9_11_n_2),
        .O(\gpr1.dout_i[11]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[11]_i_20 
       (.I0(RAM_reg_2752_2815_9_11_n_2),
        .I1(RAM_reg_2688_2751_9_11_n_2),
        .I2(\gc0.count_d1_reg[7]_rep ),
        .I3(RAM_reg_2624_2687_9_11_n_2),
        .I4(\gc0.count_d1_reg[6]_rep ),
        .I5(RAM_reg_2560_2623_9_11_n_2),
        .O(\gpr1.dout_i[11]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[11]_i_21 
       (.I0(RAM_reg_3008_3071_9_11_n_2),
        .I1(RAM_reg_2944_3007_9_11_n_2),
        .I2(\gc0.count_d1_reg[7]_rep ),
        .I3(RAM_reg_2880_2943_9_11_n_2),
        .I4(\gc0.count_d1_reg[6]_rep ),
        .I5(RAM_reg_2816_2879_9_11_n_2),
        .O(\gpr1.dout_i[11]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[11]_i_22 
       (.I0(RAM_reg_1216_1279_9_11_n_2),
        .I1(RAM_reg_1152_1215_9_11_n_2),
        .I2(\gc0.count_d1_reg[7]_rep ),
        .I3(RAM_reg_1088_1151_9_11_n_2),
        .I4(\gc0.count_d1_reg[6]_rep ),
        .I5(RAM_reg_1024_1087_9_11_n_2),
        .O(\gpr1.dout_i[11]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[11]_i_23 
       (.I0(RAM_reg_1472_1535_9_11_n_2),
        .I1(RAM_reg_1408_1471_9_11_n_2),
        .I2(\gc0.count_d1_reg[7]_rep ),
        .I3(RAM_reg_1344_1407_9_11_n_2),
        .I4(\gc0.count_d1_reg[6]_rep ),
        .I5(RAM_reg_1280_1343_9_11_n_2),
        .O(\gpr1.dout_i[11]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[11]_i_24 
       (.I0(RAM_reg_1728_1791_9_11_n_2),
        .I1(RAM_reg_1664_1727_9_11_n_2),
        .I2(\gc0.count_d1_reg[7]_rep ),
        .I3(RAM_reg_1600_1663_9_11_n_2),
        .I4(\gc0.count_d1_reg[6]_rep ),
        .I5(RAM_reg_1536_1599_9_11_n_2),
        .O(\gpr1.dout_i[11]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[11]_i_25 
       (.I0(RAM_reg_1984_2047_9_11_n_2),
        .I1(RAM_reg_1920_1983_9_11_n_2),
        .I2(\gc0.count_d1_reg[7]_rep ),
        .I3(RAM_reg_1856_1919_9_11_n_2),
        .I4(\gc0.count_d1_reg[6]_rep ),
        .I5(RAM_reg_1792_1855_9_11_n_2),
        .O(\gpr1.dout_i[11]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[11]_i_26 
       (.I0(RAM_reg_192_255_9_11_n_2),
        .I1(RAM_reg_128_191_9_11_n_2),
        .I2(\gc0.count_d1_reg[7]_rep ),
        .I3(RAM_reg_64_127_9_11_n_2),
        .I4(\gc0.count_d1_reg[6]_rep ),
        .I5(RAM_reg_0_63_9_11_n_2),
        .O(\gpr1.dout_i[11]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[11]_i_27 
       (.I0(RAM_reg_448_511_9_11_n_2),
        .I1(RAM_reg_384_447_9_11_n_2),
        .I2(\gc0.count_d1_reg[7]_rep ),
        .I3(RAM_reg_320_383_9_11_n_2),
        .I4(\gc0.count_d1_reg[6]_rep ),
        .I5(RAM_reg_256_319_9_11_n_2),
        .O(\gpr1.dout_i[11]_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[11]_i_28 
       (.I0(RAM_reg_704_767_9_11_n_2),
        .I1(RAM_reg_640_703_9_11_n_2),
        .I2(\gc0.count_d1_reg[7]_rep ),
        .I3(RAM_reg_576_639_9_11_n_2),
        .I4(\gc0.count_d1_reg[6]_rep ),
        .I5(RAM_reg_512_575_9_11_n_2),
        .O(\gpr1.dout_i[11]_i_28_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[11]_i_29 
       (.I0(RAM_reg_960_1023_9_11_n_2),
        .I1(RAM_reg_896_959_9_11_n_2),
        .I2(\gc0.count_d1_reg[7]_rep ),
        .I3(RAM_reg_832_895_9_11_n_2),
        .I4(\gc0.count_d1_reg[6]_rep ),
        .I5(RAM_reg_768_831_9_11_n_2),
        .O(\gpr1.dout_i[11]_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[12]_i_1 
       (.I0(\gpr1.dout_i_reg[12]_i_2_n_0 ),
        .I1(\gpr1.dout_i_reg[12]_i_3_n_0 ),
        .I2(\gc0.count_d1_reg[11] [11]),
        .I3(\gpr1.dout_i_reg[12]_i_4_n_0 ),
        .I4(\gc0.count_d1_reg[11] [10]),
        .I5(\gpr1.dout_i_reg[12]_i_5_n_0 ),
        .O(p_0_out[12]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[12]_i_14 
       (.I0(RAM_reg_3264_3327_12_14_n_0),
        .I1(RAM_reg_3200_3263_12_14_n_0),
        .I2(\gc0.count_d1_reg[7]_rep ),
        .I3(RAM_reg_3136_3199_12_14_n_0),
        .I4(\gc0.count_d1_reg[6]_rep ),
        .I5(RAM_reg_3072_3135_12_14_n_0),
        .O(\gpr1.dout_i[12]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[12]_i_15 
       (.I0(RAM_reg_3520_3583_12_14_n_0),
        .I1(RAM_reg_3456_3519_12_14_n_0),
        .I2(\gc0.count_d1_reg[7]_rep ),
        .I3(RAM_reg_3392_3455_12_14_n_0),
        .I4(\gc0.count_d1_reg[6]_rep ),
        .I5(RAM_reg_3328_3391_12_14_n_0),
        .O(\gpr1.dout_i[12]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[12]_i_16 
       (.I0(RAM_reg_3776_3839_12_14_n_0),
        .I1(RAM_reg_3712_3775_12_14_n_0),
        .I2(\gc0.count_d1_reg[7]_rep ),
        .I3(RAM_reg_3648_3711_12_14_n_0),
        .I4(\gc0.count_d1_reg[6]_rep ),
        .I5(RAM_reg_3584_3647_12_14_n_0),
        .O(\gpr1.dout_i[12]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[12]_i_17 
       (.I0(RAM_reg_4032_4095_12_14_n_0),
        .I1(RAM_reg_3968_4031_12_14_n_0),
        .I2(\gc0.count_d1_reg[7]_rep ),
        .I3(RAM_reg_3904_3967_12_14_n_0),
        .I4(\gc0.count_d1_reg[6]_rep ),
        .I5(RAM_reg_3840_3903_12_14_n_0),
        .O(\gpr1.dout_i[12]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[12]_i_18 
       (.I0(RAM_reg_2240_2303_12_14_n_0),
        .I1(RAM_reg_2176_2239_12_14_n_0),
        .I2(\gc0.count_d1_reg[7]_rep ),
        .I3(RAM_reg_2112_2175_12_14_n_0),
        .I4(\gc0.count_d1_reg[6]_rep ),
        .I5(RAM_reg_2048_2111_12_14_n_0),
        .O(\gpr1.dout_i[12]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[12]_i_19 
       (.I0(RAM_reg_2496_2559_12_14_n_0),
        .I1(RAM_reg_2432_2495_12_14_n_0),
        .I2(\gc0.count_d1_reg[7]_rep ),
        .I3(RAM_reg_2368_2431_12_14_n_0),
        .I4(\gc0.count_d1_reg[6]_rep ),
        .I5(RAM_reg_2304_2367_12_14_n_0),
        .O(\gpr1.dout_i[12]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[12]_i_20 
       (.I0(RAM_reg_2752_2815_12_14_n_0),
        .I1(RAM_reg_2688_2751_12_14_n_0),
        .I2(\gc0.count_d1_reg[7]_rep ),
        .I3(RAM_reg_2624_2687_12_14_n_0),
        .I4(\gc0.count_d1_reg[6]_rep ),
        .I5(RAM_reg_2560_2623_12_14_n_0),
        .O(\gpr1.dout_i[12]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[12]_i_21 
       (.I0(RAM_reg_3008_3071_12_14_n_0),
        .I1(RAM_reg_2944_3007_12_14_n_0),
        .I2(\gc0.count_d1_reg[7]_rep ),
        .I3(RAM_reg_2880_2943_12_14_n_0),
        .I4(\gc0.count_d1_reg[6]_rep ),
        .I5(RAM_reg_2816_2879_12_14_n_0),
        .O(\gpr1.dout_i[12]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[12]_i_22 
       (.I0(RAM_reg_1216_1279_12_14_n_0),
        .I1(RAM_reg_1152_1215_12_14_n_0),
        .I2(\gc0.count_d1_reg[7]_rep ),
        .I3(RAM_reg_1088_1151_12_14_n_0),
        .I4(\gc0.count_d1_reg[6]_rep ),
        .I5(RAM_reg_1024_1087_12_14_n_0),
        .O(\gpr1.dout_i[12]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[12]_i_23 
       (.I0(RAM_reg_1472_1535_12_14_n_0),
        .I1(RAM_reg_1408_1471_12_14_n_0),
        .I2(\gc0.count_d1_reg[7]_rep ),
        .I3(RAM_reg_1344_1407_12_14_n_0),
        .I4(\gc0.count_d1_reg[6]_rep ),
        .I5(RAM_reg_1280_1343_12_14_n_0),
        .O(\gpr1.dout_i[12]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[12]_i_24 
       (.I0(RAM_reg_1728_1791_12_14_n_0),
        .I1(RAM_reg_1664_1727_12_14_n_0),
        .I2(\gc0.count_d1_reg[7]_rep ),
        .I3(RAM_reg_1600_1663_12_14_n_0),
        .I4(\gc0.count_d1_reg[6]_rep ),
        .I5(RAM_reg_1536_1599_12_14_n_0),
        .O(\gpr1.dout_i[12]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[12]_i_25 
       (.I0(RAM_reg_1984_2047_12_14_n_0),
        .I1(RAM_reg_1920_1983_12_14_n_0),
        .I2(\gc0.count_d1_reg[7]_rep ),
        .I3(RAM_reg_1856_1919_12_14_n_0),
        .I4(\gc0.count_d1_reg[6]_rep ),
        .I5(RAM_reg_1792_1855_12_14_n_0),
        .O(\gpr1.dout_i[12]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[12]_i_26 
       (.I0(RAM_reg_192_255_12_14_n_0),
        .I1(RAM_reg_128_191_12_14_n_0),
        .I2(\gc0.count_d1_reg[7]_rep ),
        .I3(RAM_reg_64_127_12_14_n_0),
        .I4(\gc0.count_d1_reg[6]_rep ),
        .I5(RAM_reg_0_63_12_14_n_0),
        .O(\gpr1.dout_i[12]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[12]_i_27 
       (.I0(RAM_reg_448_511_12_14_n_0),
        .I1(RAM_reg_384_447_12_14_n_0),
        .I2(\gc0.count_d1_reg[7]_rep ),
        .I3(RAM_reg_320_383_12_14_n_0),
        .I4(\gc0.count_d1_reg[6]_rep ),
        .I5(RAM_reg_256_319_12_14_n_0),
        .O(\gpr1.dout_i[12]_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[12]_i_28 
       (.I0(RAM_reg_704_767_12_14_n_0),
        .I1(RAM_reg_640_703_12_14_n_0),
        .I2(\gc0.count_d1_reg[7]_rep ),
        .I3(RAM_reg_576_639_12_14_n_0),
        .I4(\gc0.count_d1_reg[6]_rep ),
        .I5(RAM_reg_512_575_12_14_n_0),
        .O(\gpr1.dout_i[12]_i_28_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[12]_i_29 
       (.I0(RAM_reg_960_1023_12_14_n_0),
        .I1(RAM_reg_896_959_12_14_n_0),
        .I2(\gc0.count_d1_reg[7]_rep ),
        .I3(RAM_reg_832_895_12_14_n_0),
        .I4(\gc0.count_d1_reg[6]_rep ),
        .I5(RAM_reg_768_831_12_14_n_0),
        .O(\gpr1.dout_i[12]_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[13]_i_1 
       (.I0(\gpr1.dout_i_reg[13]_i_2_n_0 ),
        .I1(\gpr1.dout_i_reg[13]_i_3_n_0 ),
        .I2(\gc0.count_d1_reg[11] [11]),
        .I3(\gpr1.dout_i_reg[13]_i_4_n_0 ),
        .I4(\gc0.count_d1_reg[11] [10]),
        .I5(\gpr1.dout_i_reg[13]_i_5_n_0 ),
        .O(p_0_out[13]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[13]_i_14 
       (.I0(RAM_reg_3264_3327_12_14_n_1),
        .I1(RAM_reg_3200_3263_12_14_n_1),
        .I2(\gc0.count_d1_reg[7]_rep ),
        .I3(RAM_reg_3136_3199_12_14_n_1),
        .I4(\gc0.count_d1_reg[6]_rep ),
        .I5(RAM_reg_3072_3135_12_14_n_1),
        .O(\gpr1.dout_i[13]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[13]_i_15 
       (.I0(RAM_reg_3520_3583_12_14_n_1),
        .I1(RAM_reg_3456_3519_12_14_n_1),
        .I2(\gc0.count_d1_reg[7]_rep ),
        .I3(RAM_reg_3392_3455_12_14_n_1),
        .I4(\gc0.count_d1_reg[6]_rep ),
        .I5(RAM_reg_3328_3391_12_14_n_1),
        .O(\gpr1.dout_i[13]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[13]_i_16 
       (.I0(RAM_reg_3776_3839_12_14_n_1),
        .I1(RAM_reg_3712_3775_12_14_n_1),
        .I2(\gc0.count_d1_reg[7]_rep ),
        .I3(RAM_reg_3648_3711_12_14_n_1),
        .I4(\gc0.count_d1_reg[6]_rep ),
        .I5(RAM_reg_3584_3647_12_14_n_1),
        .O(\gpr1.dout_i[13]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[13]_i_17 
       (.I0(RAM_reg_4032_4095_12_14_n_1),
        .I1(RAM_reg_3968_4031_12_14_n_1),
        .I2(\gc0.count_d1_reg[7]_rep ),
        .I3(RAM_reg_3904_3967_12_14_n_1),
        .I4(\gc0.count_d1_reg[6]_rep ),
        .I5(RAM_reg_3840_3903_12_14_n_1),
        .O(\gpr1.dout_i[13]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[13]_i_18 
       (.I0(RAM_reg_2240_2303_12_14_n_1),
        .I1(RAM_reg_2176_2239_12_14_n_1),
        .I2(\gc0.count_d1_reg[7]_rep ),
        .I3(RAM_reg_2112_2175_12_14_n_1),
        .I4(\gc0.count_d1_reg[6]_rep ),
        .I5(RAM_reg_2048_2111_12_14_n_1),
        .O(\gpr1.dout_i[13]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[13]_i_19 
       (.I0(RAM_reg_2496_2559_12_14_n_1),
        .I1(RAM_reg_2432_2495_12_14_n_1),
        .I2(\gc0.count_d1_reg[7]_rep ),
        .I3(RAM_reg_2368_2431_12_14_n_1),
        .I4(\gc0.count_d1_reg[6]_rep ),
        .I5(RAM_reg_2304_2367_12_14_n_1),
        .O(\gpr1.dout_i[13]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[13]_i_20 
       (.I0(RAM_reg_2752_2815_12_14_n_1),
        .I1(RAM_reg_2688_2751_12_14_n_1),
        .I2(\gc0.count_d1_reg[7]_rep ),
        .I3(RAM_reg_2624_2687_12_14_n_1),
        .I4(\gc0.count_d1_reg[6]_rep ),
        .I5(RAM_reg_2560_2623_12_14_n_1),
        .O(\gpr1.dout_i[13]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[13]_i_21 
       (.I0(RAM_reg_3008_3071_12_14_n_1),
        .I1(RAM_reg_2944_3007_12_14_n_1),
        .I2(\gc0.count_d1_reg[7]_rep ),
        .I3(RAM_reg_2880_2943_12_14_n_1),
        .I4(\gc0.count_d1_reg[6]_rep ),
        .I5(RAM_reg_2816_2879_12_14_n_1),
        .O(\gpr1.dout_i[13]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[13]_i_22 
       (.I0(RAM_reg_1216_1279_12_14_n_1),
        .I1(RAM_reg_1152_1215_12_14_n_1),
        .I2(\gc0.count_d1_reg[7]_rep ),
        .I3(RAM_reg_1088_1151_12_14_n_1),
        .I4(\gc0.count_d1_reg[6]_rep ),
        .I5(RAM_reg_1024_1087_12_14_n_1),
        .O(\gpr1.dout_i[13]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[13]_i_23 
       (.I0(RAM_reg_1472_1535_12_14_n_1),
        .I1(RAM_reg_1408_1471_12_14_n_1),
        .I2(\gc0.count_d1_reg[7]_rep ),
        .I3(RAM_reg_1344_1407_12_14_n_1),
        .I4(\gc0.count_d1_reg[6]_rep ),
        .I5(RAM_reg_1280_1343_12_14_n_1),
        .O(\gpr1.dout_i[13]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[13]_i_24 
       (.I0(RAM_reg_1728_1791_12_14_n_1),
        .I1(RAM_reg_1664_1727_12_14_n_1),
        .I2(\gc0.count_d1_reg[7]_rep ),
        .I3(RAM_reg_1600_1663_12_14_n_1),
        .I4(\gc0.count_d1_reg[6]_rep ),
        .I5(RAM_reg_1536_1599_12_14_n_1),
        .O(\gpr1.dout_i[13]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[13]_i_25 
       (.I0(RAM_reg_1984_2047_12_14_n_1),
        .I1(RAM_reg_1920_1983_12_14_n_1),
        .I2(\gc0.count_d1_reg[7]_rep ),
        .I3(RAM_reg_1856_1919_12_14_n_1),
        .I4(\gc0.count_d1_reg[6]_rep ),
        .I5(RAM_reg_1792_1855_12_14_n_1),
        .O(\gpr1.dout_i[13]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[13]_i_26 
       (.I0(RAM_reg_192_255_12_14_n_1),
        .I1(RAM_reg_128_191_12_14_n_1),
        .I2(\gc0.count_d1_reg[7]_rep ),
        .I3(RAM_reg_64_127_12_14_n_1),
        .I4(\gc0.count_d1_reg[6]_rep ),
        .I5(RAM_reg_0_63_12_14_n_1),
        .O(\gpr1.dout_i[13]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[13]_i_27 
       (.I0(RAM_reg_448_511_12_14_n_1),
        .I1(RAM_reg_384_447_12_14_n_1),
        .I2(\gc0.count_d1_reg[7]_rep ),
        .I3(RAM_reg_320_383_12_14_n_1),
        .I4(\gc0.count_d1_reg[6]_rep ),
        .I5(RAM_reg_256_319_12_14_n_1),
        .O(\gpr1.dout_i[13]_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[13]_i_28 
       (.I0(RAM_reg_704_767_12_14_n_1),
        .I1(RAM_reg_640_703_12_14_n_1),
        .I2(\gc0.count_d1_reg[7]_rep ),
        .I3(RAM_reg_576_639_12_14_n_1),
        .I4(\gc0.count_d1_reg[6]_rep ),
        .I5(RAM_reg_512_575_12_14_n_1),
        .O(\gpr1.dout_i[13]_i_28_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[13]_i_29 
       (.I0(RAM_reg_960_1023_12_14_n_1),
        .I1(RAM_reg_896_959_12_14_n_1),
        .I2(\gc0.count_d1_reg[7]_rep ),
        .I3(RAM_reg_832_895_12_14_n_1),
        .I4(\gc0.count_d1_reg[6]_rep ),
        .I5(RAM_reg_768_831_12_14_n_1),
        .O(\gpr1.dout_i[13]_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[14]_i_1 
       (.I0(\gpr1.dout_i_reg[14]_i_2_n_0 ),
        .I1(\gpr1.dout_i_reg[14]_i_3_n_0 ),
        .I2(\gc0.count_d1_reg[11] [11]),
        .I3(\gpr1.dout_i_reg[14]_i_4_n_0 ),
        .I4(\gc0.count_d1_reg[11] [10]),
        .I5(\gpr1.dout_i_reg[14]_i_5_n_0 ),
        .O(p_0_out[14]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[14]_i_14 
       (.I0(RAM_reg_3264_3327_12_14_n_2),
        .I1(RAM_reg_3200_3263_12_14_n_2),
        .I2(\gc0.count_d1_reg[7]_rep ),
        .I3(RAM_reg_3136_3199_12_14_n_2),
        .I4(\gc0.count_d1_reg[6]_rep ),
        .I5(RAM_reg_3072_3135_12_14_n_2),
        .O(\gpr1.dout_i[14]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[14]_i_15 
       (.I0(RAM_reg_3520_3583_12_14_n_2),
        .I1(RAM_reg_3456_3519_12_14_n_2),
        .I2(\gc0.count_d1_reg[7]_rep ),
        .I3(RAM_reg_3392_3455_12_14_n_2),
        .I4(\gc0.count_d1_reg[6]_rep ),
        .I5(RAM_reg_3328_3391_12_14_n_2),
        .O(\gpr1.dout_i[14]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[14]_i_16 
       (.I0(RAM_reg_3776_3839_12_14_n_2),
        .I1(RAM_reg_3712_3775_12_14_n_2),
        .I2(\gc0.count_d1_reg[7]_rep ),
        .I3(RAM_reg_3648_3711_12_14_n_2),
        .I4(\gc0.count_d1_reg[6]_rep ),
        .I5(RAM_reg_3584_3647_12_14_n_2),
        .O(\gpr1.dout_i[14]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[14]_i_17 
       (.I0(RAM_reg_4032_4095_12_14_n_2),
        .I1(RAM_reg_3968_4031_12_14_n_2),
        .I2(\gc0.count_d1_reg[7]_rep ),
        .I3(RAM_reg_3904_3967_12_14_n_2),
        .I4(\gc0.count_d1_reg[6]_rep ),
        .I5(RAM_reg_3840_3903_12_14_n_2),
        .O(\gpr1.dout_i[14]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[14]_i_18 
       (.I0(RAM_reg_2240_2303_12_14_n_2),
        .I1(RAM_reg_2176_2239_12_14_n_2),
        .I2(\gc0.count_d1_reg[7]_rep ),
        .I3(RAM_reg_2112_2175_12_14_n_2),
        .I4(\gc0.count_d1_reg[6]_rep ),
        .I5(RAM_reg_2048_2111_12_14_n_2),
        .O(\gpr1.dout_i[14]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[14]_i_19 
       (.I0(RAM_reg_2496_2559_12_14_n_2),
        .I1(RAM_reg_2432_2495_12_14_n_2),
        .I2(\gc0.count_d1_reg[7]_rep ),
        .I3(RAM_reg_2368_2431_12_14_n_2),
        .I4(\gc0.count_d1_reg[6]_rep ),
        .I5(RAM_reg_2304_2367_12_14_n_2),
        .O(\gpr1.dout_i[14]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[14]_i_20 
       (.I0(RAM_reg_2752_2815_12_14_n_2),
        .I1(RAM_reg_2688_2751_12_14_n_2),
        .I2(\gc0.count_d1_reg[7]_rep ),
        .I3(RAM_reg_2624_2687_12_14_n_2),
        .I4(\gc0.count_d1_reg[6]_rep ),
        .I5(RAM_reg_2560_2623_12_14_n_2),
        .O(\gpr1.dout_i[14]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[14]_i_21 
       (.I0(RAM_reg_3008_3071_12_14_n_2),
        .I1(RAM_reg_2944_3007_12_14_n_2),
        .I2(\gc0.count_d1_reg[7]_rep ),
        .I3(RAM_reg_2880_2943_12_14_n_2),
        .I4(\gc0.count_d1_reg[6]_rep ),
        .I5(RAM_reg_2816_2879_12_14_n_2),
        .O(\gpr1.dout_i[14]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[14]_i_22 
       (.I0(RAM_reg_1216_1279_12_14_n_2),
        .I1(RAM_reg_1152_1215_12_14_n_2),
        .I2(\gc0.count_d1_reg[7]_rep ),
        .I3(RAM_reg_1088_1151_12_14_n_2),
        .I4(\gc0.count_d1_reg[6]_rep ),
        .I5(RAM_reg_1024_1087_12_14_n_2),
        .O(\gpr1.dout_i[14]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[14]_i_23 
       (.I0(RAM_reg_1472_1535_12_14_n_2),
        .I1(RAM_reg_1408_1471_12_14_n_2),
        .I2(\gc0.count_d1_reg[7]_rep ),
        .I3(RAM_reg_1344_1407_12_14_n_2),
        .I4(\gc0.count_d1_reg[6]_rep ),
        .I5(RAM_reg_1280_1343_12_14_n_2),
        .O(\gpr1.dout_i[14]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[14]_i_24 
       (.I0(RAM_reg_1728_1791_12_14_n_2),
        .I1(RAM_reg_1664_1727_12_14_n_2),
        .I2(\gc0.count_d1_reg[7]_rep ),
        .I3(RAM_reg_1600_1663_12_14_n_2),
        .I4(\gc0.count_d1_reg[6]_rep ),
        .I5(RAM_reg_1536_1599_12_14_n_2),
        .O(\gpr1.dout_i[14]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[14]_i_25 
       (.I0(RAM_reg_1984_2047_12_14_n_2),
        .I1(RAM_reg_1920_1983_12_14_n_2),
        .I2(\gc0.count_d1_reg[7]_rep ),
        .I3(RAM_reg_1856_1919_12_14_n_2),
        .I4(\gc0.count_d1_reg[6]_rep ),
        .I5(RAM_reg_1792_1855_12_14_n_2),
        .O(\gpr1.dout_i[14]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[14]_i_26 
       (.I0(RAM_reg_192_255_12_14_n_2),
        .I1(RAM_reg_128_191_12_14_n_2),
        .I2(\gc0.count_d1_reg[7]_rep ),
        .I3(RAM_reg_64_127_12_14_n_2),
        .I4(\gc0.count_d1_reg[6]_rep ),
        .I5(RAM_reg_0_63_12_14_n_2),
        .O(\gpr1.dout_i[14]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[14]_i_27 
       (.I0(RAM_reg_448_511_12_14_n_2),
        .I1(RAM_reg_384_447_12_14_n_2),
        .I2(\gc0.count_d1_reg[7]_rep ),
        .I3(RAM_reg_320_383_12_14_n_2),
        .I4(\gc0.count_d1_reg[6]_rep ),
        .I5(RAM_reg_256_319_12_14_n_2),
        .O(\gpr1.dout_i[14]_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[14]_i_28 
       (.I0(RAM_reg_704_767_12_14_n_2),
        .I1(RAM_reg_640_703_12_14_n_2),
        .I2(\gc0.count_d1_reg[7]_rep ),
        .I3(RAM_reg_576_639_12_14_n_2),
        .I4(\gc0.count_d1_reg[6]_rep ),
        .I5(RAM_reg_512_575_12_14_n_2),
        .O(\gpr1.dout_i[14]_i_28_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[14]_i_29 
       (.I0(RAM_reg_960_1023_12_14_n_2),
        .I1(RAM_reg_896_959_12_14_n_2),
        .I2(\gc0.count_d1_reg[7]_rep ),
        .I3(RAM_reg_832_895_12_14_n_2),
        .I4(\gc0.count_d1_reg[6]_rep ),
        .I5(RAM_reg_768_831_12_14_n_2),
        .O(\gpr1.dout_i[14]_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[15]_i_15 
       (.I0(RAM_reg_3264_3327_15_15_n_0),
        .I1(RAM_reg_3200_3263_15_15_n_0),
        .I2(\gc0.count_d1_reg[7]_rep ),
        .I3(RAM_reg_3136_3199_15_15_n_0),
        .I4(\gc0.count_d1_reg[6]_rep ),
        .I5(RAM_reg_3072_3135_15_15_n_0),
        .O(\gpr1.dout_i[15]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[15]_i_16 
       (.I0(RAM_reg_3520_3583_15_15_n_0),
        .I1(RAM_reg_3456_3519_15_15_n_0),
        .I2(\gc0.count_d1_reg[7]_rep ),
        .I3(RAM_reg_3392_3455_15_15_n_0),
        .I4(\gc0.count_d1_reg[6]_rep ),
        .I5(RAM_reg_3328_3391_15_15_n_0),
        .O(\gpr1.dout_i[15]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[15]_i_17 
       (.I0(RAM_reg_3776_3839_15_15_n_0),
        .I1(RAM_reg_3712_3775_15_15_n_0),
        .I2(\gc0.count_d1_reg[7]_rep ),
        .I3(RAM_reg_3648_3711_15_15_n_0),
        .I4(\gc0.count_d1_reg[6]_rep ),
        .I5(RAM_reg_3584_3647_15_15_n_0),
        .O(\gpr1.dout_i[15]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[15]_i_18 
       (.I0(RAM_reg_4032_4095_15_15_n_0),
        .I1(RAM_reg_3968_4031_15_15_n_0),
        .I2(\gc0.count_d1_reg[7]_rep ),
        .I3(RAM_reg_3904_3967_15_15_n_0),
        .I4(\gc0.count_d1_reg[6]_rep ),
        .I5(RAM_reg_3840_3903_15_15_n_0),
        .O(\gpr1.dout_i[15]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[15]_i_19 
       (.I0(RAM_reg_2240_2303_15_15_n_0),
        .I1(RAM_reg_2176_2239_15_15_n_0),
        .I2(\gc0.count_d1_reg[7]_rep ),
        .I3(RAM_reg_2112_2175_15_15_n_0),
        .I4(\gc0.count_d1_reg[6]_rep ),
        .I5(RAM_reg_2048_2111_15_15_n_0),
        .O(\gpr1.dout_i[15]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[15]_i_2 
       (.I0(\gpr1.dout_i_reg[15]_i_3_n_0 ),
        .I1(\gpr1.dout_i_reg[15]_i_4_n_0 ),
        .I2(\gc0.count_d1_reg[11] [11]),
        .I3(\gpr1.dout_i_reg[15]_i_5_n_0 ),
        .I4(\gc0.count_d1_reg[11] [10]),
        .I5(\gpr1.dout_i_reg[15]_i_6_n_0 ),
        .O(p_0_out[15]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[15]_i_20 
       (.I0(RAM_reg_2496_2559_15_15_n_0),
        .I1(RAM_reg_2432_2495_15_15_n_0),
        .I2(\gc0.count_d1_reg[7]_rep ),
        .I3(RAM_reg_2368_2431_15_15_n_0),
        .I4(\gc0.count_d1_reg[6]_rep ),
        .I5(RAM_reg_2304_2367_15_15_n_0),
        .O(\gpr1.dout_i[15]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[15]_i_21 
       (.I0(RAM_reg_2752_2815_15_15_n_0),
        .I1(RAM_reg_2688_2751_15_15_n_0),
        .I2(\gc0.count_d1_reg[7]_rep ),
        .I3(RAM_reg_2624_2687_15_15_n_0),
        .I4(\gc0.count_d1_reg[6]_rep ),
        .I5(RAM_reg_2560_2623_15_15_n_0),
        .O(\gpr1.dout_i[15]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[15]_i_22 
       (.I0(RAM_reg_3008_3071_15_15_n_0),
        .I1(RAM_reg_2944_3007_15_15_n_0),
        .I2(\gc0.count_d1_reg[7]_rep ),
        .I3(RAM_reg_2880_2943_15_15_n_0),
        .I4(\gc0.count_d1_reg[6]_rep ),
        .I5(RAM_reg_2816_2879_15_15_n_0),
        .O(\gpr1.dout_i[15]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[15]_i_23 
       (.I0(RAM_reg_1216_1279_15_15_n_0),
        .I1(RAM_reg_1152_1215_15_15_n_0),
        .I2(\gc0.count_d1_reg[7]_rep ),
        .I3(RAM_reg_1088_1151_15_15_n_0),
        .I4(\gc0.count_d1_reg[6]_rep ),
        .I5(RAM_reg_1024_1087_15_15_n_0),
        .O(\gpr1.dout_i[15]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[15]_i_24 
       (.I0(RAM_reg_1472_1535_15_15_n_0),
        .I1(RAM_reg_1408_1471_15_15_n_0),
        .I2(\gc0.count_d1_reg[7]_rep ),
        .I3(RAM_reg_1344_1407_15_15_n_0),
        .I4(\gc0.count_d1_reg[6]_rep ),
        .I5(RAM_reg_1280_1343_15_15_n_0),
        .O(\gpr1.dout_i[15]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[15]_i_25 
       (.I0(RAM_reg_1728_1791_15_15_n_0),
        .I1(RAM_reg_1664_1727_15_15_n_0),
        .I2(\gc0.count_d1_reg[7]_rep ),
        .I3(RAM_reg_1600_1663_15_15_n_0),
        .I4(\gc0.count_d1_reg[6]_rep ),
        .I5(RAM_reg_1536_1599_15_15_n_0),
        .O(\gpr1.dout_i[15]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[15]_i_26 
       (.I0(RAM_reg_1984_2047_15_15_n_0),
        .I1(RAM_reg_1920_1983_15_15_n_0),
        .I2(\gc0.count_d1_reg[7]_rep ),
        .I3(RAM_reg_1856_1919_15_15_n_0),
        .I4(\gc0.count_d1_reg[6]_rep ),
        .I5(RAM_reg_1792_1855_15_15_n_0),
        .O(\gpr1.dout_i[15]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[15]_i_27 
       (.I0(RAM_reg_192_255_15_15_n_0),
        .I1(RAM_reg_128_191_15_15_n_0),
        .I2(\gc0.count_d1_reg[7]_rep ),
        .I3(RAM_reg_64_127_15_15_n_0),
        .I4(\gc0.count_d1_reg[6]_rep ),
        .I5(RAM_reg_0_63_15_15_n_0),
        .O(\gpr1.dout_i[15]_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[15]_i_28 
       (.I0(RAM_reg_448_511_15_15_n_0),
        .I1(RAM_reg_384_447_15_15_n_0),
        .I2(\gc0.count_d1_reg[7]_rep ),
        .I3(RAM_reg_320_383_15_15_n_0),
        .I4(\gc0.count_d1_reg[6]_rep ),
        .I5(RAM_reg_256_319_15_15_n_0),
        .O(\gpr1.dout_i[15]_i_28_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[15]_i_29 
       (.I0(RAM_reg_704_767_15_15_n_0),
        .I1(RAM_reg_640_703_15_15_n_0),
        .I2(\gc0.count_d1_reg[7]_rep ),
        .I3(RAM_reg_576_639_15_15_n_0),
        .I4(\gc0.count_d1_reg[6]_rep ),
        .I5(RAM_reg_512_575_15_15_n_0),
        .O(\gpr1.dout_i[15]_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[15]_i_30 
       (.I0(RAM_reg_960_1023_15_15_n_0),
        .I1(RAM_reg_896_959_15_15_n_0),
        .I2(\gc0.count_d1_reg[7]_rep ),
        .I3(RAM_reg_832_895_15_15_n_0),
        .I4(\gc0.count_d1_reg[6]_rep ),
        .I5(RAM_reg_768_831_15_15_n_0),
        .O(\gpr1.dout_i[15]_i_30_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[1]_i_1 
       (.I0(\gpr1.dout_i_reg[1]_i_2_n_0 ),
        .I1(\gpr1.dout_i_reg[1]_i_3_n_0 ),
        .I2(\gc0.count_d1_reg[11] [11]),
        .I3(\gpr1.dout_i_reg[1]_i_4_n_0 ),
        .I4(\gc0.count_d1_reg[11] [10]),
        .I5(\gpr1.dout_i_reg[1]_i_5_n_0 ),
        .O(p_0_out[1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[1]_i_14 
       (.I0(RAM_reg_3264_3327_0_2_n_1),
        .I1(RAM_reg_3200_3263_0_2_n_1),
        .I2(\gc0.count_d1_reg[11] [7]),
        .I3(RAM_reg_3136_3199_0_2_n_1),
        .I4(\gc0.count_d1_reg[11] [6]),
        .I5(RAM_reg_3072_3135_0_2_n_1),
        .O(\gpr1.dout_i[1]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[1]_i_15 
       (.I0(RAM_reg_3520_3583_0_2_n_1),
        .I1(RAM_reg_3456_3519_0_2_n_1),
        .I2(\gc0.count_d1_reg[11] [7]),
        .I3(RAM_reg_3392_3455_0_2_n_1),
        .I4(\gc0.count_d1_reg[11] [6]),
        .I5(RAM_reg_3328_3391_0_2_n_1),
        .O(\gpr1.dout_i[1]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[1]_i_16 
       (.I0(RAM_reg_3776_3839_0_2_n_1),
        .I1(RAM_reg_3712_3775_0_2_n_1),
        .I2(\gc0.count_d1_reg[11] [7]),
        .I3(RAM_reg_3648_3711_0_2_n_1),
        .I4(\gc0.count_d1_reg[11] [6]),
        .I5(RAM_reg_3584_3647_0_2_n_1),
        .O(\gpr1.dout_i[1]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[1]_i_17 
       (.I0(RAM_reg_4032_4095_0_2_n_1),
        .I1(RAM_reg_3968_4031_0_2_n_1),
        .I2(\gc0.count_d1_reg[11] [7]),
        .I3(RAM_reg_3904_3967_0_2_n_1),
        .I4(\gc0.count_d1_reg[11] [6]),
        .I5(RAM_reg_3840_3903_0_2_n_1),
        .O(\gpr1.dout_i[1]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[1]_i_18 
       (.I0(RAM_reg_2240_2303_0_2_n_1),
        .I1(RAM_reg_2176_2239_0_2_n_1),
        .I2(\gc0.count_d1_reg[11] [7]),
        .I3(RAM_reg_2112_2175_0_2_n_1),
        .I4(\gc0.count_d1_reg[11] [6]),
        .I5(RAM_reg_2048_2111_0_2_n_1),
        .O(\gpr1.dout_i[1]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[1]_i_19 
       (.I0(RAM_reg_2496_2559_0_2_n_1),
        .I1(RAM_reg_2432_2495_0_2_n_1),
        .I2(\gc0.count_d1_reg[11] [7]),
        .I3(RAM_reg_2368_2431_0_2_n_1),
        .I4(\gc0.count_d1_reg[11] [6]),
        .I5(RAM_reg_2304_2367_0_2_n_1),
        .O(\gpr1.dout_i[1]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[1]_i_20 
       (.I0(RAM_reg_2752_2815_0_2_n_1),
        .I1(RAM_reg_2688_2751_0_2_n_1),
        .I2(\gc0.count_d1_reg[11] [7]),
        .I3(RAM_reg_2624_2687_0_2_n_1),
        .I4(\gc0.count_d1_reg[11] [6]),
        .I5(RAM_reg_2560_2623_0_2_n_1),
        .O(\gpr1.dout_i[1]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[1]_i_21 
       (.I0(RAM_reg_3008_3071_0_2_n_1),
        .I1(RAM_reg_2944_3007_0_2_n_1),
        .I2(\gc0.count_d1_reg[11] [7]),
        .I3(RAM_reg_2880_2943_0_2_n_1),
        .I4(\gc0.count_d1_reg[11] [6]),
        .I5(RAM_reg_2816_2879_0_2_n_1),
        .O(\gpr1.dout_i[1]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[1]_i_22 
       (.I0(RAM_reg_1216_1279_0_2_n_1),
        .I1(RAM_reg_1152_1215_0_2_n_1),
        .I2(\gc0.count_d1_reg[11] [7]),
        .I3(RAM_reg_1088_1151_0_2_n_1),
        .I4(\gc0.count_d1_reg[11] [6]),
        .I5(RAM_reg_1024_1087_0_2_n_1),
        .O(\gpr1.dout_i[1]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[1]_i_23 
       (.I0(RAM_reg_1472_1535_0_2_n_1),
        .I1(RAM_reg_1408_1471_0_2_n_1),
        .I2(\gc0.count_d1_reg[11] [7]),
        .I3(RAM_reg_1344_1407_0_2_n_1),
        .I4(\gc0.count_d1_reg[11] [6]),
        .I5(RAM_reg_1280_1343_0_2_n_1),
        .O(\gpr1.dout_i[1]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[1]_i_24 
       (.I0(RAM_reg_1728_1791_0_2_n_1),
        .I1(RAM_reg_1664_1727_0_2_n_1),
        .I2(\gc0.count_d1_reg[11] [7]),
        .I3(RAM_reg_1600_1663_0_2_n_1),
        .I4(\gc0.count_d1_reg[11] [6]),
        .I5(RAM_reg_1536_1599_0_2_n_1),
        .O(\gpr1.dout_i[1]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[1]_i_25 
       (.I0(RAM_reg_1984_2047_0_2_n_1),
        .I1(RAM_reg_1920_1983_0_2_n_1),
        .I2(\gc0.count_d1_reg[11] [7]),
        .I3(RAM_reg_1856_1919_0_2_n_1),
        .I4(\gc0.count_d1_reg[11] [6]),
        .I5(RAM_reg_1792_1855_0_2_n_1),
        .O(\gpr1.dout_i[1]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[1]_i_26 
       (.I0(RAM_reg_192_255_0_2_n_1),
        .I1(RAM_reg_128_191_0_2_n_1),
        .I2(\gc0.count_d1_reg[11] [7]),
        .I3(RAM_reg_64_127_0_2_n_1),
        .I4(\gc0.count_d1_reg[11] [6]),
        .I5(RAM_reg_0_63_0_2_n_1),
        .O(\gpr1.dout_i[1]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[1]_i_27 
       (.I0(RAM_reg_448_511_0_2_n_1),
        .I1(RAM_reg_384_447_0_2_n_1),
        .I2(\gc0.count_d1_reg[11] [7]),
        .I3(RAM_reg_320_383_0_2_n_1),
        .I4(\gc0.count_d1_reg[11] [6]),
        .I5(RAM_reg_256_319_0_2_n_1),
        .O(\gpr1.dout_i[1]_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[1]_i_28 
       (.I0(RAM_reg_704_767_0_2_n_1),
        .I1(RAM_reg_640_703_0_2_n_1),
        .I2(\gc0.count_d1_reg[11] [7]),
        .I3(RAM_reg_576_639_0_2_n_1),
        .I4(\gc0.count_d1_reg[11] [6]),
        .I5(RAM_reg_512_575_0_2_n_1),
        .O(\gpr1.dout_i[1]_i_28_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[1]_i_29 
       (.I0(RAM_reg_960_1023_0_2_n_1),
        .I1(RAM_reg_896_959_0_2_n_1),
        .I2(\gc0.count_d1_reg[11] [7]),
        .I3(RAM_reg_832_895_0_2_n_1),
        .I4(\gc0.count_d1_reg[11] [6]),
        .I5(RAM_reg_768_831_0_2_n_1),
        .O(\gpr1.dout_i[1]_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[2]_i_1 
       (.I0(\gpr1.dout_i_reg[2]_i_2_n_0 ),
        .I1(\gpr1.dout_i_reg[2]_i_3_n_0 ),
        .I2(\gc0.count_d1_reg[11] [11]),
        .I3(\gpr1.dout_i_reg[2]_i_4_n_0 ),
        .I4(\gc0.count_d1_reg[11] [10]),
        .I5(\gpr1.dout_i_reg[2]_i_5_n_0 ),
        .O(p_0_out[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[2]_i_14 
       (.I0(RAM_reg_3264_3327_0_2_n_2),
        .I1(RAM_reg_3200_3263_0_2_n_2),
        .I2(\gc0.count_d1_reg[11] [7]),
        .I3(RAM_reg_3136_3199_0_2_n_2),
        .I4(\gc0.count_d1_reg[11] [6]),
        .I5(RAM_reg_3072_3135_0_2_n_2),
        .O(\gpr1.dout_i[2]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[2]_i_15 
       (.I0(RAM_reg_3520_3583_0_2_n_2),
        .I1(RAM_reg_3456_3519_0_2_n_2),
        .I2(\gc0.count_d1_reg[11] [7]),
        .I3(RAM_reg_3392_3455_0_2_n_2),
        .I4(\gc0.count_d1_reg[11] [6]),
        .I5(RAM_reg_3328_3391_0_2_n_2),
        .O(\gpr1.dout_i[2]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[2]_i_16 
       (.I0(RAM_reg_3776_3839_0_2_n_2),
        .I1(RAM_reg_3712_3775_0_2_n_2),
        .I2(\gc0.count_d1_reg[11] [7]),
        .I3(RAM_reg_3648_3711_0_2_n_2),
        .I4(\gc0.count_d1_reg[11] [6]),
        .I5(RAM_reg_3584_3647_0_2_n_2),
        .O(\gpr1.dout_i[2]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[2]_i_17 
       (.I0(RAM_reg_4032_4095_0_2_n_2),
        .I1(RAM_reg_3968_4031_0_2_n_2),
        .I2(\gc0.count_d1_reg[11] [7]),
        .I3(RAM_reg_3904_3967_0_2_n_2),
        .I4(\gc0.count_d1_reg[11] [6]),
        .I5(RAM_reg_3840_3903_0_2_n_2),
        .O(\gpr1.dout_i[2]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[2]_i_18 
       (.I0(RAM_reg_2240_2303_0_2_n_2),
        .I1(RAM_reg_2176_2239_0_2_n_2),
        .I2(\gc0.count_d1_reg[11] [7]),
        .I3(RAM_reg_2112_2175_0_2_n_2),
        .I4(\gc0.count_d1_reg[11] [6]),
        .I5(RAM_reg_2048_2111_0_2_n_2),
        .O(\gpr1.dout_i[2]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[2]_i_19 
       (.I0(RAM_reg_2496_2559_0_2_n_2),
        .I1(RAM_reg_2432_2495_0_2_n_2),
        .I2(\gc0.count_d1_reg[11] [7]),
        .I3(RAM_reg_2368_2431_0_2_n_2),
        .I4(\gc0.count_d1_reg[11] [6]),
        .I5(RAM_reg_2304_2367_0_2_n_2),
        .O(\gpr1.dout_i[2]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[2]_i_20 
       (.I0(RAM_reg_2752_2815_0_2_n_2),
        .I1(RAM_reg_2688_2751_0_2_n_2),
        .I2(\gc0.count_d1_reg[11] [7]),
        .I3(RAM_reg_2624_2687_0_2_n_2),
        .I4(\gc0.count_d1_reg[11] [6]),
        .I5(RAM_reg_2560_2623_0_2_n_2),
        .O(\gpr1.dout_i[2]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[2]_i_21 
       (.I0(RAM_reg_3008_3071_0_2_n_2),
        .I1(RAM_reg_2944_3007_0_2_n_2),
        .I2(\gc0.count_d1_reg[11] [7]),
        .I3(RAM_reg_2880_2943_0_2_n_2),
        .I4(\gc0.count_d1_reg[11] [6]),
        .I5(RAM_reg_2816_2879_0_2_n_2),
        .O(\gpr1.dout_i[2]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[2]_i_22 
       (.I0(RAM_reg_1216_1279_0_2_n_2),
        .I1(RAM_reg_1152_1215_0_2_n_2),
        .I2(\gc0.count_d1_reg[11] [7]),
        .I3(RAM_reg_1088_1151_0_2_n_2),
        .I4(\gc0.count_d1_reg[11] [6]),
        .I5(RAM_reg_1024_1087_0_2_n_2),
        .O(\gpr1.dout_i[2]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[2]_i_23 
       (.I0(RAM_reg_1472_1535_0_2_n_2),
        .I1(RAM_reg_1408_1471_0_2_n_2),
        .I2(\gc0.count_d1_reg[11] [7]),
        .I3(RAM_reg_1344_1407_0_2_n_2),
        .I4(\gc0.count_d1_reg[11] [6]),
        .I5(RAM_reg_1280_1343_0_2_n_2),
        .O(\gpr1.dout_i[2]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[2]_i_24 
       (.I0(RAM_reg_1728_1791_0_2_n_2),
        .I1(RAM_reg_1664_1727_0_2_n_2),
        .I2(\gc0.count_d1_reg[11] [7]),
        .I3(RAM_reg_1600_1663_0_2_n_2),
        .I4(\gc0.count_d1_reg[11] [6]),
        .I5(RAM_reg_1536_1599_0_2_n_2),
        .O(\gpr1.dout_i[2]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[2]_i_25 
       (.I0(RAM_reg_1984_2047_0_2_n_2),
        .I1(RAM_reg_1920_1983_0_2_n_2),
        .I2(\gc0.count_d1_reg[11] [7]),
        .I3(RAM_reg_1856_1919_0_2_n_2),
        .I4(\gc0.count_d1_reg[11] [6]),
        .I5(RAM_reg_1792_1855_0_2_n_2),
        .O(\gpr1.dout_i[2]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[2]_i_26 
       (.I0(RAM_reg_192_255_0_2_n_2),
        .I1(RAM_reg_128_191_0_2_n_2),
        .I2(\gc0.count_d1_reg[11] [7]),
        .I3(RAM_reg_64_127_0_2_n_2),
        .I4(\gc0.count_d1_reg[11] [6]),
        .I5(RAM_reg_0_63_0_2_n_2),
        .O(\gpr1.dout_i[2]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[2]_i_27 
       (.I0(RAM_reg_448_511_0_2_n_2),
        .I1(RAM_reg_384_447_0_2_n_2),
        .I2(\gc0.count_d1_reg[11] [7]),
        .I3(RAM_reg_320_383_0_2_n_2),
        .I4(\gc0.count_d1_reg[11] [6]),
        .I5(RAM_reg_256_319_0_2_n_2),
        .O(\gpr1.dout_i[2]_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[2]_i_28 
       (.I0(RAM_reg_704_767_0_2_n_2),
        .I1(RAM_reg_640_703_0_2_n_2),
        .I2(\gc0.count_d1_reg[11] [7]),
        .I3(RAM_reg_576_639_0_2_n_2),
        .I4(\gc0.count_d1_reg[11] [6]),
        .I5(RAM_reg_512_575_0_2_n_2),
        .O(\gpr1.dout_i[2]_i_28_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[2]_i_29 
       (.I0(RAM_reg_960_1023_0_2_n_2),
        .I1(RAM_reg_896_959_0_2_n_2),
        .I2(\gc0.count_d1_reg[11] [7]),
        .I3(RAM_reg_832_895_0_2_n_2),
        .I4(\gc0.count_d1_reg[11] [6]),
        .I5(RAM_reg_768_831_0_2_n_2),
        .O(\gpr1.dout_i[2]_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[3]_i_1 
       (.I0(\gpr1.dout_i_reg[3]_i_2_n_0 ),
        .I1(\gpr1.dout_i_reg[3]_i_3_n_0 ),
        .I2(\gc0.count_d1_reg[11] [11]),
        .I3(\gpr1.dout_i_reg[3]_i_4_n_0 ),
        .I4(\gc0.count_d1_reg[11] [10]),
        .I5(\gpr1.dout_i_reg[3]_i_5_n_0 ),
        .O(p_0_out[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[3]_i_14 
       (.I0(RAM_reg_3264_3327_3_5_n_0),
        .I1(RAM_reg_3200_3263_3_5_n_0),
        .I2(\gc0.count_d1_reg[11] [7]),
        .I3(RAM_reg_3136_3199_3_5_n_0),
        .I4(\gc0.count_d1_reg[11] [6]),
        .I5(RAM_reg_3072_3135_3_5_n_0),
        .O(\gpr1.dout_i[3]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[3]_i_15 
       (.I0(RAM_reg_3520_3583_3_5_n_0),
        .I1(RAM_reg_3456_3519_3_5_n_0),
        .I2(\gc0.count_d1_reg[11] [7]),
        .I3(RAM_reg_3392_3455_3_5_n_0),
        .I4(\gc0.count_d1_reg[11] [6]),
        .I5(RAM_reg_3328_3391_3_5_n_0),
        .O(\gpr1.dout_i[3]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[3]_i_16 
       (.I0(RAM_reg_3776_3839_3_5_n_0),
        .I1(RAM_reg_3712_3775_3_5_n_0),
        .I2(\gc0.count_d1_reg[11] [7]),
        .I3(RAM_reg_3648_3711_3_5_n_0),
        .I4(\gc0.count_d1_reg[11] [6]),
        .I5(RAM_reg_3584_3647_3_5_n_0),
        .O(\gpr1.dout_i[3]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[3]_i_17 
       (.I0(RAM_reg_4032_4095_3_5_n_0),
        .I1(RAM_reg_3968_4031_3_5_n_0),
        .I2(\gc0.count_d1_reg[11] [7]),
        .I3(RAM_reg_3904_3967_3_5_n_0),
        .I4(\gc0.count_d1_reg[11] [6]),
        .I5(RAM_reg_3840_3903_3_5_n_0),
        .O(\gpr1.dout_i[3]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[3]_i_18 
       (.I0(RAM_reg_2240_2303_3_5_n_0),
        .I1(RAM_reg_2176_2239_3_5_n_0),
        .I2(\gc0.count_d1_reg[11] [7]),
        .I3(RAM_reg_2112_2175_3_5_n_0),
        .I4(\gc0.count_d1_reg[11] [6]),
        .I5(RAM_reg_2048_2111_3_5_n_0),
        .O(\gpr1.dout_i[3]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[3]_i_19 
       (.I0(RAM_reg_2496_2559_3_5_n_0),
        .I1(RAM_reg_2432_2495_3_5_n_0),
        .I2(\gc0.count_d1_reg[11] [7]),
        .I3(RAM_reg_2368_2431_3_5_n_0),
        .I4(\gc0.count_d1_reg[11] [6]),
        .I5(RAM_reg_2304_2367_3_5_n_0),
        .O(\gpr1.dout_i[3]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[3]_i_20 
       (.I0(RAM_reg_2752_2815_3_5_n_0),
        .I1(RAM_reg_2688_2751_3_5_n_0),
        .I2(\gc0.count_d1_reg[11] [7]),
        .I3(RAM_reg_2624_2687_3_5_n_0),
        .I4(\gc0.count_d1_reg[11] [6]),
        .I5(RAM_reg_2560_2623_3_5_n_0),
        .O(\gpr1.dout_i[3]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[3]_i_21 
       (.I0(RAM_reg_3008_3071_3_5_n_0),
        .I1(RAM_reg_2944_3007_3_5_n_0),
        .I2(\gc0.count_d1_reg[11] [7]),
        .I3(RAM_reg_2880_2943_3_5_n_0),
        .I4(\gc0.count_d1_reg[11] [6]),
        .I5(RAM_reg_2816_2879_3_5_n_0),
        .O(\gpr1.dout_i[3]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[3]_i_22 
       (.I0(RAM_reg_1216_1279_3_5_n_0),
        .I1(RAM_reg_1152_1215_3_5_n_0),
        .I2(\gc0.count_d1_reg[11] [7]),
        .I3(RAM_reg_1088_1151_3_5_n_0),
        .I4(\gc0.count_d1_reg[11] [6]),
        .I5(RAM_reg_1024_1087_3_5_n_0),
        .O(\gpr1.dout_i[3]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[3]_i_23 
       (.I0(RAM_reg_1472_1535_3_5_n_0),
        .I1(RAM_reg_1408_1471_3_5_n_0),
        .I2(\gc0.count_d1_reg[11] [7]),
        .I3(RAM_reg_1344_1407_3_5_n_0),
        .I4(\gc0.count_d1_reg[11] [6]),
        .I5(RAM_reg_1280_1343_3_5_n_0),
        .O(\gpr1.dout_i[3]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[3]_i_24 
       (.I0(RAM_reg_1728_1791_3_5_n_0),
        .I1(RAM_reg_1664_1727_3_5_n_0),
        .I2(\gc0.count_d1_reg[11] [7]),
        .I3(RAM_reg_1600_1663_3_5_n_0),
        .I4(\gc0.count_d1_reg[11] [6]),
        .I5(RAM_reg_1536_1599_3_5_n_0),
        .O(\gpr1.dout_i[3]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[3]_i_25 
       (.I0(RAM_reg_1984_2047_3_5_n_0),
        .I1(RAM_reg_1920_1983_3_5_n_0),
        .I2(\gc0.count_d1_reg[11] [7]),
        .I3(RAM_reg_1856_1919_3_5_n_0),
        .I4(\gc0.count_d1_reg[11] [6]),
        .I5(RAM_reg_1792_1855_3_5_n_0),
        .O(\gpr1.dout_i[3]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[3]_i_26 
       (.I0(RAM_reg_192_255_3_5_n_0),
        .I1(RAM_reg_128_191_3_5_n_0),
        .I2(\gc0.count_d1_reg[11] [7]),
        .I3(RAM_reg_64_127_3_5_n_0),
        .I4(\gc0.count_d1_reg[11] [6]),
        .I5(RAM_reg_0_63_3_5_n_0),
        .O(\gpr1.dout_i[3]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[3]_i_27 
       (.I0(RAM_reg_448_511_3_5_n_0),
        .I1(RAM_reg_384_447_3_5_n_0),
        .I2(\gc0.count_d1_reg[11] [7]),
        .I3(RAM_reg_320_383_3_5_n_0),
        .I4(\gc0.count_d1_reg[11] [6]),
        .I5(RAM_reg_256_319_3_5_n_0),
        .O(\gpr1.dout_i[3]_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[3]_i_28 
       (.I0(RAM_reg_704_767_3_5_n_0),
        .I1(RAM_reg_640_703_3_5_n_0),
        .I2(\gc0.count_d1_reg[11] [7]),
        .I3(RAM_reg_576_639_3_5_n_0),
        .I4(\gc0.count_d1_reg[11] [6]),
        .I5(RAM_reg_512_575_3_5_n_0),
        .O(\gpr1.dout_i[3]_i_28_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[3]_i_29 
       (.I0(RAM_reg_960_1023_3_5_n_0),
        .I1(RAM_reg_896_959_3_5_n_0),
        .I2(\gc0.count_d1_reg[11] [7]),
        .I3(RAM_reg_832_895_3_5_n_0),
        .I4(\gc0.count_d1_reg[11] [6]),
        .I5(RAM_reg_768_831_3_5_n_0),
        .O(\gpr1.dout_i[3]_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[4]_i_1 
       (.I0(\gpr1.dout_i_reg[4]_i_2_n_0 ),
        .I1(\gpr1.dout_i_reg[4]_i_3_n_0 ),
        .I2(\gc0.count_d1_reg[11] [11]),
        .I3(\gpr1.dout_i_reg[4]_i_4_n_0 ),
        .I4(\gc0.count_d1_reg[11] [10]),
        .I5(\gpr1.dout_i_reg[4]_i_5_n_0 ),
        .O(p_0_out[4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[4]_i_14 
       (.I0(RAM_reg_3264_3327_3_5_n_1),
        .I1(RAM_reg_3200_3263_3_5_n_1),
        .I2(\gc0.count_d1_reg[11] [7]),
        .I3(RAM_reg_3136_3199_3_5_n_1),
        .I4(\gc0.count_d1_reg[11] [6]),
        .I5(RAM_reg_3072_3135_3_5_n_1),
        .O(\gpr1.dout_i[4]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[4]_i_15 
       (.I0(RAM_reg_3520_3583_3_5_n_1),
        .I1(RAM_reg_3456_3519_3_5_n_1),
        .I2(\gc0.count_d1_reg[11] [7]),
        .I3(RAM_reg_3392_3455_3_5_n_1),
        .I4(\gc0.count_d1_reg[11] [6]),
        .I5(RAM_reg_3328_3391_3_5_n_1),
        .O(\gpr1.dout_i[4]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[4]_i_16 
       (.I0(RAM_reg_3776_3839_3_5_n_1),
        .I1(RAM_reg_3712_3775_3_5_n_1),
        .I2(\gc0.count_d1_reg[11] [7]),
        .I3(RAM_reg_3648_3711_3_5_n_1),
        .I4(\gc0.count_d1_reg[11] [6]),
        .I5(RAM_reg_3584_3647_3_5_n_1),
        .O(\gpr1.dout_i[4]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[4]_i_17 
       (.I0(RAM_reg_4032_4095_3_5_n_1),
        .I1(RAM_reg_3968_4031_3_5_n_1),
        .I2(\gc0.count_d1_reg[11] [7]),
        .I3(RAM_reg_3904_3967_3_5_n_1),
        .I4(\gc0.count_d1_reg[11] [6]),
        .I5(RAM_reg_3840_3903_3_5_n_1),
        .O(\gpr1.dout_i[4]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[4]_i_18 
       (.I0(RAM_reg_2240_2303_3_5_n_1),
        .I1(RAM_reg_2176_2239_3_5_n_1),
        .I2(\gc0.count_d1_reg[11] [7]),
        .I3(RAM_reg_2112_2175_3_5_n_1),
        .I4(\gc0.count_d1_reg[11] [6]),
        .I5(RAM_reg_2048_2111_3_5_n_1),
        .O(\gpr1.dout_i[4]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[4]_i_19 
       (.I0(RAM_reg_2496_2559_3_5_n_1),
        .I1(RAM_reg_2432_2495_3_5_n_1),
        .I2(\gc0.count_d1_reg[11] [7]),
        .I3(RAM_reg_2368_2431_3_5_n_1),
        .I4(\gc0.count_d1_reg[11] [6]),
        .I5(RAM_reg_2304_2367_3_5_n_1),
        .O(\gpr1.dout_i[4]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[4]_i_20 
       (.I0(RAM_reg_2752_2815_3_5_n_1),
        .I1(RAM_reg_2688_2751_3_5_n_1),
        .I2(\gc0.count_d1_reg[11] [7]),
        .I3(RAM_reg_2624_2687_3_5_n_1),
        .I4(\gc0.count_d1_reg[11] [6]),
        .I5(RAM_reg_2560_2623_3_5_n_1),
        .O(\gpr1.dout_i[4]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[4]_i_21 
       (.I0(RAM_reg_3008_3071_3_5_n_1),
        .I1(RAM_reg_2944_3007_3_5_n_1),
        .I2(\gc0.count_d1_reg[11] [7]),
        .I3(RAM_reg_2880_2943_3_5_n_1),
        .I4(\gc0.count_d1_reg[11] [6]),
        .I5(RAM_reg_2816_2879_3_5_n_1),
        .O(\gpr1.dout_i[4]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[4]_i_22 
       (.I0(RAM_reg_1216_1279_3_5_n_1),
        .I1(RAM_reg_1152_1215_3_5_n_1),
        .I2(\gc0.count_d1_reg[11] [7]),
        .I3(RAM_reg_1088_1151_3_5_n_1),
        .I4(\gc0.count_d1_reg[11] [6]),
        .I5(RAM_reg_1024_1087_3_5_n_1),
        .O(\gpr1.dout_i[4]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[4]_i_23 
       (.I0(RAM_reg_1472_1535_3_5_n_1),
        .I1(RAM_reg_1408_1471_3_5_n_1),
        .I2(\gc0.count_d1_reg[11] [7]),
        .I3(RAM_reg_1344_1407_3_5_n_1),
        .I4(\gc0.count_d1_reg[11] [6]),
        .I5(RAM_reg_1280_1343_3_5_n_1),
        .O(\gpr1.dout_i[4]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[4]_i_24 
       (.I0(RAM_reg_1728_1791_3_5_n_1),
        .I1(RAM_reg_1664_1727_3_5_n_1),
        .I2(\gc0.count_d1_reg[11] [7]),
        .I3(RAM_reg_1600_1663_3_5_n_1),
        .I4(\gc0.count_d1_reg[11] [6]),
        .I5(RAM_reg_1536_1599_3_5_n_1),
        .O(\gpr1.dout_i[4]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[4]_i_25 
       (.I0(RAM_reg_1984_2047_3_5_n_1),
        .I1(RAM_reg_1920_1983_3_5_n_1),
        .I2(\gc0.count_d1_reg[11] [7]),
        .I3(RAM_reg_1856_1919_3_5_n_1),
        .I4(\gc0.count_d1_reg[11] [6]),
        .I5(RAM_reg_1792_1855_3_5_n_1),
        .O(\gpr1.dout_i[4]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[4]_i_26 
       (.I0(RAM_reg_192_255_3_5_n_1),
        .I1(RAM_reg_128_191_3_5_n_1),
        .I2(\gc0.count_d1_reg[11] [7]),
        .I3(RAM_reg_64_127_3_5_n_1),
        .I4(\gc0.count_d1_reg[11] [6]),
        .I5(RAM_reg_0_63_3_5_n_1),
        .O(\gpr1.dout_i[4]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[4]_i_27 
       (.I0(RAM_reg_448_511_3_5_n_1),
        .I1(RAM_reg_384_447_3_5_n_1),
        .I2(\gc0.count_d1_reg[11] [7]),
        .I3(RAM_reg_320_383_3_5_n_1),
        .I4(\gc0.count_d1_reg[11] [6]),
        .I5(RAM_reg_256_319_3_5_n_1),
        .O(\gpr1.dout_i[4]_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[4]_i_28 
       (.I0(RAM_reg_704_767_3_5_n_1),
        .I1(RAM_reg_640_703_3_5_n_1),
        .I2(\gc0.count_d1_reg[11] [7]),
        .I3(RAM_reg_576_639_3_5_n_1),
        .I4(\gc0.count_d1_reg[11] [6]),
        .I5(RAM_reg_512_575_3_5_n_1),
        .O(\gpr1.dout_i[4]_i_28_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[4]_i_29 
       (.I0(RAM_reg_960_1023_3_5_n_1),
        .I1(RAM_reg_896_959_3_5_n_1),
        .I2(\gc0.count_d1_reg[11] [7]),
        .I3(RAM_reg_832_895_3_5_n_1),
        .I4(\gc0.count_d1_reg[11] [6]),
        .I5(RAM_reg_768_831_3_5_n_1),
        .O(\gpr1.dout_i[4]_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[5]_i_1 
       (.I0(\gpr1.dout_i_reg[5]_i_2_n_0 ),
        .I1(\gpr1.dout_i_reg[5]_i_3_n_0 ),
        .I2(\gc0.count_d1_reg[11] [11]),
        .I3(\gpr1.dout_i_reg[5]_i_4_n_0 ),
        .I4(\gc0.count_d1_reg[11] [10]),
        .I5(\gpr1.dout_i_reg[5]_i_5_n_0 ),
        .O(p_0_out[5]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[5]_i_14 
       (.I0(RAM_reg_3264_3327_3_5_n_2),
        .I1(RAM_reg_3200_3263_3_5_n_2),
        .I2(\gc0.count_d1_reg[11] [7]),
        .I3(RAM_reg_3136_3199_3_5_n_2),
        .I4(\gc0.count_d1_reg[11] [6]),
        .I5(RAM_reg_3072_3135_3_5_n_2),
        .O(\gpr1.dout_i[5]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[5]_i_15 
       (.I0(RAM_reg_3520_3583_3_5_n_2),
        .I1(RAM_reg_3456_3519_3_5_n_2),
        .I2(\gc0.count_d1_reg[11] [7]),
        .I3(RAM_reg_3392_3455_3_5_n_2),
        .I4(\gc0.count_d1_reg[11] [6]),
        .I5(RAM_reg_3328_3391_3_5_n_2),
        .O(\gpr1.dout_i[5]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[5]_i_16 
       (.I0(RAM_reg_3776_3839_3_5_n_2),
        .I1(RAM_reg_3712_3775_3_5_n_2),
        .I2(\gc0.count_d1_reg[11] [7]),
        .I3(RAM_reg_3648_3711_3_5_n_2),
        .I4(\gc0.count_d1_reg[11] [6]),
        .I5(RAM_reg_3584_3647_3_5_n_2),
        .O(\gpr1.dout_i[5]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[5]_i_17 
       (.I0(RAM_reg_4032_4095_3_5_n_2),
        .I1(RAM_reg_3968_4031_3_5_n_2),
        .I2(\gc0.count_d1_reg[11] [7]),
        .I3(RAM_reg_3904_3967_3_5_n_2),
        .I4(\gc0.count_d1_reg[11] [6]),
        .I5(RAM_reg_3840_3903_3_5_n_2),
        .O(\gpr1.dout_i[5]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[5]_i_18 
       (.I0(RAM_reg_2240_2303_3_5_n_2),
        .I1(RAM_reg_2176_2239_3_5_n_2),
        .I2(\gc0.count_d1_reg[11] [7]),
        .I3(RAM_reg_2112_2175_3_5_n_2),
        .I4(\gc0.count_d1_reg[11] [6]),
        .I5(RAM_reg_2048_2111_3_5_n_2),
        .O(\gpr1.dout_i[5]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[5]_i_19 
       (.I0(RAM_reg_2496_2559_3_5_n_2),
        .I1(RAM_reg_2432_2495_3_5_n_2),
        .I2(\gc0.count_d1_reg[11] [7]),
        .I3(RAM_reg_2368_2431_3_5_n_2),
        .I4(\gc0.count_d1_reg[11] [6]),
        .I5(RAM_reg_2304_2367_3_5_n_2),
        .O(\gpr1.dout_i[5]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[5]_i_20 
       (.I0(RAM_reg_2752_2815_3_5_n_2),
        .I1(RAM_reg_2688_2751_3_5_n_2),
        .I2(\gc0.count_d1_reg[11] [7]),
        .I3(RAM_reg_2624_2687_3_5_n_2),
        .I4(\gc0.count_d1_reg[11] [6]),
        .I5(RAM_reg_2560_2623_3_5_n_2),
        .O(\gpr1.dout_i[5]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[5]_i_21 
       (.I0(RAM_reg_3008_3071_3_5_n_2),
        .I1(RAM_reg_2944_3007_3_5_n_2),
        .I2(\gc0.count_d1_reg[11] [7]),
        .I3(RAM_reg_2880_2943_3_5_n_2),
        .I4(\gc0.count_d1_reg[11] [6]),
        .I5(RAM_reg_2816_2879_3_5_n_2),
        .O(\gpr1.dout_i[5]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[5]_i_22 
       (.I0(RAM_reg_1216_1279_3_5_n_2),
        .I1(RAM_reg_1152_1215_3_5_n_2),
        .I2(\gc0.count_d1_reg[11] [7]),
        .I3(RAM_reg_1088_1151_3_5_n_2),
        .I4(\gc0.count_d1_reg[11] [6]),
        .I5(RAM_reg_1024_1087_3_5_n_2),
        .O(\gpr1.dout_i[5]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[5]_i_23 
       (.I0(RAM_reg_1472_1535_3_5_n_2),
        .I1(RAM_reg_1408_1471_3_5_n_2),
        .I2(\gc0.count_d1_reg[11] [7]),
        .I3(RAM_reg_1344_1407_3_5_n_2),
        .I4(\gc0.count_d1_reg[11] [6]),
        .I5(RAM_reg_1280_1343_3_5_n_2),
        .O(\gpr1.dout_i[5]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[5]_i_24 
       (.I0(RAM_reg_1728_1791_3_5_n_2),
        .I1(RAM_reg_1664_1727_3_5_n_2),
        .I2(\gc0.count_d1_reg[11] [7]),
        .I3(RAM_reg_1600_1663_3_5_n_2),
        .I4(\gc0.count_d1_reg[11] [6]),
        .I5(RAM_reg_1536_1599_3_5_n_2),
        .O(\gpr1.dout_i[5]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[5]_i_25 
       (.I0(RAM_reg_1984_2047_3_5_n_2),
        .I1(RAM_reg_1920_1983_3_5_n_2),
        .I2(\gc0.count_d1_reg[11] [7]),
        .I3(RAM_reg_1856_1919_3_5_n_2),
        .I4(\gc0.count_d1_reg[11] [6]),
        .I5(RAM_reg_1792_1855_3_5_n_2),
        .O(\gpr1.dout_i[5]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[5]_i_26 
       (.I0(RAM_reg_192_255_3_5_n_2),
        .I1(RAM_reg_128_191_3_5_n_2),
        .I2(\gc0.count_d1_reg[11] [7]),
        .I3(RAM_reg_64_127_3_5_n_2),
        .I4(\gc0.count_d1_reg[11] [6]),
        .I5(RAM_reg_0_63_3_5_n_2),
        .O(\gpr1.dout_i[5]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[5]_i_27 
       (.I0(RAM_reg_448_511_3_5_n_2),
        .I1(RAM_reg_384_447_3_5_n_2),
        .I2(\gc0.count_d1_reg[11] [7]),
        .I3(RAM_reg_320_383_3_5_n_2),
        .I4(\gc0.count_d1_reg[11] [6]),
        .I5(RAM_reg_256_319_3_5_n_2),
        .O(\gpr1.dout_i[5]_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[5]_i_28 
       (.I0(RAM_reg_704_767_3_5_n_2),
        .I1(RAM_reg_640_703_3_5_n_2),
        .I2(\gc0.count_d1_reg[11] [7]),
        .I3(RAM_reg_576_639_3_5_n_2),
        .I4(\gc0.count_d1_reg[11] [6]),
        .I5(RAM_reg_512_575_3_5_n_2),
        .O(\gpr1.dout_i[5]_i_28_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[5]_i_29 
       (.I0(RAM_reg_960_1023_3_5_n_2),
        .I1(RAM_reg_896_959_3_5_n_2),
        .I2(\gc0.count_d1_reg[11] [7]),
        .I3(RAM_reg_832_895_3_5_n_2),
        .I4(\gc0.count_d1_reg[11] [6]),
        .I5(RAM_reg_768_831_3_5_n_2),
        .O(\gpr1.dout_i[5]_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[6]_i_1 
       (.I0(\gpr1.dout_i_reg[6]_i_2_n_0 ),
        .I1(\gpr1.dout_i_reg[6]_i_3_n_0 ),
        .I2(\gc0.count_d1_reg[11] [11]),
        .I3(\gpr1.dout_i_reg[6]_i_4_n_0 ),
        .I4(\gc0.count_d1_reg[11] [10]),
        .I5(\gpr1.dout_i_reg[6]_i_5_n_0 ),
        .O(p_0_out[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[6]_i_14 
       (.I0(RAM_reg_3264_3327_6_8_n_0),
        .I1(RAM_reg_3200_3263_6_8_n_0),
        .I2(\gc0.count_d1_reg[11] [7]),
        .I3(RAM_reg_3136_3199_6_8_n_0),
        .I4(\gc0.count_d1_reg[11] [6]),
        .I5(RAM_reg_3072_3135_6_8_n_0),
        .O(\gpr1.dout_i[6]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[6]_i_15 
       (.I0(RAM_reg_3520_3583_6_8_n_0),
        .I1(RAM_reg_3456_3519_6_8_n_0),
        .I2(\gc0.count_d1_reg[11] [7]),
        .I3(RAM_reg_3392_3455_6_8_n_0),
        .I4(\gc0.count_d1_reg[11] [6]),
        .I5(RAM_reg_3328_3391_6_8_n_0),
        .O(\gpr1.dout_i[6]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[6]_i_16 
       (.I0(RAM_reg_3776_3839_6_8_n_0),
        .I1(RAM_reg_3712_3775_6_8_n_0),
        .I2(\gc0.count_d1_reg[11] [7]),
        .I3(RAM_reg_3648_3711_6_8_n_0),
        .I4(\gc0.count_d1_reg[11] [6]),
        .I5(RAM_reg_3584_3647_6_8_n_0),
        .O(\gpr1.dout_i[6]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[6]_i_17 
       (.I0(RAM_reg_4032_4095_6_8_n_0),
        .I1(RAM_reg_3968_4031_6_8_n_0),
        .I2(\gc0.count_d1_reg[11] [7]),
        .I3(RAM_reg_3904_3967_6_8_n_0),
        .I4(\gc0.count_d1_reg[11] [6]),
        .I5(RAM_reg_3840_3903_6_8_n_0),
        .O(\gpr1.dout_i[6]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[6]_i_18 
       (.I0(RAM_reg_2240_2303_6_8_n_0),
        .I1(RAM_reg_2176_2239_6_8_n_0),
        .I2(\gc0.count_d1_reg[11] [7]),
        .I3(RAM_reg_2112_2175_6_8_n_0),
        .I4(\gc0.count_d1_reg[11] [6]),
        .I5(RAM_reg_2048_2111_6_8_n_0),
        .O(\gpr1.dout_i[6]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[6]_i_19 
       (.I0(RAM_reg_2496_2559_6_8_n_0),
        .I1(RAM_reg_2432_2495_6_8_n_0),
        .I2(\gc0.count_d1_reg[11] [7]),
        .I3(RAM_reg_2368_2431_6_8_n_0),
        .I4(\gc0.count_d1_reg[11] [6]),
        .I5(RAM_reg_2304_2367_6_8_n_0),
        .O(\gpr1.dout_i[6]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[6]_i_20 
       (.I0(RAM_reg_2752_2815_6_8_n_0),
        .I1(RAM_reg_2688_2751_6_8_n_0),
        .I2(\gc0.count_d1_reg[11] [7]),
        .I3(RAM_reg_2624_2687_6_8_n_0),
        .I4(\gc0.count_d1_reg[11] [6]),
        .I5(RAM_reg_2560_2623_6_8_n_0),
        .O(\gpr1.dout_i[6]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[6]_i_21 
       (.I0(RAM_reg_3008_3071_6_8_n_0),
        .I1(RAM_reg_2944_3007_6_8_n_0),
        .I2(\gc0.count_d1_reg[11] [7]),
        .I3(RAM_reg_2880_2943_6_8_n_0),
        .I4(\gc0.count_d1_reg[11] [6]),
        .I5(RAM_reg_2816_2879_6_8_n_0),
        .O(\gpr1.dout_i[6]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[6]_i_22 
       (.I0(RAM_reg_1216_1279_6_8_n_0),
        .I1(RAM_reg_1152_1215_6_8_n_0),
        .I2(\gc0.count_d1_reg[11] [7]),
        .I3(RAM_reg_1088_1151_6_8_n_0),
        .I4(\gc0.count_d1_reg[11] [6]),
        .I5(RAM_reg_1024_1087_6_8_n_0),
        .O(\gpr1.dout_i[6]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[6]_i_23 
       (.I0(RAM_reg_1472_1535_6_8_n_0),
        .I1(RAM_reg_1408_1471_6_8_n_0),
        .I2(\gc0.count_d1_reg[11] [7]),
        .I3(RAM_reg_1344_1407_6_8_n_0),
        .I4(\gc0.count_d1_reg[11] [6]),
        .I5(RAM_reg_1280_1343_6_8_n_0),
        .O(\gpr1.dout_i[6]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[6]_i_24 
       (.I0(RAM_reg_1728_1791_6_8_n_0),
        .I1(RAM_reg_1664_1727_6_8_n_0),
        .I2(\gc0.count_d1_reg[11] [7]),
        .I3(RAM_reg_1600_1663_6_8_n_0),
        .I4(\gc0.count_d1_reg[11] [6]),
        .I5(RAM_reg_1536_1599_6_8_n_0),
        .O(\gpr1.dout_i[6]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[6]_i_25 
       (.I0(RAM_reg_1984_2047_6_8_n_0),
        .I1(RAM_reg_1920_1983_6_8_n_0),
        .I2(\gc0.count_d1_reg[11] [7]),
        .I3(RAM_reg_1856_1919_6_8_n_0),
        .I4(\gc0.count_d1_reg[11] [6]),
        .I5(RAM_reg_1792_1855_6_8_n_0),
        .O(\gpr1.dout_i[6]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[6]_i_26 
       (.I0(RAM_reg_192_255_6_8_n_0),
        .I1(RAM_reg_128_191_6_8_n_0),
        .I2(\gc0.count_d1_reg[11] [7]),
        .I3(RAM_reg_64_127_6_8_n_0),
        .I4(\gc0.count_d1_reg[11] [6]),
        .I5(RAM_reg_0_63_6_8_n_0),
        .O(\gpr1.dout_i[6]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[6]_i_27 
       (.I0(RAM_reg_448_511_6_8_n_0),
        .I1(RAM_reg_384_447_6_8_n_0),
        .I2(\gc0.count_d1_reg[11] [7]),
        .I3(RAM_reg_320_383_6_8_n_0),
        .I4(\gc0.count_d1_reg[11] [6]),
        .I5(RAM_reg_256_319_6_8_n_0),
        .O(\gpr1.dout_i[6]_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[6]_i_28 
       (.I0(RAM_reg_704_767_6_8_n_0),
        .I1(RAM_reg_640_703_6_8_n_0),
        .I2(\gc0.count_d1_reg[11] [7]),
        .I3(RAM_reg_576_639_6_8_n_0),
        .I4(\gc0.count_d1_reg[11] [6]),
        .I5(RAM_reg_512_575_6_8_n_0),
        .O(\gpr1.dout_i[6]_i_28_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[6]_i_29 
       (.I0(RAM_reg_960_1023_6_8_n_0),
        .I1(RAM_reg_896_959_6_8_n_0),
        .I2(\gc0.count_d1_reg[11] [7]),
        .I3(RAM_reg_832_895_6_8_n_0),
        .I4(\gc0.count_d1_reg[11] [6]),
        .I5(RAM_reg_768_831_6_8_n_0),
        .O(\gpr1.dout_i[6]_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[7]_i_1 
       (.I0(\gpr1.dout_i_reg[7]_i_2_n_0 ),
        .I1(\gpr1.dout_i_reg[7]_i_3_n_0 ),
        .I2(\gc0.count_d1_reg[11] [11]),
        .I3(\gpr1.dout_i_reg[7]_i_4_n_0 ),
        .I4(\gc0.count_d1_reg[11] [10]),
        .I5(\gpr1.dout_i_reg[7]_i_5_n_0 ),
        .O(p_0_out[7]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[7]_i_14 
       (.I0(RAM_reg_3264_3327_6_8_n_1),
        .I1(RAM_reg_3200_3263_6_8_n_1),
        .I2(\gc0.count_d1_reg[11] [7]),
        .I3(RAM_reg_3136_3199_6_8_n_1),
        .I4(\gc0.count_d1_reg[11] [6]),
        .I5(RAM_reg_3072_3135_6_8_n_1),
        .O(\gpr1.dout_i[7]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[7]_i_15 
       (.I0(RAM_reg_3520_3583_6_8_n_1),
        .I1(RAM_reg_3456_3519_6_8_n_1),
        .I2(\gc0.count_d1_reg[11] [7]),
        .I3(RAM_reg_3392_3455_6_8_n_1),
        .I4(\gc0.count_d1_reg[11] [6]),
        .I5(RAM_reg_3328_3391_6_8_n_1),
        .O(\gpr1.dout_i[7]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[7]_i_16 
       (.I0(RAM_reg_3776_3839_6_8_n_1),
        .I1(RAM_reg_3712_3775_6_8_n_1),
        .I2(\gc0.count_d1_reg[11] [7]),
        .I3(RAM_reg_3648_3711_6_8_n_1),
        .I4(\gc0.count_d1_reg[11] [6]),
        .I5(RAM_reg_3584_3647_6_8_n_1),
        .O(\gpr1.dout_i[7]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[7]_i_17 
       (.I0(RAM_reg_4032_4095_6_8_n_1),
        .I1(RAM_reg_3968_4031_6_8_n_1),
        .I2(\gc0.count_d1_reg[11] [7]),
        .I3(RAM_reg_3904_3967_6_8_n_1),
        .I4(\gc0.count_d1_reg[11] [6]),
        .I5(RAM_reg_3840_3903_6_8_n_1),
        .O(\gpr1.dout_i[7]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[7]_i_18 
       (.I0(RAM_reg_2240_2303_6_8_n_1),
        .I1(RAM_reg_2176_2239_6_8_n_1),
        .I2(\gc0.count_d1_reg[11] [7]),
        .I3(RAM_reg_2112_2175_6_8_n_1),
        .I4(\gc0.count_d1_reg[11] [6]),
        .I5(RAM_reg_2048_2111_6_8_n_1),
        .O(\gpr1.dout_i[7]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[7]_i_19 
       (.I0(RAM_reg_2496_2559_6_8_n_1),
        .I1(RAM_reg_2432_2495_6_8_n_1),
        .I2(\gc0.count_d1_reg[11] [7]),
        .I3(RAM_reg_2368_2431_6_8_n_1),
        .I4(\gc0.count_d1_reg[11] [6]),
        .I5(RAM_reg_2304_2367_6_8_n_1),
        .O(\gpr1.dout_i[7]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[7]_i_20 
       (.I0(RAM_reg_2752_2815_6_8_n_1),
        .I1(RAM_reg_2688_2751_6_8_n_1),
        .I2(\gc0.count_d1_reg[11] [7]),
        .I3(RAM_reg_2624_2687_6_8_n_1),
        .I4(\gc0.count_d1_reg[11] [6]),
        .I5(RAM_reg_2560_2623_6_8_n_1),
        .O(\gpr1.dout_i[7]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[7]_i_21 
       (.I0(RAM_reg_3008_3071_6_8_n_1),
        .I1(RAM_reg_2944_3007_6_8_n_1),
        .I2(\gc0.count_d1_reg[11] [7]),
        .I3(RAM_reg_2880_2943_6_8_n_1),
        .I4(\gc0.count_d1_reg[11] [6]),
        .I5(RAM_reg_2816_2879_6_8_n_1),
        .O(\gpr1.dout_i[7]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[7]_i_22 
       (.I0(RAM_reg_1216_1279_6_8_n_1),
        .I1(RAM_reg_1152_1215_6_8_n_1),
        .I2(\gc0.count_d1_reg[11] [7]),
        .I3(RAM_reg_1088_1151_6_8_n_1),
        .I4(\gc0.count_d1_reg[11] [6]),
        .I5(RAM_reg_1024_1087_6_8_n_1),
        .O(\gpr1.dout_i[7]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[7]_i_23 
       (.I0(RAM_reg_1472_1535_6_8_n_1),
        .I1(RAM_reg_1408_1471_6_8_n_1),
        .I2(\gc0.count_d1_reg[11] [7]),
        .I3(RAM_reg_1344_1407_6_8_n_1),
        .I4(\gc0.count_d1_reg[11] [6]),
        .I5(RAM_reg_1280_1343_6_8_n_1),
        .O(\gpr1.dout_i[7]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[7]_i_24 
       (.I0(RAM_reg_1728_1791_6_8_n_1),
        .I1(RAM_reg_1664_1727_6_8_n_1),
        .I2(\gc0.count_d1_reg[11] [7]),
        .I3(RAM_reg_1600_1663_6_8_n_1),
        .I4(\gc0.count_d1_reg[11] [6]),
        .I5(RAM_reg_1536_1599_6_8_n_1),
        .O(\gpr1.dout_i[7]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[7]_i_25 
       (.I0(RAM_reg_1984_2047_6_8_n_1),
        .I1(RAM_reg_1920_1983_6_8_n_1),
        .I2(\gc0.count_d1_reg[11] [7]),
        .I3(RAM_reg_1856_1919_6_8_n_1),
        .I4(\gc0.count_d1_reg[11] [6]),
        .I5(RAM_reg_1792_1855_6_8_n_1),
        .O(\gpr1.dout_i[7]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[7]_i_26 
       (.I0(RAM_reg_192_255_6_8_n_1),
        .I1(RAM_reg_128_191_6_8_n_1),
        .I2(\gc0.count_d1_reg[11] [7]),
        .I3(RAM_reg_64_127_6_8_n_1),
        .I4(\gc0.count_d1_reg[11] [6]),
        .I5(RAM_reg_0_63_6_8_n_1),
        .O(\gpr1.dout_i[7]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[7]_i_27 
       (.I0(RAM_reg_448_511_6_8_n_1),
        .I1(RAM_reg_384_447_6_8_n_1),
        .I2(\gc0.count_d1_reg[11] [7]),
        .I3(RAM_reg_320_383_6_8_n_1),
        .I4(\gc0.count_d1_reg[11] [6]),
        .I5(RAM_reg_256_319_6_8_n_1),
        .O(\gpr1.dout_i[7]_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[7]_i_28 
       (.I0(RAM_reg_704_767_6_8_n_1),
        .I1(RAM_reg_640_703_6_8_n_1),
        .I2(\gc0.count_d1_reg[11] [7]),
        .I3(RAM_reg_576_639_6_8_n_1),
        .I4(\gc0.count_d1_reg[11] [6]),
        .I5(RAM_reg_512_575_6_8_n_1),
        .O(\gpr1.dout_i[7]_i_28_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[7]_i_29 
       (.I0(RAM_reg_960_1023_6_8_n_1),
        .I1(RAM_reg_896_959_6_8_n_1),
        .I2(\gc0.count_d1_reg[11] [7]),
        .I3(RAM_reg_832_895_6_8_n_1),
        .I4(\gc0.count_d1_reg[11] [6]),
        .I5(RAM_reg_768_831_6_8_n_1),
        .O(\gpr1.dout_i[7]_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[8]_i_1 
       (.I0(\gpr1.dout_i_reg[8]_i_2_n_0 ),
        .I1(\gpr1.dout_i_reg[8]_i_3_n_0 ),
        .I2(\gc0.count_d1_reg[11] [11]),
        .I3(\gpr1.dout_i_reg[8]_i_4_n_0 ),
        .I4(\gc0.count_d1_reg[11] [10]),
        .I5(\gpr1.dout_i_reg[8]_i_5_n_0 ),
        .O(p_0_out[8]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[8]_i_14 
       (.I0(RAM_reg_3264_3327_6_8_n_2),
        .I1(RAM_reg_3200_3263_6_8_n_2),
        .I2(\gc0.count_d1_reg[7]_rep ),
        .I3(RAM_reg_3136_3199_6_8_n_2),
        .I4(\gc0.count_d1_reg[6]_rep ),
        .I5(RAM_reg_3072_3135_6_8_n_2),
        .O(\gpr1.dout_i[8]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[8]_i_15 
       (.I0(RAM_reg_3520_3583_6_8_n_2),
        .I1(RAM_reg_3456_3519_6_8_n_2),
        .I2(\gc0.count_d1_reg[7]_rep ),
        .I3(RAM_reg_3392_3455_6_8_n_2),
        .I4(\gc0.count_d1_reg[6]_rep ),
        .I5(RAM_reg_3328_3391_6_8_n_2),
        .O(\gpr1.dout_i[8]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[8]_i_16 
       (.I0(RAM_reg_3776_3839_6_8_n_2),
        .I1(RAM_reg_3712_3775_6_8_n_2),
        .I2(\gc0.count_d1_reg[7]_rep ),
        .I3(RAM_reg_3648_3711_6_8_n_2),
        .I4(\gc0.count_d1_reg[6]_rep ),
        .I5(RAM_reg_3584_3647_6_8_n_2),
        .O(\gpr1.dout_i[8]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[8]_i_17 
       (.I0(RAM_reg_4032_4095_6_8_n_2),
        .I1(RAM_reg_3968_4031_6_8_n_2),
        .I2(\gc0.count_d1_reg[7]_rep ),
        .I3(RAM_reg_3904_3967_6_8_n_2),
        .I4(\gc0.count_d1_reg[6]_rep ),
        .I5(RAM_reg_3840_3903_6_8_n_2),
        .O(\gpr1.dout_i[8]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[8]_i_18 
       (.I0(RAM_reg_2240_2303_6_8_n_2),
        .I1(RAM_reg_2176_2239_6_8_n_2),
        .I2(\gc0.count_d1_reg[7]_rep ),
        .I3(RAM_reg_2112_2175_6_8_n_2),
        .I4(\gc0.count_d1_reg[6]_rep ),
        .I5(RAM_reg_2048_2111_6_8_n_2),
        .O(\gpr1.dout_i[8]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[8]_i_19 
       (.I0(RAM_reg_2496_2559_6_8_n_2),
        .I1(RAM_reg_2432_2495_6_8_n_2),
        .I2(\gc0.count_d1_reg[7]_rep ),
        .I3(RAM_reg_2368_2431_6_8_n_2),
        .I4(\gc0.count_d1_reg[6]_rep ),
        .I5(RAM_reg_2304_2367_6_8_n_2),
        .O(\gpr1.dout_i[8]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[8]_i_20 
       (.I0(RAM_reg_2752_2815_6_8_n_2),
        .I1(RAM_reg_2688_2751_6_8_n_2),
        .I2(\gc0.count_d1_reg[7]_rep ),
        .I3(RAM_reg_2624_2687_6_8_n_2),
        .I4(\gc0.count_d1_reg[6]_rep ),
        .I5(RAM_reg_2560_2623_6_8_n_2),
        .O(\gpr1.dout_i[8]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[8]_i_21 
       (.I0(RAM_reg_3008_3071_6_8_n_2),
        .I1(RAM_reg_2944_3007_6_8_n_2),
        .I2(\gc0.count_d1_reg[7]_rep ),
        .I3(RAM_reg_2880_2943_6_8_n_2),
        .I4(\gc0.count_d1_reg[6]_rep ),
        .I5(RAM_reg_2816_2879_6_8_n_2),
        .O(\gpr1.dout_i[8]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[8]_i_22 
       (.I0(RAM_reg_1216_1279_6_8_n_2),
        .I1(RAM_reg_1152_1215_6_8_n_2),
        .I2(\gc0.count_d1_reg[7]_rep ),
        .I3(RAM_reg_1088_1151_6_8_n_2),
        .I4(\gc0.count_d1_reg[6]_rep ),
        .I5(RAM_reg_1024_1087_6_8_n_2),
        .O(\gpr1.dout_i[8]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[8]_i_23 
       (.I0(RAM_reg_1472_1535_6_8_n_2),
        .I1(RAM_reg_1408_1471_6_8_n_2),
        .I2(\gc0.count_d1_reg[7]_rep ),
        .I3(RAM_reg_1344_1407_6_8_n_2),
        .I4(\gc0.count_d1_reg[6]_rep ),
        .I5(RAM_reg_1280_1343_6_8_n_2),
        .O(\gpr1.dout_i[8]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[8]_i_24 
       (.I0(RAM_reg_1728_1791_6_8_n_2),
        .I1(RAM_reg_1664_1727_6_8_n_2),
        .I2(\gc0.count_d1_reg[7]_rep ),
        .I3(RAM_reg_1600_1663_6_8_n_2),
        .I4(\gc0.count_d1_reg[6]_rep ),
        .I5(RAM_reg_1536_1599_6_8_n_2),
        .O(\gpr1.dout_i[8]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[8]_i_25 
       (.I0(RAM_reg_1984_2047_6_8_n_2),
        .I1(RAM_reg_1920_1983_6_8_n_2),
        .I2(\gc0.count_d1_reg[7]_rep ),
        .I3(RAM_reg_1856_1919_6_8_n_2),
        .I4(\gc0.count_d1_reg[6]_rep ),
        .I5(RAM_reg_1792_1855_6_8_n_2),
        .O(\gpr1.dout_i[8]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[8]_i_26 
       (.I0(RAM_reg_192_255_6_8_n_2),
        .I1(RAM_reg_128_191_6_8_n_2),
        .I2(\gc0.count_d1_reg[7]_rep ),
        .I3(RAM_reg_64_127_6_8_n_2),
        .I4(\gc0.count_d1_reg[6]_rep ),
        .I5(RAM_reg_0_63_6_8_n_2),
        .O(\gpr1.dout_i[8]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[8]_i_27 
       (.I0(RAM_reg_448_511_6_8_n_2),
        .I1(RAM_reg_384_447_6_8_n_2),
        .I2(\gc0.count_d1_reg[7]_rep ),
        .I3(RAM_reg_320_383_6_8_n_2),
        .I4(\gc0.count_d1_reg[6]_rep ),
        .I5(RAM_reg_256_319_6_8_n_2),
        .O(\gpr1.dout_i[8]_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[8]_i_28 
       (.I0(RAM_reg_704_767_6_8_n_2),
        .I1(RAM_reg_640_703_6_8_n_2),
        .I2(\gc0.count_d1_reg[7]_rep ),
        .I3(RAM_reg_576_639_6_8_n_2),
        .I4(\gc0.count_d1_reg[6]_rep ),
        .I5(RAM_reg_512_575_6_8_n_2),
        .O(\gpr1.dout_i[8]_i_28_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[8]_i_29 
       (.I0(RAM_reg_960_1023_6_8_n_2),
        .I1(RAM_reg_896_959_6_8_n_2),
        .I2(\gc0.count_d1_reg[7]_rep ),
        .I3(RAM_reg_832_895_6_8_n_2),
        .I4(\gc0.count_d1_reg[6]_rep ),
        .I5(RAM_reg_768_831_6_8_n_2),
        .O(\gpr1.dout_i[8]_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[9]_i_1 
       (.I0(\gpr1.dout_i_reg[9]_i_2_n_0 ),
        .I1(\gpr1.dout_i_reg[9]_i_3_n_0 ),
        .I2(\gc0.count_d1_reg[11] [11]),
        .I3(\gpr1.dout_i_reg[9]_i_4_n_0 ),
        .I4(\gc0.count_d1_reg[11] [10]),
        .I5(\gpr1.dout_i_reg[9]_i_5_n_0 ),
        .O(p_0_out[9]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[9]_i_14 
       (.I0(RAM_reg_3264_3327_9_11_n_0),
        .I1(RAM_reg_3200_3263_9_11_n_0),
        .I2(\gc0.count_d1_reg[7]_rep ),
        .I3(RAM_reg_3136_3199_9_11_n_0),
        .I4(\gc0.count_d1_reg[6]_rep ),
        .I5(RAM_reg_3072_3135_9_11_n_0),
        .O(\gpr1.dout_i[9]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[9]_i_15 
       (.I0(RAM_reg_3520_3583_9_11_n_0),
        .I1(RAM_reg_3456_3519_9_11_n_0),
        .I2(\gc0.count_d1_reg[7]_rep ),
        .I3(RAM_reg_3392_3455_9_11_n_0),
        .I4(\gc0.count_d1_reg[6]_rep ),
        .I5(RAM_reg_3328_3391_9_11_n_0),
        .O(\gpr1.dout_i[9]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[9]_i_16 
       (.I0(RAM_reg_3776_3839_9_11_n_0),
        .I1(RAM_reg_3712_3775_9_11_n_0),
        .I2(\gc0.count_d1_reg[7]_rep ),
        .I3(RAM_reg_3648_3711_9_11_n_0),
        .I4(\gc0.count_d1_reg[6]_rep ),
        .I5(RAM_reg_3584_3647_9_11_n_0),
        .O(\gpr1.dout_i[9]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[9]_i_17 
       (.I0(RAM_reg_4032_4095_9_11_n_0),
        .I1(RAM_reg_3968_4031_9_11_n_0),
        .I2(\gc0.count_d1_reg[7]_rep ),
        .I3(RAM_reg_3904_3967_9_11_n_0),
        .I4(\gc0.count_d1_reg[6]_rep ),
        .I5(RAM_reg_3840_3903_9_11_n_0),
        .O(\gpr1.dout_i[9]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[9]_i_18 
       (.I0(RAM_reg_2240_2303_9_11_n_0),
        .I1(RAM_reg_2176_2239_9_11_n_0),
        .I2(\gc0.count_d1_reg[7]_rep ),
        .I3(RAM_reg_2112_2175_9_11_n_0),
        .I4(\gc0.count_d1_reg[6]_rep ),
        .I5(RAM_reg_2048_2111_9_11_n_0),
        .O(\gpr1.dout_i[9]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[9]_i_19 
       (.I0(RAM_reg_2496_2559_9_11_n_0),
        .I1(RAM_reg_2432_2495_9_11_n_0),
        .I2(\gc0.count_d1_reg[7]_rep ),
        .I3(RAM_reg_2368_2431_9_11_n_0),
        .I4(\gc0.count_d1_reg[6]_rep ),
        .I5(RAM_reg_2304_2367_9_11_n_0),
        .O(\gpr1.dout_i[9]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[9]_i_20 
       (.I0(RAM_reg_2752_2815_9_11_n_0),
        .I1(RAM_reg_2688_2751_9_11_n_0),
        .I2(\gc0.count_d1_reg[7]_rep ),
        .I3(RAM_reg_2624_2687_9_11_n_0),
        .I4(\gc0.count_d1_reg[6]_rep ),
        .I5(RAM_reg_2560_2623_9_11_n_0),
        .O(\gpr1.dout_i[9]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[9]_i_21 
       (.I0(RAM_reg_3008_3071_9_11_n_0),
        .I1(RAM_reg_2944_3007_9_11_n_0),
        .I2(\gc0.count_d1_reg[7]_rep ),
        .I3(RAM_reg_2880_2943_9_11_n_0),
        .I4(\gc0.count_d1_reg[6]_rep ),
        .I5(RAM_reg_2816_2879_9_11_n_0),
        .O(\gpr1.dout_i[9]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[9]_i_22 
       (.I0(RAM_reg_1216_1279_9_11_n_0),
        .I1(RAM_reg_1152_1215_9_11_n_0),
        .I2(\gc0.count_d1_reg[7]_rep ),
        .I3(RAM_reg_1088_1151_9_11_n_0),
        .I4(\gc0.count_d1_reg[6]_rep ),
        .I5(RAM_reg_1024_1087_9_11_n_0),
        .O(\gpr1.dout_i[9]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[9]_i_23 
       (.I0(RAM_reg_1472_1535_9_11_n_0),
        .I1(RAM_reg_1408_1471_9_11_n_0),
        .I2(\gc0.count_d1_reg[7]_rep ),
        .I3(RAM_reg_1344_1407_9_11_n_0),
        .I4(\gc0.count_d1_reg[6]_rep ),
        .I5(RAM_reg_1280_1343_9_11_n_0),
        .O(\gpr1.dout_i[9]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[9]_i_24 
       (.I0(RAM_reg_1728_1791_9_11_n_0),
        .I1(RAM_reg_1664_1727_9_11_n_0),
        .I2(\gc0.count_d1_reg[7]_rep ),
        .I3(RAM_reg_1600_1663_9_11_n_0),
        .I4(\gc0.count_d1_reg[6]_rep ),
        .I5(RAM_reg_1536_1599_9_11_n_0),
        .O(\gpr1.dout_i[9]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[9]_i_25 
       (.I0(RAM_reg_1984_2047_9_11_n_0),
        .I1(RAM_reg_1920_1983_9_11_n_0),
        .I2(\gc0.count_d1_reg[7]_rep ),
        .I3(RAM_reg_1856_1919_9_11_n_0),
        .I4(\gc0.count_d1_reg[6]_rep ),
        .I5(RAM_reg_1792_1855_9_11_n_0),
        .O(\gpr1.dout_i[9]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[9]_i_26 
       (.I0(RAM_reg_192_255_9_11_n_0),
        .I1(RAM_reg_128_191_9_11_n_0),
        .I2(\gc0.count_d1_reg[7]_rep ),
        .I3(RAM_reg_64_127_9_11_n_0),
        .I4(\gc0.count_d1_reg[6]_rep ),
        .I5(RAM_reg_0_63_9_11_n_0),
        .O(\gpr1.dout_i[9]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[9]_i_27 
       (.I0(RAM_reg_448_511_9_11_n_0),
        .I1(RAM_reg_384_447_9_11_n_0),
        .I2(\gc0.count_d1_reg[7]_rep ),
        .I3(RAM_reg_320_383_9_11_n_0),
        .I4(\gc0.count_d1_reg[6]_rep ),
        .I5(RAM_reg_256_319_9_11_n_0),
        .O(\gpr1.dout_i[9]_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[9]_i_28 
       (.I0(RAM_reg_704_767_9_11_n_0),
        .I1(RAM_reg_640_703_9_11_n_0),
        .I2(\gc0.count_d1_reg[7]_rep ),
        .I3(RAM_reg_576_639_9_11_n_0),
        .I4(\gc0.count_d1_reg[6]_rep ),
        .I5(RAM_reg_512_575_9_11_n_0),
        .O(\gpr1.dout_i[9]_i_28_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[9]_i_29 
       (.I0(RAM_reg_960_1023_9_11_n_0),
        .I1(RAM_reg_896_959_9_11_n_0),
        .I2(\gc0.count_d1_reg[7]_rep ),
        .I3(RAM_reg_832_895_9_11_n_0),
        .I4(\gc0.count_d1_reg[6]_rep ),
        .I5(RAM_reg_768_831_9_11_n_0),
        .O(\gpr1.dout_i[9]_i_29_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[0] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR),
        .D(p_0_out[0]),
        .Q(dout[0]));
  MUXF7 \gpr1.dout_i_reg[0]_i_10 
       (.I0(\gpr1.dout_i[0]_i_22_n_0 ),
        .I1(\gpr1.dout_i[0]_i_23_n_0 ),
        .O(\gpr1.dout_i_reg[0]_i_10_n_0 ),
        .S(\gc0.count_d1_reg[11] [8]));
  MUXF7 \gpr1.dout_i_reg[0]_i_11 
       (.I0(\gpr1.dout_i[0]_i_24_n_0 ),
        .I1(\gpr1.dout_i[0]_i_25_n_0 ),
        .O(\gpr1.dout_i_reg[0]_i_11_n_0 ),
        .S(\gc0.count_d1_reg[11] [8]));
  MUXF7 \gpr1.dout_i_reg[0]_i_12 
       (.I0(\gpr1.dout_i[0]_i_26_n_0 ),
        .I1(\gpr1.dout_i[0]_i_27_n_0 ),
        .O(\gpr1.dout_i_reg[0]_i_12_n_0 ),
        .S(\gc0.count_d1_reg[11] [8]));
  MUXF7 \gpr1.dout_i_reg[0]_i_13 
       (.I0(\gpr1.dout_i[0]_i_28_n_0 ),
        .I1(\gpr1.dout_i[0]_i_29_n_0 ),
        .O(\gpr1.dout_i_reg[0]_i_13_n_0 ),
        .S(\gc0.count_d1_reg[11] [8]));
  MUXF8 \gpr1.dout_i_reg[0]_i_2 
       (.I0(\gpr1.dout_i_reg[0]_i_6_n_0 ),
        .I1(\gpr1.dout_i_reg[0]_i_7_n_0 ),
        .O(\gpr1.dout_i_reg[0]_i_2_n_0 ),
        .S(\gc0.count_d1_reg[11] [9]));
  MUXF8 \gpr1.dout_i_reg[0]_i_3 
       (.I0(\gpr1.dout_i_reg[0]_i_8_n_0 ),
        .I1(\gpr1.dout_i_reg[0]_i_9_n_0 ),
        .O(\gpr1.dout_i_reg[0]_i_3_n_0 ),
        .S(\gc0.count_d1_reg[11] [9]));
  MUXF8 \gpr1.dout_i_reg[0]_i_4 
       (.I0(\gpr1.dout_i_reg[0]_i_10_n_0 ),
        .I1(\gpr1.dout_i_reg[0]_i_11_n_0 ),
        .O(\gpr1.dout_i_reg[0]_i_4_n_0 ),
        .S(\gc0.count_d1_reg[11] [9]));
  MUXF8 \gpr1.dout_i_reg[0]_i_5 
       (.I0(\gpr1.dout_i_reg[0]_i_12_n_0 ),
        .I1(\gpr1.dout_i_reg[0]_i_13_n_0 ),
        .O(\gpr1.dout_i_reg[0]_i_5_n_0 ),
        .S(\gc0.count_d1_reg[11] [9]));
  MUXF7 \gpr1.dout_i_reg[0]_i_6 
       (.I0(\gpr1.dout_i[0]_i_14_n_0 ),
        .I1(\gpr1.dout_i[0]_i_15_n_0 ),
        .O(\gpr1.dout_i_reg[0]_i_6_n_0 ),
        .S(\gc0.count_d1_reg[11] [8]));
  MUXF7 \gpr1.dout_i_reg[0]_i_7 
       (.I0(\gpr1.dout_i[0]_i_16_n_0 ),
        .I1(\gpr1.dout_i[0]_i_17_n_0 ),
        .O(\gpr1.dout_i_reg[0]_i_7_n_0 ),
        .S(\gc0.count_d1_reg[11] [8]));
  MUXF7 \gpr1.dout_i_reg[0]_i_8 
       (.I0(\gpr1.dout_i[0]_i_18_n_0 ),
        .I1(\gpr1.dout_i[0]_i_19_n_0 ),
        .O(\gpr1.dout_i_reg[0]_i_8_n_0 ),
        .S(\gc0.count_d1_reg[11] [8]));
  MUXF7 \gpr1.dout_i_reg[0]_i_9 
       (.I0(\gpr1.dout_i[0]_i_20_n_0 ),
        .I1(\gpr1.dout_i[0]_i_21_n_0 ),
        .O(\gpr1.dout_i_reg[0]_i_9_n_0 ),
        .S(\gc0.count_d1_reg[11] [8]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[10] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR),
        .D(p_0_out[10]),
        .Q(dout[10]));
  MUXF7 \gpr1.dout_i_reg[10]_i_10 
       (.I0(\gpr1.dout_i[10]_i_22_n_0 ),
        .I1(\gpr1.dout_i[10]_i_23_n_0 ),
        .O(\gpr1.dout_i_reg[10]_i_10_n_0 ),
        .S(\gc0.count_d1_reg[11] [8]));
  MUXF7 \gpr1.dout_i_reg[10]_i_11 
       (.I0(\gpr1.dout_i[10]_i_24_n_0 ),
        .I1(\gpr1.dout_i[10]_i_25_n_0 ),
        .O(\gpr1.dout_i_reg[10]_i_11_n_0 ),
        .S(\gc0.count_d1_reg[11] [8]));
  MUXF7 \gpr1.dout_i_reg[10]_i_12 
       (.I0(\gpr1.dout_i[10]_i_26_n_0 ),
        .I1(\gpr1.dout_i[10]_i_27_n_0 ),
        .O(\gpr1.dout_i_reg[10]_i_12_n_0 ),
        .S(\gc0.count_d1_reg[11] [8]));
  MUXF7 \gpr1.dout_i_reg[10]_i_13 
       (.I0(\gpr1.dout_i[10]_i_28_n_0 ),
        .I1(\gpr1.dout_i[10]_i_29_n_0 ),
        .O(\gpr1.dout_i_reg[10]_i_13_n_0 ),
        .S(\gc0.count_d1_reg[11] [8]));
  MUXF8 \gpr1.dout_i_reg[10]_i_2 
       (.I0(\gpr1.dout_i_reg[10]_i_6_n_0 ),
        .I1(\gpr1.dout_i_reg[10]_i_7_n_0 ),
        .O(\gpr1.dout_i_reg[10]_i_2_n_0 ),
        .S(\gc0.count_d1_reg[11] [9]));
  MUXF8 \gpr1.dout_i_reg[10]_i_3 
       (.I0(\gpr1.dout_i_reg[10]_i_8_n_0 ),
        .I1(\gpr1.dout_i_reg[10]_i_9_n_0 ),
        .O(\gpr1.dout_i_reg[10]_i_3_n_0 ),
        .S(\gc0.count_d1_reg[11] [9]));
  MUXF8 \gpr1.dout_i_reg[10]_i_4 
       (.I0(\gpr1.dout_i_reg[10]_i_10_n_0 ),
        .I1(\gpr1.dout_i_reg[10]_i_11_n_0 ),
        .O(\gpr1.dout_i_reg[10]_i_4_n_0 ),
        .S(\gc0.count_d1_reg[11] [9]));
  MUXF8 \gpr1.dout_i_reg[10]_i_5 
       (.I0(\gpr1.dout_i_reg[10]_i_12_n_0 ),
        .I1(\gpr1.dout_i_reg[10]_i_13_n_0 ),
        .O(\gpr1.dout_i_reg[10]_i_5_n_0 ),
        .S(\gc0.count_d1_reg[11] [9]));
  MUXF7 \gpr1.dout_i_reg[10]_i_6 
       (.I0(\gpr1.dout_i[10]_i_14_n_0 ),
        .I1(\gpr1.dout_i[10]_i_15_n_0 ),
        .O(\gpr1.dout_i_reg[10]_i_6_n_0 ),
        .S(\gc0.count_d1_reg[11] [8]));
  MUXF7 \gpr1.dout_i_reg[10]_i_7 
       (.I0(\gpr1.dout_i[10]_i_16_n_0 ),
        .I1(\gpr1.dout_i[10]_i_17_n_0 ),
        .O(\gpr1.dout_i_reg[10]_i_7_n_0 ),
        .S(\gc0.count_d1_reg[11] [8]));
  MUXF7 \gpr1.dout_i_reg[10]_i_8 
       (.I0(\gpr1.dout_i[10]_i_18_n_0 ),
        .I1(\gpr1.dout_i[10]_i_19_n_0 ),
        .O(\gpr1.dout_i_reg[10]_i_8_n_0 ),
        .S(\gc0.count_d1_reg[11] [8]));
  MUXF7 \gpr1.dout_i_reg[10]_i_9 
       (.I0(\gpr1.dout_i[10]_i_20_n_0 ),
        .I1(\gpr1.dout_i[10]_i_21_n_0 ),
        .O(\gpr1.dout_i_reg[10]_i_9_n_0 ),
        .S(\gc0.count_d1_reg[11] [8]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[11] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR),
        .D(p_0_out[11]),
        .Q(dout[11]));
  MUXF7 \gpr1.dout_i_reg[11]_i_10 
       (.I0(\gpr1.dout_i[11]_i_22_n_0 ),
        .I1(\gpr1.dout_i[11]_i_23_n_0 ),
        .O(\gpr1.dout_i_reg[11]_i_10_n_0 ),
        .S(\gc0.count_d1_reg[11] [8]));
  MUXF7 \gpr1.dout_i_reg[11]_i_11 
       (.I0(\gpr1.dout_i[11]_i_24_n_0 ),
        .I1(\gpr1.dout_i[11]_i_25_n_0 ),
        .O(\gpr1.dout_i_reg[11]_i_11_n_0 ),
        .S(\gc0.count_d1_reg[11] [8]));
  MUXF7 \gpr1.dout_i_reg[11]_i_12 
       (.I0(\gpr1.dout_i[11]_i_26_n_0 ),
        .I1(\gpr1.dout_i[11]_i_27_n_0 ),
        .O(\gpr1.dout_i_reg[11]_i_12_n_0 ),
        .S(\gc0.count_d1_reg[11] [8]));
  MUXF7 \gpr1.dout_i_reg[11]_i_13 
       (.I0(\gpr1.dout_i[11]_i_28_n_0 ),
        .I1(\gpr1.dout_i[11]_i_29_n_0 ),
        .O(\gpr1.dout_i_reg[11]_i_13_n_0 ),
        .S(\gc0.count_d1_reg[11] [8]));
  MUXF8 \gpr1.dout_i_reg[11]_i_2 
       (.I0(\gpr1.dout_i_reg[11]_i_6_n_0 ),
        .I1(\gpr1.dout_i_reg[11]_i_7_n_0 ),
        .O(\gpr1.dout_i_reg[11]_i_2_n_0 ),
        .S(\gc0.count_d1_reg[11] [9]));
  MUXF8 \gpr1.dout_i_reg[11]_i_3 
       (.I0(\gpr1.dout_i_reg[11]_i_8_n_0 ),
        .I1(\gpr1.dout_i_reg[11]_i_9_n_0 ),
        .O(\gpr1.dout_i_reg[11]_i_3_n_0 ),
        .S(\gc0.count_d1_reg[11] [9]));
  MUXF8 \gpr1.dout_i_reg[11]_i_4 
       (.I0(\gpr1.dout_i_reg[11]_i_10_n_0 ),
        .I1(\gpr1.dout_i_reg[11]_i_11_n_0 ),
        .O(\gpr1.dout_i_reg[11]_i_4_n_0 ),
        .S(\gc0.count_d1_reg[11] [9]));
  MUXF8 \gpr1.dout_i_reg[11]_i_5 
       (.I0(\gpr1.dout_i_reg[11]_i_12_n_0 ),
        .I1(\gpr1.dout_i_reg[11]_i_13_n_0 ),
        .O(\gpr1.dout_i_reg[11]_i_5_n_0 ),
        .S(\gc0.count_d1_reg[11] [9]));
  MUXF7 \gpr1.dout_i_reg[11]_i_6 
       (.I0(\gpr1.dout_i[11]_i_14_n_0 ),
        .I1(\gpr1.dout_i[11]_i_15_n_0 ),
        .O(\gpr1.dout_i_reg[11]_i_6_n_0 ),
        .S(\gc0.count_d1_reg[11] [8]));
  MUXF7 \gpr1.dout_i_reg[11]_i_7 
       (.I0(\gpr1.dout_i[11]_i_16_n_0 ),
        .I1(\gpr1.dout_i[11]_i_17_n_0 ),
        .O(\gpr1.dout_i_reg[11]_i_7_n_0 ),
        .S(\gc0.count_d1_reg[11] [8]));
  MUXF7 \gpr1.dout_i_reg[11]_i_8 
       (.I0(\gpr1.dout_i[11]_i_18_n_0 ),
        .I1(\gpr1.dout_i[11]_i_19_n_0 ),
        .O(\gpr1.dout_i_reg[11]_i_8_n_0 ),
        .S(\gc0.count_d1_reg[11] [8]));
  MUXF7 \gpr1.dout_i_reg[11]_i_9 
       (.I0(\gpr1.dout_i[11]_i_20_n_0 ),
        .I1(\gpr1.dout_i[11]_i_21_n_0 ),
        .O(\gpr1.dout_i_reg[11]_i_9_n_0 ),
        .S(\gc0.count_d1_reg[11] [8]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[12] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR),
        .D(p_0_out[12]),
        .Q(dout[12]));
  MUXF7 \gpr1.dout_i_reg[12]_i_10 
       (.I0(\gpr1.dout_i[12]_i_22_n_0 ),
        .I1(\gpr1.dout_i[12]_i_23_n_0 ),
        .O(\gpr1.dout_i_reg[12]_i_10_n_0 ),
        .S(\gc0.count_d1_reg[11] [8]));
  MUXF7 \gpr1.dout_i_reg[12]_i_11 
       (.I0(\gpr1.dout_i[12]_i_24_n_0 ),
        .I1(\gpr1.dout_i[12]_i_25_n_0 ),
        .O(\gpr1.dout_i_reg[12]_i_11_n_0 ),
        .S(\gc0.count_d1_reg[11] [8]));
  MUXF7 \gpr1.dout_i_reg[12]_i_12 
       (.I0(\gpr1.dout_i[12]_i_26_n_0 ),
        .I1(\gpr1.dout_i[12]_i_27_n_0 ),
        .O(\gpr1.dout_i_reg[12]_i_12_n_0 ),
        .S(\gc0.count_d1_reg[11] [8]));
  MUXF7 \gpr1.dout_i_reg[12]_i_13 
       (.I0(\gpr1.dout_i[12]_i_28_n_0 ),
        .I1(\gpr1.dout_i[12]_i_29_n_0 ),
        .O(\gpr1.dout_i_reg[12]_i_13_n_0 ),
        .S(\gc0.count_d1_reg[11] [8]));
  MUXF8 \gpr1.dout_i_reg[12]_i_2 
       (.I0(\gpr1.dout_i_reg[12]_i_6_n_0 ),
        .I1(\gpr1.dout_i_reg[12]_i_7_n_0 ),
        .O(\gpr1.dout_i_reg[12]_i_2_n_0 ),
        .S(\gc0.count_d1_reg[11] [9]));
  MUXF8 \gpr1.dout_i_reg[12]_i_3 
       (.I0(\gpr1.dout_i_reg[12]_i_8_n_0 ),
        .I1(\gpr1.dout_i_reg[12]_i_9_n_0 ),
        .O(\gpr1.dout_i_reg[12]_i_3_n_0 ),
        .S(\gc0.count_d1_reg[11] [9]));
  MUXF8 \gpr1.dout_i_reg[12]_i_4 
       (.I0(\gpr1.dout_i_reg[12]_i_10_n_0 ),
        .I1(\gpr1.dout_i_reg[12]_i_11_n_0 ),
        .O(\gpr1.dout_i_reg[12]_i_4_n_0 ),
        .S(\gc0.count_d1_reg[11] [9]));
  MUXF8 \gpr1.dout_i_reg[12]_i_5 
       (.I0(\gpr1.dout_i_reg[12]_i_12_n_0 ),
        .I1(\gpr1.dout_i_reg[12]_i_13_n_0 ),
        .O(\gpr1.dout_i_reg[12]_i_5_n_0 ),
        .S(\gc0.count_d1_reg[11] [9]));
  MUXF7 \gpr1.dout_i_reg[12]_i_6 
       (.I0(\gpr1.dout_i[12]_i_14_n_0 ),
        .I1(\gpr1.dout_i[12]_i_15_n_0 ),
        .O(\gpr1.dout_i_reg[12]_i_6_n_0 ),
        .S(\gc0.count_d1_reg[11] [8]));
  MUXF7 \gpr1.dout_i_reg[12]_i_7 
       (.I0(\gpr1.dout_i[12]_i_16_n_0 ),
        .I1(\gpr1.dout_i[12]_i_17_n_0 ),
        .O(\gpr1.dout_i_reg[12]_i_7_n_0 ),
        .S(\gc0.count_d1_reg[11] [8]));
  MUXF7 \gpr1.dout_i_reg[12]_i_8 
       (.I0(\gpr1.dout_i[12]_i_18_n_0 ),
        .I1(\gpr1.dout_i[12]_i_19_n_0 ),
        .O(\gpr1.dout_i_reg[12]_i_8_n_0 ),
        .S(\gc0.count_d1_reg[11] [8]));
  MUXF7 \gpr1.dout_i_reg[12]_i_9 
       (.I0(\gpr1.dout_i[12]_i_20_n_0 ),
        .I1(\gpr1.dout_i[12]_i_21_n_0 ),
        .O(\gpr1.dout_i_reg[12]_i_9_n_0 ),
        .S(\gc0.count_d1_reg[11] [8]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[13] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR),
        .D(p_0_out[13]),
        .Q(dout[13]));
  MUXF7 \gpr1.dout_i_reg[13]_i_10 
       (.I0(\gpr1.dout_i[13]_i_22_n_0 ),
        .I1(\gpr1.dout_i[13]_i_23_n_0 ),
        .O(\gpr1.dout_i_reg[13]_i_10_n_0 ),
        .S(\gc0.count_d1_reg[11] [8]));
  MUXF7 \gpr1.dout_i_reg[13]_i_11 
       (.I0(\gpr1.dout_i[13]_i_24_n_0 ),
        .I1(\gpr1.dout_i[13]_i_25_n_0 ),
        .O(\gpr1.dout_i_reg[13]_i_11_n_0 ),
        .S(\gc0.count_d1_reg[11] [8]));
  MUXF7 \gpr1.dout_i_reg[13]_i_12 
       (.I0(\gpr1.dout_i[13]_i_26_n_0 ),
        .I1(\gpr1.dout_i[13]_i_27_n_0 ),
        .O(\gpr1.dout_i_reg[13]_i_12_n_0 ),
        .S(\gc0.count_d1_reg[11] [8]));
  MUXF7 \gpr1.dout_i_reg[13]_i_13 
       (.I0(\gpr1.dout_i[13]_i_28_n_0 ),
        .I1(\gpr1.dout_i[13]_i_29_n_0 ),
        .O(\gpr1.dout_i_reg[13]_i_13_n_0 ),
        .S(\gc0.count_d1_reg[11] [8]));
  MUXF8 \gpr1.dout_i_reg[13]_i_2 
       (.I0(\gpr1.dout_i_reg[13]_i_6_n_0 ),
        .I1(\gpr1.dout_i_reg[13]_i_7_n_0 ),
        .O(\gpr1.dout_i_reg[13]_i_2_n_0 ),
        .S(\gc0.count_d1_reg[11] [9]));
  MUXF8 \gpr1.dout_i_reg[13]_i_3 
       (.I0(\gpr1.dout_i_reg[13]_i_8_n_0 ),
        .I1(\gpr1.dout_i_reg[13]_i_9_n_0 ),
        .O(\gpr1.dout_i_reg[13]_i_3_n_0 ),
        .S(\gc0.count_d1_reg[11] [9]));
  MUXF8 \gpr1.dout_i_reg[13]_i_4 
       (.I0(\gpr1.dout_i_reg[13]_i_10_n_0 ),
        .I1(\gpr1.dout_i_reg[13]_i_11_n_0 ),
        .O(\gpr1.dout_i_reg[13]_i_4_n_0 ),
        .S(\gc0.count_d1_reg[11] [9]));
  MUXF8 \gpr1.dout_i_reg[13]_i_5 
       (.I0(\gpr1.dout_i_reg[13]_i_12_n_0 ),
        .I1(\gpr1.dout_i_reg[13]_i_13_n_0 ),
        .O(\gpr1.dout_i_reg[13]_i_5_n_0 ),
        .S(\gc0.count_d1_reg[11] [9]));
  MUXF7 \gpr1.dout_i_reg[13]_i_6 
       (.I0(\gpr1.dout_i[13]_i_14_n_0 ),
        .I1(\gpr1.dout_i[13]_i_15_n_0 ),
        .O(\gpr1.dout_i_reg[13]_i_6_n_0 ),
        .S(\gc0.count_d1_reg[11] [8]));
  MUXF7 \gpr1.dout_i_reg[13]_i_7 
       (.I0(\gpr1.dout_i[13]_i_16_n_0 ),
        .I1(\gpr1.dout_i[13]_i_17_n_0 ),
        .O(\gpr1.dout_i_reg[13]_i_7_n_0 ),
        .S(\gc0.count_d1_reg[11] [8]));
  MUXF7 \gpr1.dout_i_reg[13]_i_8 
       (.I0(\gpr1.dout_i[13]_i_18_n_0 ),
        .I1(\gpr1.dout_i[13]_i_19_n_0 ),
        .O(\gpr1.dout_i_reg[13]_i_8_n_0 ),
        .S(\gc0.count_d1_reg[11] [8]));
  MUXF7 \gpr1.dout_i_reg[13]_i_9 
       (.I0(\gpr1.dout_i[13]_i_20_n_0 ),
        .I1(\gpr1.dout_i[13]_i_21_n_0 ),
        .O(\gpr1.dout_i_reg[13]_i_9_n_0 ),
        .S(\gc0.count_d1_reg[11] [8]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[14] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR),
        .D(p_0_out[14]),
        .Q(dout[14]));
  MUXF7 \gpr1.dout_i_reg[14]_i_10 
       (.I0(\gpr1.dout_i[14]_i_22_n_0 ),
        .I1(\gpr1.dout_i[14]_i_23_n_0 ),
        .O(\gpr1.dout_i_reg[14]_i_10_n_0 ),
        .S(\gc0.count_d1_reg[11] [8]));
  MUXF7 \gpr1.dout_i_reg[14]_i_11 
       (.I0(\gpr1.dout_i[14]_i_24_n_0 ),
        .I1(\gpr1.dout_i[14]_i_25_n_0 ),
        .O(\gpr1.dout_i_reg[14]_i_11_n_0 ),
        .S(\gc0.count_d1_reg[11] [8]));
  MUXF7 \gpr1.dout_i_reg[14]_i_12 
       (.I0(\gpr1.dout_i[14]_i_26_n_0 ),
        .I1(\gpr1.dout_i[14]_i_27_n_0 ),
        .O(\gpr1.dout_i_reg[14]_i_12_n_0 ),
        .S(\gc0.count_d1_reg[11] [8]));
  MUXF7 \gpr1.dout_i_reg[14]_i_13 
       (.I0(\gpr1.dout_i[14]_i_28_n_0 ),
        .I1(\gpr1.dout_i[14]_i_29_n_0 ),
        .O(\gpr1.dout_i_reg[14]_i_13_n_0 ),
        .S(\gc0.count_d1_reg[11] [8]));
  MUXF8 \gpr1.dout_i_reg[14]_i_2 
       (.I0(\gpr1.dout_i_reg[14]_i_6_n_0 ),
        .I1(\gpr1.dout_i_reg[14]_i_7_n_0 ),
        .O(\gpr1.dout_i_reg[14]_i_2_n_0 ),
        .S(\gc0.count_d1_reg[11] [9]));
  MUXF8 \gpr1.dout_i_reg[14]_i_3 
       (.I0(\gpr1.dout_i_reg[14]_i_8_n_0 ),
        .I1(\gpr1.dout_i_reg[14]_i_9_n_0 ),
        .O(\gpr1.dout_i_reg[14]_i_3_n_0 ),
        .S(\gc0.count_d1_reg[11] [9]));
  MUXF8 \gpr1.dout_i_reg[14]_i_4 
       (.I0(\gpr1.dout_i_reg[14]_i_10_n_0 ),
        .I1(\gpr1.dout_i_reg[14]_i_11_n_0 ),
        .O(\gpr1.dout_i_reg[14]_i_4_n_0 ),
        .S(\gc0.count_d1_reg[11] [9]));
  MUXF8 \gpr1.dout_i_reg[14]_i_5 
       (.I0(\gpr1.dout_i_reg[14]_i_12_n_0 ),
        .I1(\gpr1.dout_i_reg[14]_i_13_n_0 ),
        .O(\gpr1.dout_i_reg[14]_i_5_n_0 ),
        .S(\gc0.count_d1_reg[11] [9]));
  MUXF7 \gpr1.dout_i_reg[14]_i_6 
       (.I0(\gpr1.dout_i[14]_i_14_n_0 ),
        .I1(\gpr1.dout_i[14]_i_15_n_0 ),
        .O(\gpr1.dout_i_reg[14]_i_6_n_0 ),
        .S(\gc0.count_d1_reg[11] [8]));
  MUXF7 \gpr1.dout_i_reg[14]_i_7 
       (.I0(\gpr1.dout_i[14]_i_16_n_0 ),
        .I1(\gpr1.dout_i[14]_i_17_n_0 ),
        .O(\gpr1.dout_i_reg[14]_i_7_n_0 ),
        .S(\gc0.count_d1_reg[11] [8]));
  MUXF7 \gpr1.dout_i_reg[14]_i_8 
       (.I0(\gpr1.dout_i[14]_i_18_n_0 ),
        .I1(\gpr1.dout_i[14]_i_19_n_0 ),
        .O(\gpr1.dout_i_reg[14]_i_8_n_0 ),
        .S(\gc0.count_d1_reg[11] [8]));
  MUXF7 \gpr1.dout_i_reg[14]_i_9 
       (.I0(\gpr1.dout_i[14]_i_20_n_0 ),
        .I1(\gpr1.dout_i[14]_i_21_n_0 ),
        .O(\gpr1.dout_i_reg[14]_i_9_n_0 ),
        .S(\gc0.count_d1_reg[11] [8]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[15] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR),
        .D(p_0_out[15]),
        .Q(dout[15]));
  MUXF7 \gpr1.dout_i_reg[15]_i_10 
       (.I0(\gpr1.dout_i[15]_i_21_n_0 ),
        .I1(\gpr1.dout_i[15]_i_22_n_0 ),
        .O(\gpr1.dout_i_reg[15]_i_10_n_0 ),
        .S(\gc0.count_d1_reg[11] [8]));
  MUXF7 \gpr1.dout_i_reg[15]_i_11 
       (.I0(\gpr1.dout_i[15]_i_23_n_0 ),
        .I1(\gpr1.dout_i[15]_i_24_n_0 ),
        .O(\gpr1.dout_i_reg[15]_i_11_n_0 ),
        .S(\gc0.count_d1_reg[11] [8]));
  MUXF7 \gpr1.dout_i_reg[15]_i_12 
       (.I0(\gpr1.dout_i[15]_i_25_n_0 ),
        .I1(\gpr1.dout_i[15]_i_26_n_0 ),
        .O(\gpr1.dout_i_reg[15]_i_12_n_0 ),
        .S(\gc0.count_d1_reg[11] [8]));
  MUXF7 \gpr1.dout_i_reg[15]_i_13 
       (.I0(\gpr1.dout_i[15]_i_27_n_0 ),
        .I1(\gpr1.dout_i[15]_i_28_n_0 ),
        .O(\gpr1.dout_i_reg[15]_i_13_n_0 ),
        .S(\gc0.count_d1_reg[11] [8]));
  MUXF7 \gpr1.dout_i_reg[15]_i_14 
       (.I0(\gpr1.dout_i[15]_i_29_n_0 ),
        .I1(\gpr1.dout_i[15]_i_30_n_0 ),
        .O(\gpr1.dout_i_reg[15]_i_14_n_0 ),
        .S(\gc0.count_d1_reg[11] [8]));
  MUXF8 \gpr1.dout_i_reg[15]_i_3 
       (.I0(\gpr1.dout_i_reg[15]_i_7_n_0 ),
        .I1(\gpr1.dout_i_reg[15]_i_8_n_0 ),
        .O(\gpr1.dout_i_reg[15]_i_3_n_0 ),
        .S(\gc0.count_d1_reg[11] [9]));
  MUXF8 \gpr1.dout_i_reg[15]_i_4 
       (.I0(\gpr1.dout_i_reg[15]_i_9_n_0 ),
        .I1(\gpr1.dout_i_reg[15]_i_10_n_0 ),
        .O(\gpr1.dout_i_reg[15]_i_4_n_0 ),
        .S(\gc0.count_d1_reg[11] [9]));
  MUXF8 \gpr1.dout_i_reg[15]_i_5 
       (.I0(\gpr1.dout_i_reg[15]_i_11_n_0 ),
        .I1(\gpr1.dout_i_reg[15]_i_12_n_0 ),
        .O(\gpr1.dout_i_reg[15]_i_5_n_0 ),
        .S(\gc0.count_d1_reg[11] [9]));
  MUXF8 \gpr1.dout_i_reg[15]_i_6 
       (.I0(\gpr1.dout_i_reg[15]_i_13_n_0 ),
        .I1(\gpr1.dout_i_reg[15]_i_14_n_0 ),
        .O(\gpr1.dout_i_reg[15]_i_6_n_0 ),
        .S(\gc0.count_d1_reg[11] [9]));
  MUXF7 \gpr1.dout_i_reg[15]_i_7 
       (.I0(\gpr1.dout_i[15]_i_15_n_0 ),
        .I1(\gpr1.dout_i[15]_i_16_n_0 ),
        .O(\gpr1.dout_i_reg[15]_i_7_n_0 ),
        .S(\gc0.count_d1_reg[11] [8]));
  MUXF7 \gpr1.dout_i_reg[15]_i_8 
       (.I0(\gpr1.dout_i[15]_i_17_n_0 ),
        .I1(\gpr1.dout_i[15]_i_18_n_0 ),
        .O(\gpr1.dout_i_reg[15]_i_8_n_0 ),
        .S(\gc0.count_d1_reg[11] [8]));
  MUXF7 \gpr1.dout_i_reg[15]_i_9 
       (.I0(\gpr1.dout_i[15]_i_19_n_0 ),
        .I1(\gpr1.dout_i[15]_i_20_n_0 ),
        .O(\gpr1.dout_i_reg[15]_i_9_n_0 ),
        .S(\gc0.count_d1_reg[11] [8]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[1] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR),
        .D(p_0_out[1]),
        .Q(dout[1]));
  MUXF7 \gpr1.dout_i_reg[1]_i_10 
       (.I0(\gpr1.dout_i[1]_i_22_n_0 ),
        .I1(\gpr1.dout_i[1]_i_23_n_0 ),
        .O(\gpr1.dout_i_reg[1]_i_10_n_0 ),
        .S(\gc0.count_d1_reg[11] [8]));
  MUXF7 \gpr1.dout_i_reg[1]_i_11 
       (.I0(\gpr1.dout_i[1]_i_24_n_0 ),
        .I1(\gpr1.dout_i[1]_i_25_n_0 ),
        .O(\gpr1.dout_i_reg[1]_i_11_n_0 ),
        .S(\gc0.count_d1_reg[11] [8]));
  MUXF7 \gpr1.dout_i_reg[1]_i_12 
       (.I0(\gpr1.dout_i[1]_i_26_n_0 ),
        .I1(\gpr1.dout_i[1]_i_27_n_0 ),
        .O(\gpr1.dout_i_reg[1]_i_12_n_0 ),
        .S(\gc0.count_d1_reg[11] [8]));
  MUXF7 \gpr1.dout_i_reg[1]_i_13 
       (.I0(\gpr1.dout_i[1]_i_28_n_0 ),
        .I1(\gpr1.dout_i[1]_i_29_n_0 ),
        .O(\gpr1.dout_i_reg[1]_i_13_n_0 ),
        .S(\gc0.count_d1_reg[11] [8]));
  MUXF8 \gpr1.dout_i_reg[1]_i_2 
       (.I0(\gpr1.dout_i_reg[1]_i_6_n_0 ),
        .I1(\gpr1.dout_i_reg[1]_i_7_n_0 ),
        .O(\gpr1.dout_i_reg[1]_i_2_n_0 ),
        .S(\gc0.count_d1_reg[11] [9]));
  MUXF8 \gpr1.dout_i_reg[1]_i_3 
       (.I0(\gpr1.dout_i_reg[1]_i_8_n_0 ),
        .I1(\gpr1.dout_i_reg[1]_i_9_n_0 ),
        .O(\gpr1.dout_i_reg[1]_i_3_n_0 ),
        .S(\gc0.count_d1_reg[11] [9]));
  MUXF8 \gpr1.dout_i_reg[1]_i_4 
       (.I0(\gpr1.dout_i_reg[1]_i_10_n_0 ),
        .I1(\gpr1.dout_i_reg[1]_i_11_n_0 ),
        .O(\gpr1.dout_i_reg[1]_i_4_n_0 ),
        .S(\gc0.count_d1_reg[11] [9]));
  MUXF8 \gpr1.dout_i_reg[1]_i_5 
       (.I0(\gpr1.dout_i_reg[1]_i_12_n_0 ),
        .I1(\gpr1.dout_i_reg[1]_i_13_n_0 ),
        .O(\gpr1.dout_i_reg[1]_i_5_n_0 ),
        .S(\gc0.count_d1_reg[11] [9]));
  MUXF7 \gpr1.dout_i_reg[1]_i_6 
       (.I0(\gpr1.dout_i[1]_i_14_n_0 ),
        .I1(\gpr1.dout_i[1]_i_15_n_0 ),
        .O(\gpr1.dout_i_reg[1]_i_6_n_0 ),
        .S(\gc0.count_d1_reg[11] [8]));
  MUXF7 \gpr1.dout_i_reg[1]_i_7 
       (.I0(\gpr1.dout_i[1]_i_16_n_0 ),
        .I1(\gpr1.dout_i[1]_i_17_n_0 ),
        .O(\gpr1.dout_i_reg[1]_i_7_n_0 ),
        .S(\gc0.count_d1_reg[11] [8]));
  MUXF7 \gpr1.dout_i_reg[1]_i_8 
       (.I0(\gpr1.dout_i[1]_i_18_n_0 ),
        .I1(\gpr1.dout_i[1]_i_19_n_0 ),
        .O(\gpr1.dout_i_reg[1]_i_8_n_0 ),
        .S(\gc0.count_d1_reg[11] [8]));
  MUXF7 \gpr1.dout_i_reg[1]_i_9 
       (.I0(\gpr1.dout_i[1]_i_20_n_0 ),
        .I1(\gpr1.dout_i[1]_i_21_n_0 ),
        .O(\gpr1.dout_i_reg[1]_i_9_n_0 ),
        .S(\gc0.count_d1_reg[11] [8]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[2] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR),
        .D(p_0_out[2]),
        .Q(dout[2]));
  MUXF7 \gpr1.dout_i_reg[2]_i_10 
       (.I0(\gpr1.dout_i[2]_i_22_n_0 ),
        .I1(\gpr1.dout_i[2]_i_23_n_0 ),
        .O(\gpr1.dout_i_reg[2]_i_10_n_0 ),
        .S(\gc0.count_d1_reg[11] [8]));
  MUXF7 \gpr1.dout_i_reg[2]_i_11 
       (.I0(\gpr1.dout_i[2]_i_24_n_0 ),
        .I1(\gpr1.dout_i[2]_i_25_n_0 ),
        .O(\gpr1.dout_i_reg[2]_i_11_n_0 ),
        .S(\gc0.count_d1_reg[11] [8]));
  MUXF7 \gpr1.dout_i_reg[2]_i_12 
       (.I0(\gpr1.dout_i[2]_i_26_n_0 ),
        .I1(\gpr1.dout_i[2]_i_27_n_0 ),
        .O(\gpr1.dout_i_reg[2]_i_12_n_0 ),
        .S(\gc0.count_d1_reg[11] [8]));
  MUXF7 \gpr1.dout_i_reg[2]_i_13 
       (.I0(\gpr1.dout_i[2]_i_28_n_0 ),
        .I1(\gpr1.dout_i[2]_i_29_n_0 ),
        .O(\gpr1.dout_i_reg[2]_i_13_n_0 ),
        .S(\gc0.count_d1_reg[11] [8]));
  MUXF8 \gpr1.dout_i_reg[2]_i_2 
       (.I0(\gpr1.dout_i_reg[2]_i_6_n_0 ),
        .I1(\gpr1.dout_i_reg[2]_i_7_n_0 ),
        .O(\gpr1.dout_i_reg[2]_i_2_n_0 ),
        .S(\gc0.count_d1_reg[11] [9]));
  MUXF8 \gpr1.dout_i_reg[2]_i_3 
       (.I0(\gpr1.dout_i_reg[2]_i_8_n_0 ),
        .I1(\gpr1.dout_i_reg[2]_i_9_n_0 ),
        .O(\gpr1.dout_i_reg[2]_i_3_n_0 ),
        .S(\gc0.count_d1_reg[11] [9]));
  MUXF8 \gpr1.dout_i_reg[2]_i_4 
       (.I0(\gpr1.dout_i_reg[2]_i_10_n_0 ),
        .I1(\gpr1.dout_i_reg[2]_i_11_n_0 ),
        .O(\gpr1.dout_i_reg[2]_i_4_n_0 ),
        .S(\gc0.count_d1_reg[11] [9]));
  MUXF8 \gpr1.dout_i_reg[2]_i_5 
       (.I0(\gpr1.dout_i_reg[2]_i_12_n_0 ),
        .I1(\gpr1.dout_i_reg[2]_i_13_n_0 ),
        .O(\gpr1.dout_i_reg[2]_i_5_n_0 ),
        .S(\gc0.count_d1_reg[11] [9]));
  MUXF7 \gpr1.dout_i_reg[2]_i_6 
       (.I0(\gpr1.dout_i[2]_i_14_n_0 ),
        .I1(\gpr1.dout_i[2]_i_15_n_0 ),
        .O(\gpr1.dout_i_reg[2]_i_6_n_0 ),
        .S(\gc0.count_d1_reg[11] [8]));
  MUXF7 \gpr1.dout_i_reg[2]_i_7 
       (.I0(\gpr1.dout_i[2]_i_16_n_0 ),
        .I1(\gpr1.dout_i[2]_i_17_n_0 ),
        .O(\gpr1.dout_i_reg[2]_i_7_n_0 ),
        .S(\gc0.count_d1_reg[11] [8]));
  MUXF7 \gpr1.dout_i_reg[2]_i_8 
       (.I0(\gpr1.dout_i[2]_i_18_n_0 ),
        .I1(\gpr1.dout_i[2]_i_19_n_0 ),
        .O(\gpr1.dout_i_reg[2]_i_8_n_0 ),
        .S(\gc0.count_d1_reg[11] [8]));
  MUXF7 \gpr1.dout_i_reg[2]_i_9 
       (.I0(\gpr1.dout_i[2]_i_20_n_0 ),
        .I1(\gpr1.dout_i[2]_i_21_n_0 ),
        .O(\gpr1.dout_i_reg[2]_i_9_n_0 ),
        .S(\gc0.count_d1_reg[11] [8]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[3] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR),
        .D(p_0_out[3]),
        .Q(dout[3]));
  MUXF7 \gpr1.dout_i_reg[3]_i_10 
       (.I0(\gpr1.dout_i[3]_i_22_n_0 ),
        .I1(\gpr1.dout_i[3]_i_23_n_0 ),
        .O(\gpr1.dout_i_reg[3]_i_10_n_0 ),
        .S(\gc0.count_d1_reg[11] [8]));
  MUXF7 \gpr1.dout_i_reg[3]_i_11 
       (.I0(\gpr1.dout_i[3]_i_24_n_0 ),
        .I1(\gpr1.dout_i[3]_i_25_n_0 ),
        .O(\gpr1.dout_i_reg[3]_i_11_n_0 ),
        .S(\gc0.count_d1_reg[11] [8]));
  MUXF7 \gpr1.dout_i_reg[3]_i_12 
       (.I0(\gpr1.dout_i[3]_i_26_n_0 ),
        .I1(\gpr1.dout_i[3]_i_27_n_0 ),
        .O(\gpr1.dout_i_reg[3]_i_12_n_0 ),
        .S(\gc0.count_d1_reg[11] [8]));
  MUXF7 \gpr1.dout_i_reg[3]_i_13 
       (.I0(\gpr1.dout_i[3]_i_28_n_0 ),
        .I1(\gpr1.dout_i[3]_i_29_n_0 ),
        .O(\gpr1.dout_i_reg[3]_i_13_n_0 ),
        .S(\gc0.count_d1_reg[11] [8]));
  MUXF8 \gpr1.dout_i_reg[3]_i_2 
       (.I0(\gpr1.dout_i_reg[3]_i_6_n_0 ),
        .I1(\gpr1.dout_i_reg[3]_i_7_n_0 ),
        .O(\gpr1.dout_i_reg[3]_i_2_n_0 ),
        .S(\gc0.count_d1_reg[11] [9]));
  MUXF8 \gpr1.dout_i_reg[3]_i_3 
       (.I0(\gpr1.dout_i_reg[3]_i_8_n_0 ),
        .I1(\gpr1.dout_i_reg[3]_i_9_n_0 ),
        .O(\gpr1.dout_i_reg[3]_i_3_n_0 ),
        .S(\gc0.count_d1_reg[11] [9]));
  MUXF8 \gpr1.dout_i_reg[3]_i_4 
       (.I0(\gpr1.dout_i_reg[3]_i_10_n_0 ),
        .I1(\gpr1.dout_i_reg[3]_i_11_n_0 ),
        .O(\gpr1.dout_i_reg[3]_i_4_n_0 ),
        .S(\gc0.count_d1_reg[11] [9]));
  MUXF8 \gpr1.dout_i_reg[3]_i_5 
       (.I0(\gpr1.dout_i_reg[3]_i_12_n_0 ),
        .I1(\gpr1.dout_i_reg[3]_i_13_n_0 ),
        .O(\gpr1.dout_i_reg[3]_i_5_n_0 ),
        .S(\gc0.count_d1_reg[11] [9]));
  MUXF7 \gpr1.dout_i_reg[3]_i_6 
       (.I0(\gpr1.dout_i[3]_i_14_n_0 ),
        .I1(\gpr1.dout_i[3]_i_15_n_0 ),
        .O(\gpr1.dout_i_reg[3]_i_6_n_0 ),
        .S(\gc0.count_d1_reg[11] [8]));
  MUXF7 \gpr1.dout_i_reg[3]_i_7 
       (.I0(\gpr1.dout_i[3]_i_16_n_0 ),
        .I1(\gpr1.dout_i[3]_i_17_n_0 ),
        .O(\gpr1.dout_i_reg[3]_i_7_n_0 ),
        .S(\gc0.count_d1_reg[11] [8]));
  MUXF7 \gpr1.dout_i_reg[3]_i_8 
       (.I0(\gpr1.dout_i[3]_i_18_n_0 ),
        .I1(\gpr1.dout_i[3]_i_19_n_0 ),
        .O(\gpr1.dout_i_reg[3]_i_8_n_0 ),
        .S(\gc0.count_d1_reg[11] [8]));
  MUXF7 \gpr1.dout_i_reg[3]_i_9 
       (.I0(\gpr1.dout_i[3]_i_20_n_0 ),
        .I1(\gpr1.dout_i[3]_i_21_n_0 ),
        .O(\gpr1.dout_i_reg[3]_i_9_n_0 ),
        .S(\gc0.count_d1_reg[11] [8]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[4] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR),
        .D(p_0_out[4]),
        .Q(dout[4]));
  MUXF7 \gpr1.dout_i_reg[4]_i_10 
       (.I0(\gpr1.dout_i[4]_i_22_n_0 ),
        .I1(\gpr1.dout_i[4]_i_23_n_0 ),
        .O(\gpr1.dout_i_reg[4]_i_10_n_0 ),
        .S(\gc0.count_d1_reg[11] [8]));
  MUXF7 \gpr1.dout_i_reg[4]_i_11 
       (.I0(\gpr1.dout_i[4]_i_24_n_0 ),
        .I1(\gpr1.dout_i[4]_i_25_n_0 ),
        .O(\gpr1.dout_i_reg[4]_i_11_n_0 ),
        .S(\gc0.count_d1_reg[11] [8]));
  MUXF7 \gpr1.dout_i_reg[4]_i_12 
       (.I0(\gpr1.dout_i[4]_i_26_n_0 ),
        .I1(\gpr1.dout_i[4]_i_27_n_0 ),
        .O(\gpr1.dout_i_reg[4]_i_12_n_0 ),
        .S(\gc0.count_d1_reg[11] [8]));
  MUXF7 \gpr1.dout_i_reg[4]_i_13 
       (.I0(\gpr1.dout_i[4]_i_28_n_0 ),
        .I1(\gpr1.dout_i[4]_i_29_n_0 ),
        .O(\gpr1.dout_i_reg[4]_i_13_n_0 ),
        .S(\gc0.count_d1_reg[11] [8]));
  MUXF8 \gpr1.dout_i_reg[4]_i_2 
       (.I0(\gpr1.dout_i_reg[4]_i_6_n_0 ),
        .I1(\gpr1.dout_i_reg[4]_i_7_n_0 ),
        .O(\gpr1.dout_i_reg[4]_i_2_n_0 ),
        .S(\gc0.count_d1_reg[11] [9]));
  MUXF8 \gpr1.dout_i_reg[4]_i_3 
       (.I0(\gpr1.dout_i_reg[4]_i_8_n_0 ),
        .I1(\gpr1.dout_i_reg[4]_i_9_n_0 ),
        .O(\gpr1.dout_i_reg[4]_i_3_n_0 ),
        .S(\gc0.count_d1_reg[11] [9]));
  MUXF8 \gpr1.dout_i_reg[4]_i_4 
       (.I0(\gpr1.dout_i_reg[4]_i_10_n_0 ),
        .I1(\gpr1.dout_i_reg[4]_i_11_n_0 ),
        .O(\gpr1.dout_i_reg[4]_i_4_n_0 ),
        .S(\gc0.count_d1_reg[11] [9]));
  MUXF8 \gpr1.dout_i_reg[4]_i_5 
       (.I0(\gpr1.dout_i_reg[4]_i_12_n_0 ),
        .I1(\gpr1.dout_i_reg[4]_i_13_n_0 ),
        .O(\gpr1.dout_i_reg[4]_i_5_n_0 ),
        .S(\gc0.count_d1_reg[11] [9]));
  MUXF7 \gpr1.dout_i_reg[4]_i_6 
       (.I0(\gpr1.dout_i[4]_i_14_n_0 ),
        .I1(\gpr1.dout_i[4]_i_15_n_0 ),
        .O(\gpr1.dout_i_reg[4]_i_6_n_0 ),
        .S(\gc0.count_d1_reg[11] [8]));
  MUXF7 \gpr1.dout_i_reg[4]_i_7 
       (.I0(\gpr1.dout_i[4]_i_16_n_0 ),
        .I1(\gpr1.dout_i[4]_i_17_n_0 ),
        .O(\gpr1.dout_i_reg[4]_i_7_n_0 ),
        .S(\gc0.count_d1_reg[11] [8]));
  MUXF7 \gpr1.dout_i_reg[4]_i_8 
       (.I0(\gpr1.dout_i[4]_i_18_n_0 ),
        .I1(\gpr1.dout_i[4]_i_19_n_0 ),
        .O(\gpr1.dout_i_reg[4]_i_8_n_0 ),
        .S(\gc0.count_d1_reg[11] [8]));
  MUXF7 \gpr1.dout_i_reg[4]_i_9 
       (.I0(\gpr1.dout_i[4]_i_20_n_0 ),
        .I1(\gpr1.dout_i[4]_i_21_n_0 ),
        .O(\gpr1.dout_i_reg[4]_i_9_n_0 ),
        .S(\gc0.count_d1_reg[11] [8]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[5] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR),
        .D(p_0_out[5]),
        .Q(dout[5]));
  MUXF7 \gpr1.dout_i_reg[5]_i_10 
       (.I0(\gpr1.dout_i[5]_i_22_n_0 ),
        .I1(\gpr1.dout_i[5]_i_23_n_0 ),
        .O(\gpr1.dout_i_reg[5]_i_10_n_0 ),
        .S(\gc0.count_d1_reg[11] [8]));
  MUXF7 \gpr1.dout_i_reg[5]_i_11 
       (.I0(\gpr1.dout_i[5]_i_24_n_0 ),
        .I1(\gpr1.dout_i[5]_i_25_n_0 ),
        .O(\gpr1.dout_i_reg[5]_i_11_n_0 ),
        .S(\gc0.count_d1_reg[11] [8]));
  MUXF7 \gpr1.dout_i_reg[5]_i_12 
       (.I0(\gpr1.dout_i[5]_i_26_n_0 ),
        .I1(\gpr1.dout_i[5]_i_27_n_0 ),
        .O(\gpr1.dout_i_reg[5]_i_12_n_0 ),
        .S(\gc0.count_d1_reg[11] [8]));
  MUXF7 \gpr1.dout_i_reg[5]_i_13 
       (.I0(\gpr1.dout_i[5]_i_28_n_0 ),
        .I1(\gpr1.dout_i[5]_i_29_n_0 ),
        .O(\gpr1.dout_i_reg[5]_i_13_n_0 ),
        .S(\gc0.count_d1_reg[11] [8]));
  MUXF8 \gpr1.dout_i_reg[5]_i_2 
       (.I0(\gpr1.dout_i_reg[5]_i_6_n_0 ),
        .I1(\gpr1.dout_i_reg[5]_i_7_n_0 ),
        .O(\gpr1.dout_i_reg[5]_i_2_n_0 ),
        .S(\gc0.count_d1_reg[11] [9]));
  MUXF8 \gpr1.dout_i_reg[5]_i_3 
       (.I0(\gpr1.dout_i_reg[5]_i_8_n_0 ),
        .I1(\gpr1.dout_i_reg[5]_i_9_n_0 ),
        .O(\gpr1.dout_i_reg[5]_i_3_n_0 ),
        .S(\gc0.count_d1_reg[11] [9]));
  MUXF8 \gpr1.dout_i_reg[5]_i_4 
       (.I0(\gpr1.dout_i_reg[5]_i_10_n_0 ),
        .I1(\gpr1.dout_i_reg[5]_i_11_n_0 ),
        .O(\gpr1.dout_i_reg[5]_i_4_n_0 ),
        .S(\gc0.count_d1_reg[11] [9]));
  MUXF8 \gpr1.dout_i_reg[5]_i_5 
       (.I0(\gpr1.dout_i_reg[5]_i_12_n_0 ),
        .I1(\gpr1.dout_i_reg[5]_i_13_n_0 ),
        .O(\gpr1.dout_i_reg[5]_i_5_n_0 ),
        .S(\gc0.count_d1_reg[11] [9]));
  MUXF7 \gpr1.dout_i_reg[5]_i_6 
       (.I0(\gpr1.dout_i[5]_i_14_n_0 ),
        .I1(\gpr1.dout_i[5]_i_15_n_0 ),
        .O(\gpr1.dout_i_reg[5]_i_6_n_0 ),
        .S(\gc0.count_d1_reg[11] [8]));
  MUXF7 \gpr1.dout_i_reg[5]_i_7 
       (.I0(\gpr1.dout_i[5]_i_16_n_0 ),
        .I1(\gpr1.dout_i[5]_i_17_n_0 ),
        .O(\gpr1.dout_i_reg[5]_i_7_n_0 ),
        .S(\gc0.count_d1_reg[11] [8]));
  MUXF7 \gpr1.dout_i_reg[5]_i_8 
       (.I0(\gpr1.dout_i[5]_i_18_n_0 ),
        .I1(\gpr1.dout_i[5]_i_19_n_0 ),
        .O(\gpr1.dout_i_reg[5]_i_8_n_0 ),
        .S(\gc0.count_d1_reg[11] [8]));
  MUXF7 \gpr1.dout_i_reg[5]_i_9 
       (.I0(\gpr1.dout_i[5]_i_20_n_0 ),
        .I1(\gpr1.dout_i[5]_i_21_n_0 ),
        .O(\gpr1.dout_i_reg[5]_i_9_n_0 ),
        .S(\gc0.count_d1_reg[11] [8]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[6] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR),
        .D(p_0_out[6]),
        .Q(dout[6]));
  MUXF7 \gpr1.dout_i_reg[6]_i_10 
       (.I0(\gpr1.dout_i[6]_i_22_n_0 ),
        .I1(\gpr1.dout_i[6]_i_23_n_0 ),
        .O(\gpr1.dout_i_reg[6]_i_10_n_0 ),
        .S(\gc0.count_d1_reg[11] [8]));
  MUXF7 \gpr1.dout_i_reg[6]_i_11 
       (.I0(\gpr1.dout_i[6]_i_24_n_0 ),
        .I1(\gpr1.dout_i[6]_i_25_n_0 ),
        .O(\gpr1.dout_i_reg[6]_i_11_n_0 ),
        .S(\gc0.count_d1_reg[11] [8]));
  MUXF7 \gpr1.dout_i_reg[6]_i_12 
       (.I0(\gpr1.dout_i[6]_i_26_n_0 ),
        .I1(\gpr1.dout_i[6]_i_27_n_0 ),
        .O(\gpr1.dout_i_reg[6]_i_12_n_0 ),
        .S(\gc0.count_d1_reg[11] [8]));
  MUXF7 \gpr1.dout_i_reg[6]_i_13 
       (.I0(\gpr1.dout_i[6]_i_28_n_0 ),
        .I1(\gpr1.dout_i[6]_i_29_n_0 ),
        .O(\gpr1.dout_i_reg[6]_i_13_n_0 ),
        .S(\gc0.count_d1_reg[11] [8]));
  MUXF8 \gpr1.dout_i_reg[6]_i_2 
       (.I0(\gpr1.dout_i_reg[6]_i_6_n_0 ),
        .I1(\gpr1.dout_i_reg[6]_i_7_n_0 ),
        .O(\gpr1.dout_i_reg[6]_i_2_n_0 ),
        .S(\gc0.count_d1_reg[11] [9]));
  MUXF8 \gpr1.dout_i_reg[6]_i_3 
       (.I0(\gpr1.dout_i_reg[6]_i_8_n_0 ),
        .I1(\gpr1.dout_i_reg[6]_i_9_n_0 ),
        .O(\gpr1.dout_i_reg[6]_i_3_n_0 ),
        .S(\gc0.count_d1_reg[11] [9]));
  MUXF8 \gpr1.dout_i_reg[6]_i_4 
       (.I0(\gpr1.dout_i_reg[6]_i_10_n_0 ),
        .I1(\gpr1.dout_i_reg[6]_i_11_n_0 ),
        .O(\gpr1.dout_i_reg[6]_i_4_n_0 ),
        .S(\gc0.count_d1_reg[11] [9]));
  MUXF8 \gpr1.dout_i_reg[6]_i_5 
       (.I0(\gpr1.dout_i_reg[6]_i_12_n_0 ),
        .I1(\gpr1.dout_i_reg[6]_i_13_n_0 ),
        .O(\gpr1.dout_i_reg[6]_i_5_n_0 ),
        .S(\gc0.count_d1_reg[11] [9]));
  MUXF7 \gpr1.dout_i_reg[6]_i_6 
       (.I0(\gpr1.dout_i[6]_i_14_n_0 ),
        .I1(\gpr1.dout_i[6]_i_15_n_0 ),
        .O(\gpr1.dout_i_reg[6]_i_6_n_0 ),
        .S(\gc0.count_d1_reg[11] [8]));
  MUXF7 \gpr1.dout_i_reg[6]_i_7 
       (.I0(\gpr1.dout_i[6]_i_16_n_0 ),
        .I1(\gpr1.dout_i[6]_i_17_n_0 ),
        .O(\gpr1.dout_i_reg[6]_i_7_n_0 ),
        .S(\gc0.count_d1_reg[11] [8]));
  MUXF7 \gpr1.dout_i_reg[6]_i_8 
       (.I0(\gpr1.dout_i[6]_i_18_n_0 ),
        .I1(\gpr1.dout_i[6]_i_19_n_0 ),
        .O(\gpr1.dout_i_reg[6]_i_8_n_0 ),
        .S(\gc0.count_d1_reg[11] [8]));
  MUXF7 \gpr1.dout_i_reg[6]_i_9 
       (.I0(\gpr1.dout_i[6]_i_20_n_0 ),
        .I1(\gpr1.dout_i[6]_i_21_n_0 ),
        .O(\gpr1.dout_i_reg[6]_i_9_n_0 ),
        .S(\gc0.count_d1_reg[11] [8]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[7] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR),
        .D(p_0_out[7]),
        .Q(dout[7]));
  MUXF7 \gpr1.dout_i_reg[7]_i_10 
       (.I0(\gpr1.dout_i[7]_i_22_n_0 ),
        .I1(\gpr1.dout_i[7]_i_23_n_0 ),
        .O(\gpr1.dout_i_reg[7]_i_10_n_0 ),
        .S(\gc0.count_d1_reg[11] [8]));
  MUXF7 \gpr1.dout_i_reg[7]_i_11 
       (.I0(\gpr1.dout_i[7]_i_24_n_0 ),
        .I1(\gpr1.dout_i[7]_i_25_n_0 ),
        .O(\gpr1.dout_i_reg[7]_i_11_n_0 ),
        .S(\gc0.count_d1_reg[11] [8]));
  MUXF7 \gpr1.dout_i_reg[7]_i_12 
       (.I0(\gpr1.dout_i[7]_i_26_n_0 ),
        .I1(\gpr1.dout_i[7]_i_27_n_0 ),
        .O(\gpr1.dout_i_reg[7]_i_12_n_0 ),
        .S(\gc0.count_d1_reg[11] [8]));
  MUXF7 \gpr1.dout_i_reg[7]_i_13 
       (.I0(\gpr1.dout_i[7]_i_28_n_0 ),
        .I1(\gpr1.dout_i[7]_i_29_n_0 ),
        .O(\gpr1.dout_i_reg[7]_i_13_n_0 ),
        .S(\gc0.count_d1_reg[11] [8]));
  MUXF8 \gpr1.dout_i_reg[7]_i_2 
       (.I0(\gpr1.dout_i_reg[7]_i_6_n_0 ),
        .I1(\gpr1.dout_i_reg[7]_i_7_n_0 ),
        .O(\gpr1.dout_i_reg[7]_i_2_n_0 ),
        .S(\gc0.count_d1_reg[11] [9]));
  MUXF8 \gpr1.dout_i_reg[7]_i_3 
       (.I0(\gpr1.dout_i_reg[7]_i_8_n_0 ),
        .I1(\gpr1.dout_i_reg[7]_i_9_n_0 ),
        .O(\gpr1.dout_i_reg[7]_i_3_n_0 ),
        .S(\gc0.count_d1_reg[11] [9]));
  MUXF8 \gpr1.dout_i_reg[7]_i_4 
       (.I0(\gpr1.dout_i_reg[7]_i_10_n_0 ),
        .I1(\gpr1.dout_i_reg[7]_i_11_n_0 ),
        .O(\gpr1.dout_i_reg[7]_i_4_n_0 ),
        .S(\gc0.count_d1_reg[11] [9]));
  MUXF8 \gpr1.dout_i_reg[7]_i_5 
       (.I0(\gpr1.dout_i_reg[7]_i_12_n_0 ),
        .I1(\gpr1.dout_i_reg[7]_i_13_n_0 ),
        .O(\gpr1.dout_i_reg[7]_i_5_n_0 ),
        .S(\gc0.count_d1_reg[11] [9]));
  MUXF7 \gpr1.dout_i_reg[7]_i_6 
       (.I0(\gpr1.dout_i[7]_i_14_n_0 ),
        .I1(\gpr1.dout_i[7]_i_15_n_0 ),
        .O(\gpr1.dout_i_reg[7]_i_6_n_0 ),
        .S(\gc0.count_d1_reg[11] [8]));
  MUXF7 \gpr1.dout_i_reg[7]_i_7 
       (.I0(\gpr1.dout_i[7]_i_16_n_0 ),
        .I1(\gpr1.dout_i[7]_i_17_n_0 ),
        .O(\gpr1.dout_i_reg[7]_i_7_n_0 ),
        .S(\gc0.count_d1_reg[11] [8]));
  MUXF7 \gpr1.dout_i_reg[7]_i_8 
       (.I0(\gpr1.dout_i[7]_i_18_n_0 ),
        .I1(\gpr1.dout_i[7]_i_19_n_0 ),
        .O(\gpr1.dout_i_reg[7]_i_8_n_0 ),
        .S(\gc0.count_d1_reg[11] [8]));
  MUXF7 \gpr1.dout_i_reg[7]_i_9 
       (.I0(\gpr1.dout_i[7]_i_20_n_0 ),
        .I1(\gpr1.dout_i[7]_i_21_n_0 ),
        .O(\gpr1.dout_i_reg[7]_i_9_n_0 ),
        .S(\gc0.count_d1_reg[11] [8]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[8] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR),
        .D(p_0_out[8]),
        .Q(dout[8]));
  MUXF7 \gpr1.dout_i_reg[8]_i_10 
       (.I0(\gpr1.dout_i[8]_i_22_n_0 ),
        .I1(\gpr1.dout_i[8]_i_23_n_0 ),
        .O(\gpr1.dout_i_reg[8]_i_10_n_0 ),
        .S(\gc0.count_d1_reg[11] [8]));
  MUXF7 \gpr1.dout_i_reg[8]_i_11 
       (.I0(\gpr1.dout_i[8]_i_24_n_0 ),
        .I1(\gpr1.dout_i[8]_i_25_n_0 ),
        .O(\gpr1.dout_i_reg[8]_i_11_n_0 ),
        .S(\gc0.count_d1_reg[11] [8]));
  MUXF7 \gpr1.dout_i_reg[8]_i_12 
       (.I0(\gpr1.dout_i[8]_i_26_n_0 ),
        .I1(\gpr1.dout_i[8]_i_27_n_0 ),
        .O(\gpr1.dout_i_reg[8]_i_12_n_0 ),
        .S(\gc0.count_d1_reg[11] [8]));
  MUXF7 \gpr1.dout_i_reg[8]_i_13 
       (.I0(\gpr1.dout_i[8]_i_28_n_0 ),
        .I1(\gpr1.dout_i[8]_i_29_n_0 ),
        .O(\gpr1.dout_i_reg[8]_i_13_n_0 ),
        .S(\gc0.count_d1_reg[11] [8]));
  MUXF8 \gpr1.dout_i_reg[8]_i_2 
       (.I0(\gpr1.dout_i_reg[8]_i_6_n_0 ),
        .I1(\gpr1.dout_i_reg[8]_i_7_n_0 ),
        .O(\gpr1.dout_i_reg[8]_i_2_n_0 ),
        .S(\gc0.count_d1_reg[11] [9]));
  MUXF8 \gpr1.dout_i_reg[8]_i_3 
       (.I0(\gpr1.dout_i_reg[8]_i_8_n_0 ),
        .I1(\gpr1.dout_i_reg[8]_i_9_n_0 ),
        .O(\gpr1.dout_i_reg[8]_i_3_n_0 ),
        .S(\gc0.count_d1_reg[11] [9]));
  MUXF8 \gpr1.dout_i_reg[8]_i_4 
       (.I0(\gpr1.dout_i_reg[8]_i_10_n_0 ),
        .I1(\gpr1.dout_i_reg[8]_i_11_n_0 ),
        .O(\gpr1.dout_i_reg[8]_i_4_n_0 ),
        .S(\gc0.count_d1_reg[11] [9]));
  MUXF8 \gpr1.dout_i_reg[8]_i_5 
       (.I0(\gpr1.dout_i_reg[8]_i_12_n_0 ),
        .I1(\gpr1.dout_i_reg[8]_i_13_n_0 ),
        .O(\gpr1.dout_i_reg[8]_i_5_n_0 ),
        .S(\gc0.count_d1_reg[11] [9]));
  MUXF7 \gpr1.dout_i_reg[8]_i_6 
       (.I0(\gpr1.dout_i[8]_i_14_n_0 ),
        .I1(\gpr1.dout_i[8]_i_15_n_0 ),
        .O(\gpr1.dout_i_reg[8]_i_6_n_0 ),
        .S(\gc0.count_d1_reg[11] [8]));
  MUXF7 \gpr1.dout_i_reg[8]_i_7 
       (.I0(\gpr1.dout_i[8]_i_16_n_0 ),
        .I1(\gpr1.dout_i[8]_i_17_n_0 ),
        .O(\gpr1.dout_i_reg[8]_i_7_n_0 ),
        .S(\gc0.count_d1_reg[11] [8]));
  MUXF7 \gpr1.dout_i_reg[8]_i_8 
       (.I0(\gpr1.dout_i[8]_i_18_n_0 ),
        .I1(\gpr1.dout_i[8]_i_19_n_0 ),
        .O(\gpr1.dout_i_reg[8]_i_8_n_0 ),
        .S(\gc0.count_d1_reg[11] [8]));
  MUXF7 \gpr1.dout_i_reg[8]_i_9 
       (.I0(\gpr1.dout_i[8]_i_20_n_0 ),
        .I1(\gpr1.dout_i[8]_i_21_n_0 ),
        .O(\gpr1.dout_i_reg[8]_i_9_n_0 ),
        .S(\gc0.count_d1_reg[11] [8]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[9] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR),
        .D(p_0_out[9]),
        .Q(dout[9]));
  MUXF7 \gpr1.dout_i_reg[9]_i_10 
       (.I0(\gpr1.dout_i[9]_i_22_n_0 ),
        .I1(\gpr1.dout_i[9]_i_23_n_0 ),
        .O(\gpr1.dout_i_reg[9]_i_10_n_0 ),
        .S(\gc0.count_d1_reg[11] [8]));
  MUXF7 \gpr1.dout_i_reg[9]_i_11 
       (.I0(\gpr1.dout_i[9]_i_24_n_0 ),
        .I1(\gpr1.dout_i[9]_i_25_n_0 ),
        .O(\gpr1.dout_i_reg[9]_i_11_n_0 ),
        .S(\gc0.count_d1_reg[11] [8]));
  MUXF7 \gpr1.dout_i_reg[9]_i_12 
       (.I0(\gpr1.dout_i[9]_i_26_n_0 ),
        .I1(\gpr1.dout_i[9]_i_27_n_0 ),
        .O(\gpr1.dout_i_reg[9]_i_12_n_0 ),
        .S(\gc0.count_d1_reg[11] [8]));
  MUXF7 \gpr1.dout_i_reg[9]_i_13 
       (.I0(\gpr1.dout_i[9]_i_28_n_0 ),
        .I1(\gpr1.dout_i[9]_i_29_n_0 ),
        .O(\gpr1.dout_i_reg[9]_i_13_n_0 ),
        .S(\gc0.count_d1_reg[11] [8]));
  MUXF8 \gpr1.dout_i_reg[9]_i_2 
       (.I0(\gpr1.dout_i_reg[9]_i_6_n_0 ),
        .I1(\gpr1.dout_i_reg[9]_i_7_n_0 ),
        .O(\gpr1.dout_i_reg[9]_i_2_n_0 ),
        .S(\gc0.count_d1_reg[11] [9]));
  MUXF8 \gpr1.dout_i_reg[9]_i_3 
       (.I0(\gpr1.dout_i_reg[9]_i_8_n_0 ),
        .I1(\gpr1.dout_i_reg[9]_i_9_n_0 ),
        .O(\gpr1.dout_i_reg[9]_i_3_n_0 ),
        .S(\gc0.count_d1_reg[11] [9]));
  MUXF8 \gpr1.dout_i_reg[9]_i_4 
       (.I0(\gpr1.dout_i_reg[9]_i_10_n_0 ),
        .I1(\gpr1.dout_i_reg[9]_i_11_n_0 ),
        .O(\gpr1.dout_i_reg[9]_i_4_n_0 ),
        .S(\gc0.count_d1_reg[11] [9]));
  MUXF8 \gpr1.dout_i_reg[9]_i_5 
       (.I0(\gpr1.dout_i_reg[9]_i_12_n_0 ),
        .I1(\gpr1.dout_i_reg[9]_i_13_n_0 ),
        .O(\gpr1.dout_i_reg[9]_i_5_n_0 ),
        .S(\gc0.count_d1_reg[11] [9]));
  MUXF7 \gpr1.dout_i_reg[9]_i_6 
       (.I0(\gpr1.dout_i[9]_i_14_n_0 ),
        .I1(\gpr1.dout_i[9]_i_15_n_0 ),
        .O(\gpr1.dout_i_reg[9]_i_6_n_0 ),
        .S(\gc0.count_d1_reg[11] [8]));
  MUXF7 \gpr1.dout_i_reg[9]_i_7 
       (.I0(\gpr1.dout_i[9]_i_16_n_0 ),
        .I1(\gpr1.dout_i[9]_i_17_n_0 ),
        .O(\gpr1.dout_i_reg[9]_i_7_n_0 ),
        .S(\gc0.count_d1_reg[11] [8]));
  MUXF7 \gpr1.dout_i_reg[9]_i_8 
       (.I0(\gpr1.dout_i[9]_i_18_n_0 ),
        .I1(\gpr1.dout_i[9]_i_19_n_0 ),
        .O(\gpr1.dout_i_reg[9]_i_8_n_0 ),
        .S(\gc0.count_d1_reg[11] [8]));
  MUXF7 \gpr1.dout_i_reg[9]_i_9 
       (.I0(\gpr1.dout_i[9]_i_20_n_0 ),
        .I1(\gpr1.dout_i[9]_i_21_n_0 ),
        .O(\gpr1.dout_i_reg[9]_i_9_n_0 ),
        .S(\gc0.count_d1_reg[11] [8]));
endmodule

module fifo_generator_0_fifo_generator_ramfifo
   (wr_rst_busy,
    \syncstages_ff_reg[0] ,
    empty,
    full,
    dout,
    rst,
    wr_clk,
    rd_clk,
    din,
    wr_en,
    rd_en);
  output wr_rst_busy;
  output \syncstages_ff_reg[0] ;
  output empty;
  output full;
  output [15:0]dout;
  input rst;
  input wr_clk;
  input rd_clk;
  input [15:0]din;
  input wr_en;
  input rd_en;

  wire [15:0]din;
  wire [15:0]dout;
  wire empty;
  wire full;
  wire \gntv_or_sync_fifo.gl0.rd_n_14 ;
  wire \gntv_or_sync_fifo.gl0.rd_n_15 ;
  wire \gntv_or_sync_fifo.gl0.rd_n_16 ;
  wire \gntv_or_sync_fifo.gl0.rd_n_17 ;
  wire \gntv_or_sync_fifo.gl0.rd_n_18 ;
  wire \gntv_or_sync_fifo.gl0.rd_n_19 ;
  wire \gntv_or_sync_fifo.gl0.rd_n_20 ;
  wire \gntv_or_sync_fifo.gl0.rd_n_21 ;
  wire \gntv_or_sync_fifo.gl0.rd_n_22 ;
  wire \gntv_or_sync_fifo.gl0.rd_n_23 ;
  wire \gntv_or_sync_fifo.gl0.rd_n_24 ;
  wire \gntv_or_sync_fifo.gl0.rd_n_25 ;
  wire \gntv_or_sync_fifo.gl0.rd_n_26 ;
  wire \gntv_or_sync_fifo.gl0.rd_n_27 ;
  wire \gntv_or_sync_fifo.gl0.rd_n_28 ;
  wire \gntv_or_sync_fifo.gl0.rd_n_29 ;
  wire \gntv_or_sync_fifo.gl0.rd_n_30 ;
  wire \gntv_or_sync_fifo.gl0.rd_n_31 ;
  wire \gntv_or_sync_fifo.gl0.rd_n_32 ;
  wire \gntv_or_sync_fifo.gl0.rd_n_33 ;
  wire \gntv_or_sync_fifo.gl0.rd_n_34 ;
  wire \gntv_or_sync_fifo.gl0.rd_n_35 ;
  wire \gntv_or_sync_fifo.gl0.rd_n_36 ;
  wire \gntv_or_sync_fifo.gl0.rd_n_37 ;
  wire \gntv_or_sync_fifo.gl0.rd_n_38 ;
  wire \gntv_or_sync_fifo.gl0.rd_n_39 ;
  wire \gntv_or_sync_fifo.gl0.rd_n_40 ;
  wire \gntv_or_sync_fifo.gl0.rd_n_41 ;
  wire \gntv_or_sync_fifo.gl0.rd_n_42 ;
  wire \gntv_or_sync_fifo.gl0.rd_n_43 ;
  wire \gntv_or_sync_fifo.gl0.rd_n_44 ;
  wire \gntv_or_sync_fifo.gl0.rd_n_45 ;
  wire \gntv_or_sync_fifo.gl0.rd_n_46 ;
  wire \gntv_or_sync_fifo.gl0.rd_n_47 ;
  wire \gntv_or_sync_fifo.gl0.rd_n_48 ;
  wire \gntv_or_sync_fifo.gl0.rd_n_49 ;
  wire \gntv_or_sync_fifo.gl0.rd_n_50 ;
  wire \gntv_or_sync_fifo.gl0.rd_n_51 ;
  wire \gntv_or_sync_fifo.gl0.rd_n_52 ;
  wire \gntv_or_sync_fifo.gl0.rd_n_53 ;
  wire \gntv_or_sync_fifo.gl0.rd_n_54 ;
  wire \gntv_or_sync_fifo.gl0.rd_n_55 ;
  wire \gntv_or_sync_fifo.gl0.rd_n_56 ;
  wire \gntv_or_sync_fifo.gl0.rd_n_57 ;
  wire \gntv_or_sync_fifo.gl0.rd_n_58 ;
  wire \gntv_or_sync_fifo.gl0.rd_n_59 ;
  wire \gntv_or_sync_fifo.gl0.rd_n_60 ;
  wire \gntv_or_sync_fifo.gl0.rd_n_61 ;
  wire \gntv_or_sync_fifo.gl0.rd_n_62 ;
  wire \gntv_or_sync_fifo.gl0.rd_n_63 ;
  wire \gntv_or_sync_fifo.gl0.rd_n_64 ;
  wire \gntv_or_sync_fifo.gl0.rd_n_65 ;
  wire \gntv_or_sync_fifo.gl0.rd_n_66 ;
  wire \gntv_or_sync_fifo.gl0.rd_n_67 ;
  wire \gntv_or_sync_fifo.gl0.rd_n_68 ;
  wire \gntv_or_sync_fifo.gl0.rd_n_69 ;
  wire \gntv_or_sync_fifo.gl0.rd_n_70 ;
  wire \gntv_or_sync_fifo.gl0.rd_n_71 ;
  wire \gntv_or_sync_fifo.gl0.rd_n_72 ;
  wire \gntv_or_sync_fifo.gl0.rd_n_73 ;
  wire \gntv_or_sync_fifo.gl0.rd_n_74 ;
  wire \gntv_or_sync_fifo.gl0.rd_n_75 ;
  wire \gntv_or_sync_fifo.gl0.wr_n_1 ;
  wire \gntv_or_sync_fifo.gl0.wr_n_100 ;
  wire \gntv_or_sync_fifo.gl0.wr_n_101 ;
  wire \gntv_or_sync_fifo.gl0.wr_n_102 ;
  wire \gntv_or_sync_fifo.gl0.wr_n_103 ;
  wire \gntv_or_sync_fifo.gl0.wr_n_104 ;
  wire \gntv_or_sync_fifo.gl0.wr_n_105 ;
  wire \gntv_or_sync_fifo.gl0.wr_n_106 ;
  wire \gntv_or_sync_fifo.gl0.wr_n_14 ;
  wire \gntv_or_sync_fifo.gl0.wr_n_15 ;
  wire \gntv_or_sync_fifo.gl0.wr_n_16 ;
  wire \gntv_or_sync_fifo.gl0.wr_n_17 ;
  wire \gntv_or_sync_fifo.gl0.wr_n_18 ;
  wire \gntv_or_sync_fifo.gl0.wr_n_19 ;
  wire \gntv_or_sync_fifo.gl0.wr_n_20 ;
  wire \gntv_or_sync_fifo.gl0.wr_n_21 ;
  wire \gntv_or_sync_fifo.gl0.wr_n_22 ;
  wire \gntv_or_sync_fifo.gl0.wr_n_23 ;
  wire \gntv_or_sync_fifo.gl0.wr_n_24 ;
  wire \gntv_or_sync_fifo.gl0.wr_n_25 ;
  wire \gntv_or_sync_fifo.gl0.wr_n_26 ;
  wire \gntv_or_sync_fifo.gl0.wr_n_27 ;
  wire \gntv_or_sync_fifo.gl0.wr_n_28 ;
  wire \gntv_or_sync_fifo.gl0.wr_n_29 ;
  wire \gntv_or_sync_fifo.gl0.wr_n_30 ;
  wire \gntv_or_sync_fifo.gl0.wr_n_31 ;
  wire \gntv_or_sync_fifo.gl0.wr_n_32 ;
  wire \gntv_or_sync_fifo.gl0.wr_n_33 ;
  wire \gntv_or_sync_fifo.gl0.wr_n_34 ;
  wire \gntv_or_sync_fifo.gl0.wr_n_35 ;
  wire \gntv_or_sync_fifo.gl0.wr_n_36 ;
  wire \gntv_or_sync_fifo.gl0.wr_n_37 ;
  wire \gntv_or_sync_fifo.gl0.wr_n_38 ;
  wire \gntv_or_sync_fifo.gl0.wr_n_39 ;
  wire \gntv_or_sync_fifo.gl0.wr_n_40 ;
  wire \gntv_or_sync_fifo.gl0.wr_n_41 ;
  wire \gntv_or_sync_fifo.gl0.wr_n_42 ;
  wire \gntv_or_sync_fifo.gl0.wr_n_43 ;
  wire \gntv_or_sync_fifo.gl0.wr_n_44 ;
  wire \gntv_or_sync_fifo.gl0.wr_n_45 ;
  wire \gntv_or_sync_fifo.gl0.wr_n_46 ;
  wire \gntv_or_sync_fifo.gl0.wr_n_47 ;
  wire \gntv_or_sync_fifo.gl0.wr_n_48 ;
  wire \gntv_or_sync_fifo.gl0.wr_n_49 ;
  wire \gntv_or_sync_fifo.gl0.wr_n_50 ;
  wire \gntv_or_sync_fifo.gl0.wr_n_51 ;
  wire \gntv_or_sync_fifo.gl0.wr_n_52 ;
  wire \gntv_or_sync_fifo.gl0.wr_n_53 ;
  wire \gntv_or_sync_fifo.gl0.wr_n_54 ;
  wire \gntv_or_sync_fifo.gl0.wr_n_55 ;
  wire \gntv_or_sync_fifo.gl0.wr_n_56 ;
  wire \gntv_or_sync_fifo.gl0.wr_n_57 ;
  wire \gntv_or_sync_fifo.gl0.wr_n_58 ;
  wire \gntv_or_sync_fifo.gl0.wr_n_59 ;
  wire \gntv_or_sync_fifo.gl0.wr_n_60 ;
  wire \gntv_or_sync_fifo.gl0.wr_n_61 ;
  wire \gntv_or_sync_fifo.gl0.wr_n_62 ;
  wire \gntv_or_sync_fifo.gl0.wr_n_63 ;
  wire \gntv_or_sync_fifo.gl0.wr_n_64 ;
  wire \gntv_or_sync_fifo.gl0.wr_n_65 ;
  wire \gntv_or_sync_fifo.gl0.wr_n_66 ;
  wire \gntv_or_sync_fifo.gl0.wr_n_67 ;
  wire \gntv_or_sync_fifo.gl0.wr_n_68 ;
  wire \gntv_or_sync_fifo.gl0.wr_n_69 ;
  wire \gntv_or_sync_fifo.gl0.wr_n_70 ;
  wire \gntv_or_sync_fifo.gl0.wr_n_71 ;
  wire \gntv_or_sync_fifo.gl0.wr_n_72 ;
  wire \gntv_or_sync_fifo.gl0.wr_n_73 ;
  wire \gntv_or_sync_fifo.gl0.wr_n_74 ;
  wire \gntv_or_sync_fifo.gl0.wr_n_75 ;
  wire \gntv_or_sync_fifo.gl0.wr_n_76 ;
  wire \gntv_or_sync_fifo.gl0.wr_n_77 ;
  wire \gntv_or_sync_fifo.gl0.wr_n_78 ;
  wire \gntv_or_sync_fifo.gl0.wr_n_79 ;
  wire \gntv_or_sync_fifo.gl0.wr_n_80 ;
  wire \gntv_or_sync_fifo.gl0.wr_n_81 ;
  wire \gntv_or_sync_fifo.gl0.wr_n_82 ;
  wire \gntv_or_sync_fifo.gl0.wr_n_83 ;
  wire \gntv_or_sync_fifo.gl0.wr_n_84 ;
  wire \gntv_or_sync_fifo.gl0.wr_n_85 ;
  wire \gntv_or_sync_fifo.gl0.wr_n_86 ;
  wire \gntv_or_sync_fifo.gl0.wr_n_87 ;
  wire \gntv_or_sync_fifo.gl0.wr_n_88 ;
  wire \gntv_or_sync_fifo.gl0.wr_n_89 ;
  wire \gntv_or_sync_fifo.gl0.wr_n_90 ;
  wire \gntv_or_sync_fifo.gl0.wr_n_91 ;
  wire \gntv_or_sync_fifo.gl0.wr_n_92 ;
  wire \gntv_or_sync_fifo.gl0.wr_n_93 ;
  wire \gntv_or_sync_fifo.gl0.wr_n_94 ;
  wire \gntv_or_sync_fifo.gl0.wr_n_95 ;
  wire \gntv_or_sync_fifo.gl0.wr_n_96 ;
  wire \gntv_or_sync_fifo.gl0.wr_n_97 ;
  wire \gntv_or_sync_fifo.gl0.wr_n_98 ;
  wire \gntv_or_sync_fifo.gl0.wr_n_99 ;
  wire [11:0]p_0_out_0;
  wire [11:0]p_13_out;
  wire [11:0]p_24_out;
  wire [11:0]p_25_out;
  wire ram_rd_en_i;
  wire rd_clk;
  wire rd_en;
  wire rst;
  wire rst_full_ff_i;
  wire rst_full_gen_i;
  wire rstblk_n_0;
  wire \syncstages_ff_reg[0] ;
  wire wr_clk;
  wire wr_en;
  wire wr_rst_busy;

  fifo_generator_0_clk_x_pntrs \gntv_or_sync_fifo.gcx.clkx 
       (.Q(p_13_out),
        .RD_PNTR_WR(p_25_out),
        .WR_PNTR_RD(p_24_out),
        .\gc0.count_d1_reg[11] (p_0_out_0),
        .rd_clk(rd_clk),
        .wr_clk(wr_clk));
  fifo_generator_0_rd_logic \gntv_or_sync_fifo.gl0.rd 
       (.ADDRC({\gntv_or_sync_fifo.gl0.rd_n_16 ,\gntv_or_sync_fifo.gl0.rd_n_17 ,\gntv_or_sync_fifo.gl0.rd_n_18 ,\gntv_or_sync_fifo.gl0.rd_n_19 ,\gntv_or_sync_fifo.gl0.rd_n_20 ,\gntv_or_sync_fifo.gl0.rd_n_21 }),
        .Q(p_0_out_0),
        .WR_PNTR_RD(p_24_out),
        .empty(empty),
        .\gpr1.dout_i_reg[0] ({\gntv_or_sync_fifo.gl0.rd_n_22 ,\gntv_or_sync_fifo.gl0.rd_n_23 ,\gntv_or_sync_fifo.gl0.rd_n_24 ,\gntv_or_sync_fifo.gl0.rd_n_25 ,\gntv_or_sync_fifo.gl0.rd_n_26 ,\gntv_or_sync_fifo.gl0.rd_n_27 }),
        .\gpr1.dout_i_reg[12] ({\gntv_or_sync_fifo.gl0.rd_n_64 ,\gntv_or_sync_fifo.gl0.rd_n_65 ,\gntv_or_sync_fifo.gl0.rd_n_66 ,\gntv_or_sync_fifo.gl0.rd_n_67 ,\gntv_or_sync_fifo.gl0.rd_n_68 ,\gntv_or_sync_fifo.gl0.rd_n_69 }),
        .\gpr1.dout_i_reg[12]_0 ({\gntv_or_sync_fifo.gl0.rd_n_70 ,\gntv_or_sync_fifo.gl0.rd_n_71 ,\gntv_or_sync_fifo.gl0.rd_n_72 ,\gntv_or_sync_fifo.gl0.rd_n_73 ,\gntv_or_sync_fifo.gl0.rd_n_74 ,\gntv_or_sync_fifo.gl0.rd_n_75 }),
        .\gpr1.dout_i_reg[15] (\gntv_or_sync_fifo.gl0.rd_n_14 ),
        .\gpr1.dout_i_reg[15]_0 (\gntv_or_sync_fifo.gl0.rd_n_15 ),
        .\gpr1.dout_i_reg[3] ({\gntv_or_sync_fifo.gl0.rd_n_28 ,\gntv_or_sync_fifo.gl0.rd_n_29 ,\gntv_or_sync_fifo.gl0.rd_n_30 ,\gntv_or_sync_fifo.gl0.rd_n_31 ,\gntv_or_sync_fifo.gl0.rd_n_32 ,\gntv_or_sync_fifo.gl0.rd_n_33 }),
        .\gpr1.dout_i_reg[3]_0 ({\gntv_or_sync_fifo.gl0.rd_n_34 ,\gntv_or_sync_fifo.gl0.rd_n_35 ,\gntv_or_sync_fifo.gl0.rd_n_36 ,\gntv_or_sync_fifo.gl0.rd_n_37 ,\gntv_or_sync_fifo.gl0.rd_n_38 ,\gntv_or_sync_fifo.gl0.rd_n_39 }),
        .\gpr1.dout_i_reg[6] ({\gntv_or_sync_fifo.gl0.rd_n_40 ,\gntv_or_sync_fifo.gl0.rd_n_41 ,\gntv_or_sync_fifo.gl0.rd_n_42 ,\gntv_or_sync_fifo.gl0.rd_n_43 ,\gntv_or_sync_fifo.gl0.rd_n_44 ,\gntv_or_sync_fifo.gl0.rd_n_45 }),
        .\gpr1.dout_i_reg[6]_0 ({\gntv_or_sync_fifo.gl0.rd_n_46 ,\gntv_or_sync_fifo.gl0.rd_n_47 ,\gntv_or_sync_fifo.gl0.rd_n_48 ,\gntv_or_sync_fifo.gl0.rd_n_49 ,\gntv_or_sync_fifo.gl0.rd_n_50 ,\gntv_or_sync_fifo.gl0.rd_n_51 }),
        .\gpr1.dout_i_reg[9] ({\gntv_or_sync_fifo.gl0.rd_n_52 ,\gntv_or_sync_fifo.gl0.rd_n_53 ,\gntv_or_sync_fifo.gl0.rd_n_54 ,\gntv_or_sync_fifo.gl0.rd_n_55 ,\gntv_or_sync_fifo.gl0.rd_n_56 ,\gntv_or_sync_fifo.gl0.rd_n_57 }),
        .\gpr1.dout_i_reg[9]_0 ({\gntv_or_sync_fifo.gl0.rd_n_58 ,\gntv_or_sync_fifo.gl0.rd_n_59 ,\gntv_or_sync_fifo.gl0.rd_n_60 ,\gntv_or_sync_fifo.gl0.rd_n_61 ,\gntv_or_sync_fifo.gl0.rd_n_62 ,\gntv_or_sync_fifo.gl0.rd_n_63 }),
        .\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg (\syncstages_ff_reg[0] ),
        .ram_rd_en_i(ram_rd_en_i),
        .rd_clk(rd_clk),
        .rd_en(rd_en));
  fifo_generator_0_wr_logic \gntv_or_sync_fifo.gl0.wr 
       (.ADDRD({\gntv_or_sync_fifo.gl0.wr_n_77 ,\gntv_or_sync_fifo.gl0.wr_n_78 ,\gntv_or_sync_fifo.gl0.wr_n_79 ,\gntv_or_sync_fifo.gl0.wr_n_80 ,\gntv_or_sync_fifo.gl0.wr_n_81 ,\gntv_or_sync_fifo.gl0.wr_n_82 }),
        .Q(p_13_out),
        .RD_PNTR_WR(p_25_out),
        .full(full),
        .\gpr1.dout_i_reg[0] (\gntv_or_sync_fifo.gl0.wr_n_1 ),
        .\gpr1.dout_i_reg[0]_0 (\gntv_or_sync_fifo.gl0.wr_n_14 ),
        .\gpr1.dout_i_reg[0]_1 (\gntv_or_sync_fifo.gl0.wr_n_15 ),
        .\gpr1.dout_i_reg[12] ({\gntv_or_sync_fifo.gl0.wr_n_95 ,\gntv_or_sync_fifo.gl0.wr_n_96 ,\gntv_or_sync_fifo.gl0.wr_n_97 ,\gntv_or_sync_fifo.gl0.wr_n_98 ,\gntv_or_sync_fifo.gl0.wr_n_99 ,\gntv_or_sync_fifo.gl0.wr_n_100 }),
        .\gpr1.dout_i_reg[15] (\gntv_or_sync_fifo.gl0.wr_n_16 ),
        .\gpr1.dout_i_reg[15]_0 (\gntv_or_sync_fifo.gl0.wr_n_17 ),
        .\gpr1.dout_i_reg[15]_1 (\gntv_or_sync_fifo.gl0.wr_n_18 ),
        .\gpr1.dout_i_reg[15]_10 (\gntv_or_sync_fifo.gl0.wr_n_27 ),
        .\gpr1.dout_i_reg[15]_11 (\gntv_or_sync_fifo.gl0.wr_n_28 ),
        .\gpr1.dout_i_reg[15]_12 (\gntv_or_sync_fifo.gl0.wr_n_29 ),
        .\gpr1.dout_i_reg[15]_13 (\gntv_or_sync_fifo.gl0.wr_n_30 ),
        .\gpr1.dout_i_reg[15]_14 (\gntv_or_sync_fifo.gl0.wr_n_31 ),
        .\gpr1.dout_i_reg[15]_15 (\gntv_or_sync_fifo.gl0.wr_n_32 ),
        .\gpr1.dout_i_reg[15]_16 (\gntv_or_sync_fifo.gl0.wr_n_33 ),
        .\gpr1.dout_i_reg[15]_17 (\gntv_or_sync_fifo.gl0.wr_n_34 ),
        .\gpr1.dout_i_reg[15]_18 (\gntv_or_sync_fifo.gl0.wr_n_35 ),
        .\gpr1.dout_i_reg[15]_19 (\gntv_or_sync_fifo.gl0.wr_n_36 ),
        .\gpr1.dout_i_reg[15]_2 (\gntv_or_sync_fifo.gl0.wr_n_19 ),
        .\gpr1.dout_i_reg[15]_20 (\gntv_or_sync_fifo.gl0.wr_n_37 ),
        .\gpr1.dout_i_reg[15]_21 (\gntv_or_sync_fifo.gl0.wr_n_38 ),
        .\gpr1.dout_i_reg[15]_22 (\gntv_or_sync_fifo.gl0.wr_n_39 ),
        .\gpr1.dout_i_reg[15]_23 (\gntv_or_sync_fifo.gl0.wr_n_40 ),
        .\gpr1.dout_i_reg[15]_24 (\gntv_or_sync_fifo.gl0.wr_n_41 ),
        .\gpr1.dout_i_reg[15]_25 (\gntv_or_sync_fifo.gl0.wr_n_42 ),
        .\gpr1.dout_i_reg[15]_26 (\gntv_or_sync_fifo.gl0.wr_n_43 ),
        .\gpr1.dout_i_reg[15]_27 (\gntv_or_sync_fifo.gl0.wr_n_44 ),
        .\gpr1.dout_i_reg[15]_28 (\gntv_or_sync_fifo.gl0.wr_n_45 ),
        .\gpr1.dout_i_reg[15]_29 (\gntv_or_sync_fifo.gl0.wr_n_46 ),
        .\gpr1.dout_i_reg[15]_3 (\gntv_or_sync_fifo.gl0.wr_n_20 ),
        .\gpr1.dout_i_reg[15]_30 (\gntv_or_sync_fifo.gl0.wr_n_47 ),
        .\gpr1.dout_i_reg[15]_31 (\gntv_or_sync_fifo.gl0.wr_n_48 ),
        .\gpr1.dout_i_reg[15]_32 (\gntv_or_sync_fifo.gl0.wr_n_49 ),
        .\gpr1.dout_i_reg[15]_33 (\gntv_or_sync_fifo.gl0.wr_n_50 ),
        .\gpr1.dout_i_reg[15]_34 (\gntv_or_sync_fifo.gl0.wr_n_51 ),
        .\gpr1.dout_i_reg[15]_35 (\gntv_or_sync_fifo.gl0.wr_n_52 ),
        .\gpr1.dout_i_reg[15]_36 (\gntv_or_sync_fifo.gl0.wr_n_53 ),
        .\gpr1.dout_i_reg[15]_37 (\gntv_or_sync_fifo.gl0.wr_n_54 ),
        .\gpr1.dout_i_reg[15]_38 (\gntv_or_sync_fifo.gl0.wr_n_55 ),
        .\gpr1.dout_i_reg[15]_39 (\gntv_or_sync_fifo.gl0.wr_n_56 ),
        .\gpr1.dout_i_reg[15]_4 (\gntv_or_sync_fifo.gl0.wr_n_21 ),
        .\gpr1.dout_i_reg[15]_40 (\gntv_or_sync_fifo.gl0.wr_n_57 ),
        .\gpr1.dout_i_reg[15]_41 (\gntv_or_sync_fifo.gl0.wr_n_58 ),
        .\gpr1.dout_i_reg[15]_42 (\gntv_or_sync_fifo.gl0.wr_n_59 ),
        .\gpr1.dout_i_reg[15]_43 (\gntv_or_sync_fifo.gl0.wr_n_60 ),
        .\gpr1.dout_i_reg[15]_44 (\gntv_or_sync_fifo.gl0.wr_n_61 ),
        .\gpr1.dout_i_reg[15]_45 (\gntv_or_sync_fifo.gl0.wr_n_62 ),
        .\gpr1.dout_i_reg[15]_46 (\gntv_or_sync_fifo.gl0.wr_n_63 ),
        .\gpr1.dout_i_reg[15]_47 (\gntv_or_sync_fifo.gl0.wr_n_64 ),
        .\gpr1.dout_i_reg[15]_48 (\gntv_or_sync_fifo.gl0.wr_n_65 ),
        .\gpr1.dout_i_reg[15]_49 (\gntv_or_sync_fifo.gl0.wr_n_66 ),
        .\gpr1.dout_i_reg[15]_5 (\gntv_or_sync_fifo.gl0.wr_n_22 ),
        .\gpr1.dout_i_reg[15]_50 (\gntv_or_sync_fifo.gl0.wr_n_67 ),
        .\gpr1.dout_i_reg[15]_51 (\gntv_or_sync_fifo.gl0.wr_n_68 ),
        .\gpr1.dout_i_reg[15]_52 (\gntv_or_sync_fifo.gl0.wr_n_69 ),
        .\gpr1.dout_i_reg[15]_53 (\gntv_or_sync_fifo.gl0.wr_n_70 ),
        .\gpr1.dout_i_reg[15]_54 (\gntv_or_sync_fifo.gl0.wr_n_71 ),
        .\gpr1.dout_i_reg[15]_55 (\gntv_or_sync_fifo.gl0.wr_n_72 ),
        .\gpr1.dout_i_reg[15]_56 (\gntv_or_sync_fifo.gl0.wr_n_73 ),
        .\gpr1.dout_i_reg[15]_57 (\gntv_or_sync_fifo.gl0.wr_n_74 ),
        .\gpr1.dout_i_reg[15]_58 (\gntv_or_sync_fifo.gl0.wr_n_75 ),
        .\gpr1.dout_i_reg[15]_59 (\gntv_or_sync_fifo.gl0.wr_n_76 ),
        .\gpr1.dout_i_reg[15]_6 (\gntv_or_sync_fifo.gl0.wr_n_23 ),
        .\gpr1.dout_i_reg[15]_60 (\gntv_or_sync_fifo.gl0.wr_n_101 ),
        .\gpr1.dout_i_reg[15]_61 (\gntv_or_sync_fifo.gl0.wr_n_102 ),
        .\gpr1.dout_i_reg[15]_62 (\gntv_or_sync_fifo.gl0.wr_n_103 ),
        .\gpr1.dout_i_reg[15]_63 (\gntv_or_sync_fifo.gl0.wr_n_104 ),
        .\gpr1.dout_i_reg[15]_64 (\gntv_or_sync_fifo.gl0.wr_n_105 ),
        .\gpr1.dout_i_reg[15]_65 (\gntv_or_sync_fifo.gl0.wr_n_106 ),
        .\gpr1.dout_i_reg[15]_7 (\gntv_or_sync_fifo.gl0.wr_n_24 ),
        .\gpr1.dout_i_reg[15]_8 (\gntv_or_sync_fifo.gl0.wr_n_25 ),
        .\gpr1.dout_i_reg[15]_9 (\gntv_or_sync_fifo.gl0.wr_n_26 ),
        .\gpr1.dout_i_reg[6] ({\gntv_or_sync_fifo.gl0.wr_n_83 ,\gntv_or_sync_fifo.gl0.wr_n_84 ,\gntv_or_sync_fifo.gl0.wr_n_85 ,\gntv_or_sync_fifo.gl0.wr_n_86 ,\gntv_or_sync_fifo.gl0.wr_n_87 ,\gntv_or_sync_fifo.gl0.wr_n_88 }),
        .\gpr1.dout_i_reg[9] ({\gntv_or_sync_fifo.gl0.wr_n_89 ,\gntv_or_sync_fifo.gl0.wr_n_90 ,\gntv_or_sync_fifo.gl0.wr_n_91 ,\gntv_or_sync_fifo.gl0.wr_n_92 ,\gntv_or_sync_fifo.gl0.wr_n_93 ,\gntv_or_sync_fifo.gl0.wr_n_94 }),
        .\grstd1.grst_full.grst_f.rst_d3_reg (rst_full_gen_i),
        .\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_wr_rst_ic_reg (rstblk_n_0),
        .out(rst_full_ff_i),
        .wr_clk(wr_clk),
        .wr_en(wr_en));
  fifo_generator_0_memory \gntv_or_sync_fifo.mem 
       (.ADDRC({\gntv_or_sync_fifo.gl0.rd_n_16 ,\gntv_or_sync_fifo.gl0.rd_n_17 ,\gntv_or_sync_fifo.gl0.rd_n_18 ,\gntv_or_sync_fifo.gl0.rd_n_19 ,\gntv_or_sync_fifo.gl0.rd_n_20 ,\gntv_or_sync_fifo.gl0.rd_n_21 }),
        .ADDRD({\gntv_or_sync_fifo.gl0.wr_n_77 ,\gntv_or_sync_fifo.gl0.wr_n_78 ,\gntv_or_sync_fifo.gl0.wr_n_79 ,\gntv_or_sync_fifo.gl0.wr_n_80 ,\gntv_or_sync_fifo.gl0.wr_n_81 ,\gntv_or_sync_fifo.gl0.wr_n_82 }),
        .AR(\syncstages_ff_reg[0] ),
        .E(ram_rd_en_i),
        .Q(p_13_out[5:0]),
        .din(din),
        .dout(dout),
        .\gc0.count_d1_reg[11] (p_0_out_0),
        .\gc0.count_d1_reg[5]_rep__0 ({\gntv_or_sync_fifo.gl0.rd_n_22 ,\gntv_or_sync_fifo.gl0.rd_n_23 ,\gntv_or_sync_fifo.gl0.rd_n_24 ,\gntv_or_sync_fifo.gl0.rd_n_25 ,\gntv_or_sync_fifo.gl0.rd_n_26 ,\gntv_or_sync_fifo.gl0.rd_n_27 }),
        .\gc0.count_d1_reg[5]_rep__1 ({\gntv_or_sync_fifo.gl0.rd_n_28 ,\gntv_or_sync_fifo.gl0.rd_n_29 ,\gntv_or_sync_fifo.gl0.rd_n_30 ,\gntv_or_sync_fifo.gl0.rd_n_31 ,\gntv_or_sync_fifo.gl0.rd_n_32 ,\gntv_or_sync_fifo.gl0.rd_n_33 }),
        .\gc0.count_d1_reg[5]_rep__2 ({\gntv_or_sync_fifo.gl0.rd_n_34 ,\gntv_or_sync_fifo.gl0.rd_n_35 ,\gntv_or_sync_fifo.gl0.rd_n_36 ,\gntv_or_sync_fifo.gl0.rd_n_37 ,\gntv_or_sync_fifo.gl0.rd_n_38 ,\gntv_or_sync_fifo.gl0.rd_n_39 }),
        .\gc0.count_d1_reg[5]_rep__3 ({\gntv_or_sync_fifo.gl0.rd_n_40 ,\gntv_or_sync_fifo.gl0.rd_n_41 ,\gntv_or_sync_fifo.gl0.rd_n_42 ,\gntv_or_sync_fifo.gl0.rd_n_43 ,\gntv_or_sync_fifo.gl0.rd_n_44 ,\gntv_or_sync_fifo.gl0.rd_n_45 }),
        .\gc0.count_d1_reg[5]_rep__4 ({\gntv_or_sync_fifo.gl0.rd_n_46 ,\gntv_or_sync_fifo.gl0.rd_n_47 ,\gntv_or_sync_fifo.gl0.rd_n_48 ,\gntv_or_sync_fifo.gl0.rd_n_49 ,\gntv_or_sync_fifo.gl0.rd_n_50 ,\gntv_or_sync_fifo.gl0.rd_n_51 }),
        .\gc0.count_d1_reg[5]_rep__5 ({\gntv_or_sync_fifo.gl0.rd_n_52 ,\gntv_or_sync_fifo.gl0.rd_n_53 ,\gntv_or_sync_fifo.gl0.rd_n_54 ,\gntv_or_sync_fifo.gl0.rd_n_55 ,\gntv_or_sync_fifo.gl0.rd_n_56 ,\gntv_or_sync_fifo.gl0.rd_n_57 }),
        .\gc0.count_d1_reg[5]_rep__6 ({\gntv_or_sync_fifo.gl0.rd_n_58 ,\gntv_or_sync_fifo.gl0.rd_n_59 ,\gntv_or_sync_fifo.gl0.rd_n_60 ,\gntv_or_sync_fifo.gl0.rd_n_61 ,\gntv_or_sync_fifo.gl0.rd_n_62 ,\gntv_or_sync_fifo.gl0.rd_n_63 }),
        .\gc0.count_d1_reg[5]_rep__7 ({\gntv_or_sync_fifo.gl0.rd_n_64 ,\gntv_or_sync_fifo.gl0.rd_n_65 ,\gntv_or_sync_fifo.gl0.rd_n_66 ,\gntv_or_sync_fifo.gl0.rd_n_67 ,\gntv_or_sync_fifo.gl0.rd_n_68 ,\gntv_or_sync_fifo.gl0.rd_n_69 }),
        .\gc0.count_d1_reg[5]_rep__8 ({\gntv_or_sync_fifo.gl0.rd_n_70 ,\gntv_or_sync_fifo.gl0.rd_n_71 ,\gntv_or_sync_fifo.gl0.rd_n_72 ,\gntv_or_sync_fifo.gl0.rd_n_73 ,\gntv_or_sync_fifo.gl0.rd_n_74 ,\gntv_or_sync_fifo.gl0.rd_n_75 }),
        .\gc0.count_d1_reg[6]_rep (\gntv_or_sync_fifo.gl0.rd_n_15 ),
        .\gc0.count_d1_reg[7]_rep (\gntv_or_sync_fifo.gl0.rd_n_14 ),
        .\gic0.gc0.count_d2_reg[0]_rep__3 (\gntv_or_sync_fifo.gl0.wr_n_106 ),
        .\gic0.gc0.count_d2_reg[10] (\gntv_or_sync_fifo.gl0.wr_n_21 ),
        .\gic0.gc0.count_d2_reg[10]_0 (\gntv_or_sync_fifo.gl0.wr_n_68 ),
        .\gic0.gc0.count_d2_reg[10]_1 (\gntv_or_sync_fifo.gl0.wr_n_75 ),
        .\gic0.gc0.count_d2_reg[10]_2 (\gntv_or_sync_fifo.gl0.wr_n_72 ),
        .\gic0.gc0.count_d2_reg[1]_rep__3 (\gntv_or_sync_fifo.gl0.wr_n_105 ),
        .\gic0.gc0.count_d2_reg[2]_rep__3 (\gntv_or_sync_fifo.gl0.wr_n_104 ),
        .\gic0.gc0.count_d2_reg[3]_rep__3 (\gntv_or_sync_fifo.gl0.wr_n_103 ),
        .\gic0.gc0.count_d2_reg[4]_rep__3 (\gntv_or_sync_fifo.gl0.wr_n_102 ),
        .\gic0.gc0.count_d2_reg[5]_rep__0 ({\gntv_or_sync_fifo.gl0.wr_n_83 ,\gntv_or_sync_fifo.gl0.wr_n_84 ,\gntv_or_sync_fifo.gl0.wr_n_85 ,\gntv_or_sync_fifo.gl0.wr_n_86 ,\gntv_or_sync_fifo.gl0.wr_n_87 ,\gntv_or_sync_fifo.gl0.wr_n_88 }),
        .\gic0.gc0.count_d2_reg[5]_rep__1 ({\gntv_or_sync_fifo.gl0.wr_n_89 ,\gntv_or_sync_fifo.gl0.wr_n_90 ,\gntv_or_sync_fifo.gl0.wr_n_91 ,\gntv_or_sync_fifo.gl0.wr_n_92 ,\gntv_or_sync_fifo.gl0.wr_n_93 ,\gntv_or_sync_fifo.gl0.wr_n_94 }),
        .\gic0.gc0.count_d2_reg[5]_rep__2 ({\gntv_or_sync_fifo.gl0.wr_n_95 ,\gntv_or_sync_fifo.gl0.wr_n_96 ,\gntv_or_sync_fifo.gl0.wr_n_97 ,\gntv_or_sync_fifo.gl0.wr_n_98 ,\gntv_or_sync_fifo.gl0.wr_n_99 ,\gntv_or_sync_fifo.gl0.wr_n_100 }),
        .\gic0.gc0.count_d2_reg[5]_rep__3 (\gntv_or_sync_fifo.gl0.wr_n_101 ),
        .\gic0.gc0.count_d2_reg[6] (\gntv_or_sync_fifo.gl0.wr_n_44 ),
        .\gic0.gc0.count_d2_reg[6]_0 (\gntv_or_sync_fifo.gl0.wr_n_43 ),
        .\gic0.gc0.count_d2_reg[6]_1 (\gntv_or_sync_fifo.gl0.wr_n_39 ),
        .\gic0.gc0.count_d2_reg[6]_10 (\gntv_or_sync_fifo.gl0.wr_n_70 ),
        .\gic0.gc0.count_d2_reg[6]_11 (\gntv_or_sync_fifo.gl0.wr_n_66 ),
        .\gic0.gc0.count_d2_reg[6]_12 (\gntv_or_sync_fifo.gl0.wr_n_60 ),
        .\gic0.gc0.count_d2_reg[6]_13 (\gntv_or_sync_fifo.gl0.wr_n_50 ),
        .\gic0.gc0.count_d2_reg[6]_14 (\gntv_or_sync_fifo.gl0.wr_n_71 ),
        .\gic0.gc0.count_d2_reg[6]_15 (\gntv_or_sync_fifo.gl0.wr_n_52 ),
        .\gic0.gc0.count_d2_reg[6]_16 (\gntv_or_sync_fifo.gl0.wr_n_67 ),
        .\gic0.gc0.count_d2_reg[6]_17 (\gntv_or_sync_fifo.gl0.wr_n_76 ),
        .\gic0.gc0.count_d2_reg[6]_18 (\gntv_or_sync_fifo.gl0.wr_n_69 ),
        .\gic0.gc0.count_d2_reg[6]_19 (\gntv_or_sync_fifo.gl0.wr_n_74 ),
        .\gic0.gc0.count_d2_reg[6]_2 (\gntv_or_sync_fifo.gl0.wr_n_36 ),
        .\gic0.gc0.count_d2_reg[6]_3 (\gntv_or_sync_fifo.gl0.wr_n_16 ),
        .\gic0.gc0.count_d2_reg[6]_4 (\gntv_or_sync_fifo.gl0.wr_n_18 ),
        .\gic0.gc0.count_d2_reg[6]_5 (\gntv_or_sync_fifo.gl0.wr_n_20 ),
        .\gic0.gc0.count_d2_reg[6]_6 (\gntv_or_sync_fifo.gl0.wr_n_30 ),
        .\gic0.gc0.count_d2_reg[6]_7 (\gntv_or_sync_fifo.gl0.wr_n_24 ),
        .\gic0.gc0.count_d2_reg[6]_8 (\gntv_or_sync_fifo.gl0.wr_n_51 ),
        .\gic0.gc0.count_d2_reg[6]_9 (\gntv_or_sync_fifo.gl0.wr_n_53 ),
        .\gic0.gc0.count_d2_reg[7] (\gntv_or_sync_fifo.gl0.wr_n_42 ),
        .\gic0.gc0.count_d2_reg[7]_0 (\gntv_or_sync_fifo.gl0.wr_n_41 ),
        .\gic0.gc0.count_d2_reg[7]_1 (\gntv_or_sync_fifo.gl0.wr_n_19 ),
        .\gic0.gc0.count_d2_reg[7]_2 (\gntv_or_sync_fifo.gl0.wr_n_15 ),
        .\gic0.gc0.count_d2_reg[7]_3 (\gntv_or_sync_fifo.gl0.wr_n_73 ),
        .\gic0.gc0.count_d2_reg[8] (\gntv_or_sync_fifo.gl0.wr_n_32 ),
        .\gic0.gc0.count_d2_reg[8]_0 (\gntv_or_sync_fifo.gl0.wr_n_26 ),
        .\gic0.gc0.count_d2_reg[8]_1 (\gntv_or_sync_fifo.gl0.wr_n_38 ),
        .\gic0.gc0.count_d2_reg[8]_10 (\gntv_or_sync_fifo.gl0.wr_n_47 ),
        .\gic0.gc0.count_d2_reg[8]_11 (\gntv_or_sync_fifo.gl0.wr_n_65 ),
        .\gic0.gc0.count_d2_reg[8]_12 (\gntv_or_sync_fifo.gl0.wr_n_46 ),
        .\gic0.gc0.count_d2_reg[8]_13 (\gntv_or_sync_fifo.gl0.wr_n_64 ),
        .\gic0.gc0.count_d2_reg[8]_2 (\gntv_or_sync_fifo.gl0.wr_n_37 ),
        .\gic0.gc0.count_d2_reg[8]_3 (\gntv_or_sync_fifo.gl0.wr_n_35 ),
        .\gic0.gc0.count_d2_reg[8]_4 (\gntv_or_sync_fifo.gl0.wr_n_34 ),
        .\gic0.gc0.count_d2_reg[8]_5 (\gntv_or_sync_fifo.gl0.wr_n_23 ),
        .\gic0.gc0.count_d2_reg[8]_6 (\gntv_or_sync_fifo.gl0.wr_n_33 ),
        .\gic0.gc0.count_d2_reg[8]_7 (\gntv_or_sync_fifo.gl0.wr_n_25 ),
        .\gic0.gc0.count_d2_reg[8]_8 (\gntv_or_sync_fifo.gl0.wr_n_48 ),
        .\gic0.gc0.count_d2_reg[8]_9 (\gntv_or_sync_fifo.gl0.wr_n_61 ),
        .\gic0.gc0.count_d2_reg[9] (\gntv_or_sync_fifo.gl0.wr_n_1 ),
        .\gic0.gc0.count_d2_reg[9]_0 (\gntv_or_sync_fifo.gl0.wr_n_14 ),
        .\gic0.gc0.count_d2_reg[9]_1 (\gntv_or_sync_fifo.gl0.wr_n_31 ),
        .\gic0.gc0.count_d2_reg[9]_10 (\gntv_or_sync_fifo.gl0.wr_n_49 ),
        .\gic0.gc0.count_d2_reg[9]_11 (\gntv_or_sync_fifo.gl0.wr_n_57 ),
        .\gic0.gc0.count_d2_reg[9]_12 (\gntv_or_sync_fifo.gl0.wr_n_62 ),
        .\gic0.gc0.count_d2_reg[9]_13 (\gntv_or_sync_fifo.gl0.wr_n_56 ),
        .\gic0.gc0.count_d2_reg[9]_14 (\gntv_or_sync_fifo.gl0.wr_n_59 ),
        .\gic0.gc0.count_d2_reg[9]_15 (\gntv_or_sync_fifo.gl0.wr_n_45 ),
        .\gic0.gc0.count_d2_reg[9]_16 (\gntv_or_sync_fifo.gl0.wr_n_58 ),
        .\gic0.gc0.count_d2_reg[9]_17 (\gntv_or_sync_fifo.gl0.wr_n_63 ),
        .\gic0.gc0.count_d2_reg[9]_2 (\gntv_or_sync_fifo.gl0.wr_n_40 ),
        .\gic0.gc0.count_d2_reg[9]_3 (\gntv_or_sync_fifo.gl0.wr_n_27 ),
        .\gic0.gc0.count_d2_reg[9]_4 (\gntv_or_sync_fifo.gl0.wr_n_17 ),
        .\gic0.gc0.count_d2_reg[9]_5 (\gntv_or_sync_fifo.gl0.wr_n_22 ),
        .\gic0.gc0.count_d2_reg[9]_6 (\gntv_or_sync_fifo.gl0.wr_n_28 ),
        .\gic0.gc0.count_d2_reg[9]_7 (\gntv_or_sync_fifo.gl0.wr_n_29 ),
        .\gic0.gc0.count_d2_reg[9]_8 (\gntv_or_sync_fifo.gl0.wr_n_54 ),
        .\gic0.gc0.count_d2_reg[9]_9 (\gntv_or_sync_fifo.gl0.wr_n_55 ),
        .rd_clk(rd_clk),
        .wr_clk(wr_clk));
  fifo_generator_0_reset_blk_ramfifo rstblk
       (.AR(\syncstages_ff_reg[0] ),
        .out(rst_full_ff_i),
        .ram_full_fb_i_reg(rst_full_gen_i),
        .rd_clk(rd_clk),
        .rst(rst),
        .\syncstages_ff_reg[0] (rstblk_n_0),
        .wr_clk(wr_clk),
        .wr_rst_busy(wr_rst_busy));
endmodule

module fifo_generator_0_fifo_generator_top
   (wr_rst_busy,
    \syncstages_ff_reg[0] ,
    empty,
    full,
    dout,
    rst,
    wr_clk,
    rd_clk,
    din,
    wr_en,
    rd_en);
  output wr_rst_busy;
  output \syncstages_ff_reg[0] ;
  output empty;
  output full;
  output [15:0]dout;
  input rst;
  input wr_clk;
  input rd_clk;
  input [15:0]din;
  input wr_en;
  input rd_en;

  wire [15:0]din;
  wire [15:0]dout;
  wire empty;
  wire full;
  wire rd_clk;
  wire rd_en;
  wire rst;
  wire \syncstages_ff_reg[0] ;
  wire wr_clk;
  wire wr_en;
  wire wr_rst_busy;

  fifo_generator_0_fifo_generator_ramfifo \grf.rf 
       (.din(din),
        .dout(dout),
        .empty(empty),
        .full(full),
        .rd_clk(rd_clk),
        .rd_en(rd_en),
        .rst(rst),
        .\syncstages_ff_reg[0] (\syncstages_ff_reg[0] ),
        .wr_clk(wr_clk),
        .wr_en(wr_en),
        .wr_rst_busy(wr_rst_busy));
endmodule

(* C_ADD_NGC_CONSTRAINT = "0" *) (* C_APPLICATION_TYPE_AXIS = "0" *) (* C_APPLICATION_TYPE_RACH = "0" *) 
(* C_APPLICATION_TYPE_RDCH = "0" *) (* C_APPLICATION_TYPE_WACH = "0" *) (* C_APPLICATION_TYPE_WDCH = "0" *) 
(* C_APPLICATION_TYPE_WRCH = "0" *) (* C_AXIS_TDATA_WIDTH = "8" *) (* C_AXIS_TDEST_WIDTH = "1" *) 
(* C_AXIS_TID_WIDTH = "1" *) (* C_AXIS_TKEEP_WIDTH = "1" *) (* C_AXIS_TSTRB_WIDTH = "1" *) 
(* C_AXIS_TUSER_WIDTH = "4" *) (* C_AXIS_TYPE = "0" *) (* C_AXI_ADDR_WIDTH = "32" *) 
(* C_AXI_ARUSER_WIDTH = "1" *) (* C_AXI_AWUSER_WIDTH = "1" *) (* C_AXI_BUSER_WIDTH = "1" *) 
(* C_AXI_DATA_WIDTH = "64" *) (* C_AXI_ID_WIDTH = "1" *) (* C_AXI_LEN_WIDTH = "8" *) 
(* C_AXI_LOCK_WIDTH = "1" *) (* C_AXI_RUSER_WIDTH = "1" *) (* C_AXI_TYPE = "1" *) 
(* C_AXI_WUSER_WIDTH = "1" *) (* C_COMMON_CLOCK = "0" *) (* C_COUNT_TYPE = "0" *) 
(* C_DATA_COUNT_WIDTH = "12" *) (* C_DEFAULT_VALUE = "BlankString" *) (* C_DIN_WIDTH = "16" *) 
(* C_DIN_WIDTH_AXIS = "1" *) (* C_DIN_WIDTH_RACH = "32" *) (* C_DIN_WIDTH_RDCH = "64" *) 
(* C_DIN_WIDTH_WACH = "1" *) (* C_DIN_WIDTH_WDCH = "64" *) (* C_DIN_WIDTH_WRCH = "2" *) 
(* C_DOUT_RST_VAL = "0" *) (* C_DOUT_WIDTH = "16" *) (* C_ENABLE_RLOCS = "0" *) 
(* C_ENABLE_RST_SYNC = "1" *) (* C_EN_SAFETY_CKT = "0" *) (* C_ERROR_INJECTION_TYPE = "0" *) 
(* C_ERROR_INJECTION_TYPE_AXIS = "0" *) (* C_ERROR_INJECTION_TYPE_RACH = "0" *) (* C_ERROR_INJECTION_TYPE_RDCH = "0" *) 
(* C_ERROR_INJECTION_TYPE_WACH = "0" *) (* C_ERROR_INJECTION_TYPE_WDCH = "0" *) (* C_ERROR_INJECTION_TYPE_WRCH = "0" *) 
(* C_FAMILY = "spartan7" *) (* C_FULL_FLAGS_RST_VAL = "1" *) (* C_HAS_ALMOST_EMPTY = "0" *) 
(* C_HAS_ALMOST_FULL = "0" *) (* C_HAS_AXIS_TDATA = "1" *) (* C_HAS_AXIS_TDEST = "0" *) 
(* C_HAS_AXIS_TID = "0" *) (* C_HAS_AXIS_TKEEP = "0" *) (* C_HAS_AXIS_TLAST = "0" *) 
(* C_HAS_AXIS_TREADY = "1" *) (* C_HAS_AXIS_TSTRB = "0" *) (* C_HAS_AXIS_TUSER = "1" *) 
(* C_HAS_AXI_ARUSER = "0" *) (* C_HAS_AXI_AWUSER = "0" *) (* C_HAS_AXI_BUSER = "0" *) 
(* C_HAS_AXI_ID = "0" *) (* C_HAS_AXI_RD_CHANNEL = "1" *) (* C_HAS_AXI_RUSER = "0" *) 
(* C_HAS_AXI_WR_CHANNEL = "1" *) (* C_HAS_AXI_WUSER = "0" *) (* C_HAS_BACKUP = "0" *) 
(* C_HAS_DATA_COUNT = "0" *) (* C_HAS_DATA_COUNTS_AXIS = "0" *) (* C_HAS_DATA_COUNTS_RACH = "0" *) 
(* C_HAS_DATA_COUNTS_RDCH = "0" *) (* C_HAS_DATA_COUNTS_WACH = "0" *) (* C_HAS_DATA_COUNTS_WDCH = "0" *) 
(* C_HAS_DATA_COUNTS_WRCH = "0" *) (* C_HAS_INT_CLK = "0" *) (* C_HAS_MASTER_CE = "0" *) 
(* C_HAS_MEMINIT_FILE = "0" *) (* C_HAS_OVERFLOW = "0" *) (* C_HAS_PROG_FLAGS_AXIS = "0" *) 
(* C_HAS_PROG_FLAGS_RACH = "0" *) (* C_HAS_PROG_FLAGS_RDCH = "0" *) (* C_HAS_PROG_FLAGS_WACH = "0" *) 
(* C_HAS_PROG_FLAGS_WDCH = "0" *) (* C_HAS_PROG_FLAGS_WRCH = "0" *) (* C_HAS_RD_DATA_COUNT = "0" *) 
(* C_HAS_RD_RST = "0" *) (* C_HAS_RST = "1" *) (* C_HAS_SLAVE_CE = "0" *) 
(* C_HAS_SRST = "0" *) (* C_HAS_UNDERFLOW = "0" *) (* C_HAS_VALID = "0" *) 
(* C_HAS_WR_ACK = "0" *) (* C_HAS_WR_DATA_COUNT = "0" *) (* C_HAS_WR_RST = "0" *) 
(* C_IMPLEMENTATION_TYPE = "2" *) (* C_IMPLEMENTATION_TYPE_AXIS = "1" *) (* C_IMPLEMENTATION_TYPE_RACH = "1" *) 
(* C_IMPLEMENTATION_TYPE_RDCH = "1" *) (* C_IMPLEMENTATION_TYPE_WACH = "1" *) (* C_IMPLEMENTATION_TYPE_WDCH = "1" *) 
(* C_IMPLEMENTATION_TYPE_WRCH = "1" *) (* C_INIT_WR_PNTR_VAL = "0" *) (* C_INTERFACE_TYPE = "0" *) 
(* C_MEMORY_TYPE = "2" *) (* C_MIF_FILE_NAME = "BlankString" *) (* C_MSGON_VAL = "1" *) 
(* C_OPTIMIZATION_MODE = "0" *) (* C_OVERFLOW_LOW = "0" *) (* C_POWER_SAVING_MODE = "0" *) 
(* C_PRELOAD_LATENCY = "1" *) (* C_PRELOAD_REGS = "0" *) (* C_PRIM_FIFO_TYPE = "4kx9" *) 
(* C_PRIM_FIFO_TYPE_AXIS = "1kx18" *) (* C_PRIM_FIFO_TYPE_RACH = "512x36" *) (* C_PRIM_FIFO_TYPE_RDCH = "1kx36" *) 
(* C_PRIM_FIFO_TYPE_WACH = "512x36" *) (* C_PRIM_FIFO_TYPE_WDCH = "1kx36" *) (* C_PRIM_FIFO_TYPE_WRCH = "512x36" *) 
(* C_PROG_EMPTY_THRESH_ASSERT_VAL = "2" *) (* C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS = "1022" *) (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH = "1022" *) 
(* C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH = "1022" *) (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH = "1022" *) (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH = "1022" *) 
(* C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH = "1022" *) (* C_PROG_EMPTY_THRESH_NEGATE_VAL = "3" *) (* C_PROG_EMPTY_TYPE = "0" *) 
(* C_PROG_EMPTY_TYPE_AXIS = "0" *) (* C_PROG_EMPTY_TYPE_RACH = "0" *) (* C_PROG_EMPTY_TYPE_RDCH = "0" *) 
(* C_PROG_EMPTY_TYPE_WACH = "0" *) (* C_PROG_EMPTY_TYPE_WDCH = "0" *) (* C_PROG_EMPTY_TYPE_WRCH = "0" *) 
(* C_PROG_FULL_THRESH_ASSERT_VAL = "4093" *) (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "1023" *) (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "1023" *) 
(* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) (* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "1023" *) (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) 
(* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "1023" *) (* C_PROG_FULL_THRESH_NEGATE_VAL = "4092" *) (* C_PROG_FULL_TYPE = "0" *) 
(* C_PROG_FULL_TYPE_AXIS = "0" *) (* C_PROG_FULL_TYPE_RACH = "0" *) (* C_PROG_FULL_TYPE_RDCH = "0" *) 
(* C_PROG_FULL_TYPE_WACH = "0" *) (* C_PROG_FULL_TYPE_WDCH = "0" *) (* C_PROG_FULL_TYPE_WRCH = "0" *) 
(* C_RACH_TYPE = "0" *) (* C_RDCH_TYPE = "0" *) (* C_RD_DATA_COUNT_WIDTH = "12" *) 
(* C_RD_DEPTH = "4096" *) (* C_RD_FREQ = "1" *) (* C_RD_PNTR_WIDTH = "12" *) 
(* C_REG_SLICE_MODE_AXIS = "0" *) (* C_REG_SLICE_MODE_RACH = "0" *) (* C_REG_SLICE_MODE_RDCH = "0" *) 
(* C_REG_SLICE_MODE_WACH = "0" *) (* C_REG_SLICE_MODE_WDCH = "0" *) (* C_REG_SLICE_MODE_WRCH = "0" *) 
(* C_SELECT_XPM = "0" *) (* C_SYNCHRONIZER_STAGE = "2" *) (* C_UNDERFLOW_LOW = "0" *) 
(* C_USE_COMMON_OVERFLOW = "0" *) (* C_USE_COMMON_UNDERFLOW = "0" *) (* C_USE_DEFAULT_SETTINGS = "0" *) 
(* C_USE_DOUT_RST = "1" *) (* C_USE_ECC = "0" *) (* C_USE_ECC_AXIS = "0" *) 
(* C_USE_ECC_RACH = "0" *) (* C_USE_ECC_RDCH = "0" *) (* C_USE_ECC_WACH = "0" *) 
(* C_USE_ECC_WDCH = "0" *) (* C_USE_ECC_WRCH = "0" *) (* C_USE_EMBEDDED_REG = "0" *) 
(* C_USE_FIFO16_FLAGS = "0" *) (* C_USE_FWFT_DATA_COUNT = "0" *) (* C_USE_PIPELINE_REG = "0" *) 
(* C_VALID_LOW = "0" *) (* C_WACH_TYPE = "0" *) (* C_WDCH_TYPE = "0" *) 
(* C_WRCH_TYPE = "0" *) (* C_WR_ACK_LOW = "0" *) (* C_WR_DATA_COUNT_WIDTH = "12" *) 
(* C_WR_DEPTH = "4096" *) (* C_WR_DEPTH_AXIS = "1024" *) (* C_WR_DEPTH_RACH = "16" *) 
(* C_WR_DEPTH_RDCH = "1024" *) (* C_WR_DEPTH_WACH = "16" *) (* C_WR_DEPTH_WDCH = "1024" *) 
(* C_WR_DEPTH_WRCH = "16" *) (* C_WR_FREQ = "1" *) (* C_WR_PNTR_WIDTH = "12" *) 
(* C_WR_PNTR_WIDTH_AXIS = "10" *) (* C_WR_PNTR_WIDTH_RACH = "4" *) (* C_WR_PNTR_WIDTH_RDCH = "10" *) 
(* C_WR_PNTR_WIDTH_WACH = "4" *) (* C_WR_PNTR_WIDTH_WDCH = "10" *) (* C_WR_PNTR_WIDTH_WRCH = "4" *) 
(* C_WR_RESPONSE_LATENCY = "1" *) 
module fifo_generator_0_fifo_generator_v13_2_2
   (backup,
    backup_marker,
    clk,
    rst,
    srst,
    wr_clk,
    wr_rst,
    rd_clk,
    rd_rst,
    din,
    wr_en,
    rd_en,
    prog_empty_thresh,
    prog_empty_thresh_assert,
    prog_empty_thresh_negate,
    prog_full_thresh,
    prog_full_thresh_assert,
    prog_full_thresh_negate,
    int_clk,
    injectdbiterr,
    injectsbiterr,
    sleep,
    dout,
    full,
    almost_full,
    wr_ack,
    overflow,
    empty,
    almost_empty,
    valid,
    underflow,
    data_count,
    rd_data_count,
    wr_data_count,
    prog_full,
    prog_empty,
    sbiterr,
    dbiterr,
    wr_rst_busy,
    rd_rst_busy,
    m_aclk,
    s_aclk,
    s_aresetn,
    m_aclk_en,
    s_aclk_en,
    s_axi_awid,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awlock,
    s_axi_awcache,
    s_axi_awprot,
    s_axi_awqos,
    s_axi_awregion,
    s_axi_awuser,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wid,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wuser,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bid,
    s_axi_bresp,
    s_axi_buser,
    s_axi_bvalid,
    s_axi_bready,
    m_axi_awid,
    m_axi_awaddr,
    m_axi_awlen,
    m_axi_awsize,
    m_axi_awburst,
    m_axi_awlock,
    m_axi_awcache,
    m_axi_awprot,
    m_axi_awqos,
    m_axi_awregion,
    m_axi_awuser,
    m_axi_awvalid,
    m_axi_awready,
    m_axi_wid,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wlast,
    m_axi_wuser,
    m_axi_wvalid,
    m_axi_wready,
    m_axi_bid,
    m_axi_bresp,
    m_axi_buser,
    m_axi_bvalid,
    m_axi_bready,
    s_axi_arid,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arlock,
    s_axi_arcache,
    s_axi_arprot,
    s_axi_arqos,
    s_axi_arregion,
    s_axi_aruser,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rid,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_ruser,
    s_axi_rvalid,
    s_axi_rready,
    m_axi_arid,
    m_axi_araddr,
    m_axi_arlen,
    m_axi_arsize,
    m_axi_arburst,
    m_axi_arlock,
    m_axi_arcache,
    m_axi_arprot,
    m_axi_arqos,
    m_axi_arregion,
    m_axi_aruser,
    m_axi_arvalid,
    m_axi_arready,
    m_axi_rid,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rlast,
    m_axi_ruser,
    m_axi_rvalid,
    m_axi_rready,
    s_axis_tvalid,
    s_axis_tready,
    s_axis_tdata,
    s_axis_tstrb,
    s_axis_tkeep,
    s_axis_tlast,
    s_axis_tid,
    s_axis_tdest,
    s_axis_tuser,
    m_axis_tvalid,
    m_axis_tready,
    m_axis_tdata,
    m_axis_tstrb,
    m_axis_tkeep,
    m_axis_tlast,
    m_axis_tid,
    m_axis_tdest,
    m_axis_tuser,
    axi_aw_injectsbiterr,
    axi_aw_injectdbiterr,
    axi_aw_prog_full_thresh,
    axi_aw_prog_empty_thresh,
    axi_aw_data_count,
    axi_aw_wr_data_count,
    axi_aw_rd_data_count,
    axi_aw_sbiterr,
    axi_aw_dbiterr,
    axi_aw_overflow,
    axi_aw_underflow,
    axi_aw_prog_full,
    axi_aw_prog_empty,
    axi_w_injectsbiterr,
    axi_w_injectdbiterr,
    axi_w_prog_full_thresh,
    axi_w_prog_empty_thresh,
    axi_w_data_count,
    axi_w_wr_data_count,
    axi_w_rd_data_count,
    axi_w_sbiterr,
    axi_w_dbiterr,
    axi_w_overflow,
    axi_w_underflow,
    axi_w_prog_full,
    axi_w_prog_empty,
    axi_b_injectsbiterr,
    axi_b_injectdbiterr,
    axi_b_prog_full_thresh,
    axi_b_prog_empty_thresh,
    axi_b_data_count,
    axi_b_wr_data_count,
    axi_b_rd_data_count,
    axi_b_sbiterr,
    axi_b_dbiterr,
    axi_b_overflow,
    axi_b_underflow,
    axi_b_prog_full,
    axi_b_prog_empty,
    axi_ar_injectsbiterr,
    axi_ar_injectdbiterr,
    axi_ar_prog_full_thresh,
    axi_ar_prog_empty_thresh,
    axi_ar_data_count,
    axi_ar_wr_data_count,
    axi_ar_rd_data_count,
    axi_ar_sbiterr,
    axi_ar_dbiterr,
    axi_ar_overflow,
    axi_ar_underflow,
    axi_ar_prog_full,
    axi_ar_prog_empty,
    axi_r_injectsbiterr,
    axi_r_injectdbiterr,
    axi_r_prog_full_thresh,
    axi_r_prog_empty_thresh,
    axi_r_data_count,
    axi_r_wr_data_count,
    axi_r_rd_data_count,
    axi_r_sbiterr,
    axi_r_dbiterr,
    axi_r_overflow,
    axi_r_underflow,
    axi_r_prog_full,
    axi_r_prog_empty,
    axis_injectsbiterr,
    axis_injectdbiterr,
    axis_prog_full_thresh,
    axis_prog_empty_thresh,
    axis_data_count,
    axis_wr_data_count,
    axis_rd_data_count,
    axis_sbiterr,
    axis_dbiterr,
    axis_overflow,
    axis_underflow,
    axis_prog_full,
    axis_prog_empty);
  input backup;
  input backup_marker;
  input clk;
  input rst;
  input srst;
  input wr_clk;
  input wr_rst;
  input rd_clk;
  input rd_rst;
  input [15:0]din;
  input wr_en;
  input rd_en;
  input [11:0]prog_empty_thresh;
  input [11:0]prog_empty_thresh_assert;
  input [11:0]prog_empty_thresh_negate;
  input [11:0]prog_full_thresh;
  input [11:0]prog_full_thresh_assert;
  input [11:0]prog_full_thresh_negate;
  input int_clk;
  input injectdbiterr;
  input injectsbiterr;
  input sleep;
  output [15:0]dout;
  output full;
  output almost_full;
  output wr_ack;
  output overflow;
  output empty;
  output almost_empty;
  output valid;
  output underflow;
  output [11:0]data_count;
  output [11:0]rd_data_count;
  output [11:0]wr_data_count;
  output prog_full;
  output prog_empty;
  output sbiterr;
  output dbiterr;
  output wr_rst_busy;
  output rd_rst_busy;
  input m_aclk;
  input s_aclk;
  input s_aresetn;
  input m_aclk_en;
  input s_aclk_en;
  input [0:0]s_axi_awid;
  input [31:0]s_axi_awaddr;
  input [7:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input [0:0]s_axi_awlock;
  input [3:0]s_axi_awcache;
  input [2:0]s_axi_awprot;
  input [3:0]s_axi_awqos;
  input [3:0]s_axi_awregion;
  input [0:0]s_axi_awuser;
  input s_axi_awvalid;
  output s_axi_awready;
  input [0:0]s_axi_wid;
  input [63:0]s_axi_wdata;
  input [7:0]s_axi_wstrb;
  input s_axi_wlast;
  input [0:0]s_axi_wuser;
  input s_axi_wvalid;
  output s_axi_wready;
  output [0:0]s_axi_bid;
  output [1:0]s_axi_bresp;
  output [0:0]s_axi_buser;
  output s_axi_bvalid;
  input s_axi_bready;
  output [0:0]m_axi_awid;
  output [31:0]m_axi_awaddr;
  output [7:0]m_axi_awlen;
  output [2:0]m_axi_awsize;
  output [1:0]m_axi_awburst;
  output [0:0]m_axi_awlock;
  output [3:0]m_axi_awcache;
  output [2:0]m_axi_awprot;
  output [3:0]m_axi_awqos;
  output [3:0]m_axi_awregion;
  output [0:0]m_axi_awuser;
  output m_axi_awvalid;
  input m_axi_awready;
  output [0:0]m_axi_wid;
  output [63:0]m_axi_wdata;
  output [7:0]m_axi_wstrb;
  output m_axi_wlast;
  output [0:0]m_axi_wuser;
  output m_axi_wvalid;
  input m_axi_wready;
  input [0:0]m_axi_bid;
  input [1:0]m_axi_bresp;
  input [0:0]m_axi_buser;
  input m_axi_bvalid;
  output m_axi_bready;
  input [0:0]s_axi_arid;
  input [31:0]s_axi_araddr;
  input [7:0]s_axi_arlen;
  input [2:0]s_axi_arsize;
  input [1:0]s_axi_arburst;
  input [0:0]s_axi_arlock;
  input [3:0]s_axi_arcache;
  input [2:0]s_axi_arprot;
  input [3:0]s_axi_arqos;
  input [3:0]s_axi_arregion;
  input [0:0]s_axi_aruser;
  input s_axi_arvalid;
  output s_axi_arready;
  output [0:0]s_axi_rid;
  output [63:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rlast;
  output [0:0]s_axi_ruser;
  output s_axi_rvalid;
  input s_axi_rready;
  output [0:0]m_axi_arid;
  output [31:0]m_axi_araddr;
  output [7:0]m_axi_arlen;
  output [2:0]m_axi_arsize;
  output [1:0]m_axi_arburst;
  output [0:0]m_axi_arlock;
  output [3:0]m_axi_arcache;
  output [2:0]m_axi_arprot;
  output [3:0]m_axi_arqos;
  output [3:0]m_axi_arregion;
  output [0:0]m_axi_aruser;
  output m_axi_arvalid;
  input m_axi_arready;
  input [0:0]m_axi_rid;
  input [63:0]m_axi_rdata;
  input [1:0]m_axi_rresp;
  input m_axi_rlast;
  input [0:0]m_axi_ruser;
  input m_axi_rvalid;
  output m_axi_rready;
  input s_axis_tvalid;
  output s_axis_tready;
  input [7:0]s_axis_tdata;
  input [0:0]s_axis_tstrb;
  input [0:0]s_axis_tkeep;
  input s_axis_tlast;
  input [0:0]s_axis_tid;
  input [0:0]s_axis_tdest;
  input [3:0]s_axis_tuser;
  output m_axis_tvalid;
  input m_axis_tready;
  output [7:0]m_axis_tdata;
  output [0:0]m_axis_tstrb;
  output [0:0]m_axis_tkeep;
  output m_axis_tlast;
  output [0:0]m_axis_tid;
  output [0:0]m_axis_tdest;
  output [3:0]m_axis_tuser;
  input axi_aw_injectsbiterr;
  input axi_aw_injectdbiterr;
  input [3:0]axi_aw_prog_full_thresh;
  input [3:0]axi_aw_prog_empty_thresh;
  output [4:0]axi_aw_data_count;
  output [4:0]axi_aw_wr_data_count;
  output [4:0]axi_aw_rd_data_count;
  output axi_aw_sbiterr;
  output axi_aw_dbiterr;
  output axi_aw_overflow;
  output axi_aw_underflow;
  output axi_aw_prog_full;
  output axi_aw_prog_empty;
  input axi_w_injectsbiterr;
  input axi_w_injectdbiterr;
  input [9:0]axi_w_prog_full_thresh;
  input [9:0]axi_w_prog_empty_thresh;
  output [10:0]axi_w_data_count;
  output [10:0]axi_w_wr_data_count;
  output [10:0]axi_w_rd_data_count;
  output axi_w_sbiterr;
  output axi_w_dbiterr;
  output axi_w_overflow;
  output axi_w_underflow;
  output axi_w_prog_full;
  output axi_w_prog_empty;
  input axi_b_injectsbiterr;
  input axi_b_injectdbiterr;
  input [3:0]axi_b_prog_full_thresh;
  input [3:0]axi_b_prog_empty_thresh;
  output [4:0]axi_b_data_count;
  output [4:0]axi_b_wr_data_count;
  output [4:0]axi_b_rd_data_count;
  output axi_b_sbiterr;
  output axi_b_dbiterr;
  output axi_b_overflow;
  output axi_b_underflow;
  output axi_b_prog_full;
  output axi_b_prog_empty;
  input axi_ar_injectsbiterr;
  input axi_ar_injectdbiterr;
  input [3:0]axi_ar_prog_full_thresh;
  input [3:0]axi_ar_prog_empty_thresh;
  output [4:0]axi_ar_data_count;
  output [4:0]axi_ar_wr_data_count;
  output [4:0]axi_ar_rd_data_count;
  output axi_ar_sbiterr;
  output axi_ar_dbiterr;
  output axi_ar_overflow;
  output axi_ar_underflow;
  output axi_ar_prog_full;
  output axi_ar_prog_empty;
  input axi_r_injectsbiterr;
  input axi_r_injectdbiterr;
  input [9:0]axi_r_prog_full_thresh;
  input [9:0]axi_r_prog_empty_thresh;
  output [10:0]axi_r_data_count;
  output [10:0]axi_r_wr_data_count;
  output [10:0]axi_r_rd_data_count;
  output axi_r_sbiterr;
  output axi_r_dbiterr;
  output axi_r_overflow;
  output axi_r_underflow;
  output axi_r_prog_full;
  output axi_r_prog_empty;
  input axis_injectsbiterr;
  input axis_injectdbiterr;
  input [9:0]axis_prog_full_thresh;
  input [9:0]axis_prog_empty_thresh;
  output [10:0]axis_data_count;
  output [10:0]axis_wr_data_count;
  output [10:0]axis_rd_data_count;
  output axis_sbiterr;
  output axis_dbiterr;
  output axis_overflow;
  output axis_underflow;
  output axis_prog_full;
  output axis_prog_empty;

  wire \<const0> ;
  wire \<const1> ;
  wire [15:0]din;
  wire [15:0]dout;
  wire empty;
  wire full;
  wire rd_clk;
  wire rd_en;
  wire rd_rst_busy;
  wire rst;
  wire wr_clk;
  wire wr_en;
  wire wr_rst_busy;

  assign almost_empty = \<const0> ;
  assign almost_full = \<const0> ;
  assign axi_ar_data_count[4] = \<const0> ;
  assign axi_ar_data_count[3] = \<const0> ;
  assign axi_ar_data_count[2] = \<const0> ;
  assign axi_ar_data_count[1] = \<const0> ;
  assign axi_ar_data_count[0] = \<const0> ;
  assign axi_ar_dbiterr = \<const0> ;
  assign axi_ar_overflow = \<const0> ;
  assign axi_ar_prog_empty = \<const1> ;
  assign axi_ar_prog_full = \<const0> ;
  assign axi_ar_rd_data_count[4] = \<const0> ;
  assign axi_ar_rd_data_count[3] = \<const0> ;
  assign axi_ar_rd_data_count[2] = \<const0> ;
  assign axi_ar_rd_data_count[1] = \<const0> ;
  assign axi_ar_rd_data_count[0] = \<const0> ;
  assign axi_ar_sbiterr = \<const0> ;
  assign axi_ar_underflow = \<const0> ;
  assign axi_ar_wr_data_count[4] = \<const0> ;
  assign axi_ar_wr_data_count[3] = \<const0> ;
  assign axi_ar_wr_data_count[2] = \<const0> ;
  assign axi_ar_wr_data_count[1] = \<const0> ;
  assign axi_ar_wr_data_count[0] = \<const0> ;
  assign axi_aw_data_count[4] = \<const0> ;
  assign axi_aw_data_count[3] = \<const0> ;
  assign axi_aw_data_count[2] = \<const0> ;
  assign axi_aw_data_count[1] = \<const0> ;
  assign axi_aw_data_count[0] = \<const0> ;
  assign axi_aw_dbiterr = \<const0> ;
  assign axi_aw_overflow = \<const0> ;
  assign axi_aw_prog_empty = \<const1> ;
  assign axi_aw_prog_full = \<const0> ;
  assign axi_aw_rd_data_count[4] = \<const0> ;
  assign axi_aw_rd_data_count[3] = \<const0> ;
  assign axi_aw_rd_data_count[2] = \<const0> ;
  assign axi_aw_rd_data_count[1] = \<const0> ;
  assign axi_aw_rd_data_count[0] = \<const0> ;
  assign axi_aw_sbiterr = \<const0> ;
  assign axi_aw_underflow = \<const0> ;
  assign axi_aw_wr_data_count[4] = \<const0> ;
  assign axi_aw_wr_data_count[3] = \<const0> ;
  assign axi_aw_wr_data_count[2] = \<const0> ;
  assign axi_aw_wr_data_count[1] = \<const0> ;
  assign axi_aw_wr_data_count[0] = \<const0> ;
  assign axi_b_data_count[4] = \<const0> ;
  assign axi_b_data_count[3] = \<const0> ;
  assign axi_b_data_count[2] = \<const0> ;
  assign axi_b_data_count[1] = \<const0> ;
  assign axi_b_data_count[0] = \<const0> ;
  assign axi_b_dbiterr = \<const0> ;
  assign axi_b_overflow = \<const0> ;
  assign axi_b_prog_empty = \<const1> ;
  assign axi_b_prog_full = \<const0> ;
  assign axi_b_rd_data_count[4] = \<const0> ;
  assign axi_b_rd_data_count[3] = \<const0> ;
  assign axi_b_rd_data_count[2] = \<const0> ;
  assign axi_b_rd_data_count[1] = \<const0> ;
  assign axi_b_rd_data_count[0] = \<const0> ;
  assign axi_b_sbiterr = \<const0> ;
  assign axi_b_underflow = \<const0> ;
  assign axi_b_wr_data_count[4] = \<const0> ;
  assign axi_b_wr_data_count[3] = \<const0> ;
  assign axi_b_wr_data_count[2] = \<const0> ;
  assign axi_b_wr_data_count[1] = \<const0> ;
  assign axi_b_wr_data_count[0] = \<const0> ;
  assign axi_r_data_count[10] = \<const0> ;
  assign axi_r_data_count[9] = \<const0> ;
  assign axi_r_data_count[8] = \<const0> ;
  assign axi_r_data_count[7] = \<const0> ;
  assign axi_r_data_count[6] = \<const0> ;
  assign axi_r_data_count[5] = \<const0> ;
  assign axi_r_data_count[4] = \<const0> ;
  assign axi_r_data_count[3] = \<const0> ;
  assign axi_r_data_count[2] = \<const0> ;
  assign axi_r_data_count[1] = \<const0> ;
  assign axi_r_data_count[0] = \<const0> ;
  assign axi_r_dbiterr = \<const0> ;
  assign axi_r_overflow = \<const0> ;
  assign axi_r_prog_empty = \<const1> ;
  assign axi_r_prog_full = \<const0> ;
  assign axi_r_rd_data_count[10] = \<const0> ;
  assign axi_r_rd_data_count[9] = \<const0> ;
  assign axi_r_rd_data_count[8] = \<const0> ;
  assign axi_r_rd_data_count[7] = \<const0> ;
  assign axi_r_rd_data_count[6] = \<const0> ;
  assign axi_r_rd_data_count[5] = \<const0> ;
  assign axi_r_rd_data_count[4] = \<const0> ;
  assign axi_r_rd_data_count[3] = \<const0> ;
  assign axi_r_rd_data_count[2] = \<const0> ;
  assign axi_r_rd_data_count[1] = \<const0> ;
  assign axi_r_rd_data_count[0] = \<const0> ;
  assign axi_r_sbiterr = \<const0> ;
  assign axi_r_underflow = \<const0> ;
  assign axi_r_wr_data_count[10] = \<const0> ;
  assign axi_r_wr_data_count[9] = \<const0> ;
  assign axi_r_wr_data_count[8] = \<const0> ;
  assign axi_r_wr_data_count[7] = \<const0> ;
  assign axi_r_wr_data_count[6] = \<const0> ;
  assign axi_r_wr_data_count[5] = \<const0> ;
  assign axi_r_wr_data_count[4] = \<const0> ;
  assign axi_r_wr_data_count[3] = \<const0> ;
  assign axi_r_wr_data_count[2] = \<const0> ;
  assign axi_r_wr_data_count[1] = \<const0> ;
  assign axi_r_wr_data_count[0] = \<const0> ;
  assign axi_w_data_count[10] = \<const0> ;
  assign axi_w_data_count[9] = \<const0> ;
  assign axi_w_data_count[8] = \<const0> ;
  assign axi_w_data_count[7] = \<const0> ;
  assign axi_w_data_count[6] = \<const0> ;
  assign axi_w_data_count[5] = \<const0> ;
  assign axi_w_data_count[4] = \<const0> ;
  assign axi_w_data_count[3] = \<const0> ;
  assign axi_w_data_count[2] = \<const0> ;
  assign axi_w_data_count[1] = \<const0> ;
  assign axi_w_data_count[0] = \<const0> ;
  assign axi_w_dbiterr = \<const0> ;
  assign axi_w_overflow = \<const0> ;
  assign axi_w_prog_empty = \<const1> ;
  assign axi_w_prog_full = \<const0> ;
  assign axi_w_rd_data_count[10] = \<const0> ;
  assign axi_w_rd_data_count[9] = \<const0> ;
  assign axi_w_rd_data_count[8] = \<const0> ;
  assign axi_w_rd_data_count[7] = \<const0> ;
  assign axi_w_rd_data_count[6] = \<const0> ;
  assign axi_w_rd_data_count[5] = \<const0> ;
  assign axi_w_rd_data_count[4] = \<const0> ;
  assign axi_w_rd_data_count[3] = \<const0> ;
  assign axi_w_rd_data_count[2] = \<const0> ;
  assign axi_w_rd_data_count[1] = \<const0> ;
  assign axi_w_rd_data_count[0] = \<const0> ;
  assign axi_w_sbiterr = \<const0> ;
  assign axi_w_underflow = \<const0> ;
  assign axi_w_wr_data_count[10] = \<const0> ;
  assign axi_w_wr_data_count[9] = \<const0> ;
  assign axi_w_wr_data_count[8] = \<const0> ;
  assign axi_w_wr_data_count[7] = \<const0> ;
  assign axi_w_wr_data_count[6] = \<const0> ;
  assign axi_w_wr_data_count[5] = \<const0> ;
  assign axi_w_wr_data_count[4] = \<const0> ;
  assign axi_w_wr_data_count[3] = \<const0> ;
  assign axi_w_wr_data_count[2] = \<const0> ;
  assign axi_w_wr_data_count[1] = \<const0> ;
  assign axi_w_wr_data_count[0] = \<const0> ;
  assign axis_data_count[10] = \<const0> ;
  assign axis_data_count[9] = \<const0> ;
  assign axis_data_count[8] = \<const0> ;
  assign axis_data_count[7] = \<const0> ;
  assign axis_data_count[6] = \<const0> ;
  assign axis_data_count[5] = \<const0> ;
  assign axis_data_count[4] = \<const0> ;
  assign axis_data_count[3] = \<const0> ;
  assign axis_data_count[2] = \<const0> ;
  assign axis_data_count[1] = \<const0> ;
  assign axis_data_count[0] = \<const0> ;
  assign axis_dbiterr = \<const0> ;
  assign axis_overflow = \<const0> ;
  assign axis_prog_empty = \<const1> ;
  assign axis_prog_full = \<const0> ;
  assign axis_rd_data_count[10] = \<const0> ;
  assign axis_rd_data_count[9] = \<const0> ;
  assign axis_rd_data_count[8] = \<const0> ;
  assign axis_rd_data_count[7] = \<const0> ;
  assign axis_rd_data_count[6] = \<const0> ;
  assign axis_rd_data_count[5] = \<const0> ;
  assign axis_rd_data_count[4] = \<const0> ;
  assign axis_rd_data_count[3] = \<const0> ;
  assign axis_rd_data_count[2] = \<const0> ;
  assign axis_rd_data_count[1] = \<const0> ;
  assign axis_rd_data_count[0] = \<const0> ;
  assign axis_sbiterr = \<const0> ;
  assign axis_underflow = \<const0> ;
  assign axis_wr_data_count[10] = \<const0> ;
  assign axis_wr_data_count[9] = \<const0> ;
  assign axis_wr_data_count[8] = \<const0> ;
  assign axis_wr_data_count[7] = \<const0> ;
  assign axis_wr_data_count[6] = \<const0> ;
  assign axis_wr_data_count[5] = \<const0> ;
  assign axis_wr_data_count[4] = \<const0> ;
  assign axis_wr_data_count[3] = \<const0> ;
  assign axis_wr_data_count[2] = \<const0> ;
  assign axis_wr_data_count[1] = \<const0> ;
  assign axis_wr_data_count[0] = \<const0> ;
  assign data_count[11] = \<const0> ;
  assign data_count[10] = \<const0> ;
  assign data_count[9] = \<const0> ;
  assign data_count[8] = \<const0> ;
  assign data_count[7] = \<const0> ;
  assign data_count[6] = \<const0> ;
  assign data_count[5] = \<const0> ;
  assign data_count[4] = \<const0> ;
  assign data_count[3] = \<const0> ;
  assign data_count[2] = \<const0> ;
  assign data_count[1] = \<const0> ;
  assign data_count[0] = \<const0> ;
  assign dbiterr = \<const0> ;
  assign m_axi_araddr[31] = \<const0> ;
  assign m_axi_araddr[30] = \<const0> ;
  assign m_axi_araddr[29] = \<const0> ;
  assign m_axi_araddr[28] = \<const0> ;
  assign m_axi_araddr[27] = \<const0> ;
  assign m_axi_araddr[26] = \<const0> ;
  assign m_axi_araddr[25] = \<const0> ;
  assign m_axi_araddr[24] = \<const0> ;
  assign m_axi_araddr[23] = \<const0> ;
  assign m_axi_araddr[22] = \<const0> ;
  assign m_axi_araddr[21] = \<const0> ;
  assign m_axi_araddr[20] = \<const0> ;
  assign m_axi_araddr[19] = \<const0> ;
  assign m_axi_araddr[18] = \<const0> ;
  assign m_axi_araddr[17] = \<const0> ;
  assign m_axi_araddr[16] = \<const0> ;
  assign m_axi_araddr[15] = \<const0> ;
  assign m_axi_araddr[14] = \<const0> ;
  assign m_axi_araddr[13] = \<const0> ;
  assign m_axi_araddr[12] = \<const0> ;
  assign m_axi_araddr[11] = \<const0> ;
  assign m_axi_araddr[10] = \<const0> ;
  assign m_axi_araddr[9] = \<const0> ;
  assign m_axi_araddr[8] = \<const0> ;
  assign m_axi_araddr[7] = \<const0> ;
  assign m_axi_araddr[6] = \<const0> ;
  assign m_axi_araddr[5] = \<const0> ;
  assign m_axi_araddr[4] = \<const0> ;
  assign m_axi_araddr[3] = \<const0> ;
  assign m_axi_araddr[2] = \<const0> ;
  assign m_axi_araddr[1] = \<const0> ;
  assign m_axi_araddr[0] = \<const0> ;
  assign m_axi_arburst[1] = \<const0> ;
  assign m_axi_arburst[0] = \<const0> ;
  assign m_axi_arcache[3] = \<const0> ;
  assign m_axi_arcache[2] = \<const0> ;
  assign m_axi_arcache[1] = \<const0> ;
  assign m_axi_arcache[0] = \<const0> ;
  assign m_axi_arid[0] = \<const0> ;
  assign m_axi_arlen[7] = \<const0> ;
  assign m_axi_arlen[6] = \<const0> ;
  assign m_axi_arlen[5] = \<const0> ;
  assign m_axi_arlen[4] = \<const0> ;
  assign m_axi_arlen[3] = \<const0> ;
  assign m_axi_arlen[2] = \<const0> ;
  assign m_axi_arlen[1] = \<const0> ;
  assign m_axi_arlen[0] = \<const0> ;
  assign m_axi_arlock[0] = \<const0> ;
  assign m_axi_arprot[2] = \<const0> ;
  assign m_axi_arprot[1] = \<const0> ;
  assign m_axi_arprot[0] = \<const0> ;
  assign m_axi_arqos[3] = \<const0> ;
  assign m_axi_arqos[2] = \<const0> ;
  assign m_axi_arqos[1] = \<const0> ;
  assign m_axi_arqos[0] = \<const0> ;
  assign m_axi_arregion[3] = \<const0> ;
  assign m_axi_arregion[2] = \<const0> ;
  assign m_axi_arregion[1] = \<const0> ;
  assign m_axi_arregion[0] = \<const0> ;
  assign m_axi_arsize[2] = \<const0> ;
  assign m_axi_arsize[1] = \<const0> ;
  assign m_axi_arsize[0] = \<const0> ;
  assign m_axi_aruser[0] = \<const0> ;
  assign m_axi_arvalid = \<const0> ;
  assign m_axi_awaddr[31] = \<const0> ;
  assign m_axi_awaddr[30] = \<const0> ;
  assign m_axi_awaddr[29] = \<const0> ;
  assign m_axi_awaddr[28] = \<const0> ;
  assign m_axi_awaddr[27] = \<const0> ;
  assign m_axi_awaddr[26] = \<const0> ;
  assign m_axi_awaddr[25] = \<const0> ;
  assign m_axi_awaddr[24] = \<const0> ;
  assign m_axi_awaddr[23] = \<const0> ;
  assign m_axi_awaddr[22] = \<const0> ;
  assign m_axi_awaddr[21] = \<const0> ;
  assign m_axi_awaddr[20] = \<const0> ;
  assign m_axi_awaddr[19] = \<const0> ;
  assign m_axi_awaddr[18] = \<const0> ;
  assign m_axi_awaddr[17] = \<const0> ;
  assign m_axi_awaddr[16] = \<const0> ;
  assign m_axi_awaddr[15] = \<const0> ;
  assign m_axi_awaddr[14] = \<const0> ;
  assign m_axi_awaddr[13] = \<const0> ;
  assign m_axi_awaddr[12] = \<const0> ;
  assign m_axi_awaddr[11] = \<const0> ;
  assign m_axi_awaddr[10] = \<const0> ;
  assign m_axi_awaddr[9] = \<const0> ;
  assign m_axi_awaddr[8] = \<const0> ;
  assign m_axi_awaddr[7] = \<const0> ;
  assign m_axi_awaddr[6] = \<const0> ;
  assign m_axi_awaddr[5] = \<const0> ;
  assign m_axi_awaddr[4] = \<const0> ;
  assign m_axi_awaddr[3] = \<const0> ;
  assign m_axi_awaddr[2] = \<const0> ;
  assign m_axi_awaddr[1] = \<const0> ;
  assign m_axi_awaddr[0] = \<const0> ;
  assign m_axi_awburst[1] = \<const0> ;
  assign m_axi_awburst[0] = \<const0> ;
  assign m_axi_awcache[3] = \<const0> ;
  assign m_axi_awcache[2] = \<const0> ;
  assign m_axi_awcache[1] = \<const0> ;
  assign m_axi_awcache[0] = \<const0> ;
  assign m_axi_awid[0] = \<const0> ;
  assign m_axi_awlen[7] = \<const0> ;
  assign m_axi_awlen[6] = \<const0> ;
  assign m_axi_awlen[5] = \<const0> ;
  assign m_axi_awlen[4] = \<const0> ;
  assign m_axi_awlen[3] = \<const0> ;
  assign m_axi_awlen[2] = \<const0> ;
  assign m_axi_awlen[1] = \<const0> ;
  assign m_axi_awlen[0] = \<const0> ;
  assign m_axi_awlock[0] = \<const0> ;
  assign m_axi_awprot[2] = \<const0> ;
  assign m_axi_awprot[1] = \<const0> ;
  assign m_axi_awprot[0] = \<const0> ;
  assign m_axi_awqos[3] = \<const0> ;
  assign m_axi_awqos[2] = \<const0> ;
  assign m_axi_awqos[1] = \<const0> ;
  assign m_axi_awqos[0] = \<const0> ;
  assign m_axi_awregion[3] = \<const0> ;
  assign m_axi_awregion[2] = \<const0> ;
  assign m_axi_awregion[1] = \<const0> ;
  assign m_axi_awregion[0] = \<const0> ;
  assign m_axi_awsize[2] = \<const0> ;
  assign m_axi_awsize[1] = \<const0> ;
  assign m_axi_awsize[0] = \<const0> ;
  assign m_axi_awuser[0] = \<const0> ;
  assign m_axi_awvalid = \<const0> ;
  assign m_axi_bready = \<const0> ;
  assign m_axi_rready = \<const0> ;
  assign m_axi_wdata[63] = \<const0> ;
  assign m_axi_wdata[62] = \<const0> ;
  assign m_axi_wdata[61] = \<const0> ;
  assign m_axi_wdata[60] = \<const0> ;
  assign m_axi_wdata[59] = \<const0> ;
  assign m_axi_wdata[58] = \<const0> ;
  assign m_axi_wdata[57] = \<const0> ;
  assign m_axi_wdata[56] = \<const0> ;
  assign m_axi_wdata[55] = \<const0> ;
  assign m_axi_wdata[54] = \<const0> ;
  assign m_axi_wdata[53] = \<const0> ;
  assign m_axi_wdata[52] = \<const0> ;
  assign m_axi_wdata[51] = \<const0> ;
  assign m_axi_wdata[50] = \<const0> ;
  assign m_axi_wdata[49] = \<const0> ;
  assign m_axi_wdata[48] = \<const0> ;
  assign m_axi_wdata[47] = \<const0> ;
  assign m_axi_wdata[46] = \<const0> ;
  assign m_axi_wdata[45] = \<const0> ;
  assign m_axi_wdata[44] = \<const0> ;
  assign m_axi_wdata[43] = \<const0> ;
  assign m_axi_wdata[42] = \<const0> ;
  assign m_axi_wdata[41] = \<const0> ;
  assign m_axi_wdata[40] = \<const0> ;
  assign m_axi_wdata[39] = \<const0> ;
  assign m_axi_wdata[38] = \<const0> ;
  assign m_axi_wdata[37] = \<const0> ;
  assign m_axi_wdata[36] = \<const0> ;
  assign m_axi_wdata[35] = \<const0> ;
  assign m_axi_wdata[34] = \<const0> ;
  assign m_axi_wdata[33] = \<const0> ;
  assign m_axi_wdata[32] = \<const0> ;
  assign m_axi_wdata[31] = \<const0> ;
  assign m_axi_wdata[30] = \<const0> ;
  assign m_axi_wdata[29] = \<const0> ;
  assign m_axi_wdata[28] = \<const0> ;
  assign m_axi_wdata[27] = \<const0> ;
  assign m_axi_wdata[26] = \<const0> ;
  assign m_axi_wdata[25] = \<const0> ;
  assign m_axi_wdata[24] = \<const0> ;
  assign m_axi_wdata[23] = \<const0> ;
  assign m_axi_wdata[22] = \<const0> ;
  assign m_axi_wdata[21] = \<const0> ;
  assign m_axi_wdata[20] = \<const0> ;
  assign m_axi_wdata[19] = \<const0> ;
  assign m_axi_wdata[18] = \<const0> ;
  assign m_axi_wdata[17] = \<const0> ;
  assign m_axi_wdata[16] = \<const0> ;
  assign m_axi_wdata[15] = \<const0> ;
  assign m_axi_wdata[14] = \<const0> ;
  assign m_axi_wdata[13] = \<const0> ;
  assign m_axi_wdata[12] = \<const0> ;
  assign m_axi_wdata[11] = \<const0> ;
  assign m_axi_wdata[10] = \<const0> ;
  assign m_axi_wdata[9] = \<const0> ;
  assign m_axi_wdata[8] = \<const0> ;
  assign m_axi_wdata[7] = \<const0> ;
  assign m_axi_wdata[6] = \<const0> ;
  assign m_axi_wdata[5] = \<const0> ;
  assign m_axi_wdata[4] = \<const0> ;
  assign m_axi_wdata[3] = \<const0> ;
  assign m_axi_wdata[2] = \<const0> ;
  assign m_axi_wdata[1] = \<const0> ;
  assign m_axi_wdata[0] = \<const0> ;
  assign m_axi_wid[0] = \<const0> ;
  assign m_axi_wlast = \<const0> ;
  assign m_axi_wstrb[7] = \<const0> ;
  assign m_axi_wstrb[6] = \<const0> ;
  assign m_axi_wstrb[5] = \<const0> ;
  assign m_axi_wstrb[4] = \<const0> ;
  assign m_axi_wstrb[3] = \<const0> ;
  assign m_axi_wstrb[2] = \<const0> ;
  assign m_axi_wstrb[1] = \<const0> ;
  assign m_axi_wstrb[0] = \<const0> ;
  assign m_axi_wuser[0] = \<const0> ;
  assign m_axi_wvalid = \<const0> ;
  assign m_axis_tdata[7] = \<const0> ;
  assign m_axis_tdata[6] = \<const0> ;
  assign m_axis_tdata[5] = \<const0> ;
  assign m_axis_tdata[4] = \<const0> ;
  assign m_axis_tdata[3] = \<const0> ;
  assign m_axis_tdata[2] = \<const0> ;
  assign m_axis_tdata[1] = \<const0> ;
  assign m_axis_tdata[0] = \<const0> ;
  assign m_axis_tdest[0] = \<const0> ;
  assign m_axis_tid[0] = \<const0> ;
  assign m_axis_tkeep[0] = \<const0> ;
  assign m_axis_tlast = \<const0> ;
  assign m_axis_tstrb[0] = \<const0> ;
  assign m_axis_tuser[3] = \<const0> ;
  assign m_axis_tuser[2] = \<const0> ;
  assign m_axis_tuser[1] = \<const0> ;
  assign m_axis_tuser[0] = \<const0> ;
  assign m_axis_tvalid = \<const0> ;
  assign overflow = \<const0> ;
  assign prog_empty = \<const0> ;
  assign prog_full = \<const0> ;
  assign rd_data_count[11] = \<const0> ;
  assign rd_data_count[10] = \<const0> ;
  assign rd_data_count[9] = \<const0> ;
  assign rd_data_count[8] = \<const0> ;
  assign rd_data_count[7] = \<const0> ;
  assign rd_data_count[6] = \<const0> ;
  assign rd_data_count[5] = \<const0> ;
  assign rd_data_count[4] = \<const0> ;
  assign rd_data_count[3] = \<const0> ;
  assign rd_data_count[2] = \<const0> ;
  assign rd_data_count[1] = \<const0> ;
  assign rd_data_count[0] = \<const0> ;
  assign s_axi_arready = \<const0> ;
  assign s_axi_awready = \<const0> ;
  assign s_axi_bid[0] = \<const0> ;
  assign s_axi_bresp[1] = \<const0> ;
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_buser[0] = \<const0> ;
  assign s_axi_bvalid = \<const0> ;
  assign s_axi_rdata[63] = \<const0> ;
  assign s_axi_rdata[62] = \<const0> ;
  assign s_axi_rdata[61] = \<const0> ;
  assign s_axi_rdata[60] = \<const0> ;
  assign s_axi_rdata[59] = \<const0> ;
  assign s_axi_rdata[58] = \<const0> ;
  assign s_axi_rdata[57] = \<const0> ;
  assign s_axi_rdata[56] = \<const0> ;
  assign s_axi_rdata[55] = \<const0> ;
  assign s_axi_rdata[54] = \<const0> ;
  assign s_axi_rdata[53] = \<const0> ;
  assign s_axi_rdata[52] = \<const0> ;
  assign s_axi_rdata[51] = \<const0> ;
  assign s_axi_rdata[50] = \<const0> ;
  assign s_axi_rdata[49] = \<const0> ;
  assign s_axi_rdata[48] = \<const0> ;
  assign s_axi_rdata[47] = \<const0> ;
  assign s_axi_rdata[46] = \<const0> ;
  assign s_axi_rdata[45] = \<const0> ;
  assign s_axi_rdata[44] = \<const0> ;
  assign s_axi_rdata[43] = \<const0> ;
  assign s_axi_rdata[42] = \<const0> ;
  assign s_axi_rdata[41] = \<const0> ;
  assign s_axi_rdata[40] = \<const0> ;
  assign s_axi_rdata[39] = \<const0> ;
  assign s_axi_rdata[38] = \<const0> ;
  assign s_axi_rdata[37] = \<const0> ;
  assign s_axi_rdata[36] = \<const0> ;
  assign s_axi_rdata[35] = \<const0> ;
  assign s_axi_rdata[34] = \<const0> ;
  assign s_axi_rdata[33] = \<const0> ;
  assign s_axi_rdata[32] = \<const0> ;
  assign s_axi_rdata[31] = \<const0> ;
  assign s_axi_rdata[30] = \<const0> ;
  assign s_axi_rdata[29] = \<const0> ;
  assign s_axi_rdata[28] = \<const0> ;
  assign s_axi_rdata[27] = \<const0> ;
  assign s_axi_rdata[26] = \<const0> ;
  assign s_axi_rdata[25] = \<const0> ;
  assign s_axi_rdata[24] = \<const0> ;
  assign s_axi_rdata[23] = \<const0> ;
  assign s_axi_rdata[22] = \<const0> ;
  assign s_axi_rdata[21] = \<const0> ;
  assign s_axi_rdata[20] = \<const0> ;
  assign s_axi_rdata[19] = \<const0> ;
  assign s_axi_rdata[18] = \<const0> ;
  assign s_axi_rdata[17] = \<const0> ;
  assign s_axi_rdata[16] = \<const0> ;
  assign s_axi_rdata[15] = \<const0> ;
  assign s_axi_rdata[14] = \<const0> ;
  assign s_axi_rdata[13] = \<const0> ;
  assign s_axi_rdata[12] = \<const0> ;
  assign s_axi_rdata[11] = \<const0> ;
  assign s_axi_rdata[10] = \<const0> ;
  assign s_axi_rdata[9] = \<const0> ;
  assign s_axi_rdata[8] = \<const0> ;
  assign s_axi_rdata[7] = \<const0> ;
  assign s_axi_rdata[6] = \<const0> ;
  assign s_axi_rdata[5] = \<const0> ;
  assign s_axi_rdata[4] = \<const0> ;
  assign s_axi_rdata[3] = \<const0> ;
  assign s_axi_rdata[2] = \<const0> ;
  assign s_axi_rdata[1] = \<const0> ;
  assign s_axi_rdata[0] = \<const0> ;
  assign s_axi_rid[0] = \<const0> ;
  assign s_axi_rlast = \<const0> ;
  assign s_axi_rresp[1] = \<const0> ;
  assign s_axi_rresp[0] = \<const0> ;
  assign s_axi_ruser[0] = \<const0> ;
  assign s_axi_rvalid = \<const0> ;
  assign s_axi_wready = \<const0> ;
  assign s_axis_tready = \<const0> ;
  assign sbiterr = \<const0> ;
  assign underflow = \<const0> ;
  assign valid = \<const0> ;
  assign wr_ack = \<const0> ;
  assign wr_data_count[11] = \<const0> ;
  assign wr_data_count[10] = \<const0> ;
  assign wr_data_count[9] = \<const0> ;
  assign wr_data_count[8] = \<const0> ;
  assign wr_data_count[7] = \<const0> ;
  assign wr_data_count[6] = \<const0> ;
  assign wr_data_count[5] = \<const0> ;
  assign wr_data_count[4] = \<const0> ;
  assign wr_data_count[3] = \<const0> ;
  assign wr_data_count[2] = \<const0> ;
  assign wr_data_count[1] = \<const0> ;
  assign wr_data_count[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  fifo_generator_0_fifo_generator_v13_2_2_synth inst_fifo_gen
       (.din(din),
        .dout(dout),
        .empty(empty),
        .full(full),
        .rd_clk(rd_clk),
        .rd_en(rd_en),
        .rst(rst),
        .\syncstages_ff_reg[0] (rd_rst_busy),
        .wr_clk(wr_clk),
        .wr_en(wr_en),
        .wr_rst_busy(wr_rst_busy));
endmodule

module fifo_generator_0_fifo_generator_v13_2_2_synth
   (wr_rst_busy,
    \syncstages_ff_reg[0] ,
    empty,
    full,
    dout,
    rst,
    wr_clk,
    rd_clk,
    din,
    wr_en,
    rd_en);
  output wr_rst_busy;
  output \syncstages_ff_reg[0] ;
  output empty;
  output full;
  output [15:0]dout;
  input rst;
  input wr_clk;
  input rd_clk;
  input [15:0]din;
  input wr_en;
  input rd_en;

  wire [15:0]din;
  wire [15:0]dout;
  wire empty;
  wire full;
  wire rd_clk;
  wire rd_en;
  wire rst;
  wire \syncstages_ff_reg[0] ;
  wire wr_clk;
  wire wr_en;
  wire wr_rst_busy;

  fifo_generator_0_fifo_generator_top \gconvfifo.rf 
       (.din(din),
        .dout(dout),
        .empty(empty),
        .full(full),
        .rd_clk(rd_clk),
        .rd_en(rd_en),
        .rst(rst),
        .\syncstages_ff_reg[0] (\syncstages_ff_reg[0] ),
        .wr_clk(wr_clk),
        .wr_en(wr_en),
        .wr_rst_busy(wr_rst_busy));
endmodule

module fifo_generator_0_memory
   (dout,
    wr_clk,
    din,
    \gic0.gc0.count_d2_reg[6] ,
    \gc0.count_d1_reg[5]_rep__0 ,
    Q,
    \gic0.gc0.count_d2_reg[9] ,
    \gic0.gc0.count_d2_reg[9]_0 ,
    \gic0.gc0.count_d2_reg[6]_0 ,
    \gic0.gc0.count_d2_reg[9]_1 ,
    \gic0.gc0.count_d2_reg[7] ,
    \gic0.gc0.count_d2_reg[9]_2 ,
    \gic0.gc0.count_d2_reg[8] ,
    \gic0.gc0.count_d2_reg[8]_0 ,
    \gic0.gc0.count_d2_reg[6]_1 ,
    \gic0.gc0.count_d2_reg[8]_1 ,
    \gic0.gc0.count_d2_reg[9]_3 ,
    \gic0.gc0.count_d2_reg[8]_2 ,
    \gic0.gc0.count_d2_reg[7]_0 ,
    \gic0.gc0.count_d2_reg[6]_2 ,
    \gic0.gc0.count_d2_reg[8]_3 ,
    \gic0.gc0.count_d2_reg[6]_3 ,
    \gic0.gc0.count_d2_reg[7]_1 ,
    \gic0.gc0.count_d2_reg[6]_4 ,
    \gic0.gc0.count_d2_reg[6]_5 ,
    \gic0.gc0.count_d2_reg[9]_4 ,
    \gic0.gc0.count_d2_reg[10] ,
    \gic0.gc0.count_d2_reg[9]_5 ,
    \gic0.gc0.count_d2_reg[6]_6 ,
    \gic0.gc0.count_d2_reg[8]_4 ,
    \gic0.gc0.count_d2_reg[9]_6 ,
    \gic0.gc0.count_d2_reg[8]_5 ,
    \gic0.gc0.count_d2_reg[8]_6 ,
    \gic0.gc0.count_d2_reg[9]_7 ,
    \gic0.gc0.count_d2_reg[7]_2 ,
    \gic0.gc0.count_d2_reg[6]_7 ,
    \gic0.gc0.count_d2_reg[8]_7 ,
    \gic0.gc0.count_d2_reg[6]_8 ,
    ADDRC,
    \gic0.gc0.count_d2_reg[9]_8 ,
    \gic0.gc0.count_d2_reg[9]_9 ,
    \gic0.gc0.count_d2_reg[6]_9 ,
    \gic0.gc0.count_d2_reg[9]_10 ,
    \gic0.gc0.count_d2_reg[9]_11 ,
    \gic0.gc0.count_d2_reg[9]_12 ,
    \gic0.gc0.count_d2_reg[9]_13 ,
    \gic0.gc0.count_d2_reg[8]_8 ,
    \gic0.gc0.count_d2_reg[6]_10 ,
    \gic0.gc0.count_d2_reg[8]_9 ,
    \gic0.gc0.count_d2_reg[6]_11 ,
    \gic0.gc0.count_d2_reg[8]_10 ,
    \gic0.gc0.count_d2_reg[10]_0 ,
    \gic0.gc0.count_d2_reg[6]_12 ,
    \gic0.gc0.count_d2_reg[8]_11 ,
    \gic0.gc0.count_d2_reg[6]_13 ,
    \gic0.gc0.count_d2_reg[6]_14 ,
    \gic0.gc0.count_d2_reg[9]_14 ,
    \gic0.gc0.count_d2_reg[6]_15 ,
    \gic0.gc0.count_d2_reg[8]_12 ,
    \gic0.gc0.count_d2_reg[6]_16 ,
    \gic0.gc0.count_d2_reg[10]_1 ,
    \gic0.gc0.count_d2_reg[6]_17 ,
    \gic0.gc0.count_d2_reg[9]_15 ,
    \gic0.gc0.count_d2_reg[6]_18 ,
    \gic0.gc0.count_d2_reg[9]_16 ,
    \gic0.gc0.count_d2_reg[9]_17 ,
    \gic0.gc0.count_d2_reg[10]_2 ,
    \gic0.gc0.count_d2_reg[7]_3 ,
    \gic0.gc0.count_d2_reg[6]_19 ,
    \gic0.gc0.count_d2_reg[8]_13 ,
    \gc0.count_d1_reg[5]_rep__2 ,
    ADDRD,
    \gc0.count_d1_reg[5]_rep__1 ,
    \gc0.count_d1_reg[5]_rep__4 ,
    \gic0.gc0.count_d2_reg[5]_rep__0 ,
    \gc0.count_d1_reg[5]_rep__3 ,
    \gc0.count_d1_reg[5]_rep__6 ,
    \gic0.gc0.count_d2_reg[5]_rep__1 ,
    \gc0.count_d1_reg[5]_rep__5 ,
    \gc0.count_d1_reg[5]_rep__8 ,
    \gic0.gc0.count_d2_reg[5]_rep__2 ,
    \gc0.count_d1_reg[5]_rep__7 ,
    \gic0.gc0.count_d2_reg[0]_rep__3 ,
    \gic0.gc0.count_d2_reg[1]_rep__3 ,
    \gic0.gc0.count_d2_reg[2]_rep__3 ,
    \gic0.gc0.count_d2_reg[3]_rep__3 ,
    \gic0.gc0.count_d2_reg[4]_rep__3 ,
    \gic0.gc0.count_d2_reg[5]_rep__3 ,
    \gc0.count_d1_reg[11] ,
    \gc0.count_d1_reg[7]_rep ,
    \gc0.count_d1_reg[6]_rep ,
    E,
    rd_clk,
    AR);
  output [15:0]dout;
  input wr_clk;
  input [15:0]din;
  input \gic0.gc0.count_d2_reg[6] ;
  input [5:0]\gc0.count_d1_reg[5]_rep__0 ;
  input [5:0]Q;
  input \gic0.gc0.count_d2_reg[9] ;
  input \gic0.gc0.count_d2_reg[9]_0 ;
  input \gic0.gc0.count_d2_reg[6]_0 ;
  input \gic0.gc0.count_d2_reg[9]_1 ;
  input \gic0.gc0.count_d2_reg[7] ;
  input \gic0.gc0.count_d2_reg[9]_2 ;
  input \gic0.gc0.count_d2_reg[8] ;
  input \gic0.gc0.count_d2_reg[8]_0 ;
  input \gic0.gc0.count_d2_reg[6]_1 ;
  input \gic0.gc0.count_d2_reg[8]_1 ;
  input \gic0.gc0.count_d2_reg[9]_3 ;
  input \gic0.gc0.count_d2_reg[8]_2 ;
  input \gic0.gc0.count_d2_reg[7]_0 ;
  input \gic0.gc0.count_d2_reg[6]_2 ;
  input \gic0.gc0.count_d2_reg[8]_3 ;
  input \gic0.gc0.count_d2_reg[6]_3 ;
  input \gic0.gc0.count_d2_reg[7]_1 ;
  input \gic0.gc0.count_d2_reg[6]_4 ;
  input \gic0.gc0.count_d2_reg[6]_5 ;
  input \gic0.gc0.count_d2_reg[9]_4 ;
  input \gic0.gc0.count_d2_reg[10] ;
  input \gic0.gc0.count_d2_reg[9]_5 ;
  input \gic0.gc0.count_d2_reg[6]_6 ;
  input \gic0.gc0.count_d2_reg[8]_4 ;
  input \gic0.gc0.count_d2_reg[9]_6 ;
  input \gic0.gc0.count_d2_reg[8]_5 ;
  input \gic0.gc0.count_d2_reg[8]_6 ;
  input \gic0.gc0.count_d2_reg[9]_7 ;
  input \gic0.gc0.count_d2_reg[7]_2 ;
  input \gic0.gc0.count_d2_reg[6]_7 ;
  input \gic0.gc0.count_d2_reg[8]_7 ;
  input \gic0.gc0.count_d2_reg[6]_8 ;
  input [5:0]ADDRC;
  input \gic0.gc0.count_d2_reg[9]_8 ;
  input \gic0.gc0.count_d2_reg[9]_9 ;
  input \gic0.gc0.count_d2_reg[6]_9 ;
  input \gic0.gc0.count_d2_reg[9]_10 ;
  input \gic0.gc0.count_d2_reg[9]_11 ;
  input \gic0.gc0.count_d2_reg[9]_12 ;
  input \gic0.gc0.count_d2_reg[9]_13 ;
  input \gic0.gc0.count_d2_reg[8]_8 ;
  input \gic0.gc0.count_d2_reg[6]_10 ;
  input \gic0.gc0.count_d2_reg[8]_9 ;
  input \gic0.gc0.count_d2_reg[6]_11 ;
  input \gic0.gc0.count_d2_reg[8]_10 ;
  input \gic0.gc0.count_d2_reg[10]_0 ;
  input \gic0.gc0.count_d2_reg[6]_12 ;
  input \gic0.gc0.count_d2_reg[8]_11 ;
  input \gic0.gc0.count_d2_reg[6]_13 ;
  input \gic0.gc0.count_d2_reg[6]_14 ;
  input \gic0.gc0.count_d2_reg[9]_14 ;
  input \gic0.gc0.count_d2_reg[6]_15 ;
  input \gic0.gc0.count_d2_reg[8]_12 ;
  input \gic0.gc0.count_d2_reg[6]_16 ;
  input \gic0.gc0.count_d2_reg[10]_1 ;
  input \gic0.gc0.count_d2_reg[6]_17 ;
  input \gic0.gc0.count_d2_reg[9]_15 ;
  input \gic0.gc0.count_d2_reg[6]_18 ;
  input \gic0.gc0.count_d2_reg[9]_16 ;
  input \gic0.gc0.count_d2_reg[9]_17 ;
  input \gic0.gc0.count_d2_reg[10]_2 ;
  input \gic0.gc0.count_d2_reg[7]_3 ;
  input \gic0.gc0.count_d2_reg[6]_19 ;
  input \gic0.gc0.count_d2_reg[8]_13 ;
  input [5:0]\gc0.count_d1_reg[5]_rep__2 ;
  input [5:0]ADDRD;
  input [5:0]\gc0.count_d1_reg[5]_rep__1 ;
  input [5:0]\gc0.count_d1_reg[5]_rep__4 ;
  input [5:0]\gic0.gc0.count_d2_reg[5]_rep__0 ;
  input [5:0]\gc0.count_d1_reg[5]_rep__3 ;
  input [5:0]\gc0.count_d1_reg[5]_rep__6 ;
  input [5:0]\gic0.gc0.count_d2_reg[5]_rep__1 ;
  input [5:0]\gc0.count_d1_reg[5]_rep__5 ;
  input [5:0]\gc0.count_d1_reg[5]_rep__8 ;
  input [5:0]\gic0.gc0.count_d2_reg[5]_rep__2 ;
  input [5:0]\gc0.count_d1_reg[5]_rep__7 ;
  input \gic0.gc0.count_d2_reg[0]_rep__3 ;
  input \gic0.gc0.count_d2_reg[1]_rep__3 ;
  input \gic0.gc0.count_d2_reg[2]_rep__3 ;
  input \gic0.gc0.count_d2_reg[3]_rep__3 ;
  input \gic0.gc0.count_d2_reg[4]_rep__3 ;
  input \gic0.gc0.count_d2_reg[5]_rep__3 ;
  input [11:0]\gc0.count_d1_reg[11] ;
  input \gc0.count_d1_reg[7]_rep ;
  input \gc0.count_d1_reg[6]_rep ;
  input [0:0]E;
  input rd_clk;
  input [0:0]AR;

  wire [5:0]ADDRC;
  wire [5:0]ADDRD;
  wire [0:0]AR;
  wire [0:0]E;
  wire [5:0]Q;
  wire [15:0]din;
  wire [15:0]dout;
  wire [11:0]\gc0.count_d1_reg[11] ;
  wire [5:0]\gc0.count_d1_reg[5]_rep__0 ;
  wire [5:0]\gc0.count_d1_reg[5]_rep__1 ;
  wire [5:0]\gc0.count_d1_reg[5]_rep__2 ;
  wire [5:0]\gc0.count_d1_reg[5]_rep__3 ;
  wire [5:0]\gc0.count_d1_reg[5]_rep__4 ;
  wire [5:0]\gc0.count_d1_reg[5]_rep__5 ;
  wire [5:0]\gc0.count_d1_reg[5]_rep__6 ;
  wire [5:0]\gc0.count_d1_reg[5]_rep__7 ;
  wire [5:0]\gc0.count_d1_reg[5]_rep__8 ;
  wire \gc0.count_d1_reg[6]_rep ;
  wire \gc0.count_d1_reg[7]_rep ;
  wire \gic0.gc0.count_d2_reg[0]_rep__3 ;
  wire \gic0.gc0.count_d2_reg[10] ;
  wire \gic0.gc0.count_d2_reg[10]_0 ;
  wire \gic0.gc0.count_d2_reg[10]_1 ;
  wire \gic0.gc0.count_d2_reg[10]_2 ;
  wire \gic0.gc0.count_d2_reg[1]_rep__3 ;
  wire \gic0.gc0.count_d2_reg[2]_rep__3 ;
  wire \gic0.gc0.count_d2_reg[3]_rep__3 ;
  wire \gic0.gc0.count_d2_reg[4]_rep__3 ;
  wire [5:0]\gic0.gc0.count_d2_reg[5]_rep__0 ;
  wire [5:0]\gic0.gc0.count_d2_reg[5]_rep__1 ;
  wire [5:0]\gic0.gc0.count_d2_reg[5]_rep__2 ;
  wire \gic0.gc0.count_d2_reg[5]_rep__3 ;
  wire \gic0.gc0.count_d2_reg[6] ;
  wire \gic0.gc0.count_d2_reg[6]_0 ;
  wire \gic0.gc0.count_d2_reg[6]_1 ;
  wire \gic0.gc0.count_d2_reg[6]_10 ;
  wire \gic0.gc0.count_d2_reg[6]_11 ;
  wire \gic0.gc0.count_d2_reg[6]_12 ;
  wire \gic0.gc0.count_d2_reg[6]_13 ;
  wire \gic0.gc0.count_d2_reg[6]_14 ;
  wire \gic0.gc0.count_d2_reg[6]_15 ;
  wire \gic0.gc0.count_d2_reg[6]_16 ;
  wire \gic0.gc0.count_d2_reg[6]_17 ;
  wire \gic0.gc0.count_d2_reg[6]_18 ;
  wire \gic0.gc0.count_d2_reg[6]_19 ;
  wire \gic0.gc0.count_d2_reg[6]_2 ;
  wire \gic0.gc0.count_d2_reg[6]_3 ;
  wire \gic0.gc0.count_d2_reg[6]_4 ;
  wire \gic0.gc0.count_d2_reg[6]_5 ;
  wire \gic0.gc0.count_d2_reg[6]_6 ;
  wire \gic0.gc0.count_d2_reg[6]_7 ;
  wire \gic0.gc0.count_d2_reg[6]_8 ;
  wire \gic0.gc0.count_d2_reg[6]_9 ;
  wire \gic0.gc0.count_d2_reg[7] ;
  wire \gic0.gc0.count_d2_reg[7]_0 ;
  wire \gic0.gc0.count_d2_reg[7]_1 ;
  wire \gic0.gc0.count_d2_reg[7]_2 ;
  wire \gic0.gc0.count_d2_reg[7]_3 ;
  wire \gic0.gc0.count_d2_reg[8] ;
  wire \gic0.gc0.count_d2_reg[8]_0 ;
  wire \gic0.gc0.count_d2_reg[8]_1 ;
  wire \gic0.gc0.count_d2_reg[8]_10 ;
  wire \gic0.gc0.count_d2_reg[8]_11 ;
  wire \gic0.gc0.count_d2_reg[8]_12 ;
  wire \gic0.gc0.count_d2_reg[8]_13 ;
  wire \gic0.gc0.count_d2_reg[8]_2 ;
  wire \gic0.gc0.count_d2_reg[8]_3 ;
  wire \gic0.gc0.count_d2_reg[8]_4 ;
  wire \gic0.gc0.count_d2_reg[8]_5 ;
  wire \gic0.gc0.count_d2_reg[8]_6 ;
  wire \gic0.gc0.count_d2_reg[8]_7 ;
  wire \gic0.gc0.count_d2_reg[8]_8 ;
  wire \gic0.gc0.count_d2_reg[8]_9 ;
  wire \gic0.gc0.count_d2_reg[9] ;
  wire \gic0.gc0.count_d2_reg[9]_0 ;
  wire \gic0.gc0.count_d2_reg[9]_1 ;
  wire \gic0.gc0.count_d2_reg[9]_10 ;
  wire \gic0.gc0.count_d2_reg[9]_11 ;
  wire \gic0.gc0.count_d2_reg[9]_12 ;
  wire \gic0.gc0.count_d2_reg[9]_13 ;
  wire \gic0.gc0.count_d2_reg[9]_14 ;
  wire \gic0.gc0.count_d2_reg[9]_15 ;
  wire \gic0.gc0.count_d2_reg[9]_16 ;
  wire \gic0.gc0.count_d2_reg[9]_17 ;
  wire \gic0.gc0.count_d2_reg[9]_2 ;
  wire \gic0.gc0.count_d2_reg[9]_3 ;
  wire \gic0.gc0.count_d2_reg[9]_4 ;
  wire \gic0.gc0.count_d2_reg[9]_5 ;
  wire \gic0.gc0.count_d2_reg[9]_6 ;
  wire \gic0.gc0.count_d2_reg[9]_7 ;
  wire \gic0.gc0.count_d2_reg[9]_8 ;
  wire \gic0.gc0.count_d2_reg[9]_9 ;
  wire rd_clk;
  wire wr_clk;

  fifo_generator_0_dmem \gdm.dm_gen.dm 
       (.ADDRC(ADDRC),
        .ADDRD(ADDRD),
        .AR(AR),
        .E(E),
        .Q(Q),
        .din(din),
        .dout(dout),
        .\gc0.count_d1_reg[11] (\gc0.count_d1_reg[11] ),
        .\gc0.count_d1_reg[5]_rep__0 (\gc0.count_d1_reg[5]_rep__0 ),
        .\gc0.count_d1_reg[5]_rep__1 (\gc0.count_d1_reg[5]_rep__1 ),
        .\gc0.count_d1_reg[5]_rep__2 (\gc0.count_d1_reg[5]_rep__2 ),
        .\gc0.count_d1_reg[5]_rep__3 (\gc0.count_d1_reg[5]_rep__3 ),
        .\gc0.count_d1_reg[5]_rep__4 (\gc0.count_d1_reg[5]_rep__4 ),
        .\gc0.count_d1_reg[5]_rep__5 (\gc0.count_d1_reg[5]_rep__5 ),
        .\gc0.count_d1_reg[5]_rep__6 (\gc0.count_d1_reg[5]_rep__6 ),
        .\gc0.count_d1_reg[5]_rep__7 (\gc0.count_d1_reg[5]_rep__7 ),
        .\gc0.count_d1_reg[5]_rep__8 (\gc0.count_d1_reg[5]_rep__8 ),
        .\gc0.count_d1_reg[6]_rep (\gc0.count_d1_reg[6]_rep ),
        .\gc0.count_d1_reg[7]_rep (\gc0.count_d1_reg[7]_rep ),
        .\gic0.gc0.count_d2_reg[0]_rep__3 (\gic0.gc0.count_d2_reg[0]_rep__3 ),
        .\gic0.gc0.count_d2_reg[10] (\gic0.gc0.count_d2_reg[10] ),
        .\gic0.gc0.count_d2_reg[10]_0 (\gic0.gc0.count_d2_reg[10]_0 ),
        .\gic0.gc0.count_d2_reg[10]_1 (\gic0.gc0.count_d2_reg[10]_1 ),
        .\gic0.gc0.count_d2_reg[10]_2 (\gic0.gc0.count_d2_reg[10]_2 ),
        .\gic0.gc0.count_d2_reg[1]_rep__3 (\gic0.gc0.count_d2_reg[1]_rep__3 ),
        .\gic0.gc0.count_d2_reg[2]_rep__3 (\gic0.gc0.count_d2_reg[2]_rep__3 ),
        .\gic0.gc0.count_d2_reg[3]_rep__3 (\gic0.gc0.count_d2_reg[3]_rep__3 ),
        .\gic0.gc0.count_d2_reg[4]_rep__3 (\gic0.gc0.count_d2_reg[4]_rep__3 ),
        .\gic0.gc0.count_d2_reg[5]_rep__0 (\gic0.gc0.count_d2_reg[5]_rep__0 ),
        .\gic0.gc0.count_d2_reg[5]_rep__1 (\gic0.gc0.count_d2_reg[5]_rep__1 ),
        .\gic0.gc0.count_d2_reg[5]_rep__2 (\gic0.gc0.count_d2_reg[5]_rep__2 ),
        .\gic0.gc0.count_d2_reg[5]_rep__3 (\gic0.gc0.count_d2_reg[5]_rep__3 ),
        .\gic0.gc0.count_d2_reg[6] (\gic0.gc0.count_d2_reg[6] ),
        .\gic0.gc0.count_d2_reg[6]_0 (\gic0.gc0.count_d2_reg[6]_0 ),
        .\gic0.gc0.count_d2_reg[6]_1 (\gic0.gc0.count_d2_reg[6]_1 ),
        .\gic0.gc0.count_d2_reg[6]_10 (\gic0.gc0.count_d2_reg[6]_10 ),
        .\gic0.gc0.count_d2_reg[6]_11 (\gic0.gc0.count_d2_reg[6]_11 ),
        .\gic0.gc0.count_d2_reg[6]_12 (\gic0.gc0.count_d2_reg[6]_12 ),
        .\gic0.gc0.count_d2_reg[6]_13 (\gic0.gc0.count_d2_reg[6]_13 ),
        .\gic0.gc0.count_d2_reg[6]_14 (\gic0.gc0.count_d2_reg[6]_14 ),
        .\gic0.gc0.count_d2_reg[6]_15 (\gic0.gc0.count_d2_reg[6]_15 ),
        .\gic0.gc0.count_d2_reg[6]_16 (\gic0.gc0.count_d2_reg[6]_16 ),
        .\gic0.gc0.count_d2_reg[6]_17 (\gic0.gc0.count_d2_reg[6]_17 ),
        .\gic0.gc0.count_d2_reg[6]_18 (\gic0.gc0.count_d2_reg[6]_18 ),
        .\gic0.gc0.count_d2_reg[6]_19 (\gic0.gc0.count_d2_reg[6]_19 ),
        .\gic0.gc0.count_d2_reg[6]_2 (\gic0.gc0.count_d2_reg[6]_2 ),
        .\gic0.gc0.count_d2_reg[6]_3 (\gic0.gc0.count_d2_reg[6]_3 ),
        .\gic0.gc0.count_d2_reg[6]_4 (\gic0.gc0.count_d2_reg[6]_4 ),
        .\gic0.gc0.count_d2_reg[6]_5 (\gic0.gc0.count_d2_reg[6]_5 ),
        .\gic0.gc0.count_d2_reg[6]_6 (\gic0.gc0.count_d2_reg[6]_6 ),
        .\gic0.gc0.count_d2_reg[6]_7 (\gic0.gc0.count_d2_reg[6]_7 ),
        .\gic0.gc0.count_d2_reg[6]_8 (\gic0.gc0.count_d2_reg[6]_8 ),
        .\gic0.gc0.count_d2_reg[6]_9 (\gic0.gc0.count_d2_reg[6]_9 ),
        .\gic0.gc0.count_d2_reg[7] (\gic0.gc0.count_d2_reg[7] ),
        .\gic0.gc0.count_d2_reg[7]_0 (\gic0.gc0.count_d2_reg[7]_0 ),
        .\gic0.gc0.count_d2_reg[7]_1 (\gic0.gc0.count_d2_reg[7]_1 ),
        .\gic0.gc0.count_d2_reg[7]_2 (\gic0.gc0.count_d2_reg[7]_2 ),
        .\gic0.gc0.count_d2_reg[7]_3 (\gic0.gc0.count_d2_reg[7]_3 ),
        .\gic0.gc0.count_d2_reg[8] (\gic0.gc0.count_d2_reg[8] ),
        .\gic0.gc0.count_d2_reg[8]_0 (\gic0.gc0.count_d2_reg[8]_0 ),
        .\gic0.gc0.count_d2_reg[8]_1 (\gic0.gc0.count_d2_reg[8]_1 ),
        .\gic0.gc0.count_d2_reg[8]_10 (\gic0.gc0.count_d2_reg[8]_10 ),
        .\gic0.gc0.count_d2_reg[8]_11 (\gic0.gc0.count_d2_reg[8]_11 ),
        .\gic0.gc0.count_d2_reg[8]_12 (\gic0.gc0.count_d2_reg[8]_12 ),
        .\gic0.gc0.count_d2_reg[8]_13 (\gic0.gc0.count_d2_reg[8]_13 ),
        .\gic0.gc0.count_d2_reg[8]_2 (\gic0.gc0.count_d2_reg[8]_2 ),
        .\gic0.gc0.count_d2_reg[8]_3 (\gic0.gc0.count_d2_reg[8]_3 ),
        .\gic0.gc0.count_d2_reg[8]_4 (\gic0.gc0.count_d2_reg[8]_4 ),
        .\gic0.gc0.count_d2_reg[8]_5 (\gic0.gc0.count_d2_reg[8]_5 ),
        .\gic0.gc0.count_d2_reg[8]_6 (\gic0.gc0.count_d2_reg[8]_6 ),
        .\gic0.gc0.count_d2_reg[8]_7 (\gic0.gc0.count_d2_reg[8]_7 ),
        .\gic0.gc0.count_d2_reg[8]_8 (\gic0.gc0.count_d2_reg[8]_8 ),
        .\gic0.gc0.count_d2_reg[8]_9 (\gic0.gc0.count_d2_reg[8]_9 ),
        .\gic0.gc0.count_d2_reg[9] (\gic0.gc0.count_d2_reg[9] ),
        .\gic0.gc0.count_d2_reg[9]_0 (\gic0.gc0.count_d2_reg[9]_0 ),
        .\gic0.gc0.count_d2_reg[9]_1 (\gic0.gc0.count_d2_reg[9]_1 ),
        .\gic0.gc0.count_d2_reg[9]_10 (\gic0.gc0.count_d2_reg[9]_10 ),
        .\gic0.gc0.count_d2_reg[9]_11 (\gic0.gc0.count_d2_reg[9]_11 ),
        .\gic0.gc0.count_d2_reg[9]_12 (\gic0.gc0.count_d2_reg[9]_12 ),
        .\gic0.gc0.count_d2_reg[9]_13 (\gic0.gc0.count_d2_reg[9]_13 ),
        .\gic0.gc0.count_d2_reg[9]_14 (\gic0.gc0.count_d2_reg[9]_14 ),
        .\gic0.gc0.count_d2_reg[9]_15 (\gic0.gc0.count_d2_reg[9]_15 ),
        .\gic0.gc0.count_d2_reg[9]_16 (\gic0.gc0.count_d2_reg[9]_16 ),
        .\gic0.gc0.count_d2_reg[9]_17 (\gic0.gc0.count_d2_reg[9]_17 ),
        .\gic0.gc0.count_d2_reg[9]_2 (\gic0.gc0.count_d2_reg[9]_2 ),
        .\gic0.gc0.count_d2_reg[9]_3 (\gic0.gc0.count_d2_reg[9]_3 ),
        .\gic0.gc0.count_d2_reg[9]_4 (\gic0.gc0.count_d2_reg[9]_4 ),
        .\gic0.gc0.count_d2_reg[9]_5 (\gic0.gc0.count_d2_reg[9]_5 ),
        .\gic0.gc0.count_d2_reg[9]_6 (\gic0.gc0.count_d2_reg[9]_6 ),
        .\gic0.gc0.count_d2_reg[9]_7 (\gic0.gc0.count_d2_reg[9]_7 ),
        .\gic0.gc0.count_d2_reg[9]_8 (\gic0.gc0.count_d2_reg[9]_8 ),
        .\gic0.gc0.count_d2_reg[9]_9 (\gic0.gc0.count_d2_reg[9]_9 ),
        .rd_clk(rd_clk),
        .wr_clk(wr_clk));
endmodule

module fifo_generator_0_rd_bin_cntr
   (rd_pntr_plus1,
    Q,
    \gpr1.dout_i_reg[15] ,
    \gpr1.dout_i_reg[15]_0 ,
    ADDRC,
    \gpr1.dout_i_reg[0] ,
    \gpr1.dout_i_reg[3] ,
    \gpr1.dout_i_reg[3]_0 ,
    \gpr1.dout_i_reg[6] ,
    \gpr1.dout_i_reg[6]_0 ,
    \gpr1.dout_i_reg[9] ,
    \gpr1.dout_i_reg[9]_0 ,
    \gpr1.dout_i_reg[12] ,
    \gpr1.dout_i_reg[12]_0 ,
    ram_empty_fb_i_reg,
    rd_clk,
    \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg );
  output [11:0]rd_pntr_plus1;
  output [11:0]Q;
  output \gpr1.dout_i_reg[15] ;
  output \gpr1.dout_i_reg[15]_0 ;
  output [5:0]ADDRC;
  output [5:0]\gpr1.dout_i_reg[0] ;
  output [5:0]\gpr1.dout_i_reg[3] ;
  output [5:0]\gpr1.dout_i_reg[3]_0 ;
  output [5:0]\gpr1.dout_i_reg[6] ;
  output [5:0]\gpr1.dout_i_reg[6]_0 ;
  output [5:0]\gpr1.dout_i_reg[9] ;
  output [5:0]\gpr1.dout_i_reg[9]_0 ;
  output [5:0]\gpr1.dout_i_reg[12] ;
  output [5:0]\gpr1.dout_i_reg[12]_0 ;
  input ram_empty_fb_i_reg;
  input rd_clk;
  input \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ;

  wire [5:0]ADDRC;
  wire [11:0]Q;
  wire \gc0.count[0]_i_2_n_0 ;
  wire \gc0.count_reg[0]_i_1_n_0 ;
  wire \gc0.count_reg[0]_i_1_n_1 ;
  wire \gc0.count_reg[0]_i_1_n_2 ;
  wire \gc0.count_reg[0]_i_1_n_3 ;
  wire \gc0.count_reg[0]_i_1_n_4 ;
  wire \gc0.count_reg[0]_i_1_n_5 ;
  wire \gc0.count_reg[0]_i_1_n_6 ;
  wire \gc0.count_reg[0]_i_1_n_7 ;
  wire \gc0.count_reg[4]_i_1_n_0 ;
  wire \gc0.count_reg[4]_i_1_n_1 ;
  wire \gc0.count_reg[4]_i_1_n_2 ;
  wire \gc0.count_reg[4]_i_1_n_3 ;
  wire \gc0.count_reg[4]_i_1_n_4 ;
  wire \gc0.count_reg[4]_i_1_n_5 ;
  wire \gc0.count_reg[4]_i_1_n_6 ;
  wire \gc0.count_reg[4]_i_1_n_7 ;
  wire \gc0.count_reg[8]_i_1_n_1 ;
  wire \gc0.count_reg[8]_i_1_n_2 ;
  wire \gc0.count_reg[8]_i_1_n_3 ;
  wire \gc0.count_reg[8]_i_1_n_4 ;
  wire \gc0.count_reg[8]_i_1_n_5 ;
  wire \gc0.count_reg[8]_i_1_n_6 ;
  wire \gc0.count_reg[8]_i_1_n_7 ;
  wire [5:0]\gpr1.dout_i_reg[0] ;
  wire [5:0]\gpr1.dout_i_reg[12] ;
  wire [5:0]\gpr1.dout_i_reg[12]_0 ;
  wire \gpr1.dout_i_reg[15] ;
  wire \gpr1.dout_i_reg[15]_0 ;
  wire [5:0]\gpr1.dout_i_reg[3] ;
  wire [5:0]\gpr1.dout_i_reg[3]_0 ;
  wire [5:0]\gpr1.dout_i_reg[6] ;
  wire [5:0]\gpr1.dout_i_reg[6]_0 ;
  wire [5:0]\gpr1.dout_i_reg[9] ;
  wire [5:0]\gpr1.dout_i_reg[9]_0 ;
  wire \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ;
  wire ram_empty_fb_i_reg;
  wire rd_clk;
  wire [11:0]rd_pntr_plus1;
  wire [3:3]\NLW_gc0.count_reg[8]_i_1_CO_UNCONNECTED ;

  LUT1 #(
    .INIT(2'h1)) 
    \gc0.count[0]_i_2 
       (.I0(rd_pntr_plus1[0]),
        .O(\gc0.count[0]_i_2_n_0 ));
  (* ORIG_CELL_NAME = "gc0.count_d1_reg[0]" *) 
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[0] 
       (.C(rd_clk),
        .CE(ram_empty_fb_i_reg),
        .CLR(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ),
        .D(rd_pntr_plus1[0]),
        .Q(Q[0]));
  (* ORIG_CELL_NAME = "gc0.count_d1_reg[0]" *) 
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[0]_rep 
       (.C(rd_clk),
        .CE(ram_empty_fb_i_reg),
        .CLR(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ),
        .D(rd_pntr_plus1[0]),
        .Q(ADDRC[0]));
  (* ORIG_CELL_NAME = "gc0.count_d1_reg[0]" *) 
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[0]_rep__0 
       (.C(rd_clk),
        .CE(ram_empty_fb_i_reg),
        .CLR(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ),
        .D(rd_pntr_plus1[0]),
        .Q(\gpr1.dout_i_reg[0] [0]));
  (* ORIG_CELL_NAME = "gc0.count_d1_reg[0]" *) 
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[0]_rep__1 
       (.C(rd_clk),
        .CE(ram_empty_fb_i_reg),
        .CLR(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ),
        .D(rd_pntr_plus1[0]),
        .Q(\gpr1.dout_i_reg[3] [0]));
  (* ORIG_CELL_NAME = "gc0.count_d1_reg[0]" *) 
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[0]_rep__2 
       (.C(rd_clk),
        .CE(ram_empty_fb_i_reg),
        .CLR(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ),
        .D(rd_pntr_plus1[0]),
        .Q(\gpr1.dout_i_reg[3]_0 [0]));
  (* ORIG_CELL_NAME = "gc0.count_d1_reg[0]" *) 
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[0]_rep__3 
       (.C(rd_clk),
        .CE(ram_empty_fb_i_reg),
        .CLR(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ),
        .D(rd_pntr_plus1[0]),
        .Q(\gpr1.dout_i_reg[6] [0]));
  (* ORIG_CELL_NAME = "gc0.count_d1_reg[0]" *) 
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[0]_rep__4 
       (.C(rd_clk),
        .CE(ram_empty_fb_i_reg),
        .CLR(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ),
        .D(rd_pntr_plus1[0]),
        .Q(\gpr1.dout_i_reg[6]_0 [0]));
  (* ORIG_CELL_NAME = "gc0.count_d1_reg[0]" *) 
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[0]_rep__5 
       (.C(rd_clk),
        .CE(ram_empty_fb_i_reg),
        .CLR(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ),
        .D(rd_pntr_plus1[0]),
        .Q(\gpr1.dout_i_reg[9] [0]));
  (* ORIG_CELL_NAME = "gc0.count_d1_reg[0]" *) 
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[0]_rep__6 
       (.C(rd_clk),
        .CE(ram_empty_fb_i_reg),
        .CLR(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ),
        .D(rd_pntr_plus1[0]),
        .Q(\gpr1.dout_i_reg[9]_0 [0]));
  (* ORIG_CELL_NAME = "gc0.count_d1_reg[0]" *) 
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[0]_rep__7 
       (.C(rd_clk),
        .CE(ram_empty_fb_i_reg),
        .CLR(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ),
        .D(rd_pntr_plus1[0]),
        .Q(\gpr1.dout_i_reg[12] [0]));
  (* ORIG_CELL_NAME = "gc0.count_d1_reg[0]" *) 
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[0]_rep__8 
       (.C(rd_clk),
        .CE(ram_empty_fb_i_reg),
        .CLR(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ),
        .D(rd_pntr_plus1[0]),
        .Q(\gpr1.dout_i_reg[12]_0 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[10] 
       (.C(rd_clk),
        .CE(ram_empty_fb_i_reg),
        .CLR(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ),
        .D(rd_pntr_plus1[10]),
        .Q(Q[10]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[11] 
       (.C(rd_clk),
        .CE(ram_empty_fb_i_reg),
        .CLR(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ),
        .D(rd_pntr_plus1[11]),
        .Q(Q[11]));
  (* ORIG_CELL_NAME = "gc0.count_d1_reg[1]" *) 
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[1] 
       (.C(rd_clk),
        .CE(ram_empty_fb_i_reg),
        .CLR(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ),
        .D(rd_pntr_plus1[1]),
        .Q(Q[1]));
  (* ORIG_CELL_NAME = "gc0.count_d1_reg[1]" *) 
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[1]_rep 
       (.C(rd_clk),
        .CE(ram_empty_fb_i_reg),
        .CLR(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ),
        .D(rd_pntr_plus1[1]),
        .Q(ADDRC[1]));
  (* ORIG_CELL_NAME = "gc0.count_d1_reg[1]" *) 
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[1]_rep__0 
       (.C(rd_clk),
        .CE(ram_empty_fb_i_reg),
        .CLR(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ),
        .D(rd_pntr_plus1[1]),
        .Q(\gpr1.dout_i_reg[0] [1]));
  (* ORIG_CELL_NAME = "gc0.count_d1_reg[1]" *) 
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[1]_rep__1 
       (.C(rd_clk),
        .CE(ram_empty_fb_i_reg),
        .CLR(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ),
        .D(rd_pntr_plus1[1]),
        .Q(\gpr1.dout_i_reg[3] [1]));
  (* ORIG_CELL_NAME = "gc0.count_d1_reg[1]" *) 
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[1]_rep__2 
       (.C(rd_clk),
        .CE(ram_empty_fb_i_reg),
        .CLR(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ),
        .D(rd_pntr_plus1[1]),
        .Q(\gpr1.dout_i_reg[3]_0 [1]));
  (* ORIG_CELL_NAME = "gc0.count_d1_reg[1]" *) 
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[1]_rep__3 
       (.C(rd_clk),
        .CE(ram_empty_fb_i_reg),
        .CLR(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ),
        .D(rd_pntr_plus1[1]),
        .Q(\gpr1.dout_i_reg[6] [1]));
  (* ORIG_CELL_NAME = "gc0.count_d1_reg[1]" *) 
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[1]_rep__4 
       (.C(rd_clk),
        .CE(ram_empty_fb_i_reg),
        .CLR(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ),
        .D(rd_pntr_plus1[1]),
        .Q(\gpr1.dout_i_reg[6]_0 [1]));
  (* ORIG_CELL_NAME = "gc0.count_d1_reg[1]" *) 
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[1]_rep__5 
       (.C(rd_clk),
        .CE(ram_empty_fb_i_reg),
        .CLR(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ),
        .D(rd_pntr_plus1[1]),
        .Q(\gpr1.dout_i_reg[9] [1]));
  (* ORIG_CELL_NAME = "gc0.count_d1_reg[1]" *) 
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[1]_rep__6 
       (.C(rd_clk),
        .CE(ram_empty_fb_i_reg),
        .CLR(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ),
        .D(rd_pntr_plus1[1]),
        .Q(\gpr1.dout_i_reg[9]_0 [1]));
  (* ORIG_CELL_NAME = "gc0.count_d1_reg[1]" *) 
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[1]_rep__7 
       (.C(rd_clk),
        .CE(ram_empty_fb_i_reg),
        .CLR(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ),
        .D(rd_pntr_plus1[1]),
        .Q(\gpr1.dout_i_reg[12] [1]));
  (* ORIG_CELL_NAME = "gc0.count_d1_reg[1]" *) 
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[1]_rep__8 
       (.C(rd_clk),
        .CE(ram_empty_fb_i_reg),
        .CLR(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ),
        .D(rd_pntr_plus1[1]),
        .Q(\gpr1.dout_i_reg[12]_0 [1]));
  (* ORIG_CELL_NAME = "gc0.count_d1_reg[2]" *) 
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[2] 
       (.C(rd_clk),
        .CE(ram_empty_fb_i_reg),
        .CLR(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ),
        .D(rd_pntr_plus1[2]),
        .Q(Q[2]));
  (* ORIG_CELL_NAME = "gc0.count_d1_reg[2]" *) 
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[2]_rep 
       (.C(rd_clk),
        .CE(ram_empty_fb_i_reg),
        .CLR(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ),
        .D(rd_pntr_plus1[2]),
        .Q(ADDRC[2]));
  (* ORIG_CELL_NAME = "gc0.count_d1_reg[2]" *) 
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[2]_rep__0 
       (.C(rd_clk),
        .CE(ram_empty_fb_i_reg),
        .CLR(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ),
        .D(rd_pntr_plus1[2]),
        .Q(\gpr1.dout_i_reg[0] [2]));
  (* ORIG_CELL_NAME = "gc0.count_d1_reg[2]" *) 
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[2]_rep__1 
       (.C(rd_clk),
        .CE(ram_empty_fb_i_reg),
        .CLR(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ),
        .D(rd_pntr_plus1[2]),
        .Q(\gpr1.dout_i_reg[3] [2]));
  (* ORIG_CELL_NAME = "gc0.count_d1_reg[2]" *) 
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[2]_rep__2 
       (.C(rd_clk),
        .CE(ram_empty_fb_i_reg),
        .CLR(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ),
        .D(rd_pntr_plus1[2]),
        .Q(\gpr1.dout_i_reg[3]_0 [2]));
  (* ORIG_CELL_NAME = "gc0.count_d1_reg[2]" *) 
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[2]_rep__3 
       (.C(rd_clk),
        .CE(ram_empty_fb_i_reg),
        .CLR(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ),
        .D(rd_pntr_plus1[2]),
        .Q(\gpr1.dout_i_reg[6] [2]));
  (* ORIG_CELL_NAME = "gc0.count_d1_reg[2]" *) 
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[2]_rep__4 
       (.C(rd_clk),
        .CE(ram_empty_fb_i_reg),
        .CLR(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ),
        .D(rd_pntr_plus1[2]),
        .Q(\gpr1.dout_i_reg[6]_0 [2]));
  (* ORIG_CELL_NAME = "gc0.count_d1_reg[2]" *) 
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[2]_rep__5 
       (.C(rd_clk),
        .CE(ram_empty_fb_i_reg),
        .CLR(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ),
        .D(rd_pntr_plus1[2]),
        .Q(\gpr1.dout_i_reg[9] [2]));
  (* ORIG_CELL_NAME = "gc0.count_d1_reg[2]" *) 
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[2]_rep__6 
       (.C(rd_clk),
        .CE(ram_empty_fb_i_reg),
        .CLR(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ),
        .D(rd_pntr_plus1[2]),
        .Q(\gpr1.dout_i_reg[9]_0 [2]));
  (* ORIG_CELL_NAME = "gc0.count_d1_reg[2]" *) 
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[2]_rep__7 
       (.C(rd_clk),
        .CE(ram_empty_fb_i_reg),
        .CLR(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ),
        .D(rd_pntr_plus1[2]),
        .Q(\gpr1.dout_i_reg[12] [2]));
  (* ORIG_CELL_NAME = "gc0.count_d1_reg[2]" *) 
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[2]_rep__8 
       (.C(rd_clk),
        .CE(ram_empty_fb_i_reg),
        .CLR(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ),
        .D(rd_pntr_plus1[2]),
        .Q(\gpr1.dout_i_reg[12]_0 [2]));
  (* ORIG_CELL_NAME = "gc0.count_d1_reg[3]" *) 
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[3] 
       (.C(rd_clk),
        .CE(ram_empty_fb_i_reg),
        .CLR(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ),
        .D(rd_pntr_plus1[3]),
        .Q(Q[3]));
  (* ORIG_CELL_NAME = "gc0.count_d1_reg[3]" *) 
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[3]_rep 
       (.C(rd_clk),
        .CE(ram_empty_fb_i_reg),
        .CLR(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ),
        .D(rd_pntr_plus1[3]),
        .Q(ADDRC[3]));
  (* ORIG_CELL_NAME = "gc0.count_d1_reg[3]" *) 
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[3]_rep__0 
       (.C(rd_clk),
        .CE(ram_empty_fb_i_reg),
        .CLR(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ),
        .D(rd_pntr_plus1[3]),
        .Q(\gpr1.dout_i_reg[0] [3]));
  (* ORIG_CELL_NAME = "gc0.count_d1_reg[3]" *) 
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[3]_rep__1 
       (.C(rd_clk),
        .CE(ram_empty_fb_i_reg),
        .CLR(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ),
        .D(rd_pntr_plus1[3]),
        .Q(\gpr1.dout_i_reg[3] [3]));
  (* ORIG_CELL_NAME = "gc0.count_d1_reg[3]" *) 
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[3]_rep__2 
       (.C(rd_clk),
        .CE(ram_empty_fb_i_reg),
        .CLR(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ),
        .D(rd_pntr_plus1[3]),
        .Q(\gpr1.dout_i_reg[3]_0 [3]));
  (* ORIG_CELL_NAME = "gc0.count_d1_reg[3]" *) 
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[3]_rep__3 
       (.C(rd_clk),
        .CE(ram_empty_fb_i_reg),
        .CLR(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ),
        .D(rd_pntr_plus1[3]),
        .Q(\gpr1.dout_i_reg[6] [3]));
  (* ORIG_CELL_NAME = "gc0.count_d1_reg[3]" *) 
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[3]_rep__4 
       (.C(rd_clk),
        .CE(ram_empty_fb_i_reg),
        .CLR(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ),
        .D(rd_pntr_plus1[3]),
        .Q(\gpr1.dout_i_reg[6]_0 [3]));
  (* ORIG_CELL_NAME = "gc0.count_d1_reg[3]" *) 
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[3]_rep__5 
       (.C(rd_clk),
        .CE(ram_empty_fb_i_reg),
        .CLR(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ),
        .D(rd_pntr_plus1[3]),
        .Q(\gpr1.dout_i_reg[9] [3]));
  (* ORIG_CELL_NAME = "gc0.count_d1_reg[3]" *) 
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[3]_rep__6 
       (.C(rd_clk),
        .CE(ram_empty_fb_i_reg),
        .CLR(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ),
        .D(rd_pntr_plus1[3]),
        .Q(\gpr1.dout_i_reg[9]_0 [3]));
  (* ORIG_CELL_NAME = "gc0.count_d1_reg[3]" *) 
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[3]_rep__7 
       (.C(rd_clk),
        .CE(ram_empty_fb_i_reg),
        .CLR(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ),
        .D(rd_pntr_plus1[3]),
        .Q(\gpr1.dout_i_reg[12] [3]));
  (* ORIG_CELL_NAME = "gc0.count_d1_reg[3]" *) 
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[3]_rep__8 
       (.C(rd_clk),
        .CE(ram_empty_fb_i_reg),
        .CLR(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ),
        .D(rd_pntr_plus1[3]),
        .Q(\gpr1.dout_i_reg[12]_0 [3]));
  (* ORIG_CELL_NAME = "gc0.count_d1_reg[4]" *) 
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[4] 
       (.C(rd_clk),
        .CE(ram_empty_fb_i_reg),
        .CLR(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ),
        .D(rd_pntr_plus1[4]),
        .Q(Q[4]));
  (* ORIG_CELL_NAME = "gc0.count_d1_reg[4]" *) 
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[4]_rep 
       (.C(rd_clk),
        .CE(ram_empty_fb_i_reg),
        .CLR(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ),
        .D(rd_pntr_plus1[4]),
        .Q(ADDRC[4]));
  (* ORIG_CELL_NAME = "gc0.count_d1_reg[4]" *) 
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[4]_rep__0 
       (.C(rd_clk),
        .CE(ram_empty_fb_i_reg),
        .CLR(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ),
        .D(rd_pntr_plus1[4]),
        .Q(\gpr1.dout_i_reg[0] [4]));
  (* ORIG_CELL_NAME = "gc0.count_d1_reg[4]" *) 
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[4]_rep__1 
       (.C(rd_clk),
        .CE(ram_empty_fb_i_reg),
        .CLR(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ),
        .D(rd_pntr_plus1[4]),
        .Q(\gpr1.dout_i_reg[3] [4]));
  (* ORIG_CELL_NAME = "gc0.count_d1_reg[4]" *) 
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[4]_rep__2 
       (.C(rd_clk),
        .CE(ram_empty_fb_i_reg),
        .CLR(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ),
        .D(rd_pntr_plus1[4]),
        .Q(\gpr1.dout_i_reg[3]_0 [4]));
  (* ORIG_CELL_NAME = "gc0.count_d1_reg[4]" *) 
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[4]_rep__3 
       (.C(rd_clk),
        .CE(ram_empty_fb_i_reg),
        .CLR(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ),
        .D(rd_pntr_plus1[4]),
        .Q(\gpr1.dout_i_reg[6] [4]));
  (* ORIG_CELL_NAME = "gc0.count_d1_reg[4]" *) 
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[4]_rep__4 
       (.C(rd_clk),
        .CE(ram_empty_fb_i_reg),
        .CLR(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ),
        .D(rd_pntr_plus1[4]),
        .Q(\gpr1.dout_i_reg[6]_0 [4]));
  (* ORIG_CELL_NAME = "gc0.count_d1_reg[4]" *) 
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[4]_rep__5 
       (.C(rd_clk),
        .CE(ram_empty_fb_i_reg),
        .CLR(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ),
        .D(rd_pntr_plus1[4]),
        .Q(\gpr1.dout_i_reg[9] [4]));
  (* ORIG_CELL_NAME = "gc0.count_d1_reg[4]" *) 
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[4]_rep__6 
       (.C(rd_clk),
        .CE(ram_empty_fb_i_reg),
        .CLR(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ),
        .D(rd_pntr_plus1[4]),
        .Q(\gpr1.dout_i_reg[9]_0 [4]));
  (* ORIG_CELL_NAME = "gc0.count_d1_reg[4]" *) 
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[4]_rep__7 
       (.C(rd_clk),
        .CE(ram_empty_fb_i_reg),
        .CLR(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ),
        .D(rd_pntr_plus1[4]),
        .Q(\gpr1.dout_i_reg[12] [4]));
  (* ORIG_CELL_NAME = "gc0.count_d1_reg[4]" *) 
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[4]_rep__8 
       (.C(rd_clk),
        .CE(ram_empty_fb_i_reg),
        .CLR(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ),
        .D(rd_pntr_plus1[4]),
        .Q(\gpr1.dout_i_reg[12]_0 [4]));
  (* ORIG_CELL_NAME = "gc0.count_d1_reg[5]" *) 
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[5] 
       (.C(rd_clk),
        .CE(ram_empty_fb_i_reg),
        .CLR(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ),
        .D(rd_pntr_plus1[5]),
        .Q(Q[5]));
  (* ORIG_CELL_NAME = "gc0.count_d1_reg[5]" *) 
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[5]_rep 
       (.C(rd_clk),
        .CE(ram_empty_fb_i_reg),
        .CLR(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ),
        .D(rd_pntr_plus1[5]),
        .Q(ADDRC[5]));
  (* ORIG_CELL_NAME = "gc0.count_d1_reg[5]" *) 
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[5]_rep__0 
       (.C(rd_clk),
        .CE(ram_empty_fb_i_reg),
        .CLR(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ),
        .D(rd_pntr_plus1[5]),
        .Q(\gpr1.dout_i_reg[0] [5]));
  (* ORIG_CELL_NAME = "gc0.count_d1_reg[5]" *) 
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[5]_rep__1 
       (.C(rd_clk),
        .CE(ram_empty_fb_i_reg),
        .CLR(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ),
        .D(rd_pntr_plus1[5]),
        .Q(\gpr1.dout_i_reg[3] [5]));
  (* ORIG_CELL_NAME = "gc0.count_d1_reg[5]" *) 
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[5]_rep__2 
       (.C(rd_clk),
        .CE(ram_empty_fb_i_reg),
        .CLR(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ),
        .D(rd_pntr_plus1[5]),
        .Q(\gpr1.dout_i_reg[3]_0 [5]));
  (* ORIG_CELL_NAME = "gc0.count_d1_reg[5]" *) 
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[5]_rep__3 
       (.C(rd_clk),
        .CE(ram_empty_fb_i_reg),
        .CLR(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ),
        .D(rd_pntr_plus1[5]),
        .Q(\gpr1.dout_i_reg[6] [5]));
  (* ORIG_CELL_NAME = "gc0.count_d1_reg[5]" *) 
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[5]_rep__4 
       (.C(rd_clk),
        .CE(ram_empty_fb_i_reg),
        .CLR(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ),
        .D(rd_pntr_plus1[5]),
        .Q(\gpr1.dout_i_reg[6]_0 [5]));
  (* ORIG_CELL_NAME = "gc0.count_d1_reg[5]" *) 
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[5]_rep__5 
       (.C(rd_clk),
        .CE(ram_empty_fb_i_reg),
        .CLR(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ),
        .D(rd_pntr_plus1[5]),
        .Q(\gpr1.dout_i_reg[9] [5]));
  (* ORIG_CELL_NAME = "gc0.count_d1_reg[5]" *) 
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[5]_rep__6 
       (.C(rd_clk),
        .CE(ram_empty_fb_i_reg),
        .CLR(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ),
        .D(rd_pntr_plus1[5]),
        .Q(\gpr1.dout_i_reg[9]_0 [5]));
  (* ORIG_CELL_NAME = "gc0.count_d1_reg[5]" *) 
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[5]_rep__7 
       (.C(rd_clk),
        .CE(ram_empty_fb_i_reg),
        .CLR(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ),
        .D(rd_pntr_plus1[5]),
        .Q(\gpr1.dout_i_reg[12] [5]));
  (* ORIG_CELL_NAME = "gc0.count_d1_reg[5]" *) 
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[5]_rep__8 
       (.C(rd_clk),
        .CE(ram_empty_fb_i_reg),
        .CLR(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ),
        .D(rd_pntr_plus1[5]),
        .Q(\gpr1.dout_i_reg[12]_0 [5]));
  (* ORIG_CELL_NAME = "gc0.count_d1_reg[6]" *) 
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[6] 
       (.C(rd_clk),
        .CE(ram_empty_fb_i_reg),
        .CLR(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ),
        .D(rd_pntr_plus1[6]),
        .Q(Q[6]));
  (* ORIG_CELL_NAME = "gc0.count_d1_reg[6]" *) 
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[6]_rep 
       (.C(rd_clk),
        .CE(ram_empty_fb_i_reg),
        .CLR(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ),
        .D(rd_pntr_plus1[6]),
        .Q(\gpr1.dout_i_reg[15]_0 ));
  (* ORIG_CELL_NAME = "gc0.count_d1_reg[7]" *) 
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[7] 
       (.C(rd_clk),
        .CE(ram_empty_fb_i_reg),
        .CLR(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ),
        .D(rd_pntr_plus1[7]),
        .Q(Q[7]));
  (* ORIG_CELL_NAME = "gc0.count_d1_reg[7]" *) 
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[7]_rep 
       (.C(rd_clk),
        .CE(ram_empty_fb_i_reg),
        .CLR(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ),
        .D(rd_pntr_plus1[7]),
        .Q(\gpr1.dout_i_reg[15] ));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[8] 
       (.C(rd_clk),
        .CE(ram_empty_fb_i_reg),
        .CLR(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ),
        .D(rd_pntr_plus1[8]),
        .Q(Q[8]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[9] 
       (.C(rd_clk),
        .CE(ram_empty_fb_i_reg),
        .CLR(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ),
        .D(rd_pntr_plus1[9]),
        .Q(Q[9]));
  FDPE #(
    .INIT(1'b1)) 
    \gc0.count_reg[0] 
       (.C(rd_clk),
        .CE(ram_empty_fb_i_reg),
        .D(\gc0.count_reg[0]_i_1_n_7 ),
        .PRE(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ),
        .Q(rd_pntr_plus1[0]));
  CARRY4 \gc0.count_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\gc0.count_reg[0]_i_1_n_0 ,\gc0.count_reg[0]_i_1_n_1 ,\gc0.count_reg[0]_i_1_n_2 ,\gc0.count_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\gc0.count_reg[0]_i_1_n_4 ,\gc0.count_reg[0]_i_1_n_5 ,\gc0.count_reg[0]_i_1_n_6 ,\gc0.count_reg[0]_i_1_n_7 }),
        .S({rd_pntr_plus1[3:1],\gc0.count[0]_i_2_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_reg[10] 
       (.C(rd_clk),
        .CE(ram_empty_fb_i_reg),
        .CLR(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ),
        .D(\gc0.count_reg[8]_i_1_n_5 ),
        .Q(rd_pntr_plus1[10]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_reg[11] 
       (.C(rd_clk),
        .CE(ram_empty_fb_i_reg),
        .CLR(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ),
        .D(\gc0.count_reg[8]_i_1_n_4 ),
        .Q(rd_pntr_plus1[11]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_reg[1] 
       (.C(rd_clk),
        .CE(ram_empty_fb_i_reg),
        .CLR(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ),
        .D(\gc0.count_reg[0]_i_1_n_6 ),
        .Q(rd_pntr_plus1[1]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_reg[2] 
       (.C(rd_clk),
        .CE(ram_empty_fb_i_reg),
        .CLR(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ),
        .D(\gc0.count_reg[0]_i_1_n_5 ),
        .Q(rd_pntr_plus1[2]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_reg[3] 
       (.C(rd_clk),
        .CE(ram_empty_fb_i_reg),
        .CLR(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ),
        .D(\gc0.count_reg[0]_i_1_n_4 ),
        .Q(rd_pntr_plus1[3]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_reg[4] 
       (.C(rd_clk),
        .CE(ram_empty_fb_i_reg),
        .CLR(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ),
        .D(\gc0.count_reg[4]_i_1_n_7 ),
        .Q(rd_pntr_plus1[4]));
  CARRY4 \gc0.count_reg[4]_i_1 
       (.CI(\gc0.count_reg[0]_i_1_n_0 ),
        .CO({\gc0.count_reg[4]_i_1_n_0 ,\gc0.count_reg[4]_i_1_n_1 ,\gc0.count_reg[4]_i_1_n_2 ,\gc0.count_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\gc0.count_reg[4]_i_1_n_4 ,\gc0.count_reg[4]_i_1_n_5 ,\gc0.count_reg[4]_i_1_n_6 ,\gc0.count_reg[4]_i_1_n_7 }),
        .S(rd_pntr_plus1[7:4]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_reg[5] 
       (.C(rd_clk),
        .CE(ram_empty_fb_i_reg),
        .CLR(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ),
        .D(\gc0.count_reg[4]_i_1_n_6 ),
        .Q(rd_pntr_plus1[5]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_reg[6] 
       (.C(rd_clk),
        .CE(ram_empty_fb_i_reg),
        .CLR(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ),
        .D(\gc0.count_reg[4]_i_1_n_5 ),
        .Q(rd_pntr_plus1[6]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_reg[7] 
       (.C(rd_clk),
        .CE(ram_empty_fb_i_reg),
        .CLR(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ),
        .D(\gc0.count_reg[4]_i_1_n_4 ),
        .Q(rd_pntr_plus1[7]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_reg[8] 
       (.C(rd_clk),
        .CE(ram_empty_fb_i_reg),
        .CLR(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ),
        .D(\gc0.count_reg[8]_i_1_n_7 ),
        .Q(rd_pntr_plus1[8]));
  CARRY4 \gc0.count_reg[8]_i_1 
       (.CI(\gc0.count_reg[4]_i_1_n_0 ),
        .CO({\NLW_gc0.count_reg[8]_i_1_CO_UNCONNECTED [3],\gc0.count_reg[8]_i_1_n_1 ,\gc0.count_reg[8]_i_1_n_2 ,\gc0.count_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\gc0.count_reg[8]_i_1_n_4 ,\gc0.count_reg[8]_i_1_n_5 ,\gc0.count_reg[8]_i_1_n_6 ,\gc0.count_reg[8]_i_1_n_7 }),
        .S(rd_pntr_plus1[11:8]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_reg[9] 
       (.C(rd_clk),
        .CE(ram_empty_fb_i_reg),
        .CLR(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ),
        .D(\gc0.count_reg[8]_i_1_n_6 ),
        .Q(rd_pntr_plus1[9]));
endmodule

module fifo_generator_0_rd_logic
   (empty,
    Q,
    ram_rd_en_i,
    \gpr1.dout_i_reg[15] ,
    \gpr1.dout_i_reg[15]_0 ,
    ADDRC,
    \gpr1.dout_i_reg[0] ,
    \gpr1.dout_i_reg[3] ,
    \gpr1.dout_i_reg[3]_0 ,
    \gpr1.dout_i_reg[6] ,
    \gpr1.dout_i_reg[6]_0 ,
    \gpr1.dout_i_reg[9] ,
    \gpr1.dout_i_reg[9]_0 ,
    \gpr1.dout_i_reg[12] ,
    \gpr1.dout_i_reg[12]_0 ,
    rd_clk,
    \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ,
    WR_PNTR_RD,
    rd_en);
  output empty;
  output [11:0]Q;
  output ram_rd_en_i;
  output \gpr1.dout_i_reg[15] ;
  output \gpr1.dout_i_reg[15]_0 ;
  output [5:0]ADDRC;
  output [5:0]\gpr1.dout_i_reg[0] ;
  output [5:0]\gpr1.dout_i_reg[3] ;
  output [5:0]\gpr1.dout_i_reg[3]_0 ;
  output [5:0]\gpr1.dout_i_reg[6] ;
  output [5:0]\gpr1.dout_i_reg[6]_0 ;
  output [5:0]\gpr1.dout_i_reg[9] ;
  output [5:0]\gpr1.dout_i_reg[9]_0 ;
  output [5:0]\gpr1.dout_i_reg[12] ;
  output [5:0]\gpr1.dout_i_reg[12]_0 ;
  input rd_clk;
  input \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ;
  input [11:0]WR_PNTR_RD;
  input rd_en;

  wire [5:0]ADDRC;
  wire [11:0]Q;
  wire [11:0]WR_PNTR_RD;
  wire empty;
  wire [5:0]\gpr1.dout_i_reg[0] ;
  wire [5:0]\gpr1.dout_i_reg[12] ;
  wire [5:0]\gpr1.dout_i_reg[12]_0 ;
  wire \gpr1.dout_i_reg[15] ;
  wire \gpr1.dout_i_reg[15]_0 ;
  wire [5:0]\gpr1.dout_i_reg[3] ;
  wire [5:0]\gpr1.dout_i_reg[3]_0 ;
  wire [5:0]\gpr1.dout_i_reg[6] ;
  wire [5:0]\gpr1.dout_i_reg[6]_0 ;
  wire [5:0]\gpr1.dout_i_reg[9] ;
  wire [5:0]\gpr1.dout_i_reg[9]_0 ;
  wire \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ;
  wire ram_rd_en_i;
  wire rd_clk;
  wire rd_en;
  wire [11:0]rd_pntr_plus1;

  fifo_generator_0_rd_status_flags_as \gras.rsts 
       (.Q(Q),
        .WR_PNTR_RD(WR_PNTR_RD),
        .empty(empty),
        .\gc0.count_d1_reg[0]_rep__8 (ram_rd_en_i),
        .\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg (\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ),
        .rd_clk(rd_clk),
        .rd_en(rd_en),
        .rd_pntr_plus1(rd_pntr_plus1));
  fifo_generator_0_rd_bin_cntr rpntr
       (.ADDRC(ADDRC),
        .Q(Q),
        .\gpr1.dout_i_reg[0] (\gpr1.dout_i_reg[0] ),
        .\gpr1.dout_i_reg[12] (\gpr1.dout_i_reg[12] ),
        .\gpr1.dout_i_reg[12]_0 (\gpr1.dout_i_reg[12]_0 ),
        .\gpr1.dout_i_reg[15] (\gpr1.dout_i_reg[15] ),
        .\gpr1.dout_i_reg[15]_0 (\gpr1.dout_i_reg[15]_0 ),
        .\gpr1.dout_i_reg[3] (\gpr1.dout_i_reg[3] ),
        .\gpr1.dout_i_reg[3]_0 (\gpr1.dout_i_reg[3]_0 ),
        .\gpr1.dout_i_reg[6] (\gpr1.dout_i_reg[6] ),
        .\gpr1.dout_i_reg[6]_0 (\gpr1.dout_i_reg[6]_0 ),
        .\gpr1.dout_i_reg[9] (\gpr1.dout_i_reg[9] ),
        .\gpr1.dout_i_reg[9]_0 (\gpr1.dout_i_reg[9]_0 ),
        .\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg (\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ),
        .ram_empty_fb_i_reg(ram_rd_en_i),
        .rd_clk(rd_clk),
        .rd_pntr_plus1(rd_pntr_plus1));
endmodule

module fifo_generator_0_rd_status_flags_as
   (empty,
    \gc0.count_d1_reg[0]_rep__8 ,
    rd_clk,
    \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ,
    rd_en,
    Q,
    WR_PNTR_RD,
    rd_pntr_plus1);
  output empty;
  output \gc0.count_d1_reg[0]_rep__8 ;
  input rd_clk;
  input \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ;
  input rd_en;
  input [11:0]Q;
  input [11:0]WR_PNTR_RD;
  input [11:0]rd_pntr_plus1;

  wire [11:0]Q;
  wire [11:0]WR_PNTR_RD;
  wire comp0;
  wire comp1;
  wire \gc0.count_d1_reg[0]_rep__8 ;
  wire \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ;
  (* DONT_TOUCH *) wire ram_empty_fb_i;
  wire ram_empty_fb_i0_n_0;
  (* DONT_TOUCH *) wire ram_empty_i;
  wire rd_clk;
  wire rd_en;
  wire [11:0]rd_pntr_plus1;

  assign empty = ram_empty_i;
  fifo_generator_0_compare_1 c0
       (.Q(Q),
        .WR_PNTR_RD(WR_PNTR_RD),
        .comp0(comp0));
  fifo_generator_0_compare_2 c1
       (.WR_PNTR_RD(WR_PNTR_RD),
        .comp1(comp1),
        .rd_pntr_plus1(rd_pntr_plus1));
  LUT2 #(
    .INIT(4'h2)) 
    \gpr1.dout_i[15]_i_1 
       (.I0(rd_en),
        .I1(ram_empty_fb_i),
        .O(\gc0.count_d1_reg[0]_rep__8 ));
  LUT4 #(
    .INIT(16'hAEAA)) 
    ram_empty_fb_i0
       (.I0(comp0),
        .I1(rd_en),
        .I2(ram_empty_fb_i),
        .I3(comp1),
        .O(ram_empty_fb_i0_n_0));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    ram_empty_fb_i_reg
       (.C(rd_clk),
        .CE(1'b1),
        .D(ram_empty_fb_i0_n_0),
        .PRE(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ),
        .Q(ram_empty_fb_i));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    ram_empty_i_reg
       (.C(rd_clk),
        .CE(1'b1),
        .D(ram_empty_fb_i0_n_0),
        .PRE(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ),
        .Q(ram_empty_i));
endmodule

module fifo_generator_0_reset_blk_ramfifo
   (\syncstages_ff_reg[0] ,
    AR,
    out,
    ram_full_fb_i_reg,
    wr_rst_busy,
    rst,
    wr_clk,
    rd_clk);
  output \syncstages_ff_reg[0] ;
  output [0:0]AR;
  output out;
  output ram_full_fb_i_reg;
  output wr_rst_busy;
  input rst;
  input wr_clk;
  input rd_clk;

  wire [0:0]AR;
  wire dest_out;
  wire \grstd1.grst_full.grst_f.rst_d3_i_1_n_0 ;
  wire \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_i_1_n_0 ;
  wire \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_wr_rst_ic_i_1_n_0 ;
  wire \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.wr_rst_busy_i_i_1_n_0 ;
  wire rd_clk;
  wire [3:0]rd_rst_wr_ext;
  wire rst;
  (* async_reg = "true" *) (* msgon = "true" *) wire rst_d1;
  (* async_reg = "true" *) (* msgon = "true" *) wire rst_d2;
  (* async_reg = "true" *) (* msgon = "true" *) wire rst_d3;
  (* async_reg = "true" *) (* msgon = "true" *) wire rst_rd_reg2;
  (* async_reg = "true" *) (* msgon = "true" *) wire rst_wr_reg2;
  wire sckt_rd_rst_wr;
  wire \syncstages_ff_reg[0] ;
  wire wr_clk;
  wire wr_rst_busy;
  wire [1:0]wr_rst_rd_ext;

  assign out = rst_d2;
  assign ram_full_fb_i_reg = rst_d3;
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDPE #(
    .INIT(1'b1)) 
    \grstd1.grst_full.grst_f.rst_d1_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(wr_rst_busy),
        .PRE(rst_wr_reg2),
        .Q(rst_d1));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDPE #(
    .INIT(1'b1)) 
    \grstd1.grst_full.grst_f.rst_d2_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(rst_d1),
        .PRE(rst_wr_reg2),
        .Q(rst_d2));
  LUT2 #(
    .INIT(4'hE)) 
    \grstd1.grst_full.grst_f.rst_d3_i_1 
       (.I0(rst_d2),
        .I1(\syncstages_ff_reg[0] ),
        .O(\grstd1.grst_full.grst_f.rst_d3_i_1_n_0 ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDPE #(
    .INIT(1'b1)) 
    \grstd1.grst_full.grst_f.rst_d3_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\grstd1.grst_full.grst_f.rst_d3_i_1_n_0 ),
        .PRE(rst_wr_reg2),
        .Q(rst_d3));
  FDCE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.rd_rst_wr_ext_reg[0] 
       (.C(wr_clk),
        .CE(1'b1),
        .CLR(rst_wr_reg2),
        .D(sckt_rd_rst_wr),
        .Q(rd_rst_wr_ext[0]));
  FDCE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.rd_rst_wr_ext_reg[1] 
       (.C(wr_clk),
        .CE(1'b1),
        .CLR(rst_wr_reg2),
        .D(rd_rst_wr_ext[0]),
        .Q(rd_rst_wr_ext[1]));
  FDCE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.rd_rst_wr_ext_reg[2] 
       (.C(wr_clk),
        .CE(1'b1),
        .CLR(rst_wr_reg2),
        .D(rd_rst_wr_ext[1]),
        .Q(rd_rst_wr_ext[2]));
  FDCE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.rd_rst_wr_ext_reg[3] 
       (.C(wr_clk),
        .CE(1'b1),
        .CLR(rst_wr_reg2),
        .D(rd_rst_wr_ext[2]),
        .Q(rd_rst_wr_ext[3]));
  (* DEF_VAL = "1'b0" *) 
  (* DEST_SYNC_FF = "2" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* INV_DEF_VAL = "1'b1" *) 
  (* RST_ACTIVE_HIGH = "1" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  (* XPM_MODULE = "TRUE" *) 
  fifo_generator_0_xpm_cdc_async_rst \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.rst_rd_reg2_inst 
       (.dest_arst(rst_rd_reg2),
        .dest_clk(rd_clk),
        .src_arst(rst));
  LUT2 #(
    .INIT(4'h2)) 
    \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_i_1 
       (.I0(AR),
        .I1(wr_rst_rd_ext[1]),
        .O(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_i_1_n_0 ));
  FDPE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_i_1_n_0 ),
        .PRE(rst_rd_reg2),
        .Q(AR));
  LUT3 #(
    .INIT(8'h8A)) 
    \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_wr_rst_ic_i_1 
       (.I0(\syncstages_ff_reg[0] ),
        .I1(rd_rst_wr_ext[0]),
        .I2(rd_rst_wr_ext[1]),
        .O(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_wr_rst_ic_i_1_n_0 ));
  FDPE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_wr_rst_ic_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_wr_rst_ic_i_1_n_0 ),
        .PRE(rst_wr_reg2),
        .Q(\syncstages_ff_reg[0] ));
  LUT5 #(
    .INIT(32'hAAAA08AA)) 
    \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.wr_rst_busy_i_i_1 
       (.I0(wr_rst_busy),
        .I1(rd_rst_wr_ext[1]),
        .I2(rd_rst_wr_ext[0]),
        .I3(rd_rst_wr_ext[3]),
        .I4(rd_rst_wr_ext[2]),
        .O(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.wr_rst_busy_i_i_1_n_0 ));
  FDPE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.wr_rst_busy_i_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.wr_rst_busy_i_i_1_n_0 ),
        .PRE(rst_wr_reg2),
        .Q(wr_rst_busy));
  FDCE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.wr_rst_rd_ext_reg[0] 
       (.C(rd_clk),
        .CE(1'b1),
        .CLR(rst_rd_reg2),
        .D(dest_out),
        .Q(wr_rst_rd_ext[0]));
  FDCE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.wr_rst_rd_ext_reg[1] 
       (.C(rd_clk),
        .CE(1'b1),
        .CLR(rst_rd_reg2),
        .D(wr_rst_rd_ext[0]),
        .Q(wr_rst_rd_ext[1]));
  (* DEST_SYNC_FF = "4" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SRC_INPUT_REG = "0" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "SINGLE" *) 
  (* XPM_MODULE = "TRUE" *) 
  fifo_generator_0_xpm_cdc_single \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.xpm_cdc_single_inst_rrst_wr 
       (.dest_clk(wr_clk),
        .dest_out(sckt_rd_rst_wr),
        .src_clk(rd_clk),
        .src_in(AR));
  (* DEST_SYNC_FF = "4" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SRC_INPUT_REG = "0" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "SINGLE" *) 
  (* XPM_MODULE = "TRUE" *) 
  fifo_generator_0_xpm_cdc_single__1 \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.xpm_cdc_single_inst_wrst_rd 
       (.dest_clk(rd_clk),
        .dest_out(dest_out),
        .src_clk(wr_clk),
        .src_in(\syncstages_ff_reg[0] ));
  (* DEF_VAL = "1'b0" *) 
  (* DEST_SYNC_FF = "2" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* INV_DEF_VAL = "1'b1" *) 
  (* RST_ACTIVE_HIGH = "1" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  (* XPM_MODULE = "TRUE" *) 
  fifo_generator_0_xpm_cdc_async_rst__1 \ngwrdrst.grst.g7serrst.gnsckt_wrst.rst_wr_reg2_inst 
       (.dest_arst(rst_wr_reg2),
        .dest_clk(wr_clk),
        .src_arst(rst));
endmodule

module fifo_generator_0_wr_bin_cntr
   (D,
    \gpr1.dout_i_reg[0] ,
    Q,
    \gpr1.dout_i_reg[0]_0 ,
    \gpr1.dout_i_reg[0]_1 ,
    \gpr1.dout_i_reg[15] ,
    \gpr1.dout_i_reg[15]_0 ,
    \gpr1.dout_i_reg[15]_1 ,
    \gpr1.dout_i_reg[15]_2 ,
    \gpr1.dout_i_reg[15]_3 ,
    \gpr1.dout_i_reg[15]_4 ,
    \gpr1.dout_i_reg[15]_5 ,
    \gpr1.dout_i_reg[15]_6 ,
    \gpr1.dout_i_reg[15]_7 ,
    \gpr1.dout_i_reg[15]_8 ,
    \gpr1.dout_i_reg[15]_9 ,
    \gpr1.dout_i_reg[15]_10 ,
    \gpr1.dout_i_reg[15]_11 ,
    \gpr1.dout_i_reg[15]_12 ,
    \gpr1.dout_i_reg[15]_13 ,
    \gpr1.dout_i_reg[15]_14 ,
    \gpr1.dout_i_reg[15]_15 ,
    \gpr1.dout_i_reg[15]_16 ,
    \gpr1.dout_i_reg[15]_17 ,
    \gpr1.dout_i_reg[15]_18 ,
    \gpr1.dout_i_reg[15]_19 ,
    \gpr1.dout_i_reg[15]_20 ,
    \gpr1.dout_i_reg[15]_21 ,
    \gpr1.dout_i_reg[15]_22 ,
    \gpr1.dout_i_reg[15]_23 ,
    \gpr1.dout_i_reg[15]_24 ,
    \gpr1.dout_i_reg[15]_25 ,
    \gpr1.dout_i_reg[15]_26 ,
    \gpr1.dout_i_reg[15]_27 ,
    \gpr1.dout_i_reg[15]_28 ,
    \gpr1.dout_i_reg[15]_29 ,
    \gpr1.dout_i_reg[15]_30 ,
    \gpr1.dout_i_reg[15]_31 ,
    \gpr1.dout_i_reg[15]_32 ,
    \gpr1.dout_i_reg[15]_33 ,
    \gpr1.dout_i_reg[15]_34 ,
    \gpr1.dout_i_reg[15]_35 ,
    \gpr1.dout_i_reg[15]_36 ,
    \gpr1.dout_i_reg[15]_37 ,
    \gpr1.dout_i_reg[15]_38 ,
    \gpr1.dout_i_reg[15]_39 ,
    \gpr1.dout_i_reg[15]_40 ,
    \gpr1.dout_i_reg[15]_41 ,
    \gpr1.dout_i_reg[15]_42 ,
    \gpr1.dout_i_reg[15]_43 ,
    \gpr1.dout_i_reg[15]_44 ,
    \gpr1.dout_i_reg[15]_45 ,
    \gpr1.dout_i_reg[15]_46 ,
    \gpr1.dout_i_reg[15]_47 ,
    \gpr1.dout_i_reg[15]_48 ,
    \gpr1.dout_i_reg[15]_49 ,
    \gpr1.dout_i_reg[15]_50 ,
    \gpr1.dout_i_reg[15]_51 ,
    \gpr1.dout_i_reg[15]_52 ,
    \gpr1.dout_i_reg[15]_53 ,
    \gpr1.dout_i_reg[15]_54 ,
    \gpr1.dout_i_reg[15]_55 ,
    \gpr1.dout_i_reg[15]_56 ,
    \gpr1.dout_i_reg[15]_57 ,
    \gpr1.dout_i_reg[15]_58 ,
    \gpr1.dout_i_reg[15]_59 ,
    \gic0.gc0.count_d2_reg[11]_0 ,
    ADDRD,
    \gpr1.dout_i_reg[6] ,
    \gpr1.dout_i_reg[9] ,
    \gpr1.dout_i_reg[12] ,
    \gpr1.dout_i_reg[15]_60 ,
    \gpr1.dout_i_reg[15]_61 ,
    \gpr1.dout_i_reg[15]_62 ,
    \gpr1.dout_i_reg[15]_63 ,
    \gpr1.dout_i_reg[15]_64 ,
    \gpr1.dout_i_reg[15]_65 ,
    p_20_out,
    wr_clk,
    \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_wr_rst_ic_reg ,
    ram_full_fb_i_reg,
    wr_en,
    out);
  output [11:0]D;
  output \gpr1.dout_i_reg[0] ;
  output [11:0]Q;
  output \gpr1.dout_i_reg[0]_0 ;
  output \gpr1.dout_i_reg[0]_1 ;
  output \gpr1.dout_i_reg[15] ;
  output \gpr1.dout_i_reg[15]_0 ;
  output \gpr1.dout_i_reg[15]_1 ;
  output \gpr1.dout_i_reg[15]_2 ;
  output \gpr1.dout_i_reg[15]_3 ;
  output \gpr1.dout_i_reg[15]_4 ;
  output \gpr1.dout_i_reg[15]_5 ;
  output \gpr1.dout_i_reg[15]_6 ;
  output \gpr1.dout_i_reg[15]_7 ;
  output \gpr1.dout_i_reg[15]_8 ;
  output \gpr1.dout_i_reg[15]_9 ;
  output \gpr1.dout_i_reg[15]_10 ;
  output \gpr1.dout_i_reg[15]_11 ;
  output \gpr1.dout_i_reg[15]_12 ;
  output \gpr1.dout_i_reg[15]_13 ;
  output \gpr1.dout_i_reg[15]_14 ;
  output \gpr1.dout_i_reg[15]_15 ;
  output \gpr1.dout_i_reg[15]_16 ;
  output \gpr1.dout_i_reg[15]_17 ;
  output \gpr1.dout_i_reg[15]_18 ;
  output \gpr1.dout_i_reg[15]_19 ;
  output \gpr1.dout_i_reg[15]_20 ;
  output \gpr1.dout_i_reg[15]_21 ;
  output \gpr1.dout_i_reg[15]_22 ;
  output \gpr1.dout_i_reg[15]_23 ;
  output \gpr1.dout_i_reg[15]_24 ;
  output \gpr1.dout_i_reg[15]_25 ;
  output \gpr1.dout_i_reg[15]_26 ;
  output \gpr1.dout_i_reg[15]_27 ;
  output \gpr1.dout_i_reg[15]_28 ;
  output \gpr1.dout_i_reg[15]_29 ;
  output \gpr1.dout_i_reg[15]_30 ;
  output \gpr1.dout_i_reg[15]_31 ;
  output \gpr1.dout_i_reg[15]_32 ;
  output \gpr1.dout_i_reg[15]_33 ;
  output \gpr1.dout_i_reg[15]_34 ;
  output \gpr1.dout_i_reg[15]_35 ;
  output \gpr1.dout_i_reg[15]_36 ;
  output \gpr1.dout_i_reg[15]_37 ;
  output \gpr1.dout_i_reg[15]_38 ;
  output \gpr1.dout_i_reg[15]_39 ;
  output \gpr1.dout_i_reg[15]_40 ;
  output \gpr1.dout_i_reg[15]_41 ;
  output \gpr1.dout_i_reg[15]_42 ;
  output \gpr1.dout_i_reg[15]_43 ;
  output \gpr1.dout_i_reg[15]_44 ;
  output \gpr1.dout_i_reg[15]_45 ;
  output \gpr1.dout_i_reg[15]_46 ;
  output \gpr1.dout_i_reg[15]_47 ;
  output \gpr1.dout_i_reg[15]_48 ;
  output \gpr1.dout_i_reg[15]_49 ;
  output \gpr1.dout_i_reg[15]_50 ;
  output \gpr1.dout_i_reg[15]_51 ;
  output \gpr1.dout_i_reg[15]_52 ;
  output \gpr1.dout_i_reg[15]_53 ;
  output \gpr1.dout_i_reg[15]_54 ;
  output \gpr1.dout_i_reg[15]_55 ;
  output \gpr1.dout_i_reg[15]_56 ;
  output \gpr1.dout_i_reg[15]_57 ;
  output \gpr1.dout_i_reg[15]_58 ;
  output \gpr1.dout_i_reg[15]_59 ;
  output [11:0]\gic0.gc0.count_d2_reg[11]_0 ;
  output [5:0]ADDRD;
  output [5:0]\gpr1.dout_i_reg[6] ;
  output [5:0]\gpr1.dout_i_reg[9] ;
  output [5:0]\gpr1.dout_i_reg[12] ;
  output \gpr1.dout_i_reg[15]_60 ;
  output \gpr1.dout_i_reg[15]_61 ;
  output \gpr1.dout_i_reg[15]_62 ;
  output \gpr1.dout_i_reg[15]_63 ;
  output \gpr1.dout_i_reg[15]_64 ;
  output \gpr1.dout_i_reg[15]_65 ;
  input p_20_out;
  input wr_clk;
  input \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_wr_rst_ic_reg ;
  input ram_full_fb_i_reg;
  input wr_en;
  input out;

  wire [5:0]ADDRD;
  wire [11:0]D;
  wire [11:0]Q;
  wire RAM_reg_0_63_0_2_i_2_n_0;
  wire RAM_reg_2048_2111_0_2_i_2_n_0;
  wire RAM_reg_2112_2175_0_2_i_2_n_0;
  wire RAM_reg_2304_2367_0_2_i_2_n_0;
  wire RAM_reg_2496_2559_0_2_i_2_n_0;
  wire RAM_reg_2880_2943_0_2_i_2_n_0;
  wire RAM_reg_2944_3007_0_2_i_2_n_0;
  wire RAM_reg_3392_3455_0_2_i_2_n_0;
  wire RAM_reg_3456_3519_0_2_i_2_n_0;
  wire RAM_reg_3840_3903_0_2_i_2_n_0;
  wire \gic0.gc0.count[0]_i_2_n_0 ;
  wire [11:0]\gic0.gc0.count_d2_reg[11]_0 ;
  wire \gic0.gc0.count_reg[0]_i_1_n_0 ;
  wire \gic0.gc0.count_reg[0]_i_1_n_1 ;
  wire \gic0.gc0.count_reg[0]_i_1_n_2 ;
  wire \gic0.gc0.count_reg[0]_i_1_n_3 ;
  wire \gic0.gc0.count_reg[0]_i_1_n_4 ;
  wire \gic0.gc0.count_reg[0]_i_1_n_5 ;
  wire \gic0.gc0.count_reg[0]_i_1_n_6 ;
  wire \gic0.gc0.count_reg[0]_i_1_n_7 ;
  wire \gic0.gc0.count_reg[4]_i_1_n_0 ;
  wire \gic0.gc0.count_reg[4]_i_1_n_1 ;
  wire \gic0.gc0.count_reg[4]_i_1_n_2 ;
  wire \gic0.gc0.count_reg[4]_i_1_n_3 ;
  wire \gic0.gc0.count_reg[4]_i_1_n_4 ;
  wire \gic0.gc0.count_reg[4]_i_1_n_5 ;
  wire \gic0.gc0.count_reg[4]_i_1_n_6 ;
  wire \gic0.gc0.count_reg[4]_i_1_n_7 ;
  wire \gic0.gc0.count_reg[8]_i_1_n_1 ;
  wire \gic0.gc0.count_reg[8]_i_1_n_2 ;
  wire \gic0.gc0.count_reg[8]_i_1_n_3 ;
  wire \gic0.gc0.count_reg[8]_i_1_n_4 ;
  wire \gic0.gc0.count_reg[8]_i_1_n_5 ;
  wire \gic0.gc0.count_reg[8]_i_1_n_6 ;
  wire \gic0.gc0.count_reg[8]_i_1_n_7 ;
  wire \gpr1.dout_i_reg[0] ;
  wire \gpr1.dout_i_reg[0]_0 ;
  wire \gpr1.dout_i_reg[0]_1 ;
  wire [5:0]\gpr1.dout_i_reg[12] ;
  wire \gpr1.dout_i_reg[15] ;
  wire \gpr1.dout_i_reg[15]_0 ;
  wire \gpr1.dout_i_reg[15]_1 ;
  wire \gpr1.dout_i_reg[15]_10 ;
  wire \gpr1.dout_i_reg[15]_11 ;
  wire \gpr1.dout_i_reg[15]_12 ;
  wire \gpr1.dout_i_reg[15]_13 ;
  wire \gpr1.dout_i_reg[15]_14 ;
  wire \gpr1.dout_i_reg[15]_15 ;
  wire \gpr1.dout_i_reg[15]_16 ;
  wire \gpr1.dout_i_reg[15]_17 ;
  wire \gpr1.dout_i_reg[15]_18 ;
  wire \gpr1.dout_i_reg[15]_19 ;
  wire \gpr1.dout_i_reg[15]_2 ;
  wire \gpr1.dout_i_reg[15]_20 ;
  wire \gpr1.dout_i_reg[15]_21 ;
  wire \gpr1.dout_i_reg[15]_22 ;
  wire \gpr1.dout_i_reg[15]_23 ;
  wire \gpr1.dout_i_reg[15]_24 ;
  wire \gpr1.dout_i_reg[15]_25 ;
  wire \gpr1.dout_i_reg[15]_26 ;
  wire \gpr1.dout_i_reg[15]_27 ;
  wire \gpr1.dout_i_reg[15]_28 ;
  wire \gpr1.dout_i_reg[15]_29 ;
  wire \gpr1.dout_i_reg[15]_3 ;
  wire \gpr1.dout_i_reg[15]_30 ;
  wire \gpr1.dout_i_reg[15]_31 ;
  wire \gpr1.dout_i_reg[15]_32 ;
  wire \gpr1.dout_i_reg[15]_33 ;
  wire \gpr1.dout_i_reg[15]_34 ;
  wire \gpr1.dout_i_reg[15]_35 ;
  wire \gpr1.dout_i_reg[15]_36 ;
  wire \gpr1.dout_i_reg[15]_37 ;
  wire \gpr1.dout_i_reg[15]_38 ;
  wire \gpr1.dout_i_reg[15]_39 ;
  wire \gpr1.dout_i_reg[15]_4 ;
  wire \gpr1.dout_i_reg[15]_40 ;
  wire \gpr1.dout_i_reg[15]_41 ;
  wire \gpr1.dout_i_reg[15]_42 ;
  wire \gpr1.dout_i_reg[15]_43 ;
  wire \gpr1.dout_i_reg[15]_44 ;
  wire \gpr1.dout_i_reg[15]_45 ;
  wire \gpr1.dout_i_reg[15]_46 ;
  wire \gpr1.dout_i_reg[15]_47 ;
  wire \gpr1.dout_i_reg[15]_48 ;
  wire \gpr1.dout_i_reg[15]_49 ;
  wire \gpr1.dout_i_reg[15]_5 ;
  wire \gpr1.dout_i_reg[15]_50 ;
  wire \gpr1.dout_i_reg[15]_51 ;
  wire \gpr1.dout_i_reg[15]_52 ;
  wire \gpr1.dout_i_reg[15]_53 ;
  wire \gpr1.dout_i_reg[15]_54 ;
  wire \gpr1.dout_i_reg[15]_55 ;
  wire \gpr1.dout_i_reg[15]_56 ;
  wire \gpr1.dout_i_reg[15]_57 ;
  wire \gpr1.dout_i_reg[15]_58 ;
  wire \gpr1.dout_i_reg[15]_59 ;
  wire \gpr1.dout_i_reg[15]_6 ;
  wire \gpr1.dout_i_reg[15]_60 ;
  wire \gpr1.dout_i_reg[15]_61 ;
  wire \gpr1.dout_i_reg[15]_62 ;
  wire \gpr1.dout_i_reg[15]_63 ;
  wire \gpr1.dout_i_reg[15]_64 ;
  wire \gpr1.dout_i_reg[15]_65 ;
  wire \gpr1.dout_i_reg[15]_7 ;
  wire \gpr1.dout_i_reg[15]_8 ;
  wire \gpr1.dout_i_reg[15]_9 ;
  wire [5:0]\gpr1.dout_i_reg[6] ;
  wire [5:0]\gpr1.dout_i_reg[9] ;
  wire \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_wr_rst_ic_reg ;
  wire out;
  wire p_20_out;
  wire ram_full_fb_i_reg;
  wire wr_clk;
  wire wr_en;
  wire [3:3]\NLW_gic0.gc0.count_reg[8]_i_1_CO_UNCONNECTED ;

  LUT5 #(
    .INIT(32'h00010000)) 
    RAM_reg_0_63_0_2_i_1
       (.I0(Q[6]),
        .I1(Q[7]),
        .I2(Q[8]),
        .I3(Q[9]),
        .I4(RAM_reg_0_63_0_2_i_2_n_0),
        .O(\gpr1.dout_i_reg[15]_27 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    RAM_reg_0_63_0_2_i_2
       (.I0(Q[11]),
        .I1(wr_en),
        .I2(out),
        .I3(Q[10]),
        .O(RAM_reg_0_63_0_2_i_2_n_0));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    RAM_reg_1024_1087_0_2_i_1
       (.I0(Q[6]),
        .I1(Q[7]),
        .I2(Q[8]),
        .I3(Q[9]),
        .I4(Q[10]),
        .I5(ram_full_fb_i_reg),
        .O(\gpr1.dout_i_reg[15] ));
  LUT6 #(
    .INIT(64'h0004000000000000)) 
    RAM_reg_1088_1151_0_2_i_1
       (.I0(Q[7]),
        .I1(Q[6]),
        .I2(Q[8]),
        .I3(Q[9]),
        .I4(ram_full_fb_i_reg),
        .I5(Q[10]),
        .O(\gpr1.dout_i_reg[15]_2 ));
  LUT6 #(
    .INIT(64'h0004000000000000)) 
    RAM_reg_1152_1215_0_2_i_1
       (.I0(Q[6]),
        .I1(Q[7]),
        .I2(Q[8]),
        .I3(Q[9]),
        .I4(ram_full_fb_i_reg),
        .I5(Q[10]),
        .O(\gpr1.dout_i_reg[15]_1 ));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    RAM_reg_1216_1279_0_2_i_1
       (.I0(Q[6]),
        .I1(Q[7]),
        .I2(Q[8]),
        .I3(Q[9]),
        .I4(Q[10]),
        .I5(ram_full_fb_i_reg),
        .O(\gpr1.dout_i_reg[15]_3 ));
  LUT6 #(
    .INIT(64'h0000004000000000)) 
    RAM_reg_1280_1343_0_2_i_1
       (.I0(Q[9]),
        .I1(ram_full_fb_i_reg),
        .I2(Q[10]),
        .I3(Q[6]),
        .I4(Q[7]),
        .I5(Q[8]),
        .O(\gpr1.dout_i_reg[15]_0 ));
  LUT6 #(
    .INIT(64'h0000010000000000)) 
    RAM_reg_128_191_0_2_i_1
       (.I0(Q[9]),
        .I1(Q[10]),
        .I2(Q[8]),
        .I3(Q[7]),
        .I4(Q[6]),
        .I5(ram_full_fb_i_reg),
        .O(\gpr1.dout_i_reg[0]_0 ));
  LUT6 #(
    .INIT(64'h0000080000000000)) 
    RAM_reg_1344_1407_0_2_i_1
       (.I0(Q[10]),
        .I1(ram_full_fb_i_reg),
        .I2(Q[9]),
        .I3(Q[8]),
        .I4(Q[7]),
        .I5(Q[6]),
        .O(\gpr1.dout_i_reg[15]_4 ));
  LUT6 #(
    .INIT(64'h0400000000000000)) 
    RAM_reg_1408_1471_0_2_i_1
       (.I0(Q[9]),
        .I1(Q[8]),
        .I2(Q[6]),
        .I3(Q[7]),
        .I4(Q[10]),
        .I5(ram_full_fb_i_reg),
        .O(\gpr1.dout_i_reg[15]_5 ));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    RAM_reg_1472_1535_0_2_i_1
       (.I0(Q[6]),
        .I1(Q[10]),
        .I2(Q[7]),
        .I3(Q[8]),
        .I4(ram_full_fb_i_reg),
        .I5(Q[9]),
        .O(\gpr1.dout_i_reg[15]_13 ));
  LUT6 #(
    .INIT(64'h0000000000004000)) 
    RAM_reg_1536_1599_0_2_i_1
       (.I0(Q[8]),
        .I1(ram_full_fb_i_reg),
        .I2(Q[9]),
        .I3(Q[10]),
        .I4(Q[6]),
        .I5(Q[7]),
        .O(\gpr1.dout_i_reg[15]_17 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    RAM_reg_1600_1663_0_2_i_1
       (.I0(Q[9]),
        .I1(ram_full_fb_i_reg),
        .I2(Q[6]),
        .I3(Q[10]),
        .I4(Q[7]),
        .I5(Q[8]),
        .O(\gpr1.dout_i_reg[15]_11 ));
  LUT6 #(
    .INIT(64'h0040000000000000)) 
    RAM_reg_1664_1727_0_2_i_1
       (.I0(Q[8]),
        .I1(Q[9]),
        .I2(Q[7]),
        .I3(Q[6]),
        .I4(Q[10]),
        .I5(ram_full_fb_i_reg),
        .O(\gpr1.dout_i_reg[15]_6 ));
  LUT6 #(
    .INIT(64'h4000000000000000)) 
    RAM_reg_1728_1791_0_2_i_1
       (.I0(Q[8]),
        .I1(ram_full_fb_i_reg),
        .I2(Q[9]),
        .I3(Q[10]),
        .I4(Q[6]),
        .I5(Q[7]),
        .O(\gpr1.dout_i_reg[15]_16 ));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    RAM_reg_1792_1855_0_2_i_1
       (.I0(Q[9]),
        .I1(ram_full_fb_i_reg),
        .I2(Q[8]),
        .I3(Q[7]),
        .I4(Q[6]),
        .I5(Q[10]),
        .O(\gpr1.dout_i_reg[15]_12 ));
  LUT6 #(
    .INIT(64'h4000000000000000)) 
    RAM_reg_1856_1919_0_2_i_1
       (.I0(Q[7]),
        .I1(Q[9]),
        .I2(Q[8]),
        .I3(Q[6]),
        .I4(Q[10]),
        .I5(ram_full_fb_i_reg),
        .O(\gpr1.dout_i_reg[0]_1 ));
  LUT6 #(
    .INIT(64'h4000000000000000)) 
    RAM_reg_1920_1983_0_2_i_1
       (.I0(Q[6]),
        .I1(Q[9]),
        .I2(Q[7]),
        .I3(Q[8]),
        .I4(Q[10]),
        .I5(ram_full_fb_i_reg),
        .O(\gpr1.dout_i_reg[15]_7 ));
  LUT5 #(
    .INIT(32'h00000080)) 
    RAM_reg_192_255_0_2_i_1
       (.I0(RAM_reg_0_63_0_2_i_2_n_0),
        .I1(Q[6]),
        .I2(Q[7]),
        .I3(Q[8]),
        .I4(Q[9]),
        .O(\gpr1.dout_i_reg[15]_26 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    RAM_reg_1984_2047_0_2_i_1
       (.I0(Q[8]),
        .I1(Q[9]),
        .I2(Q[6]),
        .I3(Q[7]),
        .I4(Q[10]),
        .I5(ram_full_fb_i_reg),
        .O(\gpr1.dout_i_reg[15]_8 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    RAM_reg_2048_2111_0_2_i_1
       (.I0(Q[6]),
        .I1(Q[7]),
        .I2(Q[8]),
        .I3(Q[9]),
        .I4(RAM_reg_2048_2111_0_2_i_2_n_0),
        .O(\gpr1.dout_i_reg[15]_34 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'hFBFF)) 
    RAM_reg_2048_2111_0_2_i_2
       (.I0(Q[10]),
        .I1(wr_en),
        .I2(out),
        .I3(Q[11]),
        .O(RAM_reg_2048_2111_0_2_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000000000000100)) 
    RAM_reg_2112_2175_0_2_i_1
       (.I0(Q[9]),
        .I1(Q[10]),
        .I2(Q[8]),
        .I3(Q[6]),
        .I4(Q[7]),
        .I5(RAM_reg_2112_2175_0_2_i_2_n_0),
        .O(\gpr1.dout_i_reg[15]_37 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    RAM_reg_2112_2175_0_2_i_2
       (.I0(Q[11]),
        .I1(out),
        .I2(wr_en),
        .O(RAM_reg_2112_2175_0_2_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000000000000100)) 
    RAM_reg_2176_2239_0_2_i_1
       (.I0(Q[9]),
        .I1(Q[10]),
        .I2(Q[8]),
        .I3(Q[7]),
        .I4(Q[6]),
        .I5(RAM_reg_2112_2175_0_2_i_2_n_0),
        .O(\gpr1.dout_i_reg[15]_38 ));
  LUT5 #(
    .INIT(32'h00000008)) 
    RAM_reg_2240_2303_0_2_i_1
       (.I0(Q[6]),
        .I1(Q[7]),
        .I2(Q[8]),
        .I3(Q[9]),
        .I4(RAM_reg_2048_2111_0_2_i_2_n_0),
        .O(\gpr1.dout_i_reg[15]_36 ));
  LUT6 #(
    .INIT(64'h1000000000000000)) 
    RAM_reg_2304_2367_0_2_i_1
       (.I0(Q[9]),
        .I1(Q[10]),
        .I2(RAM_reg_2304_2367_0_2_i_2_n_0),
        .I3(p_20_out),
        .I4(Q[8]),
        .I5(Q[11]),
        .O(\gpr1.dout_i_reg[15]_32 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h1)) 
    RAM_reg_2304_2367_0_2_i_2
       (.I0(Q[6]),
        .I1(Q[7]),
        .O(RAM_reg_2304_2367_0_2_i_2_n_0));
  LUT5 #(
    .INIT(32'h00000400)) 
    RAM_reg_2368_2431_0_2_i_1
       (.I0(Q[9]),
        .I1(Q[8]),
        .I2(Q[7]),
        .I3(Q[6]),
        .I4(RAM_reg_2048_2111_0_2_i_2_n_0),
        .O(\gpr1.dout_i_reg[15]_40 ));
  LUT5 #(
    .INIT(32'h00000400)) 
    RAM_reg_2432_2495_0_2_i_1
       (.I0(Q[9]),
        .I1(Q[8]),
        .I2(Q[6]),
        .I3(Q[7]),
        .I4(RAM_reg_2048_2111_0_2_i_2_n_0),
        .O(\gpr1.dout_i_reg[15]_45 ));
  LUT6 #(
    .INIT(64'h0200000000000000)) 
    RAM_reg_2496_2559_0_2_i_1
       (.I0(RAM_reg_2496_2559_0_2_i_2_n_0),
        .I1(Q[9]),
        .I2(Q[10]),
        .I3(p_20_out),
        .I4(Q[8]),
        .I5(Q[11]),
        .O(\gpr1.dout_i_reg[15]_39 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h8)) 
    RAM_reg_2496_2559_0_2_i_2
       (.I0(Q[6]),
        .I1(Q[7]),
        .O(RAM_reg_2496_2559_0_2_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    RAM_reg_2560_2623_0_2_i_1
       (.I0(Q[8]),
        .I1(Q[10]),
        .I2(Q[6]),
        .I3(Q[7]),
        .I4(RAM_reg_2112_2175_0_2_i_2_n_0),
        .I5(Q[9]),
        .O(\gpr1.dout_i_reg[15]_31 ));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    RAM_reg_256_319_0_2_i_1
       (.I0(Q[9]),
        .I1(Q[10]),
        .I2(Q[6]),
        .I3(Q[7]),
        .I4(Q[8]),
        .I5(ram_full_fb_i_reg),
        .O(\gpr1.dout_i_reg[15]_14 ));
  LUT5 #(
    .INIT(32'h00000008)) 
    RAM_reg_2624_2687_0_2_i_1
       (.I0(Q[6]),
        .I1(Q[9]),
        .I2(Q[7]),
        .I3(Q[8]),
        .I4(RAM_reg_2048_2111_0_2_i_2_n_0),
        .O(\gpr1.dout_i_reg[15]_53 ));
  LUT5 #(
    .INIT(32'h00000040)) 
    RAM_reg_2688_2751_0_2_i_1
       (.I0(Q[8]),
        .I1(Q[9]),
        .I2(Q[7]),
        .I3(Q[6]),
        .I4(RAM_reg_2048_2111_0_2_i_2_n_0),
        .O(\gpr1.dout_i_reg[15]_44 ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    RAM_reg_2752_2815_0_2_i_1
       (.I0(Q[6]),
        .I1(Q[7]),
        .I2(Q[8]),
        .I3(Q[10]),
        .I4(RAM_reg_2112_2175_0_2_i_2_n_0),
        .I5(Q[9]),
        .O(\gpr1.dout_i_reg[15]_49 ));
  LUT5 #(
    .INIT(32'h00000008)) 
    RAM_reg_2816_2879_0_2_i_1
       (.I0(Q[8]),
        .I1(Q[9]),
        .I2(Q[6]),
        .I3(Q[7]),
        .I4(RAM_reg_2048_2111_0_2_i_2_n_0),
        .O(\gpr1.dout_i_reg[15]_30 ));
  LUT6 #(
    .INIT(64'h1000000000000000)) 
    RAM_reg_2880_2943_0_2_i_1
       (.I0(RAM_reg_2880_2943_0_2_i_2_n_0),
        .I1(Q[10]),
        .I2(Q[8]),
        .I3(Q[11]),
        .I4(Q[6]),
        .I5(Q[9]),
        .O(\gpr1.dout_i_reg[15]_51 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    RAM_reg_2880_2943_0_2_i_2
       (.I0(Q[7]),
        .I1(out),
        .I2(wr_en),
        .O(RAM_reg_2880_2943_0_2_i_2_n_0));
  LUT5 #(
    .INIT(32'h00000040)) 
    RAM_reg_2944_3007_0_2_i_1
       (.I0(Q[6]),
        .I1(Q[7]),
        .I2(Q[9]),
        .I3(RAM_reg_2944_3007_0_2_i_2_n_0),
        .I4(Q[10]),
        .O(\gpr1.dout_i_reg[15]_43 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'hF7FF)) 
    RAM_reg_2944_3007_0_2_i_2
       (.I0(Q[11]),
        .I1(Q[8]),
        .I2(out),
        .I3(wr_en),
        .O(RAM_reg_2944_3007_0_2_i_2_n_0));
  LUT5 #(
    .INIT(32'h00008000)) 
    RAM_reg_3008_3071_0_2_i_1
       (.I0(Q[8]),
        .I1(Q[9]),
        .I2(Q[6]),
        .I3(Q[7]),
        .I4(RAM_reg_2048_2111_0_2_i_2_n_0),
        .O(\gpr1.dout_i_reg[15]_48 ));
  LUT6 #(
    .INIT(64'h0000000000010000)) 
    RAM_reg_3072_3135_0_2_i_1
       (.I0(Q[6]),
        .I1(Q[7]),
        .I2(Q[8]),
        .I3(Q[9]),
        .I4(Q[10]),
        .I5(RAM_reg_2112_2175_0_2_i_2_n_0),
        .O(\gpr1.dout_i_reg[15]_33 ));
  LUT6 #(
    .INIT(64'h0000000000000008)) 
    RAM_reg_3136_3199_0_2_i_1
       (.I0(Q[6]),
        .I1(Q[10]),
        .I2(Q[7]),
        .I3(Q[8]),
        .I4(RAM_reg_2112_2175_0_2_i_2_n_0),
        .I5(Q[9]),
        .O(\gpr1.dout_i_reg[15]_54 ));
  LUT6 #(
    .INIT(64'h0000010000000000)) 
    RAM_reg_3200_3263_0_2_i_1
       (.I0(RAM_reg_2112_2175_0_2_i_2_n_0),
        .I1(Q[9]),
        .I2(Q[8]),
        .I3(Q[7]),
        .I4(Q[6]),
        .I5(Q[10]),
        .O(\gpr1.dout_i_reg[15]_42 ));
  LUT5 #(
    .INIT(32'h00004000)) 
    RAM_reg_320_383_0_2_i_1
       (.I0(Q[7]),
        .I1(Q[6]),
        .I2(RAM_reg_0_63_0_2_i_2_n_0),
        .I3(Q[8]),
        .I4(Q[9]),
        .O(\gpr1.dout_i_reg[15]_25 ));
  LUT6 #(
    .INIT(64'h0000000000080000)) 
    RAM_reg_3264_3327_0_2_i_1
       (.I0(Q[6]),
        .I1(Q[7]),
        .I2(Q[8]),
        .I3(Q[9]),
        .I4(Q[10]),
        .I5(RAM_reg_2112_2175_0_2_i_2_n_0),
        .O(\gpr1.dout_i_reg[15]_35 ));
  LUT6 #(
    .INIT(64'h0000000000000200)) 
    RAM_reg_3328_3391_0_2_i_1
       (.I0(Q[8]),
        .I1(Q[7]),
        .I2(Q[6]),
        .I3(Q[10]),
        .I4(RAM_reg_2112_2175_0_2_i_2_n_0),
        .I5(Q[9]),
        .O(\gpr1.dout_i_reg[15]_29 ));
  LUT6 #(
    .INIT(64'h0000000000800000)) 
    RAM_reg_3392_3455_0_2_i_1
       (.I0(Q[6]),
        .I1(Q[10]),
        .I2(Q[11]),
        .I3(Q[7]),
        .I4(p_20_out),
        .I5(RAM_reg_3392_3455_0_2_i_2_n_0),
        .O(\gpr1.dout_i_reg[15]_50 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'hB)) 
    RAM_reg_3392_3455_0_2_i_2
       (.I0(Q[9]),
        .I1(Q[8]),
        .O(RAM_reg_3392_3455_0_2_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000000000800000)) 
    RAM_reg_3456_3519_0_2_i_1
       (.I0(Q[10]),
        .I1(Q[11]),
        .I2(RAM_reg_3456_3519_0_2_i_2_n_0),
        .I3(Q[6]),
        .I4(p_20_out),
        .I5(Q[9]),
        .O(\gpr1.dout_i_reg[15]_58 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h8)) 
    RAM_reg_3456_3519_0_2_i_2
       (.I0(Q[7]),
        .I1(Q[8]),
        .O(RAM_reg_3456_3519_0_2_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    RAM_reg_3520_3583_0_2_i_1
       (.I0(Q[6]),
        .I1(Q[10]),
        .I2(Q[7]),
        .I3(Q[8]),
        .I4(RAM_reg_2112_2175_0_2_i_2_n_0),
        .I5(Q[9]),
        .O(\gpr1.dout_i_reg[15]_59 ));
  LUT6 #(
    .INIT(64'h0000000000000008)) 
    RAM_reg_3584_3647_0_2_i_1
       (.I0(Q[9]),
        .I1(Q[10]),
        .I2(Q[6]),
        .I3(Q[7]),
        .I4(RAM_reg_2112_2175_0_2_i_2_n_0),
        .I5(Q[8]),
        .O(\gpr1.dout_i_reg[15]_28 ));
  LUT6 #(
    .INIT(64'h0000000000080000)) 
    RAM_reg_3648_3711_0_2_i_1
       (.I0(Q[6]),
        .I1(Q[9]),
        .I2(Q[7]),
        .I3(Q[8]),
        .I4(Q[10]),
        .I5(RAM_reg_2112_2175_0_2_i_2_n_0),
        .O(\gpr1.dout_i_reg[15]_52 ));
  LUT6 #(
    .INIT(64'h0000040000000000)) 
    RAM_reg_3712_3775_0_2_i_1
       (.I0(RAM_reg_2112_2175_0_2_i_2_n_0),
        .I1(Q[9]),
        .I2(Q[8]),
        .I3(Q[7]),
        .I4(Q[6]),
        .I5(Q[10]),
        .O(\gpr1.dout_i_reg[15]_41 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    RAM_reg_3776_3839_0_2_i_1
       (.I0(Q[9]),
        .I1(Q[10]),
        .I2(Q[6]),
        .I3(Q[7]),
        .I4(RAM_reg_2112_2175_0_2_i_2_n_0),
        .I5(Q[8]),
        .O(\gpr1.dout_i_reg[15]_46 ));
  LUT6 #(
    .INIT(64'h0000000000080000)) 
    RAM_reg_3840_3903_0_2_i_1
       (.I0(Q[10]),
        .I1(Q[11]),
        .I2(Q[6]),
        .I3(Q[7]),
        .I4(p_20_out),
        .I5(RAM_reg_3840_3903_0_2_i_2_n_0),
        .O(\gpr1.dout_i_reg[15]_55 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h7)) 
    RAM_reg_3840_3903_0_2_i_2
       (.I0(Q[8]),
        .I1(Q[9]),
        .O(RAM_reg_3840_3903_0_2_i_2_n_0));
  LUT5 #(
    .INIT(32'h00200000)) 
    RAM_reg_384_447_0_2_i_1
       (.I0(RAM_reg_0_63_0_2_i_2_n_0),
        .I1(Q[9]),
        .I2(Q[8]),
        .I3(Q[6]),
        .I4(Q[7]),
        .O(\gpr1.dout_i_reg[15]_23 ));
  LUT6 #(
    .INIT(64'h0000000040000000)) 
    RAM_reg_3904_3967_0_2_i_1
       (.I0(Q[7]),
        .I1(Q[9]),
        .I2(Q[8]),
        .I3(Q[6]),
        .I4(Q[10]),
        .I5(RAM_reg_2112_2175_0_2_i_2_n_0),
        .O(\gpr1.dout_i_reg[15]_56 ));
  LUT6 #(
    .INIT(64'h0000000040000000)) 
    RAM_reg_3968_4031_0_2_i_1
       (.I0(Q[6]),
        .I1(Q[9]),
        .I2(Q[7]),
        .I3(Q[8]),
        .I4(Q[10]),
        .I5(RAM_reg_2112_2175_0_2_i_2_n_0),
        .O(\gpr1.dout_i_reg[15]_57 ));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    RAM_reg_4032_4095_0_2_i_1
       (.I0(Q[8]),
        .I1(Q[9]),
        .I2(Q[6]),
        .I3(Q[7]),
        .I4(Q[10]),
        .I5(RAM_reg_2112_2175_0_2_i_2_n_0),
        .O(\gpr1.dout_i_reg[15]_47 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    RAM_reg_448_511_0_2_i_1
       (.I0(Q[8]),
        .I1(ram_full_fb_i_reg),
        .I2(Q[6]),
        .I3(Q[7]),
        .I4(Q[9]),
        .I5(Q[10]),
        .O(\gpr1.dout_i_reg[15]_15 ));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    RAM_reg_512_575_0_2_i_1
       (.I0(Q[8]),
        .I1(Q[10]),
        .I2(Q[6]),
        .I3(Q[7]),
        .I4(Q[9]),
        .I5(ram_full_fb_i_reg),
        .O(\gpr1.dout_i_reg[15]_9 ));
  LUT5 #(
    .INIT(32'h00000080)) 
    RAM_reg_576_639_0_2_i_1
       (.I0(RAM_reg_0_63_0_2_i_2_n_0),
        .I1(Q[6]),
        .I2(Q[9]),
        .I3(Q[7]),
        .I4(Q[8]),
        .O(\gpr1.dout_i_reg[15]_22 ));
  LUT5 #(
    .INIT(32'h00002000)) 
    RAM_reg_640_703_0_2_i_1
       (.I0(RAM_reg_0_63_0_2_i_2_n_0),
        .I1(Q[8]),
        .I2(Q[9]),
        .I3(Q[7]),
        .I4(Q[6]),
        .O(\gpr1.dout_i_reg[15]_21 ));
  LUT6 #(
    .INIT(64'h0000010000000000)) 
    RAM_reg_64_127_0_2_i_1
       (.I0(Q[9]),
        .I1(Q[10]),
        .I2(Q[8]),
        .I3(Q[6]),
        .I4(Q[7]),
        .I5(ram_full_fb_i_reg),
        .O(\gpr1.dout_i_reg[0] ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    RAM_reg_704_767_0_2_i_1
       (.I0(Q[9]),
        .I1(ram_full_fb_i_reg),
        .I2(Q[6]),
        .I3(Q[7]),
        .I4(Q[8]),
        .I5(Q[10]),
        .O(\gpr1.dout_i_reg[15]_10 ));
  LUT5 #(
    .INIT(32'h00000080)) 
    RAM_reg_768_831_0_2_i_1
       (.I0(RAM_reg_0_63_0_2_i_2_n_0),
        .I1(Q[8]),
        .I2(Q[9]),
        .I3(Q[6]),
        .I4(Q[7]),
        .O(\gpr1.dout_i_reg[15]_20 ));
  LUT5 #(
    .INIT(32'h40000000)) 
    RAM_reg_832_895_0_2_i_1
       (.I0(Q[7]),
        .I1(Q[6]),
        .I2(RAM_reg_0_63_0_2_i_2_n_0),
        .I3(Q[9]),
        .I4(Q[8]),
        .O(\gpr1.dout_i_reg[15]_24 ));
  LUT5 #(
    .INIT(32'h20000000)) 
    RAM_reg_896_959_0_2_i_1
       (.I0(RAM_reg_0_63_0_2_i_2_n_0),
        .I1(Q[6]),
        .I2(Q[9]),
        .I3(Q[7]),
        .I4(Q[8]),
        .O(\gpr1.dout_i_reg[15]_19 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    RAM_reg_960_1023_0_2_i_1
       (.I0(RAM_reg_0_63_0_2_i_2_n_0),
        .I1(Q[8]),
        .I2(Q[9]),
        .I3(Q[6]),
        .I4(Q[7]),
        .O(\gpr1.dout_i_reg[15]_18 ));
  LUT1 #(
    .INIT(2'h1)) 
    \gic0.gc0.count[0]_i_2 
       (.I0(D[0]),
        .O(\gic0.gc0.count[0]_i_2_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \gic0.gc0.count_d1_reg[0] 
       (.C(wr_clk),
        .CE(p_20_out),
        .D(D[0]),
        .PRE(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_wr_rst_ic_reg ),
        .Q(\gic0.gc0.count_d2_reg[11]_0 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_d1_reg[10] 
       (.C(wr_clk),
        .CE(p_20_out),
        .CLR(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_wr_rst_ic_reg ),
        .D(D[10]),
        .Q(\gic0.gc0.count_d2_reg[11]_0 [10]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_d1_reg[11] 
       (.C(wr_clk),
        .CE(p_20_out),
        .CLR(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_wr_rst_ic_reg ),
        .D(D[11]),
        .Q(\gic0.gc0.count_d2_reg[11]_0 [11]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_d1_reg[1] 
       (.C(wr_clk),
        .CE(p_20_out),
        .CLR(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_wr_rst_ic_reg ),
        .D(D[1]),
        .Q(\gic0.gc0.count_d2_reg[11]_0 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_d1_reg[2] 
       (.C(wr_clk),
        .CE(p_20_out),
        .CLR(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_wr_rst_ic_reg ),
        .D(D[2]),
        .Q(\gic0.gc0.count_d2_reg[11]_0 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_d1_reg[3] 
       (.C(wr_clk),
        .CE(p_20_out),
        .CLR(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_wr_rst_ic_reg ),
        .D(D[3]),
        .Q(\gic0.gc0.count_d2_reg[11]_0 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_d1_reg[4] 
       (.C(wr_clk),
        .CE(p_20_out),
        .CLR(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_wr_rst_ic_reg ),
        .D(D[4]),
        .Q(\gic0.gc0.count_d2_reg[11]_0 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_d1_reg[5] 
       (.C(wr_clk),
        .CE(p_20_out),
        .CLR(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_wr_rst_ic_reg ),
        .D(D[5]),
        .Q(\gic0.gc0.count_d2_reg[11]_0 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_d1_reg[6] 
       (.C(wr_clk),
        .CE(p_20_out),
        .CLR(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_wr_rst_ic_reg ),
        .D(D[6]),
        .Q(\gic0.gc0.count_d2_reg[11]_0 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_d1_reg[7] 
       (.C(wr_clk),
        .CE(p_20_out),
        .CLR(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_wr_rst_ic_reg ),
        .D(D[7]),
        .Q(\gic0.gc0.count_d2_reg[11]_0 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_d1_reg[8] 
       (.C(wr_clk),
        .CE(p_20_out),
        .CLR(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_wr_rst_ic_reg ),
        .D(D[8]),
        .Q(\gic0.gc0.count_d2_reg[11]_0 [8]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_d1_reg[9] 
       (.C(wr_clk),
        .CE(p_20_out),
        .CLR(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_wr_rst_ic_reg ),
        .D(D[9]),
        .Q(\gic0.gc0.count_d2_reg[11]_0 [9]));
  (* ORIG_CELL_NAME = "gic0.gc0.count_d2_reg[0]" *) 
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_d2_reg[0] 
       (.C(wr_clk),
        .CE(p_20_out),
        .CLR(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_wr_rst_ic_reg ),
        .D(\gic0.gc0.count_d2_reg[11]_0 [0]),
        .Q(Q[0]));
  (* ORIG_CELL_NAME = "gic0.gc0.count_d2_reg[0]" *) 
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_d2_reg[0]_rep 
       (.C(wr_clk),
        .CE(p_20_out),
        .CLR(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_wr_rst_ic_reg ),
        .D(\gic0.gc0.count_d2_reg[11]_0 [0]),
        .Q(ADDRD[0]));
  (* ORIG_CELL_NAME = "gic0.gc0.count_d2_reg[0]" *) 
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_d2_reg[0]_rep__0 
       (.C(wr_clk),
        .CE(p_20_out),
        .CLR(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_wr_rst_ic_reg ),
        .D(\gic0.gc0.count_d2_reg[11]_0 [0]),
        .Q(\gpr1.dout_i_reg[6] [0]));
  (* ORIG_CELL_NAME = "gic0.gc0.count_d2_reg[0]" *) 
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_d2_reg[0]_rep__1 
       (.C(wr_clk),
        .CE(p_20_out),
        .CLR(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_wr_rst_ic_reg ),
        .D(\gic0.gc0.count_d2_reg[11]_0 [0]),
        .Q(\gpr1.dout_i_reg[9] [0]));
  (* ORIG_CELL_NAME = "gic0.gc0.count_d2_reg[0]" *) 
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_d2_reg[0]_rep__2 
       (.C(wr_clk),
        .CE(p_20_out),
        .CLR(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_wr_rst_ic_reg ),
        .D(\gic0.gc0.count_d2_reg[11]_0 [0]),
        .Q(\gpr1.dout_i_reg[12] [0]));
  (* ORIG_CELL_NAME = "gic0.gc0.count_d2_reg[0]" *) 
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_d2_reg[0]_rep__3 
       (.C(wr_clk),
        .CE(p_20_out),
        .CLR(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_wr_rst_ic_reg ),
        .D(\gic0.gc0.count_d2_reg[11]_0 [0]),
        .Q(\gpr1.dout_i_reg[15]_65 ));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_d2_reg[10] 
       (.C(wr_clk),
        .CE(p_20_out),
        .CLR(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_wr_rst_ic_reg ),
        .D(\gic0.gc0.count_d2_reg[11]_0 [10]),
        .Q(Q[10]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_d2_reg[11] 
       (.C(wr_clk),
        .CE(p_20_out),
        .CLR(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_wr_rst_ic_reg ),
        .D(\gic0.gc0.count_d2_reg[11]_0 [11]),
        .Q(Q[11]));
  (* ORIG_CELL_NAME = "gic0.gc0.count_d2_reg[1]" *) 
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_d2_reg[1] 
       (.C(wr_clk),
        .CE(p_20_out),
        .CLR(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_wr_rst_ic_reg ),
        .D(\gic0.gc0.count_d2_reg[11]_0 [1]),
        .Q(Q[1]));
  (* ORIG_CELL_NAME = "gic0.gc0.count_d2_reg[1]" *) 
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_d2_reg[1]_rep 
       (.C(wr_clk),
        .CE(p_20_out),
        .CLR(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_wr_rst_ic_reg ),
        .D(\gic0.gc0.count_d2_reg[11]_0 [1]),
        .Q(ADDRD[1]));
  (* ORIG_CELL_NAME = "gic0.gc0.count_d2_reg[1]" *) 
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_d2_reg[1]_rep__0 
       (.C(wr_clk),
        .CE(p_20_out),
        .CLR(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_wr_rst_ic_reg ),
        .D(\gic0.gc0.count_d2_reg[11]_0 [1]),
        .Q(\gpr1.dout_i_reg[6] [1]));
  (* ORIG_CELL_NAME = "gic0.gc0.count_d2_reg[1]" *) 
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_d2_reg[1]_rep__1 
       (.C(wr_clk),
        .CE(p_20_out),
        .CLR(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_wr_rst_ic_reg ),
        .D(\gic0.gc0.count_d2_reg[11]_0 [1]),
        .Q(\gpr1.dout_i_reg[9] [1]));
  (* ORIG_CELL_NAME = "gic0.gc0.count_d2_reg[1]" *) 
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_d2_reg[1]_rep__2 
       (.C(wr_clk),
        .CE(p_20_out),
        .CLR(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_wr_rst_ic_reg ),
        .D(\gic0.gc0.count_d2_reg[11]_0 [1]),
        .Q(\gpr1.dout_i_reg[12] [1]));
  (* ORIG_CELL_NAME = "gic0.gc0.count_d2_reg[1]" *) 
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_d2_reg[1]_rep__3 
       (.C(wr_clk),
        .CE(p_20_out),
        .CLR(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_wr_rst_ic_reg ),
        .D(\gic0.gc0.count_d2_reg[11]_0 [1]),
        .Q(\gpr1.dout_i_reg[15]_64 ));
  (* ORIG_CELL_NAME = "gic0.gc0.count_d2_reg[2]" *) 
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_d2_reg[2] 
       (.C(wr_clk),
        .CE(p_20_out),
        .CLR(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_wr_rst_ic_reg ),
        .D(\gic0.gc0.count_d2_reg[11]_0 [2]),
        .Q(Q[2]));
  (* ORIG_CELL_NAME = "gic0.gc0.count_d2_reg[2]" *) 
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_d2_reg[2]_rep 
       (.C(wr_clk),
        .CE(p_20_out),
        .CLR(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_wr_rst_ic_reg ),
        .D(\gic0.gc0.count_d2_reg[11]_0 [2]),
        .Q(ADDRD[2]));
  (* ORIG_CELL_NAME = "gic0.gc0.count_d2_reg[2]" *) 
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_d2_reg[2]_rep__0 
       (.C(wr_clk),
        .CE(p_20_out),
        .CLR(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_wr_rst_ic_reg ),
        .D(\gic0.gc0.count_d2_reg[11]_0 [2]),
        .Q(\gpr1.dout_i_reg[6] [2]));
  (* ORIG_CELL_NAME = "gic0.gc0.count_d2_reg[2]" *) 
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_d2_reg[2]_rep__1 
       (.C(wr_clk),
        .CE(p_20_out),
        .CLR(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_wr_rst_ic_reg ),
        .D(\gic0.gc0.count_d2_reg[11]_0 [2]),
        .Q(\gpr1.dout_i_reg[9] [2]));
  (* ORIG_CELL_NAME = "gic0.gc0.count_d2_reg[2]" *) 
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_d2_reg[2]_rep__2 
       (.C(wr_clk),
        .CE(p_20_out),
        .CLR(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_wr_rst_ic_reg ),
        .D(\gic0.gc0.count_d2_reg[11]_0 [2]),
        .Q(\gpr1.dout_i_reg[12] [2]));
  (* ORIG_CELL_NAME = "gic0.gc0.count_d2_reg[2]" *) 
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_d2_reg[2]_rep__3 
       (.C(wr_clk),
        .CE(p_20_out),
        .CLR(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_wr_rst_ic_reg ),
        .D(\gic0.gc0.count_d2_reg[11]_0 [2]),
        .Q(\gpr1.dout_i_reg[15]_63 ));
  (* ORIG_CELL_NAME = "gic0.gc0.count_d2_reg[3]" *) 
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_d2_reg[3] 
       (.C(wr_clk),
        .CE(p_20_out),
        .CLR(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_wr_rst_ic_reg ),
        .D(\gic0.gc0.count_d2_reg[11]_0 [3]),
        .Q(Q[3]));
  (* ORIG_CELL_NAME = "gic0.gc0.count_d2_reg[3]" *) 
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_d2_reg[3]_rep 
       (.C(wr_clk),
        .CE(p_20_out),
        .CLR(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_wr_rst_ic_reg ),
        .D(\gic0.gc0.count_d2_reg[11]_0 [3]),
        .Q(ADDRD[3]));
  (* ORIG_CELL_NAME = "gic0.gc0.count_d2_reg[3]" *) 
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_d2_reg[3]_rep__0 
       (.C(wr_clk),
        .CE(p_20_out),
        .CLR(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_wr_rst_ic_reg ),
        .D(\gic0.gc0.count_d2_reg[11]_0 [3]),
        .Q(\gpr1.dout_i_reg[6] [3]));
  (* ORIG_CELL_NAME = "gic0.gc0.count_d2_reg[3]" *) 
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_d2_reg[3]_rep__1 
       (.C(wr_clk),
        .CE(p_20_out),
        .CLR(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_wr_rst_ic_reg ),
        .D(\gic0.gc0.count_d2_reg[11]_0 [3]),
        .Q(\gpr1.dout_i_reg[9] [3]));
  (* ORIG_CELL_NAME = "gic0.gc0.count_d2_reg[3]" *) 
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_d2_reg[3]_rep__2 
       (.C(wr_clk),
        .CE(p_20_out),
        .CLR(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_wr_rst_ic_reg ),
        .D(\gic0.gc0.count_d2_reg[11]_0 [3]),
        .Q(\gpr1.dout_i_reg[12] [3]));
  (* ORIG_CELL_NAME = "gic0.gc0.count_d2_reg[3]" *) 
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_d2_reg[3]_rep__3 
       (.C(wr_clk),
        .CE(p_20_out),
        .CLR(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_wr_rst_ic_reg ),
        .D(\gic0.gc0.count_d2_reg[11]_0 [3]),
        .Q(\gpr1.dout_i_reg[15]_62 ));
  (* ORIG_CELL_NAME = "gic0.gc0.count_d2_reg[4]" *) 
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_d2_reg[4] 
       (.C(wr_clk),
        .CE(p_20_out),
        .CLR(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_wr_rst_ic_reg ),
        .D(\gic0.gc0.count_d2_reg[11]_0 [4]),
        .Q(Q[4]));
  (* ORIG_CELL_NAME = "gic0.gc0.count_d2_reg[4]" *) 
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_d2_reg[4]_rep 
       (.C(wr_clk),
        .CE(p_20_out),
        .CLR(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_wr_rst_ic_reg ),
        .D(\gic0.gc0.count_d2_reg[11]_0 [4]),
        .Q(ADDRD[4]));
  (* ORIG_CELL_NAME = "gic0.gc0.count_d2_reg[4]" *) 
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_d2_reg[4]_rep__0 
       (.C(wr_clk),
        .CE(p_20_out),
        .CLR(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_wr_rst_ic_reg ),
        .D(\gic0.gc0.count_d2_reg[11]_0 [4]),
        .Q(\gpr1.dout_i_reg[6] [4]));
  (* ORIG_CELL_NAME = "gic0.gc0.count_d2_reg[4]" *) 
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_d2_reg[4]_rep__1 
       (.C(wr_clk),
        .CE(p_20_out),
        .CLR(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_wr_rst_ic_reg ),
        .D(\gic0.gc0.count_d2_reg[11]_0 [4]),
        .Q(\gpr1.dout_i_reg[9] [4]));
  (* ORIG_CELL_NAME = "gic0.gc0.count_d2_reg[4]" *) 
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_d2_reg[4]_rep__2 
       (.C(wr_clk),
        .CE(p_20_out),
        .CLR(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_wr_rst_ic_reg ),
        .D(\gic0.gc0.count_d2_reg[11]_0 [4]),
        .Q(\gpr1.dout_i_reg[12] [4]));
  (* ORIG_CELL_NAME = "gic0.gc0.count_d2_reg[4]" *) 
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_d2_reg[4]_rep__3 
       (.C(wr_clk),
        .CE(p_20_out),
        .CLR(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_wr_rst_ic_reg ),
        .D(\gic0.gc0.count_d2_reg[11]_0 [4]),
        .Q(\gpr1.dout_i_reg[15]_61 ));
  (* ORIG_CELL_NAME = "gic0.gc0.count_d2_reg[5]" *) 
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_d2_reg[5] 
       (.C(wr_clk),
        .CE(p_20_out),
        .CLR(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_wr_rst_ic_reg ),
        .D(\gic0.gc0.count_d2_reg[11]_0 [5]),
        .Q(Q[5]));
  (* ORIG_CELL_NAME = "gic0.gc0.count_d2_reg[5]" *) 
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_d2_reg[5]_rep 
       (.C(wr_clk),
        .CE(p_20_out),
        .CLR(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_wr_rst_ic_reg ),
        .D(\gic0.gc0.count_d2_reg[11]_0 [5]),
        .Q(ADDRD[5]));
  (* ORIG_CELL_NAME = "gic0.gc0.count_d2_reg[5]" *) 
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_d2_reg[5]_rep__0 
       (.C(wr_clk),
        .CE(p_20_out),
        .CLR(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_wr_rst_ic_reg ),
        .D(\gic0.gc0.count_d2_reg[11]_0 [5]),
        .Q(\gpr1.dout_i_reg[6] [5]));
  (* ORIG_CELL_NAME = "gic0.gc0.count_d2_reg[5]" *) 
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_d2_reg[5]_rep__1 
       (.C(wr_clk),
        .CE(p_20_out),
        .CLR(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_wr_rst_ic_reg ),
        .D(\gic0.gc0.count_d2_reg[11]_0 [5]),
        .Q(\gpr1.dout_i_reg[9] [5]));
  (* ORIG_CELL_NAME = "gic0.gc0.count_d2_reg[5]" *) 
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_d2_reg[5]_rep__2 
       (.C(wr_clk),
        .CE(p_20_out),
        .CLR(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_wr_rst_ic_reg ),
        .D(\gic0.gc0.count_d2_reg[11]_0 [5]),
        .Q(\gpr1.dout_i_reg[12] [5]));
  (* ORIG_CELL_NAME = "gic0.gc0.count_d2_reg[5]" *) 
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_d2_reg[5]_rep__3 
       (.C(wr_clk),
        .CE(p_20_out),
        .CLR(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_wr_rst_ic_reg ),
        .D(\gic0.gc0.count_d2_reg[11]_0 [5]),
        .Q(\gpr1.dout_i_reg[15]_60 ));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_d2_reg[6] 
       (.C(wr_clk),
        .CE(p_20_out),
        .CLR(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_wr_rst_ic_reg ),
        .D(\gic0.gc0.count_d2_reg[11]_0 [6]),
        .Q(Q[6]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_d2_reg[7] 
       (.C(wr_clk),
        .CE(p_20_out),
        .CLR(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_wr_rst_ic_reg ),
        .D(\gic0.gc0.count_d2_reg[11]_0 [7]),
        .Q(Q[7]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_d2_reg[8] 
       (.C(wr_clk),
        .CE(p_20_out),
        .CLR(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_wr_rst_ic_reg ),
        .D(\gic0.gc0.count_d2_reg[11]_0 [8]),
        .Q(Q[8]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_d2_reg[9] 
       (.C(wr_clk),
        .CE(p_20_out),
        .CLR(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_wr_rst_ic_reg ),
        .D(\gic0.gc0.count_d2_reg[11]_0 [9]),
        .Q(Q[9]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_reg[0] 
       (.C(wr_clk),
        .CE(p_20_out),
        .CLR(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_wr_rst_ic_reg ),
        .D(\gic0.gc0.count_reg[0]_i_1_n_7 ),
        .Q(D[0]));
  CARRY4 \gic0.gc0.count_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\gic0.gc0.count_reg[0]_i_1_n_0 ,\gic0.gc0.count_reg[0]_i_1_n_1 ,\gic0.gc0.count_reg[0]_i_1_n_2 ,\gic0.gc0.count_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\gic0.gc0.count_reg[0]_i_1_n_4 ,\gic0.gc0.count_reg[0]_i_1_n_5 ,\gic0.gc0.count_reg[0]_i_1_n_6 ,\gic0.gc0.count_reg[0]_i_1_n_7 }),
        .S({D[3:1],\gic0.gc0.count[0]_i_2_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_reg[10] 
       (.C(wr_clk),
        .CE(p_20_out),
        .CLR(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_wr_rst_ic_reg ),
        .D(\gic0.gc0.count_reg[8]_i_1_n_5 ),
        .Q(D[10]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_reg[11] 
       (.C(wr_clk),
        .CE(p_20_out),
        .CLR(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_wr_rst_ic_reg ),
        .D(\gic0.gc0.count_reg[8]_i_1_n_4 ),
        .Q(D[11]));
  FDPE #(
    .INIT(1'b1)) 
    \gic0.gc0.count_reg[1] 
       (.C(wr_clk),
        .CE(p_20_out),
        .D(\gic0.gc0.count_reg[0]_i_1_n_6 ),
        .PRE(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_wr_rst_ic_reg ),
        .Q(D[1]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_reg[2] 
       (.C(wr_clk),
        .CE(p_20_out),
        .CLR(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_wr_rst_ic_reg ),
        .D(\gic0.gc0.count_reg[0]_i_1_n_5 ),
        .Q(D[2]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_reg[3] 
       (.C(wr_clk),
        .CE(p_20_out),
        .CLR(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_wr_rst_ic_reg ),
        .D(\gic0.gc0.count_reg[0]_i_1_n_4 ),
        .Q(D[3]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_reg[4] 
       (.C(wr_clk),
        .CE(p_20_out),
        .CLR(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_wr_rst_ic_reg ),
        .D(\gic0.gc0.count_reg[4]_i_1_n_7 ),
        .Q(D[4]));
  CARRY4 \gic0.gc0.count_reg[4]_i_1 
       (.CI(\gic0.gc0.count_reg[0]_i_1_n_0 ),
        .CO({\gic0.gc0.count_reg[4]_i_1_n_0 ,\gic0.gc0.count_reg[4]_i_1_n_1 ,\gic0.gc0.count_reg[4]_i_1_n_2 ,\gic0.gc0.count_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\gic0.gc0.count_reg[4]_i_1_n_4 ,\gic0.gc0.count_reg[4]_i_1_n_5 ,\gic0.gc0.count_reg[4]_i_1_n_6 ,\gic0.gc0.count_reg[4]_i_1_n_7 }),
        .S(D[7:4]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_reg[5] 
       (.C(wr_clk),
        .CE(p_20_out),
        .CLR(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_wr_rst_ic_reg ),
        .D(\gic0.gc0.count_reg[4]_i_1_n_6 ),
        .Q(D[5]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_reg[6] 
       (.C(wr_clk),
        .CE(p_20_out),
        .CLR(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_wr_rst_ic_reg ),
        .D(\gic0.gc0.count_reg[4]_i_1_n_5 ),
        .Q(D[6]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_reg[7] 
       (.C(wr_clk),
        .CE(p_20_out),
        .CLR(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_wr_rst_ic_reg ),
        .D(\gic0.gc0.count_reg[4]_i_1_n_4 ),
        .Q(D[7]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_reg[8] 
       (.C(wr_clk),
        .CE(p_20_out),
        .CLR(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_wr_rst_ic_reg ),
        .D(\gic0.gc0.count_reg[8]_i_1_n_7 ),
        .Q(D[8]));
  CARRY4 \gic0.gc0.count_reg[8]_i_1 
       (.CI(\gic0.gc0.count_reg[4]_i_1_n_0 ),
        .CO({\NLW_gic0.gc0.count_reg[8]_i_1_CO_UNCONNECTED [3],\gic0.gc0.count_reg[8]_i_1_n_1 ,\gic0.gc0.count_reg[8]_i_1_n_2 ,\gic0.gc0.count_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\gic0.gc0.count_reg[8]_i_1_n_4 ,\gic0.gc0.count_reg[8]_i_1_n_5 ,\gic0.gc0.count_reg[8]_i_1_n_6 ,\gic0.gc0.count_reg[8]_i_1_n_7 }),
        .S(D[11:8]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_reg[9] 
       (.C(wr_clk),
        .CE(p_20_out),
        .CLR(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_wr_rst_ic_reg ),
        .D(\gic0.gc0.count_reg[8]_i_1_n_6 ),
        .Q(D[9]));
endmodule

module fifo_generator_0_wr_logic
   (full,
    \gpr1.dout_i_reg[0] ,
    Q,
    \gpr1.dout_i_reg[0]_0 ,
    \gpr1.dout_i_reg[0]_1 ,
    \gpr1.dout_i_reg[15] ,
    \gpr1.dout_i_reg[15]_0 ,
    \gpr1.dout_i_reg[15]_1 ,
    \gpr1.dout_i_reg[15]_2 ,
    \gpr1.dout_i_reg[15]_3 ,
    \gpr1.dout_i_reg[15]_4 ,
    \gpr1.dout_i_reg[15]_5 ,
    \gpr1.dout_i_reg[15]_6 ,
    \gpr1.dout_i_reg[15]_7 ,
    \gpr1.dout_i_reg[15]_8 ,
    \gpr1.dout_i_reg[15]_9 ,
    \gpr1.dout_i_reg[15]_10 ,
    \gpr1.dout_i_reg[15]_11 ,
    \gpr1.dout_i_reg[15]_12 ,
    \gpr1.dout_i_reg[15]_13 ,
    \gpr1.dout_i_reg[15]_14 ,
    \gpr1.dout_i_reg[15]_15 ,
    \gpr1.dout_i_reg[15]_16 ,
    \gpr1.dout_i_reg[15]_17 ,
    \gpr1.dout_i_reg[15]_18 ,
    \gpr1.dout_i_reg[15]_19 ,
    \gpr1.dout_i_reg[15]_20 ,
    \gpr1.dout_i_reg[15]_21 ,
    \gpr1.dout_i_reg[15]_22 ,
    \gpr1.dout_i_reg[15]_23 ,
    \gpr1.dout_i_reg[15]_24 ,
    \gpr1.dout_i_reg[15]_25 ,
    \gpr1.dout_i_reg[15]_26 ,
    \gpr1.dout_i_reg[15]_27 ,
    \gpr1.dout_i_reg[15]_28 ,
    \gpr1.dout_i_reg[15]_29 ,
    \gpr1.dout_i_reg[15]_30 ,
    \gpr1.dout_i_reg[15]_31 ,
    \gpr1.dout_i_reg[15]_32 ,
    \gpr1.dout_i_reg[15]_33 ,
    \gpr1.dout_i_reg[15]_34 ,
    \gpr1.dout_i_reg[15]_35 ,
    \gpr1.dout_i_reg[15]_36 ,
    \gpr1.dout_i_reg[15]_37 ,
    \gpr1.dout_i_reg[15]_38 ,
    \gpr1.dout_i_reg[15]_39 ,
    \gpr1.dout_i_reg[15]_40 ,
    \gpr1.dout_i_reg[15]_41 ,
    \gpr1.dout_i_reg[15]_42 ,
    \gpr1.dout_i_reg[15]_43 ,
    \gpr1.dout_i_reg[15]_44 ,
    \gpr1.dout_i_reg[15]_45 ,
    \gpr1.dout_i_reg[15]_46 ,
    \gpr1.dout_i_reg[15]_47 ,
    \gpr1.dout_i_reg[15]_48 ,
    \gpr1.dout_i_reg[15]_49 ,
    \gpr1.dout_i_reg[15]_50 ,
    \gpr1.dout_i_reg[15]_51 ,
    \gpr1.dout_i_reg[15]_52 ,
    \gpr1.dout_i_reg[15]_53 ,
    \gpr1.dout_i_reg[15]_54 ,
    \gpr1.dout_i_reg[15]_55 ,
    \gpr1.dout_i_reg[15]_56 ,
    \gpr1.dout_i_reg[15]_57 ,
    \gpr1.dout_i_reg[15]_58 ,
    \gpr1.dout_i_reg[15]_59 ,
    ADDRD,
    \gpr1.dout_i_reg[6] ,
    \gpr1.dout_i_reg[9] ,
    \gpr1.dout_i_reg[12] ,
    \gpr1.dout_i_reg[15]_60 ,
    \gpr1.dout_i_reg[15]_61 ,
    \gpr1.dout_i_reg[15]_62 ,
    \gpr1.dout_i_reg[15]_63 ,
    \gpr1.dout_i_reg[15]_64 ,
    \gpr1.dout_i_reg[15]_65 ,
    wr_clk,
    out,
    \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_wr_rst_ic_reg ,
    wr_en,
    \grstd1.grst_full.grst_f.rst_d3_reg ,
    RD_PNTR_WR);
  output full;
  output \gpr1.dout_i_reg[0] ;
  output [11:0]Q;
  output \gpr1.dout_i_reg[0]_0 ;
  output \gpr1.dout_i_reg[0]_1 ;
  output \gpr1.dout_i_reg[15] ;
  output \gpr1.dout_i_reg[15]_0 ;
  output \gpr1.dout_i_reg[15]_1 ;
  output \gpr1.dout_i_reg[15]_2 ;
  output \gpr1.dout_i_reg[15]_3 ;
  output \gpr1.dout_i_reg[15]_4 ;
  output \gpr1.dout_i_reg[15]_5 ;
  output \gpr1.dout_i_reg[15]_6 ;
  output \gpr1.dout_i_reg[15]_7 ;
  output \gpr1.dout_i_reg[15]_8 ;
  output \gpr1.dout_i_reg[15]_9 ;
  output \gpr1.dout_i_reg[15]_10 ;
  output \gpr1.dout_i_reg[15]_11 ;
  output \gpr1.dout_i_reg[15]_12 ;
  output \gpr1.dout_i_reg[15]_13 ;
  output \gpr1.dout_i_reg[15]_14 ;
  output \gpr1.dout_i_reg[15]_15 ;
  output \gpr1.dout_i_reg[15]_16 ;
  output \gpr1.dout_i_reg[15]_17 ;
  output \gpr1.dout_i_reg[15]_18 ;
  output \gpr1.dout_i_reg[15]_19 ;
  output \gpr1.dout_i_reg[15]_20 ;
  output \gpr1.dout_i_reg[15]_21 ;
  output \gpr1.dout_i_reg[15]_22 ;
  output \gpr1.dout_i_reg[15]_23 ;
  output \gpr1.dout_i_reg[15]_24 ;
  output \gpr1.dout_i_reg[15]_25 ;
  output \gpr1.dout_i_reg[15]_26 ;
  output \gpr1.dout_i_reg[15]_27 ;
  output \gpr1.dout_i_reg[15]_28 ;
  output \gpr1.dout_i_reg[15]_29 ;
  output \gpr1.dout_i_reg[15]_30 ;
  output \gpr1.dout_i_reg[15]_31 ;
  output \gpr1.dout_i_reg[15]_32 ;
  output \gpr1.dout_i_reg[15]_33 ;
  output \gpr1.dout_i_reg[15]_34 ;
  output \gpr1.dout_i_reg[15]_35 ;
  output \gpr1.dout_i_reg[15]_36 ;
  output \gpr1.dout_i_reg[15]_37 ;
  output \gpr1.dout_i_reg[15]_38 ;
  output \gpr1.dout_i_reg[15]_39 ;
  output \gpr1.dout_i_reg[15]_40 ;
  output \gpr1.dout_i_reg[15]_41 ;
  output \gpr1.dout_i_reg[15]_42 ;
  output \gpr1.dout_i_reg[15]_43 ;
  output \gpr1.dout_i_reg[15]_44 ;
  output \gpr1.dout_i_reg[15]_45 ;
  output \gpr1.dout_i_reg[15]_46 ;
  output \gpr1.dout_i_reg[15]_47 ;
  output \gpr1.dout_i_reg[15]_48 ;
  output \gpr1.dout_i_reg[15]_49 ;
  output \gpr1.dout_i_reg[15]_50 ;
  output \gpr1.dout_i_reg[15]_51 ;
  output \gpr1.dout_i_reg[15]_52 ;
  output \gpr1.dout_i_reg[15]_53 ;
  output \gpr1.dout_i_reg[15]_54 ;
  output \gpr1.dout_i_reg[15]_55 ;
  output \gpr1.dout_i_reg[15]_56 ;
  output \gpr1.dout_i_reg[15]_57 ;
  output \gpr1.dout_i_reg[15]_58 ;
  output \gpr1.dout_i_reg[15]_59 ;
  output [5:0]ADDRD;
  output [5:0]\gpr1.dout_i_reg[6] ;
  output [5:0]\gpr1.dout_i_reg[9] ;
  output [5:0]\gpr1.dout_i_reg[12] ;
  output \gpr1.dout_i_reg[15]_60 ;
  output \gpr1.dout_i_reg[15]_61 ;
  output \gpr1.dout_i_reg[15]_62 ;
  output \gpr1.dout_i_reg[15]_63 ;
  output \gpr1.dout_i_reg[15]_64 ;
  output \gpr1.dout_i_reg[15]_65 ;
  input wr_clk;
  input out;
  input \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_wr_rst_ic_reg ;
  input wr_en;
  input \grstd1.grst_full.grst_f.rst_d3_reg ;
  input [11:0]RD_PNTR_WR;

  wire [5:0]ADDRD;
  wire [11:0]Q;
  wire [11:0]RD_PNTR_WR;
  wire full;
  wire \gpr1.dout_i_reg[0] ;
  wire \gpr1.dout_i_reg[0]_0 ;
  wire \gpr1.dout_i_reg[0]_1 ;
  wire [5:0]\gpr1.dout_i_reg[12] ;
  wire \gpr1.dout_i_reg[15] ;
  wire \gpr1.dout_i_reg[15]_0 ;
  wire \gpr1.dout_i_reg[15]_1 ;
  wire \gpr1.dout_i_reg[15]_10 ;
  wire \gpr1.dout_i_reg[15]_11 ;
  wire \gpr1.dout_i_reg[15]_12 ;
  wire \gpr1.dout_i_reg[15]_13 ;
  wire \gpr1.dout_i_reg[15]_14 ;
  wire \gpr1.dout_i_reg[15]_15 ;
  wire \gpr1.dout_i_reg[15]_16 ;
  wire \gpr1.dout_i_reg[15]_17 ;
  wire \gpr1.dout_i_reg[15]_18 ;
  wire \gpr1.dout_i_reg[15]_19 ;
  wire \gpr1.dout_i_reg[15]_2 ;
  wire \gpr1.dout_i_reg[15]_20 ;
  wire \gpr1.dout_i_reg[15]_21 ;
  wire \gpr1.dout_i_reg[15]_22 ;
  wire \gpr1.dout_i_reg[15]_23 ;
  wire \gpr1.dout_i_reg[15]_24 ;
  wire \gpr1.dout_i_reg[15]_25 ;
  wire \gpr1.dout_i_reg[15]_26 ;
  wire \gpr1.dout_i_reg[15]_27 ;
  wire \gpr1.dout_i_reg[15]_28 ;
  wire \gpr1.dout_i_reg[15]_29 ;
  wire \gpr1.dout_i_reg[15]_3 ;
  wire \gpr1.dout_i_reg[15]_30 ;
  wire \gpr1.dout_i_reg[15]_31 ;
  wire \gpr1.dout_i_reg[15]_32 ;
  wire \gpr1.dout_i_reg[15]_33 ;
  wire \gpr1.dout_i_reg[15]_34 ;
  wire \gpr1.dout_i_reg[15]_35 ;
  wire \gpr1.dout_i_reg[15]_36 ;
  wire \gpr1.dout_i_reg[15]_37 ;
  wire \gpr1.dout_i_reg[15]_38 ;
  wire \gpr1.dout_i_reg[15]_39 ;
  wire \gpr1.dout_i_reg[15]_4 ;
  wire \gpr1.dout_i_reg[15]_40 ;
  wire \gpr1.dout_i_reg[15]_41 ;
  wire \gpr1.dout_i_reg[15]_42 ;
  wire \gpr1.dout_i_reg[15]_43 ;
  wire \gpr1.dout_i_reg[15]_44 ;
  wire \gpr1.dout_i_reg[15]_45 ;
  wire \gpr1.dout_i_reg[15]_46 ;
  wire \gpr1.dout_i_reg[15]_47 ;
  wire \gpr1.dout_i_reg[15]_48 ;
  wire \gpr1.dout_i_reg[15]_49 ;
  wire \gpr1.dout_i_reg[15]_5 ;
  wire \gpr1.dout_i_reg[15]_50 ;
  wire \gpr1.dout_i_reg[15]_51 ;
  wire \gpr1.dout_i_reg[15]_52 ;
  wire \gpr1.dout_i_reg[15]_53 ;
  wire \gpr1.dout_i_reg[15]_54 ;
  wire \gpr1.dout_i_reg[15]_55 ;
  wire \gpr1.dout_i_reg[15]_56 ;
  wire \gpr1.dout_i_reg[15]_57 ;
  wire \gpr1.dout_i_reg[15]_58 ;
  wire \gpr1.dout_i_reg[15]_59 ;
  wire \gpr1.dout_i_reg[15]_6 ;
  wire \gpr1.dout_i_reg[15]_60 ;
  wire \gpr1.dout_i_reg[15]_61 ;
  wire \gpr1.dout_i_reg[15]_62 ;
  wire \gpr1.dout_i_reg[15]_63 ;
  wire \gpr1.dout_i_reg[15]_64 ;
  wire \gpr1.dout_i_reg[15]_65 ;
  wire \gpr1.dout_i_reg[15]_7 ;
  wire \gpr1.dout_i_reg[15]_8 ;
  wire \gpr1.dout_i_reg[15]_9 ;
  wire [5:0]\gpr1.dout_i_reg[6] ;
  wire [5:0]\gpr1.dout_i_reg[9] ;
  wire \grstd1.grst_full.grst_f.rst_d3_reg ;
  wire \gwas.wsts_n_1 ;
  wire \gwas.wsts_n_2 ;
  wire \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_wr_rst_ic_reg ;
  wire out;
  wire [11:0]p_14_out;
  wire p_20_out;
  wire wr_clk;
  wire wr_en;
  wire [11:0]wr_pntr_plus2;

  fifo_generator_0_wr_status_flags_as \gwas.wsts 
       (.D(wr_pntr_plus2),
        .Q(Q[11]),
        .RD_PNTR_WR(RD_PNTR_WR),
        .full(full),
        .\gic0.gc0.count_d1_reg[11] (p_14_out),
        .\gpr1.dout_i_reg[15] (\gwas.wsts_n_2 ),
        .\grstd1.grst_full.grst_f.rst_d2_reg (out),
        .\grstd1.grst_full.grst_f.rst_d3_reg (\grstd1.grst_full.grst_f.rst_d3_reg ),
        .out(\gwas.wsts_n_1 ),
        .p_20_out(p_20_out),
        .wr_clk(wr_clk),
        .wr_en(wr_en));
  fifo_generator_0_wr_bin_cntr wpntr
       (.ADDRD(ADDRD),
        .D(wr_pntr_plus2),
        .Q(Q),
        .\gic0.gc0.count_d2_reg[11]_0 (p_14_out),
        .\gpr1.dout_i_reg[0] (\gpr1.dout_i_reg[0] ),
        .\gpr1.dout_i_reg[0]_0 (\gpr1.dout_i_reg[0]_0 ),
        .\gpr1.dout_i_reg[0]_1 (\gpr1.dout_i_reg[0]_1 ),
        .\gpr1.dout_i_reg[12] (\gpr1.dout_i_reg[12] ),
        .\gpr1.dout_i_reg[15] (\gpr1.dout_i_reg[15] ),
        .\gpr1.dout_i_reg[15]_0 (\gpr1.dout_i_reg[15]_0 ),
        .\gpr1.dout_i_reg[15]_1 (\gpr1.dout_i_reg[15]_1 ),
        .\gpr1.dout_i_reg[15]_10 (\gpr1.dout_i_reg[15]_10 ),
        .\gpr1.dout_i_reg[15]_11 (\gpr1.dout_i_reg[15]_11 ),
        .\gpr1.dout_i_reg[15]_12 (\gpr1.dout_i_reg[15]_12 ),
        .\gpr1.dout_i_reg[15]_13 (\gpr1.dout_i_reg[15]_13 ),
        .\gpr1.dout_i_reg[15]_14 (\gpr1.dout_i_reg[15]_14 ),
        .\gpr1.dout_i_reg[15]_15 (\gpr1.dout_i_reg[15]_15 ),
        .\gpr1.dout_i_reg[15]_16 (\gpr1.dout_i_reg[15]_16 ),
        .\gpr1.dout_i_reg[15]_17 (\gpr1.dout_i_reg[15]_17 ),
        .\gpr1.dout_i_reg[15]_18 (\gpr1.dout_i_reg[15]_18 ),
        .\gpr1.dout_i_reg[15]_19 (\gpr1.dout_i_reg[15]_19 ),
        .\gpr1.dout_i_reg[15]_2 (\gpr1.dout_i_reg[15]_2 ),
        .\gpr1.dout_i_reg[15]_20 (\gpr1.dout_i_reg[15]_20 ),
        .\gpr1.dout_i_reg[15]_21 (\gpr1.dout_i_reg[15]_21 ),
        .\gpr1.dout_i_reg[15]_22 (\gpr1.dout_i_reg[15]_22 ),
        .\gpr1.dout_i_reg[15]_23 (\gpr1.dout_i_reg[15]_23 ),
        .\gpr1.dout_i_reg[15]_24 (\gpr1.dout_i_reg[15]_24 ),
        .\gpr1.dout_i_reg[15]_25 (\gpr1.dout_i_reg[15]_25 ),
        .\gpr1.dout_i_reg[15]_26 (\gpr1.dout_i_reg[15]_26 ),
        .\gpr1.dout_i_reg[15]_27 (\gpr1.dout_i_reg[15]_27 ),
        .\gpr1.dout_i_reg[15]_28 (\gpr1.dout_i_reg[15]_28 ),
        .\gpr1.dout_i_reg[15]_29 (\gpr1.dout_i_reg[15]_29 ),
        .\gpr1.dout_i_reg[15]_3 (\gpr1.dout_i_reg[15]_3 ),
        .\gpr1.dout_i_reg[15]_30 (\gpr1.dout_i_reg[15]_30 ),
        .\gpr1.dout_i_reg[15]_31 (\gpr1.dout_i_reg[15]_31 ),
        .\gpr1.dout_i_reg[15]_32 (\gpr1.dout_i_reg[15]_32 ),
        .\gpr1.dout_i_reg[15]_33 (\gpr1.dout_i_reg[15]_33 ),
        .\gpr1.dout_i_reg[15]_34 (\gpr1.dout_i_reg[15]_34 ),
        .\gpr1.dout_i_reg[15]_35 (\gpr1.dout_i_reg[15]_35 ),
        .\gpr1.dout_i_reg[15]_36 (\gpr1.dout_i_reg[15]_36 ),
        .\gpr1.dout_i_reg[15]_37 (\gpr1.dout_i_reg[15]_37 ),
        .\gpr1.dout_i_reg[15]_38 (\gpr1.dout_i_reg[15]_38 ),
        .\gpr1.dout_i_reg[15]_39 (\gpr1.dout_i_reg[15]_39 ),
        .\gpr1.dout_i_reg[15]_4 (\gpr1.dout_i_reg[15]_4 ),
        .\gpr1.dout_i_reg[15]_40 (\gpr1.dout_i_reg[15]_40 ),
        .\gpr1.dout_i_reg[15]_41 (\gpr1.dout_i_reg[15]_41 ),
        .\gpr1.dout_i_reg[15]_42 (\gpr1.dout_i_reg[15]_42 ),
        .\gpr1.dout_i_reg[15]_43 (\gpr1.dout_i_reg[15]_43 ),
        .\gpr1.dout_i_reg[15]_44 (\gpr1.dout_i_reg[15]_44 ),
        .\gpr1.dout_i_reg[15]_45 (\gpr1.dout_i_reg[15]_45 ),
        .\gpr1.dout_i_reg[15]_46 (\gpr1.dout_i_reg[15]_46 ),
        .\gpr1.dout_i_reg[15]_47 (\gpr1.dout_i_reg[15]_47 ),
        .\gpr1.dout_i_reg[15]_48 (\gpr1.dout_i_reg[15]_48 ),
        .\gpr1.dout_i_reg[15]_49 (\gpr1.dout_i_reg[15]_49 ),
        .\gpr1.dout_i_reg[15]_5 (\gpr1.dout_i_reg[15]_5 ),
        .\gpr1.dout_i_reg[15]_50 (\gpr1.dout_i_reg[15]_50 ),
        .\gpr1.dout_i_reg[15]_51 (\gpr1.dout_i_reg[15]_51 ),
        .\gpr1.dout_i_reg[15]_52 (\gpr1.dout_i_reg[15]_52 ),
        .\gpr1.dout_i_reg[15]_53 (\gpr1.dout_i_reg[15]_53 ),
        .\gpr1.dout_i_reg[15]_54 (\gpr1.dout_i_reg[15]_54 ),
        .\gpr1.dout_i_reg[15]_55 (\gpr1.dout_i_reg[15]_55 ),
        .\gpr1.dout_i_reg[15]_56 (\gpr1.dout_i_reg[15]_56 ),
        .\gpr1.dout_i_reg[15]_57 (\gpr1.dout_i_reg[15]_57 ),
        .\gpr1.dout_i_reg[15]_58 (\gpr1.dout_i_reg[15]_58 ),
        .\gpr1.dout_i_reg[15]_59 (\gpr1.dout_i_reg[15]_59 ),
        .\gpr1.dout_i_reg[15]_6 (\gpr1.dout_i_reg[15]_6 ),
        .\gpr1.dout_i_reg[15]_60 (\gpr1.dout_i_reg[15]_60 ),
        .\gpr1.dout_i_reg[15]_61 (\gpr1.dout_i_reg[15]_61 ),
        .\gpr1.dout_i_reg[15]_62 (\gpr1.dout_i_reg[15]_62 ),
        .\gpr1.dout_i_reg[15]_63 (\gpr1.dout_i_reg[15]_63 ),
        .\gpr1.dout_i_reg[15]_64 (\gpr1.dout_i_reg[15]_64 ),
        .\gpr1.dout_i_reg[15]_65 (\gpr1.dout_i_reg[15]_65 ),
        .\gpr1.dout_i_reg[15]_7 (\gpr1.dout_i_reg[15]_7 ),
        .\gpr1.dout_i_reg[15]_8 (\gpr1.dout_i_reg[15]_8 ),
        .\gpr1.dout_i_reg[15]_9 (\gpr1.dout_i_reg[15]_9 ),
        .\gpr1.dout_i_reg[6] (\gpr1.dout_i_reg[6] ),
        .\gpr1.dout_i_reg[9] (\gpr1.dout_i_reg[9] ),
        .\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_wr_rst_ic_reg (\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_wr_rst_ic_reg ),
        .out(\gwas.wsts_n_1 ),
        .p_20_out(p_20_out),
        .ram_full_fb_i_reg(\gwas.wsts_n_2 ),
        .wr_clk(wr_clk),
        .wr_en(wr_en));
endmodule

module fifo_generator_0_wr_status_flags_as
   (full,
    out,
    \gpr1.dout_i_reg[15] ,
    p_20_out,
    wr_clk,
    \grstd1.grst_full.grst_f.rst_d2_reg ,
    wr_en,
    \grstd1.grst_full.grst_f.rst_d3_reg ,
    Q,
    RD_PNTR_WR,
    \gic0.gc0.count_d1_reg[11] ,
    D);
  output full;
  output out;
  output \gpr1.dout_i_reg[15] ;
  output p_20_out;
  input wr_clk;
  input \grstd1.grst_full.grst_f.rst_d2_reg ;
  input wr_en;
  input \grstd1.grst_full.grst_f.rst_d3_reg ;
  input [0:0]Q;
  input [11:0]RD_PNTR_WR;
  input [11:0]\gic0.gc0.count_d1_reg[11] ;
  input [11:0]D;

  wire \/i__n_0 ;
  wire [11:0]D;
  wire [0:0]Q;
  wire [11:0]RD_PNTR_WR;
  wire comp1;
  wire comp2;
  wire [11:0]\gic0.gc0.count_d1_reg[11] ;
  wire \gpr1.dout_i_reg[15] ;
  wire \grstd1.grst_full.grst_f.rst_d2_reg ;
  wire \grstd1.grst_full.grst_f.rst_d3_reg ;
  wire p_20_out;
  (* DONT_TOUCH *) wire ram_full_fb_i;
  (* DONT_TOUCH *) wire ram_full_i;
  wire wr_clk;
  wire wr_en;

  assign full = ram_full_i;
  assign out = ram_full_fb_i;
  LUT5 #(
    .INIT(32'h0000FF20)) 
    \/i_ 
       (.I0(comp2),
        .I1(ram_full_fb_i),
        .I2(wr_en),
        .I3(comp1),
        .I4(\grstd1.grst_full.grst_f.rst_d3_reg ),
        .O(\/i__n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    RAM_reg_64_127_0_2_i_2
       (.I0(ram_full_fb_i),
        .I1(wr_en),
        .I2(Q),
        .O(\gpr1.dout_i_reg[15] ));
  fifo_generator_0_compare c1
       (.RD_PNTR_WR(RD_PNTR_WR),
        .comp1(comp1),
        .\gic0.gc0.count_d1_reg[11] (\gic0.gc0.count_d1_reg[11] ));
  fifo_generator_0_compare_0 c2
       (.D(D),
        .RD_PNTR_WR(RD_PNTR_WR),
        .comp2(comp2));
  LUT2 #(
    .INIT(4'h2)) 
    \gic0.gc0.count_d1[11]_i_1 
       (.I0(wr_en),
        .I1(ram_full_fb_i),
        .O(p_20_out));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    ram_full_fb_i_reg
       (.C(wr_clk),
        .CE(1'b1),
        .D(\/i__n_0 ),
        .PRE(\grstd1.grst_full.grst_f.rst_d2_reg ),
        .Q(ram_full_fb_i));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    ram_full_i_reg
       (.C(wr_clk),
        .CE(1'b1),
        .D(\/i__n_0 ),
        .PRE(\grstd1.grst_full.grst_f.rst_d2_reg ),
        .Q(ram_full_i));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
