## main clock 50 MHz
#set_property IOSTANDARD LVDS_25 [get_ports main_clk_p]

#set_property IOSTANDARD LVDS_25 [get_ports main_clk_n]
#set_property PACKAGE_PIN K4 [get_ports main_clk_p]
#set_property PACKAGE_PIN J4 [get_ports main_clk_n]

##LENS RS422
#set_property IOSTANDARD LVCMOS33 [get_ports lens_rx]
#set_property PACKAGE_PIN N5 [get_ports lens_rx]


#set_property DRIVE 4 [get_ports lens_tx]
#set_property PULLUP true [get_ports lens_tx]

#set_property IOSTANDARD LVCMOS33 [get_ports lens_tx]
#set_property PACKAGE_PIN P6 [get_ports lens_tx]

#########################################

##### Camlink Receiver #####

#set_property IOSTANDARD LVCMOS33 [get_ports {cmosdata[0]}]
#set_property PACKAGE_PIN M1 [get_ports {cmosdata[0]}]

#set_property IOSTANDARD LVCMOS33 [get_ports {cmosdata[1]}]
#set_property PACKAGE_PIN M2 [get_ports {cmosdata[1]}]

#set_property IOSTANDARD LVCMOS33 [get_ports {cmosdata[2]}]
#set_property PACKAGE_PIN N2 [get_ports {cmosdata[2]}]

#set_property IOSTANDARD LVCMOS33 [get_ports {cmosdata[3]}]
#set_property PACKAGE_PIN M3 [get_ports {cmosdata[3]}]

#set_property IOSTANDARD LVCMOS33 [get_ports {cmosdata[4]}]
#set_property PACKAGE_PIN L3 [get_ports {cmosdata[4]}]

#set_property IOSTANDARD LVCMOS33 [get_ports {cmosdata[5]}]
#set_property PACKAGE_PIN K2 [get_ports {cmosdata[5]}]

#set_property IOSTANDARD LVCMOS33 [get_ports {cmosdata[6]}]
#set_property PACKAGE_PIN K3 [get_ports {cmosdata[6]}]

#set_property IOSTANDARD LVCMOS33 [get_ports {cmosdata[7]}]
#set_property PACKAGE_PIN L1 [get_ports {cmosdata[7]}]

#set_property IOSTANDARD LVCMOS33 [get_ports {cmosdata[8]}]
#set_property PACKAGE_PIN K1 [get_ports {cmosdata[8]}]

#set_property IOSTANDARD LVCMOS33 [get_ports {cmosdata[9]}]
#set_property PACKAGE_PIN J1 [get_ports {cmosdata[9]}]

#set_property IOSTANDARD LVCMOS33 [get_ports {cmosdata[10]}]
#set_property PACKAGE_PIN J2 [get_ports {cmosdata[10]}]

#set_property IOSTANDARD LVCMOS33 [get_ports {cmosdata[11]}]
#set_property PACKAGE_PIN G3 [get_ports {cmosdata[11]}]

#set_property IOSTANDARD LVCMOS33 [get_ports {cmosdata[12]}]
#set_property PACKAGE_PIN H3 [get_ports {cmosdata[12]}]

#set_property IOSTANDARD LVCMOS33 [get_ports {cmosdata[13]}]
#set_property PACKAGE_PIN G1 [get_ports {cmosdata[13]}]

#set_property IOSTANDARD LVCMOS33 [get_ports {cmosdata[14]}]
#set_property PACKAGE_PIN H2 [get_ports {cmosdata[14]}]

#set_property IOSTANDARD LVCMOS33 [get_ports {cmosdata[15]}]
#set_property PACKAGE_PIN G2 [get_ports {cmosdata[15]}]

#set_property IOSTANDARD LVCMOS33 [get_ports {cmosdata[16]}]
#set_property PACKAGE_PIN F3 [get_ports {cmosdata[16]}]

#set_property IOSTANDARD LVCMOS33 [get_ports {cmosdata[17]}]
#set_property PACKAGE_PIN E3 [get_ports {cmosdata[17]}]

#set_property IOSTANDARD LVCMOS33 [get_ports {cmosdata[18]}]
#set_property PACKAGE_PIN E2 [get_ports {cmosdata[18]}]

#set_property IOSTANDARD LVCMOS33 [get_ports {cmosdata[19]}]
#set_property PACKAGE_PIN F4 [get_ports {cmosdata[19]}]

#set_property IOSTANDARD LVCMOS33 [get_ports {cmosdata[20]}]
#set_property PACKAGE_PIN F1 [get_ports {cmosdata[20]}]

#set_property IOSTANDARD LVCMOS33 [get_ports {cmosdata[21]}]
#set_property PACKAGE_PIN E1 [get_ports {cmosdata[21]}]

#set_property IOSTANDARD LVCMOS33 [get_ports {cmosdata[22]}]
#set_property PACKAGE_PIN A1 [get_ports {cmosdata[22]}]

#set_property IOSTANDARD LVCMOS33 [get_ports {cmosdata[23]}]
#set_property PACKAGE_PIN B1 [get_ports {cmosdata[23]}]

#set_property IOSTANDARD LVCMOS33 [get_ports {cmosdata[24]}]
#set_property PACKAGE_PIN B2 [get_ports {cmosdata[24]}]

#set_property IOSTANDARD LVCMOS33 [get_ports {cmosdata[25]}]
#set_property PACKAGE_PIN C2 [get_ports {cmosdata[25]}]

#set_property IOSTANDARD LVCMOS33 [get_ports {cmosdata[26]}]
#set_property PACKAGE_PIN D1 [get_ports {cmosdata[26]}]

#set_property IOSTANDARD LVCMOS33 [get_ports {cmosdata[27]}]
#set_property PACKAGE_PIN D2 [get_ports {cmosdata[27]}]

#set_property IOSTANDARD LVCMOS33 [get_ports cmosclk]
#set_property PACKAGE_PIN H4 [get_ports cmosclk]

######################################################3
## Sensor Interface

#set_property IOSTANDARD LVDS_25 [get_ports cc1_p]

#set_property IOSTANDARD LVDS_25 [get_ports cc1_n]
#set_property PACKAGE_PIN Y3 [get_ports cc1_p]
#set_property PACKAGE_PIN AA3 [get_ports cc1_n]

#set_property IOSTANDARD LVDS_25 [get_ports cc2_p]

#set_property IOSTANDARD LVDS_25 [get_ports cc2_n]
#set_property PACKAGE_PIN AA1 [get_ports cc2_p]
#set_property PACKAGE_PIN AB1 [get_ports cc2_n]

#set_property IOSTANDARD LVDS_25 [get_ports cc3_p]

#set_property IOSTANDARD LVDS_25 [get_ports cc3_n]
#set_property PACKAGE_PIN W2 [get_ports cc3_p]
#set_property PACKAGE_PIN Y2 [get_ports cc3_n]

#set_property IOSTANDARD LVCMOS33 [get_ports det_rx]
#set_property PACKAGE_PIN R1 [get_ports det_rx]

##set_property IOSTANDARD LVDS_25 [get_ports tc_n]
##set_property PACKAGE_PIN E18 [get_ports tc_n]

#set_property IOSTANDARD LVCMOS33 [get_ports det_tx]
#set_property PACKAGE_PIN P1 [get_ports det_tx]

##set_property IOSTANDARD LVDS_25 [get_ports tfg_n]
##set_property PACKAGE_PIN D19 [get_ports tfg_n]
##set_property DIFF_TERM TRUE [get_ports tfg_n]

##########################################

###########  usb  ######################
#set_property IOSTANDARD LVCMOS25 [get_ports rxd_usb]
#set_property PACKAGE_PIN E13 [get_ports rxd_usb]

#set_property IOSTANDARD LVCMOS25 [get_ports txd_usb]
#set_property PACKAGE_PIN D14 [get_ports txd_usb]

#set_property IOSTANDARD LVCMOS25 [get_ports clk_usb3]
#set_property PACKAGE_PIN B17 [get_ports clk_usb3]

## USB3 FLAG_B
#set_property IOSTANDARD LVCMOS25 [get_ports reset_in]
#set_property PACKAGE_PIN D17 [get_ports reset_in]
## USB3 RESET
#set_property IOSTANDARD LVCMOS33 [get_ports reset_out]
#set_property PACKAGE_PIN G4 [get_ports reset_out]

## A0 USB3
#set_property IOSTANDARD LVCMOS25 [get_ports fv]
#set_property PACKAGE_PIN F16 [get_ports fv]

## A1 USB3
#set_property IOSTANDARD LVCMOS25 [get_ports lv]
#set_property PACKAGE_PIN B16 [get_ports lv]

#set_property IOSTANDARD LVCMOS25 [get_ports {databus[0]}]
#set_property PACKAGE_PIN D21 [get_ports {databus[0]}]

#set_property IOSTANDARD LVCMOS25 [get_ports {databus[1]}]
#set_property PACKAGE_PIN C20 [get_ports {databus[1]}]

#set_property IOSTANDARD LVCMOS25 [get_ports {databus[2]}]
#set_property PACKAGE_PIN F18 [get_ports {databus[2]}]

#set_property IOSTANDARD LVCMOS25 [get_ports {databus[3]}]
#set_property PACKAGE_PIN A21 [get_ports {databus[3]}]

#set_property IOSTANDARD LVCMOS25 [get_ports {databus[4]}]
#set_property PACKAGE_PIN E19 [get_ports {databus[4]}]

#set_property IOSTANDARD LVCMOS25 [get_ports {databus[5]}]
#set_property PACKAGE_PIN D20 [get_ports {databus[5]}]

#set_property IOSTANDARD LVCMOS25 [get_ports {databus[6]}]
#set_property PACKAGE_PIN B21 [get_ports {databus[6]}]

#set_property IOSTANDARD LVCMOS25 [get_ports {databus[7]}]
#set_property PACKAGE_PIN A20 [get_ports {databus[7]}]

#set_property IOSTANDARD LVCMOS25 [get_ports {databus[8]}]
#set_property PACKAGE_PIN A19 [get_ports {databus[8]}]

#set_property IOSTANDARD LVCMOS25 [get_ports {databus[9]}]
#set_property PACKAGE_PIN B20 [get_ports {databus[9]}]

#set_property IOSTANDARD LVCMOS25 [get_ports {databus[10]}]
#set_property PACKAGE_PIN D19 [get_ports {databus[10]}]

#set_property IOSTANDARD LVCMOS25 [get_ports {databus[11]}]
#set_property PACKAGE_PIN A16 [get_ports {databus[11]}]

#set_property IOSTANDARD LVCMOS25 [get_ports {databus[12]}]
#set_property PACKAGE_PIN C17 [get_ports {databus[12]}]

#set_property IOSTANDARD LVCMOS25 [get_ports {databus[13]}]
#set_property PACKAGE_PIN A18 [get_ports {databus[13]}]

#set_property IOSTANDARD LVCMOS25 [get_ports {databus[14]}]
#set_property PACKAGE_PIN C14 [get_ports {databus[14]}]

#set_property IOSTANDARD LVCMOS25 [get_ports {databus[15]}]
#set_property PACKAGE_PIN E21 [get_ports {databus[15]}]

#set_property IOSTANDARD LVCMOS25 [get_ports {databus[16]}]
#set_property PACKAGE_PIN E16 [get_ports {databus[16]}]

#set_property IOSTANDARD LVCMOS25 [get_ports {databus[17]}]
#set_property PACKAGE_PIN C15 [get_ports {databus[17]}]

#set_property IOSTANDARD LVCMOS25 [get_ports {databus[18]}]
#set_property PACKAGE_PIN D16 [get_ports {databus[18]}]

#set_property IOSTANDARD LVCMOS25 [get_ports {databus[19]}]
#set_property PACKAGE_PIN D15 [get_ports {databus[19]}]

#set_property IOSTANDARD LVCMOS25 [get_ports {databus[20]}]
#set_property PACKAGE_PIN A14 [get_ports {databus[20]}]

#set_property IOSTANDARD LVCMOS25 [get_ports {databus[21]}]
#set_property PACKAGE_PIN B15 [get_ports {databus[21]}]

#set_property IOSTANDARD LVCMOS25 [get_ports {databus[22]}]
#set_property PACKAGE_PIN F19 [get_ports {databus[22]}]

#set_property IOSTANDARD LVCMOS25 [get_ports {databus[23]}]
#set_property PACKAGE_PIN B18 [get_ports {databus[23]}]

#set_property IOSTANDARD LVCMOS25 [get_ports {databus[24]}]
#set_property PACKAGE_PIN F20 [get_ports {databus[24]}]

#set_property IOSTANDARD LVCMOS25 [get_ports {databus[25]}]
#set_property PACKAGE_PIN C22 [get_ports {databus[25]}]

#set_property IOSTANDARD LVCMOS25 [get_ports {databus[26]}]
#set_property PACKAGE_PIN A15 [get_ports {databus[26]}]

#set_property IOSTANDARD LVCMOS25 [get_ports {databus[27]}]
#set_property PACKAGE_PIN D22 [get_ports {databus[27]}]

#set_property IOSTANDARD LVCMOS25 [get_ports {databus[28]}]
#set_property PACKAGE_PIN E17 [get_ports {databus[28]}]

#set_property IOSTANDARD LVCMOS25 [get_ports {databus[29]}]
#set_property PACKAGE_PIN E18 [get_ports {databus[29]}]

#set_property IOSTANDARD LVCMOS25 [get_ports {databus[30]}]
#set_property PACKAGE_PIN E22 [get_ports {databus[30]}]

#set_property IOSTANDARD LVCMOS25 [get_ports {databus[31]}]
#set_property PACKAGE_PIN F21 [get_ports {databus[31]}]
#######################################################################


################ NET - IOSTANDARD ##################


### PadFunction: IO_L17N_T2_A25_15
##set_property SLEW FAST [get_ports {ddr3_dq[0]}]
##set_property IN_TERM UNTUNED_SPLIT_50 [get_ports {ddr3_dq[0]}]
##set_property IOSTANDARD SSTL15 [get_ports {ddr3_dq[0]}]
##set_property PACKAGE_PIN N19 [get_ports {ddr3_dq[0]}]

### PadFunction: IO_L18P_T2_A24_15
##set_property SLEW FAST [get_ports {ddr3_dq[1]}]
##set_property IN_TERM UNTUNED_SPLIT_50 [get_ports {ddr3_dq[1]}]
##set_property IOSTANDARD SSTL15 [get_ports {ddr3_dq[1]}]
##set_property PACKAGE_PIN N20 [get_ports {ddr3_dq[1]}]

### PadFunction: IO_L18N_T2_A23_15
##set_property SLEW FAST [get_ports {ddr3_dq[2]}]
##set_property IN_TERM UNTUNED_SPLIT_50 [get_ports {ddr3_dq[2]}]
##set_property IOSTANDARD SSTL15 [get_ports {ddr3_dq[2]}]
##set_property PACKAGE_PIN M20 [get_ports {ddr3_dq[2]}]

### PadFunction: IO_L17P_T2_A26_15
##set_property SLEW FAST [get_ports {ddr3_dq[3]}]
##set_property IN_TERM UNTUNED_SPLIT_50 [get_ports {ddr3_dq[3]}]
##set_property IOSTANDARD SSTL15 [get_ports {ddr3_dq[3]}]
##set_property PACKAGE_PIN N18 [get_ports {ddr3_dq[3]}]

### PadFunction: IO_L14N_T2_SRCC_15
##set_property SLEW FAST [get_ports {ddr3_dq[4]}]
##set_property IN_TERM UNTUNED_SPLIT_50 [get_ports {ddr3_dq[4]}]
##set_property IOSTANDARD SSTL15 [get_ports {ddr3_dq[4]}]
##set_property PACKAGE_PIN L20 [get_ports {ddr3_dq[4]}]

### PadFunction: IO_L16P_T2_A28_15
##set_property SLEW FAST [get_ports {ddr3_dq[5]}]
##set_property IN_TERM UNTUNED_SPLIT_50 [get_ports {ddr3_dq[5]}]
##set_property IOSTANDARD SSTL15 [get_ports {ddr3_dq[5]}]
##set_property PACKAGE_PIN M18 [get_ports {ddr3_dq[5]}]

### PadFunction: IO_L16N_T2_A27_15
##set_property SLEW FAST [get_ports {ddr3_dq[6]}]
##set_property IN_TERM UNTUNED_SPLIT_50 [get_ports {ddr3_dq[6]}]
##set_property IOSTANDARD SSTL15 [get_ports {ddr3_dq[6]}]
##set_property PACKAGE_PIN L18 [get_ports {ddr3_dq[6]}]

### PadFunction: IO_L13N_T2_MRCC_15
##set_property SLEW FAST [get_ports {ddr3_dq[7]}]
##set_property IN_TERM UNTUNED_SPLIT_50 [get_ports {ddr3_dq[7]}]
##set_property IOSTANDARD SSTL15 [get_ports {ddr3_dq[7]}]
##set_property PACKAGE_PIN K19 [get_ports {ddr3_dq[7]}]

### PadFunction: IO_L24P_T3_RS1_15
##set_property SLEW FAST [get_ports {ddr3_dq[8]}]
##set_property IN_TERM UNTUNED_SPLIT_50 [get_ports {ddr3_dq[8]}]
##set_property IOSTANDARD SSTL15 [get_ports {ddr3_dq[8]}]
##set_property PACKAGE_PIN M15 [get_ports {ddr3_dq[8]}]

### PadFunction: IO_L23N_T3_FWE_B_15
##set_property SLEW FAST [get_ports {ddr3_dq[9]}]
##set_property IN_TERM UNTUNED_SPLIT_50 [get_ports {ddr3_dq[9]}]
##set_property IOSTANDARD SSTL15 [get_ports {ddr3_dq[9]}]
##set_property PACKAGE_PIN K16 [get_ports {ddr3_dq[9]}]

### PadFunction: IO_L22P_T3_A17_15
##set_property SLEW FAST [get_ports {ddr3_dq[10]}]
##set_property IN_TERM UNTUNED_SPLIT_50 [get_ports {ddr3_dq[10]}]
##set_property IOSTANDARD SSTL15 [get_ports {ddr3_dq[10]}]
##set_property PACKAGE_PIN L14 [get_ports {ddr3_dq[10]}]

### PadFunction: IO_L23P_T3_FOE_B_15
##set_property SLEW FAST [get_ports {ddr3_dq[11]}]
##set_property IN_TERM UNTUNED_SPLIT_50 [get_ports {ddr3_dq[11]}]
##set_property IOSTANDARD SSTL15 [get_ports {ddr3_dq[11]}]
##set_property PACKAGE_PIN L16 [get_ports {ddr3_dq[11]}]

### PadFunction: IO_L20P_T3_A20_15
##set_property SLEW FAST [get_ports {ddr3_dq[12]}]
##set_property IN_TERM UNTUNED_SPLIT_50 [get_ports {ddr3_dq[12]}]
##set_property IOSTANDARD SSTL15 [get_ports {ddr3_dq[12]}]
##set_property PACKAGE_PIN M13 [get_ports {ddr3_dq[12]}]

### PadFunction: IO_L22N_T3_A16_15
##set_property SLEW FAST [get_ports {ddr3_dq[13]}]
##set_property IN_TERM UNTUNED_SPLIT_50 [get_ports {ddr3_dq[13]}]
##set_property IOSTANDARD SSTL15 [get_ports {ddr3_dq[13]}]
##set_property PACKAGE_PIN L15 [get_ports {ddr3_dq[13]}]

### PadFunction: IO_L20N_T3_A19_15
##set_property SLEW FAST [get_ports {ddr3_dq[14]}]
##set_property IN_TERM UNTUNED_SPLIT_50 [get_ports {ddr3_dq[14]}]
##set_property IOSTANDARD SSTL15 [get_ports {ddr3_dq[14]}]
##set_property PACKAGE_PIN L13 [get_ports {ddr3_dq[14]}]

### PadFunction: IO_L24N_T3_RS0_15
##set_property SLEW FAST [get_ports {ddr3_dq[15]}]
##set_property IN_TERM UNTUNED_SPLIT_50 [get_ports {ddr3_dq[15]}]
##set_property IOSTANDARD SSTL15 [get_ports {ddr3_dq[15]}]
##set_property PACKAGE_PIN M16 [get_ports {ddr3_dq[15]}]

### PadFunction: IO_L3P_T0_DQS_AD1P_15
##set_property SLEW FAST [get_ports {ddr3_addr[12]}]
##set_property IOSTANDARD SSTL15 [get_ports {ddr3_addr[12]}]
##set_property PACKAGE_PIN J14 [get_ports {ddr3_addr[12]}]

### PadFunction: IO_L7N_T1_AD2N_15
##set_property SLEW FAST [get_ports {ddr3_addr[11]}]
##set_property IOSTANDARD SSTL15 [get_ports {ddr3_addr[11]}]
##set_property PACKAGE_PIN H22 [get_ports {ddr3_addr[11]}]

### PadFunction: IO_L10P_T1_AD11P_15
##set_property SLEW FAST [get_ports {ddr3_addr[10]}]
##set_property IOSTANDARD SSTL15 [get_ports {ddr3_addr[10]}]
##set_property PACKAGE_PIN M21 [get_ports {ddr3_addr[10]}]

### PadFunction: IO_L4P_T0_15
##set_property SLEW FAST [get_ports {ddr3_addr[9]}]
##set_property IOSTANDARD SSTL15 [get_ports {ddr3_addr[9]}]
##set_property PACKAGE_PIN G17 [get_ports {ddr3_addr[9]}]

### PadFunction: IO_L8N_T1_AD10N_15
##set_property SLEW FAST [get_ports {ddr3_addr[8]}]
##set_property IOSTANDARD SSTL15 [get_ports {ddr3_addr[8]}]
##set_property PACKAGE_PIN G20 [get_ports {ddr3_addr[8]}]

### PadFunction: IO_L4N_T0_15
##set_property SLEW FAST [get_ports {ddr3_addr[7]}]
##set_property IOSTANDARD SSTL15 [get_ports {ddr3_addr[7]}]
##set_property PACKAGE_PIN G18 [get_ports {ddr3_addr[7]}]

### PadFunction: IO_L8P_T1_AD10P_15
##set_property SLEW FAST [get_ports {ddr3_addr[6]}]
##set_property IOSTANDARD SSTL15 [get_ports {ddr3_addr[6]}]
##set_property PACKAGE_PIN H20 [get_ports {ddr3_addr[6]}]

### PadFunction: IO_L6P_T0_15
##set_property SLEW FAST [get_ports {ddr3_addr[5]}]
##set_property IOSTANDARD SSTL15 [get_ports {ddr3_addr[5]}]
##set_property PACKAGE_PIN H17 [get_ports {ddr3_addr[5]}]

### PadFunction: IO_L7P_T1_AD2P_15
##set_property SLEW FAST [get_ports {ddr3_addr[4]}]
##set_property IOSTANDARD SSTL15 [get_ports {ddr3_addr[4]}]
##set_property PACKAGE_PIN J22 [get_ports {ddr3_addr[4]}]

### PadFunction: IO_L5N_T0_AD9N_15
##set_property SLEW FAST [get_ports {ddr3_addr[3]}]
##set_property IOSTANDARD SSTL15 [get_ports {ddr3_addr[3]}]
##set_property PACKAGE_PIN H15 [get_ports {ddr3_addr[3]}]

### PadFunction: IO_L2N_T0_AD8N_15
##set_property SLEW FAST [get_ports {ddr3_addr[2]}]
##set_property IOSTANDARD SSTL15 [get_ports {ddr3_addr[2]}]
##set_property PACKAGE_PIN G16 [get_ports {ddr3_addr[2]}]

### PadFunction: IO_L9P_T1_DQS_AD3P_15
##set_property SLEW FAST [get_ports {ddr3_addr[1]}]
##set_property IOSTANDARD SSTL15 [get_ports {ddr3_addr[1]}]
##set_property PACKAGE_PIN K21 [get_ports {ddr3_addr[1]}]

### PadFunction: IO_L2P_T0_AD8P_15
##set_property SLEW FAST [get_ports {ddr3_addr[0]}]
##set_property IOSTANDARD SSTL15 [get_ports {ddr3_addr[0]}]
##set_property PACKAGE_PIN G15 [get_ports {ddr3_addr[0]}]

### PadFunction: IO_L1P_T0_AD0P_15
##set_property SLEW FAST [get_ports {ddr3_ba[2]}]
##set_property IOSTANDARD SSTL15 [get_ports {ddr3_ba[2]}]
##set_property PACKAGE_PIN H13 [get_ports {ddr3_ba[2]}]

### PadFunction: IO_L9N_T1_DQS_AD3N_15
##set_property SLEW FAST [get_ports {ddr3_ba[1]}]
##set_property IOSTANDARD SSTL15 [get_ports {ddr3_ba[1]}]
##set_property PACKAGE_PIN K22 [get_ports {ddr3_ba[1]}]

### PadFunction: IO_L5P_T0_AD9P_15
##set_property SLEW FAST [get_ports {ddr3_ba[0]}]
##set_property IOSTANDARD SSTL15 [get_ports {ddr3_ba[0]}]
##set_property PACKAGE_PIN J15 [get_ports {ddr3_ba[0]}]

### PadFunction: IO_L10N_T1_AD11N_15
##set_property SLEW FAST [get_ports {ddr3_ras_n}]
##set_property IOSTANDARD SSTL15 [get_ports {ddr3_ras_n}]
##set_property PACKAGE_PIN L21 [get_ports {ddr3_ras_n}]

### PadFunction: IO_L11P_T1_SRCC_15
##set_property SLEW FAST [get_ports {ddr3_cas_n}]
##set_property IOSTANDARD SSTL15 [get_ports {ddr3_cas_n}]
##set_property PACKAGE_PIN J20 [get_ports {ddr3_cas_n}]

### PadFunction: IO_L11N_T1_SRCC_15
##set_property SLEW FAST [get_ports {ddr3_we_n}]
##set_property IOSTANDARD SSTL15 [get_ports {ddr3_we_n}]
##set_property PACKAGE_PIN J21 [get_ports {ddr3_we_n}]

### PadFunction: IO_25_15
##set_property SLEW FAST [get_ports {ddr3_reset_n}]
##set_property IOSTANDARD LVCMOS15 [get_ports {ddr3_reset_n}]
##set_property PACKAGE_PIN M17 [get_ports {ddr3_reset_n}]

### PadFunction: IO_L1N_T0_AD0N_15
##set_property SLEW FAST [get_ports {ddr3_cke}]
##set_property IOSTANDARD SSTL15 [get_ports {ddr3_cke}]
##set_property PACKAGE_PIN G13 [get_ports {ddr3_cke}]

### PadFunction: IO_0_15
##set_property SLEW FAST [get_ports {ddr3_odt}]
##set_property IOSTANDARD SSTL15 [get_ports {ddr3_odt}]
##set_property PACKAGE_PIN J16 [get_ports {ddr3_odt}]

### PadFunction: IO_L3N_T0_DQS_AD1N_15
##set_property SLEW FAST [get_ports {ddr3_cs_n}]
##set_property IOSTANDARD SSTL15 [get_ports {ddr3_cs_n}]
##set_property PACKAGE_PIN H14 [get_ports {ddr3_cs_n}]

### PadFunction: IO_L14P_T2_SRCC_15
##set_property SLEW FAST [get_ports {ddr3_dm[0]}]
##set_property IOSTANDARD SSTL15 [get_ports {ddr3_dm[0]}]
##set_property PACKAGE_PIN L19 [get_ports {ddr3_dm[0]}]

### PadFunction: IO_L19P_T3_A22_15
##set_property SLEW FAST [get_ports {ddr3_dm[1]}]
##set_property IOSTANDARD SSTL15 [get_ports {ddr3_dm[1]}]
##set_property PACKAGE_PIN K13 [get_ports {ddr3_dm[1]}]

#### PadFunction: IO_L13P_T2_MRCC_16
##set_property IOSTANDARD LVDS_25 [get_ports {ddr_clk_p}]
##set_property PACKAGE_PIN C18 [get_ports {ddr_clk_p}]

#### PadFunction: IO_L13N_T2_MRCC_16
##set_property IOSTANDARD LVDS_25 [get_ports {ddr_clk_n}]
##set_property PACKAGE_PIN C19 [get_ports {ddr_clk_n}]

### PadFunction: IO_L15P_T2_DQS_15
##set_property SLEW FAST [get_ports {ddr3_dqs_p[0]}]
##set_property IN_TERM UNTUNED_SPLIT_50 [get_ports {ddr3_dqs_p[0]}]
##set_property IOSTANDARD DIFF_SSTL15 [get_ports {ddr3_dqs_p[0]}]
##set_property PACKAGE_PIN N22 [get_ports {ddr3_dqs_p[0]}]

### PadFunction: IO_L15N_T2_DQS_ADV_B_15
##set_property SLEW FAST [get_ports {ddr3_dqs_n[0]}]
##set_property IN_TERM UNTUNED_SPLIT_50 [get_ports {ddr3_dqs_n[0]}]
##set_property IOSTANDARD DIFF_SSTL15 [get_ports {ddr3_dqs_n[0]}]
##set_property PACKAGE_PIN M22 [get_ports {ddr3_dqs_n[0]}]

### PadFunction: IO_L21P_T3_DQS_15
##set_property SLEW FAST [get_ports {ddr3_dqs_p[1]}]
##set_property IN_TERM UNTUNED_SPLIT_50 [get_ports {ddr3_dqs_p[1]}]
##set_property IOSTANDARD DIFF_SSTL15 [get_ports {ddr3_dqs_p[1]}]
##set_property PACKAGE_PIN K17 [get_ports {ddr3_dqs_p[1]}]

### PadFunction: IO_L21N_T3_DQS_A18_15
##set_property SLEW FAST [get_ports {ddr3_dqs_n[1]}]
##set_property IN_TERM UNTUNED_SPLIT_50 [get_ports {ddr3_dqs_n[1]}]
##set_property IOSTANDARD DIFF_SSTL15 [get_ports {ddr3_dqs_n[1]}]
##set_property PACKAGE_PIN J17 [get_ports {ddr3_dqs_n[1]}]

### PadFunction: IO_L12P_T1_MRCC_15
##set_property SLEW FAST [get_ports {ddr3_ck_p}]
##set_property IOSTANDARD DIFF_SSTL15 [get_ports {ddr3_ck_p}]
##set_property PACKAGE_PIN J19 [get_ports {ddr3_ck_p}]

### PadFunction: IO_L12N_T1_MRCC_15
##set_property SLEW FAST [get_ports {ddr3_ck_n}]
##set_property IOSTANDARD DIFF_SSTL15 [get_ports {ddr3_ck_n}]
##set_property PACKAGE_PIN H19 [get_ports {ddr3_ck_n}]


##set_property INTERNAL_VREF  0.750 [get_iobanks 15]

##set_property LOC PHASER_OUT_PHY_X0Y7 [get_cells  -hier -filter {NAME =~ */ddr_phy_4lanes_0.u_ddr_phy_4lanes/ddr_byte_lane_D.ddr_byte_lane_D/phaser_out}]
##set_property LOC PHASER_OUT_PHY_X0Y6 [get_cells  -hier -filter {NAME =~ */ddr_phy_4lanes_0.u_ddr_phy_4lanes/ddr_byte_lane_C.ddr_byte_lane_C/phaser_out}]
##set_property LOC PHASER_OUT_PHY_X0Y5 [get_cells  -hier -filter {NAME =~ */ddr_phy_4lanes_0.u_ddr_phy_4lanes/ddr_byte_lane_B.ddr_byte_lane_B/phaser_out}]
##set_property LOC PHASER_OUT_PHY_X0Y4 [get_cells  -hier -filter {NAME =~ */ddr_phy_4lanes_0.u_ddr_phy_4lanes/ddr_byte_lane_A.ddr_byte_lane_A/phaser_out}]

#### set_property LOC PHASER_IN_PHY_X0Y7 [get_cells  -hier -filter {NAME =~ */ddr_phy_4lanes_0.u_ddr_phy_4lanes/ddr_byte_lane_D.ddr_byte_lane_D/phaser_in_gen.phaser_in}]
#### set_property LOC PHASER_IN_PHY_X0Y6 [get_cells  -hier -filter {NAME =~ */ddr_phy_4lanes_0.u_ddr_phy_4lanes/ddr_byte_lane_C.ddr_byte_lane_C/phaser_in_gen.phaser_in}]
##set_property LOC PHASER_IN_PHY_X0Y5 [get_cells  -hier -filter {NAME =~ */ddr_phy_4lanes_0.u_ddr_phy_4lanes/ddr_byte_lane_B.ddr_byte_lane_B/phaser_in_gen.phaser_in}]
##set_property LOC PHASER_IN_PHY_X0Y4 [get_cells  -hier -filter {NAME =~ */ddr_phy_4lanes_0.u_ddr_phy_4lanes/ddr_byte_lane_A.ddr_byte_lane_A/phaser_in_gen.phaser_in}]



##set_property LOC OUT_FIFO_X0Y7 [get_cells  -hier -filter {NAME =~ */ddr_phy_4lanes_0.u_ddr_phy_4lanes/ddr_byte_lane_D.ddr_byte_lane_D/out_fifo}]
##set_property LOC OUT_FIFO_X0Y6 [get_cells  -hier -filter {NAME =~ */ddr_phy_4lanes_0.u_ddr_phy_4lanes/ddr_byte_lane_C.ddr_byte_lane_C/out_fifo}]
##set_property LOC OUT_FIFO_X0Y5 [get_cells  -hier -filter {NAME =~ */ddr_phy_4lanes_0.u_ddr_phy_4lanes/ddr_byte_lane_B.ddr_byte_lane_B/out_fifo}]
##set_property LOC OUT_FIFO_X0Y4 [get_cells  -hier -filter {NAME =~ */ddr_phy_4lanes_0.u_ddr_phy_4lanes/ddr_byte_lane_A.ddr_byte_lane_A/out_fifo}]

##set_property LOC IN_FIFO_X0Y5 [get_cells  -hier -filter {NAME =~ */ddr_phy_4lanes_0.u_ddr_phy_4lanes/ddr_byte_lane_B.ddr_byte_lane_B/in_fifo_gen.in_fifo}]
##set_property LOC IN_FIFO_X0Y4 [get_cells  -hier -filter {NAME =~ */ddr_phy_4lanes_0.u_ddr_phy_4lanes/ddr_byte_lane_A.ddr_byte_lane_A/in_fifo_gen.in_fifo}]

##set_property LOC PHY_CONTROL_X0Y1 [get_cells  -hier -filter {NAME =~ */ddr_phy_4lanes_0.u_ddr_phy_4lanes/phy_control_i}]

##set_property LOC PHASER_REF_X0Y1 [get_cells  -hier -filter {NAME =~ */ddr_phy_4lanes_0.u_ddr_phy_4lanes/phaser_ref_i}]

##set_property LOC OLOGIC_X0Y69 [get_cells  -hier -filter {NAME =~ */ddr_phy_4lanes_0.u_ddr_phy_4lanes/ddr_byte_lane_B.ddr_byte_lane_B/ddr_byte_group_io/*slave_ts}]
##set_property LOC OLOGIC_X0Y57 [get_cells  -hier -filter {NAME =~ */ddr_phy_4lanes_0.u_ddr_phy_4lanes/ddr_byte_lane_A.ddr_byte_lane_A/ddr_byte_group_io/*slave_ts}]

##set_property LOC PLLE2_ADV_X0Y1 [get_cells -hier -filter {NAME =~ */u_ddr3_infrastructure/plle2_i}]
##set_property LOC MMCME2_ADV_X0Y1 [get_cells -hier -filter {NAME =~ */u_ddr3_infrastructure/gen_mmcm.mmcm_i}]


##set_multicycle_path -from [get_cells -hier -filter {NAME =~ */mc0/mc_read_idle_r_reg}] #                    -to   [get_cells -hier -filter {NAME =~ */input_[?].iserdes_dq_.iserdesdq}] #                    -setup 6

##set_multicycle_path -from [get_cells -hier -filter {NAME =~ */mc0/mc_read_idle_r_reg}] #                    -to   [get_cells -hier -filter {NAME =~ */input_[?].iserdes_dq_.iserdesdq}] #                    -hold 5

##set_false_path -through [get_pins -filter {NAME =~ */DQSFOUND} -of [get_cells -hier -filter {REF_NAME == PHASER_IN_PHY}]]

##set_multicycle_path -through [get_pins -filter {NAME =~ */OSERDESRST} -of [get_cells -hier -filter {REF_NAME == PHASER_OUT_PHY}]] -setup 2 -start
##set_multicycle_path -through [get_pins -filter {NAME =~ */OSERDESRST} -of [get_cells -hier -filter {REF_NAME == PHASER_OUT_PHY}]] -hold 1 -start

###set_max_delay -datapath_only -from [get_cells -hier -filter {NAME =~ *temp_mon_enabled.u_tempmon/* && IS_SEQUENTIAL}] -to [get_cells -hier -filter {NAME =~ *temp_mon_enabled.u_tempmon/device_temp_sync_r1*}] 20
##set_max_delay -to [get_pins -hier -include_replicated_objects -filter {NAME =~ *temp_mon_enabled.u_tempmon/device_temp_sync_r1_reg[*]/D}] 20
##set_max_delay -from [get_cells -hier *rstdiv0_sync_r1_reg*] -to [get_pins -filter {NAME =~ */RESET} -of [get_cells -hier -filter {REF_NAME == PHY_CONTROL}]] -datapath_only 5
###set_false_path -through [get_pins -hier -filter {NAME =~ */u_iodelay_ctrl/sys_rst}]
##set_false_path -through [get_nets -hier -filter {NAME =~ */u_iodelay_ctrl/sys_rst_i}]

##################################################################################
###################END OF DDR3#########################################
###########################################################################

#set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets u_clk/inst/clk_in1_clk_wiz_2]

###################################################################################

###CAM DETECT Pin
#set_property IOSTANDARD LVCMOS33 [get_ports det_cam_en]
#set_property PACKAGE_PIN P2 [get_ports det_cam_en]

##Flash Interface
##DQ1
#set_property IOSTANDARD LVCMOS18 [get_ports flash_miso]
#set_property PACKAGE_PIN R22 [get_ports flash_miso]

##DQ2
#set_property IOSTANDARD LVCMOS18 [get_ports IO2]
#set_property PACKAGE_PIN P21 [get_ports IO2]

#set_property PULLUP true [get_ports IO3]
##DQ3
#set_property IOSTANDARD LVCMOS18 [get_ports IO3]
#set_property PACKAGE_PIN R21 [get_ports IO3]

##DQ0
#set_property IOSTANDARD LVCMOS18 [get_ports sdout]
#set_property PACKAGE_PIN P22 [get_ports sdout]

##CS
#set_property IOSTANDARD LVCMOS18 [get_ports flash_cs]
#set_property PACKAGE_PIN T19 [get_ports flash_cs]

###############################################################

#############  Camera RS422 ################
#set_property IOSTANDARD LVCMOS33 [get_ports camrx]
#set_property PACKAGE_PIN J5 [get_ports camrx]

#set_property IOSTANDARD LVCMOS33 [get_ports camtx]
#set_property PACKAGE_PIN H5 [get_ports camtx]

############################################################
## Temp Sensor I2C
#set_property IOSTANDARD LVCMOS18 [get_ports i2c_scl_io]
#set_property PACKAGE_PIN V18 [get_ports i2c_scl_io]

#set_property IOSTANDARD LVCMOS18 [get_ports i2c_sda_io]
#set_property PACKAGE_PIN V19 [get_ports i2c_sda_io]

#############################################################################
###########  HD_SDI #############
##set_property IOSTANDARD LVCMOS18 [get_ports FAULT ]
##set_property PACKAGE_PIN AB11 [get_ports FAULT ]

#set_property IOSTANDARD LVCMOS18 [get_ports C_A_DET]
#set_property PACKAGE_PIN AB22 [get_ports C_A_DET]

#set_property IOSTANDARD LVCMOS18 [get_ports C_B_DET]
#set_property PACKAGE_PIN V20 [get_ports C_B_DET]

##set_property IOSTANDARD LVCMOS18 [get_ports EN_EQ   ]
##set_property PACKAGE_PIN AA10 [get_ports EN_EQ   ]

#set_property IOSTANDARD LVCMOS18 [get_ports LOS_CTRL]
#set_property PACKAGE_PIN AB21 [get_ports LOS_CTRL]

##set_property IOSTANDARD  LVCMOS18 [get_ports HD_SD ]
##set_property PACKAGE_PIN AA11 [get_ports HD_SD   ]

#set_property PACKAGE_PIN F6 [get_ports SFP_MGT_CLK0_C_P]
#set_property PACKAGE_PIN E6 [get_ports SFP_MGT_CLK0_C_N]

#set_property PACKAGE_PIN A6 [get_ports FMC1_HPC_DP0_C2M_N]
#set_property PACKAGE_PIN B6 [get_ports FMC1_HPC_DP0_C2M_P]

##set_property IOSTANDARD LVCMOS25 [get_ports MGT_CLK_EN ]
##set_property PACKAGE_PIN F4 [get_ports MGT_CLK_EN ]

##################################

#set_property BITSTREAM.CONFIG.SPI_BUSWIDTH 4 [current_design]
#set_property CONFIG_VOLTAGE 3.3 [current_design]
#set_property CFGBVS VCCO [current_design]
#set_property BITSTREAM.CONFIG.CONFIGRATE 50 [current_design]

#############--------------Gold-----------------####
##set_property BITSTREAM.CONFIG.NEXT_CONFIG_ADDR 32'h003B0000 [current_design]
##set_property BITSTREAM.CONFIG.NEXT_CONFIG_REBOOT ENABLE [current_design]
##set_property BITSTREAM.CONFIG.SPI_32BIT_ADDR YES [current_design]
##set_property BITSTREAM.CONFIG.SPI_BUSWIDTH 4 [current_design]
##set_property BITSTREAM.CONFIG.CONFIGFALLBACK ENABLE [current_design]
##set_property BITSTREAM.CONFIG.TIMER_CFG 32'h000FFFFF [current_design]

###########--------------Update-----------------####
#set_property BITSTREAM.CONFIG.CONFIGFALLBACK ENABLE [current_design]
#set_property BITSTREAM.CONFIG.SPI_32BIT_ADDR YES [current_design]
#set_property BITSTREAM.CONFIG.TIMER_CFG 32'h000FFFFF [current_design]
####################################################################################





#set_property -from [get_pins Offset_En_reg/C] -to [get_pins lvalid1_d_reg/D] 
#set_property -from [get_pins Offset_En_reg/C] -to [get_pins fvalid1_d_reg/D]
#set_property -from [get_pins uut_flash_to_mem/wr_cnt_reg[6]/C] -to [get_pins uut_flash_to_mem/end_wr_cnt_d_reg/D]

#set_property -from [get_pins u_ddr/u_NUC_coeff_wr/write_enable_local_reg/C] -to [get_pins u_ddr/u_NUC_coeff_wr/w_loc_d_reg/D]
#set_property -from [get_pins u_ddr/u_ddr_sdi_wr/write_enable_local_reg/C] -to [get_pins u_ddr/u_ddr_sdi_wr/w_loc_d_reg/D]
#set_property -from [get_pins u_ddr/u_ddr_img_sdi_wr/write_enable_local_reg/C] -to [get_pins u_ddr/u_ddr_img_sdi_wr/w_loc_d_reg/D]
#set_property -from [get_pins u_ddr/u_mig_7series_2/u_mig_7series_0_mig/u_memc_ui_top_std/mem_intfc0/ddr_phy_top0/u_ddr_calib_top/init_calib_complete_reg/C] -to [get_pins u_ddr/img_write_enable_in_reg/D]
#set_property -from [get_pins u_ddr/u_mig_7series_2/u_mig_7series_0_mig/u_memc_ui_top_std/mem_intfc0/ddr_phy_top0/u_ddr_calib_top/init_calib_complete_reg/C] -to [get_pins u_ddr/read_enable_in_reg/D]
#set_property -from [get_pins u_ddr/u_ddr_1nuc_wr/write_enable_local_reg/C] -to [get_pins u_ddr/u_ddr_1nuc_wr/w_loc_d_reg/D]


#set_property -from [get_pins u_sync/fval_out_reg_reg[15]__0/C] -to [get_pins fvalid1_d_reg/D]
#set_property -from [get_pins ufc_en_reg/C] -to [get_pins lvalid1_d_reg/D]
#set_property -from [get_pins uut_flash_to_mem/wr_cnt_reg[5]/C] -to [get_pins uut_flash_to_mem/end_wr_cnt_d_reg/D]

#set_property -from [get_pins u_ddr/u_NUC_coeff_wr/write_enable_local_reg/C] -to [get_pins u_ddr/u_NUC_coeff_wr/w_loc_d_reg/D]
#set_property -from [get_pins u_ddr/u_ddr_img_sdi_wr/write_enable_local_reg/C] -to [get_pins u_ddr/u_ddr_img_sdi_wr/w_loc_d_reg/D]
#set_property -from [get_pins u_ddr/u_mig_7series_2/u_mig_7series_0_mig/u_memc_ui_top_std/mem_intfc0/ddr_phy_top0/u_ddr_calib_top/init_calib_complete_reg/C] -to [get_pins u_ddr/img_write_enable_in_reg/D]
#set_property -from [get_pins u_ddr/u_mig_7series_2/u_mig_7series_0_mig/u_memc_ui_top_std/mem_intfc0/ddr_phy_top0/u_ddr_calib_top/init_calib_complete_reg/C] -to [get_pins u_ddr/read_enable_in_reg/D]
#set_property -from [get_pins u_ddr/u_ddr_sdi_wr/write_enable_local_reg/C] -to [get_pins u_ddr/u_ddr_sdi_wr/w_loc_d_reg/D]
#set_property -from [get_pins u_ddr/u_ddr_1nuc_wr/write_enable_local_reg/C] -to [get_pins u_ddr/u_ddr_1nuc_wr/w_loc_d_reg/D]


#set_property -from [get_pins hist_en_reg/C] -to [get_pins fvalid1_d_reg/D]
#set_property -from [get_pins hist_en_reg/C] -to [get_pins lvalid1_d_reg/D]
#set_property -from [get_pins uut_flash_to_mem/GainT_wr_en_reg/C] -to [get_pins u_ddr/u_NUC_coeff_wr/write_enable_d_reg/D]
#set_property -from [get_pins u_image_aquire/memo_lval_reg/C] -to [get_pins u_ddr/u_ddr_1nuc_wr/wr_lval_d_reg/D]

#set_property -from [get_pins uut_flash_to_mem/wr_cnt_reg[13]/C] -to [get_pins uut_flash_to_mem/end_wr_cnt_d_reg/D]



#set_property -from [get_pins u_ddr/u_ddr_1nuc_wr/write_enable_local_reg/C] -to [get_pins u_ddr/u_ddr_1nuc_wr/w_loc_d_reg/D]
#set_property -from [get_pins u_ddr/u_ddr_sdi_wr/write_enable_local_reg/C] -to [get_pins u_ddr/u_ddr_sdi_wr/w_loc_d_reg/D]
#set_property -from [get_pins u_ddr/u_NUC_coeff_wr/write_enable_local_reg/C] -to [get_pins u_ddr/u_NUC_coeff_wr/w_loc_d_reg/D]
#set_property -from [get_pins u_ddr/u_ddr_img_sdi_wr/write_enable_local_reg/C] -to [get_pins u_ddr/u_ddr_img_sdi_wr/w_loc_d_reg/D]

#set_property -from [get_pins uut_flash_to_mem/GainT_wr_en_reg/C] -to [get_pins u_ddr/u_NUC_coeff_wr/write_enable_d_reg/D]
#set_property -from [get_pins u_image_aquire/memo_lval_reg/C] -to [get_pins u_ddr/u_ddr_1nuc_wr/wr_lval_d_reg/D]

###############Video_Adopter_Board######################
set_property IOSTANDARD LVCMOS18  [get_ports main_clk_p] 
set_property PACKAGE_PIN K18  [get_ports main_clk_p]


###########  HD_SDI #############
#set_property IOSTANDARD LVCMOS18 [get_ports FAULT ]              
#set_property PACKAGE_PIN AB11 [get_ports FAULT ]    
         
set_property IOSTANDARD LVCMOS33 [ get_ports C_A_DET ]          
set_property PACKAGE_PIN C15 [ get_ports C_A_DET ]
          
set_property IOSTANDARD LVCMOS33 [ get_ports C_B_DET ]           
set_property PACKAGE_PIN A13 [ get_ports C_B_DET ]           
                   
#set_property IOSTANDARD LVCMOS18 [get_ports EN_EQ   ]           
#set_property PACKAGE_PIN AA10 [get_ports EN_EQ   ] 
         
set_property IOSTANDARD LVCMOS33 [get_ports LOS_CTRL]           
set_property PACKAGE_PIN A14 [get_ports LOS_CTRL] 
          
#set_property IOSTANDARD  LVCMOS18 [get_ports HD_SD ]           
#set_property PACKAGE_PIN AA11 [get_ports HD_SD   ]           
                    
set_property PACKAGE_PIN F6 [get_ports SFP_MGT_CLK0_C_P]
set_property PACKAGE_PIN E6 [get_ports SFP_MGT_CLK0_C_N]    

#set_property PACKAGE_PIN F10 [get_ports SFP_MGT_CLK1_C_P]
#set_property PACKAGE_PIN E10 [get_ports SFP_MGT_CLK1_C_N]
    
set_property PACKAGE_PIN B4 [get_ports FMC1_HPC_DP0_C2M_P]                   
set_property PACKAGE_PIN A4 [get_ports FMC1_HPC_DP0_C2M_N] 

#set_property PACKAGE_PIN A8 [get_ports FMC1_HPC_DP0_M2C_N]   
#set_property PACKAGE_PIN B8 [get_ports FMC1_HPC_DP0_M2C_P] 

#set_property IOSTANDARD LVCMOS25 [get_ports MGT_CLK_EN ]
#set_property PACKAGE_PIN F4 [get_ports MGT_CLK_EN ]

  


































