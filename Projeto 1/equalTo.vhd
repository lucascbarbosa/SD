LIBRARY ieee;

USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_unsigned.ALL;
USE ieee.numeric_std.ALL;


ENTITY equalTo IS PORT (
  A : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
  B : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
  result : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
);
END equalTo;

ARCHITECTURE behavioral of equalTo IS
BEGIN	
   result(3) <= '0';
	result(2) <= '0';
	result(1) <= '0';
	result(0) <=  (A(0) XNOR B(0)) AND (A(1) XNOR B(1)) AND (A(2) XNOR B(2)) AND (A(3) XNOR B(3));
	
END behavioral;