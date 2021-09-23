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

-- DATE "09/23/2021 15:16:19"

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

ENTITY 	main IS
    PORT (
	CLOCK_50 : IN std_logic;
	HEX0 : OUT std_logic_vector(6 DOWNTO 0);
	HEX2 : OUT std_logic_vector(6 DOWNTO 0);
	HEX3 : OUT std_logic_vector(6 DOWNTO 0);
	HEX4 : OUT std_logic_vector(6 DOWNTO 0);
	HEX5 : OUT std_logic_vector(6 DOWNTO 0);
	LEDR : OUT std_logic_vector(4 DOWNTO 0);
	SW : IN std_logic_vector(9 DOWNTO 0)
	);
END main;

-- Design Ports Information
-- HEX0[0]	=>  Location: PIN_137,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_46,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_52,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_53,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_138,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_133,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[6]	=>  Location: PIN_39,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[0]	=>  Location: PIN_69,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[1]	=>  Location: PIN_68,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[2]	=>  Location: PIN_67,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[3]	=>  Location: PIN_71,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[4]	=>  Location: PIN_144,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[5]	=>  Location: PIN_72,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[6]	=>  Location: PIN_110,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[0]	=>  Location: PIN_65,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[1]	=>  Location: PIN_75,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[2]	=>  Location: PIN_114,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[3]	=>  Location: PIN_73,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[4]	=>  Location: PIN_74,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[5]	=>  Location: PIN_136,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[6]	=>  Location: PIN_111,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[0]	=>  Location: PIN_70,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[1]	=>  Location: PIN_113,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[2]	=>  Location: PIN_112,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[3]	=>  Location: PIN_120,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[4]	=>  Location: PIN_85,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[5]	=>  Location: PIN_121,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[6]	=>  Location: PIN_115,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[0]	=>  Location: PIN_143,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[1]	=>  Location: PIN_135,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[2]	=>  Location: PIN_124,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[3]	=>  Location: PIN_32,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[4]	=>  Location: PIN_132,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[5]	=>  Location: PIN_125,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[6]	=>  Location: PIN_141,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_38,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_59,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_80,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_77,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[4]	=>  Location: PIN_50,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_51,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_66,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_76,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_64,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_49,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_54,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_119,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_55,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_60,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_58,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF main IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX5 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_SW : std_logic_vector(9 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \HEX0[0]~output_o\ : std_logic;
SIGNAL \HEX0[1]~output_o\ : std_logic;
SIGNAL \HEX0[2]~output_o\ : std_logic;
SIGNAL \HEX0[3]~output_o\ : std_logic;
SIGNAL \HEX0[4]~output_o\ : std_logic;
SIGNAL \HEX0[5]~output_o\ : std_logic;
SIGNAL \HEX0[6]~output_o\ : std_logic;
SIGNAL \HEX2[0]~output_o\ : std_logic;
SIGNAL \HEX2[1]~output_o\ : std_logic;
SIGNAL \HEX2[2]~output_o\ : std_logic;
SIGNAL \HEX2[3]~output_o\ : std_logic;
SIGNAL \HEX2[4]~output_o\ : std_logic;
SIGNAL \HEX2[5]~output_o\ : std_logic;
SIGNAL \HEX2[6]~output_o\ : std_logic;
SIGNAL \HEX3[0]~output_o\ : std_logic;
SIGNAL \HEX3[1]~output_o\ : std_logic;
SIGNAL \HEX3[2]~output_o\ : std_logic;
SIGNAL \HEX3[3]~output_o\ : std_logic;
SIGNAL \HEX3[4]~output_o\ : std_logic;
SIGNAL \HEX3[5]~output_o\ : std_logic;
SIGNAL \HEX3[6]~output_o\ : std_logic;
SIGNAL \HEX4[0]~output_o\ : std_logic;
SIGNAL \HEX4[1]~output_o\ : std_logic;
SIGNAL \HEX4[2]~output_o\ : std_logic;
SIGNAL \HEX4[3]~output_o\ : std_logic;
SIGNAL \HEX4[4]~output_o\ : std_logic;
SIGNAL \HEX4[5]~output_o\ : std_logic;
SIGNAL \HEX4[6]~output_o\ : std_logic;
SIGNAL \HEX5[0]~output_o\ : std_logic;
SIGNAL \HEX5[1]~output_o\ : std_logic;
SIGNAL \HEX5[2]~output_o\ : std_logic;
SIGNAL \HEX5[3]~output_o\ : std_logic;
SIGNAL \HEX5[4]~output_o\ : std_logic;
SIGNAL \HEX5[5]~output_o\ : std_logic;
SIGNAL \HEX5[6]~output_o\ : std_logic;
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \LEDR[1]~output_o\ : std_logic;
SIGNAL \LEDR[2]~output_o\ : std_logic;
SIGNAL \LEDR[3]~output_o\ : std_logic;
SIGNAL \LEDR[4]~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \sws|Equal1~1_combout\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \sws|Equal4~0_combout\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \sws|Equal8~0_combout\ : std_logic;
SIGNAL \sws|Equal6~0_combout\ : std_logic;
SIGNAL \sws|output_cs[2]~1_combout\ : std_logic;
SIGNAL \sws|Equal4~1_combout\ : std_logic;
SIGNAL \sws|Equal9~0_combout\ : std_logic;
SIGNAL \sws|Equal2~1_combout\ : std_logic;
SIGNAL \sws|Equal2~0_combout\ : std_logic;
SIGNAL \sws|Equal3~0_combout\ : std_logic;
SIGNAL \sws|output_cs[2]~2_combout\ : std_logic;
SIGNAL \sws|output_cs[2]~3_combout\ : std_logic;
SIGNAL \sws|output_rl~17_combout\ : std_logic;
SIGNAL \sws|output_rl~16_combout\ : std_logic;
SIGNAL \sws|output_rl[2]~7_combout\ : std_logic;
SIGNAL \sws|output_rl[2]~3_combout\ : std_logic;
SIGNAL \sws|output_rl[2]~26_combout\ : std_logic;
SIGNAL \sws|output_rl[2]~20_combout\ : std_logic;
SIGNAL \sws|Equal1~0_combout\ : std_logic;
SIGNAL \sws|Equal18~0_combout\ : std_logic;
SIGNAL \sws|output_rl~18_combout\ : std_logic;
SIGNAL \sws|output_rl[2]~19_combout\ : std_logic;
SIGNAL \sws|output_rl[2]~21_combout\ : std_logic;
SIGNAL \sws|output_rl[0]~22_combout\ : std_logic;
SIGNAL \sws|output_rl[1]~25_combout\ : std_logic;
SIGNAL \disp_result|Equal0~0_combout\ : std_logic;
SIGNAL \sws|process_0~0_combout\ : std_logic;
SIGNAL \sws|last_SW[0]~feeder_combout\ : std_logic;
SIGNAL \sws|process_0~2_combout\ : std_logic;
SIGNAL \sws|last_SW[8]~feeder_combout\ : std_logic;
SIGNAL \sws|process_0~1_combout\ : std_logic;
SIGNAL \sws|process_0~3_combout\ : std_logic;
SIGNAL \sws|output_rl[2]~23_combout\ : std_logic;
SIGNAL \sws|output_rl[2]~24_combout\ : std_logic;
SIGNAL \sws|output_cs[2]~0_combout\ : std_logic;
SIGNAL \sws|output_cs[2]~4_combout\ : std_logic;
SIGNAL \sws|output_cs[0]~6_combout\ : std_logic;
SIGNAL \sws|output_cs[1]~5_combout\ : std_logic;
SIGNAL \sws|output_cs[2]~7_combout\ : std_logic;
SIGNAL \disp_result|HEX0[0]~0_combout\ : std_logic;
SIGNAL \disp_result|HEX0[2]~1_combout\ : std_logic;
SIGNAL \disps|disp1|LessThan0~0_combout\ : std_logic;
SIGNAL \disps|disp3|LessThan0~0_combout\ : std_logic;
SIGNAL \disp_result|Equal0~1_combout\ : std_logic;
SIGNAL \lvs|Mux1~0_combout\ : std_logic;
SIGNAL \lvs|Mux0~0_combout\ : std_logic;
SIGNAL \sws|output_cs\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \sws|output_rl\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \sws|last_SW\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \disp_result|ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \disps|disp3|ALT_INV_LessThan0~0_combout\ : std_logic;
SIGNAL \sws|ALT_INV_Equal9~0_combout\ : std_logic;
SIGNAL \sws|ALT_INV_output_rl\ : std_logic_vector(2 DOWNTO 2);
SIGNAL \sws|ALT_INV_output_cs\ : std_logic_vector(2 DOWNTO 2);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
HEX0 <= ww_HEX0;
HEX2 <= ww_HEX2;
HEX3 <= ww_HEX3;
HEX4 <= ww_HEX4;
HEX5 <= ww_HEX5;
LEDR <= ww_LEDR;
ww_SW <= SW;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);
\disp_result|ALT_INV_Equal0~1_combout\ <= NOT \disp_result|Equal0~1_combout\;
\disps|disp3|ALT_INV_LessThan0~0_combout\ <= NOT \disps|disp3|LessThan0~0_combout\;
\sws|ALT_INV_Equal9~0_combout\ <= NOT \sws|Equal9~0_combout\;
\sws|ALT_INV_output_rl\(2) <= NOT \sws|output_rl\(2);
\sws|ALT_INV_output_cs\(2) <= NOT \sws|output_cs\(2);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X7_Y24_N2
\HEX0[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \disp_result|HEX0[0]~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[0]~output_o\);

-- Location: IOOBUF_X7_Y0_N2
\HEX0[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \disp_result|Equal0~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[1]~output_o\);

-- Location: IOOBUF_X16_Y0_N9
\HEX0[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \disp_result|HEX0[2]~1_combout\,
	devoe => ww_devoe,
	o => \HEX0[2]~output_o\);

-- Location: IOOBUF_X16_Y0_N2
\HEX0[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \disp_result|HEX0[2]~1_combout\,
	devoe => ww_devoe,
	o => \HEX0[3]~output_o\);

-- Location: IOOBUF_X7_Y24_N9
\HEX0[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \disp_result|HEX0[0]~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[4]~output_o\);

-- Location: IOOBUF_X13_Y24_N23
\HEX0[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \disp_result|HEX0[0]~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[5]~output_o\);

-- Location: IOOBUF_X1_Y0_N16
\HEX0[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \disp_result|Equal0~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[6]~output_o\);

-- Location: IOOBUF_X30_Y0_N2
\HEX2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sws|ALT_INV_output_cs\(2),
	devoe => ww_devoe,
	o => \HEX2[0]~output_o\);

-- Location: IOOBUF_X30_Y0_N9
\HEX2[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sws|ALT_INV_output_cs\(2),
	devoe => ww_devoe,
	o => \HEX2[1]~output_o\);

-- Location: IOOBUF_X30_Y0_N23
\HEX2[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sws|ALT_INV_output_cs\(2),
	devoe => ww_devoe,
	o => \HEX2[2]~output_o\);

-- Location: IOOBUF_X32_Y0_N16
\HEX2[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sws|ALT_INV_output_cs\(2),
	devoe => ww_devoe,
	o => \HEX2[3]~output_o\);

-- Location: IOOBUF_X1_Y24_N9
\HEX2[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX2[4]~output_o\);

-- Location: IOOBUF_X32_Y0_N9
\HEX2[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX2[5]~output_o\);

-- Location: IOOBUF_X30_Y24_N2
\HEX2[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX2[6]~output_o\);

-- Location: IOOBUF_X28_Y0_N23
\HEX3[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \disps|disp1|LessThan0~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[0]~output_o\);

-- Location: IOOBUF_X34_Y3_N23
\HEX3[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \disps|disp1|LessThan0~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[1]~output_o\);

-- Location: IOOBUF_X28_Y24_N16
\HEX3[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX3[2]~output_o\);

-- Location: IOOBUF_X34_Y2_N23
\HEX3[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \disps|disp1|LessThan0~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[3]~output_o\);

-- Location: IOOBUF_X34_Y2_N16
\HEX3[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \disps|disp1|LessThan0~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[4]~output_o\);

-- Location: IOOBUF_X9_Y24_N9
\HEX3[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX3[5]~output_o\);

-- Location: IOOBUF_X30_Y24_N23
\HEX3[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX3[6]~output_o\);

-- Location: IOOBUF_X32_Y0_N23
\HEX4[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX4[0]~output_o\);

-- Location: IOOBUF_X28_Y24_N9
\HEX4[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sws|Equal9~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[1]~output_o\);

-- Location: IOOBUF_X28_Y24_N2
\HEX4[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sws|Equal9~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[2]~output_o\);

-- Location: IOOBUF_X23_Y24_N9
\HEX4[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX4[3]~output_o\);

-- Location: IOOBUF_X34_Y9_N9
\HEX4[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX4[4]~output_o\);

-- Location: IOOBUF_X23_Y24_N16
\HEX4[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX4[5]~output_o\);

-- Location: IOOBUF_X28_Y24_N23
\HEX4[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sws|ALT_INV_Equal9~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[6]~output_o\);

-- Location: IOOBUF_X1_Y24_N2
\HEX5[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \disps|disp3|ALT_INV_LessThan0~0_combout\,
	devoe => ww_devoe,
	o => \HEX5[0]~output_o\);

-- Location: IOOBUF_X11_Y24_N16
\HEX5[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \disps|disp3|ALT_INV_LessThan0~0_combout\,
	devoe => ww_devoe,
	o => \HEX5[1]~output_o\);

-- Location: IOOBUF_X18_Y24_N16
\HEX5[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \disps|disp3|ALT_INV_LessThan0~0_combout\,
	devoe => ww_devoe,
	o => \HEX5[2]~output_o\);

-- Location: IOOBUF_X0_Y6_N16
\HEX5[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \disps|disp3|ALT_INV_LessThan0~0_combout\,
	devoe => ww_devoe,
	o => \HEX5[3]~output_o\);

-- Location: IOOBUF_X13_Y24_N16
\HEX5[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \disps|disp3|ALT_INV_LessThan0~0_combout\,
	devoe => ww_devoe,
	o => \HEX5[4]~output_o\);

-- Location: IOOBUF_X18_Y24_N23
\HEX5[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \disps|disp3|ALT_INV_LessThan0~0_combout\,
	devoe => ww_devoe,
	o => \HEX5[5]~output_o\);

-- Location: IOOBUF_X5_Y24_N9
\HEX5[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \disps|disp3|LessThan0~0_combout\,
	devoe => ww_devoe,
	o => \HEX5[6]~output_o\);

-- Location: IOOBUF_X1_Y0_N23
\LEDR[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \disp_result|Equal0~0_combout\,
	devoe => ww_devoe,
	o => \LEDR[0]~output_o\);

-- Location: IOOBUF_X23_Y0_N16
\LEDR[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \disp_result|ALT_INV_Equal0~1_combout\,
	devoe => ww_devoe,
	o => \LEDR[1]~output_o\);

-- Location: IOOBUF_X34_Y7_N9
\LEDR[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \lvs|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \LEDR[2]~output_o\);

-- Location: IOOBUF_X34_Y4_N16
\LEDR[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sws|ALT_INV_output_rl\(2),
	devoe => ww_devoe,
	o => \LEDR[3]~output_o\);

-- Location: IOOBUF_X13_Y0_N2
\LEDR[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \lvs|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \LEDR[4]~output_o\);

-- Location: IOIBUF_X0_Y11_N8
\CLOCK_50~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: CLKCTRL_G2
\CLOCK_50~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLOCK_50~inputclkctrl_outclk\);

-- Location: IOIBUF_X28_Y0_N1
\SW[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: IOIBUF_X16_Y0_N22
\SW[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: IOIBUF_X18_Y0_N22
\SW[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

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

-- Location: IOIBUF_X18_Y0_N15
\SW[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

-- Location: IOIBUF_X23_Y24_N1
\SW[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

-- Location: LCCOMB_X21_Y4_N20
\sws|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sws|Equal1~1_combout\ = (!\SW[9]~input_o\ & (!\SW[8]~input_o\ & (!\SW[7]~input_o\ & !\SW[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[9]~input_o\,
	datab => \SW[8]~input_o\,
	datac => \SW[7]~input_o\,
	datad => \SW[6]~input_o\,
	combout => \sws|Equal1~1_combout\);

-- Location: IOIBUF_X13_Y0_N15
\SW[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

-- Location: IOIBUF_X25_Y0_N1
\SW[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: LCCOMB_X21_Y4_N26
\sws|Equal4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sws|Equal4~0_combout\ = (!\SW[5]~input_o\ & (\sws|Equal1~1_combout\ & (!\SW[4]~input_o\ & !\SW[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[5]~input_o\,
	datab => \sws|Equal1~1_combout\,
	datac => \SW[4]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \sws|Equal4~0_combout\);

-- Location: IOIBUF_X34_Y4_N22
\SW[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: LCCOMB_X21_Y4_N22
\sws|Equal8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sws|Equal8~0_combout\ = (!\SW[2]~input_o\ & (!\SW[1]~input_o\ & (\sws|Equal4~0_combout\ & \SW[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \sws|Equal4~0_combout\,
	datad => \SW[3]~input_o\,
	combout => \sws|Equal8~0_combout\);

-- Location: LCCOMB_X21_Y4_N16
\sws|Equal6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sws|Equal6~0_combout\ = (\SW[2]~input_o\ & (!\SW[1]~input_o\ & (\sws|Equal4~0_combout\ & !\SW[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \sws|Equal4~0_combout\,
	datad => \SW[3]~input_o\,
	combout => \sws|Equal6~0_combout\);

-- Location: LCCOMB_X21_Y4_N4
\sws|output_cs[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sws|output_cs[2]~1_combout\ = (!\sws|output_cs\(2) & ((\sws|output_cs\(0) & (\sws|Equal8~0_combout\)) # (!\sws|output_cs\(0) & ((\sws|Equal6~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sws|Equal8~0_combout\,
	datab => \sws|Equal6~0_combout\,
	datac => \sws|output_cs\(0),
	datad => \sws|output_cs\(2),
	combout => \sws|output_cs[2]~1_combout\);

-- Location: LCCOMB_X21_Y4_N24
\sws|Equal4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sws|Equal4~1_combout\ = (!\SW[2]~input_o\ & (\SW[1]~input_o\ & (\sws|Equal4~0_combout\ & !\SW[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \sws|Equal4~0_combout\,
	datad => \SW[3]~input_o\,
	combout => \sws|Equal4~1_combout\);

-- Location: LCCOMB_X22_Y4_N30
\sws|Equal9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sws|Equal9~0_combout\ = (!\sws|output_cs\(1) & !\sws|output_cs\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sws|output_cs\(1),
	datad => \sws|output_cs\(2),
	combout => \sws|Equal9~0_combout\);

-- Location: LCCOMB_X21_Y4_N10
\sws|Equal2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sws|Equal2~1_combout\ = (!\SW[5]~input_o\ & (!\SW[4]~input_o\ & \SW[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[5]~input_o\,
	datac => \SW[4]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \sws|Equal2~1_combout\);

-- Location: LCCOMB_X23_Y4_N12
\sws|Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sws|Equal2~0_combout\ = (!\SW[3]~input_o\ & (!\SW[2]~input_o\ & !\SW[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \SW[2]~input_o\,
	datad => \SW[1]~input_o\,
	combout => \sws|Equal2~0_combout\);

-- Location: LCCOMB_X22_Y4_N18
\sws|Equal3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sws|Equal3~0_combout\ = (!\sws|output_cs\(2) & ((\sws|output_cs\(1)) # (\sws|output_cs\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sws|output_cs\(1),
	datac => \sws|output_cs\(0),
	datad => \sws|output_cs\(2),
	combout => \sws|Equal3~0_combout\);

-- Location: LCCOMB_X22_Y4_N0
\sws|output_cs[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sws|output_cs[2]~2_combout\ = (\sws|Equal2~1_combout\ & (\sws|Equal2~0_combout\ & (\sws|Equal1~1_combout\ & !\sws|Equal3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sws|Equal2~1_combout\,
	datab => \sws|Equal2~0_combout\,
	datac => \sws|Equal1~1_combout\,
	datad => \sws|Equal3~0_combout\,
	combout => \sws|output_cs[2]~2_combout\);

-- Location: LCCOMB_X22_Y4_N22
\sws|output_cs[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \sws|output_cs[2]~3_combout\ = (\sws|output_cs[2]~2_combout\) # ((\sws|output_cs\(0) & (\sws|Equal4~1_combout\ & \sws|Equal9~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sws|output_cs\(0),
	datab => \sws|Equal4~1_combout\,
	datac => \sws|Equal9~0_combout\,
	datad => \sws|output_cs[2]~2_combout\,
	combout => \sws|output_cs[2]~3_combout\);

-- Location: LCCOMB_X22_Y4_N26
\sws|output_rl~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \sws|output_rl~17_combout\ = ((\sws|output_cs\(1) & (!\sws|output_cs\(2) & \sws|output_cs\(0)))) # (!\sws|Equal8~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sws|output_cs\(1),
	datab => \sws|Equal8~0_combout\,
	datac => \sws|output_cs\(2),
	datad => \sws|output_cs\(0),
	combout => \sws|output_rl~17_combout\);

-- Location: LCCOMB_X21_Y4_N6
\sws|output_rl~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \sws|output_rl~16_combout\ = ((!\sws|output_cs\(2) & (\sws|output_cs\(1) & !\sws|output_cs\(0)))) # (!\sws|Equal6~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sws|output_cs\(2),
	datab => \sws|output_cs\(1),
	datac => \sws|output_cs\(0),
	datad => \sws|Equal6~0_combout\,
	combout => \sws|output_rl~16_combout\);

-- Location: LCCOMB_X21_Y4_N0
\sws|output_rl[2]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \sws|output_rl[2]~7_combout\ = (\SW[5]~input_o\ & (!\SW[7]~input_o\ & (!\SW[4]~input_o\ & !\SW[6]~input_o\))) # (!\SW[5]~input_o\ & ((\SW[7]~input_o\ & (!\SW[4]~input_o\ & !\SW[6]~input_o\)) # (!\SW[7]~input_o\ & (\SW[4]~input_o\ $ (\SW[6]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[5]~input_o\,
	datab => \SW[7]~input_o\,
	datac => \SW[4]~input_o\,
	datad => \SW[6]~input_o\,
	combout => \sws|output_rl[2]~7_combout\);

-- Location: LCCOMB_X21_Y4_N12
\sws|output_rl[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \sws|output_rl[2]~3_combout\ = (!\SW[2]~input_o\ & (!\SW[0]~input_o\ & (\sws|output_rl[2]~7_combout\ & !\SW[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[0]~input_o\,
	datac => \sws|output_rl[2]~7_combout\,
	datad => \SW[3]~input_o\,
	combout => \sws|output_rl[2]~3_combout\);

-- Location: LCCOMB_X21_Y4_N14
\sws|output_rl[2]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \sws|output_rl[2]~26_combout\ = (!\SW[9]~input_o\ & (!\SW[1]~input_o\ & (!\SW[8]~input_o\ & \sws|output_rl[2]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[9]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \SW[8]~input_o\,
	datad => \sws|output_rl[2]~3_combout\,
	combout => \sws|output_rl[2]~26_combout\);

-- Location: LCCOMB_X22_Y4_N4
\sws|output_rl[2]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \sws|output_rl[2]~20_combout\ = (!\sws|output_rl[2]~26_combout\ & (((\sws|Equal9~0_combout\ & \sws|output_cs\(0))) # (!\sws|Equal4~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sws|output_rl[2]~26_combout\,
	datab => \sws|Equal4~1_combout\,
	datac => \sws|Equal9~0_combout\,
	datad => \sws|output_cs\(0),
	combout => \sws|output_rl[2]~20_combout\);

-- Location: LCCOMB_X23_Y4_N18
\sws|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sws|Equal1~0_combout\ = (\sws|Equal2~0_combout\ & (!\SW[5]~input_o\ & (!\SW[4]~input_o\ & !\SW[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sws|Equal2~0_combout\,
	datab => \SW[5]~input_o\,
	datac => \SW[4]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \sws|Equal1~0_combout\);

-- Location: LCCOMB_X23_Y4_N28
\sws|Equal18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sws|Equal18~0_combout\ = (\sws|Equal1~0_combout\ & (!\SW[6]~input_o\ & !\SW[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sws|Equal1~0_combout\,
	datab => \SW[6]~input_o\,
	datad => \SW[7]~input_o\,
	combout => \sws|Equal18~0_combout\);

-- Location: LCCOMB_X22_Y4_N28
\sws|output_rl~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \sws|output_rl~18_combout\ = (((!\sws|Equal3~0_combout\) # (!\sws|Equal1~1_combout\)) # (!\sws|Equal2~0_combout\)) # (!\sws|Equal2~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sws|Equal2~1_combout\,
	datab => \sws|Equal2~0_combout\,
	datac => \sws|Equal1~1_combout\,
	datad => \sws|Equal3~0_combout\,
	combout => \sws|output_rl~18_combout\);

-- Location: LCCOMB_X22_Y4_N2
\sws|output_rl[2]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \sws|output_rl[2]~19_combout\ = (\sws|output_rl~18_combout\ & ((\SW[8]~input_o\ $ (!\SW[9]~input_o\)) # (!\sws|Equal18~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datab => \sws|Equal18~0_combout\,
	datac => \SW[9]~input_o\,
	datad => \sws|output_rl~18_combout\,
	combout => \sws|output_rl[2]~19_combout\);

-- Location: LCCOMB_X22_Y4_N10
\sws|output_rl[2]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \sws|output_rl[2]~21_combout\ = (\sws|output_rl~17_combout\ & (\sws|output_rl~16_combout\ & (\sws|output_rl[2]~20_combout\ & \sws|output_rl[2]~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sws|output_rl~17_combout\,
	datab => \sws|output_rl~16_combout\,
	datac => \sws|output_rl[2]~20_combout\,
	datad => \sws|output_rl[2]~19_combout\,
	combout => \sws|output_rl[2]~21_combout\);

-- Location: LCCOMB_X22_Y4_N6
\sws|output_rl[0]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \sws|output_rl[0]~22_combout\ = \sws|output_rl\(0) $ (((!\sws|output_rl[2]~21_combout\ & \sws|output_cs[2]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sws|output_rl[2]~21_combout\,
	datac => \sws|output_rl\(0),
	datad => \sws|output_cs[2]~0_combout\,
	combout => \sws|output_rl[0]~22_combout\);

-- Location: FF_X22_Y4_N7
\sws|output_rl[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sws|output_rl[0]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sws|output_rl\(0));

-- Location: LCCOMB_X23_Y4_N4
\sws|output_rl[1]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \sws|output_rl[1]~25_combout\ = \sws|output_rl\(1) $ (((!\sws|output_rl[2]~21_combout\ & (\sws|output_rl\(0) & \sws|output_cs[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sws|output_rl[2]~21_combout\,
	datab => \sws|output_rl\(0),
	datac => \sws|output_rl\(1),
	datad => \sws|output_cs[2]~0_combout\,
	combout => \sws|output_rl[1]~25_combout\);

-- Location: FF_X23_Y4_N5
\sws|output_rl[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sws|output_rl[1]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sws|output_rl\(1));

-- Location: LCCOMB_X23_Y4_N14
\disp_result|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp_result|Equal0~0_combout\ = (\sws|output_rl\(1)) # ((!\sws|output_rl\(2)) # (!\sws|output_rl\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sws|output_rl\(1),
	datac => \sws|output_rl\(0),
	datad => \sws|output_rl\(2),
	combout => \disp_result|Equal0~0_combout\);

-- Location: FF_X23_Y4_N1
\sws|last_SW[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \SW[3]~input_o\,
	sload => VCC,
	ena => \disp_result|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sws|last_SW\(3));

-- Location: FF_X23_Y4_N19
\sws|last_SW[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \SW[4]~input_o\,
	sload => VCC,
	ena => \disp_result|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sws|last_SW\(4));

-- Location: LCCOMB_X23_Y4_N0
\sws|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sws|process_0~0_combout\ = (!\sws|last_SW\(3) & (!\sws|last_SW\(4) & ((!\sws|Equal1~1_combout\) # (!\sws|Equal1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sws|Equal1~0_combout\,
	datab => \sws|Equal1~1_combout\,
	datac => \sws|last_SW\(3),
	datad => \sws|last_SW\(4),
	combout => \sws|process_0~0_combout\);

-- Location: LCCOMB_X23_Y4_N6
\sws|last_SW[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sws|last_SW[0]~feeder_combout\ = \SW[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[0]~input_o\,
	combout => \sws|last_SW[0]~feeder_combout\);

-- Location: FF_X23_Y4_N7
\sws|last_SW[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sws|last_SW[0]~feeder_combout\,
	ena => \disp_result|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sws|last_SW\(0));

-- Location: FF_X23_Y4_N21
\sws|last_SW[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \SW[1]~input_o\,
	sload => VCC,
	ena => \disp_result|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sws|last_SW\(1));

-- Location: FF_X23_Y4_N17
\sws|last_SW[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \SW[9]~input_o\,
	sload => VCC,
	ena => \disp_result|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sws|last_SW\(9));

-- Location: LCCOMB_X23_Y4_N20
\sws|process_0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sws|process_0~2_combout\ = (!\sws|last_SW\(0) & (!\sws|last_SW\(1) & !\sws|last_SW\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sws|last_SW\(0),
	datac => \sws|last_SW\(1),
	datad => \sws|last_SW\(9),
	combout => \sws|process_0~2_combout\);

-- Location: FF_X23_Y4_N23
\sws|last_SW[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \SW[7]~input_o\,
	sload => VCC,
	ena => \disp_result|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sws|last_SW\(7));

-- Location: LCCOMB_X23_Y4_N26
\sws|last_SW[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sws|last_SW[8]~feeder_combout\ = \SW[8]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[8]~input_o\,
	combout => \sws|last_SW[8]~feeder_combout\);

-- Location: FF_X23_Y4_N27
\sws|last_SW[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sws|last_SW[8]~feeder_combout\,
	ena => \disp_result|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sws|last_SW\(8));

-- Location: FF_X23_Y4_N29
\sws|last_SW[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \SW[5]~input_o\,
	sload => VCC,
	ena => \disp_result|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sws|last_SW\(5));

-- Location: FF_X23_Y4_N11
\sws|last_SW[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \SW[2]~input_o\,
	sload => VCC,
	ena => \disp_result|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sws|last_SW\(2));

-- Location: FF_X23_Y4_N13
\sws|last_SW[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \SW[6]~input_o\,
	sload => VCC,
	ena => \disp_result|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sws|last_SW\(6));

-- Location: LCCOMB_X23_Y4_N10
\sws|process_0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sws|process_0~1_combout\ = (!\sws|last_SW\(8) & (!\sws|last_SW\(5) & (!\sws|last_SW\(2) & !\sws|last_SW\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sws|last_SW\(8),
	datab => \sws|last_SW\(5),
	datac => \sws|last_SW\(2),
	datad => \sws|last_SW\(6),
	combout => \sws|process_0~1_combout\);

-- Location: LCCOMB_X23_Y4_N22
\sws|process_0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \sws|process_0~3_combout\ = (\sws|process_0~0_combout\ & (\sws|process_0~2_combout\ & (!\sws|last_SW\(7) & \sws|process_0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sws|process_0~0_combout\,
	datab => \sws|process_0~2_combout\,
	datac => \sws|last_SW\(7),
	datad => \sws|process_0~1_combout\,
	combout => \sws|process_0~3_combout\);

-- Location: LCCOMB_X23_Y4_N2
\sws|output_rl[2]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \sws|output_rl[2]~23_combout\ = (!\sws|output_rl\(2) & ((\sws|output_rl\(1)) # ((!\sws|output_rl\(0)) # (!\sws|process_0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sws|output_rl\(2),
	datab => \sws|output_rl\(1),
	datac => \sws|process_0~3_combout\,
	datad => \sws|output_rl\(0),
	combout => \sws|output_rl[2]~23_combout\);

-- Location: LCCOMB_X22_Y4_N24
\sws|output_rl[2]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \sws|output_rl[2]~24_combout\ = (!\sws|output_rl[2]~23_combout\ & ((\sws|output_rl\(2)) # (!\sws|output_rl[2]~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sws|output_rl[2]~21_combout\,
	datac => \sws|output_rl\(2),
	datad => \sws|output_rl[2]~23_combout\,
	combout => \sws|output_rl[2]~24_combout\);

-- Location: FF_X22_Y4_N25
\sws|output_rl[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sws|output_rl[2]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sws|output_rl\(2));

-- Location: LCCOMB_X22_Y4_N12
\sws|output_cs[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sws|output_cs[2]~0_combout\ = (\sws|process_0~3_combout\ & (((\sws|output_rl\(1)) # (!\sws|output_rl\(2))) # (!\sws|output_rl\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sws|output_rl\(0),
	datab => \sws|output_rl\(2),
	datac => \sws|output_rl\(1),
	datad => \sws|process_0~3_combout\,
	combout => \sws|output_cs[2]~0_combout\);

-- Location: LCCOMB_X22_Y4_N16
\sws|output_cs[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \sws|output_cs[2]~4_combout\ = (\sws|output_cs[2]~0_combout\ & ((\sws|output_cs[2]~3_combout\) # ((\sws|output_cs\(1) & \sws|output_cs[2]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sws|output_cs\(1),
	datab => \sws|output_cs[2]~1_combout\,
	datac => \sws|output_cs[2]~3_combout\,
	datad => \sws|output_cs[2]~0_combout\,
	combout => \sws|output_cs[2]~4_combout\);

-- Location: LCCOMB_X22_Y4_N14
\sws|output_cs[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \sws|output_cs[0]~6_combout\ = \sws|output_cs\(0) $ (\sws|output_cs[2]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sws|output_cs\(0),
	datad => \sws|output_cs[2]~4_combout\,
	combout => \sws|output_cs[0]~6_combout\);

-- Location: FF_X22_Y4_N15
\sws|output_cs[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sws|output_cs[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sws|output_cs\(0));

-- Location: LCCOMB_X22_Y4_N8
\sws|output_cs[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \sws|output_cs[1]~5_combout\ = \sws|output_cs\(1) $ (((\sws|output_cs\(0) & \sws|output_cs[2]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sws|output_cs\(0),
	datac => \sws|output_cs\(1),
	datad => \sws|output_cs[2]~4_combout\,
	combout => \sws|output_cs[1]~5_combout\);

-- Location: FF_X22_Y4_N9
\sws|output_cs[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sws|output_cs[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sws|output_cs\(1));

-- Location: LCCOMB_X22_Y4_N20
\sws|output_cs[2]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \sws|output_cs[2]~7_combout\ = \sws|output_cs\(2) $ (((\sws|output_cs\(1) & (\sws|output_cs\(0) & \sws|output_cs[2]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sws|output_cs\(1),
	datab => \sws|output_cs\(0),
	datac => \sws|output_cs\(2),
	datad => \sws|output_cs[2]~4_combout\,
	combout => \sws|output_cs[2]~7_combout\);

-- Location: FF_X22_Y4_N21
\sws|output_cs[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sws|output_cs[2]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sws|output_cs\(2));

-- Location: LCCOMB_X21_Y4_N8
\disp_result|HEX0[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp_result|HEX0[0]~0_combout\ = (\disp_result|Equal0~0_combout\ & (((\sws|output_cs\(1)) # (\sws|output_cs\(0))) # (!\sws|output_cs\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sws|output_cs\(2),
	datab => \sws|output_cs\(1),
	datac => \sws|output_cs\(0),
	datad => \disp_result|Equal0~0_combout\,
	combout => \disp_result|HEX0[0]~0_combout\);

-- Location: LCCOMB_X21_Y4_N30
\disp_result|HEX0[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp_result|HEX0[2]~1_combout\ = ((\sws|output_cs\(1)) # ((\sws|output_cs\(0)) # (!\disp_result|Equal0~0_combout\))) # (!\sws|output_cs\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sws|output_cs\(2),
	datab => \sws|output_cs\(1),
	datac => \sws|output_cs\(0),
	datad => \disp_result|Equal0~0_combout\,
	combout => \disp_result|HEX0[2]~1_combout\);

-- Location: LCCOMB_X21_Y4_N28
\disps|disp1|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \disps|disp1|LessThan0~0_combout\ = (!\sws|output_cs\(2) & ((!\sws|output_cs\(0)) # (!\sws|output_cs\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sws|output_cs\(2),
	datab => \sws|output_cs\(1),
	datac => \sws|output_cs\(0),
	combout => \disps|disp1|LessThan0~0_combout\);

-- Location: LCCOMB_X21_Y4_N2
\disps|disp3|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \disps|disp3|LessThan0~0_combout\ = (\sws|output_cs\(2)) # ((\sws|output_cs\(1)) # (\sws|output_cs\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sws|output_cs\(2),
	datab => \sws|output_cs\(1),
	datac => \sws|output_cs\(0),
	combout => \disps|disp3|LessThan0~0_combout\);

-- Location: LCCOMB_X23_Y4_N8
\disp_result|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp_result|Equal0~1_combout\ = (!\sws|output_rl\(1) & \sws|output_rl\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sws|output_rl\(1),
	datad => \sws|output_rl\(2),
	combout => \disp_result|Equal0~1_combout\);

-- Location: LCCOMB_X23_Y4_N30
\lvs|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lvs|Mux1~0_combout\ = ((!\sws|output_rl\(0) & \sws|output_rl\(1))) # (!\sws|output_rl\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sws|output_rl\(0),
	datac => \sws|output_rl\(1),
	datad => \sws|output_rl\(2),
	combout => \lvs|Mux1~0_combout\);

-- Location: LCCOMB_X23_Y4_N24
\lvs|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lvs|Mux0~0_combout\ = (!\sws|output_rl\(2) & !\sws|output_rl\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sws|output_rl\(2),
	datac => \sws|output_rl\(0),
	combout => \lvs|Mux0~0_combout\);

ww_HEX0(0) <= \HEX0[0]~output_o\;

ww_HEX0(1) <= \HEX0[1]~output_o\;

ww_HEX0(2) <= \HEX0[2]~output_o\;

ww_HEX0(3) <= \HEX0[3]~output_o\;

ww_HEX0(4) <= \HEX0[4]~output_o\;

ww_HEX0(5) <= \HEX0[5]~output_o\;

ww_HEX0(6) <= \HEX0[6]~output_o\;

ww_HEX2(0) <= \HEX2[0]~output_o\;

ww_HEX2(1) <= \HEX2[1]~output_o\;

ww_HEX2(2) <= \HEX2[2]~output_o\;

ww_HEX2(3) <= \HEX2[3]~output_o\;

ww_HEX2(4) <= \HEX2[4]~output_o\;

ww_HEX2(5) <= \HEX2[5]~output_o\;

ww_HEX2(6) <= \HEX2[6]~output_o\;

ww_HEX3(0) <= \HEX3[0]~output_o\;

ww_HEX3(1) <= \HEX3[1]~output_o\;

ww_HEX3(2) <= \HEX3[2]~output_o\;

ww_HEX3(3) <= \HEX3[3]~output_o\;

ww_HEX3(4) <= \HEX3[4]~output_o\;

ww_HEX3(5) <= \HEX3[5]~output_o\;

ww_HEX3(6) <= \HEX3[6]~output_o\;

ww_HEX4(0) <= \HEX4[0]~output_o\;

ww_HEX4(1) <= \HEX4[1]~output_o\;

ww_HEX4(2) <= \HEX4[2]~output_o\;

ww_HEX4(3) <= \HEX4[3]~output_o\;

ww_HEX4(4) <= \HEX4[4]~output_o\;

ww_HEX4(5) <= \HEX4[5]~output_o\;

ww_HEX4(6) <= \HEX4[6]~output_o\;

ww_HEX5(0) <= \HEX5[0]~output_o\;

ww_HEX5(1) <= \HEX5[1]~output_o\;

ww_HEX5(2) <= \HEX5[2]~output_o\;

ww_HEX5(3) <= \HEX5[3]~output_o\;

ww_HEX5(4) <= \HEX5[4]~output_o\;

ww_HEX5(5) <= \HEX5[5]~output_o\;

ww_HEX5(6) <= \HEX5[6]~output_o\;

ww_LEDR(0) <= \LEDR[0]~output_o\;

ww_LEDR(1) <= \LEDR[1]~output_o\;

ww_LEDR(2) <= \LEDR[2]~output_o\;

ww_LEDR(3) <= \LEDR[3]~output_o\;

ww_LEDR(4) <= \LEDR[4]~output_o\;
END structure;


