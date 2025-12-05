library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_UNSIGNED.all;

entity ALU IS
Port(
		A,B: in STD_LOGIC_VECTOR(31 downto 0);
		OPCODE: in STD_LOGIC_VECTOR(3 downto 0);
		Zero: out STD_LOGIC;
		R: out STD_LOGIC_VECTOR(31 downto 0));
		
		
end ALU;

architecture internal of ALU IS

signal temp: STD_LOGIC_VECTOR(31 downto 0);
signal Rtemp: STD_LOGIC_VECTOR(31 downto 0);

begin

PROCESS (OPCODE, A, B, temp)
	begin
	
	if (OPCODE = "0000") THEN
		R <= NOT A;
		Zero <= '0';
		
	elsif (OPCODE = "0001") THEN
		R <= NOT B;
		Zero <= '0';
		
	elsif (OPCODE = "1000") THEN			-- AND
		R <= A AND B ;
		Zero <= '0';
		
	elsif (OPCODE = "0011") THEN 
		R <= NOT (A AND B);
		Zero <= '0';
		
	elsif (OPCODE = "0100") THEN			-- OR
		R <= A OR B;
		Zero <= '0';
		
	elsif (OPCODE = "0101") THEN			-- NOR
		R <= NOT (A OR B) ;
		Zero <= '0';
		
	-- elsif (OPCODE = "0110") THEN 
		-- R <= A XOR B;
		
	elsif (OPCODE = "0111") THEN
		R <= NOT(A XOR B);
		Zero <= '0';
	
	elsif (OPCODE = "0110") THEN			--Subtraction 
		--temp <= (NOT B) + x"00000001";
		Rtemp <= A - B;
		if (Rtemp = x"00000000") THEN
			Zero <= '1';
		else
			Zero <= '0';
		end if;
		R <= Rtemp;	
			
	elsif (OPCODE = "0010") THEN			-- add
		R <= A + B;
		Zero <= '0';
		
	elsif (OPCODE = "1001") THEN			-- set less than
		if (A < B) THEN
			R <= x"00000001";
			Zero <= '0';
		else 
			R <= x"00000000";
			Zero <= '0';
		end if;
		
	elsif (OPCODE = "1010") THEN
		R <= A + "00000001";
		Zero <= '0';
		
	elsif (OPCODE = "1011") THEN
		R <= A - x"00000001";
		Zero <= '0';
	
	elsif (OPCODE = "1100") THEN
		R <= B + x"00000001";
		Zero <= '0';
		
	elsif (OPCODE = "1101") THEN
		R <= B - x"00000001";
		Zero <= '0';
		
	elsif (OPCODE = "1110") THEN
		R <= (NOT A) + x"00000001";
		Zero <= '0';
		
	elsif (OPCODE = "1111") THEN
		R <= (NOT B) + x"00000001";
		Zero <= '0';
	
	end if;
	
END PROCESS;

END internal;
