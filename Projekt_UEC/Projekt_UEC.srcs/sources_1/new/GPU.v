`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.05.2020 18:27:35
// Design Name: 
// Module Name: GPU
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


module GPU(
    input   wire        disp_clk,
    input   wire [15:0] sw,
    output  wire        vs,
    output  wire        hs,
    output  wire [11:0] rgb
    );
  
wire h_blank, v_blank, vs_time, hs_time;
wire [9:0] vcount, hcount;

gpu_timing timing_gen
(
    .disp_clk(disp_clk),
    .vs(vs_time),
    .hs(hs_time),
    .h_blank(h_blank),
    .v_blank(v_blank),
    .vc(vcount),
    .hc(hcount)
);

wire h_blank_frame, v_blank_frame, vs_frame, hs_frame;
wire [9:0] vc_frame, hc_frame;
wire [11:0] rgb_frame;

gpu_frame frame_gen
(
    .disp_clk(disp_clk),
    .vs(vs_time),
    .hs(hs_time),
    .h_blank(h_blank),
    .v_blank(v_blank),
    .vc(vcount),
    .hc(hcount),
    .vs_out(vs_frame),
    .hs_out(hs_frame),
    .h_blank_out(h_blank_frame),
    .v_blank_out(v_blank_frame),
    .vc_out(vc_frame),
    .hc_out(hc_frame),
    .rgb_out(rgb_frame)
);

wire h_blank_watch, v_blank_watch, vs_watch, hs_watch;
wire [9:0] vc_watch, hc_watch;
wire [11:0] rgb_watch;

gpu_debuger gpu_watch
(
    .disp_clk(disp_clk),
    .rgb(rgb_frame),
    .vs(vs_frame),
    .hs(hs_frame),
    .h_blank(h_blank_frame),
    .v_blank(v_blank_frame),
    .vc(vc_frame),
    .hc(hc_frame),
    .r0(sw),
    .r1(16'h0001),
    .r2(16'h0002),
    .r3(16'h0003),
    .r4(16'h0004),
    .r5(16'h0005),
    .r6(16'h0006),
    .r7(16'h0007),
    .r8(16'h0008),
    .r9(16'h0009),
    .r10(16'h000A),
    .r11(16'h000B),
    .r12(16'h000C),
    .r13(16'h000D),
    .r14(16'h000E),
    .r15(16'h000F),
    .vs_out(vs_watch),
    .hs_out(hs_watch),
    .h_blank_out(h_blank_watch),
    .v_blank_out(v_blank_watch),
    .vc_out(vc_watch),
    .hc_out(hc_watch),
    .rgb_out(rgb_watch)
);

wire [3:0] x_block, y_block;
wire [11:0] rgb_block_rom;

texture_rom texture_rom
(
    .x(x_block),
    .y(y_block),
    .rgb(rgb_block_rom)
);

wire h_blank_block, v_blank_block, vs_block, hs_block;
wire [9:0] vc_block, hc_block;
wire [11:0] rgb_block;

gpu_block block_gen
(
    .disp_clk(disp_clk),
    .rgb_block(rgb_block_rom),
    .rgb(rgb_watch),
    .vs(vs_watch),
    .hs(hs_watch),
    .h_blank(h_blank_watch),
    .v_blank(v_blank_watch),
    .vc(vc_watch),
    .hc(hc_watch),
    .x_block(x_block),
    .y_block(y_block),
//    .ram_addr()
    .vs_out(vs_block),
    .hs_out(hs_block),
    .h_blank_out(h_blank_block),
    .v_blank_out(v_blank_block),
    .vc_out(vc_block),
    .hc_out(hc_block),
    .rgb_out(rgb_block)
);

//wire [5:0]  char_addr;
wire [3:0]  line_addr;
wire [15:0]  line;

font_rom font_rom
(
    .char_addr(sw[5:0]),
    .line_addr(line_addr),
    .line(line)
);

gpu_text text_gen
(
    .disp_clk(disp_clk),
    .line(line),
    .color(2'h1),
    .rgb(rgb_block),
    .vs(vs_block),
    .hs(hs_block),
    .h_blank(h_blank_block),
    .v_blank(v_blank_block),
    .vc(vc_block),
    .hc(hc_block),
    .line_addr(line_addr),
//    .ram_addr()
    .vs_out(vs),
    .hs_out(hs),
    .h_blank_out(),
    .v_blank_out(),
    .vc_out(),
    .hc_out(),
    .rgb_out(rgb)
);

endmodule
