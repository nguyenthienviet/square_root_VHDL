-- Copyright (C) 2022  Intel Corporation. All rights reserved.
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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "11/07/2022 10:32:01"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          square_root
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY square_root_vhd_vec_tst IS
END square_root_vhd_vec_tst;
ARCHITECTURE square_root_arch OF square_root_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL finished : STD_LOGIC;
SIGNAL Result : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL rst : STD_LOGIC;
SIGNAL start : STD_LOGIC;
SIGNAL X : STD_LOGIC_VECTOR(63 DOWNTO 0);
COMPONENT square_root
	PORT (
	clk : IN STD_LOGIC;
	finished : BUFFER STD_LOGIC;
	Result : BUFFER STD_LOGIC_VECTOR(31 DOWNTO 0);
	rst : IN STD_LOGIC;
	start : IN STD_LOGIC;
	X : IN STD_LOGIC_VECTOR(63 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : square_root
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	finished => finished,
	Result => Result,
	rst => rst,
	start => start,
	X => X
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
LOOP
	clk <= '0';
	WAIT FOR 5000 ps;
	clk <= '1';
	WAIT FOR 5000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;

-- rst
t_prcs_rst: PROCESS
BEGIN
	rst <= '0';
WAIT;
END PROCESS t_prcs_rst;

-- start
t_prcs_start: PROCESS
BEGIN
	start <= '1';
WAIT;
END PROCESS t_prcs_start;
-- X[63]
t_prcs_X_63: PROCESS
BEGIN
	X(63) <= '0';
WAIT;
END PROCESS t_prcs_X_63;
-- X[62]
t_prcs_X_62: PROCESS
BEGIN
	X(62) <= '0';
WAIT;
END PROCESS t_prcs_X_62;
-- X[61]
t_prcs_X_61: PROCESS
BEGIN
	X(61) <= '0';
WAIT;
END PROCESS t_prcs_X_61;
-- X[60]
t_prcs_X_60: PROCESS
BEGIN
	X(60) <= '0';
WAIT;
END PROCESS t_prcs_X_60;
-- X[59]
t_prcs_X_59: PROCESS
BEGIN
	X(59) <= '0';
WAIT;
END PROCESS t_prcs_X_59;
-- X[58]
t_prcs_X_58: PROCESS
BEGIN
	X(58) <= '0';
WAIT;
END PROCESS t_prcs_X_58;
-- X[57]
t_prcs_X_57: PROCESS
BEGIN
	X(57) <= '0';
WAIT;
END PROCESS t_prcs_X_57;
-- X[56]
t_prcs_X_56: PROCESS
BEGIN
	X(56) <= '0';
WAIT;
END PROCESS t_prcs_X_56;
-- X[55]
t_prcs_X_55: PROCESS
BEGIN
	X(55) <= '0';
WAIT;
END PROCESS t_prcs_X_55;
-- X[54]
t_prcs_X_54: PROCESS
BEGIN
	X(54) <= '0';
WAIT;
END PROCESS t_prcs_X_54;
-- X[53]
t_prcs_X_53: PROCESS
BEGIN
	X(53) <= '0';
WAIT;
END PROCESS t_prcs_X_53;
-- X[52]
t_prcs_X_52: PROCESS
BEGIN
	X(52) <= '0';
WAIT;
END PROCESS t_prcs_X_52;
-- X[51]
t_prcs_X_51: PROCESS
BEGIN
	X(51) <= '0';
WAIT;
END PROCESS t_prcs_X_51;
-- X[50]
t_prcs_X_50: PROCESS
BEGIN
	X(50) <= '0';
WAIT;
END PROCESS t_prcs_X_50;
-- X[49]
t_prcs_X_49: PROCESS
BEGIN
	X(49) <= '0';
WAIT;
END PROCESS t_prcs_X_49;
-- X[48]
t_prcs_X_48: PROCESS
BEGIN
	X(48) <= '0';
WAIT;
END PROCESS t_prcs_X_48;
-- X[47]
t_prcs_X_47: PROCESS
BEGIN
	X(47) <= '0';
WAIT;
END PROCESS t_prcs_X_47;
-- X[46]
t_prcs_X_46: PROCESS
BEGIN
	X(46) <= '0';
WAIT;
END PROCESS t_prcs_X_46;
-- X[45]
t_prcs_X_45: PROCESS
BEGIN
	X(45) <= '0';
WAIT;
END PROCESS t_prcs_X_45;
-- X[44]
t_prcs_X_44: PROCESS
BEGIN
	X(44) <= '0';
WAIT;
END PROCESS t_prcs_X_44;
-- X[43]
t_prcs_X_43: PROCESS
BEGIN
	X(43) <= '0';
WAIT;
END PROCESS t_prcs_X_43;
-- X[42]
t_prcs_X_42: PROCESS
BEGIN
	X(42) <= '0';
WAIT;
END PROCESS t_prcs_X_42;
-- X[41]
t_prcs_X_41: PROCESS
BEGIN
	X(41) <= '0';
WAIT;
END PROCESS t_prcs_X_41;
-- X[40]
t_prcs_X_40: PROCESS
BEGIN
	X(40) <= '0';
WAIT;
END PROCESS t_prcs_X_40;
-- X[39]
t_prcs_X_39: PROCESS
BEGIN
	X(39) <= '0';
WAIT;
END PROCESS t_prcs_X_39;
-- X[38]
t_prcs_X_38: PROCESS
BEGIN
	X(38) <= '0';
WAIT;
END PROCESS t_prcs_X_38;
-- X[37]
t_prcs_X_37: PROCESS
BEGIN
	X(37) <= '0';
WAIT;
END PROCESS t_prcs_X_37;
-- X[36]
t_prcs_X_36: PROCESS
BEGIN
	X(36) <= '0';
WAIT;
END PROCESS t_prcs_X_36;
-- X[35]
t_prcs_X_35: PROCESS
BEGIN
	X(35) <= '0';
WAIT;
END PROCESS t_prcs_X_35;
-- X[34]
t_prcs_X_34: PROCESS
BEGIN
	X(34) <= '0';
WAIT;
END PROCESS t_prcs_X_34;
-- X[33]
t_prcs_X_33: PROCESS
BEGIN
	X(33) <= '0';
WAIT;
END PROCESS t_prcs_X_33;
-- X[32]
t_prcs_X_32: PROCESS
BEGIN
	X(32) <= '0';
WAIT;
END PROCESS t_prcs_X_32;
-- X[31]
t_prcs_X_31: PROCESS
BEGIN
	X(31) <= '0';
WAIT;
END PROCESS t_prcs_X_31;
-- X[30]
t_prcs_X_30: PROCESS
BEGIN
	X(30) <= '0';
WAIT;
END PROCESS t_prcs_X_30;
-- X[29]
t_prcs_X_29: PROCESS
BEGIN
	X(29) <= '0';
WAIT;
END PROCESS t_prcs_X_29;
-- X[28]
t_prcs_X_28: PROCESS
BEGIN
	X(28) <= '0';
WAIT;
END PROCESS t_prcs_X_28;
-- X[27]
t_prcs_X_27: PROCESS
BEGIN
	X(27) <= '0';
WAIT;
END PROCESS t_prcs_X_27;
-- X[26]
t_prcs_X_26: PROCESS
BEGIN
	X(26) <= '0';
WAIT;
END PROCESS t_prcs_X_26;
-- X[25]
t_prcs_X_25: PROCESS
BEGIN
	X(25) <= '0';
WAIT;
END PROCESS t_prcs_X_25;
-- X[24]
t_prcs_X_24: PROCESS
BEGIN
	X(24) <= '0';
WAIT;
END PROCESS t_prcs_X_24;
-- X[23]
t_prcs_X_23: PROCESS
BEGIN
	X(23) <= '0';
WAIT;
END PROCESS t_prcs_X_23;
-- X[22]
t_prcs_X_22: PROCESS
BEGIN
	X(22) <= '0';
WAIT;
END PROCESS t_prcs_X_22;
-- X[21]
t_prcs_X_21: PROCESS
BEGIN
	X(21) <= '0';
WAIT;
END PROCESS t_prcs_X_21;
-- X[20]
t_prcs_X_20: PROCESS
BEGIN
	X(20) <= '0';
WAIT;
END PROCESS t_prcs_X_20;
-- X[19]
t_prcs_X_19: PROCESS
BEGIN
	X(19) <= '0';
WAIT;
END PROCESS t_prcs_X_19;
-- X[18]
t_prcs_X_18: PROCESS
BEGIN
	X(18) <= '0';
WAIT;
END PROCESS t_prcs_X_18;
-- X[17]
t_prcs_X_17: PROCESS
BEGIN
	X(17) <= '0';
WAIT;
END PROCESS t_prcs_X_17;
-- X[16]
t_prcs_X_16: PROCESS
BEGIN
	X(16) <= '0';
WAIT;
END PROCESS t_prcs_X_16;
-- X[15]
t_prcs_X_15: PROCESS
BEGIN
	X(15) <= '0';
WAIT;
END PROCESS t_prcs_X_15;
-- X[14]
t_prcs_X_14: PROCESS
BEGIN
	X(14) <= '0';
WAIT;
END PROCESS t_prcs_X_14;
-- X[13]
t_prcs_X_13: PROCESS
BEGIN
	X(13) <= '0';
WAIT;
END PROCESS t_prcs_X_13;
-- X[12]
t_prcs_X_12: PROCESS
BEGIN
	X(12) <= '0';
WAIT;
END PROCESS t_prcs_X_12;
-- X[11]
t_prcs_X_11: PROCESS
BEGIN
	X(11) <= '0';
WAIT;
END PROCESS t_prcs_X_11;
-- X[10]
t_prcs_X_10: PROCESS
BEGIN
	X(10) <= '0';
WAIT;
END PROCESS t_prcs_X_10;
-- X[9]
t_prcs_X_9: PROCESS
BEGIN
	X(9) <= '0';
WAIT;
END PROCESS t_prcs_X_9;
-- X[8]
t_prcs_X_8: PROCESS
BEGIN
	X(8) <= '0';
WAIT;
END PROCESS t_prcs_X_8;
-- X[7]
t_prcs_X_7: PROCESS
BEGIN
	X(7) <= '0';
WAIT;
END PROCESS t_prcs_X_7;
-- X[6]
t_prcs_X_6: PROCESS
BEGIN
	X(6) <= '1';
WAIT;
END PROCESS t_prcs_X_6;
-- X[5]
t_prcs_X_5: PROCESS
BEGIN
	X(5) <= '0';
WAIT;
END PROCESS t_prcs_X_5;
-- X[4]
t_prcs_X_4: PROCESS
BEGIN
	X(4) <= '0';
WAIT;
END PROCESS t_prcs_X_4;
-- X[3]
t_prcs_X_3: PROCESS
BEGIN
	X(3) <= '0';
WAIT;
END PROCESS t_prcs_X_3;
-- X[2]
t_prcs_X_2: PROCESS
BEGIN
	X(2) <= '0';
WAIT;
END PROCESS t_prcs_X_2;
-- X[1]
t_prcs_X_1: PROCESS
BEGIN
	X(1) <= '0';
WAIT;
END PROCESS t_prcs_X_1;
-- X[0]
t_prcs_X_0: PROCESS
BEGIN
	X(0) <= '0';
WAIT;
END PROCESS t_prcs_X_0;
END square_root_arch;
