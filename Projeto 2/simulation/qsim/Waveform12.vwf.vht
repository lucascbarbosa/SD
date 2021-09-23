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
-- Generated on "09/23/2021 15:55:57"
                                                             
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
SIGNAL in_idx : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL in_test : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL out_test_vector : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL out_tmp : STD_LOGIC_VECTOR(1 DOWNTO 0);
COMPONENT test
	PORT (
	in_idx : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	in_test : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	out_test_vector : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	out_tmp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : test
	PORT MAP (
-- list connections between master ports and signals
	in_idx => in_idx,
	in_test => in_test,
	out_test_vector => out_test_vector,
	out_tmp => out_tmp
	);
-- in_idx[1]
t_prcs_in_idx_1: PROCESS
BEGIN
	in_idx(1) <= '0';
WAIT;
END PROCESS t_prcs_in_idx_1;
-- in_idx[0]
t_prcs_in_idx_0: PROCESS
BEGIN
	in_idx(0) <= '0';
WAIT;
END PROCESS t_prcs_in_idx_0;
-- in_test[3]
t_prcs_in_test_3: PROCESS
BEGIN
	in_test(3) <= '0';
WAIT;
END PROCESS t_prcs_in_test_3;
-- in_test[2]
t_prcs_in_test_2: PROCESS
BEGIN
	in_test(2) <= '0';
WAIT;
END PROCESS t_prcs_in_test_2;
-- in_test[1]
t_prcs_in_test_1: PROCESS
BEGIN
	in_test(1) <= '0';
WAIT;
END PROCESS t_prcs_in_test_1;
-- in_test[0]
t_prcs_in_test_0: PROCESS
BEGIN
	in_test(0) <= '0';
WAIT;
END PROCESS t_prcs_in_test_0;
END test_arch;
