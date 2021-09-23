LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
USE ieee.std_logic_unsigned.ALL;

ENTITY display IS PORT (
  secret_password : IN INTEGER RANGE 0 TO 9999;
  discovered_vector: IN STD_LOGIC_VECTOR(3 DOWNTO 0);
  HEX1, HEX2, HEX3, HEX4: OUT STD_LOGIC_VECTOR(6 DOWNTO 0)
);
END display;

ARCHITECTURE arch_dec OF display IS
  COMPONENT disp7seg IS PORT (
	 discovered: IN STD_LOGIC;
    dec_digit : IN INTEGER RANGE 0 TO 9;
    segment_7dis : OUT STD_LOGIC_VECTOR(6 DOWNTO 0)
    );
  END COMPONENT;

BEGIN
  disp1 : disp7seg port map(discovered_vector(3), secret_password/1 MOD 10, HEX1);
  disp2 : disp7seg port map(discovered_vector(2), secret_password/10 MOD 10, HEX2);
  disp3 : disp7seg port map(discovered_vector(1), secret_password/100 MOD 10, HEX3);
  disp4 : disp7seg port map(discovered_vector(0), secret_password/1000 MOD 10, HEX4);
END arch_dec;