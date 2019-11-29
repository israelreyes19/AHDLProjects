-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

-- DATE "11/28/2019 22:13:42"

-- 
-- Device: Altera EP4CE22F17C6 Package FBGA256
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
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


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

ENTITY 	RegUniversal IS
    PORT (
	dato : IN std_logic_vector(7 DOWNTO 0);
	reloj : IN std_logic;
	reset : IN std_logic;
	cmd : IN std_logic_vector(2 DOWNTO 0);
	salida : OUT std_logic_vector(7 DOWNTO 0)
	);
END RegUniversal;

-- Design Ports Information
-- salida[0]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- salida[1]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- salida[2]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- salida[3]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- salida[4]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- salida[5]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- salida[6]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- salida[7]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cmd[2]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cmd[1]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cmd[0]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dato[0]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reloj	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dato[1]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dato[2]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dato[3]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dato[4]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dato[5]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dato[6]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dato[7]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF RegUniversal IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_dato : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_reloj : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_cmd : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_salida : std_logic_vector(7 DOWNTO 0);
SIGNAL \reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reloj~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \salida[0]~output_o\ : std_logic;
SIGNAL \salida[1]~output_o\ : std_logic;
SIGNAL \salida[2]~output_o\ : std_logic;
SIGNAL \salida[3]~output_o\ : std_logic;
SIGNAL \salida[4]~output_o\ : std_logic;
SIGNAL \salida[5]~output_o\ : std_logic;
SIGNAL \salida[6]~output_o\ : std_logic;
SIGNAL \salida[7]~output_o\ : std_logic;
SIGNAL \reloj~input_o\ : std_logic;
SIGNAL \reloj~inputclkctrl_outclk\ : std_logic;
SIGNAL \cmd[2]~input_o\ : std_logic;
SIGNAL \cmd[0]~input_o\ : std_logic;
SIGNAL \cmd[1]~input_o\ : std_logic;
SIGNAL \_~0_combout\ : std_logic;
SIGNAL \op_2~1_cout\ : std_logic;
SIGNAL \op_2~2_combout\ : std_logic;
SIGNAL \dato[1]~input_o\ : std_logic;
SIGNAL \R[1]~3_combout\ : std_logic;
SIGNAL \R[1]~4_combout\ : std_logic;
SIGNAL \op_1~0_combout\ : std_logic;
SIGNAL \R[1]~5_combout\ : std_logic;
SIGNAL \R[1]~6_combout\ : std_logic;
SIGNAL \R[1]~7_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \dato[2]~input_o\ : std_logic;
SIGNAL \R[2]~8_combout\ : std_logic;
SIGNAL \op_1~1\ : std_logic;
SIGNAL \op_1~2_combout\ : std_logic;
SIGNAL \op_2~3\ : std_logic;
SIGNAL \op_2~4_combout\ : std_logic;
SIGNAL \R[2]~9_combout\ : std_logic;
SIGNAL \R[2]~10_combout\ : std_logic;
SIGNAL \op_2~5\ : std_logic;
SIGNAL \op_2~6_combout\ : std_logic;
SIGNAL \dato[3]~input_o\ : std_logic;
SIGNAL \op_1~3\ : std_logic;
SIGNAL \op_1~4_combout\ : std_logic;
SIGNAL \R[3]~11_combout\ : std_logic;
SIGNAL \R[3]~12_combout\ : std_logic;
SIGNAL \R[3]~13_combout\ : std_logic;
SIGNAL \op_1~5\ : std_logic;
SIGNAL \op_1~6_combout\ : std_logic;
SIGNAL \dato[4]~input_o\ : std_logic;
SIGNAL \R[4]~14_combout\ : std_logic;
SIGNAL \op_2~7\ : std_logic;
SIGNAL \op_2~8_combout\ : std_logic;
SIGNAL \R[4]~15_combout\ : std_logic;
SIGNAL \R[4]~16_combout\ : std_logic;
SIGNAL \dato[5]~input_o\ : std_logic;
SIGNAL \op_1~7\ : std_logic;
SIGNAL \op_1~8_combout\ : std_logic;
SIGNAL \op_2~9\ : std_logic;
SIGNAL \op_2~10_combout\ : std_logic;
SIGNAL \R[5]~17_combout\ : std_logic;
SIGNAL \R[5]~18_combout\ : std_logic;
SIGNAL \R[5]~19_combout\ : std_logic;
SIGNAL \op_2~11\ : std_logic;
SIGNAL \op_2~12_combout\ : std_logic;
SIGNAL \dato[6]~input_o\ : std_logic;
SIGNAL \R[6]~20_combout\ : std_logic;
SIGNAL \op_1~9\ : std_logic;
SIGNAL \op_1~10_combout\ : std_logic;
SIGNAL \R[6]~21_combout\ : std_logic;
SIGNAL \R[6]~22_combout\ : std_logic;
SIGNAL \R[7]~24_combout\ : std_logic;
SIGNAL \R[7]~25_combout\ : std_logic;
SIGNAL \op_1~11\ : std_logic;
SIGNAL \op_1~12_combout\ : std_logic;
SIGNAL \R[7]~27_combout\ : std_logic;
SIGNAL \dato[7]~input_o\ : std_logic;
SIGNAL \op_2~13\ : std_logic;
SIGNAL \op_2~14_combout\ : std_logic;
SIGNAL \R[7]~23_combout\ : std_logic;
SIGNAL \R[7]~26_combout\ : std_logic;
SIGNAL \R[0]~2_combout\ : std_logic;
SIGNAL \dato[0]~input_o\ : std_logic;
SIGNAL \R[0]~28_combout\ : std_logic;
SIGNAL \R[0]~29_combout\ : std_logic;
SIGNAL R : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_reset~inputclkctrl_outclk\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_dato <= dato;
ww_reloj <= reloj;
ww_reset <= reset;
ww_cmd <= cmd;
salida <= ww_salida;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset~input_o\);

\reloj~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reloj~input_o\);
\ALT_INV_reset~inputclkctrl_outclk\ <= NOT \reset~inputclkctrl_outclk\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X51_Y34_N23
\salida[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => R(0),
	devoe => ww_devoe,
	o => \salida[0]~output_o\);

-- Location: IOOBUF_X53_Y30_N9
\salida[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => R(1),
	devoe => ww_devoe,
	o => \salida[1]~output_o\);

-- Location: IOOBUF_X45_Y34_N9
\salida[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => R(2),
	devoe => ww_devoe,
	o => \salida[2]~output_o\);

-- Location: IOOBUF_X51_Y34_N16
\salida[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => R(3),
	devoe => ww_devoe,
	o => \salida[3]~output_o\);

-- Location: IOOBUF_X45_Y34_N16
\salida[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => R(4),
	devoe => ww_devoe,
	o => \salida[4]~output_o\);

-- Location: IOOBUF_X53_Y26_N23
\salida[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => R(5),
	devoe => ww_devoe,
	o => \salida[5]~output_o\);

-- Location: IOOBUF_X45_Y34_N2
\salida[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => R(6),
	devoe => ww_devoe,
	o => \salida[6]~output_o\);

-- Location: IOOBUF_X53_Y30_N2
\salida[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => R(7),
	devoe => ww_devoe,
	o => \salida[7]~output_o\);

-- Location: IOIBUF_X0_Y16_N8
\reloj~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reloj,
	o => \reloj~input_o\);

-- Location: CLKCTRL_G2
\reloj~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \reloj~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \reloj~inputclkctrl_outclk\);

-- Location: IOIBUF_X53_Y17_N8
\cmd[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cmd(2),
	o => \cmd[2]~input_o\);

-- Location: IOIBUF_X51_Y34_N8
\cmd[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cmd(0),
	o => \cmd[0]~input_o\);

-- Location: IOIBUF_X53_Y17_N1
\cmd[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cmd(1),
	o => \cmd[1]~input_o\);

-- Location: LCCOMB_X44_Y30_N12
\_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \_~0_combout\ = (\cmd[1]~input_o\) # ((\cmd[0]~input_o\) # (\cmd[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmd[1]~input_o\,
	datac => \cmd[0]~input_o\,
	datad => \cmd[2]~input_o\,
	combout => \_~0_combout\);

-- Location: LCCOMB_X45_Y30_N6
\op_2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \op_2~1_cout\ = CARRY(R(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => R(0),
	datad => VCC,
	cout => \op_2~1_cout\);

-- Location: LCCOMB_X45_Y30_N8
\op_2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \op_2~2_combout\ = (R(1) & (\op_2~1_cout\ & VCC)) # (!R(1) & (!\op_2~1_cout\))
-- \op_2~3\ = CARRY((!R(1) & !\op_2~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => R(1),
	datad => VCC,
	cin => \op_2~1_cout\,
	combout => \op_2~2_combout\,
	cout => \op_2~3\);

-- Location: IOIBUF_X49_Y34_N8
\dato[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dato(1),
	o => \dato[1]~input_o\);

-- Location: LCCOMB_X44_Y30_N28
\R[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \R[1]~3_combout\ = (\cmd[2]~input_o\) # ((\cmd[1]~input_o\ & \cmd[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmd[1]~input_o\,
	datac => \cmd[0]~input_o\,
	datad => \cmd[2]~input_o\,
	combout => \R[1]~3_combout\);

-- Location: LCCOMB_X44_Y30_N6
\R[1]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \R[1]~4_combout\ = (\cmd[1]~input_o\ & !\cmd[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmd[1]~input_o\,
	datad => \cmd[2]~input_o\,
	combout => \R[1]~4_combout\);

-- Location: LCCOMB_X46_Y30_N6
\op_1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \op_1~0_combout\ = (R(1) & (R(0) $ (VCC))) # (!R(1) & (R(0) & VCC))
-- \op_1~1\ = CARRY((R(1) & R(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => R(1),
	datab => R(0),
	datad => VCC,
	combout => \op_1~0_combout\,
	cout => \op_1~1\);

-- Location: LCCOMB_X45_Y30_N30
\R[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \R[1]~5_combout\ = (\R[1]~3_combout\ & (((\R[1]~4_combout\)))) # (!\R[1]~3_combout\ & ((\R[1]~4_combout\ & ((\op_1~0_combout\))) # (!\R[1]~4_combout\ & (\dato[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dato[1]~input_o\,
	datab => \R[1]~3_combout\,
	datac => \R[1]~4_combout\,
	datad => \op_1~0_combout\,
	combout => \R[1]~5_combout\);

-- Location: LCCOMB_X45_Y30_N24
\R[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \R[1]~6_combout\ = (\R[1]~5_combout\ & (((\op_2~2_combout\) # (!\R[1]~3_combout\)))) # (!\R[1]~5_combout\ & (R(2) & ((\R[1]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => R(2),
	datab => \op_2~2_combout\,
	datac => \R[1]~5_combout\,
	datad => \R[1]~3_combout\,
	combout => \R[1]~6_combout\);

-- Location: LCCOMB_X45_Y30_N0
\R[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \R[1]~7_combout\ = (\cmd[0]~input_o\ & ((\cmd[2]~input_o\ & (R(0))) # (!\cmd[2]~input_o\ & ((\R[1]~6_combout\))))) # (!\cmd[0]~input_o\ & (((\R[1]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmd[0]~input_o\,
	datab => \cmd[2]~input_o\,
	datac => R(0),
	datad => \R[1]~6_combout\,
	combout => \R[1]~7_combout\);

-- Location: IOIBUF_X0_Y16_N15
\reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: CLKCTRL_G4
\reset~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \reset~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \reset~inputclkctrl_outclk\);

-- Location: FF_X45_Y30_N1
\R[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \R[1]~7_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => R(1));

-- Location: IOIBUF_X40_Y34_N1
\dato[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dato(2),
	o => \dato[2]~input_o\);

-- Location: LCCOMB_X44_Y30_N18
\R[2]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \R[2]~8_combout\ = (\R[1]~4_combout\ & (\R[1]~3_combout\)) # (!\R[1]~4_combout\ & ((\R[1]~3_combout\ & ((R(3)))) # (!\R[1]~3_combout\ & (\dato[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R[1]~4_combout\,
	datab => \R[1]~3_combout\,
	datac => \dato[2]~input_o\,
	datad => R(3),
	combout => \R[2]~8_combout\);

-- Location: LCCOMB_X46_Y30_N8
\op_1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \op_1~2_combout\ = (R(2) & (!\op_1~1\)) # (!R(2) & ((\op_1~1\) # (GND)))
-- \op_1~3\ = CARRY((!\op_1~1\) # (!R(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => R(2),
	datad => VCC,
	cin => \op_1~1\,
	combout => \op_1~2_combout\,
	cout => \op_1~3\);

-- Location: LCCOMB_X45_Y30_N10
\op_2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \op_2~4_combout\ = (R(2) & ((GND) # (!\op_2~3\))) # (!R(2) & (\op_2~3\ $ (GND)))
-- \op_2~5\ = CARRY((R(2)) # (!\op_2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => R(2),
	datad => VCC,
	cin => \op_2~3\,
	combout => \op_2~4_combout\,
	cout => \op_2~5\);

-- Location: LCCOMB_X46_Y30_N22
\R[2]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \R[2]~9_combout\ = (\R[2]~8_combout\ & (((\op_2~4_combout\)) # (!\R[1]~4_combout\))) # (!\R[2]~8_combout\ & (\R[1]~4_combout\ & (\op_1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R[2]~8_combout\,
	datab => \R[1]~4_combout\,
	datac => \op_1~2_combout\,
	datad => \op_2~4_combout\,
	combout => \R[2]~9_combout\);

-- Location: LCCOMB_X46_Y30_N30
\R[2]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \R[2]~10_combout\ = (\cmd[2]~input_o\ & ((\cmd[0]~input_o\ & (R(1))) # (!\cmd[0]~input_o\ & ((\R[2]~9_combout\))))) # (!\cmd[2]~input_o\ & (((\R[2]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => R(1),
	datab => \cmd[2]~input_o\,
	datac => \R[2]~9_combout\,
	datad => \cmd[0]~input_o\,
	combout => \R[2]~10_combout\);

-- Location: FF_X46_Y30_N31
\R[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \R[2]~10_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => R(2));

-- Location: LCCOMB_X45_Y30_N12
\op_2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \op_2~6_combout\ = (R(3) & (\op_2~5\ & VCC)) # (!R(3) & (!\op_2~5\))
-- \op_2~7\ = CARRY((!R(3) & !\op_2~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => R(3),
	datad => VCC,
	cin => \op_2~5\,
	combout => \op_2~6_combout\,
	cout => \op_2~7\);

-- Location: IOIBUF_X49_Y34_N1
\dato[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dato(3),
	o => \dato[3]~input_o\);

-- Location: LCCOMB_X46_Y30_N10
\op_1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \op_1~4_combout\ = (R(3) & (\op_1~3\ $ (GND))) # (!R(3) & (!\op_1~3\ & VCC))
-- \op_1~5\ = CARRY((R(3) & !\op_1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => R(3),
	datad => VCC,
	cin => \op_1~3\,
	combout => \op_1~4_combout\,
	cout => \op_1~5\);

-- Location: LCCOMB_X46_Y30_N24
\R[3]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \R[3]~11_combout\ = (\R[1]~3_combout\ & (((\R[1]~4_combout\)))) # (!\R[1]~3_combout\ & ((\R[1]~4_combout\ & ((\op_1~4_combout\))) # (!\R[1]~4_combout\ & (\dato[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R[1]~3_combout\,
	datab => \dato[3]~input_o\,
	datac => \R[1]~4_combout\,
	datad => \op_1~4_combout\,
	combout => \R[3]~11_combout\);

-- Location: LCCOMB_X45_Y30_N26
\R[3]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \R[3]~12_combout\ = (\R[1]~3_combout\ & ((\R[3]~11_combout\ & (\op_2~6_combout\)) # (!\R[3]~11_combout\ & ((R(4)))))) # (!\R[1]~3_combout\ & (((\R[3]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op_2~6_combout\,
	datab => \R[1]~3_combout\,
	datac => R(4),
	datad => \R[3]~11_combout\,
	combout => \R[3]~12_combout\);

-- Location: LCCOMB_X45_Y30_N22
\R[3]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \R[3]~13_combout\ = (\cmd[2]~input_o\ & ((\cmd[0]~input_o\ & (R(2))) # (!\cmd[0]~input_o\ & ((\R[3]~12_combout\))))) # (!\cmd[2]~input_o\ & (((\R[3]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => R(2),
	datab => \cmd[2]~input_o\,
	datac => \R[3]~12_combout\,
	datad => \cmd[0]~input_o\,
	combout => \R[3]~13_combout\);

-- Location: FF_X45_Y30_N23
\R[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \R[3]~13_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => R(3));

-- Location: LCCOMB_X46_Y30_N12
\op_1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \op_1~6_combout\ = (R(4) & (!\op_1~5\)) # (!R(4) & ((\op_1~5\) # (GND)))
-- \op_1~7\ = CARRY((!\op_1~5\) # (!R(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => R(4),
	datad => VCC,
	cin => \op_1~5\,
	combout => \op_1~6_combout\,
	cout => \op_1~7\);

-- Location: IOIBUF_X51_Y34_N1
\dato[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dato(4),
	o => \dato[4]~input_o\);

-- Location: LCCOMB_X46_Y30_N26
\R[4]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \R[4]~14_combout\ = (\R[1]~3_combout\ & ((\R[1]~4_combout\) # ((R(5))))) # (!\R[1]~3_combout\ & (!\R[1]~4_combout\ & ((\dato[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R[1]~3_combout\,
	datab => \R[1]~4_combout\,
	datac => R(5),
	datad => \dato[4]~input_o\,
	combout => \R[4]~14_combout\);

-- Location: LCCOMB_X45_Y30_N14
\op_2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \op_2~8_combout\ = (R(4) & ((GND) # (!\op_2~7\))) # (!R(4) & (\op_2~7\ $ (GND)))
-- \op_2~9\ = CARRY((R(4)) # (!\op_2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => R(4),
	datad => VCC,
	cin => \op_2~7\,
	combout => \op_2~8_combout\,
	cout => \op_2~9\);

-- Location: LCCOMB_X46_Y30_N28
\R[4]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \R[4]~15_combout\ = (\R[1]~4_combout\ & ((\R[4]~14_combout\ & ((\op_2~8_combout\))) # (!\R[4]~14_combout\ & (\op_1~6_combout\)))) # (!\R[1]~4_combout\ & (((\R[4]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op_1~6_combout\,
	datab => \R[1]~4_combout\,
	datac => \R[4]~14_combout\,
	datad => \op_2~8_combout\,
	combout => \R[4]~15_combout\);

-- Location: LCCOMB_X46_Y30_N0
\R[4]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \R[4]~16_combout\ = (\cmd[0]~input_o\ & ((\cmd[2]~input_o\ & (R(3))) # (!\cmd[2]~input_o\ & ((\R[4]~15_combout\))))) # (!\cmd[0]~input_o\ & (((\R[4]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmd[0]~input_o\,
	datab => \cmd[2]~input_o\,
	datac => R(3),
	datad => \R[4]~15_combout\,
	combout => \R[4]~16_combout\);

-- Location: FF_X46_Y30_N1
\R[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \R[4]~16_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => R(4));

-- Location: IOIBUF_X47_Y34_N22
\dato[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dato(5),
	o => \dato[5]~input_o\);

-- Location: LCCOMB_X46_Y30_N14
\op_1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \op_1~8_combout\ = (R(5) & (\op_1~7\ $ (GND))) # (!R(5) & (!\op_1~7\ & VCC))
-- \op_1~9\ = CARRY((R(5) & !\op_1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => R(5),
	datad => VCC,
	cin => \op_1~7\,
	combout => \op_1~8_combout\,
	cout => \op_1~9\);

-- Location: LCCOMB_X45_Y30_N16
\op_2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \op_2~10_combout\ = (R(5) & (\op_2~9\ & VCC)) # (!R(5) & (!\op_2~9\))
-- \op_2~11\ = CARRY((!R(5) & !\op_2~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => R(5),
	datad => VCC,
	cin => \op_2~9\,
	combout => \op_2~10_combout\,
	cout => \op_2~11\);

-- Location: LCCOMB_X45_Y30_N28
\R[5]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \R[5]~17_combout\ = (\R[1]~4_combout\ & (((\op_2~10_combout\)) # (!\R[1]~3_combout\))) # (!\R[1]~4_combout\ & (\R[1]~3_combout\ & (R(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R[1]~4_combout\,
	datab => \R[1]~3_combout\,
	datac => R(6),
	datad => \op_2~10_combout\,
	combout => \R[5]~17_combout\);

-- Location: LCCOMB_X46_Y30_N2
\R[5]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \R[5]~18_combout\ = (\R[1]~3_combout\ & (((\R[5]~17_combout\)))) # (!\R[1]~3_combout\ & ((\R[5]~17_combout\ & ((\op_1~8_combout\))) # (!\R[5]~17_combout\ & (\dato[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R[1]~3_combout\,
	datab => \dato[5]~input_o\,
	datac => \op_1~8_combout\,
	datad => \R[5]~17_combout\,
	combout => \R[5]~18_combout\);

-- Location: LCCOMB_X46_Y30_N4
\R[5]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \R[5]~19_combout\ = (\cmd[2]~input_o\ & ((\cmd[0]~input_o\ & (R(4))) # (!\cmd[0]~input_o\ & ((\R[5]~18_combout\))))) # (!\cmd[2]~input_o\ & (((\R[5]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => R(4),
	datab => \cmd[2]~input_o\,
	datac => \cmd[0]~input_o\,
	datad => \R[5]~18_combout\,
	combout => \R[5]~19_combout\);

-- Location: FF_X46_Y30_N5
\R[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \R[5]~19_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => R(5));

-- Location: LCCOMB_X45_Y30_N18
\op_2~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \op_2~12_combout\ = (R(6) & ((GND) # (!\op_2~11\))) # (!R(6) & (\op_2~11\ $ (GND)))
-- \op_2~13\ = CARRY((R(6)) # (!\op_2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => R(6),
	datad => VCC,
	cin => \op_2~11\,
	combout => \op_2~12_combout\,
	cout => \op_2~13\);

-- Location: IOIBUF_X43_Y34_N15
\dato[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dato(6),
	o => \dato[6]~input_o\);

-- Location: LCCOMB_X44_Y30_N4
\R[6]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \R[6]~20_combout\ = (\R[1]~4_combout\ & (((\R[1]~3_combout\)))) # (!\R[1]~4_combout\ & ((\R[1]~3_combout\ & (R(7))) # (!\R[1]~3_combout\ & ((\dato[6]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R[1]~4_combout\,
	datab => R(7),
	datac => \dato[6]~input_o\,
	datad => \R[1]~3_combout\,
	combout => \R[6]~20_combout\);

-- Location: LCCOMB_X46_Y30_N16
\op_1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \op_1~10_combout\ = (R(6) & (!\op_1~9\)) # (!R(6) & ((\op_1~9\) # (GND)))
-- \op_1~11\ = CARRY((!\op_1~9\) # (!R(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => R(6),
	datad => VCC,
	cin => \op_1~9\,
	combout => \op_1~10_combout\,
	cout => \op_1~11\);

-- Location: LCCOMB_X45_Y30_N2
\R[6]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \R[6]~21_combout\ = (\R[1]~4_combout\ & ((\R[6]~20_combout\ & (\op_2~12_combout\)) # (!\R[6]~20_combout\ & ((\op_1~10_combout\))))) # (!\R[1]~4_combout\ & (((\R[6]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R[1]~4_combout\,
	datab => \op_2~12_combout\,
	datac => \R[6]~20_combout\,
	datad => \op_1~10_combout\,
	combout => \R[6]~21_combout\);

-- Location: LCCOMB_X45_Y30_N4
\R[6]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \R[6]~22_combout\ = (\cmd[2]~input_o\ & ((\cmd[0]~input_o\ & (R(5))) # (!\cmd[0]~input_o\ & ((\R[6]~21_combout\))))) # (!\cmd[2]~input_o\ & (((\R[6]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => R(5),
	datab => \cmd[2]~input_o\,
	datac => \cmd[0]~input_o\,
	datad => \R[6]~21_combout\,
	combout => \R[6]~22_combout\);

-- Location: FF_X45_Y30_N5
\R[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \R[6]~22_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => R(6));

-- Location: LCCOMB_X44_Y30_N20
\R[7]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \R[7]~24_combout\ = (\cmd[0]~input_o\ & (((R(6))))) # (!\cmd[0]~input_o\ & (\cmd[1]~input_o\ & (R(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmd[1]~input_o\,
	datab => \cmd[0]~input_o\,
	datac => R(0),
	datad => R(6),
	combout => \R[7]~24_combout\);

-- Location: LCCOMB_X44_Y30_N22
\R[7]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \R[7]~25_combout\ = (\_~0_combout\ & (\R[7]~24_combout\ & ((\cmd[2]~input_o\)))) # (!\_~0_combout\ & ((R(7)) # ((\R[7]~24_combout\ & \cmd[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \_~0_combout\,
	datab => \R[7]~24_combout\,
	datac => R(7),
	datad => \cmd[2]~input_o\,
	combout => \R[7]~25_combout\);

-- Location: LCCOMB_X46_Y30_N18
\op_1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \op_1~12_combout\ = \op_1~11\ $ (!R(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => R(7),
	cin => \op_1~11\,
	combout => \op_1~12_combout\);

-- Location: LCCOMB_X44_Y30_N8
\R[7]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \R[7]~27_combout\ = (\cmd[2]~input_o\ & (((\cmd[0]~input_o\)))) # (!\cmd[2]~input_o\ & (\cmd[1]~input_o\ & (!\cmd[0]~input_o\ & \op_1~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmd[1]~input_o\,
	datab => \cmd[2]~input_o\,
	datac => \cmd[0]~input_o\,
	datad => \op_1~12_combout\,
	combout => \R[7]~27_combout\);

-- Location: IOIBUF_X43_Y34_N22
\dato[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dato(7),
	o => \dato[7]~input_o\);

-- Location: LCCOMB_X45_Y30_N20
\op_2~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \op_2~14_combout\ = \op_2~13\ $ (!R(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => R(7),
	cin => \op_2~13\,
	combout => \op_2~14_combout\);

-- Location: LCCOMB_X44_Y30_N10
\R[7]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \R[7]~23_combout\ = (\cmd[1]~input_o\ & ((\op_2~14_combout\))) # (!\cmd[1]~input_o\ & (\dato[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dato[7]~input_o\,
	datac => \op_2~14_combout\,
	datad => \cmd[1]~input_o\,
	combout => \R[7]~23_combout\);

-- Location: LCCOMB_X44_Y30_N24
\R[7]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \R[7]~26_combout\ = (\R[7]~25_combout\) # ((\cmd[0]~input_o\ & (!\R[7]~27_combout\ & \R[7]~23_combout\)) # (!\cmd[0]~input_o\ & (\R[7]~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R[7]~25_combout\,
	datab => \cmd[0]~input_o\,
	datac => \R[7]~27_combout\,
	datad => \R[7]~23_combout\,
	combout => \R[7]~26_combout\);

-- Location: FF_X44_Y30_N25
\R[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \R[7]~26_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => R(7));

-- Location: LCCOMB_X44_Y30_N26
\R[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \R[0]~2_combout\ = (\cmd[0]~input_o\ & (R(7) & ((\cmd[1]~input_o\)))) # (!\cmd[0]~input_o\ & (((R(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmd[0]~input_o\,
	datab => R(7),
	datac => R(1),
	datad => \cmd[1]~input_o\,
	combout => \R[0]~2_combout\);

-- Location: IOIBUF_X40_Y34_N8
\dato[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dato(0),
	o => \dato[0]~input_o\);

-- Location: LCCOMB_X44_Y30_N30
\R[0]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \R[0]~28_combout\ = (\cmd[1]~input_o\ & (((!R(0))))) # (!\cmd[1]~input_o\ & ((\cmd[0]~input_o\ & (\dato[0]~input_o\)) # (!\cmd[0]~input_o\ & ((R(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmd[0]~input_o\,
	datab => \dato[0]~input_o\,
	datac => R(0),
	datad => \cmd[1]~input_o\,
	combout => \R[0]~28_combout\);

-- Location: LCCOMB_X46_Y30_N20
\R[0]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \R[0]~29_combout\ = (\cmd[2]~input_o\ & (\R[0]~2_combout\)) # (!\cmd[2]~input_o\ & ((\R[0]~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cmd[2]~input_o\,
	datac => \R[0]~2_combout\,
	datad => \R[0]~28_combout\,
	combout => \R[0]~29_combout\);

-- Location: FF_X46_Y30_N21
\R[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \R[0]~29_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => R(0));

ww_salida(0) <= \salida[0]~output_o\;

ww_salida(1) <= \salida[1]~output_o\;

ww_salida(2) <= \salida[2]~output_o\;

ww_salida(3) <= \salida[3]~output_o\;

ww_salida(4) <= \salida[4]~output_o\;

ww_salida(5) <= \salida[5]~output_o\;

ww_salida(6) <= \salida[6]~output_o\;

ww_salida(7) <= \salida[7]~output_o\;
END structure;


