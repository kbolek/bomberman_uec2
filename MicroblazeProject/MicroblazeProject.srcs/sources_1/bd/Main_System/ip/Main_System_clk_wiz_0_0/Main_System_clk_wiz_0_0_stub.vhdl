-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
-- Date        : Thu Jul 16 14:57:42 2020
-- Host        : Marysia running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               d:/bomberman_uec2/MicroblazeProject/MicroblazeProject.srcs/sources_1/bd/Main_System/ip/Main_System_clk_wiz_0_0/Main_System_clk_wiz_0_0_stub.vhdl
-- Design      : Main_System_clk_wiz_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Main_System_clk_wiz_0_0 is
  Port ( 
    clk_out1 : out STD_LOGIC;
    resetn : in STD_LOGIC;
    locked : out STD_LOGIC;
    clk_in1 : in STD_LOGIC
  );

end Main_System_clk_wiz_0_0;

architecture stub of Main_System_clk_wiz_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk_out1,resetn,locked,clk_in1";
begin
end;
