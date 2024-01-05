


set_property IOSTANDARD LVCMOS18 [get_ports  sys_clk_p]
set_property PACKAGE_PIN  R13 [get_ports  sys_clk_p]
#set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets u_clk/inst/clk_in1_clk_wiz_0]


set_property IOSTANDARD LVCMOS18 [get_ports  clk_32]
set_property PACKAGE_PIN  R14 [get_ports  clk_32]


#set_property IOSTANDARD LVCMOS18 [get_ports   cyp_clk]
#set_property PACKAGE_PIN F13 [get_ports   cyp_clk]

                        
set_property IOSTANDARD LVCMOS18 [get_ports   lv]
set_property PACKAGE_PIN  P15  [get_ports   lv]

set_property IOSTANDARD LVCMOS18 [get_ports   fv]
set_property PACKAGE_PIN  P14  [get_ports   fv]

set_property IOSTANDARD LVCMOS18 [get_ports   clk]
set_property PACKAGE_PIN N12 [get_ports   clk]

set_property IOSTANDARD LVCMOS18 [get_ports   reset_in]
set_property PACKAGE_PIN  R5 [get_ports   reset_in] 
set_property PULLDOWN true [get_ports   reset_in] 



set_property IOSTANDARD LVCMOS18 [get_ports  {databus[0]} ]
set_property PACKAGE_PIN  L13  [get_ports   {databus[0]} ]

set_property IOSTANDARD LVCMOS18 [get_ports {databus[1]}   ]
set_property PACKAGE_PIN  M9  [get_ports   {databus[1]} ]

set_property IOSTANDARD LVCMOS18 [get_ports {databus[2]}   ]
set_property PACKAGE_PIN  M10  [get_ports   {databus[2]} ]

set_property IOSTANDARD LVCMOS18 [get_ports  {databus[3]}  ]
set_property PACKAGE_PIN  K14  [get_ports  {databus[3]}  ]

set_property IOSTANDARD LVCMOS18 [get_ports  {databus[4]}  ]
set_property PACKAGE_PIN  K15  [get_ports   {databus[4]} ]

set_property IOSTANDARD LVCMOS18 [get_ports   {databus[5]} ]
set_property PACKAGE_PIN  N14 [get_ports   {databus[5]} ]

set_property IOSTANDARD LVCMOS18 [get_ports  {databus[6]}  ]
set_property PACKAGE_PIN J11  [get_ports  {databus[6]}  ]

set_property IOSTANDARD LVCMOS18 [get_ports   {databus[7]} ]
set_property PACKAGE_PIN  L14 [get_ports   {databus[7]} ]





set_property IOSTANDARD LVCMOS18 [get_ports  {databus[8]} ]
set_property PACKAGE_PIN L10  [get_ports   {databus[8]} ]

set_property IOSTANDARD LVCMOS18 [get_ports {databus[9]}   ]
set_property PACKAGE_PIN M14  [get_ports   {databus[9]} ]

set_property IOSTANDARD LVCMOS18 [get_ports {databus[10]}   ]
set_property PACKAGE_PIN  J15  [get_ports   {databus[10]} ]

set_property IOSTANDARD LVCMOS18 [get_ports  {databus[11]}  ]
set_property PACKAGE_PIN K12  [get_ports  {databus[11]}  ]

set_property IOSTANDARD LVCMOS18 [get_ports  {databus[12]}  ]
set_property PACKAGE_PIN L12  [get_ports   {databus[12]} ]

set_property IOSTANDARD LVCMOS18 [get_ports   {databus[13]} ]
set_property PACKAGE_PIN  M13 [get_ports   {databus[13]} ]

set_property IOSTANDARD LVCMOS18 [get_ports  {databus[14]}  ]
set_property PACKAGE_PIN N13  [get_ports  {databus[14]}  ]

set_property IOSTANDARD LVCMOS18 [get_ports   {databus[15]} ]
set_property PACKAGE_PIN  L15 [get_ports   {databus[15]} ]


set_property IOSTANDARD LVCMOS18 [get_ports  reset_out ]
set_property PACKAGE_PIN   R7  [get_ports   reset_out ]

##set_property IOSTANDARD LVCMOS33 [get_ports  EPROM_SCL ]
##set_property PACKAGE_PIN   B5  [get_ports   EPROM_SCL ]

##set_property IOSTANDARD LVCMOS33 [get_ports  EPROM_SDA ]
##set_property PACKAGE_PIN   C5  [get_ports   EPROM_SDA ]

###############Sony Block Interface ###############

#set_property IOSTANDARD DIFF_HSTL_I_33 [get_ports tx_clk_p]
#set_property IOSTANDARD DIFF_HSTL_I_33 [get_ports tx_clk_n]


#set_property IOSTANDARD LVCMOS18 [get_ports  cam_reset ]
#set_property PACKAGE_PIN   M10  [get_ports   cam_reset ]



set_property IOSTANDARD LVDS_25 [get_ports tx_clk_p]
set_property IOSTANDARD LVDS_25 [get_ports tx_clk_n]

set_property PACKAGE_PIN H1 [get_ports tx_clk_p]
set_property PACKAGE_PIN G1 [get_ports tx_clk_n]


set_property IOSTANDARD LVDS_25 [get_ports tx_out0_p]
set_property IOSTANDARD LVDS_25 [get_ports tx_out0_n]

set_property PACKAGE_PIN F2 [get_ports tx_out0_p]
set_property PACKAGE_PIN F1 [get_ports tx_out0_n]


set_property IOSTANDARD LVDS_25 [get_ports tx_out1_p]
set_property IOSTANDARD LVDS_25 [get_ports tx_out1_n]

set_property PACKAGE_PIN D2 [get_ports tx_out1_p]
set_property PACKAGE_PIN D1 [get_ports tx_out1_n]


set_property IOSTANDARD LVDS_25 [get_ports tx_out2_p]
set_property IOSTANDARD LVDS_25 [get_ports tx_out2_n]
set_property PACKAGE_PIN C1 [get_ports tx_out2_p]
set_property PACKAGE_PIN B1 [get_ports tx_out2_n]

set_property IOSTANDARD LVDS_25 [get_ports tx_out3_p]
set_property IOSTANDARD LVDS_25 [get_ports tx_out3_n]
set_property PACKAGE_PIN B2 [get_ports tx_out3_p]
set_property PACKAGE_PIN A2 [get_ports tx_out3_n]



set_property IOSTANDARD LVDS_25 [get_ports tx_out4_p]
set_property IOSTANDARD LVDS_25 [get_ports tx_out4_n]
set_property PACKAGE_PIN R2 [get_ports tx_out4_p]
set_property PACKAGE_PIN P2 [get_ports tx_out4_n]


set_property IOSTANDARD LVDS_25 [get_ports tx_out5_p]
set_property IOSTANDARD LVDS_25 [get_ports tx_out5_n]
set_property PACKAGE_PIN P1 [get_ports tx_out5_p]
set_property PACKAGE_PIN N1 [get_ports tx_out5_n]

set_property IOSTANDARD LVDS_25 [get_ports tx_out6_p]
set_property IOSTANDARD LVDS_25 [get_ports tx_out6_n]
set_property PACKAGE_PIN M1 [get_ports tx_out6_p]
set_property PACKAGE_PIN L1 [get_ports tx_out6_n]


set_property IOSTANDARD LVDS_25 [get_ports tx_out7_p]
set_property IOSTANDARD LVDS_25 [get_ports tx_out7_n]
set_property PACKAGE_PIN K1 [get_ports tx_out7_p]


set_property IOSTANDARD LVCMOS18 [get_ports UART_RX]
set_property PACKAGE_PIN N6 [get_ports UART_RX]   

set_property IOSTANDARD LVCMOS18 [get_ports UART_TX]
set_property PACKAGE_PIN P6 [get_ports UART_TX] 


set_property IOSTANDARD LVCMOS33 [get_ports W_BAR]
set_property PACKAGE_PIN A4 [get_ports W_BAR]


#set_property IOSTANDARD LVCMOS18 [get_ports clk_flash]
#set_property PACKAGE_PIN F5 [get_ports clk_flash]

set_property IOSTANDARD LVCMOS18 [get_ports flash_cs]
set_property PACKAGE_PIN L11 [get_ports flash_cs]

set_property IOSTANDARD LVCMOS18 [get_ports flash_fq0]
set_property PACKAGE_PIN H14 [get_ports flash_fq0]

set_property IOSTANDARD LVCMOS18 [get_ports flash_fq1]
set_property PACKAGE_PIN H15 [get_ports flash_fq1]


set_property IOSTANDARD LVCMOS18 [get_ports flash_fq2]
set_property PACKAGE_PIN J12 [get_ports flash_fq2]

set_property PULLUP true [get_ports flash_fq3]
set_property IOSTANDARD LVCMOS18 [get_ports flash_fq3]
set_property PACKAGE_PIN K13 [get_ports flash_fq3]

#set_property BITSTREAM.CONFIG.CONFIGRATE 33 [current_design]
#set_property CONFIG_VOLTAGE 1.8 [current_design]
#set_property CFGBVS GND [current_design]
#set_property BITSTREAM.CONFIG.SPI_BUSWIDTH 4 [current_design] 
#set_property CONFIG_MODE SPIx4 [current_design]
#set_property LOC STARTUP_X0Y0 [get_cells STARTUPE2_inst]

##set_property BITSTREAM.CONFIG.SPI_BUSWIDTH 4 [current_design]
##set_property BITSTREAM.CONFIG.CONFIGFALLBACK ENABLE [current_design]
##set_property BITSTREAM.CONFIG.SPI_32BIT_ADDR YES [current_design] 
##set_property BITSTREAM.CONFIG.TIMER_CFG 32'h000FFFFF [current_design]



######For Golden File generation ###############

 
#########--------------Gold-----------------####  Comment for Update File Generation
#set_property BITSTREAM.CONFIG.NEXT_CONFIG_ADDR 32'h000A0000 [current_design]
##set_property BITSTREAM.CONFIG.NEXT_CONFIG_REBOOT ENABLE [current_design] 
 
 


set_property CONFIG_VOLTAGE 1.8 [current_design]
set_property CFGBVS GND [current_design]
set_property BITSTREAM.CONFIG.SPI_FALL_EDGE YES [current_design]
set_property CONFIG_MODE SPIx4 [current_design]
set_property LOC STARTUP_X0Y0 [get_cells STARTUPE2_inst]

#######--------------Golden-----------------####
set_property BITSTREAM.CONFIG.NEXT_CONFIG_ADDR 32'h000A0000 [current_design]
set_property BITSTREAM.CONFIG.NEXT_CONFIG_REBOOT ENABLE [current_design]
set_property BITSTREAM.CONFIG.SPI_32BIT_ADDR NO [current_design]
set_property BITSTREAM.CONFIG.SPI_BUSWIDTH 4 [current_design]
set_property BITSTREAM.CONFIG.CONFIGFALLBACK ENABLE [current_design]
###########--------------Update-----------------####
#set_property BITSTREAM.CONFIG.CONFIGFALLBACK ENABLE [current_design]
#set_property BITSTREAM.CONFIG.SPI_32BIT_ADDR NO [current_design]
#set_property BITSTREAM.CONFIG.SPI_BUSWIDTH 4 [current_design]
#set_property BITSTREAM.CONFIG.TIMER_CFG 32'h000FFFFF [current_design]

set_property BITSTREAM.CONFIG.CONFIGRATE 20 [current_design]
