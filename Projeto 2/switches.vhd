LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
USE ieee.std_logic_unsigned.ALL;

ENTITY switches IS PORT (
	clock : IN STD_LOGIC;
	--secret : IN INTEGER RANGE 0 TO 9999;
	--remaining_lives : IN INTEGER RANGE 0 TO 5;
	SW : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
	discovered_vector: IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	-- output_remaining_lives : OUT INTEGER RANGE 0 TO 5;
	output_disc : OUT STD_LOGIC;
	output_discovered_vector: OUT STD_LOGIC_VECTOR (3 DOWNTO 0)
);
END switches;

ARCHITECTURE hardware OF switches IS
	SIGNAL secret : INTEGER RANGE 0 TO 9999 := 1234;
	SIGNAL remaining_lives : INTEGER RANGE 0 TO 5 := 5;
	
	SIGNAL output_rl : INTEGER RANGE 0 TO 5 := remaining_lives;
	SIGNAL current_number : INTEGER RANGE 0 TO 9;
	SIGNAL discovered : STD_LOGIC := '0';
	SIGNAL last_SW : STD_LOGIC_VECTOR(9 DOWNTO 0);
	SIGNAL new_discovered_vector : STD_LOGIC_VECTOR(3 DOWNTO 0) := "0000";
	SIGNAL i : INTEGER RANGE 0 TO 3 := 0;

BEGIN
  PROCESS (clock,secret,current_number,discovered,last_SW,SW,i)
  BEGIN
	CASE i IS 
		WHEN 3 => current_number <= (secret/1000 MOD 10);
		WHEN 2 => current_number <= (secret/100 MOD 10);
		WHEN 1 => current_number <= (secret/10 MOD 10);
		WHEN 0 => current_number <= (secret MOD 10);
	 END CASE;
	 
	 IF (remaining_lives > 0) THEN
      IF rising_edge(clock) THEN
			last_SW <= SW;
			IF ((last_SW = "000000000") AND (SW /= "000000000")) THEN  
			  
			  IF (SW = 2 ** 0) THEN
            IF (current_number = 0) THEN
              discovered <= '1';
            ELSE
              output_rl <= remaining_lives - 1;
            END IF;
          END IF;

          IF (SW = 2 ** 1) THEN
            IF (current_number = 1) THEN
              discovered <= '1';
            ELSE
              output_rl <= remaining_lives - 1;
            END IF;
          END IF;

          IF (SW = 2 ** 2) THEN
            IF (current_number = 2) THEN
              discovered <= '1';
            ELSE
              output_rl <= remaining_lives - 1;
            END IF;
          END IF;

          IF (SW = 2 ** 3) THEN
            IF (current_number = 3) THEN
              discovered <= '1';
            ELSE
              output_rl <= remaining_lives - 1;
            END IF;
          END IF;

          IF (SW = 2 ** 4) THEN
            IF (current_number = 4) THEN
              discovered <= '1';
            ELSE
              output_rl <= remaining_lives - 1;
            END IF;
          END IF;

          IF (SW = 2 ** 5) THEN
            IF (current_number = 5) THEN
              discovered <= '1';
            ELSE
              output_rl <= remaining_lives - 1;
            END IF;
          END IF;

          IF (SW = 2 ** 6) THEN
            IF (current_number = 6) THEN
              discovered <= '1';
            ELSE
              output_rl <= remaining_lives - 1;
            END IF;
          END IF;

          IF (SW = 2 ** 7) THEN
            IF (current_number = 7) THEN
              discovered <= '1';
            ELSE
              output_rl <= remaining_lives - 1;
            END IF;
          END IF;

          IF (SW = 2 ** 8) THEN
            IF (current_number = 8) THEN
              discovered <= '1';
            ELSE
              output_rl <= remaining_lives - 1;
            END IF;
          END IF;

          IF (SW = 2 ** 9) THEN
            IF (current_number = 9) THEN
              discovered <= '1';
            ELSE
              output_rl <= remaining_lives - 1;
            END IF;
          END IF;
			 
			END IF;
			IF (discovered = '1') THEN
				cASE i IS
					WHEN 0 => new_discovered_vector <= "0001";
					WHEN 1 => new_discovered_vector <= "0010";
					WHEN 2 => new_discovered_vector <= "0100";
					WHEN 3 => new_discovered_vector <="1000";
				END CASE;
			END IF;
		END IF;
    END IF;
  END PROCESS;
	output_disc <= discovered;
	--output_remaining_lives <= output_rl;
	output_discovered_vector <= new_discovered_vector or discovered_vector;

END hardware;