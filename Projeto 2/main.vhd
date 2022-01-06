LIBRARY ieee;

USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_unsigned.ALL;
USE ieee.numeric_std.ALL;

ENTITY main IS PORT (
  CLOCK_50 : IN STD_LOGIC;
  HEX0, HEX1, HEX2, HEX3, HEX4 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
  LEDR : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
  SW : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
  OUT_DISC : OUT STD_LOGIC_VECTOR (3 DOWNTO 0)
);
END main;

ARCHITECTURE hardware OF main IS

  CONSTANT secret : INTEGER RANGE 0 TO 9999 := 1234; -- segredo da forca
  SIGNAL remaining_lives : INTEGER RANGE 0 TO 5 := 5; -- vidas restantes
  SIGNAL discovered_vector: STD_LOGIC_VECTOR (3 DOWNTO 0); -- vetor armazenando quais digitos foram descobertos
  SIGNAL digit : INTEGER RANGE 0 TO 4 := 0; -- indicxe do digito analisado
  
  COMPONENT display IS PORT ( -- displays dos 4 dígitos
	secret_password : IN INTEGER RANGE 0 TO 9999;
	discovered_vector: IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	HEX1, HEX2, HEX3, HEX4: OUT STD_LOGIC_VECTOR(6 DOWNTO 0)
    );
  END COMPONENT;

  COMPONENT switches IS PORT ( -- chaves seletoras da jogada
		clock : IN STD_LOGIC;
		secret : IN INTEGER RANGE 0 TO 9999;
		remaining_lives : IN INTEGER RANGE 0 TO 5;
		SW : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
		discovered_vector: IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		digit : IN INTEGER RANGE 0 TO 4;
		output_remaining_lives : OUT INTEGER RANGE 0 TO 5;
		output_discovered_vector : OUT STD_LOGIC_VECTOR (3 DOWNTO 0);
		out_digit : OUT INTEGER RANGE 0 TO 4
    );
  END COMPONENT;

  COMPONENT lives IS PORT ( -- vidas restantes
    remaining_lives : IN INTEGER RANGE 0 TO 5 := 5;
    LEDR : OUT STD_LOGIC_VECTOR(4 DOWNTO 0)
    );
  END COMPONENT;

  COMPONENT display_result IS PORT ( -- display com o resultado da partida
	discovered_vector: IN STD_LOGIC_VECTOR (3 DOWNTO 0);
	remaining_lives : IN INTEGER RANGE 0 TO 5;
	HEX0 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0)
    );
  END COMPONENT;

BEGIN
	 
  disps : display PORT MAP(secret, discovered_vector, HEX1, HEX2, HEX3, HEX4);
  sws : switches PORT MAP(CLOCK_50, secret, remaining_lives, SW, discovered_vector, digit,remaining_lives, discovered_vector, digit);
  lvs : lives PORT MAP(remaining_lives, LEDR);
  disp_result : display_result PORT MAP(discovered_vector, remaining_lives, HEX0);
  OUT_DISC <= discovered_vector;
END hardware;