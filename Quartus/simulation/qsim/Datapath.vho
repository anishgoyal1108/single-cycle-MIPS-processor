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

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 25.1std.0 Build 1129 10/21/2025 SC Lite Edition"

-- DATE "12/03/2025 16:59:59"

-- 
-- Device: Altera 5CSXFC6D6F31C6 Package FBGA896
-- 

-- 
-- This VHDL file should be used for Questa Altera FPGA (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Datapath IS
    PORT (
	ALU_Opcode : OUT std_logic_vector(1 DOWNTO 0);
	clk : IN std_logic;
	Writeback : OUT std_logic_vector(31 DOWNTO 0);
	SX : OUT std_logic_vector(31 DOWNTO 0);
	Current_Instruction : OUT std_logic_vector(31 DOWNTO 0);
	Current_PC : OUT std_logic_vector(31 DOWNTO 0);
	Memory_Output : OUT std_logic_vector(31 DOWNTO 0);
	Opcode : OUT std_logic_vector(3 DOWNTO 0);
	Register1Number : OUT std_logic_vector(4 DOWNTO 0);
	Register2Number : OUT std_logic_vector(4 DOWNTO 0);
	Register3Number : OUT std_logic_vector(4 DOWNTO 0);
	RegOut1 : OUT std_logic_vector(31 DOWNTO 0);
	RegOut2 : OUT std_logic_vector(31 DOWNTO 0)
	);
END Datapath;

-- Design Ports Information
-- ALU_Opcode[1]	=>  Location: PIN_AD24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_Opcode[0]	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Writeback[31]	=>  Location: PIN_AH8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Writeback[30]	=>  Location: PIN_AK8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Writeback[29]	=>  Location: PIN_AC20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Writeback[28]	=>  Location: PIN_AK19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Writeback[27]	=>  Location: PIN_AG12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Writeback[26]	=>  Location: PIN_AJ7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Writeback[25]	=>  Location: PIN_AD21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Writeback[24]	=>  Location: PIN_AH20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Writeback[23]	=>  Location: PIN_AD14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Writeback[22]	=>  Location: PIN_AC14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Writeback[21]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Writeback[20]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Writeback[19]	=>  Location: PIN_AH22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Writeback[18]	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Writeback[17]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Writeback[16]	=>  Location: PIN_AJ19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Writeback[15]	=>  Location: PIN_AD29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Writeback[14]	=>  Location: PIN_V23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Writeback[13]	=>  Location: PIN_AE28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Writeback[12]	=>  Location: PIN_AE27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Writeback[11]	=>  Location: PIN_AJ24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Writeback[10]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Writeback[9]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Writeback[8]	=>  Location: PIN_AE13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Writeback[7]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Writeback[6]	=>  Location: PIN_AF21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Writeback[5]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Writeback[4]	=>  Location: PIN_AA28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Writeback[3]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Writeback[2]	=>  Location: PIN_AG20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Writeback[1]	=>  Location: PIN_AK23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Writeback[0]	=>  Location: PIN_AE26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SX[31]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SX[30]	=>  Location: PIN_AE29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SX[29]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SX[28]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SX[27]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SX[26]	=>  Location: PIN_G8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SX[25]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SX[24]	=>  Location: PIN_AF25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SX[23]	=>  Location: PIN_AH9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SX[22]	=>  Location: PIN_AE7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SX[21]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SX[20]	=>  Location: PIN_J10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SX[19]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SX[18]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SX[17]	=>  Location: PIN_B2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SX[16]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SX[15]	=>  Location: PIN_AH4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SX[14]	=>  Location: PIN_AA21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SX[13]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SX[12]	=>  Location: PIN_AK27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SX[11]	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SX[10]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SX[9]	=>  Location: PIN_D4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SX[8]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SX[7]	=>  Location: PIN_AH28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SX[6]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SX[5]	=>  Location: PIN_AE9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SX[4]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SX[3]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SX[2]	=>  Location: PIN_AK21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SX[1]	=>  Location: PIN_AD19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SX[0]	=>  Location: PIN_C5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Current_Instruction[31]	=>  Location: PIN_AF8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Current_Instruction[30]	=>  Location: PIN_K12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Current_Instruction[29]	=>  Location: PIN_AK22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Current_Instruction[28]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Current_Instruction[27]	=>  Location: PIN_AC23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Current_Instruction[26]	=>  Location: PIN_AG5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Current_Instruction[25]	=>  Location: PIN_AC22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Current_Instruction[24]	=>  Location: PIN_AD11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Current_Instruction[23]	=>  Location: PIN_AE11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Current_Instruction[22]	=>  Location: PIN_AF6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Current_Instruction[21]	=>  Location: PIN_AG1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Current_Instruction[20]	=>  Location: PIN_AG6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Current_Instruction[19]	=>  Location: PIN_AJ1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Current_Instruction[18]	=>  Location: PIN_AD30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Current_Instruction[17]	=>  Location: PIN_AG10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Current_Instruction[16]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Current_Instruction[15]	=>  Location: PIN_K14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Current_Instruction[14]	=>  Location: PIN_AF4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Current_Instruction[13]	=>  Location: PIN_H7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Current_Instruction[12]	=>  Location: PIN_AJ27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Current_Instruction[11]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Current_Instruction[10]	=>  Location: PIN_AC30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Current_Instruction[9]	=>  Location: PIN_AF26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Current_Instruction[8]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Current_Instruction[7]	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Current_Instruction[6]	=>  Location: PIN_AA30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Current_Instruction[5]	=>  Location: PIN_AH5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Current_Instruction[4]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Current_Instruction[3]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Current_Instruction[2]	=>  Location: PIN_AE18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Current_Instruction[1]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Current_Instruction[0]	=>  Location: PIN_H8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Current_PC[31]	=>  Location: PIN_AF19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Current_PC[30]	=>  Location: PIN_V17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Current_PC[29]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Current_PC[28]	=>  Location: PIN_AK18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Current_PC[27]	=>  Location: PIN_AF20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Current_PC[26]	=>  Location: PIN_AH19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Current_PC[25]	=>  Location: PIN_AG27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Current_PC[24]	=>  Location: PIN_AH10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Current_PC[23]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Current_PC[22]	=>  Location: PIN_Y18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Current_PC[21]	=>  Location: PIN_AE22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Current_PC[20]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Current_PC[19]	=>  Location: PIN_AJ29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Current_PC[18]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Current_PC[17]	=>  Location: PIN_AJ25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Current_PC[16]	=>  Location: PIN_AF23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Current_PC[15]	=>  Location: PIN_AK11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Current_PC[14]	=>  Location: PIN_W20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Current_PC[13]	=>  Location: PIN_AJ20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Current_PC[12]	=>  Location: PIN_AH29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Current_PC[11]	=>  Location: PIN_AD20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Current_PC[10]	=>  Location: PIN_AF24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Current_PC[9]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Current_PC[8]	=>  Location: PIN_AJ22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Current_PC[7]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Current_PC[6]	=>  Location: PIN_AK24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Current_PC[5]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Current_PC[4]	=>  Location: PIN_AD25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Current_PC[3]	=>  Location: PIN_AG8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Current_PC[2]	=>  Location: PIN_AJ6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Current_PC[1]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Current_PC[0]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Memory_Output[31]	=>  Location: PIN_AF15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Memory_Output[30]	=>  Location: PIN_AJ9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Memory_Output[29]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Memory_Output[28]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Memory_Output[27]	=>  Location: PIN_AF14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Memory_Output[26]	=>  Location: PIN_AH13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Memory_Output[25]	=>  Location: PIN_AK3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Memory_Output[24]	=>  Location: PIN_AH14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Memory_Output[23]	=>  Location: PIN_AG25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Memory_Output[22]	=>  Location: PIN_AJ12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Memory_Output[21]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Memory_Output[20]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Memory_Output[19]	=>  Location: PIN_V25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Memory_Output[18]	=>  Location: PIN_AF30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Memory_Output[17]	=>  Location: PIN_AG13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Memory_Output[16]	=>  Location: PIN_AE23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Memory_Output[15]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Memory_Output[14]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Memory_Output[13]	=>  Location: PIN_AF9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Memory_Output[12]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Memory_Output[11]	=>  Location: PIN_AJ5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Memory_Output[10]	=>  Location: PIN_AF13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Memory_Output[9]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Memory_Output[8]	=>  Location: PIN_AD7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Memory_Output[7]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Memory_Output[6]	=>  Location: PIN_AE19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Memory_Output[5]	=>  Location: PIN_AJ4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Memory_Output[4]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Memory_Output[3]	=>  Location: PIN_AF11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Memory_Output[2]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Memory_Output[1]	=>  Location: PIN_AC29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Memory_Output[0]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Opcode[3]	=>  Location: PIN_G7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Opcode[2]	=>  Location: PIN_AH25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Opcode[1]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Opcode[0]	=>  Location: PIN_J9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Register1Number[4]	=>  Location: PIN_AG26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Register1Number[3]	=>  Location: PIN_AH27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Register1Number[2]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Register1Number[1]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Register1Number[0]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Register2Number[4]	=>  Location: PIN_AJ2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Register2Number[3]	=>  Location: PIN_AG2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Register2Number[2]	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Register2Number[1]	=>  Location: PIN_AH3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Register2Number[0]	=>  Location: PIN_AG3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Register3Number[4]	=>  Location: PIN_AG11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Register3Number[3]	=>  Location: PIN_AH2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Register3Number[2]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Register3Number[1]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Register3Number[0]	=>  Location: PIN_AG7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RegOut1[31]	=>  Location: PIN_AJ11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RegOut1[30]	=>  Location: PIN_AJ10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RegOut1[29]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RegOut1[28]	=>  Location: PIN_AJ21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RegOut1[27]	=>  Location: PIN_AG23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RegOut1[26]	=>  Location: PIN_AF5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RegOut1[25]	=>  Location: PIN_AJ26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RegOut1[24]	=>  Location: PIN_AC18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RegOut1[23]	=>  Location: PIN_AG18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RegOut1[22]	=>  Location: PIN_AG15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RegOut1[21]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RegOut1[20]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RegOut1[19]	=>  Location: PIN_AD17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RegOut1[18]	=>  Location: PIN_AK26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RegOut1[17]	=>  Location: PIN_AK28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RegOut1[16]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RegOut1[15]	=>  Location: PIN_AF29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RegOut1[14]	=>  Location: PIN_Y27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RegOut1[13]	=>  Location: PIN_AK7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RegOut1[12]	=>  Location: PIN_AH18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RegOut1[11]	=>  Location: PIN_AH30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RegOut1[10]	=>  Location: PIN_AK13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RegOut1[9]	=>  Location: PIN_AG22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RegOut1[8]	=>  Location: PIN_AK2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RegOut1[7]	=>  Location: PIN_AK6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RegOut1[6]	=>  Location: PIN_AJ17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RegOut1[5]	=>  Location: PIN_AB30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RegOut1[4]	=>  Location: PIN_AH23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RegOut1[3]	=>  Location: PIN_AK9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RegOut1[2]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RegOut1[1]	=>  Location: PIN_AG30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RegOut1[0]	=>  Location: PIN_AH24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RegOut2[31]	=>  Location: PIN_AF16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RegOut2[30]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RegOut2[29]	=>  Location: PIN_AK12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RegOut2[28]	=>  Location: PIN_AH7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RegOut2[27]	=>  Location: PIN_AG21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RegOut2[26]	=>  Location: PIN_AE17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RegOut2[25]	=>  Location: PIN_AK14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RegOut2[24]	=>  Location: PIN_AH12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RegOut2[23]	=>  Location: PIN_AE16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RegOut2[22]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RegOut2[21]	=>  Location: PIN_AF18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RegOut2[20]	=>  Location: PIN_AJ14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RegOut2[19]	=>  Location: PIN_AK16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RegOut2[18]	=>  Location: PIN_AH15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RegOut2[17]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RegOut2[16]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RegOut2[15]	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RegOut2[14]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RegOut2[13]	=>  Location: PIN_W15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RegOut2[12]	=>  Location: PIN_AG16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RegOut2[11]	=>  Location: PIN_AF28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RegOut2[10]	=>  Location: PIN_AG17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RegOut2[9]	=>  Location: PIN_AE14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RegOut2[8]	=>  Location: PIN_AH17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RegOut2[7]	=>  Location: PIN_AJ16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RegOut2[6]	=>  Location: PIN_AG28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RegOut2[5]	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RegOut2[4]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RegOut2[3]	=>  Location: PIN_W17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RegOut2[2]	=>  Location: PIN_AK4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RegOut2[1]	=>  Location: PIN_W24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RegOut2[0]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Datapath IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_ALU_Opcode : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_clk : std_logic;
SIGNAL ww_Writeback : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_SX : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_Current_Instruction : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_Current_PC : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_Memory_Output : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_Opcode : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Register1Number : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_Register2Number : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_Register3Number : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_RegOut1 : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_RegOut2 : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst4|myarray_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(39 DOWNTO 0);
SIGNAL \inst4|myarray_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst4|myarray_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst4|myarray_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(39 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \inst|Add0~5_sumout\ : std_logic;
SIGNAL \inst|Add0~6\ : std_logic;
SIGNAL \inst|Add0~1_sumout\ : std_logic;
SIGNAL \inst5|myarray~0_combout\ : std_logic;
SIGNAL \inst5|myarray~1_combout\ : std_logic;
SIGNAL \inst9|myarray~613_q\ : std_logic;
SIGNAL \inst9|myarray~1062_combout\ : std_logic;
SIGNAL \inst9|myarray~389_q\ : std_logic;
SIGNAL \inst9|myarray~357_q\ : std_logic;
SIGNAL \inst9|myarray~1063_combout\ : std_logic;
SIGNAL \inst5|myarray~3_combout\ : std_logic;
SIGNAL \inst9|myarray~325_q\ : std_logic;
SIGNAL \inst9|myarray~1158_combout\ : std_logic;
SIGNAL \inst9|myarray~388_q\ : std_logic;
SIGNAL \inst9|myarray~324_q\ : std_logic;
SIGNAL \inst9|myarray~356_q\ : std_logic;
SIGNAL \inst9|myarray~1159_combout\ : std_logic;
SIGNAL \inst9|myarray~1066_combout\ : std_logic;
SIGNAL \inst9|myarray~611_q\ : std_logic;
SIGNAL \inst9|myarray~1068_combout\ : std_logic;
SIGNAL \inst9|myarray~355_q\ : std_logic;
SIGNAL \inst9|myarray~387_q\ : std_logic;
SIGNAL \inst9|myarray~1069_combout\ : std_logic;
SIGNAL \inst9|myarray~386_q\ : std_logic;
SIGNAL \inst9|myarray~322_q\ : std_logic;
SIGNAL \inst9|myarray~354_q\ : std_logic;
SIGNAL \inst9|myarray~1161_combout\ : std_logic;
SIGNAL \inst9|myarray~1072_combout\ : std_logic;
SIGNAL \inst9|myarray~609_q\ : std_logic;
SIGNAL \inst9|myarray~1074_combout\ : std_logic;
SIGNAL \inst9|myarray~385_q\ : std_logic;
SIGNAL \inst9|myarray~321_q\ : std_logic;
SIGNAL \inst9|myarray~1162_combout\ : std_logic;
SIGNAL \inst9|myarray~384_q\ : std_logic;
SIGNAL \inst9|myarray~352_q\ : std_logic;
SIGNAL \inst9|myarray~1078_combout\ : std_logic;
SIGNAL \inst9|myarray~320_q\ : std_logic;
SIGNAL \inst9|myarray~1163_combout\ : std_logic;
SIGNAL \inst9|myarray~351_q\ : std_logic;
SIGNAL \inst9|myarray~383_q\ : std_logic;
SIGNAL \inst9|myarray~1081_combout\ : std_logic;
SIGNAL \inst9|myarray~319_q\ : std_logic;
SIGNAL \inst9|myarray~1164_combout\ : std_logic;
SIGNAL \inst9|myarray~350_q\ : std_logic;
SIGNAL \inst9|myarray~382_q\ : std_logic;
SIGNAL \inst9|myarray~1084_combout\ : std_logic;
SIGNAL \inst9|myarray~318_q\ : std_logic;
SIGNAL \inst9|myarray~1165_combout\ : std_logic;
SIGNAL \inst9|myarray~381_q\ : std_logic;
SIGNAL \inst9|myarray~349_q\ : std_logic;
SIGNAL \inst9|myarray~1087_combout\ : std_logic;
SIGNAL \inst9|myarray~317_q\ : std_logic;
SIGNAL \inst9|myarray~1166_combout\ : std_logic;
SIGNAL \inst9|myarray~348_q\ : std_logic;
SIGNAL \inst9|myarray~380_q\ : std_logic;
SIGNAL \inst9|myarray~1090_combout\ : std_logic;
SIGNAL \inst9|myarray~316_q\ : std_logic;
SIGNAL \inst9|myarray~1167_combout\ : std_logic;
SIGNAL \inst9|myarray~379_q\ : std_logic;
SIGNAL \inst9|myarray~347_q\ : std_logic;
SIGNAL \inst9|myarray~1093_combout\ : std_logic;
SIGNAL \inst9|myarray~315_q\ : std_logic;
SIGNAL \inst9|myarray~1168_combout\ : std_logic;
SIGNAL \inst9|myarray~378_q\ : std_logic;
SIGNAL \inst9|myarray~346_q\ : std_logic;
SIGNAL \inst9|myarray~1096_combout\ : std_logic;
SIGNAL \inst9|myarray~314_q\ : std_logic;
SIGNAL \inst9|myarray~1169_combout\ : std_logic;
SIGNAL \inst9|myarray~377_q\ : std_logic;
SIGNAL \inst9|myarray~345_q\ : std_logic;
SIGNAL \inst9|myarray~1099_combout\ : std_logic;
SIGNAL \inst9|myarray~313_q\ : std_logic;
SIGNAL \inst9|myarray~1170_combout\ : std_logic;
SIGNAL \inst9|myarray~376_q\ : std_logic;
SIGNAL \inst9|myarray~344_q\ : std_logic;
SIGNAL \inst9|myarray~1102_combout\ : std_logic;
SIGNAL \inst9|myarray~312_q\ : std_logic;
SIGNAL \inst9|myarray~1171_combout\ : std_logic;
SIGNAL \inst9|myarray~375_q\ : std_logic;
SIGNAL \inst9|myarray~343_q\ : std_logic;
SIGNAL \inst9|myarray~311_q\ : std_logic;
SIGNAL \inst9|myarray~1172_combout\ : std_logic;
SIGNAL \inst9|myarray~1105_combout\ : std_logic;
SIGNAL \inst9|myarray~342_q\ : std_logic;
SIGNAL \inst9|myarray~374_q\ : std_logic;
SIGNAL \inst9|myarray~1108_combout\ : std_logic;
SIGNAL \inst9|myarray~310_q\ : std_logic;
SIGNAL \inst9|myarray~1173_combout\ : std_logic;
SIGNAL \inst9|myarray~341_q\ : std_logic;
SIGNAL \inst9|myarray~373_q\ : std_logic;
SIGNAL \inst9|myarray~1111_combout\ : std_logic;
SIGNAL \inst9|myarray~309_q\ : std_logic;
SIGNAL \inst9|myarray~1174_combout\ : std_logic;
SIGNAL \inst9|myarray~372_q\ : std_logic;
SIGNAL \inst9|myarray~340_q\ : std_logic;
SIGNAL \inst9|myarray~1114_combout\ : std_logic;
SIGNAL \inst9|myarray~308_q\ : std_logic;
SIGNAL \inst9|myarray~1175_combout\ : std_logic;
SIGNAL \inst9|myarray~307_q\ : std_logic;
SIGNAL \inst9|myarray~339_q\ : std_logic;
SIGNAL \inst9|myarray~371_q\ : std_logic;
SIGNAL \inst9|myarray~1176_combout\ : std_logic;
SIGNAL \inst9|myarray~1117_combout\ : std_logic;
SIGNAL \inst9|myarray~370_q\ : std_logic;
SIGNAL \inst9|myarray~338_q\ : std_logic;
SIGNAL \inst9|myarray~1120_combout\ : std_logic;
SIGNAL \inst9|myarray~306_q\ : std_logic;
SIGNAL \inst9|myarray~1177_combout\ : std_logic;
SIGNAL \inst9|myarray~369_q\ : std_logic;
SIGNAL \inst9|myarray~337_q\ : std_logic;
SIGNAL \inst9|myarray~1123_combout\ : std_logic;
SIGNAL \inst9|myarray~305_q\ : std_logic;
SIGNAL \inst9|myarray~1178_combout\ : std_logic;
SIGNAL \inst9|myarray~368_q\ : std_logic;
SIGNAL \inst9|myarray~336feeder_combout\ : std_logic;
SIGNAL \inst9|myarray~336_q\ : std_logic;
SIGNAL \inst9|myarray~1126_combout\ : std_logic;
SIGNAL \inst9|myarray~304_q\ : std_logic;
SIGNAL \inst9|myarray~1179_combout\ : std_logic;
SIGNAL \inst6|Equal1~0_combout\ : std_logic;
SIGNAL \inst9|myarray~367_q\ : std_logic;
SIGNAL \inst9|myarray~335_q\ : std_logic;
SIGNAL \inst9|myarray~1129_combout\ : std_logic;
SIGNAL \inst9|myarray~303_q\ : std_logic;
SIGNAL \inst9|myarray~1180_combout\ : std_logic;
SIGNAL \inst9|myarray~334_q\ : std_logic;
SIGNAL \inst9|myarray~366_q\ : std_logic;
SIGNAL \inst9|myarray~1132_combout\ : std_logic;
SIGNAL \inst9|myarray~302_q\ : std_logic;
SIGNAL \inst9|myarray~1181_combout\ : std_logic;
SIGNAL \inst9|myarray~333_q\ : std_logic;
SIGNAL \inst9|myarray~365_q\ : std_logic;
SIGNAL \inst9|myarray~1135_combout\ : std_logic;
SIGNAL \inst9|myarray~301_q\ : std_logic;
SIGNAL \inst9|myarray~1182_combout\ : std_logic;
SIGNAL \inst9|myarray~364_q\ : std_logic;
SIGNAL \inst9|myarray~332_q\ : std_logic;
SIGNAL \inst9|myarray~1138_combout\ : std_logic;
SIGNAL \inst9|myarray~300_q\ : std_logic;
SIGNAL \inst9|myarray~1183_combout\ : std_logic;
SIGNAL \inst9|myarray~331_q\ : std_logic;
SIGNAL \inst9|myarray~363_q\ : std_logic;
SIGNAL \inst9|myarray~1141_combout\ : std_logic;
SIGNAL \inst9|myarray~299_q\ : std_logic;
SIGNAL \inst9|myarray~1184_combout\ : std_logic;
SIGNAL \inst9|myarray~330_q\ : std_logic;
SIGNAL \inst9|myarray~1191_combout\ : std_logic;
SIGNAL \inst9|myarray~362_q\ : std_logic;
SIGNAL \inst9|myarray~1144_combout\ : std_logic;
SIGNAL \inst9|myarray~298feeder_combout\ : std_logic;
SIGNAL \inst9|myarray~298_q\ : std_logic;
SIGNAL \inst9|myarray~1185_combout\ : std_logic;
SIGNAL \inst9|myarray~1192_combout\ : std_logic;
SIGNAL \inst9|myarray~329_q\ : std_logic;
SIGNAL \inst9|myarray~1197_combout\ : std_logic;
SIGNAL \inst9|myarray~297_q\ : std_logic;
SIGNAL \inst9|myarray~361_q\ : std_logic;
SIGNAL \inst9|myarray~1186_combout\ : std_logic;
SIGNAL \inst9|myarray~1147_combout\ : std_logic;
SIGNAL \inst9|myarray~296_q\ : std_logic;
SIGNAL \inst9|myarray~360_q\ : std_logic;
SIGNAL \inst9|myarray~328_q\ : std_logic;
SIGNAL \inst9|myarray~1187_combout\ : std_logic;
SIGNAL \inst9|myarray~1150_combout\ : std_logic;
SIGNAL \inst9|myarray~359_q\ : std_logic;
SIGNAL \inst9|myarray~327_q\ : std_logic;
SIGNAL \inst9|myarray~1153_combout\ : std_logic;
SIGNAL \inst9|myarray~295_q\ : std_logic;
SIGNAL \inst9|myarray~1188_combout\ : std_logic;
SIGNAL \inst9|myarray~294_q\ : std_logic;
SIGNAL \inst9|myarray~1196_combout\ : std_logic;
SIGNAL \inst9|myarray~326_q\ : std_logic;
SIGNAL \inst9|myarray~358_q\ : std_logic;
SIGNAL \inst9|myarray~1189_combout\ : std_logic;
SIGNAL \inst9|myarray~1156_combout\ : std_logic;
SIGNAL \inst2|Add0~130_cout\ : std_logic;
SIGNAL \inst2|Add0~125_sumout\ : std_logic;
SIGNAL \inst2|Add1~125_sumout\ : std_logic;
SIGNAL \inst15|R[2]~0_combout\ : std_logic;
SIGNAL \inst2|Add1~122\ : std_logic;
SIGNAL \inst2|Add1~117_sumout\ : std_logic;
SIGNAL \inst2|R[2]~3_combout\ : std_logic;
SIGNAL \inst2|Add0~118\ : std_logic;
SIGNAL \inst2|Add0~113_sumout\ : std_logic;
SIGNAL \inst2|R[3]~2_combout\ : std_logic;
SIGNAL \inst2|Add1~114\ : std_logic;
SIGNAL \inst2|Add1~109_sumout\ : std_logic;
SIGNAL \inst2|R[4]~1_combout\ : std_logic;
SIGNAL \inst2|Add0~110\ : std_logic;
SIGNAL \inst2|Add0~105_sumout\ : std_logic;
SIGNAL \inst2|R[5]~0_combout\ : std_logic;
SIGNAL \inst2|Add0~106\ : std_logic;
SIGNAL \inst2|Add0~101_sumout\ : std_logic;
SIGNAL \inst2|R[6]~4_combout\ : std_logic;
SIGNAL \inst4|myarray_rtl_0|auto_generated|ram_block1a0~portbdataout\ : std_logic;
SIGNAL \inst13|R[0]~31_combout\ : std_logic;
SIGNAL \inst9|myarray~1195_combout\ : std_logic;
SIGNAL \inst9|myarray~582_q\ : std_logic;
SIGNAL \inst9|myarray~1155_combout\ : std_logic;
SIGNAL \inst2|Add1~126\ : std_logic;
SIGNAL \inst2|Add1~121_sumout\ : std_logic;
SIGNAL \inst2|Add0~126\ : std_logic;
SIGNAL \inst2|Add0~121_sumout\ : std_logic;
SIGNAL \inst4|myarray_rtl_0|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \inst13|R[1]~30_combout\ : std_logic;
SIGNAL \inst9|myarray~1194_combout\ : std_logic;
SIGNAL \inst9|myarray~583_q\ : std_logic;
SIGNAL \inst9|myarray~1152_combout\ : std_logic;
SIGNAL \inst2|Add0~122\ : std_logic;
SIGNAL \inst2|Add0~117_sumout\ : std_logic;
SIGNAL \inst4|myarray_rtl_0|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \inst13|R[2]~29_combout\ : std_logic;
SIGNAL \inst9|myarray~1193_combout\ : std_logic;
SIGNAL \inst9|myarray~584_q\ : std_logic;
SIGNAL \inst9|myarray~1149_combout\ : std_logic;
SIGNAL \inst2|Add1~118\ : std_logic;
SIGNAL \inst2|Add1~113_sumout\ : std_logic;
SIGNAL \inst4|myarray_rtl_0|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \inst13|R[3]~28_combout\ : std_logic;
SIGNAL \inst9|myarray~585_q\ : std_logic;
SIGNAL \inst9|myarray~1146_combout\ : std_logic;
SIGNAL \inst2|Add0~114\ : std_logic;
SIGNAL \inst2|Add0~109_sumout\ : std_logic;
SIGNAL \inst4|myarray_rtl_0|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \inst13|R[4]~27_combout\ : std_logic;
SIGNAL \inst9|myarray~1190_combout\ : std_logic;
SIGNAL \inst9|myarray~586_q\ : std_logic;
SIGNAL \inst9|myarray~1143_combout\ : std_logic;
SIGNAL \inst2|Add1~110\ : std_logic;
SIGNAL \inst2|Add1~105_sumout\ : std_logic;
SIGNAL \inst4|myarray_rtl_0|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \inst13|R[5]~26_combout\ : std_logic;
SIGNAL \inst9|myarray~587_q\ : std_logic;
SIGNAL \inst9|myarray~1140_combout\ : std_logic;
SIGNAL \inst2|Add1~106\ : std_logic;
SIGNAL \inst2|Add1~101_sumout\ : std_logic;
SIGNAL \inst4|myarray_rtl_0|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \inst13|R[6]~25_combout\ : std_logic;
SIGNAL \inst9|myarray~588_q\ : std_logic;
SIGNAL \inst9|myarray~1137_combout\ : std_logic;
SIGNAL \inst2|Add1~102\ : std_logic;
SIGNAL \inst2|Add1~97_sumout\ : std_logic;
SIGNAL \inst2|Add0~102\ : std_logic;
SIGNAL \inst2|Add0~97_sumout\ : std_logic;
SIGNAL \inst4|myarray_rtl_0|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \inst13|R[7]~24_combout\ : std_logic;
SIGNAL \inst9|myarray~589_q\ : std_logic;
SIGNAL \inst9|myarray~1134_combout\ : std_logic;
SIGNAL \inst2|Add0~98\ : std_logic;
SIGNAL \inst2|Add0~93_sumout\ : std_logic;
SIGNAL \inst2|Add1~98\ : std_logic;
SIGNAL \inst2|Add1~93_sumout\ : std_logic;
SIGNAL \inst4|myarray_rtl_0|auto_generated|ram_block1a8\ : std_logic;
SIGNAL \inst13|R[8]~23_combout\ : std_logic;
SIGNAL \inst9|myarray~590_q\ : std_logic;
SIGNAL \inst9|myarray~1131_combout\ : std_logic;
SIGNAL \inst2|Add0~94\ : std_logic;
SIGNAL \inst2|Add0~89_sumout\ : std_logic;
SIGNAL \inst2|Add1~94\ : std_logic;
SIGNAL \inst2|Add1~89_sumout\ : std_logic;
SIGNAL \inst4|myarray_rtl_0|auto_generated|ram_block1a9\ : std_logic;
SIGNAL \inst13|R[9]~22_combout\ : std_logic;
SIGNAL \inst9|myarray~591_q\ : std_logic;
SIGNAL \inst9|myarray~1128_combout\ : std_logic;
SIGNAL \inst2|Add1~90\ : std_logic;
SIGNAL \inst2|Add1~85_sumout\ : std_logic;
SIGNAL \inst2|Add0~90\ : std_logic;
SIGNAL \inst2|Add0~85_sumout\ : std_logic;
SIGNAL \inst4|myarray_rtl_0|auto_generated|ram_block1a10\ : std_logic;
SIGNAL \inst13|R[10]~21_combout\ : std_logic;
SIGNAL \inst9|myarray~592_q\ : std_logic;
SIGNAL \inst9|myarray~1125_combout\ : std_logic;
SIGNAL \inst2|Add1~86\ : std_logic;
SIGNAL \inst2|Add1~81_sumout\ : std_logic;
SIGNAL \inst2|Add0~86\ : std_logic;
SIGNAL \inst2|Add0~81_sumout\ : std_logic;
SIGNAL \inst4|myarray_rtl_0|auto_generated|ram_block1a11\ : std_logic;
SIGNAL \inst13|R[11]~20_combout\ : std_logic;
SIGNAL \inst9|myarray~593_q\ : std_logic;
SIGNAL \inst9|myarray~1122_combout\ : std_logic;
SIGNAL \inst2|Add1~82\ : std_logic;
SIGNAL \inst2|Add1~77_sumout\ : std_logic;
SIGNAL \inst2|Add0~82\ : std_logic;
SIGNAL \inst2|Add0~77_sumout\ : std_logic;
SIGNAL \inst4|myarray_rtl_0|auto_generated|ram_block1a12\ : std_logic;
SIGNAL \inst13|R[12]~19_combout\ : std_logic;
SIGNAL \inst9|myarray~594_q\ : std_logic;
SIGNAL \inst9|myarray~1119_combout\ : std_logic;
SIGNAL \inst2|Add0~78\ : std_logic;
SIGNAL \inst2|Add0~73_sumout\ : std_logic;
SIGNAL \inst2|Add1~78\ : std_logic;
SIGNAL \inst2|Add1~73_sumout\ : std_logic;
SIGNAL \inst4|myarray_rtl_0|auto_generated|ram_block1a13\ : std_logic;
SIGNAL \inst13|R[13]~18_combout\ : std_logic;
SIGNAL \inst9|myarray~595_q\ : std_logic;
SIGNAL \inst9|myarray~1116_combout\ : std_logic;
SIGNAL \inst2|Add0~74\ : std_logic;
SIGNAL \inst2|Add0~69_sumout\ : std_logic;
SIGNAL \inst2|Add1~74\ : std_logic;
SIGNAL \inst2|Add1~69_sumout\ : std_logic;
SIGNAL \inst4|myarray_rtl_0|auto_generated|ram_block1a14\ : std_logic;
SIGNAL \inst13|R[14]~17_combout\ : std_logic;
SIGNAL \inst9|myarray~596_q\ : std_logic;
SIGNAL \inst9|myarray~1113_combout\ : std_logic;
SIGNAL \inst2|Add1~70\ : std_logic;
SIGNAL \inst2|Add1~65_sumout\ : std_logic;
SIGNAL \inst2|Add0~70\ : std_logic;
SIGNAL \inst2|Add0~65_sumout\ : std_logic;
SIGNAL \inst4|myarray_rtl_0|auto_generated|ram_block1a15\ : std_logic;
SIGNAL \inst13|R[15]~16_combout\ : std_logic;
SIGNAL \inst9|myarray~597_q\ : std_logic;
SIGNAL \inst9|myarray~1110_combout\ : std_logic;
SIGNAL \inst2|Add0~66\ : std_logic;
SIGNAL \inst2|Add0~61_sumout\ : std_logic;
SIGNAL \inst2|Add1~66\ : std_logic;
SIGNAL \inst2|Add1~61_sumout\ : std_logic;
SIGNAL \inst4|myarray_rtl_0|auto_generated|ram_block1a16\ : std_logic;
SIGNAL \inst13|R[16]~15_combout\ : std_logic;
SIGNAL \inst9|myarray~598feeder_combout\ : std_logic;
SIGNAL \inst9|myarray~598_q\ : std_logic;
SIGNAL \inst9|myarray~1107_combout\ : std_logic;
SIGNAL \inst2|Add0~62\ : std_logic;
SIGNAL \inst2|Add0~57_sumout\ : std_logic;
SIGNAL \inst2|Add1~62\ : std_logic;
SIGNAL \inst2|Add1~57_sumout\ : std_logic;
SIGNAL \inst4|myarray_rtl_0|auto_generated|ram_block1a17\ : std_logic;
SIGNAL \inst13|R[17]~14_combout\ : std_logic;
SIGNAL \inst9|myarray~599_q\ : std_logic;
SIGNAL \inst9|myarray~1104_combout\ : std_logic;
SIGNAL \inst2|Add1~58\ : std_logic;
SIGNAL \inst2|Add1~53_sumout\ : std_logic;
SIGNAL \inst2|Add0~58\ : std_logic;
SIGNAL \inst2|Add0~53_sumout\ : std_logic;
SIGNAL \inst4|myarray_rtl_0|auto_generated|ram_block1a18\ : std_logic;
SIGNAL \inst13|R[18]~13_combout\ : std_logic;
SIGNAL \inst9|myarray~600_q\ : std_logic;
SIGNAL \inst9|myarray~1101_combout\ : std_logic;
SIGNAL \inst2|Add1~54\ : std_logic;
SIGNAL \inst2|Add1~49_sumout\ : std_logic;
SIGNAL \inst2|Add0~54\ : std_logic;
SIGNAL \inst2|Add0~49_sumout\ : std_logic;
SIGNAL \inst4|myarray_rtl_0|auto_generated|ram_block1a19\ : std_logic;
SIGNAL \inst13|R[19]~12_combout\ : std_logic;
SIGNAL \inst9|myarray~601_q\ : std_logic;
SIGNAL \inst9|myarray~1098_combout\ : std_logic;
SIGNAL \inst2|Add1~50\ : std_logic;
SIGNAL \inst2|Add1~45_sumout\ : std_logic;
SIGNAL \inst2|Add0~50\ : std_logic;
SIGNAL \inst2|Add0~45_sumout\ : std_logic;
SIGNAL \inst4|myarray_rtl_0|auto_generated|ram_block1a20\ : std_logic;
SIGNAL \inst13|R[20]~11_combout\ : std_logic;
SIGNAL \inst9|myarray~602_q\ : std_logic;
SIGNAL \inst9|myarray~1095_combout\ : std_logic;
SIGNAL \inst2|Add1~46\ : std_logic;
SIGNAL \inst2|Add1~41_sumout\ : std_logic;
SIGNAL \inst2|Add0~46\ : std_logic;
SIGNAL \inst2|Add0~41_sumout\ : std_logic;
SIGNAL \inst4|myarray_rtl_0|auto_generated|ram_block1a21\ : std_logic;
SIGNAL \inst13|R[21]~10_combout\ : std_logic;
SIGNAL \inst9|myarray~603_q\ : std_logic;
SIGNAL \inst9|myarray~1092_combout\ : std_logic;
SIGNAL \inst2|Add1~42\ : std_logic;
SIGNAL \inst2|Add1~37_sumout\ : std_logic;
SIGNAL \inst2|Add0~42\ : std_logic;
SIGNAL \inst2|Add0~37_sumout\ : std_logic;
SIGNAL \inst4|myarray_rtl_0|auto_generated|ram_block1a22\ : std_logic;
SIGNAL \inst13|R[22]~9_combout\ : std_logic;
SIGNAL \inst9|myarray~604_q\ : std_logic;
SIGNAL \inst9|myarray~1089_combout\ : std_logic;
SIGNAL \inst2|Add0~38\ : std_logic;
SIGNAL \inst2|Add0~33_sumout\ : std_logic;
SIGNAL \inst2|Add1~38\ : std_logic;
SIGNAL \inst2|Add1~33_sumout\ : std_logic;
SIGNAL \inst4|myarray_rtl_0|auto_generated|ram_block1a23\ : std_logic;
SIGNAL \inst13|R[23]~8_combout\ : std_logic;
SIGNAL \inst9|myarray~605_q\ : std_logic;
SIGNAL \inst9|myarray~1086_combout\ : std_logic;
SIGNAL \inst2|Add0~34\ : std_logic;
SIGNAL \inst2|Add0~29_sumout\ : std_logic;
SIGNAL \inst2|Add1~34\ : std_logic;
SIGNAL \inst2|Add1~29_sumout\ : std_logic;
SIGNAL \inst4|myarray_rtl_0|auto_generated|ram_block1a24\ : std_logic;
SIGNAL \inst13|R[24]~7_combout\ : std_logic;
SIGNAL \inst9|myarray~606_q\ : std_logic;
SIGNAL \inst9|myarray~1083_combout\ : std_logic;
SIGNAL \inst2|Add0~30\ : std_logic;
SIGNAL \inst2|Add0~25_sumout\ : std_logic;
SIGNAL \inst2|Add1~30\ : std_logic;
SIGNAL \inst2|Add1~25_sumout\ : std_logic;
SIGNAL \inst4|myarray_rtl_0|auto_generated|ram_block1a25\ : std_logic;
SIGNAL \inst13|R[25]~6_combout\ : std_logic;
SIGNAL \inst9|myarray~607_q\ : std_logic;
SIGNAL \inst9|myarray~1080_combout\ : std_logic;
SIGNAL \inst2|Add0~26\ : std_logic;
SIGNAL \inst2|Add0~21_sumout\ : std_logic;
SIGNAL \inst2|Add1~26\ : std_logic;
SIGNAL \inst2|Add1~21_sumout\ : std_logic;
SIGNAL \inst4|myarray_rtl_0|auto_generated|ram_block1a26\ : std_logic;
SIGNAL \inst13|R[26]~5_combout\ : std_logic;
SIGNAL \inst9|myarray~608_q\ : std_logic;
SIGNAL \inst9|myarray~1077_combout\ : std_logic;
SIGNAL \inst2|Add0~22\ : std_logic;
SIGNAL \inst2|Add0~17_sumout\ : std_logic;
SIGNAL \inst2|Add1~22\ : std_logic;
SIGNAL \inst2|Add1~17_sumout\ : std_logic;
SIGNAL \inst4|myarray_rtl_0|auto_generated|ram_block1a27\ : std_logic;
SIGNAL \inst13|R[27]~4_combout\ : std_logic;
SIGNAL \inst9|myarray~353_q\ : std_logic;
SIGNAL \inst9|myarray~1075_combout\ : std_logic;
SIGNAL \inst2|Add0~18\ : std_logic;
SIGNAL \inst2|Add0~13_sumout\ : std_logic;
SIGNAL \inst2|Add1~18\ : std_logic;
SIGNAL \inst2|Add1~13_sumout\ : std_logic;
SIGNAL \inst4|myarray_rtl_0|auto_generated|ram_block1a28\ : std_logic;
SIGNAL \inst13|R[28]~3_combout\ : std_logic;
SIGNAL \inst9|myarray~610_q\ : std_logic;
SIGNAL \inst9|myarray~1071_combout\ : std_logic;
SIGNAL \inst2|Add0~14\ : std_logic;
SIGNAL \inst2|Add0~9_sumout\ : std_logic;
SIGNAL \inst2|Add1~14\ : std_logic;
SIGNAL \inst2|Add1~9_sumout\ : std_logic;
SIGNAL \inst4|myarray_rtl_0|auto_generated|ram_block1a29\ : std_logic;
SIGNAL \inst13|R[29]~2_combout\ : std_logic;
SIGNAL \inst9|myarray~323_q\ : std_logic;
SIGNAL \inst9|myarray~1160_combout\ : std_logic;
SIGNAL \inst2|Add0~10\ : std_logic;
SIGNAL \inst2|Add0~5_sumout\ : std_logic;
SIGNAL \inst2|Add1~10\ : std_logic;
SIGNAL \inst2|Add1~5_sumout\ : std_logic;
SIGNAL \inst4|myarray_rtl_0|auto_generated|ram_block1a30\ : std_logic;
SIGNAL \inst13|R[30]~1_combout\ : std_logic;
SIGNAL \inst9|myarray~612_q\ : std_logic;
SIGNAL \inst9|myarray~1065_combout\ : std_logic;
SIGNAL \inst2|Add0~6\ : std_logic;
SIGNAL \inst2|Add0~1_sumout\ : std_logic;
SIGNAL \inst4|myarray_rtl_0|auto_generated|ram_block1a31\ : std_logic;
SIGNAL \inst2|Add1~6\ : std_logic;
SIGNAL \inst2|Add1~1_sumout\ : std_logic;
SIGNAL \inst13|R[31]~0_combout\ : std_logic;
SIGNAL \inst5|myarray~2_combout\ : std_logic;
SIGNAL \inst|Add0~2\ : std_logic;
SIGNAL \inst|Add0~117_sumout\ : std_logic;
SIGNAL \inst|Add0~118\ : std_logic;
SIGNAL \inst|Add0~113_sumout\ : std_logic;
SIGNAL \inst|Add0~114\ : std_logic;
SIGNAL \inst|Add0~109_sumout\ : std_logic;
SIGNAL \inst|Add0~110\ : std_logic;
SIGNAL \inst|Add0~105_sumout\ : std_logic;
SIGNAL \inst|Add0~106\ : std_logic;
SIGNAL \inst|Add0~101_sumout\ : std_logic;
SIGNAL \inst|Add0~102\ : std_logic;
SIGNAL \inst|Add0~97_sumout\ : std_logic;
SIGNAL \inst|Add0~98\ : std_logic;
SIGNAL \inst|Add0~93_sumout\ : std_logic;
SIGNAL \inst|Add0~94\ : std_logic;
SIGNAL \inst|Add0~89_sumout\ : std_logic;
SIGNAL \inst|Add0~90\ : std_logic;
SIGNAL \inst|Add0~85_sumout\ : std_logic;
SIGNAL \inst|Add0~86\ : std_logic;
SIGNAL \inst|Add0~81_sumout\ : std_logic;
SIGNAL \inst|Add0~82\ : std_logic;
SIGNAL \inst|Add0~77_sumout\ : std_logic;
SIGNAL \inst|Add0~78\ : std_logic;
SIGNAL \inst|Add0~73_sumout\ : std_logic;
SIGNAL \inst|Add0~74\ : std_logic;
SIGNAL \inst|Add0~69_sumout\ : std_logic;
SIGNAL \inst|Add0~70\ : std_logic;
SIGNAL \inst|Add0~65_sumout\ : std_logic;
SIGNAL \inst|Add0~66\ : std_logic;
SIGNAL \inst|Add0~61_sumout\ : std_logic;
SIGNAL \inst|Add0~62\ : std_logic;
SIGNAL \inst|Add0~57_sumout\ : std_logic;
SIGNAL \inst|Add0~58\ : std_logic;
SIGNAL \inst|Add0~53_sumout\ : std_logic;
SIGNAL \inst|Add0~54\ : std_logic;
SIGNAL \inst|Add0~49_sumout\ : std_logic;
SIGNAL \inst|Add0~50\ : std_logic;
SIGNAL \inst|Add0~45_sumout\ : std_logic;
SIGNAL \inst|Add0~46\ : std_logic;
SIGNAL \inst|Add0~41_sumout\ : std_logic;
SIGNAL \inst|Add0~42\ : std_logic;
SIGNAL \inst|Add0~37_sumout\ : std_logic;
SIGNAL \inst|Add0~38\ : std_logic;
SIGNAL \inst|Add0~33_sumout\ : std_logic;
SIGNAL \inst|Add0~34\ : std_logic;
SIGNAL \inst|Add0~29_sumout\ : std_logic;
SIGNAL \inst|Add0~30\ : std_logic;
SIGNAL \inst|Add0~25_sumout\ : std_logic;
SIGNAL \inst|Add0~26\ : std_logic;
SIGNAL \inst|Add0~21_sumout\ : std_logic;
SIGNAL \inst|Add0~22\ : std_logic;
SIGNAL \inst|Add0~17_sumout\ : std_logic;
SIGNAL \inst|Add0~18\ : std_logic;
SIGNAL \inst|Add0~13_sumout\ : std_logic;
SIGNAL \inst|Add0~14\ : std_logic;
SIGNAL \inst|Add0~9_sumout\ : std_logic;
SIGNAL \inst9|myarray~1064_combout\ : std_logic;
SIGNAL \inst9|myarray~1067_combout\ : std_logic;
SIGNAL \inst9|myarray~1070_combout\ : std_logic;
SIGNAL \inst9|myarray~1073_combout\ : std_logic;
SIGNAL \inst9|myarray~1076_combout\ : std_logic;
SIGNAL \inst9|myarray~1079_combout\ : std_logic;
SIGNAL \inst9|myarray~1082_combout\ : std_logic;
SIGNAL \inst9|myarray~1085_combout\ : std_logic;
SIGNAL \inst9|myarray~1088_combout\ : std_logic;
SIGNAL \inst9|myarray~1091_combout\ : std_logic;
SIGNAL \inst9|myarray~1094_combout\ : std_logic;
SIGNAL \inst9|myarray~1097_combout\ : std_logic;
SIGNAL \inst9|myarray~1100_combout\ : std_logic;
SIGNAL \inst9|myarray~1103_combout\ : std_logic;
SIGNAL \inst9|myarray~1106_combout\ : std_logic;
SIGNAL \inst9|myarray~1109_combout\ : std_logic;
SIGNAL \inst9|myarray~1112_combout\ : std_logic;
SIGNAL \inst9|myarray~1115_combout\ : std_logic;
SIGNAL \inst9|myarray~1118_combout\ : std_logic;
SIGNAL \inst9|myarray~1121_combout\ : std_logic;
SIGNAL \inst9|myarray~1124_combout\ : std_logic;
SIGNAL \inst9|myarray~1127_combout\ : std_logic;
SIGNAL \inst9|myarray~1130_combout\ : std_logic;
SIGNAL \inst9|myarray~1133_combout\ : std_logic;
SIGNAL \inst9|myarray~1136_combout\ : std_logic;
SIGNAL \inst9|myarray~1139_combout\ : std_logic;
SIGNAL \inst9|myarray~1142_combout\ : std_logic;
SIGNAL \inst9|myarray~1145_combout\ : std_logic;
SIGNAL \inst9|myarray~1148_combout\ : std_logic;
SIGNAL \inst9|myarray~1151_combout\ : std_logic;
SIGNAL \inst9|myarray~1154_combout\ : std_logic;
SIGNAL \inst9|myarray~1157_combout\ : std_logic;
SIGNAL \inst2|Rtemp\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst8|PCout\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst3|Y\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst4|myarray_rtl_0|auto_generated|ALT_INV_ram_block1a31\ : std_logic;
SIGNAL \inst4|myarray_rtl_0|auto_generated|ALT_INV_ram_block1a21\ : std_logic;
SIGNAL \inst2|ALT_INV_Add1~93_sumout\ : std_logic;
SIGNAL \inst4|myarray_rtl_0|auto_generated|ALT_INV_ram_block1a17\ : std_logic;
SIGNAL \inst4|myarray_rtl_0|auto_generated|ALT_INV_ram_block1a16\ : std_logic;
SIGNAL \inst2|ALT_INV_Add1~77_sumout\ : std_logic;
SIGNAL \inst2|ALT_INV_Add1~49_sumout\ : std_logic;
SIGNAL \inst2|ALT_INV_Add1~85_sumout\ : std_logic;
SIGNAL \inst4|myarray_rtl_0|auto_generated|ALT_INV_ram_block1a15\ : std_logic;
SIGNAL \inst2|ALT_INV_Add1~69_sumout\ : std_logic;
SIGNAL \inst2|ALT_INV_Add1~65_sumout\ : std_logic;
SIGNAL \inst4|myarray_rtl_0|auto_generated|ALT_INV_ram_block1a18\ : std_logic;
SIGNAL \inst4|myarray_rtl_0|auto_generated|ALT_INV_ram_block1a14\ : std_logic;
SIGNAL \inst4|myarray_rtl_0|auto_generated|ALT_INV_ram_block1a13\ : std_logic;
SIGNAL \inst2|ALT_INV_Add1~113_sumout\ : std_logic;
SIGNAL \inst4|myarray_rtl_0|auto_generated|ALT_INV_ram_block1a30\ : std_logic;
SIGNAL \inst2|ALT_INV_Add1~61_sumout\ : std_logic;
SIGNAL \inst2|ALT_INV_Add1~101_sumout\ : std_logic;
SIGNAL \inst4|myarray_rtl_0|auto_generated|ALT_INV_ram_block1a26\ : std_logic;
SIGNAL \inst4|myarray_rtl_0|auto_generated|ALT_INV_ram_block1a22\ : std_logic;
SIGNAL \inst2|ALT_INV_Add1~53_sumout\ : std_logic;
SIGNAL \inst4|myarray_rtl_0|auto_generated|ALT_INV_ram_block1a23\ : std_logic;
SIGNAL \inst2|ALT_INV_Add1~37_sumout\ : std_logic;
SIGNAL \inst2|ALT_INV_Add1~109_sumout\ : std_logic;
SIGNAL \inst2|ALT_INV_Add1~117_sumout\ : std_logic;
SIGNAL \inst4|myarray_rtl_0|auto_generated|ALT_INV_ram_block1a28\ : std_logic;
SIGNAL \inst2|ALT_INV_Add1~121_sumout\ : std_logic;
SIGNAL \inst2|ALT_INV_Add1~41_sumout\ : std_logic;
SIGNAL \inst2|ALT_INV_Add1~97_sumout\ : std_logic;
SIGNAL \inst2|ALT_INV_Add1~57_sumout\ : std_logic;
SIGNAL \inst4|myarray_rtl_0|auto_generated|ALT_INV_ram_block1a0~portbdataout\ : std_logic;
SIGNAL \inst4|myarray_rtl_0|auto_generated|ALT_INV_ram_block1a25\ : std_logic;
SIGNAL \inst4|myarray_rtl_0|auto_generated|ALT_INV_ram_block1a24\ : std_logic;
SIGNAL \inst2|ALT_INV_Add1~81_sumout\ : std_logic;
SIGNAL \inst4|myarray_rtl_0|auto_generated|ALT_INV_ram_block1a27\ : std_logic;
SIGNAL \inst4|myarray_rtl_0|auto_generated|ALT_INV_ram_block1a20\ : std_logic;
SIGNAL \inst4|myarray_rtl_0|auto_generated|ALT_INV_ram_block1a19\ : std_logic;
SIGNAL \inst2|ALT_INV_Add1~73_sumout\ : std_logic;
SIGNAL \inst4|myarray_rtl_0|auto_generated|ALT_INV_ram_block1a29\ : std_logic;
SIGNAL \inst2|ALT_INV_Add1~45_sumout\ : std_logic;
SIGNAL \inst2|ALT_INV_Add1~89_sumout\ : std_logic;
SIGNAL \inst2|ALT_INV_Add1~105_sumout\ : std_logic;
SIGNAL \inst2|ALT_INV_Add0~33_sumout\ : std_logic;
SIGNAL \inst2|ALT_INV_Add0~37_sumout\ : std_logic;
SIGNAL \inst2|ALT_INV_Add0~93_sumout\ : std_logic;
SIGNAL \inst4|myarray_rtl_0|auto_generated|ALT_INV_ram_block1a7\ : std_logic;
SIGNAL \inst2|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \inst4|myarray_rtl_0|auto_generated|ALT_INV_ram_block1a5\ : std_logic;
SIGNAL \inst2|ALT_INV_Add0~45_sumout\ : std_logic;
SIGNAL \inst4|myarray_rtl_0|auto_generated|ALT_INV_ram_block1a8\ : std_logic;
SIGNAL \inst2|ALT_INV_Add0~57_sumout\ : std_logic;
SIGNAL \inst2|ALT_INV_Add0~81_sumout\ : std_logic;
SIGNAL \inst2|ALT_INV_Add0~89_sumout\ : std_logic;
SIGNAL \inst4|myarray_rtl_0|auto_generated|ALT_INV_ram_block1a10\ : std_logic;
SIGNAL \inst4|myarray_rtl_0|auto_generated|ALT_INV_ram_block1a6\ : std_logic;
SIGNAL \inst2|ALT_INV_Add1~125_sumout\ : std_logic;
SIGNAL \inst2|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \inst2|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \inst4|myarray_rtl_0|auto_generated|ALT_INV_ram_block1a4\ : std_logic;
SIGNAL \inst4|myarray_rtl_0|auto_generated|ALT_INV_ram_block1a2\ : std_logic;
SIGNAL \inst2|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \inst2|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \inst2|ALT_INV_Add0~49_sumout\ : std_logic;
SIGNAL \inst4|myarray_rtl_0|auto_generated|ALT_INV_ram_block1a9\ : std_logic;
SIGNAL \inst2|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \inst2|ALT_INV_Add0~41_sumout\ : std_logic;
SIGNAL \inst2|ALT_INV_Add0~53_sumout\ : std_logic;
SIGNAL \inst4|myarray_rtl_0|auto_generated|ALT_INV_ram_block1a1\ : std_logic;
SIGNAL \inst2|ALT_INV_Add0~65_sumout\ : std_logic;
SIGNAL \inst2|ALT_INV_Add0~69_sumout\ : std_logic;
SIGNAL \inst2|ALT_INV_Add0~61_sumout\ : std_logic;
SIGNAL \inst4|myarray_rtl_0|auto_generated|ALT_INV_ram_block1a11\ : std_logic;
SIGNAL \inst2|ALT_INV_Add0~73_sumout\ : std_logic;
SIGNAL \inst2|ALT_INV_Add0~77_sumout\ : std_logic;
SIGNAL \inst2|ALT_INV_Add0~85_sumout\ : std_logic;
SIGNAL \inst2|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \inst4|myarray_rtl_0|auto_generated|ALT_INV_ram_block1a12\ : std_logic;
SIGNAL \inst4|myarray_rtl_0|auto_generated|ALT_INV_ram_block1a3\ : std_logic;
SIGNAL \inst2|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \inst2|ALT_INV_Add0~113_sumout\ : std_logic;
SIGNAL \inst2|ALT_INV_Add0~117_sumout\ : std_logic;
SIGNAL \inst2|ALT_INV_Add0~101_sumout\ : std_logic;
SIGNAL \inst2|ALT_INV_Add0~97_sumout\ : std_logic;
SIGNAL \inst2|ALT_INV_Add0~105_sumout\ : std_logic;
SIGNAL \inst2|ALT_INV_Add0~109_sumout\ : std_logic;
SIGNAL \inst2|ALT_INV_Add0~121_sumout\ : std_logic;
SIGNAL \inst2|ALT_INV_Add0~125_sumout\ : std_logic;
SIGNAL \inst13|ALT_INV_R[4]~27_combout\ : std_logic;
SIGNAL \inst13|ALT_INV_R[0]~31_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_myarray~1_combout\ : std_logic;
SIGNAL \inst8|ALT_INV_PCout\ : std_logic_vector(31 DOWNTO 2);
SIGNAL \inst13|ALT_INV_R[1]~30_combout\ : std_logic;
SIGNAL \inst13|ALT_INV_R[16]~15_combout\ : std_logic;
SIGNAL \inst13|ALT_INV_R[3]~28_combout\ : std_logic;
SIGNAL \inst6|ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Y\ : std_logic_vector(2 DOWNTO 2);
SIGNAL \inst13|ALT_INV_R[2]~29_combout\ : std_logic;
SIGNAL \inst13|ALT_INV_R[10]~21_combout\ : std_logic;
SIGNAL \inst9|ALT_INV_myarray~606_q\ : std_logic;
SIGNAL \inst9|ALT_INV_myarray~356_q\ : std_logic;
SIGNAL \inst9|ALT_INV_myarray~608_q\ : std_logic;
SIGNAL \inst9|ALT_INV_myarray~1083_combout\ : std_logic;
SIGNAL \inst9|ALT_INV_myarray~357_q\ : std_logic;
SIGNAL \inst9|ALT_INV_myarray~613_q\ : std_logic;
SIGNAL \inst9|ALT_INV_myarray~609_q\ : std_logic;
SIGNAL \inst9|ALT_INV_myarray~385_q\ : std_logic;
SIGNAL \inst9|ALT_INV_myarray~382_q\ : std_logic;
SIGNAL \inst9|ALT_INV_myarray~350_q\ : std_logic;
SIGNAL \inst9|ALT_INV_myarray~355_q\ : std_logic;
SIGNAL \inst9|ALT_INV_myarray~1063_combout\ : std_logic;
SIGNAL \inst9|ALT_INV_myarray~388_q\ : std_logic;
SIGNAL \inst9|ALT_INV_myarray~353_q\ : std_logic;
SIGNAL \inst9|ALT_INV_myarray~384_q\ : std_logic;
SIGNAL \inst9|ALT_INV_myarray~1069_combout\ : std_logic;
SIGNAL \inst9|ALT_INV_myarray~611_q\ : std_logic;
SIGNAL \inst9|ALT_INV_myarray~1075_combout\ : std_logic;
SIGNAL \inst9|ALT_INV_myarray~1065_combout\ : std_logic;
SIGNAL \inst9|ALT_INV_myarray~386_q\ : std_logic;
SIGNAL \inst9|ALT_INV_myarray~1072_combout\ : std_logic;
SIGNAL \inst9|ALT_INV_myarray~1077_combout\ : std_logic;
SIGNAL \inst9|ALT_INV_myarray~1080_combout\ : std_logic;
SIGNAL \inst9|ALT_INV_myarray~351_q\ : std_logic;
SIGNAL \inst9|ALT_INV_myarray~1081_combout\ : std_logic;
SIGNAL \inst9|ALT_INV_myarray~389_q\ : std_logic;
SIGNAL \inst9|ALT_INV_myarray~354_q\ : std_logic;
SIGNAL \inst9|ALT_INV_myarray~1074_combout\ : std_logic;
SIGNAL \inst9|ALT_INV_myarray~607_q\ : std_logic;
SIGNAL \inst9|ALT_INV_myarray~1066_combout\ : std_logic;
SIGNAL \inst9|ALT_INV_myarray~1062_combout\ : std_logic;
SIGNAL \inst9|ALT_INV_myarray~610_q\ : std_logic;
SIGNAL \inst9|ALT_INV_myarray~383_q\ : std_logic;
SIGNAL \inst9|ALT_INV_myarray~612_q\ : std_logic;
SIGNAL \inst9|ALT_INV_myarray~1068_combout\ : std_logic;
SIGNAL \inst9|ALT_INV_myarray~387_q\ : std_logic;
SIGNAL \inst9|ALT_INV_myarray~352_q\ : std_logic;
SIGNAL \inst9|ALT_INV_myarray~1078_combout\ : std_logic;
SIGNAL \inst9|ALT_INV_myarray~1071_combout\ : std_logic;
SIGNAL \inst9|ALT_INV_myarray~377_q\ : std_logic;
SIGNAL \inst9|ALT_INV_myarray~1084_combout\ : std_logic;
SIGNAL \inst9|ALT_INV_myarray~1086_combout\ : std_logic;
SIGNAL \inst9|ALT_INV_myarray~604_q\ : std_logic;
SIGNAL \inst9|ALT_INV_myarray~595_q\ : std_logic;
SIGNAL \inst9|ALT_INV_myarray~1099_combout\ : std_logic;
SIGNAL \inst9|ALT_INV_myarray~599_q\ : std_logic;
SIGNAL \inst9|ALT_INV_myarray~375_q\ : std_logic;
SIGNAL \inst9|ALT_INV_myarray~598_q\ : std_logic;
SIGNAL \inst9|ALT_INV_myarray~1114_combout\ : std_logic;
SIGNAL \inst9|ALT_INV_myarray~1116_combout\ : std_logic;
SIGNAL \inst9|ALT_INV_myarray~1107_combout\ : std_logic;
SIGNAL \inst9|ALT_INV_myarray~1111_combout\ : std_logic;
SIGNAL \inst9|ALT_INV_myarray~1113_combout\ : std_logic;
SIGNAL \inst9|ALT_INV_myarray~380_q\ : std_logic;
SIGNAL \inst9|ALT_INV_myarray~343_q\ : std_logic;
SIGNAL \inst9|ALT_INV_myarray~1098_combout\ : std_logic;
SIGNAL \inst9|ALT_INV_myarray~605_q\ : std_logic;
SIGNAL \inst9|ALT_INV_myarray~341_q\ : std_logic;
SIGNAL \inst9|ALT_INV_myarray~596_q\ : std_logic;
SIGNAL \inst9|ALT_INV_myarray~1093_combout\ : std_logic;
SIGNAL \inst9|ALT_INV_myarray~372_q\ : std_logic;
SIGNAL \inst9|ALT_INV_myarray~602_q\ : std_logic;
SIGNAL \inst9|ALT_INV_myarray~1089_combout\ : std_logic;
SIGNAL \inst9|ALT_INV_myarray~381_q\ : std_logic;
SIGNAL \inst9|ALT_INV_myarray~347_q\ : std_logic;
SIGNAL \inst9|ALT_INV_myarray~1105_combout\ : std_logic;
SIGNAL \inst9|ALT_INV_myarray~1092_combout\ : std_logic;
SIGNAL \inst9|ALT_INV_myarray~601_q\ : std_logic;
SIGNAL \inst9|ALT_INV_myarray~376_q\ : std_logic;
SIGNAL \inst9|ALT_INV_myarray~1102_combout\ : std_logic;
SIGNAL \inst9|ALT_INV_myarray~1095_combout\ : std_logic;
SIGNAL \inst9|ALT_INV_myarray~1087_combout\ : std_logic;
SIGNAL \inst9|ALT_INV_myarray~378_q\ : std_logic;
SIGNAL \inst9|ALT_INV_myarray~600_q\ : std_logic;
SIGNAL \inst9|ALT_INV_myarray~342_q\ : std_logic;
SIGNAL \inst9|ALT_INV_myarray~1101_combout\ : std_logic;
SIGNAL \inst9|ALT_INV_myarray~344_q\ : std_logic;
SIGNAL \inst9|ALT_INV_myarray~597_q\ : std_logic;
SIGNAL \inst9|ALT_INV_myarray~349_q\ : std_logic;
SIGNAL \inst9|ALT_INV_myarray~346_q\ : std_logic;
SIGNAL \inst9|ALT_INV_myarray~345_q\ : std_logic;
SIGNAL \inst9|ALT_INV_myarray~1090_combout\ : std_logic;
SIGNAL \inst9|ALT_INV_myarray~1096_combout\ : std_logic;
SIGNAL \inst9|ALT_INV_myarray~1104_combout\ : std_logic;
SIGNAL \inst9|ALT_INV_myarray~374_q\ : std_logic;
SIGNAL \inst9|ALT_INV_myarray~1108_combout\ : std_logic;
SIGNAL \inst9|ALT_INV_myarray~373_q\ : std_logic;
SIGNAL \inst9|ALT_INV_myarray~340_q\ : std_logic;
SIGNAL \inst9|ALT_INV_myarray~348_q\ : std_logic;
SIGNAL \inst9|ALT_INV_myarray~603_q\ : std_logic;
SIGNAL \inst9|ALT_INV_myarray~379_q\ : std_logic;
SIGNAL \inst9|ALT_INV_myarray~1110_combout\ : std_logic;
SIGNAL \inst9|ALT_INV_myarray~590_q\ : std_logic;
SIGNAL \inst9|ALT_INV_myarray~334_q\ : std_logic;
SIGNAL \inst9|ALT_INV_myarray~333_q\ : std_logic;
SIGNAL \inst9|ALT_INV_myarray~330_q\ : std_logic;
SIGNAL \inst9|ALT_INV_myarray~1117_combout\ : std_logic;
SIGNAL \inst9|ALT_INV_myarray~369_q\ : std_logic;
SIGNAL \inst9|ALT_INV_myarray~593_q\ : std_logic;
SIGNAL \inst9|ALT_INV_myarray~1131_combout\ : std_logic;
SIGNAL \inst9|ALT_INV_myarray~1122_combout\ : std_logic;
SIGNAL \inst9|ALT_INV_myarray~1140_combout\ : std_logic;
SIGNAL \inst9|ALT_INV_myarray~588_q\ : std_logic;
SIGNAL \inst9|ALT_INV_myarray~331_q\ : std_logic;
SIGNAL \inst9|ALT_INV_myarray~332_q\ : std_logic;
SIGNAL \inst9|ALT_INV_myarray~1143_combout\ : std_logic;
SIGNAL \inst9|ALT_INV_myarray~594_q\ : std_logic;
SIGNAL \inst9|ALT_INV_myarray~368_q\ : std_logic;
SIGNAL \inst9|ALT_INV_myarray~336_q\ : std_logic;
SIGNAL \inst9|ALT_INV_myarray~1120_combout\ : std_logic;
SIGNAL \inst9|ALT_INV_myarray~592_q\ : std_logic;
SIGNAL \inst9|ALT_INV_myarray~1132_combout\ : std_logic;
SIGNAL \inst9|ALT_INV_myarray~1134_combout\ : std_logic;
SIGNAL \inst9|ALT_INV_myarray~365_q\ : std_logic;
SIGNAL \inst9|ALT_INV_myarray~1135_combout\ : std_logic;
SIGNAL \inst9|ALT_INV_myarray~591_q\ : std_logic;
SIGNAL \inst9|ALT_INV_myarray~1137_combout\ : std_logic;
SIGNAL \inst9|ALT_INV_myarray~589_q\ : std_logic;
SIGNAL \inst9|ALT_INV_myarray~1119_combout\ : std_logic;
SIGNAL \inst9|ALT_INV_myarray~1138_combout\ : std_logic;
SIGNAL \inst9|ALT_INV_myarray~586_q\ : std_logic;
SIGNAL \inst9|ALT_INV_myarray~370_q\ : std_logic;
SIGNAL \inst9|ALT_INV_myarray~1144_combout\ : std_logic;
SIGNAL \inst9|ALT_INV_myarray~1125_combout\ : std_logic;
SIGNAL \inst9|ALT_INV_myarray~587_q\ : std_logic;
SIGNAL \inst9|ALT_INV_myarray~585_q\ : std_logic;
SIGNAL \inst9|ALT_INV_myarray~1146_combout\ : std_logic;
SIGNAL \inst9|ALT_INV_myarray~1126_combout\ : std_logic;
SIGNAL \inst9|ALT_INV_myarray~1129_combout\ : std_logic;
SIGNAL \inst9|ALT_INV_myarray~364_q\ : std_logic;
SIGNAL \inst9|ALT_INV_myarray~1128_combout\ : std_logic;
SIGNAL \inst9|ALT_INV_myarray~366_q\ : std_logic;
SIGNAL \inst9|ALT_INV_myarray~371_q\ : std_logic;
SIGNAL \inst9|ALT_INV_myarray~338_q\ : std_logic;
SIGNAL \inst9|ALT_INV_myarray~337_q\ : std_logic;
SIGNAL \inst9|ALT_INV_myarray~362_q\ : std_logic;
SIGNAL \inst9|ALT_INV_myarray~335_q\ : std_logic;
SIGNAL \inst9|ALT_INV_myarray~1141_combout\ : std_logic;
SIGNAL \inst9|ALT_INV_myarray~361_q\ : std_logic;
SIGNAL \inst9|ALT_INV_myarray~329_q\ : std_logic;
SIGNAL \inst9|ALT_INV_myarray~363_q\ : std_logic;
SIGNAL \inst9|ALT_INV_myarray~1147_combout\ : std_logic;
SIGNAL \inst9|ALT_INV_myarray~1123_combout\ : std_logic;
SIGNAL \inst9|ALT_INV_myarray~367_q\ : std_logic;
SIGNAL \inst9|ALT_INV_myarray~339_q\ : std_logic;
SIGNAL \inst9|ALT_INV_myarray~1178_combout\ : std_logic;
SIGNAL \inst9|ALT_INV_myarray~1156_combout\ : std_logic;
SIGNAL \inst9|ALT_INV_myarray~304_q\ : std_logic;
SIGNAL \inst9|ALT_INV_myarray~582_q\ : std_logic;
SIGNAL \inst9|ALT_INV_myarray~358_q\ : std_logic;
SIGNAL \inst9|ALT_INV_myarray~1172_combout\ : std_logic;
SIGNAL \inst9|ALT_INV_myarray~315_q\ : std_logic;
SIGNAL \inst9|ALT_INV_myarray~321_q\ : std_logic;
SIGNAL \inst9|ALT_INV_myarray~324_q\ : std_logic;
SIGNAL \inst9|ALT_INV_myarray~323_q\ : std_logic;
SIGNAL \inst9|ALT_INV_myarray~1169_combout\ : std_logic;
SIGNAL \inst9|ALT_INV_myarray~1176_combout\ : std_logic;
SIGNAL \inst9|ALT_INV_myarray~1179_combout\ : std_logic;
SIGNAL \inst9|ALT_INV_myarray~303_q\ : std_logic;
SIGNAL \inst9|ALT_INV_myarray~1180_combout\ : std_logic;
SIGNAL \inst9|ALT_INV_myarray~319_q\ : std_logic;
SIGNAL \inst9|ALT_INV_myarray~1150_combout\ : std_logic;
SIGNAL \inst9|ALT_INV_myarray~1149_combout\ : std_logic;
SIGNAL \inst9|ALT_INV_myarray~328_q\ : std_logic;
SIGNAL \inst9|ALT_INV_myarray~1153_combout\ : std_logic;
SIGNAL \inst9|ALT_INV_myarray~320_q\ : std_logic;
SIGNAL \inst9|ALT_INV_myarray~1165_combout\ : std_logic;
SIGNAL \inst9|ALT_INV_myarray~1174_combout\ : std_logic;
SIGNAL \inst9|ALT_INV_myarray~360_q\ : std_logic;
SIGNAL \inst9|ALT_INV_myarray~584_q\ : std_logic;
SIGNAL \inst9|ALT_INV_myarray~1155_combout\ : std_logic;
SIGNAL \inst9|ALT_INV_myarray~1164_combout\ : std_logic;
SIGNAL \inst9|ALT_INV_myarray~308_q\ : std_logic;
SIGNAL \inst9|ALT_INV_myarray~1162_combout\ : std_logic;
SIGNAL \inst9|ALT_INV_myarray~306_q\ : std_logic;
SIGNAL \inst9|ALT_INV_myarray~1177_combout\ : std_logic;
SIGNAL \inst9|ALT_INV_myarray~1160_combout\ : std_logic;
SIGNAL \inst9|ALT_INV_myarray~1163_combout\ : std_logic;
SIGNAL \inst9|ALT_INV_myarray~316_q\ : std_logic;
SIGNAL \inst9|ALT_INV_myarray~312_q\ : std_logic;
SIGNAL \inst9|ALT_INV_myarray~325_q\ : std_logic;
SIGNAL \inst9|ALT_INV_myarray~318_q\ : std_logic;
SIGNAL \inst9|ALT_INV_myarray~583_q\ : std_logic;
SIGNAL \inst9|ALT_INV_myarray~1152_combout\ : std_logic;
SIGNAL \inst9|ALT_INV_myarray~327_q\ : std_logic;
SIGNAL \inst9|ALT_INV_myarray~1158_combout\ : std_logic;
SIGNAL \inst9|ALT_INV_myarray~1159_combout\ : std_logic;
SIGNAL \inst9|ALT_INV_myarray~1166_combout\ : std_logic;
SIGNAL \inst9|ALT_INV_myarray~1167_combout\ : std_logic;
SIGNAL \inst9|ALT_INV_myarray~1161_combout\ : std_logic;
SIGNAL \inst9|ALT_INV_myarray~317_q\ : std_logic;
SIGNAL \inst9|ALT_INV_myarray~359_q\ : std_logic;
SIGNAL \inst9|ALT_INV_myarray~322_q\ : std_logic;
SIGNAL \inst9|ALT_INV_myarray~313_q\ : std_logic;
SIGNAL \inst9|ALT_INV_myarray~1170_combout\ : std_logic;
SIGNAL \inst9|ALT_INV_myarray~1171_combout\ : std_logic;
SIGNAL \inst9|ALT_INV_myarray~1168_combout\ : std_logic;
SIGNAL \inst9|ALT_INV_myarray~311_q\ : std_logic;
SIGNAL \inst9|ALT_INV_myarray~1173_combout\ : std_logic;
SIGNAL \inst9|ALT_INV_myarray~309_q\ : std_logic;
SIGNAL \inst9|ALT_INV_myarray~326_q\ : std_logic;
SIGNAL \inst9|ALT_INV_myarray~1175_combout\ : std_logic;
SIGNAL \inst9|ALT_INV_myarray~307_q\ : std_logic;
SIGNAL \inst9|ALT_INV_myarray~314_q\ : std_logic;
SIGNAL \inst9|ALT_INV_myarray~305_q\ : std_logic;
SIGNAL \inst9|ALT_INV_myarray~310_q\ : std_logic;
SIGNAL \inst2|ALT_INV_Rtemp\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst9|ALT_INV_myarray~1185_combout\ : std_logic;
SIGNAL \inst9|ALT_INV_myarray~297_q\ : std_logic;
SIGNAL \inst9|ALT_INV_myarray~1186_combout\ : std_logic;
SIGNAL \inst9|ALT_INV_myarray~1182_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_myarray~0_combout\ : std_logic;
SIGNAL \inst15|ALT_INV_R[2]~0_combout\ : std_logic;
SIGNAL \inst9|ALT_INV_myarray~1187_combout\ : std_logic;
SIGNAL \inst9|ALT_INV_myarray~302_q\ : std_logic;
SIGNAL \inst9|ALT_INV_myarray~294_q\ : std_logic;
SIGNAL \inst9|ALT_INV_myarray~1184_combout\ : std_logic;
SIGNAL \inst9|ALT_INV_myarray~298_q\ : std_logic;
SIGNAL \inst9|ALT_INV_myarray~296_q\ : std_logic;
SIGNAL \inst9|ALT_INV_myarray~1189_combout\ : std_logic;
SIGNAL \inst9|ALT_INV_myarray~295_q\ : std_logic;
SIGNAL \inst9|ALT_INV_myarray~299_q\ : std_logic;
SIGNAL \inst9|ALT_INV_myarray~1183_combout\ : std_logic;
SIGNAL \inst9|ALT_INV_myarray~300_q\ : std_logic;
SIGNAL \inst9|ALT_INV_myarray~301_q\ : std_logic;
SIGNAL \inst9|ALT_INV_myarray~1181_combout\ : std_logic;
SIGNAL \inst9|ALT_INV_myarray~1188_combout\ : std_logic;
SIGNAL \ALT_INV_clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \inst2|ALT_INV_Add1~9_sumout\ : std_logic;
SIGNAL \inst2|ALT_INV_Add1~1_sumout\ : std_logic;
SIGNAL \inst2|ALT_INV_Add1~5_sumout\ : std_logic;
SIGNAL \inst2|ALT_INV_Add1~13_sumout\ : std_logic;
SIGNAL \inst2|ALT_INV_Add1~25_sumout\ : std_logic;
SIGNAL \inst2|ALT_INV_Add1~17_sumout\ : std_logic;
SIGNAL \inst2|ALT_INV_Add1~21_sumout\ : std_logic;
SIGNAL \inst2|ALT_INV_Add1~29_sumout\ : std_logic;
SIGNAL \inst2|ALT_INV_Add1~33_sumout\ : std_logic;

BEGIN

ALU_Opcode <= ww_ALU_Opcode;
ww_clk <= clk;
Writeback <= ww_Writeback;
SX <= ww_SX;
Current_Instruction <= ww_Current_Instruction;
Current_PC <= ww_Current_PC;
Memory_Output <= ww_Memory_Output;
Opcode <= ww_Opcode;
Register1Number <= ww_Register1Number;
Register2Number <= ww_Register2Number;
Register3Number <= ww_Register3Number;
RegOut1 <= ww_RegOut1;
RegOut2 <= ww_RegOut2;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst4|myarray_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & \inst9|myarray~1158_combout\ & \inst9|myarray~1159_combout\ & \inst9|myarray~1160_combout\ & \inst9|myarray~1161_combout\ & 
\inst9|myarray~1162_combout\ & \inst9|myarray~1163_combout\ & \inst9|myarray~1164_combout\ & \inst9|myarray~1165_combout\ & \inst9|myarray~1166_combout\ & \inst9|myarray~1167_combout\ & \inst9|myarray~1168_combout\ & \inst9|myarray~1169_combout\ & 
\inst9|myarray~1170_combout\ & \inst9|myarray~1171_combout\ & \inst9|myarray~1172_combout\ & \inst9|myarray~1173_combout\ & \inst9|myarray~1174_combout\ & \inst9|myarray~1175_combout\ & \inst9|myarray~1176_combout\ & \inst9|myarray~1177_combout\ & 
\inst9|myarray~1178_combout\ & \inst9|myarray~1179_combout\ & \inst9|myarray~1180_combout\ & \inst9|myarray~1181_combout\ & \inst9|myarray~1182_combout\ & \inst9|myarray~1183_combout\ & \inst9|myarray~1184_combout\ & \inst9|myarray~1185_combout\ & 
\inst9|myarray~1186_combout\ & \inst9|myarray~1187_combout\ & \inst9|myarray~1188_combout\ & \inst9|myarray~1189_combout\);

\inst4|myarray_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\inst2|R[6]~4_combout\ & \inst2|R[5]~0_combout\ & \inst2|R[4]~1_combout\ & \inst2|R[3]~2_combout\ & \inst2|R[2]~3_combout\);

\inst4|myarray_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\inst2|R[6]~4_combout\ & \inst2|R[5]~0_combout\ & \inst2|R[4]~1_combout\ & \inst2|R[3]~2_combout\ & \inst2|R[2]~3_combout\);

\inst4|myarray_rtl_0|auto_generated|ram_block1a0~portbdataout\ <= \inst4|myarray_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);
\inst4|myarray_rtl_0|auto_generated|ram_block1a1\ <= \inst4|myarray_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(1);
\inst4|myarray_rtl_0|auto_generated|ram_block1a2\ <= \inst4|myarray_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(2);
\inst4|myarray_rtl_0|auto_generated|ram_block1a3\ <= \inst4|myarray_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(3);
\inst4|myarray_rtl_0|auto_generated|ram_block1a4\ <= \inst4|myarray_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(4);
\inst4|myarray_rtl_0|auto_generated|ram_block1a5\ <= \inst4|myarray_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(5);
\inst4|myarray_rtl_0|auto_generated|ram_block1a6\ <= \inst4|myarray_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(6);
\inst4|myarray_rtl_0|auto_generated|ram_block1a7\ <= \inst4|myarray_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(7);
\inst4|myarray_rtl_0|auto_generated|ram_block1a8\ <= \inst4|myarray_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(8);
\inst4|myarray_rtl_0|auto_generated|ram_block1a9\ <= \inst4|myarray_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(9);
\inst4|myarray_rtl_0|auto_generated|ram_block1a10\ <= \inst4|myarray_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(10);
\inst4|myarray_rtl_0|auto_generated|ram_block1a11\ <= \inst4|myarray_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(11);
\inst4|myarray_rtl_0|auto_generated|ram_block1a12\ <= \inst4|myarray_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(12);
\inst4|myarray_rtl_0|auto_generated|ram_block1a13\ <= \inst4|myarray_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(13);
\inst4|myarray_rtl_0|auto_generated|ram_block1a14\ <= \inst4|myarray_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(14);
\inst4|myarray_rtl_0|auto_generated|ram_block1a15\ <= \inst4|myarray_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(15);
\inst4|myarray_rtl_0|auto_generated|ram_block1a16\ <= \inst4|myarray_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(16);
\inst4|myarray_rtl_0|auto_generated|ram_block1a17\ <= \inst4|myarray_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(17);
\inst4|myarray_rtl_0|auto_generated|ram_block1a18\ <= \inst4|myarray_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(18);
\inst4|myarray_rtl_0|auto_generated|ram_block1a19\ <= \inst4|myarray_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(19);
\inst4|myarray_rtl_0|auto_generated|ram_block1a20\ <= \inst4|myarray_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(20);
\inst4|myarray_rtl_0|auto_generated|ram_block1a21\ <= \inst4|myarray_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(21);
\inst4|myarray_rtl_0|auto_generated|ram_block1a22\ <= \inst4|myarray_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(22);
\inst4|myarray_rtl_0|auto_generated|ram_block1a23\ <= \inst4|myarray_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(23);
\inst4|myarray_rtl_0|auto_generated|ram_block1a24\ <= \inst4|myarray_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(24);
\inst4|myarray_rtl_0|auto_generated|ram_block1a25\ <= \inst4|myarray_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(25);
\inst4|myarray_rtl_0|auto_generated|ram_block1a26\ <= \inst4|myarray_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(26);
\inst4|myarray_rtl_0|auto_generated|ram_block1a27\ <= \inst4|myarray_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(27);
\inst4|myarray_rtl_0|auto_generated|ram_block1a28\ <= \inst4|myarray_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(28);
\inst4|myarray_rtl_0|auto_generated|ram_block1a29\ <= \inst4|myarray_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(29);
\inst4|myarray_rtl_0|auto_generated|ram_block1a30\ <= \inst4|myarray_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(30);
\inst4|myarray_rtl_0|auto_generated|ram_block1a31\ <= \inst4|myarray_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(31);
\inst4|myarray_rtl_0|auto_generated|ALT_INV_ram_block1a31\ <= NOT \inst4|myarray_rtl_0|auto_generated|ram_block1a31\;
\inst4|myarray_rtl_0|auto_generated|ALT_INV_ram_block1a21\ <= NOT \inst4|myarray_rtl_0|auto_generated|ram_block1a21\;
\inst2|ALT_INV_Add1~93_sumout\ <= NOT \inst2|Add1~93_sumout\;
\inst4|myarray_rtl_0|auto_generated|ALT_INV_ram_block1a17\ <= NOT \inst4|myarray_rtl_0|auto_generated|ram_block1a17\;
\inst4|myarray_rtl_0|auto_generated|ALT_INV_ram_block1a16\ <= NOT \inst4|myarray_rtl_0|auto_generated|ram_block1a16\;
\inst2|ALT_INV_Add1~77_sumout\ <= NOT \inst2|Add1~77_sumout\;
\inst2|ALT_INV_Add1~49_sumout\ <= NOT \inst2|Add1~49_sumout\;
\inst2|ALT_INV_Add1~85_sumout\ <= NOT \inst2|Add1~85_sumout\;
\inst4|myarray_rtl_0|auto_generated|ALT_INV_ram_block1a15\ <= NOT \inst4|myarray_rtl_0|auto_generated|ram_block1a15\;
\inst2|ALT_INV_Add1~69_sumout\ <= NOT \inst2|Add1~69_sumout\;
\inst2|ALT_INV_Add1~65_sumout\ <= NOT \inst2|Add1~65_sumout\;
\inst4|myarray_rtl_0|auto_generated|ALT_INV_ram_block1a18\ <= NOT \inst4|myarray_rtl_0|auto_generated|ram_block1a18\;
\inst4|myarray_rtl_0|auto_generated|ALT_INV_ram_block1a14\ <= NOT \inst4|myarray_rtl_0|auto_generated|ram_block1a14\;
\inst4|myarray_rtl_0|auto_generated|ALT_INV_ram_block1a13\ <= NOT \inst4|myarray_rtl_0|auto_generated|ram_block1a13\;
\inst2|ALT_INV_Add1~113_sumout\ <= NOT \inst2|Add1~113_sumout\;
\inst4|myarray_rtl_0|auto_generated|ALT_INV_ram_block1a30\ <= NOT \inst4|myarray_rtl_0|auto_generated|ram_block1a30\;
\inst2|ALT_INV_Add1~61_sumout\ <= NOT \inst2|Add1~61_sumout\;
\inst2|ALT_INV_Add1~101_sumout\ <= NOT \inst2|Add1~101_sumout\;
\inst4|myarray_rtl_0|auto_generated|ALT_INV_ram_block1a26\ <= NOT \inst4|myarray_rtl_0|auto_generated|ram_block1a26\;
\inst4|myarray_rtl_0|auto_generated|ALT_INV_ram_block1a22\ <= NOT \inst4|myarray_rtl_0|auto_generated|ram_block1a22\;
\inst2|ALT_INV_Add1~53_sumout\ <= NOT \inst2|Add1~53_sumout\;
\inst4|myarray_rtl_0|auto_generated|ALT_INV_ram_block1a23\ <= NOT \inst4|myarray_rtl_0|auto_generated|ram_block1a23\;
\inst2|ALT_INV_Add1~37_sumout\ <= NOT \inst2|Add1~37_sumout\;
\inst2|ALT_INV_Add1~109_sumout\ <= NOT \inst2|Add1~109_sumout\;
\inst2|ALT_INV_Add1~117_sumout\ <= NOT \inst2|Add1~117_sumout\;
\inst4|myarray_rtl_0|auto_generated|ALT_INV_ram_block1a28\ <= NOT \inst4|myarray_rtl_0|auto_generated|ram_block1a28\;
\inst2|ALT_INV_Add1~121_sumout\ <= NOT \inst2|Add1~121_sumout\;
\inst2|ALT_INV_Add1~41_sumout\ <= NOT \inst2|Add1~41_sumout\;
\inst2|ALT_INV_Add1~97_sumout\ <= NOT \inst2|Add1~97_sumout\;
\inst2|ALT_INV_Add1~57_sumout\ <= NOT \inst2|Add1~57_sumout\;
\inst4|myarray_rtl_0|auto_generated|ALT_INV_ram_block1a0~portbdataout\ <= NOT \inst4|myarray_rtl_0|auto_generated|ram_block1a0~portbdataout\;
\inst4|myarray_rtl_0|auto_generated|ALT_INV_ram_block1a25\ <= NOT \inst4|myarray_rtl_0|auto_generated|ram_block1a25\;
\inst4|myarray_rtl_0|auto_generated|ALT_INV_ram_block1a24\ <= NOT \inst4|myarray_rtl_0|auto_generated|ram_block1a24\;
\inst2|ALT_INV_Add1~81_sumout\ <= NOT \inst2|Add1~81_sumout\;
\inst4|myarray_rtl_0|auto_generated|ALT_INV_ram_block1a27\ <= NOT \inst4|myarray_rtl_0|auto_generated|ram_block1a27\;
\inst4|myarray_rtl_0|auto_generated|ALT_INV_ram_block1a20\ <= NOT \inst4|myarray_rtl_0|auto_generated|ram_block1a20\;
\inst4|myarray_rtl_0|auto_generated|ALT_INV_ram_block1a19\ <= NOT \inst4|myarray_rtl_0|auto_generated|ram_block1a19\;
\inst2|ALT_INV_Add1~73_sumout\ <= NOT \inst2|Add1~73_sumout\;
\inst4|myarray_rtl_0|auto_generated|ALT_INV_ram_block1a29\ <= NOT \inst4|myarray_rtl_0|auto_generated|ram_block1a29\;
\inst2|ALT_INV_Add1~45_sumout\ <= NOT \inst2|Add1~45_sumout\;
\inst2|ALT_INV_Add1~89_sumout\ <= NOT \inst2|Add1~89_sumout\;
\inst2|ALT_INV_Add1~105_sumout\ <= NOT \inst2|Add1~105_sumout\;
\inst2|ALT_INV_Add0~33_sumout\ <= NOT \inst2|Add0~33_sumout\;
\inst2|ALT_INV_Add0~37_sumout\ <= NOT \inst2|Add0~37_sumout\;
\inst2|ALT_INV_Add0~93_sumout\ <= NOT \inst2|Add0~93_sumout\;
\inst4|myarray_rtl_0|auto_generated|ALT_INV_ram_block1a7\ <= NOT \inst4|myarray_rtl_0|auto_generated|ram_block1a7\;
\inst2|ALT_INV_Add0~5_sumout\ <= NOT \inst2|Add0~5_sumout\;
\inst4|myarray_rtl_0|auto_generated|ALT_INV_ram_block1a5\ <= NOT \inst4|myarray_rtl_0|auto_generated|ram_block1a5\;
\inst2|ALT_INV_Add0~45_sumout\ <= NOT \inst2|Add0~45_sumout\;
\inst4|myarray_rtl_0|auto_generated|ALT_INV_ram_block1a8\ <= NOT \inst4|myarray_rtl_0|auto_generated|ram_block1a8\;
\inst2|ALT_INV_Add0~57_sumout\ <= NOT \inst2|Add0~57_sumout\;
\inst2|ALT_INV_Add0~81_sumout\ <= NOT \inst2|Add0~81_sumout\;
\inst2|ALT_INV_Add0~89_sumout\ <= NOT \inst2|Add0~89_sumout\;
\inst4|myarray_rtl_0|auto_generated|ALT_INV_ram_block1a10\ <= NOT \inst4|myarray_rtl_0|auto_generated|ram_block1a10\;
\inst4|myarray_rtl_0|auto_generated|ALT_INV_ram_block1a6\ <= NOT \inst4|myarray_rtl_0|auto_generated|ram_block1a6\;
\inst2|ALT_INV_Add1~125_sumout\ <= NOT \inst2|Add1~125_sumout\;
\inst2|ALT_INV_Add0~13_sumout\ <= NOT \inst2|Add0~13_sumout\;
\inst2|ALT_INV_Add0~9_sumout\ <= NOT \inst2|Add0~9_sumout\;
\inst4|myarray_rtl_0|auto_generated|ALT_INV_ram_block1a4\ <= NOT \inst4|myarray_rtl_0|auto_generated|ram_block1a4\;
\inst4|myarray_rtl_0|auto_generated|ALT_INV_ram_block1a2\ <= NOT \inst4|myarray_rtl_0|auto_generated|ram_block1a2\;
\inst2|ALT_INV_Add0~1_sumout\ <= NOT \inst2|Add0~1_sumout\;
\inst2|ALT_INV_Add0~29_sumout\ <= NOT \inst2|Add0~29_sumout\;
\inst2|ALT_INV_Add0~49_sumout\ <= NOT \inst2|Add0~49_sumout\;
\inst4|myarray_rtl_0|auto_generated|ALT_INV_ram_block1a9\ <= NOT \inst4|myarray_rtl_0|auto_generated|ram_block1a9\;
\inst2|ALT_INV_Add0~21_sumout\ <= NOT \inst2|Add0~21_sumout\;
\inst2|ALT_INV_Add0~41_sumout\ <= NOT \inst2|Add0~41_sumout\;
\inst2|ALT_INV_Add0~53_sumout\ <= NOT \inst2|Add0~53_sumout\;
\inst4|myarray_rtl_0|auto_generated|ALT_INV_ram_block1a1\ <= NOT \inst4|myarray_rtl_0|auto_generated|ram_block1a1\;
\inst2|ALT_INV_Add0~65_sumout\ <= NOT \inst2|Add0~65_sumout\;
\inst2|ALT_INV_Add0~69_sumout\ <= NOT \inst2|Add0~69_sumout\;
\inst2|ALT_INV_Add0~61_sumout\ <= NOT \inst2|Add0~61_sumout\;
\inst4|myarray_rtl_0|auto_generated|ALT_INV_ram_block1a11\ <= NOT \inst4|myarray_rtl_0|auto_generated|ram_block1a11\;
\inst2|ALT_INV_Add0~73_sumout\ <= NOT \inst2|Add0~73_sumout\;
\inst2|ALT_INV_Add0~77_sumout\ <= NOT \inst2|Add0~77_sumout\;
\inst2|ALT_INV_Add0~85_sumout\ <= NOT \inst2|Add0~85_sumout\;
\inst2|ALT_INV_Add0~25_sumout\ <= NOT \inst2|Add0~25_sumout\;
\inst4|myarray_rtl_0|auto_generated|ALT_INV_ram_block1a12\ <= NOT \inst4|myarray_rtl_0|auto_generated|ram_block1a12\;
\inst4|myarray_rtl_0|auto_generated|ALT_INV_ram_block1a3\ <= NOT \inst4|myarray_rtl_0|auto_generated|ram_block1a3\;
\inst2|ALT_INV_Add0~17_sumout\ <= NOT \inst2|Add0~17_sumout\;
\inst2|ALT_INV_Add0~113_sumout\ <= NOT \inst2|Add0~113_sumout\;
\inst2|ALT_INV_Add0~117_sumout\ <= NOT \inst2|Add0~117_sumout\;
\inst2|ALT_INV_Add0~101_sumout\ <= NOT \inst2|Add0~101_sumout\;
\inst2|ALT_INV_Add0~97_sumout\ <= NOT \inst2|Add0~97_sumout\;
\inst2|ALT_INV_Add0~105_sumout\ <= NOT \inst2|Add0~105_sumout\;
\inst2|ALT_INV_Add0~109_sumout\ <= NOT \inst2|Add0~109_sumout\;
\inst2|ALT_INV_Add0~121_sumout\ <= NOT \inst2|Add0~121_sumout\;
\inst2|ALT_INV_Add0~125_sumout\ <= NOT \inst2|Add0~125_sumout\;
\inst13|ALT_INV_R[4]~27_combout\ <= NOT \inst13|R[4]~27_combout\;
\inst13|ALT_INV_R[0]~31_combout\ <= NOT \inst13|R[0]~31_combout\;
\inst5|ALT_INV_myarray~1_combout\ <= NOT \inst5|myarray~1_combout\;
\inst8|ALT_INV_PCout\(3) <= NOT \inst8|PCout\(3);
\inst8|ALT_INV_PCout\(31) <= NOT \inst8|PCout\(31);
\inst8|ALT_INV_PCout\(30) <= NOT \inst8|PCout\(30);
\inst8|ALT_INV_PCout\(29) <= NOT \inst8|PCout\(29);
\inst8|ALT_INV_PCout\(28) <= NOT \inst8|PCout\(28);
\inst8|ALT_INV_PCout\(27) <= NOT \inst8|PCout\(27);
\inst8|ALT_INV_PCout\(26) <= NOT \inst8|PCout\(26);
\inst8|ALT_INV_PCout\(25) <= NOT \inst8|PCout\(25);
\inst8|ALT_INV_PCout\(23) <= NOT \inst8|PCout\(23);
\inst13|ALT_INV_R[1]~30_combout\ <= NOT \inst13|R[1]~30_combout\;
\inst8|ALT_INV_PCout\(24) <= NOT \inst8|PCout\(24);
\inst8|ALT_INV_PCout\(22) <= NOT \inst8|PCout\(22);
\inst13|ALT_INV_R[16]~15_combout\ <= NOT \inst13|R[16]~15_combout\;
\inst13|ALT_INV_R[3]~28_combout\ <= NOT \inst13|R[3]~28_combout\;
\inst8|ALT_INV_PCout\(2) <= NOT \inst8|PCout\(2);
\inst6|ALT_INV_Equal1~0_combout\ <= NOT \inst6|Equal1~0_combout\;
\inst3|ALT_INV_Y\(2) <= NOT \inst3|Y\(2);
\inst13|ALT_INV_R[2]~29_combout\ <= NOT \inst13|R[2]~29_combout\;
\inst13|ALT_INV_R[10]~21_combout\ <= NOT \inst13|R[10]~21_combout\;
\inst9|ALT_INV_myarray~606_q\ <= NOT \inst9|myarray~606_q\;
\inst9|ALT_INV_myarray~356_q\ <= NOT \inst9|myarray~356_q\;
\inst8|ALT_INV_PCout\(10) <= NOT \inst8|PCout\(10);
\inst9|ALT_INV_myarray~608_q\ <= NOT \inst9|myarray~608_q\;
\inst9|ALT_INV_myarray~1083_combout\ <= NOT \inst9|myarray~1083_combout\;
\inst8|ALT_INV_PCout\(20) <= NOT \inst8|PCout\(20);
\inst8|ALT_INV_PCout\(11) <= NOT \inst8|PCout\(11);
\inst9|ALT_INV_myarray~357_q\ <= NOT \inst9|myarray~357_q\;
\inst9|ALT_INV_myarray~613_q\ <= NOT \inst9|myarray~613_q\;
\inst9|ALT_INV_myarray~609_q\ <= NOT \inst9|myarray~609_q\;
\inst9|ALT_INV_myarray~385_q\ <= NOT \inst9|myarray~385_q\;
\inst9|ALT_INV_myarray~382_q\ <= NOT \inst9|myarray~382_q\;
\inst9|ALT_INV_myarray~350_q\ <= NOT \inst9|myarray~350_q\;
\inst8|ALT_INV_PCout\(15) <= NOT \inst8|PCout\(15);
\inst9|ALT_INV_myarray~355_q\ <= NOT \inst9|myarray~355_q\;
\inst9|ALT_INV_myarray~1063_combout\ <= NOT \inst9|myarray~1063_combout\;
\inst8|ALT_INV_PCout\(13) <= NOT \inst8|PCout\(13);
\inst9|ALT_INV_myarray~388_q\ <= NOT \inst9|myarray~388_q\;
\inst9|ALT_INV_myarray~353_q\ <= NOT \inst9|myarray~353_q\;
\inst9|ALT_INV_myarray~384_q\ <= NOT \inst9|myarray~384_q\;
\inst8|ALT_INV_PCout\(6) <= NOT \inst8|PCout\(6);
\inst9|ALT_INV_myarray~1069_combout\ <= NOT \inst9|myarray~1069_combout\;
\inst9|ALT_INV_myarray~611_q\ <= NOT \inst9|myarray~611_q\;
\inst8|ALT_INV_PCout\(19) <= NOT \inst8|PCout\(19);
\inst8|ALT_INV_PCout\(21) <= NOT \inst8|PCout\(21);
\inst9|ALT_INV_myarray~1075_combout\ <= NOT \inst9|myarray~1075_combout\;
\inst8|ALT_INV_PCout\(5) <= NOT \inst8|PCout\(5);
\inst9|ALT_INV_myarray~1065_combout\ <= NOT \inst9|myarray~1065_combout\;
\inst9|ALT_INV_myarray~386_q\ <= NOT \inst9|myarray~386_q\;
\inst8|ALT_INV_PCout\(14) <= NOT \inst8|PCout\(14);
\inst8|ALT_INV_PCout\(17) <= NOT \inst8|PCout\(17);
\inst9|ALT_INV_myarray~1072_combout\ <= NOT \inst9|myarray~1072_combout\;
\inst9|ALT_INV_myarray~1077_combout\ <= NOT \inst9|myarray~1077_combout\;
\inst9|ALT_INV_myarray~1080_combout\ <= NOT \inst9|myarray~1080_combout\;
\inst8|ALT_INV_PCout\(7) <= NOT \inst8|PCout\(7);
\inst9|ALT_INV_myarray~351_q\ <= NOT \inst9|myarray~351_q\;
\inst9|ALT_INV_myarray~1081_combout\ <= NOT \inst9|myarray~1081_combout\;
\inst9|ALT_INV_myarray~389_q\ <= NOT \inst9|myarray~389_q\;
\inst9|ALT_INV_myarray~354_q\ <= NOT \inst9|myarray~354_q\;
\inst8|ALT_INV_PCout\(4) <= NOT \inst8|PCout\(4);
\inst8|ALT_INV_PCout\(9) <= NOT \inst8|PCout\(9);
\inst9|ALT_INV_myarray~1074_combout\ <= NOT \inst9|myarray~1074_combout\;
\inst9|ALT_INV_myarray~607_q\ <= NOT \inst9|myarray~607_q\;
\inst8|ALT_INV_PCout\(12) <= NOT \inst8|PCout\(12);
\inst9|ALT_INV_myarray~1066_combout\ <= NOT \inst9|myarray~1066_combout\;
\inst9|ALT_INV_myarray~1062_combout\ <= NOT \inst9|myarray~1062_combout\;
\inst9|ALT_INV_myarray~610_q\ <= NOT \inst9|myarray~610_q\;
\inst9|ALT_INV_myarray~383_q\ <= NOT \inst9|myarray~383_q\;
\inst8|ALT_INV_PCout\(18) <= NOT \inst8|PCout\(18);
\inst8|ALT_INV_PCout\(16) <= NOT \inst8|PCout\(16);
\inst9|ALT_INV_myarray~612_q\ <= NOT \inst9|myarray~612_q\;
\inst9|ALT_INV_myarray~1068_combout\ <= NOT \inst9|myarray~1068_combout\;
\inst9|ALT_INV_myarray~387_q\ <= NOT \inst9|myarray~387_q\;
\inst9|ALT_INV_myarray~352_q\ <= NOT \inst9|myarray~352_q\;
\inst9|ALT_INV_myarray~1078_combout\ <= NOT \inst9|myarray~1078_combout\;
\inst8|ALT_INV_PCout\(8) <= NOT \inst8|PCout\(8);
\inst9|ALT_INV_myarray~1071_combout\ <= NOT \inst9|myarray~1071_combout\;
\inst9|ALT_INV_myarray~377_q\ <= NOT \inst9|myarray~377_q\;
\inst9|ALT_INV_myarray~1084_combout\ <= NOT \inst9|myarray~1084_combout\;
\inst9|ALT_INV_myarray~1086_combout\ <= NOT \inst9|myarray~1086_combout\;
\inst9|ALT_INV_myarray~604_q\ <= NOT \inst9|myarray~604_q\;
\inst9|ALT_INV_myarray~595_q\ <= NOT \inst9|myarray~595_q\;
\inst9|ALT_INV_myarray~1099_combout\ <= NOT \inst9|myarray~1099_combout\;
\inst9|ALT_INV_myarray~599_q\ <= NOT \inst9|myarray~599_q\;
\inst9|ALT_INV_myarray~375_q\ <= NOT \inst9|myarray~375_q\;
\inst9|ALT_INV_myarray~598_q\ <= NOT \inst9|myarray~598_q\;
\inst9|ALT_INV_myarray~1114_combout\ <= NOT \inst9|myarray~1114_combout\;
\inst9|ALT_INV_myarray~1116_combout\ <= NOT \inst9|myarray~1116_combout\;
\inst9|ALT_INV_myarray~1107_combout\ <= NOT \inst9|myarray~1107_combout\;
\inst9|ALT_INV_myarray~1111_combout\ <= NOT \inst9|myarray~1111_combout\;
\inst9|ALT_INV_myarray~1113_combout\ <= NOT \inst9|myarray~1113_combout\;
\inst9|ALT_INV_myarray~380_q\ <= NOT \inst9|myarray~380_q\;
\inst9|ALT_INV_myarray~343_q\ <= NOT \inst9|myarray~343_q\;
\inst9|ALT_INV_myarray~1098_combout\ <= NOT \inst9|myarray~1098_combout\;
\inst9|ALT_INV_myarray~605_q\ <= NOT \inst9|myarray~605_q\;
\inst9|ALT_INV_myarray~341_q\ <= NOT \inst9|myarray~341_q\;
\inst9|ALT_INV_myarray~596_q\ <= NOT \inst9|myarray~596_q\;
\inst9|ALT_INV_myarray~1093_combout\ <= NOT \inst9|myarray~1093_combout\;
\inst9|ALT_INV_myarray~372_q\ <= NOT \inst9|myarray~372_q\;
\inst9|ALT_INV_myarray~602_q\ <= NOT \inst9|myarray~602_q\;
\inst9|ALT_INV_myarray~1089_combout\ <= NOT \inst9|myarray~1089_combout\;
\inst9|ALT_INV_myarray~381_q\ <= NOT \inst9|myarray~381_q\;
\inst9|ALT_INV_myarray~347_q\ <= NOT \inst9|myarray~347_q\;
\inst9|ALT_INV_myarray~1105_combout\ <= NOT \inst9|myarray~1105_combout\;
\inst9|ALT_INV_myarray~1092_combout\ <= NOT \inst9|myarray~1092_combout\;
\inst9|ALT_INV_myarray~601_q\ <= NOT \inst9|myarray~601_q\;
\inst9|ALT_INV_myarray~376_q\ <= NOT \inst9|myarray~376_q\;
\inst9|ALT_INV_myarray~1102_combout\ <= NOT \inst9|myarray~1102_combout\;
\inst9|ALT_INV_myarray~1095_combout\ <= NOT \inst9|myarray~1095_combout\;
\inst9|ALT_INV_myarray~1087_combout\ <= NOT \inst9|myarray~1087_combout\;
\inst9|ALT_INV_myarray~378_q\ <= NOT \inst9|myarray~378_q\;
\inst9|ALT_INV_myarray~600_q\ <= NOT \inst9|myarray~600_q\;
\inst9|ALT_INV_myarray~342_q\ <= NOT \inst9|myarray~342_q\;
\inst9|ALT_INV_myarray~1101_combout\ <= NOT \inst9|myarray~1101_combout\;
\inst9|ALT_INV_myarray~344_q\ <= NOT \inst9|myarray~344_q\;
\inst9|ALT_INV_myarray~597_q\ <= NOT \inst9|myarray~597_q\;
\inst9|ALT_INV_myarray~349_q\ <= NOT \inst9|myarray~349_q\;
\inst9|ALT_INV_myarray~346_q\ <= NOT \inst9|myarray~346_q\;
\inst9|ALT_INV_myarray~345_q\ <= NOT \inst9|myarray~345_q\;
\inst9|ALT_INV_myarray~1090_combout\ <= NOT \inst9|myarray~1090_combout\;
\inst9|ALT_INV_myarray~1096_combout\ <= NOT \inst9|myarray~1096_combout\;
\inst9|ALT_INV_myarray~1104_combout\ <= NOT \inst9|myarray~1104_combout\;
\inst9|ALT_INV_myarray~374_q\ <= NOT \inst9|myarray~374_q\;
\inst9|ALT_INV_myarray~1108_combout\ <= NOT \inst9|myarray~1108_combout\;
\inst9|ALT_INV_myarray~373_q\ <= NOT \inst9|myarray~373_q\;
\inst9|ALT_INV_myarray~340_q\ <= NOT \inst9|myarray~340_q\;
\inst9|ALT_INV_myarray~348_q\ <= NOT \inst9|myarray~348_q\;
\inst9|ALT_INV_myarray~603_q\ <= NOT \inst9|myarray~603_q\;
\inst9|ALT_INV_myarray~379_q\ <= NOT \inst9|myarray~379_q\;
\inst9|ALT_INV_myarray~1110_combout\ <= NOT \inst9|myarray~1110_combout\;
\inst9|ALT_INV_myarray~590_q\ <= NOT \inst9|myarray~590_q\;
\inst9|ALT_INV_myarray~334_q\ <= NOT \inst9|myarray~334_q\;
\inst9|ALT_INV_myarray~333_q\ <= NOT \inst9|myarray~333_q\;
\inst9|ALT_INV_myarray~330_q\ <= NOT \inst9|myarray~330_q\;
\inst9|ALT_INV_myarray~1117_combout\ <= NOT \inst9|myarray~1117_combout\;
\inst9|ALT_INV_myarray~369_q\ <= NOT \inst9|myarray~369_q\;
\inst9|ALT_INV_myarray~593_q\ <= NOT \inst9|myarray~593_q\;
\inst9|ALT_INV_myarray~1131_combout\ <= NOT \inst9|myarray~1131_combout\;
\inst9|ALT_INV_myarray~1122_combout\ <= NOT \inst9|myarray~1122_combout\;
\inst9|ALT_INV_myarray~1140_combout\ <= NOT \inst9|myarray~1140_combout\;
\inst9|ALT_INV_myarray~588_q\ <= NOT \inst9|myarray~588_q\;
\inst9|ALT_INV_myarray~331_q\ <= NOT \inst9|myarray~331_q\;
\inst9|ALT_INV_myarray~332_q\ <= NOT \inst9|myarray~332_q\;
\inst9|ALT_INV_myarray~1143_combout\ <= NOT \inst9|myarray~1143_combout\;
\inst9|ALT_INV_myarray~594_q\ <= NOT \inst9|myarray~594_q\;
\inst9|ALT_INV_myarray~368_q\ <= NOT \inst9|myarray~368_q\;
\inst9|ALT_INV_myarray~336_q\ <= NOT \inst9|myarray~336_q\;
\inst9|ALT_INV_myarray~1120_combout\ <= NOT \inst9|myarray~1120_combout\;
\inst9|ALT_INV_myarray~592_q\ <= NOT \inst9|myarray~592_q\;
\inst9|ALT_INV_myarray~1132_combout\ <= NOT \inst9|myarray~1132_combout\;
\inst9|ALT_INV_myarray~1134_combout\ <= NOT \inst9|myarray~1134_combout\;
\inst9|ALT_INV_myarray~365_q\ <= NOT \inst9|myarray~365_q\;
\inst9|ALT_INV_myarray~1135_combout\ <= NOT \inst9|myarray~1135_combout\;
\inst9|ALT_INV_myarray~591_q\ <= NOT \inst9|myarray~591_q\;
\inst9|ALT_INV_myarray~1137_combout\ <= NOT \inst9|myarray~1137_combout\;
\inst9|ALT_INV_myarray~589_q\ <= NOT \inst9|myarray~589_q\;
\inst9|ALT_INV_myarray~1119_combout\ <= NOT \inst9|myarray~1119_combout\;
\inst9|ALT_INV_myarray~1138_combout\ <= NOT \inst9|myarray~1138_combout\;
\inst9|ALT_INV_myarray~586_q\ <= NOT \inst9|myarray~586_q\;
\inst9|ALT_INV_myarray~370_q\ <= NOT \inst9|myarray~370_q\;
\inst9|ALT_INV_myarray~1144_combout\ <= NOT \inst9|myarray~1144_combout\;
\inst9|ALT_INV_myarray~1125_combout\ <= NOT \inst9|myarray~1125_combout\;
\inst9|ALT_INV_myarray~587_q\ <= NOT \inst9|myarray~587_q\;
\inst9|ALT_INV_myarray~585_q\ <= NOT \inst9|myarray~585_q\;
\inst9|ALT_INV_myarray~1146_combout\ <= NOT \inst9|myarray~1146_combout\;
\inst9|ALT_INV_myarray~1126_combout\ <= NOT \inst9|myarray~1126_combout\;
\inst9|ALT_INV_myarray~1129_combout\ <= NOT \inst9|myarray~1129_combout\;
\inst9|ALT_INV_myarray~364_q\ <= NOT \inst9|myarray~364_q\;
\inst9|ALT_INV_myarray~1128_combout\ <= NOT \inst9|myarray~1128_combout\;
\inst9|ALT_INV_myarray~366_q\ <= NOT \inst9|myarray~366_q\;
\inst9|ALT_INV_myarray~371_q\ <= NOT \inst9|myarray~371_q\;
\inst9|ALT_INV_myarray~338_q\ <= NOT \inst9|myarray~338_q\;
\inst9|ALT_INV_myarray~337_q\ <= NOT \inst9|myarray~337_q\;
\inst9|ALT_INV_myarray~362_q\ <= NOT \inst9|myarray~362_q\;
\inst9|ALT_INV_myarray~335_q\ <= NOT \inst9|myarray~335_q\;
\inst9|ALT_INV_myarray~1141_combout\ <= NOT \inst9|myarray~1141_combout\;
\inst9|ALT_INV_myarray~361_q\ <= NOT \inst9|myarray~361_q\;
\inst9|ALT_INV_myarray~329_q\ <= NOT \inst9|myarray~329_q\;
\inst9|ALT_INV_myarray~363_q\ <= NOT \inst9|myarray~363_q\;
\inst9|ALT_INV_myarray~1147_combout\ <= NOT \inst9|myarray~1147_combout\;
\inst9|ALT_INV_myarray~1123_combout\ <= NOT \inst9|myarray~1123_combout\;
\inst9|ALT_INV_myarray~367_q\ <= NOT \inst9|myarray~367_q\;
\inst9|ALT_INV_myarray~339_q\ <= NOT \inst9|myarray~339_q\;
\inst9|ALT_INV_myarray~1178_combout\ <= NOT \inst9|myarray~1178_combout\;
\inst9|ALT_INV_myarray~1156_combout\ <= NOT \inst9|myarray~1156_combout\;
\inst9|ALT_INV_myarray~304_q\ <= NOT \inst9|myarray~304_q\;
\inst9|ALT_INV_myarray~582_q\ <= NOT \inst9|myarray~582_q\;
\inst9|ALT_INV_myarray~358_q\ <= NOT \inst9|myarray~358_q\;
\inst9|ALT_INV_myarray~1172_combout\ <= NOT \inst9|myarray~1172_combout\;
\inst9|ALT_INV_myarray~315_q\ <= NOT \inst9|myarray~315_q\;
\inst9|ALT_INV_myarray~321_q\ <= NOT \inst9|myarray~321_q\;
\inst9|ALT_INV_myarray~324_q\ <= NOT \inst9|myarray~324_q\;
\inst9|ALT_INV_myarray~323_q\ <= NOT \inst9|myarray~323_q\;
\inst9|ALT_INV_myarray~1169_combout\ <= NOT \inst9|myarray~1169_combout\;
\inst9|ALT_INV_myarray~1176_combout\ <= NOT \inst9|myarray~1176_combout\;
\inst9|ALT_INV_myarray~1179_combout\ <= NOT \inst9|myarray~1179_combout\;
\inst9|ALT_INV_myarray~303_q\ <= NOT \inst9|myarray~303_q\;
\inst9|ALT_INV_myarray~1180_combout\ <= NOT \inst9|myarray~1180_combout\;
\inst9|ALT_INV_myarray~319_q\ <= NOT \inst9|myarray~319_q\;
\inst9|ALT_INV_myarray~1150_combout\ <= NOT \inst9|myarray~1150_combout\;
\inst9|ALT_INV_myarray~1149_combout\ <= NOT \inst9|myarray~1149_combout\;
\inst9|ALT_INV_myarray~328_q\ <= NOT \inst9|myarray~328_q\;
\inst9|ALT_INV_myarray~1153_combout\ <= NOT \inst9|myarray~1153_combout\;
\inst9|ALT_INV_myarray~320_q\ <= NOT \inst9|myarray~320_q\;
\inst9|ALT_INV_myarray~1165_combout\ <= NOT \inst9|myarray~1165_combout\;
\inst9|ALT_INV_myarray~1174_combout\ <= NOT \inst9|myarray~1174_combout\;
\inst9|ALT_INV_myarray~360_q\ <= NOT \inst9|myarray~360_q\;
\inst9|ALT_INV_myarray~584_q\ <= NOT \inst9|myarray~584_q\;
\inst9|ALT_INV_myarray~1155_combout\ <= NOT \inst9|myarray~1155_combout\;
\inst9|ALT_INV_myarray~1164_combout\ <= NOT \inst9|myarray~1164_combout\;
\inst9|ALT_INV_myarray~308_q\ <= NOT \inst9|myarray~308_q\;
\inst9|ALT_INV_myarray~1162_combout\ <= NOT \inst9|myarray~1162_combout\;
\inst9|ALT_INV_myarray~306_q\ <= NOT \inst9|myarray~306_q\;
\inst9|ALT_INV_myarray~1177_combout\ <= NOT \inst9|myarray~1177_combout\;
\inst9|ALT_INV_myarray~1160_combout\ <= NOT \inst9|myarray~1160_combout\;
\inst9|ALT_INV_myarray~1163_combout\ <= NOT \inst9|myarray~1163_combout\;
\inst9|ALT_INV_myarray~316_q\ <= NOT \inst9|myarray~316_q\;
\inst9|ALT_INV_myarray~312_q\ <= NOT \inst9|myarray~312_q\;
\inst9|ALT_INV_myarray~325_q\ <= NOT \inst9|myarray~325_q\;
\inst9|ALT_INV_myarray~318_q\ <= NOT \inst9|myarray~318_q\;
\inst9|ALT_INV_myarray~583_q\ <= NOT \inst9|myarray~583_q\;
\inst9|ALT_INV_myarray~1152_combout\ <= NOT \inst9|myarray~1152_combout\;
\inst9|ALT_INV_myarray~327_q\ <= NOT \inst9|myarray~327_q\;
\inst9|ALT_INV_myarray~1158_combout\ <= NOT \inst9|myarray~1158_combout\;
\inst9|ALT_INV_myarray~1159_combout\ <= NOT \inst9|myarray~1159_combout\;
\inst9|ALT_INV_myarray~1166_combout\ <= NOT \inst9|myarray~1166_combout\;
\inst9|ALT_INV_myarray~1167_combout\ <= NOT \inst9|myarray~1167_combout\;
\inst9|ALT_INV_myarray~1161_combout\ <= NOT \inst9|myarray~1161_combout\;
\inst9|ALT_INV_myarray~317_q\ <= NOT \inst9|myarray~317_q\;
\inst9|ALT_INV_myarray~359_q\ <= NOT \inst9|myarray~359_q\;
\inst9|ALT_INV_myarray~322_q\ <= NOT \inst9|myarray~322_q\;
\inst9|ALT_INV_myarray~313_q\ <= NOT \inst9|myarray~313_q\;
\inst9|ALT_INV_myarray~1170_combout\ <= NOT \inst9|myarray~1170_combout\;
\inst9|ALT_INV_myarray~1171_combout\ <= NOT \inst9|myarray~1171_combout\;
\inst9|ALT_INV_myarray~1168_combout\ <= NOT \inst9|myarray~1168_combout\;
\inst9|ALT_INV_myarray~311_q\ <= NOT \inst9|myarray~311_q\;
\inst9|ALT_INV_myarray~1173_combout\ <= NOT \inst9|myarray~1173_combout\;
\inst9|ALT_INV_myarray~309_q\ <= NOT \inst9|myarray~309_q\;
\inst9|ALT_INV_myarray~326_q\ <= NOT \inst9|myarray~326_q\;
\inst9|ALT_INV_myarray~1175_combout\ <= NOT \inst9|myarray~1175_combout\;
\inst9|ALT_INV_myarray~307_q\ <= NOT \inst9|myarray~307_q\;
\inst9|ALT_INV_myarray~314_q\ <= NOT \inst9|myarray~314_q\;
\inst9|ALT_INV_myarray~305_q\ <= NOT \inst9|myarray~305_q\;
\inst9|ALT_INV_myarray~310_q\ <= NOT \inst9|myarray~310_q\;
\inst2|ALT_INV_Rtemp\(30) <= NOT \inst2|Rtemp\(30);
\inst2|ALT_INV_Rtemp\(26) <= NOT \inst2|Rtemp\(26);
\inst2|ALT_INV_Rtemp\(24) <= NOT \inst2|Rtemp\(24);
\inst2|ALT_INV_Rtemp\(13) <= NOT \inst2|Rtemp\(13);
\inst2|ALT_INV_Rtemp\(9) <= NOT \inst2|Rtemp\(9);
\inst2|ALT_INV_Rtemp\(3) <= NOT \inst2|Rtemp\(3);
\inst9|ALT_INV_myarray~1185_combout\ <= NOT \inst9|myarray~1185_combout\;
\inst9|ALT_INV_myarray~297_q\ <= NOT \inst9|myarray~297_q\;
\inst9|ALT_INV_myarray~1186_combout\ <= NOT \inst9|myarray~1186_combout\;
\inst2|ALT_INV_Rtemp\(18) <= NOT \inst2|Rtemp\(18);
\inst2|ALT_INV_Rtemp\(10) <= NOT \inst2|Rtemp\(10);
\inst2|ALT_INV_Rtemp\(1) <= NOT \inst2|Rtemp\(1);
\inst2|ALT_INV_Rtemp\(5) <= NOT \inst2|Rtemp\(5);
\inst9|ALT_INV_myarray~1182_combout\ <= NOT \inst9|myarray~1182_combout\;
\inst2|ALT_INV_Rtemp\(15) <= NOT \inst2|Rtemp\(15);
\inst2|ALT_INV_Rtemp\(11) <= NOT \inst2|Rtemp\(11);
\inst2|ALT_INV_Rtemp\(28) <= NOT \inst2|Rtemp\(28);
\inst2|ALT_INV_Rtemp\(20) <= NOT \inst2|Rtemp\(20);
\inst2|ALT_INV_Rtemp\(12) <= NOT \inst2|Rtemp\(12);
\inst5|ALT_INV_myarray~0_combout\ <= NOT \inst5|myarray~0_combout\;
\inst15|ALT_INV_R[2]~0_combout\ <= NOT \inst15|R[2]~0_combout\;
\inst2|ALT_INV_Rtemp\(22) <= NOT \inst2|Rtemp\(22);
\inst2|ALT_INV_Rtemp\(8) <= NOT \inst2|Rtemp\(8);
\inst2|ALT_INV_Rtemp\(4) <= NOT \inst2|Rtemp\(4);
\inst9|ALT_INV_myarray~1187_combout\ <= NOT \inst9|myarray~1187_combout\;
\inst9|ALT_INV_myarray~302_q\ <= NOT \inst9|myarray~302_q\;
\inst9|ALT_INV_myarray~294_q\ <= NOT \inst9|myarray~294_q\;
\inst2|ALT_INV_Rtemp\(31) <= NOT \inst2|Rtemp\(31);
\inst2|ALT_INV_Rtemp\(14) <= NOT \inst2|Rtemp\(14);
\inst2|ALT_INV_Rtemp\(27) <= NOT \inst2|Rtemp\(27);
\inst9|ALT_INV_myarray~1184_combout\ <= NOT \inst9|myarray~1184_combout\;
\inst2|ALT_INV_Rtemp\(19) <= NOT \inst2|Rtemp\(19);
\inst2|ALT_INV_Rtemp\(7) <= NOT \inst2|Rtemp\(7);
\inst2|ALT_INV_Rtemp\(2) <= NOT \inst2|Rtemp\(2);
\inst9|ALT_INV_myarray~298_q\ <= NOT \inst9|myarray~298_q\;
\inst9|ALT_INV_myarray~296_q\ <= NOT \inst9|myarray~296_q\;
\inst9|ALT_INV_myarray~1189_combout\ <= NOT \inst9|myarray~1189_combout\;
\inst9|ALT_INV_myarray~295_q\ <= NOT \inst9|myarray~295_q\;
\inst9|ALT_INV_myarray~299_q\ <= NOT \inst9|myarray~299_q\;
\inst2|ALT_INV_Rtemp\(25) <= NOT \inst2|Rtemp\(25);
\inst2|ALT_INV_Rtemp\(21) <= NOT \inst2|Rtemp\(21);
\inst9|ALT_INV_myarray~1183_combout\ <= NOT \inst9|myarray~1183_combout\;
\inst2|ALT_INV_Rtemp\(23) <= NOT \inst2|Rtemp\(23);
\inst2|ALT_INV_Rtemp\(16) <= NOT \inst2|Rtemp\(16);
\inst2|ALT_INV_Rtemp\(6) <= NOT \inst2|Rtemp\(6);
\inst2|ALT_INV_Rtemp\(0) <= NOT \inst2|Rtemp\(0);
\inst2|ALT_INV_Rtemp\(29) <= NOT \inst2|Rtemp\(29);
\inst9|ALT_INV_myarray~300_q\ <= NOT \inst9|myarray~300_q\;
\inst9|ALT_INV_myarray~301_q\ <= NOT \inst9|myarray~301_q\;
\inst2|ALT_INV_Rtemp\(17) <= NOT \inst2|Rtemp\(17);
\inst9|ALT_INV_myarray~1181_combout\ <= NOT \inst9|myarray~1181_combout\;
\inst9|ALT_INV_myarray~1188_combout\ <= NOT \inst9|myarray~1188_combout\;
\ALT_INV_clk~inputCLKENA0_outclk\ <= NOT \clk~inputCLKENA0_outclk\;
\inst2|ALT_INV_Add1~9_sumout\ <= NOT \inst2|Add1~9_sumout\;
\inst2|ALT_INV_Add1~1_sumout\ <= NOT \inst2|Add1~1_sumout\;
\inst2|ALT_INV_Add1~5_sumout\ <= NOT \inst2|Add1~5_sumout\;
\inst2|ALT_INV_Add1~13_sumout\ <= NOT \inst2|Add1~13_sumout\;
\inst2|ALT_INV_Add1~25_sumout\ <= NOT \inst2|Add1~25_sumout\;
\inst2|ALT_INV_Add1~17_sumout\ <= NOT \inst2|Add1~17_sumout\;
\inst2|ALT_INV_Add1~21_sumout\ <= NOT \inst2|Add1~21_sumout\;
\inst2|ALT_INV_Add1~29_sumout\ <= NOT \inst2|Add1~29_sumout\;
\inst2|ALT_INV_Add1~33_sumout\ <= NOT \inst2|Add1~33_sumout\;

-- Location: IOOBUF_X88_Y0_N37
\ALU_Opcode[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|ALT_INV_PCout\(3),
	devoe => ww_devoe,
	o => ww_ALU_Opcode(1));

-- Location: IOOBUF_X16_Y0_N19
\ALU_Opcode[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_ALU_Opcode(0));

-- Location: IOOBUF_X32_Y0_N53
\Writeback[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst13|R[31]~0_combout\,
	devoe => ww_devoe,
	o => ww_Writeback(31));

-- Location: IOOBUF_X28_Y0_N53
\Writeback[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst13|R[30]~1_combout\,
	devoe => ww_devoe,
	o => ww_Writeback(30));

-- Location: IOOBUF_X76_Y0_N2
\Writeback[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst13|R[29]~2_combout\,
	devoe => ww_devoe,
	o => ww_Writeback(29));

-- Location: IOOBUF_X60_Y0_N53
\Writeback[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst13|R[28]~3_combout\,
	devoe => ww_devoe,
	o => ww_Writeback(28));

-- Location: IOOBUF_X26_Y0_N42
\Writeback[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst13|R[27]~4_combout\,
	devoe => ww_devoe,
	o => ww_Writeback(27));

-- Location: IOOBUF_X26_Y0_N93
\Writeback[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst13|R[26]~5_combout\,
	devoe => ww_devoe,
	o => ww_Writeback(26));

-- Location: IOOBUF_X82_Y0_N59
\Writeback[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst13|R[25]~6_combout\,
	devoe => ww_devoe,
	o => ww_Writeback(25));

-- Location: IOOBUF_X54_Y0_N19
\Writeback[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst13|R[24]~7_combout\,
	devoe => ww_devoe,
	o => ww_Writeback(24));

-- Location: IOOBUF_X24_Y0_N2
\Writeback[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst13|R[23]~8_combout\,
	devoe => ww_devoe,
	o => ww_Writeback(23));

-- Location: IOOBUF_X28_Y0_N19
\Writeback[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst13|R[22]~9_combout\,
	devoe => ww_devoe,
	o => ww_Writeback(22));

-- Location: IOOBUF_X89_Y9_N5
\Writeback[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst13|R[21]~10_combout\,
	devoe => ww_devoe,
	o => ww_Writeback(21));

-- Location: IOOBUF_X28_Y0_N2
\Writeback[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst13|R[20]~11_combout\,
	devoe => ww_devoe,
	o => ww_Writeback(20));

-- Location: IOOBUF_X66_Y0_N93
\Writeback[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst13|R[19]~12_combout\,
	devoe => ww_devoe,
	o => ww_Writeback(19));

-- Location: IOOBUF_X89_Y11_N45
\Writeback[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst13|R[18]~13_combout\,
	devoe => ww_devoe,
	o => ww_Writeback(18));

-- Location: IOOBUF_X89_Y9_N39
\Writeback[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst13|R[17]~14_combout\,
	devoe => ww_devoe,
	o => ww_Writeback(17));

-- Location: IOOBUF_X60_Y0_N36
\Writeback[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst13|R[16]~15_combout\,
	devoe => ww_devoe,
	o => ww_Writeback(16));

-- Location: IOOBUF_X89_Y23_N56
\Writeback[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst13|R[15]~16_combout\,
	devoe => ww_devoe,
	o => ww_Writeback(15));

-- Location: IOOBUF_X89_Y15_N5
\Writeback[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst13|R[14]~17_combout\,
	devoe => ww_devoe,
	o => ww_Writeback(14));

-- Location: IOOBUF_X89_Y11_N96
\Writeback[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst13|R[13]~18_combout\,
	devoe => ww_devoe,
	o => ww_Writeback(13));

-- Location: IOOBUF_X89_Y11_N79
\Writeback[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst13|R[12]~19_combout\,
	devoe => ww_devoe,
	o => ww_Writeback(12));

-- Location: IOOBUF_X74_Y0_N76
\Writeback[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst13|R[11]~20_combout\,
	devoe => ww_devoe,
	o => ww_Writeback(11));

-- Location: IOOBUF_X20_Y0_N19
\Writeback[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst13|R[10]~21_combout\,
	devoe => ww_devoe,
	o => ww_Writeback(10));

-- Location: IOOBUF_X56_Y0_N2
\Writeback[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst13|R[9]~22_combout\,
	devoe => ww_devoe,
	o => ww_Writeback(9));

-- Location: IOOBUF_X22_Y0_N2
\Writeback[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst13|R[8]~23_combout\,
	devoe => ww_devoe,
	o => ww_Writeback(8));

-- Location: IOOBUF_X89_Y16_N5
\Writeback[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst13|R[7]~24_combout\,
	devoe => ww_devoe,
	o => ww_Writeback(7));

-- Location: IOOBUF_X70_Y0_N19
\Writeback[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst13|R[6]~25_combout\,
	devoe => ww_devoe,
	o => ww_Writeback(6));

-- Location: IOOBUF_X40_Y81_N53
\Writeback[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst13|R[5]~26_combout\,
	devoe => ww_devoe,
	o => ww_Writeback(5));

-- Location: IOOBUF_X89_Y21_N56
\Writeback[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst13|R[4]~27_combout\,
	devoe => ww_devoe,
	o => ww_Writeback(4));

-- Location: IOOBUF_X84_Y0_N2
\Writeback[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst13|R[3]~28_combout\,
	devoe => ww_devoe,
	o => ww_Writeback(3));

-- Location: IOOBUF_X62_Y0_N19
\Writeback[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst13|R[2]~29_combout\,
	devoe => ww_devoe,
	o => ww_Writeback(2));

-- Location: IOOBUF_X72_Y0_N36
\Writeback[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst13|R[1]~30_combout\,
	devoe => ww_devoe,
	o => ww_Writeback(1));

-- Location: IOOBUF_X89_Y8_N39
\Writeback[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst13|R[0]~31_combout\,
	devoe => ww_devoe,
	o => ww_Writeback(0));

-- Location: IOOBUF_X12_Y81_N19
\SX[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_SX(31));

-- Location: IOOBUF_X89_Y23_N39
\SX[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_SX(30));

-- Location: IOOBUF_X14_Y81_N36
\SX[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_SX(29));

-- Location: IOOBUF_X22_Y81_N2
\SX[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_SX(28));

-- Location: IOOBUF_X26_Y81_N42
\SX[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_SX(27));

-- Location: IOOBUF_X24_Y81_N19
\SX[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_SX(26));

-- Location: IOOBUF_X30_Y81_N19
\SX[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_SX(25));

-- Location: IOOBUF_X86_Y0_N36
\SX[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_SX(24));

-- Location: IOOBUF_X18_Y0_N93
\SX[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_SX(23));

-- Location: IOOBUF_X6_Y0_N19
\SX[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_SX(22));

-- Location: IOOBUF_X38_Y81_N36
\SX[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_SX(21));

-- Location: IOOBUF_X4_Y81_N2
\SX[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_SX(20));

-- Location: IOOBUF_X16_Y81_N2
\SX[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_SX(19));

-- Location: IOOBUF_X24_Y81_N53
\SX[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_SX(18));

-- Location: IOOBUF_X16_Y81_N36
\SX[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_SX(17));

-- Location: IOOBUF_X28_Y81_N53
\SX[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_SX(16));

-- Location: IOOBUF_X6_Y0_N53
\SX[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_SX(15));

-- Location: IOOBUF_X88_Y0_N3
\SX[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|ALT_INV_PCout\(3),
	devoe => ww_devoe,
	o => ww_SX(14));

-- Location: IOOBUF_X28_Y81_N36
\SX[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_SX(13));

-- Location: IOOBUF_X80_Y0_N53
\SX[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|Y\(2),
	devoe => ww_devoe,
	o => ww_SX(12));

-- Location: IOOBUF_X8_Y81_N53
\SX[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_SX(11));

-- Location: IOOBUF_X20_Y81_N2
\SX[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_SX(10));

-- Location: IOOBUF_X10_Y81_N93
\SX[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_SX(9));

-- Location: IOOBUF_X10_Y81_N59
\SX[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_SX(8));

-- Location: IOOBUF_X89_Y4_N96
\SX[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_SX(7));

-- Location: IOOBUF_X34_Y81_N93
\SX[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_SX(6));

-- Location: IOOBUF_X2_Y0_N93
\SX[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|ALT_INV_PCout\(3),
	devoe => ww_devoe,
	o => ww_SX(5));

-- Location: IOOBUF_X28_Y81_N19
\SX[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_SX(4));

-- Location: IOOBUF_X30_Y81_N2
\SX[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_SX(3));

-- Location: IOOBUF_X68_Y0_N36
\SX[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|myarray~0_combout\,
	devoe => ww_devoe,
	o => ww_SX(2));

-- Location: IOOBUF_X76_Y0_N19
\SX[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|Y\(2),
	devoe => ww_devoe,
	o => ww_SX(1));

-- Location: IOOBUF_X22_Y81_N53
\SX[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_SX(0));

-- Location: IOOBUF_X10_Y0_N76
\Current_Instruction[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|PCout\(3),
	devoe => ww_devoe,
	o => ww_Current_Instruction(31));

-- Location: IOOBUF_X12_Y81_N2
\Current_Instruction[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Current_Instruction(30));

-- Location: IOOBUF_X68_Y0_N53
\Current_Instruction[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|myarray~0_combout\,
	devoe => ww_devoe,
	o => ww_Current_Instruction(29));

-- Location: IOOBUF_X2_Y81_N42
\Current_Instruction[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Current_Instruction(28));

-- Location: IOOBUF_X86_Y0_N19
\Current_Instruction[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|PCout\(3),
	devoe => ww_devoe,
	o => ww_Current_Instruction(27));

-- Location: IOOBUF_X14_Y0_N36
\Current_Instruction[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|PCout\(3),
	devoe => ww_devoe,
	o => ww_Current_Instruction(26));

-- Location: IOOBUF_X86_Y0_N2
\Current_Instruction[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|PCout\(3),
	devoe => ww_devoe,
	o => ww_Current_Instruction(25));

-- Location: IOOBUF_X2_Y0_N42
\Current_Instruction[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|ALT_INV_PCout\(3),
	devoe => ww_devoe,
	o => ww_Current_Instruction(24));

-- Location: IOOBUF_X4_Y0_N36
\Current_Instruction[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Current_Instruction(23));

-- Location: IOOBUF_X12_Y0_N36
\Current_Instruction[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|myarray~1_combout\,
	devoe => ww_devoe,
	o => ww_Current_Instruction(22));

-- Location: IOOBUF_X10_Y0_N42
\Current_Instruction[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|myarray~2_combout\,
	devoe => ww_devoe,
	o => ww_Current_Instruction(21));

-- Location: IOOBUF_X12_Y0_N53
\Current_Instruction[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|myarray~1_combout\,
	devoe => ww_devoe,
	o => ww_Current_Instruction(20));

-- Location: IOOBUF_X14_Y0_N2
\Current_Instruction[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|myarray~2_combout\,
	devoe => ww_devoe,
	o => ww_Current_Instruction(19));

-- Location: IOOBUF_X89_Y25_N39
\Current_Instruction[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Current_Instruction(18));

-- Location: IOOBUF_X18_Y0_N76
\Current_Instruction[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|myarray~3_combout\,
	devoe => ww_devoe,
	o => ww_Current_Instruction(17));

-- Location: IOOBUF_X88_Y0_N20
\Current_Instruction[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|PCout\(3),
	devoe => ww_devoe,
	o => ww_Current_Instruction(16));

-- Location: IOOBUF_X32_Y81_N2
\Current_Instruction[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Current_Instruction(15));

-- Location: IOOBUF_X8_Y0_N2
\Current_Instruction[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|ALT_INV_PCout\(3),
	devoe => ww_devoe,
	o => ww_Current_Instruction(14));

-- Location: IOOBUF_X16_Y81_N19
\Current_Instruction[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Current_Instruction(13));

-- Location: IOOBUF_X80_Y0_N36
\Current_Instruction[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|Y\(2),
	devoe => ww_devoe,
	o => ww_Current_Instruction(12));

-- Location: IOOBUF_X32_Y81_N36
\Current_Instruction[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Current_Instruction(11));

-- Location: IOOBUF_X89_Y25_N56
\Current_Instruction[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Current_Instruction(10));

-- Location: IOOBUF_X86_Y0_N53
\Current_Instruction[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Current_Instruction(9));

-- Location: IOOBUF_X10_Y81_N42
\Current_Instruction[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Current_Instruction(8));

-- Location: IOOBUF_X14_Y81_N19
\Current_Instruction[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Current_Instruction(7));

-- Location: IOOBUF_X89_Y21_N22
\Current_Instruction[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Current_Instruction(6));

-- Location: IOOBUF_X14_Y0_N53
\Current_Instruction[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|ALT_INV_PCout\(3),
	devoe => ww_devoe,
	o => ww_Current_Instruction(5));

-- Location: IOOBUF_X36_Y81_N36
\Current_Instruction[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Current_Instruction(4));

-- Location: IOOBUF_X16_Y81_N53
\Current_Instruction[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Current_Instruction(3));

-- Location: IOOBUF_X66_Y0_N42
\Current_Instruction[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|myarray~0_combout\,
	devoe => ww_devoe,
	o => ww_Current_Instruction(2));

-- Location: IOOBUF_X80_Y0_N19
\Current_Instruction[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|Y\(2),
	devoe => ww_devoe,
	o => ww_Current_Instruction(1));

-- Location: IOOBUF_X24_Y81_N2
\Current_Instruction[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Current_Instruction(0));

-- Location: IOOBUF_X62_Y0_N2
\Current_PC[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|PCout\(31),
	devoe => ww_devoe,
	o => ww_Current_PC(31));

-- Location: IOOBUF_X60_Y0_N2
\Current_PC[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|PCout\(30),
	devoe => ww_devoe,
	o => ww_Current_PC(30));

-- Location: IOOBUF_X89_Y9_N22
\Current_PC[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|PCout\(29),
	devoe => ww_devoe,
	o => ww_Current_PC(29));

-- Location: IOOBUF_X58_Y0_N59
\Current_PC[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|PCout\(28),
	devoe => ww_devoe,
	o => ww_Current_PC(28));

-- Location: IOOBUF_X70_Y0_N2
\Current_PC[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|PCout\(27),
	devoe => ww_devoe,
	o => ww_Current_PC(27));

-- Location: IOOBUF_X58_Y0_N93
\Current_PC[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|PCout\(26),
	devoe => ww_devoe,
	o => ww_Current_PC(26));

-- Location: IOOBUF_X89_Y4_N79
\Current_PC[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|PCout\(25),
	devoe => ww_devoe,
	o => ww_Current_PC(25));

-- Location: IOOBUF_X34_Y0_N76
\Current_PC[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|PCout\(24),
	devoe => ww_devoe,
	o => ww_Current_PC(24));

-- Location: IOOBUF_X89_Y9_N56
\Current_PC[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|PCout\(23),
	devoe => ww_devoe,
	o => ww_Current_PC(23));

-- Location: IOOBUF_X72_Y0_N2
\Current_PC[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|PCout\(22),
	devoe => ww_devoe,
	o => ww_Current_PC(22));

-- Location: IOOBUF_X78_Y0_N2
\Current_PC[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|PCout\(21),
	devoe => ww_devoe,
	o => ww_Current_PC(21));

-- Location: IOOBUF_X36_Y81_N53
\Current_PC[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|PCout\(20),
	devoe => ww_devoe,
	o => ww_Current_PC(20));

-- Location: IOOBUF_X89_Y6_N39
\Current_PC[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|PCout\(19),
	devoe => ww_devoe,
	o => ww_Current_PC(19));

-- Location: IOOBUF_X72_Y0_N19
\Current_PC[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|PCout\(18),
	devoe => ww_devoe,
	o => ww_Current_PC(18));

-- Location: IOOBUF_X74_Y0_N93
\Current_PC[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|PCout\(17),
	devoe => ww_devoe,
	o => ww_Current_PC(17));

-- Location: IOOBUF_X74_Y0_N42
\Current_PC[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|PCout\(16),
	devoe => ww_devoe,
	o => ww_Current_PC(16));

-- Location: IOOBUF_X34_Y0_N59
\Current_PC[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|PCout\(15),
	devoe => ww_devoe,
	o => ww_Current_PC(15));

-- Location: IOOBUF_X89_Y6_N5
\Current_PC[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|PCout\(14),
	devoe => ww_devoe,
	o => ww_Current_PC(14));

-- Location: IOOBUF_X62_Y0_N36
\Current_PC[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|PCout\(13),
	devoe => ww_devoe,
	o => ww_Current_PC(13));

-- Location: IOOBUF_X89_Y6_N56
\Current_PC[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|PCout\(12),
	devoe => ww_devoe,
	o => ww_Current_PC(12));

-- Location: IOOBUF_X82_Y0_N42
\Current_PC[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|PCout\(11),
	devoe => ww_devoe,
	o => ww_Current_PC(11));

-- Location: IOOBUF_X74_Y0_N59
\Current_PC[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|PCout\(10),
	devoe => ww_devoe,
	o => ww_Current_PC(10));

-- Location: IOOBUF_X89_Y6_N22
\Current_PC[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|PCout\(9),
	devoe => ww_devoe,
	o => ww_Current_PC(9));

-- Location: IOOBUF_X70_Y0_N53
\Current_PC[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|PCout\(8),
	devoe => ww_devoe,
	o => ww_Current_PC(8));

-- Location: IOOBUF_X40_Y81_N36
\Current_PC[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|PCout\(7),
	devoe => ww_devoe,
	o => ww_Current_PC(7));

-- Location: IOOBUF_X72_Y0_N53
\Current_PC[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|PCout\(6),
	devoe => ww_devoe,
	o => ww_Current_PC(6));

-- Location: IOOBUF_X89_Y8_N5
\Current_PC[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|PCout\(5),
	devoe => ww_devoe,
	o => ww_Current_PC(5));

-- Location: IOOBUF_X89_Y4_N45
\Current_PC[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|PCout\(4),
	devoe => ww_devoe,
	o => ww_Current_PC(4));

-- Location: IOOBUF_X8_Y0_N53
\Current_PC[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|PCout\(3),
	devoe => ww_devoe,
	o => ww_Current_PC(3));

-- Location: IOOBUF_X26_Y0_N76
\Current_PC[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|PCout\(2),
	devoe => ww_devoe,
	o => ww_Current_PC(2));

-- Location: IOOBUF_X26_Y81_N93
\Current_PC[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Current_PC(1));

-- Location: IOOBUF_X18_Y81_N59
\Current_PC[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Current_PC(0));

-- Location: IOOBUF_X32_Y0_N19
\Memory_Output[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|myarray_rtl_0|auto_generated|ram_block1a31\,
	devoe => ww_devoe,
	o => ww_Memory_Output(31));

-- Location: IOOBUF_X30_Y0_N36
\Memory_Output[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|myarray_rtl_0|auto_generated|ram_block1a30\,
	devoe => ww_devoe,
	o => ww_Memory_Output(30));

-- Location: IOOBUF_X40_Y81_N19
\Memory_Output[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|myarray_rtl_0|auto_generated|ram_block1a29\,
	devoe => ww_devoe,
	o => ww_Memory_Output(29));

-- Location: IOOBUF_X38_Y81_N19
\Memory_Output[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|myarray_rtl_0|auto_generated|ram_block1a28\,
	devoe => ww_devoe,
	o => ww_Memory_Output(28));

-- Location: IOOBUF_X32_Y0_N2
\Memory_Output[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|myarray_rtl_0|auto_generated|ram_block1a27\,
	devoe => ww_devoe,
	o => ww_Memory_Output(27));

-- Location: IOOBUF_X30_Y0_N2
\Memory_Output[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|myarray_rtl_0|auto_generated|ram_block1a26\,
	devoe => ww_devoe,
	o => ww_Memory_Output(26));

-- Location: IOOBUF_X20_Y0_N53
\Memory_Output[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|myarray_rtl_0|auto_generated|ram_block1a25\,
	devoe => ww_devoe,
	o => ww_Memory_Output(25));

-- Location: IOOBUF_X30_Y0_N19
\Memory_Output[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|myarray_rtl_0|auto_generated|ram_block1a24\,
	devoe => ww_devoe,
	o => ww_Memory_Output(24));

-- Location: IOOBUF_X78_Y0_N36
\Memory_Output[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|myarray_rtl_0|auto_generated|ram_block1a23\,
	devoe => ww_devoe,
	o => ww_Memory_Output(23));

-- Location: IOOBUF_X38_Y0_N53
\Memory_Output[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|myarray_rtl_0|auto_generated|ram_block1a22\,
	devoe => ww_devoe,
	o => ww_Memory_Output(22));

-- Location: IOOBUF_X16_Y0_N2
\Memory_Output[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|myarray_rtl_0|auto_generated|ram_block1a21\,
	devoe => ww_devoe,
	o => ww_Memory_Output(21));

-- Location: IOOBUF_X36_Y0_N19
\Memory_Output[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|myarray_rtl_0|auto_generated|ram_block1a20\,
	devoe => ww_devoe,
	o => ww_Memory_Output(20));

-- Location: IOOBUF_X89_Y20_N62
\Memory_Output[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|myarray_rtl_0|auto_generated|ram_block1a19\,
	devoe => ww_devoe,
	o => ww_Memory_Output(19));

-- Location: IOOBUF_X89_Y15_N56
\Memory_Output[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|myarray_rtl_0|auto_generated|ram_block1a18\,
	devoe => ww_devoe,
	o => ww_Memory_Output(18));

-- Location: IOOBUF_X26_Y0_N59
\Memory_Output[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|myarray_rtl_0|auto_generated|ram_block1a17\,
	devoe => ww_devoe,
	o => ww_Memory_Output(17));

-- Location: IOOBUF_X78_Y0_N19
\Memory_Output[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|myarray_rtl_0|auto_generated|ram_block1a16\,
	devoe => ww_devoe,
	o => ww_Memory_Output(16));

-- Location: IOOBUF_X38_Y81_N53
\Memory_Output[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|myarray_rtl_0|auto_generated|ram_block1a15\,
	devoe => ww_devoe,
	o => ww_Memory_Output(15));

-- Location: IOOBUF_X89_Y8_N56
\Memory_Output[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|myarray_rtl_0|auto_generated|ram_block1a14\,
	devoe => ww_devoe,
	o => ww_Memory_Output(14));

-- Location: IOOBUF_X8_Y0_N36
\Memory_Output[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|myarray_rtl_0|auto_generated|ram_block1a13\,
	devoe => ww_devoe,
	o => ww_Memory_Output(13));

-- Location: IOOBUF_X36_Y81_N2
\Memory_Output[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|myarray_rtl_0|auto_generated|ram_block1a12\,
	devoe => ww_devoe,
	o => ww_Memory_Output(12));

-- Location: IOOBUF_X24_Y0_N36
\Memory_Output[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|myarray_rtl_0|auto_generated|ram_block1a11\,
	devoe => ww_devoe,
	o => ww_Memory_Output(11));

-- Location: IOOBUF_X22_Y0_N19
\Memory_Output[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|myarray_rtl_0|auto_generated|ram_block1a10\,
	devoe => ww_devoe,
	o => ww_Memory_Output(10));

-- Location: IOOBUF_X89_Y20_N45
\Memory_Output[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|myarray_rtl_0|auto_generated|ram_block1a9\,
	devoe => ww_devoe,
	o => ww_Memory_Output(9));

-- Location: IOOBUF_X6_Y0_N2
\Memory_Output[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|myarray_rtl_0|auto_generated|ram_block1a8\,
	devoe => ww_devoe,
	o => ww_Memory_Output(8));

-- Location: IOOBUF_X68_Y0_N19
\Memory_Output[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|myarray_rtl_0|auto_generated|ram_block1a7\,
	devoe => ww_devoe,
	o => ww_Memory_Output(7));

-- Location: IOOBUF_X66_Y0_N59
\Memory_Output[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|myarray_rtl_0|auto_generated|ram_block1a6\,
	devoe => ww_devoe,
	o => ww_Memory_Output(6));

-- Location: IOOBUF_X22_Y0_N36
\Memory_Output[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|myarray_rtl_0|auto_generated|ram_block1a5\,
	devoe => ww_devoe,
	o => ww_Memory_Output(5));

-- Location: IOOBUF_X89_Y21_N39
\Memory_Output[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|myarray_rtl_0|auto_generated|ram_block1a4\,
	devoe => ww_devoe,
	o => ww_Memory_Output(4));

-- Location: IOOBUF_X18_Y0_N42
\Memory_Output[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|myarray_rtl_0|auto_generated|ram_block1a3\,
	devoe => ww_devoe,
	o => ww_Memory_Output(3));

-- Location: IOOBUF_X40_Y81_N2
\Memory_Output[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|myarray_rtl_0|auto_generated|ram_block1a2\,
	devoe => ww_devoe,
	o => ww_Memory_Output(2));

-- Location: IOOBUF_X89_Y20_N96
\Memory_Output[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|myarray_rtl_0|auto_generated|ram_block1a1\,
	devoe => ww_devoe,
	o => ww_Memory_Output(1));

-- Location: IOOBUF_X89_Y20_N79
\Memory_Output[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|myarray_rtl_0|auto_generated|ram_block1a0~portbdataout\,
	devoe => ww_devoe,
	o => ww_Memory_Output(0));

-- Location: IOOBUF_X2_Y81_N76
\Opcode[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Opcode(3));

-- Location: IOOBUF_X78_Y0_N53
\Opcode[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|Y\(2),
	devoe => ww_devoe,
	o => ww_Opcode(2));

-- Location: IOOBUF_X22_Y81_N36
\Opcode[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_Opcode(1));

-- Location: IOOBUF_X4_Y81_N19
\Opcode[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Opcode(0));

-- Location: IOOBUF_X84_Y0_N36
\Register1Number[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|PCout\(3),
	devoe => ww_devoe,
	o => ww_Register1Number(4));

-- Location: IOOBUF_X84_Y0_N53
\Register1Number[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|ALT_INV_PCout\(3),
	devoe => ww_devoe,
	o => ww_Register1Number(3));

-- Location: IOOBUF_X22_Y81_N19
\Register1Number[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Register1Number(2));

-- Location: IOOBUF_X12_Y0_N19
\Register1Number[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|myarray~1_combout\,
	devoe => ww_devoe,
	o => ww_Register1Number(1));

-- Location: IOOBUF_X12_Y0_N2
\Register1Number[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|myarray~2_combout\,
	devoe => ww_devoe,
	o => ww_Register1Number(0));

-- Location: IOOBUF_X14_Y0_N19
\Register2Number[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|myarray~1_combout\,
	devoe => ww_devoe,
	o => ww_Register2Number(4));

-- Location: IOOBUF_X16_Y0_N36
\Register2Number[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|myarray~2_combout\,
	devoe => ww_devoe,
	o => ww_Register2Number(3));

-- Location: IOOBUF_X10_Y81_N76
\Register2Number[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Register2Number(2));

-- Location: IOOBUF_X16_Y0_N53
\Register2Number[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|myarray~3_combout\,
	devoe => ww_devoe,
	o => ww_Register2Number(1));

-- Location: IOOBUF_X6_Y0_N36
\Register2Number[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|PCout\(3),
	devoe => ww_devoe,
	o => ww_Register2Number(0));

-- Location: IOOBUF_X18_Y0_N59
\Register3Number[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|myarray~1_combout\,
	devoe => ww_devoe,
	o => ww_Register3Number(4));

-- Location: IOOBUF_X10_Y0_N59
\Register3Number[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|myarray~2_combout\,
	devoe => ww_devoe,
	o => ww_Register3Number(3));

-- Location: IOOBUF_X6_Y81_N19
\Register3Number[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Register3Number(2));

-- Location: IOOBUF_X80_Y0_N2
\Register3Number[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|Y\(2),
	devoe => ww_devoe,
	o => ww_Register3Number(1));

-- Location: IOOBUF_X10_Y0_N93
\Register3Number[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|PCout\(3),
	devoe => ww_devoe,
	o => ww_Register3Number(0));

-- Location: IOOBUF_X34_Y0_N42
\RegOut1[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|myarray~1064_combout\,
	devoe => ww_devoe,
	o => ww_RegOut1(31));

-- Location: IOOBUF_X34_Y0_N93
\RegOut1[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|myarray~1067_combout\,
	devoe => ww_devoe,
	o => ww_RegOut1(30));

-- Location: IOOBUF_X89_Y4_N62
\RegOut1[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|myarray~1070_combout\,
	devoe => ww_devoe,
	o => ww_RegOut1(29));

-- Location: IOOBUF_X62_Y0_N53
\RegOut1[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|myarray~1073_combout\,
	devoe => ww_devoe,
	o => ww_RegOut1(28));

-- Location: IOOBUF_X64_Y0_N36
\RegOut1[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|myarray~1076_combout\,
	devoe => ww_devoe,
	o => ww_RegOut1(27));

-- Location: IOOBUF_X8_Y0_N19
\RegOut1[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|myarray~1079_combout\,
	devoe => ww_devoe,
	o => ww_RegOut1(26));

-- Location: IOOBUF_X76_Y0_N36
\RegOut1[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|myarray~1082_combout\,
	devoe => ww_devoe,
	o => ww_RegOut1(25));

-- Location: IOOBUF_X64_Y0_N2
\RegOut1[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|myarray~1085_combout\,
	devoe => ww_devoe,
	o => ww_RegOut1(24));

-- Location: IOOBUF_X58_Y0_N76
\RegOut1[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|myarray~1088_combout\,
	devoe => ww_devoe,
	o => ww_RegOut1(23));

-- Location: IOOBUF_X38_Y0_N2
\RegOut1[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|myarray~1091_combout\,
	devoe => ww_devoe,
	o => ww_RegOut1(22));

-- Location: IOOBUF_X20_Y0_N2
\RegOut1[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|myarray~1094_combout\,
	devoe => ww_devoe,
	o => ww_RegOut1(21));

-- Location: IOOBUF_X89_Y8_N22
\RegOut1[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|myarray~1097_combout\,
	devoe => ww_devoe,
	o => ww_RegOut1(20));

-- Location: IOOBUF_X64_Y0_N19
\RegOut1[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|myarray~1100_combout\,
	devoe => ww_devoe,
	o => ww_RegOut1(19));

-- Location: IOOBUF_X76_Y0_N53
\RegOut1[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|myarray~1103_combout\,
	devoe => ww_devoe,
	o => ww_RegOut1(18));

-- Location: IOOBUF_X82_Y0_N76
\RegOut1[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|myarray~1106_combout\,
	devoe => ww_devoe,
	o => ww_RegOut1(17));

-- Location: IOOBUF_X68_Y0_N2
\RegOut1[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|myarray~1109_combout\,
	devoe => ww_devoe,
	o => ww_RegOut1(16));

-- Location: IOOBUF_X89_Y15_N39
\RegOut1[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|myarray~1112_combout\,
	devoe => ww_devoe,
	o => ww_RegOut1(15));

-- Location: IOOBUF_X89_Y25_N22
\RegOut1[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|myarray~1115_combout\,
	devoe => ww_devoe,
	o => ww_RegOut1(14));

-- Location: IOOBUF_X28_Y0_N36
\RegOut1[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|myarray~1118_combout\,
	devoe => ww_devoe,
	o => ww_RegOut1(13));

-- Location: IOOBUF_X56_Y0_N53
\RegOut1[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|myarray~1121_combout\,
	devoe => ww_devoe,
	o => ww_RegOut1(12));

-- Location: IOOBUF_X89_Y16_N39
\RegOut1[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|myarray~1124_combout\,
	devoe => ww_devoe,
	o => ww_RegOut1(11));

-- Location: IOOBUF_X36_Y0_N53
\RegOut1[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|myarray~1127_combout\,
	devoe => ww_devoe,
	o => ww_RegOut1(10));

-- Location: IOOBUF_X66_Y0_N76
\RegOut1[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|myarray~1130_combout\,
	devoe => ww_devoe,
	o => ww_RegOut1(9));

-- Location: IOOBUF_X20_Y0_N36
\RegOut1[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|myarray~1133_combout\,
	devoe => ww_devoe,
	o => ww_RegOut1(8));

-- Location: IOOBUF_X24_Y0_N53
\RegOut1[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|myarray~1136_combout\,
	devoe => ww_devoe,
	o => ww_RegOut1(7));

-- Location: IOOBUF_X58_Y0_N42
\RegOut1[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|myarray~1139_combout\,
	devoe => ww_devoe,
	o => ww_RegOut1(6));

-- Location: IOOBUF_X89_Y21_N5
\RegOut1[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|myarray~1142_combout\,
	devoe => ww_devoe,
	o => ww_RegOut1(5));

-- Location: IOOBUF_X70_Y0_N36
\RegOut1[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|myarray~1145_combout\,
	devoe => ww_devoe,
	o => ww_RegOut1(4));

-- Location: IOOBUF_X30_Y0_N53
\RegOut1[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|myarray~1148_combout\,
	devoe => ww_devoe,
	o => ww_RegOut1(3));

-- Location: IOOBUF_X38_Y81_N2
\RegOut1[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|myarray~1151_combout\,
	devoe => ww_devoe,
	o => ww_RegOut1(2));

-- Location: IOOBUF_X89_Y16_N56
\RegOut1[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|myarray~1154_combout\,
	devoe => ww_devoe,
	o => ww_RegOut1(1));

-- Location: IOOBUF_X64_Y0_N53
\RegOut1[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|myarray~1157_combout\,
	devoe => ww_devoe,
	o => ww_RegOut1(0));

-- Location: IOOBUF_X52_Y0_N53
\RegOut2[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|myarray~1158_combout\,
	devoe => ww_devoe,
	o => ww_RegOut2(31));

-- Location: IOOBUF_X40_Y0_N19
\RegOut2[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|myarray~1159_combout\,
	devoe => ww_devoe,
	o => ww_RegOut2(30));

-- Location: IOOBUF_X36_Y0_N36
\RegOut2[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|myarray~1160_combout\,
	devoe => ww_devoe,
	o => ww_RegOut2(29));

-- Location: IOOBUF_X32_Y0_N36
\RegOut2[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|myarray~1161_combout\,
	devoe => ww_devoe,
	o => ww_RegOut2(28));

-- Location: IOOBUF_X54_Y0_N2
\RegOut2[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|myarray~1162_combout\,
	devoe => ww_devoe,
	o => ww_RegOut2(27));

-- Location: IOOBUF_X50_Y0_N42
\RegOut2[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|myarray~1163_combout\,
	devoe => ww_devoe,
	o => ww_RegOut2(26));

-- Location: IOOBUF_X40_Y0_N53
\RegOut2[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|myarray~1164_combout\,
	devoe => ww_devoe,
	o => ww_RegOut2(25));

-- Location: IOOBUF_X38_Y0_N36
\RegOut2[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|myarray~1165_combout\,
	devoe => ww_devoe,
	o => ww_RegOut2(24));

-- Location: IOOBUF_X52_Y0_N36
\RegOut2[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|myarray~1166_combout\,
	devoe => ww_devoe,
	o => ww_RegOut2(23));

-- Location: IOOBUF_X36_Y0_N2
\RegOut2[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|myarray~1167_combout\,
	devoe => ww_devoe,
	o => ww_RegOut2(22));

-- Location: IOOBUF_X50_Y0_N59
\RegOut2[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|myarray~1168_combout\,
	devoe => ww_devoe,
	o => ww_RegOut2(21));

-- Location: IOOBUF_X40_Y0_N36
\RegOut2[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|myarray~1169_combout\,
	devoe => ww_devoe,
	o => ww_RegOut2(20));

-- Location: IOOBUF_X54_Y0_N53
\RegOut2[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|myarray~1170_combout\,
	devoe => ww_devoe,
	o => ww_RegOut2(19));

-- Location: IOOBUF_X38_Y0_N19
\RegOut2[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|myarray~1171_combout\,
	devoe => ww_devoe,
	o => ww_RegOut2(18));

-- Location: IOOBUF_X89_Y11_N62
\RegOut2[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|myarray~1172_combout\,
	devoe => ww_devoe,
	o => ww_RegOut2(17));

-- Location: IOOBUF_X52_Y0_N19
\RegOut2[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|myarray~1173_combout\,
	devoe => ww_devoe,
	o => ww_RegOut2(16));

-- Location: IOOBUF_X89_Y13_N5
\RegOut2[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|myarray~1174_combout\,
	devoe => ww_devoe,
	o => ww_RegOut2(15));

-- Location: IOOBUF_X52_Y0_N2
\RegOut2[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|myarray~1175_combout\,
	devoe => ww_devoe,
	o => ww_RegOut2(14));

-- Location: IOOBUF_X40_Y0_N2
\RegOut2[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|myarray~1176_combout\,
	devoe => ww_devoe,
	o => ww_RegOut2(13));

-- Location: IOOBUF_X50_Y0_N76
\RegOut2[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|myarray~1177_combout\,
	devoe => ww_devoe,
	o => ww_RegOut2(12));

-- Location: IOOBUF_X89_Y13_N56
\RegOut2[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|myarray~1178_combout\,
	devoe => ww_devoe,
	o => ww_RegOut2(11));

-- Location: IOOBUF_X50_Y0_N93
\RegOut2[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|myarray~1179_combout\,
	devoe => ww_devoe,
	o => ww_RegOut2(10));

-- Location: IOOBUF_X24_Y0_N19
\RegOut2[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|myarray~1180_combout\,
	devoe => ww_devoe,
	o => ww_RegOut2(9));

-- Location: IOOBUF_X56_Y0_N36
\RegOut2[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|myarray~1181_combout\,
	devoe => ww_devoe,
	o => ww_RegOut2(8));

-- Location: IOOBUF_X54_Y0_N36
\RegOut2[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|myarray~1182_combout\,
	devoe => ww_devoe,
	o => ww_RegOut2(7));

-- Location: IOOBUF_X89_Y13_N39
\RegOut2[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|myarray~1183_combout\,
	devoe => ww_devoe,
	o => ww_RegOut2(6));

-- Location: IOOBUF_X89_Y13_N22
\RegOut2[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|myarray~1184_combout\,
	devoe => ww_devoe,
	o => ww_RegOut2(5));

-- Location: IOOBUF_X56_Y0_N19
\RegOut2[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|myarray~1185_combout\,
	devoe => ww_devoe,
	o => ww_RegOut2(4));

-- Location: IOOBUF_X60_Y0_N19
\RegOut2[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|myarray~1186_combout\,
	devoe => ww_devoe,
	o => ww_RegOut2(3));

-- Location: IOOBUF_X22_Y0_N53
\RegOut2[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|myarray~1187_combout\,
	devoe => ww_devoe,
	o => ww_RegOut2(2));

-- Location: IOOBUF_X89_Y15_N22
\RegOut2[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|myarray~1188_combout\,
	devoe => ww_devoe,
	o => ww_RegOut2(1));

-- Location: IOOBUF_X89_Y16_N22
\RegOut2[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|myarray~1189_combout\,
	devoe => ww_devoe,
	o => ww_RegOut2(0));

-- Location: IOIBUF_X89_Y23_N21
\clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G10
\clk~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \clk~input_o\,
	outclk => \clk~inputCLKENA0_outclk\);

-- Location: MLABCELL_X52_Y10_N0
\inst|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add0~5_sumout\ = SUM(( \inst8|PCout\(2) ) + ( VCC ) + ( !VCC ))
-- \inst|Add0~6\ = CARRY(( \inst8|PCout\(2) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst8|ALT_INV_PCout\(2),
	cin => GND,
	sumout => \inst|Add0~5_sumout\,
	cout => \inst|Add0~6\);

-- Location: FF_X52_Y10_N2
\inst8|PCout[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst|Add0~5_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|PCout\(2));

-- Location: MLABCELL_X52_Y10_N3
\inst|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add0~1_sumout\ = SUM(( \inst8|PCout\(3) ) + ( GND ) + ( \inst|Add0~6\ ))
-- \inst|Add0~2\ = CARRY(( \inst8|PCout\(3) ) + ( GND ) + ( \inst|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst8|ALT_INV_PCout\(3),
	cin => \inst|Add0~6\,
	sumout => \inst|Add0~1_sumout\,
	cout => \inst|Add0~2\);

-- Location: FF_X52_Y10_N5
\inst8|PCout[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst|Add0~1_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|PCout\(3));

-- Location: LABCELL_X50_Y10_N42
\inst3|Y[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Y\(2) = ( !\inst8|PCout\(3) & ( \inst8|PCout\(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst8|ALT_INV_PCout\(2),
	dataf => \inst8|ALT_INV_PCout\(3),
	combout => \inst3|Y\(2));

-- Location: LABCELL_X50_Y10_N54
\inst5|myarray~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|myarray~0_combout\ = LCELL(( \inst8|PCout\(3) & ( \inst8|PCout\(2) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst8|ALT_INV_PCout\(2),
	dataf => \inst8|ALT_INV_PCout\(3),
	combout => \inst5|myarray~0_combout\);

-- Location: LABCELL_X50_Y10_N48
\inst5|myarray~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|myarray~1_combout\ = ( \inst8|PCout\(3) & ( !\inst8|PCout\(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|ALT_INV_PCout\(2),
	dataf => \inst8|ALT_INV_PCout\(3),
	combout => \inst5|myarray~1_combout\);

-- Location: FF_X51_Y9_N11
\inst9|myarray~613\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_myarray~0_combout\,
	asdata => \inst13|R[31]~0_combout\,
	sload => VCC,
	ena => \inst5|myarray~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|myarray~613_q\);

-- Location: LABCELL_X51_Y9_N9
\inst9|myarray~1062\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|myarray~1062_combout\ = ( \inst9|myarray~613_q\ & ( !\inst5|myarray~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \inst9|ALT_INV_myarray~613_q\,
	dataf => \inst5|ALT_INV_myarray~1_combout\,
	combout => \inst9|myarray~1062_combout\);

-- Location: FF_X50_Y9_N26
\inst9|myarray~389\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_myarray~0_combout\,
	asdata => \inst13|R[31]~0_combout\,
	sload => VCC,
	ena => \inst3|Y\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|myarray~389_q\);

-- Location: FF_X50_Y9_N2
\inst9|myarray~357\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_myarray~0_combout\,
	asdata => \inst13|R[31]~0_combout\,
	sload => VCC,
	ena => \inst5|myarray~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|myarray~357_q\);

-- Location: LABCELL_X51_Y9_N27
\inst9|myarray~1063\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|myarray~1063_combout\ = (!\inst8|PCout\(3) & (((\inst9|myarray~357_q\)))) # (\inst8|PCout\(3) & ((!\inst8|PCout\(2) & (\inst9|myarray~389_q\)) # (\inst8|PCout\(2) & ((\inst9|myarray~357_q\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000011011111000100001101111100010000110111110001000011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|ALT_INV_myarray~389_q\,
	datab => \inst8|ALT_INV_PCout\(3),
	datac => \inst8|ALT_INV_PCout\(2),
	datad => \inst9|ALT_INV_myarray~357_q\,
	combout => \inst9|myarray~1063_combout\);

-- Location: LABCELL_X51_Y9_N0
\inst5|myarray~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|myarray~3_combout\ = (!\inst8|PCout\(2) & !\inst8|PCout\(3))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000000110000001100000011000000110000001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst8|ALT_INV_PCout\(2),
	datac => \inst8|ALT_INV_PCout\(3),
	combout => \inst5|myarray~3_combout\);

-- Location: FF_X50_Y9_N7
\inst9|myarray~325\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_myarray~0_combout\,
	asdata => \inst13|R[31]~0_combout\,
	sload => VCC,
	ena => \inst5|myarray~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|myarray~325_q\);

-- Location: LABCELL_X51_Y9_N18
\inst9|myarray~1158\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|myarray~1158_combout\ = ( \inst8|PCout\(2) & ( \inst9|myarray~613_q\ & ( (!\inst8|PCout\(3) & ((\inst9|myarray~325_q\))) # (\inst8|PCout\(3) & (\inst9|myarray~357_q\)) ) ) ) # ( !\inst8|PCout\(2) & ( \inst9|myarray~613_q\ & ( (\inst8|PCout\(3)) # 
-- (\inst9|myarray~389_q\) ) ) ) # ( \inst8|PCout\(2) & ( !\inst9|myarray~613_q\ & ( (!\inst8|PCout\(3) & ((\inst9|myarray~325_q\))) # (\inst8|PCout\(3) & (\inst9|myarray~357_q\)) ) ) ) # ( !\inst8|PCout\(2) & ( !\inst9|myarray~613_q\ & ( 
-- (\inst9|myarray~389_q\ & !\inst8|PCout\(3)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000001100110101010100001111111111110011001101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|ALT_INV_myarray~357_q\,
	datab => \inst9|ALT_INV_myarray~325_q\,
	datac => \inst9|ALT_INV_myarray~389_q\,
	datad => \inst8|ALT_INV_PCout\(3),
	datae => \inst8|ALT_INV_PCout\(2),
	dataf => \inst9|ALT_INV_myarray~613_q\,
	combout => \inst9|myarray~1158_combout\);

-- Location: FF_X46_Y10_N55
\inst9|myarray~388\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_myarray~0_combout\,
	asdata => \inst13|R[30]~1_combout\,
	sload => VCC,
	ena => \inst3|Y\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|myarray~388_q\);

-- Location: FF_X47_Y10_N19
\inst9|myarray~324\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_myarray~0_combout\,
	asdata => \inst13|R[30]~1_combout\,
	sload => VCC,
	ena => \inst5|myarray~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|myarray~324_q\);

-- Location: FF_X46_Y10_N44
\inst9|myarray~356\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_myarray~0_combout\,
	asdata => \inst13|R[30]~1_combout\,
	sload => VCC,
	ena => \inst5|myarray~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|myarray~356_q\);

-- Location: LABCELL_X46_Y10_N15
\inst9|myarray~1159\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|myarray~1159_combout\ = ( \inst9|myarray~356_q\ & ( \inst9|myarray~612_q\ & ( ((!\inst8|PCout\(2) & (\inst9|myarray~388_q\)) # (\inst8|PCout\(2) & ((\inst9|myarray~324_q\)))) # (\inst8|PCout\(3)) ) ) ) # ( !\inst9|myarray~356_q\ & ( 
-- \inst9|myarray~612_q\ & ( (!\inst8|PCout\(2) & (((\inst8|PCout\(3))) # (\inst9|myarray~388_q\))) # (\inst8|PCout\(2) & (((!\inst8|PCout\(3) & \inst9|myarray~324_q\)))) ) ) ) # ( \inst9|myarray~356_q\ & ( !\inst9|myarray~612_q\ & ( (!\inst8|PCout\(2) & 
-- (\inst9|myarray~388_q\ & (!\inst8|PCout\(3)))) # (\inst8|PCout\(2) & (((\inst9|myarray~324_q\) # (\inst8|PCout\(3))))) ) ) ) # ( !\inst9|myarray~356_q\ & ( !\inst9|myarray~612_q\ & ( (!\inst8|PCout\(3) & ((!\inst8|PCout\(2) & (\inst9|myarray~388_q\)) # 
-- (\inst8|PCout\(2) & ((\inst9|myarray~324_q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001110000010000110111001101001100011111000100111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|ALT_INV_myarray~388_q\,
	datab => \inst8|ALT_INV_PCout\(2),
	datac => \inst8|ALT_INV_PCout\(3),
	datad => \inst9|ALT_INV_myarray~324_q\,
	datae => \inst9|ALT_INV_myarray~356_q\,
	dataf => \inst9|ALT_INV_myarray~612_q\,
	combout => \inst9|myarray~1159_combout\);

-- Location: LABCELL_X46_Y10_N54
\inst9|myarray~1066\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|myarray~1066_combout\ = ( \inst9|myarray~388_q\ & ( \inst9|myarray~356_q\ ) ) # ( !\inst9|myarray~388_q\ & ( \inst9|myarray~356_q\ & ( (!\inst8|PCout\(3)) # (\inst8|PCout\(2)) ) ) ) # ( \inst9|myarray~388_q\ & ( !\inst9|myarray~356_q\ & ( 
-- (!\inst8|PCout\(2) & \inst8|PCout\(3)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000100010001011011101110111011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|ALT_INV_PCout\(2),
	datab => \inst8|ALT_INV_PCout\(3),
	datae => \inst9|ALT_INV_myarray~388_q\,
	dataf => \inst9|ALT_INV_myarray~356_q\,
	combout => \inst9|myarray~1066_combout\);

-- Location: FF_X50_Y13_N50
\inst9|myarray~611\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_myarray~0_combout\,
	asdata => \inst13|R[29]~2_combout\,
	sload => VCC,
	ena => \inst5|myarray~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|myarray~611_q\);

-- Location: LABCELL_X51_Y13_N21
\inst9|myarray~1068\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|myarray~1068_combout\ = ( !\inst5|myarray~1_combout\ & ( \inst9|myarray~611_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst9|ALT_INV_myarray~611_q\,
	dataf => \inst5|ALT_INV_myarray~1_combout\,
	combout => \inst9|myarray~1068_combout\);

-- Location: FF_X50_Y13_N31
\inst9|myarray~355\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_myarray~0_combout\,
	asdata => \inst13|R[29]~2_combout\,
	sload => VCC,
	ena => \inst5|myarray~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|myarray~355_q\);

-- Location: FF_X51_Y13_N44
\inst9|myarray~387\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_myarray~0_combout\,
	asdata => \inst13|R[29]~2_combout\,
	sload => VCC,
	ena => \inst3|Y\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|myarray~387_q\);

-- Location: LABCELL_X51_Y13_N57
\inst9|myarray~1069\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|myarray~1069_combout\ = ( \inst8|PCout\(3) & ( (!\inst8|PCout\(2) & ((\inst9|myarray~387_q\))) # (\inst8|PCout\(2) & (\inst9|myarray~355_q\)) ) ) # ( !\inst8|PCout\(3) & ( \inst9|myarray~355_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000111010001110101010101010101010001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|ALT_INV_myarray~355_q\,
	datab => \inst8|ALT_INV_PCout\(2),
	datac => \inst9|ALT_INV_myarray~387_q\,
	datae => \inst8|ALT_INV_PCout\(3),
	combout => \inst9|myarray~1069_combout\);

-- Location: FF_X50_Y9_N29
\inst9|myarray~386\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_myarray~0_combout\,
	asdata => \inst13|R[28]~3_combout\,
	sload => VCC,
	ena => \inst3|Y\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|myarray~386_q\);

-- Location: FF_X50_Y9_N32
\inst9|myarray~322\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_myarray~0_combout\,
	asdata => \inst13|R[28]~3_combout\,
	sload => VCC,
	ena => \inst5|myarray~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|myarray~322_q\);

-- Location: FF_X50_Y9_N14
\inst9|myarray~354\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_myarray~0_combout\,
	asdata => \inst13|R[28]~3_combout\,
	sload => VCC,
	ena => \inst5|myarray~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|myarray~354_q\);

-- Location: LABCELL_X50_Y9_N30
\inst9|myarray~1161\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|myarray~1161_combout\ = ( \inst9|myarray~322_q\ & ( \inst9|myarray~354_q\ & ( ((!\inst8|PCout\(3) & (\inst9|myarray~386_q\)) # (\inst8|PCout\(3) & ((\inst9|myarray~610_q\)))) # (\inst8|PCout\(2)) ) ) ) # ( !\inst9|myarray~322_q\ & ( 
-- \inst9|myarray~354_q\ & ( (!\inst8|PCout\(2) & ((!\inst8|PCout\(3) & (\inst9|myarray~386_q\)) # (\inst8|PCout\(3) & ((\inst9|myarray~610_q\))))) # (\inst8|PCout\(2) & (((\inst8|PCout\(3))))) ) ) ) # ( \inst9|myarray~322_q\ & ( !\inst9|myarray~354_q\ & ( 
-- (!\inst8|PCout\(2) & ((!\inst8|PCout\(3) & (\inst9|myarray~386_q\)) # (\inst8|PCout\(3) & ((\inst9|myarray~610_q\))))) # (\inst8|PCout\(2) & (((!\inst8|PCout\(3))))) ) ) ) # ( !\inst9|myarray~322_q\ & ( !\inst9|myarray~354_q\ & ( (!\inst8|PCout\(2) & 
-- ((!\inst8|PCout\(3) & (\inst9|myarray~386_q\)) # (\inst8|PCout\(3) & ((\inst9|myarray~610_q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000110000010111110011000001010000001111110101111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|ALT_INV_myarray~386_q\,
	datab => \inst9|ALT_INV_myarray~610_q\,
	datac => \inst8|ALT_INV_PCout\(2),
	datad => \inst8|ALT_INV_PCout\(3),
	datae => \inst9|ALT_INV_myarray~322_q\,
	dataf => \inst9|ALT_INV_myarray~354_q\,
	combout => \inst9|myarray~1161_combout\);

-- Location: LABCELL_X50_Y9_N27
\inst9|myarray~1072\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|myarray~1072_combout\ = ( \inst9|myarray~354_q\ & ( (!\inst8|PCout\(3)) # ((\inst9|myarray~386_q\) # (\inst8|PCout\(2))) ) ) # ( !\inst9|myarray~354_q\ & ( (\inst8|PCout\(3) & (!\inst8|PCout\(2) & \inst9|myarray~386_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010000000000000101000010101111111111111010111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|ALT_INV_PCout\(3),
	datac => \inst8|ALT_INV_PCout\(2),
	datad => \inst9|ALT_INV_myarray~386_q\,
	dataf => \inst9|ALT_INV_myarray~354_q\,
	combout => \inst9|myarray~1072_combout\);

-- Location: FF_X51_Y9_N44
\inst9|myarray~609\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_myarray~0_combout\,
	asdata => \inst13|R[27]~4_combout\,
	sload => VCC,
	ena => \inst5|myarray~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|myarray~609_q\);

-- Location: LABCELL_X50_Y10_N45
\inst9|myarray~1074\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|myarray~1074_combout\ = ( !\inst5|myarray~1_combout\ & ( \inst9|myarray~609_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|ALT_INV_myarray~609_q\,
	dataf => \inst5|ALT_INV_myarray~1_combout\,
	combout => \inst9|myarray~1074_combout\);

-- Location: FF_X50_Y9_N43
\inst9|myarray~385\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_myarray~0_combout\,
	asdata => \inst13|R[27]~4_combout\,
	sload => VCC,
	ena => \inst3|Y\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|myarray~385_q\);

-- Location: FF_X50_Y9_N20
\inst9|myarray~321\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_myarray~0_combout\,
	asdata => \inst13|R[27]~4_combout\,
	sload => VCC,
	ena => \inst5|myarray~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|myarray~321_q\);

-- Location: LABCELL_X50_Y9_N18
\inst9|myarray~1162\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|myarray~1162_combout\ = ( \inst9|myarray~321_q\ & ( \inst9|myarray~353_q\ & ( ((!\inst8|PCout\(3) & ((\inst9|myarray~385_q\))) # (\inst8|PCout\(3) & (\inst9|myarray~609_q\))) # (\inst8|PCout\(2)) ) ) ) # ( !\inst9|myarray~321_q\ & ( 
-- \inst9|myarray~353_q\ & ( (!\inst8|PCout\(2) & ((!\inst8|PCout\(3) & ((\inst9|myarray~385_q\))) # (\inst8|PCout\(3) & (\inst9|myarray~609_q\)))) # (\inst8|PCout\(2) & (((\inst8|PCout\(3))))) ) ) ) # ( \inst9|myarray~321_q\ & ( !\inst9|myarray~353_q\ & ( 
-- (!\inst8|PCout\(2) & ((!\inst8|PCout\(3) & ((\inst9|myarray~385_q\))) # (\inst8|PCout\(3) & (\inst9|myarray~609_q\)))) # (\inst8|PCout\(2) & (((!\inst8|PCout\(3))))) ) ) ) # ( !\inst9|myarray~321_q\ & ( !\inst9|myarray~353_q\ & ( (!\inst8|PCout\(2) & 
-- ((!\inst8|PCout\(3) & ((\inst9|myarray~385_q\))) # (\inst8|PCout\(3) & (\inst9|myarray~609_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000001010000001111110101000000110000010111110011111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|ALT_INV_myarray~609_q\,
	datab => \inst9|ALT_INV_myarray~385_q\,
	datac => \inst8|ALT_INV_PCout\(2),
	datad => \inst8|ALT_INV_PCout\(3),
	datae => \inst9|ALT_INV_myarray~321_q\,
	dataf => \inst9|ALT_INV_myarray~353_q\,
	combout => \inst9|myarray~1162_combout\);

-- Location: FF_X48_Y10_N23
\inst9|myarray~384\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_myarray~0_combout\,
	asdata => \inst13|R[26]~5_combout\,
	sload => VCC,
	ena => \inst3|Y\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|myarray~384_q\);

-- Location: FF_X48_Y10_N14
\inst9|myarray~352\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_myarray~0_combout\,
	asdata => \inst13|R[26]~5_combout\,
	sload => VCC,
	ena => \inst5|myarray~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|myarray~352_q\);

-- Location: MLABCELL_X47_Y10_N21
\inst9|myarray~1078\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|myarray~1078_combout\ = ( \inst9|myarray~352_q\ & ( ((!\inst8|PCout\(3)) # (\inst8|PCout\(2))) # (\inst9|myarray~384_q\) ) ) # ( !\inst9|myarray~352_q\ & ( (\inst9|myarray~384_q\ & (\inst8|PCout\(3) & !\inst8|PCout\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000000111100111111111100000011000000001111001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst9|ALT_INV_myarray~384_q\,
	datac => \inst8|ALT_INV_PCout\(3),
	datad => \inst8|ALT_INV_PCout\(2),
	datae => \inst9|ALT_INV_myarray~352_q\,
	combout => \inst9|myarray~1078_combout\);

-- Location: FF_X48_Y10_N29
\inst9|myarray~320\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_myarray~0_combout\,
	asdata => \inst13|R[26]~5_combout\,
	sload => VCC,
	ena => \inst5|myarray~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|myarray~320_q\);

-- Location: MLABCELL_X47_Y10_N57
\inst9|myarray~1163\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|myarray~1163_combout\ = ( \inst9|myarray~352_q\ & ( \inst9|myarray~608_q\ & ( ((!\inst8|PCout\(2) & ((\inst9|myarray~384_q\))) # (\inst8|PCout\(2) & (\inst9|myarray~320_q\))) # (\inst8|PCout\(3)) ) ) ) # ( !\inst9|myarray~352_q\ & ( 
-- \inst9|myarray~608_q\ & ( (!\inst8|PCout\(2) & (((\inst9|myarray~384_q\) # (\inst8|PCout\(3))))) # (\inst8|PCout\(2) & (\inst9|myarray~320_q\ & (!\inst8|PCout\(3)))) ) ) ) # ( \inst9|myarray~352_q\ & ( !\inst9|myarray~608_q\ & ( (!\inst8|PCout\(2) & 
-- (((!\inst8|PCout\(3) & \inst9|myarray~384_q\)))) # (\inst8|PCout\(2) & (((\inst8|PCout\(3))) # (\inst9|myarray~320_q\))) ) ) ) # ( !\inst9|myarray~352_q\ & ( !\inst9|myarray~608_q\ & ( (!\inst8|PCout\(3) & ((!\inst8|PCout\(2) & ((\inst9|myarray~384_q\))) 
-- # (\inst8|PCout\(2) & (\inst9|myarray~320_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000010110000000101011011010100011010101110100001111110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|ALT_INV_PCout\(2),
	datab => \inst9|ALT_INV_myarray~320_q\,
	datac => \inst8|ALT_INV_PCout\(3),
	datad => \inst9|ALT_INV_myarray~384_q\,
	datae => \inst9|ALT_INV_myarray~352_q\,
	dataf => \inst9|ALT_INV_myarray~608_q\,
	combout => \inst9|myarray~1163_combout\);

-- Location: FF_X48_Y10_N56
\inst9|myarray~351\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_myarray~0_combout\,
	asdata => \inst13|R[25]~6_combout\,
	sload => VCC,
	ena => \inst5|myarray~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|myarray~351_q\);

-- Location: FF_X48_Y10_N8
\inst9|myarray~383\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_myarray~0_combout\,
	asdata => \inst13|R[25]~6_combout\,
	sload => VCC,
	ena => \inst3|Y\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|myarray~383_q\);

-- Location: MLABCELL_X47_Y10_N6
\inst9|myarray~1081\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|myarray~1081_combout\ = ( \inst9|myarray~383_q\ & ( \inst8|PCout\(3) & ( (!\inst8|PCout\(2)) # (\inst9|myarray~351_q\) ) ) ) # ( !\inst9|myarray~383_q\ & ( \inst8|PCout\(3) & ( (\inst9|myarray~351_q\ & \inst8|PCout\(2)) ) ) ) # ( 
-- \inst9|myarray~383_q\ & ( !\inst8|PCout\(3) & ( \inst9|myarray~351_q\ ) ) ) # ( !\inst9|myarray~383_q\ & ( !\inst8|PCout\(3) & ( \inst9|myarray~351_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100000011000000111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst9|ALT_INV_myarray~351_q\,
	datac => \inst8|ALT_INV_PCout\(2),
	datae => \inst9|ALT_INV_myarray~383_q\,
	dataf => \inst8|ALT_INV_PCout\(3),
	combout => \inst9|myarray~1081_combout\);

-- Location: FF_X48_Y10_N50
\inst9|myarray~319\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_myarray~0_combout\,
	asdata => \inst13|R[25]~6_combout\,
	sload => VCC,
	ena => \inst5|myarray~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|myarray~319_q\);

-- Location: MLABCELL_X47_Y10_N36
\inst9|myarray~1164\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|myarray~1164_combout\ = ( \inst9|myarray~607_q\ & ( \inst9|myarray~351_q\ & ( ((!\inst8|PCout\(2) & (\inst9|myarray~383_q\)) # (\inst8|PCout\(2) & ((\inst9|myarray~319_q\)))) # (\inst8|PCout\(3)) ) ) ) # ( !\inst9|myarray~607_q\ & ( 
-- \inst9|myarray~351_q\ & ( (!\inst8|PCout\(2) & (\inst9|myarray~383_q\ & ((!\inst8|PCout\(3))))) # (\inst8|PCout\(2) & (((\inst8|PCout\(3)) # (\inst9|myarray~319_q\)))) ) ) ) # ( \inst9|myarray~607_q\ & ( !\inst9|myarray~351_q\ & ( (!\inst8|PCout\(2) & 
-- (((\inst8|PCout\(3))) # (\inst9|myarray~383_q\))) # (\inst8|PCout\(2) & (((\inst9|myarray~319_q\ & !\inst8|PCout\(3))))) ) ) ) # ( !\inst9|myarray~607_q\ & ( !\inst9|myarray~351_q\ & ( (!\inst8|PCout\(3) & ((!\inst8|PCout\(2) & (\inst9|myarray~383_q\)) # 
-- (\inst8|PCout\(2) & ((\inst9|myarray~319_q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001100000000010100111111000001010011000011110101001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|ALT_INV_myarray~383_q\,
	datab => \inst9|ALT_INV_myarray~319_q\,
	datac => \inst8|ALT_INV_PCout\(2),
	datad => \inst8|ALT_INV_PCout\(3),
	datae => \inst9|ALT_INV_myarray~607_q\,
	dataf => \inst9|ALT_INV_myarray~351_q\,
	combout => \inst9|myarray~1164_combout\);

-- Location: FF_X48_Y10_N38
\inst9|myarray~350\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_myarray~0_combout\,
	asdata => \inst13|R[24]~7_combout\,
	sload => VCC,
	ena => \inst5|myarray~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|myarray~350_q\);

-- Location: FF_X48_Y10_N20
\inst9|myarray~382\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_myarray~0_combout\,
	asdata => \inst13|R[24]~7_combout\,
	sload => VCC,
	ena => \inst3|Y\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|myarray~382_q\);

-- Location: MLABCELL_X47_Y10_N48
\inst9|myarray~1084\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|myarray~1084_combout\ = ( \inst8|PCout\(2) & ( \inst8|PCout\(3) & ( \inst9|myarray~350_q\ ) ) ) # ( !\inst8|PCout\(2) & ( \inst8|PCout\(3) & ( \inst9|myarray~382_q\ ) ) ) # ( \inst8|PCout\(2) & ( !\inst8|PCout\(3) & ( \inst9|myarray~350_q\ ) ) ) # 
-- ( !\inst8|PCout\(2) & ( !\inst8|PCout\(3) & ( \inst9|myarray~350_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100000000111111110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst9|ALT_INV_myarray~350_q\,
	datad => \inst9|ALT_INV_myarray~382_q\,
	datae => \inst8|ALT_INV_PCout\(2),
	dataf => \inst8|ALT_INV_PCout\(3),
	combout => \inst9|myarray~1084_combout\);

-- Location: FF_X48_Y10_N53
\inst9|myarray~318\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_myarray~0_combout\,
	asdata => \inst13|R[24]~7_combout\,
	sload => VCC,
	ena => \inst5|myarray~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|myarray~318_q\);

-- Location: MLABCELL_X47_Y10_N12
\inst9|myarray~1165\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|myarray~1165_combout\ = ( \inst9|myarray~606_q\ & ( \inst8|PCout\(3) & ( (!\inst8|PCout\(2)) # (\inst9|myarray~350_q\) ) ) ) # ( !\inst9|myarray~606_q\ & ( \inst8|PCout\(3) & ( (\inst9|myarray~350_q\ & \inst8|PCout\(2)) ) ) ) # ( 
-- \inst9|myarray~606_q\ & ( !\inst8|PCout\(3) & ( (!\inst8|PCout\(2) & (\inst9|myarray~382_q\)) # (\inst8|PCout\(2) & ((\inst9|myarray~318_q\))) ) ) ) # ( !\inst9|myarray~606_q\ & ( !\inst8|PCout\(3) & ( (!\inst8|PCout\(2) & (\inst9|myarray~382_q\)) # 
-- (\inst8|PCout\(2) & ((\inst9|myarray~318_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001011111010100000101111100000011000000111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|ALT_INV_myarray~382_q\,
	datab => \inst9|ALT_INV_myarray~350_q\,
	datac => \inst8|ALT_INV_PCout\(2),
	datad => \inst9|ALT_INV_myarray~318_q\,
	datae => \inst9|ALT_INV_myarray~606_q\,
	dataf => \inst8|ALT_INV_PCout\(3),
	combout => \inst9|myarray~1165_combout\);

-- Location: FF_X48_Y10_N11
\inst9|myarray~381\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_myarray~0_combout\,
	asdata => \inst13|R[23]~8_combout\,
	sload => VCC,
	ena => \inst3|Y\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|myarray~381_q\);

-- Location: FF_X48_Y10_N35
\inst9|myarray~349\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_myarray~0_combout\,
	asdata => \inst13|R[23]~8_combout\,
	sload => VCC,
	ena => \inst5|myarray~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|myarray~349_q\);

-- Location: LABCELL_X48_Y10_N9
\inst9|myarray~1087\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|myarray~1087_combout\ = ( \inst9|myarray~349_q\ & ( ((!\inst8|PCout\(3)) # (\inst9|myarray~381_q\)) # (\inst8|PCout\(2)) ) ) # ( !\inst9|myarray~349_q\ & ( (!\inst8|PCout\(2) & (\inst8|PCout\(3) & \inst9|myarray~381_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001010000000000000101011110101111111111111010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|ALT_INV_PCout\(2),
	datac => \inst8|ALT_INV_PCout\(3),
	datad => \inst9|ALT_INV_myarray~381_q\,
	dataf => \inst9|ALT_INV_myarray~349_q\,
	combout => \inst9|myarray~1087_combout\);

-- Location: FF_X48_Y10_N2
\inst9|myarray~317\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_myarray~0_combout\,
	asdata => \inst13|R[23]~8_combout\,
	sload => VCC,
	ena => \inst5|myarray~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|myarray~317_q\);

-- Location: LABCELL_X48_Y10_N21
\inst9|myarray~1166\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|myarray~1166_combout\ = ( \inst9|myarray~381_q\ & ( \inst9|myarray~317_q\ & ( (!\inst8|PCout\(3)) # ((!\inst8|PCout\(2) & ((\inst9|myarray~605_q\))) # (\inst8|PCout\(2) & (\inst9|myarray~349_q\))) ) ) ) # ( !\inst9|myarray~381_q\ & ( 
-- \inst9|myarray~317_q\ & ( (!\inst8|PCout\(2) & (((\inst8|PCout\(3) & \inst9|myarray~605_q\)))) # (\inst8|PCout\(2) & (((!\inst8|PCout\(3))) # (\inst9|myarray~349_q\))) ) ) ) # ( \inst9|myarray~381_q\ & ( !\inst9|myarray~317_q\ & ( (!\inst8|PCout\(2) & 
-- (((!\inst8|PCout\(3)) # (\inst9|myarray~605_q\)))) # (\inst8|PCout\(2) & (\inst9|myarray~349_q\ & (\inst8|PCout\(3)))) ) ) ) # ( !\inst9|myarray~381_q\ & ( !\inst9|myarray~317_q\ & ( (\inst8|PCout\(3) & ((!\inst8|PCout\(2) & ((\inst9|myarray~605_q\))) # 
-- (\inst8|PCout\(2) & (\inst9|myarray~349_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100001101110000011100110100110001001111011111000111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|ALT_INV_myarray~349_q\,
	datab => \inst8|ALT_INV_PCout\(2),
	datac => \inst8|ALT_INV_PCout\(3),
	datad => \inst9|ALT_INV_myarray~605_q\,
	datae => \inst9|ALT_INV_myarray~381_q\,
	dataf => \inst9|ALT_INV_myarray~317_q\,
	combout => \inst9|myarray~1166_combout\);

-- Location: FF_X46_Y10_N32
\inst9|myarray~348\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_myarray~0_combout\,
	asdata => \inst13|R[22]~9_combout\,
	sload => VCC,
	ena => \inst5|myarray~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|myarray~348_q\);

-- Location: FF_X46_Y10_N25
\inst9|myarray~380\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_myarray~0_combout\,
	asdata => \inst13|R[22]~9_combout\,
	sload => VCC,
	ena => \inst3|Y\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|myarray~380_q\);

-- Location: LABCELL_X46_Y10_N24
\inst9|myarray~1090\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|myarray~1090_combout\ = ( \inst9|myarray~380_q\ & ( \inst8|PCout\(2) & ( \inst9|myarray~348_q\ ) ) ) # ( !\inst9|myarray~380_q\ & ( \inst8|PCout\(2) & ( \inst9|myarray~348_q\ ) ) ) # ( \inst9|myarray~380_q\ & ( !\inst8|PCout\(2) & ( 
-- (\inst8|PCout\(3)) # (\inst9|myarray~348_q\) ) ) ) # ( !\inst9|myarray~380_q\ & ( !\inst8|PCout\(2) & ( (\inst9|myarray~348_q\ & !\inst8|PCout\(3)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100111111111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst9|ALT_INV_myarray~348_q\,
	datad => \inst8|ALT_INV_PCout\(3),
	datae => \inst9|ALT_INV_myarray~380_q\,
	dataf => \inst8|ALT_INV_PCout\(2),
	combout => \inst9|myarray~1090_combout\);

-- Location: FF_X47_Y10_N44
\inst9|myarray~316\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_myarray~0_combout\,
	asdata => \inst13|R[22]~9_combout\,
	sload => VCC,
	ena => \inst5|myarray~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|myarray~316_q\);

-- Location: MLABCELL_X47_Y10_N42
\inst9|myarray~1167\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|myarray~1167_combout\ = ( \inst9|myarray~316_q\ & ( \inst9|myarray~348_q\ & ( ((!\inst8|PCout\(3) & ((\inst9|myarray~380_q\))) # (\inst8|PCout\(3) & (\inst9|myarray~604_q\))) # (\inst8|PCout\(2)) ) ) ) # ( !\inst9|myarray~316_q\ & ( 
-- \inst9|myarray~348_q\ & ( (!\inst8|PCout\(2) & ((!\inst8|PCout\(3) & ((\inst9|myarray~380_q\))) # (\inst8|PCout\(3) & (\inst9|myarray~604_q\)))) # (\inst8|PCout\(2) & (((\inst8|PCout\(3))))) ) ) ) # ( \inst9|myarray~316_q\ & ( !\inst9|myarray~348_q\ & ( 
-- (!\inst8|PCout\(2) & ((!\inst8|PCout\(3) & ((\inst9|myarray~380_q\))) # (\inst8|PCout\(3) & (\inst9|myarray~604_q\)))) # (\inst8|PCout\(2) & (((!\inst8|PCout\(3))))) ) ) ) # ( !\inst9|myarray~316_q\ & ( !\inst9|myarray~348_q\ & ( (!\inst8|PCout\(2) & 
-- ((!\inst8|PCout\(3) & ((\inst9|myarray~380_q\))) # (\inst8|PCout\(3) & (\inst9|myarray~604_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000001010000001111110101000000110000010111110011111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|ALT_INV_myarray~604_q\,
	datab => \inst9|ALT_INV_myarray~380_q\,
	datac => \inst8|ALT_INV_PCout\(2),
	datad => \inst8|ALT_INV_PCout\(3),
	datae => \inst9|ALT_INV_myarray~316_q\,
	dataf => \inst9|ALT_INV_myarray~348_q\,
	combout => \inst9|myarray~1167_combout\);

-- Location: FF_X50_Y9_N50
\inst9|myarray~379\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_myarray~0_combout\,
	asdata => \inst13|R[21]~10_combout\,
	sload => VCC,
	ena => \inst3|Y\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|myarray~379_q\);

-- Location: FF_X51_Y9_N58
\inst9|myarray~347\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_myarray~0_combout\,
	asdata => \inst13|R[21]~10_combout\,
	sload => VCC,
	ena => \inst5|myarray~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|myarray~347_q\);

-- Location: LABCELL_X51_Y9_N57
\inst9|myarray~1093\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|myarray~1093_combout\ = ( \inst9|myarray~347_q\ & ( \inst8|PCout\(3) & ( (\inst9|myarray~379_q\) # (\inst8|PCout\(2)) ) ) ) # ( !\inst9|myarray~347_q\ & ( \inst8|PCout\(3) & ( (!\inst8|PCout\(2) & \inst9|myarray~379_q\) ) ) ) # ( 
-- \inst9|myarray~347_q\ & ( !\inst8|PCout\(3) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100001100000011000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst8|ALT_INV_PCout\(2),
	datac => \inst9|ALT_INV_myarray~379_q\,
	datae => \inst9|ALT_INV_myarray~347_q\,
	dataf => \inst8|ALT_INV_PCout\(3),
	combout => \inst9|myarray~1093_combout\);

-- Location: FF_X50_Y9_N38
\inst9|myarray~315\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_myarray~0_combout\,
	asdata => \inst13|R[21]~10_combout\,
	sload => VCC,
	ena => \inst5|myarray~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|myarray~315_q\);

-- Location: LABCELL_X51_Y9_N51
\inst9|myarray~1168\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|myarray~1168_combout\ = ( \inst9|myarray~603_q\ & ( \inst8|PCout\(3) & ( (!\inst8|PCout\(2)) # (\inst9|myarray~347_q\) ) ) ) # ( !\inst9|myarray~603_q\ & ( \inst8|PCout\(3) & ( (\inst9|myarray~347_q\ & \inst8|PCout\(2)) ) ) ) # ( 
-- \inst9|myarray~603_q\ & ( !\inst8|PCout\(3) & ( (!\inst8|PCout\(2) & ((\inst9|myarray~379_q\))) # (\inst8|PCout\(2) & (\inst9|myarray~315_q\)) ) ) ) # ( !\inst9|myarray~603_q\ & ( !\inst8|PCout\(3) & ( (!\inst8|PCout\(2) & ((\inst9|myarray~379_q\))) # 
-- (\inst8|PCout\(2) & (\inst9|myarray~315_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101000011110101010100000000001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|ALT_INV_myarray~315_q\,
	datab => \inst9|ALT_INV_myarray~347_q\,
	datac => \inst9|ALT_INV_myarray~379_q\,
	datad => \inst8|ALT_INV_PCout\(2),
	datae => \inst9|ALT_INV_myarray~603_q\,
	dataf => \inst8|ALT_INV_PCout\(3),
	combout => \inst9|myarray~1168_combout\);

-- Location: FF_X48_Y10_N44
\inst9|myarray~378\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_myarray~0_combout\,
	asdata => \inst13|R[20]~11_combout\,
	sload => VCC,
	ena => \inst3|Y\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|myarray~378_q\);

-- Location: FF_X48_Y10_N41
\inst9|myarray~346\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_myarray~0_combout\,
	asdata => \inst13|R[20]~11_combout\,
	sload => VCC,
	ena => \inst5|myarray~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|myarray~346_q\);

-- Location: LABCELL_X48_Y10_N42
\inst9|myarray~1096\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|myarray~1096_combout\ = ( \inst9|myarray~346_q\ & ( (!\inst8|PCout\(3)) # ((\inst9|myarray~378_q\) # (\inst8|PCout\(2))) ) ) # ( !\inst9|myarray~346_q\ & ( (\inst8|PCout\(3) & (!\inst8|PCout\(2) & \inst9|myarray~378_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110000000000000011000011001111111111111100111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst8|ALT_INV_PCout\(3),
	datac => \inst8|ALT_INV_PCout\(2),
	datad => \inst9|ALT_INV_myarray~378_q\,
	dataf => \inst9|ALT_INV_myarray~346_q\,
	combout => \inst9|myarray~1096_combout\);

-- Location: FF_X48_Y10_N26
\inst9|myarray~314\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_myarray~0_combout\,
	asdata => \inst13|R[20]~11_combout\,
	sload => VCC,
	ena => \inst5|myarray~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|myarray~314_q\);

-- Location: LABCELL_X48_Y10_N24
\inst9|myarray~1169\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|myarray~1169_combout\ = ( \inst9|myarray~314_q\ & ( \inst8|PCout\(3) & ( (!\inst8|PCout\(2) & ((\inst9|myarray~602_q\))) # (\inst8|PCout\(2) & (\inst9|myarray~346_q\)) ) ) ) # ( !\inst9|myarray~314_q\ & ( \inst8|PCout\(3) & ( (!\inst8|PCout\(2) & 
-- ((\inst9|myarray~602_q\))) # (\inst8|PCout\(2) & (\inst9|myarray~346_q\)) ) ) ) # ( \inst9|myarray~314_q\ & ( !\inst8|PCout\(3) & ( (\inst8|PCout\(2)) # (\inst9|myarray~378_q\) ) ) ) # ( !\inst9|myarray~314_q\ & ( !\inst8|PCout\(3) & ( 
-- (\inst9|myarray~378_q\ & !\inst8|PCout\(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100111111111100001111010101010000111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|ALT_INV_myarray~346_q\,
	datab => \inst9|ALT_INV_myarray~378_q\,
	datac => \inst9|ALT_INV_myarray~602_q\,
	datad => \inst8|ALT_INV_PCout\(2),
	datae => \inst9|ALT_INV_myarray~314_q\,
	dataf => \inst8|ALT_INV_PCout\(3),
	combout => \inst9|myarray~1169_combout\);

-- Location: FF_X52_Y11_N50
\inst9|myarray~377\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_myarray~0_combout\,
	asdata => \inst13|R[19]~12_combout\,
	sload => VCC,
	ena => \inst3|Y\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|myarray~377_q\);

-- Location: FF_X52_Y11_N17
\inst9|myarray~345\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_myarray~0_combout\,
	asdata => \inst13|R[19]~12_combout\,
	sload => VCC,
	ena => \inst5|myarray~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|myarray~345_q\);

-- Location: LABCELL_X53_Y11_N24
\inst9|myarray~1099\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|myarray~1099_combout\ = ( \inst9|myarray~345_q\ & ( \inst8|PCout\(2) ) ) # ( \inst9|myarray~345_q\ & ( !\inst8|PCout\(2) & ( (!\inst8|PCout\(3)) # (\inst9|myarray~377_q\) ) ) ) # ( !\inst9|myarray~345_q\ & ( !\inst8|PCout\(2) & ( 
-- (\inst9|myarray~377_q\ & \inst8|PCout\(3)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111111111110000111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst9|ALT_INV_myarray~377_q\,
	datad => \inst8|ALT_INV_PCout\(3),
	datae => \inst9|ALT_INV_myarray~345_q\,
	dataf => \inst8|ALT_INV_PCout\(2),
	combout => \inst9|myarray~1099_combout\);

-- Location: FF_X52_Y11_N40
\inst9|myarray~313\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_myarray~0_combout\,
	asdata => \inst13|R[19]~12_combout\,
	sload => VCC,
	ena => \inst5|myarray~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|myarray~313_q\);

-- Location: LABCELL_X53_Y11_N42
\inst9|myarray~1170\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|myarray~1170_combout\ = ( \inst9|myarray~345_q\ & ( \inst9|myarray~313_q\ & ( ((!\inst8|PCout\(3) & (\inst9|myarray~377_q\)) # (\inst8|PCout\(3) & ((\inst9|myarray~601_q\)))) # (\inst8|PCout\(2)) ) ) ) # ( !\inst9|myarray~345_q\ & ( 
-- \inst9|myarray~313_q\ & ( (!\inst8|PCout\(2) & ((!\inst8|PCout\(3) & (\inst9|myarray~377_q\)) # (\inst8|PCout\(3) & ((\inst9|myarray~601_q\))))) # (\inst8|PCout\(2) & (((!\inst8|PCout\(3))))) ) ) ) # ( \inst9|myarray~345_q\ & ( !\inst9|myarray~313_q\ & ( 
-- (!\inst8|PCout\(2) & ((!\inst8|PCout\(3) & (\inst9|myarray~377_q\)) # (\inst8|PCout\(3) & ((\inst9|myarray~601_q\))))) # (\inst8|PCout\(2) & (((\inst8|PCout\(3))))) ) ) ) # ( !\inst9|myarray~345_q\ & ( !\inst9|myarray~313_q\ & ( (!\inst8|PCout\(2) & 
-- ((!\inst8|PCout\(3) & (\inst9|myarray~377_q\)) # (\inst8|PCout\(3) & ((\inst9|myarray~601_q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000110000010100000011111101011111001100000101111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|ALT_INV_myarray~377_q\,
	datab => \inst9|ALT_INV_myarray~601_q\,
	datac => \inst8|ALT_INV_PCout\(2),
	datad => \inst8|ALT_INV_PCout\(3),
	datae => \inst9|ALT_INV_myarray~345_q\,
	dataf => \inst9|ALT_INV_myarray~313_q\,
	combout => \inst9|myarray~1170_combout\);

-- Location: FF_X47_Y11_N59
\inst9|myarray~376\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_myarray~0_combout\,
	asdata => \inst13|R[18]~13_combout\,
	sload => VCC,
	ena => \inst3|Y\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|myarray~376_q\);

-- Location: FF_X48_Y11_N31
\inst9|myarray~344\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_myarray~0_combout\,
	asdata => \inst13|R[18]~13_combout\,
	sload => VCC,
	ena => \inst5|myarray~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|myarray~344_q\);

-- Location: MLABCELL_X47_Y11_N42
\inst9|myarray~1102\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|myarray~1102_combout\ = ( \inst9|myarray~344_q\ & ( \inst8|PCout\(3) & ( (\inst9|myarray~376_q\) # (\inst8|PCout\(2)) ) ) ) # ( !\inst9|myarray~344_q\ & ( \inst8|PCout\(3) & ( (!\inst8|PCout\(2) & \inst9|myarray~376_q\) ) ) ) # ( 
-- \inst9|myarray~344_q\ & ( !\inst8|PCout\(3) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000110011000011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst8|ALT_INV_PCout\(2),
	datad => \inst9|ALT_INV_myarray~376_q\,
	datae => \inst9|ALT_INV_myarray~344_q\,
	dataf => \inst8|ALT_INV_PCout\(3),
	combout => \inst9|myarray~1102_combout\);

-- Location: FF_X48_Y11_N2
\inst9|myarray~312\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_myarray~0_combout\,
	asdata => \inst13|R[18]~13_combout\,
	sload => VCC,
	ena => \inst5|myarray~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|myarray~312_q\);

-- Location: LABCELL_X48_Y11_N0
\inst9|myarray~1171\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|myarray~1171_combout\ = ( \inst9|myarray~312_q\ & ( \inst8|PCout\(3) & ( (!\inst8|PCout\(2) & ((\inst9|myarray~600_q\))) # (\inst8|PCout\(2) & (\inst9|myarray~344_q\)) ) ) ) # ( !\inst9|myarray~312_q\ & ( \inst8|PCout\(3) & ( (!\inst8|PCout\(2) & 
-- ((\inst9|myarray~600_q\))) # (\inst8|PCout\(2) & (\inst9|myarray~344_q\)) ) ) ) # ( \inst9|myarray~312_q\ & ( !\inst8|PCout\(3) & ( (\inst8|PCout\(2)) # (\inst9|myarray~376_q\) ) ) ) # ( !\inst9|myarray~312_q\ & ( !\inst8|PCout\(3) & ( 
-- (\inst9|myarray~376_q\ & !\inst8|PCout\(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101011111111100001111001100110000111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|ALT_INV_myarray~376_q\,
	datab => \inst9|ALT_INV_myarray~344_q\,
	datac => \inst9|ALT_INV_myarray~600_q\,
	datad => \inst8|ALT_INV_PCout\(2),
	datae => \inst9|ALT_INV_myarray~312_q\,
	dataf => \inst8|ALT_INV_PCout\(3),
	combout => \inst9|myarray~1171_combout\);

-- Location: FF_X52_Y11_N46
\inst9|myarray~375\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_myarray~0_combout\,
	asdata => \inst13|R[17]~14_combout\,
	sload => VCC,
	ena => \inst3|Y\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|myarray~375_q\);

-- Location: FF_X52_Y11_N59
\inst9|myarray~343\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_myarray~0_combout\,
	asdata => \inst13|R[17]~14_combout\,
	sload => VCC,
	ena => \inst5|myarray~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|myarray~343_q\);

-- Location: FF_X52_Y11_N38
\inst9|myarray~311\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_myarray~0_combout\,
	asdata => \inst13|R[17]~14_combout\,
	sload => VCC,
	ena => \inst5|myarray~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|myarray~311_q\);

-- Location: MLABCELL_X52_Y11_N36
\inst9|myarray~1172\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|myarray~1172_combout\ = ( \inst9|myarray~311_q\ & ( \inst8|PCout\(3) & ( (!\inst8|PCout\(2) & (\inst9|myarray~599_q\)) # (\inst8|PCout\(2) & ((\inst9|myarray~343_q\))) ) ) ) # ( !\inst9|myarray~311_q\ & ( \inst8|PCout\(3) & ( (!\inst8|PCout\(2) & 
-- (\inst9|myarray~599_q\)) # (\inst8|PCout\(2) & ((\inst9|myarray~343_q\))) ) ) ) # ( \inst9|myarray~311_q\ & ( !\inst8|PCout\(3) & ( (\inst8|PCout\(2)) # (\inst9|myarray~375_q\) ) ) ) # ( !\inst9|myarray~311_q\ & ( !\inst8|PCout\(3) & ( 
-- (\inst9|myarray~375_q\ & !\inst8|PCout\(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101011111111100110011000011110011001100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|ALT_INV_myarray~375_q\,
	datab => \inst9|ALT_INV_myarray~599_q\,
	datac => \inst9|ALT_INV_myarray~343_q\,
	datad => \inst8|ALT_INV_PCout\(2),
	datae => \inst9|ALT_INV_myarray~311_q\,
	dataf => \inst8|ALT_INV_PCout\(3),
	combout => \inst9|myarray~1172_combout\);

-- Location: MLABCELL_X52_Y11_N45
\inst9|myarray~1105\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|myarray~1105_combout\ = (!\inst8|PCout\(2) & ((!\inst8|PCout\(3) & (\inst9|myarray~343_q\)) # (\inst8|PCout\(3) & ((\inst9|myarray~375_q\))))) # (\inst8|PCout\(2) & (((\inst9|myarray~343_q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110100101111000011010010111100001101001011110000110100101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|ALT_INV_PCout\(2),
	datab => \inst8|ALT_INV_PCout\(3),
	datac => \inst9|ALT_INV_myarray~343_q\,
	datad => \inst9|ALT_INV_myarray~375_q\,
	combout => \inst9|myarray~1105_combout\);

-- Location: FF_X52_Y11_N32
\inst9|myarray~342\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_myarray~0_combout\,
	asdata => \inst13|R[16]~15_combout\,
	sload => VCC,
	ena => \inst5|myarray~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|myarray~342_q\);

-- Location: FF_X52_Y11_N1
\inst9|myarray~374\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_myarray~0_combout\,
	asdata => \inst13|R[16]~15_combout\,
	sload => VCC,
	ena => \inst3|Y\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|myarray~374_q\);

-- Location: MLABCELL_X52_Y11_N0
\inst9|myarray~1108\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|myarray~1108_combout\ = ( \inst8|PCout\(3) & ( (!\inst8|PCout\(2) & ((\inst9|myarray~374_q\))) # (\inst8|PCout\(2) & (\inst9|myarray~342_q\)) ) ) # ( !\inst8|PCout\(3) & ( \inst9|myarray~342_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100000011111100110000001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst9|ALT_INV_myarray~342_q\,
	datac => \inst8|ALT_INV_PCout\(2),
	datad => \inst9|ALT_INV_myarray~374_q\,
	dataf => \inst8|ALT_INV_PCout\(3),
	combout => \inst9|myarray~1108_combout\);

-- Location: FF_X52_Y11_N20
\inst9|myarray~310\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_myarray~0_combout\,
	asdata => \inst13|R[16]~15_combout\,
	sload => VCC,
	ena => \inst5|myarray~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|myarray~310_q\);

-- Location: MLABCELL_X52_Y11_N18
\inst9|myarray~1173\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|myarray~1173_combout\ = ( \inst9|myarray~310_q\ & ( \inst8|PCout\(3) & ( (!\inst8|PCout\(2) & ((\inst9|myarray~598_q\))) # (\inst8|PCout\(2) & (\inst9|myarray~342_q\)) ) ) ) # ( !\inst9|myarray~310_q\ & ( \inst8|PCout\(3) & ( (!\inst8|PCout\(2) & 
-- ((\inst9|myarray~598_q\))) # (\inst8|PCout\(2) & (\inst9|myarray~342_q\)) ) ) ) # ( \inst9|myarray~310_q\ & ( !\inst8|PCout\(3) & ( (\inst8|PCout\(2)) # (\inst9|myarray~374_q\) ) ) ) # ( !\inst9|myarray~310_q\ & ( !\inst8|PCout\(3) & ( 
-- (\inst9|myarray~374_q\ & !\inst8|PCout\(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100111111111100001111010101010000111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|ALT_INV_myarray~342_q\,
	datab => \inst9|ALT_INV_myarray~374_q\,
	datac => \inst9|ALT_INV_myarray~598_q\,
	datad => \inst8|ALT_INV_PCout\(2),
	datae => \inst9|ALT_INV_myarray~310_q\,
	dataf => \inst8|ALT_INV_PCout\(3),
	combout => \inst9|myarray~1173_combout\);

-- Location: FF_X48_Y11_N23
\inst9|myarray~341\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_myarray~0_combout\,
	asdata => \inst13|R[15]~16_combout\,
	sload => VCC,
	ena => \inst5|myarray~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|myarray~341_q\);

-- Location: FF_X48_Y11_N7
\inst9|myarray~373\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_myarray~0_combout\,
	asdata => \inst13|R[15]~16_combout\,
	sload => VCC,
	ena => \inst3|Y\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|myarray~373_q\);

-- Location: LABCELL_X48_Y11_N6
\inst9|myarray~1111\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|myarray~1111_combout\ = (!\inst8|PCout\(2) & ((!\inst8|PCout\(3) & (\inst9|myarray~341_q\)) # (\inst8|PCout\(3) & ((\inst9|myarray~373_q\))))) # (\inst8|PCout\(2) & (((\inst9|myarray~341_q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110100101111000011010010111100001101001011110000110100101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|ALT_INV_PCout\(2),
	datab => \inst8|ALT_INV_PCout\(3),
	datac => \inst9|ALT_INV_myarray~341_q\,
	datad => \inst9|ALT_INV_myarray~373_q\,
	combout => \inst9|myarray~1111_combout\);

-- Location: FF_X48_Y11_N26
\inst9|myarray~309\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_myarray~0_combout\,
	asdata => \inst13|R[15]~16_combout\,
	sload => VCC,
	ena => \inst5|myarray~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|myarray~309_q\);

-- Location: LABCELL_X48_Y11_N24
\inst9|myarray~1174\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|myarray~1174_combout\ = ( \inst9|myarray~309_q\ & ( \inst8|PCout\(3) & ( (!\inst8|PCout\(2) & ((\inst9|myarray~597_q\))) # (\inst8|PCout\(2) & (\inst9|myarray~341_q\)) ) ) ) # ( !\inst9|myarray~309_q\ & ( \inst8|PCout\(3) & ( (!\inst8|PCout\(2) & 
-- ((\inst9|myarray~597_q\))) # (\inst8|PCout\(2) & (\inst9|myarray~341_q\)) ) ) ) # ( \inst9|myarray~309_q\ & ( !\inst8|PCout\(3) & ( (\inst8|PCout\(2)) # (\inst9|myarray~373_q\) ) ) ) # ( !\inst9|myarray~309_q\ & ( !\inst8|PCout\(3) & ( 
-- (\inst9|myarray~373_q\ & !\inst8|PCout\(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100111111111100001111010101010000111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|ALT_INV_myarray~341_q\,
	datab => \inst9|ALT_INV_myarray~373_q\,
	datac => \inst9|ALT_INV_myarray~597_q\,
	datad => \inst8|ALT_INV_PCout\(2),
	datae => \inst9|ALT_INV_myarray~309_q\,
	dataf => \inst8|ALT_INV_PCout\(3),
	combout => \inst9|myarray~1174_combout\);

-- Location: FF_X52_Y11_N44
\inst9|myarray~372\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_myarray~0_combout\,
	asdata => \inst13|R[14]~17_combout\,
	sload => VCC,
	ena => \inst3|Y\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|myarray~372_q\);

-- Location: FF_X52_Y11_N29
\inst9|myarray~340\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_myarray~0_combout\,
	asdata => \inst13|R[14]~17_combout\,
	sload => VCC,
	ena => \inst5|myarray~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|myarray~340_q\);

-- Location: MLABCELL_X52_Y11_N33
\inst9|myarray~1114\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|myarray~1114_combout\ = (!\inst8|PCout\(2) & ((!\inst8|PCout\(3) & ((\inst9|myarray~340_q\))) # (\inst8|PCout\(3) & (\inst9|myarray~372_q\)))) # (\inst8|PCout\(2) & (((\inst9|myarray~340_q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001011011111000000101101111100000010110111110000001011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|ALT_INV_PCout\(2),
	datab => \inst8|ALT_INV_PCout\(3),
	datac => \inst9|ALT_INV_myarray~372_q\,
	datad => \inst9|ALT_INV_myarray~340_q\,
	combout => \inst9|myarray~1114_combout\);

-- Location: FF_X52_Y11_N10
\inst9|myarray~308\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_myarray~0_combout\,
	asdata => \inst13|R[14]~17_combout\,
	sload => VCC,
	ena => \inst5|myarray~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|myarray~308_q\);

-- Location: MLABCELL_X52_Y11_N6
\inst9|myarray~1175\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|myarray~1175_combout\ = ( \inst9|myarray~340_q\ & ( \inst8|PCout\(3) & ( (\inst8|PCout\(2)) # (\inst9|myarray~596_q\) ) ) ) # ( !\inst9|myarray~340_q\ & ( \inst8|PCout\(3) & ( (\inst9|myarray~596_q\ & !\inst8|PCout\(2)) ) ) ) # ( 
-- \inst9|myarray~340_q\ & ( !\inst8|PCout\(3) & ( (!\inst8|PCout\(2) & (\inst9|myarray~372_q\)) # (\inst8|PCout\(2) & ((\inst9|myarray~308_q\))) ) ) ) # ( !\inst9|myarray~340_q\ & ( !\inst8|PCout\(3) & ( (!\inst8|PCout\(2) & (\inst9|myarray~372_q\)) # 
-- (\inst8|PCout\(2) & ((\inst9|myarray~308_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100110011010101010011001100001111000000000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|ALT_INV_myarray~372_q\,
	datab => \inst9|ALT_INV_myarray~308_q\,
	datac => \inst9|ALT_INV_myarray~596_q\,
	datad => \inst8|ALT_INV_PCout\(2),
	datae => \inst9|ALT_INV_myarray~340_q\,
	dataf => \inst8|ALT_INV_PCout\(3),
	combout => \inst9|myarray~1175_combout\);

-- Location: FF_X53_Y11_N49
\inst9|myarray~307\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_myarray~0_combout\,
	asdata => \inst13|R[13]~18_combout\,
	sload => VCC,
	ena => \inst5|myarray~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|myarray~307_q\);

-- Location: FF_X50_Y11_N29
\inst9|myarray~339\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_myarray~0_combout\,
	asdata => \inst13|R[13]~18_combout\,
	sload => VCC,
	ena => \inst5|myarray~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|myarray~339_q\);

-- Location: FF_X50_Y11_N1
\inst9|myarray~371\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_myarray~0_combout\,
	asdata => \inst13|R[13]~18_combout\,
	sload => VCC,
	ena => \inst3|Y\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|myarray~371_q\);

-- Location: LABCELL_X53_Y11_N51
\inst9|myarray~1176\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|myarray~1176_combout\ = ( \inst8|PCout\(2) & ( \inst8|PCout\(3) & ( \inst9|myarray~339_q\ ) ) ) # ( !\inst8|PCout\(2) & ( \inst8|PCout\(3) & ( \inst9|myarray~595_q\ ) ) ) # ( \inst8|PCout\(2) & ( !\inst8|PCout\(3) & ( \inst9|myarray~307_q\ ) ) ) # 
-- ( !\inst8|PCout\(2) & ( !\inst8|PCout\(3) & ( \inst9|myarray~371_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111001100110011001101010101010101010000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|ALT_INV_myarray~595_q\,
	datab => \inst9|ALT_INV_myarray~307_q\,
	datac => \inst9|ALT_INV_myarray~339_q\,
	datad => \inst9|ALT_INV_myarray~371_q\,
	datae => \inst8|ALT_INV_PCout\(2),
	dataf => \inst8|ALT_INV_PCout\(3),
	combout => \inst9|myarray~1176_combout\);

-- Location: LABCELL_X50_Y11_N0
\inst9|myarray~1117\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|myarray~1117_combout\ = ( \inst8|PCout\(2) & ( \inst9|myarray~339_q\ ) ) # ( !\inst8|PCout\(2) & ( (!\inst8|PCout\(3) & (\inst9|myarray~339_q\)) # (\inst8|PCout\(3) & ((\inst9|myarray~371_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001011111000010100101111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|ALT_INV_PCout\(3),
	datac => \inst9|ALT_INV_myarray~339_q\,
	datad => \inst9|ALT_INV_myarray~371_q\,
	dataf => \inst8|ALT_INV_PCout\(2),
	combout => \inst9|myarray~1117_combout\);

-- Location: FF_X48_Y11_N10
\inst9|myarray~370\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_myarray~0_combout\,
	asdata => \inst13|R[12]~19_combout\,
	sload => VCC,
	ena => \inst3|Y\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|myarray~370_q\);

-- Location: FF_X48_Y11_N53
\inst9|myarray~338\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_myarray~0_combout\,
	asdata => \inst13|R[12]~19_combout\,
	sload => VCC,
	ena => \inst5|myarray~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|myarray~338_q\);

-- Location: LABCELL_X48_Y11_N9
\inst9|myarray~1120\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|myarray~1120_combout\ = ( \inst9|myarray~338_q\ & ( ((!\inst8|PCout\(3)) # (\inst9|myarray~370_q\)) # (\inst8|PCout\(2)) ) ) # ( !\inst9|myarray~338_q\ & ( (!\inst8|PCout\(2) & (\inst8|PCout\(3) & \inst9|myarray~370_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001010000000000000101011110101111111111111010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|ALT_INV_PCout\(2),
	datac => \inst8|ALT_INV_PCout\(3),
	datad => \inst9|ALT_INV_myarray~370_q\,
	dataf => \inst9|ALT_INV_myarray~338_q\,
	combout => \inst9|myarray~1120_combout\);

-- Location: FF_X48_Y11_N13
\inst9|myarray~306\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_myarray~0_combout\,
	asdata => \inst13|R[12]~19_combout\,
	sload => VCC,
	ena => \inst5|myarray~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|myarray~306_q\);

-- Location: LABCELL_X48_Y11_N15
\inst9|myarray~1177\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|myarray~1177_combout\ = ( \inst8|PCout\(3) & ( \inst9|myarray~338_q\ & ( (\inst9|myarray~594_q\) # (\inst8|PCout\(2)) ) ) ) # ( !\inst8|PCout\(3) & ( \inst9|myarray~338_q\ & ( (!\inst8|PCout\(2) & (\inst9|myarray~370_q\)) # (\inst8|PCout\(2) & 
-- ((\inst9|myarray~306_q\))) ) ) ) # ( \inst8|PCout\(3) & ( !\inst9|myarray~338_q\ & ( (!\inst8|PCout\(2) & \inst9|myarray~594_q\) ) ) ) # ( !\inst8|PCout\(3) & ( !\inst9|myarray~338_q\ & ( (!\inst8|PCout\(2) & (\inst9|myarray~370_q\)) # (\inst8|PCout\(2) & 
-- ((\inst9|myarray~306_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001110111000011000000110001000100011101110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|ALT_INV_myarray~370_q\,
	datab => \inst8|ALT_INV_PCout\(2),
	datac => \inst9|ALT_INV_myarray~594_q\,
	datad => \inst9|ALT_INV_myarray~306_q\,
	datae => \inst8|ALT_INV_PCout\(3),
	dataf => \inst9|ALT_INV_myarray~338_q\,
	combout => \inst9|myarray~1177_combout\);

-- Location: FF_X48_Y11_N44
\inst9|myarray~369\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_myarray~0_combout\,
	asdata => \inst13|R[11]~20_combout\,
	sload => VCC,
	ena => \inst3|Y\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|myarray~369_q\);

-- Location: FF_X48_Y11_N35
\inst9|myarray~337\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_myarray~0_combout\,
	asdata => \inst13|R[11]~20_combout\,
	sload => VCC,
	ena => \inst5|myarray~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|myarray~337_q\);

-- Location: LABCELL_X48_Y11_N45
\inst9|myarray~1123\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|myarray~1123_combout\ = ( \inst9|myarray~337_q\ & ( ((!\inst8|PCout\(3)) # (\inst9|myarray~369_q\)) # (\inst8|PCout\(2)) ) ) # ( !\inst9|myarray~337_q\ & ( (!\inst8|PCout\(2) & (\inst9|myarray~369_q\ & \inst8|PCout\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001010000000000000101011111111010111111111111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|ALT_INV_PCout\(2),
	datac => \inst9|ALT_INV_myarray~369_q\,
	datad => \inst8|ALT_INV_PCout\(3),
	dataf => \inst9|ALT_INV_myarray~337_q\,
	combout => \inst9|myarray~1123_combout\);

-- Location: FF_X48_Y11_N55
\inst9|myarray~305\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_myarray~0_combout\,
	asdata => \inst13|R[11]~20_combout\,
	sload => VCC,
	ena => \inst5|myarray~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|myarray~305_q\);

-- Location: LABCELL_X48_Y11_N57
\inst9|myarray~1178\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|myarray~1178_combout\ = ( \inst9|myarray~337_q\ & ( \inst9|myarray~369_q\ & ( (!\inst8|PCout\(3) & (((!\inst8|PCout\(2))) # (\inst9|myarray~305_q\))) # (\inst8|PCout\(3) & (((\inst9|myarray~593_q\) # (\inst8|PCout\(2))))) ) ) ) # ( 
-- !\inst9|myarray~337_q\ & ( \inst9|myarray~369_q\ & ( (!\inst8|PCout\(3) & (((!\inst8|PCout\(2))) # (\inst9|myarray~305_q\))) # (\inst8|PCout\(3) & (((!\inst8|PCout\(2) & \inst9|myarray~593_q\)))) ) ) ) # ( \inst9|myarray~337_q\ & ( !\inst9|myarray~369_q\ 
-- & ( (!\inst8|PCout\(3) & (\inst9|myarray~305_q\ & (\inst8|PCout\(2)))) # (\inst8|PCout\(3) & (((\inst9|myarray~593_q\) # (\inst8|PCout\(2))))) ) ) ) # ( !\inst9|myarray~337_q\ & ( !\inst9|myarray~369_q\ & ( (!\inst8|PCout\(3) & (\inst9|myarray~305_q\ & 
-- (\inst8|PCout\(2)))) # (\inst8|PCout\(3) & (((!\inst8|PCout\(2) & \inst9|myarray~593_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000110100000001110011011111000100111101001100011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|ALT_INV_myarray~305_q\,
	datab => \inst8|ALT_INV_PCout\(3),
	datac => \inst8|ALT_INV_PCout\(2),
	datad => \inst9|ALT_INV_myarray~593_q\,
	datae => \inst9|ALT_INV_myarray~337_q\,
	dataf => \inst9|ALT_INV_myarray~369_q\,
	combout => \inst9|myarray~1178_combout\);

-- Location: FF_X51_Y13_N23
\inst9|myarray~368\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_myarray~0_combout\,
	asdata => \inst13|R[10]~21_combout\,
	sload => VCC,
	ena => \inst3|Y\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|myarray~368_q\);

-- Location: LABCELL_X50_Y13_N0
\inst9|myarray~336feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|myarray~336feeder_combout\ = \inst13|R[10]~21_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|ALT_INV_R[10]~21_combout\,
	combout => \inst9|myarray~336feeder_combout\);

-- Location: FF_X50_Y13_N2
\inst9|myarray~336\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_myarray~0_combout\,
	d => \inst9|myarray~336feeder_combout\,
	ena => \inst5|myarray~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|myarray~336_q\);

-- Location: LABCELL_X51_Y13_N9
\inst9|myarray~1126\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|myarray~1126_combout\ = (!\inst8|PCout\(3) & (((\inst9|myarray~336_q\)))) # (\inst8|PCout\(3) & ((!\inst8|PCout\(2) & (\inst9|myarray~368_q\)) # (\inst8|PCout\(2) & ((\inst9|myarray~336_q\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000011011111000100001101111100010000110111110001000011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|ALT_INV_myarray~368_q\,
	datab => \inst8|ALT_INV_PCout\(3),
	datac => \inst8|ALT_INV_PCout\(2),
	datad => \inst9|ALT_INV_myarray~336_q\,
	combout => \inst9|myarray~1126_combout\);

-- Location: FF_X51_Y13_N37
\inst9|myarray~304\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_myarray~0_combout\,
	asdata => \inst13|R[10]~21_combout\,
	sload => VCC,
	ena => \inst5|myarray~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|myarray~304_q\);

-- Location: LABCELL_X51_Y13_N24
\inst9|myarray~1179\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|myarray~1179_combout\ = ( \inst8|PCout\(2) & ( \inst8|PCout\(3) & ( \inst9|myarray~336_q\ ) ) ) # ( !\inst8|PCout\(2) & ( \inst8|PCout\(3) & ( \inst9|myarray~592_q\ ) ) ) # ( \inst8|PCout\(2) & ( !\inst8|PCout\(3) & ( \inst9|myarray~304_q\ ) ) ) # 
-- ( !\inst8|PCout\(2) & ( !\inst8|PCout\(3) & ( \inst9|myarray~368_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011010101010101010100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|ALT_INV_myarray~304_q\,
	datab => \inst9|ALT_INV_myarray~368_q\,
	datac => \inst9|ALT_INV_myarray~592_q\,
	datad => \inst9|ALT_INV_myarray~336_q\,
	datae => \inst8|ALT_INV_PCout\(2),
	dataf => \inst8|ALT_INV_PCout\(3),
	combout => \inst9|myarray~1179_combout\);

-- Location: LABCELL_X50_Y11_N6
\inst6|Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|Equal1~0_combout\ = ( !\inst5|myarray~0_combout\ & ( \inst8|PCout\(3) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst8|ALT_INV_PCout\(3),
	dataf => \inst5|ALT_INV_myarray~0_combout\,
	combout => \inst6|Equal1~0_combout\);

-- Location: FF_X51_Y11_N4
\inst9|myarray~367\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_myarray~0_combout\,
	asdata => \inst13|R[9]~22_combout\,
	sload => VCC,
	ena => \inst3|Y\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|myarray~367_q\);

-- Location: FF_X53_Y12_N50
\inst9|myarray~335\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_myarray~0_combout\,
	asdata => \inst13|R[9]~22_combout\,
	sload => VCC,
	ena => \inst5|myarray~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|myarray~335_q\);

-- Location: LABCELL_X51_Y11_N3
\inst9|myarray~1129\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|myarray~1129_combout\ = ( \inst9|myarray~335_q\ & ( (!\inst8|PCout\(3)) # ((\inst9|myarray~367_q\) # (\inst8|PCout\(2))) ) ) # ( !\inst9|myarray~335_q\ & ( (\inst8|PCout\(3) & (!\inst8|PCout\(2) & \inst9|myarray~367_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000100000000000100010010111011111111111011101111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|ALT_INV_PCout\(3),
	datab => \inst8|ALT_INV_PCout\(2),
	datad => \inst9|ALT_INV_myarray~367_q\,
	dataf => \inst9|ALT_INV_myarray~335_q\,
	combout => \inst9|myarray~1129_combout\);

-- Location: FF_X51_Y11_N14
\inst9|myarray~303\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_myarray~0_combout\,
	asdata => \inst13|R[9]~22_combout\,
	sload => VCC,
	ena => \inst5|myarray~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|myarray~303_q\);

-- Location: LABCELL_X51_Y11_N12
\inst9|myarray~1180\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|myarray~1180_combout\ = ( \inst9|myarray~303_q\ & ( \inst8|PCout\(3) & ( (!\inst8|PCout\(2) & ((\inst9|myarray~591_q\))) # (\inst8|PCout\(2) & (\inst9|myarray~335_q\)) ) ) ) # ( !\inst9|myarray~303_q\ & ( \inst8|PCout\(3) & ( (!\inst8|PCout\(2) & 
-- ((\inst9|myarray~591_q\))) # (\inst8|PCout\(2) & (\inst9|myarray~335_q\)) ) ) ) # ( \inst9|myarray~303_q\ & ( !\inst8|PCout\(3) & ( (\inst8|PCout\(2)) # (\inst9|myarray~367_q\) ) ) ) # ( !\inst9|myarray~303_q\ & ( !\inst8|PCout\(3) & ( 
-- (\inst9|myarray~367_q\ & !\inst8|PCout\(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100011101110111011100000011110011110000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|ALT_INV_myarray~367_q\,
	datab => \inst8|ALT_INV_PCout\(2),
	datac => \inst9|ALT_INV_myarray~335_q\,
	datad => \inst9|ALT_INV_myarray~591_q\,
	datae => \inst9|ALT_INV_myarray~303_q\,
	dataf => \inst8|ALT_INV_PCout\(3),
	combout => \inst9|myarray~1180_combout\);

-- Location: FF_X53_Y12_N23
\inst9|myarray~334\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_myarray~0_combout\,
	asdata => \inst13|R[8]~23_combout\,
	sload => VCC,
	ena => \inst5|myarray~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|myarray~334_q\);

-- Location: FF_X53_Y12_N25
\inst9|myarray~366\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_myarray~0_combout\,
	asdata => \inst13|R[8]~23_combout\,
	sload => VCC,
	ena => \inst3|Y\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|myarray~366_q\);

-- Location: LABCELL_X53_Y12_N24
\inst9|myarray~1132\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|myarray~1132_combout\ = ( \inst8|PCout\(3) & ( (!\inst8|PCout\(2) & ((\inst9|myarray~366_q\))) # (\inst8|PCout\(2) & (\inst9|myarray~334_q\)) ) ) # ( !\inst8|PCout\(3) & ( \inst9|myarray~334_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000011110011110000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst8|ALT_INV_PCout\(2),
	datac => \inst9|ALT_INV_myarray~334_q\,
	datad => \inst9|ALT_INV_myarray~366_q\,
	dataf => \inst8|ALT_INV_PCout\(3),
	combout => \inst9|myarray~1132_combout\);

-- Location: FF_X53_Y12_N13
\inst9|myarray~302\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_myarray~0_combout\,
	asdata => \inst13|R[8]~23_combout\,
	sload => VCC,
	ena => \inst5|myarray~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|myarray~302_q\);

-- Location: LABCELL_X53_Y12_N33
\inst9|myarray~1181\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|myarray~1181_combout\ = ( \inst8|PCout\(2) & ( \inst9|myarray~366_q\ & ( (!\inst8|PCout\(3) & ((\inst9|myarray~302_q\))) # (\inst8|PCout\(3) & (\inst9|myarray~334_q\)) ) ) ) # ( !\inst8|PCout\(2) & ( \inst9|myarray~366_q\ & ( (!\inst8|PCout\(3)) # 
-- (\inst9|myarray~590_q\) ) ) ) # ( \inst8|PCout\(2) & ( !\inst9|myarray~366_q\ & ( (!\inst8|PCout\(3) & ((\inst9|myarray~302_q\))) # (\inst8|PCout\(3) & (\inst9|myarray~334_q\)) ) ) ) # ( !\inst8|PCout\(2) & ( !\inst9|myarray~366_q\ & ( (\inst8|PCout\(3) & 
-- \inst9|myarray~590_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111001101010011010111110000111111110011010100110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|ALT_INV_myarray~334_q\,
	datab => \inst9|ALT_INV_myarray~302_q\,
	datac => \inst8|ALT_INV_PCout\(3),
	datad => \inst9|ALT_INV_myarray~590_q\,
	datae => \inst8|ALT_INV_PCout\(2),
	dataf => \inst9|ALT_INV_myarray~366_q\,
	combout => \inst9|myarray~1181_combout\);

-- Location: FF_X53_Y12_N38
\inst9|myarray~333\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_myarray~0_combout\,
	asdata => \inst13|R[7]~24_combout\,
	sload => VCC,
	ena => \inst5|myarray~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|myarray~333_q\);

-- Location: FF_X53_Y12_N5
\inst9|myarray~365\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_myarray~0_combout\,
	asdata => \inst13|R[7]~24_combout\,
	sload => VCC,
	ena => \inst3|Y\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|myarray~365_q\);

-- Location: LABCELL_X53_Y12_N0
\inst9|myarray~1135\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|myarray~1135_combout\ = ( \inst8|PCout\(3) & ( (!\inst8|PCout\(2) & ((\inst9|myarray~365_q\))) # (\inst8|PCout\(2) & (\inst9|myarray~333_q\)) ) ) # ( !\inst8|PCout\(3) & ( \inst9|myarray~333_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100000101111101010000010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|ALT_INV_myarray~333_q\,
	datac => \inst8|ALT_INV_PCout\(2),
	datad => \inst9|ALT_INV_myarray~365_q\,
	dataf => \inst8|ALT_INV_PCout\(3),
	combout => \inst9|myarray~1135_combout\);

-- Location: FF_X53_Y12_N32
\inst9|myarray~301\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_myarray~0_combout\,
	asdata => \inst13|R[7]~24_combout\,
	sload => VCC,
	ena => \inst5|myarray~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|myarray~301_q\);

-- Location: LABCELL_X53_Y12_N39
\inst9|myarray~1182\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|myarray~1182_combout\ = ( \inst9|myarray~333_q\ & ( \inst8|PCout\(3) & ( (\inst8|PCout\(2)) # (\inst9|myarray~589_q\) ) ) ) # ( !\inst9|myarray~333_q\ & ( \inst8|PCout\(3) & ( (\inst9|myarray~589_q\ & !\inst8|PCout\(2)) ) ) ) # ( 
-- \inst9|myarray~333_q\ & ( !\inst8|PCout\(3) & ( (!\inst8|PCout\(2) & (\inst9|myarray~365_q\)) # (\inst8|PCout\(2) & ((\inst9|myarray~301_q\))) ) ) ) # ( !\inst9|myarray~333_q\ & ( !\inst8|PCout\(3) & ( (!\inst8|PCout\(2) & (\inst9|myarray~365_q\)) # 
-- (\inst8|PCout\(2) & ((\inst9|myarray~301_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100110011010101010011001100001111000000000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|ALT_INV_myarray~365_q\,
	datab => \inst9|ALT_INV_myarray~301_q\,
	datac => \inst9|ALT_INV_myarray~589_q\,
	datad => \inst8|ALT_INV_PCout\(2),
	datae => \inst9|ALT_INV_myarray~333_q\,
	dataf => \inst8|ALT_INV_PCout\(3),
	combout => \inst9|myarray~1182_combout\);

-- Location: FF_X51_Y13_N8
\inst9|myarray~364\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_myarray~0_combout\,
	asdata => \inst13|R[6]~25_combout\,
	sload => VCC,
	ena => \inst3|Y\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|myarray~364_q\);

-- Location: FF_X50_Y13_N28
\inst9|myarray~332\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_myarray~0_combout\,
	asdata => \inst13|R[6]~25_combout\,
	sload => VCC,
	ena => \inst5|myarray~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|myarray~332_q\);

-- Location: LABCELL_X51_Y13_N45
\inst9|myarray~1138\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|myarray~1138_combout\ = ( \inst8|PCout\(3) & ( (!\inst8|PCout\(2) & (\inst9|myarray~364_q\)) # (\inst8|PCout\(2) & ((\inst9|myarray~332_q\))) ) ) # ( !\inst8|PCout\(3) & ( \inst9|myarray~332_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001100001111110000110000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst8|ALT_INV_PCout\(2),
	datac => \inst9|ALT_INV_myarray~364_q\,
	datad => \inst9|ALT_INV_myarray~332_q\,
	dataf => \inst8|ALT_INV_PCout\(3),
	combout => \inst9|myarray~1138_combout\);

-- Location: FF_X51_Y13_N16
\inst9|myarray~300\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_myarray~0_combout\,
	asdata => \inst13|R[6]~25_combout\,
	sload => VCC,
	ena => \inst5|myarray~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|myarray~300_q\);

-- Location: LABCELL_X51_Y13_N39
\inst9|myarray~1183\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|myarray~1183_combout\ = ( \inst9|myarray~364_q\ & ( \inst8|PCout\(3) & ( (!\inst8|PCout\(2) & ((\inst9|myarray~588_q\))) # (\inst8|PCout\(2) & (\inst9|myarray~332_q\)) ) ) ) # ( !\inst9|myarray~364_q\ & ( \inst8|PCout\(3) & ( (!\inst8|PCout\(2) & 
-- ((\inst9|myarray~588_q\))) # (\inst8|PCout\(2) & (\inst9|myarray~332_q\)) ) ) ) # ( \inst9|myarray~364_q\ & ( !\inst8|PCout\(3) & ( (!\inst8|PCout\(2)) # (\inst9|myarray~300_q\) ) ) ) # ( !\inst9|myarray~364_q\ & ( !\inst8|PCout\(3) & ( 
-- (\inst9|myarray~300_q\ & \inst8|PCout\(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011111100111111001100000101111101010000010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|ALT_INV_myarray~332_q\,
	datab => \inst9|ALT_INV_myarray~300_q\,
	datac => \inst8|ALT_INV_PCout\(2),
	datad => \inst9|ALT_INV_myarray~588_q\,
	datae => \inst9|ALT_INV_myarray~364_q\,
	dataf => \inst8|ALT_INV_PCout\(3),
	combout => \inst9|myarray~1183_combout\);

-- Location: FF_X50_Y13_N4
\inst9|myarray~331\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_myarray~0_combout\,
	asdata => \inst13|R[5]~26_combout\,
	sload => VCC,
	ena => \inst5|myarray~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|myarray~331_q\);

-- Location: FF_X51_Y13_N2
\inst9|myarray~363\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_myarray~0_combout\,
	asdata => \inst13|R[5]~26_combout\,
	sload => VCC,
	ena => \inst3|Y\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|myarray~363_q\);

-- Location: LABCELL_X51_Y13_N12
\inst9|myarray~1141\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|myarray~1141_combout\ = ( \inst8|PCout\(3) & ( (!\inst8|PCout\(2) & ((\inst9|myarray~363_q\))) # (\inst8|PCout\(2) & (\inst9|myarray~331_q\)) ) ) # ( !\inst8|PCout\(3) & ( \inst9|myarray~331_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000111010001110101010101010101010001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|ALT_INV_myarray~331_q\,
	datab => \inst8|ALT_INV_PCout\(2),
	datac => \inst9|ALT_INV_myarray~363_q\,
	datae => \inst8|ALT_INV_PCout\(3),
	combout => \inst9|myarray~1141_combout\);

-- Location: FF_X51_Y13_N55
\inst9|myarray~299\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_myarray~0_combout\,
	asdata => \inst13|R[5]~26_combout\,
	sload => VCC,
	ena => \inst5|myarray~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|myarray~299_q\);

-- Location: LABCELL_X51_Y13_N51
\inst9|myarray~1184\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|myarray~1184_combout\ = ( \inst9|myarray~587_q\ & ( \inst8|PCout\(3) & ( (!\inst8|PCout\(2)) # (\inst9|myarray~331_q\) ) ) ) # ( !\inst9|myarray~587_q\ & ( \inst8|PCout\(3) & ( (\inst8|PCout\(2) & \inst9|myarray~331_q\) ) ) ) # ( 
-- \inst9|myarray~587_q\ & ( !\inst8|PCout\(3) & ( (!\inst8|PCout\(2) & (\inst9|myarray~363_q\)) # (\inst8|PCout\(2) & ((\inst9|myarray~299_q\))) ) ) ) # ( !\inst9|myarray~587_q\ & ( !\inst8|PCout\(3) & ( (!\inst8|PCout\(2) & (\inst9|myarray~363_q\)) # 
-- (\inst8|PCout\(2) & ((\inst9|myarray~299_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001101010011010100110101001100000000000011111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|ALT_INV_myarray~363_q\,
	datab => \inst9|ALT_INV_myarray~299_q\,
	datac => \inst8|ALT_INV_PCout\(2),
	datad => \inst9|ALT_INV_myarray~331_q\,
	datae => \inst9|ALT_INV_myarray~587_q\,
	dataf => \inst8|ALT_INV_PCout\(3),
	combout => \inst9|myarray~1184_combout\);

-- Location: FF_X53_Y12_N11
\inst9|myarray~330\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_myarray~0_combout\,
	asdata => \inst13|R[4]~27_combout\,
	sload => VCC,
	ena => \inst5|myarray~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|myarray~330_q\);

-- Location: LABCELL_X53_Y12_N27
\inst9|myarray~1191\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|myarray~1191_combout\ = !\inst13|R[4]~27_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|ALT_INV_R[4]~27_combout\,
	combout => \inst9|myarray~1191_combout\);

-- Location: FF_X53_Y12_N29
\inst9|myarray~362\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_myarray~0_combout\,
	d => \inst9|myarray~1191_combout\,
	ena => \inst3|Y\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|myarray~362_q\);

-- Location: LABCELL_X53_Y12_N15
\inst9|myarray~1144\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|myarray~1144_combout\ = ( \inst9|myarray~362_q\ & ( \inst8|PCout\(3) & ( (\inst8|PCout\(2) & \inst9|myarray~330_q\) ) ) ) # ( !\inst9|myarray~362_q\ & ( \inst8|PCout\(3) & ( (!\inst8|PCout\(2)) # (\inst9|myarray~330_q\) ) ) ) # ( 
-- \inst9|myarray~362_q\ & ( !\inst8|PCout\(3) & ( \inst9|myarray~330_q\ ) ) ) # ( !\inst9|myarray~362_q\ & ( !\inst8|PCout\(3) & ( \inst9|myarray~330_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111110101111101011110000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|ALT_INV_PCout\(2),
	datac => \inst9|ALT_INV_myarray~330_q\,
	datae => \inst9|ALT_INV_myarray~362_q\,
	dataf => \inst8|ALT_INV_PCout\(3),
	combout => \inst9|myarray~1144_combout\);

-- Location: LABCELL_X53_Y12_N54
\inst9|myarray~298feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|myarray~298feeder_combout\ = \inst13|R[4]~27_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst13|ALT_INV_R[4]~27_combout\,
	combout => \inst9|myarray~298feeder_combout\);

-- Location: FF_X53_Y12_N55
\inst9|myarray~298\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_myarray~0_combout\,
	d => \inst9|myarray~298feeder_combout\,
	ena => \inst5|myarray~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|myarray~298_q\);

-- Location: LABCELL_X53_Y12_N51
\inst9|myarray~1185\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|myarray~1185_combout\ = ( \inst9|myarray~586_q\ & ( \inst8|PCout\(3) & ( (\inst8|PCout\(2) & \inst9|myarray~330_q\) ) ) ) # ( !\inst9|myarray~586_q\ & ( \inst8|PCout\(3) & ( (!\inst8|PCout\(2)) # (\inst9|myarray~330_q\) ) ) ) # ( 
-- \inst9|myarray~586_q\ & ( !\inst8|PCout\(3) & ( (!\inst8|PCout\(2) & ((!\inst9|myarray~362_q\))) # (\inst8|PCout\(2) & (\inst9|myarray~298_q\)) ) ) ) # ( !\inst9|myarray~586_q\ & ( !\inst8|PCout\(3) & ( (!\inst8|PCout\(2) & ((!\inst9|myarray~362_q\))) # 
-- (\inst8|PCout\(2) & (\inst9|myarray~298_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011000110110001101100011011000110101010111111110000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|ALT_INV_PCout\(2),
	datab => \inst9|ALT_INV_myarray~298_q\,
	datac => \inst9|ALT_INV_myarray~362_q\,
	datad => \inst9|ALT_INV_myarray~330_q\,
	datae => \inst9|ALT_INV_myarray~586_q\,
	dataf => \inst8|ALT_INV_PCout\(3),
	combout => \inst9|myarray~1185_combout\);

-- Location: LABCELL_X51_Y12_N3
\inst9|myarray~1192\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|myarray~1192_combout\ = !\inst13|R[3]~28_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst13|ALT_INV_R[3]~28_combout\,
	combout => \inst9|myarray~1192_combout\);

-- Location: FF_X51_Y12_N5
\inst9|myarray~329\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_myarray~0_combout\,
	d => \inst9|myarray~1192_combout\,
	ena => \inst5|myarray~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|myarray~329_q\);

-- Location: MLABCELL_X52_Y12_N3
\inst9|myarray~1197\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|myarray~1197_combout\ = !\inst13|R[3]~28_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst13|ALT_INV_R[3]~28_combout\,
	combout => \inst9|myarray~1197_combout\);

-- Location: FF_X52_Y12_N5
\inst9|myarray~297\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_myarray~0_combout\,
	d => \inst9|myarray~1197_combout\,
	ena => \inst5|myarray~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|myarray~297_q\);

-- Location: FF_X51_Y12_N14
\inst9|myarray~361\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_myarray~0_combout\,
	asdata => \inst13|R[3]~28_combout\,
	sload => VCC,
	ena => \inst3|Y\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|myarray~361_q\);

-- Location: LABCELL_X51_Y12_N12
\inst9|myarray~1186\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|myarray~1186_combout\ = ( \inst9|myarray~361_q\ & ( \inst8|PCout\(2) & ( (!\inst8|PCout\(3) & ((!\inst9|myarray~297_q\))) # (\inst8|PCout\(3) & (!\inst9|myarray~329_q\)) ) ) ) # ( !\inst9|myarray~361_q\ & ( \inst8|PCout\(2) & ( (!\inst8|PCout\(3) & 
-- ((!\inst9|myarray~297_q\))) # (\inst8|PCout\(3) & (!\inst9|myarray~329_q\)) ) ) ) # ( \inst9|myarray~361_q\ & ( !\inst8|PCout\(2) & ( (!\inst8|PCout\(3)) # (\inst9|myarray~585_q\) ) ) ) # ( !\inst9|myarray~361_q\ & ( !\inst8|PCout\(2) & ( 
-- (\inst9|myarray~585_q\ & \inst8|PCout\(3)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101111111110101010111110000110011001111000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|ALT_INV_myarray~585_q\,
	datab => \inst9|ALT_INV_myarray~329_q\,
	datac => \inst9|ALT_INV_myarray~297_q\,
	datad => \inst8|ALT_INV_PCout\(3),
	datae => \inst9|ALT_INV_myarray~361_q\,
	dataf => \inst8|ALT_INV_PCout\(2),
	combout => \inst9|myarray~1186_combout\);

-- Location: MLABCELL_X52_Y12_N9
\inst9|myarray~1147\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|myarray~1147_combout\ = (!\inst8|PCout\(2) & ((!\inst8|PCout\(3) & (!\inst9|myarray~329_q\)) # (\inst8|PCout\(3) & ((\inst9|myarray~361_q\))))) # (\inst8|PCout\(2) & (!\inst9|myarray~329_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010001010101110101000101010111010100010101011101010001010101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|ALT_INV_myarray~329_q\,
	datab => \inst8|ALT_INV_PCout\(2),
	datac => \inst8|ALT_INV_PCout\(3),
	datad => \inst9|ALT_INV_myarray~361_q\,
	combout => \inst9|myarray~1147_combout\);

-- Location: FF_X52_Y12_N2
\inst9|myarray~296\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_myarray~0_combout\,
	asdata => \inst13|R[2]~29_combout\,
	sload => VCC,
	ena => \inst5|myarray~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|myarray~296_q\);

-- Location: FF_X51_Y12_N17
\inst9|myarray~360\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_myarray~0_combout\,
	asdata => \inst13|R[2]~29_combout\,
	sload => VCC,
	ena => \inst3|Y\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|myarray~360_q\);

-- Location: FF_X51_Y12_N2
\inst9|myarray~328\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_myarray~0_combout\,
	asdata => \inst13|R[2]~29_combout\,
	sload => VCC,
	ena => \inst5|myarray~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|myarray~328_q\);

-- Location: MLABCELL_X52_Y12_N39
\inst9|myarray~1187\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|myarray~1187_combout\ = ( \inst9|myarray~328_q\ & ( \inst8|PCout\(2) & ( (\inst8|PCout\(3)) # (\inst9|myarray~296_q\) ) ) ) # ( !\inst9|myarray~328_q\ & ( \inst8|PCout\(2) & ( (\inst9|myarray~296_q\ & !\inst8|PCout\(3)) ) ) ) # ( 
-- \inst9|myarray~328_q\ & ( !\inst8|PCout\(2) & ( (!\inst8|PCout\(3) & ((\inst9|myarray~360_q\))) # (\inst8|PCout\(3) & (!\inst9|myarray~584_q\)) ) ) ) # ( !\inst9|myarray~328_q\ & ( !\inst8|PCout\(2) & ( (!\inst8|PCout\(3) & ((\inst9|myarray~360_q\))) # 
-- (\inst8|PCout\(3) & (!\inst9|myarray~584_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110011111100000011001111110001010000010100000101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|ALT_INV_myarray~296_q\,
	datab => \inst9|ALT_INV_myarray~584_q\,
	datac => \inst8|ALT_INV_PCout\(3),
	datad => \inst9|ALT_INV_myarray~360_q\,
	datae => \inst9|ALT_INV_myarray~328_q\,
	dataf => \inst8|ALT_INV_PCout\(2),
	combout => \inst9|myarray~1187_combout\);

-- Location: LABCELL_X51_Y12_N6
\inst9|myarray~1150\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|myarray~1150_combout\ = ( \inst8|PCout\(3) & ( (!\inst8|PCout\(2) & (\inst9|myarray~360_q\)) # (\inst8|PCout\(2) & ((\inst9|myarray~328_q\))) ) ) # ( !\inst8|PCout\(3) & ( \inst9|myarray~328_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100100010011101110010001001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|ALT_INV_PCout\(2),
	datab => \inst9|ALT_INV_myarray~360_q\,
	datad => \inst9|ALT_INV_myarray~328_q\,
	dataf => \inst8|ALT_INV_PCout\(3),
	combout => \inst9|myarray~1150_combout\);

-- Location: FF_X52_Y12_N44
\inst9|myarray~359\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_myarray~0_combout\,
	asdata => \inst13|R[1]~30_combout\,
	sload => VCC,
	ena => \inst3|Y\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|myarray~359_q\);

-- Location: FF_X53_Y12_N46
\inst9|myarray~327\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_myarray~0_combout\,
	asdata => \inst13|R[1]~30_combout\,
	sload => VCC,
	ena => \inst5|myarray~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|myarray~327_q\);

-- Location: MLABCELL_X52_Y12_N54
\inst9|myarray~1153\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|myarray~1153_combout\ = ( \inst8|PCout\(3) & ( (!\inst8|PCout\(2) & (\inst9|myarray~359_q\)) # (\inst8|PCout\(2) & ((\inst9|myarray~327_q\))) ) ) # ( !\inst8|PCout\(3) & ( \inst9|myarray~327_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100110000001111110011000000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst9|ALT_INV_myarray~359_q\,
	datac => \inst8|ALT_INV_PCout\(2),
	datad => \inst9|ALT_INV_myarray~327_q\,
	dataf => \inst8|ALT_INV_PCout\(3),
	combout => \inst9|myarray~1153_combout\);

-- Location: FF_X52_Y12_N37
\inst9|myarray~295\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_myarray~0_combout\,
	asdata => \inst13|R[1]~30_combout\,
	sload => VCC,
	ena => \inst5|myarray~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|myarray~295_q\);

-- Location: MLABCELL_X52_Y12_N45
\inst9|myarray~1188\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|myarray~1188_combout\ = ( \inst8|PCout\(2) & ( \inst9|myarray~327_q\ & ( (\inst8|PCout\(3)) # (\inst9|myarray~295_q\) ) ) ) # ( !\inst8|PCout\(2) & ( \inst9|myarray~327_q\ & ( (!\inst8|PCout\(3) & ((\inst9|myarray~359_q\))) # (\inst8|PCout\(3) & 
-- (!\inst9|myarray~583_q\)) ) ) ) # ( \inst8|PCout\(2) & ( !\inst9|myarray~327_q\ & ( (\inst9|myarray~295_q\ & !\inst8|PCout\(3)) ) ) ) # ( !\inst8|PCout\(2) & ( !\inst9|myarray~327_q\ & ( (!\inst8|PCout\(3) & ((\inst9|myarray~359_q\))) # (\inst8|PCout\(3) 
-- & (!\inst9|myarray~583_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101011111010001100000011000000001010111110100011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|ALT_INV_myarray~583_q\,
	datab => \inst9|ALT_INV_myarray~295_q\,
	datac => \inst8|ALT_INV_PCout\(3),
	datad => \inst9|ALT_INV_myarray~359_q\,
	datae => \inst8|ALT_INV_PCout\(2),
	dataf => \inst9|ALT_INV_myarray~327_q\,
	combout => \inst9|myarray~1188_combout\);

-- Location: FF_X51_Y12_N26
\inst9|myarray~294\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_myarray~0_combout\,
	asdata => \inst13|R[0]~31_combout\,
	sload => VCC,
	ena => \inst5|myarray~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|myarray~294_q\);

-- Location: LABCELL_X51_Y12_N18
\inst9|myarray~1196\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|myarray~1196_combout\ = !\inst13|R[0]~31_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst13|ALT_INV_R[0]~31_combout\,
	combout => \inst9|myarray~1196_combout\);

-- Location: FF_X51_Y12_N20
\inst9|myarray~326\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_myarray~0_combout\,
	d => \inst9|myarray~1196_combout\,
	ena => \inst5|myarray~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|myarray~326_q\);

-- Location: FF_X51_Y12_N11
\inst9|myarray~358\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_myarray~0_combout\,
	asdata => \inst13|R[0]~31_combout\,
	sload => VCC,
	ena => \inst3|Y\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|myarray~358_q\);

-- Location: LABCELL_X51_Y12_N27
\inst9|myarray~1189\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|myarray~1189_combout\ = ( \inst9|myarray~326_q\ & ( \inst9|myarray~358_q\ & ( (!\inst8|PCout\(3) & (((!\inst8|PCout\(2)) # (\inst9|myarray~294_q\)))) # (\inst8|PCout\(3) & (!\inst9|myarray~582_q\ & ((!\inst8|PCout\(2))))) ) ) ) # ( 
-- !\inst9|myarray~326_q\ & ( \inst9|myarray~358_q\ & ( (!\inst8|PCout\(3) & (((!\inst8|PCout\(2)) # (\inst9|myarray~294_q\)))) # (\inst8|PCout\(3) & ((!\inst9|myarray~582_q\) # ((\inst8|PCout\(2))))) ) ) ) # ( \inst9|myarray~326_q\ & ( 
-- !\inst9|myarray~358_q\ & ( (!\inst8|PCout\(3) & (((\inst9|myarray~294_q\ & \inst8|PCout\(2))))) # (\inst8|PCout\(3) & (!\inst9|myarray~582_q\ & ((!\inst8|PCout\(2))))) ) ) ) # ( !\inst9|myarray~326_q\ & ( !\inst9|myarray~358_q\ & ( (!\inst8|PCout\(3) & 
-- (((\inst9|myarray~294_q\ & \inst8|PCout\(2))))) # (\inst8|PCout\(3) & ((!\inst9|myarray~582_q\) # ((\inst8|PCout\(2))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000111111000010100011000011111010001111111111101000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|ALT_INV_myarray~582_q\,
	datab => \inst9|ALT_INV_myarray~294_q\,
	datac => \inst8|ALT_INV_PCout\(3),
	datad => \inst8|ALT_INV_PCout\(2),
	datae => \inst9|ALT_INV_myarray~326_q\,
	dataf => \inst9|ALT_INV_myarray~358_q\,
	combout => \inst9|myarray~1189_combout\);

-- Location: LABCELL_X51_Y12_N0
\inst9|myarray~1156\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|myarray~1156_combout\ = ( \inst8|PCout\(3) & ( (!\inst8|PCout\(2) & (\inst9|myarray~358_q\)) # (\inst8|PCout\(2) & ((!\inst9|myarray~326_q\))) ) ) # ( !\inst8|PCout\(3) & ( !\inst9|myarray~326_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000001110010011100100111001001110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|ALT_INV_PCout\(2),
	datab => \inst9|ALT_INV_myarray~358_q\,
	datac => \inst9|ALT_INV_myarray~326_q\,
	dataf => \inst8|ALT_INV_PCout\(3),
	combout => \inst9|myarray~1156_combout\);

-- Location: LABCELL_X51_Y12_N30
\inst2|Add0~130\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add0~130_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \inst2|Add0~130_cout\);

-- Location: LABCELL_X51_Y12_N33
\inst2|Add0~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add0~125_sumout\ = SUM(( (!\inst8|PCout\(3) & ((\inst9|myarray~1156_combout\))) # (\inst8|PCout\(3) & (\inst9|myarray~1155_combout\)) ) + ( (!\inst9|myarray~1189_combout\) # (\inst8|PCout\(3)) ) + ( \inst2|Add0~130_cout\ ))
-- \inst2|Add0~126\ = CARRY(( (!\inst8|PCout\(3) & ((\inst9|myarray~1156_combout\))) # (\inst8|PCout\(3) & (\inst9|myarray~1155_combout\)) ) + ( (!\inst9|myarray~1189_combout\) # (\inst8|PCout\(3)) ) + ( \inst2|Add0~130_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011000000110000000000000000000001000111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|ALT_INV_myarray~1155_combout\,
	datab => \inst8|ALT_INV_PCout\(3),
	datac => \inst9|ALT_INV_myarray~1189_combout\,
	datad => \inst9|ALT_INV_myarray~1156_combout\,
	cin => \inst2|Add0~130_cout\,
	sumout => \inst2|Add0~125_sumout\,
	cout => \inst2|Add0~126\);

-- Location: LABCELL_X46_Y10_N9
\inst2|Rtemp[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Rtemp\(0) = ( \inst3|Y\(2) & ( \inst2|Rtemp\(0) & ( \inst2|Add0~125_sumout\ ) ) ) # ( !\inst3|Y\(2) & ( \inst2|Rtemp\(0) ) ) # ( \inst3|Y\(2) & ( !\inst2|Rtemp\(0) & ( \inst2|Add0~125_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001111111111111111110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst2|ALT_INV_Add0~125_sumout\,
	datae => \inst3|ALT_INV_Y\(2),
	dataf => \inst2|ALT_INV_Rtemp\(0),
	combout => \inst2|Rtemp\(0));

-- Location: LABCELL_X50_Y12_N30
\inst2|Add1~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add1~125_sumout\ = SUM(( !\inst3|Y\(2) $ (((!\inst9|myarray~1189_combout\) # (\inst8|PCout\(3)))) ) + ( ((!\inst8|PCout\(3) & ((\inst9|myarray~1156_combout\))) # (\inst8|PCout\(3) & (\inst9|myarray~1155_combout\))) # (\inst3|Y\(2)) ) + ( !VCC ))
-- \inst2|Add1~126\ = CARRY(( !\inst3|Y\(2) $ (((!\inst9|myarray~1189_combout\) # (\inst8|PCout\(3)))) ) + ( ((!\inst8|PCout\(3) & ((\inst9|myarray~1156_combout\))) # (\inst8|PCout\(3) & (\inst9|myarray~1155_combout\))) # (\inst3|Y\(2)) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110010000100000000000000000000000011001110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|ALT_INV_PCout\(3),
	datab => \inst3|ALT_INV_Y\(2),
	datac => \inst9|ALT_INV_myarray~1155_combout\,
	datad => \inst9|ALT_INV_myarray~1189_combout\,
	dataf => \inst9|ALT_INV_myarray~1156_combout\,
	cin => GND,
	sumout => \inst2|Add1~125_sumout\,
	cout => \inst2|Add1~126\);

-- Location: LABCELL_X51_Y12_N21
\inst15|R[2]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst15|R[2]~0_combout\ = ( \inst5|myarray~0_combout\ & ( (\inst9|myarray~1187_combout\) # (\inst8|PCout\(3)) ) ) # ( !\inst5|myarray~0_combout\ & ( (!\inst8|PCout\(3) & \inst9|myarray~1187_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst8|ALT_INV_PCout\(3),
	datac => \inst9|ALT_INV_myarray~1187_combout\,
	dataf => \inst5|ALT_INV_myarray~0_combout\,
	combout => \inst15|R[2]~0_combout\);

-- Location: LABCELL_X50_Y12_N33
\inst2|Add1~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add1~121_sumout\ = SUM(( (!\inst3|Y\(2) & ((!\inst8|PCout\(3) & ((\inst9|myarray~1153_combout\))) # (\inst8|PCout\(3) & (\inst9|myarray~1152_combout\)))) ) + ( !\inst3|Y\(2) $ (((!\inst9|myarray~1188_combout\) # (\inst8|PCout\(3)))) ) + ( 
-- \inst2|Add1~126\ ))
-- \inst2|Add1~122\ = CARRY(( (!\inst3|Y\(2) & ((!\inst8|PCout\(3) & ((\inst9|myarray~1153_combout\))) # (\inst8|PCout\(3) & (\inst9|myarray~1152_combout\)))) ) + ( !\inst3|Y\(2) $ (((!\inst9|myarray~1188_combout\) # (\inst8|PCout\(3)))) ) + ( 
-- \inst2|Add1~126\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011000110011000000000000000000000010010001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|ALT_INV_PCout\(3),
	datab => \inst3|ALT_INV_Y\(2),
	datac => \inst9|ALT_INV_myarray~1152_combout\,
	datad => \inst9|ALT_INV_myarray~1153_combout\,
	dataf => \inst9|ALT_INV_myarray~1188_combout\,
	cin => \inst2|Add1~126\,
	sumout => \inst2|Add1~121_sumout\,
	cout => \inst2|Add1~122\);

-- Location: LABCELL_X50_Y12_N36
\inst2|Add1~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add1~117_sumout\ = SUM(( !\inst3|Y\(2) $ (!\inst15|R[2]~0_combout\) ) + ( (!\inst3|Y\(2) & ((!\inst8|PCout\(3) & ((\inst9|myarray~1150_combout\))) # (\inst8|PCout\(3) & (\inst9|myarray~1149_combout\)))) ) + ( \inst2|Add1~122\ ))
-- \inst2|Add1~118\ = CARRY(( !\inst3|Y\(2) $ (!\inst15|R[2]~0_combout\) ) + ( (!\inst3|Y\(2) & ((!\inst8|PCout\(3) & ((\inst9|myarray~1150_combout\))) # (\inst8|PCout\(3) & (\inst9|myarray~1149_combout\)))) ) + ( \inst2|Add1~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110110111001100000000000000000011001111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|ALT_INV_PCout\(3),
	datab => \inst3|ALT_INV_Y\(2),
	datac => \inst9|ALT_INV_myarray~1149_combout\,
	datad => \inst15|ALT_INV_R[2]~0_combout\,
	dataf => \inst9|ALT_INV_myarray~1150_combout\,
	cin => \inst2|Add1~122\,
	sumout => \inst2|Add1~117_sumout\,
	cout => \inst2|Add1~118\);

-- Location: LABCELL_X50_Y12_N12
\inst2|R[2]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|R[2]~3_combout\ = ( \inst2|Rtemp\(2) & ( (\inst3|Y\(2)) # (\inst2|Add1~117_sumout\) ) ) # ( !\inst2|Rtemp\(2) & ( (\inst2|Add1~117_sumout\ & !\inst3|Y\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst2|ALT_INV_Add1~117_sumout\,
	datad => \inst3|ALT_INV_Y\(2),
	dataf => \inst2|ALT_INV_Rtemp\(2),
	combout => \inst2|R[2]~3_combout\);

-- Location: LABCELL_X51_Y12_N39
\inst2|Add0~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add0~117_sumout\ = SUM(( (!\inst8|PCout\(3) & ((!\inst9|myarray~1187_combout\))) # (\inst8|PCout\(3) & (!\inst5|myarray~0_combout\)) ) + ( (!\inst8|PCout\(3) & ((\inst9|myarray~1150_combout\))) # (\inst8|PCout\(3) & (\inst9|myarray~1149_combout\)) 
-- ) + ( \inst2|Add0~122\ ))
-- \inst2|Add0~118\ = CARRY(( (!\inst8|PCout\(3) & ((!\inst9|myarray~1187_combout\))) # (\inst8|PCout\(3) & (!\inst5|myarray~0_combout\)) ) + ( (!\inst8|PCout\(3) & ((\inst9|myarray~1150_combout\))) # (\inst8|PCout\(3) & (\inst9|myarray~1149_combout\)) ) + ( 
-- \inst2|Add0~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111000011000000000000000000001110111000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_myarray~0_combout\,
	datab => \inst8|ALT_INV_PCout\(3),
	datac => \inst9|ALT_INV_myarray~1149_combout\,
	datad => \inst9|ALT_INV_myarray~1187_combout\,
	dataf => \inst9|ALT_INV_myarray~1150_combout\,
	cin => \inst2|Add0~122\,
	sumout => \inst2|Add0~117_sumout\,
	cout => \inst2|Add0~118\);

-- Location: LABCELL_X51_Y12_N42
\inst2|Add0~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add0~113_sumout\ = SUM(( (!\inst8|PCout\(3) & ((\inst9|myarray~1147_combout\))) # (\inst8|PCout\(3) & (\inst9|myarray~1146_combout\)) ) + ( (!\inst9|myarray~1186_combout\) # (\inst8|PCout\(3)) ) + ( \inst2|Add0~118\ ))
-- \inst2|Add0~114\ = CARRY(( (!\inst8|PCout\(3) & ((\inst9|myarray~1147_combout\))) # (\inst8|PCout\(3) & (\inst9|myarray~1146_combout\)) ) + ( (!\inst9|myarray~1186_combout\) # (\inst8|PCout\(3)) ) + ( \inst2|Add0~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001100110000000000000000000000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst8|ALT_INV_PCout\(3),
	datac => \inst9|ALT_INV_myarray~1146_combout\,
	datad => \inst9|ALT_INV_myarray~1147_combout\,
	dataf => \inst9|ALT_INV_myarray~1186_combout\,
	cin => \inst2|Add0~118\,
	sumout => \inst2|Add0~113_sumout\,
	cout => \inst2|Add0~114\);

-- Location: LABCELL_X50_Y12_N24
\inst2|Rtemp[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Rtemp\(3) = ( \inst2|Rtemp\(3) & ( (!\inst3|Y\(2)) # (\inst2|Add0~113_sumout\) ) ) # ( !\inst2|Rtemp\(3) & ( (\inst3|Y\(2) & \inst2|Add0~113_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111001111110011111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst3|ALT_INV_Y\(2),
	datac => \inst2|ALT_INV_Add0~113_sumout\,
	dataf => \inst2|ALT_INV_Rtemp\(3),
	combout => \inst2|Rtemp\(3));

-- Location: LABCELL_X50_Y12_N3
\inst2|R[3]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|R[3]~2_combout\ = (!\inst3|Y\(2) & (\inst2|Add1~113_sumout\)) # (\inst3|Y\(2) & ((\inst2|Rtemp\(3))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001001110111001000100111011100100010011101110010001001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Y\(2),
	datab => \inst2|ALT_INV_Add1~113_sumout\,
	datad => \inst2|ALT_INV_Rtemp\(3),
	combout => \inst2|R[3]~2_combout\);

-- Location: LABCELL_X50_Y12_N39
\inst2|Add1~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add1~113_sumout\ = SUM(( !\inst3|Y\(2) $ (((!\inst9|myarray~1186_combout\) # (\inst8|PCout\(3)))) ) + ( (!\inst3|Y\(2) & ((!\inst8|PCout\(3) & ((\inst9|myarray~1147_combout\))) # (\inst8|PCout\(3) & (\inst9|myarray~1146_combout\)))) ) + ( 
-- \inst2|Add1~118\ ))
-- \inst2|Add1~114\ = CARRY(( !\inst3|Y\(2) $ (((!\inst9|myarray~1186_combout\) # (\inst8|PCout\(3)))) ) + ( (!\inst3|Y\(2) & ((!\inst8|PCout\(3) & ((\inst9|myarray~1147_combout\))) # (\inst8|PCout\(3) & (\inst9|myarray~1146_combout\)))) ) + ( 
-- \inst2|Add1~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110110111001100000000000000000011001110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|ALT_INV_PCout\(3),
	datab => \inst3|ALT_INV_Y\(2),
	datac => \inst9|ALT_INV_myarray~1146_combout\,
	datad => \inst9|ALT_INV_myarray~1186_combout\,
	dataf => \inst9|ALT_INV_myarray~1147_combout\,
	cin => \inst2|Add1~118\,
	sumout => \inst2|Add1~113_sumout\,
	cout => \inst2|Add1~114\);

-- Location: LABCELL_X50_Y12_N42
\inst2|Add1~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add1~109_sumout\ = SUM(( !\inst3|Y\(2) $ (((!\inst9|myarray~1185_combout\) # (\inst8|PCout\(3)))) ) + ( (!\inst3|Y\(2) & ((!\inst8|PCout\(3) & ((\inst9|myarray~1144_combout\))) # (\inst8|PCout\(3) & (\inst9|myarray~1143_combout\)))) ) + ( 
-- \inst2|Add1~114\ ))
-- \inst2|Add1~110\ = CARRY(( !\inst3|Y\(2) $ (((!\inst9|myarray~1185_combout\) # (\inst8|PCout\(3)))) ) + ( (!\inst3|Y\(2) & ((!\inst8|PCout\(3) & ((\inst9|myarray~1144_combout\))) # (\inst8|PCout\(3) & (\inst9|myarray~1143_combout\)))) ) + ( 
-- \inst2|Add1~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110110111001100000000000000000011001110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|ALT_INV_PCout\(3),
	datab => \inst3|ALT_INV_Y\(2),
	datac => \inst9|ALT_INV_myarray~1143_combout\,
	datad => \inst9|ALT_INV_myarray~1185_combout\,
	dataf => \inst9|ALT_INV_myarray~1144_combout\,
	cin => \inst2|Add1~114\,
	sumout => \inst2|Add1~109_sumout\,
	cout => \inst2|Add1~110\);

-- Location: LABCELL_X50_Y12_N18
\inst2|R[4]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|R[4]~1_combout\ = ( \inst2|Add1~109_sumout\ & ( (!\inst3|Y\(2)) # (\inst2|Rtemp\(4)) ) ) # ( !\inst2|Add1~109_sumout\ & ( (\inst2|Rtemp\(4) & \inst3|Y\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111110011111100111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst2|ALT_INV_Rtemp\(4),
	datac => \inst3|ALT_INV_Y\(2),
	dataf => \inst2|ALT_INV_Add1~109_sumout\,
	combout => \inst2|R[4]~1_combout\);

-- Location: LABCELL_X51_Y12_N45
\inst2|Add0~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add0~109_sumout\ = SUM(( (!\inst9|myarray~1185_combout\) # (\inst8|PCout\(3)) ) + ( (!\inst8|PCout\(3) & (\inst9|myarray~1144_combout\)) # (\inst8|PCout\(3) & ((\inst9|myarray~1143_combout\))) ) + ( \inst2|Add0~114\ ))
-- \inst2|Add0~110\ = CARRY(( (!\inst9|myarray~1185_combout\) # (\inst8|PCout\(3)) ) + ( (!\inst8|PCout\(3) & (\inst9|myarray~1144_combout\)) # (\inst8|PCout\(3) & ((\inst9|myarray~1143_combout\))) ) + ( \inst2|Add0~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101110001011100000000000000000001111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|ALT_INV_myarray~1144_combout\,
	datab => \inst8|ALT_INV_PCout\(3),
	datac => \inst9|ALT_INV_myarray~1143_combout\,
	datad => \inst9|ALT_INV_myarray~1185_combout\,
	cin => \inst2|Add0~114\,
	sumout => \inst2|Add0~109_sumout\,
	cout => \inst2|Add0~110\);

-- Location: LABCELL_X51_Y12_N48
\inst2|Add0~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add0~105_sumout\ = SUM(( (!\inst9|myarray~1184_combout\) # (\inst8|PCout\(3)) ) + ( (!\inst8|PCout\(3) & (\inst9|myarray~1141_combout\)) # (\inst8|PCout\(3) & ((\inst9|myarray~1140_combout\))) ) + ( \inst2|Add0~110\ ))
-- \inst2|Add0~106\ = CARRY(( (!\inst9|myarray~1184_combout\) # (\inst8|PCout\(3)) ) + ( (!\inst8|PCout\(3) & (\inst9|myarray~1141_combout\)) # (\inst8|PCout\(3) & ((\inst9|myarray~1140_combout\))) ) + ( \inst2|Add0~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101110001011100000000000000000001111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|ALT_INV_myarray~1141_combout\,
	datab => \inst8|ALT_INV_PCout\(3),
	datac => \inst9|ALT_INV_myarray~1140_combout\,
	datad => \inst9|ALT_INV_myarray~1184_combout\,
	cin => \inst2|Add0~110\,
	sumout => \inst2|Add0~105_sumout\,
	cout => \inst2|Add0~106\);

-- Location: LABCELL_X50_Y12_N15
\inst2|Rtemp[5]\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Rtemp\(5) = ( \inst2|Rtemp\(5) & ( (!\inst3|Y\(2)) # (\inst2|Add0~105_sumout\) ) ) # ( !\inst2|Rtemp\(5) & ( (\inst3|Y\(2) & \inst2|Add0~105_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111001111110011111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst3|ALT_INV_Y\(2),
	datac => \inst2|ALT_INV_Add0~105_sumout\,
	dataf => \inst2|ALT_INV_Rtemp\(5),
	combout => \inst2|Rtemp\(5));

-- Location: LABCELL_X50_Y12_N27
\inst2|R[5]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|R[5]~0_combout\ = (!\inst3|Y\(2) & ((\inst2|Add1~105_sumout\))) # (\inst3|Y\(2) & (\inst2|Rtemp\(5)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101000011110101010100001111010101010000111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_Rtemp\(5),
	datac => \inst2|ALT_INV_Add1~105_sumout\,
	datad => \inst3|ALT_INV_Y\(2),
	combout => \inst2|R[5]~0_combout\);

-- Location: LABCELL_X51_Y12_N51
\inst2|Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add0~101_sumout\ = SUM(( (!\inst8|PCout\(3) & ((\inst9|myarray~1138_combout\))) # (\inst8|PCout\(3) & (\inst9|myarray~1137_combout\)) ) + ( (!\inst9|myarray~1183_combout\) # (\inst8|PCout\(3)) ) + ( \inst2|Add0~106\ ))
-- \inst2|Add0~102\ = CARRY(( (!\inst8|PCout\(3) & ((\inst9|myarray~1138_combout\))) # (\inst8|PCout\(3) & (\inst9|myarray~1137_combout\)) ) + ( (!\inst9|myarray~1183_combout\) # (\inst8|PCout\(3)) ) + ( \inst2|Add0~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001100110000000000000000000000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst8|ALT_INV_PCout\(3),
	datac => \inst9|ALT_INV_myarray~1137_combout\,
	datad => \inst9|ALT_INV_myarray~1138_combout\,
	dataf => \inst9|ALT_INV_myarray~1183_combout\,
	cin => \inst2|Add0~106\,
	sumout => \inst2|Add0~101_sumout\,
	cout => \inst2|Add0~102\);

-- Location: LABCELL_X50_Y12_N9
\inst2|Rtemp[6]\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Rtemp\(6) = ( \inst2|Add0~101_sumout\ & ( (\inst2|Rtemp\(6)) # (\inst3|Y\(2)) ) ) # ( !\inst2|Add0~101_sumout\ & ( (!\inst3|Y\(2) & \inst2|Rtemp\(6)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst3|ALT_INV_Y\(2),
	datac => \inst2|ALT_INV_Rtemp\(6),
	dataf => \inst2|ALT_INV_Add0~101_sumout\,
	combout => \inst2|Rtemp\(6));

-- Location: LABCELL_X50_Y12_N6
\inst2|R[6]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|R[6]~4_combout\ = ( \inst2|Add1~101_sumout\ & ( (!\inst3|Y\(2)) # (\inst2|Rtemp\(6)) ) ) # ( !\inst2|Add1~101_sumout\ & ( (\inst3|Y\(2) & \inst2|Rtemp\(6)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010110101111101011111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Y\(2),
	datac => \inst2|ALT_INV_Rtemp\(6),
	dataf => \inst2|ALT_INV_Add1~101_sumout\,
	combout => \inst2|R[6]~4_combout\);

-- Location: M10K_X49_Y12_N0
\inst4|myarray_rtl_0|auto_generated|ram_block1a0\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "00000000310000000030000000002900000000280000000027000000002600000000250000000024000000002300000000220000000021000000002000000000190000000018000000001700000000160000000015000000001400000000130000000012000000001100000000100000000009000000000800000000070000000006000000000500000000040000000003000000000200000000010000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/Datapath.ram0_DMem_22ecb0.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "DMem:inst4|altsyncram:myarray_rtl_0|altsyncram_n8u1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 40,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 40,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \inst5|myarray~0_combout\,
	portbre => \inst6|Equal1~0_combout\,
	clk0 => \ALT_INV_clk~inputCLKENA0_outclk\,
	portadatain => \inst4|myarray_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \inst4|myarray_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \inst4|myarray_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst4|myarray_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: LABCELL_X48_Y12_N54
\inst13|R[0]~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst13|R[0]~31_combout\ = ( \inst6|Equal1~0_combout\ & ( \inst4|myarray_rtl_0|auto_generated|ram_block1a0~portbdataout\ ) ) # ( !\inst6|Equal1~0_combout\ & ( \inst4|myarray_rtl_0|auto_generated|ram_block1a0~portbdataout\ & ( (!\inst3|Y\(2) & 
-- ((\inst2|Add1~125_sumout\))) # (\inst3|Y\(2) & (\inst2|Rtemp\(0))) ) ) ) # ( !\inst6|Equal1~0_combout\ & ( !\inst4|myarray_rtl_0|auto_generated|ram_block1a0~portbdataout\ & ( (!\inst3|Y\(2) & ((\inst2|Add1~125_sumout\))) # (\inst3|Y\(2) & 
-- (\inst2|Rtemp\(0))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100110101000000000000000000110101001101011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_Rtemp\(0),
	datab => \inst2|ALT_INV_Add1~125_sumout\,
	datac => \inst3|ALT_INV_Y\(2),
	datae => \inst6|ALT_INV_Equal1~0_combout\,
	dataf => \inst4|myarray_rtl_0|auto_generated|ALT_INV_ram_block1a0~portbdataout\,
	combout => \inst13|R[0]~31_combout\);

-- Location: MLABCELL_X52_Y12_N33
\inst9|myarray~1195\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|myarray~1195_combout\ = ( !\inst13|R[0]~31_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst13|ALT_INV_R[0]~31_combout\,
	combout => \inst9|myarray~1195_combout\);

-- Location: FF_X52_Y12_N35
\inst9|myarray~582\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_myarray~0_combout\,
	d => \inst9|myarray~1195_combout\,
	ena => \inst5|myarray~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|myarray~582_q\);

-- Location: MLABCELL_X52_Y12_N15
\inst9|myarray~1155\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|myarray~1155_combout\ = ( !\inst9|myarray~582_q\ & ( (!\inst8|PCout\(3)) # (\inst8|PCout\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111010111110101111101011111010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|ALT_INV_PCout\(2),
	datac => \inst8|ALT_INV_PCout\(3),
	dataf => \inst9|ALT_INV_myarray~582_q\,
	combout => \inst9|myarray~1155_combout\);

-- Location: LABCELL_X51_Y12_N36
\inst2|Add0~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add0~121_sumout\ = SUM(( (!\inst8|PCout\(3) & ((\inst9|myarray~1153_combout\))) # (\inst8|PCout\(3) & (\inst9|myarray~1152_combout\)) ) + ( (!\inst9|myarray~1188_combout\) # (\inst8|PCout\(3)) ) + ( \inst2|Add0~126\ ))
-- \inst2|Add0~122\ = CARRY(( (!\inst8|PCout\(3) & ((\inst9|myarray~1153_combout\))) # (\inst8|PCout\(3) & (\inst9|myarray~1152_combout\)) ) + ( (!\inst9|myarray~1188_combout\) # (\inst8|PCout\(3)) ) + ( \inst2|Add0~126\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001100110000000000000000000000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst8|ALT_INV_PCout\(3),
	datac => \inst9|ALT_INV_myarray~1152_combout\,
	datad => \inst9|ALT_INV_myarray~1153_combout\,
	dataf => \inst9|ALT_INV_myarray~1188_combout\,
	cin => \inst2|Add0~126\,
	sumout => \inst2|Add0~121_sumout\,
	cout => \inst2|Add0~122\);

-- Location: LABCELL_X50_Y13_N15
\inst2|Rtemp[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Rtemp\(1) = ( \inst3|Y\(2) & ( \inst2|Rtemp\(1) & ( \inst2|Add0~121_sumout\ ) ) ) # ( !\inst3|Y\(2) & ( \inst2|Rtemp\(1) ) ) # ( \inst3|Y\(2) & ( !\inst2|Rtemp\(1) & ( \inst2|Add0~121_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001111111111111111110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst2|ALT_INV_Add0~121_sumout\,
	datae => \inst3|ALT_INV_Y\(2),
	dataf => \inst2|ALT_INV_Rtemp\(1),
	combout => \inst2|Rtemp\(1));

-- Location: MLABCELL_X52_Y12_N0
\inst13|R[1]~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst13|R[1]~30_combout\ = ( \inst4|myarray_rtl_0|auto_generated|ram_block1a1\ & ( ((!\inst3|Y\(2) & (\inst2|Add1~121_sumout\)) # (\inst3|Y\(2) & ((\inst2|Rtemp\(1))))) # (\inst6|Equal1~0_combout\) ) ) # ( 
-- !\inst4|myarray_rtl_0|auto_generated|ram_block1a1\ & ( (!\inst6|Equal1~0_combout\ & ((!\inst3|Y\(2) & (\inst2|Add1~121_sumout\)) # (\inst3|Y\(2) & ((\inst2|Rtemp\(1)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100000000001001110000000000100111111111110010011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Y\(2),
	datab => \inst2|ALT_INV_Add1~121_sumout\,
	datac => \inst2|ALT_INV_Rtemp\(1),
	datad => \inst6|ALT_INV_Equal1~0_combout\,
	dataf => \inst4|myarray_rtl_0|auto_generated|ALT_INV_ram_block1a1\,
	combout => \inst13|R[1]~30_combout\);

-- Location: MLABCELL_X52_Y12_N24
\inst9|myarray~1194\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|myarray~1194_combout\ = !\inst13|R[1]~30_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst13|ALT_INV_R[1]~30_combout\,
	combout => \inst9|myarray~1194_combout\);

-- Location: FF_X52_Y12_N26
\inst9|myarray~583\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_myarray~0_combout\,
	d => \inst9|myarray~1194_combout\,
	ena => \inst5|myarray~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|myarray~583_q\);

-- Location: LABCELL_X51_Y12_N9
\inst9|myarray~1152\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|myarray~1152_combout\ = ( \inst8|PCout\(3) & ( (\inst8|PCout\(2) & !\inst9|myarray~583_q\) ) ) # ( !\inst8|PCout\(3) & ( !\inst9|myarray~583_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000001010000010100000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|ALT_INV_PCout\(2),
	datac => \inst9|ALT_INV_myarray~583_q\,
	dataf => \inst8|ALT_INV_PCout\(3),
	combout => \inst9|myarray~1152_combout\);

-- Location: LABCELL_X50_Y12_N21
\inst2|Rtemp[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Rtemp\(2) = ( \inst2|Add0~117_sumout\ & ( (\inst2|Rtemp\(2)) # (\inst3|Y\(2)) ) ) # ( !\inst2|Add0~117_sumout\ & ( (!\inst3|Y\(2) & \inst2|Rtemp\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst3|ALT_INV_Y\(2),
	datad => \inst2|ALT_INV_Rtemp\(2),
	dataf => \inst2|ALT_INV_Add0~117_sumout\,
	combout => \inst2|Rtemp\(2));

-- Location: LABCELL_X51_Y13_N3
\inst13|R[2]~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst13|R[2]~29_combout\ = ( \inst2|Add1~117_sumout\ & ( \inst4|myarray_rtl_0|auto_generated|ram_block1a2\ & ( ((!\inst3|Y\(2)) # (\inst2|Rtemp\(2))) # (\inst6|Equal1~0_combout\) ) ) ) # ( !\inst2|Add1~117_sumout\ & ( 
-- \inst4|myarray_rtl_0|auto_generated|ram_block1a2\ & ( ((\inst3|Y\(2) & \inst2|Rtemp\(2))) # (\inst6|Equal1~0_combout\) ) ) ) # ( \inst2|Add1~117_sumout\ & ( !\inst4|myarray_rtl_0|auto_generated|ram_block1a2\ & ( (!\inst6|Equal1~0_combout\ & 
-- ((!\inst3|Y\(2)) # (\inst2|Rtemp\(2)))) ) ) ) # ( !\inst2|Add1~117_sumout\ & ( !\inst4|myarray_rtl_0|auto_generated|ram_block1a2\ & ( (!\inst6|Equal1~0_combout\ & (\inst3|Y\(2) & \inst2|Rtemp\(2))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001010101000001010101001010101010111111111010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|ALT_INV_Equal1~0_combout\,
	datac => \inst3|ALT_INV_Y\(2),
	datad => \inst2|ALT_INV_Rtemp\(2),
	datae => \inst2|ALT_INV_Add1~117_sumout\,
	dataf => \inst4|myarray_rtl_0|auto_generated|ALT_INV_ram_block1a2\,
	combout => \inst13|R[2]~29_combout\);

-- Location: MLABCELL_X52_Y12_N57
\inst9|myarray~1193\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|myarray~1193_combout\ = !\inst13|R[2]~29_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|ALT_INV_R[2]~29_combout\,
	combout => \inst9|myarray~1193_combout\);

-- Location: FF_X52_Y12_N59
\inst9|myarray~584\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_myarray~0_combout\,
	d => \inst9|myarray~1193_combout\,
	ena => \inst5|myarray~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|myarray~584_q\);

-- Location: MLABCELL_X52_Y12_N51
\inst9|myarray~1149\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|myarray~1149_combout\ = ( \inst8|PCout\(3) & ( (\inst8|PCout\(2) & !\inst9|myarray~584_q\) ) ) # ( !\inst8|PCout\(3) & ( !\inst9|myarray~584_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst8|ALT_INV_PCout\(2),
	datad => \inst9|ALT_INV_myarray~584_q\,
	dataf => \inst8|ALT_INV_PCout\(3),
	combout => \inst9|myarray~1149_combout\);

-- Location: MLABCELL_X52_Y12_N48
\inst13|R[3]~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst13|R[3]~28_combout\ = ( \inst4|myarray_rtl_0|auto_generated|ram_block1a3\ & ( ((!\inst3|Y\(2) & (\inst2|Add1~113_sumout\)) # (\inst3|Y\(2) & ((\inst2|Rtemp\(3))))) # (\inst6|Equal1~0_combout\) ) ) # ( 
-- !\inst4|myarray_rtl_0|auto_generated|ram_block1a3\ & ( (!\inst6|Equal1~0_combout\ & ((!\inst3|Y\(2) & (\inst2|Add1~113_sumout\)) # (\inst3|Y\(2) & ((\inst2|Rtemp\(3)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000101010000010000010101001011101011111110101110101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|ALT_INV_Equal1~0_combout\,
	datab => \inst3|ALT_INV_Y\(2),
	datac => \inst2|ALT_INV_Add1~113_sumout\,
	datad => \inst2|ALT_INV_Rtemp\(3),
	dataf => \inst4|myarray_rtl_0|auto_generated|ALT_INV_ram_block1a3\,
	combout => \inst13|R[3]~28_combout\);

-- Location: FF_X52_Y12_N14
\inst9|myarray~585\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_myarray~0_combout\,
	asdata => \inst13|R[3]~28_combout\,
	sload => VCC,
	ena => \inst5|myarray~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|myarray~585_q\);

-- Location: MLABCELL_X52_Y12_N21
\inst9|myarray~1146\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|myarray~1146_combout\ = ( \inst8|PCout\(3) & ( (!\inst8|PCout\(2)) # (\inst9|myarray~585_q\) ) ) # ( !\inst8|PCout\(3) & ( \inst9|myarray~585_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111001111110011111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst8|ALT_INV_PCout\(2),
	datac => \inst9|ALT_INV_myarray~585_q\,
	dataf => \inst8|ALT_INV_PCout\(3),
	combout => \inst9|myarray~1146_combout\);

-- Location: LABCELL_X50_Y12_N0
\inst2|Rtemp[4]\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Rtemp\(4) = ( \inst3|Y\(2) & ( \inst2|Add0~109_sumout\ ) ) # ( !\inst3|Y\(2) & ( \inst2|Rtemp\(4) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst2|ALT_INV_Add0~109_sumout\,
	datad => \inst2|ALT_INV_Rtemp\(4),
	dataf => \inst3|ALT_INV_Y\(2),
	combout => \inst2|Rtemp\(4));

-- Location: LABCELL_X53_Y12_N18
\inst13|R[4]~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst13|R[4]~27_combout\ = ( \inst2|Add1~109_sumout\ & ( \inst4|myarray_rtl_0|auto_generated|ram_block1a4\ & ( ((!\inst3|Y\(2)) # (\inst2|Rtemp\(4))) # (\inst6|Equal1~0_combout\) ) ) ) # ( !\inst2|Add1~109_sumout\ & ( 
-- \inst4|myarray_rtl_0|auto_generated|ram_block1a4\ & ( ((\inst2|Rtemp\(4) & \inst3|Y\(2))) # (\inst6|Equal1~0_combout\) ) ) ) # ( \inst2|Add1~109_sumout\ & ( !\inst4|myarray_rtl_0|auto_generated|ram_block1a4\ & ( (!\inst6|Equal1~0_combout\ & 
-- ((!\inst3|Y\(2)) # (\inst2|Rtemp\(4)))) ) ) ) # ( !\inst2|Add1~109_sumout\ & ( !\inst4|myarray_rtl_0|auto_generated|ram_block1a4\ & ( (!\inst6|Equal1~0_combout\ & (\inst2|Rtemp\(4) & \inst3|Y\(2))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010101000101010001001010111010101111111011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|ALT_INV_Equal1~0_combout\,
	datab => \inst2|ALT_INV_Rtemp\(4),
	datac => \inst3|ALT_INV_Y\(2),
	datae => \inst2|ALT_INV_Add1~109_sumout\,
	dataf => \inst4|myarray_rtl_0|auto_generated|ALT_INV_ram_block1a4\,
	combout => \inst13|R[4]~27_combout\);

-- Location: LABCELL_X53_Y10_N27
\inst9|myarray~1190\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|myarray~1190_combout\ = ( !\inst13|R[4]~27_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst13|ALT_INV_R[4]~27_combout\,
	combout => \inst9|myarray~1190_combout\);

-- Location: FF_X53_Y10_N29
\inst9|myarray~586\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_myarray~0_combout\,
	d => \inst9|myarray~1190_combout\,
	ena => \inst5|myarray~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|myarray~586_q\);

-- Location: LABCELL_X53_Y10_N48
\inst9|myarray~1143\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|myarray~1143_combout\ = ( \inst9|myarray~586_q\ & ( \inst8|PCout\(3) & ( !\inst8|PCout\(2) ) ) ) # ( !\inst9|myarray~586_q\ & ( \inst8|PCout\(3) ) ) # ( !\inst9|myarray~586_q\ & ( !\inst8|PCout\(3) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111111111111111100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst8|ALT_INV_PCout\(2),
	datae => \inst9|ALT_INV_myarray~586_q\,
	dataf => \inst8|ALT_INV_PCout\(3),
	combout => \inst9|myarray~1143_combout\);

-- Location: LABCELL_X50_Y12_N45
\inst2|Add1~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add1~105_sumout\ = SUM(( (!\inst3|Y\(2) & ((!\inst8|PCout\(3) & ((\inst9|myarray~1141_combout\))) # (\inst8|PCout\(3) & (\inst9|myarray~1140_combout\)))) ) + ( !\inst3|Y\(2) $ (((!\inst9|myarray~1184_combout\) # (\inst8|PCout\(3)))) ) + ( 
-- \inst2|Add1~110\ ))
-- \inst2|Add1~106\ = CARRY(( (!\inst3|Y\(2) & ((!\inst8|PCout\(3) & ((\inst9|myarray~1141_combout\))) # (\inst8|PCout\(3) & (\inst9|myarray~1140_combout\)))) ) + ( !\inst3|Y\(2) $ (((!\inst9|myarray~1184_combout\) # (\inst8|PCout\(3)))) ) + ( 
-- \inst2|Add1~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011000110011000000000000000000000010010001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|ALT_INV_PCout\(3),
	datab => \inst3|ALT_INV_Y\(2),
	datac => \inst9|ALT_INV_myarray~1140_combout\,
	datad => \inst9|ALT_INV_myarray~1141_combout\,
	dataf => \inst9|ALT_INV_myarray~1184_combout\,
	cin => \inst2|Add1~110\,
	sumout => \inst2|Add1~105_sumout\,
	cout => \inst2|Add1~106\);

-- Location: LABCELL_X50_Y13_N36
\inst13|R[5]~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst13|R[5]~26_combout\ = ( \inst3|Y\(2) & ( \inst4|myarray_rtl_0|auto_generated|ram_block1a5\ & ( (\inst6|Equal1~0_combout\) # (\inst2|Rtemp\(5)) ) ) ) # ( !\inst3|Y\(2) & ( \inst4|myarray_rtl_0|auto_generated|ram_block1a5\ & ( 
-- (\inst6|Equal1~0_combout\) # (\inst2|Add1~105_sumout\) ) ) ) # ( \inst3|Y\(2) & ( !\inst4|myarray_rtl_0|auto_generated|ram_block1a5\ & ( (\inst2|Rtemp\(5) & !\inst6|Equal1~0_combout\) ) ) ) # ( !\inst3|Y\(2) & ( 
-- !\inst4|myarray_rtl_0|auto_generated|ram_block1a5\ & ( (\inst2|Add1~105_sumout\ & !\inst6|Equal1~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000001100000011000001011111010111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_Add1~105_sumout\,
	datab => \inst2|ALT_INV_Rtemp\(5),
	datac => \inst6|ALT_INV_Equal1~0_combout\,
	datae => \inst3|ALT_INV_Y\(2),
	dataf => \inst4|myarray_rtl_0|auto_generated|ALT_INV_ram_block1a5\,
	combout => \inst13|R[5]~26_combout\);

-- Location: FF_X51_Y13_N29
\inst9|myarray~587\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_myarray~0_combout\,
	asdata => \inst13|R[5]~26_combout\,
	sload => VCC,
	ena => \inst5|myarray~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|myarray~587_q\);

-- Location: LABCELL_X51_Y13_N30
\inst9|myarray~1140\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|myarray~1140_combout\ = ( \inst9|myarray~587_q\ & ( (!\inst8|PCout\(3)) # (\inst8|PCout\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110101111101011111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|ALT_INV_PCout\(2),
	datac => \inst8|ALT_INV_PCout\(3),
	dataf => \inst9|ALT_INV_myarray~587_q\,
	combout => \inst9|myarray~1140_combout\);

-- Location: LABCELL_X50_Y12_N48
\inst2|Add1~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add1~101_sumout\ = SUM(( (!\inst3|Y\(2) & ((!\inst8|PCout\(3) & ((\inst9|myarray~1138_combout\))) # (\inst8|PCout\(3) & (\inst9|myarray~1137_combout\)))) ) + ( !\inst3|Y\(2) $ (((!\inst9|myarray~1183_combout\) # (\inst8|PCout\(3)))) ) + ( 
-- \inst2|Add1~106\ ))
-- \inst2|Add1~102\ = CARRY(( (!\inst3|Y\(2) & ((!\inst8|PCout\(3) & ((\inst9|myarray~1138_combout\))) # (\inst8|PCout\(3) & (\inst9|myarray~1137_combout\)))) ) + ( !\inst3|Y\(2) $ (((!\inst9|myarray~1183_combout\) # (\inst8|PCout\(3)))) ) + ( 
-- \inst2|Add1~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011000110011000000000000000000000010010001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|ALT_INV_PCout\(3),
	datab => \inst3|ALT_INV_Y\(2),
	datac => \inst9|ALT_INV_myarray~1137_combout\,
	datad => \inst9|ALT_INV_myarray~1138_combout\,
	dataf => \inst9|ALT_INV_myarray~1183_combout\,
	cin => \inst2|Add1~106\,
	sumout => \inst2|Add1~101_sumout\,
	cout => \inst2|Add1~102\);

-- Location: LABCELL_X50_Y13_N18
\inst13|R[6]~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst13|R[6]~25_combout\ = ( \inst6|Equal1~0_combout\ & ( \inst4|myarray_rtl_0|auto_generated|ram_block1a6\ ) ) # ( !\inst6|Equal1~0_combout\ & ( \inst4|myarray_rtl_0|auto_generated|ram_block1a6\ & ( (!\inst3|Y\(2) & (\inst2|Add1~101_sumout\)) # 
-- (\inst3|Y\(2) & ((\inst2|Rtemp\(6)))) ) ) ) # ( !\inst6|Equal1~0_combout\ & ( !\inst4|myarray_rtl_0|auto_generated|ram_block1a6\ & ( (!\inst3|Y\(2) & (\inst2|Add1~101_sumout\)) # (\inst3|Y\(2) & ((\inst2|Rtemp\(6)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011101000111000000000000000001000111010001111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_Add1~101_sumout\,
	datab => \inst3|ALT_INV_Y\(2),
	datac => \inst2|ALT_INV_Rtemp\(6),
	datae => \inst6|ALT_INV_Equal1~0_combout\,
	dataf => \inst4|myarray_rtl_0|auto_generated|ALT_INV_ram_block1a6\,
	combout => \inst13|R[6]~25_combout\);

-- Location: FF_X51_Y13_N50
\inst9|myarray~588\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_myarray~0_combout\,
	asdata => \inst13|R[6]~25_combout\,
	sload => VCC,
	ena => \inst5|myarray~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|myarray~588_q\);

-- Location: LABCELL_X51_Y13_N18
\inst9|myarray~1137\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|myarray~1137_combout\ = ( \inst9|myarray~588_q\ & ( (!\inst8|PCout\(3)) # (\inst8|PCout\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111010101011111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|ALT_INV_PCout\(2),
	datad => \inst8|ALT_INV_PCout\(3),
	dataf => \inst9|ALT_INV_myarray~588_q\,
	combout => \inst9|myarray~1137_combout\);

-- Location: LABCELL_X50_Y12_N51
\inst2|Add1~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add1~97_sumout\ = SUM(( (!\inst3|Y\(2) & ((!\inst8|PCout\(3) & ((\inst9|myarray~1135_combout\))) # (\inst8|PCout\(3) & (\inst9|myarray~1134_combout\)))) ) + ( !\inst3|Y\(2) $ (((!\inst9|myarray~1182_combout\) # (\inst8|PCout\(3)))) ) + ( 
-- \inst2|Add1~102\ ))
-- \inst2|Add1~98\ = CARRY(( (!\inst3|Y\(2) & ((!\inst8|PCout\(3) & ((\inst9|myarray~1135_combout\))) # (\inst8|PCout\(3) & (\inst9|myarray~1134_combout\)))) ) + ( !\inst3|Y\(2) $ (((!\inst9|myarray~1182_combout\) # (\inst8|PCout\(3)))) ) + ( 
-- \inst2|Add1~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011000110011000000000000000000000010010001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|ALT_INV_PCout\(3),
	datab => \inst3|ALT_INV_Y\(2),
	datac => \inst9|ALT_INV_myarray~1134_combout\,
	datad => \inst9|ALT_INV_myarray~1135_combout\,
	dataf => \inst9|ALT_INV_myarray~1182_combout\,
	cin => \inst2|Add1~102\,
	sumout => \inst2|Add1~97_sumout\,
	cout => \inst2|Add1~98\);

-- Location: LABCELL_X51_Y12_N54
\inst2|Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add0~97_sumout\ = SUM(( (!\inst8|PCout\(3) & ((\inst9|myarray~1135_combout\))) # (\inst8|PCout\(3) & (\inst9|myarray~1134_combout\)) ) + ( (!\inst9|myarray~1182_combout\) # (\inst8|PCout\(3)) ) + ( \inst2|Add0~102\ ))
-- \inst2|Add0~98\ = CARRY(( (!\inst8|PCout\(3) & ((\inst9|myarray~1135_combout\))) # (\inst8|PCout\(3) & (\inst9|myarray~1134_combout\)) ) + ( (!\inst9|myarray~1182_combout\) # (\inst8|PCout\(3)) ) + ( \inst2|Add0~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001100110000000000000000000000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst8|ALT_INV_PCout\(3),
	datac => \inst9|ALT_INV_myarray~1134_combout\,
	datad => \inst9|ALT_INV_myarray~1135_combout\,
	dataf => \inst9|ALT_INV_myarray~1182_combout\,
	cin => \inst2|Add0~102\,
	sumout => \inst2|Add0~97_sumout\,
	cout => \inst2|Add0~98\);

-- Location: LABCELL_X51_Y13_N33
\inst2|Rtemp[7]\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Rtemp\(7) = ( \inst2|Rtemp\(7) & ( (!\inst3|Y\(2)) # (\inst2|Add0~97_sumout\) ) ) # ( !\inst2|Rtemp\(7) & ( (\inst2|Add0~97_sumout\ & \inst3|Y\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111111111001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst2|ALT_INV_Add0~97_sumout\,
	datad => \inst3|ALT_INV_Y\(2),
	dataf => \inst2|ALT_INV_Rtemp\(7),
	combout => \inst2|Rtemp\(7));

-- Location: LABCELL_X53_Y12_N6
\inst13|R[7]~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst13|R[7]~24_combout\ = ( \inst6|Equal1~0_combout\ & ( \inst4|myarray_rtl_0|auto_generated|ram_block1a7\ ) ) # ( !\inst6|Equal1~0_combout\ & ( \inst4|myarray_rtl_0|auto_generated|ram_block1a7\ & ( (!\inst3|Y\(2) & (\inst2|Add1~97_sumout\)) # 
-- (\inst3|Y\(2) & ((\inst2|Rtemp\(7)))) ) ) ) # ( !\inst6|Equal1~0_combout\ & ( !\inst4|myarray_rtl_0|auto_generated|ram_block1a7\ & ( (!\inst3|Y\(2) & (\inst2|Add1~97_sumout\)) # (\inst3|Y\(2) & ((\inst2|Rtemp\(7)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001101010011000000000000000001010011010100111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_Add1~97_sumout\,
	datab => \inst2|ALT_INV_Rtemp\(7),
	datac => \inst3|ALT_INV_Y\(2),
	datae => \inst6|ALT_INV_Equal1~0_combout\,
	dataf => \inst4|myarray_rtl_0|auto_generated|ALT_INV_ram_block1a7\,
	combout => \inst13|R[7]~24_combout\);

-- Location: FF_X52_Y12_N8
\inst9|myarray~589\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_myarray~0_combout\,
	asdata => \inst13|R[7]~24_combout\,
	sload => VCC,
	ena => \inst5|myarray~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|myarray~589_q\);

-- Location: MLABCELL_X52_Y12_N6
\inst9|myarray~1134\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|myarray~1134_combout\ = ( \inst8|PCout\(3) & ( (\inst8|PCout\(2) & \inst9|myarray~589_q\) ) ) # ( !\inst8|PCout\(3) & ( \inst9|myarray~589_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst8|ALT_INV_PCout\(2),
	datad => \inst9|ALT_INV_myarray~589_q\,
	dataf => \inst8|ALT_INV_PCout\(3),
	combout => \inst9|myarray~1134_combout\);

-- Location: LABCELL_X51_Y12_N57
\inst2|Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add0~93_sumout\ = SUM(( (!\inst9|myarray~1181_combout\) # (\inst8|PCout\(3)) ) + ( (!\inst8|PCout\(3) & ((\inst9|myarray~1132_combout\))) # (\inst8|PCout\(3) & (\inst9|myarray~1131_combout\)) ) + ( \inst2|Add0~98\ ))
-- \inst2|Add0~94\ = CARRY(( (!\inst9|myarray~1181_combout\) # (\inst8|PCout\(3)) ) + ( (!\inst8|PCout\(3) & ((\inst9|myarray~1132_combout\))) # (\inst8|PCout\(3) & (\inst9|myarray~1131_combout\)) ) + ( \inst2|Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111000101110001000000000000000001111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|ALT_INV_myarray~1131_combout\,
	datab => \inst8|ALT_INV_PCout\(3),
	datac => \inst9|ALT_INV_myarray~1132_combout\,
	datad => \inst9|ALT_INV_myarray~1181_combout\,
	cin => \inst2|Add0~98\,
	sumout => \inst2|Add0~93_sumout\,
	cout => \inst2|Add0~94\);

-- Location: MLABCELL_X52_Y12_N18
\inst2|Rtemp[8]\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Rtemp\(8) = ( \inst2|Rtemp\(8) & ( (!\inst3|Y\(2)) # (\inst2|Add0~93_sumout\) ) ) # ( !\inst2|Rtemp\(8) & ( (\inst3|Y\(2) & \inst2|Add0~93_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst3|ALT_INV_Y\(2),
	datad => \inst2|ALT_INV_Add0~93_sumout\,
	dataf => \inst2|ALT_INV_Rtemp\(8),
	combout => \inst2|Rtemp\(8));

-- Location: LABCELL_X50_Y12_N54
\inst2|Add1~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add1~93_sumout\ = SUM(( !\inst3|Y\(2) $ (((!\inst9|myarray~1181_combout\) # (\inst8|PCout\(3)))) ) + ( (!\inst3|Y\(2) & ((!\inst8|PCout\(3) & ((\inst9|myarray~1132_combout\))) # (\inst8|PCout\(3) & (\inst9|myarray~1131_combout\)))) ) + ( 
-- \inst2|Add1~98\ ))
-- \inst2|Add1~94\ = CARRY(( !\inst3|Y\(2) $ (((!\inst9|myarray~1181_combout\) # (\inst8|PCout\(3)))) ) + ( (!\inst3|Y\(2) & ((!\inst8|PCout\(3) & ((\inst9|myarray~1132_combout\))) # (\inst8|PCout\(3) & (\inst9|myarray~1131_combout\)))) ) + ( \inst2|Add1~98\ 
-- ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110110111001100000000000000000011001110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|ALT_INV_PCout\(3),
	datab => \inst3|ALT_INV_Y\(2),
	datac => \inst9|ALT_INV_myarray~1131_combout\,
	datad => \inst9|ALT_INV_myarray~1181_combout\,
	dataf => \inst9|ALT_INV_myarray~1132_combout\,
	cin => \inst2|Add1~98\,
	sumout => \inst2|Add1~93_sumout\,
	cout => \inst2|Add1~94\);

-- Location: LABCELL_X53_Y12_N42
\inst13|R[8]~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst13|R[8]~23_combout\ = ( \inst2|Add1~93_sumout\ & ( \inst4|myarray_rtl_0|auto_generated|ram_block1a8\ & ( ((!\inst3|Y\(2)) # (\inst2|Rtemp\(8))) # (\inst6|Equal1~0_combout\) ) ) ) # ( !\inst2|Add1~93_sumout\ & ( 
-- \inst4|myarray_rtl_0|auto_generated|ram_block1a8\ & ( ((\inst2|Rtemp\(8) & \inst3|Y\(2))) # (\inst6|Equal1~0_combout\) ) ) ) # ( \inst2|Add1~93_sumout\ & ( !\inst4|myarray_rtl_0|auto_generated|ram_block1a8\ & ( (!\inst6|Equal1~0_combout\ & 
-- ((!\inst3|Y\(2)) # (\inst2|Rtemp\(8)))) ) ) ) # ( !\inst2|Add1~93_sumout\ & ( !\inst4|myarray_rtl_0|auto_generated|ram_block1a8\ & ( (!\inst6|Equal1~0_combout\ & (\inst2|Rtemp\(8) & \inst3|Y\(2))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010101000101010001001010111010101111111011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|ALT_INV_Equal1~0_combout\,
	datab => \inst2|ALT_INV_Rtemp\(8),
	datac => \inst3|ALT_INV_Y\(2),
	datae => \inst2|ALT_INV_Add1~93_sumout\,
	dataf => \inst4|myarray_rtl_0|auto_generated|ALT_INV_ram_block1a8\,
	combout => \inst13|R[8]~23_combout\);

-- Location: FF_X52_Y12_N31
\inst9|myarray~590\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_myarray~0_combout\,
	asdata => \inst13|R[8]~23_combout\,
	sload => VCC,
	ena => \inst5|myarray~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|myarray~590_q\);

-- Location: MLABCELL_X52_Y12_N30
\inst9|myarray~1131\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|myarray~1131_combout\ = ( \inst8|PCout\(3) & ( (\inst8|PCout\(2) & \inst9|myarray~590_q\) ) ) # ( !\inst8|PCout\(3) & ( \inst9|myarray~590_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000010101010000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|ALT_INV_PCout\(2),
	datad => \inst9|ALT_INV_myarray~590_q\,
	dataf => \inst8|ALT_INV_PCout\(3),
	combout => \inst9|myarray~1131_combout\);

-- Location: LABCELL_X51_Y11_N30
\inst2|Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add0~89_sumout\ = SUM(( (!\inst8|PCout\(3) & ((\inst9|myarray~1129_combout\))) # (\inst8|PCout\(3) & (\inst9|myarray~1128_combout\)) ) + ( (!\inst9|myarray~1180_combout\) # (\inst8|PCout\(3)) ) + ( \inst2|Add0~94\ ))
-- \inst2|Add0~90\ = CARRY(( (!\inst8|PCout\(3) & ((\inst9|myarray~1129_combout\))) # (\inst8|PCout\(3) & (\inst9|myarray~1128_combout\)) ) + ( (!\inst9|myarray~1180_combout\) # (\inst8|PCout\(3)) ) + ( \inst2|Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001010101000000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|ALT_INV_PCout\(3),
	datac => \inst9|ALT_INV_myarray~1128_combout\,
	datad => \inst9|ALT_INV_myarray~1129_combout\,
	dataf => \inst9|ALT_INV_myarray~1180_combout\,
	cin => \inst2|Add0~94\,
	sumout => \inst2|Add0~89_sumout\,
	cout => \inst2|Add0~90\);

-- Location: LABCELL_X51_Y9_N12
\inst2|Rtemp[9]\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Rtemp\(9) = ( \inst2|Rtemp\(9) & ( (!\inst3|Y\(2)) # (\inst2|Add0~89_sumout\) ) ) # ( !\inst2|Rtemp\(9) & ( (\inst2|Add0~89_sumout\ & \inst3|Y\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst2|ALT_INV_Add0~89_sumout\,
	datad => \inst3|ALT_INV_Y\(2),
	dataf => \inst2|ALT_INV_Rtemp\(9),
	combout => \inst2|Rtemp\(9));

-- Location: LABCELL_X50_Y12_N57
\inst2|Add1~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add1~89_sumout\ = SUM(( !\inst3|Y\(2) $ (((!\inst9|myarray~1180_combout\) # (\inst8|PCout\(3)))) ) + ( (!\inst3|Y\(2) & ((!\inst8|PCout\(3) & ((\inst9|myarray~1129_combout\))) # (\inst8|PCout\(3) & (\inst9|myarray~1128_combout\)))) ) + ( 
-- \inst2|Add1~94\ ))
-- \inst2|Add1~90\ = CARRY(( !\inst3|Y\(2) $ (((!\inst9|myarray~1180_combout\) # (\inst8|PCout\(3)))) ) + ( (!\inst3|Y\(2) & ((!\inst8|PCout\(3) & ((\inst9|myarray~1129_combout\))) # (\inst8|PCout\(3) & (\inst9|myarray~1128_combout\)))) ) + ( \inst2|Add1~94\ 
-- ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110110111001100000000000000000011001110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|ALT_INV_PCout\(3),
	datab => \inst3|ALT_INV_Y\(2),
	datac => \inst9|ALT_INV_myarray~1128_combout\,
	datad => \inst9|ALT_INV_myarray~1180_combout\,
	dataf => \inst9|ALT_INV_myarray~1129_combout\,
	cin => \inst2|Add1~94\,
	sumout => \inst2|Add1~89_sumout\,
	cout => \inst2|Add1~90\);

-- Location: MLABCELL_X52_Y12_N27
\inst13|R[9]~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst13|R[9]~22_combout\ = ( \inst4|myarray_rtl_0|auto_generated|ram_block1a9\ & ( ((!\inst3|Y\(2) & ((\inst2|Add1~89_sumout\))) # (\inst3|Y\(2) & (\inst2|Rtemp\(9)))) # (\inst6|Equal1~0_combout\) ) ) # ( !\inst4|myarray_rtl_0|auto_generated|ram_block1a9\ 
-- & ( (!\inst6|Equal1~0_combout\ & ((!\inst3|Y\(2) & ((\inst2|Add1~89_sumout\))) # (\inst3|Y\(2) & (\inst2|Rtemp\(9))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010100010000000101010001001010111111101110101011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|ALT_INV_Equal1~0_combout\,
	datab => \inst2|ALT_INV_Rtemp\(9),
	datac => \inst3|ALT_INV_Y\(2),
	datad => \inst2|ALT_INV_Add1~89_sumout\,
	dataf => \inst4|myarray_rtl_0|auto_generated|ALT_INV_ram_block1a9\,
	combout => \inst13|R[9]~22_combout\);

-- Location: FF_X51_Y11_N7
\inst9|myarray~591\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_myarray~0_combout\,
	asdata => \inst13|R[9]~22_combout\,
	sload => VCC,
	ena => \inst5|myarray~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|myarray~591_q\);

-- Location: LABCELL_X51_Y11_N6
\inst9|myarray~1128\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|myarray~1128_combout\ = ( \inst8|PCout\(3) & ( (\inst8|PCout\(2) & \inst9|myarray~591_q\) ) ) # ( !\inst8|PCout\(3) & ( \inst9|myarray~591_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000001100110000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst8|ALT_INV_PCout\(2),
	datad => \inst9|ALT_INV_myarray~591_q\,
	dataf => \inst8|ALT_INV_PCout\(3),
	combout => \inst9|myarray~1128_combout\);

-- Location: LABCELL_X50_Y11_N30
\inst2|Add1~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add1~85_sumout\ = SUM(( (!\inst3|Y\(2) & ((!\inst8|PCout\(3) & ((\inst9|myarray~1126_combout\))) # (\inst8|PCout\(3) & (\inst9|myarray~1125_combout\)))) ) + ( !\inst3|Y\(2) $ (((!\inst9|myarray~1179_combout\) # (\inst8|PCout\(3)))) ) + ( 
-- \inst2|Add1~90\ ))
-- \inst2|Add1~86\ = CARRY(( (!\inst3|Y\(2) & ((!\inst8|PCout\(3) & ((\inst9|myarray~1126_combout\))) # (\inst8|PCout\(3) & (\inst9|myarray~1125_combout\)))) ) + ( !\inst3|Y\(2) $ (((!\inst9|myarray~1179_combout\) # (\inst8|PCout\(3)))) ) + ( \inst2|Add1~90\ 
-- ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011000110011000000000000000000000010010001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|ALT_INV_PCout\(3),
	datab => \inst3|ALT_INV_Y\(2),
	datac => \inst9|ALT_INV_myarray~1125_combout\,
	datad => \inst9|ALT_INV_myarray~1126_combout\,
	dataf => \inst9|ALT_INV_myarray~1179_combout\,
	cin => \inst2|Add1~90\,
	sumout => \inst2|Add1~85_sumout\,
	cout => \inst2|Add1~86\);

-- Location: LABCELL_X51_Y11_N33
\inst2|Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add0~85_sumout\ = SUM(( (!\inst9|myarray~1179_combout\) # (\inst8|PCout\(3)) ) + ( (!\inst8|PCout\(3) & ((\inst9|myarray~1126_combout\))) # (\inst8|PCout\(3) & (\inst9|myarray~1125_combout\)) ) + ( \inst2|Add0~90\ ))
-- \inst2|Add0~86\ = CARRY(( (!\inst9|myarray~1179_combout\) # (\inst8|PCout\(3)) ) + ( (!\inst8|PCout\(3) & ((\inst9|myarray~1126_combout\))) # (\inst8|PCout\(3) & (\inst9|myarray~1125_combout\)) ) + ( \inst2|Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111001001110010000000000000000001111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|ALT_INV_PCout\(3),
	datab => \inst9|ALT_INV_myarray~1125_combout\,
	datac => \inst9|ALT_INV_myarray~1126_combout\,
	datad => \inst9|ALT_INV_myarray~1179_combout\,
	cin => \inst2|Add0~90\,
	sumout => \inst2|Add0~85_sumout\,
	cout => \inst2|Add0~86\);

-- Location: LABCELL_X50_Y13_N45
\inst2|Rtemp[10]\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Rtemp\(10) = ( \inst2|Rtemp\(10) & ( \inst2|Add0~85_sumout\ ) ) # ( !\inst2|Rtemp\(10) & ( \inst2|Add0~85_sumout\ & ( \inst3|Y\(2) ) ) ) # ( \inst2|Rtemp\(10) & ( !\inst2|Add0~85_sumout\ & ( !\inst3|Y\(2) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst3|ALT_INV_Y\(2),
	datae => \inst2|ALT_INV_Rtemp\(10),
	dataf => \inst2|ALT_INV_Add0~85_sumout\,
	combout => \inst2|Rtemp\(10));

-- Location: LABCELL_X50_Y13_N51
\inst13|R[10]~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst13|R[10]~21_combout\ = ( \inst6|Equal1~0_combout\ & ( \inst4|myarray_rtl_0|auto_generated|ram_block1a10\ ) ) # ( !\inst6|Equal1~0_combout\ & ( \inst4|myarray_rtl_0|auto_generated|ram_block1a10\ & ( (!\inst3|Y\(2) & (\inst2|Add1~85_sumout\)) # 
-- (\inst3|Y\(2) & ((\inst2|Rtemp\(10)))) ) ) ) # ( !\inst6|Equal1~0_combout\ & ( !\inst4|myarray_rtl_0|auto_generated|ram_block1a10\ & ( (!\inst3|Y\(2) & (\inst2|Add1~85_sumout\)) # (\inst3|Y\(2) & ((\inst2|Rtemp\(10)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100110011000000000000000001010101001100111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_Add1~85_sumout\,
	datab => \inst2|ALT_INV_Rtemp\(10),
	datad => \inst3|ALT_INV_Y\(2),
	datae => \inst6|ALT_INV_Equal1~0_combout\,
	dataf => \inst4|myarray_rtl_0|auto_generated|ALT_INV_ram_block1a10\,
	combout => \inst13|R[10]~21_combout\);

-- Location: FF_X51_Y13_N32
\inst9|myarray~592\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_myarray~0_combout\,
	asdata => \inst13|R[10]~21_combout\,
	sload => VCC,
	ena => \inst5|myarray~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|myarray~592_q\);

-- Location: LABCELL_X51_Y13_N42
\inst9|myarray~1125\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|myarray~1125_combout\ = ( \inst9|myarray~592_q\ & ( (!\inst8|PCout\(3)) # (\inst8|PCout\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110101111101011111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|ALT_INV_PCout\(2),
	datac => \inst8|ALT_INV_PCout\(3),
	dataf => \inst9|ALT_INV_myarray~592_q\,
	combout => \inst9|myarray~1125_combout\);

-- Location: LABCELL_X50_Y11_N33
\inst2|Add1~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add1~81_sumout\ = SUM(( (!\inst3|Y\(2) & ((!\inst8|PCout\(3) & ((\inst9|myarray~1123_combout\))) # (\inst8|PCout\(3) & (\inst9|myarray~1122_combout\)))) ) + ( !\inst3|Y\(2) $ (((!\inst9|myarray~1178_combout\) # (\inst8|PCout\(3)))) ) + ( 
-- \inst2|Add1~86\ ))
-- \inst2|Add1~82\ = CARRY(( (!\inst3|Y\(2) & ((!\inst8|PCout\(3) & ((\inst9|myarray~1123_combout\))) # (\inst8|PCout\(3) & (\inst9|myarray~1122_combout\)))) ) + ( !\inst3|Y\(2) $ (((!\inst9|myarray~1178_combout\) # (\inst8|PCout\(3)))) ) + ( \inst2|Add1~86\ 
-- ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011000110011000000000000000000000010010001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|ALT_INV_PCout\(3),
	datab => \inst3|ALT_INV_Y\(2),
	datac => \inst9|ALT_INV_myarray~1122_combout\,
	datad => \inst9|ALT_INV_myarray~1123_combout\,
	dataf => \inst9|ALT_INV_myarray~1178_combout\,
	cin => \inst2|Add1~86\,
	sumout => \inst2|Add1~81_sumout\,
	cout => \inst2|Add1~82\);

-- Location: LABCELL_X51_Y11_N36
\inst2|Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add0~81_sumout\ = SUM(( (!\inst8|PCout\(3) & ((\inst9|myarray~1123_combout\))) # (\inst8|PCout\(3) & (\inst9|myarray~1122_combout\)) ) + ( (!\inst9|myarray~1178_combout\) # (\inst8|PCout\(3)) ) + ( \inst2|Add0~86\ ))
-- \inst2|Add0~82\ = CARRY(( (!\inst8|PCout\(3) & ((\inst9|myarray~1123_combout\))) # (\inst8|PCout\(3) & (\inst9|myarray~1122_combout\)) ) + ( (!\inst9|myarray~1178_combout\) # (\inst8|PCout\(3)) ) + ( \inst2|Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010100000101000000000000000000001000110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|ALT_INV_PCout\(3),
	datab => \inst9|ALT_INV_myarray~1122_combout\,
	datac => \inst9|ALT_INV_myarray~1178_combout\,
	datad => \inst9|ALT_INV_myarray~1123_combout\,
	cin => \inst2|Add0~86\,
	sumout => \inst2|Add0~81_sumout\,
	cout => \inst2|Add0~82\);

-- Location: LABCELL_X50_Y13_N9
\inst2|Rtemp[11]\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Rtemp\(11) = ( \inst2|Rtemp\(11) & ( (!\inst3|Y\(2)) # (\inst2|Add0~81_sumout\) ) ) # ( !\inst2|Rtemp\(11) & ( (\inst2|Add0~81_sumout\ & \inst3|Y\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111111111001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst2|ALT_INV_Add0~81_sumout\,
	datad => \inst3|ALT_INV_Y\(2),
	dataf => \inst2|ALT_INV_Rtemp\(11),
	combout => \inst2|Rtemp\(11));

-- Location: LABCELL_X48_Y11_N39
\inst13|R[11]~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst13|R[11]~20_combout\ = ( \inst4|myarray_rtl_0|auto_generated|ram_block1a11\ & ( ((!\inst3|Y\(2) & (\inst2|Add1~81_sumout\)) # (\inst3|Y\(2) & ((\inst2|Rtemp\(11))))) # (\inst6|Equal1~0_combout\) ) ) # ( 
-- !\inst4|myarray_rtl_0|auto_generated|ram_block1a11\ & ( (!\inst6|Equal1~0_combout\ & ((!\inst3|Y\(2) & (\inst2|Add1~81_sumout\)) # (\inst3|Y\(2) & ((\inst2|Rtemp\(11)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001100000000010100110000000001010011111111110101001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_Add1~81_sumout\,
	datab => \inst2|ALT_INV_Rtemp\(11),
	datac => \inst3|ALT_INV_Y\(2),
	datad => \inst6|ALT_INV_Equal1~0_combout\,
	dataf => \inst4|myarray_rtl_0|auto_generated|ALT_INV_ram_block1a11\,
	combout => \inst13|R[11]~20_combout\);

-- Location: FF_X51_Y11_N28
\inst9|myarray~593\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_myarray~0_combout\,
	asdata => \inst13|R[11]~20_combout\,
	sload => VCC,
	ena => \inst5|myarray~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|myarray~593_q\);

-- Location: LABCELL_X51_Y11_N27
\inst9|myarray~1122\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|myarray~1122_combout\ = (\inst9|myarray~593_q\ & ((!\inst8|PCout\(3)) # (\inst8|PCout\(2))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010111011000000001011101100000000101110110000000010111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|ALT_INV_PCout\(3),
	datab => \inst8|ALT_INV_PCout\(2),
	datad => \inst9|ALT_INV_myarray~593_q\,
	combout => \inst9|myarray~1122_combout\);

-- Location: LABCELL_X50_Y11_N36
\inst2|Add1~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add1~77_sumout\ = SUM(( (!\inst3|Y\(2) & ((!\inst8|PCout\(3) & ((\inst9|myarray~1120_combout\))) # (\inst8|PCout\(3) & (\inst9|myarray~1119_combout\)))) ) + ( !\inst3|Y\(2) $ (((!\inst9|myarray~1177_combout\) # (\inst8|PCout\(3)))) ) + ( 
-- \inst2|Add1~82\ ))
-- \inst2|Add1~78\ = CARRY(( (!\inst3|Y\(2) & ((!\inst8|PCout\(3) & ((\inst9|myarray~1120_combout\))) # (\inst8|PCout\(3) & (\inst9|myarray~1119_combout\)))) ) + ( !\inst3|Y\(2) $ (((!\inst9|myarray~1177_combout\) # (\inst8|PCout\(3)))) ) + ( \inst2|Add1~82\ 
-- ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011000110011000000000000000000000010010001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|ALT_INV_PCout\(3),
	datab => \inst3|ALT_INV_Y\(2),
	datac => \inst9|ALT_INV_myarray~1119_combout\,
	datad => \inst9|ALT_INV_myarray~1120_combout\,
	dataf => \inst9|ALT_INV_myarray~1177_combout\,
	cin => \inst2|Add1~82\,
	sumout => \inst2|Add1~77_sumout\,
	cout => \inst2|Add1~78\);

-- Location: LABCELL_X51_Y11_N39
\inst2|Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add0~77_sumout\ = SUM(( (!\inst9|myarray~1177_combout\) # (\inst8|PCout\(3)) ) + ( (!\inst8|PCout\(3) & ((\inst9|myarray~1120_combout\))) # (\inst8|PCout\(3) & (\inst9|myarray~1119_combout\)) ) + ( \inst2|Add0~82\ ))
-- \inst2|Add0~78\ = CARRY(( (!\inst9|myarray~1177_combout\) # (\inst8|PCout\(3)) ) + ( (!\inst8|PCout\(3) & ((\inst9|myarray~1120_combout\))) # (\inst8|PCout\(3) & (\inst9|myarray~1119_combout\)) ) + ( \inst2|Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100101000000000000000000001111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|ALT_INV_PCout\(3),
	datac => \inst9|ALT_INV_myarray~1119_combout\,
	datad => \inst9|ALT_INV_myarray~1177_combout\,
	dataf => \inst9|ALT_INV_myarray~1120_combout\,
	cin => \inst2|Add0~82\,
	sumout => \inst2|Add0~77_sumout\,
	cout => \inst2|Add0~78\);

-- Location: LABCELL_X51_Y9_N33
\inst2|Rtemp[12]\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Rtemp\(12) = ( \inst3|Y\(2) & ( \inst2|Rtemp\(12) & ( \inst2|Add0~77_sumout\ ) ) ) # ( !\inst3|Y\(2) & ( \inst2|Rtemp\(12) ) ) # ( \inst3|Y\(2) & ( !\inst2|Rtemp\(12) & ( \inst2|Add0~77_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010111111111111111110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_Add0~77_sumout\,
	datae => \inst3|ALT_INV_Y\(2),
	dataf => \inst2|ALT_INV_Rtemp\(12),
	combout => \inst2|Rtemp\(12));

-- Location: LABCELL_X48_Y11_N48
\inst13|R[12]~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst13|R[12]~19_combout\ = ( \inst2|Rtemp\(12) & ( \inst4|myarray_rtl_0|auto_generated|ram_block1a12\ & ( ((!\inst8|PCout\(3) & ((\inst8|PCout\(2)))) # (\inst8|PCout\(3) & (!\inst5|myarray~0_combout\))) # (\inst2|Add1~77_sumout\) ) ) ) # ( 
-- !\inst2|Rtemp\(12) & ( \inst4|myarray_rtl_0|auto_generated|ram_block1a12\ & ( (!\inst2|Add1~77_sumout\ & (\inst8|PCout\(3) & (!\inst5|myarray~0_combout\))) # (\inst2|Add1~77_sumout\ & (((!\inst8|PCout\(2))) # (\inst8|PCout\(3)))) ) ) ) # ( 
-- \inst2|Rtemp\(12) & ( !\inst4|myarray_rtl_0|auto_generated|ram_block1a12\ & ( (!\inst2|Add1~77_sumout\ & (!\inst8|PCout\(3) & ((\inst8|PCout\(2))))) # (\inst2|Add1~77_sumout\ & ((!\inst8|PCout\(3)) # ((\inst5|myarray~0_combout\)))) ) ) ) # ( 
-- !\inst2|Rtemp\(12) & ( !\inst4|myarray_rtl_0|auto_generated|ram_block1a12\ & ( (\inst2|Add1~77_sumout\ & ((!\inst8|PCout\(3) & ((!\inst8|PCout\(2)))) # (\inst8|PCout\(3) & (\inst5|myarray~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010100000001010001011100110101110101001100010111010111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_Add1~77_sumout\,
	datab => \inst8|ALT_INV_PCout\(3),
	datac => \inst5|ALT_INV_myarray~0_combout\,
	datad => \inst8|ALT_INV_PCout\(2),
	datae => \inst2|ALT_INV_Rtemp\(12),
	dataf => \inst4|myarray_rtl_0|auto_generated|ALT_INV_ram_block1a12\,
	combout => \inst13|R[12]~19_combout\);

-- Location: FF_X47_Y11_N23
\inst9|myarray~594\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_myarray~0_combout\,
	asdata => \inst13|R[12]~19_combout\,
	sload => VCC,
	ena => \inst5|myarray~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|myarray~594_q\);

-- Location: MLABCELL_X47_Y11_N48
\inst9|myarray~1119\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|myarray~1119_combout\ = ( \inst8|PCout\(3) & ( (\inst8|PCout\(2) & \inst9|myarray~594_q\) ) ) # ( !\inst8|PCout\(3) & ( \inst9|myarray~594_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000001100110000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst8|ALT_INV_PCout\(2),
	datad => \inst9|ALT_INV_myarray~594_q\,
	dataf => \inst8|ALT_INV_PCout\(3),
	combout => \inst9|myarray~1119_combout\);

-- Location: LABCELL_X51_Y11_N42
\inst2|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add0~73_sumout\ = SUM(( (!\inst9|myarray~1176_combout\) # (\inst8|PCout\(3)) ) + ( (!\inst8|PCout\(3) & ((\inst9|myarray~1117_combout\))) # (\inst8|PCout\(3) & (\inst9|myarray~1116_combout\)) ) + ( \inst2|Add0~78\ ))
-- \inst2|Add0~74\ = CARRY(( (!\inst9|myarray~1176_combout\) # (\inst8|PCout\(3)) ) + ( (!\inst8|PCout\(3) & ((\inst9|myarray~1117_combout\))) # (\inst8|PCout\(3) & (\inst9|myarray~1116_combout\)) ) + ( \inst2|Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111011100100010000000000000000001111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|ALT_INV_PCout\(3),
	datab => \inst9|ALT_INV_myarray~1116_combout\,
	datad => \inst9|ALT_INV_myarray~1176_combout\,
	dataf => \inst9|ALT_INV_myarray~1117_combout\,
	cin => \inst2|Add0~78\,
	sumout => \inst2|Add0~73_sumout\,
	cout => \inst2|Add0~74\);

-- Location: LABCELL_X50_Y11_N21
\inst2|Rtemp[13]\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Rtemp\(13) = ( \inst2|Rtemp\(13) & ( \inst3|Y\(2) & ( \inst2|Add0~73_sumout\ ) ) ) # ( !\inst2|Rtemp\(13) & ( \inst3|Y\(2) & ( \inst2|Add0~73_sumout\ ) ) ) # ( \inst2|Rtemp\(13) & ( !\inst3|Y\(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_Add0~73_sumout\,
	datae => \inst2|ALT_INV_Rtemp\(13),
	dataf => \inst3|ALT_INV_Y\(2),
	combout => \inst2|Rtemp\(13));

-- Location: LABCELL_X50_Y11_N39
\inst2|Add1~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add1~73_sumout\ = SUM(( (!\inst3|Y\(2) & ((!\inst8|PCout\(3) & ((\inst9|myarray~1117_combout\))) # (\inst8|PCout\(3) & (\inst9|myarray~1116_combout\)))) ) + ( !\inst3|Y\(2) $ (((!\inst9|myarray~1176_combout\) # (\inst8|PCout\(3)))) ) + ( 
-- \inst2|Add1~78\ ))
-- \inst2|Add1~74\ = CARRY(( (!\inst3|Y\(2) & ((!\inst8|PCout\(3) & ((\inst9|myarray~1117_combout\))) # (\inst8|PCout\(3) & (\inst9|myarray~1116_combout\)))) ) + ( !\inst3|Y\(2) $ (((!\inst9|myarray~1176_combout\) # (\inst8|PCout\(3)))) ) + ( \inst2|Add1~78\ 
-- ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011000110011000000000000000000000010010001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|ALT_INV_PCout\(3),
	datab => \inst3|ALT_INV_Y\(2),
	datac => \inst9|ALT_INV_myarray~1116_combout\,
	datad => \inst9|ALT_INV_myarray~1117_combout\,
	dataf => \inst9|ALT_INV_myarray~1176_combout\,
	cin => \inst2|Add1~78\,
	sumout => \inst2|Add1~73_sumout\,
	cout => \inst2|Add1~74\);

-- Location: LABCELL_X50_Y11_N24
\inst13|R[13]~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst13|R[13]~18_combout\ = ( \inst2|Add1~73_sumout\ & ( \inst4|myarray_rtl_0|auto_generated|ram_block1a13\ & ( ((!\inst8|PCout\(2)) # (\inst2|Rtemp\(13))) # (\inst8|PCout\(3)) ) ) ) # ( !\inst2|Add1~73_sumout\ & ( 
-- \inst4|myarray_rtl_0|auto_generated|ram_block1a13\ & ( (!\inst8|PCout\(3) & (((\inst8|PCout\(2) & \inst2|Rtemp\(13))))) # (\inst8|PCout\(3) & (!\inst5|myarray~0_combout\)) ) ) ) # ( \inst2|Add1~73_sumout\ & ( 
-- !\inst4|myarray_rtl_0|auto_generated|ram_block1a13\ & ( (!\inst8|PCout\(3) & (((!\inst8|PCout\(2)) # (\inst2|Rtemp\(13))))) # (\inst8|PCout\(3) & (\inst5|myarray~0_combout\)) ) ) ) # ( !\inst2|Add1~73_sumout\ & ( 
-- !\inst4|myarray_rtl_0|auto_generated|ram_block1a13\ & ( (!\inst8|PCout\(3) & (\inst8|PCout\(2) & \inst2|Rtemp\(13))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001010101100011011101101000100010011101111010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|ALT_INV_PCout\(3),
	datab => \inst5|ALT_INV_myarray~0_combout\,
	datac => \inst8|ALT_INV_PCout\(2),
	datad => \inst2|ALT_INV_Rtemp\(13),
	datae => \inst2|ALT_INV_Add1~73_sumout\,
	dataf => \inst4|myarray_rtl_0|auto_generated|ALT_INV_ram_block1a13\,
	combout => \inst13|R[13]~18_combout\);

-- Location: FF_X51_Y11_N22
\inst9|myarray~595\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_myarray~0_combout\,
	asdata => \inst13|R[13]~18_combout\,
	sload => VCC,
	ena => \inst5|myarray~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|myarray~595_q\);

-- Location: LABCELL_X51_Y11_N21
\inst9|myarray~1116\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|myarray~1116_combout\ = ( \inst8|PCout\(3) & ( (\inst8|PCout\(2) & \inst9|myarray~595_q\) ) ) # ( !\inst8|PCout\(3) & ( \inst9|myarray~595_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000001100110000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst8|ALT_INV_PCout\(2),
	datad => \inst9|ALT_INV_myarray~595_q\,
	dataf => \inst8|ALT_INV_PCout\(3),
	combout => \inst9|myarray~1116_combout\);

-- Location: LABCELL_X51_Y11_N45
\inst2|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add0~69_sumout\ = SUM(( (!\inst8|PCout\(3) & ((\inst9|myarray~1114_combout\))) # (\inst8|PCout\(3) & (\inst9|myarray~1113_combout\)) ) + ( (!\inst9|myarray~1175_combout\) # (\inst8|PCout\(3)) ) + ( \inst2|Add0~74\ ))
-- \inst2|Add0~70\ = CARRY(( (!\inst8|PCout\(3) & ((\inst9|myarray~1114_combout\))) # (\inst8|PCout\(3) & (\inst9|myarray~1113_combout\)) ) + ( (!\inst9|myarray~1175_combout\) # (\inst8|PCout\(3)) ) + ( \inst2|Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001010101000000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|ALT_INV_PCout\(3),
	datac => \inst9|ALT_INV_myarray~1113_combout\,
	datad => \inst9|ALT_INV_myarray~1114_combout\,
	dataf => \inst9|ALT_INV_myarray~1175_combout\,
	cin => \inst2|Add0~74\,
	sumout => \inst2|Add0~69_sumout\,
	cout => \inst2|Add0~70\);

-- Location: LABCELL_X51_Y11_N18
\inst2|Rtemp[14]\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Rtemp\(14) = (!\inst3|Y\(2) & (\inst2|Rtemp\(14))) # (\inst3|Y\(2) & ((\inst2|Add0~69_sumout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100001111010101010000111101010101000011110101010100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_Rtemp\(14),
	datac => \inst2|ALT_INV_Add0~69_sumout\,
	datad => \inst3|ALT_INV_Y\(2),
	combout => \inst2|Rtemp\(14));

-- Location: LABCELL_X50_Y11_N42
\inst2|Add1~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add1~69_sumout\ = SUM(( (!\inst3|Y\(2) & ((!\inst8|PCout\(3) & ((\inst9|myarray~1114_combout\))) # (\inst8|PCout\(3) & (\inst9|myarray~1113_combout\)))) ) + ( !\inst3|Y\(2) $ (((!\inst9|myarray~1175_combout\) # (\inst8|PCout\(3)))) ) + ( 
-- \inst2|Add1~74\ ))
-- \inst2|Add1~70\ = CARRY(( (!\inst3|Y\(2) & ((!\inst8|PCout\(3) & ((\inst9|myarray~1114_combout\))) # (\inst8|PCout\(3) & (\inst9|myarray~1113_combout\)))) ) + ( !\inst3|Y\(2) $ (((!\inst9|myarray~1175_combout\) # (\inst8|PCout\(3)))) ) + ( \inst2|Add1~74\ 
-- ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011000110011000000000000000000000010010001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|ALT_INV_PCout\(3),
	datab => \inst3|ALT_INV_Y\(2),
	datac => \inst9|ALT_INV_myarray~1113_combout\,
	datad => \inst9|ALT_INV_myarray~1114_combout\,
	dataf => \inst9|ALT_INV_myarray~1175_combout\,
	cin => \inst2|Add1~74\,
	sumout => \inst2|Add1~69_sumout\,
	cout => \inst2|Add1~70\);

-- Location: MLABCELL_X52_Y11_N24
\inst13|R[14]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst13|R[14]~17_combout\ = ( \inst2|Add1~69_sumout\ & ( \inst4|myarray_rtl_0|auto_generated|ram_block1a14\ & ( ((!\inst8|PCout\(2)) # (\inst8|PCout\(3))) # (\inst2|Rtemp\(14)) ) ) ) # ( !\inst2|Add1~69_sumout\ & ( 
-- \inst4|myarray_rtl_0|auto_generated|ram_block1a14\ & ( (!\inst8|PCout\(3) & (((\inst2|Rtemp\(14) & \inst8|PCout\(2))))) # (\inst8|PCout\(3) & (!\inst5|myarray~0_combout\)) ) ) ) # ( \inst2|Add1~69_sumout\ & ( 
-- !\inst4|myarray_rtl_0|auto_generated|ram_block1a14\ & ( (!\inst8|PCout\(3) & (((!\inst8|PCout\(2)) # (\inst2|Rtemp\(14))))) # (\inst8|PCout\(3) & (\inst5|myarray~0_combout\)) ) ) ) # ( !\inst2|Add1~69_sumout\ & ( 
-- !\inst4|myarray_rtl_0|auto_generated|ram_block1a14\ & ( (\inst2|Rtemp\(14) & (!\inst8|PCout\(3) & \inst8|PCout\(2))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110000111101010011010100001010001110101111111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_myarray~0_combout\,
	datab => \inst2|ALT_INV_Rtemp\(14),
	datac => \inst8|ALT_INV_PCout\(3),
	datad => \inst8|ALT_INV_PCout\(2),
	datae => \inst2|ALT_INV_Add1~69_sumout\,
	dataf => \inst4|myarray_rtl_0|auto_generated|ALT_INV_ram_block1a14\,
	combout => \inst13|R[14]~17_combout\);

-- Location: FF_X53_Y11_N2
\inst9|myarray~596\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_myarray~0_combout\,
	asdata => \inst13|R[14]~17_combout\,
	sload => VCC,
	ena => \inst5|myarray~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|myarray~596_q\);

-- Location: LABCELL_X53_Y11_N18
\inst9|myarray~1113\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|myarray~1113_combout\ = ( \inst8|PCout\(3) & ( (\inst8|PCout\(2) & \inst9|myarray~596_q\) ) ) # ( !\inst8|PCout\(3) & ( \inst9|myarray~596_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|ALT_INV_PCout\(2),
	datac => \inst9|ALT_INV_myarray~596_q\,
	dataf => \inst8|ALT_INV_PCout\(3),
	combout => \inst9|myarray~1113_combout\);

-- Location: LABCELL_X50_Y11_N45
\inst2|Add1~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add1~65_sumout\ = SUM(( (!\inst3|Y\(2) & ((!\inst8|PCout\(3) & ((\inst9|myarray~1111_combout\))) # (\inst8|PCout\(3) & (\inst9|myarray~1110_combout\)))) ) + ( !\inst3|Y\(2) $ (((!\inst9|myarray~1174_combout\) # (\inst8|PCout\(3)))) ) + ( 
-- \inst2|Add1~70\ ))
-- \inst2|Add1~66\ = CARRY(( (!\inst3|Y\(2) & ((!\inst8|PCout\(3) & ((\inst9|myarray~1111_combout\))) # (\inst8|PCout\(3) & (\inst9|myarray~1110_combout\)))) ) + ( !\inst3|Y\(2) $ (((!\inst9|myarray~1174_combout\) # (\inst8|PCout\(3)))) ) + ( \inst2|Add1~70\ 
-- ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011000110011000000000000000000000010010001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|ALT_INV_PCout\(3),
	datab => \inst3|ALT_INV_Y\(2),
	datac => \inst9|ALT_INV_myarray~1110_combout\,
	datad => \inst9|ALT_INV_myarray~1111_combout\,
	dataf => \inst9|ALT_INV_myarray~1174_combout\,
	cin => \inst2|Add1~70\,
	sumout => \inst2|Add1~65_sumout\,
	cout => \inst2|Add1~66\);

-- Location: LABCELL_X51_Y11_N48
\inst2|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add0~65_sumout\ = SUM(( (!\inst8|PCout\(3) & ((\inst9|myarray~1111_combout\))) # (\inst8|PCout\(3) & (\inst9|myarray~1110_combout\)) ) + ( (!\inst9|myarray~1174_combout\) # (\inst8|PCout\(3)) ) + ( \inst2|Add0~70\ ))
-- \inst2|Add0~66\ = CARRY(( (!\inst8|PCout\(3) & ((\inst9|myarray~1111_combout\))) # (\inst8|PCout\(3) & (\inst9|myarray~1110_combout\)) ) + ( (!\inst9|myarray~1174_combout\) # (\inst8|PCout\(3)) ) + ( \inst2|Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001010101000000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|ALT_INV_PCout\(3),
	datac => \inst9|ALT_INV_myarray~1110_combout\,
	datad => \inst9|ALT_INV_myarray~1111_combout\,
	dataf => \inst9|ALT_INV_myarray~1174_combout\,
	cin => \inst2|Add0~70\,
	sumout => \inst2|Add0~65_sumout\,
	cout => \inst2|Add0~66\);

-- Location: LABCELL_X51_Y11_N0
\inst2|Rtemp[15]\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Rtemp\(15) = ( \inst2|Add0~65_sumout\ & ( (\inst2|Rtemp\(15)) # (\inst3|Y\(2)) ) ) # ( !\inst2|Add0~65_sumout\ & ( (!\inst3|Y\(2) & \inst2|Rtemp\(15)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst3|ALT_INV_Y\(2),
	datad => \inst2|ALT_INV_Rtemp\(15),
	dataf => \inst2|ALT_INV_Add0~65_sumout\,
	combout => \inst2|Rtemp\(15));

-- Location: LABCELL_X48_Y11_N30
\inst13|R[15]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst13|R[15]~16_combout\ = ( \inst8|PCout\(3) & ( \inst4|myarray_rtl_0|auto_generated|ram_block1a15\ & ( (!\inst5|myarray~0_combout\) # (\inst2|Add1~65_sumout\) ) ) ) # ( !\inst8|PCout\(3) & ( \inst4|myarray_rtl_0|auto_generated|ram_block1a15\ & ( 
-- (!\inst8|PCout\(2) & (\inst2|Add1~65_sumout\)) # (\inst8|PCout\(2) & ((\inst2|Rtemp\(15)))) ) ) ) # ( \inst8|PCout\(3) & ( !\inst4|myarray_rtl_0|auto_generated|ram_block1a15\ & ( (\inst2|Add1~65_sumout\ & \inst5|myarray~0_combout\) ) ) ) # ( 
-- !\inst8|PCout\(3) & ( !\inst4|myarray_rtl_0|auto_generated|ram_block1a15\ & ( (!\inst8|PCout\(2) & (\inst2|Add1~65_sumout\)) # (\inst8|PCout\(2) & ((\inst2|Rtemp\(15)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100110011000001010000010101010101001100111111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_Add1~65_sumout\,
	datab => \inst2|ALT_INV_Rtemp\(15),
	datac => \inst5|ALT_INV_myarray~0_combout\,
	datad => \inst8|ALT_INV_PCout\(2),
	datae => \inst8|ALT_INV_PCout\(3),
	dataf => \inst4|myarray_rtl_0|auto_generated|ALT_INV_ram_block1a15\,
	combout => \inst13|R[15]~16_combout\);

-- Location: FF_X50_Y11_N14
\inst9|myarray~597\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_myarray~0_combout\,
	asdata => \inst13|R[15]~16_combout\,
	sload => VCC,
	ena => \inst5|myarray~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|myarray~597_q\);

-- Location: LABCELL_X50_Y11_N15
\inst9|myarray~1110\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|myarray~1110_combout\ = ( !\inst5|myarray~1_combout\ & ( \inst9|myarray~597_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst9|ALT_INV_myarray~597_q\,
	dataf => \inst5|ALT_INV_myarray~1_combout\,
	combout => \inst9|myarray~1110_combout\);

-- Location: LABCELL_X51_Y11_N51
\inst2|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add0~61_sumout\ = SUM(( (!\inst9|myarray~1173_combout\) # (\inst8|PCout\(3)) ) + ( (!\inst8|PCout\(3) & ((\inst9|myarray~1108_combout\))) # (\inst8|PCout\(3) & (\inst9|myarray~1107_combout\)) ) + ( \inst2|Add0~66\ ))
-- \inst2|Add0~62\ = CARRY(( (!\inst9|myarray~1173_combout\) # (\inst8|PCout\(3)) ) + ( (!\inst8|PCout\(3) & ((\inst9|myarray~1108_combout\))) # (\inst8|PCout\(3) & (\inst9|myarray~1107_combout\)) ) + ( \inst2|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111001001110010000000000000000001111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|ALT_INV_PCout\(3),
	datab => \inst9|ALT_INV_myarray~1107_combout\,
	datac => \inst9|ALT_INV_myarray~1108_combout\,
	datad => \inst9|ALT_INV_myarray~1173_combout\,
	cin => \inst2|Add0~66\,
	sumout => \inst2|Add0~61_sumout\,
	cout => \inst2|Add0~62\);

-- Location: LABCELL_X51_Y9_N39
\inst2|Rtemp[16]\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Rtemp\(16) = ( \inst3|Y\(2) & ( \inst2|Rtemp\(16) & ( \inst2|Add0~61_sumout\ ) ) ) # ( !\inst3|Y\(2) & ( \inst2|Rtemp\(16) ) ) # ( \inst3|Y\(2) & ( !\inst2|Rtemp\(16) & ( \inst2|Add0~61_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010111111111111111110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_Add0~61_sumout\,
	datae => \inst3|ALT_INV_Y\(2),
	dataf => \inst2|ALT_INV_Rtemp\(16),
	combout => \inst2|Rtemp\(16));

-- Location: LABCELL_X50_Y11_N48
\inst2|Add1~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add1~61_sumout\ = SUM(( (!\inst3|Y\(2) & ((!\inst8|PCout\(3) & ((\inst9|myarray~1108_combout\))) # (\inst8|PCout\(3) & (\inst9|myarray~1107_combout\)))) ) + ( !\inst3|Y\(2) $ (((!\inst9|myarray~1173_combout\) # (\inst8|PCout\(3)))) ) + ( 
-- \inst2|Add1~66\ ))
-- \inst2|Add1~62\ = CARRY(( (!\inst3|Y\(2) & ((!\inst8|PCout\(3) & ((\inst9|myarray~1108_combout\))) # (\inst8|PCout\(3) & (\inst9|myarray~1107_combout\)))) ) + ( !\inst3|Y\(2) $ (((!\inst9|myarray~1173_combout\) # (\inst8|PCout\(3)))) ) + ( \inst2|Add1~66\ 
-- ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011000110011000000000000000000000010010001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|ALT_INV_PCout\(3),
	datab => \inst3|ALT_INV_Y\(2),
	datac => \inst9|ALT_INV_myarray~1107_combout\,
	datad => \inst9|ALT_INV_myarray~1108_combout\,
	dataf => \inst9|ALT_INV_myarray~1173_combout\,
	cin => \inst2|Add1~66\,
	sumout => \inst2|Add1~61_sumout\,
	cout => \inst2|Add1~62\);

-- Location: MLABCELL_X52_Y11_N51
\inst13|R[16]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst13|R[16]~15_combout\ = ( \inst5|myarray~0_combout\ & ( \inst4|myarray_rtl_0|auto_generated|ram_block1a16\ & ( (!\inst8|PCout\(2) & (((\inst2|Add1~61_sumout\)))) # (\inst8|PCout\(2) & ((!\inst8|PCout\(3) & (\inst2|Rtemp\(16))) # (\inst8|PCout\(3) & 
-- ((\inst2|Add1~61_sumout\))))) ) ) ) # ( !\inst5|myarray~0_combout\ & ( \inst4|myarray_rtl_0|auto_generated|ram_block1a16\ & ( ((!\inst8|PCout\(2) & ((\inst2|Add1~61_sumout\))) # (\inst8|PCout\(2) & (\inst2|Rtemp\(16)))) # (\inst8|PCout\(3)) ) ) ) # ( 
-- \inst5|myarray~0_combout\ & ( !\inst4|myarray_rtl_0|auto_generated|ram_block1a16\ & ( (!\inst8|PCout\(2) & (((\inst2|Add1~61_sumout\)))) # (\inst8|PCout\(2) & ((!\inst8|PCout\(3) & (\inst2|Rtemp\(16))) # (\inst8|PCout\(3) & ((\inst2|Add1~61_sumout\))))) ) 
-- ) ) # ( !\inst5|myarray~0_combout\ & ( !\inst4|myarray_rtl_0|auto_generated|ram_block1a16\ & ( (!\inst8|PCout\(3) & ((!\inst8|PCout\(2) & ((\inst2|Add1~61_sumout\))) # (\inst8|PCout\(2) & (\inst2|Rtemp\(16))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100000000001101010011001100110101111111110011010100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_Rtemp\(16),
	datab => \inst2|ALT_INV_Add1~61_sumout\,
	datac => \inst8|ALT_INV_PCout\(2),
	datad => \inst8|ALT_INV_PCout\(3),
	datae => \inst5|ALT_INV_myarray~0_combout\,
	dataf => \inst4|myarray_rtl_0|auto_generated|ALT_INV_ram_block1a16\,
	combout => \inst13|R[16]~15_combout\);

-- Location: LABCELL_X53_Y11_N57
\inst9|myarray~598feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|myarray~598feeder_combout\ = \inst13|R[16]~15_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|ALT_INV_R[16]~15_combout\,
	combout => \inst9|myarray~598feeder_combout\);

-- Location: FF_X53_Y11_N59
\inst9|myarray~598\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_myarray~0_combout\,
	d => \inst9|myarray~598feeder_combout\,
	ena => \inst5|myarray~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|myarray~598_q\);

-- Location: LABCELL_X50_Y11_N3
\inst9|myarray~1107\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|myarray~1107_combout\ = ( !\inst5|myarray~1_combout\ & ( \inst9|myarray~598_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst9|ALT_INV_myarray~598_q\,
	dataf => \inst5|ALT_INV_myarray~1_combout\,
	combout => \inst9|myarray~1107_combout\);

-- Location: LABCELL_X51_Y11_N54
\inst2|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add0~57_sumout\ = SUM(( (!\inst9|myarray~1172_combout\) # (\inst8|PCout\(3)) ) + ( (!\inst8|PCout\(3) & ((\inst9|myarray~1105_combout\))) # (\inst8|PCout\(3) & (\inst9|myarray~1104_combout\)) ) + ( \inst2|Add0~62\ ))
-- \inst2|Add0~58\ = CARRY(( (!\inst9|myarray~1172_combout\) # (\inst8|PCout\(3)) ) + ( (!\inst8|PCout\(3) & ((\inst9|myarray~1105_combout\))) # (\inst8|PCout\(3) & (\inst9|myarray~1104_combout\)) ) + ( \inst2|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100101000000000000000000001111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|ALT_INV_PCout\(3),
	datac => \inst9|ALT_INV_myarray~1104_combout\,
	datad => \inst9|ALT_INV_myarray~1172_combout\,
	dataf => \inst9|ALT_INV_myarray~1105_combout\,
	cin => \inst2|Add0~62\,
	sumout => \inst2|Add0~57_sumout\,
	cout => \inst2|Add0~58\);

-- Location: LABCELL_X51_Y11_N9
\inst2|Rtemp[17]\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Rtemp\(17) = ( \inst2|Rtemp\(17) & ( (!\inst3|Y\(2)) # (\inst2|Add0~57_sumout\) ) ) # ( !\inst2|Rtemp\(17) & ( (\inst2|Add0~57_sumout\ & \inst3|Y\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010111111111010101011111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_Add0~57_sumout\,
	datad => \inst3|ALT_INV_Y\(2),
	dataf => \inst2|ALT_INV_Rtemp\(17),
	combout => \inst2|Rtemp\(17));

-- Location: LABCELL_X50_Y11_N51
\inst2|Add1~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add1~57_sumout\ = SUM(( (!\inst3|Y\(2) & ((!\inst8|PCout\(3) & ((\inst9|myarray~1105_combout\))) # (\inst8|PCout\(3) & (\inst9|myarray~1104_combout\)))) ) + ( !\inst3|Y\(2) $ (((!\inst9|myarray~1172_combout\) # (\inst8|PCout\(3)))) ) + ( 
-- \inst2|Add1~62\ ))
-- \inst2|Add1~58\ = CARRY(( (!\inst3|Y\(2) & ((!\inst8|PCout\(3) & ((\inst9|myarray~1105_combout\))) # (\inst8|PCout\(3) & (\inst9|myarray~1104_combout\)))) ) + ( !\inst3|Y\(2) $ (((!\inst9|myarray~1172_combout\) # (\inst8|PCout\(3)))) ) + ( \inst2|Add1~62\ 
-- ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011000110011000000000000000000000010010001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|ALT_INV_PCout\(3),
	datab => \inst3|ALT_INV_Y\(2),
	datac => \inst9|ALT_INV_myarray~1104_combout\,
	datad => \inst9|ALT_INV_myarray~1105_combout\,
	dataf => \inst9|ALT_INV_myarray~1172_combout\,
	cin => \inst2|Add1~62\,
	sumout => \inst2|Add1~57_sumout\,
	cout => \inst2|Add1~58\);

-- Location: MLABCELL_X52_Y11_N54
\inst13|R[17]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst13|R[17]~14_combout\ = ( \inst2|Add1~57_sumout\ & ( \inst4|myarray_rtl_0|auto_generated|ram_block1a17\ & ( ((!\inst8|PCout\(2)) # (\inst8|PCout\(3))) # (\inst2|Rtemp\(17)) ) ) ) # ( !\inst2|Add1~57_sumout\ & ( 
-- \inst4|myarray_rtl_0|auto_generated|ram_block1a17\ & ( (!\inst8|PCout\(3) & (\inst2|Rtemp\(17) & ((\inst8|PCout\(2))))) # (\inst8|PCout\(3) & (((!\inst5|myarray~0_combout\)))) ) ) ) # ( \inst2|Add1~57_sumout\ & ( 
-- !\inst4|myarray_rtl_0|auto_generated|ram_block1a17\ & ( (!\inst8|PCout\(3) & (((!\inst8|PCout\(2))) # (\inst2|Rtemp\(17)))) # (\inst8|PCout\(3) & (((\inst5|myarray~0_combout\)))) ) ) ) # ( !\inst2|Add1~57_sumout\ & ( 
-- !\inst4|myarray_rtl_0|auto_generated|ram_block1a17\ & ( (\inst2|Rtemp\(17) & (!\inst8|PCout\(3) & \inst8|PCout\(2))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000100110011110100011100110000011101001111111101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_Rtemp\(17),
	datab => \inst8|ALT_INV_PCout\(3),
	datac => \inst5|ALT_INV_myarray~0_combout\,
	datad => \inst8|ALT_INV_PCout\(2),
	datae => \inst2|ALT_INV_Add1~57_sumout\,
	dataf => \inst4|myarray_rtl_0|auto_generated|ALT_INV_ram_block1a17\,
	combout => \inst13|R[17]~14_combout\);

-- Location: FF_X51_Y11_N25
\inst9|myarray~599\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_myarray~0_combout\,
	asdata => \inst13|R[17]~14_combout\,
	sload => VCC,
	ena => \inst5|myarray~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|myarray~599_q\);

-- Location: LABCELL_X51_Y11_N24
\inst9|myarray~1104\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|myarray~1104_combout\ = (!\inst5|myarray~1_combout\ & \inst9|myarray~599_q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst5|ALT_INV_myarray~1_combout\,
	datad => \inst9|ALT_INV_myarray~599_q\,
	combout => \inst9|myarray~1104_combout\);

-- Location: LABCELL_X50_Y11_N54
\inst2|Add1~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add1~53_sumout\ = SUM(( (!\inst3|Y\(2) & ((!\inst8|PCout\(3) & ((\inst9|myarray~1102_combout\))) # (\inst8|PCout\(3) & (\inst9|myarray~1101_combout\)))) ) + ( !\inst3|Y\(2) $ (((!\inst9|myarray~1171_combout\) # (\inst8|PCout\(3)))) ) + ( 
-- \inst2|Add1~58\ ))
-- \inst2|Add1~54\ = CARRY(( (!\inst3|Y\(2) & ((!\inst8|PCout\(3) & ((\inst9|myarray~1102_combout\))) # (\inst8|PCout\(3) & (\inst9|myarray~1101_combout\)))) ) + ( !\inst3|Y\(2) $ (((!\inst9|myarray~1171_combout\) # (\inst8|PCout\(3)))) ) + ( \inst2|Add1~58\ 
-- ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011000110011000000000000000000000010010001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|ALT_INV_PCout\(3),
	datab => \inst3|ALT_INV_Y\(2),
	datac => \inst9|ALT_INV_myarray~1101_combout\,
	datad => \inst9|ALT_INV_myarray~1102_combout\,
	dataf => \inst9|ALT_INV_myarray~1171_combout\,
	cin => \inst2|Add1~58\,
	sumout => \inst2|Add1~53_sumout\,
	cout => \inst2|Add1~54\);

-- Location: LABCELL_X51_Y11_N57
\inst2|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add0~53_sumout\ = SUM(( (!\inst9|myarray~1171_combout\) # (\inst8|PCout\(3)) ) + ( (!\inst8|PCout\(3) & ((\inst9|myarray~1102_combout\))) # (\inst8|PCout\(3) & (\inst9|myarray~1101_combout\)) ) + ( \inst2|Add0~58\ ))
-- \inst2|Add0~54\ = CARRY(( (!\inst9|myarray~1171_combout\) # (\inst8|PCout\(3)) ) + ( (!\inst8|PCout\(3) & ((\inst9|myarray~1102_combout\))) # (\inst8|PCout\(3) & (\inst9|myarray~1101_combout\)) ) + ( \inst2|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111011100100010000000000000000001111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|ALT_INV_PCout\(3),
	datab => \inst9|ALT_INV_myarray~1101_combout\,
	datac => \inst9|ALT_INV_myarray~1171_combout\,
	dataf => \inst9|ALT_INV_myarray~1102_combout\,
	cin => \inst2|Add0~58\,
	sumout => \inst2|Add0~53_sumout\,
	cout => \inst2|Add0~54\);

-- Location: MLABCELL_X52_Y11_N3
\inst2|Rtemp[18]\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Rtemp\(18) = (!\inst3|Y\(2) & ((\inst2|Rtemp\(18)))) # (\inst3|Y\(2) & (\inst2|Add0~53_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110101111000001011010111100000101101011110000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Y\(2),
	datac => \inst2|ALT_INV_Add0~53_sumout\,
	datad => \inst2|ALT_INV_Rtemp\(18),
	combout => \inst2|Rtemp\(18));

-- Location: LABCELL_X48_Y11_N18
\inst13|R[18]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst13|R[18]~13_combout\ = ( \inst8|PCout\(3) & ( \inst4|myarray_rtl_0|auto_generated|ram_block1a18\ & ( (!\inst5|myarray~0_combout\) # (\inst2|Add1~53_sumout\) ) ) ) # ( !\inst8|PCout\(3) & ( \inst4|myarray_rtl_0|auto_generated|ram_block1a18\ & ( 
-- (!\inst8|PCout\(2) & (\inst2|Add1~53_sumout\)) # (\inst8|PCout\(2) & ((\inst2|Rtemp\(18)))) ) ) ) # ( \inst8|PCout\(3) & ( !\inst4|myarray_rtl_0|auto_generated|ram_block1a18\ & ( (\inst2|Add1~53_sumout\ & \inst5|myarray~0_combout\) ) ) ) # ( 
-- !\inst8|PCout\(3) & ( !\inst4|myarray_rtl_0|auto_generated|ram_block1a18\ & ( (!\inst8|PCout\(2) & (\inst2|Add1~53_sumout\)) # (\inst8|PCout\(2) & ((\inst2|Rtemp\(18)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001110111000001010000010101000100011101111111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_Add1~53_sumout\,
	datab => \inst8|ALT_INV_PCout\(2),
	datac => \inst5|ALT_INV_myarray~0_combout\,
	datad => \inst2|ALT_INV_Rtemp\(18),
	datae => \inst8|ALT_INV_PCout\(3),
	dataf => \inst4|myarray_rtl_0|auto_generated|ALT_INV_ram_block1a18\,
	combout => \inst13|R[18]~13_combout\);

-- Location: FF_X47_Y11_N38
\inst9|myarray~600\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_myarray~0_combout\,
	asdata => \inst13|R[18]~13_combout\,
	sload => VCC,
	ena => \inst5|myarray~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|myarray~600_q\);

-- Location: LABCELL_X50_Y11_N9
\inst9|myarray~1101\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|myarray~1101_combout\ = ( !\inst5|myarray~1_combout\ & ( \inst9|myarray~600_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst9|ALT_INV_myarray~600_q\,
	dataf => \inst5|ALT_INV_myarray~1_combout\,
	combout => \inst9|myarray~1101_combout\);

-- Location: LABCELL_X50_Y11_N57
\inst2|Add1~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add1~49_sumout\ = SUM(( (!\inst3|Y\(2) & ((!\inst8|PCout\(3) & ((\inst9|myarray~1099_combout\))) # (\inst8|PCout\(3) & (\inst9|myarray~1098_combout\)))) ) + ( !\inst3|Y\(2) $ (((!\inst9|myarray~1170_combout\) # (\inst8|PCout\(3)))) ) + ( 
-- \inst2|Add1~54\ ))
-- \inst2|Add1~50\ = CARRY(( (!\inst3|Y\(2) & ((!\inst8|PCout\(3) & ((\inst9|myarray~1099_combout\))) # (\inst8|PCout\(3) & (\inst9|myarray~1098_combout\)))) ) + ( !\inst3|Y\(2) $ (((!\inst9|myarray~1170_combout\) # (\inst8|PCout\(3)))) ) + ( \inst2|Add1~54\ 
-- ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011000110011000000000000000000000010010001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|ALT_INV_PCout\(3),
	datab => \inst3|ALT_INV_Y\(2),
	datac => \inst9|ALT_INV_myarray~1098_combout\,
	datad => \inst9|ALT_INV_myarray~1099_combout\,
	dataf => \inst9|ALT_INV_myarray~1170_combout\,
	cin => \inst2|Add1~54\,
	sumout => \inst2|Add1~49_sumout\,
	cout => \inst2|Add1~50\);

-- Location: LABCELL_X51_Y10_N0
\inst2|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add0~49_sumout\ = SUM(( (!\inst8|PCout\(3) & ((\inst9|myarray~1099_combout\))) # (\inst8|PCout\(3) & (\inst9|myarray~1098_combout\)) ) + ( (!\inst9|myarray~1170_combout\) # (\inst8|PCout\(3)) ) + ( \inst2|Add0~54\ ))
-- \inst2|Add0~50\ = CARRY(( (!\inst8|PCout\(3) & ((\inst9|myarray~1099_combout\))) # (\inst8|PCout\(3) & (\inst9|myarray~1098_combout\)) ) + ( (!\inst9|myarray~1170_combout\) # (\inst8|PCout\(3)) ) + ( \inst2|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001010101000000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|ALT_INV_PCout\(3),
	datac => \inst9|ALT_INV_myarray~1098_combout\,
	datad => \inst9|ALT_INV_myarray~1099_combout\,
	dataf => \inst9|ALT_INV_myarray~1170_combout\,
	cin => \inst2|Add0~54\,
	sumout => \inst2|Add0~49_sumout\,
	cout => \inst2|Add0~50\);

-- Location: MLABCELL_X52_Y11_N42
\inst2|Rtemp[19]\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Rtemp\(19) = ( \inst2|Add0~49_sumout\ & ( (\inst2|Rtemp\(19)) # (\inst3|Y\(2)) ) ) # ( !\inst2|Add0~49_sumout\ & ( (!\inst3|Y\(2) & \inst2|Rtemp\(19)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst3|ALT_INV_Y\(2),
	datad => \inst2|ALT_INV_Rtemp\(19),
	dataf => \inst2|ALT_INV_Add0~49_sumout\,
	combout => \inst2|Rtemp\(19));

-- Location: MLABCELL_X52_Y11_N12
\inst13|R[19]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst13|R[19]~12_combout\ = ( \inst8|PCout\(2) & ( \inst4|myarray_rtl_0|auto_generated|ram_block1a19\ & ( (!\inst8|PCout\(3) & (((\inst2|Rtemp\(19))))) # (\inst8|PCout\(3) & (((!\inst5|myarray~0_combout\)) # (\inst2|Add1~49_sumout\))) ) ) ) # ( 
-- !\inst8|PCout\(2) & ( \inst4|myarray_rtl_0|auto_generated|ram_block1a19\ & ( ((!\inst5|myarray~0_combout\ & \inst8|PCout\(3))) # (\inst2|Add1~49_sumout\) ) ) ) # ( \inst8|PCout\(2) & ( !\inst4|myarray_rtl_0|auto_generated|ram_block1a19\ & ( 
-- (!\inst8|PCout\(3) & (((\inst2|Rtemp\(19))))) # (\inst8|PCout\(3) & (\inst2|Add1~49_sumout\ & ((\inst5|myarray~0_combout\)))) ) ) ) # ( !\inst8|PCout\(2) & ( !\inst4|myarray_rtl_0|auto_generated|ram_block1a19\ & ( (\inst2|Add1~49_sumout\ & 
-- ((!\inst8|PCout\(3)) # (\inst5|myarray~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000101001100110000010101010101111101010011001111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_Add1~49_sumout\,
	datab => \inst2|ALT_INV_Rtemp\(19),
	datac => \inst5|ALT_INV_myarray~0_combout\,
	datad => \inst8|ALT_INV_PCout\(3),
	datae => \inst8|ALT_INV_PCout\(2),
	dataf => \inst4|myarray_rtl_0|auto_generated|ALT_INV_ram_block1a19\,
	combout => \inst13|R[19]~12_combout\);

-- Location: FF_X53_Y11_N14
\inst9|myarray~601\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_myarray~0_combout\,
	asdata => \inst13|R[19]~12_combout\,
	sload => VCC,
	ena => \inst5|myarray~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|myarray~601_q\);

-- Location: LABCELL_X53_Y11_N30
\inst9|myarray~1098\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|myarray~1098_combout\ = ( !\inst5|myarray~1_combout\ & ( \inst9|myarray~601_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \inst5|ALT_INV_myarray~1_combout\,
	dataf => \inst9|ALT_INV_myarray~601_q\,
	combout => \inst9|myarray~1098_combout\);

-- Location: LABCELL_X50_Y10_N0
\inst2|Add1~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add1~45_sumout\ = SUM(( (!\inst3|Y\(2) & ((!\inst8|PCout\(3) & ((\inst9|myarray~1096_combout\))) # (\inst8|PCout\(3) & (\inst9|myarray~1095_combout\)))) ) + ( !\inst3|Y\(2) $ (((!\inst9|myarray~1169_combout\) # (\inst8|PCout\(3)))) ) + ( 
-- \inst2|Add1~50\ ))
-- \inst2|Add1~46\ = CARRY(( (!\inst3|Y\(2) & ((!\inst8|PCout\(3) & ((\inst9|myarray~1096_combout\))) # (\inst8|PCout\(3) & (\inst9|myarray~1095_combout\)))) ) + ( !\inst3|Y\(2) $ (((!\inst9|myarray~1169_combout\) # (\inst8|PCout\(3)))) ) + ( \inst2|Add1~50\ 
-- ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010100110011000000000000000000000001010001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Y\(2),
	datab => \inst8|ALT_INV_PCout\(3),
	datac => \inst9|ALT_INV_myarray~1095_combout\,
	datad => \inst9|ALT_INV_myarray~1096_combout\,
	dataf => \inst9|ALT_INV_myarray~1169_combout\,
	cin => \inst2|Add1~50\,
	sumout => \inst2|Add1~45_sumout\,
	cout => \inst2|Add1~46\);

-- Location: LABCELL_X51_Y10_N3
\inst2|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add0~45_sumout\ = SUM(( (!\inst8|PCout\(3) & ((\inst9|myarray~1096_combout\))) # (\inst8|PCout\(3) & (\inst9|myarray~1095_combout\)) ) + ( (!\inst9|myarray~1169_combout\) # (\inst8|PCout\(3)) ) + ( \inst2|Add0~50\ ))
-- \inst2|Add0~46\ = CARRY(( (!\inst8|PCout\(3) & ((\inst9|myarray~1096_combout\))) # (\inst8|PCout\(3) & (\inst9|myarray~1095_combout\)) ) + ( (!\inst9|myarray~1169_combout\) # (\inst8|PCout\(3)) ) + ( \inst2|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000100010001000000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|ALT_INV_PCout\(3),
	datab => \inst9|ALT_INV_myarray~1169_combout\,
	datac => \inst9|ALT_INV_myarray~1095_combout\,
	datad => \inst9|ALT_INV_myarray~1096_combout\,
	cin => \inst2|Add0~50\,
	sumout => \inst2|Add0~45_sumout\,
	cout => \inst2|Add0~46\);

-- Location: LABCELL_X53_Y10_N15
\inst2|Rtemp[20]\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Rtemp\(20) = ( \inst2|Add0~45_sumout\ & ( \inst2|Rtemp\(20) ) ) # ( !\inst2|Add0~45_sumout\ & ( \inst2|Rtemp\(20) & ( !\inst3|Y\(2) ) ) ) # ( \inst2|Add0~45_sumout\ & ( !\inst2|Rtemp\(20) & ( \inst3|Y\(2) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111111110000111100001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst3|ALT_INV_Y\(2),
	datae => \inst2|ALT_INV_Add0~45_sumout\,
	dataf => \inst2|ALT_INV_Rtemp\(20),
	combout => \inst2|Rtemp\(20));

-- Location: LABCELL_X48_Y10_N3
\inst13|R[20]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst13|R[20]~11_combout\ = ( \inst4|myarray_rtl_0|auto_generated|ram_block1a20\ & ( \inst8|PCout\(3) & ( (!\inst5|myarray~0_combout\) # (\inst2|Add1~45_sumout\) ) ) ) # ( !\inst4|myarray_rtl_0|auto_generated|ram_block1a20\ & ( \inst8|PCout\(3) & ( 
-- (\inst2|Add1~45_sumout\ & \inst5|myarray~0_combout\) ) ) ) # ( \inst4|myarray_rtl_0|auto_generated|ram_block1a20\ & ( !\inst8|PCout\(3) & ( (!\inst8|PCout\(2) & (\inst2|Add1~45_sumout\)) # (\inst8|PCout\(2) & ((\inst2|Rtemp\(20)))) ) ) ) # ( 
-- !\inst4|myarray_rtl_0|auto_generated|ram_block1a20\ & ( !\inst8|PCout\(3) & ( (!\inst8|PCout\(2) & (\inst2|Add1~45_sumout\)) # (\inst8|PCout\(2) & ((\inst2|Rtemp\(20)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100001111010101010000111100010001000100011101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_Add1~45_sumout\,
	datab => \inst5|ALT_INV_myarray~0_combout\,
	datac => \inst2|ALT_INV_Rtemp\(20),
	datad => \inst8|ALT_INV_PCout\(2),
	datae => \inst4|myarray_rtl_0|auto_generated|ALT_INV_ram_block1a20\,
	dataf => \inst8|ALT_INV_PCout\(3),
	combout => \inst13|R[20]~11_combout\);

-- Location: FF_X47_Y10_N56
\inst9|myarray~602\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_myarray~0_combout\,
	asdata => \inst13|R[20]~11_combout\,
	sload => VCC,
	ena => \inst5|myarray~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|myarray~602_q\);

-- Location: LABCELL_X50_Y10_N36
\inst9|myarray~1095\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|myarray~1095_combout\ = ( !\inst5|myarray~1_combout\ & ( \inst9|myarray~602_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst9|ALT_INV_myarray~602_q\,
	dataf => \inst5|ALT_INV_myarray~1_combout\,
	combout => \inst9|myarray~1095_combout\);

-- Location: LABCELL_X50_Y10_N3
\inst2|Add1~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add1~41_sumout\ = SUM(( (!\inst3|Y\(2) & ((!\inst8|PCout\(3) & ((\inst9|myarray~1093_combout\))) # (\inst8|PCout\(3) & (\inst9|myarray~1092_combout\)))) ) + ( !\inst3|Y\(2) $ (((!\inst9|myarray~1168_combout\) # (\inst8|PCout\(3)))) ) + ( 
-- \inst2|Add1~46\ ))
-- \inst2|Add1~42\ = CARRY(( (!\inst3|Y\(2) & ((!\inst8|PCout\(3) & ((\inst9|myarray~1093_combout\))) # (\inst8|PCout\(3) & (\inst9|myarray~1092_combout\)))) ) + ( !\inst3|Y\(2) $ (((!\inst9|myarray~1168_combout\) # (\inst8|PCout\(3)))) ) + ( \inst2|Add1~46\ 
-- ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010100110011000000000000000000000001010001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Y\(2),
	datab => \inst8|ALT_INV_PCout\(3),
	datac => \inst9|ALT_INV_myarray~1092_combout\,
	datad => \inst9|ALT_INV_myarray~1093_combout\,
	dataf => \inst9|ALT_INV_myarray~1168_combout\,
	cin => \inst2|Add1~46\,
	sumout => \inst2|Add1~41_sumout\,
	cout => \inst2|Add1~42\);

-- Location: LABCELL_X51_Y10_N6
\inst2|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add0~41_sumout\ = SUM(( (!\inst8|PCout\(3) & ((\inst9|myarray~1093_combout\))) # (\inst8|PCout\(3) & (\inst9|myarray~1092_combout\)) ) + ( (!\inst9|myarray~1168_combout\) # (\inst8|PCout\(3)) ) + ( \inst2|Add0~46\ ))
-- \inst2|Add0~42\ = CARRY(( (!\inst8|PCout\(3) & ((\inst9|myarray~1093_combout\))) # (\inst8|PCout\(3) & (\inst9|myarray~1092_combout\)) ) + ( (!\inst9|myarray~1168_combout\) # (\inst8|PCout\(3)) ) + ( \inst2|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001010101000000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|ALT_INV_PCout\(3),
	datac => \inst9|ALT_INV_myarray~1092_combout\,
	datad => \inst9|ALT_INV_myarray~1093_combout\,
	dataf => \inst9|ALT_INV_myarray~1168_combout\,
	cin => \inst2|Add0~46\,
	sumout => \inst2|Add0~41_sumout\,
	cout => \inst2|Add0~42\);

-- Location: LABCELL_X50_Y9_N51
\inst2|Rtemp[21]\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Rtemp\(21) = ( \inst3|Y\(2) & ( \inst2|Rtemp\(21) & ( \inst2|Add0~41_sumout\ ) ) ) # ( !\inst3|Y\(2) & ( \inst2|Rtemp\(21) ) ) # ( \inst3|Y\(2) & ( !\inst2|Rtemp\(21) & ( \inst2|Add0~41_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001111111111111111110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst2|ALT_INV_Add0~41_sumout\,
	datae => \inst3|ALT_INV_Y\(2),
	dataf => \inst2|ALT_INV_Rtemp\(21),
	combout => \inst2|Rtemp\(21));

-- Location: LABCELL_X50_Y9_N39
\inst13|R[21]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst13|R[21]~10_combout\ = ( \inst5|myarray~0_combout\ & ( \inst4|myarray_rtl_0|auto_generated|ram_block1a21\ & ( (!\inst8|PCout\(3) & ((!\inst8|PCout\(2) & (\inst2|Add1~41_sumout\)) # (\inst8|PCout\(2) & ((\inst2|Rtemp\(21)))))) # (\inst8|PCout\(3) & 
-- (\inst2|Add1~41_sumout\)) ) ) ) # ( !\inst5|myarray~0_combout\ & ( \inst4|myarray_rtl_0|auto_generated|ram_block1a21\ & ( ((!\inst8|PCout\(2) & (\inst2|Add1~41_sumout\)) # (\inst8|PCout\(2) & ((\inst2|Rtemp\(21))))) # (\inst8|PCout\(3)) ) ) ) # ( 
-- \inst5|myarray~0_combout\ & ( !\inst4|myarray_rtl_0|auto_generated|ram_block1a21\ & ( (!\inst8|PCout\(3) & ((!\inst8|PCout\(2) & (\inst2|Add1~41_sumout\)) # (\inst8|PCout\(2) & ((\inst2|Rtemp\(21)))))) # (\inst8|PCout\(3) & (\inst2|Add1~41_sumout\)) ) ) ) 
-- # ( !\inst5|myarray~0_combout\ & ( !\inst4|myarray_rtl_0|auto_generated|ram_block1a21\ & ( (!\inst8|PCout\(3) & ((!\inst8|PCout\(2) & (\inst2|Add1~41_sumout\)) # (\inst8|PCout\(2) & ((\inst2|Rtemp\(21)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000110000010101010011010101011111001111110101010100110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_Add1~41_sumout\,
	datab => \inst2|ALT_INV_Rtemp\(21),
	datac => \inst8|ALT_INV_PCout\(3),
	datad => \inst8|ALT_INV_PCout\(2),
	datae => \inst5|ALT_INV_myarray~0_combout\,
	dataf => \inst4|myarray_rtl_0|auto_generated|ALT_INV_ram_block1a21\,
	combout => \inst13|R[21]~10_combout\);

-- Location: FF_X51_Y9_N53
\inst9|myarray~603\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_myarray~0_combout\,
	asdata => \inst13|R[21]~10_combout\,
	sload => VCC,
	ena => \inst5|myarray~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|myarray~603_q\);

-- Location: LABCELL_X50_Y10_N51
\inst9|myarray~1092\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|myarray~1092_combout\ = ( !\inst5|myarray~1_combout\ & ( \inst9|myarray~603_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst9|ALT_INV_myarray~603_q\,
	dataf => \inst5|ALT_INV_myarray~1_combout\,
	combout => \inst9|myarray~1092_combout\);

-- Location: LABCELL_X50_Y10_N6
\inst2|Add1~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add1~37_sumout\ = SUM(( (!\inst3|Y\(2) & ((!\inst8|PCout\(3) & ((\inst9|myarray~1090_combout\))) # (\inst8|PCout\(3) & (\inst9|myarray~1089_combout\)))) ) + ( !\inst3|Y\(2) $ (((!\inst9|myarray~1167_combout\) # (\inst8|PCout\(3)))) ) + ( 
-- \inst2|Add1~42\ ))
-- \inst2|Add1~38\ = CARRY(( (!\inst3|Y\(2) & ((!\inst8|PCout\(3) & ((\inst9|myarray~1090_combout\))) # (\inst8|PCout\(3) & (\inst9|myarray~1089_combout\)))) ) + ( !\inst3|Y\(2) $ (((!\inst9|myarray~1167_combout\) # (\inst8|PCout\(3)))) ) + ( \inst2|Add1~42\ 
-- ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010100110011000000000000000000000001010001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Y\(2),
	datab => \inst8|ALT_INV_PCout\(3),
	datac => \inst9|ALT_INV_myarray~1089_combout\,
	datad => \inst9|ALT_INV_myarray~1090_combout\,
	dataf => \inst9|ALT_INV_myarray~1167_combout\,
	cin => \inst2|Add1~42\,
	sumout => \inst2|Add1~37_sumout\,
	cout => \inst2|Add1~38\);

-- Location: LABCELL_X51_Y10_N9
\inst2|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add0~37_sumout\ = SUM(( (!\inst9|myarray~1167_combout\) # (\inst8|PCout\(3)) ) + ( (!\inst8|PCout\(3) & ((\inst9|myarray~1090_combout\))) # (\inst8|PCout\(3) & (\inst9|myarray~1089_combout\)) ) + ( \inst2|Add0~42\ ))
-- \inst2|Add0~38\ = CARRY(( (!\inst9|myarray~1167_combout\) # (\inst8|PCout\(3)) ) + ( (!\inst8|PCout\(3) & ((\inst9|myarray~1090_combout\))) # (\inst8|PCout\(3) & (\inst9|myarray~1089_combout\)) ) + ( \inst2|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111001001110010000000000000000001111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|ALT_INV_PCout\(3),
	datab => \inst9|ALT_INV_myarray~1089_combout\,
	datac => \inst9|ALT_INV_myarray~1090_combout\,
	datad => \inst9|ALT_INV_myarray~1167_combout\,
	cin => \inst2|Add0~42\,
	sumout => \inst2|Add0~37_sumout\,
	cout => \inst2|Add0~38\);

-- Location: LABCELL_X50_Y10_N39
\inst2|Rtemp[22]\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Rtemp\(22) = ( \inst2|Rtemp\(22) & ( (!\inst3|Y\(2)) # (\inst2|Add0~37_sumout\) ) ) # ( !\inst2|Rtemp\(22) & ( (\inst2|Add0~37_sumout\ & \inst3|Y\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010111110101111101011111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_Add0~37_sumout\,
	datac => \inst3|ALT_INV_Y\(2),
	dataf => \inst2|ALT_INV_Rtemp\(22),
	combout => \inst2|Rtemp\(22));

-- Location: LABCELL_X46_Y10_N33
\inst13|R[22]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst13|R[22]~9_combout\ = ( \inst8|PCout\(3) & ( \inst4|myarray_rtl_0|auto_generated|ram_block1a22\ & ( (!\inst5|myarray~0_combout\) # (\inst2|Add1~37_sumout\) ) ) ) # ( !\inst8|PCout\(3) & ( \inst4|myarray_rtl_0|auto_generated|ram_block1a22\ & ( 
-- (!\inst8|PCout\(2) & (\inst2|Add1~37_sumout\)) # (\inst8|PCout\(2) & ((\inst2|Rtemp\(22)))) ) ) ) # ( \inst8|PCout\(3) & ( !\inst4|myarray_rtl_0|auto_generated|ram_block1a22\ & ( (\inst2|Add1~37_sumout\ & \inst5|myarray~0_combout\) ) ) ) # ( 
-- !\inst8|PCout\(3) & ( !\inst4|myarray_rtl_0|auto_generated|ram_block1a22\ & ( (!\inst8|PCout\(2) & (\inst2|Add1~37_sumout\)) # (\inst8|PCout\(2) & ((\inst2|Rtemp\(22)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100001111000100010001000101010101000011111101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_Add1~37_sumout\,
	datab => \inst5|ALT_INV_myarray~0_combout\,
	datac => \inst2|ALT_INV_Rtemp\(22),
	datad => \inst8|ALT_INV_PCout\(2),
	datae => \inst8|ALT_INV_PCout\(3),
	dataf => \inst4|myarray_rtl_0|auto_generated|ALT_INV_ram_block1a22\,
	combout => \inst13|R[22]~9_combout\);

-- Location: FF_X46_Y10_N19
\inst9|myarray~604\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_myarray~0_combout\,
	asdata => \inst13|R[22]~9_combout\,
	sload => VCC,
	ena => \inst5|myarray~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|myarray~604_q\);

-- Location: LABCELL_X46_Y10_N18
\inst9|myarray~1089\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|myarray~1089_combout\ = (!\inst5|myarray~1_combout\ & \inst9|myarray~604_q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000000000110011000000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst5|ALT_INV_myarray~1_combout\,
	datad => \inst9|ALT_INV_myarray~604_q\,
	combout => \inst9|myarray~1089_combout\);

-- Location: LABCELL_X51_Y10_N12
\inst2|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add0~33_sumout\ = SUM(( (!\inst8|PCout\(3) & ((\inst9|myarray~1087_combout\))) # (\inst8|PCout\(3) & (\inst9|myarray~1086_combout\)) ) + ( (!\inst9|myarray~1166_combout\) # (\inst8|PCout\(3)) ) + ( \inst2|Add0~38\ ))
-- \inst2|Add0~34\ = CARRY(( (!\inst8|PCout\(3) & ((\inst9|myarray~1087_combout\))) # (\inst8|PCout\(3) & (\inst9|myarray~1086_combout\)) ) + ( (!\inst9|myarray~1166_combout\) # (\inst8|PCout\(3)) ) + ( \inst2|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001010101000000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|ALT_INV_PCout\(3),
	datac => \inst9|ALT_INV_myarray~1086_combout\,
	datad => \inst9|ALT_INV_myarray~1087_combout\,
	dataf => \inst9|ALT_INV_myarray~1166_combout\,
	cin => \inst2|Add0~38\,
	sumout => \inst2|Add0~33_sumout\,
	cout => \inst2|Add0~34\);

-- Location: LABCELL_X48_Y10_N6
\inst2|Rtemp[23]\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Rtemp\(23) = ( \inst2|Rtemp\(23) & ( (!\inst3|Y\(2)) # (\inst2|Add0~33_sumout\) ) ) # ( !\inst2|Rtemp\(23) & ( (\inst2|Add0~33_sumout\ & \inst3|Y\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111110011111100111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst2|ALT_INV_Add0~33_sumout\,
	datac => \inst3|ALT_INV_Y\(2),
	dataf => \inst2|ALT_INV_Rtemp\(23),
	combout => \inst2|Rtemp\(23));

-- Location: LABCELL_X50_Y10_N9
\inst2|Add1~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add1~33_sumout\ = SUM(( (!\inst3|Y\(2) & ((!\inst8|PCout\(3) & ((\inst9|myarray~1087_combout\))) # (\inst8|PCout\(3) & (\inst9|myarray~1086_combout\)))) ) + ( !\inst3|Y\(2) $ (((!\inst9|myarray~1166_combout\) # (\inst8|PCout\(3)))) ) + ( 
-- \inst2|Add1~38\ ))
-- \inst2|Add1~34\ = CARRY(( (!\inst3|Y\(2) & ((!\inst8|PCout\(3) & ((\inst9|myarray~1087_combout\))) # (\inst8|PCout\(3) & (\inst9|myarray~1086_combout\)))) ) + ( !\inst3|Y\(2) $ (((!\inst9|myarray~1166_combout\) # (\inst8|PCout\(3)))) ) + ( \inst2|Add1~38\ 
-- ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010100110011000000000000000000000001010001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Y\(2),
	datab => \inst8|ALT_INV_PCout\(3),
	datac => \inst9|ALT_INV_myarray~1086_combout\,
	datad => \inst9|ALT_INV_myarray~1087_combout\,
	dataf => \inst9|ALT_INV_myarray~1166_combout\,
	cin => \inst2|Add1~38\,
	sumout => \inst2|Add1~33_sumout\,
	cout => \inst2|Add1~34\);

-- Location: LABCELL_X48_Y10_N30
\inst13|R[23]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst13|R[23]~8_combout\ = ( \inst5|myarray~0_combout\ & ( \inst4|myarray_rtl_0|auto_generated|ram_block1a23\ & ( (!\inst8|PCout\(2) & (((\inst2|Add1~33_sumout\)))) # (\inst8|PCout\(2) & ((!\inst8|PCout\(3) & (\inst2|Rtemp\(23))) # (\inst8|PCout\(3) & 
-- ((\inst2|Add1~33_sumout\))))) ) ) ) # ( !\inst5|myarray~0_combout\ & ( \inst4|myarray_rtl_0|auto_generated|ram_block1a23\ & ( ((!\inst8|PCout\(2) & ((\inst2|Add1~33_sumout\))) # (\inst8|PCout\(2) & (\inst2|Rtemp\(23)))) # (\inst8|PCout\(3)) ) ) ) # ( 
-- \inst5|myarray~0_combout\ & ( !\inst4|myarray_rtl_0|auto_generated|ram_block1a23\ & ( (!\inst8|PCout\(2) & (((\inst2|Add1~33_sumout\)))) # (\inst8|PCout\(2) & ((!\inst8|PCout\(3) & (\inst2|Rtemp\(23))) # (\inst8|PCout\(3) & ((\inst2|Add1~33_sumout\))))) ) 
-- ) ) # ( !\inst5|myarray~0_combout\ & ( !\inst4|myarray_rtl_0|auto_generated|ram_block1a23\ & ( (!\inst8|PCout\(3) & ((!\inst8|PCout\(2) & ((\inst2|Add1~33_sumout\))) # (\inst8|PCout\(2) & (\inst2|Rtemp\(23))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100000000000110110000111100011011111111110001101100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|ALT_INV_PCout\(2),
	datab => \inst2|ALT_INV_Rtemp\(23),
	datac => \inst2|ALT_INV_Add1~33_sumout\,
	datad => \inst8|ALT_INV_PCout\(3),
	datae => \inst5|ALT_INV_myarray~0_combout\,
	dataf => \inst4|myarray_rtl_0|auto_generated|ALT_INV_ram_block1a23\,
	combout => \inst13|R[23]~8_combout\);

-- Location: FF_X47_Y10_N2
\inst9|myarray~605\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_myarray~0_combout\,
	asdata => \inst13|R[23]~8_combout\,
	sload => VCC,
	ena => \inst5|myarray~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|myarray~605_q\);

-- Location: MLABCELL_X47_Y10_N0
\inst9|myarray~1086\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|myarray~1086_combout\ = ( \inst9|myarray~605_q\ & ( !\inst5|myarray~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000001010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_myarray~1_combout\,
	datae => \inst9|ALT_INV_myarray~605_q\,
	combout => \inst9|myarray~1086_combout\);

-- Location: LABCELL_X51_Y10_N15
\inst2|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add0~29_sumout\ = SUM(( (!\inst9|myarray~1165_combout\) # (\inst8|PCout\(3)) ) + ( (!\inst8|PCout\(3) & ((\inst9|myarray~1084_combout\))) # (\inst8|PCout\(3) & (\inst9|myarray~1083_combout\)) ) + ( \inst2|Add0~34\ ))
-- \inst2|Add0~30\ = CARRY(( (!\inst9|myarray~1165_combout\) # (\inst8|PCout\(3)) ) + ( (!\inst8|PCout\(3) & ((\inst9|myarray~1084_combout\))) # (\inst8|PCout\(3) & (\inst9|myarray~1083_combout\)) ) + ( \inst2|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111001001110010000000000000000001111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|ALT_INV_PCout\(3),
	datab => \inst9|ALT_INV_myarray~1083_combout\,
	datac => \inst9|ALT_INV_myarray~1084_combout\,
	datad => \inst9|ALT_INV_myarray~1165_combout\,
	cin => \inst2|Add0~34\,
	sumout => \inst2|Add0~29_sumout\,
	cout => \inst2|Add0~30\);

-- Location: LABCELL_X48_Y10_N48
\inst2|Rtemp[24]\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Rtemp\(24) = (!\inst3|Y\(2) & ((\inst2|Rtemp\(24)))) # (\inst3|Y\(2) & (\inst2|Add0~29_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Y\(2),
	datab => \inst2|ALT_INV_Add0~29_sumout\,
	datac => \inst2|ALT_INV_Rtemp\(24),
	combout => \inst2|Rtemp\(24));

-- Location: LABCELL_X50_Y10_N12
\inst2|Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add1~29_sumout\ = SUM(( (!\inst3|Y\(2) & ((!\inst8|PCout\(3) & ((\inst9|myarray~1084_combout\))) # (\inst8|PCout\(3) & (\inst9|myarray~1083_combout\)))) ) + ( !\inst3|Y\(2) $ (((!\inst9|myarray~1165_combout\) # (\inst8|PCout\(3)))) ) + ( 
-- \inst2|Add1~34\ ))
-- \inst2|Add1~30\ = CARRY(( (!\inst3|Y\(2) & ((!\inst8|PCout\(3) & ((\inst9|myarray~1084_combout\))) # (\inst8|PCout\(3) & (\inst9|myarray~1083_combout\)))) ) + ( !\inst3|Y\(2) $ (((!\inst9|myarray~1165_combout\) # (\inst8|PCout\(3)))) ) + ( \inst2|Add1~34\ 
-- ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010100110011000000000000000000000001010001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Y\(2),
	datab => \inst8|ALT_INV_PCout\(3),
	datac => \inst9|ALT_INV_myarray~1083_combout\,
	datad => \inst9|ALT_INV_myarray~1084_combout\,
	dataf => \inst9|ALT_INV_myarray~1165_combout\,
	cin => \inst2|Add1~34\,
	sumout => \inst2|Add1~29_sumout\,
	cout => \inst2|Add1~30\);

-- Location: LABCELL_X48_Y10_N39
\inst13|R[24]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst13|R[24]~7_combout\ = ( \inst5|myarray~0_combout\ & ( \inst4|myarray_rtl_0|auto_generated|ram_block1a24\ & ( (!\inst8|PCout\(3) & ((!\inst8|PCout\(2) & ((\inst2|Add1~29_sumout\))) # (\inst8|PCout\(2) & (\inst2|Rtemp\(24))))) # (\inst8|PCout\(3) & 
-- (((\inst2|Add1~29_sumout\)))) ) ) ) # ( !\inst5|myarray~0_combout\ & ( \inst4|myarray_rtl_0|auto_generated|ram_block1a24\ & ( ((!\inst8|PCout\(2) & ((\inst2|Add1~29_sumout\))) # (\inst8|PCout\(2) & (\inst2|Rtemp\(24)))) # (\inst8|PCout\(3)) ) ) ) # ( 
-- \inst5|myarray~0_combout\ & ( !\inst4|myarray_rtl_0|auto_generated|ram_block1a24\ & ( (!\inst8|PCout\(3) & ((!\inst8|PCout\(2) & ((\inst2|Add1~29_sumout\))) # (\inst8|PCout\(2) & (\inst2|Rtemp\(24))))) # (\inst8|PCout\(3) & (((\inst2|Add1~29_sumout\)))) ) 
-- ) ) # ( !\inst5|myarray~0_combout\ & ( !\inst4|myarray_rtl_0|auto_generated|ram_block1a24\ & ( (!\inst8|PCout\(3) & ((!\inst8|PCout\(2) & ((\inst2|Add1~29_sumout\))) # (\inst8|PCout\(2) & (\inst2|Rtemp\(24))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000001010000001100110101001100111111010111110011001101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_Rtemp\(24),
	datab => \inst2|ALT_INV_Add1~29_sumout\,
	datac => \inst8|ALT_INV_PCout\(3),
	datad => \inst8|ALT_INV_PCout\(2),
	datae => \inst5|ALT_INV_myarray~0_combout\,
	dataf => \inst4|myarray_rtl_0|auto_generated|ALT_INV_ram_block1a24\,
	combout => \inst13|R[24]~7_combout\);

-- Location: FF_X47_Y10_N13
\inst9|myarray~606\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_myarray~0_combout\,
	asdata => \inst13|R[24]~7_combout\,
	sload => VCC,
	ena => \inst5|myarray~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|myarray~606_q\);

-- Location: MLABCELL_X47_Y10_N30
\inst9|myarray~1083\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|myarray~1083_combout\ = ( \inst9|myarray~606_q\ & ( !\inst5|myarray~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_myarray~1_combout\,
	dataf => \inst9|ALT_INV_myarray~606_q\,
	combout => \inst9|myarray~1083_combout\);

-- Location: LABCELL_X51_Y10_N18
\inst2|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add0~25_sumout\ = SUM(( (!\inst9|myarray~1164_combout\) # (\inst8|PCout\(3)) ) + ( (!\inst8|PCout\(3) & ((\inst9|myarray~1081_combout\))) # (\inst8|PCout\(3) & (\inst9|myarray~1080_combout\)) ) + ( \inst2|Add0~30\ ))
-- \inst2|Add0~26\ = CARRY(( (!\inst9|myarray~1164_combout\) # (\inst8|PCout\(3)) ) + ( (!\inst8|PCout\(3) & ((\inst9|myarray~1081_combout\))) # (\inst8|PCout\(3) & (\inst9|myarray~1080_combout\)) ) + ( \inst2|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111001001110010000000000000000001111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|ALT_INV_PCout\(3),
	datab => \inst9|ALT_INV_myarray~1080_combout\,
	datac => \inst9|ALT_INV_myarray~1081_combout\,
	datad => \inst9|ALT_INV_myarray~1164_combout\,
	cin => \inst2|Add0~30\,
	sumout => \inst2|Add0~25_sumout\,
	cout => \inst2|Add0~26\);

-- Location: LABCELL_X48_Y10_N45
\inst2|Rtemp[25]\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Rtemp\(25) = ( \inst3|Y\(2) & ( \inst2|Add0~25_sumout\ ) ) # ( !\inst3|Y\(2) & ( \inst2|Rtemp\(25) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_Add0~25_sumout\,
	datad => \inst2|ALT_INV_Rtemp\(25),
	dataf => \inst3|ALT_INV_Y\(2),
	combout => \inst2|Rtemp\(25));

-- Location: LABCELL_X50_Y10_N15
\inst2|Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add1~25_sumout\ = SUM(( (!\inst3|Y\(2) & ((!\inst8|PCout\(3) & ((\inst9|myarray~1081_combout\))) # (\inst8|PCout\(3) & (\inst9|myarray~1080_combout\)))) ) + ( !\inst3|Y\(2) $ (((!\inst9|myarray~1164_combout\) # (\inst8|PCout\(3)))) ) + ( 
-- \inst2|Add1~30\ ))
-- \inst2|Add1~26\ = CARRY(( (!\inst3|Y\(2) & ((!\inst8|PCout\(3) & ((\inst9|myarray~1081_combout\))) # (\inst8|PCout\(3) & (\inst9|myarray~1080_combout\)))) ) + ( !\inst3|Y\(2) $ (((!\inst9|myarray~1164_combout\) # (\inst8|PCout\(3)))) ) + ( \inst2|Add1~30\ 
-- ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010100110011000000000000000000000001010001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Y\(2),
	datab => \inst8|ALT_INV_PCout\(3),
	datac => \inst9|ALT_INV_myarray~1080_combout\,
	datad => \inst9|ALT_INV_myarray~1081_combout\,
	dataf => \inst9|ALT_INV_myarray~1164_combout\,
	cin => \inst2|Add1~30\,
	sumout => \inst2|Add1~25_sumout\,
	cout => \inst2|Add1~26\);

-- Location: LABCELL_X48_Y10_N57
\inst13|R[25]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst13|R[25]~6_combout\ = ( \inst2|Add1~25_sumout\ & ( \inst4|myarray_rtl_0|auto_generated|ram_block1a25\ & ( (!\inst8|PCout\(2)) # ((\inst8|PCout\(3)) # (\inst2|Rtemp\(25))) ) ) ) # ( !\inst2|Add1~25_sumout\ & ( 
-- \inst4|myarray_rtl_0|auto_generated|ram_block1a25\ & ( (!\inst8|PCout\(3) & (\inst8|PCout\(2) & (\inst2|Rtemp\(25)))) # (\inst8|PCout\(3) & (((!\inst5|myarray~0_combout\)))) ) ) ) # ( \inst2|Add1~25_sumout\ & ( 
-- !\inst4|myarray_rtl_0|auto_generated|ram_block1a25\ & ( (!\inst8|PCout\(3) & ((!\inst8|PCout\(2)) # ((\inst2|Rtemp\(25))))) # (\inst8|PCout\(3) & (((\inst5|myarray~0_combout\)))) ) ) ) # ( !\inst2|Add1~25_sumout\ & ( 
-- !\inst4|myarray_rtl_0|auto_generated|ram_block1a25\ & ( (\inst8|PCout\(2) & (\inst2|Rtemp\(25) & !\inst8|PCout\(3))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010000101100001011111100011111000100001011111110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|ALT_INV_PCout\(2),
	datab => \inst2|ALT_INV_Rtemp\(25),
	datac => \inst8|ALT_INV_PCout\(3),
	datad => \inst5|ALT_INV_myarray~0_combout\,
	datae => \inst2|ALT_INV_Add1~25_sumout\,
	dataf => \inst4|myarray_rtl_0|auto_generated|ALT_INV_ram_block1a25\,
	combout => \inst13|R[25]~6_combout\);

-- Location: FF_X47_Y10_N28
\inst9|myarray~607\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_myarray~0_combout\,
	asdata => \inst13|R[25]~6_combout\,
	sload => VCC,
	ena => \inst5|myarray~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|myarray~607_q\);

-- Location: MLABCELL_X47_Y10_N27
\inst9|myarray~1080\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|myarray~1080_combout\ = (!\inst5|myarray~1_combout\ & \inst9|myarray~607_q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101000000000101010100000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_myarray~1_combout\,
	datad => \inst9|ALT_INV_myarray~607_q\,
	combout => \inst9|myarray~1080_combout\);

-- Location: LABCELL_X51_Y10_N21
\inst2|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add0~21_sumout\ = SUM(( (!\inst8|PCout\(3) & ((\inst9|myarray~1078_combout\))) # (\inst8|PCout\(3) & (\inst9|myarray~1077_combout\)) ) + ( (!\inst9|myarray~1163_combout\) # (\inst8|PCout\(3)) ) + ( \inst2|Add0~26\ ))
-- \inst2|Add0~22\ = CARRY(( (!\inst8|PCout\(3) & ((\inst9|myarray~1078_combout\))) # (\inst8|PCout\(3) & (\inst9|myarray~1077_combout\)) ) + ( (!\inst9|myarray~1163_combout\) # (\inst8|PCout\(3)) ) + ( \inst2|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001010101000000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|ALT_INV_PCout\(3),
	datac => \inst9|ALT_INV_myarray~1077_combout\,
	datad => \inst9|ALT_INV_myarray~1078_combout\,
	dataf => \inst9|ALT_INV_myarray~1163_combout\,
	cin => \inst2|Add0~26\,
	sumout => \inst2|Add0~21_sumout\,
	cout => \inst2|Add0~22\);

-- Location: LABCELL_X48_Y10_N51
\inst2|Rtemp[26]\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Rtemp\(26) = ( \inst2|Rtemp\(26) & ( (!\inst3|Y\(2)) # (\inst2|Add0~21_sumout\) ) ) # ( !\inst2|Rtemp\(26) & ( (\inst3|Y\(2) & \inst2|Add0~21_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010110101111101011111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Y\(2),
	datac => \inst2|ALT_INV_Add0~21_sumout\,
	dataf => \inst2|ALT_INV_Rtemp\(26),
	combout => \inst2|Rtemp\(26));

-- Location: LABCELL_X50_Y10_N18
\inst2|Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add1~21_sumout\ = SUM(( (!\inst3|Y\(2) & ((!\inst8|PCout\(3) & ((\inst9|myarray~1078_combout\))) # (\inst8|PCout\(3) & (\inst9|myarray~1077_combout\)))) ) + ( !\inst3|Y\(2) $ (((!\inst9|myarray~1163_combout\) # (\inst8|PCout\(3)))) ) + ( 
-- \inst2|Add1~26\ ))
-- \inst2|Add1~22\ = CARRY(( (!\inst3|Y\(2) & ((!\inst8|PCout\(3) & ((\inst9|myarray~1078_combout\))) # (\inst8|PCout\(3) & (\inst9|myarray~1077_combout\)))) ) + ( !\inst3|Y\(2) $ (((!\inst9|myarray~1163_combout\) # (\inst8|PCout\(3)))) ) + ( \inst2|Add1~26\ 
-- ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010100110011000000000000000000000001010001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Y\(2),
	datab => \inst8|ALT_INV_PCout\(3),
	datac => \inst9|ALT_INV_myarray~1077_combout\,
	datad => \inst9|ALT_INV_myarray~1078_combout\,
	dataf => \inst9|ALT_INV_myarray~1163_combout\,
	cin => \inst2|Add1~26\,
	sumout => \inst2|Add1~21_sumout\,
	cout => \inst2|Add1~22\);

-- Location: LABCELL_X48_Y10_N15
\inst13|R[26]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst13|R[26]~5_combout\ = ( \inst2|Add1~21_sumout\ & ( \inst4|myarray_rtl_0|auto_generated|ram_block1a26\ & ( ((!\inst8|PCout\(2)) # (\inst8|PCout\(3))) # (\inst2|Rtemp\(26)) ) ) ) # ( !\inst2|Add1~21_sumout\ & ( 
-- \inst4|myarray_rtl_0|auto_generated|ram_block1a26\ & ( (!\inst8|PCout\(3) & (\inst2|Rtemp\(26) & ((\inst8|PCout\(2))))) # (\inst8|PCout\(3) & (((!\inst5|myarray~0_combout\)))) ) ) ) # ( \inst2|Add1~21_sumout\ & ( 
-- !\inst4|myarray_rtl_0|auto_generated|ram_block1a26\ & ( (!\inst8|PCout\(3) & (((!\inst8|PCout\(2))) # (\inst2|Rtemp\(26)))) # (\inst8|PCout\(3) & (((\inst5|myarray~0_combout\)))) ) ) ) # ( !\inst2|Add1~21_sumout\ & ( 
-- !\inst4|myarray_rtl_0|auto_generated|ram_block1a26\ & ( (\inst2|Rtemp\(26) & (!\inst8|PCout\(3) & \inst8|PCout\(2))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010000111100110101001100001100010111001111111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_Rtemp\(26),
	datab => \inst5|ALT_INV_myarray~0_combout\,
	datac => \inst8|ALT_INV_PCout\(3),
	datad => \inst8|ALT_INV_PCout\(2),
	datae => \inst2|ALT_INV_Add1~21_sumout\,
	dataf => \inst4|myarray_rtl_0|auto_generated|ALT_INV_ram_block1a26\,
	combout => \inst13|R[26]~5_combout\);

-- Location: FF_X47_Y10_N5
\inst9|myarray~608\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_myarray~0_combout\,
	asdata => \inst13|R[26]~5_combout\,
	sload => VCC,
	ena => \inst5|myarray~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|myarray~608_q\);

-- Location: LABCELL_X50_Y10_N57
\inst9|myarray~1077\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|myarray~1077_combout\ = ( !\inst5|myarray~1_combout\ & ( \inst9|myarray~608_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst9|ALT_INV_myarray~608_q\,
	dataf => \inst5|ALT_INV_myarray~1_combout\,
	combout => \inst9|myarray~1077_combout\);

-- Location: LABCELL_X51_Y10_N24
\inst2|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add0~17_sumout\ = SUM(( (!\inst9|myarray~1162_combout\) # (\inst8|PCout\(3)) ) + ( (!\inst8|PCout\(3) & (\inst9|myarray~1075_combout\)) # (\inst8|PCout\(3) & ((\inst9|myarray~1074_combout\))) ) + ( \inst2|Add0~22\ ))
-- \inst2|Add0~18\ = CARRY(( (!\inst9|myarray~1162_combout\) # (\inst8|PCout\(3)) ) + ( (!\inst8|PCout\(3) & (\inst9|myarray~1075_combout\)) # (\inst8|PCout\(3) & ((\inst9|myarray~1074_combout\))) ) + ( \inst2|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110110001101100000000000000000001111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|ALT_INV_PCout\(3),
	datab => \inst9|ALT_INV_myarray~1075_combout\,
	datac => \inst9|ALT_INV_myarray~1074_combout\,
	datad => \inst9|ALT_INV_myarray~1162_combout\,
	cin => \inst2|Add0~22\,
	sumout => \inst2|Add0~17_sumout\,
	cout => \inst2|Add0~18\);

-- Location: LABCELL_X50_Y9_N45
\inst2|Rtemp[27]\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Rtemp\(27) = (!\inst3|Y\(2) & ((\inst2|Rtemp\(27)))) # (\inst3|Y\(2) & (\inst2|Add0~17_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101000011110101010100001111010101010000111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_Add0~17_sumout\,
	datac => \inst2|ALT_INV_Rtemp\(27),
	datad => \inst3|ALT_INV_Y\(2),
	combout => \inst2|Rtemp\(27));

-- Location: LABCELL_X50_Y10_N21
\inst2|Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add1~17_sumout\ = SUM(( (!\inst3|Y\(2) & ((!\inst8|PCout\(3) & ((\inst9|myarray~1075_combout\))) # (\inst8|PCout\(3) & (\inst9|myarray~1074_combout\)))) ) + ( !\inst3|Y\(2) $ (((!\inst9|myarray~1162_combout\) # (\inst8|PCout\(3)))) ) + ( 
-- \inst2|Add1~22\ ))
-- \inst2|Add1~18\ = CARRY(( (!\inst3|Y\(2) & ((!\inst8|PCout\(3) & ((\inst9|myarray~1075_combout\))) # (\inst8|PCout\(3) & (\inst9|myarray~1074_combout\)))) ) + ( !\inst3|Y\(2) $ (((!\inst9|myarray~1162_combout\) # (\inst8|PCout\(3)))) ) + ( \inst2|Add1~22\ 
-- ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010100110011000000000000000000000001010001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Y\(2),
	datab => \inst8|ALT_INV_PCout\(3),
	datac => \inst9|ALT_INV_myarray~1074_combout\,
	datad => \inst9|ALT_INV_myarray~1075_combout\,
	dataf => \inst9|ALT_INV_myarray~1162_combout\,
	cin => \inst2|Add1~22\,
	sumout => \inst2|Add1~17_sumout\,
	cout => \inst2|Add1~18\);

-- Location: LABCELL_X50_Y9_N57
\inst13|R[27]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst13|R[27]~4_combout\ = ( \inst2|Add1~17_sumout\ & ( \inst4|myarray_rtl_0|auto_generated|ram_block1a27\ & ( (!\inst8|PCout\(2)) # ((\inst8|PCout\(3)) # (\inst2|Rtemp\(27))) ) ) ) # ( !\inst2|Add1~17_sumout\ & ( 
-- \inst4|myarray_rtl_0|auto_generated|ram_block1a27\ & ( (!\inst8|PCout\(3) & (\inst8|PCout\(2) & (\inst2|Rtemp\(27)))) # (\inst8|PCout\(3) & (((!\inst5|myarray~0_combout\)))) ) ) ) # ( \inst2|Add1~17_sumout\ & ( 
-- !\inst4|myarray_rtl_0|auto_generated|ram_block1a27\ & ( (!\inst8|PCout\(3) & ((!\inst8|PCout\(2)) # ((\inst2|Rtemp\(27))))) # (\inst8|PCout\(3) & (((\inst5|myarray~0_combout\)))) ) ) ) # ( !\inst2|Add1~17_sumout\ & ( 
-- !\inst4|myarray_rtl_0|auto_generated|ram_block1a27\ & ( (\inst8|PCout\(2) & (\inst2|Rtemp\(27) & !\inst8|PCout\(3))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010000101100001011111100011111000100001011111110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|ALT_INV_PCout\(2),
	datab => \inst2|ALT_INV_Rtemp\(27),
	datac => \inst8|ALT_INV_PCout\(3),
	datad => \inst5|ALT_INV_myarray~0_combout\,
	datae => \inst2|ALT_INV_Add1~17_sumout\,
	dataf => \inst4|myarray_rtl_0|auto_generated|ALT_INV_ram_block1a27\,
	combout => \inst13|R[27]~4_combout\);

-- Location: FF_X50_Y9_N56
\inst9|myarray~353\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_myarray~0_combout\,
	asdata => \inst13|R[27]~4_combout\,
	sload => VCC,
	ena => \inst5|myarray~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|myarray~353_q\);

-- Location: LABCELL_X50_Y9_N42
\inst9|myarray~1075\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|myarray~1075_combout\ = ( \inst8|PCout\(3) & ( (!\inst8|PCout\(2) & ((\inst9|myarray~385_q\))) # (\inst8|PCout\(2) & (\inst9|myarray~353_q\)) ) ) # ( !\inst8|PCout\(3) & ( \inst9|myarray~353_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000011110011110000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst8|ALT_INV_PCout\(2),
	datac => \inst9|ALT_INV_myarray~353_q\,
	datad => \inst9|ALT_INV_myarray~385_q\,
	dataf => \inst8|ALT_INV_PCout\(3),
	combout => \inst9|myarray~1075_combout\);

-- Location: LABCELL_X51_Y10_N27
\inst2|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add0~13_sumout\ = SUM(( (!\inst9|myarray~1161_combout\) # (\inst8|PCout\(3)) ) + ( (!\inst8|PCout\(3) & ((\inst9|myarray~1072_combout\))) # (\inst8|PCout\(3) & (\inst9|myarray~1071_combout\)) ) + ( \inst2|Add0~18\ ))
-- \inst2|Add0~14\ = CARRY(( (!\inst9|myarray~1161_combout\) # (\inst8|PCout\(3)) ) + ( (!\inst8|PCout\(3) & ((\inst9|myarray~1072_combout\))) # (\inst8|PCout\(3) & (\inst9|myarray~1071_combout\)) ) + ( \inst2|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100101000000000000000000001111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|ALT_INV_PCout\(3),
	datac => \inst9|ALT_INV_myarray~1071_combout\,
	datad => \inst9|ALT_INV_myarray~1161_combout\,
	dataf => \inst9|ALT_INV_myarray~1072_combout\,
	cin => \inst2|Add0~18\,
	sumout => \inst2|Add0~13_sumout\,
	cout => \inst2|Add0~14\);

-- Location: LABCELL_X50_Y9_N24
\inst2|Rtemp[28]\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Rtemp\(28) = ( \inst2|Rtemp\(28) & ( (!\inst3|Y\(2)) # (\inst2|Add0~13_sumout\) ) ) # ( !\inst2|Rtemp\(28) & ( (\inst2|Add0~13_sumout\ & \inst3|Y\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111110011111100111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst2|ALT_INV_Add0~13_sumout\,
	datac => \inst3|ALT_INV_Y\(2),
	dataf => \inst2|ALT_INV_Rtemp\(28),
	combout => \inst2|Rtemp\(28));

-- Location: LABCELL_X50_Y10_N24
\inst2|Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add1~13_sumout\ = SUM(( (!\inst3|Y\(2) & ((!\inst8|PCout\(3) & ((\inst9|myarray~1072_combout\))) # (\inst8|PCout\(3) & (\inst9|myarray~1071_combout\)))) ) + ( !\inst3|Y\(2) $ (((!\inst9|myarray~1161_combout\) # (\inst8|PCout\(3)))) ) + ( 
-- \inst2|Add1~18\ ))
-- \inst2|Add1~14\ = CARRY(( (!\inst3|Y\(2) & ((!\inst8|PCout\(3) & ((\inst9|myarray~1072_combout\))) # (\inst8|PCout\(3) & (\inst9|myarray~1071_combout\)))) ) + ( !\inst3|Y\(2) $ (((!\inst9|myarray~1161_combout\) # (\inst8|PCout\(3)))) ) + ( \inst2|Add1~18\ 
-- ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010100110011000000000000000000000001010001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Y\(2),
	datab => \inst8|ALT_INV_PCout\(3),
	datac => \inst9|ALT_INV_myarray~1071_combout\,
	datad => \inst9|ALT_INV_myarray~1072_combout\,
	dataf => \inst9|ALT_INV_myarray~1161_combout\,
	cin => \inst2|Add1~18\,
	sumout => \inst2|Add1~13_sumout\,
	cout => \inst2|Add1~14\);

-- Location: LABCELL_X50_Y9_N9
\inst13|R[28]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst13|R[28]~3_combout\ = ( \inst2|Add1~13_sumout\ & ( \inst4|myarray_rtl_0|auto_generated|ram_block1a28\ & ( ((!\inst8|PCout\(2)) # (\inst8|PCout\(3))) # (\inst2|Rtemp\(28)) ) ) ) # ( !\inst2|Add1~13_sumout\ & ( 
-- \inst4|myarray_rtl_0|auto_generated|ram_block1a28\ & ( (!\inst8|PCout\(3) & (((\inst2|Rtemp\(28) & \inst8|PCout\(2))))) # (\inst8|PCout\(3) & (!\inst5|myarray~0_combout\)) ) ) ) # ( \inst2|Add1~13_sumout\ & ( 
-- !\inst4|myarray_rtl_0|auto_generated|ram_block1a28\ & ( (!\inst8|PCout\(3) & (((!\inst8|PCout\(2)) # (\inst2|Rtemp\(28))))) # (\inst8|PCout\(3) & (\inst5|myarray~0_combout\)) ) ) ) # ( !\inst2|Add1~13_sumout\ & ( 
-- !\inst4|myarray_rtl_0|auto_generated|ram_block1a28\ & ( (\inst2|Rtemp\(28) & (\inst8|PCout\(2) & !\inst8|PCout\(3))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000000111100110101010100000011101010101111001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_myarray~0_combout\,
	datab => \inst2|ALT_INV_Rtemp\(28),
	datac => \inst8|ALT_INV_PCout\(2),
	datad => \inst8|ALT_INV_PCout\(3),
	datae => \inst2|ALT_INV_Add1~13_sumout\,
	dataf => \inst4|myarray_rtl_0|auto_generated|ALT_INV_ram_block1a28\,
	combout => \inst13|R[28]~3_combout\);

-- Location: FF_X51_Y9_N26
\inst9|myarray~610\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_myarray~0_combout\,
	asdata => \inst13|R[28]~3_combout\,
	sload => VCC,
	ena => \inst5|myarray~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|myarray~610_q\);

-- Location: LABCELL_X51_Y9_N24
\inst9|myarray~1071\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|myarray~1071_combout\ = ( !\inst5|myarray~1_combout\ & ( \inst9|myarray~610_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst9|ALT_INV_myarray~610_q\,
	dataf => \inst5|ALT_INV_myarray~1_combout\,
	combout => \inst9|myarray~1071_combout\);

-- Location: LABCELL_X51_Y10_N30
\inst2|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add0~9_sumout\ = SUM(( (!\inst8|PCout\(3) & ((\inst9|myarray~1069_combout\))) # (\inst8|PCout\(3) & (\inst9|myarray~1068_combout\)) ) + ( (!\inst9|myarray~1160_combout\) # (\inst8|PCout\(3)) ) + ( \inst2|Add0~14\ ))
-- \inst2|Add0~10\ = CARRY(( (!\inst8|PCout\(3) & ((\inst9|myarray~1069_combout\))) # (\inst8|PCout\(3) & (\inst9|myarray~1068_combout\)) ) + ( (!\inst9|myarray~1160_combout\) # (\inst8|PCout\(3)) ) + ( \inst2|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000100010001000000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|ALT_INV_PCout\(3),
	datab => \inst9|ALT_INV_myarray~1160_combout\,
	datac => \inst9|ALT_INV_myarray~1068_combout\,
	datad => \inst9|ALT_INV_myarray~1069_combout\,
	cin => \inst2|Add0~14\,
	sumout => \inst2|Add0~9_sumout\,
	cout => \inst2|Add0~10\);

-- Location: LABCELL_X53_Y10_N30
\inst2|Rtemp[29]\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Rtemp\(29) = ( \inst2|Rtemp\(29) & ( (!\inst3|Y\(2)) # (\inst2|Add0~9_sumout\) ) ) # ( !\inst2|Rtemp\(29) & ( (\inst2|Add0~9_sumout\ & \inst3|Y\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst2|ALT_INV_Add0~9_sumout\,
	datad => \inst3|ALT_INV_Y\(2),
	dataf => \inst2|ALT_INV_Rtemp\(29),
	combout => \inst2|Rtemp\(29));

-- Location: LABCELL_X50_Y10_N27
\inst2|Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add1~9_sumout\ = SUM(( (!\inst3|Y\(2) & ((!\inst8|PCout\(3) & ((\inst9|myarray~1069_combout\))) # (\inst8|PCout\(3) & (\inst9|myarray~1068_combout\)))) ) + ( !\inst3|Y\(2) $ (((!\inst9|myarray~1160_combout\) # (\inst8|PCout\(3)))) ) + ( 
-- \inst2|Add1~14\ ))
-- \inst2|Add1~10\ = CARRY(( (!\inst3|Y\(2) & ((!\inst8|PCout\(3) & ((\inst9|myarray~1069_combout\))) # (\inst8|PCout\(3) & (\inst9|myarray~1068_combout\)))) ) + ( !\inst3|Y\(2) $ (((!\inst9|myarray~1160_combout\) # (\inst8|PCout\(3)))) ) + ( \inst2|Add1~14\ 
-- ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010100110011000000000000000000000001010001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Y\(2),
	datab => \inst8|ALT_INV_PCout\(3),
	datac => \inst9|ALT_INV_myarray~1068_combout\,
	datad => \inst9|ALT_INV_myarray~1069_combout\,
	dataf => \inst9|ALT_INV_myarray~1160_combout\,
	cin => \inst2|Add1~14\,
	sumout => \inst2|Add1~9_sumout\,
	cout => \inst2|Add1~10\);

-- Location: LABCELL_X50_Y13_N57
\inst13|R[29]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst13|R[29]~2_combout\ = ( \inst2|Add1~9_sumout\ & ( \inst4|myarray_rtl_0|auto_generated|ram_block1a29\ & ( ((!\inst8|PCout\(2)) # (\inst8|PCout\(3))) # (\inst2|Rtemp\(29)) ) ) ) # ( !\inst2|Add1~9_sumout\ & ( 
-- \inst4|myarray_rtl_0|auto_generated|ram_block1a29\ & ( (!\inst8|PCout\(3) & (\inst2|Rtemp\(29) & (\inst8|PCout\(2)))) # (\inst8|PCout\(3) & (((!\inst5|myarray~0_combout\)))) ) ) ) # ( \inst2|Add1~9_sumout\ & ( 
-- !\inst4|myarray_rtl_0|auto_generated|ram_block1a29\ & ( (!\inst8|PCout\(3) & (((!\inst8|PCout\(2))) # (\inst2|Rtemp\(29)))) # (\inst8|PCout\(3) & (((\inst5|myarray~0_combout\)))) ) ) ) # ( !\inst2|Add1~9_sumout\ & ( 
-- !\inst4|myarray_rtl_0|auto_generated|ram_block1a29\ & ( (\inst2|Rtemp\(29) & (\inst8|PCout\(2) & !\inst8|PCout\(3))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010000110100001101111100011111000100001101111111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_Rtemp\(29),
	datab => \inst8|ALT_INV_PCout\(2),
	datac => \inst8|ALT_INV_PCout\(3),
	datad => \inst5|ALT_INV_myarray~0_combout\,
	datae => \inst2|ALT_INV_Add1~9_sumout\,
	dataf => \inst4|myarray_rtl_0|auto_generated|ALT_INV_ram_block1a29\,
	combout => \inst13|R[29]~2_combout\);

-- Location: FF_X50_Y13_N23
\inst9|myarray~323\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_myarray~0_combout\,
	asdata => \inst13|R[29]~2_combout\,
	sload => VCC,
	ena => \inst5|myarray~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|myarray~323_q\);

-- Location: LABCELL_X50_Y13_N30
\inst9|myarray~1160\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|myarray~1160_combout\ = ( \inst9|myarray~355_q\ & ( \inst8|PCout\(3) & ( (\inst8|PCout\(2)) # (\inst9|myarray~611_q\) ) ) ) # ( !\inst9|myarray~355_q\ & ( \inst8|PCout\(3) & ( (\inst9|myarray~611_q\ & !\inst8|PCout\(2)) ) ) ) # ( 
-- \inst9|myarray~355_q\ & ( !\inst8|PCout\(3) & ( (!\inst8|PCout\(2) & ((\inst9|myarray~387_q\))) # (\inst8|PCout\(2) & (\inst9|myarray~323_q\)) ) ) ) # ( !\inst9|myarray~355_q\ & ( !\inst8|PCout\(3) & ( (!\inst8|PCout\(2) & ((\inst9|myarray~387_q\))) # 
-- (\inst8|PCout\(2) & (\inst9|myarray~323_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111110101000001011111010100110000001100000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|ALT_INV_myarray~323_q\,
	datab => \inst9|ALT_INV_myarray~611_q\,
	datac => \inst8|ALT_INV_PCout\(2),
	datad => \inst9|ALT_INV_myarray~387_q\,
	datae => \inst9|ALT_INV_myarray~355_q\,
	dataf => \inst8|ALT_INV_PCout\(3),
	combout => \inst9|myarray~1160_combout\);

-- Location: LABCELL_X51_Y10_N33
\inst2|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add0~5_sumout\ = SUM(( (!\inst9|myarray~1159_combout\) # (\inst8|PCout\(3)) ) + ( (!\inst8|PCout\(3) & ((\inst9|myarray~1066_combout\))) # (\inst8|PCout\(3) & (\inst9|myarray~1065_combout\)) ) + ( \inst2|Add0~10\ ))
-- \inst2|Add0~6\ = CARRY(( (!\inst9|myarray~1159_combout\) # (\inst8|PCout\(3)) ) + ( (!\inst8|PCout\(3) & ((\inst9|myarray~1066_combout\))) # (\inst8|PCout\(3) & (\inst9|myarray~1065_combout\)) ) + ( \inst2|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100101000000000000000000001111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|ALT_INV_PCout\(3),
	datac => \inst9|ALT_INV_myarray~1065_combout\,
	datad => \inst9|ALT_INV_myarray~1159_combout\,
	dataf => \inst9|ALT_INV_myarray~1066_combout\,
	cin => \inst2|Add0~10\,
	sumout => \inst2|Add0~5_sumout\,
	cout => \inst2|Add0~6\);

-- Location: LABCELL_X53_Y10_N0
\inst2|Rtemp[30]\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Rtemp\(30) = ( \inst2|Rtemp\(30) & ( \inst2|Add0~5_sumout\ ) ) # ( !\inst2|Rtemp\(30) & ( \inst2|Add0~5_sumout\ & ( \inst3|Y\(2) ) ) ) # ( \inst2|Rtemp\(30) & ( !\inst2|Add0~5_sumout\ & ( !\inst3|Y\(2) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst3|ALT_INV_Y\(2),
	datae => \inst2|ALT_INV_Rtemp\(30),
	dataf => \inst2|ALT_INV_Add0~5_sumout\,
	combout => \inst2|Rtemp\(30));

-- Location: LABCELL_X50_Y10_N30
\inst2|Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add1~5_sumout\ = SUM(( (!\inst3|Y\(2) & ((!\inst8|PCout\(3) & ((\inst9|myarray~1066_combout\))) # (\inst8|PCout\(3) & (\inst9|myarray~1065_combout\)))) ) + ( !\inst3|Y\(2) $ (((!\inst9|myarray~1159_combout\) # (\inst8|PCout\(3)))) ) + ( 
-- \inst2|Add1~10\ ))
-- \inst2|Add1~6\ = CARRY(( (!\inst3|Y\(2) & ((!\inst8|PCout\(3) & ((\inst9|myarray~1066_combout\))) # (\inst8|PCout\(3) & (\inst9|myarray~1065_combout\)))) ) + ( !\inst3|Y\(2) $ (((!\inst9|myarray~1159_combout\) # (\inst8|PCout\(3)))) ) + ( \inst2|Add1~10\ 
-- ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010100110011000000000000000000000001010001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Y\(2),
	datab => \inst8|ALT_INV_PCout\(3),
	datac => \inst9|ALT_INV_myarray~1065_combout\,
	datad => \inst9|ALT_INV_myarray~1066_combout\,
	dataf => \inst9|ALT_INV_myarray~1159_combout\,
	cin => \inst2|Add1~10\,
	sumout => \inst2|Add1~5_sumout\,
	cout => \inst2|Add1~6\);

-- Location: LABCELL_X46_Y10_N45
\inst13|R[30]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst13|R[30]~1_combout\ = ( \inst2|Add1~5_sumout\ & ( \inst4|myarray_rtl_0|auto_generated|ram_block1a30\ & ( ((!\inst8|PCout\(2)) # (\inst8|PCout\(3))) # (\inst2|Rtemp\(30)) ) ) ) # ( !\inst2|Add1~5_sumout\ & ( 
-- \inst4|myarray_rtl_0|auto_generated|ram_block1a30\ & ( (!\inst8|PCout\(3) & (\inst2|Rtemp\(30) & (\inst8|PCout\(2)))) # (\inst8|PCout\(3) & (((!\inst5|myarray~0_combout\)))) ) ) ) # ( \inst2|Add1~5_sumout\ & ( 
-- !\inst4|myarray_rtl_0|auto_generated|ram_block1a30\ & ( (!\inst8|PCout\(3) & (((!\inst8|PCout\(2))) # (\inst2|Rtemp\(30)))) # (\inst8|PCout\(3) & (((\inst5|myarray~0_combout\)))) ) ) ) # ( !\inst2|Add1~5_sumout\ & ( 
-- !\inst4|myarray_rtl_0|auto_generated|ram_block1a30\ & ( (\inst2|Rtemp\(30) & (\inst8|PCout\(2) & !\inst8|PCout\(3))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100000000110111010000111100010001111100001101110111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_Rtemp\(30),
	datab => \inst8|ALT_INV_PCout\(2),
	datac => \inst5|ALT_INV_myarray~0_combout\,
	datad => \inst8|ALT_INV_PCout\(3),
	datae => \inst2|ALT_INV_Add1~5_sumout\,
	dataf => \inst4|myarray_rtl_0|auto_generated|ALT_INV_ram_block1a30\,
	combout => \inst13|R[30]~1_combout\);

-- Location: FF_X46_Y10_N4
\inst9|myarray~612\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_myarray~0_combout\,
	asdata => \inst13|R[30]~1_combout\,
	sload => VCC,
	ena => \inst5|myarray~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|myarray~612_q\);

-- Location: LABCELL_X46_Y10_N3
\inst9|myarray~1065\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|myarray~1065_combout\ = ( \inst9|myarray~612_q\ & ( !\inst5|myarray~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst5|ALT_INV_myarray~1_combout\,
	datae => \inst9|ALT_INV_myarray~612_q\,
	combout => \inst9|myarray~1065_combout\);

-- Location: LABCELL_X51_Y10_N36
\inst2|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add0~1_sumout\ = SUM(( (!\inst8|PCout\(3) & ((\inst9|myarray~1063_combout\))) # (\inst8|PCout\(3) & (\inst9|myarray~1062_combout\)) ) + ( (!\inst9|myarray~1158_combout\) # (\inst8|PCout\(3)) ) + ( \inst2|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000000000000000000000011010100110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|ALT_INV_myarray~1062_combout\,
	datab => \inst9|ALT_INV_myarray~1063_combout\,
	datac => \inst8|ALT_INV_PCout\(3),
	dataf => \inst9|ALT_INV_myarray~1158_combout\,
	cin => \inst2|Add0~6\,
	sumout => \inst2|Add0~1_sumout\);

-- Location: LABCELL_X50_Y9_N15
\inst2|Rtemp[31]\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Rtemp\(31) = ( \inst2|Add0~1_sumout\ & ( (\inst3|Y\(2)) # (\inst2|Rtemp\(31)) ) ) # ( !\inst2|Add0~1_sumout\ & ( (\inst2|Rtemp\(31) & !\inst3|Y\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst2|ALT_INV_Rtemp\(31),
	datad => \inst3|ALT_INV_Y\(2),
	dataf => \inst2|ALT_INV_Add0~1_sumout\,
	combout => \inst2|Rtemp\(31));

-- Location: LABCELL_X50_Y10_N33
\inst2|Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add1~1_sumout\ = SUM(( (!\inst3|Y\(2) & ((!\inst8|PCout\(3) & ((\inst9|myarray~1063_combout\))) # (\inst8|PCout\(3) & (\inst9|myarray~1062_combout\)))) ) + ( !\inst3|Y\(2) $ (((!\inst9|myarray~1158_combout\) # (\inst8|PCout\(3)))) ) + ( 
-- \inst2|Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010100110011000000000000000000000001010001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Y\(2),
	datab => \inst8|ALT_INV_PCout\(3),
	datac => \inst9|ALT_INV_myarray~1062_combout\,
	datad => \inst9|ALT_INV_myarray~1063_combout\,
	dataf => \inst9|ALT_INV_myarray~1158_combout\,
	cin => \inst2|Add1~6\,
	sumout => \inst2|Add1~1_sumout\);

-- Location: LABCELL_X50_Y9_N3
\inst13|R[31]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst13|R[31]~0_combout\ = ( \inst4|myarray_rtl_0|auto_generated|ram_block1a31\ & ( \inst2|Add1~1_sumout\ & ( (!\inst8|PCout\(2)) # ((\inst8|PCout\(3)) # (\inst2|Rtemp\(31))) ) ) ) # ( !\inst4|myarray_rtl_0|auto_generated|ram_block1a31\ & ( 
-- \inst2|Add1~1_sumout\ & ( (!\inst8|PCout\(3) & ((!\inst8|PCout\(2)) # ((\inst2|Rtemp\(31))))) # (\inst8|PCout\(3) & (((\inst5|myarray~0_combout\)))) ) ) ) # ( \inst4|myarray_rtl_0|auto_generated|ram_block1a31\ & ( !\inst2|Add1~1_sumout\ & ( 
-- (!\inst8|PCout\(3) & (\inst8|PCout\(2) & (\inst2|Rtemp\(31)))) # (\inst8|PCout\(3) & (((!\inst5|myarray~0_combout\)))) ) ) ) # ( !\inst4|myarray_rtl_0|auto_generated|ram_block1a31\ & ( !\inst2|Add1~1_sumout\ & ( (\inst8|PCout\(2) & (\inst2|Rtemp\(31) & 
-- !\inst8|PCout\(3))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100000000000100011111000010111011000011111011101111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|ALT_INV_PCout\(2),
	datab => \inst2|ALT_INV_Rtemp\(31),
	datac => \inst5|ALT_INV_myarray~0_combout\,
	datad => \inst8|ALT_INV_PCout\(3),
	datae => \inst4|myarray_rtl_0|auto_generated|ALT_INV_ram_block1a31\,
	dataf => \inst2|ALT_INV_Add1~1_sumout\,
	combout => \inst13|R[31]~0_combout\);

-- Location: LABCELL_X17_Y2_N36
\inst5|myarray~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|myarray~2_combout\ = ( \inst8|PCout\(3) & ( \inst8|PCout\(2) ) ) # ( !\inst8|PCout\(3) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111001100110011001111111111111111110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst8|ALT_INV_PCout\(2),
	datae => \inst8|ALT_INV_PCout\(3),
	combout => \inst5|myarray~2_combout\);

-- Location: MLABCELL_X52_Y10_N6
\inst|Add0~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add0~117_sumout\ = SUM(( \inst8|PCout\(4) ) + ( GND ) + ( \inst|Add0~2\ ))
-- \inst|Add0~118\ = CARRY(( \inst8|PCout\(4) ) + ( GND ) + ( \inst|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst8|ALT_INV_PCout\(4),
	cin => \inst|Add0~2\,
	sumout => \inst|Add0~117_sumout\,
	cout => \inst|Add0~118\);

-- Location: FF_X52_Y10_N8
\inst8|PCout[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst|Add0~117_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|PCout\(4));

-- Location: MLABCELL_X52_Y10_N9
\inst|Add0~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add0~113_sumout\ = SUM(( \inst8|PCout\(5) ) + ( GND ) + ( \inst|Add0~118\ ))
-- \inst|Add0~114\ = CARRY(( \inst8|PCout\(5) ) + ( GND ) + ( \inst|Add0~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst8|ALT_INV_PCout\(5),
	cin => \inst|Add0~118\,
	sumout => \inst|Add0~113_sumout\,
	cout => \inst|Add0~114\);

-- Location: FF_X52_Y10_N11
\inst8|PCout[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst|Add0~113_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|PCout\(5));

-- Location: MLABCELL_X52_Y10_N12
\inst|Add0~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add0~109_sumout\ = SUM(( \inst8|PCout\(6) ) + ( GND ) + ( \inst|Add0~114\ ))
-- \inst|Add0~110\ = CARRY(( \inst8|PCout\(6) ) + ( GND ) + ( \inst|Add0~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst8|ALT_INV_PCout\(6),
	cin => \inst|Add0~114\,
	sumout => \inst|Add0~109_sumout\,
	cout => \inst|Add0~110\);

-- Location: FF_X52_Y10_N14
\inst8|PCout[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst|Add0~109_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|PCout\(6));

-- Location: MLABCELL_X52_Y10_N15
\inst|Add0~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add0~105_sumout\ = SUM(( \inst8|PCout\(7) ) + ( GND ) + ( \inst|Add0~110\ ))
-- \inst|Add0~106\ = CARRY(( \inst8|PCout\(7) ) + ( GND ) + ( \inst|Add0~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst8|ALT_INV_PCout\(7),
	cin => \inst|Add0~110\,
	sumout => \inst|Add0~105_sumout\,
	cout => \inst|Add0~106\);

-- Location: FF_X52_Y10_N17
\inst8|PCout[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst|Add0~105_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|PCout\(7));

-- Location: MLABCELL_X52_Y10_N18
\inst|Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add0~101_sumout\ = SUM(( \inst8|PCout\(8) ) + ( GND ) + ( \inst|Add0~106\ ))
-- \inst|Add0~102\ = CARRY(( \inst8|PCout\(8) ) + ( GND ) + ( \inst|Add0~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst8|ALT_INV_PCout\(8),
	cin => \inst|Add0~106\,
	sumout => \inst|Add0~101_sumout\,
	cout => \inst|Add0~102\);

-- Location: FF_X52_Y10_N20
\inst8|PCout[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst|Add0~101_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|PCout\(8));

-- Location: MLABCELL_X52_Y10_N21
\inst|Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add0~97_sumout\ = SUM(( \inst8|PCout\(9) ) + ( GND ) + ( \inst|Add0~102\ ))
-- \inst|Add0~98\ = CARRY(( \inst8|PCout\(9) ) + ( GND ) + ( \inst|Add0~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|ALT_INV_PCout\(9),
	cin => \inst|Add0~102\,
	sumout => \inst|Add0~97_sumout\,
	cout => \inst|Add0~98\);

-- Location: FF_X52_Y10_N23
\inst8|PCout[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst|Add0~97_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|PCout\(9));

-- Location: MLABCELL_X52_Y10_N24
\inst|Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add0~93_sumout\ = SUM(( \inst8|PCout\(10) ) + ( GND ) + ( \inst|Add0~98\ ))
-- \inst|Add0~94\ = CARRY(( \inst8|PCout\(10) ) + ( GND ) + ( \inst|Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst8|ALT_INV_PCout\(10),
	cin => \inst|Add0~98\,
	sumout => \inst|Add0~93_sumout\,
	cout => \inst|Add0~94\);

-- Location: FF_X52_Y10_N26
\inst8|PCout[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst|Add0~93_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|PCout\(10));

-- Location: MLABCELL_X52_Y10_N27
\inst|Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add0~89_sumout\ = SUM(( \inst8|PCout\(11) ) + ( GND ) + ( \inst|Add0~94\ ))
-- \inst|Add0~90\ = CARRY(( \inst8|PCout\(11) ) + ( GND ) + ( \inst|Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|ALT_INV_PCout\(11),
	cin => \inst|Add0~94\,
	sumout => \inst|Add0~89_sumout\,
	cout => \inst|Add0~90\);

-- Location: FF_X52_Y10_N29
\inst8|PCout[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst|Add0~89_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|PCout\(11));

-- Location: MLABCELL_X52_Y10_N30
\inst|Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add0~85_sumout\ = SUM(( \inst8|PCout\(12) ) + ( GND ) + ( \inst|Add0~90\ ))
-- \inst|Add0~86\ = CARRY(( \inst8|PCout\(12) ) + ( GND ) + ( \inst|Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst8|ALT_INV_PCout\(12),
	cin => \inst|Add0~90\,
	sumout => \inst|Add0~85_sumout\,
	cout => \inst|Add0~86\);

-- Location: FF_X52_Y10_N32
\inst8|PCout[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst|Add0~85_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|PCout\(12));

-- Location: MLABCELL_X52_Y10_N33
\inst|Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add0~81_sumout\ = SUM(( \inst8|PCout\(13) ) + ( GND ) + ( \inst|Add0~86\ ))
-- \inst|Add0~82\ = CARRY(( \inst8|PCout\(13) ) + ( GND ) + ( \inst|Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|ALT_INV_PCout\(13),
	cin => \inst|Add0~86\,
	sumout => \inst|Add0~81_sumout\,
	cout => \inst|Add0~82\);

-- Location: FF_X52_Y10_N35
\inst8|PCout[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst|Add0~81_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|PCout\(13));

-- Location: MLABCELL_X52_Y10_N36
\inst|Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add0~77_sumout\ = SUM(( \inst8|PCout\(14) ) + ( GND ) + ( \inst|Add0~82\ ))
-- \inst|Add0~78\ = CARRY(( \inst8|PCout\(14) ) + ( GND ) + ( \inst|Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst8|ALT_INV_PCout\(14),
	cin => \inst|Add0~82\,
	sumout => \inst|Add0~77_sumout\,
	cout => \inst|Add0~78\);

-- Location: FF_X52_Y10_N38
\inst8|PCout[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst|Add0~77_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|PCout\(14));

-- Location: MLABCELL_X52_Y10_N39
\inst|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add0~73_sumout\ = SUM(( \inst8|PCout\(15) ) + ( GND ) + ( \inst|Add0~78\ ))
-- \inst|Add0~74\ = CARRY(( \inst8|PCout\(15) ) + ( GND ) + ( \inst|Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst8|ALT_INV_PCout\(15),
	cin => \inst|Add0~78\,
	sumout => \inst|Add0~73_sumout\,
	cout => \inst|Add0~74\);

-- Location: FF_X52_Y10_N41
\inst8|PCout[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst|Add0~73_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|PCout\(15));

-- Location: MLABCELL_X52_Y10_N42
\inst|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add0~69_sumout\ = SUM(( \inst8|PCout\(16) ) + ( GND ) + ( \inst|Add0~74\ ))
-- \inst|Add0~70\ = CARRY(( \inst8|PCout\(16) ) + ( GND ) + ( \inst|Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst8|ALT_INV_PCout\(16),
	cin => \inst|Add0~74\,
	sumout => \inst|Add0~69_sumout\,
	cout => \inst|Add0~70\);

-- Location: FF_X52_Y10_N44
\inst8|PCout[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst|Add0~69_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|PCout\(16));

-- Location: MLABCELL_X52_Y10_N45
\inst|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add0~65_sumout\ = SUM(( \inst8|PCout\(17) ) + ( GND ) + ( \inst|Add0~70\ ))
-- \inst|Add0~66\ = CARRY(( \inst8|PCout\(17) ) + ( GND ) + ( \inst|Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst8|ALT_INV_PCout\(17),
	cin => \inst|Add0~70\,
	sumout => \inst|Add0~65_sumout\,
	cout => \inst|Add0~66\);

-- Location: FF_X52_Y10_N47
\inst8|PCout[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst|Add0~65_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|PCout\(17));

-- Location: MLABCELL_X52_Y10_N48
\inst|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add0~61_sumout\ = SUM(( \inst8|PCout\(18) ) + ( GND ) + ( \inst|Add0~66\ ))
-- \inst|Add0~62\ = CARRY(( \inst8|PCout\(18) ) + ( GND ) + ( \inst|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst8|ALT_INV_PCout\(18),
	cin => \inst|Add0~66\,
	sumout => \inst|Add0~61_sumout\,
	cout => \inst|Add0~62\);

-- Location: FF_X52_Y10_N50
\inst8|PCout[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst|Add0~61_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|PCout\(18));

-- Location: MLABCELL_X52_Y10_N51
\inst|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add0~57_sumout\ = SUM(( \inst8|PCout\(19) ) + ( GND ) + ( \inst|Add0~62\ ))
-- \inst|Add0~58\ = CARRY(( \inst8|PCout\(19) ) + ( GND ) + ( \inst|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|ALT_INV_PCout\(19),
	cin => \inst|Add0~62\,
	sumout => \inst|Add0~57_sumout\,
	cout => \inst|Add0~58\);

-- Location: FF_X52_Y10_N53
\inst8|PCout[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst|Add0~57_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|PCout\(19));

-- Location: MLABCELL_X52_Y10_N54
\inst|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add0~53_sumout\ = SUM(( \inst8|PCout\(20) ) + ( GND ) + ( \inst|Add0~58\ ))
-- \inst|Add0~54\ = CARRY(( \inst8|PCout\(20) ) + ( GND ) + ( \inst|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst8|ALT_INV_PCout\(20),
	cin => \inst|Add0~58\,
	sumout => \inst|Add0~53_sumout\,
	cout => \inst|Add0~54\);

-- Location: FF_X52_Y10_N56
\inst8|PCout[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst|Add0~53_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|PCout\(20));

-- Location: MLABCELL_X52_Y10_N57
\inst|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add0~49_sumout\ = SUM(( \inst8|PCout\(21) ) + ( GND ) + ( \inst|Add0~54\ ))
-- \inst|Add0~50\ = CARRY(( \inst8|PCout\(21) ) + ( GND ) + ( \inst|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst8|ALT_INV_PCout\(21),
	cin => \inst|Add0~54\,
	sumout => \inst|Add0~49_sumout\,
	cout => \inst|Add0~50\);

-- Location: FF_X52_Y10_N59
\inst8|PCout[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst|Add0~49_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|PCout\(21));

-- Location: MLABCELL_X52_Y9_N0
\inst|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add0~45_sumout\ = SUM(( \inst8|PCout\(22) ) + ( GND ) + ( \inst|Add0~50\ ))
-- \inst|Add0~46\ = CARRY(( \inst8|PCout\(22) ) + ( GND ) + ( \inst|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst8|ALT_INV_PCout\(22),
	cin => \inst|Add0~50\,
	sumout => \inst|Add0~45_sumout\,
	cout => \inst|Add0~46\);

-- Location: FF_X52_Y9_N2
\inst8|PCout[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst|Add0~45_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|PCout\(22));

-- Location: MLABCELL_X52_Y9_N3
\inst|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add0~41_sumout\ = SUM(( \inst8|PCout\(23) ) + ( GND ) + ( \inst|Add0~46\ ))
-- \inst|Add0~42\ = CARRY(( \inst8|PCout\(23) ) + ( GND ) + ( \inst|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|ALT_INV_PCout\(23),
	cin => \inst|Add0~46\,
	sumout => \inst|Add0~41_sumout\,
	cout => \inst|Add0~42\);

-- Location: FF_X52_Y9_N5
\inst8|PCout[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst|Add0~41_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|PCout\(23));

-- Location: MLABCELL_X52_Y9_N6
\inst|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add0~37_sumout\ = SUM(( \inst8|PCout\(24) ) + ( GND ) + ( \inst|Add0~42\ ))
-- \inst|Add0~38\ = CARRY(( \inst8|PCout\(24) ) + ( GND ) + ( \inst|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst8|ALT_INV_PCout\(24),
	cin => \inst|Add0~42\,
	sumout => \inst|Add0~37_sumout\,
	cout => \inst|Add0~38\);

-- Location: FF_X52_Y9_N8
\inst8|PCout[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst|Add0~37_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|PCout\(24));

-- Location: MLABCELL_X52_Y9_N9
\inst|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add0~33_sumout\ = SUM(( \inst8|PCout\(25) ) + ( GND ) + ( \inst|Add0~38\ ))
-- \inst|Add0~34\ = CARRY(( \inst8|PCout\(25) ) + ( GND ) + ( \inst|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst8|ALT_INV_PCout\(25),
	cin => \inst|Add0~38\,
	sumout => \inst|Add0~33_sumout\,
	cout => \inst|Add0~34\);

-- Location: FF_X52_Y9_N11
\inst8|PCout[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst|Add0~33_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|PCout\(25));

-- Location: MLABCELL_X52_Y9_N12
\inst|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add0~29_sumout\ = SUM(( \inst8|PCout\(26) ) + ( GND ) + ( \inst|Add0~34\ ))
-- \inst|Add0~30\ = CARRY(( \inst8|PCout\(26) ) + ( GND ) + ( \inst|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst8|ALT_INV_PCout\(26),
	cin => \inst|Add0~34\,
	sumout => \inst|Add0~29_sumout\,
	cout => \inst|Add0~30\);

-- Location: FF_X52_Y9_N14
\inst8|PCout[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst|Add0~29_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|PCout\(26));

-- Location: MLABCELL_X52_Y9_N15
\inst|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add0~25_sumout\ = SUM(( \inst8|PCout\(27) ) + ( GND ) + ( \inst|Add0~30\ ))
-- \inst|Add0~26\ = CARRY(( \inst8|PCout\(27) ) + ( GND ) + ( \inst|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst8|ALT_INV_PCout\(27),
	cin => \inst|Add0~30\,
	sumout => \inst|Add0~25_sumout\,
	cout => \inst|Add0~26\);

-- Location: FF_X52_Y9_N17
\inst8|PCout[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst|Add0~25_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|PCout\(27));

-- Location: MLABCELL_X52_Y9_N18
\inst|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add0~21_sumout\ = SUM(( \inst8|PCout\(28) ) + ( GND ) + ( \inst|Add0~26\ ))
-- \inst|Add0~22\ = CARRY(( \inst8|PCout\(28) ) + ( GND ) + ( \inst|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst8|ALT_INV_PCout\(28),
	cin => \inst|Add0~26\,
	sumout => \inst|Add0~21_sumout\,
	cout => \inst|Add0~22\);

-- Location: FF_X52_Y9_N20
\inst8|PCout[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst|Add0~21_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|PCout\(28));

-- Location: MLABCELL_X52_Y9_N21
\inst|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add0~17_sumout\ = SUM(( \inst8|PCout\(29) ) + ( GND ) + ( \inst|Add0~22\ ))
-- \inst|Add0~18\ = CARRY(( \inst8|PCout\(29) ) + ( GND ) + ( \inst|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|ALT_INV_PCout\(29),
	cin => \inst|Add0~22\,
	sumout => \inst|Add0~17_sumout\,
	cout => \inst|Add0~18\);

-- Location: FF_X52_Y9_N23
\inst8|PCout[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst|Add0~17_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|PCout\(29));

-- Location: MLABCELL_X52_Y9_N24
\inst|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add0~13_sumout\ = SUM(( \inst8|PCout\(30) ) + ( GND ) + ( \inst|Add0~18\ ))
-- \inst|Add0~14\ = CARRY(( \inst8|PCout\(30) ) + ( GND ) + ( \inst|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst8|ALT_INV_PCout\(30),
	cin => \inst|Add0~18\,
	sumout => \inst|Add0~13_sumout\,
	cout => \inst|Add0~14\);

-- Location: FF_X52_Y9_N26
\inst8|PCout[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst|Add0~13_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|PCout\(30));

-- Location: MLABCELL_X52_Y9_N27
\inst|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add0~9_sumout\ = SUM(( \inst8|PCout\(31) ) + ( GND ) + ( \inst|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|ALT_INV_PCout\(31),
	cin => \inst|Add0~14\,
	sumout => \inst|Add0~9_sumout\);

-- Location: FF_X52_Y9_N29
\inst8|PCout[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst|Add0~9_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|PCout\(31));

-- Location: LABCELL_X46_Y10_N39
\inst9|myarray~1064\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|myarray~1064_combout\ = ( \inst9|myarray~1062_combout\ & ( (\inst9|myarray~1063_combout\) # (\inst8|PCout\(3)) ) ) # ( !\inst9|myarray~1062_combout\ & ( (!\inst8|PCout\(3) & \inst9|myarray~1063_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst8|ALT_INV_PCout\(3),
	datac => \inst9|ALT_INV_myarray~1063_combout\,
	dataf => \inst9|ALT_INV_myarray~1062_combout\,
	combout => \inst9|myarray~1064_combout\);

-- Location: LABCELL_X46_Y10_N48
\inst9|myarray~1067\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|myarray~1067_combout\ = ( \inst8|PCout\(3) & ( \inst9|myarray~1065_combout\ ) ) # ( !\inst8|PCout\(3) & ( \inst9|myarray~1066_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|ALT_INV_myarray~1066_combout\,
	datac => \inst9|ALT_INV_myarray~1065_combout\,
	dataf => \inst8|ALT_INV_PCout\(3),
	combout => \inst9|myarray~1067_combout\);

-- Location: MLABCELL_X52_Y11_N30
\inst9|myarray~1070\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|myarray~1070_combout\ = ( \inst9|myarray~1069_combout\ & ( (!\inst8|PCout\(3)) # (\inst9|myarray~1068_combout\) ) ) # ( !\inst9|myarray~1069_combout\ & ( (\inst8|PCout\(3) & \inst9|myarray~1068_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111001111110011111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst8|ALT_INV_PCout\(3),
	datac => \inst9|ALT_INV_myarray~1068_combout\,
	dataf => \inst9|ALT_INV_myarray~1069_combout\,
	combout => \inst9|myarray~1070_combout\);

-- Location: LABCELL_X53_Y9_N39
\inst9|myarray~1073\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|myarray~1073_combout\ = ( \inst9|myarray~1071_combout\ & ( (\inst8|PCout\(3)) # (\inst9|myarray~1072_combout\) ) ) # ( !\inst9|myarray~1071_combout\ & ( (\inst9|myarray~1072_combout\ & !\inst8|PCout\(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|ALT_INV_myarray~1072_combout\,
	datac => \inst8|ALT_INV_PCout\(3),
	dataf => \inst9|ALT_INV_myarray~1071_combout\,
	combout => \inst9|myarray~1073_combout\);

-- Location: LABCELL_X53_Y10_N36
\inst9|myarray~1076\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|myarray~1076_combout\ = ( \inst9|myarray~1075_combout\ & ( (!\inst8|PCout\(3)) # (\inst9|myarray~1074_combout\) ) ) # ( !\inst9|myarray~1075_combout\ & ( (\inst9|myarray~1074_combout\ & \inst8|PCout\(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111110011111100111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst9|ALT_INV_myarray~1074_combout\,
	datac => \inst8|ALT_INV_PCout\(3),
	dataf => \inst9|ALT_INV_myarray~1075_combout\,
	combout => \inst9|myarray~1076_combout\);

-- Location: LABCELL_X53_Y10_N54
\inst9|myarray~1079\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|myarray~1079_combout\ = ( \inst9|myarray~1078_combout\ & ( (!\inst8|PCout\(3)) # (\inst9|myarray~1077_combout\) ) ) # ( !\inst9|myarray~1078_combout\ & ( (\inst9|myarray~1077_combout\ & \inst8|PCout\(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010111110101111101011111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|ALT_INV_myarray~1077_combout\,
	datac => \inst8|ALT_INV_PCout\(3),
	dataf => \inst9|ALT_INV_myarray~1078_combout\,
	combout => \inst9|myarray~1079_combout\);

-- Location: LABCELL_X53_Y10_N21
\inst9|myarray~1082\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|myarray~1082_combout\ = ( \inst8|PCout\(3) & ( \inst9|myarray~1080_combout\ ) ) # ( !\inst8|PCout\(3) & ( \inst9|myarray~1081_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001101010101010101010011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|ALT_INV_myarray~1081_combout\,
	datab => \inst9|ALT_INV_myarray~1080_combout\,
	datae => \inst8|ALT_INV_PCout\(3),
	combout => \inst9|myarray~1082_combout\);

-- Location: MLABCELL_X47_Y10_N24
\inst9|myarray~1085\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|myarray~1085_combout\ = ( \inst9|myarray~1083_combout\ & ( (\inst9|myarray~1084_combout\) # (\inst8|PCout\(3)) ) ) # ( !\inst9|myarray~1083_combout\ & ( (!\inst8|PCout\(3) & \inst9|myarray~1084_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst8|ALT_INV_PCout\(3),
	datac => \inst9|ALT_INV_myarray~1084_combout\,
	dataf => \inst9|ALT_INV_myarray~1083_combout\,
	combout => \inst9|myarray~1085_combout\);

-- Location: MLABCELL_X47_Y11_N24
\inst9|myarray~1088\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|myarray~1088_combout\ = ( \inst8|PCout\(3) & ( \inst9|myarray~1086_combout\ ) ) # ( !\inst8|PCout\(3) & ( \inst9|myarray~1087_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|ALT_INV_myarray~1086_combout\,
	datac => \inst9|ALT_INV_myarray~1087_combout\,
	dataf => \inst8|ALT_INV_PCout\(3),
	combout => \inst9|myarray~1088_combout\);

-- Location: LABCELL_X46_Y10_N21
\inst9|myarray~1091\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|myarray~1091_combout\ = (!\inst8|PCout\(3) & ((\inst9|myarray~1090_combout\))) # (\inst8|PCout\(3) & (\inst9|myarray~1089_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101000011110101010100001111010101010000111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|ALT_INV_myarray~1089_combout\,
	datac => \inst9|ALT_INV_myarray~1090_combout\,
	datad => \inst8|ALT_INV_PCout\(3),
	combout => \inst9|myarray~1091_combout\);

-- Location: MLABCELL_X47_Y11_N57
\inst9|myarray~1094\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|myarray~1094_combout\ = ( \inst8|PCout\(3) & ( \inst9|myarray~1092_combout\ ) ) # ( !\inst8|PCout\(3) & ( \inst9|myarray~1093_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|ALT_INV_myarray~1093_combout\,
	datac => \inst9|ALT_INV_myarray~1092_combout\,
	dataf => \inst8|ALT_INV_PCout\(3),
	combout => \inst9|myarray~1094_combout\);

-- Location: LABCELL_X53_Y10_N24
\inst9|myarray~1097\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|myarray~1097_combout\ = (!\inst8|PCout\(3) & ((\inst9|myarray~1096_combout\))) # (\inst8|PCout\(3) & (\inst9|myarray~1095_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100110011000011110011001100001111001100110000111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst9|ALT_INV_myarray~1095_combout\,
	datac => \inst9|ALT_INV_myarray~1096_combout\,
	datad => \inst8|ALT_INV_PCout\(3),
	combout => \inst9|myarray~1097_combout\);

-- Location: LABCELL_X53_Y10_N9
\inst9|myarray~1100\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|myarray~1100_combout\ = ( \inst8|PCout\(3) & ( \inst9|myarray~1099_combout\ & ( \inst9|myarray~1098_combout\ ) ) ) # ( !\inst8|PCout\(3) & ( \inst9|myarray~1099_combout\ ) ) # ( \inst8|PCout\(3) & ( !\inst9|myarray~1099_combout\ & ( 
-- \inst9|myarray~1098_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111111111111111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst9|ALT_INV_myarray~1098_combout\,
	datae => \inst8|ALT_INV_PCout\(3),
	dataf => \inst9|ALT_INV_myarray~1099_combout\,
	combout => \inst9|myarray~1100_combout\);

-- Location: MLABCELL_X47_Y11_N51
\inst9|myarray~1103\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|myarray~1103_combout\ = ( \inst9|myarray~1102_combout\ & ( (!\inst8|PCout\(3)) # (\inst9|myarray~1101_combout\) ) ) # ( !\inst9|myarray~1102_combout\ & ( (\inst8|PCout\(3) & \inst9|myarray~1101_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010110101010111111111010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|ALT_INV_PCout\(3),
	datad => \inst9|ALT_INV_myarray~1101_combout\,
	dataf => \inst9|ALT_INV_myarray~1102_combout\,
	combout => \inst9|myarray~1103_combout\);

-- Location: LABCELL_X53_Y11_N12
\inst9|myarray~1106\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|myarray~1106_combout\ = ( \inst9|myarray~1105_combout\ & ( (!\inst8|PCout\(3)) # (\inst9|myarray~1104_combout\) ) ) # ( !\inst9|myarray~1105_combout\ & ( (\inst8|PCout\(3) & \inst9|myarray~1104_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111001100111111111100110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst8|ALT_INV_PCout\(3),
	datad => \inst9|ALT_INV_myarray~1104_combout\,
	dataf => \inst9|ALT_INV_myarray~1105_combout\,
	combout => \inst9|myarray~1106_combout\);

-- Location: LABCELL_X48_Y11_N36
\inst9|myarray~1109\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|myarray~1109_combout\ = ( \inst8|PCout\(3) & ( \inst9|myarray~1107_combout\ ) ) # ( !\inst8|PCout\(3) & ( \inst9|myarray~1108_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst9|ALT_INV_myarray~1108_combout\,
	datad => \inst9|ALT_INV_myarray~1107_combout\,
	dataf => \inst8|ALT_INV_PCout\(3),
	combout => \inst9|myarray~1109_combout\);

-- Location: LABCELL_X50_Y13_N6
\inst9|myarray~1112\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|myarray~1112_combout\ = ( \inst8|PCout\(3) & ( \inst9|myarray~1110_combout\ ) ) # ( !\inst8|PCout\(3) & ( \inst9|myarray~1111_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst9|ALT_INV_myarray~1110_combout\,
	datad => \inst9|ALT_INV_myarray~1111_combout\,
	dataf => \inst8|ALT_INV_PCout\(3),
	combout => \inst9|myarray~1112_combout\);

-- Location: LABCELL_X53_Y10_N33
\inst9|myarray~1115\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|myarray~1115_combout\ = ( \inst9|myarray~1114_combout\ & ( (!\inst8|PCout\(3)) # (\inst9|myarray~1113_combout\) ) ) # ( !\inst9|myarray~1114_combout\ & ( (\inst9|myarray~1113_combout\ & \inst8|PCout\(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010111111111010101011111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|ALT_INV_myarray~1113_combout\,
	datad => \inst8|ALT_INV_PCout\(3),
	dataf => \inst9|ALT_INV_myarray~1114_combout\,
	combout => \inst9|myarray~1115_combout\);

-- Location: MLABCELL_X47_Y10_N33
\inst9|myarray~1118\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|myarray~1118_combout\ = ( \inst8|PCout\(3) & ( \inst9|myarray~1116_combout\ ) ) # ( !\inst8|PCout\(3) & ( \inst9|myarray~1117_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst9|ALT_INV_myarray~1117_combout\,
	datad => \inst9|ALT_INV_myarray~1116_combout\,
	dataf => \inst8|ALT_INV_PCout\(3),
	combout => \inst9|myarray~1118_combout\);

-- Location: LABCELL_X51_Y9_N15
\inst9|myarray~1121\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|myarray~1121_combout\ = ( \inst8|PCout\(3) & ( \inst9|myarray~1119_combout\ ) ) # ( !\inst8|PCout\(3) & ( \inst9|myarray~1120_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|ALT_INV_myarray~1120_combout\,
	datac => \inst9|ALT_INV_myarray~1119_combout\,
	dataf => \inst8|ALT_INV_PCout\(3),
	combout => \inst9|myarray~1121_combout\);

-- Location: LABCELL_X55_Y12_N12
\inst9|myarray~1124\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|myarray~1124_combout\ = ( \inst9|myarray~1123_combout\ & ( (!\inst8|PCout\(3)) # (\inst9|myarray~1122_combout\) ) ) # ( !\inst9|myarray~1123_combout\ & ( (\inst8|PCout\(3) & \inst9|myarray~1122_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111001111110011111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst8|ALT_INV_PCout\(3),
	datac => \inst9|ALT_INV_myarray~1122_combout\,
	dataf => \inst9|ALT_INV_myarray~1123_combout\,
	combout => \inst9|myarray~1124_combout\);

-- Location: LABCELL_X48_Y12_N45
\inst9|myarray~1127\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|myarray~1127_combout\ = ( \inst9|myarray~1125_combout\ & ( \inst8|PCout\(3) ) ) # ( \inst9|myarray~1125_combout\ & ( !\inst8|PCout\(3) & ( \inst9|myarray~1126_combout\ ) ) ) # ( !\inst9|myarray~1125_combout\ & ( !\inst8|PCout\(3) & ( 
-- \inst9|myarray~1126_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|ALT_INV_myarray~1126_combout\,
	datae => \inst9|ALT_INV_myarray~1125_combout\,
	dataf => \inst8|ALT_INV_PCout\(3),
	combout => \inst9|myarray~1127_combout\);

-- Location: LABCELL_X55_Y12_N6
\inst9|myarray~1130\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|myarray~1130_combout\ = ( \inst9|myarray~1128_combout\ & ( (\inst9|myarray~1129_combout\) # (\inst8|PCout\(3)) ) ) # ( !\inst9|myarray~1128_combout\ & ( (!\inst8|PCout\(3) & \inst9|myarray~1129_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst8|ALT_INV_PCout\(3),
	datad => \inst9|ALT_INV_myarray~1129_combout\,
	dataf => \inst9|ALT_INV_myarray~1128_combout\,
	combout => \inst9|myarray~1130_combout\);

-- Location: LABCELL_X48_Y12_N48
\inst9|myarray~1133\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|myarray~1133_combout\ = ( \inst9|myarray~1131_combout\ & ( \inst8|PCout\(3) ) ) # ( \inst9|myarray~1131_combout\ & ( !\inst8|PCout\(3) & ( \inst9|myarray~1132_combout\ ) ) ) # ( !\inst9|myarray~1131_combout\ & ( !\inst8|PCout\(3) & ( 
-- \inst9|myarray~1132_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst9|ALT_INV_myarray~1132_combout\,
	datae => \inst9|ALT_INV_myarray~1131_combout\,
	dataf => \inst8|ALT_INV_PCout\(3),
	combout => \inst9|myarray~1133_combout\);

-- Location: LABCELL_X48_Y12_N24
\inst9|myarray~1136\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|myarray~1136_combout\ = ( \inst9|myarray~1135_combout\ & ( \inst9|myarray~1134_combout\ ) ) # ( !\inst9|myarray~1135_combout\ & ( \inst9|myarray~1134_combout\ & ( \inst8|PCout\(3) ) ) ) # ( \inst9|myarray~1135_combout\ & ( 
-- !\inst9|myarray~1134_combout\ & ( !\inst8|PCout\(3) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst8|ALT_INV_PCout\(3),
	datae => \inst9|ALT_INV_myarray~1135_combout\,
	dataf => \inst9|ALT_INV_myarray~1134_combout\,
	combout => \inst9|myarray~1136_combout\);

-- Location: LABCELL_X55_Y12_N0
\inst9|myarray~1139\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|myarray~1139_combout\ = ( \inst9|myarray~1138_combout\ & ( \inst9|myarray~1137_combout\ ) ) # ( !\inst9|myarray~1138_combout\ & ( \inst9|myarray~1137_combout\ & ( \inst8|PCout\(3) ) ) ) # ( \inst9|myarray~1138_combout\ & ( 
-- !\inst9|myarray~1137_combout\ & ( !\inst8|PCout\(3) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000110011001100111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst8|ALT_INV_PCout\(3),
	datae => \inst9|ALT_INV_myarray~1138_combout\,
	dataf => \inst9|ALT_INV_myarray~1137_combout\,
	combout => \inst9|myarray~1139_combout\);

-- Location: LABCELL_X51_Y13_N6
\inst9|myarray~1142\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|myarray~1142_combout\ = ( \inst9|myarray~1141_combout\ & ( (!\inst8|PCout\(3)) # (\inst9|myarray~1140_combout\) ) ) # ( !\inst9|myarray~1141_combout\ & ( (\inst8|PCout\(3) & \inst9|myarray~1140_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111001111110011111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst8|ALT_INV_PCout\(3),
	datac => \inst9|ALT_INV_myarray~1140_combout\,
	dataf => \inst9|ALT_INV_myarray~1141_combout\,
	combout => \inst9|myarray~1142_combout\);

-- Location: LABCELL_X53_Y12_N3
\inst9|myarray~1145\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|myarray~1145_combout\ = ( \inst9|myarray~1143_combout\ & ( (\inst9|myarray~1144_combout\) # (\inst8|PCout\(3)) ) ) # ( !\inst9|myarray~1143_combout\ & ( (!\inst8|PCout\(3) & \inst9|myarray~1144_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst8|ALT_INV_PCout\(3),
	datac => \inst9|ALT_INV_myarray~1144_combout\,
	dataf => \inst9|ALT_INV_myarray~1143_combout\,
	combout => \inst9|myarray~1145_combout\);

-- Location: LABCELL_X48_Y12_N39
\inst9|myarray~1148\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|myarray~1148_combout\ = ( \inst9|myarray~1147_combout\ & ( (!\inst8|PCout\(3)) # (\inst9|myarray~1146_combout\) ) ) # ( !\inst9|myarray~1147_combout\ & ( (\inst8|PCout\(3) & \inst9|myarray~1146_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101101011111010111100000101000001011010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|ALT_INV_PCout\(3),
	datac => \inst9|ALT_INV_myarray~1146_combout\,
	datae => \inst9|ALT_INV_myarray~1147_combout\,
	combout => \inst9|myarray~1148_combout\);

-- Location: LABCELL_X48_Y11_N42
\inst9|myarray~1151\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|myarray~1151_combout\ = ( \inst9|myarray~1150_combout\ & ( (!\inst8|PCout\(3)) # (\inst9|myarray~1149_combout\) ) ) # ( !\inst9|myarray~1150_combout\ & ( (\inst8|PCout\(3) & \inst9|myarray~1149_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111001111110011111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst8|ALT_INV_PCout\(3),
	datac => \inst9|ALT_INV_myarray~1149_combout\,
	dataf => \inst9|ALT_INV_myarray~1150_combout\,
	combout => \inst9|myarray~1151_combout\);

-- Location: MLABCELL_X52_Y12_N12
\inst9|myarray~1154\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|myarray~1154_combout\ = ( \inst9|myarray~1152_combout\ & ( (\inst9|myarray~1153_combout\) # (\inst8|PCout\(3)) ) ) # ( !\inst9|myarray~1152_combout\ & ( (!\inst8|PCout\(3) & \inst9|myarray~1153_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst8|ALT_INV_PCout\(3),
	datac => \inst9|ALT_INV_myarray~1153_combout\,
	dataf => \inst9|ALT_INV_myarray~1152_combout\,
	combout => \inst9|myarray~1154_combout\);

-- Location: LABCELL_X53_Y11_N39
\inst9|myarray~1157\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|myarray~1157_combout\ = ( \inst9|myarray~1155_combout\ & ( \inst8|PCout\(3) ) ) # ( \inst9|myarray~1155_combout\ & ( !\inst8|PCout\(3) & ( \inst9|myarray~1156_combout\ ) ) ) # ( !\inst9|myarray~1155_combout\ & ( !\inst8|PCout\(3) & ( 
-- \inst9|myarray~1156_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst9|ALT_INV_myarray~1156_combout\,
	datae => \inst9|ALT_INV_myarray~1155_combout\,
	dataf => \inst8|ALT_INV_PCout\(3),
	combout => \inst9|myarray~1157_combout\);

-- Location: LABCELL_X12_Y80_N0
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


