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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "11/27/2019 20:58:10"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          MayoriaEstructural
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY MayoriaEstructural_vhd_vec_tst IS
END MayoriaEstructural_vhd_vec_tst;
ARCHITECTURE MayoriaEstructural_arch OF MayoriaEstructural_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL B : STD_LOGIC;
SIGNAL C : STD_LOGIC;
SIGNAL J : STD_LOGIC;
SIGNAL N : STD_LOGIC;
COMPONENT MayoriaEstructural
	PORT (
	B : IN STD_LOGIC;
	C : OUT STD_LOGIC;
	J : IN STD_LOGIC;
	N : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : MayoriaEstructural
	PORT MAP (
-- list connections between master ports and signals
	B => B,
	C => C,
	J => J,
	N => N
	);

-- N
t_prcs_N: PROCESS
BEGIN
	N <= '0';
	WAIT FOR 50000 ps;
	N <= '1';
	WAIT FOR 50000 ps;
	N <= '0';
	WAIT FOR 50000 ps;
	N <= '1';
	WAIT FOR 50000 ps;
	N <= '0';
	WAIT FOR 50000 ps;
	N <= '1';
	WAIT FOR 50000 ps;
	N <= '0';
	WAIT FOR 50000 ps;
	N <= '1';
WAIT;
END PROCESS t_prcs_N;

-- B
t_prcs_B: PROCESS
BEGIN
	B <= '0';
	WAIT FOR 100000 ps;
	B <= '1';
	WAIT FOR 100000 ps;
	B <= '0';
	WAIT FOR 100000 ps;
	B <= '1';
WAIT;
END PROCESS t_prcs_B;

-- J
t_prcs_J: PROCESS
BEGIN
	J <= '0';
	WAIT FOR 200000 ps;
	J <= '1';
WAIT;
END PROCESS t_prcs_J;
END MayoriaEstructural_arch;
