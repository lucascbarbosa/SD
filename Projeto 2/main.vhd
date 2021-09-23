LIBRARY ieee;

USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_unsigned.ALL;
USE ieee.numeric_std.ALL;

ENTITY main IS PORT (
  CLOCK_50 : IN STD_LOGIC;
  HEX0, HEX1, HEX2, HEX3, HEX4 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
  LEDR : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
  SW : IN STD_LOGIC_VECTOR(9 DOWNTO 0)
);
END main;

ARCHITECTURE hardware OF main IS

  CONSTANT secret : INTEGER := 1234; -- segredo da forca
  SIGNAL current_step : INTEGER RANGE 0 TO 4 := 0; -- contabiliza qual dígito está sendo analisado 
  SIGNAL current_number : INTEGER RANGE 0 TO 9; -- valor do dígito analisado
  SIGNAL remaining_lives : INTEGER RANGE 0 TO 5 := 5; -- vidas restantes
  SIGNAL discovered_vector: STD_LOGIC_VECTOR (3 DOWNTO 0); -- vetor armazenando quais digitos foram descobertos

  COMPONENT display IS PORT ( -- displays dos 4 dígitos
	secret_password : IN INTEGER RANGE 0 TO 9999;
	discovered_vector: IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	HEX1, HEX2, HEX3, HEX4: OUT STD_LOGIC_VECTOR(6 DOWNTO 0)
    );
  END COMPONENT;

  COMPONENT switches IS PORT ( -- chaves seletoras da jogada
		clock : IN STD_LOGIC;
		current_number : IN INTEGER RANGE 0 TO 9;
		current_step : IN INTEGER RANGE 0 TO 4;
		remaining_lives : IN INTEGER RANGE 0 TO 5;
		SW : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
		discovered_vector: IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		output_remaining_lives : OUT INTEGER RANGE 0 TO 5;
		output_current_step : OUT INTEGER RANGE 0 TO 4;
		output_discovered_vector: OUT STD_LOGIC_VECTOR (3 DOWNTO 0)
    );
  END COMPONENT;

  COMPONENT lives IS PORT (
    remaining_lives : IN INTEGER RANGE 0 TO 3 := 3;
    LEDR : OUT STD_LOGIC_VECTOR(2 DOWNTO 0)
    );
  END COMPONENT;

  COMPONENT display_result IS PORT (
	discovered_vector: IN STD_LOGIC_VECTOR (3 DOWNTO 0);
	remaining_lives : IN INTEGER RANGE 0 TO 5;
	HEX0 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0)
    );
  END COMPONENT;

BEGIN

  WITH current_step SELECT current_number <=
    (secret/1000 MOD 10) WHEN 1,
    (secret/100 MOD 10) WHEN 2,
    (secret/10 MOD 10) WHEN 3,
    (secret MOD 10) WHEN 4,
    0 WHEN OTHERS;

  disps : display PORT MAP(secret, discovered_vector, HEX1, HEX2, HEX3, HEX4);
  sws : switches PORT MAP(CLOCK_50, current_number, current_step, remaining_lives, SW, discovered_vector, remaining_lives, current_step, discovered_vector);
  lvs : lives PORT MAP(remaining_lives, LEDR);
  disp_result : display_result PORT MAP(discovered_vector, remaining_lives, HEX0);

END hardware;