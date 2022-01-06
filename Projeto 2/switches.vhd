LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
USE ieee.std_logic_unsigned.ALL;

ENTITY switches IS PORT (
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
END switches;

ARCHITECTURE hardware OF switches IS
	SIGNAL output_rl : INTEGER RANGE 0 TO 5 := remaining_lives;
	SIGNAL current_number : INTEGER RANGE 0 TO 9;
	SIGNAL discovered : STD_LOGIC := '0';
	SIGNAL last_SW : STD_LOGIC_VECTOR(9 DOWNTO 0);
	SIGNAL new_discovered_vector : STD_LOGIC_VECTOR(3 DOWNTO 0) := "0000";
	SIGNAL out_dig : INTEGER RANGE 0 TO 4;
BEGIN
	PROCESS (clock,secret,current_number,discovered,last_SW,SW,digit)
		BEGIN
		CASE digit IS 
			WHEN 4 => current_number <= 9;
			WHEN 3 => current_number <= (secret/1000 MOD 10);
			WHEN 2 => current_number <= (secret/100 MOD 10);
			WHEN 1 => current_number <= (secret/10 MOD 10);
			WHEN 0 => current_number <= (secret MOD 10);
		 END CASE;
	 
		IF (remaining_lives > 0) THEN
			IF rising_edge(clock) THEN
				last_SW <= SW;
				IF ((last_SW = "000000000") AND (SW /= "000000000")) THEN  
				discovered <= '0';
				  
				IF (SW = 2 ** 0) THEN
					IF (current_number = 0) THEN
						discovered <= '1';
						out_dig <= digit + 1;
					ELSE
						output_rl <= remaining_lives - 1;
					END IF;
				END IF;

				IF (SW = 2 ** 1) THEN
					IF (current_number = 1) THEN
					  discovered <= '1';
						out_dig <= digit + 1;
					ELSE
					  output_rl <= remaining_lives - 1;
					END IF;
				 END IF;

				 IF (SW = 2 ** 2) THEN
					IF (current_number = 2) THEN
					  discovered <= '1';
						out_dig <= digit + 1;
					ELSE
					  output_rl <= remaining_lives - 1;
					END IF;
				 END IF;

				 IF (SW = 2 ** 3) THEN
					IF (current_number = 3) THEN
					  discovered <= '1';
						out_dig <= digit + 1;
					ELSE
					  output_rl <= remaining_lives - 1;
					END IF;
				 END IF;

				 IF (SW = 2 ** 4) THEN
					IF (current_number = 4) THEN
					  discovered <= '1';
						out_dig <= digit + 1;
					ELSE
					  output_rl <= remaining_lives - 1;
					END IF;
				 END IF;

				 IF (SW = 2 ** 5) THEN
					IF (current_number = 5) THEN
					  discovered <= '1';
						out_dig <= digit + 1;
					ELSE
					  output_rl <= remaining_lives - 1;
					END IF;
				 END IF;

				 IF (SW = 2 ** 6) THEN
					IF (current_number = 6) THEN
					  discovered <= '1';
						out_dig <= digit + 1;
					ELSE
					  output_rl <= remaining_lives - 1;
					END IF;
				 END IF;

				 IF (SW = 2 ** 7) THEN
					IF (current_number = 7) THEN
					  discovered <= '1';
						out_dig <= digit + 1;
					ELSE
					  output_rl <= remaining_lives - 1;
					END IF;
				 END IF;

				 IF (SW = 2 ** 8) THEN
					IF (current_number = 8) THEN
					  discovered <= '1';
						out_dig <= digit + 1;
					ELSE
					  output_rl <= remaining_lives - 1;
					END IF;
				 END IF;

				 IF (SW = 2 ** 9) THEN
					IF (current_number = 9) THEN
					  discovered <= '1';
						out_dig <= digit + 1;
					ELSE
					  output_rl <= remaining_lives - 1;
					END IF;
				 END IF;
				 out_dig <= digit + 1;
				END IF;
				IF (discovered = '1') THEN
					CASE digit IS
						WHEN 0 => new_discovered_vector <= new_discovered_vector or "0000";
						WHEN 1 => new_discovered_vector <= new_discovered_vector or "0001";
						WHEN 2 => new_discovered_vector <= new_discovered_vector or "0010";
						WHEN 3 => new_discovered_vector <= new_discovered_vector or "0100";
						WHEN 4 => new_discovered_vector <= new_discovered_vector or "1000";
					END CASE;
				END IF;
			END IF;
		 END IF;
  END PROCESS;
	--output_remaining_lives <= output_rl;
	output_discovered_vector <= new_discovered_vector or discovered_vector;
	out_digit <= out_dig;

END hardware;