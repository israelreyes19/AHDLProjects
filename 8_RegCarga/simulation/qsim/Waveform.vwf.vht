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
-- Generated on "11/28/2019 21:20:00"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          RegCarga
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY RegCarga_vhd_vec_tst IS
END RegCarga_vhd_vec_tst;
ARCHITECTURE RegCarga_arch OF RegCarga_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL dato : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL load : STD_LOGIC;
SIGNAL salida : STD_LOGIC_VECTOR(3 DOWNTO 0);
COMPONENT RegCarga
	PORT (
	clk : IN STD_LOGIC;
	dato : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	load : IN STD_LOGIC;
	salida : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : RegCarga
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	dato => dato,
	load => load,
	salida => salida
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
	clk <= '0';
	WAIT FOR 5000 ps;
	clk <= '1';
	WAIT FOR 5000 ps;
	clk <= '0';
	WAIT FOR 5000 ps;
	clk <= '1';
	WAIT FOR 5000 ps;
	clk <= '0';
	WAIT FOR 5000 ps;
	clk <= '1';
	WAIT FOR 5000 ps;
	clk <= '0';
	WAIT FOR 5000 ps;
	clk <= '1';
	WAIT FOR 5000 ps;
	clk <= '0';
	WAIT FOR 5000 ps;
	clk <= '1';
	WAIT FOR 5000 ps;
	clk <= '0';
	WAIT FOR 5000 ps;
	clk <= '1';
	WAIT FOR 5000 ps;
	clk <= '0';
	WAIT FOR 5000 ps;
	clk <= '1';
	WAIT FOR 5000 ps;
	clk <= '0';
	WAIT FOR 5000 ps;
	clk <= '1';
	WAIT FOR 5000 ps;
	clk <= '0';
	WAIT FOR 5000 ps;
	clk <= '1';
	WAIT FOR 5000 ps;
	clk <= '0';
	WAIT FOR 5000 ps;
	clk <= '1';
WAIT;
END PROCESS t_prcs_clk;

-- load
t_prcs_load: PROCESS
BEGIN
	load <= '0';
	WAIT FOR 40000 ps;
	load <= '1';
	WAIT FOR 50000 ps;
	load <= '0';
WAIT;
END PROCESS t_prcs_load;
-- dato[3]
t_prcs_dato_3: PROCESS
BEGIN
	dato(3) <= '0';
WAIT;
END PROCESS t_prcs_dato_3;
-- dato[2]
t_prcs_dato_2: PROCESS
BEGIN
	dato(2) <= '0';
	WAIT FOR 10000 ps;
	dato(2) <= '1';
	WAIT FOR 10000 ps;
	dato(2) <= '0';
	WAIT FOR 10000 ps;
	dato(2) <= '1';
	WAIT FOR 10000 ps;
	dato(2) <= '0';
	WAIT FOR 10000 ps;
	dato(2) <= '1';
	WAIT FOR 10000 ps;
	dato(2) <= '0';
	WAIT FOR 10000 ps;
	dato(2) <= '1';
	WAIT FOR 10000 ps;
	dato(2) <= '0';
WAIT;
END PROCESS t_prcs_dato_2;
-- dato[1]
t_prcs_dato_1: PROCESS
BEGIN
	dato(1) <= '0';
	WAIT FOR 20000 ps;
	dato(1) <= '1';
	WAIT FOR 20000 ps;
	dato(1) <= '0';
	WAIT FOR 20000 ps;
	dato(1) <= '1';
	WAIT FOR 20000 ps;
	dato(1) <= '0';
WAIT;
END PROCESS t_prcs_dato_1;
-- dato[0]
t_prcs_dato_0: PROCESS
BEGIN
	dato(0) <= '0';
	WAIT FOR 40000 ps;
	dato(0) <= '1';
	WAIT FOR 40000 ps;
	dato(0) <= '0';
WAIT;
END PROCESS t_prcs_dato_0;
END RegCarga_arch;
