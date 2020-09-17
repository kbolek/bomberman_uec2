module BLOCK_GEN(
    input wire clk,
    
    input wire hsync,
    input wire vsync,
    input wire [10:0] vcount,
    input wire [10:0] hcount,
    input wire vblank,
    input wire hblank,
    input wire [11:0] rgb_in,
    
    output reg hsync_out,
    output reg vsync_out,
    output reg [11:0] rgb_out,
    output reg [10:0] vcount_out,
    output reg [10:0] hcount_out,
    output reg vblank_out,
    output reg hblank_out,
    
    input wire [2:0] texture_number,
    input wire inversion,
    output wire [12:0] texture_addr,
    input wire [11:0] texture_rgb
    );

reg [11:0] rgb_out_nxt;

always @*
begin
    if(hblank||vblank)
        rgb_out_nxt = 12'h000;
    else 
        if (rgb_in != 12'h0f0)
            if (inversion)
                rgb_out_nxt = ~texture_rgb;
            else
             rgb_out_nxt = texture_rgb;
        else
            rgb_out_nxt = 12'h0f0;
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
    
assign texture_addr[9:0] = ((vcount%32)*32 + (hcount%32));
assign texture_addr[12:10] = texture_number;
    
endmodule