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
-- Generated on "09/23/2021 17:22:18"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          display
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY display_vhd_vec_tst IS
END display_vhd_vec_tst;
ARCHITECTURE display_arch OF display_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL discovered_vector : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL HEX1 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL HEX2 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL HEX3 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL HEX4 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL secret_password : STD_LOGIC_VECTOR(13 DOWNTO 0);
COMPONENT display
	PORT (
	discovered_vector : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	HEX1 : BUFFER STD_LOGIC_VECTOR(6 DOWNTO 0);
	HEX2 : BUFFER STD_LOGIC_VECTOR(6 DOWNTO 0);
	HEX3 : BUFFER STD_LOGIC_VECTOR(6 DOWNTO 0);
	HEX4 : BUFFER STD_LOGIC_VECTOR(6 DOWNTO 0);
	secret_password : IN STD_LOGIC_VECTOR(13 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : display
	PORT MAP (
-- list connections between master ports and signals
	discovered_vector => discovered_vector,
	HEX1 => HEX1,
	HEX2 => HEX2,
	HEX3 => HEX3,
	HEX4 => HEX4,
	secret_password => secret_password
	);
-- discovered_vector[3]
t_prcs_discovered_vector_3: PROCESS
BEGIN
	discovered_vector(3) <= '1';
WAIT;
END PROCESS t_prcs_discovered_vector_3;
-- discovered_vector[2]
t_prcs_discovered_vector_2: PROCESS
BEGIN
	discovered_vector(2) <= '1';
WAIT;
END PROCESS t_prcs_discovered_vector_2;
-- discovered_vector[1]
t_prcs_discovered_vector_1: PROCESS
BEGIN
	discovered_vector(1) <= '1';
WAIT;
END PROCESS t_prcs_discovered_vector_1;
-- discovered_vector[0]
t_prcs_discovered_vector_0: PROCESS
BEGIN
	discovered_vector(0) <= '1';
WAIT;
END PROCESS t_prcs_discovered_vector_0;
-- secret_password[13]
t_prcs_secret_password_13: PROCESS
BEGIN
	secret_password(13) <= '0';
WAIT;
END PROCESS t_prcs_secret_password_13;
-- secret_password[12]
t_prcs_secret_password_12: PROCESS
BEGIN
	secret_password(12) <= '0';
WAIT;
END PROCESS t_prcs_secret_password_12;
-- secret_password[11]
t_prcs_secret_password_11: PROCESS
BEGIN
	secret_password(11) <= '0';
WAIT;
END PROCESS t_prcs_secret_password_11;
-- secret_password[10]
t_prcs_secret_password_10: PROCESS
BEGIN
	secret_password(10) <= '1';
WAIT;
END PROCESS t_prcs_secret_password_10;
-- secret_password[9]
t_prcs_secret_password_9: PROCESS
BEGIN
	secret_password(9) <= '0';
WAIT;
END PROCESS t_prcs_secret_password_9;
-- secret_password[8]
t_prcs_secret_password_8: PROCESS
BEGIN
	secret_password(8) <= '0';
WAIT;
END PROCESS t_prcs_secret_password_8;
-- secret_password[7]
t_prcs_secret_password_7: PROCESS
BEGIN
	secret_password(7) <= '1';
WAIT;
END PROCESS t_prcs_secret_password_7;
-- secret_password[6]
t_prcs_secret_password_6: PROCESS
BEGIN
	secret_password(6) <= '1';
WAIT;
END PROCESS t_prcs_secret_password_6;
-- secret_password[5]
t_prcs_secret_password_5: PROCESS
BEGIN
	secret_password(5) <= '0';
WAIT;
END PROCESS t_prcs_secret_password_5;
-- secret_password[4]
t_prcs_secret_password_4: PROCESS
BEGIN
	secret_password(4) <= '1';
WAIT;
END PROCESS t_prcs_secret_password_4;
-- secret_password[3]
t_prcs_secret_password_3: PROCESS
BEGIN
	secret_password(3) <= '0';
WAIT;
END PROCESS t_prcs_secret_password_3;
-- secret_password[2]
t_prcs_secret_password_2: PROCESS
BEGIN
	secret_password(2) <= '0';
WAIT;
END PROCESS t_prcs_secret_password_2;
-- secret_password[1]
t_prcs_secret_password_1: PROCESS
BEGIN
	secret_password(1) <= '1';
WAIT;
END PROCESS t_prcs_secret_password_1;
-- secret_password[0]
t_prcs_secret_password_0: PROCESS
BEGIN
	secret_password(0) <= '0';
WAIT;
END PROCESS t_prcs_secret_password_0;
END display_arch;
