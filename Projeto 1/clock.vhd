LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY clock IS PORT (
    clock_1 : IN std_logic; -- Clock de 1MHz
    numberA : OUT std_logic_vector(3 DOWNTO 0);
    numberB : OUT std_logic_vector(3 DOWNTO 0)
);
END clock;

ARCHITECTURE behav OF clock IS

signal count :  integer range 0 to 99999999 := 0;
signal vector_aux : unsigned (7 DOWNTO 0);

BEGIN

numberA(0) <= std_logic(vector_aux(4));
numberA(1) <= std_logic(vector_aux(5));
numberA(2) <= std_logic(vector_aux(6));
numberA(3) <= std_logic(vector_aux(7));

numberB(0) <= std_logic(vector_aux(0));
numberB(1) <= std_logic(vector_aux(1));
numberB(2) <= std_logic(vector_aux(2));
numberB(3) <= std_logic(vector_aux(3));

PROCESS (clock_1)
BEGIN
    IF rising_edge(clock_1) THEN
        IF count = 2 THEN  -- Após 2.000.000  de subidas do sinal do clock, 2 segundos foram passados.
            count <= 0;
            vector_aux <= vector_aux + 1; -- A cada 2 segundos, soma um no vetor auxiliar
        ELSE
            count <= count + 1;
        END IF;
    END IF;
END PROCESS;
END behav;