#------------------------------------------------------------------------------
#   ____  ____
#  /   /\/   /
# /___/  \  /    Vendor: Xilinx
# \   \   \/     Version: $Revision: #1 $
#  \   \         
#  /   /         Filename: $File: //Groups/video_ip/demos/A7/xapp1097_a7_sdi_demos/Verilog/ac701_sdi_pass_demo/ac701_sdi_pass.xdc $
# /___/   /\     Timestamp: $DateTime: 2013/09/30 13:31:35 $
# \   \  /  \
#  \___\/\___\
#
# Description:
#   This is the Vivado constraints file defining the location of all pins used
#   in the AC701 SDI pass-through demo.
#------------------------------------------------------------------------------

set_property PACKAGE_PIN AE9     [get_ports FMC1_HPC_DP0_C2M_P]
set_property PACKAGE_PIN AE13    [get_ports FMC1_HPC_DP0_M2C_P]

set_property PACKAGE_PIN B26     [get_ports SFP_MGT_CLK_SEL0]
set_property IOSTANDARD LVCMOS25 [get_ports SFP_MGT_CLK_SEL0]
set_property PACKAGE_PIN C24     [get_ports SFP_MGT_CLK_SEL1]
set_property IOSTANDARD LVCMOS25 [get_ports SFP_MGT_CLK_SEL1]
set_property PACKAGE_PIN A24     [get_ports PCIE_MGT_CLK_SEL0]
set_property IOSTANDARD LVCMOS25 [get_ports PCIE_MGT_CLK_SEL0]
set_property PACKAGE_PIN C26     [get_ports PCIE_MGT_CLK_SEL1]
set_property IOSTANDARD LVCMOS25 [get_ports PCIE_MGT_CLK_SEL1]

set_property PACKAGE_PIN D19     [get_ports FMC1_HPC_CLK0_M2C_P]
set_property PACKAGE_PIN E17     [get_ports FMC1_HPC_LA01_CC_P]
set_property IOSTANDARD LVCMOS25 [get_ports FMC1_HPC_LA01_CC_P]
set_property PACKAGE_PIN E18     [get_ports FMC1_HPC_LA01_CC_N]
set_property IOSTANDARD LVCMOS25 [get_ports FMC1_HPC_LA01_CC_N]

set_property PACKAGE_PIN G15     [get_ports FMC1_HPC_LA05_P]
set_property IOSTANDARD LVCMOS25 [get_ports FMC1_HPC_LA05_P]
set_property PACKAGE_PIN F15     [get_ports FMC1_HPC_LA05_N]
set_property IOSTANDARD LVCMOS25 [get_ports FMC1_HPC_LA05_N]

set_property PACKAGE_PIN E16     [get_ports FMC1_HPC_LA09_P]
set_property IOSTANDARD LVCMOS25 [get_ports FMC1_HPC_LA09_P]
set_property PACKAGE_PIN D16     [get_ports FMC1_HPC_LA09_N]
set_property IOSTANDARD LVCMOS25 [get_ports FMC1_HPC_LA09_N]

set_property PACKAGE_PIN B20     [get_ports FMC1_HPC_LA13_P]
set_property IOSTANDARD LVCMOS25 [get_ports FMC1_HPC_LA13_P]
set_property PACKAGE_PIN A20     [get_ports FMC1_HPC_LA13_N]
set_property IOSTANDARD LVCMOS25 [get_ports FMC1_HPC_LA13_N]

set_property PACKAGE_PIN K21     [get_ports FMC1_HPC_LA17_CC_P]
set_property IOSTANDARD LVCMOS25 [get_ports FMC1_HPC_LA17_CC_P]

set_property PACKAGE_PIN G19     [get_ports FMC1_HPC_LA06_P]
set_property IOSTANDARD LVCMOS25 [get_ports FMC1_HPC_LA06_P]
set_property PACKAGE_PIN F20     [get_ports FMC1_HPC_LA06_N]
set_property IOSTANDARD LVCMOS25 [get_ports FMC1_HPC_LA06_N]

set_property PACKAGE_PIN A17     [get_ports FMC1_HPC_LA10_P]
set_property IOSTANDARD LVCMOS25 [get_ports FMC1_HPC_LA10_P]
set_property PACKAGE_PIN A18     [get_ports FMC1_HPC_LA10_N]
set_property IOSTANDARD LVCMOS25 [get_ports FMC1_HPC_LA10_N]

set_property PACKAGE_PIN C21     [get_ports FMC1_HPC_LA14_P]
set_property IOSTANDARD LVCMOS25 [get_ports FMC1_HPC_LA14_P]
set_property PACKAGE_PIN B21     [get_ports FMC1_HPC_LA14_N]
set_property IOSTANDARD LVCMOS25 [get_ports FMC1_HPC_LA14_N]

set_property PACKAGE_PIN G20     [get_ports FMC1_HPC_LA18_CC_P]
set_property IOSTANDARD LVCMOS25 [get_ports FMC1_HPC_LA18_CC_P]
set_property PACKAGE_PIN G21     [get_ports FMC1_HPC_LA18_CC_N]
set_property IOSTANDARD LVCMOS25 [get_ports FMC1_HPC_LA18_CC_N]

set_property PACKAGE_PIN B19     [get_ports FMC1_HPC_LA11_P]
set_property IOSTANDARD LVCMOS25 [get_ports FMC1_HPC_LA11_P]
set_property PACKAGE_PIN A19     [get_ports FMC1_HPC_LA11_N]
set_property IOSTANDARD LVCMOS25 [get_ports FMC1_HPC_LA11_N]

set_property PACKAGE_PIN B22     [get_ports FMC1_HPC_LA15_P]
set_property IOSTANDARD LVCMOS25 [get_ports FMC1_HPC_LA15_P]
set_property PACKAGE_PIN A22     [get_ports FMC1_HPC_LA15_N]
set_property IOSTANDARD LVCMOS25 [get_ports FMC1_HPC_LA15_N]

set_property PACKAGE_PIN D20     [get_ports FMC1_HPC_LA12_N]
set_property IOSTANDARD LVCMOS25 [get_ports FMC1_HPC_LA12_N]

set_property PACKAGE_PIN E21     [get_ports FMC1_HPC_LA16_P]
set_property IOSTANDARD LVCMOS25 [get_ports FMC1_HPC_LA16_P]
set_property PACKAGE_PIN D21     [get_ports FMC1_HPC_LA16_N]
set_property IOSTANDARD LVCMOS25 [get_ports FMC1_HPC_LA16_N]

set_property PACKAGE_PIN M16     [get_ports FMC1_HPC_LA20_P]
set_property IOSTANDARD LVCMOS25 [get_ports FMC1_HPC_LA20_P]

set_property PACKAGE_PIN L23     [get_ports LCD_RS_LS]
set_property IOSTANDARD LVCMOS33 [get_ports LCD_RS_LS]
set_property PACKAGE_PIN L22     [get_ports LCD_DB7_LS]
set_property IOSTANDARD LVCMOS33 [get_ports LCD_DB7_LS]
set_property PACKAGE_PIN M25     [get_ports LCD_DB6_LS]
set_property IOSTANDARD LVCMOS33 [get_ports LCD_DB6_LS]
set_property PACKAGE_PIN M24     [get_ports LCD_DB5_LS]
set_property IOSTANDARD LVCMOS33 [get_ports LCD_DB5_LS]
set_property PACKAGE_PIN L25     [get_ports LCD_DB4_LS]
set_property IOSTANDARD LVCMOS33 [get_ports LCD_DB4_LS]
set_property PACKAGE_PIN L24     [get_ports LCD_RW_LS]
set_property IOSTANDARD LVCMOS33 [get_ports LCD_RW_LS]
set_property PACKAGE_PIN L20     [get_ports LCD_E_LS]
set_property IOSTANDARD LVCMOS33 [get_ports LCD_E_LS]

set_property PACKAGE_PIN U6      [get_ports GPIO_SW_C]
set_property IOSTANDARD LVCMOS15 [get_ports GPIO_SW_C]
set_property PACKAGE_PIN U5      [get_ports GPIO_SW_E]
set_property IOSTANDARD LVCMOS15 [get_ports GPIO_SW_E]
set_property PACKAGE_PIN P6      [get_ports GPIO_SW_N]
set_property IOSTANDARD LVCMOS15 [get_ports GPIO_SW_N]
set_property PACKAGE_PIN T5      [get_ports GPIO_SW_S]
set_property IOSTANDARD LVCMOS15 [get_ports GPIO_SW_S]
set_property PACKAGE_PIN R5      [get_ports GPIO_SW_W]
set_property IOSTANDARD LVCMOS15 [get_ports GPIO_SW_W]

set_property PACKAGE_PIN T8      [get_ports USER_SMA_GPIO_P]
set_property IOSTANDARD LVCMOS15 [get_ports USER_SMA_GPIO_P]

set_property PACKAGE_PIN B24     [get_ports SI5324_RST_LS_B]
set_property IOSTANDARD LVCMOS25 [get_ports SI5324_RST_LS_B] 

set_property PACKAGE_PIN N18     [get_ports IIC_SCL_MAIN]
set_property IOSTANDARD LVCMOS33 [get_ports IIC_SCL_MAIN]
set_property PACKAGE_PIN K25     [get_ports IIC_SDA_MAIN]
set_property IOSTANDARD LVCMOS33 [get_ports IIC_SDA_MAIN]
set_property PACKAGE_PIN R17     [get_ports IIC_MUX_RESET_B]
set_property IOSTANDARD LVCMOS33 [get_ports IIC_MUX_RESET_B]
set_property PACKAGE_PIN D23     [get_ports REC_CLOCK_C_P]

