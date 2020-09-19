-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
-- Date        : Thu Jul 16 14:57:41 2020
-- Host        : Marysia running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               d:/bomberman_uec2/MicroblazeProject/MicroblazeProject.srcs/sources_1/bd/Main_System/ip/Main_System_vga_trunc_0_0/Main_System_vga_trunc_0_0_sim_netlist.vhdl
-- Design      : Main_System_vga_trunc_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Main_System_vga_trunc_0_0 is
  port (
    vid_data : in STD_LOGIC_VECTOR ( 23 downto 0 );
    active : in STD_LOGIC;
    r : out STD_LOGIC_VECTOR ( 3 downto 0 );
    g : out STD_LOGIC_VECTOR ( 3 downto 0 );
    b : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of Main_System_vga_trunc_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of Main_System_vga_trunc_0_0 : entity is "Main_System_vga_trunc_0_0,vga_trunc,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of Main_System_vga_trunc_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of Main_System_vga_trunc_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of Main_System_vga_trunc_0_0 : entity is "vga_trunc,Vivado 2019.2";
end Main_System_vga_trunc_0_0;

architecture STRUCTURE of Main_System_vga_trunc_0_0 is
  signal \^vid_data\ : STD_LOGIC_VECTOR ( 23 downto 0 );
begin
  \^vid_data\(23 downto 20) <= vid_data(23 downto 20);
  \^vid_data\(15 downto 12) <= vid_data(15 downto 12);
  \^vid_data\(7 downto 4) <= vid_data(7 downto 4);
  b(3 downto 0) <= \^vid_data\(7 downto 4);
  g(3 downto 0) <= \^vid_data\(15 downto 12);
  r(3 downto 0) <= \^vid_data\(23 downto 20);
end STRUCTURE;
