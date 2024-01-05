#------------------------------------------------------------------------------
#   ____  ____
#  /   /\/   /
# /___/  \  /    Vendor: Xilinx
# \   \   \/     Version: $Revision: #1 $
#  \   \         
#  /   /         Filename: $File: //Groups/video_ip/demos/A7/xapp1097_a7_sdi_demos/Verilog/ac701_sdi_demo/ac701_sdi_demo_timing.xdc $
# /___/   /\     Timestamp: $DateTime: 2013/09/30 13:31:35 $
# \   \  /  \
#  \___\/\___\
#
# Description:
#   This is the Vivado timing constraints file for the AC701 SDI demo.
#------------------------------------------------------------------------------
create_clock -name mgtclk1 -period 6.667 -waveform {0.0000 3.333} [get_nets SFP_MGT_CLK0_C_P] 
#create_clock -name mgtclk2 -period 6.667 -waveform {0.0000 3.333} [get_nets SFP_MGT_CLK1_C_P]
create_clock -name clk_27M -period 37 -waveform {0.0000 18.5000} [get_nets {clk_27M}]
create_clock -name tx0_outclk -period 6.667 -waveform {0.0000 3.333} [get_nets tx0_outclk]
create_clock -name tx1_outclk -period 6.667 -waveform {0.0000 3.333} [get_nets tx1_outclk]
create_clock -name rx0_outclk -period 6.667 -waveform {0.0000 3.333} [get_nets rx0_outclk]
create_clock -name rx1_outclk -period 6.667 -waveform {0.0000 3.333} [get_nets rx1_outclk]

set_clock_groups -asynchronous -group {mgtclk1} -group {mgtclk2} -group {tx0_outclk}\
-group {tx1_outclk} -group {rx0_outclk} -group {rx1_outclk} -group {clk_27M}
