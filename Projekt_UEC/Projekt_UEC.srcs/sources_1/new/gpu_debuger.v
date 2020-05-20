`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.05.2020 21:32:35
// Design Name: 
// Module Name: gpu_debuger
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


module gpu_debuger(
    input   wire        disp_clk,
    input   wire [11:0] rgb,
    input   wire        vs,
    input   wire        hs,
    input   wire        h_blank,
    input   wire        v_blank,
    input   wire [9:0]  vc,
    input   wire [9:0]  hc,
    input   wire [15:0] r0,
    input   wire [15:0] r1,
    input   wire [15:0] r2,
    input   wire [15:0] r3,
    input   wire [15:0] r4,
    input   wire [15:0] r5,
    input   wire [15:0] r6,
    input   wire [15:0] r7,
    input   wire [15:0] r8,
    input   wire [15:0] r9,
    input   wire [15:0] r10,
    input   wire [15:0] r11,
    input   wire [15:0] r12,
    input   wire [15:0] r13,
    input   wire [15:0] r14,
    input   wire [15:0] r15,
    output  reg         vs_out,
    output  reg         hs_out,
    output  reg         h_blank_out,
    output  reg         v_blank_out,
    output  reg [9:0]   vc_out,
    output  reg [9:0]   hc_out,
    output  reg [11:0]  rgb_out
    );
    
reg [11:0] rgb_out_nxt;
wire [3:0] sw_ptr;

always @*
begin
    if(h_blank||v_blank)
        rgb_out_nxt = 12'h000;
    else 
        if((hc >= 23) && (hc <= 54) && (vc == 16) && (~hc[0]))
            if(r0[sw_ptr])
                rgb_out_nxt = 12'h0f0;
            else
                rgb_out_nxt = 12'h000;
                
        else if((hc >= 23) && (hc <= 54) && (vc == 32) && (~hc[0]))
            if(r1[sw_ptr])
                rgb_out_nxt = 12'h0f0;
            else
                rgb_out_nxt = 12'h000;
                
        else if((hc >= 23) && (hc <= 54) && (vc == 48) && (~hc[0]))
            if(r2[sw_ptr])
                rgb_out_nxt = 12'h0f0;
            else
                rgb_out_nxt = 12'h000;
                
        else if((hc >= 23) && (hc <= 54) && (vc == 64) && (~hc[0]))
            if(r3[sw_ptr])
                rgb_out_nxt = 12'h0f0;
            else
                rgb_out_nxt = 12'h000;
        
        else if((hc >= 23) && (hc <= 54) && (vc == 80) && (~hc[0]))
            if(r4[sw_ptr])
                rgb_out_nxt = 12'h0f0;
            else
                rgb_out_nxt = 12'h000;
        
        else if((hc >= 23) && (hc <= 54) && (vc == 96) && (~hc[0]))
            if(r5[sw_ptr])
                rgb_out_nxt = 12'h0f0;
            else
                rgb_out_nxt = 12'h000;
                
        else if((hc >= 23) && (hc <= 54) && (vc == 112) && (~hc[0]))
            if(r6[sw_ptr])
                rgb_out_nxt = 12'h0f0;
            else
                rgb_out_nxt = 12'h000;
                
        else if((hc >= 23) && (hc <= 54) && (vc == 128) && (~hc[0]))
            if(r7[sw_ptr])
                rgb_out_nxt = 12'h0f0;
            else
                rgb_out_nxt = 12'h000;
        
        else if((hc >= 23) && (hc <= 54) && (vc == 144) && (~hc[0]))
            if(r8[sw_ptr])
                rgb_out_nxt = 12'h0f0;
            else
                rgb_out_nxt = 12'h000;
        
        else if((hc >= 23) && (hc <= 54) && (vc == 160) && (~hc[0]))
            if(r9[sw_ptr])
                rgb_out_nxt = 12'h0f0;
            else
                rgb_out_nxt = 12'h000;
                
        else if((hc >= 23) && (hc <= 54) && (vc == 176) && (~hc[0]))
            if(r10[sw_ptr])
                rgb_out_nxt = 12'h0f0;
            else
                rgb_out_nxt = 12'h000;
                
        else if((hc >= 23) && (hc <= 54) && (vc == 192) && (~hc[0]))
            if(r11[sw_ptr])
                rgb_out_nxt = 12'h0f0;
            else
                rgb_out_nxt = 12'h000;
        
        else if((hc >= 23) && (hc <= 54) && (vc == 208) && (~hc[0]))
            if(r12[sw_ptr])
                rgb_out_nxt = 12'h0f0;
            else
                rgb_out_nxt = 12'h000;
        
        else if((hc >= 23) && (hc <= 54) && (vc == 224) && (~hc[0]))
            if(r13[sw_ptr])
                rgb_out_nxt = 12'h0f0;
            else
                rgb_out_nxt = 12'h000;
                
        else if((hc >= 23) && (hc <= 54) && (vc == 240) && (~hc[0]))
            if(r14[sw_ptr])
                rgb_out_nxt = 12'h0f0;
            else
                rgb_out_nxt = 12'h000;
                
        else if((hc >= 23) && (hc <= 54) && (vc == 256) && (~hc[0]))
            if(r15[sw_ptr])
                rgb_out_nxt = 12'h0f0;
            else
                rgb_out_nxt = 12'h000;
      
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

assign sw_ptr[3:0] = (4'hf - ((hc[9:1] - 12) & 4'hf));
    
endmodule
