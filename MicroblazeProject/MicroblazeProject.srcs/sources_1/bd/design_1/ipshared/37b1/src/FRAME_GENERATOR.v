`timescale 1ns / 1ps

module FRAME_GENERATOR(
    input wire clk,
    
    input wire hsync,
    input wire vsync,
    input wire [10:0] vcount,
    input wire [10:0] hcount,
    input wire vblank,
    input wire hblank,
    
    output reg hsync_out,
    output reg vsync_out,
    output reg [11:0] rgb_out,
    output reg [10:0] vcount_out,
    output reg [10:0] hcount_out,
    output reg vblank_out,
    output reg hblank_out
    );
    
reg [11:0] rgb_out_nxt;
    
always @*
    if(hblank||vblank)
        rgb_out_nxt = 12'h000;
    else 
    begin
        if (((hcount == 0) || (hcount == 1023) || (vcount == 0) || (vcount == 767)))
            rgb_out_nxt = 12'h0f0;
        else
            rgb_out_nxt = 12'h000;
    end
    

always @(posedge clk)
begin
    vsync_out <= vsync;
    hsync_out <= hsync;
    hblank_out <= hblank;
    vblank_out <= vblank;
    vcount_out <= vcount;
    hcount_out <= hcount;
    rgb_out <= rgb_out_nxt;
end
    
endmodule
