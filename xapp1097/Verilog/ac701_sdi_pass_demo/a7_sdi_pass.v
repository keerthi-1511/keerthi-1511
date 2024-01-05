// (c) Copyright 2011 - 2014 Xilinx, Inc. All rights reserved.
//
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
//
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
/*                           
Module Description:

This module is a wrapper around a set of modules and code that implement an SDI
pass-through interface where the SDI TX retransmits the data received by the SDI
RX. 

This version supports the latest version of the SDI wrapper which changes
the RX PLL divider through the DRP rather than using the GTP RXRATE port.
*/

`timescale 1ns / 1ps

module a7_sdi_pass #(
    parameter           USE_CHIPSCOPE = "TRUE")
(
    input   wire        clk,                // 27 MHz clock
    output  wire        tx_outclk,
    input   wire        tx_usrclk,
    input   wire        tx_refclk_stable,
    input   wire        tx_plllock,
    output  wire        tx_pllreset,
    input   wire        tx_gtp_full_reset,
    output  wire        tx_slew,
    output  wire [1:0]  tx_mode_out,
    input   wire        rx_refclk_stable,
    input   wire        rx_plllock,
    output  wire        rx_pllreset,
    input   wire        rx_gtp_full_reset,
    output  wire        rx_outclk,
    input   wire        rx_usrclk,
    output  wire        rx_recclk,
    output  wire [1:0]  rx_mode,
    output  wire        rx_locked,
    output  wire        rx_level_b,
    output  wire [3:0]  rx_t_family,
    output  wire [3:0]  rx_t_rate,
    output  wire        rx_t_scan,
    output  wire        rx_m,   
    input   wire        drpclk,
    output  wire        txp,                // GTP TXP output
    output  wire        txn,                // GTP TXN output
    input   wire        rxp,                // GTP RXP output
    input   wire        rxn,                // GTP RXN output
    input   wire        pll0clk,            // Connect to GTHE2_COMMON pll0outclk
    input   wire        pll0refclk,         // Connect to GTHE2_COMMON pll0outrefclk
    input   wire        pll1clk,            // Connect to GTHE2_COMMON pll1outclk
    input   wire        pll1refclk,         // Connect to GTHE2_COMMON pll1outrefclk
    inout   wire [35:0] control0,           // VIO module
    inout   wire [35:0] control1            // ILA module
);

//
// Internal signals
//

// TX signals
wire        tx_gttxreset;
wire        tx_resetdone;
wire        tx_ratedone;
wire        tx_userrdy;
wire [19:0] tx_txdata;
wire        tx_din_rdy;
reg  [1:0]  tx_mode = 2'b00;
wire [2:0]  tx_rate;
wire [9:0]  tx_ds1a;
wire [9:0]  tx_ds2a;
wire [9:0]  tx_ds1b;
wire [9:0]  tx_ds2b;
wire [41:0] fifo_dout;                          // SD FIFO output
reg  [1:0]  fifo_syn = 2'b00;                  // Synchronizer for SD FIFO half-full signal
wire        fifo_half_syn;                     // SD FIFO half-full signal synchronized to tx2_usrclk
wire        fifo_half_full;                    // SD FIFO half-full output, synchronized to rx2_usrclk
wire        fifo_empty;                        // SD FIFO empty
wire        fifo_full;                         // SD FIFO full
reg         fifo_rden = 1'b0;                  // SD FIFO read enable
reg         tx_fabric_reset = 1'b0;
wire        tx_M;
wire        tx_level_b;
wire [1:0]  tx_bufstatus;
reg  [2:0]  tx_mode_sync0 = 3'b0;
reg  [2:0]  tx_mode_sync1 = 3'b0;
reg  [1:0]  tx_M_sync = 2'b0;
wire        tx_change_done;
wire        tx_change_fail;
wire [2:0]  tx_change_fail_code;

(* equivalent_register_removal = "no" *)
(* KEEP = "TRUE" *)
reg [2:0]   tx_ce = 3'b111;                     // 3 copies of the TX clock enable

(* equivalent_register_removal = "no" *)
(* KEEP = "TRUE" *)
reg  [10:0] tx_gen_sd_ce = 11'b00000100001;     // Generates 5/6/5/6 cadence SD-SDI TX clock enable

wire        tx_ce_mux;                          // Used to generate the tx_ce signals

// RX signals
wire        rx_ce;
wire        rx_gtrxreset;
wire        rx_resetdone;
wire        rx_cdrhold;
wire [19:0] rx_rxdata;
wire        rx_userrdy;
wire [1:0]  rx_mode_i;
wire        rx_level_b_i;
wire [3:0]  rx_t_family_i;
wire [3:0]  rx_t_rate_i;
wire        rx_t_scan_i;
wire        rx_mode_locked;
wire        rx_clr_errs;
wire        rx_dout_rdy_3g;
wire [9:0]  rx_sd_rxdata;
wire        rx_sd_data_strobe;
wire        rx_m_i;
wire [10:0] rx_ln_a;
wire [31:0] rx_a_vpid;
wire        rx_a_vpid_valid;
wire        rx_crc_err_a;
wire        rx_crc_err_b;
reg         rx_hd_crc_err = 1'b0;
wire        rx_crc_err_ab;
reg  [1:0]  rx_crc_err_edge = 2'b00;
reg  [15:0] rx_crc_err_count = 0;
wire [15:0] rx_err_count;
wire        rx_err_count_tc;
reg         rx_sd_clr_errs = 1'b0;
wire [15:0] rx_edh_errcnt;
wire [9:0]  rx_ds1a;
wire [9:0]  rx_ds2a;
wire [9:0]  rx_ds1b;
wire [9:0]  rx_ds2b;
wire        rx_eav;
wire        rx_sav;
wire        rx_crc_err;
reg  [2:0]  rx_mode_unary = 3'b001;
wire        rx_change_done;
wire        rx_change_fail;
wire [2:0]  rx_change_fail_code;
wire        drprdy;
wire        drpbusy;
wire [8:0]  drpaddr;
wire [15:0] drpdi;
wire [15:0] drpdo;
wire        drpen;
wire        drpwe;

assign tx_mode_out = tx_mode;
assign rx_recclk = (rx_mode_i == 2'b01) ? rx_ce : rx_usrclk;

//
// CRC eror capture and counting logic
//
// The EDH processor in the SDI receiver has an error counter, but not a single
// signal indicating when the error counter is not 0. HD/3G CRC errors are indicated
// by a pulse on either the SDI core's rx_crc_err_a or rx_crc_err_b (in 3G-SDI
// level B mode only). This demo displays both an error count (both EDH and CRC)
// and a latched error received signal. Both can be manually cleared through
// ChipScope. So, the logic below implements an error counter for CRC errors and
// logic to put either the EDH or CRC error count on the signal rx_err_count and
// an error captured status on the signal rx_crc_err.
//
assign rx_crc_err_ab = rx_crc_err_a | (rx_mode_i == 2'b10 && rx_level_b_i && rx_crc_err_b);

always @ (posedge rx_usrclk)
    if (rx_clr_errs)
        rx_hd_crc_err <= 1'b0;
    else if (rx_crc_err_ab)
        rx_hd_crc_err <= 1'b1;

always @ (posedge rx_usrclk)
    rx_crc_err_edge <= {rx_crc_err_edge[0], rx_crc_err_ab};

always @ (posedge rx_usrclk)
    if (rx_clr_errs | ~rx_mode_locked)
        rx_crc_err_count <= 0;
    else if (rx_crc_err_edge[0] & ~rx_crc_err_edge[1] & ~rx_err_count_tc)
        rx_crc_err_count <= rx_crc_err_count + 1;

assign rx_err_count = rx_mode_i == 2'b01 ? rx_edh_errcnt : rx_crc_err_count;
assign rx_err_count_tc = rx_crc_err_count == 16'hffff;

always @ (posedge rx_usrclk)
    if (rx_clr_errs)
        rx_sd_clr_errs <= 1'b1;
    else if (rx_ce)
        rx_sd_clr_errs <= 1'b0;

assign rx_crc_err = rx_mode_i == 2'b01 ? rx_edh_errcnt != 0 : rx_hd_crc_err;

//------------------------------------------------------------------------------
// RX -> TX Interface Logic
//

// All RX->TX information must cross from the rx_usrclk domain to the tx_usrclk
// domain. The four 10-bit data streams plus the rx_level_b and rx_dout_rdy_3g
// signals all pass through a 16-deep async FIFO. The rx_mode and rx_m bitrate
// signals go through dual-rank synchronizers.
//
// The video FIFO moves the video streams, the level_b and the 3G level B data 
// ready signal from the rx_usrclk domain to the tx_usrclk domain. Passing the
// 3G level B data ready signal through the FIFO means that only every other
// entry in the FIFO contains valid data in 3G level B mode, but this is the
// easiest way to tag each entry in the FIFO as being valid or not valid in
// 3G level B mode.
//
// When the tx_usrclk is frequency locked to the rx_usrclk, the video FIFO should
// stay very close to the half full level.
//

video_fifo42 FIFO1 (
    .din        ({rx_dout_rdy_3g, rx_level_b_i, rx_ds2b, rx_ds1b, rx_ds2a, rx_ds1a}),
    .rd_clk     (tx_usrclk),
    .rd_en      (tx_ce[0] & fifo_rden),
    .rst        (1'b0),
    .wr_clk     (rx_usrclk),
    .wr_en      (rx_ce),
    .dout       (fifo_dout),
    .empty      (fifo_empty),
    .full       (fifo_full),
    .prog_full  (fifo_half_full));

//
// FIFO control logic
//
// The prog_full signal of FIFO comes from the write clock domain. So 
// synchronization of this signal into read clock domain is required to control 
// the FIFO read enable. On startup, and in the event that the FIFO becomes 
// empty, reads are disabled until the FIFO reaches the half full level.
// 
always @ (posedge tx_usrclk)
    fifo_syn <= {fifo_syn[0],fifo_half_full};
    
assign fifo_half_syn = fifo_syn[1];

always @ (posedge tx_usrclk)
    if (fifo_empty)
        fifo_rden <= 1'b0; 
    else 
        if (fifo_half_syn)
            fifo_rden <= 1'b1;

assign tx_ds1a = fifo_dout[9:0];
assign tx_ds2a = fifo_dout[19:10];
assign tx_ds1b = fifo_dout[29:20];
assign tx_ds2b = fifo_dout[39:30];
assign tx_level_b = fifo_dout[40];
assign tx_din_rdy = fifo_dout[41];

//
// The 2-bit rx_mode code is carefully moved from the rx_usrclk domain to the
// tx_usrclk domain. When, and only when, the rx_mode_locked signal is asserted,
// the 2-bit rx_mode code is converted to 3 unary bits, one bit for each SDI
// mode. These three unary bits are each dual-rank synchronized to the tx_usrclk.
// Then, in the tx_usrclk domain, the three unary bits are examined. If more than
// one is asserted, the code is considered to be invalid and nothing happens until
// only a single bit is asserted. When just a single unary bit is asserted in
// the tx_usrclk domain, a new 2-bit tx_mode signal is created to control the
// SDI mode of the SDI TX. 
//
always @ (posedge rx_usrclk)
    if (rx_mode_locked)
    begin
        if (rx_mode_i == 2'b00)
            rx_mode_unary <= 3'b001;
        else if (rx_mode_i == 2'b01)
            rx_mode_unary <= 3'b010;
        else if (rx_mode_i == 2'b10)
            rx_mode_unary <= 3'b100;
        else
            rx_mode_unary <= 3'b001;
    end
    else rx_mode_unary <= rx_mode_unary;

always @ (posedge tx_usrclk)
begin
    tx_mode_sync0 <= rx_mode_unary;
    tx_mode_sync1 <= tx_mode_sync0;
end

always @ (posedge tx_usrclk)
    if (tx_mode_sync1 == 3'b001)
        tx_mode <= 2'b00;
    else if (tx_mode_sync1 == 3'b010)
        tx_mode <= 2'b01;
    else if (tx_mode_sync1 == 3'b100)
        tx_mode <= 2'b10;
    else
        tx_mode <= tx_mode;

//
// The rx_m signal, which indicates the bit rate (either 1000/1000 or 1000/1001)
// of the incoming SDI signal, is synchronized to the tx_usrclk domain.
//
always @ (posedge tx_usrclk)
    tx_M_sync <= {tx_M_sync[0], rx_m_i};

assign tx_M = tx_M_sync[1];

//------------------------------------------------------------------------------
// TX logic
//

//
// Because of glitches on TXOUTCLK during changes to TXRATE and TXSYSCLKSEL, the
// SDI data path is reset when TXRESETDONE is low (taking care of TXSYSCLKSEL
// changes) and when TXRATEDONE is pulsed high (taking care of TXRATE changes).
//
always @ (posedge tx_usrclk)
    tx_fabric_reset <= tx_ratedone | ~tx_resetdone;

//
// TX clock enable generator
//
// sd_ce runs at 27 MHz and is asserted at a 5/6/5/6 cadence
// tx_ce is always 1 for 3G-SDI and HD-SDI and equal to sd_ce for SD-SDI. A
// shift register with the 5/6 cadence pattern simply rotates continuously to
// generate the SD-SDI clock enables.
//
// Make sure to reset the shift register to the required pattern after each change
// to TXRATE and TXSYSCLKSEL (use tx_fabric_reset) because those changes cause
// glitches on TXOUTCLK which will corrupt the pattern in the shift register.
//
// Create 3 identical but separate copies of the clock enable for loading purposes.
//
always @ (posedge tx_usrclk)
    if (tx_fabric_reset)
        tx_gen_sd_ce <= 11'b00000100001;
    else
        tx_gen_sd_ce <= {tx_gen_sd_ce[9:0], tx_gen_sd_ce[10]};

assign tx_ce_mux = tx_mode == 2'b01 ? tx_gen_sd_ce[10] : 1'b1;

always @ (posedge tx_usrclk)
    tx_ce <= {3 {tx_ce_mux}};

//------------------------------------------------------------------------------
// SDI core wrapper including GTP control module
//
a7gtp_sdi_rxtx_wrapper #(
    .FXDCLK_FREQ        (27000000),
    .DRPCLK_PERIOD      (37))
SDI (
    .clk                (clk),
    .rx_rst             (1'b0),
    .rx_mode_search_rst (1'b0),
    .rx_usrclk          (rx_usrclk),
    .rx_gtp_full_reset  (rx_gtp_full_reset),
    .rx_gtp_reset       (1'b0),
    .rx_fabric_reset_out(),
    .rx_refclk_stable   (rx_refclk_stable),
    .rx_frame_en        (1'b1),                 // Enable SDI framer
    .rx_mode_en         (3'b111),               // Enable all three SDI protocols
    .rx_mode            (rx_mode_i),
    .rx_mode_hd         (),
    .rx_mode_sd         (),
    .rx_mode_3g         (),
    .rx_mode_locked     (rx_mode_locked),
    .rx_bit_rate        (rx_m_i),
    .rx_t_locked        (),
    .rx_t_family        (rx_t_family_i),
    .rx_t_rate          (rx_t_rate_i),
    .rx_t_scan          (rx_t_scan_i),
    .rx_level_b_3g      (rx_level_b_i),
    .rx_ce_sd           (rx_ce),
    .rx_nsp             (),
    .rx_line_a          (rx_ln_a),
    .rx_a_vpid          (rx_a_vpid),
    .rx_a_vpid_valid    (rx_a_vpid_valid),
    .rx_b_vpid          (),
    .rx_b_vpid_valid    (),
    .rx_crc_err_a       (rx_crc_err_a),
    .rx_ds1a            (rx_ds1a),
    .rx_ds2a            (rx_ds2a),
    .rx_eav             (rx_eav),
    .rx_sav             (rx_sav),
    .rx_trs             (),
    .rx_line_b          (),
    .rx_dout_rdy_3g     (rx_dout_rdy_3g),
    .rx_crc_err_b       (rx_crc_err_b),
    .rx_ds1b            (rx_ds1b),
    .rx_ds2b            (rx_ds2b),
    .rx_edh_errcnt_en   (16'b0_00001_00001_00000),
    .rx_edh_clr_errcnt  (rx_sd_clr_errs),
    .rx_edh_ap          (),
    .rx_edh_ff          (),
    .rx_edh_anc         (),
    .rx_edh_ap_flags    (),
    .rx_edh_ff_flags    (),
    .rx_edh_anc_flags   (),
    .rx_edh_packet_flags(),
    .rx_edh_errcnt      (rx_edh_errcnt),
    .rx_change_done     (rx_change_done),
    .rx_change_fail     (rx_change_fail),
    .rx_change_fail_code(rx_change_fail_code),

    .tx_rst             (tx_fabric_reset),
    .tx_usrclk          (tx_usrclk),
    .tx_gtp_full_reset  (tx_gtp_full_reset),
    .tx_gtp_reset       (1'b0),
    .tx_refclk_stable   (tx_refclk_stable),
    .tx_ce              (tx_ce),
    .tx_din_rdy         (tx_din_rdy),
    .tx_mode            (tx_mode),
    .tx_m               (1'b0),
    .tx_level_b_3g      (tx_level_b),
    .tx_insert_crc      (1'b0),
    .tx_insert_ln       (1'b0),
    .tx_insert_edh      (1'b0),
    .tx_insert_vpid     (1'b0),
    .tx_overwrite_vpid  (1'b0),
    .tx_video_a_y_in    (tx_ds1a),
    .tx_video_a_c_in    (tx_ds2a),
    .tx_video_b_y_in    (tx_ds1b),
    .tx_video_b_c_in    (tx_ds2b),
    .tx_line_a          (11'b0),
    .tx_line_b          (11'b0),
    .tx_vpid_byte1      (8'b0),
    .tx_vpid_byte2      (8'b0),
    .tx_vpid_byte3      (8'b0),
    .tx_vpid_byte4a     (8'b0),
    .tx_vpid_byte4b     (8'b0),
    .tx_vpid_line_f1    (11'b0),
    .tx_vpid_line_f2    (11'b0),
    .tx_vpid_line_f2_en (1'b0),
    .tx_ds1a_out        (),
    .tx_ds2a_out        (),
    .tx_ds1b_out        (),
    .tx_ds2b_out        (),
    .tx_use_dsin        (1'b0),
    .tx_ds1a_in         (10'b0),
    .tx_ds2a_in         (10'b0),
    .tx_ds1b_in         (10'b0),
    .tx_ds2b_in         (10'b0),
    .tx_ce_align_err    (),
    .tx_slew            (tx_slew),
    .tx_change_done     (tx_change_done),
    .tx_change_fail     (tx_change_fail),
    .tx_change_fail_code(tx_change_fail_code),

    .gtp_rxdata         (rx_rxdata),
    .gtp_rxplllock      (rx_plllock),
    .gtp_rxresetdone    (rx_resetdone),
    .gtp_gtrxreset      (rx_gtrxreset),
    .gtp_rxpllreset     (rx_pllreset),
    .gtp_rxcdrhold      (rx_cdrhold),
    .gtp_drpclk         (drpclk),
    .gtp_drprdy         (drprdy),
    .gtp_drpbusy        (drpbusy),
    .gtp_drpaddr        (drpaddr),
    .gtp_drpdi          (drpdi),
    .gtp_drpdo          (drpdo),
    .gtp_drpen          (drpen),
    .gtp_drpwe          (drpwe),
    .gtp_rxuserrdy      (rx_userrdy),

    .gtp_txdata         (tx_txdata),
    .gtp_txplllock      (tx_plllock),
    .gtp_txresetdone    (tx_resetdone),
    .gtp_txratedone     (tx_ratedone),
    .gtp_txuserrdy      (tx_userrdy),
    .gtp_gttxreset      (tx_gttxreset),
    .gtp_txpllreset     (tx_pllreset),
    .gtp_txrate         (tx_rate),
    .gtp_txsysclksel    ());            // Dynamic switching of the GTP TX refclk source is not used in this demo

assign rx_mode = rx_mode_i;
assign rx_locked = rx_mode_locked;
assign rx_level_b = rx_level_b_i;
assign rx_t_family = rx_t_family_i;
assign rx_t_rate = rx_t_rate_i;
assign rx_t_scan = rx_t_scan_i;
assign rx_m = rx_m_i;

//------------------------------------------------------------------------------
// GTP transceiver
//
a7gtp_sdi_wrapper_GT #(
    .GT_SIM_GTRESET_SPEEDUP         ("FALSE"),
    .TXSYNC_OVRD_IN                 (1'b0),
    .TXSYNC_MULTILANE_IN            (1'b0))
GTP_i (
    .rst_in                         (rx_pllreset),
    .drp_busy_out                   (drpbusy),
    .drpaddr_in                     (drpaddr),
    .drpclk_in                      (clk),
    .drpdi_in                       (drpdi),
    .drpdo_out                      (drpdo),
    .drpen_in                       (drpen),
    .drprdy_out                     (drprdy),
    .drpwe_in                       (drpwe),
    .txsysclksel_in                 (2'b11),        // Always use PLL1 as TX clock source in this demo
    .pll0clk_in                     (pll0clk),
    .pll0refclk_in                  (pll0refclk),
    .pll1clk_in                     (pll1clk),
    .pll1refclk_in                  (pll1refclk),
    .loopback_in                    (3'b000),
    .rxrate_in                      (3'b000),
    .eyescanreset_in                (1'b0),
    .rxuserrdy_in                   (rx_userrdy),
    .eyescandataerror_out           (),
    .eyescantrigger_in              (1'b0),
    .rxcdrhold_in                   (rx_cdrhold),
    .rxcdrlock_out                  (),
    .rxdata_out                     (rx_rxdata),
    .rxusrclk_in                    (rx_usrclk),
    .rxusrclk2_in                   (rx_usrclk),
    .gtprxn_in                      (rxn),
    .gtprxp_in                      (rxp),
    .rxbufreset_in                  (1'b0),
    .rxbufstatus_out                (),
    .rxlpmhfhold_in                 (1'b0),
    .rxlpmlfhold_in                 (1'b0),
    .rxratedone_out                 (),
    .rxoutclk_out                   (rx_outclk),
    .gtrxreset_in                   (rx_gtrxreset),
    .rxresetdone_out                (rx_resetdone),
    .txpostcursor_in                (5'b00000),
    .txprecursor_in                 (5'b00000),
    .gttxreset_in                   (tx_gttxreset),
    .txuserrdy_in                   (tx_userrdy),
    .txdata_in                      (tx_txdata),
    .txusrclk_in                    (tx_usrclk),
    .txusrclk2_in                   (tx_usrclk),
    .txrate_in                      (tx_rate),
    .txbufstatus_out                (tx_bufstatus),
    .gtptxn_out                     (txn),
    .gtptxp_out                     (txp),
    .txdiffctrl_in                  (4'b1000),
    .txoutclk_out                   (tx_outclk),
    .txoutclkfabric_out             (),
    .txoutclkpcs_out                (),
    .txratedone_out                 (tx_ratedone),
    .txpcsreset_in                  (tx_bufstatus[1]),
    .txpmareset_in                  (1'b0),
    .txresetdone_out                (tx_resetdone)
);

//------------------------------------------------------------------------------
// ChipScope or Vivado Analyzer modules

generate 
if (USE_CHIPSCOPE == "TRUE")
begin : chipscope

    wire [7:0]  rx_vio_sync_out;
    wire [80:0] rx_vio_async_in;
    wire [55:0] rx_trig0;

    rx_vio rx_vio (
        .CONTROL    (control0),
        .CLK        (rx_usrclk),
        .SYNC_OUT   (rx_vio_sync_out),
        .ASYNC_IN   (rx_vio_async_in)
    );

    assign rx_clr_errs = rx_vio_sync_out[0];

    wire [7:0]  txasync;

    assign txasync = {tx_change_fail_code, tx_change_fail, tx_change_done, tx_refclk_stable, tx_plllock, tx_pllreset};

    assign rx_vio_async_in = {txasync, rx_change_fail_code, rx_change_fail,
                              3'b000, rx_cdrhold, rx_t_scan_i, rx_t_rate_i, rx_err_count,
                              rx_change_done, rx_crc_err, rx_a_vpid_valid, rx_a_vpid[7:0], 
                              rx_a_vpid[15:8], rx_a_vpid[23:16], rx_a_vpid[31:24], rx_m_i, 
                              rx_level_b_i, rx_t_family_i, rx_mode_locked, rx_mode_i};

    ila rx_ila (
        .CONTROL    (control1),
        .CLK        (rx_usrclk),
        .TRIG0      (rx_trig0));

    assign rx_trig0 = {rx_sav, rx_eav, rx_ds2b, rx_ds1b, rx_ds2a, rx_ds1a, rx_ln_a, rx_crc_err_ab, rx_dout_rdy_3g, rx_ce};

end else
begin : vivado_anaylzer

tx_vio tx_vio (
    .clk        (tx_usrclk),
    .probe_in0  (tx_change_fail),           // 1 bit
    .probe_in1  (tx_change_done),           // 1 bit
    .probe_in2  (tx_resetdone),             // 1 bit
    .probe_in3  (tx_plllock),               // 1 bit
    .probe_in4  (tx_change_fail_code)       // 3 bit
);

wire [31:0] rx_vpid;
assign rx_vpid = {rx_a_vpid[7:0], rx_a_vpid[15:8], rx_a_vpid[23:16], rx_a_vpid[31:24]};

rx_vio rx_vio (
    .clk        (rx_usrclk),
    .probe_in0  (rx_mode_i),                // 2 bit
    .probe_in1  (rx_mode_locked),           // 1 bit
    .probe_in2  (rx_t_family_i),            // 4 bit
    .probe_in3  (rx_level_b_i),             // 1 bit
    .probe_in4  (rx_m_i),                   // 1 bit
    .probe_in5  (rx_vpid),                  // 32 bit          
    .probe_in6  (rx_a_vpid_valid),          // 1 bit
    .probe_in7  (rx_crc_err),               // 1 bit
    .probe_in8  (rx_err_count),             // 16 bit
    .probe_in9  (rx_t_rate_i),              // 4 bit
    .probe_in10 (rx_t_scan_i),              // 1 bit
    .probe_in11 (rx_cdrhold),               // 1 bit
    .probe_in12 (rx_resetdone),             // 1 bit
    .probe_in13 (rx_plllock),               // 1 bit
    .probe_in14 (rx_change_done),           // 1 bit
    .probe_in15 (rx_change_fail),           // 1 bit
    .probe_in16 (rx_change_fail_code),      // 3 bit
    .probe_out0 (rx_clr_errs)               // 1 bit
);

rx_ila rx_ila (
    .clk        (rx_usrclk),
    .probe0     (rx_ce),                    // 1 bit
    .probe1     (rx_dout_rdy_3g),           // 1 bit
    .probe2     (rx_crc_err_ab),            // 1 bit
    .probe3     (rx_ln_a),                  // 11 bit
    .probe4     (rx_ds1a),                  // 10 bit
    .probe5     (rx_ds2a),                  // 10 bit
    .probe6     (rx_ds1b),                  // 10 bit
    .probe7     (rx_ds2b),                  // 10 bit
    .probe8     (rx_eav),                   // 1 bit
    .probe9     (rx_sav));                  // 1 bit

end
endgenerate
endmodule
