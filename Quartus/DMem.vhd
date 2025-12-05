LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY DMem IS
	PORT (
		clock : IN std_logic;
		MemWrite, MemRead : IN STD_LOGIC;
		Address, DataIn : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
	DataOut : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)); 
END DMem;

ARCHITECTURE internal OF DMem IS

	TYPE MEM_TYPE IS ARRAY (0 TO 31) OF STD_LOGIC_VECTOR(31 DOWNTO 0);

	SIGNAL myarray : MEM_TYPE := (x"00000000", 
		x"00000001", 
		x"00000002", 
		x"00000003", 
		x"00000004", 
		x"00000005", 
		x"00000006", 
		x"00000007", 
		x"00000008", 
		x"00000009", 
		x"00000010", 
		x"00000011", 
		x"00000012", 
		x"00000013", 
		x"00000014", 
		x"00000015", 
		x"00000016", 
		x"00000017", 
		x"00000018", 
		x"00000019", 
		x"00000020", 
		x"00000021", 
		x"00000022", 
		x"00000023", 
		x"00000024", 
		x"00000025", 
		x"00000026", 
		x"00000027", 
		x"00000028", 
		x"00000029", 
		x"00000030", 
	x"00000031"); 
BEGIN
	PROCESS (clock, MemWrite, MemRead)
	BEGIN
		IF falling_edge(clock) THEN 
			IF (MemWrite = '1') THEN
				myarray(TO_INTEGER(UNSIGNED(Address)/4)) <= DataIn; 
			ELSIF (MemRead = '1') THEN
				DataOut <= myarray(TO_INTEGER(UNSIGNED(Address)/4));
			END IF;
		END IF;
	END PROCESS;
END internal;