LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
USE ieee.std_logic_unsigned.ALL;

ENTITY decr4bit IS PORT (
  A : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
  B : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
  result : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
  carry : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
);
END decr4bit;

ARCHITECTURE hardware OF decr4bit IS

  SIGNAL RESULT_AUX : STD_LOGIC_VECTOR(3 DOWNTO 0); -- Sinal auxiliar de soma
  SIGNAL RESULT_AUX_DEC : STD_LOGIC_VECTOR(3 DOWNTO 0); -- Sinal auxiliar de soma após decremento
  SIGNAL CARRY_AUX : STD_LOGIC_VECTOR(3 DOWNTO 0); -- Sinal auxiliar de Carry out
  SIGNAL CARRY_AUX_DEC : STD_LOGIC_VECTOR(3 DOWNTO 0); -- Sinal auxiliar de Carry out após decremento
  

  -- Módulo Full Adder
  COMPONENT fullAdder IS
    PORT (
      a : IN STD_LOGIC;
      b : IN STD_LOGIC;
      cin : IN STD_LOGIC;
      sum : OUT STD_LOGIC;
      cout : OUT STD_LOGIC);
  END COMPONENT;

BEGIN

  -- Decremento de 1
  bit0 : fullAdder port map (A(0), '1', '0', RESULT_AUX_DEC(0), CARRY_AUX_DEC(0));
  bit1 : fullAdder port map (A(1), '1', CARRY_AUX_DEC(0), RESULT_AUX_DEC(1), CARRY_AUX_DEC(1));
  bit2 : fullAdder port map (A(2), '1', CARRY_AUX_DEC(1), RESULT_AUX_DEC(2), CARRY_AUX_DEC(2));
  bit3 : fullAdder port map (A(3), '1', CARRY_AUX_DEC(2), RESULT_AUX_DEC(3), CARRY_AUX_DEC(3));
  
  -- soma b
  bit0_dec : fullAdder port map (RESULT_AUX_DEC(0), b(0), '0', RESULT_AUX(0), CARRY_AUX(0)); 
  bit1_dec : fullAdder port map (RESULT_AUX_DEC(1), b(1), CARRY_AUX(0), RESULT_AUX(1), CARRY_AUX(1));
  bit2_dec : fullAdder port map (RESULT_AUX_DEC(2), b(2), CARRY_AUX(1), RESULT_AUX(2), CARRY_AUX(2));
  bit3_dec : fullAdder port map (RESULT_AUX_DEC(3), b(3), CARRY_AUX(2), RESULT_AUX(3), CARRY_AUX(3));

  result <= RESULT_AUX;
  carry <= CARRY_AUX;
END hardware;