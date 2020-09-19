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


// IP VLNV: xilinx.com:user:PADS_SOUND:1.0
// IP Revision: 3

`timescale 1ns/1ps

(* DowngradeIPIdentifiedWarnings = "yes" *)
module design_1_PADS_SOUND_0_0 (
  sound_a,
  sound_b,
  pad_a_plug,
  pad_b_plug,
  pad_a,
  pad_b,
  axi_lite_aclk,
  axi_lite_aresetn,
  axi_lite_awaddr,
  axi_lite_awprot,
  axi_lite_awvalid,
  axi_lite_awready,
  axi_lite_wdata,
  axi_lite_wstrb,
  axi_lite_wvalid,
  axi_lite_wready,
  axi_lite_bresp,
  axi_lite_bvalid,
  axi_lite_bready,
  axi_lite_araddr,
  axi_lite_arprot,
  axi_lite_arvalid,
  axi_lite_arready,
  axi_lite_rdata,
  axi_lite_rresp,
  axi_lite_rvalid,
  axi_lite_rready
);

output wire sound_a;
output wire sound_b;
output wire pad_a_plug;
output wire pad_b_plug;
input wire [5 : 0] pad_a;
input wire [5 : 0] pad_b;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME AXI_LITE_CLK, ASSOCIATED_BUSIF AXI_LITE, ASSOCIATED_RESET axi_lite_aresetn, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 AXI_LITE_CLK CLK" *)
input wire axi_lite_aclk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME AXI_LITE_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 AXI_LITE_RST RST" *)
input wire axi_lite_aresetn;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_LITE AWADDR" *)
input wire [3 : 0] axi_lite_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_LITE AWPROT" *)
input wire [2 : 0] axi_lite_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_LITE AWVALID" *)
input wire axi_lite_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_LITE AWREADY" *)
output wire axi_lite_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_LITE WDATA" *)
input wire [31 : 0] axi_lite_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_LITE WSTRB" *)
input wire [3 : 0] axi_lite_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_LITE WVALID" *)
input wire axi_lite_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_LITE WREADY" *)
output wire axi_lite_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_LITE BRESP" *)
output wire [1 : 0] axi_lite_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_LITE BVALID" *)
output wire axi_lite_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_LITE BREADY" *)
input wire axi_lite_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_LITE ARADDR" *)
input wire [3 : 0] axi_lite_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_LITE ARPROT" *)
input wire [2 : 0] axi_lite_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_LITE ARVALID" *)
input wire axi_lite_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_LITE ARREADY" *)
output wire axi_lite_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_LITE RDATA" *)
output wire [31 : 0] axi_lite_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_LITE RRESP" *)
output wire [1 : 0] axi_lite_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_LITE RVALID" *)
output wire axi_lite_rvalid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME AXI_LITE, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 4, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 4, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, NUM\
_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_LITE RREADY" *)
input wire axi_lite_rready;

  PADS_SOUND_v1_0 #(
    .C_AXI_LITE_DATA_WIDTH(32),  // Width of S_AXI data bus
    .C_AXI_LITE_ADDR_WIDTH(4)  // Width of S_AXI address bus
  ) inst (
    .sound_a(sound_a),
    .sound_b(sound_b),
    .pad_a_plug(pad_a_plug),
    .pad_b_plug(pad_b_plug),
    .pad_a(pad_a),
    .pad_b(pad_b),
    .axi_lite_aclk(axi_lite_aclk),
    .axi_lite_aresetn(axi_lite_aresetn),
    .axi_lite_awaddr(axi_lite_awaddr),
    .axi_lite_awprot(axi_lite_awprot),
    .axi_lite_awvalid(axi_lite_awvalid),
    .axi_lite_awready(axi_lite_awready),
    .axi_lite_wdata(axi_lite_wdata),
    .axi_lite_wstrb(axi_lite_wstrb),
    .axi_lite_wvalid(axi_lite_wvalid),
    .axi_lite_wready(axi_lite_wready),
    .axi_lite_bresp(axi_lite_bresp),
    .axi_lite_bvalid(axi_lite_bvalid),
    .axi_lite_bready(axi_lite_bready),
    .axi_lite_araddr(axi_lite_araddr),
    .axi_lite_arprot(axi_lite_arprot),
    .axi_lite_arvalid(axi_lite_arvalid),
    .axi_lite_arready(axi_lite_arready),
    .axi_lite_rdata(axi_lite_rdata),
    .axi_lite_rresp(axi_lite_rresp),
    .axi_lite_rvalid(axi_lite_rvalid),
    .axi_lite_rready(axi_lite_rready)
  );
endmodule
