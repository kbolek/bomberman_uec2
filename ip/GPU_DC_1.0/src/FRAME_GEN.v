module FRAME_GEN(
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
        if (((hcount == 11'h000) || (hcount == 11'h3FF) || (vcount == 11'h0) || (vcount == 11'h2FF)))
            rgb_out_nxt = 12'h0f0;
        else
            rgb_out_nxt = rgb;
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