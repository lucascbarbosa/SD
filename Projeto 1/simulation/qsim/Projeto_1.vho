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

-- DATE "08/07/2021 21:37:05"

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
	RESULT_ULA : OUT std_logic_vector(3 DOWNTO 0)
	);
END main;

-- Design Ports Information
-- RESULT_ULA[0]	=>  Location: PIN_30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESULT_ULA[1]	=>  Location: PIN_31,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESULT_ULA[2]	=>  Location: PIN_46,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESULT_ULA[3]	=>  Location: PIN_49,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sW[0]	=>  Location: PIN_24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sW[1]	=>  Location: PIN_25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sW[2]	=>  Location: PIN_28,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
SIGNAL \clock_1~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RESULT_ULA[0]~output_o\ : std_logic;
SIGNAL \RESULT_ULA[1]~output_o\ : std_logic;
SIGNAL \RESULT_ULA[2]~output_o\ : std_logic;
SIGNAL \RESULT_ULA[3]~output_o\ : std_logic;
SIGNAL \sW[1]~input_o\ : std_logic;
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
SIGNAL \auto_clock|Equal0~1_combout\ : std_logic;
SIGNAL \auto_clock|Equal0~2_combout\ : std_logic;
SIGNAL \auto_clock|Equal0~0_combout\ : std_logic;
SIGNAL \auto_clock|Equal0~3_combout\ : std_logic;
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
SIGNAL \auto_clock|vector_aux[4]~14\ : std_logic;
SIGNAL \auto_clock|vector_aux[5]~15_combout\ : std_logic;
SIGNAL \auto_clock|vector_aux[5]~16\ : std_logic;
SIGNAL \auto_clock|vector_aux[6]~17_combout\ : std_logic;
SIGNAL \auto_clock|vector_aux[6]~18\ : std_logic;
SIGNAL \auto_clock|vector_aux[7]~19_combout\ : std_logic;
SIGNAL \greater|result[0]~0_combout\ : std_logic;
SIGNAL \greater|result[0]~1_combout\ : std_logic;
SIGNAL \greater|result[0]~2_combout\ : std_logic;
SIGNAL \sW[0]~input_o\ : std_logic;
SIGNAL \lesser|result[0]~0_combout\ : std_logic;
SIGNAL \lesser|result[0]~1_combout\ : std_logic;
SIGNAL \lesser|result[0]~2_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \greater|X[3]~0_combout\ : std_logic;
SIGNAL \Mux3~1_combout\ : std_logic;
SIGNAL \Mux3~2_combout\ : std_logic;
SIGNAL \Mux3~3_combout\ : std_logic;
SIGNAL \sW[2]~input_o\ : std_logic;
SIGNAL \sum|bit0|HA1|sum~combout\ : std_logic;
SIGNAL \Mux3~4_combout\ : std_logic;
SIGNAL \Mux2~4_combout\ : std_logic;
SIGNAL \Mux2~2_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Mux2~3_combout\ : std_logic;
SIGNAL \sum|bit1|cout~0_combout\ : std_logic;
SIGNAL \sum|bit2|HA2|sum~combout\ : std_logic;
SIGNAL \diff|bit1|cout~combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \incr|bit1|cout~0_combout\ : std_logic;
SIGNAL \Mux1~2_combout\ : std_logic;
SIGNAL \decr|bit1|cout~combout\ : std_logic;
SIGNAL \decr|bit1_dec|cout~0_combout\ : std_logic;
SIGNAL \decr|bit2_dec|HA2|sum~combout\ : std_logic;
SIGNAL \Mux1~3_combout\ : std_logic;
SIGNAL \Mux1~1_combout\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;
SIGNAL \Mux0~2_combout\ : std_logic;
SIGNAL \Mux0~3_combout\ : std_logic;
SIGNAL \Mux0~4_combout\ : std_logic;
SIGNAL \Mux0~5_combout\ : std_logic;
SIGNAL \Mux0~6_combout\ : std_logic;
SIGNAL \sum|bit3|HA2|sum~combout\ : std_logic;
SIGNAL \Mux0~7_combout\ : std_logic;
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
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clock_1~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock_1~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X0_Y8_N16
\RESULT_ULA[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux3~4_combout\,
	devoe => ww_devoe,
	o => \RESULT_ULA[0]~output_o\);

-- Location: IOOBUF_X0_Y7_N2
\RESULT_ULA[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux2~3_combout\,
	devoe => ww_devoe,
	o => \RESULT_ULA[1]~output_o\);

-- Location: IOOBUF_X7_Y0_N2
\RESULT_ULA[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux1~1_combout\,
	devoe => ww_devoe,
	o => \RESULT_ULA[2]~output_o\);

-- Location: IOOBUF_X13_Y0_N16
\RESULT_ULA[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux0~7_combout\,
	devoe => ww_devoe,
	o => \RESULT_ULA[3]~output_o\);

-- Location: IOIBUF_X0_Y11_N22
\sW[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sW(1),
	o => \sW[1]~input_o\);

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

-- Location: LCCOMB_X12_Y9_N6
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

-- Location: LCCOMB_X12_Y9_N2
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

-- Location: FF_X12_Y9_N3
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

-- Location: LCCOMB_X12_Y9_N8
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

-- Location: LCCOMB_X12_Y9_N4
\auto_clock|count~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \auto_clock|count~0_combout\ = (\auto_clock|Add1~2_combout\ & !\auto_clock|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_clock|Add1~2_combout\,
	datad => \auto_clock|Equal0~8_combout\,
	combout => \auto_clock|count~0_combout\);

-- Location: FF_X12_Y9_N5
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

-- Location: LCCOMB_X12_Y9_N10
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

-- Location: FF_X12_Y9_N11
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

-- Location: LCCOMB_X12_Y9_N12
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

-- Location: FF_X12_Y9_N13
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

-- Location: LCCOMB_X12_Y9_N14
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

-- Location: FF_X12_Y9_N15
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

-- Location: LCCOMB_X12_Y9_N16
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

-- Location: FF_X12_Y9_N17
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

-- Location: LCCOMB_X12_Y9_N18
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

-- Location: FF_X12_Y9_N19
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

-- Location: LCCOMB_X12_Y9_N20
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

-- Location: FF_X12_Y9_N21
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

-- Location: LCCOMB_X12_Y9_N22
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

-- Location: FF_X12_Y9_N23
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

-- Location: LCCOMB_X12_Y9_N24
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

-- Location: FF_X12_Y9_N25
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

-- Location: LCCOMB_X12_Y9_N26
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

-- Location: FF_X12_Y9_N27
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

-- Location: LCCOMB_X12_Y9_N28
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

-- Location: FF_X12_Y9_N29
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

-- Location: LCCOMB_X12_Y9_N30
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

-- Location: FF_X12_Y9_N31
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

-- Location: LCCOMB_X12_Y8_N0
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

-- Location: FF_X12_Y8_N1
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

-- Location: LCCOMB_X12_Y8_N2
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

-- Location: FF_X12_Y8_N3
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

-- Location: LCCOMB_X12_Y8_N4
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

-- Location: FF_X12_Y8_N5
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

-- Location: LCCOMB_X12_Y8_N6
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

-- Location: FF_X12_Y8_N7
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

-- Location: LCCOMB_X12_Y8_N8
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

-- Location: FF_X12_Y8_N9
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

-- Location: LCCOMB_X12_Y8_N10
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

-- Location: FF_X12_Y8_N11
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

-- Location: LCCOMB_X12_Y8_N12
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

-- Location: FF_X12_Y8_N13
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

-- Location: LCCOMB_X12_Y8_N14
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

-- Location: FF_X12_Y8_N15
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

-- Location: LCCOMB_X12_Y8_N16
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

-- Location: FF_X12_Y8_N17
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

-- Location: LCCOMB_X12_Y8_N18
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

-- Location: FF_X12_Y8_N19
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

-- Location: LCCOMB_X12_Y8_N20
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

-- Location: FF_X12_Y8_N21
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

-- Location: LCCOMB_X12_Y8_N22
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

-- Location: FF_X12_Y8_N23
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

-- Location: LCCOMB_X12_Y8_N24
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

-- Location: FF_X12_Y8_N25
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

-- Location: LCCOMB_X12_Y8_N26
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

-- Location: FF_X12_Y8_N27
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

-- Location: LCCOMB_X11_Y8_N0
\auto_clock|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \auto_clock|Equal0~7_combout\ = (!\auto_clock|count\(25) & (!\auto_clock|count\(26) & !\auto_clock|count\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_clock|count\(25),
	datac => \auto_clock|count\(26),
	datad => \auto_clock|count\(24),
	combout => \auto_clock|Equal0~7_combout\);

-- Location: LCCOMB_X12_Y8_N28
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

-- Location: LCCOMB_X11_Y9_N6
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

-- Location: LCCOMB_X12_Y9_N0
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

-- Location: LCCOMB_X11_Y9_N8
\auto_clock|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \auto_clock|Equal0~0_combout\ = (\auto_clock|count\(1) & (!\auto_clock|count\(3) & (!\auto_clock|count\(2) & !\auto_clock|count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_clock|count\(1),
	datab => \auto_clock|count\(3),
	datac => \auto_clock|count\(2),
	datad => \auto_clock|count\(0),
	combout => \auto_clock|Equal0~0_combout\);

-- Location: LCCOMB_X11_Y9_N12
\auto_clock|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \auto_clock|Equal0~3_combout\ = (!\auto_clock|count\(12) & (!\auto_clock|count\(14) & (!\auto_clock|count\(15) & !\auto_clock|count\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_clock|count\(12),
	datab => \auto_clock|count\(14),
	datac => \auto_clock|count\(15),
	datad => \auto_clock|count\(13),
	combout => \auto_clock|Equal0~3_combout\);

-- Location: LCCOMB_X11_Y9_N30
\auto_clock|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \auto_clock|Equal0~4_combout\ = (\auto_clock|Equal0~1_combout\ & (\auto_clock|Equal0~2_combout\ & (\auto_clock|Equal0~0_combout\ & \auto_clock|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_clock|Equal0~1_combout\,
	datab => \auto_clock|Equal0~2_combout\,
	datac => \auto_clock|Equal0~0_combout\,
	datad => \auto_clock|Equal0~3_combout\,
	combout => \auto_clock|Equal0~4_combout\);

-- Location: LCCOMB_X12_Y8_N30
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

-- Location: LCCOMB_X10_Y9_N6
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

-- Location: LCCOMB_X10_Y9_N8
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

-- Location: FF_X10_Y9_N9
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

-- Location: LCCOMB_X10_Y9_N10
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

-- Location: FF_X10_Y9_N11
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

-- Location: LCCOMB_X10_Y9_N12
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

-- Location: FF_X10_Y9_N13
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

-- Location: LCCOMB_X10_Y9_N14
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

-- Location: FF_X10_Y9_N15
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

-- Location: LCCOMB_X10_Y9_N16
\auto_clock|vector_aux[4]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \auto_clock|vector_aux[4]~13_combout\ = (\auto_clock|vector_aux\(4) & (!\auto_clock|vector_aux[3]~12\)) # (!\auto_clock|vector_aux\(4) & ((\auto_clock|vector_aux[3]~12\) # (GND)))
-- \auto_clock|vector_aux[4]~14\ = CARRY((!\auto_clock|vector_aux[3]~12\) # (!\auto_clock|vector_aux\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \auto_clock|vector_aux\(4),
	datad => VCC,
	cin => \auto_clock|vector_aux[3]~12\,
	combout => \auto_clock|vector_aux[4]~13_combout\,
	cout => \auto_clock|vector_aux[4]~14\);

-- Location: FF_X10_Y9_N17
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

-- Location: LCCOMB_X10_Y9_N18
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

-- Location: FF_X10_Y9_N19
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

-- Location: LCCOMB_X10_Y9_N20
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

-- Location: FF_X10_Y9_N21
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

-- Location: LCCOMB_X10_Y9_N22
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

-- Location: FF_X10_Y9_N23
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

-- Location: LCCOMB_X5_Y9_N4
\greater|result[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \greater|result[0]~0_combout\ = (\auto_clock|vector_aux\(1) & (!\auto_clock|vector_aux\(5) & (\auto_clock|vector_aux\(4) & !\auto_clock|vector_aux\(0)))) # (!\auto_clock|vector_aux\(1) & (\auto_clock|vector_aux\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_clock|vector_aux\(1),
	datab => \auto_clock|vector_aux\(5),
	datac => \auto_clock|vector_aux\(4),
	datad => \auto_clock|vector_aux\(0),
	combout => \greater|result[0]~0_combout\);

-- Location: LCCOMB_X5_Y9_N26
\greater|result[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \greater|result[0]~1_combout\ = (\auto_clock|vector_aux\(2) & (\greater|result[0]~0_combout\ & !\auto_clock|vector_aux\(6))) # (!\auto_clock|vector_aux\(2) & ((\auto_clock|vector_aux\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_clock|vector_aux\(2),
	datac => \greater|result[0]~0_combout\,
	datad => \auto_clock|vector_aux\(6),
	combout => \greater|result[0]~1_combout\);

-- Location: LCCOMB_X5_Y9_N12
\greater|result[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \greater|result[0]~2_combout\ = (\auto_clock|vector_aux\(7) & ((!\auto_clock|vector_aux\(3)))) # (!\auto_clock|vector_aux\(7) & (\greater|result[0]~1_combout\ & \auto_clock|vector_aux\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_clock|vector_aux\(7),
	datac => \greater|result[0]~1_combout\,
	datad => \auto_clock|vector_aux\(3),
	combout => \greater|result[0]~2_combout\);

-- Location: IOIBUF_X0_Y11_N15
\sW[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sW(0),
	o => \sW[0]~input_o\);

-- Location: LCCOMB_X5_Y9_N22
\lesser|result[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lesser|result[0]~0_combout\ = (\auto_clock|vector_aux\(1) & (!\auto_clock|vector_aux\(5))) # (!\auto_clock|vector_aux\(1) & (\auto_clock|vector_aux\(5) & (!\auto_clock|vector_aux\(4) & \auto_clock|vector_aux\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_clock|vector_aux\(1),
	datab => \auto_clock|vector_aux\(5),
	datac => \auto_clock|vector_aux\(4),
	datad => \auto_clock|vector_aux\(0),
	combout => \lesser|result[0]~0_combout\);

-- Location: LCCOMB_X5_Y9_N8
\lesser|result[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \lesser|result[0]~1_combout\ = (\auto_clock|vector_aux\(2) & ((!\auto_clock|vector_aux\(6)))) # (!\auto_clock|vector_aux\(2) & (\lesser|result[0]~0_combout\ & \auto_clock|vector_aux\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_clock|vector_aux\(2),
	datac => \lesser|result[0]~0_combout\,
	datad => \auto_clock|vector_aux\(6),
	combout => \lesser|result[0]~1_combout\);

-- Location: LCCOMB_X5_Y9_N14
\lesser|result[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \lesser|result[0]~2_combout\ = (\auto_clock|vector_aux\(7) & (\lesser|result[0]~1_combout\ & !\auto_clock|vector_aux\(3))) # (!\auto_clock|vector_aux\(7) & ((\auto_clock|vector_aux\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_clock|vector_aux\(7),
	datac => \lesser|result[0]~1_combout\,
	datad => \auto_clock|vector_aux\(3),
	combout => \lesser|result[0]~2_combout\);

-- Location: LCCOMB_X5_Y9_N20
\Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (\auto_clock|vector_aux\(1) & ((\auto_clock|vector_aux\(2) $ (\auto_clock|vector_aux\(6))) # (!\auto_clock|vector_aux\(5)))) # (!\auto_clock|vector_aux\(1) & ((\auto_clock|vector_aux\(5)) # (\auto_clock|vector_aux\(2) $ 
-- (\auto_clock|vector_aux\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_clock|vector_aux\(1),
	datab => \auto_clock|vector_aux\(2),
	datac => \auto_clock|vector_aux\(5),
	datad => \auto_clock|vector_aux\(6),
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X5_Y9_N2
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

-- Location: LCCOMB_X5_Y9_N10
\Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~1_combout\ = (\sW[1]~input_o\ & ((\Mux3~0_combout\) # ((\sW[0]~input_o\) # (\greater|X[3]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sW[1]~input_o\,
	datab => \Mux3~0_combout\,
	datac => \sW[0]~input_o\,
	datad => \greater|X[3]~0_combout\,
	combout => \Mux3~1_combout\);

-- Location: LCCOMB_X5_Y9_N0
\Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~2_combout\ = (\Mux3~1_combout\ & (((\sW[0]~input_o\)))) # (!\Mux3~1_combout\ & (!\sW[0]~input_o\ & (\auto_clock|vector_aux\(0) $ (!\auto_clock|vector_aux\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010010100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~1_combout\,
	datab => \auto_clock|vector_aux\(0),
	datac => \sW[0]~input_o\,
	datad => \auto_clock|vector_aux\(4),
	combout => \Mux3~2_combout\);

-- Location: LCCOMB_X5_Y9_N24
\Mux3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~3_combout\ = (\sW[0]~input_o\ & ((\Mux3~2_combout\ & ((\lesser|result[0]~2_combout\))) # (!\Mux3~2_combout\ & (\greater|result[0]~2_combout\)))) # (!\sW[0]~input_o\ & (((\Mux3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \greater|result[0]~2_combout\,
	datab => \sW[0]~input_o\,
	datac => \lesser|result[0]~2_combout\,
	datad => \Mux3~2_combout\,
	combout => \Mux3~3_combout\);

-- Location: IOIBUF_X0_Y9_N8
\sW[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sW(2),
	o => \sW[2]~input_o\);

-- Location: LCCOMB_X5_Y9_N18
\sum|bit0|HA1|sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \sum|bit0|HA1|sum~combout\ = \auto_clock|vector_aux\(4) $ (\auto_clock|vector_aux\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_clock|vector_aux\(4),
	datad => \auto_clock|vector_aux\(0),
	combout => \sum|bit0|HA1|sum~combout\);

-- Location: LCCOMB_X5_Y9_N16
\Mux3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~4_combout\ = (\sW[2]~input_o\ & (((\Mux3~3_combout\)))) # (!\sW[2]~input_o\ & (\sW[1]~input_o\ $ (((\sum|bit0|HA1|sum~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sW[1]~input_o\,
	datab => \Mux3~3_combout\,
	datac => \sW[2]~input_o\,
	datad => \sum|bit0|HA1|sum~combout\,
	combout => \Mux3~4_combout\);

-- Location: LCCOMB_X5_Y9_N6
\Mux2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~4_combout\ = \auto_clock|vector_aux\(1) $ (\auto_clock|vector_aux\(5) $ (((\auto_clock|vector_aux\(4) & \auto_clock|vector_aux\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_clock|vector_aux\(1),
	datab => \auto_clock|vector_aux\(5),
	datac => \auto_clock|vector_aux\(4),
	datad => \auto_clock|vector_aux\(0),
	combout => \Mux2~4_combout\);

-- Location: LCCOMB_X5_Y9_N30
\Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~2_combout\ = (\sW[1]~input_o\ & (\auto_clock|vector_aux\(4) $ (\sW[0]~input_o\ $ (\auto_clock|vector_aux\(0))))) # (!\sW[1]~input_o\ & (((\sW[0]~input_o\ & \auto_clock|vector_aux\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_clock|vector_aux\(4),
	datab => \sW[0]~input_o\,
	datac => \auto_clock|vector_aux\(0),
	datad => \sW[1]~input_o\,
	combout => \Mux2~2_combout\);

-- Location: LCCOMB_X9_Y9_N4
\Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (\sW[2]~input_o\ & (!\sW[1]~input_o\ & !\sW[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sW[2]~input_o\,
	datab => \sW[1]~input_o\,
	datac => \sW[0]~input_o\,
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X5_Y9_N28
\Mux2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~3_combout\ = (\Mux2~4_combout\ & (!\sW[2]~input_o\ & (!\Mux2~2_combout\))) # (!\Mux2~4_combout\ & ((\Mux0~0_combout\) # ((!\sW[2]~input_o\ & \Mux2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~4_combout\,
	datab => \sW[2]~input_o\,
	datac => \Mux2~2_combout\,
	datad => \Mux0~0_combout\,
	combout => \Mux2~3_combout\);

-- Location: LCCOMB_X10_Y9_N30
\sum|bit1|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sum|bit1|cout~0_combout\ = (\auto_clock|vector_aux\(1) & ((\auto_clock|vector_aux\(5)) # ((\auto_clock|vector_aux\(0) & \auto_clock|vector_aux\(4))))) # (!\auto_clock|vector_aux\(1) & (\auto_clock|vector_aux\(0) & (\auto_clock|vector_aux\(4) & 
-- \auto_clock|vector_aux\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_clock|vector_aux\(1),
	datab => \auto_clock|vector_aux\(0),
	datac => \auto_clock|vector_aux\(4),
	datad => \auto_clock|vector_aux\(5),
	combout => \sum|bit1|cout~0_combout\);

-- Location: LCCOMB_X9_Y9_N30
\sum|bit2|HA2|sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \sum|bit2|HA2|sum~combout\ = \sum|bit1|cout~0_combout\ $ (\auto_clock|vector_aux\(2) $ (\auto_clock|vector_aux\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sum|bit1|cout~0_combout\,
	datac => \auto_clock|vector_aux\(2),
	datad => \auto_clock|vector_aux\(6),
	combout => \sum|bit2|HA2|sum~combout\);

-- Location: LCCOMB_X10_Y9_N24
\diff|bit1|cout\ : cycloneive_lcell_comb
-- Equation(s):
-- \diff|bit1|cout~combout\ = (\auto_clock|vector_aux\(1) & (\auto_clock|vector_aux\(5) & ((\auto_clock|vector_aux\(4)) # (!\auto_clock|vector_aux\(0))))) # (!\auto_clock|vector_aux\(1) & (((\auto_clock|vector_aux\(4)) # (\auto_clock|vector_aux\(5))) # 
-- (!\auto_clock|vector_aux\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_clock|vector_aux\(1),
	datab => \auto_clock|vector_aux\(0),
	datac => \auto_clock|vector_aux\(4),
	datad => \auto_clock|vector_aux\(5),
	combout => \diff|bit1|cout~combout\);

-- Location: LCCOMB_X9_Y9_N6
\Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (\sW[0]~input_o\ & ((\sW[1]~input_o\) # ((!\diff|bit1|cout~combout\)))) # (!\sW[0]~input_o\ & (!\sW[1]~input_o\ & (\sum|bit1|cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sW[0]~input_o\,
	datab => \sW[1]~input_o\,
	datac => \sum|bit1|cout~0_combout\,
	datad => \diff|bit1|cout~combout\,
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X10_Y9_N2
\incr|bit1|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \incr|bit1|cout~0_combout\ = (\auto_clock|vector_aux\(1) & ((\auto_clock|vector_aux\(0)) # ((\auto_clock|vector_aux\(4)) # (\auto_clock|vector_aux\(5))))) # (!\auto_clock|vector_aux\(1) & (\auto_clock|vector_aux\(5) & ((\auto_clock|vector_aux\(0)) # 
-- (\auto_clock|vector_aux\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_clock|vector_aux\(1),
	datab => \auto_clock|vector_aux\(0),
	datac => \auto_clock|vector_aux\(4),
	datad => \auto_clock|vector_aux\(5),
	combout => \incr|bit1|cout~0_combout\);

-- Location: LCCOMB_X9_Y9_N14
\Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~2_combout\ = \auto_clock|vector_aux\(2) $ (\auto_clock|vector_aux\(6) $ (((\incr|bit1|cout~0_combout\ & \sW[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \incr|bit1|cout~0_combout\,
	datab => \sW[1]~input_o\,
	datac => \auto_clock|vector_aux\(2),
	datad => \auto_clock|vector_aux\(6),
	combout => \Mux1~2_combout\);

-- Location: LCCOMB_X10_Y9_N28
\decr|bit1|cout\ : cycloneive_lcell_comb
-- Equation(s):
-- \decr|bit1|cout~combout\ = (\auto_clock|vector_aux\(4)) # (\auto_clock|vector_aux\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_clock|vector_aux\(4),
	datad => \auto_clock|vector_aux\(5),
	combout => \decr|bit1|cout~combout\);

-- Location: LCCOMB_X10_Y9_N0
\decr|bit1_dec|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \decr|bit1_dec|cout~0_combout\ = (\auto_clock|vector_aux\(0) & ((\auto_clock|vector_aux\(5) & (\auto_clock|vector_aux\(1))) # (!\auto_clock|vector_aux\(5) & ((!\auto_clock|vector_aux\(4)))))) # (!\auto_clock|vector_aux\(0) & (\auto_clock|vector_aux\(1) & 
-- (\auto_clock|vector_aux\(4) $ (!\auto_clock|vector_aux\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_clock|vector_aux\(1),
	datab => \auto_clock|vector_aux\(0),
	datac => \auto_clock|vector_aux\(4),
	datad => \auto_clock|vector_aux\(5),
	combout => \decr|bit1_dec|cout~0_combout\);

-- Location: LCCOMB_X9_Y9_N20
\decr|bit2_dec|HA2|sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \decr|bit2_dec|HA2|sum~combout\ = \auto_clock|vector_aux\(2) $ (\decr|bit1|cout~combout\ $ (\decr|bit1_dec|cout~0_combout\ $ (\auto_clock|vector_aux\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_clock|vector_aux\(2),
	datab => \decr|bit1|cout~combout\,
	datac => \decr|bit1_dec|cout~0_combout\,
	datad => \auto_clock|vector_aux\(6),
	combout => \decr|bit2_dec|HA2|sum~combout\);

-- Location: LCCOMB_X9_Y9_N28
\Mux1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~3_combout\ = (\Mux1~0_combout\ & ((\sW[1]~input_o\ & ((!\decr|bit2_dec|HA2|sum~combout\))) # (!\sW[1]~input_o\ & (!\Mux1~2_combout\)))) # (!\Mux1~0_combout\ & (((\Mux1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001011011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~0_combout\,
	datab => \sW[1]~input_o\,
	datac => \Mux1~2_combout\,
	datad => \decr|bit2_dec|HA2|sum~combout\,
	combout => \Mux1~3_combout\);

-- Location: LCCOMB_X9_Y9_N24
\Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~1_combout\ = (\sum|bit2|HA2|sum~combout\ & (((!\sW[2]~input_o\ & \Mux1~3_combout\)))) # (!\sum|bit2|HA2|sum~combout\ & ((\Mux0~0_combout\) # ((!\sW[2]~input_o\ & \Mux1~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sum|bit2|HA2|sum~combout\,
	datab => \Mux0~0_combout\,
	datac => \sW[2]~input_o\,
	datad => \Mux1~3_combout\,
	combout => \Mux1~1_combout\);

-- Location: LCCOMB_X9_Y9_N0
\Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~1_combout\ = (\sW[0]~input_o\ & (\sW[1]~input_o\)) # (!\sW[0]~input_o\ & ((\sW[1]~input_o\ & ((\incr|bit1|cout~0_combout\))) # (!\sW[1]~input_o\ & (\sum|bit1|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sW[0]~input_o\,
	datab => \sW[1]~input_o\,
	datac => \sum|bit1|cout~0_combout\,
	datad => \incr|bit1|cout~0_combout\,
	combout => \Mux0~1_combout\);

-- Location: LCCOMB_X9_Y9_N10
\Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~2_combout\ = (\sW[0]~input_o\ & (((!\decr|bit1|cout~combout\ & !\decr|bit1_dec|cout~0_combout\)) # (!\Mux0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sW[0]~input_o\,
	datab => \decr|bit1|cout~combout\,
	datac => \decr|bit1_dec|cout~0_combout\,
	datad => \Mux0~1_combout\,
	combout => \Mux0~2_combout\);

-- Location: LCCOMB_X9_Y9_N16
\Mux0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~3_combout\ = (\Mux0~1_combout\ & ((\decr|bit1|cout~combout\ $ (!\decr|bit1_dec|cout~0_combout\)) # (!\sW[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sW[0]~input_o\,
	datab => \decr|bit1|cout~combout\,
	datac => \decr|bit1_dec|cout~0_combout\,
	datad => \Mux0~1_combout\,
	combout => \Mux0~3_combout\);

-- Location: LCCOMB_X9_Y9_N2
\Mux0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~4_combout\ = (\Mux0~3_combout\ & (!\Mux0~2_combout\)) # (!\Mux0~3_combout\ & (\auto_clock|vector_aux\(2) & ((!\diff|bit1|cout~combout\) # (!\Mux0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~2_combout\,
	datab => \Mux0~3_combout\,
	datac => \auto_clock|vector_aux\(2),
	datad => \diff|bit1|cout~combout\,
	combout => \Mux0~4_combout\);

-- Location: LCCOMB_X9_Y9_N8
\Mux0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~5_combout\ = (\Mux0~3_combout\ & (\Mux0~2_combout\ $ ((\auto_clock|vector_aux\(2))))) # (!\Mux0~3_combout\ & (\Mux0~2_combout\ & ((\auto_clock|vector_aux\(2)) # (!\diff|bit1|cout~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~2_combout\,
	datab => \Mux0~3_combout\,
	datac => \auto_clock|vector_aux\(2),
	datad => \diff|bit1|cout~combout\,
	combout => \Mux0~5_combout\);

-- Location: LCCOMB_X9_Y9_N22
\Mux0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~6_combout\ = \greater|X[3]~0_combout\ $ (((\auto_clock|vector_aux\(6) & (\Mux0~4_combout\)) # (!\auto_clock|vector_aux\(6) & ((\Mux0~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \greater|X[3]~0_combout\,
	datab => \Mux0~4_combout\,
	datac => \Mux0~5_combout\,
	datad => \auto_clock|vector_aux\(6),
	combout => \Mux0~6_combout\);

-- Location: LCCOMB_X9_Y9_N18
\sum|bit3|HA2|sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \sum|bit3|HA2|sum~combout\ = \greater|X[3]~0_combout\ $ (((\sum|bit1|cout~0_combout\ & ((\auto_clock|vector_aux\(2)) # (\auto_clock|vector_aux\(6)))) # (!\sum|bit1|cout~0_combout\ & (\auto_clock|vector_aux\(2) & \auto_clock|vector_aux\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sum|bit1|cout~0_combout\,
	datab => \greater|X[3]~0_combout\,
	datac => \auto_clock|vector_aux\(2),
	datad => \auto_clock|vector_aux\(6),
	combout => \sum|bit3|HA2|sum~combout\);

-- Location: LCCOMB_X9_Y9_N12
\Mux0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~7_combout\ = (\Mux0~6_combout\ & (((\Mux0~0_combout\ & \sum|bit3|HA2|sum~combout\)) # (!\sW[2]~input_o\))) # (!\Mux0~6_combout\ & (\Mux0~0_combout\ & ((\sum|bit3|HA2|sum~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~6_combout\,
	datab => \Mux0~0_combout\,
	datac => \sW[2]~input_o\,
	datad => \sum|bit3|HA2|sum~combout\,
	combout => \Mux0~7_combout\);

ww_RESULT_ULA(0) <= \RESULT_ULA[0]~output_o\;

ww_RESULT_ULA(1) <= \RESULT_ULA[1]~output_o\;

ww_RESULT_ULA(2) <= \RESULT_ULA[2]~output_o\;

ww_RESULT_ULA(3) <= \RESULT_ULA[3]~output_o\;
END structure;


