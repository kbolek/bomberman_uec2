// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Mon Aug 10 18:22:08 2020
// Host        : Marysia running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_GPU_DC_0_0_stub.v
// Design      : design_1_GPU_DC_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "GPU_DC_v1_0,Vivado 2019.2" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(vga_clk, r, g, b, hs, vs, axi_lite_aclk, 
  axi_lite_aresetn, axi_lite_awaddr, axi_lite_awprot, axi_lite_awvalid, axi_lite_awready, 
  axi_lite_wdata, axi_lite_wstrb, axi_lite_wvalid, axi_lite_wready, axi_lite_bresp, 
  axi_lite_bvalid, axi_lite_bready, axi_lite_araddr, axi_lite_arprot, axi_lite_arvalid, 
  axi_lite_arready, axi_lite_rdata, axi_lite_rresp, axi_lite_rvalid, axi_lite_rready)
/* synthesis syn_black_box black_box_pad_pin="vga_clk,r[3:0],g[3:0],b[3:0],hs,vs,axi_lite_aclk,axi_lite_aresetn,axi_lite_awaddr[3:0],axi_lite_awprot[2:0],axi_lite_awvalid,axi_lite_awready,axi_lite_wdata[31:0],axi_lite_wstrb[3:0],axi_lite_wvalid,axi_lite_wready,axi_lite_bresp[1:0],axi_lite_bvalid,axi_lite_bready,axi_lite_araddr[3:0],axi_lite_arprot[2:0],axi_lite_arvalid,axi_lite_arready,axi_lite_rdata[31:0],axi_lite_rresp[1:0],axi_lite_rvalid,axi_lite_rready" */;
  input vga_clk;
  output [3:0]r;
  output [3:0]g;
  output [3:0]b;
  output hs;
  output vs;
  input axi_lite_aclk;
  input axi_lite_aresetn;
  input [3:0]axi_lite_awaddr;
  input [2:0]axi_lite_awprot;
  input axi_lite_awvalid;
  output axi_lite_awready;
  input [31:0]axi_lite_wdata;
  input [3:0]axi_lite_wstrb;
  input axi_lite_wvalid;
  output axi_lite_wready;
  output [1:0]axi_lite_bresp;
  output axi_lite_bvalid;
  input axi_lite_bready;
  input [3:0]axi_lite_araddr;
  input [2:0]axi_lite_arprot;
  input axi_lite_arvalid;
  output axi_lite_arready;
  output [31:0]axi_lite_rdata;
  output [1:0]axi_lite_rresp;
  output axi_lite_rvalid;
  input axi_lite_rready;
endmodule
