`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.05.2020 18:38:29
// Design Name: 
// Module Name: gpu_timing
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


module gpu_timing(
    input   wire        disp_clk,
    output  reg         vs,
    output  reg         hs,
    output  wire [9:0]  vc,
    output  wire [9:0]  hc,
    output  reg         h_blank,
    output  reg         v_blank
    );
  
localparam
    X_AREA = 640,
    X_LINE = 840,
    SYNCL_X = 64,
    SYNCP_X = 16,
    Y_AREA = 480,
    Y_LINE = 500,
    SYNCL_Y = 3,
    SYNCP_Y = 1;
    
reg vs_nxt, hs_nxt, h_blank_nxt, v_blank_nxt;
reg [9:0] hcount = 0;
reg [9:0] vcount  = 0;
reg [9:0] hcount_nxt, vcount_nxt;

always @(posedge disp_clk)
begin
    vs <= vs_nxt;
    hs <= hs_nxt;
    h_blank <= h_blank_nxt;
    v_blank <= v_blank_nxt;
    hcount <= hcount_nxt;
    vcount <= vcount_nxt;
end
    
always @*
begin
    if ((hcount + 1) <= X_LINE)
        begin
            hcount_nxt = hcount + 1;
            vcount_nxt = vcount;
        end
    else
        begin
            hcount_nxt = 0;
            if ((vcount + 1) < Y_LINE)
                vcount_nxt =  vcount + 1;
            else
                vcount_nxt = 0;
        end
end

always @*
begin
    if ((hcount >= (X_AREA + SYNCP_X)) && (hcount < (X_AREA + SYNCP_X + SYNCL_X)))
        hs_nxt = 1'b1;
    else
        hs_nxt = 1'b0;
    
    if ((vcount >= (Y_AREA + SYNCP_Y)) && (vcount < (Y_AREA + SYNCP_Y + SYNCL_Y)))
        vs_nxt = 1'b1;
    else
        vs_nxt = 1'b0;
end

always @*
begin
    if (((hcount + 1) >= X_AREA) && (hcount < X_LINE))
        h_blank_nxt = 1'b1;
    else
        h_blank_nxt = 1'b0;
end

always @*
begin
    if ((vcount >= Y_AREA) && ((vcount + 1) < Y_LINE))
        v_blank_nxt = 1'b1;
    else
        v_blank_nxt = 1'b0;
end

assign vc = vcount;
assign hc = hcount;

endmodule
