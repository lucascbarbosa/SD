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
-- Generated on "08/07/2021 17:54:10"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          decr4bit
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY decr4bit_vhd_vec_tst IS
END decr4bit_vhd_vec_tst;
ARCHITECTURE decr4bit_arch OF decr4bit_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL A : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL B : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL carry : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL result : STD_LOGIC_VECTOR(3 DOWNTO 0);
COMPONENT decr4bit
	PORT (
	A : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	B : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	carry : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	result : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : decr4bit
	PORT MAP (
-- list connections between master ports and signals
	A => A,
	B => B,
	carry => carry,
	result => result
	);
-- A[3]
t_prcs_A_3: PROCESS
BEGIN
	A(3) <= '0';
WAIT;
END PROCESS t_prcs_A_3;
-- A[2]
t_prcs_A_2: PROCESS
BEGIN
	A(2) <= '0';
WAIT;
END PROCESS t_prcs_A_2;
-- A[1]
t_prcs_A_1: PROCESS
BEGIN
	A(1) <= '0';
WAIT;
END PROCESS t_prcs_A_1;
-- A[0]
t_prcs_A_0: PROCESS
BEGIN
	A(0) <= '0';
	WAIT FOR 20000 ps;
	A(0) <= '1';
	WAIT FOR 80000 ps;
	A(0) <= '0';
WAIT;
END PROCESS t_prcs_A_0;
-- B[3]
t_prcs_B_3: PROCESS
BEGIN
	B(3) <= '0';
WAIT;
END PROCESS t_prcs_B_3;
-- B[2]
t_prcs_B_2: PROCESS
BEGIN
	B(2) <= '0';
WAIT;
END PROCESS t_prcs_B_2;
-- B[1]
t_prcs_B_1: PROCESS
BEGIN
	B(1) <= '0';
WAIT;
END PROCESS t_prcs_B_1;
-- B[0]
t_prcs_B_0: PROCESS
BEGIN
	B(0) <= '0';
	WAIT FOR 20000 ps;
	B(0) <= '1';
	WAIT FOR 80000 ps;
	B(0) <= '0';
WAIT;
END PROCESS t_prcs_B_0;
END decr4bit_arch;
