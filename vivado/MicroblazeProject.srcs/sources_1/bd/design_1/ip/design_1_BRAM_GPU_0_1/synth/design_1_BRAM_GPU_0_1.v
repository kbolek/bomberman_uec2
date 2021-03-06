// (c) Copyright 1995-2020 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:user:BRAM_GPU:2.3
// IP Revision: 1

(* X_CORE_INFO = "BRAM_GPU,Vivado 2019.2" *)
(* CHECK_LICENSE_TYPE = "design_1_BRAM_GPU_0_1,BRAM_GPU,{}" *)
(* CORE_GENERATION_INFO = "design_1_BRAM_GPU_0_1,BRAM_GPU,{x_ipProduct=Vivado 2019.2,x_ipVendor=xilinx.com,x_ipLibrary=user,x_ipName=BRAM_GPU,x_ipVersion=2.3,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}" *)
(* IP_DEFINITION_SOURCE = "package_project" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module design_1_BRAM_GPU_0_1 (
  vga_clk,
  rst,
  r,
  g,
  b,
  hs,
  vs,
  bram_addr_blk,
  bram_rdata_blk,
  bram_en_blk,
  bram_clk_blk,
  bram_rst_blk,
  bram_we_blk,
  bram_addr_txtr,
  bram_rdata_txtr,
  bram_en_txtr,
  bram_clk_txtr,
  bram_rst_txtr,
  bram_we_txtr
);

input wire vga_clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME vga_rst, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 vga_rst RST" *)
input wire rst;
output wire [3 : 0] r;
output wire [3 : 0] g;
output wire [3 : 0] b;
output wire hs;
output wire vs;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 bram_blk ADDR" *)
output wire [31 : 0] bram_addr_blk;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 bram_blk DOUT" *)
input wire [31 : 0] bram_rdata_blk;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 bram_blk EN" *)
output wire bram_en_blk;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 bram_blk CLK" *)
output wire bram_clk_blk;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 bram_blk RST" *)
output wire bram_rst_blk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME bram_blk, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 bram_blk WE" *)
output wire [3 : 0] bram_we_blk;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 bram_txtr ADDR" *)
output wire [31 : 0] bram_addr_txtr;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 bram_txtr DOUT" *)
input wire [31 : 0] bram_rdata_txtr;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 bram_txtr EN" *)
output wire bram_en_txtr;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 bram_txtr CLK" *)
output wire bram_clk_txtr;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 bram_txtr RST" *)
output wire bram_rst_txtr;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME bram_txtr, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 bram_txtr WE" *)
output wire [3 : 0] bram_we_txtr;

  BRAM_GPU inst (
    .vga_clk(vga_clk),
    .rst(rst),
    .r(r),
    .g(g),
    .b(b),
    .hs(hs),
    .vs(vs),
    .bram_addr_blk(bram_addr_blk),
    .bram_rdata_blk(bram_rdata_blk),
    .bram_en_blk(bram_en_blk),
    .bram_clk_blk(bram_clk_blk),
    .bram_rst_blk(bram_rst_blk),
    .bram_we_blk(bram_we_blk),
    .bram_addr_txtr(bram_addr_txtr),
    .bram_rdata_txtr(bram_rdata_txtr),
    .bram_en_txtr(bram_en_txtr),
    .bram_clk_txtr(bram_clk_txtr),
    .bram_rst_txtr(bram_rst_txtr),
    .bram_we_txtr(bram_we_txtr)
  );
endmodule
