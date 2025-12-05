-- Copyright (C) 2025  Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus Prime License Agreement,
-- the Altera IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Altera and sold by Altera or its authorized distributors.  Please
-- refer to the Altera Software License Subscription Agreements 
-- on the Quartus Prime software download page.

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "12/03/2025 16:59:57"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Datapath
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Datapath_vhd_vec_tst IS
END Datapath_vhd_vec_tst;
ARCHITECTURE Datapath_arch OF Datapath_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL ALU_Opcode : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL clk : STD_LOGIC;
SIGNAL Current_Instruction : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL Current_PC : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL Memory_Output : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL Opcode : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL Register1Number : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL Register2Number : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL Register3Number : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL RegOut1 : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL RegOut2 : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL SX : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL Writeback : STD_LOGIC_VECTOR(31 DOWNTO 0);
COMPONENT Datapath
	PORT (
	ALU_Opcode : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
	clk : IN STD_LOGIC;
	Current_Instruction : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	Current_PC : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	Memory_Output : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	Opcode : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	Register1Number : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
	Register2Number : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
	Register3Number : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
	RegOut1 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	RegOut2 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	SX : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	Writeback : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : Datapath
	PORT MAP (
-- list connections between master ports and signals
	ALU_Opcode => ALU_Opcode,
	clk => clk,
	Current_Instruction => Current_Instruction,
	Current_PC => Current_PC,
	Memory_Output => Memory_Output,
	Opcode => Opcode,
	Register1Number => Register1Number,
	Register2Number => Register2Number,
	Register3Number => Register3Number,
	RegOut1 => RegOut1,
	RegOut2 => RegOut2,
	SX => SX,
	Writeback => Writeback
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
	clk <= '0';
	WAIT FOR 1000000 ps;
	clk <= '1';
	WAIT FOR 500000 ps;
	FOR i IN 1 TO 2
	LOOP
		clk <= '0';
		WAIT FOR 500000 ps;
		clk <= '1';
		WAIT FOR 500000 ps;
	END LOOP;
	clk <= '0';
WAIT;
END PROCESS t_prcs_clk;
END Datapath_arch;
