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
-- Generated on "09/24/2021 00:24:20"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          switches
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY switches_vhd_vec_tst IS
END switches_vhd_vec_tst;
ARCHITECTURE switches_arch OF switches_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clock : STD_LOGIC;
SIGNAL digit : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL discovered_vector : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL out_digit : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL output_disc : STD_LOGIC;
SIGNAL output_discovered_vector : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL output_remaining_lives : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL remaining_lives : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL secret : STD_LOGIC_VECTOR(13 DOWNTO 0);
SIGNAL SW : STD_LOGIC_VECTOR(9 DOWNTO 0);
COMPONENT switches
	PORT (
	clock : IN STD_LOGIC;
	digit : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	discovered_vector : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	out_digit : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
	output_disc : OUT STD_LOGIC;
	output_discovered_vector : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	output_remaining_lives : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
	remaining_lives : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	secret : IN STD_LOGIC_VECTOR(13 DOWNTO 0);
	SW : IN STD_LOGIC_VECTOR(9 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : switches
	PORT MAP (
-- list connections between master ports and signals
	clock => clock,
	digit => digit,
	discovered_vector => discovered_vector,
	out_digit => out_digit,
	output_disc => output_disc,
	output_discovered_vector => output_discovered_vector,
	output_remaining_lives => output_remaining_lives,
	remaining_lives => remaining_lives,
	secret => secret,
	SW => SW
	);

-- clock
t_prcs_clock: PROCESS
BEGIN
	clock <= '0';
WAIT;
END PROCESS t_prcs_clock;
-- digit[2]
t_prcs_digit_2: PROCESS
BEGIN
	digit(2) <= '0';
WAIT;
END PROCESS t_prcs_digit_2;
-- digit[1]
t_prcs_digit_1: PROCESS
BEGIN
	digit(1) <= '0';
WAIT;
END PROCESS t_prcs_digit_1;
-- digit[0]
t_prcs_digit_0: PROCESS
BEGIN
	digit(0) <= '0';
WAIT;
END PROCESS t_prcs_digit_0;
-- discovered_vector[3]
t_prcs_discovered_vector_3: PROCESS
BEGIN
	discovered_vector(3) <= '0';
WAIT;
END PROCESS t_prcs_discovered_vector_3;
-- discovered_vector[2]
t_prcs_discovered_vector_2: PROCESS
BEGIN
	discovered_vector(2) <= '0';
WAIT;
END PROCESS t_prcs_discovered_vector_2;
-- discovered_vector[1]
t_prcs_discovered_vector_1: PROCESS
BEGIN
	discovered_vector(1) <= '0';
WAIT;
END PROCESS t_prcs_discovered_vector_1;
-- discovered_vector[0]
t_prcs_discovered_vector_0: PROCESS
BEGIN
	discovered_vector(0) <= '0';
WAIT;
END PROCESS t_prcs_discovered_vector_0;
-- remaining_lives[2]
t_prcs_remaining_lives_2: PROCESS
BEGIN
	remaining_lives(2) <= '0';
WAIT;
END PROCESS t_prcs_remaining_lives_2;
-- remaining_lives[1]
t_prcs_remaining_lives_1: PROCESS
BEGIN
	remaining_lives(1) <= '0';
WAIT;
END PROCESS t_prcs_remaining_lives_1;
-- remaining_lives[0]
t_prcs_remaining_lives_0: PROCESS
BEGIN
	remaining_lives(0) <= '0';
WAIT;
END PROCESS t_prcs_remaining_lives_0;
-- secret[13]
t_prcs_secret_13: PROCESS
BEGIN
	secret(13) <= '0';
WAIT;
END PROCESS t_prcs_secret_13;
-- secret[12]
t_prcs_secret_12: PROCESS
BEGIN
	secret(12) <= '0';
WAIT;
END PROCESS t_prcs_secret_12;
-- secret[11]
t_prcs_secret_11: PROCESS
BEGIN
	secret(11) <= '0';
WAIT;
END PROCESS t_prcs_secret_11;
-- secret[10]
t_prcs_secret_10: PROCESS
BEGIN
	secret(10) <= '0';
WAIT;
END PROCESS t_prcs_secret_10;
-- secret[9]
t_prcs_secret_9: PROCESS
BEGIN
	secret(9) <= '0';
WAIT;
END PROCESS t_prcs_secret_9;
-- secret[8]
t_prcs_secret_8: PROCESS
BEGIN
	secret(8) <= '0';
WAIT;
END PROCESS t_prcs_secret_8;
-- secret[7]
t_prcs_secret_7: PROCESS
BEGIN
	secret(7) <= '0';
WAIT;
END PROCESS t_prcs_secret_7;
-- secret[6]
t_prcs_secret_6: PROCESS
BEGIN
	secret(6) <= '0';
WAIT;
END PROCESS t_prcs_secret_6;
-- secret[5]
t_prcs_secret_5: PROCESS
BEGIN
	secret(5) <= '0';
WAIT;
END PROCESS t_prcs_secret_5;
-- secret[4]
t_prcs_secret_4: PROCESS
BEGIN
	secret(4) <= '0';
WAIT;
END PROCESS t_prcs_secret_4;
-- secret[3]
t_prcs_secret_3: PROCESS
BEGIN
	secret(3) <= '0';
WAIT;
END PROCESS t_prcs_secret_3;
-- secret[2]
t_prcs_secret_2: PROCESS
BEGIN
	secret(2) <= '0';
WAIT;
END PROCESS t_prcs_secret_2;
-- secret[1]
t_prcs_secret_1: PROCESS
BEGIN
	secret(1) <= '0';
WAIT;
END PROCESS t_prcs_secret_1;
-- secret[0]
t_prcs_secret_0: PROCESS
BEGIN
	secret(0) <= '0';
WAIT;
END PROCESS t_prcs_secret_0;
-- SW[9]
t_prcs_SW_9: PROCESS
BEGIN
	SW(9) <= '0';
WAIT;
END PROCESS t_prcs_SW_9;
-- SW[8]
t_prcs_SW_8: PROCESS
BEGIN
	SW(8) <= '0';
WAIT;
END PROCESS t_prcs_SW_8;
-- SW[7]
t_prcs_SW_7: PROCESS
BEGIN
	SW(7) <= '0';
WAIT;
END PROCESS t_prcs_SW_7;
-- SW[6]
t_prcs_SW_6: PROCESS
BEGIN
	SW(6) <= '0';
WAIT;
END PROCESS t_prcs_SW_6;
-- SW[5]
t_prcs_SW_5: PROCESS
BEGIN
	SW(5) <= '0';
WAIT;
END PROCESS t_prcs_SW_5;
-- SW[4]
t_prcs_SW_4: PROCESS
BEGIN
	SW(4) <= '0';
WAIT;
END PROCESS t_prcs_SW_4;
-- SW[3]
t_prcs_SW_3: PROCESS
BEGIN
	SW(3) <= '0';
WAIT;
END PROCESS t_prcs_SW_3;
-- SW[2]
t_prcs_SW_2: PROCESS
BEGIN
	SW(2) <= '0';
WAIT;
END PROCESS t_prcs_SW_2;
-- SW[1]
t_prcs_SW_1: PROCESS
BEGIN
	SW(1) <= '0';
WAIT;
END PROCESS t_prcs_SW_1;
-- SW[0]
t_prcs_SW_0: PROCESS
BEGIN
	SW(0) <= '0';
WAIT;
END PROCESS t_prcs_SW_0;
END switches_arch;
