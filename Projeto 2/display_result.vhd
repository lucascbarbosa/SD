LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
USE ieee.std_logic_unsigned.ALL;

ENTITY display_result IS PORT (
  discovered_vector: IN STD_LOGIC_VECTOR (3 DOWNTO 0);
  remaining_lives : IN INTEGER RANGE 0 TO 5;
  HEX0 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0)
);
END display_result;

ARCHITECTURE arch_dec OF display_result IS

BEGIN
  PROCESS (remaining_lives)
  BEGIN

    IF (remaining_lives = 0) THEN
      HEX0 <= "0001100";
    ELSIF (discovered_vector = "1111") THEN
      HEX0 <= "0000010";
    ELSE
      HEX0 <= "1111111";
    END IF;

  END PROCESS;
END arch_dec;