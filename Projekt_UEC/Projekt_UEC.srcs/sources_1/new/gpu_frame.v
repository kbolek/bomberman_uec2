`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.05.2020 20:37:55
// Design Name: 
// Module Name: gpu_frame
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


module gpu_frame(
    input   wire        disp_clk,
    input   wire        vs,
    input   wire        hs,
    input   wire        h_blank,
    input   wire        v_blank,
    input   wire [9:0]  vc,
    input   wire [9:0]  hc,
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
    if(h_blank||v_blank)
        rgb_out_nxt = 12'h000;
    else 
    begin
        if (((hc == 10'h000) || (hc == 10'h27F) || (vc == 10'h0) || (vc == 10'h1DF)) && ((hc > 10'h230) || (hc < 10'h050)))
            rgb_out_nxt = 12'h0f0;
        else if ((hc > 10'h000) && (hc < 10'h050))
            rgb_out_nxt = 12'h222;
        else if ((hc > 10'h22F) && (hc < 10'h280))
            rgb_out_nxt = 12'h222;
        else
            rgb_out_nxt = 12'h000;
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

endmodule
