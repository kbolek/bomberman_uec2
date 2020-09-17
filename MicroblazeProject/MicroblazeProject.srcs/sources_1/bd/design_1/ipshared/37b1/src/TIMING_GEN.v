`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.07.2020 19:27:02
// Design Name: 
// Module Name: TIMING_GEN
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


module TIMING_GEN(
    input wire clk,
    input wire rst,
    output reg hsync_out,
    output reg vsync_out,
    output wire [11:0] rgb_out,
    output wire [10:0] vcount_out,
    output wire [10:0] hcount_out,
    output reg vblank_out,
    output reg hblank_out
    );
    

localparam
    X_AREA = 1024,
    X_LINE = 1344,
    SYNCL_X = 136,
    SYNCP_X = 24,
    Y_AREA = 768,
    Y_LINE = 806,
    SYNCL_Y = 6,
    SYNCP_Y = 3;
    
reg vs_nxt, hs_nxt, hblank_nxt, vblank_nxt;
reg [10:0] hcount = 0;
reg [10:0] vcount  = 0;
reg [10:0] hcount_nxt, vcount_nxt;

always @(posedge clk)
begin
    if (rst)
    begin
        vsync_out <= 0;
        hsync_out <= 0;
        hblank_out <= 0;
        vblank_out <= 0;
        hcount <= 0;
        vcount <= 0;
    end
    else
    begin
        
        vsync_out <= vs_nxt;
        hsync_out <= hs_nxt;
        hblank_out <= hblank_nxt;
        vblank_out <= vblank_nxt;
        hcount <= hcount_nxt;
        vcount <= vcount_nxt;
    end

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
        hblank_nxt = 1'b1;
    else
        hblank_nxt = 1'b0;
end

always @*
begin
    if ((vcount >= Y_AREA) && ((vcount + 1) < Y_LINE))
        vblank_nxt = 1'b1;
    else
        vblank_nxt = 1'b0;
end

assign vcount_out = vcount_nxt;
assign hcount_out = hcount;
assign rgb_out = 12'h000;

endmodule
