-makelib ies_lib/xpm -sv \
  "B:/xilinx/Vivado/2019.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
-endlib
-makelib ies_lib/xpm \
  "B:/xilinx/Vivado/2019.2/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../../MicroblazeProject.srcs/sources_1/ip/GPU_DC_0/src/BLOCK_GEN.v" \
  "../../../../MicroblazeProject.srcs/sources_1/ip/GPU_DC_0/src/CHAR_ROM.v" \
  "../../../../MicroblazeProject.srcs/sources_1/ip/GPU_DC_0/src/CLOCKER.v" \
  "../../../../MicroblazeProject.srcs/sources_1/ip/GPU_DC_0/hdl/GPU_DC_v1_0_AXI_LITE.v" \
  "../../../../MicroblazeProject.srcs/sources_1/ip/GPU_DC_0/src/GRAM_DECODER.v" \
  "../../../../MicroblazeProject.srcs/sources_1/ip/GPU_DC_0/src/TEXT_GEN.v" \
  "../../../../MicroblazeProject.srcs/sources_1/ip/GPU_DC_0/src/TIMING_GEN.v" \
  "../../../../MicroblazeProject.srcs/sources_1/ip/GPU_DC_0/hdl/GPU_DC_v1_0.v" \
  "../../../../MicroblazeProject.srcs/sources_1/ip/GPU_DC_0/sim/GPU_DC_0.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  glbl.v
-endlib

