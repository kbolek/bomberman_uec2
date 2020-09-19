// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Sun Aug  9 22:23:47 2020
// Host        : Marysia running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_PADS_SOUND_0_0_sim_netlist.v
// Design      : design_1_PADS_SOUND_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_PADS_SOUND_v1_0
   (S_AXI_AWREADY,
    S_AXI_WREADY,
    S_AXI_ARREADY,
    axi_lite_rdata,
    axi_lite_rvalid,
    axi_lite_bvalid,
    axi_lite_aclk,
    axi_lite_araddr,
    axi_lite_arvalid,
    axi_lite_awaddr,
    axi_lite_wvalid,
    axi_lite_awvalid,
    axi_lite_wdata,
    axi_lite_wstrb,
    axi_lite_aresetn,
    axi_lite_bready,
    axi_lite_rready);
  output S_AXI_AWREADY;
  output S_AXI_WREADY;
  output S_AXI_ARREADY;
  output [31:0]axi_lite_rdata;
  output axi_lite_rvalid;
  output axi_lite_bvalid;
  input axi_lite_aclk;
  input [1:0]axi_lite_araddr;
  input axi_lite_arvalid;
  input [1:0]axi_lite_awaddr;
  input axi_lite_wvalid;
  input axi_lite_awvalid;
  input [31:0]axi_lite_wdata;
  input [3:0]axi_lite_wstrb;
  input axi_lite_aresetn;
  input axi_lite_bready;
  input axi_lite_rready;

  wire S_AXI_ARREADY;
  wire S_AXI_AWREADY;
  wire S_AXI_WREADY;
  wire axi_lite_aclk;
  wire [1:0]axi_lite_araddr;
  wire axi_lite_aresetn;
  wire axi_lite_arvalid;
  wire [1:0]axi_lite_awaddr;
  wire axi_lite_awvalid;
  wire axi_lite_bready;
  wire axi_lite_bvalid;
  wire [31:0]axi_lite_rdata;
  wire axi_lite_rready;
  wire axi_lite_rvalid;
  wire [31:0]axi_lite_wdata;
  wire [3:0]axi_lite_wstrb;
  wire axi_lite_wvalid;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_PADS_SOUND_v1_0_AXI_LITE PADS_SOUND_v1_0_AXI_LITE_inst
       (.S_AXI_ARREADY(S_AXI_ARREADY),
        .S_AXI_AWREADY(S_AXI_AWREADY),
        .S_AXI_WREADY(S_AXI_WREADY),
        .axi_lite_aclk(axi_lite_aclk),
        .axi_lite_araddr(axi_lite_araddr),
        .axi_lite_aresetn(axi_lite_aresetn),
        .axi_lite_arvalid(axi_lite_arvalid),
        .axi_lite_awaddr(axi_lite_awaddr),
        .axi_lite_awvalid(axi_lite_awvalid),
        .axi_lite_bready(axi_lite_bready),
        .axi_lite_bvalid(axi_lite_bvalid),
        .axi_lite_rdata(axi_lite_rdata),
        .axi_lite_rready(axi_lite_rready),
        .axi_lite_rvalid(axi_lite_rvalid),
        .axi_lite_wdata(axi_lite_wdata),
        .axi_lite_wstrb(axi_lite_wstrb),
        .axi_lite_wvalid(axi_lite_wvalid));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_PADS_SOUND_v1_0_AXI_LITE
   (S_AXI_AWREADY,
    S_AXI_WREADY,
    S_AXI_ARREADY,
    axi_lite_rdata,
    axi_lite_rvalid,
    axi_lite_bvalid,
    axi_lite_aclk,
    axi_lite_araddr,
    axi_lite_arvalid,
    axi_lite_awaddr,
    axi_lite_wvalid,
    axi_lite_awvalid,
    axi_lite_wdata,
    axi_lite_wstrb,
    axi_lite_aresetn,
    axi_lite_bready,
    axi_lite_rready);
  output S_AXI_AWREADY;
  output S_AXI_WREADY;
  output S_AXI_ARREADY;
  output [31:0]axi_lite_rdata;
  output axi_lite_rvalid;
  output axi_lite_bvalid;
  input axi_lite_aclk;
  input [1:0]axi_lite_araddr;
  input axi_lite_arvalid;
  input [1:0]axi_lite_awaddr;
  input axi_lite_wvalid;
  input axi_lite_awvalid;
  input [31:0]axi_lite_wdata;
  input [3:0]axi_lite_wstrb;
  input axi_lite_aresetn;
  input axi_lite_bready;
  input axi_lite_rready;

  wire S_AXI_ARREADY;
  wire S_AXI_AWREADY;
  wire S_AXI_WREADY;
  wire aw_en_i_1_n_0;
  wire aw_en_reg_n_0;
  wire [3:2]axi_araddr;
  wire \axi_araddr[2]_i_1_n_0 ;
  wire \axi_araddr[3]_i_1_n_0 ;
  wire axi_arready0;
  wire \axi_awaddr[2]_i_1_n_0 ;
  wire \axi_awaddr[3]_i_1_n_0 ;
  wire axi_awready0;
  wire axi_awready_i_1_n_0;
  wire axi_bvalid_i_1_n_0;
  wire axi_lite_aclk;
  wire [1:0]axi_lite_araddr;
  wire axi_lite_aresetn;
  wire axi_lite_arvalid;
  wire [1:0]axi_lite_awaddr;
  wire axi_lite_awvalid;
  wire axi_lite_bready;
  wire axi_lite_bvalid;
  wire [31:0]axi_lite_rdata;
  wire axi_lite_rready;
  wire axi_lite_rvalid;
  wire [31:0]axi_lite_wdata;
  wire [3:0]axi_lite_wstrb;
  wire axi_lite_wvalid;
  wire axi_rvalid_i_1_n_0;
  wire axi_wready0;
  wire [1:0]p_0_in;
  wire [31:7]p_1_in;
  wire [31:0]reg_data_out;
  wire [31:0]slv_reg2;
  wire [31:0]slv_reg3;
  wire \slv_reg3[15]_i_1_n_0 ;
  wire \slv_reg3[23]_i_1_n_0 ;
  wire \slv_reg3[31]_i_1_n_0 ;
  wire \slv_reg3[7]_i_1_n_0 ;
  wire slv_reg_rden__0;
  wire slv_reg_wren__0;

  LUT6 #(
    .INIT(64'hF7FFC4CCC4CCC4CC)) 
    aw_en_i_1
       (.I0(axi_lite_awvalid),
        .I1(aw_en_reg_n_0),
        .I2(S_AXI_AWREADY),
        .I3(axi_lite_wvalid),
        .I4(axi_lite_bready),
        .I5(axi_lite_bvalid),
        .O(aw_en_i_1_n_0));
  FDSE aw_en_reg
       (.C(axi_lite_aclk),
        .CE(1'b1),
        .D(aw_en_i_1_n_0),
        .Q(aw_en_reg_n_0),
        .S(axi_awready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[2]_i_1 
       (.I0(axi_lite_araddr[0]),
        .I1(axi_lite_arvalid),
        .I2(S_AXI_ARREADY),
        .I3(axi_araddr[2]),
        .O(\axi_araddr[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[3]_i_1 
       (.I0(axi_lite_araddr[1]),
        .I1(axi_lite_arvalid),
        .I2(S_AXI_ARREADY),
        .I3(axi_araddr[3]),
        .O(\axi_araddr[3]_i_1_n_0 ));
  FDRE \axi_araddr_reg[2] 
       (.C(axi_lite_aclk),
        .CE(1'b1),
        .D(\axi_araddr[2]_i_1_n_0 ),
        .Q(axi_araddr[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_araddr_reg[3] 
       (.C(axi_lite_aclk),
        .CE(1'b1),
        .D(\axi_araddr[3]_i_1_n_0 ),
        .Q(axi_araddr[3]),
        .R(axi_awready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h2)) 
    axi_arready_i_1
       (.I0(axi_lite_arvalid),
        .I1(S_AXI_ARREADY),
        .O(axi_arready0));
  FDRE axi_arready_reg
       (.C(axi_lite_aclk),
        .CE(1'b1),
        .D(axi_arready0),
        .Q(S_AXI_ARREADY),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'hFBFFFFFF08000000)) 
    \axi_awaddr[2]_i_1 
       (.I0(axi_lite_awaddr[0]),
        .I1(axi_lite_wvalid),
        .I2(S_AXI_AWREADY),
        .I3(aw_en_reg_n_0),
        .I4(axi_lite_awvalid),
        .I5(p_0_in[0]),
        .O(\axi_awaddr[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFBFFFFFF08000000)) 
    \axi_awaddr[3]_i_1 
       (.I0(axi_lite_awaddr[1]),
        .I1(axi_lite_wvalid),
        .I2(S_AXI_AWREADY),
        .I3(aw_en_reg_n_0),
        .I4(axi_lite_awvalid),
        .I5(p_0_in[1]),
        .O(\axi_awaddr[3]_i_1_n_0 ));
  FDRE \axi_awaddr_reg[2] 
       (.C(axi_lite_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[2]_i_1_n_0 ),
        .Q(p_0_in[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_awaddr_reg[3] 
       (.C(axi_lite_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[3]_i_1_n_0 ),
        .Q(p_0_in[1]),
        .R(axi_awready_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    axi_awready_i_1
       (.I0(axi_lite_aresetn),
        .O(axi_awready_i_1_n_0));
  LUT4 #(
    .INIT(16'h2000)) 
    axi_awready_i_2
       (.I0(axi_lite_wvalid),
        .I1(S_AXI_AWREADY),
        .I2(aw_en_reg_n_0),
        .I3(axi_lite_awvalid),
        .O(axi_awready0));
  FDRE axi_awready_reg
       (.C(axi_lite_aclk),
        .CE(1'b1),
        .D(axi_awready0),
        .Q(S_AXI_AWREADY),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000FFFF80008000)) 
    axi_bvalid_i_1
       (.I0(axi_lite_awvalid),
        .I1(axi_lite_wvalid),
        .I2(S_AXI_AWREADY),
        .I3(S_AXI_WREADY),
        .I4(axi_lite_bready),
        .I5(axi_lite_bvalid),
        .O(axi_bvalid_i_1_n_0));
  FDRE axi_bvalid_reg
       (.C(axi_lite_aclk),
        .CE(1'b1),
        .D(axi_bvalid_i_1_n_0),
        .Q(axi_lite_bvalid),
        .R(axi_awready_i_1_n_0));
  LUT4 #(
    .INIT(16'hB080)) 
    \axi_rdata[0]_i_1 
       (.I0(slv_reg3[0]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(slv_reg2[0]),
        .O(reg_data_out[0]));
  LUT4 #(
    .INIT(16'hA808)) 
    \axi_rdata[10]_i_1 
       (.I0(axi_araddr[3]),
        .I1(slv_reg2[10]),
        .I2(axi_araddr[2]),
        .I3(slv_reg3[10]),
        .O(reg_data_out[10]));
  LUT4 #(
    .INIT(16'hA808)) 
    \axi_rdata[11]_i_1 
       (.I0(axi_araddr[3]),
        .I1(slv_reg2[11]),
        .I2(axi_araddr[2]),
        .I3(slv_reg3[11]),
        .O(reg_data_out[11]));
  LUT4 #(
    .INIT(16'hA808)) 
    \axi_rdata[12]_i_1 
       (.I0(axi_araddr[3]),
        .I1(slv_reg2[12]),
        .I2(axi_araddr[2]),
        .I3(slv_reg3[12]),
        .O(reg_data_out[12]));
  LUT4 #(
    .INIT(16'hA808)) 
    \axi_rdata[13]_i_1 
       (.I0(axi_araddr[3]),
        .I1(slv_reg2[13]),
        .I2(axi_araddr[2]),
        .I3(slv_reg3[13]),
        .O(reg_data_out[13]));
  LUT4 #(
    .INIT(16'hA808)) 
    \axi_rdata[14]_i_1 
       (.I0(axi_araddr[3]),
        .I1(slv_reg2[14]),
        .I2(axi_araddr[2]),
        .I3(slv_reg3[14]),
        .O(reg_data_out[14]));
  LUT4 #(
    .INIT(16'hA808)) 
    \axi_rdata[15]_i_1 
       (.I0(axi_araddr[3]),
        .I1(slv_reg2[15]),
        .I2(axi_araddr[2]),
        .I3(slv_reg3[15]),
        .O(reg_data_out[15]));
  LUT4 #(
    .INIT(16'hA808)) 
    \axi_rdata[16]_i_1 
       (.I0(axi_araddr[3]),
        .I1(slv_reg2[16]),
        .I2(axi_araddr[2]),
        .I3(slv_reg3[16]),
        .O(reg_data_out[16]));
  LUT4 #(
    .INIT(16'hA808)) 
    \axi_rdata[17]_i_1 
       (.I0(axi_araddr[3]),
        .I1(slv_reg2[17]),
        .I2(axi_araddr[2]),
        .I3(slv_reg3[17]),
        .O(reg_data_out[17]));
  LUT4 #(
    .INIT(16'hA808)) 
    \axi_rdata[18]_i_1 
       (.I0(axi_araddr[3]),
        .I1(slv_reg2[18]),
        .I2(axi_araddr[2]),
        .I3(slv_reg3[18]),
        .O(reg_data_out[18]));
  LUT4 #(
    .INIT(16'hA808)) 
    \axi_rdata[19]_i_1 
       (.I0(axi_araddr[3]),
        .I1(slv_reg2[19]),
        .I2(axi_araddr[2]),
        .I3(slv_reg3[19]),
        .O(reg_data_out[19]));
  LUT4 #(
    .INIT(16'hB080)) 
    \axi_rdata[1]_i_1 
       (.I0(slv_reg3[1]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(slv_reg2[1]),
        .O(reg_data_out[1]));
  LUT4 #(
    .INIT(16'hA808)) 
    \axi_rdata[20]_i_1 
       (.I0(axi_araddr[3]),
        .I1(slv_reg2[20]),
        .I2(axi_araddr[2]),
        .I3(slv_reg3[20]),
        .O(reg_data_out[20]));
  LUT4 #(
    .INIT(16'hA808)) 
    \axi_rdata[21]_i_1 
       (.I0(axi_araddr[3]),
        .I1(slv_reg2[21]),
        .I2(axi_araddr[2]),
        .I3(slv_reg3[21]),
        .O(reg_data_out[21]));
  LUT4 #(
    .INIT(16'hA808)) 
    \axi_rdata[22]_i_1 
       (.I0(axi_araddr[3]),
        .I1(slv_reg2[22]),
        .I2(axi_araddr[2]),
        .I3(slv_reg3[22]),
        .O(reg_data_out[22]));
  LUT4 #(
    .INIT(16'hA808)) 
    \axi_rdata[23]_i_1 
       (.I0(axi_araddr[3]),
        .I1(slv_reg2[23]),
        .I2(axi_araddr[2]),
        .I3(slv_reg3[23]),
        .O(reg_data_out[23]));
  LUT4 #(
    .INIT(16'hA808)) 
    \axi_rdata[24]_i_1 
       (.I0(axi_araddr[3]),
        .I1(slv_reg2[24]),
        .I2(axi_araddr[2]),
        .I3(slv_reg3[24]),
        .O(reg_data_out[24]));
  LUT4 #(
    .INIT(16'hA808)) 
    \axi_rdata[25]_i_1 
       (.I0(axi_araddr[3]),
        .I1(slv_reg2[25]),
        .I2(axi_araddr[2]),
        .I3(slv_reg3[25]),
        .O(reg_data_out[25]));
  LUT4 #(
    .INIT(16'hA808)) 
    \axi_rdata[26]_i_1 
       (.I0(axi_araddr[3]),
        .I1(slv_reg2[26]),
        .I2(axi_araddr[2]),
        .I3(slv_reg3[26]),
        .O(reg_data_out[26]));
  LUT4 #(
    .INIT(16'hA808)) 
    \axi_rdata[27]_i_1 
       (.I0(axi_araddr[3]),
        .I1(slv_reg2[27]),
        .I2(axi_araddr[2]),
        .I3(slv_reg3[27]),
        .O(reg_data_out[27]));
  LUT4 #(
    .INIT(16'hA808)) 
    \axi_rdata[28]_i_1 
       (.I0(axi_araddr[3]),
        .I1(slv_reg2[28]),
        .I2(axi_araddr[2]),
        .I3(slv_reg3[28]),
        .O(reg_data_out[28]));
  LUT4 #(
    .INIT(16'hA808)) 
    \axi_rdata[29]_i_1 
       (.I0(axi_araddr[3]),
        .I1(slv_reg2[29]),
        .I2(axi_araddr[2]),
        .I3(slv_reg3[29]),
        .O(reg_data_out[29]));
  LUT4 #(
    .INIT(16'hB080)) 
    \axi_rdata[2]_i_1 
       (.I0(slv_reg3[2]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(slv_reg2[2]),
        .O(reg_data_out[2]));
  LUT4 #(
    .INIT(16'hA808)) 
    \axi_rdata[30]_i_1 
       (.I0(axi_araddr[3]),
        .I1(slv_reg2[30]),
        .I2(axi_araddr[2]),
        .I3(slv_reg3[30]),
        .O(reg_data_out[30]));
  LUT4 #(
    .INIT(16'hA808)) 
    \axi_rdata[31]_i_1 
       (.I0(axi_araddr[3]),
        .I1(slv_reg2[31]),
        .I2(axi_araddr[2]),
        .I3(slv_reg3[31]),
        .O(reg_data_out[31]));
  LUT4 #(
    .INIT(16'hB080)) 
    \axi_rdata[3]_i_1 
       (.I0(slv_reg3[3]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(slv_reg2[3]),
        .O(reg_data_out[3]));
  LUT4 #(
    .INIT(16'hB080)) 
    \axi_rdata[4]_i_1 
       (.I0(slv_reg3[4]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(slv_reg2[4]),
        .O(reg_data_out[4]));
  LUT4 #(
    .INIT(16'hB080)) 
    \axi_rdata[5]_i_1 
       (.I0(slv_reg3[5]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(slv_reg2[5]),
        .O(reg_data_out[5]));
  LUT4 #(
    .INIT(16'hA808)) 
    \axi_rdata[6]_i_1 
       (.I0(axi_araddr[3]),
        .I1(slv_reg2[6]),
        .I2(axi_araddr[2]),
        .I3(slv_reg3[6]),
        .O(reg_data_out[6]));
  LUT4 #(
    .INIT(16'hA808)) 
    \axi_rdata[7]_i_1 
       (.I0(axi_araddr[3]),
        .I1(slv_reg2[7]),
        .I2(axi_araddr[2]),
        .I3(slv_reg3[7]),
        .O(reg_data_out[7]));
  LUT4 #(
    .INIT(16'hA808)) 
    \axi_rdata[8]_i_1 
       (.I0(axi_araddr[3]),
        .I1(slv_reg2[8]),
        .I2(axi_araddr[2]),
        .I3(slv_reg3[8]),
        .O(reg_data_out[8]));
  LUT4 #(
    .INIT(16'hA808)) 
    \axi_rdata[9]_i_1 
       (.I0(axi_araddr[3]),
        .I1(slv_reg2[9]),
        .I2(axi_araddr[2]),
        .I3(slv_reg3[9]),
        .O(reg_data_out[9]));
  FDRE \axi_rdata_reg[0] 
       (.C(axi_lite_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[0]),
        .Q(axi_lite_rdata[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[10] 
       (.C(axi_lite_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[10]),
        .Q(axi_lite_rdata[10]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[11] 
       (.C(axi_lite_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[11]),
        .Q(axi_lite_rdata[11]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[12] 
       (.C(axi_lite_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[12]),
        .Q(axi_lite_rdata[12]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[13] 
       (.C(axi_lite_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[13]),
        .Q(axi_lite_rdata[13]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[14] 
       (.C(axi_lite_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[14]),
        .Q(axi_lite_rdata[14]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[15] 
       (.C(axi_lite_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[15]),
        .Q(axi_lite_rdata[15]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[16] 
       (.C(axi_lite_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[16]),
        .Q(axi_lite_rdata[16]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[17] 
       (.C(axi_lite_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[17]),
        .Q(axi_lite_rdata[17]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[18] 
       (.C(axi_lite_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[18]),
        .Q(axi_lite_rdata[18]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[19] 
       (.C(axi_lite_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[19]),
        .Q(axi_lite_rdata[19]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[1] 
       (.C(axi_lite_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[1]),
        .Q(axi_lite_rdata[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[20] 
       (.C(axi_lite_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[20]),
        .Q(axi_lite_rdata[20]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[21] 
       (.C(axi_lite_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[21]),
        .Q(axi_lite_rdata[21]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[22] 
       (.C(axi_lite_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[22]),
        .Q(axi_lite_rdata[22]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[23] 
       (.C(axi_lite_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[23]),
        .Q(axi_lite_rdata[23]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[24] 
       (.C(axi_lite_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[24]),
        .Q(axi_lite_rdata[24]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[25] 
       (.C(axi_lite_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[25]),
        .Q(axi_lite_rdata[25]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[26] 
       (.C(axi_lite_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[26]),
        .Q(axi_lite_rdata[26]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[27] 
       (.C(axi_lite_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[27]),
        .Q(axi_lite_rdata[27]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[28] 
       (.C(axi_lite_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[28]),
        .Q(axi_lite_rdata[28]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[29] 
       (.C(axi_lite_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[29]),
        .Q(axi_lite_rdata[29]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[2] 
       (.C(axi_lite_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[2]),
        .Q(axi_lite_rdata[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[30] 
       (.C(axi_lite_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[30]),
        .Q(axi_lite_rdata[30]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[31] 
       (.C(axi_lite_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[31]),
        .Q(axi_lite_rdata[31]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[3] 
       (.C(axi_lite_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[3]),
        .Q(axi_lite_rdata[3]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[4] 
       (.C(axi_lite_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[4]),
        .Q(axi_lite_rdata[4]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[5] 
       (.C(axi_lite_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[5]),
        .Q(axi_lite_rdata[5]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[6] 
       (.C(axi_lite_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[6]),
        .Q(axi_lite_rdata[6]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[7] 
       (.C(axi_lite_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[7]),
        .Q(axi_lite_rdata[7]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[8] 
       (.C(axi_lite_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[8]),
        .Q(axi_lite_rdata[8]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[9] 
       (.C(axi_lite_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[9]),
        .Q(axi_lite_rdata[9]),
        .R(axi_awready_i_1_n_0));
  LUT4 #(
    .INIT(16'h08F8)) 
    axi_rvalid_i_1
       (.I0(S_AXI_ARREADY),
        .I1(axi_lite_arvalid),
        .I2(axi_lite_rvalid),
        .I3(axi_lite_rready),
        .O(axi_rvalid_i_1_n_0));
  FDRE axi_rvalid_reg
       (.C(axi_lite_aclk),
        .CE(1'b1),
        .D(axi_rvalid_i_1_n_0),
        .Q(axi_lite_rvalid),
        .R(axi_awready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    axi_wready_i_1
       (.I0(axi_lite_awvalid),
        .I1(axi_lite_wvalid),
        .I2(S_AXI_WREADY),
        .I3(aw_en_reg_n_0),
        .O(axi_wready0));
  FDRE axi_wready_reg
       (.C(axi_lite_aclk),
        .CE(1'b1),
        .D(axi_wready0),
        .Q(S_AXI_WREADY),
        .R(axi_awready_i_1_n_0));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg2[15]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(axi_lite_wstrb[1]),
        .I3(p_0_in[0]),
        .O(p_1_in[15]));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg2[23]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(axi_lite_wstrb[2]),
        .I3(p_0_in[0]),
        .O(p_1_in[23]));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg2[31]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(axi_lite_wstrb[3]),
        .I3(p_0_in[0]),
        .O(p_1_in[31]));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg2[7]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(axi_lite_wstrb[0]),
        .I3(p_0_in[0]),
        .O(p_1_in[7]));
  FDRE \slv_reg2_reg[0] 
       (.C(axi_lite_aclk),
        .CE(p_1_in[7]),
        .D(axi_lite_wdata[0]),
        .Q(slv_reg2[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[10] 
       (.C(axi_lite_aclk),
        .CE(p_1_in[15]),
        .D(axi_lite_wdata[10]),
        .Q(slv_reg2[10]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[11] 
       (.C(axi_lite_aclk),
        .CE(p_1_in[15]),
        .D(axi_lite_wdata[11]),
        .Q(slv_reg2[11]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[12] 
       (.C(axi_lite_aclk),
        .CE(p_1_in[15]),
        .D(axi_lite_wdata[12]),
        .Q(slv_reg2[12]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[13] 
       (.C(axi_lite_aclk),
        .CE(p_1_in[15]),
        .D(axi_lite_wdata[13]),
        .Q(slv_reg2[13]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[14] 
       (.C(axi_lite_aclk),
        .CE(p_1_in[15]),
        .D(axi_lite_wdata[14]),
        .Q(slv_reg2[14]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[15] 
       (.C(axi_lite_aclk),
        .CE(p_1_in[15]),
        .D(axi_lite_wdata[15]),
        .Q(slv_reg2[15]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[16] 
       (.C(axi_lite_aclk),
        .CE(p_1_in[23]),
        .D(axi_lite_wdata[16]),
        .Q(slv_reg2[16]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[17] 
       (.C(axi_lite_aclk),
        .CE(p_1_in[23]),
        .D(axi_lite_wdata[17]),
        .Q(slv_reg2[17]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[18] 
       (.C(axi_lite_aclk),
        .CE(p_1_in[23]),
        .D(axi_lite_wdata[18]),
        .Q(slv_reg2[18]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[19] 
       (.C(axi_lite_aclk),
        .CE(p_1_in[23]),
        .D(axi_lite_wdata[19]),
        .Q(slv_reg2[19]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[1] 
       (.C(axi_lite_aclk),
        .CE(p_1_in[7]),
        .D(axi_lite_wdata[1]),
        .Q(slv_reg2[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[20] 
       (.C(axi_lite_aclk),
        .CE(p_1_in[23]),
        .D(axi_lite_wdata[20]),
        .Q(slv_reg2[20]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[21] 
       (.C(axi_lite_aclk),
        .CE(p_1_in[23]),
        .D(axi_lite_wdata[21]),
        .Q(slv_reg2[21]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[22] 
       (.C(axi_lite_aclk),
        .CE(p_1_in[23]),
        .D(axi_lite_wdata[22]),
        .Q(slv_reg2[22]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[23] 
       (.C(axi_lite_aclk),
        .CE(p_1_in[23]),
        .D(axi_lite_wdata[23]),
        .Q(slv_reg2[23]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[24] 
       (.C(axi_lite_aclk),
        .CE(p_1_in[31]),
        .D(axi_lite_wdata[24]),
        .Q(slv_reg2[24]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[25] 
       (.C(axi_lite_aclk),
        .CE(p_1_in[31]),
        .D(axi_lite_wdata[25]),
        .Q(slv_reg2[25]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[26] 
       (.C(axi_lite_aclk),
        .CE(p_1_in[31]),
        .D(axi_lite_wdata[26]),
        .Q(slv_reg2[26]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[27] 
       (.C(axi_lite_aclk),
        .CE(p_1_in[31]),
        .D(axi_lite_wdata[27]),
        .Q(slv_reg2[27]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[28] 
       (.C(axi_lite_aclk),
        .CE(p_1_in[31]),
        .D(axi_lite_wdata[28]),
        .Q(slv_reg2[28]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[29] 
       (.C(axi_lite_aclk),
        .CE(p_1_in[31]),
        .D(axi_lite_wdata[29]),
        .Q(slv_reg2[29]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[2] 
       (.C(axi_lite_aclk),
        .CE(p_1_in[7]),
        .D(axi_lite_wdata[2]),
        .Q(slv_reg2[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[30] 
       (.C(axi_lite_aclk),
        .CE(p_1_in[31]),
        .D(axi_lite_wdata[30]),
        .Q(slv_reg2[30]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[31] 
       (.C(axi_lite_aclk),
        .CE(p_1_in[31]),
        .D(axi_lite_wdata[31]),
        .Q(slv_reg2[31]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[3] 
       (.C(axi_lite_aclk),
        .CE(p_1_in[7]),
        .D(axi_lite_wdata[3]),
        .Q(slv_reg2[3]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[4] 
       (.C(axi_lite_aclk),
        .CE(p_1_in[7]),
        .D(axi_lite_wdata[4]),
        .Q(slv_reg2[4]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[5] 
       (.C(axi_lite_aclk),
        .CE(p_1_in[7]),
        .D(axi_lite_wdata[5]),
        .Q(slv_reg2[5]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[6] 
       (.C(axi_lite_aclk),
        .CE(p_1_in[7]),
        .D(axi_lite_wdata[6]),
        .Q(slv_reg2[6]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[7] 
       (.C(axi_lite_aclk),
        .CE(p_1_in[7]),
        .D(axi_lite_wdata[7]),
        .Q(slv_reg2[7]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[8] 
       (.C(axi_lite_aclk),
        .CE(p_1_in[15]),
        .D(axi_lite_wdata[8]),
        .Q(slv_reg2[8]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[9] 
       (.C(axi_lite_aclk),
        .CE(p_1_in[15]),
        .D(axi_lite_wdata[9]),
        .Q(slv_reg2[9]),
        .R(axi_awready_i_1_n_0));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[15]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(axi_lite_wstrb[1]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .O(\slv_reg3[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[23]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(axi_lite_wstrb[2]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .O(\slv_reg3[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[31]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(axi_lite_wstrb[3]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .O(\slv_reg3[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[31]_i_2 
       (.I0(S_AXI_WREADY),
        .I1(S_AXI_AWREADY),
        .I2(axi_lite_awvalid),
        .I3(axi_lite_wvalid),
        .O(slv_reg_wren__0));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[7]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(axi_lite_wstrb[0]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .O(\slv_reg3[7]_i_1_n_0 ));
  FDRE \slv_reg3_reg[0] 
       (.C(axi_lite_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(axi_lite_wdata[0]),
        .Q(slv_reg3[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[10] 
       (.C(axi_lite_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(axi_lite_wdata[10]),
        .Q(slv_reg3[10]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[11] 
       (.C(axi_lite_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(axi_lite_wdata[11]),
        .Q(slv_reg3[11]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[12] 
       (.C(axi_lite_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(axi_lite_wdata[12]),
        .Q(slv_reg3[12]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[13] 
       (.C(axi_lite_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(axi_lite_wdata[13]),
        .Q(slv_reg3[13]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[14] 
       (.C(axi_lite_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(axi_lite_wdata[14]),
        .Q(slv_reg3[14]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[15] 
       (.C(axi_lite_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(axi_lite_wdata[15]),
        .Q(slv_reg3[15]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[16] 
       (.C(axi_lite_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(axi_lite_wdata[16]),
        .Q(slv_reg3[16]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[17] 
       (.C(axi_lite_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(axi_lite_wdata[17]),
        .Q(slv_reg3[17]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[18] 
       (.C(axi_lite_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(axi_lite_wdata[18]),
        .Q(slv_reg3[18]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[19] 
       (.C(axi_lite_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(axi_lite_wdata[19]),
        .Q(slv_reg3[19]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[1] 
       (.C(axi_lite_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(axi_lite_wdata[1]),
        .Q(slv_reg3[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[20] 
       (.C(axi_lite_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(axi_lite_wdata[20]),
        .Q(slv_reg3[20]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[21] 
       (.C(axi_lite_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(axi_lite_wdata[21]),
        .Q(slv_reg3[21]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[22] 
       (.C(axi_lite_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(axi_lite_wdata[22]),
        .Q(slv_reg3[22]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[23] 
       (.C(axi_lite_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(axi_lite_wdata[23]),
        .Q(slv_reg3[23]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[24] 
       (.C(axi_lite_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(axi_lite_wdata[24]),
        .Q(slv_reg3[24]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[25] 
       (.C(axi_lite_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(axi_lite_wdata[25]),
        .Q(slv_reg3[25]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[26] 
       (.C(axi_lite_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(axi_lite_wdata[26]),
        .Q(slv_reg3[26]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[27] 
       (.C(axi_lite_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(axi_lite_wdata[27]),
        .Q(slv_reg3[27]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[28] 
       (.C(axi_lite_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(axi_lite_wdata[28]),
        .Q(slv_reg3[28]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[29] 
       (.C(axi_lite_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(axi_lite_wdata[29]),
        .Q(slv_reg3[29]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[2] 
       (.C(axi_lite_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(axi_lite_wdata[2]),
        .Q(slv_reg3[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[30] 
       (.C(axi_lite_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(axi_lite_wdata[30]),
        .Q(slv_reg3[30]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[31] 
       (.C(axi_lite_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(axi_lite_wdata[31]),
        .Q(slv_reg3[31]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[3] 
       (.C(axi_lite_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(axi_lite_wdata[3]),
        .Q(slv_reg3[3]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[4] 
       (.C(axi_lite_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(axi_lite_wdata[4]),
        .Q(slv_reg3[4]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[5] 
       (.C(axi_lite_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(axi_lite_wdata[5]),
        .Q(slv_reg3[5]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[6] 
       (.C(axi_lite_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(axi_lite_wdata[6]),
        .Q(slv_reg3[6]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[7] 
       (.C(axi_lite_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(axi_lite_wdata[7]),
        .Q(slv_reg3[7]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[8] 
       (.C(axi_lite_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(axi_lite_wdata[8]),
        .Q(slv_reg3[8]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[9] 
       (.C(axi_lite_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(axi_lite_wdata[9]),
        .Q(slv_reg3[9]),
        .R(axi_awready_i_1_n_0));
  LUT3 #(
    .INIT(8'h20)) 
    slv_reg_rden
       (.I0(axi_lite_arvalid),
        .I1(axi_lite_rvalid),
        .I2(S_AXI_ARREADY),
        .O(slv_reg_rden__0));
endmodule

(* CHECK_LICENSE_TYPE = "design_1_PADS_SOUND_0_0,PADS_SOUND_v1_0,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "PADS_SOUND_v1_0,Vivado 2019.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (sound_a,
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
    axi_lite_rready);
  output sound_a;
  output sound_b;
  output pad_a_plug;
  output pad_b_plug;
  input [5:0]pad_a;
  input [5:0]pad_b;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 AXI_LITE_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME AXI_LITE_CLK, ASSOCIATED_BUSIF AXI_LITE, ASSOCIATED_RESET axi_lite_aresetn, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *) input axi_lite_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 AXI_LITE_RST RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME AXI_LITE_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input axi_lite_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_LITE AWADDR" *) input [3:0]axi_lite_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_LITE AWPROT" *) input [2:0]axi_lite_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_LITE AWVALID" *) input axi_lite_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_LITE AWREADY" *) output axi_lite_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_LITE WDATA" *) input [31:0]axi_lite_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_LITE WSTRB" *) input [3:0]axi_lite_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_LITE WVALID" *) input axi_lite_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_LITE WREADY" *) output axi_lite_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_LITE BRESP" *) output [1:0]axi_lite_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_LITE BVALID" *) output axi_lite_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_LITE BREADY" *) input axi_lite_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_LITE ARADDR" *) input [3:0]axi_lite_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_LITE ARPROT" *) input [2:0]axi_lite_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_LITE ARVALID" *) input axi_lite_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_LITE ARREADY" *) output axi_lite_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_LITE RDATA" *) output [31:0]axi_lite_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_LITE RRESP" *) output [1:0]axi_lite_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_LITE RVALID" *) output axi_lite_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_LITE RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME AXI_LITE, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 4, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 4, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input axi_lite_rready;

  wire \<const0> ;
  wire \<const1> ;
  wire axi_lite_aclk;
  wire [3:0]axi_lite_araddr;
  wire axi_lite_aresetn;
  wire axi_lite_arready;
  wire axi_lite_arvalid;
  wire [3:0]axi_lite_awaddr;
  wire axi_lite_awready;
  wire axi_lite_awvalid;
  wire axi_lite_bready;
  wire axi_lite_bvalid;
  wire [31:0]axi_lite_rdata;
  wire axi_lite_rready;
  wire axi_lite_rvalid;
  wire [31:0]axi_lite_wdata;
  wire axi_lite_wready;
  wire [3:0]axi_lite_wstrb;
  wire axi_lite_wvalid;

  assign axi_lite_bresp[1] = \<const0> ;
  assign axi_lite_bresp[0] = \<const0> ;
  assign axi_lite_rresp[1] = \<const0> ;
  assign axi_lite_rresp[0] = \<const0> ;
  assign pad_a_plug = \<const1> ;
  assign pad_b_plug = \<const1> ;
  assign sound_a = \<const0> ;
  assign sound_b = \<const0> ;
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_PADS_SOUND_v1_0 inst
       (.S_AXI_ARREADY(axi_lite_arready),
        .S_AXI_AWREADY(axi_lite_awready),
        .S_AXI_WREADY(axi_lite_wready),
        .axi_lite_aclk(axi_lite_aclk),
        .axi_lite_araddr(axi_lite_araddr[3:2]),
        .axi_lite_aresetn(axi_lite_aresetn),
        .axi_lite_arvalid(axi_lite_arvalid),
        .axi_lite_awaddr(axi_lite_awaddr[3:2]),
        .axi_lite_awvalid(axi_lite_awvalid),
        .axi_lite_bready(axi_lite_bready),
        .axi_lite_bvalid(axi_lite_bvalid),
        .axi_lite_rdata(axi_lite_rdata),
        .axi_lite_rready(axi_lite_rready),
        .axi_lite_rvalid(axi_lite_rvalid),
        .axi_lite_wdata(axi_lite_wdata),
        .axi_lite_wstrb(axi_lite_wstrb),
        .axi_lite_wvalid(axi_lite_wvalid));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
