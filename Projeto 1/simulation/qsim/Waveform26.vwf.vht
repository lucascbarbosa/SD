-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "08/07/2021 21:24:58"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          clock
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY clock_vhd_vec_tst IS
END clock_vhd_vec_tst;
ARCHITECTURE clock_arch OF clock_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clock_1 : STD_LOGIC;
SIGNAL numberA : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL numberB : STD_LOGIC_VECTOR(3 DOWNTO 0);
COMPONENT clock
	PORT (
	clock_1 : IN STD_LOGIC;
	numberA : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	numberB : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : clock
	PORT MAP (
-- list connections between master ports and signals
	clock_1 => clock_1,
	numberA => numberA,
	numberB => numberB
	);

-- clock_1
t_prcs_clock_1: PROCESS
BEGIN
LOOP
	clock_1 <= '0';
	WAIT FOR 50000 ps;
	clock_1 <= '1';
	WAIT FOR 50000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clock_1;
END clock_arch;
