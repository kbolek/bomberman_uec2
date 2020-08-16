vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xpm
vlib questa_lib/msim/microblaze_v11_0_2
vlib questa_lib/msim/xil_defaultlib
vlib questa_lib/msim/lmb_v10_v3_0_10
vlib questa_lib/msim/lmb_bram_if_cntlr_v4_0_17
vlib questa_lib/msim/blk_mem_gen_v8_4_4
vlib questa_lib/msim/lib_cdc_v1_0_2
vlib questa_lib/msim/proc_sys_reset_v5_0_13
vlib questa_lib/msim/generic_baseblocks_v2_1_0
vlib questa_lib/msim/axi_infrastructure_v1_1_0
vlib questa_lib/msim/axi_register_slice_v2_1_20
vlib questa_lib/msim/fifo_generator_v13_2_5
vlib questa_lib/msim/axi_data_fifo_v2_1_19
vlib questa_lib/msim/axi_crossbar_v2_1_21

vmap xpm questa_lib/msim/xpm
vmap microblaze_v11_0_2 questa_lib/msim/microblaze_v11_0_2
vmap xil_defaultlib questa_lib/msim/xil_defaultlib
vmap lmb_v10_v3_0_10 questa_lib/msim/lmb_v10_v3_0_10
vmap lmb_bram_if_cntlr_v4_0_17 questa_lib/msim/lmb_bram_if_cntlr_v4_0_17
vmap blk_mem_gen_v8_4_4 questa_lib/msim/blk_mem_gen_v8_4_4
vmap lib_cdc_v1_0_2 questa_lib/msim/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_13 questa_lib/msim/proc_sys_reset_v5_0_13
vmap generic_baseblocks_v2_1_0 questa_lib/msim/generic_baseblocks_v2_1_0
vmap axi_infrastructure_v1_1_0 questa_lib/msim/axi_infrastructure_v1_1_0
vmap axi_register_slice_v2_1_20 questa_lib/msim/axi_register_slice_v2_1_20
vmap fifo_generator_v13_2_5 questa_lib/msim/fifo_generator_v13_2_5
vmap axi_data_fifo_v2_1_19 questa_lib/msim/axi_data_fifo_v2_1_19
vmap axi_crossbar_v2_1_21 questa_lib/msim/axi_crossbar_v2_1_21

vlog -work xpm -64 -sv "+incdir+../../../../MicroblazeProject.srcs/sources_1/bd/design_1/ipshared/4fba" "+incdir+../../../../MicroblazeProject.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" \
"B:/xilinx/Vivado/2019.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"B:/xilinx/Vivado/2019.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -64 -93 \
"B:/xilinx/Vivado/2019.2/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work microblaze_v11_0_2 -64 -93 \
"../../../../MicroblazeProject.srcs/sources_1/bd/design_1/ipshared/f871/hdl/microblaze_v11_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/design_1/ip/design_1_microblaze_0_1/sim/design_1_microblaze_0_1.vhd" \

vlog -work xil_defaultlib -64 "+incdir+../../../../MicroblazeProject.srcs/sources_1/bd/design_1/ipshared/4fba" "+incdir+../../../../MicroblazeProject.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" \
"../../../bd/design_1/ipshared/f281/src/BLOCK_GEN.v" \
"../../../bd/design_1/ipshared/f281/src/CHAR_ROM.v" \
"../../../bd/design_1/ipshared/f281/src/CLOCKER.v" \
"../../../bd/design_1/ipshared/f281/hdl/GPU_DC_v1_0_AXI_LITE.v" \
"../../../bd/design_1/ipshared/f281/src/GRAM_DECODER.v" \
"../../../bd/design_1/ipshared/f281/src/TEXT_GEN.v" \
"../../../bd/design_1/ipshared/f281/src/TIMING_GEN.v" \
"../../../bd/design_1/ipshared/f281/hdl/GPU_DC_v1_0.v" \
"../../../bd/design_1/ip/design_1_GPU_DC_0_0/sim/design_1_GPU_DC_0_0.v" \

vcom -work lmb_v10_v3_0_10 -64 -93 \
"../../../../MicroblazeProject.srcs/sources_1/bd/design_1/ipshared/2e88/hdl/lmb_v10_v3_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/design_1/ip/design_1_dlmb_v10_3/sim/design_1_dlmb_v10_3.vhd" \
"../../../bd/design_1/ip/design_1_ilmb_v10_3/sim/design_1_ilmb_v10_3.vhd" \

vcom -work lmb_bram_if_cntlr_v4_0_17 -64 -93 \
"../../../../MicroblazeProject.srcs/sources_1/bd/design_1/ipshared/db6f/hdl/lmb_bram_if_cntlr_v4_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/design_1/ip/design_1_dlmb_bram_if_cntlr_3/sim/design_1_dlmb_bram_if_cntlr_3.vhd" \
"../../../bd/design_1/ip/design_1_ilmb_bram_if_cntlr_3/sim/design_1_ilmb_bram_if_cntlr_3.vhd" \

vlog -work blk_mem_gen_v8_4_4 -64 "+incdir+../../../../MicroblazeProject.srcs/sources_1/bd/design_1/ipshared/4fba" "+incdir+../../../../MicroblazeProject.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" \
"../../../../MicroblazeProject.srcs/sources_1/bd/design_1/ipshared/2985/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib -64 "+incdir+../../../../MicroblazeProject.srcs/sources_1/bd/design_1/ipshared/4fba" "+incdir+../../../../MicroblazeProject.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" \
"../../../bd/design_1/ip/design_1_lmb_bram_3/sim/design_1_lmb_bram_3.v" \

vcom -work lib_cdc_v1_0_2 -64 -93 \
"../../../../MicroblazeProject.srcs/sources_1/bd/design_1/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_13 -64 -93 \
"../../../../MicroblazeProject.srcs/sources_1/bd/design_1/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/design_1/ip/design_1_rst_clk_100M_0/sim/design_1_rst_clk_100M_0.vhd" \

vlog -work xil_defaultlib -64 "+incdir+../../../../MicroblazeProject.srcs/sources_1/bd/design_1/ipshared/4fba" "+incdir+../../../../MicroblazeProject.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" \
"../../../bd/design_1/ip/design_1_clk_wiz_0_0/design_1_clk_wiz_0_0_clk_wiz.v" \
"../../../bd/design_1/ip/design_1_clk_wiz_0_0/design_1_clk_wiz_0_0.v" \

vlog -work generic_baseblocks_v2_1_0 -64 "+incdir+../../../../MicroblazeProject.srcs/sources_1/bd/design_1/ipshared/4fba" "+incdir+../../../../MicroblazeProject.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" \
"../../../../MicroblazeProject.srcs/sources_1/bd/design_1/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_infrastructure_v1_1_0 -64 "+incdir+../../../../MicroblazeProject.srcs/sources_1/bd/design_1/ipshared/4fba" "+incdir+../../../../MicroblazeProject.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" \
"../../../../MicroblazeProject.srcs/sources_1/bd/design_1/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_20 -64 "+incdir+../../../../MicroblazeProject.srcs/sources_1/bd/design_1/ipshared/4fba" "+incdir+../../../../MicroblazeProject.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" \
"../../../../MicroblazeProject.srcs/sources_1/bd/design_1/ipshared/72d4/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_5 -64 "+incdir+../../../../MicroblazeProject.srcs/sources_1/bd/design_1/ipshared/4fba" "+incdir+../../../../MicroblazeProject.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" \
"../../../../MicroblazeProject.srcs/sources_1/bd/design_1/ipshared/276e/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_5 -64 -93 \
"../../../../MicroblazeProject.srcs/sources_1/bd/design_1/ipshared/276e/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_5 -64 "+incdir+../../../../MicroblazeProject.srcs/sources_1/bd/design_1/ipshared/4fba" "+incdir+../../../../MicroblazeProject.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" \
"../../../../MicroblazeProject.srcs/sources_1/bd/design_1/ipshared/276e/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axi_data_fifo_v2_1_19 -64 "+incdir+../../../../MicroblazeProject.srcs/sources_1/bd/design_1/ipshared/4fba" "+incdir+../../../../MicroblazeProject.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" \
"../../../../MicroblazeProject.srcs/sources_1/bd/design_1/ipshared/60de/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_21 -64 "+incdir+../../../../MicroblazeProject.srcs/sources_1/bd/design_1/ipshared/4fba" "+incdir+../../../../MicroblazeProject.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" \
"../../../../MicroblazeProject.srcs/sources_1/bd/design_1/ipshared/6b0d/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 "+incdir+../../../../MicroblazeProject.srcs/sources_1/bd/design_1/ipshared/4fba" "+incdir+../../../../MicroblazeProject.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" \
"../../../bd/design_1/ip/design_1_xbar_0/sim/design_1_xbar_0.v" \
"../../../bd/design_1/ipshared/1e8d/hdl/PADS_SOUND_v1_0_AXI_LITE.v" \
"../../../bd/design_1/ipshared/1e8d/src/SOUND_GENERATOR.v" \
"../../../bd/design_1/ipshared/1e8d/hdl/PADS_SOUND_v1_0.v" \
"../../../bd/design_1/ip/design_1_PADS_SOUND_0_0/sim/design_1_PADS_SOUND_0_0.v" \
"../../../bd/design_1/sim/design_1.v" \

vlog -work xil_defaultlib \
"glbl.v"

