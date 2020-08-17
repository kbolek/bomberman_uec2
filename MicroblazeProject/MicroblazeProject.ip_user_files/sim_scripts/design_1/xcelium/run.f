-makelib xcelium_lib/xpm -sv \
  "B:/xilinx/Vivado/2019.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "B:/xilinx/Vivado/2019.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib xcelium_lib/xpm \
  "B:/xilinx/Vivado/2019.2/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib xcelium_lib/microblaze_v11_0_2 \
  "../../../../MicroblazeProject.srcs/sources_1/bd/design_1/ipshared/f871/hdl/microblaze_v11_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_microblaze_0_1/sim/design_1_microblaze_0_1.vhd" \
-endlib
-makelib xcelium_lib/lmb_v10_v3_0_10 \
  "../../../../MicroblazeProject.srcs/sources_1/bd/design_1/ipshared/2e88/hdl/lmb_v10_v3_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_dlmb_v10_3/sim/design_1_dlmb_v10_3.vhd" \
  "../../../bd/design_1/ip/design_1_ilmb_v10_3/sim/design_1_ilmb_v10_3.vhd" \
-endlib
-makelib xcelium_lib/lmb_bram_if_cntlr_v4_0_17 \
  "../../../../MicroblazeProject.srcs/sources_1/bd/design_1/ipshared/db6f/hdl/lmb_bram_if_cntlr_v4_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_dlmb_bram_if_cntlr_3/sim/design_1_dlmb_bram_if_cntlr_3.vhd" \
  "../../../bd/design_1/ip/design_1_ilmb_bram_if_cntlr_3/sim/design_1_ilmb_bram_if_cntlr_3.vhd" \
-endlib
-makelib xcelium_lib/blk_mem_gen_v8_4_4 \
  "../../../../MicroblazeProject.srcs/sources_1/bd/design_1/ipshared/2985/simulation/blk_mem_gen_v8_4.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_lmb_bram_3/sim/design_1_lmb_bram_3.v" \
-endlib
-makelib xcelium_lib/lib_cdc_v1_0_2 \
  "../../../../MicroblazeProject.srcs/sources_1/bd/design_1/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \
-endlib
-makelib xcelium_lib/proc_sys_reset_v5_0_13 \
  "../../../../MicroblazeProject.srcs/sources_1/bd/design_1/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_rst_clk_100M_0/sim/design_1_rst_clk_100M_0.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_clk_wiz_0_0/design_1_clk_wiz_0_0_clk_wiz.v" \
  "../../../bd/design_1/ip/design_1_clk_wiz_0_0/design_1_clk_wiz_0_0.v" \
-endlib
-makelib xcelium_lib/generic_baseblocks_v2_1_0 \
  "../../../../MicroblazeProject.srcs/sources_1/bd/design_1/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_infrastructure_v1_1_0 \
  "../../../../MicroblazeProject.srcs/sources_1/bd/design_1/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_register_slice_v2_1_20 \
  "../../../../MicroblazeProject.srcs/sources_1/bd/design_1/ipshared/72d4/hdl/axi_register_slice_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_5 \
  "../../../../MicroblazeProject.srcs/sources_1/bd/design_1/ipshared/276e/simulation/fifo_generator_vlog_beh.v" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_5 \
  "../../../../MicroblazeProject.srcs/sources_1/bd/design_1/ipshared/276e/hdl/fifo_generator_v13_2_rfs.vhd" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_5 \
  "../../../../MicroblazeProject.srcs/sources_1/bd/design_1/ipshared/276e/hdl/fifo_generator_v13_2_rfs.v" \
-endlib
-makelib xcelium_lib/axi_data_fifo_v2_1_19 \
  "../../../../MicroblazeProject.srcs/sources_1/bd/design_1/ipshared/60de/hdl/axi_data_fifo_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_crossbar_v2_1_21 \
  "../../../../MicroblazeProject.srcs/sources_1/bd/design_1/ipshared/6b0d/hdl/axi_crossbar_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_xbar_0/sim/design_1_xbar_0.v" \
  "../../../bd/design_1/ipshared/1e8d/hdl/PADS_SOUND_v1_0_AXI_LITE.v" \
  "../../../bd/design_1/ipshared/1e8d/src/SOUND_GENERATOR.v" \
  "../../../bd/design_1/ipshared/1e8d/hdl/PADS_SOUND_v1_0.v" \
  "../../../bd/design_1/ip/design_1_PADS_SOUND_0_0/sim/design_1_PADS_SOUND_0_0.v" \
-endlib
-makelib xcelium_lib/axi_lite_ipif_v3_0_4 \
  "../../../../MicroblazeProject.srcs/sources_1/bd/design_1/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/lib_pkg_v1_0_2 \
  "../../../../MicroblazeProject.srcs/sources_1/bd/design_1/ipshared/0513/hdl/lib_pkg_v1_0_rfs.vhd" \
-endlib
-makelib xcelium_lib/lib_srl_fifo_v1_0_2 \
  "../../../../MicroblazeProject.srcs/sources_1/bd/design_1/ipshared/51ce/hdl/lib_srl_fifo_v1_0_rfs.vhd" \
-endlib
-makelib xcelium_lib/axi_uartlite_v2_0_24 \
  "../../../../MicroblazeProject.srcs/sources_1/bd/design_1/ipshared/d8db/hdl/axi_uartlite_v2_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_axi_uartlite_0_0/sim/design_1_axi_uartlite_0_0.vhd" \
-endlib
-makelib xcelium_lib/mdm_v3_2_17 \
  "../../../../MicroblazeProject.srcs/sources_1/bd/design_1/ipshared/f9aa/hdl/mdm_v3_2_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_mdm_0_0/sim/design_1_mdm_0_0.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/design_1/ipshared/8295/src/BLOCK_GEN.v" \
  "../../../bd/design_1/ipshared/8295/src/CHAR_ROM.v" \
  "../../../bd/design_1/ipshared/8295/src/CLOCKER.v" \
  "../../../bd/design_1/ipshared/8295/src/GRAM_DECODER.v" \
  "../../../bd/design_1/ipshared/8295/src/TEXT_GEN.v" \
  "../../../bd/design_1/ipshared/8295/src/TIMING_GEN.v" \
  "../../../bd/design_1/ipshared/8295/src/BRAM_GPU.v" \
  "../../../bd/design_1/ip/design_1_BRAM_GPU_0_1/sim/design_1_BRAM_GPU_0_1.v" \
-endlib
-makelib xcelium_lib/axi_bram_ctrl_v4_1_2 \
  "../../../../MicroblazeProject.srcs/sources_1/bd/design_1/ipshared/a002/hdl/axi_bram_ctrl_v4_1_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_axi_bram_ctrl_0_1/sim/design_1_axi_bram_ctrl_0_1.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_blk_mem_gen_0_1/sim/design_1_blk_mem_gen_0_1.v" \
-endlib
-makelib xcelium_lib/axi_protocol_converter_v2_1_20 \
  "../../../../MicroblazeProject.srcs/sources_1/bd/design_1/ipshared/c4a6/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_auto_pc_0/sim/design_1_auto_pc_0.v" \
  "../../../bd/design_1/sim/design_1.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  glbl.v
-endlib

