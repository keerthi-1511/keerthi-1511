#------------------------------------------------------------------------------
#   ____  ____
#  /   /\/   /
# /___/  \  /    Vendor: Xilinx
# \   \   \/     Version: $Revision: $
#  \   \         
#  /   /         Filename: $File: $
# /___/   /\     Timestamp: $DateTime: $
# \   \  /  \
#  \___\/\___\
#
# Description:
#   This is the Vivado multi-cycle path constraints for the EDH processor. This
#   must be scoped to just the v_smpte_sdi_v3_0_edh_processor module. Out-of-
#   context synthesis must be turned off on the SDI core in order for these
#   constraints to be applied. The next version of the SDI core will automatically
#   apply these constraints, so this file is only necessary with version 3.0 of
#   the SDI core.
#------------------------------------------------------------------------------

set EDHcells [get_cells -filter {IS_PRIMITIVE && IS_SEQUENTIAL} *]
set_multicycle_path -setup -from $EDHcells 5
set_multicycle_path -hold -from $EDHcells 4
 