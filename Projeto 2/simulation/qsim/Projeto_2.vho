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

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"

-- DATE "09/23/2021 16:24:39"

-- 
-- Device: Altera EP4CE6E22C6 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_101,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
LIBRARY STD;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE STD.STANDARD.ALL;

ENTITY 	switches IS
    PORT (
	clock : IN std_logic;
	current_number : IN STD.STANDARD.integer range 0 TO 9;
	current_step : IN STD.STANDARD.integer range 0 TO 4;
	remaining_lives : IN STD.STANDARD.integer range 0 TO 5;
	SW : IN std_logic_vector(9 DOWNTO 0);
	discovered_vector : IN std_logic_vector(3 DOWNTO 0);
	output_remaining_lives : OUT STD.STANDARD.integer range 0 TO 5;
	output_current_step : OUT STD.STANDARD.integer range 0 TO 4;
	output_discovered_vector : OUT std_logic_vector(3 DOWNTO 0)
	);
END switches;

-- Design Ports Information
-- output_remaining_lives[0]	=>  Location: PIN_125,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_remaining_lives[1]	=>  Location: PIN_128,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_remaining_lives[2]	=>  Location: PIN_46,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_current_step[0]	=>  Location: PIN_70,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_current_step[1]	=>  Location: PIN_60,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_current_step[2]	=>  Location: PIN_67,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_discovered_vector[0]	=>  Location: PIN_65,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_discovered_vector[1]	=>  Location: PIN_73,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_discovered_vector[2]	=>  Location: PIN_71,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_discovered_vector[3]	=>  Location: PIN_32,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- discovered_vector[0]	=>  Location: PIN_68,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- discovered_vector[1]	=>  Location: PIN_75,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- discovered_vector[2]	=>  Location: PIN_72,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- discovered_vector[3]	=>  Location: PIN_31,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- remaining_lives[0]	=>  Location: PIN_127,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_49,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_50,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_55,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_54,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_42,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_38,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_51,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_52,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_53,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_43,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- remaining_lives[2]	=>  Location: PIN_44,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- remaining_lives[1]	=>  Location: PIN_129,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- current_number[3]	=>  Location: PIN_77,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- current_number[1]	=>  Location: PIN_76,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- current_number[2]	=>  Location: PIN_66,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- current_number[0]	=>  Location: PIN_59,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- current_step[0]	=>  Location: PIN_58,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- current_step[1]	=>  Location: PIN_69,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- current_step[2]	=>  Location: PIN_64,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF switches IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clock : std_logic;
SIGNAL ww_current_number : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_current_step : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_remaining_lives : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_SW : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_discovered_vector : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_output_remaining_lives : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_output_current_step : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_output_discovered_vector : std_logic_vector(3 DOWNTO 0);
SIGNAL \Equal22~1clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \output_remaining_lives[0]~output_o\ : std_logic;
SIGNAL \output_remaining_lives[1]~output_o\ : std_logic;
SIGNAL \output_remaining_lives[2]~output_o\ : std_logic;
SIGNAL \output_current_step[0]~output_o\ : std_logic;
SIGNAL \output_current_step[1]~output_o\ : std_logic;
SIGNAL \output_current_step[2]~output_o\ : std_logic;
SIGNAL \output_discovered_vector[0]~output_o\ : std_logic;
SIGNAL \output_discovered_vector[1]~output_o\ : std_logic;
SIGNAL \output_discovered_vector[2]~output_o\ : std_logic;
SIGNAL \output_discovered_vector[3]~output_o\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \remaining_lives[0]~input_o\ : std_logic;
SIGNAL \output_rl[0]~18_combout\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \Equal1~2_combout\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \Equal2~2_combout\ : std_logic;
SIGNAL \Equal2~3_combout\ : std_logic;
SIGNAL \Equal6~0_combout\ : std_logic;
SIGNAL \Equal16~0_combout\ : std_logic;
SIGNAL \Equal18~0_combout\ : std_logic;
SIGNAL \current_number[2]~input_o\ : std_logic;
SIGNAL \current_number[1]~input_o\ : std_logic;
SIGNAL \Equal3~0_combout\ : std_logic;
SIGNAL \Equal20~0_combout\ : std_logic;
SIGNAL \current_number[3]~input_o\ : std_logic;
SIGNAL \output_rl[0]~9_combout\ : std_logic;
SIGNAL \current_number[0]~input_o\ : std_logic;
SIGNAL \Equal3~1_combout\ : std_logic;
SIGNAL \Equal4~0_combout\ : std_logic;
SIGNAL \output_rl~10_combout\ : std_logic;
SIGNAL \output_rl[0]~11_combout\ : std_logic;
SIGNAL \Equal12~0_combout\ : std_logic;
SIGNAL \Equal12~1_combout\ : std_logic;
SIGNAL \Equal2~1_combout\ : std_logic;
SIGNAL \output_rl[0]~4_combout\ : std_logic;
SIGNAL \Equal14~0_combout\ : std_logic;
SIGNAL \Equal1~3_combout\ : std_logic;
SIGNAL \output_rl[0]~5_combout\ : std_logic;
SIGNAL \output_rl[0]~6_combout\ : std_logic;
SIGNAL \Equal10~0_combout\ : std_logic;
SIGNAL \output_rl[0]~7_combout\ : std_logic;
SIGNAL \output_rl[0]~8_combout\ : std_logic;
SIGNAL \Equal14~1_combout\ : std_logic;
SIGNAL \Equal6~1_combout\ : std_logic;
SIGNAL \output_rl[0]~12_combout\ : std_logic;
SIGNAL \output_rl[0]~13_combout\ : std_logic;
SIGNAL \Equal8~0_combout\ : std_logic;
SIGNAL \output_rl[0]~14_combout\ : std_logic;
SIGNAL \output_rl[0]~15_combout\ : std_logic;
SIGNAL \output_rl[0]~16_combout\ : std_logic;
SIGNAL \last_SW[3]~feeder_combout\ : std_logic;
SIGNAL \remaining_lives[2]~input_o\ : std_logic;
SIGNAL \remaining_lives[1]~input_o\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \last_SW[9]~feeder_combout\ : std_logic;
SIGNAL \output_rl[0]~2_combout\ : std_logic;
SIGNAL \output_rl[0]~0_combout\ : std_logic;
SIGNAL \last_SW[7]~feeder_combout\ : std_logic;
SIGNAL \last_SW[8]~feeder_combout\ : std_logic;
SIGNAL \output_rl[0]~1_combout\ : std_logic;
SIGNAL \output_rl[0]~3_combout\ : std_logic;
SIGNAL \output_rl[0]~17_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \Add1~1_combout\ : std_logic;
SIGNAL \current_step[0]~input_o\ : std_logic;
SIGNAL \output_cs[0]~13_combout\ : std_logic;
SIGNAL \output_cs[0]~0_combout\ : std_logic;
SIGNAL \output_cs[0]~4_combout\ : std_logic;
SIGNAL \output_cs[0]~5_combout\ : std_logic;
SIGNAL \output_cs[0]~6_combout\ : std_logic;
SIGNAL \output_cs[0]~7_combout\ : std_logic;
SIGNAL \output_cs[0]~1_combout\ : std_logic;
SIGNAL \output_cs[0]~2_combout\ : std_logic;
SIGNAL \output_cs[0]~3_combout\ : std_logic;
SIGNAL \output_cs[0]~8_combout\ : std_logic;
SIGNAL \output_cs[0]~9_combout\ : std_logic;
SIGNAL \output_cs[0]~10_combout\ : std_logic;
SIGNAL \output_cs[0]~11_combout\ : std_logic;
SIGNAL \output_cs[0]~12_combout\ : std_logic;
SIGNAL \current_step[1]~input_o\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \current_step[2]~input_o\ : std_logic;
SIGNAL \Add0~1_combout\ : std_logic;
SIGNAL \Equal22~0_combout\ : std_logic;
SIGNAL \Add2~0_combout\ : std_logic;
SIGNAL \Equal22~1_combout\ : std_logic;
SIGNAL \Equal22~1clkctrl_outclk\ : std_logic;
SIGNAL \discovered_vector[0]~input_o\ : std_logic;
SIGNAL \output_discovered_vector~0_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \discovered_vector[1]~input_o\ : std_logic;
SIGNAL \output_discovered_vector~1_combout\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;
SIGNAL \discovered_vector[2]~input_o\ : std_logic;
SIGNAL \output_discovered_vector~2_combout\ : std_logic;
SIGNAL \Mux0~2_combout\ : std_logic;
SIGNAL \discovered_vector[3]~input_o\ : std_logic;
SIGNAL \output_discovered_vector~3_combout\ : std_logic;
SIGNAL output_rl : std_logic_vector(2 DOWNTO 0);
SIGNAL output_cs : std_logic_vector(2 DOWNTO 0);
SIGNAL last_SW : std_logic_vector(9 DOWNTO 0);
SIGNAL new_discovered_vector : std_logic_vector(3 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clock <= clock;
ww_current_number <= IEEE.STD_LOGIC_ARITH.CONV_STD_LOGIC_VECTOR(current_number, 4);
ww_current_step <= IEEE.STD_LOGIC_ARITH.CONV_STD_LOGIC_VECTOR(current_step, 3);
ww_remaining_lives <= IEEE.STD_LOGIC_ARITH.CONV_STD_LOGIC_VECTOR(remaining_lives, 3);
ww_SW <= SW;
ww_discovered_vector <= discovered_vector;
output_remaining_lives <= IEEE.STD_LOGIC_ARITH.CONV_INTEGER(UNSIGNED(ww_output_remaining_lives));
output_current_step <= IEEE.STD_LOGIC_ARITH.CONV_INTEGER(UNSIGNED(ww_output_current_step));
output_discovered_vector <= ww_output_discovered_vector;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Equal22~1clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Equal22~1_combout\);

\clock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X18_Y24_N23
\output_remaining_lives[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => output_rl(0),
	devoe => ww_devoe,
	o => \output_remaining_lives[0]~output_o\);

-- Location: IOOBUF_X16_Y24_N16
\output_remaining_lives[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => output_rl(1),
	devoe => ww_devoe,
	o => \output_remaining_lives[1]~output_o\);

-- Location: IOOBUF_X7_Y0_N2
\output_remaining_lives[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => output_rl(2),
	devoe => ww_devoe,
	o => \output_remaining_lives[2]~output_o\);

-- Location: IOOBUF_X32_Y0_N23
\output_current_step[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => output_cs(0),
	devoe => ww_devoe,
	o => \output_current_step[0]~output_o\);

-- Location: IOOBUF_X23_Y0_N9
\output_current_step[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => output_cs(1),
	devoe => ww_devoe,
	o => \output_current_step[1]~output_o\);

-- Location: IOOBUF_X30_Y0_N23
\output_current_step[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => output_cs(2),
	devoe => ww_devoe,
	o => \output_current_step[2]~output_o\);

-- Location: IOOBUF_X28_Y0_N23
\output_discovered_vector[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output_discovered_vector~0_combout\,
	devoe => ww_devoe,
	o => \output_discovered_vector[0]~output_o\);

-- Location: IOOBUF_X34_Y2_N23
\output_discovered_vector[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output_discovered_vector~1_combout\,
	devoe => ww_devoe,
	o => \output_discovered_vector[1]~output_o\);

-- Location: IOOBUF_X32_Y0_N16
\output_discovered_vector[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output_discovered_vector~2_combout\,
	devoe => ww_devoe,
	o => \output_discovered_vector[2]~output_o\);

-- Location: IOOBUF_X0_Y6_N16
\output_discovered_vector[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output_discovered_vector~3_combout\,
	devoe => ww_devoe,
	o => \output_discovered_vector[3]~output_o\);

-- Location: IOIBUF_X0_Y11_N8
\clock~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock,
	o => \clock~input_o\);

-- Location: CLKCTRL_G2
\clock~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clock~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clock~inputclkctrl_outclk\);

-- Location: IOIBUF_X16_Y24_N8
\remaining_lives[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_remaining_lives(0),
	o => \remaining_lives[0]~input_o\);

-- Location: LCCOMB_X17_Y4_N0
\output_rl[0]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \output_rl[0]~18_combout\ = !\remaining_lives[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \remaining_lives[0]~input_o\,
	combout => \output_rl[0]~18_combout\);

-- Location: IOIBUF_X18_Y0_N22
\SW[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: IOIBUF_X3_Y0_N1
\SW[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

-- Location: IOIBUF_X16_Y0_N8
\SW[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

-- Location: IOIBUF_X16_Y0_N1
\SW[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

-- Location: IOIBUF_X16_Y0_N22
\SW[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

-- Location: IOIBUF_X5_Y0_N22
\SW[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(9),
	o => \SW[9]~input_o\);

-- Location: LCCOMB_X16_Y4_N14
\Equal1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~2_combout\ = (!\SW[7]~input_o\ & (!\SW[8]~input_o\ & (!\SW[6]~input_o\ & !\SW[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[7]~input_o\,
	datab => \SW[8]~input_o\,
	datac => \SW[6]~input_o\,
	datad => \SW[9]~input_o\,
	combout => \Equal1~2_combout\);

-- Location: IOIBUF_X13_Y0_N1
\SW[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: IOIBUF_X13_Y0_N15
\SW[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: LCCOMB_X18_Y4_N12
\Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = (!\SW[3]~input_o\ & !\SW[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[3]~input_o\,
	datad => \SW[2]~input_o\,
	combout => \Equal2~0_combout\);

-- Location: IOIBUF_X18_Y0_N15
\SW[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

-- Location: IOIBUF_X1_Y0_N22
\SW[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: LCCOMB_X18_Y4_N0
\Equal2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~2_combout\ = (\Equal1~2_combout\ & (\Equal2~0_combout\ & (!\SW[5]~input_o\ & !\SW[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~2_combout\,
	datab => \Equal2~0_combout\,
	datac => \SW[5]~input_o\,
	datad => \SW[1]~input_o\,
	combout => \Equal2~2_combout\);

-- Location: LCCOMB_X18_Y4_N2
\Equal2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~3_combout\ = (\SW[0]~input_o\ & (!\SW[4]~input_o\ & \Equal2~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datac => \SW[4]~input_o\,
	datad => \Equal2~2_combout\,
	combout => \Equal2~3_combout\);

-- Location: LCCOMB_X18_Y4_N14
\Equal6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal6~0_combout\ = (!\SW[5]~input_o\ & (!\SW[4]~input_o\ & !\SW[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[5]~input_o\,
	datac => \SW[4]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \Equal6~0_combout\);

-- Location: LCCOMB_X16_Y4_N4
\Equal16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal16~0_combout\ = (!\SW[6]~input_o\ & (\Equal2~0_combout\ & (!\SW[1]~input_o\ & \Equal6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[6]~input_o\,
	datab => \Equal2~0_combout\,
	datac => \SW[1]~input_o\,
	datad => \Equal6~0_combout\,
	combout => \Equal16~0_combout\);

-- Location: LCCOMB_X16_Y4_N30
\Equal18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal18~0_combout\ = (!\SW[7]~input_o\ & (\SW[8]~input_o\ & (\Equal16~0_combout\ & !\SW[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[7]~input_o\,
	datab => \SW[8]~input_o\,
	datac => \Equal16~0_combout\,
	datad => \SW[9]~input_o\,
	combout => \Equal18~0_combout\);

-- Location: IOIBUF_X28_Y0_N1
\current_number[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_current_number(2),
	o => \current_number[2]~input_o\);

-- Location: IOIBUF_X34_Y4_N22
\current_number[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_current_number(1),
	o => \current_number[1]~input_o\);

-- Location: LCCOMB_X19_Y4_N28
\Equal3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal3~0_combout\ = (!\current_number[2]~input_o\ & !\current_number[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \current_number[2]~input_o\,
	datad => \current_number[1]~input_o\,
	combout => \Equal3~0_combout\);

-- Location: LCCOMB_X16_Y4_N8
\Equal20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal20~0_combout\ = (!\SW[7]~input_o\ & (!\SW[8]~input_o\ & (\Equal16~0_combout\ & \SW[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[7]~input_o\,
	datab => \SW[8]~input_o\,
	datac => \Equal16~0_combout\,
	datad => \SW[9]~input_o\,
	combout => \Equal20~0_combout\);

-- Location: IOIBUF_X34_Y4_N15
\current_number[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_current_number(3),
	o => \current_number[3]~input_o\);

-- Location: LCCOMB_X19_Y4_N18
\output_rl[0]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \output_rl[0]~9_combout\ = (\Equal18~0_combout\ & (((!\current_number[3]~input_o\)) # (!\Equal3~0_combout\))) # (!\Equal18~0_combout\ & (\Equal20~0_combout\ & ((!\current_number[3]~input_o\) # (!\Equal3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal18~0_combout\,
	datab => \Equal3~0_combout\,
	datac => \Equal20~0_combout\,
	datad => \current_number[3]~input_o\,
	combout => \output_rl[0]~9_combout\);

-- Location: IOIBUF_X23_Y0_N15
\current_number[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_current_number(0),
	o => \current_number[0]~input_o\);

-- Location: LCCOMB_X19_Y4_N8
\Equal3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal3~1_combout\ = (!\current_number[2]~input_o\ & (!\current_number[1]~input_o\ & (!\current_number[0]~input_o\ & !\current_number[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_number[2]~input_o\,
	datab => \current_number[1]~input_o\,
	datac => \current_number[0]~input_o\,
	datad => \current_number[3]~input_o\,
	combout => \Equal3~1_combout\);

-- Location: LCCOMB_X18_Y4_N4
\Equal4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal4~0_combout\ = (\Equal6~0_combout\ & (\Equal2~0_combout\ & (\Equal1~2_combout\ & \SW[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal6~0_combout\,
	datab => \Equal2~0_combout\,
	datac => \Equal1~2_combout\,
	datad => \SW[1]~input_o\,
	combout => \Equal4~0_combout\);

-- Location: LCCOMB_X19_Y4_N2
\output_rl~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \output_rl~10_combout\ = ((!\current_number[3]~input_o\ & (\current_number[0]~input_o\ & \Equal3~0_combout\))) # (!\Equal4~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_number[3]~input_o\,
	datab => \Equal4~0_combout\,
	datac => \current_number[0]~input_o\,
	datad => \Equal3~0_combout\,
	combout => \output_rl~10_combout\);

-- Location: LCCOMB_X19_Y4_N24
\output_rl[0]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \output_rl[0]~11_combout\ = (\output_rl[0]~9_combout\) # (\output_rl~10_combout\ $ (((\Equal3~1_combout\) # (!\Equal2~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~3_combout\,
	datab => \output_rl[0]~9_combout\,
	datac => \Equal3~1_combout\,
	datad => \output_rl~10_combout\,
	combout => \output_rl[0]~11_combout\);

-- Location: LCCOMB_X18_Y4_N20
\Equal12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal12~0_combout\ = (\SW[5]~input_o\ & (!\SW[4]~input_o\ & !\SW[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[5]~input_o\,
	datac => \SW[4]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \Equal12~0_combout\);

-- Location: LCCOMB_X18_Y4_N18
\Equal12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal12~1_combout\ = (\Equal2~0_combout\ & (\Equal12~0_combout\ & (\Equal1~2_combout\ & !\SW[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~0_combout\,
	datab => \Equal12~0_combout\,
	datac => \Equal1~2_combout\,
	datad => \SW[1]~input_o\,
	combout => \Equal12~1_combout\);

-- Location: LCCOMB_X18_Y4_N8
\Equal2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~1_combout\ = (\Equal1~2_combout\ & !\SW[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal1~2_combout\,
	datad => \SW[1]~input_o\,
	combout => \Equal2~1_combout\);

-- Location: LCCOMB_X18_Y4_N6
\output_rl[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \output_rl[0]~4_combout\ = ((\SW[2]~input_o\ $ (!\SW[3]~input_o\)) # (!\Equal6~0_combout\)) # (!\Equal2~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \Equal2~1_combout\,
	datac => \SW[3]~input_o\,
	datad => \Equal6~0_combout\,
	combout => \output_rl[0]~4_combout\);

-- Location: LCCOMB_X16_Y4_N26
\Equal14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal14~0_combout\ = (!\SW[9]~input_o\ & !\SW[8]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[9]~input_o\,
	datad => \SW[8]~input_o\,
	combout => \Equal14~0_combout\);

-- Location: LCCOMB_X16_Y4_N2
\Equal1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~3_combout\ = (\Equal6~0_combout\ & (!\SW[1]~input_o\ & (!\SW[2]~input_o\ & !\SW[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal6~0_combout\,
	datab => \SW[1]~input_o\,
	datac => \SW[2]~input_o\,
	datad => \SW[3]~input_o\,
	combout => \Equal1~3_combout\);

-- Location: LCCOMB_X17_Y4_N24
\output_rl[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \output_rl[0]~5_combout\ = ((\SW[6]~input_o\ $ (!\SW[7]~input_o\)) # (!\Equal1~3_combout\)) # (!\Equal14~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal14~0_combout\,
	datab => \SW[6]~input_o\,
	datac => \SW[7]~input_o\,
	datad => \Equal1~3_combout\,
	combout => \output_rl[0]~5_combout\);

-- Location: LCCOMB_X17_Y4_N30
\output_rl[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \output_rl[0]~6_combout\ = (\output_rl[0]~4_combout\ & (!\output_rl[0]~5_combout\ & ((\current_number[3]~input_o\) # (!\current_number[1]~input_o\)))) # (!\output_rl[0]~4_combout\ & (((\current_number[3]~input_o\) # (!\current_number[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \output_rl[0]~4_combout\,
	datab => \output_rl[0]~5_combout\,
	datac => \current_number[3]~input_o\,
	datad => \current_number[1]~input_o\,
	combout => \output_rl[0]~6_combout\);

-- Location: LCCOMB_X18_Y4_N22
\Equal10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal10~0_combout\ = (!\SW[0]~input_o\ & (\SW[4]~input_o\ & \Equal2~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datac => \SW[4]~input_o\,
	datad => \Equal2~2_combout\,
	combout => \Equal10~0_combout\);

-- Location: LCCOMB_X17_Y4_N12
\output_rl[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \output_rl[0]~7_combout\ = (\current_number[3]~input_o\) # ((\current_number[1]~input_o\) # (!\current_number[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \current_number[3]~input_o\,
	datac => \current_number[2]~input_o\,
	datad => \current_number[1]~input_o\,
	combout => \output_rl[0]~7_combout\);

-- Location: LCCOMB_X18_Y4_N24
\output_rl[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \output_rl[0]~8_combout\ = (\output_rl[0]~6_combout\) # ((\output_rl[0]~7_combout\ & ((\Equal12~1_combout\) # (\Equal10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal12~1_combout\,
	datab => \output_rl[0]~6_combout\,
	datac => \Equal10~0_combout\,
	datad => \output_rl[0]~7_combout\,
	combout => \output_rl[0]~8_combout\);

-- Location: LCCOMB_X17_Y4_N18
\Equal14~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal14~1_combout\ = (\Equal14~0_combout\ & (\SW[6]~input_o\ & (!\SW[7]~input_o\ & \Equal1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal14~0_combout\,
	datab => \SW[6]~input_o\,
	datac => \SW[7]~input_o\,
	datad => \Equal1~3_combout\,
	combout => \Equal14~1_combout\);

-- Location: LCCOMB_X18_Y4_N10
\Equal6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal6~1_combout\ = (\SW[2]~input_o\ & (\Equal2~1_combout\ & (!\SW[3]~input_o\ & \Equal6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \Equal2~1_combout\,
	datac => \SW[3]~input_o\,
	datad => \Equal6~0_combout\,
	combout => \Equal6~1_combout\);

-- Location: LCCOMB_X18_Y4_N16
\output_rl[0]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \output_rl[0]~12_combout\ = (\Equal10~0_combout\) # ((\Equal14~1_combout\) # ((\Equal18~0_combout\) # (\Equal6~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal10~0_combout\,
	datab => \Equal14~1_combout\,
	datac => \Equal18~0_combout\,
	datad => \Equal6~1_combout\,
	combout => \output_rl[0]~12_combout\);

-- Location: LCCOMB_X17_Y4_N20
\output_rl[0]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \output_rl[0]~13_combout\ = (\current_number[0]~input_o\ & ((\output_rl[0]~12_combout\) # ((!\output_rl[0]~5_combout\ & !\current_number[2]~input_o\)))) # (!\current_number[0]~input_o\ & (!\output_rl[0]~5_combout\ & (!\current_number[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_number[0]~input_o\,
	datab => \output_rl[0]~5_combout\,
	datac => \current_number[2]~input_o\,
	datad => \output_rl[0]~12_combout\,
	combout => \output_rl[0]~13_combout\);

-- Location: LCCOMB_X18_Y4_N26
\Equal8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal8~0_combout\ = (!\SW[2]~input_o\ & (\Equal2~1_combout\ & (\SW[3]~input_o\ & \Equal6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \Equal2~1_combout\,
	datac => \SW[3]~input_o\,
	datad => \Equal6~0_combout\,
	combout => \Equal8~0_combout\);

-- Location: LCCOMB_X16_Y4_N18
\output_rl[0]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \output_rl[0]~14_combout\ = (!\SW[8]~input_o\ & (\Equal16~0_combout\ & (\SW[7]~input_o\ $ (\SW[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[7]~input_o\,
	datab => \SW[8]~input_o\,
	datac => \Equal16~0_combout\,
	datad => \SW[9]~input_o\,
	combout => \output_rl[0]~14_combout\);

-- Location: LCCOMB_X18_Y4_N28
\output_rl[0]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \output_rl[0]~15_combout\ = (!\current_number[0]~input_o\ & ((\Equal8~0_combout\) # ((\output_rl[0]~14_combout\) # (\Equal12~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal8~0_combout\,
	datab => \output_rl[0]~14_combout\,
	datac => \Equal12~1_combout\,
	datad => \current_number[0]~input_o\,
	combout => \output_rl[0]~15_combout\);

-- Location: LCCOMB_X17_Y4_N14
\output_rl[0]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \output_rl[0]~16_combout\ = (\output_rl[0]~13_combout\) # ((\output_rl[0]~15_combout\) # ((!\output_rl[0]~4_combout\ & \current_number[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \output_rl[0]~4_combout\,
	datab => \output_rl[0]~13_combout\,
	datac => \current_number[2]~input_o\,
	datad => \output_rl[0]~15_combout\,
	combout => \output_rl[0]~16_combout\);

-- Location: LCCOMB_X16_Y4_N22
\last_SW[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \last_SW[3]~feeder_combout\ = \SW[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[3]~input_o\,
	combout => \last_SW[3]~feeder_combout\);

-- Location: IOIBUF_X5_Y0_N15
\remaining_lives[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_remaining_lives(2),
	o => \remaining_lives[2]~input_o\);

-- Location: IOIBUF_X16_Y24_N22
\remaining_lives[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_remaining_lives(1),
	o => \remaining_lives[1]~input_o\);

-- Location: LCCOMB_X17_Y4_N2
\LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (\remaining_lives[0]~input_o\) # ((\remaining_lives[2]~input_o\) # (\remaining_lives[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \remaining_lives[0]~input_o\,
	datac => \remaining_lives[2]~input_o\,
	datad => \remaining_lives[1]~input_o\,
	combout => \LessThan0~0_combout\);

-- Location: FF_X16_Y4_N23
\last_SW[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \last_SW[3]~feeder_combout\,
	ena => \LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => last_SW(3));

-- Location: FF_X16_Y4_N21
\last_SW[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \SW[4]~input_o\,
	sload => VCC,
	ena => \LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => last_SW(4));

-- Location: FF_X16_Y4_N13
\last_SW[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \SW[1]~input_o\,
	sload => VCC,
	ena => \LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => last_SW(1));

-- Location: LCCOMB_X16_Y4_N10
\last_SW[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \last_SW[9]~feeder_combout\ = \SW[9]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[9]~input_o\,
	combout => \last_SW[9]~feeder_combout\);

-- Location: FF_X16_Y4_N11
\last_SW[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \last_SW[9]~feeder_combout\,
	ena => \LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => last_SW(9));

-- Location: LCCOMB_X16_Y4_N12
\output_rl[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \output_rl[0]~2_combout\ = (!last_SW(3) & (!last_SW(4) & (!last_SW(1) & !last_SW(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => last_SW(3),
	datab => last_SW(4),
	datac => last_SW(1),
	datad => last_SW(9),
	combout => \output_rl[0]~2_combout\);

-- Location: FF_X16_Y4_N29
\last_SW[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \SW[5]~input_o\,
	sload => VCC,
	ena => \LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => last_SW(5));

-- Location: LCCOMB_X16_Y4_N28
\output_rl[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \output_rl[0]~0_combout\ = (!last_SW(5) & (\LessThan0~0_combout\ & ((!\Equal1~3_combout\) # (!\Equal1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~2_combout\,
	datab => \Equal1~3_combout\,
	datac => last_SW(5),
	datad => \LessThan0~0_combout\,
	combout => \output_rl[0]~0_combout\);

-- Location: FF_X16_Y4_N25
\last_SW[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \SW[0]~input_o\,
	sload => VCC,
	ena => \LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => last_SW(0));

-- Location: LCCOMB_X16_Y4_N6
\last_SW[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \last_SW[7]~feeder_combout\ = \SW[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[7]~input_o\,
	combout => \last_SW[7]~feeder_combout\);

-- Location: FF_X16_Y4_N7
\last_SW[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \last_SW[7]~feeder_combout\,
	ena => \LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => last_SW(7));

-- Location: LCCOMB_X16_Y4_N0
\last_SW[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \last_SW[8]~feeder_combout\ = \SW[8]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[8]~input_o\,
	combout => \last_SW[8]~feeder_combout\);

-- Location: FF_X16_Y4_N1
\last_SW[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \last_SW[8]~feeder_combout\,
	ena => \LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => last_SW(8));

-- Location: FF_X16_Y4_N17
\last_SW[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \SW[6]~input_o\,
	sload => VCC,
	ena => \LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => last_SW(6));

-- Location: FF_X16_Y4_N3
\last_SW[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \SW[2]~input_o\,
	sload => VCC,
	ena => \LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => last_SW(2));

-- Location: LCCOMB_X16_Y4_N16
\output_rl[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \output_rl[0]~1_combout\ = (!last_SW(7) & (!last_SW(8) & (!last_SW(6) & !last_SW(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => last_SW(7),
	datab => last_SW(8),
	datac => last_SW(6),
	datad => last_SW(2),
	combout => \output_rl[0]~1_combout\);

-- Location: LCCOMB_X16_Y4_N24
\output_rl[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \output_rl[0]~3_combout\ = (\output_rl[0]~2_combout\ & (\output_rl[0]~0_combout\ & (!last_SW(0) & \output_rl[0]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \output_rl[0]~2_combout\,
	datab => \output_rl[0]~0_combout\,
	datac => last_SW(0),
	datad => \output_rl[0]~1_combout\,
	combout => \output_rl[0]~3_combout\);

-- Location: LCCOMB_X17_Y4_N16
\output_rl[0]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \output_rl[0]~17_combout\ = (\output_rl[0]~3_combout\ & ((\output_rl[0]~11_combout\) # ((\output_rl[0]~8_combout\) # (\output_rl[0]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \output_rl[0]~11_combout\,
	datab => \output_rl[0]~8_combout\,
	datac => \output_rl[0]~16_combout\,
	datad => \output_rl[0]~3_combout\,
	combout => \output_rl[0]~17_combout\);

-- Location: FF_X17_Y4_N1
\output_rl[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \output_rl[0]~18_combout\,
	ena => \output_rl[0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => output_rl(0));

-- Location: LCCOMB_X17_Y4_N10
\Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = \remaining_lives[0]~input_o\ $ (!\remaining_lives[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \remaining_lives[0]~input_o\,
	datad => \remaining_lives[1]~input_o\,
	combout => \Add1~0_combout\);

-- Location: FF_X17_Y4_N11
\output_rl[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Add1~0_combout\,
	ena => \output_rl[0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => output_rl(1));

-- Location: LCCOMB_X17_Y4_N4
\Add1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~1_combout\ = \remaining_lives[2]~input_o\ $ (((!\remaining_lives[0]~input_o\ & !\remaining_lives[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \remaining_lives[0]~input_o\,
	datac => \remaining_lives[2]~input_o\,
	datad => \remaining_lives[1]~input_o\,
	combout => \Add1~1_combout\);

-- Location: FF_X17_Y4_N5
\output_rl[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Add1~1_combout\,
	ena => \output_rl[0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => output_rl(2));

-- Location: IOIBUF_X21_Y0_N8
\current_step[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_current_step(0),
	o => \current_step[0]~input_o\);

-- Location: LCCOMB_X21_Y4_N12
\output_cs[0]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \output_cs[0]~13_combout\ = !\current_step[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_step[0]~input_o\,
	combout => \output_cs[0]~13_combout\);

-- Location: LCCOMB_X19_Y4_N6
\output_cs[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \output_cs[0]~0_combout\ = (\current_number[0]~input_o\ & ((\Equal20~0_combout\))) # (!\current_number[0]~input_o\ & (\Equal18~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal18~0_combout\,
	datab => \current_number[0]~input_o\,
	datac => \Equal20~0_combout\,
	combout => \output_cs[0]~0_combout\);

-- Location: LCCOMB_X19_Y4_N26
\output_cs[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \output_cs[0]~4_combout\ = (\Equal6~1_combout\ & (!\current_number[0]~input_o\ & (!\current_number[2]~input_o\ & \current_number[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal6~1_combout\,
	datab => \current_number[0]~input_o\,
	datac => \current_number[2]~input_o\,
	datad => \current_number[1]~input_o\,
	combout => \output_cs[0]~4_combout\);

-- Location: LCCOMB_X19_Y4_N20
\output_cs[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \output_cs[0]~5_combout\ = (\current_number[2]~input_o\ & (\current_number[0]~input_o\ & \current_number[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_number[2]~input_o\,
	datac => \current_number[0]~input_o\,
	datad => \current_number[1]~input_o\,
	combout => \output_cs[0]~5_combout\);

-- Location: LCCOMB_X17_Y4_N22
\output_cs[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \output_cs[0]~6_combout\ = (\Equal14~0_combout\ & (\Equal16~0_combout\ & (\output_cs[0]~5_combout\ & \SW[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal14~0_combout\,
	datab => \Equal16~0_combout\,
	datac => \output_cs[0]~5_combout\,
	datad => \SW[7]~input_o\,
	combout => \output_cs[0]~6_combout\);

-- Location: LCCOMB_X18_Y4_N30
\output_cs[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \output_cs[0]~7_combout\ = (\output_cs[0]~6_combout\) # ((!\current_number[0]~input_o\ & (\Equal2~3_combout\ & \Equal3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_number[0]~input_o\,
	datab => \Equal2~3_combout\,
	datac => \Equal3~0_combout\,
	datad => \output_cs[0]~6_combout\,
	combout => \output_cs[0]~7_combout\);

-- Location: LCCOMB_X19_Y4_N12
\output_cs[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \output_cs[0]~1_combout\ = (!\current_number[2]~input_o\ & (\current_number[0]~input_o\ & (\Equal8~0_combout\ & \current_number[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_number[2]~input_o\,
	datab => \current_number[0]~input_o\,
	datac => \Equal8~0_combout\,
	datad => \current_number[1]~input_o\,
	combout => \output_cs[0]~1_combout\);

-- Location: LCCOMB_X19_Y4_N22
\output_cs[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \output_cs[0]~2_combout\ = (\output_cs[0]~1_combout\) # ((\Equal4~0_combout\ & (\current_number[0]~input_o\ & \Equal3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \output_cs[0]~1_combout\,
	datab => \Equal4~0_combout\,
	datac => \current_number[0]~input_o\,
	datad => \Equal3~0_combout\,
	combout => \output_cs[0]~2_combout\);

-- Location: LCCOMB_X19_Y4_N16
\output_cs[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \output_cs[0]~3_combout\ = (\current_number[2]~input_o\ & (\Equal12~1_combout\ & (\current_number[0]~input_o\ & !\current_number[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_number[2]~input_o\,
	datab => \Equal12~1_combout\,
	datac => \current_number[0]~input_o\,
	datad => \current_number[1]~input_o\,
	combout => \output_cs[0]~3_combout\);

-- Location: LCCOMB_X19_Y4_N10
\output_cs[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \output_cs[0]~8_combout\ = (\output_cs[0]~4_combout\) # ((\output_cs[0]~7_combout\) # ((\output_cs[0]~2_combout\) # (\output_cs[0]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \output_cs[0]~4_combout\,
	datab => \output_cs[0]~7_combout\,
	datac => \output_cs[0]~2_combout\,
	datad => \output_cs[0]~3_combout\,
	combout => \output_cs[0]~8_combout\);

-- Location: LCCOMB_X17_Y4_N28
\output_cs[0]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \output_cs[0]~9_combout\ = (\current_number[1]~input_o\ & ((\Equal14~1_combout\))) # (!\current_number[1]~input_o\ & (\Equal10~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal10~0_combout\,
	datac => \Equal14~1_combout\,
	datad => \current_number[1]~input_o\,
	combout => \output_cs[0]~9_combout\);

-- Location: LCCOMB_X17_Y4_N26
\output_cs[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \output_cs[0]~10_combout\ = (\output_cs[0]~9_combout\ & (\current_number[2]~input_o\ & !\current_number[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \output_cs[0]~9_combout\,
	datac => \current_number[2]~input_o\,
	datad => \current_number[0]~input_o\,
	combout => \output_cs[0]~10_combout\);

-- Location: LCCOMB_X21_Y4_N28
\output_cs[0]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \output_cs[0]~11_combout\ = (\output_rl[0]~3_combout\ & ((\current_number[3]~input_o\) # ((\output_cs[0]~8_combout\) # (\output_cs[0]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_number[3]~input_o\,
	datab => \output_cs[0]~8_combout\,
	datac => \output_cs[0]~10_combout\,
	datad => \output_rl[0]~3_combout\,
	combout => \output_cs[0]~11_combout\);

-- Location: LCCOMB_X21_Y4_N20
\output_cs[0]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \output_cs[0]~12_combout\ = (\output_cs[0]~11_combout\ & (((\output_cs[0]~0_combout\ & \Equal3~0_combout\)) # (!\current_number[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_number[3]~input_o\,
	datab => \output_cs[0]~0_combout\,
	datac => \Equal3~0_combout\,
	datad => \output_cs[0]~11_combout\,
	combout => \output_cs[0]~12_combout\);

-- Location: FF_X21_Y4_N13
\output_cs[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \output_cs[0]~13_combout\,
	ena => \output_cs[0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => output_cs(0));

-- Location: IOIBUF_X30_Y0_N1
\current_step[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_current_step(1),
	o => \current_step[1]~input_o\);

-- Location: LCCOMB_X21_Y4_N4
\Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = \current_step[0]~input_o\ $ (\current_step[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \current_step[0]~input_o\,
	datad => \current_step[1]~input_o\,
	combout => \Add0~0_combout\);

-- Location: FF_X21_Y4_N5
\output_cs[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \Add0~0_combout\,
	ena => \output_cs[0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => output_cs(1));

-- Location: IOIBUF_X25_Y0_N1
\current_step[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_current_step(2),
	o => \current_step[2]~input_o\);

-- Location: LCCOMB_X21_Y4_N0
\Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~1_combout\ = \current_step[2]~input_o\ $ (((\current_step[0]~input_o\ & \current_step[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_step[2]~input_o\,
	datac => \current_step[0]~input_o\,
	datad => \current_step[1]~input_o\,
	combout => \Add0~1_combout\);

-- Location: FF_X21_Y4_N1
\output_cs[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \Add0~1_combout\,
	ena => \output_cs[0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => output_cs(2));

-- Location: LCCOMB_X21_Y4_N26
\Equal22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal22~0_combout\ = (\current_step[0]~input_o\ & (!output_cs(0) & (\current_step[1]~input_o\ $ (output_cs(1))))) # (!\current_step[0]~input_o\ & (output_cs(0) & (\current_step[1]~input_o\ $ (!output_cs(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000100101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_step[0]~input_o\,
	datab => \current_step[1]~input_o\,
	datac => output_cs(1),
	datad => output_cs(0),
	combout => \Equal22~0_combout\);

-- Location: LCCOMB_X21_Y4_N8
\Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~0_combout\ = (\current_step[1]~input_o\ & (output_cs(1) & ((output_cs(0)) # (!\current_step[0]~input_o\)))) # (!\current_step[1]~input_o\ & (((output_cs(1)) # (output_cs(0))) # (!\current_step[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001101110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_step[0]~input_o\,
	datab => \current_step[1]~input_o\,
	datac => output_cs(1),
	datad => output_cs(0),
	combout => \Add2~0_combout\);

-- Location: LCCOMB_X21_Y4_N24
\Equal22~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal22~1_combout\ = (\Equal22~0_combout\ & ((\current_step[2]~input_o\ & (\Add2~0_combout\ & output_cs(2))) # (!\current_step[2]~input_o\ & (\Add2~0_combout\ $ (output_cs(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal22~0_combout\,
	datab => \current_step[2]~input_o\,
	datac => \Add2~0_combout\,
	datad => output_cs(2),
	combout => \Equal22~1_combout\);

-- Location: CLKCTRL_G7
\Equal22~1clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Equal22~1clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Equal22~1clkctrl_outclk\);

-- Location: LCCOMB_X21_Y4_N30
\new_discovered_vector[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- new_discovered_vector(0) = (GLOBAL(\Equal22~1clkctrl_outclk\) & ((output_cs(2)))) # (!GLOBAL(\Equal22~1clkctrl_outclk\) & (new_discovered_vector(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => new_discovered_vector(0),
	datac => output_cs(2),
	datad => \Equal22~1clkctrl_outclk\,
	combout => new_discovered_vector(0));

-- Location: IOIBUF_X30_Y0_N8
\discovered_vector[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_discovered_vector(0),
	o => \discovered_vector[0]~input_o\);

-- Location: LCCOMB_X24_Y1_N4
\output_discovered_vector~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \output_discovered_vector~0_combout\ = (new_discovered_vector(0)) # (\discovered_vector[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => new_discovered_vector(0),
	datad => \discovered_vector[0]~input_o\,
	combout => \output_discovered_vector~0_combout\);

-- Location: LCCOMB_X21_Y4_N6
\Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (output_cs(0) & output_cs(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => output_cs(0),
	datac => output_cs(1),
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X21_Y4_N22
\new_discovered_vector[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- new_discovered_vector(1) = (GLOBAL(\Equal22~1clkctrl_outclk\) & ((\Mux0~0_combout\))) # (!GLOBAL(\Equal22~1clkctrl_outclk\) & (new_discovered_vector(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => new_discovered_vector(1),
	datac => \Mux0~0_combout\,
	datad => \Equal22~1clkctrl_outclk\,
	combout => new_discovered_vector(1));

-- Location: IOIBUF_X34_Y3_N22
\discovered_vector[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_discovered_vector(1),
	o => \discovered_vector[1]~input_o\);

-- Location: LCCOMB_X33_Y3_N4
\output_discovered_vector~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \output_discovered_vector~1_combout\ = (new_discovered_vector(1)) # (\discovered_vector[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => new_discovered_vector(1),
	datad => \discovered_vector[1]~input_o\,
	combout => \output_discovered_vector~1_combout\);

-- Location: LCCOMB_X21_Y4_N10
\Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~1_combout\ = (!output_cs(0) & output_cs(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => output_cs(0),
	datac => output_cs(1),
	combout => \Mux0~1_combout\);

-- Location: LCCOMB_X21_Y4_N2
\new_discovered_vector[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- new_discovered_vector(2) = (GLOBAL(\Equal22~1clkctrl_outclk\) & (\Mux0~1_combout\)) # (!GLOBAL(\Equal22~1clkctrl_outclk\) & ((new_discovered_vector(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux0~1_combout\,
	datac => new_discovered_vector(2),
	datad => \Equal22~1clkctrl_outclk\,
	combout => new_discovered_vector(2));

-- Location: IOIBUF_X32_Y0_N8
\discovered_vector[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_discovered_vector(2),
	o => \discovered_vector[2]~input_o\);

-- Location: LCCOMB_X28_Y4_N12
\output_discovered_vector~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \output_discovered_vector~2_combout\ = (new_discovered_vector(2)) # (\discovered_vector[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => new_discovered_vector(2),
	datad => \discovered_vector[2]~input_o\,
	combout => \output_discovered_vector~2_combout\);

-- Location: LCCOMB_X21_Y4_N16
\Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~2_combout\ = (!output_cs(1) & output_cs(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => output_cs(1),
	datab => output_cs(0),
	combout => \Mux0~2_combout\);

-- Location: LCCOMB_X21_Y4_N14
\new_discovered_vector[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- new_discovered_vector(3) = (GLOBAL(\Equal22~1clkctrl_outclk\) & (\Mux0~2_combout\)) # (!GLOBAL(\Equal22~1clkctrl_outclk\) & ((new_discovered_vector(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~2_combout\,
	datac => new_discovered_vector(3),
	datad => \Equal22~1clkctrl_outclk\,
	combout => new_discovered_vector(3));

-- Location: IOIBUF_X0_Y7_N1
\discovered_vector[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_discovered_vector(3),
	o => \discovered_vector[3]~input_o\);

-- Location: LCCOMB_X1_Y7_N20
\output_discovered_vector~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \output_discovered_vector~3_combout\ = (new_discovered_vector(3)) # (\discovered_vector[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => new_discovered_vector(3),
	datad => \discovered_vector[3]~input_o\,
	combout => \output_discovered_vector~3_combout\);

ww_output_remaining_lives(0) <= \output_remaining_lives[0]~output_o\;

ww_output_remaining_lives(1) <= \output_remaining_lives[1]~output_o\;

ww_output_remaining_lives(2) <= \output_remaining_lives[2]~output_o\;

ww_output_current_step(0) <= \output_current_step[0]~output_o\;

ww_output_current_step(1) <= \output_current_step[1]~output_o\;

ww_output_current_step(2) <= \output_current_step[2]~output_o\;

ww_output_discovered_vector(0) <= \output_discovered_vector[0]~output_o\;

ww_output_discovered_vector(1) <= \output_discovered_vector[1]~output_o\;

ww_output_discovered_vector(2) <= \output_discovered_vector[2]~output_o\;

ww_output_discovered_vector(3) <= \output_discovered_vector[3]~output_o\;
END structure;


