LIBRARY ieee;

USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_unsigned.ALL;
USE ieee.numeric_std.ALL;

ENTITY main IS PORT (
  clock_1 : IN STD_LOGIC;
  sW : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
  RESULT_ULA : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
  LEDG : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
  LEDR : OUT STD_LOGIC_VECTOR(17 DOWNTO 0)
);
END main;

ARCHITECTURE hardware OF main IS

  SIGNAL RESULT : STD_LOGIC_VECTOR(3 DOWNTO 0); -- Resultado das operações
  SIGNAL A : STD_LOGIC_VECTOR(3 DOWNTO 0); -- Operando A
  SIGNAL B : STD_LOGIC_VECTOR(3 DOWNTO 0); -- Operando B
  SIGNAL selection : STD_LOGIC_VECTOR(2 DOWNTO 0); -- Operação selecionada
  
  SIGNAL sum_result : STD_LOGIC_VECTOR(3 DOWNTO 0); -- Resultado da soma
  SIGNAL sum_carry : STD_LOGIC_VECTOR(3 DOWNTO 0); -- Carry Out do incremento
  
  SIGNAL subtract_result : STD_LOGIC_VECTOR(3 DOWNTO 0); -- Resultado da subtração
  SIGNAL subtract_carry : STD_LOGIC_VECTOR(3 DOWNTO 0); -- Carry Out da subtração
  
  SIGNAL incr_result : STD_LOGIC_VECTOR(3 DOWNTO 0); -- Resultado do incremento
  SIGNAL incr_carry : STD_LOGIC_VECTOR(3 DOWNTO 0); -- Carry Out do incremento
 
  SIGNAL decr_result : STD_LOGIC_VECTOR(3 DOWNTO 0); -- Resultado do decremento
  SIGNAL decr_carry : STD_LOGIC_VECTOR(3 DOWNTO 0); -- Carry Out do decremento
  
  SIGNAL shift_result: STD_LOGIC_VECTOR(3 DOWNTO 0); -- Resultado da troca de sinal
  SIGNAL shift_carry : STD_LOGIC_VECTOR(3 DOWNTO 0); -- Carry Out da troca de sinal
  
  SIGNAL greater_than : STD_LOGIC_VECTOR(3 DOWNTO 0);
  
  SIGNAL equal_to : STD_LOGIC_VECTOR(3 DOWNTO 0);
  
  SIGNAL lesser_than : STD_LOGIC_VECTOR(3 DOWNTO 0);
  
  
  -- Módulo de clock
  COMPONENT clock IS PORT (
    clock_1 : IN STD_LOGIC;
    numberA : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    numberB : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
    );
  END COMPONENT;
  
  -- Módulo que lida com as flags
  COMPONENT flagsHandle IS PORT (
    A : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    B : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    sum_result : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    sum_carry : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    subtract_result : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    subtract_carry : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    selection : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    LEDG : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
    );
  END COMPONENT;

  -- Módulo que lida com os Leds vermelhos
  COMPONENT redLedsHandle IS PORT (
    A : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    B : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    result : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    LEDR : OUT STD_LOGIC_VECTOR(17 DOWNTO 0)
    );
  END COMPONENT;
  
  -- Módulo Display de 7 segmentos
  COMPONENT disp7seg IS PORT (
    hex_digit : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    segment_7dis : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
    minus : OUT STD_LOGIC_VECTOR(6 DOWNTO 0)
    );
  END COMPONENT;
 
  -- Módulo soma de 4 bits
  COMPONENT sum4bit IS PORT (
    A : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    B : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    result : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    carry : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
    );
  END COMPONENT;

  -- Módulo subtração de 4 bits
  COMPONENT diff4bit IS PORT (
    A : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    B : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    result : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    carry : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
    );
  END COMPONENT;
  
  COMPONENT incr4bit IS PORT (
	 A : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    B : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    result : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    carry : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
    );
  END COMPONENT;
  
  COMPONENT decr4bit IS PORT (
	 A : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    B : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    result : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    carry : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
    );
  END COMPONENT;
  
  COMPONENT shiftSignal IS PORT (
	 A : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    B : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    result : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    carry : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
    );
  END COMPONENT;
  
  COMPONENT greaterThan IS PORT (
	A : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	B : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	result : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
  END COMPONENT;
	
  COMPONENT equalTo IS PORT (
	A : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	B : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	result : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
  END COMPONENT;
  
  COMPONENT lesserThan IS PORT (
	A : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	B : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	result : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
  END COMPONENT;
	
 BEGIN
 selection <= SW(2 DOWNTO 0); -- A operação é selecionada nos 3 primeiros switches
 
 auto_clock : clock PORT MAP(clock_1, A, B);
 
 sum : sum4bit PORT MAP(A, B, sum_result, sum_carry);
 
 diff : diff4bit PORT MAP(A, B, subtract_result, subtract_carry);
 
 incr: incr4bit PORT MAP(A, B, incr_result, incr_carry); 
 
 decr: decr4bit PORT MAP(A, B, decr_result, decr_carry);
 
 shift: shiftSignal PORT MAP(A, B, shift_result, shift_carry);
 
 greater : greaterThan PORT MAP(A, B, greater_than);
 
 equal : equalTo PORT MAP(A, B, equal_to);
 
 lesser: lesserThan PORT MAP(A, B, lesser_than);
 
 flags : flagsHandle PORT MAP(
    A,
    B,
    sum_result,
    sum_carry,
    subtract_result,
    subtract_carry,
    selection,
    LEDG
  );
  
  
  redLeds : redLedsHandle PORT MAP(A, B, RESULT, LEDR); -- Leds Vermelhos
 
  WITH selection SELECT RESULT <=
    sum_result WHEN "000",
    subtract_result WHEN "001",
	 incr_result WHEN "010",
	 decr_result WHEN "011",
	 shift_result WHEN "100",
	 greater_than WHEN "101",
	 equal_to WHEN "110",
	 lesser_than WHEN "111";

  RESULT_ULA <= RESULT;
 
 END hardware;