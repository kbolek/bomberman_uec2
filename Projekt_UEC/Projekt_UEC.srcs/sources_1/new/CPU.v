`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.05.2020 18:27:35
// Design Name: 
// Module Name: CPU
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module CPU(
    input   wire        clk,
    input   wire        reset,
    input   wire [15:0] sw,
    output  wire        vs,
    output  wire        hs,
    output  wire [3:0]  r,
    output  wire [3:0]  g,
    output  wire [3:0]  b
    );
    
wire clk_cpu, clk_gpu;
wire [11:0] rgb;
    
clk_wiz_0 my_clock
(
    .clk_in(clk),
    .reset(reset),
    .clk_cpu(clk_cpu),
    .clk_gpu(clk_gpu)
);
    
GPU my_graphics
(
    .sw(sw),
    .disp_clk(clk_gpu),
    .vs(vs),
    .hs(hs),
    .rgb(rgb)
);

assign r[3:0] = rgb[11:8];
assign g[3:0] = rgb[7:4];
assign b[3:0] = rgb[3:0];

endmodule
