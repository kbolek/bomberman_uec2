module BLOCK_GEN(
    input wire clk,
    
    input wire hsync,
    input wire vsync,
    input wire [11:0] rgb,
    input wire [10:0] vcount,
    input wire [10:0] hcount,
    input wire vblank,
    input wire hblank,
    
    output reg hsync_out,
    output reg vsync_out,
    output wire [11:0] rgb_out,
    output wire [10:0] vcount_out,
    output wire [10:0] hcount_out,
    output reg vblank_out,
    output reg hblank_out
    );
    
endmodule