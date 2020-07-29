//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
//Date        : Thu Jul 16 15:22:45 2020
//Host        : Marysia running 64-bit major release  (build 9200)
//Command     : generate_target Main_System_wrapper.bd
//Design      : Main_System_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module Main_System_wrapper
   (reset,
    sys_clock,
    vgaBlue,
    vgaGreen,
    vgaRed,
    vid_hsync,
    vid_vsync);
  input reset;
  input sys_clock;
  output [3:0]vgaBlue;
  output [3:0]vgaGreen;
  output [3:0]vgaRed;
  output vid_hsync;
  output vid_vsync;

  wire reset;
  wire sys_clock;
  wire [3:0]vgaBlue;
  wire [3:0]vgaGreen;
  wire [3:0]vgaRed;
  wire vid_hsync;
  wire vid_vsync;

  Main_System Main_System_i
       (.reset(reset),
        .sys_clock(sys_clock),
        .vgaBlue(vgaBlue),
        .vgaGreen(vgaGreen),
        .vgaRed(vgaRed),
        .vid_hsync(vid_hsync),
        .vid_vsync(vid_vsync));
endmodule
