-makelib xcelium_lib/xpm -sv \
  "B:/xilinx/Vivado/2019.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
-endlib
-makelib xcelium_lib/xpm \
  "B:/xilinx/Vivado/2019.2/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../../MicroblazeProject.srcs/sources_1/ip/BLOCK_GPU_0_1/hdl/BLOCK_GPU_v1_0_AXI_LITE.v" \
  "../../../../MicroblazeProject.srcs/sources_1/ip/BLOCK_GPU_0_1/hdl/BLOCK_GPU_v1_0.v" \
  "../../../../MicroblazeProject.srcs/sources_1/ip/BLOCK_GPU_0_1/sim/BLOCK_GPU_0.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  glbl.v
-endlib

