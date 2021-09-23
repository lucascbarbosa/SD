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
-- Generated on "09/23/2021 16:12:21"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          test
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY test_vhd_vec_tst IS
END test_vhd_vec_tst;
ARCHITECTURE test_arch OF test_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL discovered_vector : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL idx : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL out_discovered_vector : STD_LOGIC_VECTOR(3 DOWNTO 0);
COMPONENT test
	PORT (
	discovered_vector : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	idx : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	out_discovered_vector : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : test
	PORT MAP (
-- list connections between master ports and signals
	discovered_vector => discovered_vector,
	idx => idx,
	out_discovered_vector => out_discovered_vector
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
-- idx[1]
t_prcs_idx_1: PROCESS
BEGIN
	idx(1) <= '0';
WAIT;
END PROCESS t_prcs_idx_1;
-- idx[0]
t_prcs_idx_0: PROCESS
BEGIN
	idx(0) <= '0';
WAIT;
END PROCESS t_prcs_idx_0;
END test_arch;
