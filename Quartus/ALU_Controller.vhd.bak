LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY ALU_Controller IS
	PORT (
		ALUop : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
		Instr : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
		Y : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
 
 
END ALU_Controller;

ARCHITECTURE internal OF ALU_Controller IS

BEGIN
	PROCESS (ALUop, Instr)
	BEGIN
		IF (ALUop = "00") THEN
			Y <= "0010"; 

		ELSIF (ALUop = "01") THEN
			Y <= "0110"; 

		ELSIF (ALUop = "10") THEN
			IF (Instr = "100000") THEN 
				Y <= "0010";
			ELSIF (Instr = "100010") THEN 
				Y <= "0110";
			ELSIF (Instr = "100100") THEN 
				Y <= "0000";
			ELSIF (Instr = "100101") THEN 
				Y <= "0001";
			ELSIF (Instr = "101010") THEN 
				Y <= "0111";
			END IF; 
		END IF; 
	END PROCESS;
END internal;