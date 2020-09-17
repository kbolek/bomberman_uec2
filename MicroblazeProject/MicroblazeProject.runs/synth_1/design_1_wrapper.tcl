# 
# Synthesis run script generated by Vivado
# 

set TIME_start [clock seconds] 
proc create_report { reportName command } {
  set status "."
  append status $reportName ".fail"
  if { [file exists $status] } {
    eval file delete [glob $status]
  }
  send_msg_id runtcl-4 info "Executing : $command"
  set retval [eval catch { $command } msg]
  if { $retval != 0 } {
    set fp [open $status w]
    close $fp
    send_msg_id runtcl-5 warning "$msg"
  }
}
set_param chipscope.maxJobs 2
set_msg_config -id {HDL-1065} -limit 10000
set_msg_config -id {Synth 8-256} -limit 10000
set_msg_config -id {Synth 8-638} -limit 10000
set_msg_config  -id {[BD 41-1306]}  -suppress 
set_msg_config  -id {[BD 41-1271]}  -suppress 
create_project -in_memory -part xc7a35tcpg236-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir D:/bomberman_uec2/MicroblazeProject/MicroblazeProject.cache/wt [current_project]
set_property parent.project_path D:/bomberman_uec2/MicroblazeProject/MicroblazeProject.xpr [current_project]
set_property XPM_LIBRARIES {XPM_CDC XPM_MEMORY} [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property board_part digilentinc.com:basys3:part0:1.1 [current_project]
set_property ip_repo_paths {
  d:/bomberman_uec2/ip_repo/AXI_Timers_1.0
  d:/bomberman_uec2/ip_repo/GPU_BRAM
  d:/bomberman_uec2/ip_repo/PADS_SOUND_1.0
} [current_project]
update_ip_catalog
set_property ip_output_repo d:/bomberman_uec2/MicroblazeProject/MicroblazeProject.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_mem {
  D:/bomberman_uec2/MicroblazeProject/textures.mem
  D:/bomberman_uec2/MicroblazeProject/fonts.mem
}
read_verilog -library xil_defaultlib D:/bomberman_uec2/MicroblazeProject/MicroblazeProject.srcs/sources_1/bd/design_1/hdl/design_1_wrapper.v
add_files D:/bomberman_uec2/MicroblazeProject/MicroblazeProject.srcs/sources_1/bd/design_1/design_1.bd
set_property used_in_implementation false [get_files -all d:/bomberman_uec2/MicroblazeProject/MicroblazeProject.srcs/sources_1/bd/design_1/ip/design_1_microblaze_0_1/design_1_microblaze_0_1.xdc]
set_property used_in_implementation false [get_files -all d:/bomberman_uec2/MicroblazeProject/MicroblazeProject.srcs/sources_1/bd/design_1/ip/design_1_microblaze_0_1/design_1_microblaze_0_1_ooc_debug.xdc]
set_property used_in_implementation false [get_files -all d:/bomberman_uec2/MicroblazeProject/MicroblazeProject.srcs/sources_1/bd/design_1/ip/design_1_dlmb_v10_3/design_1_dlmb_v10_3.xdc]
set_property used_in_implementation false [get_files -all d:/bomberman_uec2/MicroblazeProject/MicroblazeProject.srcs/sources_1/bd/design_1/ip/design_1_ilmb_v10_3/design_1_ilmb_v10_3.xdc]
set_property used_in_implementation false [get_files -all d:/bomberman_uec2/MicroblazeProject/MicroblazeProject.srcs/sources_1/bd/design_1/ip/design_1_lmb_bram_3/design_1_lmb_bram_3_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/bomberman_uec2/MicroblazeProject/MicroblazeProject.srcs/sources_1/bd/design_1/ip/design_1_rst_clk_100M_0/design_1_rst_clk_100M_0_board.xdc]
set_property used_in_implementation false [get_files -all d:/bomberman_uec2/MicroblazeProject/MicroblazeProject.srcs/sources_1/bd/design_1/ip/design_1_rst_clk_100M_0/design_1_rst_clk_100M_0.xdc]
set_property used_in_implementation false [get_files -all d:/bomberman_uec2/MicroblazeProject/MicroblazeProject.srcs/sources_1/bd/design_1/ip/design_1_clk_wiz_0_0/design_1_clk_wiz_0_0_board.xdc]
set_property used_in_implementation false [get_files -all d:/bomberman_uec2/MicroblazeProject/MicroblazeProject.srcs/sources_1/bd/design_1/ip/design_1_clk_wiz_0_0/design_1_clk_wiz_0_0.xdc]
set_property used_in_implementation false [get_files -all d:/bomberman_uec2/MicroblazeProject/MicroblazeProject.srcs/sources_1/bd/design_1/ip/design_1_clk_wiz_0_0/design_1_clk_wiz_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/bomberman_uec2/MicroblazeProject/MicroblazeProject.srcs/sources_1/bd/design_1/ip/design_1_axi_uartlite_0_0/design_1_axi_uartlite_0_0_board.xdc]
set_property used_in_implementation false [get_files -all d:/bomberman_uec2/MicroblazeProject/MicroblazeProject.srcs/sources_1/bd/design_1/ip/design_1_axi_uartlite_0_0/design_1_axi_uartlite_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/bomberman_uec2/MicroblazeProject/MicroblazeProject.srcs/sources_1/bd/design_1/ip/design_1_axi_uartlite_0_0/design_1_axi_uartlite_0_0.xdc]
set_property used_in_implementation false [get_files -all d:/bomberman_uec2/MicroblazeProject/MicroblazeProject.srcs/sources_1/bd/design_1/ip/design_1_mdm_0_0/design_1_mdm_0_0.xdc]
set_property used_in_implementation false [get_files -all d:/bomberman_uec2/MicroblazeProject/MicroblazeProject.srcs/sources_1/bd/design_1/ip/design_1_mdm_0_0/design_1_mdm_0_0_ooc_trace.xdc]
set_property used_in_implementation false [get_files -all d:/bomberman_uec2/MicroblazeProject/MicroblazeProject.srcs/sources_1/bd/design_1/ip/design_1_mdm_0_0/design_1_mdm_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/bomberman_uec2/MicroblazeProject/MicroblazeProject.srcs/sources_1/bd/design_1/ip/design_1_axi_bram_ctrl_0_1/design_1_axi_bram_ctrl_0_1_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/bomberman_uec2/MicroblazeProject/MicroblazeProject.srcs/sources_1/bd/design_1/ip/design_1_blk_mem_gen_0_1/design_1_blk_mem_gen_0_1_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/bomberman_uec2/MicroblazeProject/MicroblazeProject.srcs/sources_1/bd/design_1/ip/design_1_blk_mem_gen_0_2/design_1_blk_mem_gen_0_2_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/bomberman_uec2/MicroblazeProject/MicroblazeProject.srcs/sources_1/bd/design_1/ip/design_1_axi_bram_ctrl_0_2/design_1_axi_bram_ctrl_0_2_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/bomberman_uec2/MicroblazeProject/MicroblazeProject.srcs/sources_1/bd/design_1/ip/design_1_auto_pc_0/design_1_auto_pc_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/bomberman_uec2/MicroblazeProject/MicroblazeProject.srcs/sources_1/bd/design_1/ip/design_1_auto_pc_1/design_1_auto_pc_1_ooc.xdc]
set_property used_in_implementation false [get_files -all D:/bomberman_uec2/MicroblazeProject/MicroblazeProject.srcs/sources_1/bd/design_1/design_1_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/bomberman_uec2/MicroblazeProject/MicroblazeProject.srcs/sources_1/bd/design_1/ip/design_1_microblaze_0_1/data/mb_bootloop_le.elf]

# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc D:/bomberman_uec2/MicroblazeProject/MicroblazeProject.srcs/constrs_1/imports/Downloads/Basys-3-Master.xdc
set_property used_in_implementation false [get_files D:/bomberman_uec2/MicroblazeProject/MicroblazeProject.srcs/constrs_1/imports/Downloads/Basys-3-Master.xdc]

read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]
set_param ips.enableIPCacheLiteLoad 1
close [open __synthesis_is_running__ w]

synth_design -top design_1_wrapper -part xc7a35tcpg236-1


# disable binary constraint mode for synth run checkpoints
set_param constraints.enableBinaryConstraints false
write_checkpoint -force -noxdef design_1_wrapper.dcp
create_report "synth_1_synth_report_utilization_0" "report_utilization -file design_1_wrapper_utilization_synth.rpt -pb design_1_wrapper_utilization_synth.pb"
file delete __synthesis_is_running__
close [open __synthesis_is_complete__ w]
