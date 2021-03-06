-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
-- Date        : Thu Jul 16 14:57:41 2020
-- Host        : Marysia running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               d:/bomberman_uec2/MicroblazeProject/MicroblazeProject.srcs/sources_1/bd/Main_System/ip/Main_System_vga_trunc_0_0/Main_System_vga_trunc_0_0_stub.vhdl
-- Design      : Main_System_vga_trunc_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Main_System_vga_trunc_0_0 is
  Port ( 
    vid_data : in STD_LOGIC_VECTOR ( 23 downto 0 );
    active : in STD_LOGIC;
    r : out STD_LOGIC_VECTOR ( 3 downto 0 );
    g : out STD_LOGIC_VECTOR ( 3 downto 0 );
    b : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );

end Main_System_vga_trunc_0_0;

architecture stub of Main_System_vga_trunc_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "vid_data[23:0],active,r[3:0],g[3:0],b[3:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "vga_trunc,Vivado 2019.2";
begin
end;
