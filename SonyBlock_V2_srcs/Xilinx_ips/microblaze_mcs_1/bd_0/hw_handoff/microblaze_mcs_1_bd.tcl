
################################################################
# This is a generated script based on design: bd_3c9d_0
#
# Though there are limitations about the generated script,
# the main purpose of this utility is to make learning
# IP Integrator Tcl commands easier.
################################################################

namespace eval _tcl {
proc get_script_folder {} {
   set script_path [file normalize [info script]]
   set script_folder [file dirname $script_path]
   return $script_folder
}
}
variable script_folder
set script_folder [_tcl::get_script_folder]

################################################################
# Check if script is running in correct Vivado version.
################################################################
set scripts_vivado_version 2018.2
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   catch {common::send_msg_id "BD_TCL-109" "ERROR" "This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_bd_tcl to create an updated script."}

   return 1
}

################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source bd_3c9d_0_script.tcl

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xc7s15csga225-2
}


# CHANGE DESIGN NAME HERE
variable design_name
set design_name bd_3c9d_0

# If you do not already have an existing IP Integrator design open,
# you can create a design using the following command:
#    create_bd_design $design_name

# Creating design if needed
set errMsg ""
set nRet 0

set cur_design [current_bd_design -quiet]
set list_cells [get_bd_cells -quiet]

if { ${design_name} eq "" } {
   # USE CASES:
   #    1) Design_name not set

   set errMsg "Please set the variable <design_name> to a non-empty value."
   set nRet 1

} elseif { ${cur_design} ne "" && ${list_cells} eq "" } {
   # USE CASES:
   #    2): Current design opened AND is empty AND names same.
   #    3): Current design opened AND is empty AND names diff; design_name NOT in project.
   #    4): Current design opened AND is empty AND names diff; design_name exists in project.

   if { $cur_design ne $design_name } {
      common::send_msg_id "BD_TCL-001" "INFO" "Changing value of <design_name> from <$design_name> to <$cur_design> since current design is empty."
      set design_name [get_property NAME $cur_design]
   }
   common::send_msg_id "BD_TCL-002" "INFO" "Constructing design in IPI design <$cur_design>..."

} elseif { ${cur_design} ne "" && $list_cells ne "" && $cur_design eq $design_name } {
   # USE CASES:
   #    5) Current design opened AND has components AND same names.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 1
} elseif { [get_files -quiet ${design_name}.bd] ne "" } {
   # USE CASES: 
   #    6) Current opened design, has components, but diff names, design_name exists in project.
   #    7) No opened design, design_name exists in project.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 2

} else {
   # USE CASES:
   #    8) No opened design, design_name not in project.
   #    9) Current opened design, has components, but diff names, design_name not in project.

   common::send_msg_id "BD_TCL-003" "INFO" "Currently there is no design <$design_name> in project, so creating one..."

   create_bd_design -bdsource SBD $design_name

   common::send_msg_id "BD_TCL-004" "INFO" "Making design <$design_name> as current_bd_design."
   current_bd_design $design_name

}

common::send_msg_id "BD_TCL-005" "INFO" "Currently the variable <design_name> is equal to \"$design_name\"."

if { $nRet != 0 } {
   catch {common::send_msg_id "BD_TCL-114" "ERROR" $errMsg}
   return $nRet
}

##################################################################
# DESIGN PROCs
##################################################################



# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  variable script_folder
  variable design_name

  if { $parentCell eq "" } {
     set parentCell [get_bd_cells /]
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj


  # Create interface ports
  set GPIO1 [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:gpio_rtl:1.0 GPIO1 ]
  set_property -dict [ list \
   CONFIG.C_GPI1_INTERRUPT {2} \
   CONFIG.C_GPI1_SIZE {8} \
   CONFIG.C_GPO1_INIT {0x00000000} \
   CONFIG.C_GPO1_SIZE {8} \
   CONFIG.C_USE_GPI1 {1} \
   CONFIG.C_USE_GPO1 {1} \
   ] $GPIO1
  set IO [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:mcsio_bus_rtl:1.0 IO ]
  set UART [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:uart_rtl:1.0 UART ]

  # Create ports
  set Clk [ create_bd_port -dir I -type clk Clk ]
  set_property -dict [ list \
   CONFIG.ASSOCIATED_ASYNC_RESET {Reset} \
   CONFIG.FREQ_HZ {100000000} \
 ] $Clk
  set GPI1_Interrupt [ create_bd_port -dir O -type intr GPI1_Interrupt ]
  set_property -dict [ list \
   CONFIG.SENSITIVITY {EDGE_RISING} \
 ] $GPI1_Interrupt
  set INTC_IRQ [ create_bd_port -dir O -type intr INTC_IRQ ]
  set Reset [ create_bd_port -dir I -type rst Reset ]
  set_property -dict [ list \
   CONFIG.POLARITY {ACTIVE_HIGH} \
 ] $Reset
  set UART_Interrupt [ create_bd_port -dir O -type intr UART_Interrupt ]
  set_property -dict [ list \
   CONFIG.SENSITIVITY {EDGE_RISING} \
 ] $UART_Interrupt

  # Create instance: dlmb, and set properties
  set dlmb [ create_bd_cell -type ip -vlnv xilinx.com:ip:lmb_v10:3.0 dlmb ]
  set_property -dict [ list \
   CONFIG.C_LMB_NUM_SLAVES {2} \
 ] $dlmb

  # Create instance: dlmb_cntlr, and set properties
  set dlmb_cntlr [ create_bd_cell -type ip -vlnv xilinx.com:ip:lmb_bram_if_cntlr:4.0 dlmb_cntlr ]
  set_property -dict [ list \
   CONFIG.C_MASK {0x00000000C0000000} \
 ] $dlmb_cntlr

  # Create instance: ilmb, and set properties
  set ilmb [ create_bd_cell -type ip -vlnv xilinx.com:ip:lmb_v10:3.0 ilmb ]

  # Create instance: ilmb_cntlr, and set properties
  set ilmb_cntlr [ create_bd_cell -type ip -vlnv xilinx.com:ip:lmb_bram_if_cntlr:4.0 ilmb_cntlr ]
  set_property -dict [ list \
   CONFIG.C_MASK {0x0000000080000000} \
 ] $ilmb_cntlr

  # Create instance: iomodule_0, and set properties
  set iomodule_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:iomodule:3.1 iomodule_0 ]
  set_property -dict [ list \
   CONFIG.C_GPI1_INTERRUPT {2} \
   CONFIG.C_GPI1_SIZE {8} \
   CONFIG.C_GPO1_SIZE {8} \
   CONFIG.C_INSTANCE {iomodule} \
   CONFIG.C_INTC_ADDR_WIDTH {15} \
   CONFIG.C_INTC_HAS_FAST {1} \
   CONFIG.C_INTC_USE_IRQ_OUT {1} \
   CONFIG.C_IO_MASK {0x00000000C0000000} \
   CONFIG.C_MASK {0x00000000C0000000} \
   CONFIG.C_UART_BAUDRATE {115200} \
   CONFIG.C_UART_ERROR_INTERRUPT {1} \
   CONFIG.C_UART_RX_INTERRUPT {1} \
   CONFIG.C_UART_TX_INTERRUPT {1} \
   CONFIG.C_USE_GPI1 {1} \
   CONFIG.C_USE_GPO1 {1} \
   CONFIG.C_USE_IO_BUS {1} \
   CONFIG.C_USE_UART_RX {1} \
   CONFIG.C_USE_UART_TX {1} \
 ] $iomodule_0

  # Create instance: lmb_bram_I, and set properties
  set lmb_bram_I [ create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen:8.4 lmb_bram_I ]
  set_property -dict [ list \
   CONFIG.Memory_Type {True_Dual_Port_RAM} \
 ] $lmb_bram_I

  # Create instance: microblaze_I, and set properties
  set microblaze_I [ create_bd_cell -type ip -vlnv xilinx.com:ip:microblaze:10.0 microblaze_I ]
  set_property -dict [ list \
   CONFIG.C_AREA_OPTIMIZED {1} \
   CONFIG.C_ASYNC_WAKEUP {3} \
   CONFIG.C_DEBUG_ENABLED {0} \
   CONFIG.C_FAULT_TOLERANT {0} \
   CONFIG.C_INSTANCE {mb_microblaze_0} \
   CONFIG.C_NUMBER_OF_PC_BRK {1} \
   CONFIG.C_PC_WIDTH {15} \
   CONFIG.C_USE_EXT_BRK {0} \
   CONFIG.C_USE_EXT_NM_BRK {0} \
   CONFIG.C_USE_INTERRUPT {2} \
   CONFIG.C_USE_REORDER_INSTR {0} \
 ] $microblaze_I

  # Create instance: rst_0, and set properties
  set rst_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 rst_0 ]

  # Create interface connections
  connect_bd_intf_net -intf_net dlmb [get_bd_intf_pins dlmb/LMB_M] [get_bd_intf_pins microblaze_I/DLMB]
  connect_bd_intf_net -intf_net dlmb_port [get_bd_intf_pins dlmb_cntlr/BRAM_PORT] [get_bd_intf_pins lmb_bram_I/BRAM_PORTA]
  connect_bd_intf_net -intf_net dlmb_sl_0 [get_bd_intf_pins dlmb/LMB_Sl_0] [get_bd_intf_pins dlmb_cntlr/SLMB]
  connect_bd_intf_net -intf_net dlmb_sl_1 [get_bd_intf_pins dlmb/LMB_Sl_1] [get_bd_intf_pins iomodule_0/SLMB]
  connect_bd_intf_net -intf_net ilmb [get_bd_intf_pins ilmb/LMB_M] [get_bd_intf_pins microblaze_I/ILMB]
  connect_bd_intf_net -intf_net ilmb_port [get_bd_intf_pins ilmb_cntlr/BRAM_PORT] [get_bd_intf_pins lmb_bram_I/BRAM_PORTB]
  connect_bd_intf_net -intf_net ilmb_sl_0 [get_bd_intf_pins ilmb/LMB_Sl_0] [get_bd_intf_pins ilmb_cntlr/SLMB]
  connect_bd_intf_net -intf_net iomodule_0_GPIO1 [get_bd_intf_ports GPIO1] [get_bd_intf_pins iomodule_0/GPIO1]
  connect_bd_intf_net -intf_net iomodule_0_INTC_Irq [get_bd_intf_pins iomodule_0/INTC_Irq] [get_bd_intf_pins microblaze_I/INTERRUPT]
  connect_bd_intf_net -intf_net iomodule_0_IO [get_bd_intf_ports IO] [get_bd_intf_pins iomodule_0/IO_BUS]
  connect_bd_intf_net -intf_net iomodule_0_UART [get_bd_intf_ports UART] [get_bd_intf_pins iomodule_0/UART]

  # Create port connections
  connect_bd_net -net Clk1 [get_bd_ports Clk] [get_bd_pins dlmb/LMB_Clk] [get_bd_pins dlmb_cntlr/LMB_Clk] [get_bd_pins ilmb/LMB_Clk] [get_bd_pins ilmb_cntlr/LMB_Clk] [get_bd_pins iomodule_0/Clk] [get_bd_pins microblaze_I/Clk] [get_bd_pins rst_0/slowest_sync_clk]
  connect_bd_net -net GPI1_Interrupt [get_bd_ports GPI1_Interrupt] [get_bd_pins iomodule_0/GPI1_Interrupt]
  connect_bd_net -net INTC_Irq_Out [get_bd_ports INTC_IRQ] [get_bd_pins iomodule_0/INTC_IRQ_OUT]
  connect_bd_net -net IO_Rst [get_bd_pins iomodule_0/Rst] [get_bd_pins rst_0/peripheral_reset]
  connect_bd_net -net LMB_Rst1 [get_bd_pins dlmb/SYS_Rst] [get_bd_pins dlmb_cntlr/LMB_Rst] [get_bd_pins ilmb/SYS_Rst] [get_bd_pins ilmb_cntlr/LMB_Rst] [get_bd_pins rst_0/bus_struct_reset]
  connect_bd_net -net MB_Reset [get_bd_pins microblaze_I/Reset] [get_bd_pins rst_0/mb_reset]
  connect_bd_net -net Reset [get_bd_ports Reset] [get_bd_pins rst_0/ext_reset_in]
  connect_bd_net -net UART_Interrupt [get_bd_ports UART_Interrupt] [get_bd_pins iomodule_0/UART_Interrupt]

  # Create address segments
  create_bd_addr_seg -range 0x00008000 -offset 0x00000000 [get_bd_addr_spaces microblaze_I/Data] [get_bd_addr_segs dlmb_cntlr/SLMB/Mem] SEG_dlmb_cntlr_Mem
  create_bd_addr_seg -range 0x00008000 -offset 0x00000000 [get_bd_addr_spaces microblaze_I/Instruction] [get_bd_addr_segs ilmb_cntlr/SLMB/Mem] SEG_ilmb_cntlr_Mem
  create_bd_addr_seg -range 0x40000000 -offset 0xC0000000 [get_bd_addr_spaces microblaze_I/Data] [get_bd_addr_segs iomodule_0/SLMB/IO] SEG_iomodule_0_IO
  create_bd_addr_seg -range 0x00010000 -offset 0x80000000 [get_bd_addr_spaces microblaze_I/Data] [get_bd_addr_segs iomodule_0/SLMB/Reg] SEG_iomodule_0_Reg


  # Restore current instance
  current_bd_instance $oldCurInst

  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


