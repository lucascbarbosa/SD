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

-- DATE "09/23/2021 21:49:42"

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
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	switches IS
    PORT (
	clock : IN std_logic;
	SW : IN std_logic_vector(9 DOWNTO 0);
	discovered_vector : IN std_logic_vector(3 DOWNTO 0);
	output_disc : OUT std_logic;
	output_discovered_vector : OUT std_logic_vector(3 DOWNTO 0)
	);
END switches;

-- Design Ports Information
-- output_disc	=>  Location: PIN_11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_discovered_vector[0]	=>  Location: PIN_38,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_discovered_vector[1]	=>  Location: PIN_138,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_discovered_vector[2]	=>  Location: PIN_144,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_discovered_vector[3]	=>  Location: PIN_112,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- discovered_vector[0]	=>  Location: PIN_33,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- discovered_vector[1]	=>  Location: PIN_137,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- discovered_vector[2]	=>  Location: PIN_143,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- discovered_vector[3]	=>  Location: PIN_113,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_42,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_39,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_32,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_34,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_31,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_SW : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_discovered_vector : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_output_disc : std_logic;
SIGNAL ww_output_discovered_vector : std_logic_vector(3 DOWNTO 0);
SIGNAL \clock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \output_disc~output_o\ : std_logic;
SIGNAL \output_discovered_vector[0]~output_o\ : std_logic;
SIGNAL \output_discovered_vector[1]~output_o\ : std_logic;
SIGNAL \output_discovered_vector[2]~output_o\ : std_logic;
SIGNAL \output_discovered_vector[3]~output_o\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \discovered~0_combout\ : std_logic;
SIGNAL \discovered~1_combout\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \last_SW[7]~feeder_combout\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \last_SW[8]~feeder_combout\ : std_logic;
SIGNAL \last_SW[2]~feeder_combout\ : std_logic;
SIGNAL \discovered~2_combout\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \last_SW[9]~feeder_combout\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \discovered~3_combout\ : std_logic;
SIGNAL \last_SW[4]~feeder_combout\ : std_logic;
SIGNAL \last_SW[3]~feeder_combout\ : std_logic;
SIGNAL \discovered~4_combout\ : std_logic;
SIGNAL \discovered~5_combout\ : std_logic;
SIGNAL \discovered~6_combout\ : std_logic;
SIGNAL \discovered~q\ : std_logic;
SIGNAL \new_discovered_vector[0]~0_combout\ : std_logic;
SIGNAL \discovered_vector[0]~input_o\ : std_logic;
SIGNAL \output_discovered_vector~0_combout\ : std_logic;
SIGNAL \discovered_vector[1]~input_o\ : std_logic;
SIGNAL \discovered_vector[2]~input_o\ : std_logic;
SIGNAL \discovered_vector[3]~input_o\ : std_logic;
SIGNAL new_discovered_vector : std_logic_vector(3 DOWNTO 0);
SIGNAL last_SW : std_logic_vector(9 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clock <= clock;
ww_SW <= SW;
ww_discovered_vector <= discovered_vector;
output_disc <= ww_output_disc;
output_discovered_vector <= ww_output_discovered_vector;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X0_Y18_N23
\output_disc~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \discovered~q\,
	devoe => ww_devoe,
	o => \output_disc~output_o\);

-- Location: IOOBUF_X1_Y0_N23
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

-- Location: IOOBUF_X7_Y24_N9
\output_discovered_vector[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \discovered_vector[1]~input_o\,
	devoe => ww_devoe,
	o => \output_discovered_vector[1]~output_o\);

-- Location: IOOBUF_X1_Y24_N9
\output_discovered_vector[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \discovered_vector[2]~input_o\,
	devoe => ww_devoe,
	o => \output_discovered_vector[2]~output_o\);

-- Location: IOOBUF_X28_Y24_N2
\output_discovered_vector[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \discovered_vector[3]~input_o\,
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

-- Location: IOIBUF_X0_Y6_N15
\SW[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: IOIBUF_X0_Y5_N15
\SW[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: FF_X1_Y7_N27
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
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => last_SW(0));

-- Location: IOIBUF_X0_Y18_N15
\SW[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

-- Location: IOIBUF_X3_Y0_N1
\SW[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: IOIBUF_X0_Y8_N15
\SW[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

-- Location: IOIBUF_X1_Y0_N15
\SW[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: LCCOMB_X1_Y7_N0
\discovered~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \discovered~0_combout\ = (\SW[4]~input_o\ & (!\SW[2]~input_o\ & (!\SW[5]~input_o\ & !\SW[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[4]~input_o\,
	datab => \SW[2]~input_o\,
	datac => \SW[5]~input_o\,
	datad => \SW[3]~input_o\,
	combout => \discovered~0_combout\);

-- Location: LCCOMB_X1_Y7_N26
\discovered~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \discovered~1_combout\ = (!\SW[0]~input_o\ & (!\SW[1]~input_o\ & (!last_SW(0) & \discovered~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \SW[1]~input_o\,
	datac => last_SW(0),
	datad => \discovered~0_combout\,
	combout => \discovered~1_combout\);

-- Location: IOIBUF_X0_Y11_N15
\SW[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

-- Location: LCCOMB_X1_Y7_N22
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

-- Location: FF_X1_Y7_N23
\last_SW[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \last_SW[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => last_SW(7));

-- Location: IOIBUF_X0_Y11_N22
\SW[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

-- Location: LCCOMB_X1_Y7_N16
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

-- Location: FF_X1_Y7_N17
\last_SW[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \last_SW[8]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => last_SW(8));

-- Location: FF_X1_Y7_N15
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
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => last_SW(1));

-- Location: LCCOMB_X1_Y7_N28
\last_SW[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \last_SW[2]~feeder_combout\ = \SW[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[2]~input_o\,
	combout => \last_SW[2]~feeder_combout\);

-- Location: FF_X1_Y7_N29
\last_SW[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \last_SW[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => last_SW(2));

-- Location: LCCOMB_X1_Y7_N14
\discovered~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \discovered~2_combout\ = (!last_SW(7) & (!last_SW(8) & (!last_SW(1) & !last_SW(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => last_SW(7),
	datab => last_SW(8),
	datac => last_SW(1),
	datad => last_SW(2),
	combout => \discovered~2_combout\);

-- Location: IOIBUF_X0_Y7_N1
\SW[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(9),
	o => \SW[9]~input_o\);

-- Location: LCCOMB_X1_Y7_N24
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

-- Location: FF_X1_Y7_N25
\last_SW[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \last_SW[9]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => last_SW(9));

-- Location: IOIBUF_X0_Y9_N8
\SW[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

-- Location: FF_X1_Y7_N19
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
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => last_SW(6));

-- Location: LCCOMB_X1_Y7_N4
\discovered~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \discovered~3_combout\ = (!\SW[8]~input_o\ & (!\SW[9]~input_o\ & (!\SW[6]~input_o\ & !\SW[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datab => \SW[9]~input_o\,
	datac => \SW[6]~input_o\,
	datad => \SW[7]~input_o\,
	combout => \discovered~3_combout\);

-- Location: LCCOMB_X1_Y7_N20
\last_SW[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \last_SW[4]~feeder_combout\ = \SW[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[4]~input_o\,
	combout => \last_SW[4]~feeder_combout\);

-- Location: FF_X1_Y7_N21
\last_SW[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \last_SW[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => last_SW(4));

-- Location: FF_X1_Y7_N11
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
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => last_SW(5));

-- Location: LCCOMB_X1_Y7_N2
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

-- Location: FF_X1_Y7_N3
\last_SW[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \last_SW[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => last_SW(3));

-- Location: LCCOMB_X1_Y7_N10
\discovered~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \discovered~4_combout\ = (\discovered~3_combout\ & (!last_SW(4) & (!last_SW(5) & !last_SW(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \discovered~3_combout\,
	datab => last_SW(4),
	datac => last_SW(5),
	datad => last_SW(3),
	combout => \discovered~4_combout\);

-- Location: LCCOMB_X1_Y7_N18
\discovered~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \discovered~5_combout\ = (!last_SW(9) & (!last_SW(6) & \discovered~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => last_SW(9),
	datac => last_SW(6),
	datad => \discovered~4_combout\,
	combout => \discovered~5_combout\);

-- Location: LCCOMB_X1_Y7_N12
\discovered~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \discovered~6_combout\ = (\discovered~q\) # ((\discovered~1_combout\ & (\discovered~2_combout\ & \discovered~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \discovered~1_combout\,
	datab => \discovered~2_combout\,
	datac => \discovered~q\,
	datad => \discovered~5_combout\,
	combout => \discovered~6_combout\);

-- Location: FF_X1_Y7_N13
discovered : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \discovered~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \discovered~q\);

-- Location: LCCOMB_X1_Y7_N30
\new_discovered_vector[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \new_discovered_vector[0]~0_combout\ = (new_discovered_vector(0)) # (\discovered~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => new_discovered_vector(0),
	datad => \discovered~q\,
	combout => \new_discovered_vector[0]~0_combout\);

-- Location: FF_X1_Y7_N31
\new_discovered_vector[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \new_discovered_vector[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => new_discovered_vector(0));

-- Location: IOIBUF_X0_Y6_N22
\discovered_vector[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_discovered_vector(0),
	o => \discovered_vector[0]~input_o\);

-- Location: LCCOMB_X1_Y6_N20
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

-- Location: IOIBUF_X7_Y24_N1
\discovered_vector[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_discovered_vector(1),
	o => \discovered_vector[1]~input_o\);

-- Location: IOIBUF_X1_Y24_N1
\discovered_vector[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_discovered_vector(2),
	o => \discovered_vector[2]~input_o\);

-- Location: IOIBUF_X28_Y24_N8
\discovered_vector[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_discovered_vector(3),
	o => \discovered_vector[3]~input_o\);

ww_output_disc <= \output_disc~output_o\;

ww_output_discovered_vector(0) <= \output_discovered_vector[0]~output_o\;

ww_output_discovered_vector(1) <= \output_discovered_vector[1]~output_o\;

ww_output_discovered_vector(2) <= \output_discovered_vector[2]~output_o\;

ww_output_discovered_vector(3) <= \output_discovered_vector[3]~output_o\;
END structure;


