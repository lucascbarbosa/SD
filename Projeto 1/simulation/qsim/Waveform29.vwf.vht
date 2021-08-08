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
-- Generated on "08/07/2021 21:37:04"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          main
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY main_vhd_vec_tst IS
END main_vhd_vec_tst;
ARCHITECTURE main_arch OF main_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clock_1 : STD_LOGIC;
SIGNAL RESULT_ULA : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL sW : STD_LOGIC_VECTOR(2 DOWNTO 0);
COMPONENT main
	PORT (
	clock_1 : IN STD_LOGIC;
	RESULT_ULA : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	sW : IN STD_LOGIC_VECTOR(2 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : main
	PORT MAP (
-- list connections between master ports and signals
	clock_1 => clock_1,
	RESULT_ULA => RESULT_ULA,
	sW => sW
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
-- sW[2]
t_prcs_sW_2: PROCESS
BEGIN
	sW(2) <= '0';
WAIT;
END PROCESS t_prcs_sW_2;
-- sW[1]
t_prcs_sW_1: PROCESS
BEGIN
	sW(1) <= '0';
WAIT;
END PROCESS t_prcs_sW_1;
-- sW[0]
t_prcs_sW_0: PROCESS
BEGIN
	sW(0) <= '0';
WAIT;
END PROCESS t_prcs_sW_0;
END main_arch;
