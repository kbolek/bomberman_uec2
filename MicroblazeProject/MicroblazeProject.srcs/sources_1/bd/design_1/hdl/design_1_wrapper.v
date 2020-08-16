//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
//Date        : Sun Aug 16 12:36:30 2020
//Host        : Marysia running 64-bit major release  (build 9200)
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (b,
    clk,
    g,
    hs,
    pad_a,
    pad_a_plug,
    pad_b,
    pad_b_plug,
    r,
    reset,
    sound_a,
    sound_b,
    vs);
  output [3:0]b;
  input clk;
  output [3:0]g;
  output hs;
  input [5:0]pad_a;
  output pad_a_plug;
  input [5:0]pad_b;
  output pad_b_plug;
  output [3:0]r;
  input reset;
  output sound_a;
  output sound_b;
  output vs;

  wire [3:0]b;
  wire clk;
  wire [3:0]g;
  wire hs;
  wire [5:0]pad_a;
  wire pad_a_plug;
  wire [5:0]pad_b;
  wire pad_b_plug;
  wire [3:0]r;
  wire reset;
  wire sound_a;
  wire sound_b;
  wire vs;

  design_1 design_1_i
       (.b(b),
        .clk(clk),
        .g(g),
        .hs(hs),
        .pad_a(pad_a),
        .pad_a_plug(pad_a_plug),
        .pad_b(pad_b),
        .pad_b_plug(pad_b_plug),
        .r(r),
        .reset(reset),
        .sound_a(sound_a),
        .sound_b(sound_b),
        .vs(vs));
endmodule
