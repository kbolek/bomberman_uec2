`timescale 1ns / 1ps

module GPU_TEST(
    input wire clk,
    input wire reset,
    input wire [8:0] sw,
    output wire [3:0] r,
    output wire [3:0] g,
    output wire [3:0] b,
    output wire hs,
    output wire vs,
    input wire [7:0] JB,
    input wire [7:0] JC,
    output wire [15:0] led
    );

clk_wiz_0 clk_wizard(
    .clk_in1(clk),
    .reset(reset),
    .clk_100M(),
    .clk_65M(disp_clk)
);
  
GPU_DC_0 GPU(
    .vga_clk(disp_clk),
    .r(r),
    .g(g),
    .b(b),
    .hs(hs),
    .vs(vs)
);

assign led[15:8] = JB[7:0];
assign led[7:0] = JC[7:0];

endmodule
