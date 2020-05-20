`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.05.2020 18:04:26
// Design Name: 
// Module Name: gpu_block
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


module gpu_block
(
    input   wire        disp_clk,
    input   wire [11:0] rgb_block,
    input   wire [11:0] rgb,
    input   wire        vs,
    input   wire        hs,
    input   wire        h_blank,
    input   wire        v_blank,
    input   wire [9:0]  vc,
    input   wire [9:0]  hc,
    output  wire [3:0]  x_block,
    output  wire [3:0]  y_block,
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

always @*
begin
    if(h_blank||v_blank)
        rgb_out_nxt = 12'h000;
    else 
        if((hc >= 80) && (hc <= 559))
            rgb_out_nxt = rgb_block;
        else
            rgb_out_nxt = rgb;
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
    
assign x_block = ((hc - 9'h50) % 4'hF);
assign y_block = (vc % 4'hF);

endmodule
