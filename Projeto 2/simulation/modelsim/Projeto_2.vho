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

-- DATE "09/23/2021 18:22:27"

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


LIBRARY CYCLONEIVE;
LIBRARY IEEE;
LIBRARY STD;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE STD.STANDARD.ALL;

ENTITY 	switches IS
    PORT (
	clock : IN std_logic;
	secret : IN STD.STANDARD.integer range 0 TO 9999;
	remaining_lives : IN STD.STANDARD.integer range 0 TO 5;
	SW : IN std_logic_vector(9 DOWNTO 0);
	discovered_vector : IN std_logic_vector(3 DOWNTO 0);
	output_remaining_lives : OUT STD.STANDARD.integer range 0 TO 5;
	output_discovered_vector : OUT std_logic_vector(3 DOWNTO 0)
	);
END switches;

-- Design Ports Information
-- clock	=>  Location: PIN_76,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- secret[0]	=>  Location: PIN_50,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- secret[1]	=>  Location: PIN_59,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- secret[2]	=>  Location: PIN_28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- secret[3]	=>  Location: PIN_58,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- secret[4]	=>  Location: PIN_106,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- secret[5]	=>  Location: PIN_49,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- secret[6]	=>  Location: PIN_103,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- secret[7]	=>  Location: PIN_10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- secret[8]	=>  Location: PIN_124,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- secret[9]	=>  Location: PIN_88,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- secret[10]	=>  Location: PIN_89,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- secret[11]	=>  Location: PIN_128,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- secret[12]	=>  Location: PIN_77,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- secret[13]	=>  Location: PIN_32,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- remaining_lives[0]	=>  Location: PIN_7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- remaining_lives[1]	=>  Location: PIN_141,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- remaining_lives[2]	=>  Location: PIN_73,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_112,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_43,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_34,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_143,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_31,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_99,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_144,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_46,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_90,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_91,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_remaining_lives[0]	=>  Location: PIN_67,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_remaining_lives[1]	=>  Location: PIN_33,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_remaining_lives[2]	=>  Location: PIN_136,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_discovered_vector[0]	=>  Location: PIN_38,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_discovered_vector[1]	=>  Location: PIN_66,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_discovered_vector[2]	=>  Location: PIN_132,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_discovered_vector[3]	=>  Location: PIN_111,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- discovered_vector[0]	=>  Location: PIN_39,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- discovered_vector[1]	=>  Location: PIN_65,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- discovered_vector[2]	=>  Location: PIN_133,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- discovered_vector[3]	=>  Location: PIN_110,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_secret : std_logic_vector(13 DOWNTO 0);
SIGNAL ww_remaining_lives : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_SW : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_discovered_vector : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_output_remaining_lives : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_output_discovered_vector : std_logic_vector(3 DOWNTO 0);
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \secret[0]~input_o\ : std_logic;
SIGNAL \secret[1]~input_o\ : std_logic;
SIGNAL \secret[2]~input_o\ : std_logic;
SIGNAL \secret[3]~input_o\ : std_logic;
SIGNAL \secret[4]~input_o\ : std_logic;
SIGNAL \secret[5]~input_o\ : std_logic;
SIGNAL \secret[6]~input_o\ : std_logic;
SIGNAL \secret[7]~input_o\ : std_logic;
SIGNAL \secret[8]~input_o\ : std_logic;
SIGNAL \secret[9]~input_o\ : std_logic;
SIGNAL \secret[10]~input_o\ : std_logic;
SIGNAL \secret[11]~input_o\ : std_logic;
SIGNAL \secret[12]~input_o\ : std_logic;
SIGNAL \secret[13]~input_o\ : std_logic;
SIGNAL \remaining_lives[0]~input_o\ : std_logic;
SIGNAL \remaining_lives[1]~input_o\ : std_logic;
SIGNAL \remaining_lives[2]~input_o\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \output_remaining_lives[0]~output_o\ : std_logic;
SIGNAL \output_remaining_lives[1]~output_o\ : std_logic;
SIGNAL \output_remaining_lives[2]~output_o\ : std_logic;
SIGNAL \output_discovered_vector[0]~output_o\ : std_logic;
SIGNAL \output_discovered_vector[1]~output_o\ : std_logic;
SIGNAL \output_discovered_vector[2]~output_o\ : std_logic;
SIGNAL \output_discovered_vector[3]~output_o\ : std_logic;
SIGNAL \discovered_vector[0]~input_o\ : std_logic;
SIGNAL \discovered_vector[1]~input_o\ : std_logic;
SIGNAL \discovered_vector[2]~input_o\ : std_logic;
SIGNAL \discovered_vector[3]~input_o\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clock <= clock;
ww_secret <= IEEE.STD_LOGIC_ARITH.CONV_STD_LOGIC_VECTOR(secret, 14);
ww_remaining_lives <= IEEE.STD_LOGIC_ARITH.CONV_STD_LOGIC_VECTOR(remaining_lives, 3);
ww_SW <= SW;
ww_discovered_vector <= discovered_vector;
output_remaining_lives <= IEEE.STD_LOGIC_ARITH.CONV_INTEGER(UNSIGNED(ww_output_remaining_lives));
output_discovered_vector <= ww_output_discovered_vector;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X30_Y0_N23
\output_remaining_lives[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output_remaining_lives[0]~output_o\);

-- Location: IOOBUF_X0_Y6_N23
\output_remaining_lives[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output_remaining_lives[1]~output_o\);

-- Location: IOOBUF_X9_Y24_N9
\output_remaining_lives[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output_remaining_lives[2]~output_o\);

-- Location: IOOBUF_X1_Y0_N23
\output_discovered_vector[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \discovered_vector[0]~input_o\,
	devoe => ww_devoe,
	o => \output_discovered_vector[0]~output_o\);

-- Location: IOOBUF_X28_Y0_N2
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

-- Location: IOOBUF_X13_Y24_N16
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

-- Location: IOOBUF_X30_Y24_N23
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

-- Location: IOIBUF_X1_Y0_N15
\discovered_vector[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_discovered_vector(0),
	o => \discovered_vector[0]~input_o\);

-- Location: IOIBUF_X28_Y0_N22
\discovered_vector[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_discovered_vector(1),
	o => \discovered_vector[1]~input_o\);

-- Location: IOIBUF_X13_Y24_N22
\discovered_vector[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_discovered_vector(2),
	o => \discovered_vector[2]~input_o\);

-- Location: IOIBUF_X30_Y24_N1
\discovered_vector[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_discovered_vector(3),
	o => \discovered_vector[3]~input_o\);

-- Location: IOIBUF_X34_Y4_N22
\clock~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock,
	o => \clock~input_o\);

-- Location: IOIBUF_X13_Y0_N1
\secret[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_secret(0),
	o => \secret[0]~input_o\);

-- Location: IOIBUF_X23_Y0_N15
\secret[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_secret(1),
	o => \secret[1]~input_o\);

-- Location: IOIBUF_X0_Y9_N8
\secret[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_secret(2),
	o => \secret[2]~input_o\);

-- Location: IOIBUF_X21_Y0_N8
\secret[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_secret(3),
	o => \secret[3]~input_o\);

-- Location: IOIBUF_X34_Y20_N8
\secret[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_secret(4),
	o => \secret[4]~input_o\);

-- Location: IOIBUF_X13_Y0_N15
\secret[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_secret(5),
	o => \secret[5]~input_o\);

-- Location: IOIBUF_X34_Y18_N15
\secret[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_secret(6),
	o => \secret[6]~input_o\);

-- Location: IOIBUF_X0_Y18_N15
\secret[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_secret(7),
	o => \secret[7]~input_o\);

-- Location: IOIBUF_X18_Y24_N15
\secret[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_secret(8),
	o => \secret[8]~input_o\);

-- Location: IOIBUF_X34_Y12_N22
\secret[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_secret(9),
	o => \secret[9]~input_o\);

-- Location: IOIBUF_X34_Y12_N15
\secret[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_secret(10),
	o => \secret[10]~input_o\);

-- Location: IOIBUF_X16_Y24_N15
\secret[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_secret(11),
	o => \secret[11]~input_o\);

-- Location: IOIBUF_X34_Y4_N15
\secret[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_secret(12),
	o => \secret[12]~input_o\);

-- Location: IOIBUF_X0_Y6_N15
\secret[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_secret(13),
	o => \secret[13]~input_o\);

-- Location: IOIBUF_X0_Y21_N8
\remaining_lives[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_remaining_lives(0),
	o => \remaining_lives[0]~input_o\);

-- Location: IOIBUF_X5_Y24_N8
\remaining_lives[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_remaining_lives(1),
	o => \remaining_lives[1]~input_o\);

-- Location: IOIBUF_X34_Y2_N22
\remaining_lives[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_remaining_lives(2),
	o => \remaining_lives[2]~input_o\);

-- Location: IOIBUF_X28_Y24_N1
\SW[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: IOIBUF_X5_Y0_N22
\SW[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: IOIBUF_X0_Y5_N15
\SW[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: IOIBUF_X1_Y24_N1
\SW[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: IOIBUF_X0_Y7_N1
\SW[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

-- Location: IOIBUF_X34_Y17_N15
\SW[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

-- Location: IOIBUF_X1_Y24_N8
\SW[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

-- Location: IOIBUF_X7_Y0_N1
\SW[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

-- Location: IOIBUF_X34_Y12_N8
\SW[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

-- Location: IOIBUF_X34_Y12_N1
\SW[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(9),
	o => \SW[9]~input_o\);

ww_output_remaining_lives(0) <= \output_remaining_lives[0]~output_o\;

ww_output_remaining_lives(1) <= \output_remaining_lives[1]~output_o\;

ww_output_remaining_lives(2) <= \output_remaining_lives[2]~output_o\;

ww_output_discovered_vector(0) <= \output_discovered_vector[0]~output_o\;

ww_output_discovered_vector(1) <= \output_discovered_vector[1]~output_o\;

ww_output_discovered_vector(2) <= \output_discovered_vector[2]~output_o\;

ww_output_discovered_vector(3) <= \output_discovered_vector[3]~output_o\;
END structure;


