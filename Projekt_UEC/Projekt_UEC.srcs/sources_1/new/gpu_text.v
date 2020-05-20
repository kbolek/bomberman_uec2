`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.05.2020 19:43:55
// Design Name: 
// Module Name: gpu_text
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


module gpu_text
(
    input   wire        disp_clk,
    input   wire [15:0] line,
    input   wire [2:0]  color,
    input   wire [11:0] rgb,
    input   wire        vs,
    input   wire        hs,
    input   wire        h_blank,
    input   wire        v_blank,
    input   wire [9:0]  vc,
    input   wire [9:0]  hc,
    output  wire [3:0]  line_addr,
//    output  wire [9:0]  ram_addr,
    output  reg         vs_out,
    output  reg         hs_out,
    output  reg         h_blank_out,
    output  reg         v_blank_out,
    output  reg [9:0]   vc_out,
    output  reg [9:0]   hc_out,
    output  reg [11:0]  rgb_out
);

reg [11:0] rgb_out_nxt;
wire [3:0] pixel_addr;
reg [11:0] font_color;

always @*
begin
    if(h_blank||v_blank)
        rgb_out_nxt = 12'h000;
    else 
        if((hc >= 80) && (hc <= 559))
            if (line[pixel_addr])
                rgb_out_nxt = font_color;
            else
                rgb_out_nxt = rgb;
        else
            rgb_out_nxt = rgb;
end

always @*
begin
    if(color[2])
        font_color[11:8] = 4'hf;
    else
        font_color[11:8] = 4'h0;
    if(color[1])
        font_color[7:4] = 4'hf;
    else
        font_color[7:4] = 4'h0;
    if(color[0])
        font_color[3:0] = 4'hf;
    else
        font_color[3:0] = 4'h0;
end

always @(posedge disp_clk)
begin
    vs_out <= vs;
    hs_out <= hs;
    h_blank_out <= h_blank;
    v_blank_out <= v_blank;
    vc_out <= vc;
    hc_out <= hc;
    rgb_out <= rgb_out_nxt;
end

assign pixel_addr = (vc + 7) % 4'hF;
assign line_addr = (hc - 9'h50) % 4'hF;

endmodule
