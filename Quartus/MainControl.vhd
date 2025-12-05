LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY MainControl IS
	PORT (
		Instr : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
		RegDst, Branch, MemRead, MemtoReg, MemWrite, ALUSrc, RegWrite : OUT STD_LOGIC;
	ALUop : OUT STD_LOGIC_VECTOR(1 DOWNTO 0)); 
END MainControl;

ARCHITECTURE internal OF MainControl IS
BEGIN
	PROCESS (Instr)
	BEGIN
		IF (Instr = "000000") THEN
			RegDst <= '1';
			ALUSrc <= '0';
			ALUop <= "10";
			MemRead <= '0';
			MemWrite <= '0';
			Branch <= '0';
			RegWrite <= '1' AFTER 10ns;
			MemtoReg <= '0';
 

		ELSIF (Instr = "100011") THEN
			RegDst <= '0';
			ALUSrc <= '1';
			ALUop <= "00";
			MemRead <= '1';
			MemWrite <= '0';
			Branch <= '0';
			RegWrite <= '1' AFTER 10ns;
			MemtoReg <= '1';
 

		ELSIF (Instr = "101011") THEN
			RegDst <= '0';
			ALUSrc <= '1';
			ALUop <= "00";
			MemRead <= '0';
			MemWrite <= '1';
			Branch <= '0';
			RegWrite <= '0';
			MemtoReg <= '0';
 

		ELSIF (Instr = "000100") THEN
			RegDst <= '0';
			ALUSrc <= '0';
			ALUop <= "01";
			MemRead <= '0';
			MemWrite <= '0';
			Branch <= '1';
			RegWrite <= '0';
			MemtoReg <= '0';
 
		END IF; 
	END PROCESS;
END internal;