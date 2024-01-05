*************************************************************************
   ____  ____ 
  /   /\/   / 
 /___/  \  /   
 \   \   \/    © Copyright 2012-2014 Xilinx, Inc. All rights reserved.
  \   \        This file contains confidential and proprietary 
  /   /        information of Xilinx, Inc. and is protected under U.S. 
 /___/   /\    and international copyright and other intellectual 
 \   \  /  \   property laws. 
  \___\/\___\ 
 
*************************************************************************

Vendor: Xilinx 
Current readme.txt Version: 1.1
Date Last Modified:  15APR2014
Date Created: 26JUL2013

Associated Filename: xapp1097.zip
Associated Document: XAPP1097, Implementing SMPTE SDI Interfaces with Artix-7 FPGA GTP Transceivers

Supported Device(s): Artix-7 FPGAs with GTP transceivers, -2 speed grade or faster
   
*************************************************************************

Disclaimer: 

      This disclaimer is not a license and does not grant any rights to 
      the materials distributed herewith. Except as otherwise provided in 
      a valid license issued to you by Xilinx, and to the maximum extent 
      permitted by applicable law: (1) THESE MATERIALS ARE MADE AVAILABLE 
      "AS IS" AND WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL 
      WARRANTIES AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, 
      INCLUDING BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, 
      NON-INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and 
      (2) Xilinx shall not be liable (whether in contract or tort, 
      including negligence, or under any other theory of liability) for 
      any loss or damage of any kind or nature related to, arising under 
      or in connection with these materials, including for any direct, or 
      any indirect, special, incidental, or consequential loss or damage 
      (including loss of data, profits, goodwill, or any type of loss or 
      damage suffered as a result of any action brought by a third party) 
      even if such damage or loss was reasonably foreseeable or Xilinx 
      had been advised of the possibility of the same.

Critical Applications:

      Xilinx products are not designed or intended to be fail-safe, or 
      for use in any application requiring fail-safe performance, such as 
      life-support or safety devices or systems, Class III medical 
      devices, nuclear facilities, applications related to the deployment 
      of airbags, or any other applications that could lead to death, 
      personal injury, or severe property or environmental damage 
      (individually and collectively, "Critical Applications"). Customer 
      assumes the sole risk and liability of any use of Xilinx products 
      in Critical Applications, subject only to applicable laws and 
      regulations governing limitations on product liability.

THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS PART OF THIS 
FILE AT ALL TIMES.

*************************************************************************

This readme file contains these sections:

1. REVISION HISTORY
2. OVERVIEW
3. SOFTWARE TOOLS AND SYSTEM REQUIREMENTS
4. DESIGN FILE HIERARCHY
5. INSTALLATION AND OPERATING INSTRUCTIONS
6. OTHER INFORMATION
7. SUPPORT


1. REVISION HISTORY 

            Readme  
Date        Version      Revision Description
=========================================================================
03OCT2013  1.0          Initial Xilinx release.
09APR2014  1.1          Changes made to SDI wrapper for more reliable GTP
                        dynamic RX line rate changes and startup.
=========================================================================



2. OVERVIEW

This readme describes how to use the files that come with XAPP1097.

There are two example SDI designs provided with XAPP1097. 

One design has two SDI receivers and two SDI transmitters. The receivers and 
transmitters are all independent of each other. The SDI transmitters are driven
by video pattern generators. The data received by the SDI receivers is captured
by ChipScope Pro modules.

The other design is a single channel SDI pass-through configuration where the
SDI transmitter retransmits the signal received by the SDI receiver.

3. SOFTWARE TOOLS AND SYSTEM REQUIREMENTS

* Vivado 2014.1 or higher

4. DESIGN FILE HIERARCHY

The directory structure underneath this top-level folder is described 
below:

\bit_files
 |   This folder contains FPGA configuration bit files for the demos included
 |   in this release.
 |
\chipscope_projects
 |   This folder contains project files for ChipScope Pro analyzer, 
 |   one .cpj file for each of the demos included in this release.
 |       
\Verilog
 |   The Verilog\ directory contain the Verilog source code for the Artix-7 SDI
 |   wrapper and associated logic required to interface the Artix-7 GTP 
 |   transceivers to the SMPTE SDI core and the source code for the demos 
 |   included in this release.
 |
 +-----\ac701_sdi_demo
 |         This directory contains the HDL and other files unique to the dual
 |         SDI demo.
 |           +--\chipscope
 |              Contains pregenerated chipscope modules.
 |
 +-----\ac701_sdi_pass_demo
 |         This directory contains the HDL and other files unique to the SDI 
 |         pass-through demo.
 |           +--\chipscope
 |              Contains pregenerated chipscope modules.
 |
 +-----\ac701_TEDSDI_control
 |         This directory contains the HDL and other files that are used by
 |         both demos to control devices on the AC701 and the inrevium SDI FMC 
 |         boards.
 |
 +----\a7gtp_sdi_wrapper
 |          This directory contains a pregenerated GTP wrapper used by both demos.
 |
 +-----\dru
 |         This directory contains the data recovery unit (DRU) code required
 |         to receive 270 Mb/s SD-SDI. The dru.ngc file contains the pre-
 |         synthesized DRU IP. It must be placed in the ISE project directory
 |         where the ISE tools can find it and include it in the design. The
 |         other HDL files in the \dru directory must be added to the ISE 
 |         project. 
 |           +--\for_simulation_only
 |              This directory contains a simple model of the DRU that can be
 |              used for simulation. The dru.ngc file cannot be simulated due to
 |              encryption of the file. The simulation model must not, however,
 |              be used in an actual FPGA configuration because it does not have
 |              any jitter tolerance.
 |
 +-----\SDI_wrapper
 |         This directory contains the HDL code for the SDI wrapper and its
 |         various submodules. The HDL files in this directory is used by both
 |         demos. These HDL files should be used in all SDI applications using 
 |         Artix-7 GTP transceivers to interface the SMPTE SDI core to the 
 |         Artix-7 GTP transceivers. The top level wrapper file named 
 |         a7gtp_sdi_rxtx_wrapper.v is for Vivado and the top level wrapper
 |         file named a7gtp_sdi_rxtx_wrapper_ise.v is for ISE projects.


5. INSTALLATION AND OPERATING INSTRUCTIONS 

Instructions for running the demos from the provided bit files are provided in
application note.

The instructions below describe how to build the demos from the supplied Verilog
source code.

When using Vivado to create the SDI demos, you have the choice of using either
ChipScope or Vivado Analyzer to control and monitor the demos. ChipScope is
recommended because, at this time, it provides a better user interface. In the
top level file of both demos there is a parameter named USE_CHIPSCOPE defined.
If this parameter's value is "TRUE", ChipScope modules will be included into the
project. If the parameter's value is anything else, Vivado Analyzer modules will
be included. Vivado 2013.3 and later doesn't have native support for ChipScope.
But, ChipScope can be used by generating the ChipScope modules in ISE and then
including the necessary files into the Vivado project. Pregenerated ChipScope
modules are included with these demos so you don't have to generate the
ChipScope modules, just include the correct files. Instructions are provided
for generating the demos using Vivado with both ChipScope and Vivado Analyzer.

To use ChipScope with these demos, ChipScope Pro analyzer needs to be installed
on the computer that will be connected to the AC701 board. You can download the 
free ISE 14.7 Lab Tools installation from the Xilinx web site to install ChipScope
Pro Analyzer.

--------------------------------------------------------------------------------

To build the Dual SDI demo (ac701_sdi_demo) with Vivado (2014.1 or later):
    
1) Launch Vivado and select Create New Project to launch the new project wizard.

2) On the Project Type screen, select RTL Project.

3) On the Add Sources screen:
    Add all of the .v files from the Verilog/ac701_sdi_demo directory.
    If you are using ChipScope to control & monitor the demo, Add all of the .v 
    and .ngc files from the Verilog/ac701_sdi_demo/chipscope directory.
    Add all of the .v files from the Verilog/a7gtp_sdi_wrapper directory.
    Add all of the .v files from the Verilog/SDI_wrapper directory except the file
    named a7gtp_sdi_rxtx_wrapper_ise.v. This file is for ISE projects only.
    Add all of the .v files from the ac701_TEDSDI_control directory.
    Add the a7_sdi_demo_name.txt file from the ac701_TEDSDI_control directory. Note
    that you will have to change the "file of type:" setting to "All Files" to
    see the .txt file.
    Add all of the .v files and the dru.ngc file from the Verilog/dru directory.
    (Do not include the files in the Verilog/dru/for_simulation_only directory.

4) Click Next to move to the Add Existing IP screen (do not add any existing IP)
and then Next again to move to the Add Constraints screen. The following files
should automatically have been added to your project. If they are not there,
add them from the Verilog/ac701_sdi_pass_demo and the Verilog/ac701_sdi_demo/chipscope
directories.
    ac701_sdi_demo_timing.xdc
    ac701_sdi_demo.xdc
  If using ChipScope, also include:
    vio.xdc
    tx_vio.xdc
    rx_vio.xdc
    ila.xdc
    icon.xdc

In addition, the EDH_timing_constraints.xdc file from the Verilog/SDI_wrapper
directory should be included with the project. More information on how to use
this XDC file is included in step 9.

5) Click Next to move the Default Part screen. When using the AC701 board, set 
the part to:
    xc7a200tfbg676-2

6) Click next to move to the summary page and then click Finish.

7) At the current time, portability of IP cores in Vivado is limited. Thus, the
following instructions should be followed to create all of the IP cores needed
by the demo from scratch using the IP Catalog. Open the IP Catalog either from
Windows > IP Catalog in the tool bar at the top of the Vivado GUI or by clicking
on IP Catalog under Project Manager in the Flow Navigator on the left side of
the Vivado GUI.

    7a) Generate a SMPTE SD/HD/3G-SDI core:
        In the IP Catalog window under the Video & Image Processing folder, locate
        the SMPTE SD/HD/3G-SDI core and double click on it. This will open the
        GUI for the SDI core. In the SDI core GUI, change the component name to 
        smpte_sdi. Make sure that the INCLUDE_RX_EDH_PROCESSOR attribute is set 
        to TRUE. Click the OK button to finish customizing the core and then,
        when it appears, click the Generate button.

    If you are using ChipScope to control & monitor the demo, skip to step 8.
    If you are using Vivado Analyzer, do steps 7b to 7e. Don't forget to edit
    the ac701_sdi_demo.v file to change the value of the USE_CHIPSCOPE parameter
    to something other than "TRUE" if using Vivado Analyzer.
     
    7b) Generate a Vivado Logic Analzyer VIO core:
        In the IP Catalog window under Debug & Verification > Debug, locate
        VIO and double click on it to launch the VIO customization window.
        
        Set the component name to vio0. The default name will be vio_0, so 
        simply remove the underscore. 
        
        In the General Options tab, set the Input Probe Count value to 7 and the
        Output Probe Count value to 0.

        In the PROBE_IN Ports(0..15) tab, set the width of PROBE_IN0 to 2 and
        leave all other PROBE_IN port widths to 1.

        Click on the OK button to finish customizing the core and then, when it
        appears, click the Generate button.
                
    7c) Generate a second Vivado Logic Analzyer VIO core:
        In the IP Catalog window under Debug & Verification > Debug, locate
        VIO and double click on it to launch the VIO customization window.
        
        Set the component name to tx_vio. 

        In the General Options tab, set the Input Probe Count value to 5 and
        the Output Probe Count value to 5.
        
        In the PROBE_IN Ports(0..15) tab, set the PROBE_IN4 port width to 3 and
        leave all other port widths at their default width of 1.

        In the PROBE_OUT Ports(0..15) tab, set the various ports to these widths:
            PROBE_OUT0 = 1
            PROBE_OUT1 = 1
            PROBE_OUT2 = 3
            PROBE_OUT3 = 2
            PROBE_OUT4 = 2

        It is also useful to set the Initial Value of the PROBE_OUT2 port to a
        value of 0x4. This defaults the video format to a format supported in
        all SDI modes.

        Click on the OK button to finish customizing the core and then, when it
        appears, click the Generate button.
        
    7d) Generate a third Vivado Logic Analzyer VIO core:
        In the IP Catalog window under Debug & Verification > Debug, locate
        VIO and double click on it to launch the VIO customization window.

        Set the component name to rx_vio. 

        In the General Options tab, set the Input Probe Count value to 18 and
        the Output Probe Count value to 2.
        
        In the PROBE_IN Ports(0..15) tab, set the PROBE_IN port widths to:
            PROBE_IN0 = 2
            PROBE_IN1 = 1
            PROBE_IN2 = 4
            PROBE_IN3 = 1
            PROBE_IN4 = 1
            PROBE_IN5 = 32
            PROBE_IN6 = 1
            PROBE_IN7 = 1
            PROBE_IN8 = 16
            PROBE_IN9 = 4
            PROBE_IN10 = 1
            PROBE_IN11 = 1
            PROBE_IN12 = 1
            PROBE_IN13 = 1
            PROBE_IN14 = 1
            PROBE_IN15 = 1

        In the PROBE_IN Ports(16..31) tab, set the PROBE_IN port widths to:
            PROBE_IN16 = 1
            PROBE_IN17 = 3

        In the PROBE_OUT Ports(0..15) tab, leave both PROBE_OUT ports at their
        default width of 1 bit.

        Click the OK button to finish customizing the core and then, when it
        appears, click the Generate button.

    7e) Generate a Vivado Logic Analzyer ILA core:
        In the IP Catalog window under Debug & Verification > Debug, locate
        ILA and double click on it to launch the ILA customization GUI. 
        
        Set the component name to rx_ila. 

        On the General Options tab, set the Number of Probes to 9 and the Sample
        Data Depth to 16384.

        On the two Probe Ports tabs, set the width of the various ports to:
            PROBE0 = 1
            PROBE1 = 1
            PROBE2 = 11
            PROBE3 = 10
            PROBE4 = 10
            PROBE5 = 10
            PROBE6 = 10
            PROBE7 = 1
            PROBE8 = 1

        Click the OK button to finish customizing the core and then, when it
        appears, click the Generate button.

8) If using ChipScope, change the properties of the five xdc contraint files that
are associated with the five ChipScope cores. The easiest way to do this is to
run the following Tcl commands from the Vivado Tcl Console. You can copy each
command line from this file and paste them into the Tcl command line.

set_property USED_IN_SYNTHESIS false [get_files {vio.xdc tx_vio.xdc rx_vio.xdc ila.xdc icon.xdc}]
set_property SCOPED_TO_REF {vio} [get_files vio.xdc]
set_property SCOPED_TO_REF {tx_vio} [get_files tx_vio.xdc]
set_property SCOPED_TO_REF {rx_vio} [get_files rx_vio.xdc]
set_property SCOPED_TO_REF {ila} [get_files ila.xdc]
set_property SCOPED_TO_REF {icon} [get_files icon.xdc]

9) The EDH_timing_constraints.xdc file needs to be applied directly to the EDH
processor in the SDI core. This file sets multi-cycle path contraints on all 
flip-flops in the EDH processor because this module only runs in SD-SDI mode at
a nominal rate of 27 MHz while the clock is running at 148.5 MHz. These 
multi-cycle path constraints make it much easier to meet timing.

First, out-of-context synthesis for the SDI core must be disabled so that the 
SDI core is synthesized with the reset of the project. This can be done by 
entering the following Tcl command in the Tcl command line.

set_property generate_synth_checkpoint false [get_files smpte_sdi.xci]

Next, the SCOPED_TO_REF property of the EDH_timing_constraints.xdc file must be
set to v_smpte_sdi_v3_0_edh_processor. This can be done by entering the following
Tcl command in the Tcl command line.

set_property SCOPED_TO_REF v_smpte_sdi_v3_0_edh_processor [get_files EDH_timing_constraints.xdc]
  
Finally, the synthesis output of the SDI core must be reset so that it will be
resynthesized with the rest of the application. This can be done by entering the
following Tcl command in the Tcl command line.

reset_target all [get_files smpte_sdi.xci]

10) If any mistakes were made in setting the component names of any of the IP
cores generated using IP Catalog, the IP cores with the component names that are
incorrect will show up as extra sources in the Sources Hierarchy pane in Vivado.
Delete any that are incorrect and generate them again using the instructions 
above.

11) Run Synthesis, Implementation, and Generate Bitfile to create a bit file
for this demo.

--------------------------------------------------------------------------------

To build the SDI pass-through demo (ac701_sdi_pass_demo) with Vivado (2014.1 or 
later):

1) Launch Vivado and select Create New Project to launch the new project wizard.

2) On the Project Type screen, select RTL Project.

3) On the Add Sources screen:
    Add all of the .v files from the Verilog/ac701_sdi_pass_demo directory.
    If you are using ChipScope to control & monitor the demo, Add all of the .v 
    and .ngc files from the Verilog/ac701_sdi_pass_demo/chipscope directory.
    Add all of the .v files from the Verilog/a7gtp_sdi_wrapper directory.
    Add all of the .v files from the Verilog/SDI_wrapper directory except the file
    named a7gtp_sdi_rxtx_wrapper_ise.v. This file is for ISE projects only.
    Add all of the .v files from the ac701_TEDSDI_control directory.
    Add the a7_sdi_demo_name.txt from the ac701_TEDSDI_control directory. Note
    that you will have to change the "Files of type:" setting to "All Files" to
    see the .txt file.
    Add all of the .v files and the dru.ngc file from the Verilog/dru directory.
    (Do not include the files in the Verilog/dru/for_simulation_only directory.

4) Click Next to move to the Add Existing IP screen (do not add any existing IP)
and then Next again to move to the Add Constraints screen. The following files
should automatically have been added to your project. If they are not there,
add them from the Verilog/ac701_sdi_pass_demo and the Verilog/ac701_sdi_demo/chipscope
directories.
    ac701_sdi_demo_timing.xdc
    ac701_sdi_demo.xdc
  If using ChipScope, also include:
    vio.xdc
    rx_vio.xdc
    ila.xdc
    icon.xdc

In addition, the EDH_timing_constraints.xdc file from the Verilog/SDI_wrapper
directory should be included with the project. More information on how to use
this XDC file is included in step 9.

5) Click Next to move the Default Part screen. When using the AC701 board, set 
the part to:
    xc7a200tfbg676-2

6) Click next to move to the summary page and then click Finish.

7) At the current time, portability of IP cores in Vivado is limited. Thus, the
following instructions should be followed to create all of the IP cores needed
by the demo from scratch using the IP Catalog. Open the IP Catalog either from
Windows > IP Catalog in the tool bar at the top of the Vivado GUI or by clicking
on IP Catalog under Project Manager in the Flow Navigator on the left side of
the Vivado GUI.

    7a) Generate a SMPTE SD/HD/3G-SDI core:
        In the IP Catalog window under the Video & Image Processing tab, locate
        the SMPTE SD/HD/3G-SDI core and double click on it. This will open the
        GUI for the SDI core. In the SDI core GUI, change the component name to 
        smpte_sdi. Make sure that the INCLUDE_RX_EDH_PROCESSOR attribute is set 
        to TRUE. Click OK.

    7b) Generate the Si5324_settings_rom core:
        In the IP Catalog window under Memories & Storage Elements > RAMs & ROMs
        locate the Block Memory Generator and double click on it to launch the
        Block Memory Generator GUI. 
        In the IP Catalog window under Memories & Storage Elements > RAMs & ROMs
        locate the Block Memory Generator and double click on it to launch the
        Block Memory Generator GUI. 
            Near the top of the GUI, change the component name to: 
            Si5324_settings_rom (this is case sensitive). There are a series of
            tabs in this GUI. The Basic tab should be open at this point.
            
            Basic tab: Make sure that Native is selected as the interface type.
            In the Memory Type pull down, select Dual Port ROM. The Generate
            address interface with 32 bits option should not be selected. Common
            Clock should not be selected.

            Port A Options tab: Set the Port A Width to 9 and the Part A Depth
            to 4096. Make sure Enable Port Type is set to Always Enabled. No
            output registers should be selected. The RSTA pin should not be
            enabled.

            Port B Options tab: Port B should be configured identically to Port
            A.

            Other Options tab:
            Under Memory Initialization, Load Init File must be checked. Click 
            on the folder icon to browse to and select the following .coe file:
                <xapp1097_dir>/Verilog/ac701_sdi_pass_demo/Si5324_settings_rom_v1_5.coe

            Click OK at the bottom of the GUI to finish customizing the core.

    7c) Generate the video_fifo42 core:
        In the IP Catalog window under Memories & Storage Elements > FIFOs,
        locate the FIFO Generator and double click on it to launch the FIFO
        Generator GUI.
            Near the top of the GUI, change the component name to: video_fifo42.

            Basic tab: Select Native as the interface type. Choose Independent 
            Clocks Distributed RAM in the Fifo Implementation pull down menu. 
            The Synchronization Stages across Cross Clock Domain Logic should be
             set to 2.

            Native Ports tab: Read Mode should be set to Standard FIFO. Under
            Data Port Parameters, the Write Width must be set to 42 and the
            Write Depth must be 32. Under Initialization, Reset Pin and Enable 
            Reset Synchronization must both be enabled. The Reset Type must be
            set to Asynchronous Reset. The Full Flags Reset value should be 1.
            Use Dout Reset should be selected. The Use Dout Reset Value should
            be 0.

            Status Flags tab: None of the Optional Flags should be enabled.
            None of the options under Handshaking Options should be enabled.
            Under Programmable Flags, the Programmable Full Type must be
            set to Single Programmable Full Threshold Constant. The Full 
            Threshold Assert Value must be set to 16.

            Data Counts tab: Nothing should be enabled in the tab.

            Click OK near the bottom of the GUI.

    If you are using ChipScope to control & monitor the demo, skip to step 8.
    If you are using Vivado Analyzer, do steps 7d to 7f. Don't forget to edit
    the ac701_sdi_pass.v file to change the value of the USE_CHIPSCOPE parameter
    to something other than "TRUE" if using Vivado Analyzer.

    7d) Generate a Vivado Logic Analzyer VIO core:
        In the IP Catalog window under Debug & Verification > Debug, locate
        VIO and double click on it to launch the VIO customization window.
        
        Set the component name to vio0. 
        
        Under the General Options tab, set the Input Probe Count to 5 and the
        Output Probe Count to 2.

        Under the PROBE_IN Ports(0..15) tab, set the width of PROBE_IN4 to 2.
        Leave all other input probe widths at their default of 1.

        Under the PROBE_OUT Ports(0..15) tab, leave both probe widths at their
        default values of 1 and the initial values of both at 0x0.

        Click the OK button and, when it appears, click the Generate button.

    7e) Generate a second Vivado Logic Analzyer VIO core:
        In the IP Catalog window under Debug & Verification > Debug, locate
        VIO and double click on it to launch the VIO customization window.
        
        Set the component name to tx_vio. 
        
        Under the General Options tab, set the Input Probe Count to 5 and the
        Output Probe Count to 0.

        Under the PROBE_IN Ports(0..15) tab, set the width of PROBE_IN4 to 3.
        Leave all other input probe widths at their default of 1.

        Click the OK button and, when it appears, click the Generate button.

    7f) Generate a third Vivado Logic Analzyer VIO core:
        In the IP Catalog window under Debug & Verification > Debug, locate
        VIO and double click on it to launch the VIO customization window.
        
        Set the component name to rx_vio. 
        
        Under the General Options tab, set the Input Probe Count to 17 and the 
        Output Probe Count to 1.

        Under the PROBE_IN Ports(0..15) tab, set the input probe widths to:
            PROBE_IN0   2
            PROBE_IN1   1
            PROBE_IN2   4
            PROBE_IN3   1
            PROBE_IN4   1
            PROBE_IN5   32
            PROBE_IN6   1
            PROBE_IN7   1
            PROBE_IN8   16
            PROBE_IN9   4
            PROBE_IN10  1
            PROBE_IN11  1
            PROBE_IN12  1
            PROBE_IN13  1
            PROBE_IN14  1
            PROBE_IN15  1

        Under the PROBE_IN Ports(16..31) tab, leave port 16 at its default 
        width of 1 bit.

        Under the PROBE_OUT Ports(0..15) tab, leave the only port at its default
        width of 1 bit and with an initial value of 0x0.

        Click the OK button and, when it appears, click the Generate button.

    7g) Generate a Vivado Logic Analzyer ILA core:
        In the IP Catalog window under Debug & Verification > Debug, locate
        ILA and double click on it to launch the ILA customization GUI. 
        
        Set the component name to rx_ila. 

        On the General Options tab, set the Number of Probes to 10 and the Sample
        Data Depth to 16384.

        On the two Probe Ports tabs, set the width of the various ports to:
            PROBE0  1
            PROBE1  1
            PROBE2  1
            PROBE3  11
            PROBE4  10
            PROBE5  10
            PROBE6  10
            PROBE7  10
            PROBE8  1
            PROBE9  1

        Click the OK button to finish customizing the core and then, when it
        appears, click the Generate button.

8) If using ChipScope, change the properties of the four xdc contraint files that
are associated with the four ChipScope cores. The easiest way to do this is to
run the following Tcl commands from the Vivado Tcl Console. You can copy them
each command line and paste them into the Tcl command line.

set_property USED_IN_SYNTHESIS false [get_files {vio.xdc rx_vio.xdc ila.xdc icon.xdc}]
set_property SCOPED_TO_REF {vio} [get_files vio.xdc]
set_property SCOPED_TO_REF {rx_vio} [get_files rx_vio.xdc]
set_property SCOPED_TO_REF {ila} [get_files ila.xdc]
set_property SCOPED_TO_REF {icon} [get_files icon.xdc]

9) The EDH_timing_constraints.xdc file needs to be applied directly to the EDH
processor in the SDI core. This file sets multi-cycle path contraints on all 
flip-flops in the EDH processor because this module only runs in SD-SDI mode at
a nominal rate of 27 MHz while the clock is running at 148.5 MHz. These 
multi-cycle path constraints make it much easier to meet timing.

First, out-of-context synthesis for the SDI core must be disabled so that the 
SDI core is synthesized with the reset of the project. This can be done by 
entering the following Tcl command in the Tcl command line.

set_property generate_synth_checkpoint false [get_files smpte_sdi.xci]

Next, the SCOPED_TO_REF property of the EDH_timing_constraints.xdc file must be
set to v_smpte_sdi_v3_0_edh_processor. This can be done by entering the following
Tcl command in the Tcl command line.

set_property SCOPED_TO_REF v_smpte_sdi_v3_0_edh_processor [get_files EDH_timing_constraints.xdc]

Finally, the synthesis output of the SDI core must be reset so that it will be
resynthesized with the rest of the application. This can be done by entering the
following Tcl command in the Tcl command line.

reset_target all [get_files smpte_sdi.xci]

10) If any mistakes were made in setting the component names of any of the IP
cores generated using IP Catalog, the IP cores with the component names that are
incorrect will show up as extra sources in the Sources Hierarchy pane in Vivado.
Delete any that are incorrect and generate them again using the instructions 
above.

11) Run Synthesis, Implementation, and Generate Bitfile to create a bit file
for this demo.


6. OTHER INFORMATION

1) Changes from version 1.0:
    Version 1.1 the following changes from version 1.0.

    1. The SDI wrapper was modified to change the RX PLL divider dynamically
    through the DRP rather than using the RXRATE port. This fixes a reliability 
    issue when switching the RX between the different SDI modes. Older GTP 
    wrappers must be regenerated using version 3.1 of the 7 Series GT 
    Transceiver Wizard (supplied with Vivado 2014.1) or later. Wrappers generated
    with version 3.0 of the wizard, or earlier, contain a bug in the RXRATE 
    sequence state machine that can cause unreliable startup of the GTP after 
    FPGA configuration. When generating the GTP wrapper, the RXRATE and RXRATEDONE
    ports are no longer required for SDI and can be unselected in the Wizard GUI.
    When using a GTP wrapper generated by the Wizard version 3.1 or later that
    does have these ports, the rxrate_in port must be wired to 3'b000. The
    rxratedone_out port can be left unconnected. The gtp_rxrate and gtp_rxratedone
    ports of the SDI wrapper have been removed. One new port was added to the SDI
    wrapper module to support changing the RX PLL divider through the DRP. This
    is the gtp_drpdo port, a 16-bit wide input port that must be connected to
    the drpdo_out port of the GTP wrapper.

    2. The SDI wrapper was also modified to disable the SDI mode search function
    built into the SDI core and replace it with a new SDI mode search module that
    has the ability to wait until the GTP finishes its reset cycle before
    looking to see if the GTP RX locks to the input signal. One new file has
    been added to the SDI wrapper to support this capability. This file is named
    sdi_rx_autorate.v. One new input port has also been added to the SDI wrapper
    called rx_mode_search_rst. This reset input is synchronous with rx_usrclk.
    When this input is High, the new SDI mode search module is reset. The mode
    search module is not reset by any other input to the SDI wrapper. In most
    applications, this new reset input can be permanently wired Low, as is done
    in the demonstration applications supplied with this application note.

    3. The top level demonstration files, ac701_sdi_pass.v and ac701_sdi_demo.v
    have been modified to keep the rx_refclk_stable and tx_refclk_stable inputs
    of the SDI wrapper Low until about 1.25 seconds after FPGA configuration.
    Previously, these inputs were always asserted High. The delay in asserting
    these inputs keeps the GTP PLLs in reset for a period of time after 
    completion of FPGA configuration to allow the reference clock sources to
    stablize. This makes both demos emerge from FPGA configuration in a working
    state more reliably. This change is done entirely at the top level of both 
    demonstrations and doesn't require any changes to any other files.

    4. A set of multi-cycle path constraints have been developed for the EDH
    processor in the SDI core. In Artix-7 SDI designs, it is difficult to make
    the EDH processor meet timing at the full 148.5 MHz clock rate. The EDH
    processor is only used in SD-SDI mode and only has to run at a nominal rate
    of 27 MHz. The EDH_timing_constraints.xdc file, included in the SDI_wrapper
    subdirectory, can be applied to the EDH processor module of the SDI core as
    described in step 9 of the instructions above for building either of the SDI 
    demonstrations. This is an interim solution until the SMPTE SD/HD/3G-SDI 
    core is revised to automatically apply multi-cycle constraints to the EDH 
    processor.

    5. The VHDL SDI wrapper files have been removed from this application note. 
    Only Verilog SDI wrapper files are provided. These can be used in a mixed
    language environment where the application is written in VHDL.

    6. The ISE-specific SDI wrapper files have been removed. Because the GT
    wizard in ISE 14.7 generates GTP wrappers that contain defective RXRATE
    sequence state machines, ISE is no longer recommended for GTP SDI
    applications. Vivado 2014.1 or later must be used.

2) Known Issues
    Version 3.0 of the GT transceiver wizard does not correctly set the 
    PLL0REFCLKSEL and PLL1REFCLKSEL ports of the GTPE2_COMMON block in the 
    common wrapper. This is a known bug and will be fixed in version 3.1 of the
    transceiver wizard. When using version 3.0 of the wizard to generate a GTP
    wrapper, the common wrapper must be edited to correctly set the PLL0REFCLKSEL
    and PLL1REFCLKSEL ports to select the correct reference clocks for the two
    PLLs. The wizard sets both ports to 3'b001. The common wrapper used in the
    demos included with this application note brings these two ports out as ports
    of the common wrapper allowing each demo to set the reference clock selection
    as needed.

7. SUPPORT

To obtain technical support for this reference design, go to 
www.xilinx.com/support to locate answers to known issues in the Xilinx
Answers Database or to create a WebCase.  
