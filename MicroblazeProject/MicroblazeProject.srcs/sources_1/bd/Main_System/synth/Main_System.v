//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
//Date        : Thu Jul 16 14:50:17 2020
//Host        : Marysia running 64-bit major release  (build 9200)
//Command     : generate_target Main_System.bd
//Design      : Main_System
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "Main_System,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=Main_System,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=7,numReposBlks=7,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=1,numPkgbdBlks=0,bdsource=USER,da_board_cnt=1,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "Main_System.hwdef" *) 
module Main_System
   (reset,
    sys_clock,
    vgaBlue,
    vgaGreen,
    vgaRed,
    vid_hsync,
    vid_vsync);
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RESET RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RESET, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input reset;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.SYS_CLOCK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.SYS_CLOCK, CLK_DOMAIN Main_System_sys_clock, FREQ_HZ 100000000, INSERT_VIP 0, PHASE 0.000" *) input sys_clock;
  output [3:0]vgaBlue;
  output [3:0]vgaGreen;
  output [3:0]vgaRed;
  output vid_hsync;
  output vid_vsync;

  wire [0:0]Net;
  wire clk_wiz_0_locked;
  wire m_axis_mm2s_aclk_0_1;
  wire reset_1;
  wire sys_clock_1;
  wire v_axi4s_vid_out_0_vid_active_video;
  wire [23:0]v_axi4s_vid_out_0_vid_data;
  wire v_axi4s_vid_out_0_vid_hsync;
  wire v_axi4s_vid_out_0_vid_vsync;
  wire v_axi4s_vid_out_0_vtg_ce;
  wire v_tc_0_vtiming_out_ACTIVE_VIDEO;
  wire v_tc_0_vtiming_out_HBLANK;
  wire v_tc_0_vtiming_out_HSYNC;
  wire v_tc_0_vtiming_out_VBLANK;
  wire v_tc_0_vtiming_out_VSYNC;
  wire [47:0]v_tpg_0_m_axis_video_TDATA;
  wire [0:0]v_tpg_0_m_axis_video_TLAST;
  wire v_tpg_0_m_axis_video_TREADY;
  wire [0:0]v_tpg_0_m_axis_video_TUSER;
  wire v_tpg_0_m_axis_video_TVALID;
  wire [3:0]vga_trunc_0_b;
  wire [3:0]vga_trunc_0_g;
  wire [3:0]vga_trunc_0_r;
  wire [0:0]xlconstant_0_dout;

  assign reset_1 = reset;
  assign sys_clock_1 = sys_clock;
  assign vgaBlue[3:0] = vga_trunc_0_b;
  assign vgaGreen[3:0] = vga_trunc_0_g;
  assign vgaRed[3:0] = vga_trunc_0_r;
  assign vid_hsync = v_axi4s_vid_out_0_vid_hsync;
  assign vid_vsync = v_axi4s_vid_out_0_vid_vsync;
  Main_System_clk_wiz_0_0 clk_wiz_0
       (.clk_in1(sys_clock_1),
        .clk_out1(m_axis_mm2s_aclk_0_1),
        .locked(clk_wiz_0_locked),
        .resetn(reset_1));
  Main_System_proc_sys_reset_0_0 proc_sys_reset_0
       (.aux_reset_in(1'b1),
        .dcm_locked(clk_wiz_0_locked),
        .ext_reset_in(reset_1),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(Net),
        .slowest_sync_clk(m_axis_mm2s_aclk_0_1));
  Main_System_v_axi4s_vid_out_0_0 v_axi4s_vid_out_0
       (.aclk(m_axis_mm2s_aclk_0_1),
        .aclken(xlconstant_0_dout),
        .aresetn(Net),
        .fid(1'b0),
        .s_axis_video_tdata(v_tpg_0_m_axis_video_TDATA),
        .s_axis_video_tlast(v_tpg_0_m_axis_video_TLAST),
        .s_axis_video_tready(v_tpg_0_m_axis_video_TREADY),
        .s_axis_video_tuser(v_tpg_0_m_axis_video_TUSER),
        .s_axis_video_tvalid(v_tpg_0_m_axis_video_TVALID),
        .vid_active_video(v_axi4s_vid_out_0_vid_active_video),
        .vid_data(v_axi4s_vid_out_0_vid_data),
        .vid_hsync(v_axi4s_vid_out_0_vid_hsync),
        .vid_io_out_ce(xlconstant_0_dout),
        .vid_vsync(v_axi4s_vid_out_0_vid_vsync),
        .vtg_active_video(v_tc_0_vtiming_out_ACTIVE_VIDEO),
        .vtg_ce(v_axi4s_vid_out_0_vtg_ce),
        .vtg_field_id(1'b0),
        .vtg_hblank(v_tc_0_vtiming_out_HBLANK),
        .vtg_hsync(v_tc_0_vtiming_out_HSYNC),
        .vtg_vblank(v_tc_0_vtiming_out_VBLANK),
        .vtg_vsync(v_tc_0_vtiming_out_VSYNC));
  Main_System_v_tc_0_0 v_tc_0
       (.active_video_out(v_tc_0_vtiming_out_ACTIVE_VIDEO),
        .clk(m_axis_mm2s_aclk_0_1),
        .clken(v_axi4s_vid_out_0_vtg_ce),
        .gen_clken(v_axi4s_vid_out_0_vtg_ce),
        .hblank_out(v_tc_0_vtiming_out_HBLANK),
        .hsync_out(v_tc_0_vtiming_out_HSYNC),
        .resetn(Net),
        .vblank_out(v_tc_0_vtiming_out_VBLANK),
        .vsync_out(v_tc_0_vtiming_out_VSYNC));
  Main_System_v_tpg_0_0 v_tpg_0
       (.ap_clk(m_axis_mm2s_aclk_0_1),
        .ap_rst_n(1'b1),
        .fid_in(1'b1),
        .m_axis_video_TDATA(v_tpg_0_m_axis_video_TDATA),
        .m_axis_video_TLAST(v_tpg_0_m_axis_video_TLAST),
        .m_axis_video_TREADY(v_tpg_0_m_axis_video_TREADY),
        .m_axis_video_TUSER(v_tpg_0_m_axis_video_TUSER),
        .m_axis_video_TVALID(v_tpg_0_m_axis_video_TVALID),
        .s_axi_CTRL_ARADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_CTRL_ARVALID(1'b0),
        .s_axi_CTRL_AWADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_CTRL_AWVALID(1'b0),
        .s_axi_CTRL_BREADY(1'b0),
        .s_axi_CTRL_RREADY(1'b0),
        .s_axi_CTRL_WDATA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_CTRL_WSTRB({1'b1,1'b1,1'b1,1'b1}),
        .s_axi_CTRL_WVALID(1'b0));
  Main_System_vga_trunc_0_0 vga_trunc_0
       (.active(v_axi4s_vid_out_0_vid_active_video),
        .b(vga_trunc_0_b),
        .g(vga_trunc_0_g),
        .r(vga_trunc_0_r),
        .vid_data(v_axi4s_vid_out_0_vid_data));
  Main_System_xlconstant_0_0 xlconstant_0
       (.dout(xlconstant_0_dout));
endmodule
