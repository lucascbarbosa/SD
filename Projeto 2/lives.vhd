LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
USE ieee.std_logic_unsigned.ALL;

ENTITY lives IS PORT (
  remaining_lives : IN INTEGER RANGE 0 TO 5 := 5;
  LEDR : OUT STD_LOGIC_VECTOR(4 DOWNTO 0)
);
END lives;

ARCHITECTURE hardware OF lives IS
BEGIN
  PROCESS (remaining_lives)
  BEGIN

    CASE remaining_lives IS
		WHEN 5 => LEDR <= "11111";
		WHEN 4 => LEDR <= "01111";
		WHEN 3 => LEDR <= "00111";
      WHEN 2 => LEDR <= "00011";
      WHEN 1 => LEDR <= "00001";
      WHEN 0 => LEDR <= "00000";
    END CASE;

  END PROCESS;
END hardware;