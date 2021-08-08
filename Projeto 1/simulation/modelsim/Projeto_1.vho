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

-- DATE "08/07/2021 21:42:08"

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
	clock_1 : IN std_logic;
	sW : IN std_logic_vector(2 DOWNTO 0);
	RESULT_ULA : OUT std_logic_vector(3 DOWNTO 0);
	LEDG : OUT std_logic_vector(3 DOWNTO 0);
	LEDR : OUT std_logic_vector(17 DOWNTO 0)
	);
END main;

-- Design Ports Information
-- RESULT_ULA[0]	=>  Location: PIN_138,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESULT_ULA[1]	=>  Location: PIN_49,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESULT_ULA[2]	=>  Location: PIN_143,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESULT_ULA[3]	=>  Location: PIN_53,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[0]	=>  Location: PIN_141,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[1]	=>  Location: PIN_132,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[2]	=>  Location: PIN_142,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[3]	=>  Location: PIN_136,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_137,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_50,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_144,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_51,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[4]	=>  Location: PIN_72,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[5]	=>  Location: PIN_55,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[6]	=>  Location: PIN_54,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[7]	=>  Location: PIN_119,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[8]	=>  Location: PIN_121,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[9]	=>  Location: PIN_128,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[10]	=>  Location: PIN_125,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[11]	=>  Location: PIN_112,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[12]	=>  Location: PIN_69,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[13]	=>  Location: PIN_110,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[14]	=>  Location: PIN_127,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[15]	=>  Location: PIN_120,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[16]	=>  Location: PIN_129,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[17]	=>  Location: PIN_124,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sW[0]	=>  Location: PIN_133,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sW[1]	=>  Location: PIN_126,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sW[2]	=>  Location: PIN_135,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock_1	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_clock_1 : std_logic;
SIGNAL ww_sW : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_RESULT_ULA : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_LEDG : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(17 DOWNTO 0);
SIGNAL \clock_1~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RESULT_ULA[0]~output_o\ : std_logic;
SIGNAL \RESULT_ULA[1]~output_o\ : std_logic;
SIGNAL \RESULT_ULA[2]~output_o\ : std_logic;
SIGNAL \RESULT_ULA[3]~output_o\ : std_logic;
SIGNAL \LEDG[0]~output_o\ : std_logic;
SIGNAL \LEDG[1]~output_o\ : std_logic;
SIGNAL \LEDG[2]~output_o\ : std_logic;
SIGNAL \LEDG[3]~output_o\ : std_logic;
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \LEDR[1]~output_o\ : std_logic;
SIGNAL \LEDR[2]~output_o\ : std_logic;
SIGNAL \LEDR[3]~output_o\ : std_logic;
SIGNAL \LEDR[4]~output_o\ : std_logic;
SIGNAL \LEDR[5]~output_o\ : std_logic;
SIGNAL \LEDR[6]~output_o\ : std_logic;
SIGNAL \LEDR[7]~output_o\ : std_logic;
SIGNAL \LEDR[8]~output_o\ : std_logic;
SIGNAL \LEDR[9]~output_o\ : std_logic;
SIGNAL \LEDR[10]~output_o\ : std_logic;
SIGNAL \LEDR[11]~output_o\ : std_logic;
SIGNAL \LEDR[12]~output_o\ : std_logic;
SIGNAL \LEDR[13]~output_o\ : std_logic;
SIGNAL \LEDR[14]~output_o\ : std_logic;
SIGNAL \LEDR[15]~output_o\ : std_logic;
SIGNAL \LEDR[16]~output_o\ : std_logic;
SIGNAL \LEDR[17]~output_o\ : std_logic;
SIGNAL \clock_1~input_o\ : std_logic;
SIGNAL \clock_1~inputclkctrl_outclk\ : std_logic;
SIGNAL \auto_clock|Add1~0_combout\ : std_logic;
SIGNAL \auto_clock|count~1_combout\ : std_logic;
SIGNAL \auto_clock|Add1~1\ : std_logic;
SIGNAL \auto_clock|Add1~2_combout\ : std_logic;
SIGNAL \auto_clock|count~0_combout\ : std_logic;
SIGNAL \auto_clock|Add1~3\ : std_logic;
SIGNAL \auto_clock|Add1~4_combout\ : std_logic;
SIGNAL \auto_clock|Add1~5\ : std_logic;
SIGNAL \auto_clock|Add1~6_combout\ : std_logic;
SIGNAL \auto_clock|Add1~7\ : std_logic;
SIGNAL \auto_clock|Add1~8_combout\ : std_logic;
SIGNAL \auto_clock|Add1~9\ : std_logic;
SIGNAL \auto_clock|Add1~10_combout\ : std_logic;
SIGNAL \auto_clock|Add1~11\ : std_logic;
SIGNAL \auto_clock|Add1~12_combout\ : std_logic;
SIGNAL \auto_clock|Add1~13\ : std_logic;
SIGNAL \auto_clock|Add1~14_combout\ : std_logic;
SIGNAL \auto_clock|Add1~15\ : std_logic;
SIGNAL \auto_clock|Add1~16_combout\ : std_logic;
SIGNAL \auto_clock|Add1~17\ : std_logic;
SIGNAL \auto_clock|Add1~18_combout\ : std_logic;
SIGNAL \auto_clock|Add1~19\ : std_logic;
SIGNAL \auto_clock|Add1~20_combout\ : std_logic;
SIGNAL \auto_clock|Add1~21\ : std_logic;
SIGNAL \auto_clock|Add1~22_combout\ : std_logic;
SIGNAL \auto_clock|Add1~23\ : std_logic;
SIGNAL \auto_clock|Add1~24_combout\ : std_logic;
SIGNAL \auto_clock|Add1~25\ : std_logic;
SIGNAL \auto_clock|Add1~26_combout\ : std_logic;
SIGNAL \auto_clock|Add1~27\ : std_logic;
SIGNAL \auto_clock|Add1~28_combout\ : std_logic;
SIGNAL \auto_clock|Add1~29\ : std_logic;
SIGNAL \auto_clock|Add1~30_combout\ : std_logic;
SIGNAL \auto_clock|Add1~31\ : std_logic;
SIGNAL \auto_clock|Add1~32_combout\ : std_logic;
SIGNAL \auto_clock|Add1~33\ : std_logic;
SIGNAL \auto_clock|Add1~34_combout\ : std_logic;
SIGNAL \auto_clock|Add1~35\ : std_logic;
SIGNAL \auto_clock|Add1~36_combout\ : std_logic;
SIGNAL \auto_clock|Add1~37\ : std_logic;
SIGNAL \auto_clock|Add1~38_combout\ : std_logic;
SIGNAL \auto_clock|Add1~39\ : std_logic;
SIGNAL \auto_clock|Add1~40_combout\ : std_logic;
SIGNAL \auto_clock|Add1~41\ : std_logic;
SIGNAL \auto_clock|Add1~42_combout\ : std_logic;
SIGNAL \auto_clock|Add1~43\ : std_logic;
SIGNAL \auto_clock|Add1~44_combout\ : std_logic;
SIGNAL \auto_clock|Add1~45\ : std_logic;
SIGNAL \auto_clock|Add1~46_combout\ : std_logic;
SIGNAL \auto_clock|Add1~47\ : std_logic;
SIGNAL \auto_clock|Add1~48_combout\ : std_logic;
SIGNAL \auto_clock|Add1~49\ : std_logic;
SIGNAL \auto_clock|Add1~50_combout\ : std_logic;
SIGNAL \auto_clock|Add1~51\ : std_logic;
SIGNAL \auto_clock|Add1~52_combout\ : std_logic;
SIGNAL \auto_clock|Equal0~7_combout\ : std_logic;
SIGNAL \auto_clock|Equal0~5_combout\ : std_logic;
SIGNAL \auto_clock|Equal0~0_combout\ : std_logic;
SIGNAL \auto_clock|Equal0~2_combout\ : std_logic;
SIGNAL \auto_clock|Equal0~3_combout\ : std_logic;
SIGNAL \auto_clock|Equal0~1_combout\ : std_logic;
SIGNAL \auto_clock|Equal0~4_combout\ : std_logic;
SIGNAL \auto_clock|Equal0~6_combout\ : std_logic;
SIGNAL \auto_clock|Equal0~8_combout\ : std_logic;
SIGNAL \auto_clock|vector_aux[0]~21_combout\ : std_logic;
SIGNAL \auto_clock|vector_aux[1]~7_combout\ : std_logic;
SIGNAL \auto_clock|vector_aux[1]~8\ : std_logic;
SIGNAL \auto_clock|vector_aux[2]~9_combout\ : std_logic;
SIGNAL \auto_clock|vector_aux[2]~10\ : std_logic;
SIGNAL \auto_clock|vector_aux[3]~11_combout\ : std_logic;
SIGNAL \auto_clock|vector_aux[3]~12\ : std_logic;
SIGNAL \auto_clock|vector_aux[4]~13_combout\ : std_logic;
SIGNAL \sum|bit0|HA1|sum~combout\ : std_logic;
SIGNAL \sW[0]~input_o\ : std_logic;
SIGNAL \auto_clock|vector_aux[4]~14\ : std_logic;
SIGNAL \auto_clock|vector_aux[5]~15_combout\ : std_logic;
SIGNAL \auto_clock|vector_aux[5]~16\ : std_logic;
SIGNAL \auto_clock|vector_aux[6]~17_combout\ : std_logic;
SIGNAL \auto_clock|vector_aux[6]~18\ : std_logic;
SIGNAL \auto_clock|vector_aux[7]~19_combout\ : std_logic;
SIGNAL \greater|result[0]~0_combout\ : std_logic;
SIGNAL \greater|result[0]~1_combout\ : std_logic;
SIGNAL \greater|result[0]~2_combout\ : std_logic;
SIGNAL \sW[1]~input_o\ : std_logic;
SIGNAL \greater|X[3]~0_combout\ : std_logic;
SIGNAL \equal|result[0]~0_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \lesser|result[0]~0_combout\ : std_logic;
SIGNAL \lesser|result[0]~1_combout\ : std_logic;
SIGNAL \lesser|result[0]~2_combout\ : std_logic;
SIGNAL \Mux3~1_combout\ : std_logic;
SIGNAL \sW[2]~input_o\ : std_logic;
SIGNAL \Mux3~2_combout\ : std_logic;
SIGNAL \sum|bit1|HA2|sum~combout\ : std_logic;
SIGNAL \decr|bit1_dec|HA2|sum~0_combout\ : std_logic;
SIGNAL \incr|bit1|HA2|sum~combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux2~1_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Mux2~2_combout\ : std_logic;
SIGNAL \incr|bit1|cout~0_combout\ : std_logic;
SIGNAL \incr|bit2|HA2|sum~combout\ : std_logic;
SIGNAL \diff|bit1|cout~combout\ : std_logic;
SIGNAL \diff|bit2|HA2|sum~combout\ : std_logic;
SIGNAL \sum|bit1|cout~0_combout\ : std_logic;
SIGNAL \sum|bit2|HA2|sum~combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \decr|bit1|cout~combout\ : std_logic;
SIGNAL \decr|bit1_dec|cout~0_combout\ : std_logic;
SIGNAL \decr|bit2_dec|HA2|sum~combout\ : std_logic;
SIGNAL \Mux1~1_combout\ : std_logic;
SIGNAL \Mux1~2_combout\ : std_logic;
SIGNAL \decr|bit2_dec|cout~0_combout\ : std_logic;
SIGNAL \decr|bit3_dec|HA2|sum~combout\ : std_logic;
SIGNAL \sum|bit3|HA2|sum~combout\ : std_logic;
SIGNAL \diff|bit3|HA2|sum~combout\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;
SIGNAL \incr|bit3|HA2|sum~combout\ : std_logic;
SIGNAL \Mux0~2_combout\ : std_logic;
SIGNAL \Mux0~3_combout\ : std_logic;
SIGNAL \flags|LEDG~2_combout\ : std_logic;
SIGNAL \flags|Add0~0_combout\ : std_logic;
SIGNAL \flags|LEDG[0]~3_combout\ : std_logic;
SIGNAL \flags|LEDG[0]~4_combout\ : std_logic;
SIGNAL \flags|LEDG[0]~5_combout\ : std_logic;
SIGNAL \sum|bit2|cout~0_combout\ : std_logic;
SIGNAL \flags|LEDG[1]~6_combout\ : std_logic;
SIGNAL \flags|LEDG[1]~7_combout\ : std_logic;
SIGNAL \flags|LEDG[1]~8_combout\ : std_logic;
SIGNAL \flags|LEDG[1]~14_combout\ : std_logic;
SIGNAL \flags|LEDG[2]~9_combout\ : std_logic;
SIGNAL \flags|LEDG[3]~10_combout\ : std_logic;
SIGNAL \flags|LEDG[3]~11_combout\ : std_logic;
SIGNAL \flags|LEDG~12_combout\ : std_logic;
SIGNAL \flags|LEDG[3]~13_combout\ : std_logic;
SIGNAL \equal|result\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \auto_clock|vector_aux\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \auto_clock|count\ : std_logic_vector(26 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clock_1 <= clock_1;
ww_sW <= sW;
RESULT_ULA <= ww_RESULT_ULA;
LEDG <= ww_LEDG;
LEDR <= ww_LEDR;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clock_1~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock_1~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X7_Y24_N9
\RESULT_ULA[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux3~2_combout\,
	devoe => ww_devoe,
	o => \RESULT_ULA[0]~output_o\);

-- Location: IOOBUF_X13_Y0_N16
\RESULT_ULA[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux2~2_combout\,
	devoe => ww_devoe,
	o => \RESULT_ULA[1]~output_o\);

-- Location: IOOBUF_X1_Y24_N2
\RESULT_ULA[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux1~2_combout\,
	devoe => ww_devoe,
	o => \RESULT_ULA[2]~output_o\);

-- Location: IOOBUF_X16_Y0_N2
\RESULT_ULA[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux0~3_combout\,
	devoe => ww_devoe,
	o => \RESULT_ULA[3]~output_o\);

-- Location: IOOBUF_X5_Y24_N9
\LEDG[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \flags|LEDG[0]~5_combout\,
	devoe => ww_devoe,
	o => \LEDG[0]~output_o\);

-- Location: IOOBUF_X13_Y24_N16
\LEDG[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \flags|LEDG[1]~14_combout\,
	devoe => ww_devoe,
	o => \LEDG[1]~output_o\);

-- Location: IOOBUF_X3_Y24_N23
\LEDG[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \flags|LEDG[2]~9_combout\,
	devoe => ww_devoe,
	o => \LEDG[2]~output_o\);

-- Location: IOOBUF_X9_Y24_N9
\LEDG[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \flags|LEDG[3]~13_combout\,
	devoe => ww_devoe,
	o => \LEDG[3]~output_o\);

-- Location: IOOBUF_X7_Y24_N2
\LEDR[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux3~2_combout\,
	devoe => ww_devoe,
	o => \LEDR[0]~output_o\);

-- Location: IOOBUF_X13_Y0_N2
\LEDR[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux2~2_combout\,
	devoe => ww_devoe,
	o => \LEDR[1]~output_o\);

-- Location: IOOBUF_X1_Y24_N9
\LEDR[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux1~2_combout\,
	devoe => ww_devoe,
	o => \LEDR[2]~output_o\);

-- Location: IOOBUF_X16_Y0_N23
\LEDR[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux0~3_combout\,
	devoe => ww_devoe,
	o => \LEDR[3]~output_o\);

-- Location: IOOBUF_X32_Y0_N9
\LEDR[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[4]~output_o\);

-- Location: IOOBUF_X18_Y0_N16
\LEDR[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[5]~output_o\);

-- Location: IOOBUF_X18_Y0_N23
\LEDR[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[6]~output_o\);

-- Location: IOOBUF_X23_Y24_N2
\LEDR[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \auto_clock|vector_aux\(0),
	devoe => ww_devoe,
	o => \LEDR[7]~output_o\);

-- Location: IOOBUF_X23_Y24_N16
\LEDR[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \auto_clock|vector_aux\(1),
	devoe => ww_devoe,
	o => \LEDR[8]~output_o\);

-- Location: IOOBUF_X16_Y24_N16
\LEDR[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \auto_clock|vector_aux\(2),
	devoe => ww_devoe,
	o => \LEDR[9]~output_o\);

-- Location: IOOBUF_X18_Y24_N23
\LEDR[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \auto_clock|vector_aux\(3),
	devoe => ww_devoe,
	o => \LEDR[10]~output_o\);

-- Location: IOOBUF_X28_Y24_N2
\LEDR[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[11]~output_o\);

-- Location: IOOBUF_X30_Y0_N2
\LEDR[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[12]~output_o\);

-- Location: IOOBUF_X30_Y24_N2
\LEDR[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[13]~output_o\);

-- Location: IOOBUF_X16_Y24_N9
\LEDR[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \auto_clock|vector_aux\(4),
	devoe => ww_devoe,
	o => \LEDR[14]~output_o\);

-- Location: IOOBUF_X23_Y24_N9
\LEDR[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \auto_clock|vector_aux\(5),
	devoe => ww_devoe,
	o => \LEDR[15]~output_o\);

-- Location: IOOBUF_X16_Y24_N23
\LEDR[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \auto_clock|vector_aux\(6),
	devoe => ww_devoe,
	o => \LEDR[16]~output_o\);

-- Location: IOOBUF_X18_Y24_N16
\LEDR[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \auto_clock|vector_aux\(7),
	devoe => ww_devoe,
	o => \LEDR[17]~output_o\);

-- Location: IOIBUF_X0_Y11_N8
\clock_1~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock_1,
	o => \clock_1~input_o\);

-- Location: CLKCTRL_G2
\clock_1~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clock_1~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clock_1~inputclkctrl_outclk\);

-- Location: LCCOMB_X17_Y20_N6
\auto_clock|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \auto_clock|Add1~0_combout\ = \auto_clock|count\(0) $ (VCC)
-- \auto_clock|Add1~1\ = CARRY(\auto_clock|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_clock|count\(0),
	datad => VCC,
	combout => \auto_clock|Add1~0_combout\,
	cout => \auto_clock|Add1~1\);

-- Location: LCCOMB_X17_Y20_N2
\auto_clock|count~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \auto_clock|count~1_combout\ = (\auto_clock|Add1~0_combout\ & !\auto_clock|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_clock|Add1~0_combout\,
	datad => \auto_clock|Equal0~8_combout\,
	combout => \auto_clock|count~1_combout\);

-- Location: FF_X17_Y20_N3
\auto_clock|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_1~inputclkctrl_outclk\,
	d => \auto_clock|count~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_clock|count\(0));

-- Location: LCCOMB_X17_Y20_N8
\auto_clock|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \auto_clock|Add1~2_combout\ = (\auto_clock|count\(1) & (!\auto_clock|Add1~1\)) # (!\auto_clock|count\(1) & ((\auto_clock|Add1~1\) # (GND)))
-- \auto_clock|Add1~3\ = CARRY((!\auto_clock|Add1~1\) # (!\auto_clock|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \auto_clock|count\(1),
	datad => VCC,
	cin => \auto_clock|Add1~1\,
	combout => \auto_clock|Add1~2_combout\,
	cout => \auto_clock|Add1~3\);

-- Location: LCCOMB_X17_Y20_N4
\auto_clock|count~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \auto_clock|count~0_combout\ = (\auto_clock|Add1~2_combout\ & !\auto_clock|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_clock|Add1~2_combout\,
	datad => \auto_clock|Equal0~8_combout\,
	combout => \auto_clock|count~0_combout\);

-- Location: FF_X17_Y20_N5
\auto_clock|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_1~inputclkctrl_outclk\,
	d => \auto_clock|count~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_clock|count\(1));

-- Location: LCCOMB_X17_Y20_N10
\auto_clock|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \auto_clock|Add1~4_combout\ = (\auto_clock|count\(2) & (\auto_clock|Add1~3\ $ (GND))) # (!\auto_clock|count\(2) & (!\auto_clock|Add1~3\ & VCC))
-- \auto_clock|Add1~5\ = CARRY((\auto_clock|count\(2) & !\auto_clock|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \auto_clock|count\(2),
	datad => VCC,
	cin => \auto_clock|Add1~3\,
	combout => \auto_clock|Add1~4_combout\,
	cout => \auto_clock|Add1~5\);

-- Location: FF_X17_Y20_N11
\auto_clock|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_1~inputclkctrl_outclk\,
	d => \auto_clock|Add1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_clock|count\(2));

-- Location: LCCOMB_X17_Y20_N12
\auto_clock|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \auto_clock|Add1~6_combout\ = (\auto_clock|count\(3) & (!\auto_clock|Add1~5\)) # (!\auto_clock|count\(3) & ((\auto_clock|Add1~5\) # (GND)))
-- \auto_clock|Add1~7\ = CARRY((!\auto_clock|Add1~5\) # (!\auto_clock|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \auto_clock|count\(3),
	datad => VCC,
	cin => \auto_clock|Add1~5\,
	combout => \auto_clock|Add1~6_combout\,
	cout => \auto_clock|Add1~7\);

-- Location: FF_X17_Y20_N13
\auto_clock|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_1~inputclkctrl_outclk\,
	d => \auto_clock|Add1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_clock|count\(3));

-- Location: LCCOMB_X17_Y20_N14
\auto_clock|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \auto_clock|Add1~8_combout\ = (\auto_clock|count\(4) & (\auto_clock|Add1~7\ $ (GND))) # (!\auto_clock|count\(4) & (!\auto_clock|Add1~7\ & VCC))
-- \auto_clock|Add1~9\ = CARRY((\auto_clock|count\(4) & !\auto_clock|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \auto_clock|count\(4),
	datad => VCC,
	cin => \auto_clock|Add1~7\,
	combout => \auto_clock|Add1~8_combout\,
	cout => \auto_clock|Add1~9\);

-- Location: FF_X17_Y20_N15
\auto_clock|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_1~inputclkctrl_outclk\,
	d => \auto_clock|Add1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_clock|count\(4));

-- Location: LCCOMB_X17_Y20_N16
\auto_clock|Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \auto_clock|Add1~10_combout\ = (\auto_clock|count\(5) & (!\auto_clock|Add1~9\)) # (!\auto_clock|count\(5) & ((\auto_clock|Add1~9\) # (GND)))
-- \auto_clock|Add1~11\ = CARRY((!\auto_clock|Add1~9\) # (!\auto_clock|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \auto_clock|count\(5),
	datad => VCC,
	cin => \auto_clock|Add1~9\,
	combout => \auto_clock|Add1~10_combout\,
	cout => \auto_clock|Add1~11\);

-- Location: FF_X17_Y20_N17
\auto_clock|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_1~inputclkctrl_outclk\,
	d => \auto_clock|Add1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_clock|count\(5));

-- Location: LCCOMB_X17_Y20_N18
\auto_clock|Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \auto_clock|Add1~12_combout\ = (\auto_clock|count\(6) & (\auto_clock|Add1~11\ $ (GND))) # (!\auto_clock|count\(6) & (!\auto_clock|Add1~11\ & VCC))
-- \auto_clock|Add1~13\ = CARRY((\auto_clock|count\(6) & !\auto_clock|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \auto_clock|count\(6),
	datad => VCC,
	cin => \auto_clock|Add1~11\,
	combout => \auto_clock|Add1~12_combout\,
	cout => \auto_clock|Add1~13\);

-- Location: FF_X17_Y20_N19
\auto_clock|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_1~inputclkctrl_outclk\,
	d => \auto_clock|Add1~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_clock|count\(6));

-- Location: LCCOMB_X17_Y20_N20
\auto_clock|Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \auto_clock|Add1~14_combout\ = (\auto_clock|count\(7) & (!\auto_clock|Add1~13\)) # (!\auto_clock|count\(7) & ((\auto_clock|Add1~13\) # (GND)))
-- \auto_clock|Add1~15\ = CARRY((!\auto_clock|Add1~13\) # (!\auto_clock|count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \auto_clock|count\(7),
	datad => VCC,
	cin => \auto_clock|Add1~13\,
	combout => \auto_clock|Add1~14_combout\,
	cout => \auto_clock|Add1~15\);

-- Location: FF_X17_Y20_N21
\auto_clock|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_1~inputclkctrl_outclk\,
	d => \auto_clock|Add1~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_clock|count\(7));

-- Location: LCCOMB_X17_Y20_N22
\auto_clock|Add1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \auto_clock|Add1~16_combout\ = (\auto_clock|count\(8) & (\auto_clock|Add1~15\ $ (GND))) # (!\auto_clock|count\(8) & (!\auto_clock|Add1~15\ & VCC))
-- \auto_clock|Add1~17\ = CARRY((\auto_clock|count\(8) & !\auto_clock|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \auto_clock|count\(8),
	datad => VCC,
	cin => \auto_clock|Add1~15\,
	combout => \auto_clock|Add1~16_combout\,
	cout => \auto_clock|Add1~17\);

-- Location: FF_X17_Y20_N23
\auto_clock|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_1~inputclkctrl_outclk\,
	d => \auto_clock|Add1~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_clock|count\(8));

-- Location: LCCOMB_X17_Y20_N24
\auto_clock|Add1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \auto_clock|Add1~18_combout\ = (\auto_clock|count\(9) & (!\auto_clock|Add1~17\)) # (!\auto_clock|count\(9) & ((\auto_clock|Add1~17\) # (GND)))
-- \auto_clock|Add1~19\ = CARRY((!\auto_clock|Add1~17\) # (!\auto_clock|count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \auto_clock|count\(9),
	datad => VCC,
	cin => \auto_clock|Add1~17\,
	combout => \auto_clock|Add1~18_combout\,
	cout => \auto_clock|Add1~19\);

-- Location: FF_X17_Y20_N25
\auto_clock|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_1~inputclkctrl_outclk\,
	d => \auto_clock|Add1~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_clock|count\(9));

-- Location: LCCOMB_X17_Y20_N26
\auto_clock|Add1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \auto_clock|Add1~20_combout\ = (\auto_clock|count\(10) & (\auto_clock|Add1~19\ $ (GND))) # (!\auto_clock|count\(10) & (!\auto_clock|Add1~19\ & VCC))
-- \auto_clock|Add1~21\ = CARRY((\auto_clock|count\(10) & !\auto_clock|Add1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \auto_clock|count\(10),
	datad => VCC,
	cin => \auto_clock|Add1~19\,
	combout => \auto_clock|Add1~20_combout\,
	cout => \auto_clock|Add1~21\);

-- Location: FF_X17_Y20_N27
\auto_clock|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_1~inputclkctrl_outclk\,
	d => \auto_clock|Add1~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_clock|count\(10));

-- Location: LCCOMB_X17_Y20_N28
\auto_clock|Add1~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \auto_clock|Add1~22_combout\ = (\auto_clock|count\(11) & (!\auto_clock|Add1~21\)) # (!\auto_clock|count\(11) & ((\auto_clock|Add1~21\) # (GND)))
-- \auto_clock|Add1~23\ = CARRY((!\auto_clock|Add1~21\) # (!\auto_clock|count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \auto_clock|count\(11),
	datad => VCC,
	cin => \auto_clock|Add1~21\,
	combout => \auto_clock|Add1~22_combout\,
	cout => \auto_clock|Add1~23\);

-- Location: FF_X17_Y20_N29
\auto_clock|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_1~inputclkctrl_outclk\,
	d => \auto_clock|Add1~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_clock|count\(11));

-- Location: LCCOMB_X17_Y20_N30
\auto_clock|Add1~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \auto_clock|Add1~24_combout\ = (\auto_clock|count\(12) & (\auto_clock|Add1~23\ $ (GND))) # (!\auto_clock|count\(12) & (!\auto_clock|Add1~23\ & VCC))
-- \auto_clock|Add1~25\ = CARRY((\auto_clock|count\(12) & !\auto_clock|Add1~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \auto_clock|count\(12),
	datad => VCC,
	cin => \auto_clock|Add1~23\,
	combout => \auto_clock|Add1~24_combout\,
	cout => \auto_clock|Add1~25\);

-- Location: FF_X17_Y20_N31
\auto_clock|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_1~inputclkctrl_outclk\,
	d => \auto_clock|Add1~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_clock|count\(12));

-- Location: LCCOMB_X17_Y19_N0
\auto_clock|Add1~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \auto_clock|Add1~26_combout\ = (\auto_clock|count\(13) & (!\auto_clock|Add1~25\)) # (!\auto_clock|count\(13) & ((\auto_clock|Add1~25\) # (GND)))
-- \auto_clock|Add1~27\ = CARRY((!\auto_clock|Add1~25\) # (!\auto_clock|count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \auto_clock|count\(13),
	datad => VCC,
	cin => \auto_clock|Add1~25\,
	combout => \auto_clock|Add1~26_combout\,
	cout => \auto_clock|Add1~27\);

-- Location: FF_X17_Y19_N1
\auto_clock|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_1~inputclkctrl_outclk\,
	d => \auto_clock|Add1~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_clock|count\(13));

-- Location: LCCOMB_X17_Y19_N2
\auto_clock|Add1~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \auto_clock|Add1~28_combout\ = (\auto_clock|count\(14) & (\auto_clock|Add1~27\ $ (GND))) # (!\auto_clock|count\(14) & (!\auto_clock|Add1~27\ & VCC))
-- \auto_clock|Add1~29\ = CARRY((\auto_clock|count\(14) & !\auto_clock|Add1~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \auto_clock|count\(14),
	datad => VCC,
	cin => \auto_clock|Add1~27\,
	combout => \auto_clock|Add1~28_combout\,
	cout => \auto_clock|Add1~29\);

-- Location: FF_X17_Y19_N3
\auto_clock|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_1~inputclkctrl_outclk\,
	d => \auto_clock|Add1~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_clock|count\(14));

-- Location: LCCOMB_X17_Y19_N4
\auto_clock|Add1~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \auto_clock|Add1~30_combout\ = (\auto_clock|count\(15) & (!\auto_clock|Add1~29\)) # (!\auto_clock|count\(15) & ((\auto_clock|Add1~29\) # (GND)))
-- \auto_clock|Add1~31\ = CARRY((!\auto_clock|Add1~29\) # (!\auto_clock|count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \auto_clock|count\(15),
	datad => VCC,
	cin => \auto_clock|Add1~29\,
	combout => \auto_clock|Add1~30_combout\,
	cout => \auto_clock|Add1~31\);

-- Location: FF_X17_Y19_N5
\auto_clock|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_1~inputclkctrl_outclk\,
	d => \auto_clock|Add1~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_clock|count\(15));

-- Location: LCCOMB_X17_Y19_N6
\auto_clock|Add1~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \auto_clock|Add1~32_combout\ = (\auto_clock|count\(16) & (\auto_clock|Add1~31\ $ (GND))) # (!\auto_clock|count\(16) & (!\auto_clock|Add1~31\ & VCC))
-- \auto_clock|Add1~33\ = CARRY((\auto_clock|count\(16) & !\auto_clock|Add1~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \auto_clock|count\(16),
	datad => VCC,
	cin => \auto_clock|Add1~31\,
	combout => \auto_clock|Add1~32_combout\,
	cout => \auto_clock|Add1~33\);

-- Location: FF_X17_Y19_N7
\auto_clock|count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_1~inputclkctrl_outclk\,
	d => \auto_clock|Add1~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_clock|count\(16));

-- Location: LCCOMB_X17_Y19_N8
\auto_clock|Add1~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \auto_clock|Add1~34_combout\ = (\auto_clock|count\(17) & (!\auto_clock|Add1~33\)) # (!\auto_clock|count\(17) & ((\auto_clock|Add1~33\) # (GND)))
-- \auto_clock|Add1~35\ = CARRY((!\auto_clock|Add1~33\) # (!\auto_clock|count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \auto_clock|count\(17),
	datad => VCC,
	cin => \auto_clock|Add1~33\,
	combout => \auto_clock|Add1~34_combout\,
	cout => \auto_clock|Add1~35\);

-- Location: FF_X17_Y19_N9
\auto_clock|count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_1~inputclkctrl_outclk\,
	d => \auto_clock|Add1~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_clock|count\(17));

-- Location: LCCOMB_X17_Y19_N10
\auto_clock|Add1~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \auto_clock|Add1~36_combout\ = (\auto_clock|count\(18) & (\auto_clock|Add1~35\ $ (GND))) # (!\auto_clock|count\(18) & (!\auto_clock|Add1~35\ & VCC))
-- \auto_clock|Add1~37\ = CARRY((\auto_clock|count\(18) & !\auto_clock|Add1~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \auto_clock|count\(18),
	datad => VCC,
	cin => \auto_clock|Add1~35\,
	combout => \auto_clock|Add1~36_combout\,
	cout => \auto_clock|Add1~37\);

-- Location: FF_X17_Y19_N11
\auto_clock|count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_1~inputclkctrl_outclk\,
	d => \auto_clock|Add1~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_clock|count\(18));

-- Location: LCCOMB_X17_Y19_N12
\auto_clock|Add1~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \auto_clock|Add1~38_combout\ = (\auto_clock|count\(19) & (!\auto_clock|Add1~37\)) # (!\auto_clock|count\(19) & ((\auto_clock|Add1~37\) # (GND)))
-- \auto_clock|Add1~39\ = CARRY((!\auto_clock|Add1~37\) # (!\auto_clock|count\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \auto_clock|count\(19),
	datad => VCC,
	cin => \auto_clock|Add1~37\,
	combout => \auto_clock|Add1~38_combout\,
	cout => \auto_clock|Add1~39\);

-- Location: FF_X17_Y19_N13
\auto_clock|count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_1~inputclkctrl_outclk\,
	d => \auto_clock|Add1~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_clock|count\(19));

-- Location: LCCOMB_X17_Y19_N14
\auto_clock|Add1~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \auto_clock|Add1~40_combout\ = (\auto_clock|count\(20) & (\auto_clock|Add1~39\ $ (GND))) # (!\auto_clock|count\(20) & (!\auto_clock|Add1~39\ & VCC))
-- \auto_clock|Add1~41\ = CARRY((\auto_clock|count\(20) & !\auto_clock|Add1~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \auto_clock|count\(20),
	datad => VCC,
	cin => \auto_clock|Add1~39\,
	combout => \auto_clock|Add1~40_combout\,
	cout => \auto_clock|Add1~41\);

-- Location: FF_X17_Y19_N15
\auto_clock|count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_1~inputclkctrl_outclk\,
	d => \auto_clock|Add1~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_clock|count\(20));

-- Location: LCCOMB_X17_Y19_N16
\auto_clock|Add1~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \auto_clock|Add1~42_combout\ = (\auto_clock|count\(21) & (!\auto_clock|Add1~41\)) # (!\auto_clock|count\(21) & ((\auto_clock|Add1~41\) # (GND)))
-- \auto_clock|Add1~43\ = CARRY((!\auto_clock|Add1~41\) # (!\auto_clock|count\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \auto_clock|count\(21),
	datad => VCC,
	cin => \auto_clock|Add1~41\,
	combout => \auto_clock|Add1~42_combout\,
	cout => \auto_clock|Add1~43\);

-- Location: FF_X17_Y19_N17
\auto_clock|count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_1~inputclkctrl_outclk\,
	d => \auto_clock|Add1~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_clock|count\(21));

-- Location: LCCOMB_X17_Y19_N18
\auto_clock|Add1~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \auto_clock|Add1~44_combout\ = (\auto_clock|count\(22) & (\auto_clock|Add1~43\ $ (GND))) # (!\auto_clock|count\(22) & (!\auto_clock|Add1~43\ & VCC))
-- \auto_clock|Add1~45\ = CARRY((\auto_clock|count\(22) & !\auto_clock|Add1~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \auto_clock|count\(22),
	datad => VCC,
	cin => \auto_clock|Add1~43\,
	combout => \auto_clock|Add1~44_combout\,
	cout => \auto_clock|Add1~45\);

-- Location: FF_X17_Y19_N19
\auto_clock|count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_1~inputclkctrl_outclk\,
	d => \auto_clock|Add1~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_clock|count\(22));

-- Location: LCCOMB_X17_Y19_N20
\auto_clock|Add1~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \auto_clock|Add1~46_combout\ = (\auto_clock|count\(23) & (!\auto_clock|Add1~45\)) # (!\auto_clock|count\(23) & ((\auto_clock|Add1~45\) # (GND)))
-- \auto_clock|Add1~47\ = CARRY((!\auto_clock|Add1~45\) # (!\auto_clock|count\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \auto_clock|count\(23),
	datad => VCC,
	cin => \auto_clock|Add1~45\,
	combout => \auto_clock|Add1~46_combout\,
	cout => \auto_clock|Add1~47\);

-- Location: FF_X17_Y19_N21
\auto_clock|count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_1~inputclkctrl_outclk\,
	d => \auto_clock|Add1~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_clock|count\(23));

-- Location: LCCOMB_X17_Y19_N22
\auto_clock|Add1~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \auto_clock|Add1~48_combout\ = (\auto_clock|count\(24) & (\auto_clock|Add1~47\ $ (GND))) # (!\auto_clock|count\(24) & (!\auto_clock|Add1~47\ & VCC))
-- \auto_clock|Add1~49\ = CARRY((\auto_clock|count\(24) & !\auto_clock|Add1~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \auto_clock|count\(24),
	datad => VCC,
	cin => \auto_clock|Add1~47\,
	combout => \auto_clock|Add1~48_combout\,
	cout => \auto_clock|Add1~49\);

-- Location: FF_X17_Y19_N23
\auto_clock|count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_1~inputclkctrl_outclk\,
	d => \auto_clock|Add1~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_clock|count\(24));

-- Location: LCCOMB_X17_Y19_N24
\auto_clock|Add1~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \auto_clock|Add1~50_combout\ = (\auto_clock|count\(25) & (!\auto_clock|Add1~49\)) # (!\auto_clock|count\(25) & ((\auto_clock|Add1~49\) # (GND)))
-- \auto_clock|Add1~51\ = CARRY((!\auto_clock|Add1~49\) # (!\auto_clock|count\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \auto_clock|count\(25),
	datad => VCC,
	cin => \auto_clock|Add1~49\,
	combout => \auto_clock|Add1~50_combout\,
	cout => \auto_clock|Add1~51\);

-- Location: FF_X17_Y19_N25
\auto_clock|count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_1~inputclkctrl_outclk\,
	d => \auto_clock|Add1~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_clock|count\(25));

-- Location: LCCOMB_X17_Y19_N26
\auto_clock|Add1~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \auto_clock|Add1~52_combout\ = \auto_clock|count\(26) $ (!\auto_clock|Add1~51\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \auto_clock|count\(26),
	cin => \auto_clock|Add1~51\,
	combout => \auto_clock|Add1~52_combout\);

-- Location: FF_X17_Y19_N27
\auto_clock|count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_1~inputclkctrl_outclk\,
	d => \auto_clock|Add1~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_clock|count\(26));

-- Location: LCCOMB_X17_Y19_N30
\auto_clock|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \auto_clock|Equal0~7_combout\ = (!\auto_clock|count\(26) & (!\auto_clock|count\(24) & !\auto_clock|count\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_clock|count\(26),
	datac => \auto_clock|count\(24),
	datad => \auto_clock|count\(25),
	combout => \auto_clock|Equal0~7_combout\);

-- Location: LCCOMB_X16_Y19_N0
\auto_clock|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \auto_clock|Equal0~5_combout\ = (!\auto_clock|count\(18) & (!\auto_clock|count\(17) & (!\auto_clock|count\(19) & !\auto_clock|count\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_clock|count\(18),
	datab => \auto_clock|count\(17),
	datac => \auto_clock|count\(19),
	datad => \auto_clock|count\(16),
	combout => \auto_clock|Equal0~5_combout\);

-- Location: LCCOMB_X16_Y20_N6
\auto_clock|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \auto_clock|Equal0~0_combout\ = (\auto_clock|count\(1) & (!\auto_clock|count\(3) & (!\auto_clock|count\(0) & !\auto_clock|count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_clock|count\(1),
	datab => \auto_clock|count\(3),
	datac => \auto_clock|count\(0),
	datad => \auto_clock|count\(2),
	combout => \auto_clock|Equal0~0_combout\);

-- Location: LCCOMB_X17_Y20_N0
\auto_clock|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \auto_clock|Equal0~2_combout\ = (!\auto_clock|count\(8) & (!\auto_clock|count\(11) & (!\auto_clock|count\(10) & !\auto_clock|count\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_clock|count\(8),
	datab => \auto_clock|count\(11),
	datac => \auto_clock|count\(10),
	datad => \auto_clock|count\(9),
	combout => \auto_clock|Equal0~2_combout\);

-- Location: LCCOMB_X16_Y20_N4
\auto_clock|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \auto_clock|Equal0~3_combout\ = (!\auto_clock|count\(12) & (!\auto_clock|count\(15) & (!\auto_clock|count\(14) & !\auto_clock|count\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_clock|count\(12),
	datab => \auto_clock|count\(15),
	datac => \auto_clock|count\(14),
	datad => \auto_clock|count\(13),
	combout => \auto_clock|Equal0~3_combout\);

-- Location: LCCOMB_X16_Y20_N28
\auto_clock|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \auto_clock|Equal0~1_combout\ = (!\auto_clock|count\(7) & (!\auto_clock|count\(4) & (!\auto_clock|count\(6) & !\auto_clock|count\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_clock|count\(7),
	datab => \auto_clock|count\(4),
	datac => \auto_clock|count\(6),
	datad => \auto_clock|count\(5),
	combout => \auto_clock|Equal0~1_combout\);

-- Location: LCCOMB_X16_Y20_N26
\auto_clock|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \auto_clock|Equal0~4_combout\ = (\auto_clock|Equal0~0_combout\ & (\auto_clock|Equal0~2_combout\ & (\auto_clock|Equal0~3_combout\ & \auto_clock|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_clock|Equal0~0_combout\,
	datab => \auto_clock|Equal0~2_combout\,
	datac => \auto_clock|Equal0~3_combout\,
	datad => \auto_clock|Equal0~1_combout\,
	combout => \auto_clock|Equal0~4_combout\);

-- Location: LCCOMB_X17_Y19_N28
\auto_clock|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \auto_clock|Equal0~6_combout\ = (!\auto_clock|count\(21) & (!\auto_clock|count\(22) & (!\auto_clock|count\(20) & !\auto_clock|count\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_clock|count\(21),
	datab => \auto_clock|count\(22),
	datac => \auto_clock|count\(20),
	datad => \auto_clock|count\(23),
	combout => \auto_clock|Equal0~6_combout\);

-- Location: LCCOMB_X16_Y20_N24
\auto_clock|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \auto_clock|Equal0~8_combout\ = (\auto_clock|Equal0~7_combout\ & (\auto_clock|Equal0~5_combout\ & (\auto_clock|Equal0~4_combout\ & \auto_clock|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_clock|Equal0~7_combout\,
	datab => \auto_clock|Equal0~5_combout\,
	datac => \auto_clock|Equal0~4_combout\,
	datad => \auto_clock|Equal0~6_combout\,
	combout => \auto_clock|Equal0~8_combout\);

-- Location: LCCOMB_X16_Y20_N8
\auto_clock|vector_aux[0]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \auto_clock|vector_aux[0]~21_combout\ = \auto_clock|vector_aux\(0) $ (\auto_clock|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_clock|vector_aux\(0),
	datad => \auto_clock|Equal0~8_combout\,
	combout => \auto_clock|vector_aux[0]~21_combout\);

-- Location: FF_X16_Y20_N9
\auto_clock|vector_aux[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_1~inputclkctrl_outclk\,
	d => \auto_clock|vector_aux[0]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_clock|vector_aux\(0));

-- Location: LCCOMB_X16_Y20_N10
\auto_clock|vector_aux[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \auto_clock|vector_aux[1]~7_combout\ = (\auto_clock|vector_aux\(1) & (\auto_clock|vector_aux\(0) $ (VCC))) # (!\auto_clock|vector_aux\(1) & (\auto_clock|vector_aux\(0) & VCC))
-- \auto_clock|vector_aux[1]~8\ = CARRY((\auto_clock|vector_aux\(1) & \auto_clock|vector_aux\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_clock|vector_aux\(1),
	datab => \auto_clock|vector_aux\(0),
	datad => VCC,
	combout => \auto_clock|vector_aux[1]~7_combout\,
	cout => \auto_clock|vector_aux[1]~8\);

-- Location: FF_X16_Y20_N11
\auto_clock|vector_aux[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_1~inputclkctrl_outclk\,
	d => \auto_clock|vector_aux[1]~7_combout\,
	ena => \auto_clock|Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_clock|vector_aux\(1));

-- Location: LCCOMB_X16_Y20_N12
\auto_clock|vector_aux[2]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \auto_clock|vector_aux[2]~9_combout\ = (\auto_clock|vector_aux\(2) & (!\auto_clock|vector_aux[1]~8\)) # (!\auto_clock|vector_aux\(2) & ((\auto_clock|vector_aux[1]~8\) # (GND)))
-- \auto_clock|vector_aux[2]~10\ = CARRY((!\auto_clock|vector_aux[1]~8\) # (!\auto_clock|vector_aux\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \auto_clock|vector_aux\(2),
	datad => VCC,
	cin => \auto_clock|vector_aux[1]~8\,
	combout => \auto_clock|vector_aux[2]~9_combout\,
	cout => \auto_clock|vector_aux[2]~10\);

-- Location: FF_X16_Y20_N13
\auto_clock|vector_aux[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_1~inputclkctrl_outclk\,
	d => \auto_clock|vector_aux[2]~9_combout\,
	ena => \auto_clock|Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_clock|vector_aux\(2));

-- Location: LCCOMB_X16_Y20_N14
\auto_clock|vector_aux[3]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \auto_clock|vector_aux[3]~11_combout\ = (\auto_clock|vector_aux\(3) & (\auto_clock|vector_aux[2]~10\ $ (GND))) # (!\auto_clock|vector_aux\(3) & (!\auto_clock|vector_aux[2]~10\ & VCC))
-- \auto_clock|vector_aux[3]~12\ = CARRY((\auto_clock|vector_aux\(3) & !\auto_clock|vector_aux[2]~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \auto_clock|vector_aux\(3),
	datad => VCC,
	cin => \auto_clock|vector_aux[2]~10\,
	combout => \auto_clock|vector_aux[3]~11_combout\,
	cout => \auto_clock|vector_aux[3]~12\);

-- Location: FF_X16_Y20_N15
\auto_clock|vector_aux[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_1~inputclkctrl_outclk\,
	d => \auto_clock|vector_aux[3]~11_combout\,
	ena => \auto_clock|Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_clock|vector_aux\(3));

-- Location: LCCOMB_X16_Y20_N16
\auto_clock|vector_aux[4]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \auto_clock|vector_aux[4]~13_combout\ = (\auto_clock|vector_aux\(4) & (!\auto_clock|vector_aux[3]~12\)) # (!\auto_clock|vector_aux\(4) & ((\auto_clock|vector_aux[3]~12\) # (GND)))
-- \auto_clock|vector_aux[4]~14\ = CARRY((!\auto_clock|vector_aux[3]~12\) # (!\auto_clock|vector_aux\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \auto_clock|vector_aux\(4),
	datad => VCC,
	cin => \auto_clock|vector_aux[3]~12\,
	combout => \auto_clock|vector_aux[4]~13_combout\,
	cout => \auto_clock|vector_aux[4]~14\);

-- Location: FF_X16_Y20_N17
\auto_clock|vector_aux[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_1~inputclkctrl_outclk\,
	d => \auto_clock|vector_aux[4]~13_combout\,
	ena => \auto_clock|Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_clock|vector_aux\(4));

-- Location: LCCOMB_X16_Y20_N2
\sum|bit0|HA1|sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \sum|bit0|HA1|sum~combout\ = \auto_clock|vector_aux\(4) $ (\auto_clock|vector_aux\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_clock|vector_aux\(4),
	datac => \auto_clock|vector_aux\(0),
	combout => \sum|bit0|HA1|sum~combout\);

-- Location: IOIBUF_X13_Y24_N22
\sW[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sW(0),
	o => \sW[0]~input_o\);

-- Location: LCCOMB_X16_Y20_N18
\auto_clock|vector_aux[5]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \auto_clock|vector_aux[5]~15_combout\ = (\auto_clock|vector_aux\(5) & (\auto_clock|vector_aux[4]~14\ $ (GND))) # (!\auto_clock|vector_aux\(5) & (!\auto_clock|vector_aux[4]~14\ & VCC))
-- \auto_clock|vector_aux[5]~16\ = CARRY((\auto_clock|vector_aux\(5) & !\auto_clock|vector_aux[4]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \auto_clock|vector_aux\(5),
	datad => VCC,
	cin => \auto_clock|vector_aux[4]~14\,
	combout => \auto_clock|vector_aux[5]~15_combout\,
	cout => \auto_clock|vector_aux[5]~16\);

-- Location: FF_X16_Y20_N19
\auto_clock|vector_aux[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_1~inputclkctrl_outclk\,
	d => \auto_clock|vector_aux[5]~15_combout\,
	ena => \auto_clock|Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_clock|vector_aux\(5));

-- Location: LCCOMB_X16_Y20_N20
\auto_clock|vector_aux[6]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \auto_clock|vector_aux[6]~17_combout\ = (\auto_clock|vector_aux\(6) & (!\auto_clock|vector_aux[5]~16\)) # (!\auto_clock|vector_aux\(6) & ((\auto_clock|vector_aux[5]~16\) # (GND)))
-- \auto_clock|vector_aux[6]~18\ = CARRY((!\auto_clock|vector_aux[5]~16\) # (!\auto_clock|vector_aux\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \auto_clock|vector_aux\(6),
	datad => VCC,
	cin => \auto_clock|vector_aux[5]~16\,
	combout => \auto_clock|vector_aux[6]~17_combout\,
	cout => \auto_clock|vector_aux[6]~18\);

-- Location: FF_X16_Y20_N21
\auto_clock|vector_aux[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_1~inputclkctrl_outclk\,
	d => \auto_clock|vector_aux[6]~17_combout\,
	ena => \auto_clock|Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_clock|vector_aux\(6));

-- Location: LCCOMB_X16_Y20_N22
\auto_clock|vector_aux[7]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \auto_clock|vector_aux[7]~19_combout\ = \auto_clock|vector_aux\(7) $ (!\auto_clock|vector_aux[6]~18\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \auto_clock|vector_aux\(7),
	cin => \auto_clock|vector_aux[6]~18\,
	combout => \auto_clock|vector_aux[7]~19_combout\);

-- Location: FF_X16_Y20_N23
\auto_clock|vector_aux[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_1~inputclkctrl_outclk\,
	d => \auto_clock|vector_aux[7]~19_combout\,
	ena => \auto_clock|Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_clock|vector_aux\(7));

-- Location: LCCOMB_X17_Y22_N4
\greater|result[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \greater|result[0]~0_combout\ = (\auto_clock|vector_aux\(5) & (!\auto_clock|vector_aux\(1))) # (!\auto_clock|vector_aux\(5) & (\auto_clock|vector_aux\(1) & (\auto_clock|vector_aux\(4) & !\auto_clock|vector_aux\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_clock|vector_aux\(5),
	datab => \auto_clock|vector_aux\(1),
	datac => \auto_clock|vector_aux\(4),
	datad => \auto_clock|vector_aux\(0),
	combout => \greater|result[0]~0_combout\);

-- Location: LCCOMB_X16_Y22_N4
\greater|result[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \greater|result[0]~1_combout\ = (\auto_clock|vector_aux\(2) & (!\auto_clock|vector_aux\(6) & \greater|result[0]~0_combout\)) # (!\auto_clock|vector_aux\(2) & (\auto_clock|vector_aux\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_clock|vector_aux\(2),
	datac => \auto_clock|vector_aux\(6),
	datad => \greater|result[0]~0_combout\,
	combout => \greater|result[0]~1_combout\);

-- Location: LCCOMB_X14_Y22_N28
\greater|result[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \greater|result[0]~2_combout\ = (\auto_clock|vector_aux\(3) & (!\auto_clock|vector_aux\(7) & \greater|result[0]~1_combout\)) # (!\auto_clock|vector_aux\(3) & (\auto_clock|vector_aux\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_clock|vector_aux\(3),
	datac => \auto_clock|vector_aux\(7),
	datad => \greater|result[0]~1_combout\,
	combout => \greater|result[0]~2_combout\);

-- Location: IOIBUF_X16_Y24_N1
\sW[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sW(1),
	o => \sW[1]~input_o\);

-- Location: LCCOMB_X17_Y22_N30
\greater|X[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \greater|X[3]~0_combout\ = \auto_clock|vector_aux\(7) $ (\auto_clock|vector_aux\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_clock|vector_aux\(7),
	datad => \auto_clock|vector_aux\(3),
	combout => \greater|X[3]~0_combout\);

-- Location: LCCOMB_X17_Y22_N8
\equal|result[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \equal|result[0]~0_combout\ = (\auto_clock|vector_aux\(5) & ((\auto_clock|vector_aux\(2) $ (\auto_clock|vector_aux\(6))) # (!\auto_clock|vector_aux\(1)))) # (!\auto_clock|vector_aux\(5) & ((\auto_clock|vector_aux\(1)) # (\auto_clock|vector_aux\(2) $ 
-- (\auto_clock|vector_aux\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111111110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_clock|vector_aux\(5),
	datab => \auto_clock|vector_aux\(1),
	datac => \auto_clock|vector_aux\(2),
	datad => \auto_clock|vector_aux\(6),
	combout => \equal|result[0]~0_combout\);

-- Location: LCCOMB_X17_Y22_N26
\equal|result[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \equal|result\(0) = (\greater|X[3]~0_combout\) # ((\equal|result[0]~0_combout\) # (\auto_clock|vector_aux\(4) $ (\auto_clock|vector_aux\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \greater|X[3]~0_combout\,
	datab => \equal|result[0]~0_combout\,
	datac => \auto_clock|vector_aux\(4),
	datad => \auto_clock|vector_aux\(0),
	combout => \equal|result\(0));

-- Location: LCCOMB_X13_Y22_N16
\Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (\sW[1]~input_o\ & ((\sW[0]~input_o\) # ((!\equal|result\(0))))) # (!\sW[1]~input_o\ & (!\sW[0]~input_o\ & ((!\sum|bit0|HA1|sum~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sW[1]~input_o\,
	datab => \sW[0]~input_o\,
	datac => \equal|result\(0),
	datad => \sum|bit0|HA1|sum~combout\,
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X17_Y22_N16
\lesser|result[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lesser|result[0]~0_combout\ = (\auto_clock|vector_aux\(5) & (!\auto_clock|vector_aux\(1) & (!\auto_clock|vector_aux\(4) & \auto_clock|vector_aux\(0)))) # (!\auto_clock|vector_aux\(5) & (\auto_clock|vector_aux\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_clock|vector_aux\(5),
	datab => \auto_clock|vector_aux\(1),
	datac => \auto_clock|vector_aux\(4),
	datad => \auto_clock|vector_aux\(0),
	combout => \lesser|result[0]~0_combout\);

-- Location: LCCOMB_X17_Y22_N22
\lesser|result[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \lesser|result[0]~1_combout\ = (\auto_clock|vector_aux\(6) & (!\auto_clock|vector_aux\(2) & \lesser|result[0]~0_combout\)) # (!\auto_clock|vector_aux\(6) & (\auto_clock|vector_aux\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_clock|vector_aux\(6),
	datac => \auto_clock|vector_aux\(2),
	datad => \lesser|result[0]~0_combout\,
	combout => \lesser|result[0]~1_combout\);

-- Location: LCCOMB_X14_Y22_N10
\lesser|result[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \lesser|result[0]~2_combout\ = (\auto_clock|vector_aux\(3) & (!\auto_clock|vector_aux\(7))) # (!\auto_clock|vector_aux\(3) & (\auto_clock|vector_aux\(7) & \lesser|result[0]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_clock|vector_aux\(3),
	datac => \auto_clock|vector_aux\(7),
	datad => \lesser|result[0]~1_combout\,
	combout => \lesser|result[0]~2_combout\);

-- Location: LCCOMB_X14_Y22_N24
\Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~1_combout\ = (\sW[0]~input_o\ & ((\Mux3~0_combout\ & ((\lesser|result[0]~2_combout\))) # (!\Mux3~0_combout\ & (\greater|result[0]~2_combout\)))) # (!\sW[0]~input_o\ & (((\Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sW[0]~input_o\,
	datab => \greater|result[0]~2_combout\,
	datac => \Mux3~0_combout\,
	datad => \lesser|result[0]~2_combout\,
	combout => \Mux3~1_combout\);

-- Location: IOIBUF_X11_Y24_N15
\sW[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sW(2),
	o => \sW[2]~input_o\);

-- Location: LCCOMB_X13_Y22_N2
\Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~2_combout\ = (\sW[2]~input_o\ & (((\Mux3~1_combout\)))) # (!\sW[2]~input_o\ & (\sum|bit0|HA1|sum~combout\ $ (((\sW[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sum|bit0|HA1|sum~combout\,
	datab => \Mux3~1_combout\,
	datac => \sW[1]~input_o\,
	datad => \sW[2]~input_o\,
	combout => \Mux3~2_combout\);

-- Location: LCCOMB_X17_Y22_N6
\sum|bit1|HA2|sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \sum|bit1|HA2|sum~combout\ = \auto_clock|vector_aux\(5) $ (\auto_clock|vector_aux\(1) $ (((\auto_clock|vector_aux\(4) & \auto_clock|vector_aux\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_clock|vector_aux\(5),
	datab => \auto_clock|vector_aux\(1),
	datac => \auto_clock|vector_aux\(4),
	datad => \auto_clock|vector_aux\(0),
	combout => \sum|bit1|HA2|sum~combout\);

-- Location: LCCOMB_X17_Y22_N14
\decr|bit1_dec|HA2|sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \decr|bit1_dec|HA2|sum~0_combout\ = \auto_clock|vector_aux\(5) $ (\auto_clock|vector_aux\(1) $ (((!\auto_clock|vector_aux\(4) & \auto_clock|vector_aux\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_clock|vector_aux\(5),
	datab => \auto_clock|vector_aux\(1),
	datac => \auto_clock|vector_aux\(4),
	datad => \auto_clock|vector_aux\(0),
	combout => \decr|bit1_dec|HA2|sum~0_combout\);

-- Location: LCCOMB_X17_Y22_N0
\incr|bit1|HA2|sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \incr|bit1|HA2|sum~combout\ = \auto_clock|vector_aux\(5) $ (\auto_clock|vector_aux\(1) $ (((\auto_clock|vector_aux\(4)) # (\auto_clock|vector_aux\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_clock|vector_aux\(5),
	datab => \auto_clock|vector_aux\(1),
	datac => \auto_clock|vector_aux\(4),
	datad => \auto_clock|vector_aux\(0),
	combout => \incr|bit1|HA2|sum~combout\);

-- Location: LCCOMB_X17_Y22_N12
\Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (\sW[1]~input_o\ & ((\incr|bit1|HA2|sum~combout\) # ((\sW[0]~input_o\)))) # (!\sW[1]~input_o\ & (((!\sW[0]~input_o\ & \sum|bit1|HA2|sum~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sW[1]~input_o\,
	datab => \incr|bit1|HA2|sum~combout\,
	datac => \sW[0]~input_o\,
	datad => \sum|bit1|HA2|sum~combout\,
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X13_Y22_N24
\Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~1_combout\ = (\sW[0]~input_o\ & (\decr|bit1_dec|HA2|sum~0_combout\ $ (((!\auto_clock|vector_aux\(4) & \Mux2~0_combout\))))) # (!\sW[0]~input_o\ & (((\Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decr|bit1_dec|HA2|sum~0_combout\,
	datab => \auto_clock|vector_aux\(4),
	datac => \Mux2~0_combout\,
	datad => \sW[0]~input_o\,
	combout => \Mux2~1_combout\);

-- Location: LCCOMB_X13_Y22_N14
\Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (\sW[2]~input_o\ & (!\sW[1]~input_o\ & !\sW[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sW[2]~input_o\,
	datac => \sW[1]~input_o\,
	datad => \sW[0]~input_o\,
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X13_Y22_N20
\Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~2_combout\ = (\sum|bit1|HA2|sum~combout\ & (\Mux2~1_combout\ & ((!\sW[2]~input_o\)))) # (!\sum|bit1|HA2|sum~combout\ & ((\Mux0~0_combout\) # ((\Mux2~1_combout\ & !\sW[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sum|bit1|HA2|sum~combout\,
	datab => \Mux2~1_combout\,
	datac => \Mux0~0_combout\,
	datad => \sW[2]~input_o\,
	combout => \Mux2~2_combout\);

-- Location: LCCOMB_X17_Y22_N28
\incr|bit1|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \incr|bit1|cout~0_combout\ = (\auto_clock|vector_aux\(5) & ((\auto_clock|vector_aux\(1)) # ((\auto_clock|vector_aux\(4)) # (\auto_clock|vector_aux\(0))))) # (!\auto_clock|vector_aux\(5) & (\auto_clock|vector_aux\(1) & ((\auto_clock|vector_aux\(4)) # 
-- (\auto_clock|vector_aux\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_clock|vector_aux\(5),
	datab => \auto_clock|vector_aux\(1),
	datac => \auto_clock|vector_aux\(4),
	datad => \auto_clock|vector_aux\(0),
	combout => \incr|bit1|cout~0_combout\);

-- Location: LCCOMB_X16_Y22_N10
\incr|bit2|HA2|sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \incr|bit2|HA2|sum~combout\ = \auto_clock|vector_aux\(2) $ (\auto_clock|vector_aux\(6) $ (\incr|bit1|cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_clock|vector_aux\(2),
	datac => \auto_clock|vector_aux\(6),
	datad => \incr|bit1|cout~0_combout\,
	combout => \incr|bit2|HA2|sum~combout\);

-- Location: LCCOMB_X17_Y22_N2
\diff|bit1|cout\ : cycloneive_lcell_comb
-- Equation(s):
-- \diff|bit1|cout~combout\ = (\auto_clock|vector_aux\(5) & (((\auto_clock|vector_aux\(4)) # (!\auto_clock|vector_aux\(0))) # (!\auto_clock|vector_aux\(1)))) # (!\auto_clock|vector_aux\(5) & (!\auto_clock|vector_aux\(1) & ((\auto_clock|vector_aux\(4)) # 
-- (!\auto_clock|vector_aux\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_clock|vector_aux\(5),
	datab => \auto_clock|vector_aux\(1),
	datac => \auto_clock|vector_aux\(4),
	datad => \auto_clock|vector_aux\(0),
	combout => \diff|bit1|cout~combout\);

-- Location: LCCOMB_X16_Y22_N28
\diff|bit2|HA2|sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \diff|bit2|HA2|sum~combout\ = \auto_clock|vector_aux\(2) $ (\diff|bit1|cout~combout\ $ (\auto_clock|vector_aux\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_clock|vector_aux\(2),
	datab => \diff|bit1|cout~combout\,
	datac => \auto_clock|vector_aux\(6),
	combout => \diff|bit2|HA2|sum~combout\);

-- Location: LCCOMB_X17_Y22_N24
\sum|bit1|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sum|bit1|cout~0_combout\ = (\auto_clock|vector_aux\(5) & ((\auto_clock|vector_aux\(1)) # ((\auto_clock|vector_aux\(4) & \auto_clock|vector_aux\(0))))) # (!\auto_clock|vector_aux\(5) & (\auto_clock|vector_aux\(1) & (\auto_clock|vector_aux\(4) & 
-- \auto_clock|vector_aux\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_clock|vector_aux\(5),
	datab => \auto_clock|vector_aux\(1),
	datac => \auto_clock|vector_aux\(4),
	datad => \auto_clock|vector_aux\(0),
	combout => \sum|bit1|cout~0_combout\);

-- Location: LCCOMB_X16_Y22_N22
\sum|bit2|HA2|sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \sum|bit2|HA2|sum~combout\ = \auto_clock|vector_aux\(2) $ (\auto_clock|vector_aux\(6) $ (\sum|bit1|cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_clock|vector_aux\(2),
	datac => \auto_clock|vector_aux\(6),
	datad => \sum|bit1|cout~0_combout\,
	combout => \sum|bit2|HA2|sum~combout\);

-- Location: LCCOMB_X16_Y22_N24
\Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (\sW[0]~input_o\ & (((\sW[1]~input_o\)) # (!\diff|bit2|HA2|sum~combout\))) # (!\sW[0]~input_o\ & (((\sum|bit2|HA2|sum~combout\ & !\sW[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \diff|bit2|HA2|sum~combout\,
	datab => \sW[0]~input_o\,
	datac => \sum|bit2|HA2|sum~combout\,
	datad => \sW[1]~input_o\,
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X16_Y20_N0
\decr|bit1|cout\ : cycloneive_lcell_comb
-- Equation(s):
-- \decr|bit1|cout~combout\ = (\auto_clock|vector_aux\(4)) # (\auto_clock|vector_aux\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_clock|vector_aux\(4),
	datad => \auto_clock|vector_aux\(5),
	combout => \decr|bit1|cout~combout\);

-- Location: LCCOMB_X17_Y22_N18
\decr|bit1_dec|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \decr|bit1_dec|cout~0_combout\ = (\auto_clock|vector_aux\(5) & (\auto_clock|vector_aux\(1) & ((\auto_clock|vector_aux\(4)) # (\auto_clock|vector_aux\(0))))) # (!\auto_clock|vector_aux\(5) & (!\auto_clock|vector_aux\(4) & ((\auto_clock|vector_aux\(1)) # 
-- (\auto_clock|vector_aux\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_clock|vector_aux\(5),
	datab => \auto_clock|vector_aux\(1),
	datac => \auto_clock|vector_aux\(4),
	datad => \auto_clock|vector_aux\(0),
	combout => \decr|bit1_dec|cout~0_combout\);

-- Location: LCCOMB_X16_Y22_N26
\decr|bit2_dec|HA2|sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \decr|bit2_dec|HA2|sum~combout\ = \auto_clock|vector_aux\(2) $ (\decr|bit1|cout~combout\ $ (\auto_clock|vector_aux\(6) $ (\decr|bit1_dec|cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_clock|vector_aux\(2),
	datab => \decr|bit1|cout~combout\,
	datac => \auto_clock|vector_aux\(6),
	datad => \decr|bit1_dec|cout~0_combout\,
	combout => \decr|bit2_dec|HA2|sum~combout\);

-- Location: LCCOMB_X16_Y22_N20
\Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~1_combout\ = (\Mux1~0_combout\ & (((!\sW[1]~input_o\) # (!\decr|bit2_dec|HA2|sum~combout\)))) # (!\Mux1~0_combout\ & (\incr|bit2|HA2|sum~combout\ & ((\sW[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \incr|bit2|HA2|sum~combout\,
	datab => \Mux1~0_combout\,
	datac => \decr|bit2_dec|HA2|sum~combout\,
	datad => \sW[1]~input_o\,
	combout => \Mux1~1_combout\);

-- Location: LCCOMB_X13_Y22_N18
\Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~2_combout\ = (\Mux1~1_combout\ & (((!\sum|bit2|HA2|sum~combout\ & \Mux0~0_combout\)) # (!\sW[2]~input_o\))) # (!\Mux1~1_combout\ & (!\sum|bit2|HA2|sum~combout\ & (\Mux0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~1_combout\,
	datab => \sum|bit2|HA2|sum~combout\,
	datac => \Mux0~0_combout\,
	datad => \sW[2]~input_o\,
	combout => \Mux1~2_combout\);

-- Location: LCCOMB_X16_Y22_N30
\decr|bit2_dec|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \decr|bit2_dec|cout~0_combout\ = (\auto_clock|vector_aux\(2) & ((\decr|bit1_dec|cout~0_combout\) # (\decr|bit1|cout~combout\ $ (!\auto_clock|vector_aux\(6))))) # (!\auto_clock|vector_aux\(2) & (\decr|bit1_dec|cout~0_combout\ & (\decr|bit1|cout~combout\ $ 
-- (!\auto_clock|vector_aux\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_clock|vector_aux\(2),
	datab => \decr|bit1|cout~combout\,
	datac => \auto_clock|vector_aux\(6),
	datad => \decr|bit1_dec|cout~0_combout\,
	combout => \decr|bit2_dec|cout~0_combout\);

-- Location: LCCOMB_X16_Y22_N12
\decr|bit3_dec|HA2|sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \decr|bit3_dec|HA2|sum~combout\ = \decr|bit2_dec|cout~0_combout\ $ (\greater|X[3]~0_combout\ $ (((\auto_clock|vector_aux\(6)) # (\decr|bit1|cout~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decr|bit2_dec|cout~0_combout\,
	datab => \auto_clock|vector_aux\(6),
	datac => \greater|X[3]~0_combout\,
	datad => \decr|bit1|cout~combout\,
	combout => \decr|bit3_dec|HA2|sum~combout\);

-- Location: LCCOMB_X16_Y22_N18
\sum|bit3|HA2|sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \sum|bit3|HA2|sum~combout\ = \greater|X[3]~0_combout\ $ (((\sum|bit1|cout~0_combout\ & ((\auto_clock|vector_aux\(6)) # (\auto_clock|vector_aux\(2)))) # (!\sum|bit1|cout~0_combout\ & (\auto_clock|vector_aux\(6) & \auto_clock|vector_aux\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \greater|X[3]~0_combout\,
	datab => \sum|bit1|cout~0_combout\,
	datac => \auto_clock|vector_aux\(6),
	datad => \auto_clock|vector_aux\(2),
	combout => \sum|bit3|HA2|sum~combout\);

-- Location: LCCOMB_X16_Y22_N2
\diff|bit3|HA2|sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \diff|bit3|HA2|sum~combout\ = \greater|X[3]~0_combout\ $ (((\diff|bit1|cout~combout\ & ((\auto_clock|vector_aux\(6)) # (!\auto_clock|vector_aux\(2)))) # (!\diff|bit1|cout~combout\ & (\auto_clock|vector_aux\(6) & !\auto_clock|vector_aux\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101001010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \greater|X[3]~0_combout\,
	datab => \diff|bit1|cout~combout\,
	datac => \auto_clock|vector_aux\(6),
	datad => \auto_clock|vector_aux\(2),
	combout => \diff|bit3|HA2|sum~combout\);

-- Location: LCCOMB_X16_Y22_N0
\Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~1_combout\ = (\sW[0]~input_o\ & (((\sW[1]~input_o\) # (!\diff|bit3|HA2|sum~combout\)))) # (!\sW[0]~input_o\ & (\sum|bit3|HA2|sum~combout\ & ((!\sW[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sum|bit3|HA2|sum~combout\,
	datab => \sW[0]~input_o\,
	datac => \diff|bit3|HA2|sum~combout\,
	datad => \sW[1]~input_o\,
	combout => \Mux0~1_combout\);

-- Location: LCCOMB_X16_Y22_N8
\incr|bit3|HA2|sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \incr|bit3|HA2|sum~combout\ = \greater|X[3]~0_combout\ $ (((\incr|bit1|cout~0_combout\ & ((\auto_clock|vector_aux\(6)) # (\auto_clock|vector_aux\(2)))) # (!\incr|bit1|cout~0_combout\ & (\auto_clock|vector_aux\(6) & \auto_clock|vector_aux\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \greater|X[3]~0_combout\,
	datab => \incr|bit1|cout~0_combout\,
	datac => \auto_clock|vector_aux\(6),
	datad => \auto_clock|vector_aux\(2),
	combout => \incr|bit3|HA2|sum~combout\);

-- Location: LCCOMB_X16_Y22_N6
\Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~2_combout\ = (\Mux0~1_combout\ & (((!\sW[1]~input_o\)) # (!\decr|bit3_dec|HA2|sum~combout\))) # (!\Mux0~1_combout\ & (((\incr|bit3|HA2|sum~combout\ & \sW[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decr|bit3_dec|HA2|sum~combout\,
	datab => \Mux0~1_combout\,
	datac => \incr|bit3|HA2|sum~combout\,
	datad => \sW[1]~input_o\,
	combout => \Mux0~2_combout\);

-- Location: LCCOMB_X13_Y22_N0
\Mux0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~3_combout\ = (\sW[2]~input_o\ & (((\Mux0~0_combout\ & \sum|bit3|HA2|sum~combout\)))) # (!\sW[2]~input_o\ & ((\Mux0~2_combout\) # ((\Mux0~0_combout\ & \sum|bit3|HA2|sum~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sW[2]~input_o\,
	datab => \Mux0~2_combout\,
	datac => \Mux0~0_combout\,
	datad => \sum|bit3|HA2|sum~combout\,
	combout => \Mux0~3_combout\);

-- Location: LCCOMB_X13_Y22_N22
\flags|LEDG~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \flags|LEDG~2_combout\ = (!\sW[1]~input_o\ & !\sW[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sW[1]~input_o\,
	datad => \sW[2]~input_o\,
	combout => \flags|LEDG~2_combout\);

-- Location: LCCOMB_X17_Y22_N20
\flags|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \flags|Add0~0_combout\ = \auto_clock|vector_aux\(3) $ (((\auto_clock|vector_aux\(1)) # ((\auto_clock|vector_aux\(2)) # (\auto_clock|vector_aux\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_clock|vector_aux\(3),
	datab => \auto_clock|vector_aux\(1),
	datac => \auto_clock|vector_aux\(2),
	datad => \auto_clock|vector_aux\(0),
	combout => \flags|Add0~0_combout\);

-- Location: LCCOMB_X17_Y22_N10
\flags|LEDG[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \flags|LEDG[0]~3_combout\ = (\diff|bit3|HA2|sum~combout\ & (\auto_clock|vector_aux\(7) & \flags|Add0~0_combout\)) # (!\diff|bit3|HA2|sum~combout\ & (!\auto_clock|vector_aux\(7) & !\flags|Add0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \diff|bit3|HA2|sum~combout\,
	datab => \auto_clock|vector_aux\(7),
	datad => \flags|Add0~0_combout\,
	combout => \flags|LEDG[0]~3_combout\);

-- Location: LCCOMB_X14_Y22_N2
\flags|LEDG[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \flags|LEDG[0]~4_combout\ = (\auto_clock|vector_aux\(3) & (\auto_clock|vector_aux\(7) & !\sum|bit3|HA2|sum~combout\)) # (!\auto_clock|vector_aux\(3) & (!\auto_clock|vector_aux\(7) & \sum|bit3|HA2|sum~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_clock|vector_aux\(3),
	datac => \auto_clock|vector_aux\(7),
	datad => \sum|bit3|HA2|sum~combout\,
	combout => \flags|LEDG[0]~4_combout\);

-- Location: LCCOMB_X13_Y22_N8
\flags|LEDG[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \flags|LEDG[0]~5_combout\ = (\flags|LEDG~2_combout\ & ((\sW[0]~input_o\ & (\flags|LEDG[0]~3_combout\)) # (!\sW[0]~input_o\ & ((\flags|LEDG[0]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \flags|LEDG~2_combout\,
	datab => \sW[0]~input_o\,
	datac => \flags|LEDG[0]~3_combout\,
	datad => \flags|LEDG[0]~4_combout\,
	combout => \flags|LEDG[0]~5_combout\);

-- Location: LCCOMB_X16_Y22_N16
\sum|bit2|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sum|bit2|cout~0_combout\ = (\auto_clock|vector_aux\(2) & ((\auto_clock|vector_aux\(6)) # (\sum|bit1|cout~0_combout\))) # (!\auto_clock|vector_aux\(2) & (\auto_clock|vector_aux\(6) & \sum|bit1|cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_clock|vector_aux\(2),
	datac => \auto_clock|vector_aux\(6),
	datad => \sum|bit1|cout~0_combout\,
	combout => \sum|bit2|cout~0_combout\);

-- Location: LCCOMB_X14_Y22_N12
\flags|LEDG[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \flags|LEDG[1]~6_combout\ = (!\sW[0]~input_o\ & ((\auto_clock|vector_aux\(7) & ((\auto_clock|vector_aux\(3)) # (\sum|bit2|cout~0_combout\))) # (!\auto_clock|vector_aux\(7) & (\auto_clock|vector_aux\(3) & \sum|bit2|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_clock|vector_aux\(7),
	datab => \auto_clock|vector_aux\(3),
	datac => \sW[0]~input_o\,
	datad => \sum|bit2|cout~0_combout\,
	combout => \flags|LEDG[1]~6_combout\);

-- Location: LCCOMB_X16_Y22_N14
\flags|LEDG[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \flags|LEDG[1]~7_combout\ = (!\greater|X[3]~0_combout\ & ((\diff|bit1|cout~combout\ & ((\auto_clock|vector_aux\(6)) # (!\auto_clock|vector_aux\(2)))) # (!\diff|bit1|cout~combout\ & (\auto_clock|vector_aux\(6) & !\auto_clock|vector_aux\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \greater|X[3]~0_combout\,
	datab => \diff|bit1|cout~combout\,
	datac => \auto_clock|vector_aux\(6),
	datad => \auto_clock|vector_aux\(2),
	combout => \flags|LEDG[1]~7_combout\);

-- Location: LCCOMB_X14_Y22_N18
\flags|LEDG[1]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \flags|LEDG[1]~8_combout\ = (\sW[0]~input_o\ & ((\flags|LEDG[1]~7_combout\) # ((\auto_clock|vector_aux\(7) & !\auto_clock|vector_aux\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_clock|vector_aux\(7),
	datab => \auto_clock|vector_aux\(3),
	datac => \sW[0]~input_o\,
	datad => \flags|LEDG[1]~7_combout\,
	combout => \flags|LEDG[1]~8_combout\);

-- Location: LCCOMB_X14_Y22_N0
\flags|LEDG[1]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \flags|LEDG[1]~14_combout\ = (!\sW[2]~input_o\ & (!\sW[1]~input_o\ & ((\flags|LEDG[1]~6_combout\) # (\flags|LEDG[1]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \flags|LEDG[1]~6_combout\,
	datab => \flags|LEDG[1]~8_combout\,
	datac => \sW[2]~input_o\,
	datad => \sW[1]~input_o\,
	combout => \flags|LEDG[1]~14_combout\);

-- Location: LCCOMB_X13_Y22_N26
\flags|LEDG[2]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \flags|LEDG[2]~9_combout\ = (\flags|LEDG~2_combout\ & ((\sW[0]~input_o\ & (!\diff|bit3|HA2|sum~combout\)) # (!\sW[0]~input_o\ & ((\sum|bit3|HA2|sum~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \flags|LEDG~2_combout\,
	datab => \sW[0]~input_o\,
	datac => \diff|bit3|HA2|sum~combout\,
	datad => \sum|bit3|HA2|sum~combout\,
	combout => \flags|LEDG[2]~9_combout\);

-- Location: LCCOMB_X13_Y22_N12
\flags|LEDG[3]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \flags|LEDG[3]~10_combout\ = (!\sum|bit0|HA1|sum~combout\ & (\sW[0]~input_o\ & (\flags|LEDG~2_combout\ & !\decr|bit1_dec|HA2|sum~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sum|bit0|HA1|sum~combout\,
	datab => \sW[0]~input_o\,
	datac => \flags|LEDG~2_combout\,
	datad => \decr|bit1_dec|HA2|sum~0_combout\,
	combout => \flags|LEDG[3]~10_combout\);

-- Location: LCCOMB_X13_Y22_N30
\flags|LEDG[3]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \flags|LEDG[3]~11_combout\ = (\flags|LEDG[3]~10_combout\ & (\diff|bit3|HA2|sum~combout\ & \diff|bit2|HA2|sum~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \flags|LEDG[3]~10_combout\,
	datac => \diff|bit3|HA2|sum~combout\,
	datad => \diff|bit2|HA2|sum~combout\,
	combout => \flags|LEDG[3]~11_combout\);

-- Location: LCCOMB_X13_Y22_N28
\flags|LEDG~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \flags|LEDG~12_combout\ = (!\sum|bit3|HA2|sum~combout\ & (!\sum|bit2|HA2|sum~combout\ & (!\sum|bit1|HA2|sum~combout\ & !\sum|bit0|HA1|sum~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sum|bit3|HA2|sum~combout\,
	datab => \sum|bit2|HA2|sum~combout\,
	datac => \sum|bit1|HA2|sum~combout\,
	datad => \sum|bit0|HA1|sum~combout\,
	combout => \flags|LEDG~12_combout\);

-- Location: LCCOMB_X13_Y22_N10
\flags|LEDG[3]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \flags|LEDG[3]~13_combout\ = (\flags|LEDG[3]~11_combout\) # ((\flags|LEDG~12_combout\ & (\flags|LEDG~2_combout\ & !\sW[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \flags|LEDG[3]~11_combout\,
	datab => \flags|LEDG~12_combout\,
	datac => \flags|LEDG~2_combout\,
	datad => \sW[0]~input_o\,
	combout => \flags|LEDG[3]~13_combout\);

ww_RESULT_ULA(0) <= \RESULT_ULA[0]~output_o\;

ww_RESULT_ULA(1) <= \RESULT_ULA[1]~output_o\;

ww_RESULT_ULA(2) <= \RESULT_ULA[2]~output_o\;

ww_RESULT_ULA(3) <= \RESULT_ULA[3]~output_o\;

ww_LEDG(0) <= \LEDG[0]~output_o\;

ww_LEDG(1) <= \LEDG[1]~output_o\;

ww_LEDG(2) <= \LEDG[2]~output_o\;

ww_LEDG(3) <= \LEDG[3]~output_o\;

ww_LEDR(0) <= \LEDR[0]~output_o\;

ww_LEDR(1) <= \LEDR[1]~output_o\;

ww_LEDR(2) <= \LEDR[2]~output_o\;

ww_LEDR(3) <= \LEDR[3]~output_o\;

ww_LEDR(4) <= \LEDR[4]~output_o\;

ww_LEDR(5) <= \LEDR[5]~output_o\;

ww_LEDR(6) <= \LEDR[6]~output_o\;

ww_LEDR(7) <= \LEDR[7]~output_o\;

ww_LEDR(8) <= \LEDR[8]~output_o\;

ww_LEDR(9) <= \LEDR[9]~output_o\;

ww_LEDR(10) <= \LEDR[10]~output_o\;

ww_LEDR(11) <= \LEDR[11]~output_o\;

ww_LEDR(12) <= \LEDR[12]~output_o\;

ww_LEDR(13) <= \LEDR[13]~output_o\;

ww_LEDR(14) <= \LEDR[14]~output_o\;

ww_LEDR(15) <= \LEDR[15]~output_o\;

ww_LEDR(16) <= \LEDR[16]~output_o\;

ww_LEDR(17) <= \LEDR[17]~output_o\;
END structure;


