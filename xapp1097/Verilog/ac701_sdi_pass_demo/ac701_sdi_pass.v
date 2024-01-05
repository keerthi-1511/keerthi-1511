// (c) Copyright 2011 - 2013 Xilinx, Inc. All rights reserved.
//
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
//
//------------------------------------------------------------------------------
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: $Revision: $
//  \   \         
//  /   /         Filename: $File: $
// /___/   /\     Timestamp: $DateTime: $
// \   \  /  \
//  \___\/\___\
//
// Description:
//  This is a single channel SDI pass-through demo for the AC701 board and 
//  inrevium SDI FMC mezzanine board.
//
//  This version includes a short delay before asserting rx_refclk_stable and
//  tx_refclk_stable for reliable startup of the GTP after FPGA configuration.
//
//------------------------------------------------------------------------------
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
//
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
//
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
//------------------------------------------------------------------------------

`timescale 1ns / 1ps

module ac701_sdi_pass (
// MGTs
    output  wire        FMC1_HPC_DP0_C2M_N,         // Output to CH0-TX SDI channel on FMC mezzanine
    output  wire        FMC1_HPC_DP0_C2M_P,
    input   wire        FMC1_HPC_DP0_M2C_N,         // Input from CH0-RX SDI channel on FMC mezzanine
    input   wire        FMC1_HPC_DP0_M2C_P,

// MGT REFCLKs
    input   wire        SFP_MGT_CLK0_C_N,           // Si5324 reference clock to GTP TX
    input   wire        SFP_MGT_CLK0_C_P,    
    input   wire        SFP_MGT_CLK1_C_N,           // 148.5 MHz from XO on FMC board
    input   wire        SFP_MGT_CLK1_C_P,           //     reference clock to GTP RX
    
    
  //  output  wire        SFP_MGT_CLK_SEL0,           // SFP_MGT_CLK0 clock mux select
 //   output  wire        SFP_MGT_CLK_SEL1,
  //  output  wire        PCIE_MGT_CLK_SEL0,          // SFP_MGT_CLK1 clock mux select
  //  output  wire        PCIE_MGT_CLK_SEL1,
    
// TED SDI FMC mezzanine board connections
`ifdef LMH0387_INCLUDE
    output  wire        FMC1_HPC_LA01_CC_P,         // LMH0387 TX0 SPI SS
    output  wire        FMC1_HPC_LA01_CC_N,         // LMH0387 RX0 SPI SS
    output  wire        FMC1_HPC_LA05_P,            // LMH0387 TX1 SPI SS
    output  wire        FMC1_HPC_LA05_N,            // LMH0387 RX1 SPI SS
    output  wire        FMC1_HPC_LA09_P,            // LMH0387 RX/TX2 SPI SS
    output  wire        FMC1_HPC_LA09_N,            // LMH0387 RX/TX3 SPI SS
    output  wire        FMC1_HPC_LA13_P,            // LMH0387 SPI MOSI
    input   wire        FMC1_HPC_LA13_N,            // LMH0387 SPI MISO
    output  wire        FMC1_HPC_LA17_CC_P,         // LMH0387 SPI SCLK
`endif
  //  output  wire        FMC1_HPC_LA06_P,            // LMH0387 TX0 slew rate
  //  output  wire        FMC1_HPC_LA06_N,            // drive low
 //   output  wire        FMC1_HPC_LA10_P,            // LMH0387 TX1 slew rate
 //   output  wire        FMC1_HPC_LA10_N,            // drive low
 //   output  wire        FMC1_HPC_LA14_P,            // LMH0387 TX2 slew rate
 //   output  wire        FMC1_HPC_LA14_N,            // LMH0387 TX3 slew rate
  //  output  wire        FMC1_HPC_LA18_CC_P,         // LMH0387 TX2 TX_EN
  //  output  wire        FMC1_HPC_LA18_CC_N,         // LMH0387 TX3 TX_EN

  //  output  wire        FMC1_HPC_LA11_P,            // Clock crossbar select S10
  //  output  wire        FMC1_HPC_LA11_N,            // Clock crossbar select S11
  //  output  wire        FMC1_HPC_LA15_P,            // Clock crossbar select S20
  //  output  wire        FMC1_HPC_LA15_N,            // Clock crossbar select S21

    input   wire        FMC1_HPC_CLK0_M2C_P,        // LMH1983 27 MHz clock
    input   wire        FMC1_HPC_CLK0_M2C_N
//    output  wire        FMC1_HPC_LA12_N,            // LMH1983 INIT
//    output  wire        FMC1_HPC_LA16_N,            // LMH1983 Hin
//    output  wire        FMC1_HPC_LA16_P,            // LMH1983 Vin
//    output  wire        FMC1_HPC_LA20_P,            // LMH1983 Fin
`ifdef SI5234
                                          ,
    output  wire        SI5324_RST_LS_B,            // Si5324 reset
    inout   wire        IIC_SDA_MAIN,               // I2C mux SDA
    inout   wire        IIC_SCL_MAIN,               // I2C mux SCL
    output  wire        IIC_MUX_RESET_B,            // I2C mux reset asserted low
    output  wire        REC_CLOCK_C_P,              // reference clock to Si5324
    output  wire        REC_CLOCK_C_N
    `endif
    
 `ifdef LCD_CONTROLLER
    ,              

// Other AC701 board connections
    output  wire        USER_SMA_GPIO_P,
    output  wire        LCD_DB4_LS,
    output  wire        LCD_DB5_LS,
    output  wire        LCD_DB6_LS,
    output  wire        LCD_DB7_LS,
    output  wire        LCD_E_LS,
    output  wire        LCD_RW_LS,
    output  wire        LCD_RS_LS,
    input   wire        GPIO_SW_C,
    input   wire        GPIO_SW_W,
    input   wire        GPIO_SW_E,
    input   wire        GPIO_SW_N,
    input   wire        GPIO_SW_S
    `endif
);

//
// This local parameter sets the width of delay counters used to keep the GTP 
// PLL reset signals asserted for a period of time after FPGA configuration
// and, the case of the PLL1, after the Si5324's LOL signal is negated. This
// delay allows the clock sources to stabilize before finishing reset of the
// GTP PLLs.
//
localparam PLLRST_DLY_MSB = 15;

//
// Set this parameter to "TRUE" if ChipScope is to be used to monitor this demo.
// Set this parameter to "FALSE" if Vivado analzyer is to be used to monitor
// this demo.
//
parameter USE_CHIPSCOPE = "TRUE";

//------------------------------------------------------------------------------
// Internal signals definitions

wire        clk_27M_in;
wire        clk_27M;
wire        mgtclk_148_5;
wire        mgtclk_tx;
reg  [PLLRST_DLY_MSB:0]  Si5324_stable_dly = 0;
wire        Si5324_stable;
reg  [3:0]  Si5324_out_fsel = 4'b0000;
reg  [4:0]  Si5324_in_fsel = 5'b00000;
reg  [3:0]  Si5324_bw_sel = 4'd0000;  
wire        Si5324_LOL;
wire        pll0lock;
wire        pll0reset;
wire        pll0clk;
wire        pll0refclk;
wire        pll1lock;
wire        pll1reset;
wire        pll1clk;
wire        pll1refclk;

// TX1 signals
wire        tx1_outclk;
wire        tx1_usrclk;
wire        tx1_slew;
wire        tx1_full_reset;
reg  [1:0]  tx1_mode_sync1 = 2'b00;
reg  [1:0]  tx1_mode_sync2 = 2'b00;
wire [1:0]  tx1_mode;

// RX1 signals
wire        rx1_outclk;
wire        rx1_usrclk;
wire        rx1_recclk_out;
wire        rx1_full_reset;
wire [1:0]  rx1_mode;
wire        rx1_locked;
wire        rx1_level_b;
wire [3:0]  rx1_t_family;
wire [3:0]  rx1_t_rate;
wire        rx1_t_scan;
wire        rx1_m;
wire [3:0]  lcd_d;
reg  [1:0]  rx1_m_sync = 2'b00;

reg  [24:0] refclk_stable_dly = 1;
wire        refclk_stable_tc;
reg         refclk_stable = 1'b0;

// ChipScope signals
wire [35:0] control0;
wire [35:0] control1;
wire [35:0] control2;


//------------------------------------------------------------------------------
// Clock inputs and outputs
//
//assign FMC1_HPC_LA16_N = 1'b1;           // LMH1983 Hin
//assign FMC1_HPC_LA16_P = 1'b1;           // LMH1983 Vin
//assign FMC1_HPC_LA20_P = 1'b1;           // LMH1983 Fin
//assign FMC1_HPC_LA12_N = 1'b0;           // LMH1983 INIT

//assign SFP_MGT_CLK_SEL0 = 1'b1;         // Select Si5324 OUT0 as SFP_MGT_CLK0
//assign SFP_MGT_CLK_SEL1 = 1'b0;

//assign PCIE_MGT_CLK_SEL0 = 1'b0;        // Select 148.5 MHz XO from FMC as SFP_MGT_CLK1
//assign PCIE_MGT_CLK_SEL1 = 1'b1;

// 27MHz clock from FMC board used for timing and I2C & SPI interface clocking
IBUFDS #(
    .DIFF_TERM  ("TRUE"),
    .IOSTANDARD ("LVDS_25"))
IBUFDS27M (
    .I          (FMC1_HPC_CLK0_M2C_P),
    .IB         (FMC1_HPC_CLK0_M2C_N),
    .O          (clk_27M_in));

BUFG BUFG27M (
    .I          (clk_27M_in),
    .O          (clk_27M));

//
// With the clock crossbar on the Inrevium SDI mezzanine board, select the 148.5 MHz
// XO as the clock source to FMC1_HPC_GBTCLK1_M2C reference clock input.
//
//assign FMC1_HPC_LA11_P = 1'b1;
//assign FMC1_HPC_LA11_N = 1'b0;
//assign FMC1_HPC_LA15_P = 1'b1;
//assign FMC1_HPC_LA15_N = 1'b0;

// 148.5 MHz MGT reference clock for RX
(* LOC = "IBUFDS_GTE2_X0Y1" *)
IBUFDS_GTE2 MGTCLKIN1 (
    .I          (SFP_MGT_CLK1_C_P),
    .IB         (SFP_MGT_CLK1_C_N),
    .CEB        (1'b0),
    .O          (mgtclk_148_5),
    .ODIV2      ());

// MGT TX reference clock
(* LOC = "IBUFDS_GTE2_X0Y0" *)
IBUFDS_GTE2 MGTCLKIN0 (
    .I          (SFP_MGT_CLK0_C_P),
    .IB         (SFP_MGT_CLK0_C_N),
    .CEB        (1'b0),
    .O          (mgtclk_tx),
    .ODIV2      ());
    
`ifdef SI5324
OBUFDS # (
    .IOSTANDARD ("LVDS_25"))
SI5324_REFCLK (
    .I          (rx1_recclk_out),
    .O          (REC_CLOCK_C_P),
    .OB         (REC_CLOCK_C_N));
`endif

BUFG BUFGRX1 (
    .I          (rx1_outclk),
    .O          (rx1_usrclk));

BUFG BUFGTX1 (
    .I          (tx1_outclk),
    .O          (tx1_usrclk));

//assign USER_SMA_GPIO_P = rx1_recclk_out;

//------------------------------------------------------------------------------
// GTP PLL reset logic
//
// The following section of code resets the PLLs of the GTP Quad used to 
// implement the SDI RX and TX. Both PLLs are used. PLL0 provides the clock for 
// the SDI RX. PLL1 provides the clock for the SDI TX.
//
// The reference clock for PLL0 comes from an XO FMC mezzanine board. This clock
// source is stable, so PLL0 just needs to be reset once after FPGA 
// configuration. This reset is handled automatically by the GTP initialization
// logic in the GTP wrapper.
//
// The reference clock for PLL1 comes from a Si5324 DPLL. PLL0 must be reset
// whenever the Si5324 changes frequences or loses lock. The rx_refclk_stable
// input to the SDI GTP control logic must be negated until after the Si5324
// regains lock.
//
always @ (posedge clk_27M or posedge Si5324_LOL)
    if (Si5324_LOL)
        Si5324_stable_dly <= 0;
    else if (~Si5324_stable)
        Si5324_stable_dly <= Si5324_stable_dly + 1;

assign Si5324_stable = Si5324_stable_dly[PLLRST_DLY_MSB];

//
// Generate approximately 1.25 second delay after FPGA configuration before
// releasing the refclk_stable signal in order to make sure reference clocks
// are stable.
//
always @ (posedge clk_27M)
    if (!refclk_stable)
        refclk_stable_dly <= refclk_stable_dly + 1;

assign refclk_stable_tc = &refclk_stable_dly;

always @ (posedge clk_27M)
    if (refclk_stable_tc)
        refclk_stable <= 1'b1;


//------------------------------------------------------------------------------
// SDI RX/TX pass-through module
//
a7_sdi_pass #(
    .USE_CHIPSCOPE      (USE_CHIPSCOPE))
SDI1 (
    .clk                (clk_27M),
    .tx_outclk          (tx1_outclk),
    .tx_usrclk          (tx1_usrclk),
    .tx_refclk_stable   (Si5324_stable & refclk_stable),
    .tx_plllock         (pll1lock),
    .tx_pllreset        (pll1reset),
    .tx_gtp_full_reset  (Si5324_LOL | tx1_full_reset),
    .tx_slew            (tx1_slew),
    .tx_mode_out        (tx1_mode),
    .rx_refclk_stable   (refclk_stable),
    .rx_plllock         (pll0lock),
    .rx_pllreset        (pll0reset),
    .rx_gtp_full_reset  (rx1_full_reset),
    .rx_outclk          (rx1_outclk),
    .rx_usrclk          (rx1_usrclk),
    .rx_recclk          (rx1_recclk_out),
    .rx_mode            (rx1_mode),
    .rx_locked          (rx1_locked),
    .rx_level_b         (rx1_level_b),
    .rx_t_family        (rx1_t_family),
    .rx_t_rate          (rx1_t_rate),
    .rx_t_scan          (rx1_t_scan),
    .rx_m               (rx1_m),
    .drpclk             (clk_27M),
    .txp                (FMC1_HPC_DP0_C2M_P),
    .txn                (FMC1_HPC_DP0_C2M_N),
    .rxp                (FMC1_HPC_DP0_M2C_P),
    .rxn                (FMC1_HPC_DP0_M2C_N),
    .pll0clk            (pll0clk),
    .pll0refclk         (pll0refclk),
    .pll1clk            (pll1clk),
    .pll1refclk         (pll1refclk),
    .control0           (control1),
    .control1           (control2));

a7gtp_sdi_wrapper_common #(
    .WRAPPER_SIM_GTRESET_SPEEDUP    ("FALSE"))
gtpe2_common_0 (
    .GTGREFCLK0_IN                  (1'b0),
    .GTGREFCLK1_IN                  (1'b0),
    .GTEASTREFCLK0_IN               (1'b0),
    .GTEASTREFCLK1_IN               (1'b0),
    .GTREFCLK0_IN                   (mgtclk_tx),
    .GTREFCLK1_IN                   (mgtclk_148_5),
    .GTWESTREFCLK0_IN               (1'b0),
    .GTWESTREFCLK1_IN               (1'b0),
    .PLL0OUTCLK_OUT                 (pll0clk),
    .PLL0OUTREFCLK_OUT              (pll0refclk),
    .PLL0LOCK_OUT                   (pll0lock),
    .PLL0LOCKDETCLK_IN              (clk_27M),
    .PLL0REFCLKLOST_OUT             (),
    .PLL0RESET_IN                   (pll0reset),
    .PLL1OUTCLK_OUT                 (pll1clk),
    .PLL1OUTREFCLK_OUT              (pll1refclk),
    .PLL1LOCK_OUT                   (pll1lock),
    .PLL1LOCKDETCLK_IN              (clk_27M),
    .PLL1REFCLKLOST_OUT             (),
    .PLL1RESET_IN                   (pll1reset),
    .PLL0REFCLKSEL_IN               (3'b010),
    .PLL1REFCLKSEL_IN               (3'b001));

//
// Control for the slew rate and TX_EN signals of the SDI cable drivers
//

//assign FMC1_HPC_LA06_P = tx1_slew;
//assign FMC1_HPC_LA10_P = 1'b0;
//assign FMC1_HPC_LA14_P = 1'b0;
//assign FMC1_HPC_LA14_N = 1'b0;

//assign FMC1_HPC_LA18_CC_P = 1'b0;
//assign FMC1_HPC_LA18_CC_N = 1'b0;
//assign FMC1_HPC_LA10_N = 1'b0;
//assign FMC1_HPC_LA06_N = 1'b0;

`ifdef LCD_CONTROLLER
//------------------------------------------------------------------------------
// LCD control module
//
lcd_control5 #(
    .ROM_FILE_NAME          ("a7_sdi_demo_name.txt"),
    .MIN_FMC_FPGA_REVISION  (8'd0),
    .REQUIRED_CML_TYPE      (16'h0000), // None
    .REQUIRED_CMH_TYPE      (16'h0000)) // None
LCD (
    .clk                (clk_27M),
    .rst                (1'b0),
    .sw_c               (GPIO_SW_C),
    .sw_w               (GPIO_SW_W),
    .sw_e               (GPIO_SW_E),
    .sw_n               (GPIO_SW_N),
    .sw_s               (GPIO_SW_S),
    .fpga_rev           (8'b0),
    .cml_type           (16'h0000),
    .cml_type_valid     (1'b0),
    .cml_type_error     (1'b0),
    .cmh_type           (16'h0000),
    .cmh_type_valid     (1'b0),
    .cmh_type_error     (1'b0),
    .active_rx          (4'b0001),
    .rx0_locked         (rx1_locked),
    .rx0_mode           (rx1_mode),
    .rx0_level          (rx1_level_b),
    .rx0_t_family       (rx1_t_family),
    .rx0_t_rate         (rx1_t_rate),
    .rx0_t_scan         (rx1_t_scan),
    .rx0_m              (rx1_m),
    .rx1_locked         (1'b0),
    .rx1_mode           (2'b0),
    .rx1_level          (1'b0),
    .rx1_t_family       (4'b0),
    .rx1_t_rate         (4'b0),
    .rx1_t_scan         (1'b0),
    .rx1_m              (1'b0),
    .rx2_locked         (1'b0),
    .rx2_mode           (2'b0),
    .rx2_level          (1'b0),
    .rx2_t_family       (4'b0),
    .rx2_t_rate         (4'b0),
    .rx2_t_scan         (1'b0),
    .rx2_m              (1'b0),
    .rx3_locked         (1'b0),
    .rx3_mode           (2'b0),
    .rx3_level          (1'b0),
    .rx3_t_family       (4'b0),
    .rx3_t_rate         (4'b0),
    .rx3_t_scan         (1'b0),
    .rx3_m              (1'b0),
    .sync_active        (1'b0),
    .sync_enable        (1'b0),
    .sync_v             (1'b0),
    .sync_err           (1'b0),
    .sync_m             (1'b0),
    .sync_frame_rate    (3'b0),
    .sync_video_fmt     (11'b0),
    .lcd_e              (LCD_E_LS),
    .lcd_rw             (LCD_RW_LS),
    .lcd_rs             (LCD_RS_LS),
    .lcd_d              (lcd_d));


assign LCD_DB4_LS = lcd_d[0];
assign LCD_DB5_LS = lcd_d[1];
assign LCD_DB6_LS = lcd_d[2];
assign LCD_DB7_LS = lcd_d[3];
`endif
//------------------------------------------------------------------------------
// LMH0387 control module
//
`ifdef LMH0387_INCLUDE
LMH0387_control LMH0387ctrl (
    .clk        (clk_27M),
    .rst        (1'b0),
    .sclk       (FMC1_HPC_LA17_CC_P),
    .mosi       (FMC1_HPC_LA13_P),
    .miso       (FMC1_HPC_LA13_N),
    .ss0t       (FMC1_HPC_LA01_CC_P),
    .ss0r       (FMC1_HPC_LA01_CC_N),
    .ss1t       (FMC1_HPC_LA05_P),
    .ss1r       (FMC1_HPC_LA05_N),
    .ss2        (FMC1_HPC_LA09_P),
    .ss3        (FMC1_HPC_LA09_N),
    .rxeq_en    (4'b0001));

//assign FMC1_HPC_LA12_N = 1'b0;
`endif
//------------------------------------------------------------------------------
// Si5324 control 
//
// The Si5324 on the AC701 provides the GTP TX reference clock. It generates
// either 148.5 MHz or 148.35 MHz from the RXOUTCLK in HD and 3G-SDI modes or
// the 27 MHz SDI clock enable in SD-SDI mode. The Si5324 filters jitter from
// the clock and multiplies it, as necessary, to produce a clean TX reference
// clock.
//

//
// Reset the I2C mux on power up so that the Si5324 control module can select
// the Si5324 through the mux.
//

`ifdef SI5234
reg i2c_mux_reset_ff = 1'b0;

always @ (posedge clk_27M)
    i2c_mux_reset_ff <= 1'b1;

assign IIC_MUX_RESET_B = i2c_mux_reset_ff;

xc7_Si5324_control #(
    .IIC_BUS_SELECT     (8'h80))
Si5324CTRL (
    .clk                (clk_27M),
    .rst                (1'b0),
    .Si5324_out_fsel    (Si5324_out_fsel),
    .Si5324_in_fsel     (Si5324_in_fsel),
    .Si5324_bw_sel      (Si5324_bw_sel),
    .Si5324_DHOLD       (1'b0),
    .Si5324_reset       (1'b0),
    .Si5324_LOL         (Si5324_LOL),
    .Si5324_scl         (IIC_SCL_MAIN),
    .Si5324_sda         (IIC_SDA_MAIN),
    .Si5324_rst_b       (SI5324_RST_LS_B));

// 
// Synchronize TX mode & rate signal from rx1_usrclk to clk_27M for use in
// setting the frequency synthesis mode of the Si5324.
//
always @ (posedge clk_27M)
begin
    tx1_mode_sync1 <= rx1_mode;
    tx1_mode_sync2 <= tx1_mode_sync1;
    rx1_m_sync <= {rx1_m_sync[0], rx1_m};
end

//
// The Si5324 must run at 148.5 MHz in SD-SDI mode. In HD and 3G modes, rx1_m
// determines the frequency. 
//
always @ (posedge clk_27M)
    if (tx1_mode_sync2 == 2'b01)
        Si5324_out_fsel <= 4'b0011;           // Generate 148.5 MHz in SD mode
    else if (rx1_m_sync[1])
        Si5324_out_fsel <= 4'b0100;           // Generate 148.35 MHz
    else
        Si5324_out_fsel <= 4'b0011;           // Generate 148.5 MHz

//
// The Si5324 input frequency is 27 MHz in SD mode, 74.25 or 74.1758 MHz in 
// HD mode (selected by rx1_m), and 148.5 MHz or 148.35 MHz in 3G mode (again
// selected by rx1_m).
//
always @ (posedge clk_27M)
    if (tx1_mode_sync2 == 2'b01)
        Si5324_in_fsel <= 5'h17;
    else if (tx1_mode_sync2 == 2'b00)
        Si5324_in_fsel <= rx1_m_sync[1] ? 5'h19 : 5'h18;
    else
        Si5324_in_fsel <= rx1_m_sync[1] ? 5'h1b : 5'h1a;

//
// The Si5324 bandwidth is set to about 6 Hz in SD-SDI mode to provide very
// clean filtering of the erratic 27 MHz RX clock enable as it is converted to
// a 148.5 MHz reference clock for the TX. In HD and 3G modes, the bandwidth
// is set to about 500 Hz in order to provide for quick lock times.
//
always @ (posedge clk_27M)
    if (tx1_mode_sync2 == 2'b01)
        Si5324_bw_sel <= 4'd10;
    else
        Si5324_bw_sel <= 4'd4;
`endif
//------------------------------------------------------------------------------
// ChipScope or Vivado analyzer modules
//
generate 
if (USE_CHIPSCOPE == "TRUE")
begin : chipscope
    icon i_icon (
        .CONTROL0   (control0),
        .CONTROL1   (control1),
        .CONTROL2   (control2)
    );

    wire [1:0]  sync_out;

    vio i_vio (
        .CONTROL    (control0),
        .CLK        (clk_27M),
        .SYNC_OUT   (sync_out),
        .ASYNC_IN   ({1'b0,1'b0, tx1_mode, pll1reset, pll0lock, pll1lock, Si5324_LOL})
    );

    assign rx1_full_reset = sync_out[0];
    assign tx1_full_reset = sync_out[1];


end else
begin : vivado_analyzer
vio0 i_vio0 (
    .clk        (clk_27M),
    .probe_in0  (Si5324_LOL),       // 1 bit
    .probe_in1  (pll0lock),         // 1 bit
    .probe_in2  (pll1lock),         // 1 bit
    .probe_in3  (pll1reset),        // 1 bit
    .probe_in4  (tx1_mode),         // 2 bit
    .probe_out0 (rx1_full_reset),   // 1 bit
    .probe_out1 (tx1_full_reset)    // 1 bit
);

    assign control1 = 35'b0;
    assign control2 = 35'b0;
end
endgenerate

endmodule

    
