LIBRARY ieee;

USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_unsigned.ALL;
USE ieee.numeric_std.ALL;


ENTITY greaterThan IS PORT (
  A : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
  B : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
  result : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
);
END greaterThan;

ARCHITECTURE behavioral of greaterThan IS
SIGNAL X : STD_LOGIC_VECTOR(3 DOWNTO 0);
BEGIN	
   X(0) <= A(0) XOR B(0);
	X(1) <= A(1) XOR B(1);
	X(2) <= A(2) XOR B(2);
	X(3) <= A(3) XOR B(3);
   result(3) <= '0';
	result(2) <= '0';
	result(1) <= '0';
	result(0) <= (A(3) AND (NOT(B(3)))) OR (X(3) AND A(2) AND (NOT(B(2)))) OR (X(3) AND X(2) AND A(1) AND (NOT(B(1)))) OR (X(3) AND X(2) AND X(1) AND A(0) AND (NOT(B(0))));
	
END behavioral;