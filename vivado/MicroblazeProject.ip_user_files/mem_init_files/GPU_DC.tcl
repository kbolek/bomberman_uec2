

proc generate {drv_handle} {
	xdefine_include_file $drv_handle "xparameters.h" "GPU_DC" "NUM_INSTANCES" "DEVICE_ID"  "C_AXI_LITE_BASEADDR" "C_AXI_LITE_HIGHADDR"
}
