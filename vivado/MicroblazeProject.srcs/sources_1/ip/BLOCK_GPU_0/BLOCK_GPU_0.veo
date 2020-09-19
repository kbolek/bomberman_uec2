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

// IP VLNV: xilinx.com:user:BLOCK_GPU:1.0
// IP Revision: 1

// The following must be inserted into your Verilog file for this
// core to be instantiated. Change the instance name and port connections
// (in parentheses) to your own signal names.

//----------- Begin Cut here for INSTANTIATION Template ---// INST_TAG
BLOCK_GPU_0 your_instance_name (
  .axi_lite_awaddr(axi_lite_awaddr),    // input wire [3 : 0] axi_lite_awaddr
  .axi_lite_awprot(axi_lite_awprot),    // input wire [2 : 0] axi_lite_awprot
  .axi_lite_awvalid(axi_lite_awvalid),  // input wire axi_lite_awvalid
  .axi_lite_awready(axi_lite_awready),  // output wire axi_lite_awready
  .axi_lite_wdata(axi_lite_wdata),      // input wire [31 : 0] axi_lite_wdata
  .axi_lite_wstrb(axi_lite_wstrb),      // input wire [3 : 0] axi_lite_wstrb
  .axi_lite_wvalid(axi_lite_wvalid),    // input wire axi_lite_wvalid
  .axi_lite_wready(axi_lite_wready),    // output wire axi_lite_wready
  .axi_lite_bresp(axi_lite_bresp),      // output wire [1 : 0] axi_lite_bresp
  .axi_lite_bvalid(axi_lite_bvalid),    // output wire axi_lite_bvalid
  .axi_lite_bready(axi_lite_bready),    // input wire axi_lite_bready
  .axi_lite_araddr(axi_lite_araddr),    // input wire [3 : 0] axi_lite_araddr
  .axi_lite_arprot(axi_lite_arprot),    // input wire [2 : 0] axi_lite_arprot
  .axi_lite_arvalid(axi_lite_arvalid),  // input wire axi_lite_arvalid
  .axi_lite_arready(axi_lite_arready),  // output wire axi_lite_arready
  .axi_lite_rdata(axi_lite_rdata),      // output wire [31 : 0] axi_lite_rdata
  .axi_lite_rresp(axi_lite_rresp),      // output wire [1 : 0] axi_lite_rresp
  .axi_lite_rvalid(axi_lite_rvalid),    // output wire axi_lite_rvalid
  .axi_lite_rready(axi_lite_rready),    // input wire axi_lite_rready
  .axi_lite_aclk(axi_lite_aclk),        // input wire axi_lite_aclk
  .axi_lite_aresetn(axi_lite_aresetn)  // input wire axi_lite_aresetn
);
// INST_TAG_END ------ End INSTANTIATION Template ---------

// You must compile the wrapper file BLOCK_GPU_0.v when simulating
// the core, BLOCK_GPU_0. When compiling the wrapper file, be sure to
// reference the Verilog simulation library.

