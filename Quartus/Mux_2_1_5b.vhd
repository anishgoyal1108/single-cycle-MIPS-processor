LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY Mux_2_1_5b IS
    PORT (
        A, B : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
        Sel : IN STD_LOGIC;
        R : OUT STD_LOGIC_VECTOR(4 DOWNTO 0)
    );
END Mux_2_1_5b;

ARCHITECTURE behavioral OF Mux_2_1_5b IS
BEGIN
    PROCESS (A, B, Sel)
    BEGIN
        IF Sel = '0' THEN
            R <= A;
        ELSIF Sel = '1' THEN
            R <= B;
        END IF;
    END PROCESS;
END behavioral;
