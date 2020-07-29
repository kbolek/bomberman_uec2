
################################################################
# This is a generated script based on design: Main_System
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
set scripts_vivado_version 2019.2
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
# source Main_System_script.tcl


# The design that will be created by this Tcl script contains the following 
# module references:
# vga_trunc

# Please add the sources of those modules before sourcing this Tcl script.

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xc7a35tcpg236-1
   set_property BOARD_PART digilentinc.com:basys3:part0:1.1 [current_project]
}


# CHANGE DESIGN NAME HERE
variable design_name
set design_name Main_System

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

   create_bd_design $design_name

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

  # Create ports
  set reset [ create_bd_port -dir I -type rst reset ]
  set sys_clock [ create_bd_port -dir I -type clk -freq_hz 100000000 sys_clock ]
  set_property -dict [ list \
   CONFIG.PHASE {0.000} \
 ] $sys_clock
  set vgaBlue [ create_bd_port -dir O -from 3 -to 0 vgaBlue ]
  set vgaGreen [ create_bd_port -dir O -from 3 -to 0 vgaGreen ]
  set vgaRed [ create_bd_port -dir O -from 3 -to 0 vgaRed ]
  set vid_hsync [ create_bd_port -dir O vid_hsync ]
  set vid_vsync [ create_bd_port -dir O vid_vsync ]

  # Create instance: clk_wiz_0, and set properties
  set clk_wiz_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:clk_wiz:6.0 clk_wiz_0 ]
  set_property -dict [ list \
   CONFIG.CLKOUT1_JITTER {254.866} \
   CONFIG.CLKOUT1_PHASE_ERROR {297.890} \
   CONFIG.CLKOUT1_REQUESTED_OUT_FREQ {65.000} \
   CONFIG.CLK_IN1_BOARD_INTERFACE {sys_clock} \
   CONFIG.MMCM_CLKFBOUT_MULT_F {50.375} \
   CONFIG.MMCM_CLKOUT0_DIVIDE_F {15.500} \
   CONFIG.MMCM_DIVCLK_DIVIDE {5} \
   CONFIG.RESET_BOARD_INTERFACE {reset} \
   CONFIG.RESET_PORT {resetn} \
   CONFIG.RESET_TYPE {ACTIVE_LOW} \
   CONFIG.USE_BOARD_FLOW {true} \
 ] $clk_wiz_0

  # Create instance: v_axi4s_vid_out_0, and set properties
  set v_axi4s_vid_out_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:v_axi4s_vid_out:4.0 v_axi4s_vid_out_0 ]
  set_property -dict [ list \
   CONFIG.C_ADDR_WIDTH {10} \
   CONFIG.C_HAS_ASYNC_CLK {0} \
   CONFIG.C_VTG_MASTER_SLAVE {0} \
 ] $v_axi4s_vid_out_0

  # Create instance: v_tc_0, and set properties
  set v_tc_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:v_tc:6.2 v_tc_0 ]
  set_property -dict [ list \
   CONFIG.GEN_F0_VBLANK_HEND {806} \
   CONFIG.GEN_F0_VBLANK_HSTART {768} \
   CONFIG.GEN_F0_VFRAME_SIZE {806} \
   CONFIG.GEN_F0_VSYNC_HEND {777} \
   CONFIG.GEN_F0_VSYNC_HSTART {771} \
   CONFIG.GEN_F0_VSYNC_VEND {777} \
   CONFIG.GEN_F0_VSYNC_VSTART {771} \
   CONFIG.GEN_HACTIVE_SIZE {1024} \
   CONFIG.GEN_HFRAME_SIZE {1344} \
   CONFIG.GEN_HSYNC_END {1184} \
   CONFIG.GEN_HSYNC_POLARITY {Low} \
   CONFIG.GEN_HSYNC_START {1048} \
   CONFIG.GEN_VACTIVE_SIZE {768} \
   CONFIG.GEN_VSYNC_POLARITY {Low} \
   CONFIG.HAS_AXI4_LITE {false} \
   CONFIG.VIDEO_MODE {Custom} \
   CONFIG.enable_detection {false} \
 ] $v_tc_0

  # Create instance: v_tpg_0, and set properties
  set v_tpg_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:v_tpg:8.0 v_tpg_0 ]
  set_property -dict [ list \
   CONFIG.MAX_COLS {1024} \
   CONFIG.MAX_DATA_WIDTH {16} \
   CONFIG.MAX_ROWS {768} \
 ] $v_tpg_0

  # Create instance: vga_trunc_0, and set properties
  set block_name vga_trunc
  set block_cell_name vga_trunc_0
  if { [catch {set vga_trunc_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $vga_trunc_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: xlconstant_0, and set properties
  set xlconstant_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_0 ]

  # Create interface connections
  connect_bd_intf_net -intf_net v_tc_0_vtiming_out [get_bd_intf_pins v_axi4s_vid_out_0/vtiming_in] [get_bd_intf_pins v_tc_0/vtiming_out]
  connect_bd_intf_net -intf_net v_tpg_0_m_axis_video [get_bd_intf_pins v_axi4s_vid_out_0/video_in] [get_bd_intf_pins v_tpg_0/m_axis_video]

  # Create port connections
  connect_bd_net -net m_axis_mm2s_aclk_0_1 [get_bd_pins clk_wiz_0/clk_out1] [get_bd_pins v_axi4s_vid_out_0/aclk] [get_bd_pins v_tc_0/clk] [get_bd_pins v_tpg_0/ap_clk]
  connect_bd_net -net sys_clock_1 [get_bd_ports sys_clock] [get_bd_pins clk_wiz_0/clk_in1]
  connect_bd_net -net v_axi4s_vid_out_0_vid_active_video [get_bd_pins v_axi4s_vid_out_0/vid_active_video] [get_bd_pins vga_trunc_0/active]
  connect_bd_net -net v_axi4s_vid_out_0_vid_data [get_bd_pins v_axi4s_vid_out_0/vid_data] [get_bd_pins vga_trunc_0/vid_data]
  connect_bd_net -net v_axi4s_vid_out_0_vid_hsync [get_bd_ports vid_hsync] [get_bd_pins v_axi4s_vid_out_0/vid_hsync]
  connect_bd_net -net v_axi4s_vid_out_0_vid_vsync [get_bd_ports vid_vsync] [get_bd_pins v_axi4s_vid_out_0/vid_vsync]
  connect_bd_net -net v_axi4s_vid_out_0_vtg_ce [get_bd_pins v_axi4s_vid_out_0/vtg_ce] [get_bd_pins v_tc_0/clken] [get_bd_pins v_tc_0/gen_clken]
  connect_bd_net -net vga_trunc_0_b [get_bd_ports vgaBlue] [get_bd_pins vga_trunc_0/b]
  connect_bd_net -net vga_trunc_0_g [get_bd_ports vgaGreen] [get_bd_pins vga_trunc_0/g]
  connect_bd_net -net vga_trunc_0_r [get_bd_ports vgaRed] [get_bd_pins vga_trunc_0/r]
  connect_bd_net -net xlconstant_0_dout [get_bd_pins v_axi4s_vid_out_0/aclken] [get_bd_pins v_axi4s_vid_out_0/vid_io_out_ce] [get_bd_pins xlconstant_0/dout]

  # Create address segments


  # Restore current instance
  current_bd_instance $oldCurInst

  validate_bd_design
  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


