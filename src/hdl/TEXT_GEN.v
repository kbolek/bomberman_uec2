module TEXT_GEN(
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
    output reg hblank_out,
    
    output wire [4:0] char_line,
    input wire [31:0] line_data,
    input wire [2:0] color
    );

reg [11:0] rgb_out_nxt;
wire [4:0] pixel_addr;
reg [11:0] font_color;

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

always @*
begin
    if(hblank||vblank)
        rgb_out_nxt = 12'h000;
    else 
        if (line_data[pixel_addr])
            rgb_out_nxt = font_color;
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

assign pixel_addr = (31 - (hcount % 32));
assign char_line = vcount % 32;

endmodule