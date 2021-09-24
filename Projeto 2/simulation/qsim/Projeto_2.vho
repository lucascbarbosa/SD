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

-- DATE "09/23/2021 22:53:45"

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
-- output_disc	=>  Location: PIN_54,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_discovered_vector[0]	=>  Location: PIN_42,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_discovered_vector[1]	=>  Location: PIN_38,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_discovered_vector[2]	=>  Location: PIN_46,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_discovered_vector[3]	=>  Location: PIN_49,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- discovered_vector[0]	=>  Location: PIN_43,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- discovered_vector[1]	=>  Location: PIN_39,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- discovered_vector[2]	=>  Location: PIN_44,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- discovered_vector[3]	=>  Location: PIN_50,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_59,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_52,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_53,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_51,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_60,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_58,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_55,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_64,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \process_0~2_combout\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \Equal1~2_combout\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \process_0~0_combout\ : std_logic;
SIGNAL \last_SW[8]~feeder_combout\ : std_logic;
SIGNAL \last_SW[6]~feeder_combout\ : std_logic;
SIGNAL \last_SW[5]~feeder_combout\ : std_logic;
SIGNAL \process_0~1_combout\ : std_logic;
SIGNAL \process_0~3_combout\ : std_logic;
SIGNAL \digit[0]~10_combout\ : std_logic;
SIGNAL \digit[1]~8_combout\ : std_logic;
SIGNAL \digit[2]~9_combout\ : std_logic;
SIGNAL \digit[2]~3_combout\ : std_logic;
SIGNAL \digit[2]~4_combout\ : std_logic;
SIGNAL \digit[2]~5_combout\ : std_logic;
SIGNAL \digit[2]~6_combout\ : std_logic;
SIGNAL \digit[2]~0_combout\ : std_logic;
SIGNAL \digit[2]~1_combout\ : std_logic;
SIGNAL \digit[2]~2_combout\ : std_logic;
SIGNAL \digit[2]~7_combout\ : std_logic;
SIGNAL \discovered~0_combout\ : std_logic;
SIGNAL \discovered~q\ : std_logic;
SIGNAL \discovered_vector[0]~input_o\ : std_logic;
SIGNAL \new_discovered_vector[0]~0_combout\ : std_logic;
SIGNAL \output_discovered_vector~0_combout\ : std_logic;
SIGNAL \discovered_vector[1]~input_o\ : std_logic;
SIGNAL \new_discovered_vector[1]~1_combout\ : std_logic;
SIGNAL \output_discovered_vector~1_combout\ : std_logic;
SIGNAL \discovered_vector[2]~input_o\ : std_logic;
SIGNAL \new_discovered_vector[2]~2_combout\ : std_logic;
SIGNAL \output_discovered_vector~2_combout\ : std_logic;
SIGNAL \discovered_vector[3]~input_o\ : std_logic;
SIGNAL \new_discovered_vector[3]~3_combout\ : std_logic;
SIGNAL \output_discovered_vector~3_combout\ : std_logic;
SIGNAL new_discovered_vector : std_logic_vector(3 DOWNTO 0);
SIGNAL last_SW : std_logic_vector(9 DOWNTO 0);
SIGNAL digit : std_logic_vector(2 DOWNTO 0);

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

-- Location: IOOBUF_X18_Y0_N23
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

-- Location: IOOBUF_X3_Y0_N2
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

-- Location: IOOBUF_X1_Y0_N23
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

-- Location: IOOBUF_X7_Y0_N2
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

-- Location: IOOBUF_X13_Y0_N16
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

-- Location: IOIBUF_X18_Y0_N15
\SW[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: FF_X17_Y5_N1
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

-- Location: IOIBUF_X0_Y11_N22
\SW[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: FF_X17_Y5_N15
\last_SW[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \SW[3]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => last_SW(3));

-- Location: IOIBUF_X25_Y0_N1
\SW[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

-- Location: FF_X17_Y5_N7
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
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => last_SW(4));

-- Location: IOIBUF_X23_Y0_N15
\SW[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: FF_X17_Y5_N31
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

-- Location: LCCOMB_X17_Y5_N6
\process_0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_0~2_combout\ = (!last_SW(1) & (!last_SW(3) & (!last_SW(4) & !last_SW(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => last_SW(1),
	datab => last_SW(3),
	datac => last_SW(4),
	datad => last_SW(0),
	combout => \process_0~2_combout\);

-- Location: IOIBUF_X0_Y11_N15
\SW[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: LCCOMB_X17_Y5_N14
\Equal1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~2_combout\ = (!\SW[4]~input_o\ & (!\SW[1]~input_o\ & (!\SW[3]~input_o\ & !\SW[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[4]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \SW[3]~input_o\,
	datad => \SW[2]~input_o\,
	combout => \Equal1~2_combout\);

-- Location: IOIBUF_X21_Y0_N8
\SW[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(9),
	o => \SW[9]~input_o\);

-- Location: FF_X17_Y5_N17
\last_SW[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \SW[9]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => last_SW(9));

-- Location: IOIBUF_X16_Y0_N8
\SW[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

-- Location: IOIBUF_X16_Y0_N1
\SW[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

-- Location: IOIBUF_X16_Y0_N22
\SW[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

-- Location: LCCOMB_X16_Y5_N4
\Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (!\SW[5]~input_o\ & (!\SW[6]~input_o\ & (!\SW[7]~input_o\ & !\SW[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[5]~input_o\,
	datab => \SW[6]~input_o\,
	datac => \SW[7]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \Equal1~0_combout\);

-- Location: IOIBUF_X23_Y0_N8
\SW[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

-- Location: LCCOMB_X16_Y5_N14
\Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~1_combout\ = (\Equal1~0_combout\ & !\SW[8]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal1~0_combout\,
	datad => \SW[8]~input_o\,
	combout => \Equal1~1_combout\);

-- Location: LCCOMB_X17_Y5_N16
\process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_0~0_combout\ = (!last_SW(9) & (((\SW[9]~input_o\) # (!\Equal1~1_combout\)) # (!\Equal1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~2_combout\,
	datab => \SW[9]~input_o\,
	datac => last_SW(9),
	datad => \Equal1~1_combout\,
	combout => \process_0~0_combout\);

-- Location: FF_X17_Y5_N5
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
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => last_SW(2));

-- Location: LCCOMB_X16_Y5_N12
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

-- Location: FF_X16_Y5_N13
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

-- Location: LCCOMB_X16_Y5_N16
\last_SW[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \last_SW[6]~feeder_combout\ = \SW[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[6]~input_o\,
	combout => \last_SW[6]~feeder_combout\);

-- Location: FF_X16_Y5_N17
\last_SW[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \last_SW[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => last_SW(6));

-- Location: FF_X16_Y5_N11
\last_SW[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \SW[7]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => last_SW(7));

-- Location: LCCOMB_X16_Y5_N18
\last_SW[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \last_SW[5]~feeder_combout\ = \SW[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[5]~input_o\,
	combout => \last_SW[5]~feeder_combout\);

-- Location: FF_X16_Y5_N19
\last_SW[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \last_SW[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => last_SW(5));

-- Location: LCCOMB_X16_Y5_N10
\process_0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_0~1_combout\ = (!last_SW(8) & (!last_SW(6) & (!last_SW(7) & !last_SW(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => last_SW(8),
	datab => last_SW(6),
	datac => last_SW(7),
	datad => last_SW(5),
	combout => \process_0~1_combout\);

-- Location: LCCOMB_X17_Y5_N4
\process_0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_0~3_combout\ = (\process_0~2_combout\ & (\process_0~0_combout\ & (!last_SW(2) & \process_0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~2_combout\,
	datab => \process_0~0_combout\,
	datac => last_SW(2),
	datad => \process_0~1_combout\,
	combout => \process_0~3_combout\);

-- Location: LCCOMB_X17_Y5_N22
\digit[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \digit[0]~10_combout\ = digit(0) $ (\digit[2]~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => digit(0),
	datad => \digit[2]~7_combout\,
	combout => \digit[0]~10_combout\);

-- Location: FF_X17_Y5_N23
\digit[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \digit[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => digit(0));

-- Location: LCCOMB_X17_Y5_N28
\digit[1]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \digit[1]~8_combout\ = digit(1) $ (((digit(0) & \digit[2]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => digit(0),
	datac => digit(1),
	datad => \digit[2]~7_combout\,
	combout => \digit[1]~8_combout\);

-- Location: FF_X17_Y5_N29
\digit[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \digit[1]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => digit(1));

-- Location: LCCOMB_X17_Y5_N2
\digit[2]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \digit[2]~9_combout\ = digit(2) $ (((digit(0) & (digit(1) & \digit[2]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => digit(0),
	datab => digit(1),
	datac => digit(2),
	datad => \digit[2]~7_combout\,
	combout => \digit[2]~9_combout\);

-- Location: FF_X17_Y5_N3
\digit[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \digit[2]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => digit(2));

-- Location: LCCOMB_X17_Y2_N12
\digit[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \digit[2]~3_combout\ = (\SW[1]~input_o\) # (\SW[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[1]~input_o\,
	datad => \SW[2]~input_o\,
	combout => \digit[2]~3_combout\);

-- Location: LCCOMB_X17_Y5_N8
\digit[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \digit[2]~4_combout\ = (digit(0) & ((digit(2)) # ((!\SW[4]~input_o\ & \SW[3]~input_o\)))) # (!digit(0) & (\SW[4]~input_o\ & (!\SW[3]~input_o\ & !digit(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[4]~input_o\,
	datab => \SW[3]~input_o\,
	datac => digit(0),
	datad => digit(2),
	combout => \digit[2]~4_combout\);

-- Location: LCCOMB_X17_Y5_N18
\digit[2]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \digit[2]~5_combout\ = (digit(1) & (((digit(2) & !\digit[2]~4_combout\)))) # (!digit(1) & (\digit[2]~4_combout\ & ((digit(2)) # (!\digit[2]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digit[2]~3_combout\,
	datab => digit(1),
	datac => digit(2),
	datad => \digit[2]~4_combout\,
	combout => \digit[2]~5_combout\);

-- Location: LCCOMB_X17_Y5_N20
\digit[2]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \digit[2]~6_combout\ = (\SW[9]~input_o\ & (\Equal1~2_combout\ & (digit(2) & !\digit[2]~5_combout\))) # (!\SW[9]~input_o\ & (((!digit(2) & \digit[2]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~2_combout\,
	datab => \SW[9]~input_o\,
	datac => digit(2),
	datad => \digit[2]~5_combout\,
	combout => \digit[2]~6_combout\);

-- Location: LCCOMB_X17_Y5_N30
\digit[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \digit[2]~0_combout\ = (!\SW[9]~input_o\ & !digit(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[9]~input_o\,
	datad => digit(2),
	combout => \digit[2]~0_combout\);

-- Location: LCCOMB_X17_Y5_N12
\digit[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \digit[2]~1_combout\ = (!\SW[4]~input_o\ & (!\SW[3]~input_o\ & (\digit[2]~0_combout\ & digit(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[4]~input_o\,
	datab => \SW[3]~input_o\,
	datac => \digit[2]~0_combout\,
	datad => digit(1),
	combout => \digit[2]~1_combout\);

-- Location: LCCOMB_X17_Y5_N0
\digit[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \digit[2]~2_combout\ = (\digit[2]~1_combout\ & ((\SW[2]~input_o\ & (!digit(0) & !\SW[1]~input_o\)) # (!\SW[2]~input_o\ & (digit(0) & \SW[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => digit(0),
	datac => \SW[1]~input_o\,
	datad => \digit[2]~1_combout\,
	combout => \digit[2]~2_combout\);

-- Location: LCCOMB_X17_Y5_N10
\digit[2]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \digit[2]~7_combout\ = (\Equal1~1_combout\ & (\process_0~3_combout\ & ((\digit[2]~6_combout\) # (\digit[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~1_combout\,
	datab => \digit[2]~6_combout\,
	datac => \process_0~3_combout\,
	datad => \digit[2]~2_combout\,
	combout => \digit[2]~7_combout\);

-- Location: LCCOMB_X17_Y5_N24
\discovered~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \discovered~0_combout\ = (\digit[2]~7_combout\) # ((!\process_0~3_combout\ & \discovered~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \process_0~3_combout\,
	datac => \discovered~q\,
	datad => \digit[2]~7_combout\,
	combout => \discovered~0_combout\);

-- Location: FF_X17_Y5_N25
discovered : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \discovered~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \discovered~q\);

-- Location: IOIBUF_X5_Y0_N22
\discovered_vector[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_discovered_vector(0),
	o => \discovered_vector[0]~input_o\);

-- Location: LCCOMB_X13_Y5_N20
\new_discovered_vector[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \new_discovered_vector[0]~0_combout\ = (new_discovered_vector(0)) # ((\discovered~q\ & (digit(0) & !digit(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \discovered~q\,
	datab => digit(0),
	datac => new_discovered_vector(0),
	datad => digit(1),
	combout => \new_discovered_vector[0]~0_combout\);

-- Location: FF_X13_Y5_N21
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

-- Location: LCCOMB_X5_Y1_N28
\output_discovered_vector~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \output_discovered_vector~0_combout\ = (\discovered_vector[0]~input_o\) # (new_discovered_vector(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \discovered_vector[0]~input_o\,
	datad => new_discovered_vector(0),
	combout => \output_discovered_vector~0_combout\);

-- Location: IOIBUF_X1_Y0_N15
\discovered_vector[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_discovered_vector(1),
	o => \discovered_vector[1]~input_o\);

-- Location: LCCOMB_X13_Y5_N6
\new_discovered_vector[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \new_discovered_vector[1]~1_combout\ = (new_discovered_vector(1)) # ((\discovered~q\ & (!digit(0) & digit(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \discovered~q\,
	datab => digit(0),
	datac => new_discovered_vector(1),
	datad => digit(1),
	combout => \new_discovered_vector[1]~1_combout\);

-- Location: FF_X13_Y5_N7
\new_discovered_vector[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \new_discovered_vector[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => new_discovered_vector(1));

-- Location: LCCOMB_X1_Y1_N28
\output_discovered_vector~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \output_discovered_vector~1_combout\ = (\discovered_vector[1]~input_o\) # (new_discovered_vector(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \discovered_vector[1]~input_o\,
	datad => new_discovered_vector(1),
	combout => \output_discovered_vector~1_combout\);

-- Location: IOIBUF_X5_Y0_N15
\discovered_vector[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_discovered_vector(2),
	o => \discovered_vector[2]~input_o\);

-- Location: LCCOMB_X13_Y5_N28
\new_discovered_vector[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \new_discovered_vector[2]~2_combout\ = (new_discovered_vector(2)) # ((\discovered~q\ & (digit(0) & digit(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \discovered~q\,
	datab => digit(0),
	datac => new_discovered_vector(2),
	datad => digit(1),
	combout => \new_discovered_vector[2]~2_combout\);

-- Location: FF_X13_Y5_N29
\new_discovered_vector[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \new_discovered_vector[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => new_discovered_vector(2));

-- Location: LCCOMB_X8_Y1_N28
\output_discovered_vector~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \output_discovered_vector~2_combout\ = (\discovered_vector[2]~input_o\) # (new_discovered_vector(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \discovered_vector[2]~input_o\,
	datad => new_discovered_vector(2),
	combout => \output_discovered_vector~2_combout\);

-- Location: IOIBUF_X13_Y0_N1
\discovered_vector[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_discovered_vector(3),
	o => \discovered_vector[3]~input_o\);

-- Location: LCCOMB_X17_Y5_N26
\new_discovered_vector[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \new_discovered_vector[3]~3_combout\ = (new_discovered_vector(3)) # ((\discovered~q\ & digit(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \discovered~q\,
	datab => digit(2),
	datac => new_discovered_vector(3),
	combout => \new_discovered_vector[3]~3_combout\);

-- Location: FF_X17_Y5_N27
\new_discovered_vector[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \new_discovered_vector[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => new_discovered_vector(3));

-- Location: LCCOMB_X13_Y2_N24
\output_discovered_vector~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \output_discovered_vector~3_combout\ = (\discovered_vector[3]~input_o\) # (new_discovered_vector(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \discovered_vector[3]~input_o\,
	datad => new_discovered_vector(3),
	combout => \output_discovered_vector~3_combout\);

ww_output_disc <= \output_disc~output_o\;

ww_output_discovered_vector(0) <= \output_discovered_vector[0]~output_o\;

ww_output_discovered_vector(1) <= \output_discovered_vector[1]~output_o\;

ww_output_discovered_vector(2) <= \output_discovered_vector[2]~output_o\;

ww_output_discovered_vector(3) <= \output_discovered_vector[3]~output_o\;
END structure;


