vlib work
vlib activehdl

vlib activehdl/xpm
vlib activehdl/microblaze_v11_0_2
vlib activehdl/xil_defaultlib
vlib activehdl/lmb_v10_v3_0_10
vlib activehdl/lmb_bram_if_cntlr_v4_0_17
vlib activehdl/blk_mem_gen_v8_4_4
vlib activehdl/lib_cdc_v1_0_2
vlib activehdl/proc_sys_reset_v5_0_13
vlib activehdl/generic_baseblocks_v2_1_0
vlib activehdl/axi_infrastructure_v1_1_0
vlib activehdl/axi_register_slice_v2_1_20
vlib activehdl/fifo_generator_v13_2_5
vlib activehdl/axi_data_fifo_v2_1_19
vlib activehdl/axi_crossbar_v2_1_21
vlib activehdl/axi_lite_ipif_v3_0_4
vlib activehdl/lib_pkg_v1_0_2
vlib activehdl/lib_srl_fifo_v1_0_2
vlib activehdl/axi_uartlite_v2_0_24
vlib activehdl/mdm_v3_2_17
vlib activehdl/axi_bram_ctrl_v4_1_2
vlib activehdl/xlconstant_v1_1_6
vlib activehdl/axi_protocol_converter_v2_1_20

vmap xpm activehdl/xpm
vmap microblaze_v11_0_2 activehdl/microblaze_v11_0_2
vmap xil_defaultlib activehdl/xil_defaultlib
vmap lmb_v10_v3_0_10 activehdl/lmb_v10_v3_0_10
vmap lmb_bram_if_cntlr_v4_0_17 activehdl/lmb_bram_if_cntlr_v4_0_17
vmap blk_mem_gen_v8_4_4 activehdl/blk_mem_gen_v8_4_4
vmap lib_cdc_v1_0_2 activehdl/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_13 activehdl/proc_sys_reset_v5_0_13
vmap generic_baseblocks_v2_1_0 activehdl/generic_baseblocks_v2_1_0
vmap axi_infrastructure_v1_1_0 activehdl/axi_infrastructure_v1_1_0
vmap axi_register_slice_v2_1_20 activehdl/axi_register_slice_v2_1_20
vmap fifo_generator_v13_2_5 activehdl/fifo_generator_v13_2_5
vmap axi_data_fifo_v2_1_19 activehdl/axi_data_fifo_v2_1_19
vmap axi_crossbar_v2_1_21 activehdl/axi_crossbar_v2_1_21
vmap axi_lite_ipif_v3_0_4 activehdl/axi_lite_ipif_v3_0_4
vmap lib_pkg_v1_0_2 activehdl/lib_pkg_v1_0_2
vmap lib_srl_fifo_v1_0_2 activehdl/lib_srl_fifo_v1_0_2
vmap axi_uartlite_v2_0_24 activehdl/axi_uartlite_v2_0_24
vmap mdm_v3_2_17 activehdl/mdm_v3_2_17
vmap axi_bram_ctrl_v4_1_2 activehdl/axi_bram_ctrl_v4_1_2
vmap xlconstant_v1_1_6 activehdl/xlconstant_v1_1_6
vmap axi_protocol_converter_v2_1_20 activehdl/axi_protocol_converter_v2_1_20

vlog -work xpm  -sv2k12 "+incdir+../../../../MicroblazeProject.srcs/sources_1/bd/design_1/ipshared/4fba" "+incdir+../../../../MicroblazeProject.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" \
"C:/Xilinx/Vitis/Vivado/2019.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vitis/Vivado/2019.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"C:/Xilinx/Vitis/Vivado/2019.2/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work microblaze_v11_0_2 -93 \
"../../../../MicroblazeProject.srcs/sources_1/bd/design_1/ipshared/f871/hdl/microblaze_v11_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_1/ip/design_1_microblaze_0_1/sim/design_1_microblaze_0_1.vhd" \

vcom -work lmb_v10_v3_0_10 -93 \
"../../../../MicroblazeProject.srcs/sources_1/bd/design_1/ipshared/2e88/hdl/lmb_v10_v3_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_1/ip/design_1_dlmb_v10_3/sim/design_1_dlmb_v10_3.vhd" \
"../../../bd/design_1/ip/design_1_ilmb_v10_3/sim/design_1_ilmb_v10_3.vhd" \

vcom -work lmb_bram_if_cntlr_v4_0_17 -93 \
"../../../../MicroblazeProject.srcs/sources_1/bd/design_1/ipshared/db6f/hdl/lmb_bram_if_cntlr_v4_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_1/ip/design_1_dlmb_bram_if_cntlr_3/sim/design_1_dlmb_bram_if_cntlr_3.vhd" \
"../../../bd/design_1/ip/design_1_ilmb_bram_if_cntlr_3/sim/design_1_ilmb_bram_if_cntlr_3.vhd" \

vlog -work blk_mem_gen_v8_4_4  -v2k5 "+incdir+../../../../MicroblazeProject.srcs/sources_1/bd/design_1/ipshared/4fba" "+incdir+../../../../MicroblazeProject.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" \
"../../../../MicroblazeProject.srcs/sources_1/bd/design_1/ipshared/2985/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../MicroblazeProject.srcs/sources_1/bd/design_1/ipshared/4fba" "+incdir+../../../../MicroblazeProject.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" \
"../../../bd/design_1/ip/design_1_lmb_bram_3/sim/design_1_lmb_bram_3.v" \

vcom -work lib_cdc_v1_0_2 -93 \
"../../../../MicroblazeProject.srcs/sources_1/bd/design_1/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_13 -93 \
"../../../../MicroblazeProject.srcs/sources_1/bd/design_1/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_1/ip/design_1_rst_clk_100M_0/sim/design_1_rst_clk_100M_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../MicroblazeProject.srcs/sources_1/bd/design_1/ipshared/4fba" "+incdir+../../../../MicroblazeProject.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" \
"../../../bd/design_1/ip/design_1_clk_wiz_0_0/design_1_clk_wiz_0_0_clk_wiz.v" \
"../../../bd/design_1/ip/design_1_clk_wiz_0_0/design_1_clk_wiz_0_0.v" \

vlog -work generic_baseblocks_v2_1_0  -v2k5 "+incdir+../../../../MicroblazeProject.srcs/sources_1/bd/design_1/ipshared/4fba" "+incdir+../../../../MicroblazeProject.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" \
"../../../../MicroblazeProject.srcs/sources_1/bd/design_1/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../MicroblazeProject.srcs/sources_1/bd/design_1/ipshared/4fba" "+incdir+../../../../MicroblazeProject.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" \
"../../../../MicroblazeProject.srcs/sources_1/bd/design_1/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_20  -v2k5 "+incdir+../../../../MicroblazeProject.srcs/sources_1/bd/design_1/ipshared/4fba" "+incdir+../../../../MicroblazeProject.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" \
"../../../../MicroblazeProject.srcs/sources_1/bd/design_1/ipshared/72d4/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_5  -v2k5 "+incdir+../../../../MicroblazeProject.srcs/sources_1/bd/design_1/ipshared/4fba" "+incdir+../../../../MicroblazeProject.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" \
"../../../../MicroblazeProject.srcs/sources_1/bd/design_1/ipshared/276e/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_5 -93 \
"../../../../MicroblazeProject.srcs/sources_1/bd/design_1/ipshared/276e/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_5  -v2k5 "+incdir+../../../../MicroblazeProject.srcs/sources_1/bd/design_1/ipshared/4fba" "+incdir+../../../../MicroblazeProject.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" \
"../../../../MicroblazeProject.srcs/sources_1/bd/design_1/ipshared/276e/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axi_data_fifo_v2_1_19  -v2k5 "+incdir+../../../../MicroblazeProject.srcs/sources_1/bd/design_1/ipshared/4fba" "+incdir+../../../../MicroblazeProject.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" \
"../../../../MicroblazeProject.srcs/sources_1/bd/design_1/ipshared/60de/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_21  -v2k5 "+incdir+../../../../MicroblazeProject.srcs/sources_1/bd/design_1/ipshared/4fba" "+incdir+../../../../MicroblazeProject.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" \
"../../../../MicroblazeProject.srcs/sources_1/bd/design_1/ipshared/6b0d/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../MicroblazeProject.srcs/sources_1/bd/design_1/ipshared/4fba" "+incdir+../../../../MicroblazeProject.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" \
"../../../bd/design_1/ip/design_1_xbar_0/sim/design_1_xbar_0.v" \
"../../../bd/design_1/ipshared/1e8d/hdl/PADS_SOUND_v1_0_AXI_LITE.v" \
"../../../bd/design_1/ipshared/1e8d/src/SOUND_GENERATOR.v" \
"../../../bd/design_1/ipshared/1e8d/hdl/PADS_SOUND_v1_0.v" \
"../../../bd/design_1/ip/design_1_PADS_SOUND_0_0/sim/design_1_PADS_SOUND_0_0.v" \

vcom -work axi_lite_ipif_v3_0_4 -93 \
"../../../../MicroblazeProject.srcs/sources_1/bd/design_1/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work lib_pkg_v1_0_2 -93 \
"../../../../MicroblazeProject.srcs/sources_1/bd/design_1/ipshared/0513/hdl/lib_pkg_v1_0_rfs.vhd" \

vcom -work lib_srl_fifo_v1_0_2 -93 \
"../../../../MicroblazeProject.srcs/sources_1/bd/design_1/ipshared/51ce/hdl/lib_srl_fifo_v1_0_rfs.vhd" \

vcom -work axi_uartlite_v2_0_24 -93 \
"../../../../MicroblazeProject.srcs/sources_1/bd/design_1/ipshared/d8db/hdl/axi_uartlite_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_1/ip/design_1_axi_uartlite_0_0/sim/design_1_axi_uartlite_0_0.vhd" \

vcom -work mdm_v3_2_17 -93 \
"../../../../MicroblazeProject.srcs/sources_1/bd/design_1/ipshared/f9aa/hdl/mdm_v3_2_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_1/ip/design_1_mdm_0_0/sim/design_1_mdm_0_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../MicroblazeProject.srcs/sources_1/bd/design_1/ipshared/4fba" "+incdir+../../../../MicroblazeProject.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" \
"../../../bd/design_1/ipshared/8295/src/BLOCK_GEN.v" \
"../../../bd/design_1/ipshared/8295/src/CHAR_ROM.v" \
"../../../bd/design_1/ipshared/8295/src/CLOCKER.v" \
"../../../bd/design_1/ipshared/8295/src/GRAM_DECODER.v" \
"../../../bd/design_1/ipshared/8295/src/TEXT_GEN.v" \
"../../../bd/design_1/ipshared/8295/src/TIMING_GEN.v" \
"../../../bd/design_1/ipshared/8295/src/BRAM_GPU.v" \
"../../../bd/design_1/ip/design_1_BRAM_GPU_0_1/sim/design_1_BRAM_GPU_0_1.v" \

vcom -work axi_bram_ctrl_v4_1_2 -93 \
"../../../../MicroblazeProject.srcs/sources_1/bd/design_1/ipshared/a002/hdl/axi_bram_ctrl_v4_1_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_1/ip/design_1_axi_bram_ctrl_0_1/sim/design_1_axi_bram_ctrl_0_1.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../MicroblazeProject.srcs/sources_1/bd/design_1/ipshared/4fba" "+incdir+../../../../MicroblazeProject.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" \
"../../../bd/design_1/ip/design_1_blk_mem_gen_0_1/sim/design_1_blk_mem_gen_0_1.v" \

vlog -work xlconstant_v1_1_6  -v2k5 "+incdir+../../../../MicroblazeProject.srcs/sources_1/bd/design_1/ipshared/4fba" "+incdir+../../../../MicroblazeProject.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" \
"../../../../MicroblazeProject.srcs/sources_1/bd/design_1/ipshared/34f7/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../MicroblazeProject.srcs/sources_1/bd/design_1/ipshared/4fba" "+incdir+../../../../MicroblazeProject.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" \
"../../../bd/design_1/ip/design_1_xlconstant_0_0/sim/design_1_xlconstant_0_0.v" \

vlog -work axi_protocol_converter_v2_1_20  -v2k5 "+incdir+../../../../MicroblazeProject.srcs/sources_1/bd/design_1/ipshared/4fba" "+incdir+../../../../MicroblazeProject.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" \
"../../../../MicroblazeProject.srcs/sources_1/bd/design_1/ipshared/c4a6/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../MicroblazeProject.srcs/sources_1/bd/design_1/ipshared/4fba" "+incdir+../../../../MicroblazeProject.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" \
"../../../bd/design_1/ip/design_1_auto_pc_0/sim/design_1_auto_pc_0.v" \
"../../../bd/design_1/sim/design_1.v" \

vlog -work xil_defaultlib \
"glbl.v"

