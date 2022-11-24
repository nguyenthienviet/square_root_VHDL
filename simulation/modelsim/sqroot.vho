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

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 21.1.1 Build 850 06/23/2022 SJ Standard Edition"

-- DATE "11/22/2022 12:56:53"

-- 
-- Device: Altera 5CGXFC7C7F23C8 Package FBGA484
-- 

-- 
-- This VHDL file should be used for QuestaSim (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	square_root IS
    PORT (
	clk : IN std_logic;
	rst : IN std_logic;
	start : IN std_logic;
	X : IN std_logic_vector(63 DOWNTO 0);
	Result : BUFFER std_logic_vector(31 DOWNTO 0);
	finished : BUFFER std_logic
	);
END square_root;

-- Design Ports Information
-- Result[0]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[1]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[2]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[3]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[4]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[5]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[6]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[7]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[8]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[9]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[10]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[11]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[12]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[13]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[14]	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[15]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[16]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[17]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[18]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[19]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[20]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[21]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[22]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[23]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[24]	=>  Location: PIN_V20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[25]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[26]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[27]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[28]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[29]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[30]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[31]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- finished	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- start	=>  Location: PIN_W9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[0]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[1]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[2]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[3]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[4]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[5]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[6]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[7]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[8]	=>  Location: PIN_P12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[9]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[10]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[11]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[12]	=>  Location: PIN_U17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[13]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[14]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[15]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[16]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[17]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[18]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[19]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[20]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[21]	=>  Location: PIN_Y20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[22]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[23]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[24]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[25]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[26]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[27]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[28]	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[29]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[30]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[31]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[63]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[32]	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[62]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[33]	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[61]	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[34]	=>  Location: PIN_U8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[60]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[35]	=>  Location: PIN_U11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[59]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[36]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[58]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[37]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[57]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[38]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[56]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[39]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[55]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[40]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[54]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[41]	=>  Location: PIN_P18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[53]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[42]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[52]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[43]	=>  Location: PIN_Y9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[51]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[44]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[50]	=>  Location: PIN_P7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[45]	=>  Location: PIN_P19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[49]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[46]	=>  Location: PIN_P17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[48]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[47]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF square_root IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL ww_start : std_logic;
SIGNAL ww_X : std_logic_vector(63 DOWNTO 0);
SIGNAL ww_Result : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_finished : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \start~input_o\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \state.S_4~q\ : std_logic;
SIGNAL \ldZ~0_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \a_s~0_combout\ : std_logic;
SIGNAL \X[63]~input_o\ : std_logic;
SIGNAL \reg_M|R[63]~feeder_combout\ : std_logic;
SIGNAL \reg_M|R[0]~0_combout\ : std_logic;
SIGNAL \reg_V|R~1_combout\ : std_logic;
SIGNAL \Add1~164_combout\ : std_logic;
SIGNAL \X[62]~input_o\ : std_logic;
SIGNAL \reg_M|R[62]~feeder_combout\ : std_logic;
SIGNAL \X[61]~input_o\ : std_logic;
SIGNAL \reg_M|R[61]~feeder_combout\ : std_logic;
SIGNAL \reg_V|R[60]~0_combout\ : std_logic;
SIGNAL \Add1~190_combout\ : std_logic;
SIGNAL \X[60]~input_o\ : std_logic;
SIGNAL \reg_M|R[60]~feeder_combout\ : std_logic;
SIGNAL \X[59]~input_o\ : std_logic;
SIGNAL \reg_M|R[59]~feeder_combout\ : std_logic;
SIGNAL \Add1~216_combout\ : std_logic;
SIGNAL \X[58]~input_o\ : std_logic;
SIGNAL \reg_M|R[58]~feeder_combout\ : std_logic;
SIGNAL \X[57]~input_o\ : std_logic;
SIGNAL \reg_M|R[57]~feeder_combout\ : std_logic;
SIGNAL \Add1~242_combout\ : std_logic;
SIGNAL \X[56]~input_o\ : std_logic;
SIGNAL \reg_M|R[56]~feeder_combout\ : std_logic;
SIGNAL \X[55]~input_o\ : std_logic;
SIGNAL \reg_M|R[55]~feeder_combout\ : std_logic;
SIGNAL \Add1~268_combout\ : std_logic;
SIGNAL \X[54]~input_o\ : std_logic;
SIGNAL \reg_M|R[54]~feeder_combout\ : std_logic;
SIGNAL \X[53]~input_o\ : std_logic;
SIGNAL \reg_M|R[53]~feeder_combout\ : std_logic;
SIGNAL \X[52]~input_o\ : std_logic;
SIGNAL \reg_M|R[52]~feeder_combout\ : std_logic;
SIGNAL \Add1~294_combout\ : std_logic;
SIGNAL \X[51]~input_o\ : std_logic;
SIGNAL \reg_M|R[51]~feeder_combout\ : std_logic;
SIGNAL \Add1~320_combout\ : std_logic;
SIGNAL \X[50]~input_o\ : std_logic;
SIGNAL \reg_M|R[50]~feeder_combout\ : std_logic;
SIGNAL \X[49]~input_o\ : std_logic;
SIGNAL \reg_M|R[49]~feeder_combout\ : std_logic;
SIGNAL \reg_Z|R[52]~0_combout\ : std_logic;
SIGNAL \Add1~346_combout\ : std_logic;
SIGNAL \X[48]~input_o\ : std_logic;
SIGNAL \reg_M|R[48]~feeder_combout\ : std_logic;
SIGNAL \X[47]~input_o\ : std_logic;
SIGNAL \reg_M|R[47]~feeder_combout\ : std_logic;
SIGNAL \Add1~337_combout\ : std_logic;
SIGNAL \X[46]~input_o\ : std_logic;
SIGNAL \reg_M|R[46]~feeder_combout\ : std_logic;
SIGNAL \X[45]~input_o\ : std_logic;
SIGNAL \reg_M|R[45]~feeder_combout\ : std_logic;
SIGNAL \Add1~311_combout\ : std_logic;
SIGNAL \X[44]~input_o\ : std_logic;
SIGNAL \reg_M|R[44]~feeder_combout\ : std_logic;
SIGNAL \X[43]~input_o\ : std_logic;
SIGNAL \reg_M|R[43]~feeder_combout\ : std_logic;
SIGNAL \X[42]~input_o\ : std_logic;
SIGNAL \reg_M|R[42]~feeder_combout\ : std_logic;
SIGNAL \Add1~285_combout\ : std_logic;
SIGNAL \X[41]~input_o\ : std_logic;
SIGNAL \reg_M|R[41]~feeder_combout\ : std_logic;
SIGNAL \X[40]~input_o\ : std_logic;
SIGNAL \reg_M|R[40]~feeder_combout\ : std_logic;
SIGNAL \Add1~259_combout\ : std_logic;
SIGNAL \X[39]~input_o\ : std_logic;
SIGNAL \reg_M|R[39]~feeder_combout\ : std_logic;
SIGNAL \Add1~233_combout\ : std_logic;
SIGNAL \X[38]~input_o\ : std_logic;
SIGNAL \reg_M|R[38]~feeder_combout\ : std_logic;
SIGNAL \X[37]~input_o\ : std_logic;
SIGNAL \reg_M|R[37]~feeder_combout\ : std_logic;
SIGNAL \Add1~207_combout\ : std_logic;
SIGNAL \X[36]~input_o\ : std_logic;
SIGNAL \reg_M|R[36]~feeder_combout\ : std_logic;
SIGNAL \X[35]~input_o\ : std_logic;
SIGNAL \reg_M|R[35]~feeder_combout\ : std_logic;
SIGNAL \Add1~181_combout\ : std_logic;
SIGNAL \X[34]~input_o\ : std_logic;
SIGNAL \reg_M|R[34]~feeder_combout\ : std_logic;
SIGNAL \X[33]~input_o\ : std_logic;
SIGNAL \reg_M|R[33]~feeder_combout\ : std_logic;
SIGNAL \reg_Z|R[33]~DUPLICATE_q\ : std_logic;
SIGNAL \reg_Z|R[32]~DUPLICATE_q\ : std_logic;
SIGNAL \Add1~159_combout\ : std_logic;
SIGNAL \X[32]~input_o\ : std_logic;
SIGNAL \reg_M|R[32]~feeder_combout\ : std_logic;
SIGNAL \X[31]~input_o\ : std_logic;
SIGNAL \reg_M|R[31]~feeder_combout\ : std_logic;
SIGNAL \Add1~150_combout\ : std_logic;
SIGNAL \X[30]~input_o\ : std_logic;
SIGNAL \reg_M|R[30]~feeder_combout\ : std_logic;
SIGNAL \X[29]~input_o\ : std_logic;
SIGNAL \reg_M|R[29]~feeder_combout\ : std_logic;
SIGNAL \X[28]~input_o\ : std_logic;
SIGNAL \reg_M|R[28]~feeder_combout\ : std_logic;
SIGNAL \Add1~149_combout\ : std_logic;
SIGNAL \X[27]~input_o\ : std_logic;
SIGNAL \reg_M|R[27]~feeder_combout\ : std_logic;
SIGNAL \Add1~148_combout\ : std_logic;
SIGNAL \X[26]~input_o\ : std_logic;
SIGNAL \reg_M|R[26]~feeder_combout\ : std_logic;
SIGNAL \X[25]~input_o\ : std_logic;
SIGNAL \reg_M|R[25]~feeder_combout\ : std_logic;
SIGNAL \reg_Z|R[24]~DUPLICATE_q\ : std_logic;
SIGNAL \Add1~147_combout\ : std_logic;
SIGNAL \X[24]~input_o\ : std_logic;
SIGNAL \reg_M|R[24]~feeder_combout\ : std_logic;
SIGNAL \X[23]~input_o\ : std_logic;
SIGNAL \reg_M|R[23]~feeder_combout\ : std_logic;
SIGNAL \reg_V|R[22]~DUPLICATE_q\ : std_logic;
SIGNAL \reg_Z|R[23]~DUPLICATE_q\ : std_logic;
SIGNAL \Add1~146_combout\ : std_logic;
SIGNAL \X[22]~input_o\ : std_logic;
SIGNAL \reg_M|R[22]~feeder_combout\ : std_logic;
SIGNAL \X[21]~input_o\ : std_logic;
SIGNAL \reg_M|R[21]~feeder_combout\ : std_logic;
SIGNAL \X[20]~input_o\ : std_logic;
SIGNAL \reg_M|R[20]~feeder_combout\ : std_logic;
SIGNAL \Add1~145_combout\ : std_logic;
SIGNAL \X[19]~input_o\ : std_logic;
SIGNAL \reg_M|R[19]~feeder_combout\ : std_logic;
SIGNAL \Add1~144_combout\ : std_logic;
SIGNAL \X[18]~input_o\ : std_logic;
SIGNAL \reg_M|R[18]~feeder_combout\ : std_logic;
SIGNAL \X[17]~input_o\ : std_logic;
SIGNAL \reg_M|R[17]~feeder_combout\ : std_logic;
SIGNAL \Add1~143_combout\ : std_logic;
SIGNAL \X[16]~input_o\ : std_logic;
SIGNAL \reg_M|R[16]~feeder_combout\ : std_logic;
SIGNAL \X[15]~input_o\ : std_logic;
SIGNAL \reg_M|R[15]~feeder_combout\ : std_logic;
SIGNAL \reg_Z|R[15]~DUPLICATE_q\ : std_logic;
SIGNAL \Add1~142_combout\ : std_logic;
SIGNAL \X[14]~input_o\ : std_logic;
SIGNAL \reg_M|R[14]~feeder_combout\ : std_logic;
SIGNAL \X[13]~input_o\ : std_logic;
SIGNAL \reg_M|R[13]~feeder_combout\ : std_logic;
SIGNAL \X[12]~input_o\ : std_logic;
SIGNAL \reg_M|R[12]~feeder_combout\ : std_logic;
SIGNAL \reg_V|R[14]~DUPLICATE_q\ : std_logic;
SIGNAL \reg_Z|R[12]~DUPLICATE_q\ : std_logic;
SIGNAL \Add1~141_combout\ : std_logic;
SIGNAL \X[11]~input_o\ : std_logic;
SIGNAL \reg_M|R[11]~feeder_combout\ : std_logic;
SIGNAL \reg_V|R[12]~DUPLICATE_q\ : std_logic;
SIGNAL \Add1~140_combout\ : std_logic;
SIGNAL \X[10]~input_o\ : std_logic;
SIGNAL \reg_M|R[10]~feeder_combout\ : std_logic;
SIGNAL \X[9]~input_o\ : std_logic;
SIGNAL \reg_M|R[9]~feeder_combout\ : std_logic;
SIGNAL \X[8]~input_o\ : std_logic;
SIGNAL \reg_M|R[8]~feeder_combout\ : std_logic;
SIGNAL \Add1~139_combout\ : std_logic;
SIGNAL \X[7]~input_o\ : std_logic;
SIGNAL \reg_M|R[7]~feeder_combout\ : std_logic;
SIGNAL \Add1~138_combout\ : std_logic;
SIGNAL \X[6]~input_o\ : std_logic;
SIGNAL \reg_M|R[6]~feeder_combout\ : std_logic;
SIGNAL \X[5]~input_o\ : std_logic;
SIGNAL \reg_M|R[5]~feeder_combout\ : std_logic;
SIGNAL \X[4]~input_o\ : std_logic;
SIGNAL \reg_M|R[4]~feeder_combout\ : std_logic;
SIGNAL \reg_Z|R[4]~feeder_combout\ : std_logic;
SIGNAL \B[4]~2_combout\ : std_logic;
SIGNAL \i~2_combout\ : std_logic;
SIGNAL \X[2]~input_o\ : std_logic;
SIGNAL \reg_M|R[2]~feeder_combout\ : std_logic;
SIGNAL \A[2]~12_combout\ : std_logic;
SIGNAL \X[1]~input_o\ : std_logic;
SIGNAL \reg_M|R[1]~feeder_combout\ : std_logic;
SIGNAL \reg_Z|R[1]~feeder_combout\ : std_logic;
SIGNAL \reg_Z|R[1]~DUPLICATE_q\ : std_logic;
SIGNAL \X[0]~input_o\ : std_logic;
SIGNAL \reg_M|R[0]~feeder_combout\ : std_logic;
SIGNAL \i~4_combout\ : std_logic;
SIGNAL \A[0]~10_combout\ : std_logic;
SIGNAL \B[0]~0_combout\ : std_logic;
SIGNAL \Add1~132_cout\ : std_logic;
SIGNAL \Add1~4\ : std_logic;
SIGNAL \Add1~7_sumout\ : std_logic;
SIGNAL \i~3_combout\ : std_logic;
SIGNAL \A[1]~11_combout\ : std_logic;
SIGNAL \Add1~8\ : std_logic;
SIGNAL \Add1~11_sumout\ : std_logic;
SIGNAL \reg_Z|R[2]~feeder_combout\ : std_logic;
SIGNAL \B[2]~1_combout\ : std_logic;
SIGNAL \Add1~12\ : std_logic;
SIGNAL \Add1~15_sumout\ : std_logic;
SIGNAL \reg_Z|R[3]~feeder_combout\ : std_logic;
SIGNAL \reg_Z|R[3]~DUPLICATE_q\ : std_logic;
SIGNAL \X[3]~input_o\ : std_logic;
SIGNAL \reg_M|R[3]~feeder_combout\ : std_logic;
SIGNAL \A[3]~13_combout\ : std_logic;
SIGNAL \Add1~16\ : std_logic;
SIGNAL \Add1~19_sumout\ : std_logic;
SIGNAL \i~0_combout\ : std_logic;
SIGNAL \A[4]~14_combout\ : std_logic;
SIGNAL \Add1~20\ : std_logic;
SIGNAL \Add1~23_sumout\ : std_logic;
SIGNAL \reg_Z|R[5]~feeder_combout\ : std_logic;
SIGNAL \Add1~24\ : std_logic;
SIGNAL \Add1~27_sumout\ : std_logic;
SIGNAL \reg_Z|R[6]~feeder_combout\ : std_logic;
SIGNAL \reg_Z|R[7]~DUPLICATE_q\ : std_logic;
SIGNAL \Add1~28\ : std_logic;
SIGNAL \Add1~31_sumout\ : std_logic;
SIGNAL \reg_Z|R[7]~feeder_combout\ : std_logic;
SIGNAL \Add1~32\ : std_logic;
SIGNAL \Add1~35_sumout\ : std_logic;
SIGNAL \reg_Z|R[8]~feeder_combout\ : std_logic;
SIGNAL \reg_Z|R[9]~DUPLICATE_q\ : std_logic;
SIGNAL \Add1~36\ : std_logic;
SIGNAL \Add1~39_sumout\ : std_logic;
SIGNAL \reg_Z|R[9]~feeder_combout\ : std_logic;
SIGNAL \Add1~40\ : std_logic;
SIGNAL \Add1~43_sumout\ : std_logic;
SIGNAL \reg_Z|R[10]~feeder_combout\ : std_logic;
SIGNAL \Add1~44\ : std_logic;
SIGNAL \Add1~47_sumout\ : std_logic;
SIGNAL \reg_Z|R[11]~feeder_combout\ : std_logic;
SIGNAL \Add1~48\ : std_logic;
SIGNAL \Add1~51_sumout\ : std_logic;
SIGNAL \reg_Z|R[12]~feeder_combout\ : std_logic;
SIGNAL \Add1~52\ : std_logic;
SIGNAL \Add1~55_sumout\ : std_logic;
SIGNAL \reg_Z|R[13]~feeder_combout\ : std_logic;
SIGNAL \Add1~56\ : std_logic;
SIGNAL \Add1~59_sumout\ : std_logic;
SIGNAL \reg_Z|R[14]~feeder_combout\ : std_logic;
SIGNAL \reg_Z|R[14]~DUPLICATE_q\ : std_logic;
SIGNAL \Add1~60\ : std_logic;
SIGNAL \Add1~63_sumout\ : std_logic;
SIGNAL \reg_Z|R[15]~feeder_combout\ : std_logic;
SIGNAL \Add1~64\ : std_logic;
SIGNAL \Add1~67_sumout\ : std_logic;
SIGNAL \reg_Z|R[16]~feeder_combout\ : std_logic;
SIGNAL \reg_Z|R[16]~DUPLICATE_q\ : std_logic;
SIGNAL \Add1~68\ : std_logic;
SIGNAL \Add1~71_sumout\ : std_logic;
SIGNAL \reg_Z|R[17]~feeder_combout\ : std_logic;
SIGNAL \Add1~72\ : std_logic;
SIGNAL \Add1~75_sumout\ : std_logic;
SIGNAL \reg_Z|R[18]~feeder_combout\ : std_logic;
SIGNAL \Add1~76\ : std_logic;
SIGNAL \Add1~79_sumout\ : std_logic;
SIGNAL \reg_Z|R[19]~feeder_combout\ : std_logic;
SIGNAL \Add1~80\ : std_logic;
SIGNAL \Add1~83_sumout\ : std_logic;
SIGNAL \reg_Z|R[20]~feeder_combout\ : std_logic;
SIGNAL \Add1~84\ : std_logic;
SIGNAL \Add1~87_sumout\ : std_logic;
SIGNAL \reg_Z|R[21]~feeder_combout\ : std_logic;
SIGNAL \Add1~88\ : std_logic;
SIGNAL \Add1~91_sumout\ : std_logic;
SIGNAL \reg_Z|R[22]~feeder_combout\ : std_logic;
SIGNAL \reg_Z|R[22]~DUPLICATE_q\ : std_logic;
SIGNAL \Add1~92\ : std_logic;
SIGNAL \Add1~95_sumout\ : std_logic;
SIGNAL \reg_Z|R[23]~feeder_combout\ : std_logic;
SIGNAL \Add1~96\ : std_logic;
SIGNAL \Add1~99_sumout\ : std_logic;
SIGNAL \reg_Z|R[24]~feeder_combout\ : std_logic;
SIGNAL \Add1~100\ : std_logic;
SIGNAL \Add1~103_sumout\ : std_logic;
SIGNAL \reg_Z|R[25]~feeder_combout\ : std_logic;
SIGNAL \Add1~104\ : std_logic;
SIGNAL \Add1~107_sumout\ : std_logic;
SIGNAL \reg_Z|R[26]~feeder_combout\ : std_logic;
SIGNAL \Add1~108\ : std_logic;
SIGNAL \Add1~111_sumout\ : std_logic;
SIGNAL \reg_Z|R[27]~feeder_combout\ : std_logic;
SIGNAL \reg_Z|R[27]~DUPLICATE_q\ : std_logic;
SIGNAL \Add1~112\ : std_logic;
SIGNAL \Add1~115_sumout\ : std_logic;
SIGNAL \reg_Z|R[28]~feeder_combout\ : std_logic;
SIGNAL \reg_Z|R[28]~DUPLICATE_q\ : std_logic;
SIGNAL \Add1~116\ : std_logic;
SIGNAL \Add1~119_sumout\ : std_logic;
SIGNAL \reg_Z|R[29]~feeder_combout\ : std_logic;
SIGNAL \Add1~120\ : std_logic;
SIGNAL \Add1~123_sumout\ : std_logic;
SIGNAL \reg_Z|R[30]~feeder_combout\ : std_logic;
SIGNAL \Add1~124\ : std_logic;
SIGNAL \Add1~127_sumout\ : std_logic;
SIGNAL \reg_Z|R[31]~feeder_combout\ : std_logic;
SIGNAL \reg_Z|R[31]~DUPLICATE_q\ : std_logic;
SIGNAL \Add1~128\ : std_logic;
SIGNAL \Add1~152_sumout\ : std_logic;
SIGNAL \reg_Z|R[32]~feeder_combout\ : std_logic;
SIGNAL \Add1~153\ : std_logic;
SIGNAL \Add1~161_sumout\ : std_logic;
SIGNAL \reg_Z|R[33]~feeder_combout\ : std_logic;
SIGNAL \Add1~162\ : std_logic;
SIGNAL \Add1~170_sumout\ : std_logic;
SIGNAL \reg_Z|R[34]~feeder_combout\ : std_logic;
SIGNAL \Add1~171\ : std_logic;
SIGNAL \Add1~183_sumout\ : std_logic;
SIGNAL \reg_Z|R[35]~feeder_combout\ : std_logic;
SIGNAL \reg_Z|R[35]~DUPLICATE_q\ : std_logic;
SIGNAL \Add1~184\ : std_logic;
SIGNAL \Add1~196_sumout\ : std_logic;
SIGNAL \reg_Z|R[36]~feeder_combout\ : std_logic;
SIGNAL \Add1~197\ : std_logic;
SIGNAL \Add1~209_sumout\ : std_logic;
SIGNAL \reg_Z|R[37]~feeder_combout\ : std_logic;
SIGNAL \Add1~210\ : std_logic;
SIGNAL \Add1~222_sumout\ : std_logic;
SIGNAL \reg_Z|R[38]~feeder_combout\ : std_logic;
SIGNAL \reg_Z|R[38]~DUPLICATE_q\ : std_logic;
SIGNAL \Add1~223\ : std_logic;
SIGNAL \Add1~235_sumout\ : std_logic;
SIGNAL \reg_Z|R[39]~feeder_combout\ : std_logic;
SIGNAL \Add1~236\ : std_logic;
SIGNAL \Add1~248_sumout\ : std_logic;
SIGNAL \reg_Z|R[40]~feeder_combout\ : std_logic;
SIGNAL \reg_Z|R[41]~DUPLICATE_q\ : std_logic;
SIGNAL \Add1~249\ : std_logic;
SIGNAL \Add1~261_sumout\ : std_logic;
SIGNAL \reg_Z|R[41]~feeder_combout\ : std_logic;
SIGNAL \Add1~262\ : std_logic;
SIGNAL \Add1~274_sumout\ : std_logic;
SIGNAL \reg_Z|R[42]~feeder_combout\ : std_logic;
SIGNAL \Add1~275\ : std_logic;
SIGNAL \Add1~287_sumout\ : std_logic;
SIGNAL \reg_Z|R[43]~feeder_combout\ : std_logic;
SIGNAL \Add1~288\ : std_logic;
SIGNAL \Add1~300_sumout\ : std_logic;
SIGNAL \reg_Z|R[44]~feeder_combout\ : std_logic;
SIGNAL \reg_Z|R[45]~DUPLICATE_q\ : std_logic;
SIGNAL \reg_Z|R[44]~DUPLICATE_q\ : std_logic;
SIGNAL \Add1~301\ : std_logic;
SIGNAL \Add1~313_sumout\ : std_logic;
SIGNAL \reg_Z|R[45]~feeder_combout\ : std_logic;
SIGNAL \Add1~314\ : std_logic;
SIGNAL \Add1~326_sumout\ : std_logic;
SIGNAL \reg_Z|R[46]~feeder_combout\ : std_logic;
SIGNAL \reg_Z|R[46]~DUPLICATE_q\ : std_logic;
SIGNAL \Add1~327\ : std_logic;
SIGNAL \Add1~339_sumout\ : std_logic;
SIGNAL \reg_Z|R[47]~feeder_combout\ : std_logic;
SIGNAL \reg_Z|R[47]~DUPLICATE_q\ : std_logic;
SIGNAL \Add1~340\ : std_logic;
SIGNAL \Add1~352_sumout\ : std_logic;
SIGNAL \reg_Z|R[48]~feeder_combout\ : std_logic;
SIGNAL \reg_Z|R[48]~DUPLICATE_q\ : std_logic;
SIGNAL \Add1~353\ : std_logic;
SIGNAL \Add1~343_sumout\ : std_logic;
SIGNAL \reg_Z|R[49]~feeder_combout\ : std_logic;
SIGNAL \Add1~344\ : std_logic;
SIGNAL \Add1~330_sumout\ : std_logic;
SIGNAL \reg_Z|R[50]~feeder_combout\ : std_logic;
SIGNAL \reg_Z|R[50]~DUPLICATE_q\ : std_logic;
SIGNAL \Add1~331\ : std_logic;
SIGNAL \Add1~317_sumout\ : std_logic;
SIGNAL \reg_Z|R[51]~feeder_combout\ : std_logic;
SIGNAL \reg_Z|R[51]~DUPLICATE_q\ : std_logic;
SIGNAL \Add1~318\ : std_logic;
SIGNAL \Add1~304_sumout\ : std_logic;
SIGNAL \reg_Z|R[52]~feeder_combout\ : std_logic;
SIGNAL \Add1~305\ : std_logic;
SIGNAL \Add1~291_sumout\ : std_logic;
SIGNAL \reg_Z|R[53]~feeder_combout\ : std_logic;
SIGNAL \reg_Z|R[53]~DUPLICATE_q\ : std_logic;
SIGNAL \Add1~292\ : std_logic;
SIGNAL \Add1~278_sumout\ : std_logic;
SIGNAL \reg_Z|R[54]~feeder_combout\ : std_logic;
SIGNAL \Add1~279\ : std_logic;
SIGNAL \Add1~265_sumout\ : std_logic;
SIGNAL \reg_Z|R[55]~feeder_combout\ : std_logic;
SIGNAL \reg_Z|R[59]~DUPLICATE_q\ : std_logic;
SIGNAL \reg_Z|R[58]~DUPLICATE_q\ : std_logic;
SIGNAL \reg_Z|R[57]~DUPLICATE_q\ : std_logic;
SIGNAL \reg_Z|R[56]~DUPLICATE_q\ : std_logic;
SIGNAL \Add1~266\ : std_logic;
SIGNAL \Add1~252_sumout\ : std_logic;
SIGNAL \reg_Z|R[56]~feeder_combout\ : std_logic;
SIGNAL \Add1~253\ : std_logic;
SIGNAL \Add1~239_sumout\ : std_logic;
SIGNAL \reg_Z|R[57]~feeder_combout\ : std_logic;
SIGNAL \Add1~240\ : std_logic;
SIGNAL \Add1~226_sumout\ : std_logic;
SIGNAL \reg_Z|R[58]~feeder_combout\ : std_logic;
SIGNAL \Add1~227\ : std_logic;
SIGNAL \Add1~213_sumout\ : std_logic;
SIGNAL \reg_Z|R[59]~feeder_combout\ : std_logic;
SIGNAL \Add1~214\ : std_logic;
SIGNAL \Add1~200_sumout\ : std_logic;
SIGNAL \reg_Z|R[60]~feeder_combout\ : std_logic;
SIGNAL \Add1~201\ : std_logic;
SIGNAL \Add1~187_sumout\ : std_logic;
SIGNAL \reg_Z|R[61]~feeder_combout\ : std_logic;
SIGNAL \Add1~188\ : std_logic;
SIGNAL \Add1~174_sumout\ : std_logic;
SIGNAL \reg_Z|R[62]~feeder_combout\ : std_logic;
SIGNAL \Add0~258_cout\ : std_logic;
SIGNAL \Add0~254_cout\ : std_logic;
SIGNAL \Add0~250_cout\ : std_logic;
SIGNAL \Add0~246_cout\ : std_logic;
SIGNAL \Add0~242_cout\ : std_logic;
SIGNAL \Add0~238_cout\ : std_logic;
SIGNAL \Add0~234_cout\ : std_logic;
SIGNAL \Add0~230_cout\ : std_logic;
SIGNAL \Add0~226_cout\ : std_logic;
SIGNAL \Add0~222_cout\ : std_logic;
SIGNAL \Add0~218_cout\ : std_logic;
SIGNAL \Add0~214_cout\ : std_logic;
SIGNAL \Add0~210_cout\ : std_logic;
SIGNAL \Add0~206_cout\ : std_logic;
SIGNAL \Add0~202_cout\ : std_logic;
SIGNAL \Add0~198_cout\ : std_logic;
SIGNAL \Add0~194_cout\ : std_logic;
SIGNAL \Add0~190_cout\ : std_logic;
SIGNAL \Add0~186_cout\ : std_logic;
SIGNAL \Add0~182_cout\ : std_logic;
SIGNAL \Add0~178_cout\ : std_logic;
SIGNAL \Add0~174_cout\ : std_logic;
SIGNAL \Add0~170_cout\ : std_logic;
SIGNAL \Add0~166_cout\ : std_logic;
SIGNAL \Add0~162_cout\ : std_logic;
SIGNAL \Add0~158_cout\ : std_logic;
SIGNAL \Add0~154_cout\ : std_logic;
SIGNAL \Add0~150_cout\ : std_logic;
SIGNAL \Add0~146_cout\ : std_logic;
SIGNAL \Add0~142_cout\ : std_logic;
SIGNAL \Add0~138_cout\ : std_logic;
SIGNAL \Add0~134_cout\ : std_logic;
SIGNAL \Add0~130_cout\ : std_logic;
SIGNAL \Add0~126_cout\ : std_logic;
SIGNAL \Add0~122_cout\ : std_logic;
SIGNAL \Add0~118_cout\ : std_logic;
SIGNAL \Add0~114_cout\ : std_logic;
SIGNAL \Add0~110_cout\ : std_logic;
SIGNAL \Add0~106_cout\ : std_logic;
SIGNAL \Add0~102_cout\ : std_logic;
SIGNAL \Add0~98_cout\ : std_logic;
SIGNAL \Add0~94_cout\ : std_logic;
SIGNAL \Add0~90_cout\ : std_logic;
SIGNAL \Add0~86_cout\ : std_logic;
SIGNAL \Add0~82_cout\ : std_logic;
SIGNAL \Add0~78_cout\ : std_logic;
SIGNAL \Add0~74_cout\ : std_logic;
SIGNAL \Add0~70_cout\ : std_logic;
SIGNAL \Add0~66_cout\ : std_logic;
SIGNAL \Add0~62_cout\ : std_logic;
SIGNAL \Add0~58_cout\ : std_logic;
SIGNAL \Add0~54_cout\ : std_logic;
SIGNAL \Add0~50_cout\ : std_logic;
SIGNAL \Add0~46_cout\ : std_logic;
SIGNAL \Add0~42_cout\ : std_logic;
SIGNAL \Add0~38_cout\ : std_logic;
SIGNAL \Add0~34_cout\ : std_logic;
SIGNAL \Add0~30_cout\ : std_logic;
SIGNAL \Add0~26_cout\ : std_logic;
SIGNAL \Add0~22_cout\ : std_logic;
SIGNAL \Add0~18_cout\ : std_logic;
SIGNAL \Add0~14_cout\ : std_logic;
SIGNAL \Add0~10_cout\ : std_logic;
SIGNAL \Add0~6_cout\ : std_logic;
SIGNAL \Add0~1_sumout\ : std_logic;
SIGNAL \reg_Z|R~1_combout\ : std_logic;
SIGNAL \Add1~545_cout\ : std_logic;
SIGNAL \Add1~541_cout\ : std_logic;
SIGNAL \Add1~537_cout\ : std_logic;
SIGNAL \Add1~533_cout\ : std_logic;
SIGNAL \Add1~529_cout\ : std_logic;
SIGNAL \Add1~525_cout\ : std_logic;
SIGNAL \Add1~521_cout\ : std_logic;
SIGNAL \Add1~517_cout\ : std_logic;
SIGNAL \Add1~513_cout\ : std_logic;
SIGNAL \Add1~509_cout\ : std_logic;
SIGNAL \Add1~505_cout\ : std_logic;
SIGNAL \Add1~501_cout\ : std_logic;
SIGNAL \Add1~497_cout\ : std_logic;
SIGNAL \Add1~493_cout\ : std_logic;
SIGNAL \Add1~489_cout\ : std_logic;
SIGNAL \Add1~485_cout\ : std_logic;
SIGNAL \Add1~481_cout\ : std_logic;
SIGNAL \Add1~477_cout\ : std_logic;
SIGNAL \Add1~473_cout\ : std_logic;
SIGNAL \Add1~469_cout\ : std_logic;
SIGNAL \Add1~465_cout\ : std_logic;
SIGNAL \Add1~461_cout\ : std_logic;
SIGNAL \Add1~457_cout\ : std_logic;
SIGNAL \Add1~453_cout\ : std_logic;
SIGNAL \Add1~449_cout\ : std_logic;
SIGNAL \Add1~445_cout\ : std_logic;
SIGNAL \Add1~441_cout\ : std_logic;
SIGNAL \Add1~437_cout\ : std_logic;
SIGNAL \Add1~433_cout\ : std_logic;
SIGNAL \Add1~429_cout\ : std_logic;
SIGNAL \Add1~425_cout\ : std_logic;
SIGNAL \Add1~421_cout\ : std_logic;
SIGNAL \Add1~417_cout\ : std_logic;
SIGNAL \Add1~413_cout\ : std_logic;
SIGNAL \Add1~409_cout\ : std_logic;
SIGNAL \Add1~405_cout\ : std_logic;
SIGNAL \Add1~401_cout\ : std_logic;
SIGNAL \Add1~397_cout\ : std_logic;
SIGNAL \Add1~393_cout\ : std_logic;
SIGNAL \Add1~389_cout\ : std_logic;
SIGNAL \Add1~385_cout\ : std_logic;
SIGNAL \Add1~381_cout\ : std_logic;
SIGNAL \Add1~377_cout\ : std_logic;
SIGNAL \Add1~373_cout\ : std_logic;
SIGNAL \Add1~369_cout\ : std_logic;
SIGNAL \Add1~365_cout\ : std_logic;
SIGNAL \Add1~361_cout\ : std_logic;
SIGNAL \Add1~357_cout\ : std_logic;
SIGNAL \Add1~349_cout\ : std_logic;
SIGNAL \Add1~335_cout\ : std_logic;
SIGNAL \Add1~323_cout\ : std_logic;
SIGNAL \Add1~309_cout\ : std_logic;
SIGNAL \Add1~297_cout\ : std_logic;
SIGNAL \Add1~283_cout\ : std_logic;
SIGNAL \Add1~271_cout\ : std_logic;
SIGNAL \Add1~257_cout\ : std_logic;
SIGNAL \Add1~245_cout\ : std_logic;
SIGNAL \Add1~231_cout\ : std_logic;
SIGNAL \Add1~219_cout\ : std_logic;
SIGNAL \Add1~205_cout\ : std_logic;
SIGNAL \Add1~193_cout\ : std_logic;
SIGNAL \Add1~179_cout\ : std_logic;
SIGNAL \Add1~167_cout\ : std_logic;
SIGNAL \Add1~157_cout\ : std_logic;
SIGNAL \Add1~135_sumout\ : std_logic;
SIGNAL \Selector5~0_combout\ : std_logic;
SIGNAL \state.S_4~DUPLICATE_q\ : std_logic;
SIGNAL \state~22_combout\ : std_logic;
SIGNAL \state.S_6~q\ : std_logic;
SIGNAL \Selector8~0_combout\ : std_logic;
SIGNAL \state.S_done~q\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \state.S_idle~q\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \state.S_init~q\ : std_logic;
SIGNAL \i~1_combout\ : std_logic;
SIGNAL \i[3]~DUPLICATE_q\ : std_logic;
SIGNAL \i[2]~DUPLICATE_q\ : std_logic;
SIGNAL \i[0]~DUPLICATE_q\ : std_logic;
SIGNAL \i[4]~DUPLICATE_q\ : std_logic;
SIGNAL \Equal4~0_combout\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \state.S_1~q\ : std_logic;
SIGNAL \state.S_2~q\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \state.S_3~q\ : std_logic;
SIGNAL \state.S_5~q\ : std_logic;
SIGNAL \Add1~3_sumout\ : std_logic;
SIGNAL \reg_Z|R[0]~feeder_combout\ : std_logic;
SIGNAL \Result[0]~0_combout\ : std_logic;
SIGNAL \Result[0]~reg0_q\ : std_logic;
SIGNAL \Result[1]~reg0_q\ : std_logic;
SIGNAL \Result[2]~reg0_q\ : std_logic;
SIGNAL \Result[3]~reg0_q\ : std_logic;
SIGNAL \Result[4]~reg0_q\ : std_logic;
SIGNAL \Result[5]~reg0_q\ : std_logic;
SIGNAL \Result[6]~reg0_q\ : std_logic;
SIGNAL \Result[7]~reg0_q\ : std_logic;
SIGNAL \Result[8]~reg0_q\ : std_logic;
SIGNAL \Result[9]~reg0feeder_combout\ : std_logic;
SIGNAL \Result[9]~reg0_q\ : std_logic;
SIGNAL \Result[10]~reg0feeder_combout\ : std_logic;
SIGNAL \Result[10]~reg0_q\ : std_logic;
SIGNAL \Result[11]~reg0_q\ : std_logic;
SIGNAL \Result[12]~reg0feeder_combout\ : std_logic;
SIGNAL \Result[12]~reg0_q\ : std_logic;
SIGNAL \Result[13]~reg0feeder_combout\ : std_logic;
SIGNAL \Result[13]~reg0_q\ : std_logic;
SIGNAL \Result[14]~reg0_q\ : std_logic;
SIGNAL \Result[15]~reg0feeder_combout\ : std_logic;
SIGNAL \Result[15]~reg0_q\ : std_logic;
SIGNAL \Result[16]~reg0_q\ : std_logic;
SIGNAL \Result[17]~reg0_q\ : std_logic;
SIGNAL \Result[18]~reg0feeder_combout\ : std_logic;
SIGNAL \Result[18]~reg0_q\ : std_logic;
SIGNAL \Result[19]~reg0feeder_combout\ : std_logic;
SIGNAL \Result[19]~reg0_q\ : std_logic;
SIGNAL \Result[20]~reg0_q\ : std_logic;
SIGNAL \Result[21]~reg0_q\ : std_logic;
SIGNAL \Result[22]~reg0_q\ : std_logic;
SIGNAL \Result[23]~reg0_q\ : std_logic;
SIGNAL \Result[24]~reg0_q\ : std_logic;
SIGNAL \Result[25]~reg0_q\ : std_logic;
SIGNAL \Result[26]~reg0feeder_combout\ : std_logic;
SIGNAL \Result[26]~reg0_q\ : std_logic;
SIGNAL \Result[27]~reg0feeder_combout\ : std_logic;
SIGNAL \Result[27]~reg0_q\ : std_logic;
SIGNAL \Result[28]~reg0_q\ : std_logic;
SIGNAL \Result[29]~reg0feeder_combout\ : std_logic;
SIGNAL \Result[29]~reg0_q\ : std_logic;
SIGNAL \Result[30]~reg0_q\ : std_logic;
SIGNAL \Result[31]~reg0_q\ : std_logic;
SIGNAL i : std_logic_vector(4 DOWNTO 0);
SIGNAL \reg_V|R\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \reg_M|R\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \reg_Z|R\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \ALT_INV_state.S_4~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_i[0]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_i[2]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_i[3]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_i[4]~DUPLICATE_q\ : std_logic;
SIGNAL \reg_Z|ALT_INV_R[48]~DUPLICATE_q\ : std_logic;
SIGNAL \reg_Z|ALT_INV_R[47]~DUPLICATE_q\ : std_logic;
SIGNAL \reg_Z|ALT_INV_R[50]~DUPLICATE_q\ : std_logic;
SIGNAL \reg_Z|ALT_INV_R[46]~DUPLICATE_q\ : std_logic;
SIGNAL \reg_Z|ALT_INV_R[51]~DUPLICATE_q\ : std_logic;
SIGNAL \reg_Z|ALT_INV_R[45]~DUPLICATE_q\ : std_logic;
SIGNAL \reg_Z|ALT_INV_R[44]~DUPLICATE_q\ : std_logic;
SIGNAL \reg_Z|ALT_INV_R[53]~DUPLICATE_q\ : std_logic;
SIGNAL \reg_Z|ALT_INV_R[41]~DUPLICATE_q\ : std_logic;
SIGNAL \reg_Z|ALT_INV_R[57]~DUPLICATE_q\ : std_logic;
SIGNAL \reg_Z|ALT_INV_R[38]~DUPLICATE_q\ : std_logic;
SIGNAL \reg_Z|ALT_INV_R[35]~DUPLICATE_q\ : std_logic;
SIGNAL \reg_Z|ALT_INV_R[33]~DUPLICATE_q\ : std_logic;
SIGNAL \reg_V|ALT_INV_R[22]~DUPLICATE_q\ : std_logic;
SIGNAL \reg_Z|ALT_INV_R[32]~DUPLICATE_q\ : std_logic;
SIGNAL \reg_Z|ALT_INV_R[31]~DUPLICATE_q\ : std_logic;
SIGNAL \reg_Z|ALT_INV_R[28]~DUPLICATE_q\ : std_logic;
SIGNAL \reg_Z|ALT_INV_R[27]~DUPLICATE_q\ : std_logic;
SIGNAL \reg_Z|ALT_INV_R[24]~DUPLICATE_q\ : std_logic;
SIGNAL \reg_Z|ALT_INV_R[23]~DUPLICATE_q\ : std_logic;
SIGNAL \reg_Z|ALT_INV_R[22]~DUPLICATE_q\ : std_logic;
SIGNAL \reg_Z|ALT_INV_R[16]~DUPLICATE_q\ : std_logic;
SIGNAL \reg_Z|ALT_INV_R[15]~DUPLICATE_q\ : std_logic;
SIGNAL \reg_Z|ALT_INV_R[14]~DUPLICATE_q\ : std_logic;
SIGNAL \reg_Z|ALT_INV_R[12]~DUPLICATE_q\ : std_logic;
SIGNAL \reg_Z|ALT_INV_R[9]~DUPLICATE_q\ : std_logic;
SIGNAL \reg_Z|ALT_INV_R[7]~DUPLICATE_q\ : std_logic;
SIGNAL \reg_Z|ALT_INV_R[3]~DUPLICATE_q\ : std_logic;
SIGNAL \reg_Z|ALT_INV_R[1]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_X[47]~input_o\ : std_logic;
SIGNAL \ALT_INV_X[48]~input_o\ : std_logic;
SIGNAL \ALT_INV_X[46]~input_o\ : std_logic;
SIGNAL \ALT_INV_X[49]~input_o\ : std_logic;
SIGNAL \ALT_INV_X[45]~input_o\ : std_logic;
SIGNAL \ALT_INV_X[50]~input_o\ : std_logic;
SIGNAL \ALT_INV_X[44]~input_o\ : std_logic;
SIGNAL \ALT_INV_X[51]~input_o\ : std_logic;
SIGNAL \ALT_INV_X[43]~input_o\ : std_logic;
SIGNAL \ALT_INV_X[52]~input_o\ : std_logic;
SIGNAL \ALT_INV_X[42]~input_o\ : std_logic;
SIGNAL \ALT_INV_X[53]~input_o\ : std_logic;
SIGNAL \ALT_INV_X[41]~input_o\ : std_logic;
SIGNAL \ALT_INV_X[54]~input_o\ : std_logic;
SIGNAL \ALT_INV_X[40]~input_o\ : std_logic;
SIGNAL \ALT_INV_X[55]~input_o\ : std_logic;
SIGNAL \ALT_INV_X[39]~input_o\ : std_logic;
SIGNAL \ALT_INV_X[56]~input_o\ : std_logic;
SIGNAL \ALT_INV_X[38]~input_o\ : std_logic;
SIGNAL \ALT_INV_X[57]~input_o\ : std_logic;
SIGNAL \ALT_INV_X[37]~input_o\ : std_logic;
SIGNAL \ALT_INV_X[58]~input_o\ : std_logic;
SIGNAL \ALT_INV_X[36]~input_o\ : std_logic;
SIGNAL \ALT_INV_X[59]~input_o\ : std_logic;
SIGNAL \ALT_INV_X[35]~input_o\ : std_logic;
SIGNAL \ALT_INV_X[60]~input_o\ : std_logic;
SIGNAL \ALT_INV_X[34]~input_o\ : std_logic;
SIGNAL \ALT_INV_X[61]~input_o\ : std_logic;
SIGNAL \ALT_INV_X[33]~input_o\ : std_logic;
SIGNAL \ALT_INV_X[62]~input_o\ : std_logic;
SIGNAL \ALT_INV_X[32]~input_o\ : std_logic;
SIGNAL \ALT_INV_X[63]~input_o\ : std_logic;
SIGNAL \ALT_INV_X[31]~input_o\ : std_logic;
SIGNAL \ALT_INV_X[30]~input_o\ : std_logic;
SIGNAL \ALT_INV_X[29]~input_o\ : std_logic;
SIGNAL \ALT_INV_X[28]~input_o\ : std_logic;
SIGNAL \ALT_INV_X[27]~input_o\ : std_logic;
SIGNAL \ALT_INV_X[26]~input_o\ : std_logic;
SIGNAL \ALT_INV_X[25]~input_o\ : std_logic;
SIGNAL \ALT_INV_X[24]~input_o\ : std_logic;
SIGNAL \ALT_INV_X[23]~input_o\ : std_logic;
SIGNAL \ALT_INV_X[22]~input_o\ : std_logic;
SIGNAL \ALT_INV_X[21]~input_o\ : std_logic;
SIGNAL \ALT_INV_X[20]~input_o\ : std_logic;
SIGNAL \ALT_INV_X[19]~input_o\ : std_logic;
SIGNAL \ALT_INV_X[18]~input_o\ : std_logic;
SIGNAL \ALT_INV_X[17]~input_o\ : std_logic;
SIGNAL \ALT_INV_X[16]~input_o\ : std_logic;
SIGNAL \ALT_INV_X[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_X[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_X[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_X[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_X[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_X[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_X[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_X[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_X[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_X[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_X[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_X[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_X[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_X[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_X[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_X[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_start~input_o\ : std_logic;
SIGNAL \ALT_INV_rst~input_o\ : std_logic;
SIGNAL \ALT_INV_Add1~346_combout\ : std_logic;
SIGNAL \ALT_INV_Add1~337_combout\ : std_logic;
SIGNAL \ALT_INV_Add1~320_combout\ : std_logic;
SIGNAL \ALT_INV_Add1~311_combout\ : std_logic;
SIGNAL \ALT_INV_Add1~294_combout\ : std_logic;
SIGNAL \ALT_INV_Add1~285_combout\ : std_logic;
SIGNAL \ALT_INV_Add1~268_combout\ : std_logic;
SIGNAL \ALT_INV_Add1~259_combout\ : std_logic;
SIGNAL \ALT_INV_Add1~242_combout\ : std_logic;
SIGNAL \ALT_INV_Add1~233_combout\ : std_logic;
SIGNAL \ALT_INV_Add1~216_combout\ : std_logic;
SIGNAL \ALT_INV_Add1~207_combout\ : std_logic;
SIGNAL \ALT_INV_Add1~190_combout\ : std_logic;
SIGNAL \ALT_INV_Add1~181_combout\ : std_logic;
SIGNAL \ALT_INV_Add1~164_combout\ : std_logic;
SIGNAL \ALT_INV_Add1~159_combout\ : std_logic;
SIGNAL \ALT_INV_Add1~150_combout\ : std_logic;
SIGNAL \ALT_INV_Add1~149_combout\ : std_logic;
SIGNAL \ALT_INV_Add1~148_combout\ : std_logic;
SIGNAL \ALT_INV_Add1~147_combout\ : std_logic;
SIGNAL \ALT_INV_Add1~146_combout\ : std_logic;
SIGNAL \ALT_INV_Add1~145_combout\ : std_logic;
SIGNAL \ALT_INV_Add1~144_combout\ : std_logic;
SIGNAL \ALT_INV_Add1~143_combout\ : std_logic;
SIGNAL \ALT_INV_Add1~142_combout\ : std_logic;
SIGNAL \ALT_INV_Add1~141_combout\ : std_logic;
SIGNAL \ALT_INV_Add1~140_combout\ : std_logic;
SIGNAL \ALT_INV_Add1~139_combout\ : std_logic;
SIGNAL \ALT_INV_Add1~138_combout\ : std_logic;
SIGNAL \ALT_INV_a_s~0_combout\ : std_logic;
SIGNAL \ALT_INV_B[4]~2_combout\ : std_logic;
SIGNAL \ALT_INV_A[4]~14_combout\ : std_logic;
SIGNAL \ALT_INV_A[3]~13_combout\ : std_logic;
SIGNAL \ALT_INV_B[2]~1_combout\ : std_logic;
SIGNAL \ALT_INV_A[2]~12_combout\ : std_logic;
SIGNAL \ALT_INV_A[1]~11_combout\ : std_logic;
SIGNAL \ALT_INV_state.S_idle~q\ : std_logic;
SIGNAL \ALT_INV_B[0]~0_combout\ : std_logic;
SIGNAL \ALT_INV_A[0]~10_combout\ : std_logic;
SIGNAL \ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \ALT_INV_state.S_3~q\ : std_logic;
SIGNAL \ALT_INV_state.S_2~q\ : std_logic;
SIGNAL \ALT_INV_ldZ~0_combout\ : std_logic;
SIGNAL \ALT_INV_state.S_4~q\ : std_logic;
SIGNAL \ALT_INV_state.S_5~q\ : std_logic;
SIGNAL \ALT_INV_state.S_1~q\ : std_logic;
SIGNAL \ALT_INV_state.S_init~q\ : std_logic;
SIGNAL \ALT_INV_Equal4~0_combout\ : std_logic;
SIGNAL ALT_INV_i : std_logic_vector(4 DOWNTO 0);
SIGNAL \ALT_INV_state.S_6~q\ : std_logic;
SIGNAL \ALT_INV_state.S_done~q\ : std_logic;
SIGNAL \ALT_INV_Add1~352_sumout\ : std_logic;
SIGNAL \reg_M|ALT_INV_R\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \ALT_INV_Add1~343_sumout\ : std_logic;
SIGNAL \reg_Z|ALT_INV_R\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \ALT_INV_Add1~339_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~330_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~326_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~317_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~313_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~304_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~300_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~291_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~287_sumout\ : std_logic;
SIGNAL \reg_V|ALT_INV_R\ : std_logic_vector(62 DOWNTO 0);
SIGNAL \ALT_INV_Add1~278_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~274_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~265_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~261_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~252_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~248_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~239_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~235_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~226_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~222_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~213_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~209_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~200_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~196_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~187_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~183_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~174_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~170_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~161_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~152_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~135_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~127_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~123_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~119_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~115_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~111_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~107_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~103_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~99_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~95_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~91_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~87_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~83_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~79_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~75_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~71_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~67_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~63_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~59_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~55_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~51_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~47_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~43_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~39_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~35_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~31_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~27_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~23_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~19_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~15_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~11_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~7_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~3_sumout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_rst <= rst;
ww_start <= start;
ww_X <= X;
Result <= ww_Result;
finished <= ww_finished;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_state.S_4~DUPLICATE_q\ <= NOT \state.S_4~DUPLICATE_q\;
\ALT_INV_i[0]~DUPLICATE_q\ <= NOT \i[0]~DUPLICATE_q\;
\ALT_INV_i[2]~DUPLICATE_q\ <= NOT \i[2]~DUPLICATE_q\;
\ALT_INV_i[3]~DUPLICATE_q\ <= NOT \i[3]~DUPLICATE_q\;
\ALT_INV_i[4]~DUPLICATE_q\ <= NOT \i[4]~DUPLICATE_q\;
\reg_Z|ALT_INV_R[48]~DUPLICATE_q\ <= NOT \reg_Z|R[48]~DUPLICATE_q\;
\reg_Z|ALT_INV_R[47]~DUPLICATE_q\ <= NOT \reg_Z|R[47]~DUPLICATE_q\;
\reg_Z|ALT_INV_R[50]~DUPLICATE_q\ <= NOT \reg_Z|R[50]~DUPLICATE_q\;
\reg_Z|ALT_INV_R[46]~DUPLICATE_q\ <= NOT \reg_Z|R[46]~DUPLICATE_q\;
\reg_Z|ALT_INV_R[51]~DUPLICATE_q\ <= NOT \reg_Z|R[51]~DUPLICATE_q\;
\reg_Z|ALT_INV_R[45]~DUPLICATE_q\ <= NOT \reg_Z|R[45]~DUPLICATE_q\;
\reg_Z|ALT_INV_R[44]~DUPLICATE_q\ <= NOT \reg_Z|R[44]~DUPLICATE_q\;
\reg_Z|ALT_INV_R[53]~DUPLICATE_q\ <= NOT \reg_Z|R[53]~DUPLICATE_q\;
\reg_Z|ALT_INV_R[41]~DUPLICATE_q\ <= NOT \reg_Z|R[41]~DUPLICATE_q\;
\reg_Z|ALT_INV_R[57]~DUPLICATE_q\ <= NOT \reg_Z|R[57]~DUPLICATE_q\;
\reg_Z|ALT_INV_R[38]~DUPLICATE_q\ <= NOT \reg_Z|R[38]~DUPLICATE_q\;
\reg_Z|ALT_INV_R[35]~DUPLICATE_q\ <= NOT \reg_Z|R[35]~DUPLICATE_q\;
\reg_Z|ALT_INV_R[33]~DUPLICATE_q\ <= NOT \reg_Z|R[33]~DUPLICATE_q\;
\reg_V|ALT_INV_R[22]~DUPLICATE_q\ <= NOT \reg_V|R[22]~DUPLICATE_q\;
\reg_Z|ALT_INV_R[32]~DUPLICATE_q\ <= NOT \reg_Z|R[32]~DUPLICATE_q\;
\reg_Z|ALT_INV_R[31]~DUPLICATE_q\ <= NOT \reg_Z|R[31]~DUPLICATE_q\;
\reg_Z|ALT_INV_R[28]~DUPLICATE_q\ <= NOT \reg_Z|R[28]~DUPLICATE_q\;
\reg_Z|ALT_INV_R[27]~DUPLICATE_q\ <= NOT \reg_Z|R[27]~DUPLICATE_q\;
\reg_Z|ALT_INV_R[24]~DUPLICATE_q\ <= NOT \reg_Z|R[24]~DUPLICATE_q\;
\reg_Z|ALT_INV_R[23]~DUPLICATE_q\ <= NOT \reg_Z|R[23]~DUPLICATE_q\;
\reg_Z|ALT_INV_R[22]~DUPLICATE_q\ <= NOT \reg_Z|R[22]~DUPLICATE_q\;
\reg_Z|ALT_INV_R[16]~DUPLICATE_q\ <= NOT \reg_Z|R[16]~DUPLICATE_q\;
\reg_Z|ALT_INV_R[15]~DUPLICATE_q\ <= NOT \reg_Z|R[15]~DUPLICATE_q\;
\reg_Z|ALT_INV_R[14]~DUPLICATE_q\ <= NOT \reg_Z|R[14]~DUPLICATE_q\;
\reg_Z|ALT_INV_R[12]~DUPLICATE_q\ <= NOT \reg_Z|R[12]~DUPLICATE_q\;
\reg_Z|ALT_INV_R[9]~DUPLICATE_q\ <= NOT \reg_Z|R[9]~DUPLICATE_q\;
\reg_Z|ALT_INV_R[7]~DUPLICATE_q\ <= NOT \reg_Z|R[7]~DUPLICATE_q\;
\reg_Z|ALT_INV_R[3]~DUPLICATE_q\ <= NOT \reg_Z|R[3]~DUPLICATE_q\;
\reg_Z|ALT_INV_R[1]~DUPLICATE_q\ <= NOT \reg_Z|R[1]~DUPLICATE_q\;
\ALT_INV_X[47]~input_o\ <= NOT \X[47]~input_o\;
\ALT_INV_X[48]~input_o\ <= NOT \X[48]~input_o\;
\ALT_INV_X[46]~input_o\ <= NOT \X[46]~input_o\;
\ALT_INV_X[49]~input_o\ <= NOT \X[49]~input_o\;
\ALT_INV_X[45]~input_o\ <= NOT \X[45]~input_o\;
\ALT_INV_X[50]~input_o\ <= NOT \X[50]~input_o\;
\ALT_INV_X[44]~input_o\ <= NOT \X[44]~input_o\;
\ALT_INV_X[51]~input_o\ <= NOT \X[51]~input_o\;
\ALT_INV_X[43]~input_o\ <= NOT \X[43]~input_o\;
\ALT_INV_X[52]~input_o\ <= NOT \X[52]~input_o\;
\ALT_INV_X[42]~input_o\ <= NOT \X[42]~input_o\;
\ALT_INV_X[53]~input_o\ <= NOT \X[53]~input_o\;
\ALT_INV_X[41]~input_o\ <= NOT \X[41]~input_o\;
\ALT_INV_X[54]~input_o\ <= NOT \X[54]~input_o\;
\ALT_INV_X[40]~input_o\ <= NOT \X[40]~input_o\;
\ALT_INV_X[55]~input_o\ <= NOT \X[55]~input_o\;
\ALT_INV_X[39]~input_o\ <= NOT \X[39]~input_o\;
\ALT_INV_X[56]~input_o\ <= NOT \X[56]~input_o\;
\ALT_INV_X[38]~input_o\ <= NOT \X[38]~input_o\;
\ALT_INV_X[57]~input_o\ <= NOT \X[57]~input_o\;
\ALT_INV_X[37]~input_o\ <= NOT \X[37]~input_o\;
\ALT_INV_X[58]~input_o\ <= NOT \X[58]~input_o\;
\ALT_INV_X[36]~input_o\ <= NOT \X[36]~input_o\;
\ALT_INV_X[59]~input_o\ <= NOT \X[59]~input_o\;
\ALT_INV_X[35]~input_o\ <= NOT \X[35]~input_o\;
\ALT_INV_X[60]~input_o\ <= NOT \X[60]~input_o\;
\ALT_INV_X[34]~input_o\ <= NOT \X[34]~input_o\;
\ALT_INV_X[61]~input_o\ <= NOT \X[61]~input_o\;
\ALT_INV_X[33]~input_o\ <= NOT \X[33]~input_o\;
\ALT_INV_X[62]~input_o\ <= NOT \X[62]~input_o\;
\ALT_INV_X[32]~input_o\ <= NOT \X[32]~input_o\;
\ALT_INV_X[63]~input_o\ <= NOT \X[63]~input_o\;
\ALT_INV_X[31]~input_o\ <= NOT \X[31]~input_o\;
\ALT_INV_X[30]~input_o\ <= NOT \X[30]~input_o\;
\ALT_INV_X[29]~input_o\ <= NOT \X[29]~input_o\;
\ALT_INV_X[28]~input_o\ <= NOT \X[28]~input_o\;
\ALT_INV_X[27]~input_o\ <= NOT \X[27]~input_o\;
\ALT_INV_X[26]~input_o\ <= NOT \X[26]~input_o\;
\ALT_INV_X[25]~input_o\ <= NOT \X[25]~input_o\;
\ALT_INV_X[24]~input_o\ <= NOT \X[24]~input_o\;
\ALT_INV_X[23]~input_o\ <= NOT \X[23]~input_o\;
\ALT_INV_X[22]~input_o\ <= NOT \X[22]~input_o\;
\ALT_INV_X[21]~input_o\ <= NOT \X[21]~input_o\;
\ALT_INV_X[20]~input_o\ <= NOT \X[20]~input_o\;
\ALT_INV_X[19]~input_o\ <= NOT \X[19]~input_o\;
\ALT_INV_X[18]~input_o\ <= NOT \X[18]~input_o\;
\ALT_INV_X[17]~input_o\ <= NOT \X[17]~input_o\;
\ALT_INV_X[16]~input_o\ <= NOT \X[16]~input_o\;
\ALT_INV_X[15]~input_o\ <= NOT \X[15]~input_o\;
\ALT_INV_X[14]~input_o\ <= NOT \X[14]~input_o\;
\ALT_INV_X[13]~input_o\ <= NOT \X[13]~input_o\;
\ALT_INV_X[12]~input_o\ <= NOT \X[12]~input_o\;
\ALT_INV_X[11]~input_o\ <= NOT \X[11]~input_o\;
\ALT_INV_X[10]~input_o\ <= NOT \X[10]~input_o\;
\ALT_INV_X[9]~input_o\ <= NOT \X[9]~input_o\;
\ALT_INV_X[8]~input_o\ <= NOT \X[8]~input_o\;
\ALT_INV_X[7]~input_o\ <= NOT \X[7]~input_o\;
\ALT_INV_X[6]~input_o\ <= NOT \X[6]~input_o\;
\ALT_INV_X[5]~input_o\ <= NOT \X[5]~input_o\;
\ALT_INV_X[4]~input_o\ <= NOT \X[4]~input_o\;
\ALT_INV_X[3]~input_o\ <= NOT \X[3]~input_o\;
\ALT_INV_X[2]~input_o\ <= NOT \X[2]~input_o\;
\ALT_INV_X[1]~input_o\ <= NOT \X[1]~input_o\;
\ALT_INV_X[0]~input_o\ <= NOT \X[0]~input_o\;
\ALT_INV_start~input_o\ <= NOT \start~input_o\;
\ALT_INV_rst~input_o\ <= NOT \rst~input_o\;
\ALT_INV_Add1~346_combout\ <= NOT \Add1~346_combout\;
\ALT_INV_Add1~337_combout\ <= NOT \Add1~337_combout\;
\ALT_INV_Add1~320_combout\ <= NOT \Add1~320_combout\;
\ALT_INV_Add1~311_combout\ <= NOT \Add1~311_combout\;
\ALT_INV_Add1~294_combout\ <= NOT \Add1~294_combout\;
\ALT_INV_Add1~285_combout\ <= NOT \Add1~285_combout\;
\ALT_INV_Add1~268_combout\ <= NOT \Add1~268_combout\;
\ALT_INV_Add1~259_combout\ <= NOT \Add1~259_combout\;
\ALT_INV_Add1~242_combout\ <= NOT \Add1~242_combout\;
\ALT_INV_Add1~233_combout\ <= NOT \Add1~233_combout\;
\ALT_INV_Add1~216_combout\ <= NOT \Add1~216_combout\;
\ALT_INV_Add1~207_combout\ <= NOT \Add1~207_combout\;
\ALT_INV_Add1~190_combout\ <= NOT \Add1~190_combout\;
\ALT_INV_Add1~181_combout\ <= NOT \Add1~181_combout\;
\ALT_INV_Add1~164_combout\ <= NOT \Add1~164_combout\;
\ALT_INV_Add1~159_combout\ <= NOT \Add1~159_combout\;
\ALT_INV_Add1~150_combout\ <= NOT \Add1~150_combout\;
\ALT_INV_Add1~149_combout\ <= NOT \Add1~149_combout\;
\ALT_INV_Add1~148_combout\ <= NOT \Add1~148_combout\;
\ALT_INV_Add1~147_combout\ <= NOT \Add1~147_combout\;
\ALT_INV_Add1~146_combout\ <= NOT \Add1~146_combout\;
\ALT_INV_Add1~145_combout\ <= NOT \Add1~145_combout\;
\ALT_INV_Add1~144_combout\ <= NOT \Add1~144_combout\;
\ALT_INV_Add1~143_combout\ <= NOT \Add1~143_combout\;
\ALT_INV_Add1~142_combout\ <= NOT \Add1~142_combout\;
\ALT_INV_Add1~141_combout\ <= NOT \Add1~141_combout\;
\ALT_INV_Add1~140_combout\ <= NOT \Add1~140_combout\;
\ALT_INV_Add1~139_combout\ <= NOT \Add1~139_combout\;
\ALT_INV_Add1~138_combout\ <= NOT \Add1~138_combout\;
\ALT_INV_a_s~0_combout\ <= NOT \a_s~0_combout\;
\ALT_INV_B[4]~2_combout\ <= NOT \B[4]~2_combout\;
\ALT_INV_A[4]~14_combout\ <= NOT \A[4]~14_combout\;
\ALT_INV_A[3]~13_combout\ <= NOT \A[3]~13_combout\;
\ALT_INV_B[2]~1_combout\ <= NOT \B[2]~1_combout\;
\ALT_INV_A[2]~12_combout\ <= NOT \A[2]~12_combout\;
\ALT_INV_A[1]~11_combout\ <= NOT \A[1]~11_combout\;
\ALT_INV_state.S_idle~q\ <= NOT \state.S_idle~q\;
\ALT_INV_B[0]~0_combout\ <= NOT \B[0]~0_combout\;
\ALT_INV_A[0]~10_combout\ <= NOT \A[0]~10_combout\;
\ALT_INV_Equal1~0_combout\ <= NOT \Equal1~0_combout\;
\ALT_INV_state.S_3~q\ <= NOT \state.S_3~q\;
\ALT_INV_state.S_2~q\ <= NOT \state.S_2~q\;
\ALT_INV_ldZ~0_combout\ <= NOT \ldZ~0_combout\;
\ALT_INV_state.S_4~q\ <= NOT \state.S_4~q\;
\ALT_INV_state.S_5~q\ <= NOT \state.S_5~q\;
\ALT_INV_state.S_1~q\ <= NOT \state.S_1~q\;
\ALT_INV_state.S_init~q\ <= NOT \state.S_init~q\;
\ALT_INV_Equal4~0_combout\ <= NOT \Equal4~0_combout\;
ALT_INV_i(0) <= NOT i(0);
ALT_INV_i(1) <= NOT i(1);
ALT_INV_i(2) <= NOT i(2);
ALT_INV_i(3) <= NOT i(3);
ALT_INV_i(4) <= NOT i(4);
\ALT_INV_state.S_6~q\ <= NOT \state.S_6~q\;
\ALT_INV_state.S_done~q\ <= NOT \state.S_done~q\;
\ALT_INV_Add1~352_sumout\ <= NOT \Add1~352_sumout\;
\reg_M|ALT_INV_R\(47) <= NOT \reg_M|R\(47);
\reg_M|ALT_INV_R\(48) <= NOT \reg_M|R\(48);
\ALT_INV_Add1~343_sumout\ <= NOT \Add1~343_sumout\;
\reg_Z|ALT_INV_R\(48) <= NOT \reg_Z|R\(48);
\ALT_INV_Add1~339_sumout\ <= NOT \Add1~339_sumout\;
\reg_M|ALT_INV_R\(46) <= NOT \reg_M|R\(46);
\reg_M|ALT_INV_R\(49) <= NOT \reg_M|R\(49);
\reg_Z|ALT_INV_R\(49) <= NOT \reg_Z|R\(49);
\ALT_INV_Add1~330_sumout\ <= NOT \Add1~330_sumout\;
\reg_Z|ALT_INV_R\(47) <= NOT \reg_Z|R\(47);
\ALT_INV_Add1~326_sumout\ <= NOT \Add1~326_sumout\;
\reg_M|ALT_INV_R\(45) <= NOT \reg_M|R\(45);
\reg_M|ALT_INV_R\(50) <= NOT \reg_M|R\(50);
\ALT_INV_Add1~317_sumout\ <= NOT \Add1~317_sumout\;
\reg_Z|ALT_INV_R\(46) <= NOT \reg_Z|R\(46);
\ALT_INV_Add1~313_sumout\ <= NOT \Add1~313_sumout\;
\reg_M|ALT_INV_R\(44) <= NOT \reg_M|R\(44);
\reg_M|ALT_INV_R\(51) <= NOT \reg_M|R\(51);
\ALT_INV_Add1~304_sumout\ <= NOT \Add1~304_sumout\;
\reg_Z|ALT_INV_R\(45) <= NOT \reg_Z|R\(45);
\ALT_INV_Add1~300_sumout\ <= NOT \Add1~300_sumout\;
\reg_M|ALT_INV_R\(43) <= NOT \reg_M|R\(43);
\reg_M|ALT_INV_R\(52) <= NOT \reg_M|R\(52);
\reg_Z|ALT_INV_R\(52) <= NOT \reg_Z|R\(52);
\ALT_INV_Add1~291_sumout\ <= NOT \Add1~291_sumout\;
\reg_Z|ALT_INV_R\(44) <= NOT \reg_Z|R\(44);
\ALT_INV_Add1~287_sumout\ <= NOT \Add1~287_sumout\;
\reg_M|ALT_INV_R\(42) <= NOT \reg_M|R\(42);
\reg_V|ALT_INV_R\(52) <= NOT \reg_V|R\(52);
\reg_M|ALT_INV_R\(53) <= NOT \reg_M|R\(53);
\reg_Z|ALT_INV_R\(53) <= NOT \reg_Z|R\(53);
\ALT_INV_Add1~278_sumout\ <= NOT \Add1~278_sumout\;
\reg_Z|ALT_INV_R\(43) <= NOT \reg_Z|R\(43);
\ALT_INV_Add1~274_sumout\ <= NOT \Add1~274_sumout\;
\reg_M|ALT_INV_R\(41) <= NOT \reg_M|R\(41);
\reg_V|ALT_INV_R\(50) <= NOT \reg_V|R\(50);
\reg_M|ALT_INV_R\(54) <= NOT \reg_M|R\(54);
\reg_V|ALT_INV_R\(54) <= NOT \reg_V|R\(54);
\reg_Z|ALT_INV_R\(54) <= NOT \reg_Z|R\(54);
\ALT_INV_Add1~265_sumout\ <= NOT \Add1~265_sumout\;
\reg_Z|ALT_INV_R\(42) <= NOT \reg_Z|R\(42);
\ALT_INV_Add1~261_sumout\ <= NOT \Add1~261_sumout\;
\reg_M|ALT_INV_R\(40) <= NOT \reg_M|R\(40);
\reg_V|ALT_INV_R\(48) <= NOT \reg_V|R\(48);
\reg_M|ALT_INV_R\(55) <= NOT \reg_M|R\(55);
\reg_Z|ALT_INV_R\(55) <= NOT \reg_Z|R\(55);
\ALT_INV_Add1~252_sumout\ <= NOT \Add1~252_sumout\;
\reg_Z|ALT_INV_R\(41) <= NOT \reg_Z|R\(41);
\ALT_INV_Add1~248_sumout\ <= NOT \Add1~248_sumout\;
\reg_M|ALT_INV_R\(39) <= NOT \reg_M|R\(39);
\reg_V|ALT_INV_R\(46) <= NOT \reg_V|R\(46);
\reg_M|ALT_INV_R\(56) <= NOT \reg_M|R\(56);
\reg_V|ALT_INV_R\(56) <= NOT \reg_V|R\(56);
\reg_Z|ALT_INV_R\(56) <= NOT \reg_Z|R\(56);
\ALT_INV_Add1~239_sumout\ <= NOT \Add1~239_sumout\;
\reg_Z|ALT_INV_R\(40) <= NOT \reg_Z|R\(40);
\ALT_INV_Add1~235_sumout\ <= NOT \Add1~235_sumout\;
\reg_M|ALT_INV_R\(38) <= NOT \reg_M|R\(38);
\reg_V|ALT_INV_R\(44) <= NOT \reg_V|R\(44);
\reg_M|ALT_INV_R\(57) <= NOT \reg_M|R\(57);
\reg_Z|ALT_INV_R\(57) <= NOT \reg_Z|R\(57);
\ALT_INV_Add1~226_sumout\ <= NOT \Add1~226_sumout\;
\reg_Z|ALT_INV_R\(39) <= NOT \reg_Z|R\(39);
\ALT_INV_Add1~222_sumout\ <= NOT \Add1~222_sumout\;
\reg_M|ALT_INV_R\(37) <= NOT \reg_M|R\(37);
\reg_V|ALT_INV_R\(42) <= NOT \reg_V|R\(42);
\reg_M|ALT_INV_R\(58) <= NOT \reg_M|R\(58);
\reg_V|ALT_INV_R\(58) <= NOT \reg_V|R\(58);
\reg_Z|ALT_INV_R\(58) <= NOT \reg_Z|R\(58);
\ALT_INV_Add1~213_sumout\ <= NOT \Add1~213_sumout\;
\reg_Z|ALT_INV_R\(38) <= NOT \reg_Z|R\(38);
\ALT_INV_Add1~209_sumout\ <= NOT \Add1~209_sumout\;
\reg_M|ALT_INV_R\(36) <= NOT \reg_M|R\(36);
\reg_V|ALT_INV_R\(40) <= NOT \reg_V|R\(40);
\reg_M|ALT_INV_R\(59) <= NOT \reg_M|R\(59);
\reg_Z|ALT_INV_R\(59) <= NOT \reg_Z|R\(59);
\ALT_INV_Add1~200_sumout\ <= NOT \Add1~200_sumout\;
\reg_Z|ALT_INV_R\(37) <= NOT \reg_Z|R\(37);
\ALT_INV_Add1~196_sumout\ <= NOT \Add1~196_sumout\;
\reg_M|ALT_INV_R\(35) <= NOT \reg_M|R\(35);
\reg_V|ALT_INV_R\(38) <= NOT \reg_V|R\(38);
\reg_M|ALT_INV_R\(60) <= NOT \reg_M|R\(60);
\reg_V|ALT_INV_R\(60) <= NOT \reg_V|R\(60);
\reg_Z|ALT_INV_R\(60) <= NOT \reg_Z|R\(60);
\ALT_INV_Add1~187_sumout\ <= NOT \Add1~187_sumout\;
\reg_Z|ALT_INV_R\(36) <= NOT \reg_Z|R\(36);
\ALT_INV_Add1~183_sumout\ <= NOT \Add1~183_sumout\;
\reg_M|ALT_INV_R\(34) <= NOT \reg_M|R\(34);
\reg_V|ALT_INV_R\(36) <= NOT \reg_V|R\(36);
\reg_M|ALT_INV_R\(61) <= NOT \reg_M|R\(61);
\reg_Z|ALT_INV_R\(61) <= NOT \reg_Z|R\(61);
\ALT_INV_Add1~174_sumout\ <= NOT \Add1~174_sumout\;
\reg_Z|ALT_INV_R\(35) <= NOT \reg_Z|R\(35);
\ALT_INV_Add1~170_sumout\ <= NOT \Add1~170_sumout\;
\reg_M|ALT_INV_R\(33) <= NOT \reg_M|R\(33);
\reg_V|ALT_INV_R\(34) <= NOT \reg_V|R\(34);
\reg_M|ALT_INV_R\(62) <= NOT \reg_M|R\(62);
\reg_V|ALT_INV_R\(62) <= NOT \reg_V|R\(62);
\reg_Z|ALT_INV_R\(62) <= NOT \reg_Z|R\(62);
\ALT_INV_Add0~1_sumout\ <= NOT \Add0~1_sumout\;
\reg_Z|ALT_INV_R\(34) <= NOT \reg_Z|R\(34);
\ALT_INV_Add1~161_sumout\ <= NOT \Add1~161_sumout\;
\reg_M|ALT_INV_R\(32) <= NOT \reg_M|R\(32);
\reg_V|ALT_INV_R\(32) <= NOT \reg_V|R\(32);
\reg_M|ALT_INV_R\(63) <= NOT \reg_M|R\(63);
\reg_Z|ALT_INV_R\(63) <= NOT \reg_Z|R\(63);
\reg_Z|ALT_INV_R\(33) <= NOT \reg_Z|R\(33);
\ALT_INV_Add1~152_sumout\ <= NOT \Add1~152_sumout\;
\reg_M|ALT_INV_R\(31) <= NOT \reg_M|R\(31);
\reg_M|ALT_INV_R\(30) <= NOT \reg_M|R\(30);
\reg_V|ALT_INV_R\(30) <= NOT \reg_V|R\(30);
\reg_M|ALT_INV_R\(29) <= NOT \reg_M|R\(29);
\reg_M|ALT_INV_R\(28) <= NOT \reg_M|R\(28);
\reg_V|ALT_INV_R\(28) <= NOT \reg_V|R\(28);
\reg_M|ALT_INV_R\(27) <= NOT \reg_M|R\(27);
\reg_M|ALT_INV_R\(26) <= NOT \reg_M|R\(26);
\reg_V|ALT_INV_R\(26) <= NOT \reg_V|R\(26);
\reg_M|ALT_INV_R\(25) <= NOT \reg_M|R\(25);
\reg_M|ALT_INV_R\(24) <= NOT \reg_M|R\(24);
\reg_V|ALT_INV_R\(24) <= NOT \reg_V|R\(24);
\reg_M|ALT_INV_R\(23) <= NOT \reg_M|R\(23);
\reg_M|ALT_INV_R\(22) <= NOT \reg_M|R\(22);
\reg_M|ALT_INV_R\(21) <= NOT \reg_M|R\(21);
\reg_M|ALT_INV_R\(20) <= NOT \reg_M|R\(20);
\reg_V|ALT_INV_R\(20) <= NOT \reg_V|R\(20);
\reg_M|ALT_INV_R\(19) <= NOT \reg_M|R\(19);
\reg_M|ALT_INV_R\(18) <= NOT \reg_M|R\(18);
\reg_V|ALT_INV_R\(18) <= NOT \reg_V|R\(18);
\reg_M|ALT_INV_R\(17) <= NOT \reg_M|R\(17);
\reg_M|ALT_INV_R\(16) <= NOT \reg_M|R\(16);
\reg_V|ALT_INV_R\(16) <= NOT \reg_V|R\(16);
\reg_M|ALT_INV_R\(15) <= NOT \reg_M|R\(15);
\reg_M|ALT_INV_R\(14) <= NOT \reg_M|R\(14);
\reg_V|ALT_INV_R\(14) <= NOT \reg_V|R\(14);
\reg_M|ALT_INV_R\(13) <= NOT \reg_M|R\(13);
\reg_M|ALT_INV_R\(12) <= NOT \reg_M|R\(12);
\reg_V|ALT_INV_R\(12) <= NOT \reg_V|R\(12);
\reg_M|ALT_INV_R\(11) <= NOT \reg_M|R\(11);
\reg_M|ALT_INV_R\(10) <= NOT \reg_M|R\(10);
\reg_V|ALT_INV_R\(10) <= NOT \reg_V|R\(10);
\reg_M|ALT_INV_R\(9) <= NOT \reg_M|R\(9);
\reg_M|ALT_INV_R\(8) <= NOT \reg_M|R\(8);
\reg_V|ALT_INV_R\(8) <= NOT \reg_V|R\(8);
\reg_M|ALT_INV_R\(7) <= NOT \reg_M|R\(7);
\reg_M|ALT_INV_R\(6) <= NOT \reg_M|R\(6);
\reg_V|ALT_INV_R\(6) <= NOT \reg_V|R\(6);
\reg_M|ALT_INV_R\(5) <= NOT \reg_M|R\(5);
\reg_V|ALT_INV_R\(4) <= NOT \reg_V|R\(4);
\reg_M|ALT_INV_R\(4) <= NOT \reg_M|R\(4);
\reg_M|ALT_INV_R\(3) <= NOT \reg_M|R\(3);
\reg_V|ALT_INV_R\(2) <= NOT \reg_V|R\(2);
\reg_M|ALT_INV_R\(2) <= NOT \reg_M|R\(2);
\reg_M|ALT_INV_R\(1) <= NOT \reg_M|R\(1);
\ALT_INV_Add1~135_sumout\ <= NOT \Add1~135_sumout\;
\reg_V|ALT_INV_R\(0) <= NOT \reg_V|R\(0);
\reg_M|ALT_INV_R\(0) <= NOT \reg_M|R\(0);
\reg_Z|ALT_INV_R\(32) <= NOT \reg_Z|R\(32);
\ALT_INV_Add1~127_sumout\ <= NOT \Add1~127_sumout\;
\ALT_INV_Add1~123_sumout\ <= NOT \Add1~123_sumout\;
\ALT_INV_Add1~119_sumout\ <= NOT \Add1~119_sumout\;
\ALT_INV_Add1~115_sumout\ <= NOT \Add1~115_sumout\;
\ALT_INV_Add1~111_sumout\ <= NOT \Add1~111_sumout\;
\ALT_INV_Add1~107_sumout\ <= NOT \Add1~107_sumout\;
\ALT_INV_Add1~103_sumout\ <= NOT \Add1~103_sumout\;
\ALT_INV_Add1~99_sumout\ <= NOT \Add1~99_sumout\;
\ALT_INV_Add1~95_sumout\ <= NOT \Add1~95_sumout\;
\ALT_INV_Add1~91_sumout\ <= NOT \Add1~91_sumout\;
\ALT_INV_Add1~87_sumout\ <= NOT \Add1~87_sumout\;
\ALT_INV_Add1~83_sumout\ <= NOT \Add1~83_sumout\;
\ALT_INV_Add1~79_sumout\ <= NOT \Add1~79_sumout\;
\ALT_INV_Add1~75_sumout\ <= NOT \Add1~75_sumout\;
\ALT_INV_Add1~71_sumout\ <= NOT \Add1~71_sumout\;
\ALT_INV_Add1~67_sumout\ <= NOT \Add1~67_sumout\;
\ALT_INV_Add1~63_sumout\ <= NOT \Add1~63_sumout\;
\ALT_INV_Add1~59_sumout\ <= NOT \Add1~59_sumout\;
\ALT_INV_Add1~55_sumout\ <= NOT \Add1~55_sumout\;
\ALT_INV_Add1~51_sumout\ <= NOT \Add1~51_sumout\;
\ALT_INV_Add1~47_sumout\ <= NOT \Add1~47_sumout\;
\ALT_INV_Add1~43_sumout\ <= NOT \Add1~43_sumout\;
\ALT_INV_Add1~39_sumout\ <= NOT \Add1~39_sumout\;
\ALT_INV_Add1~35_sumout\ <= NOT \Add1~35_sumout\;
\ALT_INV_Add1~31_sumout\ <= NOT \Add1~31_sumout\;
\ALT_INV_Add1~27_sumout\ <= NOT \Add1~27_sumout\;
\ALT_INV_Add1~23_sumout\ <= NOT \Add1~23_sumout\;
\ALT_INV_Add1~19_sumout\ <= NOT \Add1~19_sumout\;
\ALT_INV_Add1~15_sumout\ <= NOT \Add1~15_sumout\;
\ALT_INV_Add1~11_sumout\ <= NOT \Add1~11_sumout\;
\ALT_INV_Add1~7_sumout\ <= NOT \Add1~7_sumout\;
\ALT_INV_Add1~3_sumout\ <= NOT \Add1~3_sumout\;
\reg_Z|ALT_INV_R\(31) <= NOT \reg_Z|R\(31);
\reg_Z|ALT_INV_R\(30) <= NOT \reg_Z|R\(30);
\reg_Z|ALT_INV_R\(29) <= NOT \reg_Z|R\(29);
\reg_Z|ALT_INV_R\(28) <= NOT \reg_Z|R\(28);
\reg_Z|ALT_INV_R\(27) <= NOT \reg_Z|R\(27);
\reg_Z|ALT_INV_R\(26) <= NOT \reg_Z|R\(26);
\reg_Z|ALT_INV_R\(25) <= NOT \reg_Z|R\(25);
\reg_Z|ALT_INV_R\(24) <= NOT \reg_Z|R\(24);
\reg_Z|ALT_INV_R\(23) <= NOT \reg_Z|R\(23);
\reg_Z|ALT_INV_R\(22) <= NOT \reg_Z|R\(22);
\reg_Z|ALT_INV_R\(21) <= NOT \reg_Z|R\(21);
\reg_Z|ALT_INV_R\(20) <= NOT \reg_Z|R\(20);
\reg_Z|ALT_INV_R\(19) <= NOT \reg_Z|R\(19);
\reg_Z|ALT_INV_R\(18) <= NOT \reg_Z|R\(18);
\reg_Z|ALT_INV_R\(17) <= NOT \reg_Z|R\(17);
\reg_Z|ALT_INV_R\(16) <= NOT \reg_Z|R\(16);
\reg_Z|ALT_INV_R\(15) <= NOT \reg_Z|R\(15);
\reg_Z|ALT_INV_R\(14) <= NOT \reg_Z|R\(14);
\reg_Z|ALT_INV_R\(13) <= NOT \reg_Z|R\(13);
\reg_Z|ALT_INV_R\(12) <= NOT \reg_Z|R\(12);
\reg_Z|ALT_INV_R\(11) <= NOT \reg_Z|R\(11);
\reg_Z|ALT_INV_R\(10) <= NOT \reg_Z|R\(10);
\reg_Z|ALT_INV_R\(9) <= NOT \reg_Z|R\(9);
\reg_Z|ALT_INV_R\(8) <= NOT \reg_Z|R\(8);
\reg_Z|ALT_INV_R\(7) <= NOT \reg_Z|R\(7);
\reg_Z|ALT_INV_R\(6) <= NOT \reg_Z|R\(6);
\reg_Z|ALT_INV_R\(5) <= NOT \reg_Z|R\(5);
\reg_Z|ALT_INV_R\(4) <= NOT \reg_Z|R\(4);
\reg_Z|ALT_INV_R\(3) <= NOT \reg_Z|R\(3);
\reg_Z|ALT_INV_R\(2) <= NOT \reg_Z|R\(2);
\reg_Z|ALT_INV_R\(1) <= NOT \reg_Z|R\(1);
\reg_Z|ALT_INV_R\(0) <= NOT \reg_Z|R\(0);

-- Location: IOOBUF_X38_Y0_N36
\Result[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Result[0]~reg0_q\,
	devoe => ww_devoe,
	o => ww_Result(0));

-- Location: IOOBUF_X62_Y0_N53
\Result[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Result[1]~reg0_q\,
	devoe => ww_devoe,
	o => ww_Result(1));

-- Location: IOOBUF_X6_Y0_N2
\Result[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Result[2]~reg0_q\,
	devoe => ww_devoe,
	o => ww_Result(2));

-- Location: IOOBUF_X64_Y0_N53
\Result[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Result[3]~reg0_q\,
	devoe => ww_devoe,
	o => ww_Result(3));

-- Location: IOOBUF_X68_Y0_N19
\Result[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Result[4]~reg0_q\,
	devoe => ww_devoe,
	o => ww_Result(4));

-- Location: IOOBUF_X4_Y0_N53
\Result[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Result[5]~reg0_q\,
	devoe => ww_devoe,
	o => ww_Result(5));

-- Location: IOOBUF_X2_Y0_N59
\Result[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Result[6]~reg0_q\,
	devoe => ww_devoe,
	o => ww_Result(6));

-- Location: IOOBUF_X54_Y0_N2
\Result[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Result[7]~reg0_q\,
	devoe => ww_devoe,
	o => ww_Result(7));

-- Location: IOOBUF_X72_Y0_N53
\Result[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Result[8]~reg0_q\,
	devoe => ww_devoe,
	o => ww_Result(8));

-- Location: IOOBUF_X50_Y0_N76
\Result[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Result[9]~reg0_q\,
	devoe => ww_devoe,
	o => ww_Result(9));

-- Location: IOOBUF_X56_Y0_N2
\Result[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Result[10]~reg0_q\,
	devoe => ww_devoe,
	o => ww_Result(10));

-- Location: IOOBUF_X64_Y0_N36
\Result[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Result[11]~reg0_q\,
	devoe => ww_devoe,
	o => ww_Result(11));

-- Location: IOOBUF_X38_Y0_N2
\Result[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Result[12]~reg0_q\,
	devoe => ww_devoe,
	o => ww_Result(12));

-- Location: IOOBUF_X38_Y0_N19
\Result[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Result[13]~reg0_q\,
	devoe => ww_devoe,
	o => ww_Result(13));

-- Location: IOOBUF_X36_Y0_N2
\Result[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Result[14]~reg0_q\,
	devoe => ww_devoe,
	o => ww_Result(14));

-- Location: IOOBUF_X34_Y0_N42
\Result[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Result[15]~reg0_q\,
	devoe => ww_devoe,
	o => ww_Result(15));

-- Location: IOOBUF_X50_Y0_N59
\Result[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Result[16]~reg0_q\,
	devoe => ww_devoe,
	o => ww_Result(16));

-- Location: IOOBUF_X58_Y0_N59
\Result[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Result[17]~reg0_q\,
	devoe => ww_devoe,
	o => ww_Result(17));

-- Location: IOOBUF_X38_Y0_N53
\Result[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Result[18]~reg0_q\,
	devoe => ww_devoe,
	o => ww_Result(18));

-- Location: IOOBUF_X32_Y0_N53
\Result[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Result[19]~reg0_q\,
	devoe => ww_devoe,
	o => ww_Result(19));

-- Location: IOOBUF_X58_Y0_N93
\Result[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Result[20]~reg0_q\,
	devoe => ww_devoe,
	o => ww_Result(20));

-- Location: IOOBUF_X50_Y0_N93
\Result[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Result[21]~reg0_q\,
	devoe => ww_devoe,
	o => ww_Result(21));

-- Location: IOOBUF_X64_Y0_N19
\Result[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Result[22]~reg0_q\,
	devoe => ww_devoe,
	o => ww_Result(22));

-- Location: IOOBUF_X32_Y0_N19
\Result[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Result[23]~reg0_q\,
	devoe => ww_devoe,
	o => ww_Result(23));

-- Location: IOOBUF_X62_Y0_N19
\Result[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Result[24]~reg0_q\,
	devoe => ww_devoe,
	o => ww_Result(24));

-- Location: IOOBUF_X66_Y0_N42
\Result[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Result[25]~reg0_q\,
	devoe => ww_devoe,
	o => ww_Result(25));

-- Location: IOOBUF_X68_Y0_N36
\Result[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Result[26]~reg0_q\,
	devoe => ww_devoe,
	o => ww_Result(26));

-- Location: IOOBUF_X8_Y0_N19
\Result[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Result[27]~reg0_q\,
	devoe => ww_devoe,
	o => ww_Result(27));

-- Location: IOOBUF_X68_Y0_N2
\Result[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Result[28]~reg0_q\,
	devoe => ww_devoe,
	o => ww_Result(28));

-- Location: IOOBUF_X32_Y0_N36
\Result[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Result[29]~reg0_q\,
	devoe => ww_devoe,
	o => ww_Result(29));

-- Location: IOOBUF_X50_Y0_N42
\Result[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Result[30]~reg0_q\,
	devoe => ww_devoe,
	o => ww_Result(30));

-- Location: IOOBUF_X58_Y0_N42
\Result[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Result[31]~reg0_q\,
	devoe => ww_devoe,
	o => ww_Result(31));

-- Location: IOOBUF_X89_Y8_N5
\finished~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \state.S_done~q\,
	devoe => ww_devoe,
	o => ww_finished);

-- Location: IOIBUF_X89_Y35_N61
\clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G10
\clk~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \clk~input_o\,
	outclk => \clk~inputCLKENA0_outclk\);

-- Location: IOIBUF_X4_Y0_N35
\start~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_start,
	o => \start~input_o\);

-- Location: IOIBUF_X6_Y0_N35
\rst~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

-- Location: FF_X23_Y13_N4
\state.S_4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector5~0_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.S_4~q\);

-- Location: LABCELL_X23_Y13_N15
\ldZ~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ldZ~0_combout\ = ( !\state.S_1~q\ & ( (!\state.S_4~q\ & !\state.S_5~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_state.S_4~q\,
	datad => \ALT_INV_state.S_5~q\,
	dataf => \ALT_INV_state.S_1~q\,
	combout => \ldZ~0_combout\);

-- Location: LABCELL_X23_Y13_N18
\Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = ( \state.S_3~q\ ) # ( !\state.S_3~q\ & ( \state.S_2~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_state.S_2~q\,
	dataf => \ALT_INV_state.S_3~q\,
	combout => \Equal1~0_combout\);

-- Location: LABCELL_X23_Y13_N0
\a_s~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \a_s~0_combout\ = ( !\state.S_1~q\ & ( !\state.S_5~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_state.S_5~q\,
	dataf => \ALT_INV_state.S_1~q\,
	combout => \a_s~0_combout\);

-- Location: IOIBUF_X26_Y0_N75
\X[63]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(63),
	o => \X[63]~input_o\);

-- Location: LABCELL_X22_Y8_N39
\reg_M|R[63]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_M|R[63]~feeder_combout\ = ( \X[63]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_X[63]~input_o\,
	combout => \reg_M|R[63]~feeder_combout\);

-- Location: LABCELL_X22_Y13_N27
\reg_M|R[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_M|R[0]~0_combout\ = ( \state.S_3~q\ & ( \state.S_init~q\ ) ) # ( !\state.S_3~q\ & ( \state.S_init~q\ ) ) # ( \state.S_3~q\ & ( !\state.S_init~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_state.S_3~q\,
	dataf => \ALT_INV_state.S_init~q\,
	combout => \reg_M|R[0]~0_combout\);

-- Location: FF_X22_Y8_N41
\reg_M|R[63]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg_M|R[63]~feeder_combout\,
	asdata => \Add0~1_sumout\,
	sload => \ALT_INV_state.S_init~q\,
	ena => \reg_M|R[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_M|R\(63));

-- Location: LABCELL_X22_Y11_N24
\reg_V|R~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_V|R~1_combout\ = ( \reg_V|R\(62) & ( !\state.S_6~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \reg_V|ALT_INV_R\(62),
	dataf => \ALT_INV_state.S_6~q\,
	combout => \reg_V|R~1_combout\);

-- Location: FF_X22_Y11_N25
\reg_V|R[62]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg_V|R~1_combout\,
	asdata => VCC,
	sload => \state.S_init~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_V|R\(62));

-- Location: LABCELL_X27_Y8_N24
\Add1~164\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~164_combout\ = ( \reg_V|R\(62) & ( \a_s~0_combout\ & ( (!\Equal1~0_combout\ & ((!\ldZ~0_combout\))) # (\Equal1~0_combout\ & (\reg_Z|R\(62))) ) ) ) # ( !\reg_V|R\(62) & ( \a_s~0_combout\ & ( (\reg_Z|R\(62) & \Equal1~0_combout\) ) ) ) # ( 
-- \reg_V|R\(62) & ( !\a_s~0_combout\ & ( (!\Equal1~0_combout\ & ((\ldZ~0_combout\))) # (\Equal1~0_combout\ & (!\reg_Z|R\(62))) ) ) ) # ( !\reg_V|R\(62) & ( !\a_s~0_combout\ & ( (!\reg_Z|R\(62)) # (!\Equal1~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101011111010001110100011101000000101000001011100010111000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg_Z|ALT_INV_R\(62),
	datab => \ALT_INV_ldZ~0_combout\,
	datac => \ALT_INV_Equal1~0_combout\,
	datae => \reg_V|ALT_INV_R\(62),
	dataf => \ALT_INV_a_s~0_combout\,
	combout => \Add1~164_combout\);

-- Location: IOIBUF_X2_Y0_N92
\X[62]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(62),
	o => \X[62]~input_o\);

-- Location: LABCELL_X22_Y8_N54
\reg_M|R[62]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_M|R[62]~feeder_combout\ = \X[62]~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_X[62]~input_o\,
	combout => \reg_M|R[62]~feeder_combout\);

-- Location: FF_X22_Y8_N56
\reg_M|R[62]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg_M|R[62]~feeder_combout\,
	asdata => \Add1~174_sumout\,
	sload => \ALT_INV_state.S_init~q\,
	ena => \reg_M|R[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_M|R\(62));

-- Location: IOIBUF_X40_Y0_N52
\X[61]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(61),
	o => \X[61]~input_o\);

-- Location: LABCELL_X24_Y12_N3
\reg_M|R[61]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_M|R[61]~feeder_combout\ = \X[61]~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_X[61]~input_o\,
	combout => \reg_M|R[61]~feeder_combout\);

-- Location: FF_X24_Y12_N5
\reg_M|R[61]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg_M|R[61]~feeder_combout\,
	asdata => \Add1~187_sumout\,
	sload => \ALT_INV_state.S_init~q\,
	ena => \reg_M|R[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_M|R\(61));

-- Location: LABCELL_X23_Y10_N24
\reg_V|R[60]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_V|R[60]~0_combout\ = ( \state.S_init~q\ ) # ( !\state.S_init~q\ & ( \state.S_6~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_state.S_6~q\,
	dataf => \ALT_INV_state.S_init~q\,
	combout => \reg_V|R[60]~0_combout\);

-- Location: FF_X27_Y8_N5
\reg_V|R[60]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \reg_V|R\(62),
	sclr => \state.S_init~q\,
	sload => VCC,
	ena => \reg_V|R[60]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_V|R\(60));

-- Location: LABCELL_X27_Y8_N3
\Add1~190\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~190_combout\ = ( \reg_V|R\(60) & ( \a_s~0_combout\ & ( (!\Equal1~0_combout\ & ((!\ldZ~0_combout\))) # (\Equal1~0_combout\ & (\reg_Z|R\(60))) ) ) ) # ( !\reg_V|R\(60) & ( \a_s~0_combout\ & ( (\reg_Z|R\(60) & \Equal1~0_combout\) ) ) ) # ( 
-- \reg_V|R\(60) & ( !\a_s~0_combout\ & ( (!\Equal1~0_combout\ & ((\ldZ~0_combout\))) # (\Equal1~0_combout\ & (!\reg_Z|R\(60))) ) ) ) # ( !\reg_V|R\(60) & ( !\a_s~0_combout\ & ( (!\reg_Z|R\(60)) # (!\Equal1~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101011111010000010101111101000000101000001011111010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg_Z|ALT_INV_R\(60),
	datac => \ALT_INV_Equal1~0_combout\,
	datad => \ALT_INV_ldZ~0_combout\,
	datae => \reg_V|ALT_INV_R\(60),
	dataf => \ALT_INV_a_s~0_combout\,
	combout => \Add1~190_combout\);

-- Location: IOIBUF_X32_Y0_N1
\X[60]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(60),
	o => \X[60]~input_o\);

-- Location: LABCELL_X22_Y8_N12
\reg_M|R[60]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_M|R[60]~feeder_combout\ = ( \X[60]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_X[60]~input_o\,
	combout => \reg_M|R[60]~feeder_combout\);

-- Location: FF_X22_Y8_N14
\reg_M|R[60]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg_M|R[60]~feeder_combout\,
	asdata => \Add1~200_sumout\,
	sload => \ALT_INV_state.S_init~q\,
	ena => \reg_M|R[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_M|R\(60));

-- Location: IOIBUF_X4_Y0_N18
\X[59]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(59),
	o => \X[59]~input_o\);

-- Location: LABCELL_X22_Y8_N30
\reg_M|R[59]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_M|R[59]~feeder_combout\ = \X[59]~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_X[59]~input_o\,
	combout => \reg_M|R[59]~feeder_combout\);

-- Location: FF_X22_Y8_N32
\reg_M|R[59]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg_M|R[59]~feeder_combout\,
	asdata => \Add1~213_sumout\,
	sload => \ALT_INV_state.S_init~q\,
	ena => \reg_M|R[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_M|R\(59));

-- Location: FF_X27_Y8_N47
\reg_V|R[58]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \reg_V|R\(60),
	sclr => \state.S_init~q\,
	sload => VCC,
	ena => \reg_V|R[60]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_V|R\(58));

-- Location: LABCELL_X27_Y8_N45
\Add1~216\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~216_combout\ = ( \Equal1~0_combout\ & ( !\a_s~0_combout\ $ (\reg_Z|R\(58)) ) ) # ( !\Equal1~0_combout\ & ( !\a_s~0_combout\ $ (((!\ldZ~0_combout\ & \reg_V|R\(58)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110001100110110011000110011011000011110000111100001111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ldZ~0_combout\,
	datab => \ALT_INV_a_s~0_combout\,
	datac => \reg_Z|ALT_INV_R\(58),
	datad => \reg_V|ALT_INV_R\(58),
	dataf => \ALT_INV_Equal1~0_combout\,
	combout => \Add1~216_combout\);

-- Location: IOIBUF_X26_Y0_N92
\X[58]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(58),
	o => \X[58]~input_o\);

-- Location: LABCELL_X22_Y8_N33
\reg_M|R[58]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_M|R[58]~feeder_combout\ = \X[58]~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_X[58]~input_o\,
	combout => \reg_M|R[58]~feeder_combout\);

-- Location: FF_X22_Y8_N35
\reg_M|R[58]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg_M|R[58]~feeder_combout\,
	asdata => \Add1~226_sumout\,
	sload => \ALT_INV_state.S_init~q\,
	ena => \reg_M|R[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_M|R\(58));

-- Location: IOIBUF_X4_Y0_N1
\X[57]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(57),
	o => \X[57]~input_o\);

-- Location: LABCELL_X22_Y8_N24
\reg_M|R[57]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_M|R[57]~feeder_combout\ = ( \X[57]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_X[57]~input_o\,
	combout => \reg_M|R[57]~feeder_combout\);

-- Location: FF_X22_Y8_N26
\reg_M|R[57]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg_M|R[57]~feeder_combout\,
	asdata => \Add1~239_sumout\,
	sload => \ALT_INV_state.S_init~q\,
	ena => \reg_M|R[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_M|R\(57));

-- Location: FF_X27_Y8_N44
\reg_V|R[56]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \reg_V|R\(58),
	sclr => \state.S_init~q\,
	sload => VCC,
	ena => \reg_V|R[60]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_V|R\(56));

-- Location: LABCELL_X27_Y8_N42
\Add1~242\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~242_combout\ = ( \reg_Z|R\(56) & ( !\a_s~0_combout\ $ ((((!\ldZ~0_combout\ & \reg_V|R\(56))) # (\Equal1~0_combout\))) ) ) # ( !\reg_Z|R\(56) & ( !\a_s~0_combout\ $ (((!\ldZ~0_combout\ & (!\Equal1~0_combout\ & \reg_V|R\(56))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110001101100110011000110110011000011011000111100001101100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ldZ~0_combout\,
	datab => \ALT_INV_a_s~0_combout\,
	datac => \ALT_INV_Equal1~0_combout\,
	datad => \reg_V|ALT_INV_R\(56),
	dataf => \reg_Z|ALT_INV_R\(56),
	combout => \Add1~242_combout\);

-- Location: IOIBUF_X26_Y0_N58
\X[56]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(56),
	o => \X[56]~input_o\);

-- Location: LABCELL_X22_Y8_N42
\reg_M|R[56]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_M|R[56]~feeder_combout\ = ( \X[56]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_X[56]~input_o\,
	combout => \reg_M|R[56]~feeder_combout\);

-- Location: FF_X22_Y8_N44
\reg_M|R[56]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg_M|R[56]~feeder_combout\,
	asdata => \Add1~252_sumout\,
	sload => \ALT_INV_state.S_init~q\,
	ena => \reg_M|R[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_M|R\(56));

-- Location: IOIBUF_X6_Y0_N18
\X[55]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(55),
	o => \X[55]~input_o\);

-- Location: LABCELL_X22_Y8_N0
\reg_M|R[55]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_M|R[55]~feeder_combout\ = ( \X[55]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_X[55]~input_o\,
	combout => \reg_M|R[55]~feeder_combout\);

-- Location: FF_X22_Y8_N2
\reg_M|R[55]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg_M|R[55]~feeder_combout\,
	asdata => \Add1~265_sumout\,
	sload => \ALT_INV_state.S_init~q\,
	ena => \reg_M|R[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_M|R\(55));

-- Location: FF_X27_Y8_N41
\reg_V|R[54]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \reg_V|R\(56),
	sclr => \state.S_init~q\,
	sload => VCC,
	ena => \reg_V|R[60]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_V|R\(54));

-- Location: LABCELL_X27_Y8_N39
\Add1~268\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~268_combout\ = ( \reg_V|R\(54) & ( \a_s~0_combout\ & ( (!\Equal1~0_combout\ & ((!\ldZ~0_combout\))) # (\Equal1~0_combout\ & (\reg_Z|R\(54))) ) ) ) # ( !\reg_V|R\(54) & ( \a_s~0_combout\ & ( (\Equal1~0_combout\ & \reg_Z|R\(54)) ) ) ) # ( 
-- \reg_V|R\(54) & ( !\a_s~0_combout\ & ( (!\Equal1~0_combout\ & ((\ldZ~0_combout\))) # (\Equal1~0_combout\ & (!\reg_Z|R\(54))) ) ) ) # ( !\reg_V|R\(54) & ( !\a_s~0_combout\ & ( (!\Equal1~0_combout\) # (!\reg_Z|R\(54)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110011111100001100001111110000000011000000111100111100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Equal1~0_combout\,
	datac => \reg_Z|ALT_INV_R\(54),
	datad => \ALT_INV_ldZ~0_combout\,
	datae => \reg_V|ALT_INV_R\(54),
	dataf => \ALT_INV_a_s~0_combout\,
	combout => \Add1~268_combout\);

-- Location: IOIBUF_X2_Y0_N41
\X[54]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(54),
	o => \X[54]~input_o\);

-- Location: LABCELL_X22_Y8_N18
\reg_M|R[54]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_M|R[54]~feeder_combout\ = ( \X[54]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_X[54]~input_o\,
	combout => \reg_M|R[54]~feeder_combout\);

-- Location: FF_X22_Y8_N20
\reg_M|R[54]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg_M|R[54]~feeder_combout\,
	asdata => \Add1~278_sumout\,
	sload => \ALT_INV_state.S_init~q\,
	ena => \reg_M|R[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_M|R\(54));

-- Location: IOIBUF_X28_Y0_N52
\X[53]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(53),
	o => \X[53]~input_o\);

-- Location: LABCELL_X22_Y8_N45
\reg_M|R[53]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_M|R[53]~feeder_combout\ = \X[53]~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_X[53]~input_o\,
	combout => \reg_M|R[53]~feeder_combout\);

-- Location: FF_X22_Y8_N47
\reg_M|R[53]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg_M|R[53]~feeder_combout\,
	asdata => \Add1~291_sumout\,
	sload => \ALT_INV_state.S_init~q\,
	ena => \reg_M|R[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_M|R\(53));

-- Location: IOIBUF_X8_Y0_N1
\X[52]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(52),
	o => \X[52]~input_o\);

-- Location: LABCELL_X22_Y8_N57
\reg_M|R[52]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_M|R[52]~feeder_combout\ = \X[52]~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_X[52]~input_o\,
	combout => \reg_M|R[52]~feeder_combout\);

-- Location: FF_X22_Y8_N59
\reg_M|R[52]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg_M|R[52]~feeder_combout\,
	asdata => \Add1~304_sumout\,
	sload => \ALT_INV_state.S_init~q\,
	ena => \reg_M|R[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_M|R\(52));

-- Location: FF_X27_Y8_N32
\reg_V|R[52]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \reg_V|R\(54),
	sclr => \state.S_init~q\,
	sload => VCC,
	ena => \reg_V|R[60]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_V|R\(52));

-- Location: LABCELL_X27_Y8_N30
\Add1~294\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~294_combout\ = ( \reg_V|R\(52) & ( \a_s~0_combout\ & ( (!\Equal1~0_combout\ & ((!\ldZ~0_combout\))) # (\Equal1~0_combout\ & (\reg_Z|R\(52))) ) ) ) # ( !\reg_V|R\(52) & ( \a_s~0_combout\ & ( (\reg_Z|R\(52) & \Equal1~0_combout\) ) ) ) # ( 
-- \reg_V|R\(52) & ( !\a_s~0_combout\ & ( (!\Equal1~0_combout\ & ((\ldZ~0_combout\))) # (\Equal1~0_combout\ & (!\reg_Z|R\(52))) ) ) ) # ( !\reg_V|R\(52) & ( !\a_s~0_combout\ & ( (!\reg_Z|R\(52)) # (!\Equal1~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111011101110001011100010111000010001000100011101000111010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg_Z|ALT_INV_R\(52),
	datab => \ALT_INV_Equal1~0_combout\,
	datac => \ALT_INV_ldZ~0_combout\,
	datae => \reg_V|ALT_INV_R\(52),
	dataf => \ALT_INV_a_s~0_combout\,
	combout => \Add1~294_combout\);

-- Location: IOIBUF_X6_Y0_N52
\X[51]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(51),
	o => \X[51]~input_o\);

-- Location: LABCELL_X22_Y8_N51
\reg_M|R[51]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_M|R[51]~feeder_combout\ = \X[51]~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_X[51]~input_o\,
	combout => \reg_M|R[51]~feeder_combout\);

-- Location: FF_X22_Y8_N53
\reg_M|R[51]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg_M|R[51]~feeder_combout\,
	asdata => \Add1~317_sumout\,
	sload => \ALT_INV_state.S_init~q\,
	ena => \reg_M|R[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_M|R\(51));

-- Location: FF_X25_Y9_N47
\reg_V|R[50]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \reg_V|R\(52),
	sclr => \state.S_init~q\,
	sload => VCC,
	ena => \reg_V|R[60]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_V|R\(50));

-- Location: MLABCELL_X25_Y9_N45
\Add1~320\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~320_combout\ = ( \reg_Z|R[50]~DUPLICATE_q\ & ( !\a_s~0_combout\ $ ((((!\ldZ~0_combout\ & \reg_V|R\(50))) # (\Equal1~0_combout\))) ) ) # ( !\reg_Z|R[50]~DUPLICATE_q\ & ( !\a_s~0_combout\ $ (((!\Equal1~0_combout\ & (!\ldZ~0_combout\ & 
-- \reg_V|R\(50))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000001111000111100000111100010100101001011011010010100101101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~0_combout\,
	datab => \ALT_INV_ldZ~0_combout\,
	datac => \ALT_INV_a_s~0_combout\,
	datad => \reg_V|ALT_INV_R\(50),
	dataf => \reg_Z|ALT_INV_R[50]~DUPLICATE_q\,
	combout => \Add1~320_combout\);

-- Location: IOIBUF_X8_Y0_N35
\X[50]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(50),
	o => \X[50]~input_o\);

-- Location: LABCELL_X22_Y8_N27
\reg_M|R[50]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_M|R[50]~feeder_combout\ = \X[50]~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_X[50]~input_o\,
	combout => \reg_M|R[50]~feeder_combout\);

-- Location: FF_X22_Y8_N29
\reg_M|R[50]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg_M|R[50]~feeder_combout\,
	asdata => \Add1~330_sumout\,
	sload => \ALT_INV_state.S_init~q\,
	ena => \reg_M|R[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_M|R\(50));

-- Location: IOIBUF_X8_Y0_N52
\X[49]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(49),
	o => \X[49]~input_o\);

-- Location: LABCELL_X22_Y8_N6
\reg_M|R[49]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_M|R[49]~feeder_combout\ = \X[49]~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_X[49]~input_o\,
	combout => \reg_M|R[49]~feeder_combout\);

-- Location: FF_X22_Y8_N8
\reg_M|R[49]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg_M|R[49]~feeder_combout\,
	asdata => \Add1~343_sumout\,
	sload => \ALT_INV_state.S_init~q\,
	ena => \reg_M|R[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_M|R\(49));

-- Location: FF_X25_Y9_N44
\reg_V|R[48]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \reg_V|R\(50),
	sclr => \state.S_init~q\,
	sload => VCC,
	ena => \reg_V|R[60]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_V|R\(48));

-- Location: LABCELL_X22_Y11_N33
\reg_Z|R[52]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_Z|R[52]~0_combout\ = ( \state.S_init~q\ ) # ( !\state.S_init~q\ & ( (!\ldZ~0_combout\) # (\state.S_6~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010111110101111101011111010111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ldZ~0_combout\,
	datac => \ALT_INV_state.S_6~q\,
	dataf => \ALT_INV_state.S_init~q\,
	combout => \reg_Z|R[52]~0_combout\);

-- Location: FF_X23_Y9_N2
\reg_Z|R[48]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg_Z|R[48]~feeder_combout\,
	asdata => \reg_Z|R\(49),
	sclr => \state.S_init~q\,
	sload => \ldZ~0_combout\,
	ena => \reg_Z|R[52]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_Z|R\(48));

-- Location: MLABCELL_X25_Y9_N42
\Add1~346\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~346_combout\ = ( \reg_Z|R\(48) & ( !\a_s~0_combout\ $ ((((!\ldZ~0_combout\ & \reg_V|R\(48))) # (\Equal1~0_combout\))) ) ) # ( !\reg_Z|R\(48) & ( !\a_s~0_combout\ $ (((!\Equal1~0_combout\ & (!\ldZ~0_combout\ & \reg_V|R\(48))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000001111000111100000111100010100101001011011010010100101101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~0_combout\,
	datab => \ALT_INV_ldZ~0_combout\,
	datac => \ALT_INV_a_s~0_combout\,
	datad => \reg_V|ALT_INV_R\(48),
	dataf => \reg_Z|ALT_INV_R\(48),
	combout => \Add1~346_combout\);

-- Location: IOIBUF_X40_Y0_N35
\X[48]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(48),
	o => \X[48]~input_o\);

-- Location: LABCELL_X24_Y9_N24
\reg_M|R[48]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_M|R[48]~feeder_combout\ = \X[48]~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_X[48]~input_o\,
	combout => \reg_M|R[48]~feeder_combout\);

-- Location: FF_X24_Y9_N26
\reg_M|R[48]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg_M|R[48]~feeder_combout\,
	asdata => \Add1~352_sumout\,
	sload => \ALT_INV_state.S_init~q\,
	ena => \reg_M|R[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_M|R\(48));

-- Location: IOIBUF_X28_Y0_N18
\X[47]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(47),
	o => \X[47]~input_o\);

-- Location: LABCELL_X24_Y9_N6
\reg_M|R[47]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_M|R[47]~feeder_combout\ = \X[47]~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_X[47]~input_o\,
	combout => \reg_M|R[47]~feeder_combout\);

-- Location: FF_X24_Y9_N8
\reg_M|R[47]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg_M|R[47]~feeder_combout\,
	asdata => \Add1~339_sumout\,
	sload => \ALT_INV_state.S_init~q\,
	ena => \reg_M|R[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_M|R\(47));

-- Location: FF_X22_Y9_N44
\reg_Z|R[46]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg_Z|R[46]~feeder_combout\,
	asdata => \reg_Z|R[47]~DUPLICATE_q\,
	sclr => \state.S_init~q\,
	sload => \ldZ~0_combout\,
	ena => \reg_Z|R[52]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_Z|R\(46));

-- Location: FF_X25_Y9_N40
\reg_V|R[46]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \reg_V|R\(48),
	sclr => \state.S_init~q\,
	sload => VCC,
	ena => \reg_V|R[60]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_V|R\(46));

-- Location: MLABCELL_X25_Y9_N39
\Add1~337\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~337_combout\ = ( \reg_V|R\(46) & ( \a_s~0_combout\ & ( (!\Equal1~0_combout\ & ((!\ldZ~0_combout\))) # (\Equal1~0_combout\ & (\reg_Z|R\(46))) ) ) ) # ( !\reg_V|R\(46) & ( \a_s~0_combout\ & ( (\reg_Z|R\(46) & \Equal1~0_combout\) ) ) ) # ( 
-- \reg_V|R\(46) & ( !\a_s~0_combout\ & ( (!\Equal1~0_combout\ & ((\ldZ~0_combout\))) # (\Equal1~0_combout\ & (!\reg_Z|R\(46))) ) ) ) # ( !\reg_V|R\(46) & ( !\a_s~0_combout\ & ( (!\reg_Z|R\(46)) # (!\Equal1~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110011111100000011001111110000000011000000111111001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \reg_Z|ALT_INV_R\(46),
	datac => \ALT_INV_Equal1~0_combout\,
	datad => \ALT_INV_ldZ~0_combout\,
	datae => \reg_V|ALT_INV_R\(46),
	dataf => \ALT_INV_a_s~0_combout\,
	combout => \Add1~337_combout\);

-- Location: IOIBUF_X89_Y9_N21
\X[46]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(46),
	o => \X[46]~input_o\);

-- Location: LABCELL_X24_Y9_N18
\reg_M|R[46]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_M|R[46]~feeder_combout\ = \X[46]~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_X[46]~input_o\,
	combout => \reg_M|R[46]~feeder_combout\);

-- Location: FF_X24_Y9_N20
\reg_M|R[46]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg_M|R[46]~feeder_combout\,
	asdata => \Add1~326_sumout\,
	sload => \ALT_INV_state.S_init~q\,
	ena => \reg_M|R[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_M|R\(46));

-- Location: IOIBUF_X89_Y9_N38
\X[45]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(45),
	o => \X[45]~input_o\);

-- Location: LABCELL_X24_Y9_N27
\reg_M|R[45]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_M|R[45]~feeder_combout\ = \X[45]~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_X[45]~input_o\,
	combout => \reg_M|R[45]~feeder_combout\);

-- Location: FF_X24_Y9_N29
\reg_M|R[45]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg_M|R[45]~feeder_combout\,
	asdata => \Add1~313_sumout\,
	sload => \ALT_INV_state.S_init~q\,
	ena => \reg_M|R[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_M|R\(45));

-- Location: FF_X25_Y9_N56
\reg_V|R[44]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \reg_V|R\(46),
	sclr => \state.S_init~q\,
	sload => VCC,
	ena => \reg_V|R[60]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_V|R\(44));

-- Location: MLABCELL_X25_Y9_N54
\Add1~311\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~311_combout\ = ( \reg_V|R\(44) & ( \a_s~0_combout\ & ( (!\Equal1~0_combout\ & ((!\ldZ~0_combout\))) # (\Equal1~0_combout\ & (\reg_Z|R[44]~DUPLICATE_q\)) ) ) ) # ( !\reg_V|R\(44) & ( \a_s~0_combout\ & ( (\reg_Z|R[44]~DUPLICATE_q\ & 
-- \Equal1~0_combout\) ) ) ) # ( \reg_V|R\(44) & ( !\a_s~0_combout\ & ( (!\Equal1~0_combout\ & ((\ldZ~0_combout\))) # (\Equal1~0_combout\ & (!\reg_Z|R[44]~DUPLICATE_q\)) ) ) ) # ( !\reg_V|R\(44) & ( !\a_s~0_combout\ & ( (!\reg_Z|R[44]~DUPLICATE_q\) # 
-- (!\Equal1~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111011101110001011100010111000010001000100011101000111010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg_Z|ALT_INV_R[44]~DUPLICATE_q\,
	datab => \ALT_INV_Equal1~0_combout\,
	datac => \ALT_INV_ldZ~0_combout\,
	datae => \reg_V|ALT_INV_R\(44),
	dataf => \ALT_INV_a_s~0_combout\,
	combout => \Add1~311_combout\);

-- Location: IOIBUF_X28_Y0_N35
\X[44]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(44),
	o => \X[44]~input_o\);

-- Location: LABCELL_X24_Y9_N3
\reg_M|R[44]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_M|R[44]~feeder_combout\ = \X[44]~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_X[44]~input_o\,
	combout => \reg_M|R[44]~feeder_combout\);

-- Location: FF_X24_Y9_N5
\reg_M|R[44]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg_M|R[44]~feeder_combout\,
	asdata => \Add1~300_sumout\,
	sload => \ALT_INV_state.S_init~q\,
	ena => \reg_M|R[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_M|R\(44));

-- Location: IOIBUF_X34_Y0_N75
\X[43]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(43),
	o => \X[43]~input_o\);

-- Location: LABCELL_X24_Y9_N9
\reg_M|R[43]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_M|R[43]~feeder_combout\ = ( \X[43]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_X[43]~input_o\,
	combout => \reg_M|R[43]~feeder_combout\);

-- Location: FF_X24_Y9_N11
\reg_M|R[43]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg_M|R[43]~feeder_combout\,
	asdata => \Add1~287_sumout\,
	sload => \ALT_INV_state.S_init~q\,
	ena => \reg_M|R[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_M|R\(43));

-- Location: IOIBUF_X30_Y0_N18
\X[42]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(42),
	o => \X[42]~input_o\);

-- Location: LABCELL_X24_Y9_N0
\reg_M|R[42]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_M|R[42]~feeder_combout\ = ( \X[42]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_X[42]~input_o\,
	combout => \reg_M|R[42]~feeder_combout\);

-- Location: FF_X24_Y9_N2
\reg_M|R[42]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg_M|R[42]~feeder_combout\,
	asdata => \Add1~274_sumout\,
	sload => \ALT_INV_state.S_init~q\,
	ena => \reg_M|R[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_M|R\(42));

-- Location: FF_X25_Y9_N53
\reg_V|R[42]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \reg_V|R\(44),
	sclr => \state.S_init~q\,
	sload => VCC,
	ena => \reg_V|R[60]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_V|R\(42));

-- Location: MLABCELL_X25_Y9_N51
\Add1~285\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~285_combout\ = ( \reg_V|R\(42) & ( \a_s~0_combout\ & ( (!\Equal1~0_combout\ & ((!\ldZ~0_combout\))) # (\Equal1~0_combout\ & (\reg_Z|R\(42))) ) ) ) # ( !\reg_V|R\(42) & ( \a_s~0_combout\ & ( (\reg_Z|R\(42) & \Equal1~0_combout\) ) ) ) # ( 
-- \reg_V|R\(42) & ( !\a_s~0_combout\ & ( (!\Equal1~0_combout\ & ((\ldZ~0_combout\))) # (\Equal1~0_combout\ & (!\reg_Z|R\(42))) ) ) ) # ( !\reg_V|R\(42) & ( !\a_s~0_combout\ & ( (!\reg_Z|R\(42)) # (!\Equal1~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101011111010000010101111101000000101000001011111010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg_Z|ALT_INV_R\(42),
	datac => \ALT_INV_Equal1~0_combout\,
	datad => \ALT_INV_ldZ~0_combout\,
	datae => \reg_V|ALT_INV_R\(42),
	dataf => \ALT_INV_a_s~0_combout\,
	combout => \Add1~285_combout\);

-- Location: IOIBUF_X89_Y9_N55
\X[41]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(41),
	o => \X[41]~input_o\);

-- Location: LABCELL_X24_Y9_N12
\reg_M|R[41]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_M|R[41]~feeder_combout\ = \X[41]~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_X[41]~input_o\,
	combout => \reg_M|R[41]~feeder_combout\);

-- Location: FF_X24_Y9_N14
\reg_M|R[41]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg_M|R[41]~feeder_combout\,
	asdata => \Add1~261_sumout\,
	sload => \ALT_INV_state.S_init~q\,
	ena => \reg_M|R[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_M|R\(41));

-- Location: IOIBUF_X30_Y0_N35
\X[40]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(40),
	o => \X[40]~input_o\);

-- Location: LABCELL_X24_Y9_N21
\reg_M|R[40]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_M|R[40]~feeder_combout\ = \X[40]~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_X[40]~input_o\,
	combout => \reg_M|R[40]~feeder_combout\);

-- Location: FF_X24_Y9_N23
\reg_M|R[40]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg_M|R[40]~feeder_combout\,
	asdata => \Add1~248_sumout\,
	sload => \ALT_INV_state.S_init~q\,
	ena => \reg_M|R[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_M|R\(40));

-- Location: FF_X25_Y9_N31
\reg_V|R[40]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \reg_V|R\(42),
	sclr => \state.S_init~q\,
	sload => VCC,
	ena => \reg_V|R[60]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_V|R\(40));

-- Location: MLABCELL_X25_Y9_N30
\Add1~259\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~259_combout\ = ( \reg_V|R\(40) & ( \a_s~0_combout\ & ( (!\Equal1~0_combout\ & ((!\ldZ~0_combout\))) # (\Equal1~0_combout\ & (\reg_Z|R\(40))) ) ) ) # ( !\reg_V|R\(40) & ( \a_s~0_combout\ & ( (\reg_Z|R\(40) & \Equal1~0_combout\) ) ) ) # ( 
-- \reg_V|R\(40) & ( !\a_s~0_combout\ & ( (!\Equal1~0_combout\ & ((\ldZ~0_combout\))) # (\Equal1~0_combout\ & (!\reg_Z|R\(40))) ) ) ) # ( !\reg_V|R\(40) & ( !\a_s~0_combout\ & ( (!\reg_Z|R\(40)) # (!\Equal1~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111110101010000011111010101000000000010101011111000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg_Z|ALT_INV_R\(40),
	datac => \ALT_INV_ldZ~0_combout\,
	datad => \ALT_INV_Equal1~0_combout\,
	datae => \reg_V|ALT_INV_R\(40),
	dataf => \ALT_INV_a_s~0_combout\,
	combout => \Add1~259_combout\);

-- Location: IOIBUF_X26_Y0_N41
\X[39]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(39),
	o => \X[39]~input_o\);

-- Location: LABCELL_X24_Y9_N15
\reg_M|R[39]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_M|R[39]~feeder_combout\ = ( \X[39]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_X[39]~input_o\,
	combout => \reg_M|R[39]~feeder_combout\);

-- Location: FF_X24_Y9_N17
\reg_M|R[39]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg_M|R[39]~feeder_combout\,
	asdata => \Add1~235_sumout\,
	sload => \ALT_INV_state.S_init~q\,
	ena => \reg_M|R[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_M|R\(39));

-- Location: FF_X25_Y10_N47
\reg_Z|R[38]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg_Z|R[38]~feeder_combout\,
	asdata => \reg_Z|R\(39),
	sclr => \state.S_init~q\,
	sload => \ldZ~0_combout\,
	ena => \reg_Z|R[52]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_Z|R\(38));

-- Location: FF_X23_Y10_N4
\reg_V|R[38]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \reg_V|R\(40),
	sclr => \state.S_init~q\,
	sload => VCC,
	ena => \reg_V|R[60]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_V|R\(38));

-- Location: LABCELL_X23_Y10_N3
\Add1~233\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~233_combout\ = ( \reg_V|R\(38) & ( \a_s~0_combout\ & ( (!\Equal1~0_combout\ & (!\ldZ~0_combout\)) # (\Equal1~0_combout\ & ((\reg_Z|R\(38)))) ) ) ) # ( !\reg_V|R\(38) & ( \a_s~0_combout\ & ( (\Equal1~0_combout\ & \reg_Z|R\(38)) ) ) ) # ( 
-- \reg_V|R\(38) & ( !\a_s~0_combout\ & ( (!\Equal1~0_combout\ & (\ldZ~0_combout\)) # (\Equal1~0_combout\ & ((!\reg_Z|R\(38)))) ) ) ) # ( !\reg_V|R\(38) & ( !\a_s~0_combout\ & ( (!\Equal1~0_combout\) # (!\reg_Z|R\(38)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111110000010111110101000000000000000011111010000010101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ldZ~0_combout\,
	datac => \ALT_INV_Equal1~0_combout\,
	datad => \reg_Z|ALT_INV_R\(38),
	datae => \reg_V|ALT_INV_R\(38),
	dataf => \ALT_INV_a_s~0_combout\,
	combout => \Add1~233_combout\);

-- Location: IOIBUF_X40_Y0_N1
\X[38]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(38),
	o => \X[38]~input_o\);

-- Location: LABCELL_X24_Y10_N24
\reg_M|R[38]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_M|R[38]~feeder_combout\ = ( \X[38]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_X[38]~input_o\,
	combout => \reg_M|R[38]~feeder_combout\);

-- Location: FF_X24_Y10_N26
\reg_M|R[38]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg_M|R[38]~feeder_combout\,
	asdata => \Add1~222_sumout\,
	sload => \ALT_INV_state.S_init~q\,
	ena => \reg_M|R[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_M|R\(38));

-- Location: IOIBUF_X34_Y0_N58
\X[37]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(37),
	o => \X[37]~input_o\);

-- Location: LABCELL_X24_Y10_N27
\reg_M|R[37]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_M|R[37]~feeder_combout\ = ( \X[37]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_X[37]~input_o\,
	combout => \reg_M|R[37]~feeder_combout\);

-- Location: FF_X24_Y10_N29
\reg_M|R[37]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg_M|R[37]~feeder_combout\,
	asdata => \Add1~209_sumout\,
	sload => \ALT_INV_state.S_init~q\,
	ena => \reg_M|R[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_M|R\(37));

-- Location: FF_X23_Y10_N19
\reg_V|R[36]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \reg_V|R\(38),
	sclr => \state.S_init~q\,
	sload => VCC,
	ena => \reg_V|R[60]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_V|R\(36));

-- Location: LABCELL_X23_Y10_N18
\Add1~207\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~207_combout\ = ( \reg_V|R\(36) & ( \a_s~0_combout\ & ( (!\Equal1~0_combout\ & (!\ldZ~0_combout\)) # (\Equal1~0_combout\ & ((\reg_Z|R\(36)))) ) ) ) # ( !\reg_V|R\(36) & ( \a_s~0_combout\ & ( (\Equal1~0_combout\ & \reg_Z|R\(36)) ) ) ) # ( 
-- \reg_V|R\(36) & ( !\a_s~0_combout\ & ( (!\Equal1~0_combout\ & (\ldZ~0_combout\)) # (\Equal1~0_combout\ & ((!\reg_Z|R\(36)))) ) ) ) # ( !\reg_V|R\(36) & ( !\a_s~0_combout\ & ( (!\Equal1~0_combout\) # (!\reg_Z|R\(36)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111001100001111110000110000000000001100111100000011110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Equal1~0_combout\,
	datac => \ALT_INV_ldZ~0_combout\,
	datad => \reg_Z|ALT_INV_R\(36),
	datae => \reg_V|ALT_INV_R\(36),
	dataf => \ALT_INV_a_s~0_combout\,
	combout => \Add1~207_combout\);

-- Location: IOIBUF_X56_Y0_N52
\X[36]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(36),
	o => \X[36]~input_o\);

-- Location: LABCELL_X24_Y10_N6
\reg_M|R[36]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_M|R[36]~feeder_combout\ = \X[36]~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_X[36]~input_o\,
	combout => \reg_M|R[36]~feeder_combout\);

-- Location: FF_X24_Y10_N8
\reg_M|R[36]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg_M|R[36]~feeder_combout\,
	asdata => \Add1~196_sumout\,
	sload => \ALT_INV_state.S_init~q\,
	ena => \reg_M|R[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_M|R\(36));

-- Location: IOIBUF_X36_Y0_N18
\X[35]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(35),
	o => \X[35]~input_o\);

-- Location: LABCELL_X24_Y10_N9
\reg_M|R[35]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_M|R[35]~feeder_combout\ = \X[35]~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_X[35]~input_o\,
	combout => \reg_M|R[35]~feeder_combout\);

-- Location: FF_X24_Y10_N11
\reg_M|R[35]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg_M|R[35]~feeder_combout\,
	asdata => \Add1~183_sumout\,
	sload => \ALT_INV_state.S_init~q\,
	ena => \reg_M|R[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_M|R\(35));

-- Location: FF_X23_Y10_N29
\reg_V|R[34]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \reg_V|R\(36),
	sclr => \state.S_init~q\,
	sload => VCC,
	ena => \reg_V|R[60]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_V|R\(34));

-- Location: LABCELL_X23_Y10_N27
\Add1~181\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~181_combout\ = ( \a_s~0_combout\ & ( (!\Equal1~0_combout\ & (!\ldZ~0_combout\ & ((\reg_V|R\(34))))) # (\Equal1~0_combout\ & (((\reg_Z|R\(34))))) ) ) # ( !\a_s~0_combout\ & ( (!\Equal1~0_combout\ & (((!\reg_V|R\(34))) # (\ldZ~0_combout\))) # 
-- (\Equal1~0_combout\ & (((!\reg_Z|R\(34))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110001011100111111000101110000000011101000110000001110100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ldZ~0_combout\,
	datab => \reg_Z|ALT_INV_R\(34),
	datac => \ALT_INV_Equal1~0_combout\,
	datad => \reg_V|ALT_INV_R\(34),
	dataf => \ALT_INV_a_s~0_combout\,
	combout => \Add1~181_combout\);

-- Location: IOIBUF_X2_Y0_N75
\X[34]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(34),
	o => \X[34]~input_o\);

-- Location: LABCELL_X24_Y10_N18
\reg_M|R[34]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_M|R[34]~feeder_combout\ = \X[34]~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_X[34]~input_o\,
	combout => \reg_M|R[34]~feeder_combout\);

-- Location: FF_X24_Y10_N20
\reg_M|R[34]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg_M|R[34]~feeder_combout\,
	asdata => \Add1~170_sumout\,
	sload => \ALT_INV_state.S_init~q\,
	ena => \reg_M|R[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_M|R\(34));

-- Location: IOIBUF_X89_Y8_N38
\X[33]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(33),
	o => \X[33]~input_o\);

-- Location: LABCELL_X24_Y10_N3
\reg_M|R[33]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_M|R[33]~feeder_combout\ = \X[33]~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_X[33]~input_o\,
	combout => \reg_M|R[33]~feeder_combout\);

-- Location: FF_X24_Y10_N5
\reg_M|R[33]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg_M|R[33]~feeder_combout\,
	asdata => \Add1~161_sumout\,
	sload => \ALT_INV_state.S_init~q\,
	ena => \reg_M|R[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_M|R\(33));

-- Location: FF_X27_Y10_N31
\reg_Z|R[33]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg_Z|R[33]~feeder_combout\,
	asdata => \reg_Z|R\(34),
	sclr => \state.S_init~q\,
	sload => \ldZ~0_combout\,
	ena => \reg_Z|R[52]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_Z|R[33]~DUPLICATE_q\);

-- Location: FF_X25_Y10_N55
\reg_Z|R[32]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg_Z|R[32]~feeder_combout\,
	asdata => \reg_Z|R[33]~DUPLICATE_q\,
	sclr => \state.S_init~q\,
	sload => \ldZ~0_combout\,
	ena => \reg_Z|R[52]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_Z|R[32]~DUPLICATE_q\);

-- Location: FF_X23_Y10_N8
\reg_V|R[32]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \reg_V|R\(34),
	sclr => \state.S_init~q\,
	sload => VCC,
	ena => \reg_V|R[60]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_V|R\(32));

-- Location: LABCELL_X23_Y10_N6
\Add1~159\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~159_combout\ = ( \reg_V|R\(32) & ( \a_s~0_combout\ & ( (!\Equal1~0_combout\ & ((!\ldZ~0_combout\))) # (\Equal1~0_combout\ & (\reg_Z|R[32]~DUPLICATE_q\)) ) ) ) # ( !\reg_V|R\(32) & ( \a_s~0_combout\ & ( (\reg_Z|R[32]~DUPLICATE_q\ & 
-- \Equal1~0_combout\) ) ) ) # ( \reg_V|R\(32) & ( !\a_s~0_combout\ & ( (!\Equal1~0_combout\ & ((\ldZ~0_combout\))) # (\Equal1~0_combout\ & (!\reg_Z|R[32]~DUPLICATE_q\)) ) ) ) # ( !\reg_V|R\(32) & ( !\a_s~0_combout\ & ( (!\reg_Z|R[32]~DUPLICATE_q\) # 
-- (!\Equal1~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111001100000011111100110000000000001100111111000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \reg_Z|ALT_INV_R[32]~DUPLICATE_q\,
	datac => \ALT_INV_ldZ~0_combout\,
	datad => \ALT_INV_Equal1~0_combout\,
	datae => \reg_V|ALT_INV_R\(32),
	dataf => \ALT_INV_a_s~0_combout\,
	combout => \Add1~159_combout\);

-- Location: IOIBUF_X30_Y0_N1
\X[32]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(32),
	o => \X[32]~input_o\);

-- Location: LABCELL_X24_Y10_N12
\reg_M|R[32]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_M|R[32]~feeder_combout\ = ( \X[32]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_X[32]~input_o\,
	combout => \reg_M|R[32]~feeder_combout\);

-- Location: FF_X24_Y10_N14
\reg_M|R[32]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg_M|R[32]~feeder_combout\,
	asdata => \Add1~152_sumout\,
	sload => \ALT_INV_state.S_init~q\,
	ena => \reg_M|R[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_M|R\(32));

-- Location: IOIBUF_X52_Y0_N1
\X[31]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(31),
	o => \X[31]~input_o\);

-- Location: LABCELL_X24_Y10_N15
\reg_M|R[31]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_M|R[31]~feeder_combout\ = \X[31]~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_X[31]~input_o\,
	combout => \reg_M|R[31]~feeder_combout\);

-- Location: FF_X24_Y10_N17
\reg_M|R[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg_M|R[31]~feeder_combout\,
	asdata => \Add1~127_sumout\,
	sload => \ALT_INV_state.S_init~q\,
	ena => \reg_M|R[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_M|R\(31));

-- Location: FF_X23_Y10_N14
\reg_V|R[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \reg_V|R\(32),
	sclr => \state.S_init~q\,
	sload => VCC,
	ena => \reg_V|R[60]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_V|R\(30));

-- Location: LABCELL_X23_Y10_N12
\Add1~150\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~150_combout\ = ( \reg_V|R\(30) & ( \a_s~0_combout\ & ( (!\Equal1~0_combout\ & ((!\ldZ~0_combout\))) # (\Equal1~0_combout\ & (\reg_Z|R\(30))) ) ) ) # ( !\reg_V|R\(30) & ( \a_s~0_combout\ & ( (\reg_Z|R\(30) & \Equal1~0_combout\) ) ) ) # ( 
-- \reg_V|R\(30) & ( !\a_s~0_combout\ & ( (!\Equal1~0_combout\ & ((\ldZ~0_combout\))) # (\Equal1~0_combout\ & (!\reg_Z|R\(30))) ) ) ) # ( !\reg_V|R\(30) & ( !\a_s~0_combout\ & ( (!\reg_Z|R\(30)) # (!\Equal1~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111001100000011111100110000000000001100111111000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \reg_Z|ALT_INV_R\(30),
	datac => \ALT_INV_ldZ~0_combout\,
	datad => \ALT_INV_Equal1~0_combout\,
	datae => \reg_V|ALT_INV_R\(30),
	dataf => \ALT_INV_a_s~0_combout\,
	combout => \Add1~150_combout\);

-- Location: IOIBUF_X34_Y0_N92
\X[30]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(30),
	o => \X[30]~input_o\);

-- Location: LABCELL_X24_Y10_N21
\reg_M|R[30]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_M|R[30]~feeder_combout\ = ( \X[30]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_X[30]~input_o\,
	combout => \reg_M|R[30]~feeder_combout\);

-- Location: FF_X24_Y10_N23
\reg_M|R[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg_M|R[30]~feeder_combout\,
	asdata => \Add1~123_sumout\,
	sload => \ALT_INV_state.S_init~q\,
	ena => \reg_M|R[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_M|R\(30));

-- Location: IOIBUF_X36_Y0_N52
\X[29]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(29),
	o => \X[29]~input_o\);

-- Location: LABCELL_X24_Y10_N0
\reg_M|R[29]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_M|R[29]~feeder_combout\ = \X[29]~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_X[29]~input_o\,
	combout => \reg_M|R[29]~feeder_combout\);

-- Location: FF_X24_Y10_N2
\reg_M|R[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg_M|R[29]~feeder_combout\,
	asdata => \Add1~119_sumout\,
	sload => \ALT_INV_state.S_init~q\,
	ena => \reg_M|R[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_M|R\(29));

-- Location: IOIBUF_X60_Y0_N1
\X[28]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(28),
	o => \X[28]~input_o\);

-- Location: LABCELL_X24_Y11_N27
\reg_M|R[28]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_M|R[28]~feeder_combout\ = \X[28]~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_X[28]~input_o\,
	combout => \reg_M|R[28]~feeder_combout\);

-- Location: FF_X24_Y11_N29
\reg_M|R[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg_M|R[28]~feeder_combout\,
	asdata => \Add1~115_sumout\,
	sload => \ALT_INV_state.S_init~q\,
	ena => \reg_M|R[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_M|R\(28));

-- Location: FF_X23_Y11_N23
\reg_V|R[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \reg_V|R\(30),
	sclr => \state.S_init~q\,
	sload => VCC,
	ena => \reg_V|R[60]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_V|R\(28));

-- Location: LABCELL_X23_Y11_N18
\Add1~149\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~149_combout\ = ( \reg_V|R\(28) & ( \a_s~0_combout\ & ( (!\Equal1~0_combout\ & ((!\ldZ~0_combout\))) # (\Equal1~0_combout\ & (\reg_Z|R[28]~DUPLICATE_q\)) ) ) ) # ( !\reg_V|R\(28) & ( \a_s~0_combout\ & ( (\Equal1~0_combout\ & 
-- \reg_Z|R[28]~DUPLICATE_q\) ) ) ) # ( \reg_V|R\(28) & ( !\a_s~0_combout\ & ( (!\Equal1~0_combout\ & ((\ldZ~0_combout\))) # (\Equal1~0_combout\ & (!\reg_Z|R[28]~DUPLICATE_q\)) ) ) ) # ( !\reg_V|R\(28) & ( !\a_s~0_combout\ & ( (!\Equal1~0_combout\) # 
-- (!\reg_Z|R[28]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111011101110010001001110111000010001000100011011101100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~0_combout\,
	datab => \reg_Z|ALT_INV_R[28]~DUPLICATE_q\,
	datad => \ALT_INV_ldZ~0_combout\,
	datae => \reg_V|ALT_INV_R\(28),
	dataf => \ALT_INV_a_s~0_combout\,
	combout => \Add1~149_combout\);

-- Location: IOIBUF_X56_Y0_N18
\X[27]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(27),
	o => \X[27]~input_o\);

-- Location: LABCELL_X24_Y11_N6
\reg_M|R[27]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_M|R[27]~feeder_combout\ = \X[27]~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_X[27]~input_o\,
	combout => \reg_M|R[27]~feeder_combout\);

-- Location: FF_X24_Y11_N8
\reg_M|R[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg_M|R[27]~feeder_combout\,
	asdata => \Add1~111_sumout\,
	sload => \ALT_INV_state.S_init~q\,
	ena => \reg_M|R[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_M|R\(27));

-- Location: FF_X23_Y11_N2
\reg_V|R[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \reg_V|R\(28),
	sclr => \state.S_init~q\,
	sload => VCC,
	ena => \reg_V|R[60]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_V|R\(26));

-- Location: LABCELL_X23_Y11_N3
\Add1~148\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~148_combout\ = ( \ldZ~0_combout\ & ( \a_s~0_combout\ & ( (\reg_Z|R\(26) & \Equal1~0_combout\) ) ) ) # ( !\ldZ~0_combout\ & ( \a_s~0_combout\ & ( (!\Equal1~0_combout\ & (\reg_V|R\(26))) # (\Equal1~0_combout\ & ((\reg_Z|R\(26)))) ) ) ) # ( 
-- \ldZ~0_combout\ & ( !\a_s~0_combout\ & ( (!\reg_Z|R\(26)) # (!\Equal1~0_combout\) ) ) ) # ( !\ldZ~0_combout\ & ( !\a_s~0_combout\ & ( (!\Equal1~0_combout\ & (!\reg_V|R\(26))) # (\Equal1~0_combout\ & ((!\reg_Z|R\(26)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101011110000111111111111000001010101000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg_V|ALT_INV_R\(26),
	datac => \reg_Z|ALT_INV_R\(26),
	datad => \ALT_INV_Equal1~0_combout\,
	datae => \ALT_INV_ldZ~0_combout\,
	dataf => \ALT_INV_a_s~0_combout\,
	combout => \Add1~148_combout\);

-- Location: IOIBUF_X52_Y0_N18
\X[26]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(26),
	o => \X[26]~input_o\);

-- Location: LABCELL_X24_Y11_N12
\reg_M|R[26]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_M|R[26]~feeder_combout\ = \X[26]~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_X[26]~input_o\,
	combout => \reg_M|R[26]~feeder_combout\);

-- Location: FF_X24_Y11_N14
\reg_M|R[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg_M|R[26]~feeder_combout\,
	asdata => \Add1~107_sumout\,
	sload => \ALT_INV_state.S_init~q\,
	ena => \reg_M|R[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_M|R\(26));

-- Location: IOIBUF_X70_Y0_N1
\X[25]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(25),
	o => \X[25]~input_o\);

-- Location: LABCELL_X24_Y11_N15
\reg_M|R[25]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_M|R[25]~feeder_combout\ = \X[25]~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_X[25]~input_o\,
	combout => \reg_M|R[25]~feeder_combout\);

-- Location: FF_X24_Y11_N17
\reg_M|R[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg_M|R[25]~feeder_combout\,
	asdata => \Add1~103_sumout\,
	sload => \ALT_INV_state.S_init~q\,
	ena => \reg_M|R[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_M|R\(25));

-- Location: FF_X25_Y11_N58
\reg_Z|R[24]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg_Z|R[24]~feeder_combout\,
	asdata => \reg_Z|R\(25),
	sclr => \state.S_init~q\,
	sload => \ldZ~0_combout\,
	ena => \reg_Z|R[52]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_Z|R[24]~DUPLICATE_q\);

-- Location: FF_X23_Y11_N29
\reg_V|R[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \reg_V|R\(26),
	sclr => \state.S_init~q\,
	sload => VCC,
	ena => \reg_V|R[60]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_V|R\(24));

-- Location: LABCELL_X23_Y11_N24
\Add1~147\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~147_combout\ = ( \ldZ~0_combout\ & ( \a_s~0_combout\ & ( (\Equal1~0_combout\ & \reg_Z|R[24]~DUPLICATE_q\) ) ) ) # ( !\ldZ~0_combout\ & ( \a_s~0_combout\ & ( (!\Equal1~0_combout\ & ((\reg_V|R\(24)))) # (\Equal1~0_combout\ & 
-- (\reg_Z|R[24]~DUPLICATE_q\)) ) ) ) # ( \ldZ~0_combout\ & ( !\a_s~0_combout\ & ( (!\Equal1~0_combout\) # (!\reg_Z|R[24]~DUPLICATE_q\) ) ) ) # ( !\ldZ~0_combout\ & ( !\a_s~0_combout\ & ( (!\Equal1~0_combout\ & ((!\reg_V|R\(24)))) # (\Equal1~0_combout\ & 
-- (!\reg_Z|R[24]~DUPLICATE_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110010011100100111011101110111000011011000110110001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~0_combout\,
	datab => \reg_Z|ALT_INV_R[24]~DUPLICATE_q\,
	datac => \reg_V|ALT_INV_R\(24),
	datae => \ALT_INV_ldZ~0_combout\,
	dataf => \ALT_INV_a_s~0_combout\,
	combout => \Add1~147_combout\);

-- Location: IOIBUF_X52_Y0_N52
\X[24]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(24),
	o => \X[24]~input_o\);

-- Location: LABCELL_X24_Y11_N9
\reg_M|R[24]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_M|R[24]~feeder_combout\ = ( \X[24]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_X[24]~input_o\,
	combout => \reg_M|R[24]~feeder_combout\);

-- Location: FF_X24_Y11_N11
\reg_M|R[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg_M|R[24]~feeder_combout\,
	asdata => \Add1~99_sumout\,
	sload => \ALT_INV_state.S_init~q\,
	ena => \reg_M|R[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_M|R\(24));

-- Location: IOIBUF_X70_Y0_N52
\X[23]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(23),
	o => \X[23]~input_o\);

-- Location: LABCELL_X24_Y11_N3
\reg_M|R[23]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_M|R[23]~feeder_combout\ = \X[23]~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_X[23]~input_o\,
	combout => \reg_M|R[23]~feeder_combout\);

-- Location: FF_X24_Y11_N5
\reg_M|R[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg_M|R[23]~feeder_combout\,
	asdata => \Add1~95_sumout\,
	sload => \ALT_INV_state.S_init~q\,
	ena => \reg_M|R[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_M|R\(23));

-- Location: FF_X23_Y11_N8
\reg_V|R[22]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \reg_V|R\(24),
	sclr => \state.S_init~q\,
	sload => VCC,
	ena => \reg_V|R[60]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_V|R[22]~DUPLICATE_q\);

-- Location: FF_X25_Y11_N56
\reg_Z|R[23]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg_Z|R[23]~feeder_combout\,
	asdata => \reg_Z|R\(24),
	sclr => \state.S_init~q\,
	sload => \ldZ~0_combout\,
	ena => \reg_Z|R[52]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_Z|R[23]~DUPLICATE_q\);

-- Location: FF_X25_Y11_N38
\reg_Z|R[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg_Z|R[22]~feeder_combout\,
	asdata => \reg_Z|R[23]~DUPLICATE_q\,
	sclr => \state.S_init~q\,
	sload => \ldZ~0_combout\,
	ena => \reg_Z|R[52]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_Z|R\(22));

-- Location: LABCELL_X23_Y11_N9
\Add1~146\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~146_combout\ = ( \ldZ~0_combout\ & ( \a_s~0_combout\ & ( (\Equal1~0_combout\ & \reg_Z|R\(22)) ) ) ) # ( !\ldZ~0_combout\ & ( \a_s~0_combout\ & ( (!\Equal1~0_combout\ & (\reg_V|R[22]~DUPLICATE_q\)) # (\Equal1~0_combout\ & ((\reg_Z|R\(22)))) ) ) ) # ( 
-- \ldZ~0_combout\ & ( !\a_s~0_combout\ & ( (!\Equal1~0_combout\) # (!\reg_Z|R\(22)) ) ) ) # ( !\ldZ~0_combout\ & ( !\a_s~0_combout\ & ( (!\Equal1~0_combout\ & (!\reg_V|R[22]~DUPLICATE_q\)) # (\Equal1~0_combout\ & ((!\reg_Z|R\(22)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111010110100000111111111010101000001010010111110000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~0_combout\,
	datac => \reg_V|ALT_INV_R[22]~DUPLICATE_q\,
	datad => \reg_Z|ALT_INV_R\(22),
	datae => \ALT_INV_ldZ~0_combout\,
	dataf => \ALT_INV_a_s~0_combout\,
	combout => \Add1~146_combout\);

-- Location: IOIBUF_X66_Y0_N92
\X[22]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(22),
	o => \X[22]~input_o\);

-- Location: LABCELL_X24_Y11_N24
\reg_M|R[22]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_M|R[22]~feeder_combout\ = \X[22]~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_X[22]~input_o\,
	combout => \reg_M|R[22]~feeder_combout\);

-- Location: FF_X24_Y11_N26
\reg_M|R[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg_M|R[22]~feeder_combout\,
	asdata => \Add1~91_sumout\,
	sload => \ALT_INV_state.S_init~q\,
	ena => \reg_M|R[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_M|R\(22));

-- Location: IOIBUF_X66_Y0_N58
\X[21]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(21),
	o => \X[21]~input_o\);

-- Location: LABCELL_X24_Y11_N21
\reg_M|R[21]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_M|R[21]~feeder_combout\ = \X[21]~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_X[21]~input_o\,
	combout => \reg_M|R[21]~feeder_combout\);

-- Location: FF_X24_Y11_N23
\reg_M|R[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg_M|R[21]~feeder_combout\,
	asdata => \Add1~87_sumout\,
	sload => \ALT_INV_state.S_init~q\,
	ena => \reg_M|R[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_M|R\(21));

-- Location: IOIBUF_X62_Y0_N35
\X[20]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(20),
	o => \X[20]~input_o\);

-- Location: LABCELL_X24_Y11_N18
\reg_M|R[20]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_M|R[20]~feeder_combout\ = ( \X[20]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_X[20]~input_o\,
	combout => \reg_M|R[20]~feeder_combout\);

-- Location: FF_X24_Y11_N20
\reg_M|R[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg_M|R[20]~feeder_combout\,
	asdata => \Add1~83_sumout\,
	sload => \ALT_INV_state.S_init~q\,
	ena => \reg_M|R[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_M|R\(20));

-- Location: FF_X23_Y11_N7
\reg_V|R[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \reg_V|R\(24),
	sclr => \state.S_init~q\,
	sload => VCC,
	ena => \reg_V|R[60]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_V|R\(22));

-- Location: FF_X23_Y11_N14
\reg_V|R[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \reg_V|R\(22),
	sclr => \state.S_init~q\,
	sload => VCC,
	ena => \reg_V|R[60]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_V|R\(20));

-- Location: LABCELL_X23_Y11_N15
\Add1~145\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~145_combout\ = ( \ldZ~0_combout\ & ( \a_s~0_combout\ & ( (\Equal1~0_combout\ & \reg_Z|R\(20)) ) ) ) # ( !\ldZ~0_combout\ & ( \a_s~0_combout\ & ( (!\Equal1~0_combout\ & (\reg_V|R\(20))) # (\Equal1~0_combout\ & ((\reg_Z|R\(20)))) ) ) ) # ( 
-- \ldZ~0_combout\ & ( !\a_s~0_combout\ & ( (!\Equal1~0_combout\) # (!\reg_Z|R\(20)) ) ) ) # ( !\ldZ~0_combout\ & ( !\a_s~0_combout\ & ( (!\Equal1~0_combout\ & (!\reg_V|R\(20))) # (\Equal1~0_combout\ & ((!\reg_Z|R\(20)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110110001000111111111010101000100010011101110000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~0_combout\,
	datab => \reg_V|ALT_INV_R\(20),
	datad => \reg_Z|ALT_INV_R\(20),
	datae => \ALT_INV_ldZ~0_combout\,
	dataf => \ALT_INV_a_s~0_combout\,
	combout => \Add1~145_combout\);

-- Location: IOIBUF_X66_Y0_N75
\X[19]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(19),
	o => \X[19]~input_o\);

-- Location: LABCELL_X24_Y11_N0
\reg_M|R[19]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_M|R[19]~feeder_combout\ = \X[19]~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_X[19]~input_o\,
	combout => \reg_M|R[19]~feeder_combout\);

-- Location: FF_X24_Y11_N2
\reg_M|R[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg_M|R[19]~feeder_combout\,
	asdata => \Add1~79_sumout\,
	sload => \ALT_INV_state.S_init~q\,
	ena => \reg_M|R[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_M|R\(19));

-- Location: FF_X23_Y12_N26
\reg_V|R[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \reg_V|R\(20),
	sclr => \state.S_init~q\,
	sload => VCC,
	ena => \reg_V|R[60]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_V|R\(18));

-- Location: LABCELL_X23_Y12_N27
\Add1~144\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~144_combout\ = ( \Equal1~0_combout\ & ( \a_s~0_combout\ & ( \reg_Z|R\(18) ) ) ) # ( !\Equal1~0_combout\ & ( \a_s~0_combout\ & ( (\reg_V|R\(18) & !\ldZ~0_combout\) ) ) ) # ( \Equal1~0_combout\ & ( !\a_s~0_combout\ & ( !\reg_Z|R\(18) ) ) ) # ( 
-- !\Equal1~0_combout\ & ( !\a_s~0_combout\ & ( (!\reg_V|R\(18)) # (\ldZ~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101011111111110011001100110001010101000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg_V|ALT_INV_R\(18),
	datab => \reg_Z|ALT_INV_R\(18),
	datad => \ALT_INV_ldZ~0_combout\,
	datae => \ALT_INV_Equal1~0_combout\,
	dataf => \ALT_INV_a_s~0_combout\,
	combout => \Add1~144_combout\);

-- Location: IOIBUF_X70_Y0_N35
\X[18]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(18),
	o => \X[18]~input_o\);

-- Location: LABCELL_X24_Y12_N9
\reg_M|R[18]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_M|R[18]~feeder_combout\ = \X[18]~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_X[18]~input_o\,
	combout => \reg_M|R[18]~feeder_combout\);

-- Location: FF_X24_Y12_N11
\reg_M|R[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg_M|R[18]~feeder_combout\,
	asdata => \Add1~75_sumout\,
	sload => \ALT_INV_state.S_init~q\,
	ena => \reg_M|R[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_M|R\(18));

-- Location: IOIBUF_X30_Y0_N52
\X[17]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(17),
	o => \X[17]~input_o\);

-- Location: LABCELL_X24_Y12_N15
\reg_M|R[17]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_M|R[17]~feeder_combout\ = ( \X[17]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_X[17]~input_o\,
	combout => \reg_M|R[17]~feeder_combout\);

-- Location: FF_X24_Y12_N17
\reg_M|R[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg_M|R[17]~feeder_combout\,
	asdata => \Add1~71_sumout\,
	sload => \ALT_INV_state.S_init~q\,
	ena => \reg_M|R[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_M|R\(17));

-- Location: FF_X23_Y12_N5
\reg_V|R[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \reg_V|R\(18),
	sclr => \state.S_init~q\,
	sload => VCC,
	ena => \reg_V|R[60]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_V|R\(16));

-- Location: LABCELL_X23_Y12_N0
\Add1~143\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~143_combout\ = ( \Equal1~0_combout\ & ( \a_s~0_combout\ & ( \reg_Z|R[16]~DUPLICATE_q\ ) ) ) # ( !\Equal1~0_combout\ & ( \a_s~0_combout\ & ( (\reg_V|R\(16) & !\ldZ~0_combout\) ) ) ) # ( \Equal1~0_combout\ & ( !\a_s~0_combout\ & ( 
-- !\reg_Z|R[16]~DUPLICATE_q\ ) ) ) # ( !\Equal1~0_combout\ & ( !\a_s~0_combout\ & ( (!\reg_V|R\(16)) # (\ldZ~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010111110101111111111110000000001010000010100000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg_V|ALT_INV_R\(16),
	datac => \ALT_INV_ldZ~0_combout\,
	datad => \reg_Z|ALT_INV_R[16]~DUPLICATE_q\,
	datae => \ALT_INV_Equal1~0_combout\,
	dataf => \ALT_INV_a_s~0_combout\,
	combout => \Add1~143_combout\);

-- Location: IOIBUF_X52_Y0_N35
\X[16]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(16),
	o => \X[16]~input_o\);

-- Location: LABCELL_X24_Y12_N18
\reg_M|R[16]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_M|R[16]~feeder_combout\ = \X[16]~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_X[16]~input_o\,
	combout => \reg_M|R[16]~feeder_combout\);

-- Location: FF_X24_Y12_N20
\reg_M|R[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg_M|R[16]~feeder_combout\,
	asdata => \Add1~67_sumout\,
	sload => \ALT_INV_state.S_init~q\,
	ena => \reg_M|R[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_M|R\(16));

-- Location: IOIBUF_X62_Y0_N1
\X[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(15),
	o => \X[15]~input_o\);

-- Location: LABCELL_X27_Y12_N39
\reg_M|R[15]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_M|R[15]~feeder_combout\ = ( \X[15]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_X[15]~input_o\,
	combout => \reg_M|R[15]~feeder_combout\);

-- Location: FF_X27_Y12_N41
\reg_M|R[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg_M|R[15]~feeder_combout\,
	asdata => \Add1~63_sumout\,
	sload => \ALT_INV_state.S_init~q\,
	ena => \reg_M|R[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_M|R\(15));

-- Location: FF_X23_Y12_N20
\reg_V|R[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \reg_V|R\(16),
	sclr => \state.S_init~q\,
	sload => VCC,
	ena => \reg_V|R[60]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_V|R\(14));

-- Location: FF_X25_Y12_N47
\reg_Z|R[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg_Z|R[16]~feeder_combout\,
	asdata => \reg_Z|R\(17),
	sclr => \state.S_init~q\,
	sload => \ldZ~0_combout\,
	ena => \reg_Z|R[52]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_Z|R\(16));

-- Location: FF_X25_Y12_N37
\reg_Z|R[15]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg_Z|R[15]~feeder_combout\,
	asdata => \reg_Z|R\(16),
	sclr => \state.S_init~q\,
	sload => \ldZ~0_combout\,
	ena => \reg_Z|R[52]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_Z|R[15]~DUPLICATE_q\);

-- Location: FF_X22_Y12_N58
\reg_Z|R[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg_Z|R[14]~feeder_combout\,
	asdata => \reg_Z|R[15]~DUPLICATE_q\,
	sclr => \state.S_init~q\,
	sload => \ldZ~0_combout\,
	ena => \reg_Z|R[52]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_Z|R\(14));

-- Location: LABCELL_X23_Y12_N21
\Add1~142\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~142_combout\ = ( \Equal1~0_combout\ & ( \a_s~0_combout\ & ( \reg_Z|R\(14) ) ) ) # ( !\Equal1~0_combout\ & ( \a_s~0_combout\ & ( (\reg_V|R\(14) & !\ldZ~0_combout\) ) ) ) # ( \Equal1~0_combout\ & ( !\a_s~0_combout\ & ( !\reg_Z|R\(14) ) ) ) # ( 
-- !\Equal1~0_combout\ & ( !\a_s~0_combout\ & ( (!\reg_V|R\(14)) # (\ldZ~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101011111111111100001111000001010101000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg_V|ALT_INV_R\(14),
	datac => \reg_Z|ALT_INV_R\(14),
	datad => \ALT_INV_ldZ~0_combout\,
	datae => \ALT_INV_Equal1~0_combout\,
	dataf => \ALT_INV_a_s~0_combout\,
	combout => \Add1~142_combout\);

-- Location: IOIBUF_X56_Y0_N35
\X[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(14),
	o => \X[14]~input_o\);

-- Location: LABCELL_X24_Y12_N24
\reg_M|R[14]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_M|R[14]~feeder_combout\ = \X[14]~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_X[14]~input_o\,
	combout => \reg_M|R[14]~feeder_combout\);

-- Location: FF_X24_Y12_N26
\reg_M|R[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg_M|R[14]~feeder_combout\,
	asdata => \Add1~59_sumout\,
	sload => \ALT_INV_state.S_init~q\,
	ena => \reg_M|R[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_M|R\(14));

-- Location: IOIBUF_X28_Y0_N1
\X[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(13),
	o => \X[13]~input_o\);

-- Location: LABCELL_X24_Y12_N0
\reg_M|R[13]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_M|R[13]~feeder_combout\ = \X[13]~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_X[13]~input_o\,
	combout => \reg_M|R[13]~feeder_combout\);

-- Location: FF_X24_Y12_N2
\reg_M|R[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg_M|R[13]~feeder_combout\,
	asdata => \Add1~55_sumout\,
	sload => \ALT_INV_state.S_init~q\,
	ena => \reg_M|R[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_M|R\(13));

-- Location: IOIBUF_X72_Y0_N1
\X[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(12),
	o => \X[12]~input_o\);

-- Location: LABCELL_X24_Y12_N21
\reg_M|R[12]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_M|R[12]~feeder_combout\ = \X[12]~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_X[12]~input_o\,
	combout => \reg_M|R[12]~feeder_combout\);

-- Location: FF_X24_Y12_N23
\reg_M|R[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg_M|R[12]~feeder_combout\,
	asdata => \Add1~51_sumout\,
	sload => \ALT_INV_state.S_init~q\,
	ena => \reg_M|R[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_M|R\(12));

-- Location: FF_X23_Y12_N19
\reg_V|R[14]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \reg_V|R\(16),
	sclr => \state.S_init~q\,
	sload => VCC,
	ena => \reg_V|R[60]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_V|R[14]~DUPLICATE_q\);

-- Location: FF_X23_Y12_N8
\reg_V|R[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \reg_V|R[14]~DUPLICATE_q\,
	sclr => \state.S_init~q\,
	sload => VCC,
	ena => \reg_V|R[60]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_V|R\(12));

-- Location: FF_X22_Y12_N1
\reg_Z|R[12]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg_Z|R[12]~feeder_combout\,
	asdata => \reg_Z|R\(13),
	sclr => \state.S_init~q\,
	sload => \ldZ~0_combout\,
	ena => \reg_Z|R[52]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_Z|R[12]~DUPLICATE_q\);

-- Location: LABCELL_X23_Y12_N9
\Add1~141\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~141_combout\ = ( \ldZ~0_combout\ & ( \a_s~0_combout\ & ( (\Equal1~0_combout\ & \reg_Z|R[12]~DUPLICATE_q\) ) ) ) # ( !\ldZ~0_combout\ & ( \a_s~0_combout\ & ( (!\Equal1~0_combout\ & (\reg_V|R\(12))) # (\Equal1~0_combout\ & 
-- ((\reg_Z|R[12]~DUPLICATE_q\))) ) ) ) # ( \ldZ~0_combout\ & ( !\a_s~0_combout\ & ( (!\Equal1~0_combout\) # (!\reg_Z|R[12]~DUPLICATE_q\) ) ) ) # ( !\ldZ~0_combout\ & ( !\a_s~0_combout\ & ( (!\Equal1~0_combout\ & (!\reg_V|R\(12))) # (\Equal1~0_combout\ & 
-- ((!\reg_Z|R[12]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100111111000000111111111111000000110000001111110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \reg_V|ALT_INV_R\(12),
	datac => \ALT_INV_Equal1~0_combout\,
	datad => \reg_Z|ALT_INV_R[12]~DUPLICATE_q\,
	datae => \ALT_INV_ldZ~0_combout\,
	dataf => \ALT_INV_a_s~0_combout\,
	combout => \Add1~141_combout\);

-- Location: IOIBUF_X64_Y0_N1
\X[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(11),
	o => \X[11]~input_o\);

-- Location: LABCELL_X24_Y12_N12
\reg_M|R[11]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_M|R[11]~feeder_combout\ = ( \X[11]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_X[11]~input_o\,
	combout => \reg_M|R[11]~feeder_combout\);

-- Location: FF_X24_Y12_N14
\reg_M|R[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg_M|R[11]~feeder_combout\,
	asdata => \Add1~47_sumout\,
	sload => \ALT_INV_state.S_init~q\,
	ena => \reg_M|R[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_M|R\(11));

-- Location: FF_X23_Y12_N7
\reg_V|R[12]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \reg_V|R[14]~DUPLICATE_q\,
	sclr => \state.S_init~q\,
	sload => VCC,
	ena => \reg_V|R[60]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_V|R[12]~DUPLICATE_q\);

-- Location: FF_X23_Y12_N17
\reg_V|R[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \reg_V|R[12]~DUPLICATE_q\,
	sclr => \state.S_init~q\,
	sload => VCC,
	ena => \reg_V|R[60]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_V|R\(10));

-- Location: LABCELL_X23_Y12_N12
\Add1~140\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~140_combout\ = ( \Equal1~0_combout\ & ( \a_s~0_combout\ & ( \reg_Z|R\(10) ) ) ) # ( !\Equal1~0_combout\ & ( \a_s~0_combout\ & ( (\reg_V|R\(10) & !\ldZ~0_combout\) ) ) ) # ( \Equal1~0_combout\ & ( !\a_s~0_combout\ & ( !\reg_Z|R\(10) ) ) ) # ( 
-- !\Equal1~0_combout\ & ( !\a_s~0_combout\ & ( (!\reg_V|R\(10)) # (\ldZ~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100111111001111111111110000000000110000001100000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \reg_V|ALT_INV_R\(10),
	datac => \ALT_INV_ldZ~0_combout\,
	datad => \reg_Z|ALT_INV_R\(10),
	datae => \ALT_INV_Equal1~0_combout\,
	dataf => \ALT_INV_a_s~0_combout\,
	combout => \Add1~140_combout\);

-- Location: IOIBUF_X40_Y0_N18
\X[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(10),
	o => \X[10]~input_o\);

-- Location: LABCELL_X24_Y12_N6
\reg_M|R[10]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_M|R[10]~feeder_combout\ = ( \X[10]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_X[10]~input_o\,
	combout => \reg_M|R[10]~feeder_combout\);

-- Location: FF_X24_Y12_N8
\reg_M|R[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg_M|R[10]~feeder_combout\,
	asdata => \Add1~43_sumout\,
	sload => \ALT_INV_state.S_init~q\,
	ena => \reg_M|R[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_M|R\(10));

-- Location: IOIBUF_X58_Y0_N75
\X[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(9),
	o => \X[9]~input_o\);

-- Location: LABCELL_X24_Y12_N27
\reg_M|R[9]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_M|R[9]~feeder_combout\ = ( \X[9]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_X[9]~input_o\,
	combout => \reg_M|R[9]~feeder_combout\);

-- Location: FF_X24_Y12_N29
\reg_M|R[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg_M|R[9]~feeder_combout\,
	asdata => \Add1~39_sumout\,
	sload => \ALT_INV_state.S_init~q\,
	ena => \reg_M|R[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_M|R\(9));

-- Location: IOIBUF_X36_Y0_N35
\X[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(8),
	o => \X[8]~input_o\);

-- Location: MLABCELL_X25_Y13_N6
\reg_M|R[8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_M|R[8]~feeder_combout\ = ( \X[8]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_X[8]~input_o\,
	combout => \reg_M|R[8]~feeder_combout\);

-- Location: FF_X25_Y13_N8
\reg_M|R[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg_M|R[8]~feeder_combout\,
	asdata => \Add1~35_sumout\,
	sload => \ALT_INV_state.S_init~q\,
	ena => \reg_M|R[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_M|R\(8));

-- Location: FF_X24_Y13_N29
\reg_V|R[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \reg_V|R\(10),
	sclr => \state.S_init~q\,
	sload => VCC,
	ena => \reg_V|R[60]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_V|R\(8));

-- Location: LABCELL_X24_Y13_N18
\Add1~139\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~139_combout\ = ( \reg_Z|R\(8) & ( \a_s~0_combout\ & ( ((\reg_V|R\(8) & !\ldZ~0_combout\)) # (\Equal1~0_combout\) ) ) ) # ( !\reg_Z|R\(8) & ( \a_s~0_combout\ & ( (!\Equal1~0_combout\ & (\reg_V|R\(8) & !\ldZ~0_combout\)) ) ) ) # ( \reg_Z|R\(8) & ( 
-- !\a_s~0_combout\ & ( (!\Equal1~0_combout\ & ((!\reg_V|R\(8)) # (\ldZ~0_combout\))) ) ) ) # ( !\reg_Z|R\(8) & ( !\a_s~0_combout\ & ( ((!\reg_V|R\(8)) # (\ldZ~0_combout\)) # (\Equal1~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111001111111111110000001100110000001100000000000011111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Equal1~0_combout\,
	datac => \reg_V|ALT_INV_R\(8),
	datad => \ALT_INV_ldZ~0_combout\,
	datae => \reg_Z|ALT_INV_R\(8),
	dataf => \ALT_INV_a_s~0_combout\,
	combout => \Add1~139_combout\);

-- Location: IOIBUF_X54_Y0_N52
\X[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(7),
	o => \X[7]~input_o\);

-- Location: MLABCELL_X25_Y13_N18
\reg_M|R[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_M|R[7]~feeder_combout\ = \X[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_X[7]~input_o\,
	combout => \reg_M|R[7]~feeder_combout\);

-- Location: FF_X25_Y13_N20
\reg_M|R[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg_M|R[7]~feeder_combout\,
	asdata => \Add1~31_sumout\,
	sload => \ALT_INV_state.S_init~q\,
	ena => \reg_M|R[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_M|R\(7));

-- Location: FF_X24_Y13_N11
\reg_V|R[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \reg_V|R\(8),
	sclr => \state.S_init~q\,
	sload => VCC,
	ena => \reg_V|R[60]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_V|R\(6));

-- Location: LABCELL_X24_Y13_N24
\Add1~138\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~138_combout\ = ( \reg_Z|R\(6) & ( \a_s~0_combout\ & ( ((!\ldZ~0_combout\ & \reg_V|R\(6))) # (\Equal1~0_combout\) ) ) ) # ( !\reg_Z|R\(6) & ( \a_s~0_combout\ & ( (!\ldZ~0_combout\ & (!\Equal1~0_combout\ & \reg_V|R\(6))) ) ) ) # ( \reg_Z|R\(6) & ( 
-- !\a_s~0_combout\ & ( (!\Equal1~0_combout\ & ((!\reg_V|R\(6)) # (\ldZ~0_combout\))) ) ) ) # ( !\reg_Z|R\(6) & ( !\a_s~0_combout\ & ( ((!\reg_V|R\(6)) # (\Equal1~0_combout\)) # (\ldZ~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100111111111100000011000000000000110000000000111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_ldZ~0_combout\,
	datac => \ALT_INV_Equal1~0_combout\,
	datad => \reg_V|ALT_INV_R\(6),
	datae => \reg_Z|ALT_INV_R\(6),
	dataf => \ALT_INV_a_s~0_combout\,
	combout => \Add1~138_combout\);

-- Location: IOIBUF_X68_Y0_N52
\X[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(6),
	o => \X[6]~input_o\);

-- Location: MLABCELL_X25_Y13_N27
\reg_M|R[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_M|R[6]~feeder_combout\ = \X[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_X[6]~input_o\,
	combout => \reg_M|R[6]~feeder_combout\);

-- Location: FF_X25_Y13_N29
\reg_M|R[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg_M|R[6]~feeder_combout\,
	asdata => \Add1~27_sumout\,
	sload => \ALT_INV_state.S_init~q\,
	ena => \reg_M|R[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_M|R\(6));

-- Location: IOIBUF_X60_Y0_N18
\X[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(5),
	o => \X[5]~input_o\);

-- Location: MLABCELL_X25_Y13_N15
\reg_M|R[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_M|R[5]~feeder_combout\ = \X[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_X[5]~input_o\,
	combout => \reg_M|R[5]~feeder_combout\);

-- Location: FF_X25_Y13_N17
\reg_M|R[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg_M|R[5]~feeder_combout\,
	asdata => \Add1~23_sumout\,
	sload => \ALT_INV_state.S_init~q\,
	ena => \reg_M|R[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_M|R\(5));

-- Location: IOIBUF_X54_Y0_N18
\X[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(4),
	o => \X[4]~input_o\);

-- Location: MLABCELL_X25_Y13_N0
\reg_M|R[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_M|R[4]~feeder_combout\ = ( \X[4]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_X[4]~input_o\,
	combout => \reg_M|R[4]~feeder_combout\);

-- Location: LABCELL_X22_Y13_N45
\reg_Z|R[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_Z|R[4]~feeder_combout\ = ( \Add1~19_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Add1~19_sumout\,
	combout => \reg_Z|R[4]~feeder_combout\);

-- Location: FF_X22_Y13_N47
\reg_Z|R[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg_Z|R[4]~feeder_combout\,
	asdata => \reg_Z|R\(5),
	sclr => \state.S_init~q\,
	sload => \ldZ~0_combout\,
	ena => \reg_Z|R[52]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_Z|R\(4));

-- Location: FF_X23_Y13_N29
\reg_V|R[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \reg_V|R\(6),
	sclr => \state.S_init~q\,
	sload => VCC,
	ena => \reg_V|R[60]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_V|R\(4));

-- Location: LABCELL_X23_Y13_N27
\B[4]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \B[4]~2_combout\ = (!\Equal1~0_combout\ & (!\ldZ~0_combout\ & ((\reg_V|R\(4))))) # (\Equal1~0_combout\ & (((\reg_Z|R\(4)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110001101000001011000110100000101100011010000010110001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~0_combout\,
	datab => \ALT_INV_ldZ~0_combout\,
	datac => \reg_Z|ALT_INV_R\(4),
	datad => \reg_V|ALT_INV_R\(4),
	combout => \B[4]~2_combout\);

-- Location: FF_X24_Y13_N23
\reg_V|R[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \reg_V|R\(4),
	sclr => \state.S_init~q\,
	sload => VCC,
	ena => \reg_V|R[60]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_V|R\(2));

-- Location: MLABCELL_X21_Y13_N24
\i~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \i~2_combout\ = ( \Add1~11_sumout\ ) # ( !\Add1~11_sumout\ & ( \state.S_init~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_state.S_init~q\,
	dataf => \ALT_INV_Add1~11_sumout\,
	combout => \i~2_combout\);

-- Location: FF_X21_Y13_N26
\i[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \i~2_combout\,
	ena => \Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i(2));

-- Location: IOIBUF_X89_Y9_N4
\X[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(2),
	o => \X[2]~input_o\);

-- Location: MLABCELL_X25_Y13_N12
\reg_M|R[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_M|R[2]~feeder_combout\ = \X[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_X[2]~input_o\,
	combout => \reg_M|R[2]~feeder_combout\);

-- Location: FF_X25_Y13_N14
\reg_M|R[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg_M|R[2]~feeder_combout\,
	asdata => \Add1~11_sumout\,
	sload => \ALT_INV_state.S_init~q\,
	ena => \reg_M|R[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_M|R\(2));

-- Location: LABCELL_X23_Y13_N6
\A[2]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \A[2]~12_combout\ = ( \reg_M|R\(2) & ( ((!\ldZ~0_combout\ & (\reg_Z|R\(2))) # (\ldZ~0_combout\ & ((i(2))))) # (\Equal1~0_combout\) ) ) # ( !\reg_M|R\(2) & ( (!\Equal1~0_combout\ & ((!\ldZ~0_combout\ & (\reg_Z|R\(2))) # (\ldZ~0_combout\ & ((i(2)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001110000010000000111000001001111011111110100111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg_Z|ALT_INV_R\(2),
	datab => \ALT_INV_ldZ~0_combout\,
	datac => \ALT_INV_Equal1~0_combout\,
	datad => ALT_INV_i(2),
	dataf => \reg_M|ALT_INV_R\(2),
	combout => \A[2]~12_combout\);

-- Location: IOIBUF_X60_Y0_N52
\X[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(1),
	o => \X[1]~input_o\);

-- Location: MLABCELL_X25_Y13_N24
\reg_M|R[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_M|R[1]~feeder_combout\ = \X[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_X[1]~input_o\,
	combout => \reg_M|R[1]~feeder_combout\);

-- Location: LABCELL_X22_Y13_N18
\reg_Z|R[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_Z|R[1]~feeder_combout\ = ( \Add1~7_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Add1~7_sumout\,
	combout => \reg_Z|R[1]~feeder_combout\);

-- Location: FF_X22_Y13_N20
\reg_Z|R[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg_Z|R[1]~feeder_combout\,
	asdata => \reg_Z|R\(2),
	sclr => \state.S_init~q\,
	sload => \ldZ~0_combout\,
	ena => \reg_Z|R[52]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_Z|R[1]~DUPLICATE_q\);

-- Location: IOIBUF_X54_Y0_N35
\X[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(0),
	o => \X[0]~input_o\);

-- Location: MLABCELL_X25_Y13_N9
\reg_M|R[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_M|R[0]~feeder_combout\ = \X[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_X[0]~input_o\,
	combout => \reg_M|R[0]~feeder_combout\);

-- Location: FF_X25_Y13_N11
\reg_M|R[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg_M|R[0]~feeder_combout\,
	asdata => \Add1~3_sumout\,
	sload => \ALT_INV_state.S_init~q\,
	ena => \reg_M|R[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_M|R\(0));

-- Location: MLABCELL_X21_Y13_N45
\i~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \i~4_combout\ = ( \Add1~3_sumout\ ) # ( !\Add1~3_sumout\ & ( \state.S_init~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_state.S_init~q\,
	dataf => \ALT_INV_Add1~3_sumout\,
	combout => \i~4_combout\);

-- Location: FF_X21_Y13_N46
\i[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \i~4_combout\,
	ena => \Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i(0));

-- Location: LABCELL_X23_Y13_N24
\A[0]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \A[0]~10_combout\ = ( i(0) & ( (!\Equal1~0_combout\ & (((\reg_Z|R\(0))) # (\ldZ~0_combout\))) # (\Equal1~0_combout\ & (((\reg_M|R\(0))))) ) ) # ( !i(0) & ( (!\Equal1~0_combout\ & (!\ldZ~0_combout\ & (\reg_Z|R\(0)))) # (\Equal1~0_combout\ & 
-- (((\reg_M|R\(0))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001011101000010000101110100101010011111110010101001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~0_combout\,
	datab => \ALT_INV_ldZ~0_combout\,
	datac => \reg_Z|ALT_INV_R\(0),
	datad => \reg_M|ALT_INV_R\(0),
	dataf => ALT_INV_i(0),
	combout => \A[0]~10_combout\);

-- Location: FF_X23_Y13_N26
\reg_V|R[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \reg_V|R\(2),
	sclr => \state.S_init~q\,
	sload => VCC,
	ena => \reg_V|R[60]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_V|R\(0));

-- Location: LABCELL_X23_Y13_N21
\B[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \B[0]~0_combout\ = ( \Equal1~0_combout\ & ( \reg_Z|R\(0) ) ) # ( !\Equal1~0_combout\ & ( (\reg_V|R\(0)) # (\ldZ~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg_Z|ALT_INV_R\(0),
	datac => \ALT_INV_ldZ~0_combout\,
	datad => \reg_V|ALT_INV_R\(0),
	dataf => \ALT_INV_Equal1~0_combout\,
	combout => \B[0]~0_combout\);

-- Location: LABCELL_X24_Y13_N30
\Add1~132\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~132_cout\ = CARRY(( (!\state.S_1~q\ & !\state.S_5~q\) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001100110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_state.S_1~q\,
	datad => \ALT_INV_state.S_5~q\,
	cin => GND,
	cout => \Add1~132_cout\);

-- Location: LABCELL_X24_Y13_N33
\Add1~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~3_sumout\ = SUM(( !\B[0]~0_combout\ $ (((\state.S_1~q\) # (\state.S_5~q\))) ) + ( \A[0]~10_combout\ ) + ( \Add1~132_cout\ ))
-- \Add1~4\ = CARRY(( !\B[0]~0_combout\ $ (((\state.S_1~q\) # (\state.S_5~q\))) ) + ( \A[0]~10_combout\ ) + ( \Add1~132_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001000100001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.S_5~q\,
	datab => \ALT_INV_state.S_1~q\,
	datac => \ALT_INV_A[0]~10_combout\,
	datad => \ALT_INV_B[0]~0_combout\,
	cin => \Add1~132_cout\,
	sumout => \Add1~3_sumout\,
	cout => \Add1~4\);

-- Location: LABCELL_X24_Y13_N36
\Add1~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~7_sumout\ = SUM(( \A[1]~11_combout\ ) + ( (!\state.S_5~q\ & (!\state.S_1~q\ $ (((\Equal1~0_combout\ & \reg_Z|R[1]~DUPLICATE_q\))))) # (\state.S_5~q\ & (((\Equal1~0_combout\ & \reg_Z|R[1]~DUPLICATE_q\)))) ) + ( \Add1~4\ ))
-- \Add1~8\ = CARRY(( \A[1]~11_combout\ ) + ( (!\state.S_5~q\ & (!\state.S_1~q\ $ (((\Equal1~0_combout\ & \reg_Z|R[1]~DUPLICATE_q\))))) # (\state.S_5~q\ & (((\Equal1~0_combout\ & \reg_Z|R[1]~DUPLICATE_q\)))) ) + ( \Add1~4\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000011101110111100000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.S_5~q\,
	datab => \ALT_INV_state.S_1~q\,
	datac => \ALT_INV_Equal1~0_combout\,
	datad => \ALT_INV_A[1]~11_combout\,
	dataf => \reg_Z|ALT_INV_R[1]~DUPLICATE_q\,
	cin => \Add1~4\,
	sumout => \Add1~7_sumout\,
	cout => \Add1~8\);

-- Location: FF_X25_Y13_N26
\reg_M|R[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg_M|R[1]~feeder_combout\,
	asdata => \Add1~7_sumout\,
	sload => \ALT_INV_state.S_init~q\,
	ena => \reg_M|R[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_M|R\(1));

-- Location: FF_X22_Y13_N19
\reg_Z|R[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg_Z|R[1]~feeder_combout\,
	asdata => \reg_Z|R\(2),
	sclr => \state.S_init~q\,
	sload => \ldZ~0_combout\,
	ena => \reg_Z|R[52]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_Z|R\(1));

-- Location: MLABCELL_X21_Y13_N51
\i~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \i~3_combout\ = ( \Add1~7_sumout\ ) # ( !\Add1~7_sumout\ & ( \state.S_init~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_state.S_init~q\,
	dataf => \ALT_INV_Add1~7_sumout\,
	combout => \i~3_combout\);

-- Location: FF_X21_Y13_N53
\i[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \i~3_combout\,
	ena => \Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i(1));

-- Location: LABCELL_X23_Y13_N12
\A[1]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \A[1]~11_combout\ = ( \ldZ~0_combout\ & ( (!\Equal1~0_combout\ & ((i(1)))) # (\Equal1~0_combout\ & (\reg_M|R\(1))) ) ) # ( !\ldZ~0_combout\ & ( (!\Equal1~0_combout\ & ((\reg_Z|R\(1)))) # (\Equal1~0_combout\ & (\reg_M|R\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100110101001101010011010100000101111101010000010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg_M|ALT_INV_R\(1),
	datab => \reg_Z|ALT_INV_R\(1),
	datac => \ALT_INV_Equal1~0_combout\,
	datad => ALT_INV_i(1),
	dataf => \ALT_INV_ldZ~0_combout\,
	combout => \A[1]~11_combout\);

-- Location: LABCELL_X24_Y13_N39
\Add1~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~11_sumout\ = SUM(( \A[2]~12_combout\ ) + ( !\B[2]~1_combout\ $ (((\state.S_1~q\) # (\state.S_5~q\))) ) + ( \Add1~8\ ))
-- \Add1~12\ = CARRY(( \A[2]~12_combout\ ) + ( !\B[2]~1_combout\ $ (((\state.S_1~q\) # (\state.S_5~q\))) ) + ( \Add1~8\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000011110000111100000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.S_5~q\,
	datab => \ALT_INV_state.S_1~q\,
	datac => \ALT_INV_B[2]~1_combout\,
	datad => \ALT_INV_A[2]~12_combout\,
	cin => \Add1~8\,
	sumout => \Add1~11_sumout\,
	cout => \Add1~12\);

-- Location: LABCELL_X22_Y13_N30
\reg_Z|R[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_Z|R[2]~feeder_combout\ = \Add1~11_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Add1~11_sumout\,
	combout => \reg_Z|R[2]~feeder_combout\);

-- Location: FF_X22_Y13_N31
\reg_Z|R[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg_Z|R[2]~feeder_combout\,
	asdata => \reg_Z|R[3]~DUPLICATE_q\,
	sclr => \state.S_init~q\,
	sload => \ldZ~0_combout\,
	ena => \reg_Z|R[52]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_Z|R\(2));

-- Location: LABCELL_X24_Y13_N6
\B[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \B[2]~1_combout\ = ( \reg_Z|R\(2) & ( \Equal1~0_combout\ ) ) # ( \reg_Z|R\(2) & ( !\Equal1~0_combout\ & ( (\reg_V|R\(2) & !\ldZ~0_combout\) ) ) ) # ( !\reg_Z|R\(2) & ( !\Equal1~0_combout\ & ( (\reg_V|R\(2) & !\ldZ~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \reg_V|ALT_INV_R\(2),
	datad => \ALT_INV_ldZ~0_combout\,
	datae => \reg_Z|ALT_INV_R\(2),
	dataf => \ALT_INV_Equal1~0_combout\,
	combout => \B[2]~1_combout\);

-- Location: LABCELL_X24_Y13_N42
\Add1~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~15_sumout\ = SUM(( \A[3]~13_combout\ ) + ( (!\state.S_5~q\ & (!\state.S_1~q\ $ (((\Equal1~0_combout\ & \reg_Z|R[3]~DUPLICATE_q\))))) # (\state.S_5~q\ & (((\Equal1~0_combout\ & \reg_Z|R[3]~DUPLICATE_q\)))) ) + ( \Add1~12\ ))
-- \Add1~16\ = CARRY(( \A[3]~13_combout\ ) + ( (!\state.S_5~q\ & (!\state.S_1~q\ $ (((\Equal1~0_combout\ & \reg_Z|R[3]~DUPLICATE_q\))))) # (\state.S_5~q\ & (((\Equal1~0_combout\ & \reg_Z|R[3]~DUPLICATE_q\)))) ) + ( \Add1~12\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000011101110111100000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.S_5~q\,
	datab => \ALT_INV_state.S_1~q\,
	datac => \ALT_INV_Equal1~0_combout\,
	datad => \ALT_INV_A[3]~13_combout\,
	dataf => \reg_Z|ALT_INV_R[3]~DUPLICATE_q\,
	cin => \Add1~12\,
	sumout => \Add1~15_sumout\,
	cout => \Add1~16\);

-- Location: LABCELL_X22_Y13_N0
\reg_Z|R[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_Z|R[3]~feeder_combout\ = ( \Add1~15_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Add1~15_sumout\,
	combout => \reg_Z|R[3]~feeder_combout\);

-- Location: FF_X22_Y13_N2
\reg_Z|R[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg_Z|R[3]~feeder_combout\,
	asdata => \reg_Z|R\(4),
	sclr => \state.S_init~q\,
	sload => \ldZ~0_combout\,
	ena => \reg_Z|R[52]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_Z|R[3]~DUPLICATE_q\);

-- Location: IOIBUF_X60_Y0_N35
\X[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(3),
	o => \X[3]~input_o\);

-- Location: MLABCELL_X25_Y13_N21
\reg_M|R[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_M|R[3]~feeder_combout\ = \X[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_X[3]~input_o\,
	combout => \reg_M|R[3]~feeder_combout\);

-- Location: FF_X25_Y13_N23
\reg_M|R[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg_M|R[3]~feeder_combout\,
	asdata => \Add1~15_sumout\,
	sload => \ALT_INV_state.S_init~q\,
	ena => \reg_M|R[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_M|R\(3));

-- Location: FF_X24_Y13_N5
\i[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \i~1_combout\,
	ena => \Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i(3));

-- Location: LABCELL_X24_Y13_N0
\A[3]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \A[3]~13_combout\ = ( \Equal1~0_combout\ & ( \reg_M|R\(3) ) ) # ( !\Equal1~0_combout\ & ( (!\ldZ~0_combout\ & (\reg_Z|R[3]~DUPLICATE_q\)) # (\ldZ~0_combout\ & ((i(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001110111010001000111011100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg_Z|ALT_INV_R[3]~DUPLICATE_q\,
	datab => \ALT_INV_ldZ~0_combout\,
	datac => \reg_M|ALT_INV_R\(3),
	datad => ALT_INV_i(3),
	dataf => \ALT_INV_Equal1~0_combout\,
	combout => \A[3]~13_combout\);

-- Location: LABCELL_X24_Y13_N45
\Add1~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~19_sumout\ = SUM(( !\B[4]~2_combout\ $ (((\state.S_1~q\) # (\state.S_5~q\))) ) + ( \A[4]~14_combout\ ) + ( \Add1~16\ ))
-- \Add1~20\ = CARRY(( !\B[4]~2_combout\ $ (((\state.S_1~q\) # (\state.S_5~q\))) ) + ( \A[4]~14_combout\ ) + ( \Add1~16\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001000100001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.S_5~q\,
	datab => \ALT_INV_state.S_1~q\,
	datac => \ALT_INV_A[4]~14_combout\,
	datad => \ALT_INV_B[4]~2_combout\,
	cin => \Add1~16\,
	sumout => \Add1~19_sumout\,
	cout => \Add1~20\);

-- Location: FF_X25_Y13_N2
\reg_M|R[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg_M|R[4]~feeder_combout\,
	asdata => \Add1~19_sumout\,
	sload => \ALT_INV_state.S_init~q\,
	ena => \reg_M|R[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_M|R\(4));

-- Location: LABCELL_X24_Y13_N15
\i~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i~0_combout\ = (\state.S_init~q\) # (\Add1~19_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111100001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add1~19_sumout\,
	datad => \ALT_INV_state.S_init~q\,
	combout => \i~0_combout\);

-- Location: FF_X24_Y13_N16
\i[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \i~0_combout\,
	ena => \Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i(4));

-- Location: LABCELL_X24_Y13_N12
\A[4]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \A[4]~14_combout\ = ( \Equal1~0_combout\ & ( \reg_M|R\(4) ) ) # ( !\Equal1~0_combout\ & ( (!\ldZ~0_combout\ & (\reg_Z|R\(4))) # (\ldZ~0_combout\ & ((i(4)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000111111000011000011111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg_M|ALT_INV_R\(4),
	datab => \ALT_INV_ldZ~0_combout\,
	datac => \reg_Z|ALT_INV_R\(4),
	datad => ALT_INV_i(4),
	dataf => \ALT_INV_Equal1~0_combout\,
	combout => \A[4]~14_combout\);

-- Location: LABCELL_X24_Y13_N48
\Add1~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~23_sumout\ = SUM(( (!\Equal1~0_combout\ & (!\ldZ~0_combout\ & (\reg_Z|R\(5)))) # (\Equal1~0_combout\ & (((\reg_M|R\(5))))) ) + ( !\a_s~0_combout\ $ (((!\Equal1~0_combout\) # (!\reg_Z|R\(5)))) ) + ( \Add1~20\ ))
-- \Add1~24\ = CARRY(( (!\Equal1~0_combout\ & (!\ldZ~0_combout\ & (\reg_Z|R\(5)))) # (\Equal1~0_combout\ & (((\reg_M|R\(5))))) ) + ( !\a_s~0_combout\ $ (((!\Equal1~0_combout\) # (!\reg_Z|R\(5)))) ) + ( \Add1~20\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100000010100000000000000000000100001011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~0_combout\,
	datab => \ALT_INV_ldZ~0_combout\,
	datac => \reg_Z|ALT_INV_R\(5),
	datad => \reg_M|ALT_INV_R\(5),
	dataf => \ALT_INV_a_s~0_combout\,
	cin => \Add1~20\,
	sumout => \Add1~23_sumout\,
	cout => \Add1~24\);

-- Location: LABCELL_X22_Y13_N54
\reg_Z|R[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_Z|R[5]~feeder_combout\ = ( \Add1~23_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Add1~23_sumout\,
	combout => \reg_Z|R[5]~feeder_combout\);

-- Location: FF_X22_Y13_N55
\reg_Z|R[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg_Z|R[5]~feeder_combout\,
	asdata => \reg_Z|R\(6),
	sclr => \state.S_init~q\,
	sload => \ldZ~0_combout\,
	ena => \reg_Z|R[52]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_Z|R\(5));

-- Location: LABCELL_X24_Y13_N51
\Add1~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~27_sumout\ = SUM(( !\Add1~138_combout\ ) + ( (!\Equal1~0_combout\ & (!\ldZ~0_combout\ & (\reg_Z|R\(6)))) # (\Equal1~0_combout\ & (((\reg_M|R\(6))))) ) + ( \Add1~24\ ))
-- \Add1~28\ = CARRY(( !\Add1~138_combout\ ) + ( (!\Equal1~0_combout\ & (!\ldZ~0_combout\ & (\reg_Z|R\(6)))) # (\Equal1~0_combout\ & (((\reg_M|R\(6))))) ) + ( \Add1~24\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111101111010001000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~0_combout\,
	datab => \ALT_INV_ldZ~0_combout\,
	datac => \reg_Z|ALT_INV_R\(6),
	datad => \ALT_INV_Add1~138_combout\,
	dataf => \reg_M|ALT_INV_R\(6),
	cin => \Add1~24\,
	sumout => \Add1~27_sumout\,
	cout => \Add1~28\);

-- Location: LABCELL_X22_Y13_N39
\reg_Z|R[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_Z|R[6]~feeder_combout\ = ( \Add1~27_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Add1~27_sumout\,
	combout => \reg_Z|R[6]~feeder_combout\);

-- Location: FF_X22_Y13_N58
\reg_Z|R[7]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg_Z|R[7]~feeder_combout\,
	asdata => \reg_Z|R\(8),
	sclr => \state.S_init~q\,
	sload => \ldZ~0_combout\,
	ena => \reg_Z|R[52]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_Z|R[7]~DUPLICATE_q\);

-- Location: FF_X22_Y13_N40
\reg_Z|R[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg_Z|R[6]~feeder_combout\,
	asdata => \reg_Z|R[7]~DUPLICATE_q\,
	sclr => \state.S_init~q\,
	sload => \ldZ~0_combout\,
	ena => \reg_Z|R[52]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_Z|R\(6));

-- Location: LABCELL_X24_Y13_N54
\Add1~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~31_sumout\ = SUM(( (!\Equal1~0_combout\ & (!\ldZ~0_combout\ & (\reg_Z|R\(7)))) # (\Equal1~0_combout\ & (((\reg_M|R\(7))))) ) + ( !\a_s~0_combout\ $ (((!\Equal1~0_combout\) # (!\reg_Z|R\(7)))) ) + ( \Add1~28\ ))
-- \Add1~32\ = CARRY(( (!\Equal1~0_combout\ & (!\ldZ~0_combout\ & (\reg_Z|R\(7)))) # (\Equal1~0_combout\ & (((\reg_M|R\(7))))) ) + ( !\a_s~0_combout\ $ (((!\Equal1~0_combout\) # (!\reg_Z|R\(7)))) ) + ( \Add1~28\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100000010100000000000000000000100001011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~0_combout\,
	datab => \ALT_INV_ldZ~0_combout\,
	datac => \reg_Z|ALT_INV_R\(7),
	datad => \reg_M|ALT_INV_R\(7),
	dataf => \ALT_INV_a_s~0_combout\,
	cin => \Add1~28\,
	sumout => \Add1~31_sumout\,
	cout => \Add1~32\);

-- Location: LABCELL_X22_Y13_N57
\reg_Z|R[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_Z|R[7]~feeder_combout\ = ( \Add1~31_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Add1~31_sumout\,
	combout => \reg_Z|R[7]~feeder_combout\);

-- Location: FF_X22_Y13_N59
\reg_Z|R[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg_Z|R[7]~feeder_combout\,
	asdata => \reg_Z|R\(8),
	sclr => \state.S_init~q\,
	sload => \ldZ~0_combout\,
	ena => \reg_Z|R[52]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_Z|R\(7));

-- Location: LABCELL_X24_Y13_N57
\Add1~35\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~35_sumout\ = SUM(( (!\Equal1~0_combout\ & (!\ldZ~0_combout\ & (\reg_Z|R\(8)))) # (\Equal1~0_combout\ & (((\reg_M|R\(8))))) ) + ( !\Add1~139_combout\ ) + ( \Add1~32\ ))
-- \Add1~36\ = CARRY(( (!\Equal1~0_combout\ & (!\ldZ~0_combout\ & (\reg_Z|R\(8)))) # (\Equal1~0_combout\ & (((\reg_M|R\(8))))) ) + ( !\Add1~139_combout\ ) + ( \Add1~32\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000100001011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~0_combout\,
	datab => \ALT_INV_ldZ~0_combout\,
	datac => \reg_Z|ALT_INV_R\(8),
	datad => \reg_M|ALT_INV_R\(8),
	dataf => \ALT_INV_Add1~139_combout\,
	cin => \Add1~32\,
	sumout => \Add1~35_sumout\,
	cout => \Add1~36\);

-- Location: LABCELL_X22_Y13_N9
\reg_Z|R[8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_Z|R[8]~feeder_combout\ = ( \Add1~35_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Add1~35_sumout\,
	combout => \reg_Z|R[8]~feeder_combout\);

-- Location: FF_X25_Y12_N31
\reg_Z|R[9]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg_Z|R[9]~feeder_combout\,
	asdata => \reg_Z|R\(10),
	sclr => \state.S_init~q\,
	sload => \ldZ~0_combout\,
	ena => \reg_Z|R[52]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_Z|R[9]~DUPLICATE_q\);

-- Location: FF_X22_Y13_N10
\reg_Z|R[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg_Z|R[8]~feeder_combout\,
	asdata => \reg_Z|R[9]~DUPLICATE_q\,
	sclr => \state.S_init~q\,
	sload => \ldZ~0_combout\,
	ena => \reg_Z|R[52]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_Z|R\(8));

-- Location: LABCELL_X24_Y12_N30
\Add1~39\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~39_sumout\ = SUM(( !\a_s~0_combout\ $ (((!\Equal1~0_combout\) # (!\reg_Z|R\(9)))) ) + ( (!\Equal1~0_combout\ & (!\ldZ~0_combout\ & (\reg_Z|R\(9)))) # (\Equal1~0_combout\ & (((\reg_M|R\(9))))) ) + ( \Add1~36\ ))
-- \Add1~40\ = CARRY(( !\a_s~0_combout\ $ (((!\Equal1~0_combout\) # (!\reg_Z|R\(9)))) ) + ( (!\Equal1~0_combout\ & (!\ldZ~0_combout\ & (\reg_Z|R\(9)))) # (\Equal1~0_combout\ & (((\reg_M|R\(9))))) ) + ( \Add1~36\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111101111100010000000000000000000000001111111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ldZ~0_combout\,
	datab => \ALT_INV_Equal1~0_combout\,
	datac => \reg_Z|ALT_INV_R\(9),
	datad => \ALT_INV_a_s~0_combout\,
	dataf => \reg_M|ALT_INV_R\(9),
	cin => \Add1~36\,
	sumout => \Add1~39_sumout\,
	cout => \Add1~40\);

-- Location: MLABCELL_X25_Y12_N30
\reg_Z|R[9]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_Z|R[9]~feeder_combout\ = \Add1~39_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add1~39_sumout\,
	combout => \reg_Z|R[9]~feeder_combout\);

-- Location: FF_X25_Y12_N32
\reg_Z|R[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg_Z|R[9]~feeder_combout\,
	asdata => \reg_Z|R\(10),
	sclr => \state.S_init~q\,
	sload => \ldZ~0_combout\,
	ena => \reg_Z|R[52]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_Z|R\(9));

-- Location: LABCELL_X24_Y12_N33
\Add1~43\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~43_sumout\ = SUM(( !\Add1~140_combout\ ) + ( (!\Equal1~0_combout\ & (!\ldZ~0_combout\ & (\reg_Z|R\(10)))) # (\Equal1~0_combout\ & (((\reg_M|R\(10))))) ) + ( \Add1~40\ ))
-- \Add1~44\ = CARRY(( !\Add1~140_combout\ ) + ( (!\Equal1~0_combout\ & (!\ldZ~0_combout\ & (\reg_Z|R\(10)))) # (\Equal1~0_combout\ & (((\reg_M|R\(10))))) ) + ( \Add1~40\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111101111100010000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ldZ~0_combout\,
	datab => \ALT_INV_Equal1~0_combout\,
	datac => \reg_Z|ALT_INV_R\(10),
	datad => \ALT_INV_Add1~140_combout\,
	dataf => \reg_M|ALT_INV_R\(10),
	cin => \Add1~40\,
	sumout => \Add1~43_sumout\,
	cout => \Add1~44\);

-- Location: MLABCELL_X25_Y12_N51
\reg_Z|R[10]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_Z|R[10]~feeder_combout\ = \Add1~43_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add1~43_sumout\,
	combout => \reg_Z|R[10]~feeder_combout\);

-- Location: FF_X25_Y12_N52
\reg_Z|R[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg_Z|R[10]~feeder_combout\,
	asdata => \reg_Z|R\(11),
	sclr => \state.S_init~q\,
	sload => \ldZ~0_combout\,
	ena => \reg_Z|R[52]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_Z|R\(10));

-- Location: LABCELL_X24_Y12_N36
\Add1~47\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~47_sumout\ = SUM(( !\a_s~0_combout\ $ (((!\Equal1~0_combout\) # (!\reg_Z|R\(11)))) ) + ( (!\Equal1~0_combout\ & (!\ldZ~0_combout\ & (\reg_Z|R\(11)))) # (\Equal1~0_combout\ & (((\reg_M|R\(11))))) ) + ( \Add1~44\ ))
-- \Add1~48\ = CARRY(( !\a_s~0_combout\ $ (((!\Equal1~0_combout\) # (!\reg_Z|R\(11)))) ) + ( (!\Equal1~0_combout\ & (!\ldZ~0_combout\ & (\reg_Z|R\(11)))) # (\Equal1~0_combout\ & (((\reg_M|R\(11))))) ) + ( \Add1~44\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111101111010001000000000000000000000010111111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~0_combout\,
	datab => \ALT_INV_ldZ~0_combout\,
	datac => \reg_Z|ALT_INV_R\(11),
	datad => \ALT_INV_a_s~0_combout\,
	dataf => \reg_M|ALT_INV_R\(11),
	cin => \Add1~44\,
	sumout => \Add1~47_sumout\,
	cout => \Add1~48\);

-- Location: MLABCELL_X25_Y12_N54
\reg_Z|R[11]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_Z|R[11]~feeder_combout\ = \Add1~47_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add1~47_sumout\,
	combout => \reg_Z|R[11]~feeder_combout\);

-- Location: FF_X25_Y12_N56
\reg_Z|R[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg_Z|R[11]~feeder_combout\,
	asdata => \reg_Z|R[12]~DUPLICATE_q\,
	sclr => \state.S_init~q\,
	sload => \ldZ~0_combout\,
	ena => \reg_Z|R[52]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_Z|R\(11));

-- Location: LABCELL_X24_Y12_N39
\Add1~51\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~51_sumout\ = SUM(( (!\Equal1~0_combout\ & (!\ldZ~0_combout\ & (\reg_Z|R\(12)))) # (\Equal1~0_combout\ & (((\reg_M|R\(12))))) ) + ( !\Add1~141_combout\ ) + ( \Add1~48\ ))
-- \Add1~52\ = CARRY(( (!\Equal1~0_combout\ & (!\ldZ~0_combout\ & (\reg_Z|R\(12)))) # (\Equal1~0_combout\ & (((\reg_M|R\(12))))) ) + ( !\Add1~141_combout\ ) + ( \Add1~48\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000100001011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~0_combout\,
	datab => \ALT_INV_ldZ~0_combout\,
	datac => \reg_Z|ALT_INV_R\(12),
	datad => \reg_M|ALT_INV_R\(12),
	dataf => \ALT_INV_Add1~141_combout\,
	cin => \Add1~48\,
	sumout => \Add1~51_sumout\,
	cout => \Add1~52\);

-- Location: LABCELL_X22_Y12_N0
\reg_Z|R[12]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_Z|R[12]~feeder_combout\ = ( \Add1~51_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Add1~51_sumout\,
	combout => \reg_Z|R[12]~feeder_combout\);

-- Location: FF_X22_Y12_N2
\reg_Z|R[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg_Z|R[12]~feeder_combout\,
	asdata => \reg_Z|R\(13),
	sclr => \state.S_init~q\,
	sload => \ldZ~0_combout\,
	ena => \reg_Z|R[52]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_Z|R\(12));

-- Location: LABCELL_X24_Y12_N42
\Add1~55\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~55_sumout\ = SUM(( !\a_s~0_combout\ $ (((!\Equal1~0_combout\) # (!\reg_Z|R\(13)))) ) + ( (!\Equal1~0_combout\ & (!\ldZ~0_combout\ & (\reg_Z|R\(13)))) # (\Equal1~0_combout\ & (((\reg_M|R\(13))))) ) + ( \Add1~52\ ))
-- \Add1~56\ = CARRY(( !\a_s~0_combout\ $ (((!\Equal1~0_combout\) # (!\reg_Z|R\(13)))) ) + ( (!\Equal1~0_combout\ & (!\ldZ~0_combout\ & (\reg_Z|R\(13)))) # (\Equal1~0_combout\ & (((\reg_M|R\(13))))) ) + ( \Add1~52\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111101111010001000000000000000000000010111111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~0_combout\,
	datab => \ALT_INV_ldZ~0_combout\,
	datac => \reg_Z|ALT_INV_R\(13),
	datad => \ALT_INV_a_s~0_combout\,
	dataf => \reg_M|ALT_INV_R\(13),
	cin => \Add1~52\,
	sumout => \Add1~55_sumout\,
	cout => \Add1~56\);

-- Location: MLABCELL_X25_Y12_N48
\reg_Z|R[13]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_Z|R[13]~feeder_combout\ = \Add1~55_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Add1~55_sumout\,
	combout => \reg_Z|R[13]~feeder_combout\);

-- Location: FF_X25_Y12_N50
\reg_Z|R[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg_Z|R[13]~feeder_combout\,
	asdata => \reg_Z|R[14]~DUPLICATE_q\,
	sclr => \state.S_init~q\,
	sload => \ldZ~0_combout\,
	ena => \reg_Z|R[52]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_Z|R\(13));

-- Location: LABCELL_X24_Y12_N45
\Add1~59\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~59_sumout\ = SUM(( !\Add1~142_combout\ ) + ( (!\Equal1~0_combout\ & (!\ldZ~0_combout\ & (\reg_Z|R[14]~DUPLICATE_q\))) # (\Equal1~0_combout\ & (((\reg_M|R\(14))))) ) + ( \Add1~56\ ))
-- \Add1~60\ = CARRY(( !\Add1~142_combout\ ) + ( (!\Equal1~0_combout\ & (!\ldZ~0_combout\ & (\reg_Z|R[14]~DUPLICATE_q\))) # (\Equal1~0_combout\ & (((\reg_M|R\(14))))) ) + ( \Add1~56\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111101111010001000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~0_combout\,
	datab => \ALT_INV_ldZ~0_combout\,
	datac => \reg_Z|ALT_INV_R[14]~DUPLICATE_q\,
	datad => \ALT_INV_Add1~142_combout\,
	dataf => \reg_M|ALT_INV_R\(14),
	cin => \Add1~56\,
	sumout => \Add1~59_sumout\,
	cout => \Add1~60\);

-- Location: LABCELL_X22_Y12_N57
\reg_Z|R[14]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_Z|R[14]~feeder_combout\ = ( \Add1~59_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Add1~59_sumout\,
	combout => \reg_Z|R[14]~feeder_combout\);

-- Location: FF_X22_Y12_N59
\reg_Z|R[14]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg_Z|R[14]~feeder_combout\,
	asdata => \reg_Z|R[15]~DUPLICATE_q\,
	sclr => \state.S_init~q\,
	sload => \ldZ~0_combout\,
	ena => \reg_Z|R[52]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_Z|R[14]~DUPLICATE_q\);

-- Location: LABCELL_X24_Y12_N48
\Add1~63\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~63_sumout\ = SUM(( !\a_s~0_combout\ $ (((!\Equal1~0_combout\) # (!\reg_Z|R\(15)))) ) + ( (!\Equal1~0_combout\ & (!\ldZ~0_combout\ & (\reg_Z|R\(15)))) # (\Equal1~0_combout\ & (((\reg_M|R\(15))))) ) + ( \Add1~60\ ))
-- \Add1~64\ = CARRY(( !\a_s~0_combout\ $ (((!\Equal1~0_combout\) # (!\reg_Z|R\(15)))) ) + ( (!\Equal1~0_combout\ & (!\ldZ~0_combout\ & (\reg_Z|R\(15)))) # (\Equal1~0_combout\ & (((\reg_M|R\(15))))) ) + ( \Add1~60\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111101111010001000000000000000000000010111111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~0_combout\,
	datab => \ALT_INV_ldZ~0_combout\,
	datac => \reg_Z|ALT_INV_R\(15),
	datad => \ALT_INV_a_s~0_combout\,
	dataf => \reg_M|ALT_INV_R\(15),
	cin => \Add1~60\,
	sumout => \Add1~63_sumout\,
	cout => \Add1~64\);

-- Location: MLABCELL_X25_Y12_N36
\reg_Z|R[15]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_Z|R[15]~feeder_combout\ = ( \Add1~63_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Add1~63_sumout\,
	combout => \reg_Z|R[15]~feeder_combout\);

-- Location: FF_X25_Y12_N38
\reg_Z|R[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg_Z|R[15]~feeder_combout\,
	asdata => \reg_Z|R\(16),
	sclr => \state.S_init~q\,
	sload => \ldZ~0_combout\,
	ena => \reg_Z|R[52]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_Z|R\(15));

-- Location: LABCELL_X24_Y12_N51
\Add1~67\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~67_sumout\ = SUM(( !\Add1~143_combout\ ) + ( (!\Equal1~0_combout\ & (!\ldZ~0_combout\ & (\reg_Z|R[16]~DUPLICATE_q\))) # (\Equal1~0_combout\ & (((\reg_M|R\(16))))) ) + ( \Add1~64\ ))
-- \Add1~68\ = CARRY(( !\Add1~143_combout\ ) + ( (!\Equal1~0_combout\ & (!\ldZ~0_combout\ & (\reg_Z|R[16]~DUPLICATE_q\))) # (\Equal1~0_combout\ & (((\reg_M|R\(16))))) ) + ( \Add1~64\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111101111010001000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~0_combout\,
	datab => \ALT_INV_ldZ~0_combout\,
	datac => \reg_Z|ALT_INV_R[16]~DUPLICATE_q\,
	datad => \ALT_INV_Add1~143_combout\,
	dataf => \reg_M|ALT_INV_R\(16),
	cin => \Add1~64\,
	sumout => \Add1~67_sumout\,
	cout => \Add1~68\);

-- Location: MLABCELL_X25_Y12_N45
\reg_Z|R[16]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_Z|R[16]~feeder_combout\ = ( \Add1~67_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Add1~67_sumout\,
	combout => \reg_Z|R[16]~feeder_combout\);

-- Location: FF_X25_Y12_N46
\reg_Z|R[16]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg_Z|R[16]~feeder_combout\,
	asdata => \reg_Z|R\(17),
	sclr => \state.S_init~q\,
	sload => \ldZ~0_combout\,
	ena => \reg_Z|R[52]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_Z|R[16]~DUPLICATE_q\);

-- Location: LABCELL_X24_Y12_N54
\Add1~71\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~71_sumout\ = SUM(( !\a_s~0_combout\ $ (((!\Equal1~0_combout\) # (!\reg_Z|R\(17)))) ) + ( (!\Equal1~0_combout\ & (!\ldZ~0_combout\ & (\reg_Z|R\(17)))) # (\Equal1~0_combout\ & (((\reg_M|R\(17))))) ) + ( \Add1~68\ ))
-- \Add1~72\ = CARRY(( !\a_s~0_combout\ $ (((!\Equal1~0_combout\) # (!\reg_Z|R\(17)))) ) + ( (!\Equal1~0_combout\ & (!\ldZ~0_combout\ & (\reg_Z|R\(17)))) # (\Equal1~0_combout\ & (((\reg_M|R\(17))))) ) + ( \Add1~68\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111101111010001000000000000000000000010111111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~0_combout\,
	datab => \ALT_INV_ldZ~0_combout\,
	datac => \reg_Z|ALT_INV_R\(17),
	datad => \ALT_INV_a_s~0_combout\,
	dataf => \reg_M|ALT_INV_R\(17),
	cin => \Add1~68\,
	sumout => \Add1~71_sumout\,
	cout => \Add1~72\);

-- Location: MLABCELL_X25_Y12_N57
\reg_Z|R[17]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_Z|R[17]~feeder_combout\ = ( \Add1~71_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Add1~71_sumout\,
	combout => \reg_Z|R[17]~feeder_combout\);

-- Location: FF_X25_Y12_N58
\reg_Z|R[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg_Z|R[17]~feeder_combout\,
	asdata => \reg_Z|R\(18),
	sclr => \state.S_init~q\,
	sload => \ldZ~0_combout\,
	ena => \reg_Z|R[52]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_Z|R\(17));

-- Location: LABCELL_X24_Y12_N57
\Add1~75\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~75_sumout\ = SUM(( !\Add1~144_combout\ ) + ( (!\Equal1~0_combout\ & (!\ldZ~0_combout\ & (\reg_Z|R\(18)))) # (\Equal1~0_combout\ & (((\reg_M|R\(18))))) ) + ( \Add1~72\ ))
-- \Add1~76\ = CARRY(( !\Add1~144_combout\ ) + ( (!\Equal1~0_combout\ & (!\ldZ~0_combout\ & (\reg_Z|R\(18)))) # (\Equal1~0_combout\ & (((\reg_M|R\(18))))) ) + ( \Add1~72\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111101111010001000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~0_combout\,
	datab => \ALT_INV_ldZ~0_combout\,
	datac => \reg_Z|ALT_INV_R\(18),
	datad => \ALT_INV_Add1~144_combout\,
	dataf => \reg_M|ALT_INV_R\(18),
	cin => \Add1~72\,
	sumout => \Add1~75_sumout\,
	cout => \Add1~76\);

-- Location: LABCELL_X22_Y12_N48
\reg_Z|R[18]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_Z|R[18]~feeder_combout\ = ( \Add1~75_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Add1~75_sumout\,
	combout => \reg_Z|R[18]~feeder_combout\);

-- Location: FF_X22_Y12_N49
\reg_Z|R[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg_Z|R[18]~feeder_combout\,
	asdata => \reg_Z|R\(19),
	sclr => \state.S_init~q\,
	sload => \ldZ~0_combout\,
	ena => \reg_Z|R[52]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_Z|R\(18));

-- Location: LABCELL_X24_Y11_N30
\Add1~79\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~79_sumout\ = SUM(( (!\Equal1~0_combout\ & (!\ldZ~0_combout\ & (\reg_Z|R\(19)))) # (\Equal1~0_combout\ & (((\reg_M|R\(19))))) ) + ( !\a_s~0_combout\ $ (((!\Equal1~0_combout\) # (!\reg_Z|R\(19)))) ) + ( \Add1~76\ ))
-- \Add1~80\ = CARRY(( (!\Equal1~0_combout\ & (!\ldZ~0_combout\ & (\reg_Z|R\(19)))) # (\Equal1~0_combout\ & (((\reg_M|R\(19))))) ) + ( !\a_s~0_combout\ $ (((!\Equal1~0_combout\) # (!\reg_Z|R\(19)))) ) + ( \Add1~76\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111000000001100000000000000000000100000111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ldZ~0_combout\,
	datab => \ALT_INV_Equal1~0_combout\,
	datac => \reg_Z|ALT_INV_R\(19),
	datad => \reg_M|ALT_INV_R\(19),
	dataf => \ALT_INV_a_s~0_combout\,
	cin => \Add1~76\,
	sumout => \Add1~79_sumout\,
	cout => \Add1~80\);

-- Location: LABCELL_X27_Y11_N3
\reg_Z|R[19]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_Z|R[19]~feeder_combout\ = ( \Add1~79_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Add1~79_sumout\,
	combout => \reg_Z|R[19]~feeder_combout\);

-- Location: FF_X27_Y11_N5
\reg_Z|R[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg_Z|R[19]~feeder_combout\,
	asdata => \reg_Z|R\(20),
	sclr => \state.S_init~q\,
	sload => \ldZ~0_combout\,
	ena => \reg_Z|R[52]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_Z|R\(19));

-- Location: LABCELL_X24_Y11_N33
\Add1~83\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~83_sumout\ = SUM(( (!\Equal1~0_combout\ & (!\ldZ~0_combout\ & (\reg_Z|R\(20)))) # (\Equal1~0_combout\ & (((\reg_M|R\(20))))) ) + ( !\Add1~145_combout\ ) + ( \Add1~80\ ))
-- \Add1~84\ = CARRY(( (!\Equal1~0_combout\ & (!\ldZ~0_combout\ & (\reg_Z|R\(20)))) # (\Equal1~0_combout\ & (((\reg_M|R\(20))))) ) + ( !\Add1~145_combout\ ) + ( \Add1~80\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000100000111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ldZ~0_combout\,
	datab => \ALT_INV_Equal1~0_combout\,
	datac => \reg_Z|ALT_INV_R\(20),
	datad => \reg_M|ALT_INV_R\(20),
	dataf => \ALT_INV_Add1~145_combout\,
	cin => \Add1~80\,
	sumout => \Add1~83_sumout\,
	cout => \Add1~84\);

-- Location: MLABCELL_X25_Y11_N30
\reg_Z|R[20]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_Z|R[20]~feeder_combout\ = \Add1~83_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Add1~83_sumout\,
	combout => \reg_Z|R[20]~feeder_combout\);

-- Location: FF_X25_Y11_N32
\reg_Z|R[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg_Z|R[20]~feeder_combout\,
	asdata => \reg_Z|R\(21),
	sclr => \state.S_init~q\,
	sload => \ldZ~0_combout\,
	ena => \reg_Z|R[52]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_Z|R\(20));

-- Location: LABCELL_X24_Y11_N36
\Add1~87\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~87_sumout\ = SUM(( (!\Equal1~0_combout\ & (!\ldZ~0_combout\ & (\reg_Z|R\(21)))) # (\Equal1~0_combout\ & (((\reg_M|R\(21))))) ) + ( !\a_s~0_combout\ $ (((!\Equal1~0_combout\) # (!\reg_Z|R\(21)))) ) + ( \Add1~84\ ))
-- \Add1~88\ = CARRY(( (!\Equal1~0_combout\ & (!\ldZ~0_combout\ & (\reg_Z|R\(21)))) # (\Equal1~0_combout\ & (((\reg_M|R\(21))))) ) + ( !\a_s~0_combout\ $ (((!\Equal1~0_combout\) # (!\reg_Z|R\(21)))) ) + ( \Add1~84\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111000000001100000000000000000000100000111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ldZ~0_combout\,
	datab => \ALT_INV_Equal1~0_combout\,
	datac => \reg_Z|ALT_INV_R\(21),
	datad => \reg_M|ALT_INV_R\(21),
	dataf => \ALT_INV_a_s~0_combout\,
	cin => \Add1~84\,
	sumout => \Add1~87_sumout\,
	cout => \Add1~88\);

-- Location: LABCELL_X27_Y11_N6
\reg_Z|R[21]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_Z|R[21]~feeder_combout\ = ( \Add1~87_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Add1~87_sumout\,
	combout => \reg_Z|R[21]~feeder_combout\);

-- Location: FF_X27_Y11_N7
\reg_Z|R[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg_Z|R[21]~feeder_combout\,
	asdata => \reg_Z|R[22]~DUPLICATE_q\,
	sclr => \state.S_init~q\,
	sload => \ldZ~0_combout\,
	ena => \reg_Z|R[52]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_Z|R\(21));

-- Location: LABCELL_X24_Y11_N39
\Add1~91\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~91_sumout\ = SUM(( !\Add1~146_combout\ ) + ( (!\Equal1~0_combout\ & (!\ldZ~0_combout\ & (\reg_Z|R[22]~DUPLICATE_q\))) # (\Equal1~0_combout\ & (((\reg_M|R\(22))))) ) + ( \Add1~88\ ))
-- \Add1~92\ = CARRY(( !\Add1~146_combout\ ) + ( (!\Equal1~0_combout\ & (!\ldZ~0_combout\ & (\reg_Z|R[22]~DUPLICATE_q\))) # (\Equal1~0_combout\ & (((\reg_M|R\(22))))) ) + ( \Add1~88\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111101111100010000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ldZ~0_combout\,
	datab => \ALT_INV_Equal1~0_combout\,
	datac => \reg_Z|ALT_INV_R[22]~DUPLICATE_q\,
	datad => \ALT_INV_Add1~146_combout\,
	dataf => \reg_M|ALT_INV_R\(22),
	cin => \Add1~88\,
	sumout => \Add1~91_sumout\,
	cout => \Add1~92\);

-- Location: MLABCELL_X25_Y11_N36
\reg_Z|R[22]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_Z|R[22]~feeder_combout\ = ( \Add1~91_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Add1~91_sumout\,
	combout => \reg_Z|R[22]~feeder_combout\);

-- Location: FF_X25_Y11_N37
\reg_Z|R[22]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg_Z|R[22]~feeder_combout\,
	asdata => \reg_Z|R[23]~DUPLICATE_q\,
	sclr => \state.S_init~q\,
	sload => \ldZ~0_combout\,
	ena => \reg_Z|R[52]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_Z|R[22]~DUPLICATE_q\);

-- Location: LABCELL_X24_Y11_N42
\Add1~95\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~95_sumout\ = SUM(( (!\Equal1~0_combout\ & (!\ldZ~0_combout\ & (\reg_Z|R\(23)))) # (\Equal1~0_combout\ & (((\reg_M|R\(23))))) ) + ( !\a_s~0_combout\ $ (((!\Equal1~0_combout\) # (!\reg_Z|R\(23)))) ) + ( \Add1~92\ ))
-- \Add1~96\ = CARRY(( (!\Equal1~0_combout\ & (!\ldZ~0_combout\ & (\reg_Z|R\(23)))) # (\Equal1~0_combout\ & (((\reg_M|R\(23))))) ) + ( !\a_s~0_combout\ $ (((!\Equal1~0_combout\) # (!\reg_Z|R\(23)))) ) + ( \Add1~92\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111000000001100000000000000000000100000111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ldZ~0_combout\,
	datab => \ALT_INV_Equal1~0_combout\,
	datac => \reg_Z|ALT_INV_R\(23),
	datad => \reg_M|ALT_INV_R\(23),
	dataf => \ALT_INV_a_s~0_combout\,
	cin => \Add1~92\,
	sumout => \Add1~95_sumout\,
	cout => \Add1~96\);

-- Location: MLABCELL_X25_Y11_N54
\reg_Z|R[23]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_Z|R[23]~feeder_combout\ = ( \Add1~95_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Add1~95_sumout\,
	combout => \reg_Z|R[23]~feeder_combout\);

-- Location: FF_X25_Y11_N55
\reg_Z|R[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg_Z|R[23]~feeder_combout\,
	asdata => \reg_Z|R\(24),
	sclr => \state.S_init~q\,
	sload => \ldZ~0_combout\,
	ena => \reg_Z|R[52]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_Z|R\(23));

-- Location: LABCELL_X24_Y11_N45
\Add1~99\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~99_sumout\ = SUM(( !\Add1~147_combout\ ) + ( (!\Equal1~0_combout\ & (!\ldZ~0_combout\ & (\reg_Z|R\(24)))) # (\Equal1~0_combout\ & (((\reg_M|R\(24))))) ) + ( \Add1~96\ ))
-- \Add1~100\ = CARRY(( !\Add1~147_combout\ ) + ( (!\Equal1~0_combout\ & (!\ldZ~0_combout\ & (\reg_Z|R\(24)))) # (\Equal1~0_combout\ & (((\reg_M|R\(24))))) ) + ( \Add1~96\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111101111100010000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ldZ~0_combout\,
	datab => \ALT_INV_Equal1~0_combout\,
	datac => \reg_Z|ALT_INV_R\(24),
	datad => \ALT_INV_Add1~147_combout\,
	dataf => \reg_M|ALT_INV_R\(24),
	cin => \Add1~96\,
	sumout => \Add1~99_sumout\,
	cout => \Add1~100\);

-- Location: MLABCELL_X25_Y11_N57
\reg_Z|R[24]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_Z|R[24]~feeder_combout\ = ( \Add1~99_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Add1~99_sumout\,
	combout => \reg_Z|R[24]~feeder_combout\);

-- Location: FF_X25_Y11_N59
\reg_Z|R[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg_Z|R[24]~feeder_combout\,
	asdata => \reg_Z|R\(25),
	sclr => \state.S_init~q\,
	sload => \ldZ~0_combout\,
	ena => \reg_Z|R[52]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_Z|R\(24));

-- Location: LABCELL_X24_Y11_N48
\Add1~103\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~103_sumout\ = SUM(( (!\Equal1~0_combout\ & (!\ldZ~0_combout\ & (\reg_Z|R\(25)))) # (\Equal1~0_combout\ & (((\reg_M|R\(25))))) ) + ( !\a_s~0_combout\ $ (((!\Equal1~0_combout\) # (!\reg_Z|R\(25)))) ) + ( \Add1~100\ ))
-- \Add1~104\ = CARRY(( (!\Equal1~0_combout\ & (!\ldZ~0_combout\ & (\reg_Z|R\(25)))) # (\Equal1~0_combout\ & (((\reg_M|R\(25))))) ) + ( !\a_s~0_combout\ $ (((!\Equal1~0_combout\) # (!\reg_Z|R\(25)))) ) + ( \Add1~100\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111000000001100000000000000000000100000111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ldZ~0_combout\,
	datab => \ALT_INV_Equal1~0_combout\,
	datac => \reg_Z|ALT_INV_R\(25),
	datad => \reg_M|ALT_INV_R\(25),
	dataf => \ALT_INV_a_s~0_combout\,
	cin => \Add1~100\,
	sumout => \Add1~103_sumout\,
	cout => \Add1~104\);

-- Location: MLABCELL_X21_Y11_N12
\reg_Z|R[25]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_Z|R[25]~feeder_combout\ = ( \Add1~103_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Add1~103_sumout\,
	combout => \reg_Z|R[25]~feeder_combout\);

-- Location: FF_X21_Y11_N13
\reg_Z|R[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg_Z|R[25]~feeder_combout\,
	asdata => \reg_Z|R\(26),
	sclr => \state.S_init~q\,
	sload => \ldZ~0_combout\,
	ena => \reg_Z|R[52]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_Z|R\(25));

-- Location: LABCELL_X24_Y11_N51
\Add1~107\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~107_sumout\ = SUM(( !\Add1~148_combout\ ) + ( (!\Equal1~0_combout\ & (!\ldZ~0_combout\ & (\reg_Z|R\(26)))) # (\Equal1~0_combout\ & (((\reg_M|R\(26))))) ) + ( \Add1~104\ ))
-- \Add1~108\ = CARRY(( !\Add1~148_combout\ ) + ( (!\Equal1~0_combout\ & (!\ldZ~0_combout\ & (\reg_Z|R\(26)))) # (\Equal1~0_combout\ & (((\reg_M|R\(26))))) ) + ( \Add1~104\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111101111100010000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ldZ~0_combout\,
	datab => \ALT_INV_Equal1~0_combout\,
	datac => \reg_Z|ALT_INV_R\(26),
	datad => \ALT_INV_Add1~148_combout\,
	dataf => \reg_M|ALT_INV_R\(26),
	cin => \Add1~104\,
	sumout => \Add1~107_sumout\,
	cout => \Add1~108\);

-- Location: LABCELL_X22_Y9_N3
\reg_Z|R[26]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_Z|R[26]~feeder_combout\ = ( \Add1~107_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Add1~107_sumout\,
	combout => \reg_Z|R[26]~feeder_combout\);

-- Location: FF_X22_Y9_N4
\reg_Z|R[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg_Z|R[26]~feeder_combout\,
	asdata => \reg_Z|R[27]~DUPLICATE_q\,
	sclr => \state.S_init~q\,
	sload => \ldZ~0_combout\,
	ena => \reg_Z|R[52]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_Z|R\(26));

-- Location: LABCELL_X24_Y11_N54
\Add1~111\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~111_sumout\ = SUM(( (!\Equal1~0_combout\ & (!\ldZ~0_combout\ & (\reg_Z|R[27]~DUPLICATE_q\))) # (\Equal1~0_combout\ & (((\reg_M|R\(27))))) ) + ( !\a_s~0_combout\ $ (((!\Equal1~0_combout\) # (!\reg_Z|R[27]~DUPLICATE_q\))) ) + ( \Add1~108\ ))
-- \Add1~112\ = CARRY(( (!\Equal1~0_combout\ & (!\ldZ~0_combout\ & (\reg_Z|R[27]~DUPLICATE_q\))) # (\Equal1~0_combout\ & (((\reg_M|R\(27))))) ) + ( !\a_s~0_combout\ $ (((!\Equal1~0_combout\) # (!\reg_Z|R[27]~DUPLICATE_q\))) ) + ( \Add1~108\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111000000001100000000000000000000100000111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ldZ~0_combout\,
	datab => \ALT_INV_Equal1~0_combout\,
	datac => \reg_Z|ALT_INV_R[27]~DUPLICATE_q\,
	datad => \reg_M|ALT_INV_R\(27),
	dataf => \ALT_INV_a_s~0_combout\,
	cin => \Add1~108\,
	sumout => \Add1~111_sumout\,
	cout => \Add1~112\);

-- Location: MLABCELL_X25_Y11_N33
\reg_Z|R[27]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_Z|R[27]~feeder_combout\ = ( \Add1~111_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Add1~111_sumout\,
	combout => \reg_Z|R[27]~feeder_combout\);

-- Location: FF_X25_Y11_N41
\reg_Z|R[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg_Z|R[28]~feeder_combout\,
	asdata => \reg_Z|R\(29),
	sclr => \state.S_init~q\,
	sload => \ldZ~0_combout\,
	ena => \reg_Z|R[52]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_Z|R\(28));

-- Location: FF_X25_Y11_N34
\reg_Z|R[27]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg_Z|R[27]~feeder_combout\,
	asdata => \reg_Z|R\(28),
	sclr => \state.S_init~q\,
	sload => \ldZ~0_combout\,
	ena => \reg_Z|R[52]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_Z|R[27]~DUPLICATE_q\);

-- Location: LABCELL_X24_Y11_N57
\Add1~115\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~115_sumout\ = SUM(( (!\Equal1~0_combout\ & (!\ldZ~0_combout\ & (\reg_Z|R[28]~DUPLICATE_q\))) # (\Equal1~0_combout\ & (((\reg_M|R\(28))))) ) + ( !\Add1~149_combout\ ) + ( \Add1~112\ ))
-- \Add1~116\ = CARRY(( (!\Equal1~0_combout\ & (!\ldZ~0_combout\ & (\reg_Z|R[28]~DUPLICATE_q\))) # (\Equal1~0_combout\ & (((\reg_M|R\(28))))) ) + ( !\Add1~149_combout\ ) + ( \Add1~112\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000100000111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ldZ~0_combout\,
	datab => \ALT_INV_Equal1~0_combout\,
	datac => \reg_Z|ALT_INV_R[28]~DUPLICATE_q\,
	datad => \reg_M|ALT_INV_R\(28),
	dataf => \ALT_INV_Add1~149_combout\,
	cin => \Add1~112\,
	sumout => \Add1~115_sumout\,
	cout => \Add1~116\);

-- Location: MLABCELL_X25_Y11_N39
\reg_Z|R[28]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_Z|R[28]~feeder_combout\ = ( \Add1~115_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Add1~115_sumout\,
	combout => \reg_Z|R[28]~feeder_combout\);

-- Location: FF_X25_Y11_N40
\reg_Z|R[28]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg_Z|R[28]~feeder_combout\,
	asdata => \reg_Z|R\(29),
	sclr => \state.S_init~q\,
	sload => \ldZ~0_combout\,
	ena => \reg_Z|R[52]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_Z|R[28]~DUPLICATE_q\);

-- Location: LABCELL_X24_Y10_N30
\Add1~119\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~119_sumout\ = SUM(( (!\Equal1~0_combout\ & (!\ldZ~0_combout\ & (\reg_Z|R\(29)))) # (\Equal1~0_combout\ & (((\reg_M|R\(29))))) ) + ( !\a_s~0_combout\ $ (((!\Equal1~0_combout\) # (!\reg_Z|R\(29)))) ) + ( \Add1~116\ ))
-- \Add1~120\ = CARRY(( (!\Equal1~0_combout\ & (!\ldZ~0_combout\ & (\reg_Z|R\(29)))) # (\Equal1~0_combout\ & (((\reg_M|R\(29))))) ) + ( !\a_s~0_combout\ $ (((!\Equal1~0_combout\) # (!\reg_Z|R\(29)))) ) + ( \Add1~116\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111000000001100000000000000000000100000111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ldZ~0_combout\,
	datab => \ALT_INV_Equal1~0_combout\,
	datac => \reg_Z|ALT_INV_R\(29),
	datad => \reg_M|ALT_INV_R\(29),
	dataf => \ALT_INV_a_s~0_combout\,
	cin => \Add1~116\,
	sumout => \Add1~119_sumout\,
	cout => \Add1~120\);

-- Location: MLABCELL_X25_Y10_N33
\reg_Z|R[29]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_Z|R[29]~feeder_combout\ = ( \Add1~119_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Add1~119_sumout\,
	combout => \reg_Z|R[29]~feeder_combout\);

-- Location: FF_X25_Y10_N35
\reg_Z|R[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg_Z|R[29]~feeder_combout\,
	asdata => \reg_Z|R\(30),
	sclr => \state.S_init~q\,
	sload => \ldZ~0_combout\,
	ena => \reg_Z|R[52]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_Z|R\(29));

-- Location: LABCELL_X24_Y10_N33
\Add1~123\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~123_sumout\ = SUM(( !\Add1~150_combout\ ) + ( (!\Equal1~0_combout\ & (!\ldZ~0_combout\ & (\reg_Z|R\(30)))) # (\Equal1~0_combout\ & (((\reg_M|R\(30))))) ) + ( \Add1~120\ ))
-- \Add1~124\ = CARRY(( !\Add1~150_combout\ ) + ( (!\Equal1~0_combout\ & (!\ldZ~0_combout\ & (\reg_Z|R\(30)))) # (\Equal1~0_combout\ & (((\reg_M|R\(30))))) ) + ( \Add1~120\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111101111100010000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ldZ~0_combout\,
	datab => \ALT_INV_Equal1~0_combout\,
	datac => \reg_Z|ALT_INV_R\(30),
	datad => \ALT_INV_Add1~150_combout\,
	dataf => \reg_M|ALT_INV_R\(30),
	cin => \Add1~120\,
	sumout => \Add1~123_sumout\,
	cout => \Add1~124\);

-- Location: LABCELL_X27_Y10_N39
\reg_Z|R[30]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_Z|R[30]~feeder_combout\ = ( \Add1~123_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Add1~123_sumout\,
	combout => \reg_Z|R[30]~feeder_combout\);

-- Location: FF_X27_Y10_N40
\reg_Z|R[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg_Z|R[30]~feeder_combout\,
	asdata => \reg_Z|R[31]~DUPLICATE_q\,
	sclr => \state.S_init~q\,
	sload => \ldZ~0_combout\,
	ena => \reg_Z|R[52]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_Z|R\(30));

-- Location: LABCELL_X24_Y10_N36
\Add1~127\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~127_sumout\ = SUM(( !\a_s~0_combout\ $ (((!\Equal1~0_combout\) # (!\reg_Z|R[31]~DUPLICATE_q\))) ) + ( (!\Equal1~0_combout\ & (!\ldZ~0_combout\ & (\reg_Z|R[31]~DUPLICATE_q\))) # (\Equal1~0_combout\ & (((\reg_M|R\(31))))) ) + ( \Add1~124\ ))
-- \Add1~128\ = CARRY(( !\a_s~0_combout\ $ (((!\Equal1~0_combout\) # (!\reg_Z|R[31]~DUPLICATE_q\))) ) + ( (!\Equal1~0_combout\ & (!\ldZ~0_combout\ & (\reg_Z|R[31]~DUPLICATE_q\))) # (\Equal1~0_combout\ & (((\reg_M|R\(31))))) ) + ( \Add1~124\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111101111100010000000000000000000000001111111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ldZ~0_combout\,
	datab => \ALT_INV_Equal1~0_combout\,
	datac => \reg_Z|ALT_INV_R[31]~DUPLICATE_q\,
	datad => \ALT_INV_a_s~0_combout\,
	dataf => \reg_M|ALT_INV_R\(31),
	cin => \Add1~124\,
	sumout => \Add1~127_sumout\,
	cout => \Add1~128\);

-- Location: MLABCELL_X25_Y10_N36
\reg_Z|R[31]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_Z|R[31]~feeder_combout\ = ( \Add1~127_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Add1~127_sumout\,
	combout => \reg_Z|R[31]~feeder_combout\);

-- Location: FF_X25_Y10_N37
\reg_Z|R[31]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg_Z|R[31]~feeder_combout\,
	asdata => \reg_Z|R\(32),
	sclr => \state.S_init~q\,
	sload => \ldZ~0_combout\,
	ena => \reg_Z|R[52]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_Z|R[31]~DUPLICATE_q\);

-- Location: LABCELL_X24_Y10_N39
\Add1~152\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~152_sumout\ = SUM(( !\Add1~159_combout\ ) + ( (!\Equal1~0_combout\ & (!\ldZ~0_combout\ & (\reg_Z|R\(32)))) # (\Equal1~0_combout\ & (((\reg_M|R\(32))))) ) + ( \Add1~128\ ))
-- \Add1~153\ = CARRY(( !\Add1~159_combout\ ) + ( (!\Equal1~0_combout\ & (!\ldZ~0_combout\ & (\reg_Z|R\(32)))) # (\Equal1~0_combout\ & (((\reg_M|R\(32))))) ) + ( \Add1~128\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111101111100010000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ldZ~0_combout\,
	datab => \ALT_INV_Equal1~0_combout\,
	datac => \reg_Z|ALT_INV_R\(32),
	datad => \ALT_INV_Add1~159_combout\,
	dataf => \reg_M|ALT_INV_R\(32),
	cin => \Add1~128\,
	sumout => \Add1~152_sumout\,
	cout => \Add1~153\);

-- Location: MLABCELL_X25_Y10_N54
\reg_Z|R[32]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_Z|R[32]~feeder_combout\ = ( \Add1~152_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Add1~152_sumout\,
	combout => \reg_Z|R[32]~feeder_combout\);

-- Location: FF_X25_Y10_N56
\reg_Z|R[32]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg_Z|R[32]~feeder_combout\,
	asdata => \reg_Z|R[33]~DUPLICATE_q\,
	sclr => \state.S_init~q\,
	sload => \ldZ~0_combout\,
	ena => \reg_Z|R[52]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_Z|R\(32));

-- Location: LABCELL_X24_Y10_N42
\Add1~161\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~161_sumout\ = SUM(( (!\Equal1~0_combout\ & (!\ldZ~0_combout\ & (\reg_Z|R\(33)))) # (\Equal1~0_combout\ & (((\reg_M|R\(33))))) ) + ( !\a_s~0_combout\ $ (((!\Equal1~0_combout\) # (!\reg_Z|R\(33)))) ) + ( \Add1~153\ ))
-- \Add1~162\ = CARRY(( (!\Equal1~0_combout\ & (!\ldZ~0_combout\ & (\reg_Z|R\(33)))) # (\Equal1~0_combout\ & (((\reg_M|R\(33))))) ) + ( !\a_s~0_combout\ $ (((!\Equal1~0_combout\) # (!\reg_Z|R\(33)))) ) + ( \Add1~153\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111000000001100000000000000000000100000111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ldZ~0_combout\,
	datab => \ALT_INV_Equal1~0_combout\,
	datac => \reg_Z|ALT_INV_R\(33),
	datad => \reg_M|ALT_INV_R\(33),
	dataf => \ALT_INV_a_s~0_combout\,
	cin => \Add1~153\,
	sumout => \Add1~161_sumout\,
	cout => \Add1~162\);

-- Location: LABCELL_X27_Y10_N30
\reg_Z|R[33]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_Z|R[33]~feeder_combout\ = ( \Add1~161_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Add1~161_sumout\,
	combout => \reg_Z|R[33]~feeder_combout\);

-- Location: FF_X27_Y10_N32
\reg_Z|R[33]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg_Z|R[33]~feeder_combout\,
	asdata => \reg_Z|R\(34),
	sclr => \state.S_init~q\,
	sload => \ldZ~0_combout\,
	ena => \reg_Z|R[52]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_Z|R\(33));

-- Location: LABCELL_X24_Y10_N45
\Add1~170\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~170_sumout\ = SUM(( !\Add1~181_combout\ ) + ( (!\Equal1~0_combout\ & (!\ldZ~0_combout\ & (\reg_Z|R\(34)))) # (\Equal1~0_combout\ & (((\reg_M|R\(34))))) ) + ( \Add1~162\ ))
-- \Add1~171\ = CARRY(( !\Add1~181_combout\ ) + ( (!\Equal1~0_combout\ & (!\ldZ~0_combout\ & (\reg_Z|R\(34)))) # (\Equal1~0_combout\ & (((\reg_M|R\(34))))) ) + ( \Add1~162\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111101111100010000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ldZ~0_combout\,
	datab => \ALT_INV_Equal1~0_combout\,
	datac => \reg_Z|ALT_INV_R\(34),
	datad => \ALT_INV_Add1~181_combout\,
	dataf => \reg_M|ALT_INV_R\(34),
	cin => \Add1~162\,
	sumout => \Add1~170_sumout\,
	cout => \Add1~171\);

-- Location: LABCELL_X27_Y10_N15
\reg_Z|R[34]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_Z|R[34]~feeder_combout\ = ( \Add1~170_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Add1~170_sumout\,
	combout => \reg_Z|R[34]~feeder_combout\);

-- Location: FF_X27_Y10_N16
\reg_Z|R[34]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg_Z|R[34]~feeder_combout\,
	asdata => \reg_Z|R[35]~DUPLICATE_q\,
	sclr => \state.S_init~q\,
	sload => \ldZ~0_combout\,
	ena => \reg_Z|R[52]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_Z|R\(34));

-- Location: LABCELL_X24_Y10_N48
\Add1~183\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~183_sumout\ = SUM(( !\a_s~0_combout\ $ (((!\Equal1~0_combout\) # (!\reg_Z|R[35]~DUPLICATE_q\))) ) + ( (!\Equal1~0_combout\ & (!\ldZ~0_combout\ & (\reg_Z|R[35]~DUPLICATE_q\))) # (\Equal1~0_combout\ & (((\reg_M|R\(35))))) ) + ( \Add1~171\ ))
-- \Add1~184\ = CARRY(( !\a_s~0_combout\ $ (((!\Equal1~0_combout\) # (!\reg_Z|R[35]~DUPLICATE_q\))) ) + ( (!\Equal1~0_combout\ & (!\ldZ~0_combout\ & (\reg_Z|R[35]~DUPLICATE_q\))) # (\Equal1~0_combout\ & (((\reg_M|R\(35))))) ) + ( \Add1~171\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111101111100010000000000000000000000001111111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ldZ~0_combout\,
	datab => \ALT_INV_Equal1~0_combout\,
	datac => \reg_Z|ALT_INV_R[35]~DUPLICATE_q\,
	datad => \ALT_INV_a_s~0_combout\,
	dataf => \reg_M|ALT_INV_R\(35),
	cin => \Add1~171\,
	sumout => \Add1~183_sumout\,
	cout => \Add1~184\);

-- Location: MLABCELL_X25_Y10_N48
\reg_Z|R[35]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_Z|R[35]~feeder_combout\ = \Add1~183_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Add1~183_sumout\,
	combout => \reg_Z|R[35]~feeder_combout\);

-- Location: FF_X25_Y10_N49
\reg_Z|R[35]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg_Z|R[35]~feeder_combout\,
	asdata => \reg_Z|R\(36),
	sclr => \state.S_init~q\,
	sload => \ldZ~0_combout\,
	ena => \reg_Z|R[52]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_Z|R[35]~DUPLICATE_q\);

-- Location: LABCELL_X24_Y10_N51
\Add1~196\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~196_sumout\ = SUM(( !\Add1~207_combout\ ) + ( (!\Equal1~0_combout\ & (!\ldZ~0_combout\ & (\reg_Z|R\(36)))) # (\Equal1~0_combout\ & (((\reg_M|R\(36))))) ) + ( \Add1~184\ ))
-- \Add1~197\ = CARRY(( !\Add1~207_combout\ ) + ( (!\Equal1~0_combout\ & (!\ldZ~0_combout\ & (\reg_Z|R\(36)))) # (\Equal1~0_combout\ & (((\reg_M|R\(36))))) ) + ( \Add1~184\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111101111100010000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ldZ~0_combout\,
	datab => \ALT_INV_Equal1~0_combout\,
	datac => \reg_Z|ALT_INV_R\(36),
	datad => \ALT_INV_Add1~207_combout\,
	dataf => \reg_M|ALT_INV_R\(36),
	cin => \Add1~184\,
	sumout => \Add1~196_sumout\,
	cout => \Add1~197\);

-- Location: LABCELL_X27_Y10_N21
\reg_Z|R[36]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_Z|R[36]~feeder_combout\ = ( \Add1~196_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Add1~196_sumout\,
	combout => \reg_Z|R[36]~feeder_combout\);

-- Location: FF_X27_Y10_N22
\reg_Z|R[36]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg_Z|R[36]~feeder_combout\,
	asdata => \reg_Z|R\(37),
	sclr => \state.S_init~q\,
	sload => \ldZ~0_combout\,
	ena => \reg_Z|R[52]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_Z|R\(36));

-- Location: LABCELL_X24_Y10_N54
\Add1~209\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~209_sumout\ = SUM(( (!\Equal1~0_combout\ & (!\ldZ~0_combout\ & (\reg_Z|R\(37)))) # (\Equal1~0_combout\ & (((\reg_M|R\(37))))) ) + ( !\a_s~0_combout\ $ (((!\Equal1~0_combout\) # (!\reg_Z|R\(37)))) ) + ( \Add1~197\ ))
-- \Add1~210\ = CARRY(( (!\Equal1~0_combout\ & (!\ldZ~0_combout\ & (\reg_Z|R\(37)))) # (\Equal1~0_combout\ & (((\reg_M|R\(37))))) ) + ( !\a_s~0_combout\ $ (((!\Equal1~0_combout\) # (!\reg_Z|R\(37)))) ) + ( \Add1~197\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111000000001100000000000000000000100000111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ldZ~0_combout\,
	datab => \ALT_INV_Equal1~0_combout\,
	datac => \reg_Z|ALT_INV_R\(37),
	datad => \reg_M|ALT_INV_R\(37),
	dataf => \ALT_INV_a_s~0_combout\,
	cin => \Add1~197\,
	sumout => \Add1~209_sumout\,
	cout => \Add1~210\);

-- Location: MLABCELL_X25_Y10_N51
\reg_Z|R[37]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_Z|R[37]~feeder_combout\ = ( \Add1~209_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Add1~209_sumout\,
	combout => \reg_Z|R[37]~feeder_combout\);

-- Location: FF_X25_Y10_N53
\reg_Z|R[37]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg_Z|R[37]~feeder_combout\,
	asdata => \reg_Z|R\(38),
	sclr => \state.S_init~q\,
	sload => \ldZ~0_combout\,
	ena => \reg_Z|R[52]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_Z|R\(37));

-- Location: LABCELL_X24_Y10_N57
\Add1~222\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~222_sumout\ = SUM(( !\Add1~233_combout\ ) + ( (!\Equal1~0_combout\ & (!\ldZ~0_combout\ & (\reg_Z|R[38]~DUPLICATE_q\))) # (\Equal1~0_combout\ & (((\reg_M|R\(38))))) ) + ( \Add1~210\ ))
-- \Add1~223\ = CARRY(( !\Add1~233_combout\ ) + ( (!\Equal1~0_combout\ & (!\ldZ~0_combout\ & (\reg_Z|R[38]~DUPLICATE_q\))) # (\Equal1~0_combout\ & (((\reg_M|R\(38))))) ) + ( \Add1~210\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111101111100010000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ldZ~0_combout\,
	datab => \ALT_INV_Equal1~0_combout\,
	datac => \reg_Z|ALT_INV_R[38]~DUPLICATE_q\,
	datad => \ALT_INV_Add1~233_combout\,
	dataf => \reg_M|ALT_INV_R\(38),
	cin => \Add1~210\,
	sumout => \Add1~222_sumout\,
	cout => \Add1~223\);

-- Location: MLABCELL_X25_Y10_N45
\reg_Z|R[38]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_Z|R[38]~feeder_combout\ = ( \Add1~222_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Add1~222_sumout\,
	combout => \reg_Z|R[38]~feeder_combout\);

-- Location: FF_X25_Y10_N46
\reg_Z|R[38]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg_Z|R[38]~feeder_combout\,
	asdata => \reg_Z|R\(39),
	sclr => \state.S_init~q\,
	sload => \ldZ~0_combout\,
	ena => \reg_Z|R[52]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_Z|R[38]~DUPLICATE_q\);

-- Location: LABCELL_X24_Y9_N30
\Add1~235\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~235_sumout\ = SUM(( !\a_s~0_combout\ $ (((!\Equal1~0_combout\) # (!\reg_Z|R\(39)))) ) + ( (!\Equal1~0_combout\ & (!\ldZ~0_combout\ & (\reg_Z|R\(39)))) # (\Equal1~0_combout\ & (((\reg_M|R\(39))))) ) + ( \Add1~223\ ))
-- \Add1~236\ = CARRY(( !\a_s~0_combout\ $ (((!\Equal1~0_combout\) # (!\reg_Z|R\(39)))) ) + ( (!\Equal1~0_combout\ & (!\ldZ~0_combout\ & (\reg_Z|R\(39)))) # (\Equal1~0_combout\ & (((\reg_M|R\(39))))) ) + ( \Add1~223\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111101111010001000000000000000000000010111111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~0_combout\,
	datab => \ALT_INV_ldZ~0_combout\,
	datac => \reg_Z|ALT_INV_R\(39),
	datad => \ALT_INV_a_s~0_combout\,
	dataf => \reg_M|ALT_INV_R\(39),
	cin => \Add1~223\,
	sumout => \Add1~235_sumout\,
	cout => \Add1~236\);

-- Location: LABCELL_X22_Y9_N33
\reg_Z|R[39]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_Z|R[39]~feeder_combout\ = ( \Add1~235_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Add1~235_sumout\,
	combout => \reg_Z|R[39]~feeder_combout\);

-- Location: FF_X22_Y9_N34
\reg_Z|R[39]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg_Z|R[39]~feeder_combout\,
	asdata => \reg_Z|R\(40),
	sclr => \state.S_init~q\,
	sload => \ldZ~0_combout\,
	ena => \reg_Z|R[52]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_Z|R\(39));

-- Location: LABCELL_X24_Y9_N33
\Add1~248\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~248_sumout\ = SUM(( (!\Equal1~0_combout\ & (!\ldZ~0_combout\ & (\reg_Z|R\(40)))) # (\Equal1~0_combout\ & (((\reg_M|R\(40))))) ) + ( !\Add1~259_combout\ ) + ( \Add1~236\ ))
-- \Add1~249\ = CARRY(( (!\Equal1~0_combout\ & (!\ldZ~0_combout\ & (\reg_Z|R\(40)))) # (\Equal1~0_combout\ & (((\reg_M|R\(40))))) ) + ( !\Add1~259_combout\ ) + ( \Add1~236\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000100001011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~0_combout\,
	datab => \ALT_INV_ldZ~0_combout\,
	datac => \reg_Z|ALT_INV_R\(40),
	datad => \reg_M|ALT_INV_R\(40),
	dataf => \ALT_INV_Add1~259_combout\,
	cin => \Add1~236\,
	sumout => \Add1~248_sumout\,
	cout => \Add1~249\);

-- Location: LABCELL_X22_Y9_N48
\reg_Z|R[40]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_Z|R[40]~feeder_combout\ = ( \Add1~248_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Add1~248_sumout\,
	combout => \reg_Z|R[40]~feeder_combout\);

-- Location: FF_X23_Y9_N23
\reg_Z|R[41]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg_Z|R[41]~feeder_combout\,
	asdata => \reg_Z|R\(42),
	sclr => \state.S_init~q\,
	sload => \ldZ~0_combout\,
	ena => \reg_Z|R[52]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_Z|R[41]~DUPLICATE_q\);

-- Location: FF_X22_Y9_N49
\reg_Z|R[40]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg_Z|R[40]~feeder_combout\,
	asdata => \reg_Z|R[41]~DUPLICATE_q\,
	sclr => \state.S_init~q\,
	sload => \ldZ~0_combout\,
	ena => \reg_Z|R[52]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_Z|R\(40));

-- Location: LABCELL_X24_Y9_N36
\Add1~261\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~261_sumout\ = SUM(( !\a_s~0_combout\ $ (((!\Equal1~0_combout\) # (!\reg_Z|R\(41)))) ) + ( (!\Equal1~0_combout\ & (!\ldZ~0_combout\ & (\reg_Z|R\(41)))) # (\Equal1~0_combout\ & (((\reg_M|R\(41))))) ) + ( \Add1~249\ ))
-- \Add1~262\ = CARRY(( !\a_s~0_combout\ $ (((!\Equal1~0_combout\) # (!\reg_Z|R\(41)))) ) + ( (!\Equal1~0_combout\ & (!\ldZ~0_combout\ & (\reg_Z|R\(41)))) # (\Equal1~0_combout\ & (((\reg_M|R\(41))))) ) + ( \Add1~249\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111101111010001000000000000000000000010111111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~0_combout\,
	datab => \ALT_INV_ldZ~0_combout\,
	datac => \reg_Z|ALT_INV_R\(41),
	datad => \ALT_INV_a_s~0_combout\,
	dataf => \reg_M|ALT_INV_R\(41),
	cin => \Add1~249\,
	sumout => \Add1~261_sumout\,
	cout => \Add1~262\);

-- Location: LABCELL_X23_Y9_N21
\reg_Z|R[41]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_Z|R[41]~feeder_combout\ = ( \Add1~261_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Add1~261_sumout\,
	combout => \reg_Z|R[41]~feeder_combout\);

-- Location: FF_X23_Y9_N22
\reg_Z|R[41]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg_Z|R[41]~feeder_combout\,
	asdata => \reg_Z|R\(42),
	sclr => \state.S_init~q\,
	sload => \ldZ~0_combout\,
	ena => \reg_Z|R[52]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_Z|R\(41));

-- Location: LABCELL_X24_Y9_N39
\Add1~274\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~274_sumout\ = SUM(( (!\Equal1~0_combout\ & (!\ldZ~0_combout\ & (\reg_Z|R\(42)))) # (\Equal1~0_combout\ & (((\reg_M|R\(42))))) ) + ( !\Add1~285_combout\ ) + ( \Add1~262\ ))
-- \Add1~275\ = CARRY(( (!\Equal1~0_combout\ & (!\ldZ~0_combout\ & (\reg_Z|R\(42)))) # (\Equal1~0_combout\ & (((\reg_M|R\(42))))) ) + ( !\Add1~285_combout\ ) + ( \Add1~262\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000100001011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~0_combout\,
	datab => \ALT_INV_ldZ~0_combout\,
	datac => \reg_Z|ALT_INV_R\(42),
	datad => \reg_M|ALT_INV_R\(42),
	dataf => \ALT_INV_Add1~285_combout\,
	cin => \Add1~262\,
	sumout => \Add1~274_sumout\,
	cout => \Add1~275\);

-- Location: LABCELL_X22_Y9_N54
\reg_Z|R[42]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_Z|R[42]~feeder_combout\ = ( \Add1~274_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Add1~274_sumout\,
	combout => \reg_Z|R[42]~feeder_combout\);

-- Location: FF_X22_Y9_N55
\reg_Z|R[42]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg_Z|R[42]~feeder_combout\,
	asdata => \reg_Z|R\(43),
	sclr => \state.S_init~q\,
	sload => \ldZ~0_combout\,
	ena => \reg_Z|R[52]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_Z|R\(42));

-- Location: LABCELL_X24_Y9_N42
\Add1~287\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~287_sumout\ = SUM(( !\a_s~0_combout\ $ (((!\Equal1~0_combout\) # (!\reg_Z|R\(43)))) ) + ( (!\Equal1~0_combout\ & (!\ldZ~0_combout\ & (\reg_Z|R\(43)))) # (\Equal1~0_combout\ & (((\reg_M|R\(43))))) ) + ( \Add1~275\ ))
-- \Add1~288\ = CARRY(( !\a_s~0_combout\ $ (((!\Equal1~0_combout\) # (!\reg_Z|R\(43)))) ) + ( (!\Equal1~0_combout\ & (!\ldZ~0_combout\ & (\reg_Z|R\(43)))) # (\Equal1~0_combout\ & (((\reg_M|R\(43))))) ) + ( \Add1~275\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111101111100010000000000000000000000001111111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ldZ~0_combout\,
	datab => \ALT_INV_Equal1~0_combout\,
	datac => \reg_Z|ALT_INV_R\(43),
	datad => \ALT_INV_a_s~0_combout\,
	dataf => \reg_M|ALT_INV_R\(43),
	cin => \Add1~275\,
	sumout => \Add1~287_sumout\,
	cout => \Add1~288\);

-- Location: LABCELL_X22_Y9_N15
\reg_Z|R[43]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_Z|R[43]~feeder_combout\ = ( \Add1~287_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Add1~287_sumout\,
	combout => \reg_Z|R[43]~feeder_combout\);

-- Location: FF_X22_Y9_N16
\reg_Z|R[43]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg_Z|R[43]~feeder_combout\,
	asdata => \reg_Z|R[44]~DUPLICATE_q\,
	sclr => \state.S_init~q\,
	sload => \ldZ~0_combout\,
	ena => \reg_Z|R[52]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_Z|R\(43));

-- Location: LABCELL_X24_Y9_N45
\Add1~300\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~300_sumout\ = SUM(( !\Add1~311_combout\ ) + ( (!\Equal1~0_combout\ & (!\ldZ~0_combout\ & (\reg_Z|R[44]~DUPLICATE_q\))) # (\Equal1~0_combout\ & (((\reg_M|R\(44))))) ) + ( \Add1~288\ ))
-- \Add1~301\ = CARRY(( !\Add1~311_combout\ ) + ( (!\Equal1~0_combout\ & (!\ldZ~0_combout\ & (\reg_Z|R[44]~DUPLICATE_q\))) # (\Equal1~0_combout\ & (((\reg_M|R\(44))))) ) + ( \Add1~288\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111101111100010000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ldZ~0_combout\,
	datab => \ALT_INV_Equal1~0_combout\,
	datac => \reg_Z|ALT_INV_R[44]~DUPLICATE_q\,
	datad => \ALT_INV_Add1~311_combout\,
	dataf => \reg_M|ALT_INV_R\(44),
	cin => \Add1~288\,
	sumout => \Add1~300_sumout\,
	cout => \Add1~301\);

-- Location: LABCELL_X23_Y9_N24
\reg_Z|R[44]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_Z|R[44]~feeder_combout\ = ( \Add1~300_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Add1~300_sumout\,
	combout => \reg_Z|R[44]~feeder_combout\);

-- Location: FF_X23_Y9_N29
\reg_Z|R[45]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg_Z|R[45]~feeder_combout\,
	asdata => \reg_Z|R[46]~DUPLICATE_q\,
	sclr => \state.S_init~q\,
	sload => \ldZ~0_combout\,
	ena => \reg_Z|R[52]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_Z|R[45]~DUPLICATE_q\);

-- Location: FF_X23_Y9_N25
\reg_Z|R[44]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg_Z|R[44]~feeder_combout\,
	asdata => \reg_Z|R[45]~DUPLICATE_q\,
	sclr => \state.S_init~q\,
	sload => \ldZ~0_combout\,
	ena => \reg_Z|R[52]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_Z|R[44]~DUPLICATE_q\);

-- Location: LABCELL_X24_Y9_N48
\Add1~313\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~313_sumout\ = SUM(( (!\Equal1~0_combout\ & (!\ldZ~0_combout\ & (\reg_Z|R\(45)))) # (\Equal1~0_combout\ & (((\reg_M|R\(45))))) ) + ( !\a_s~0_combout\ $ (((!\Equal1~0_combout\) # (!\reg_Z|R\(45)))) ) + ( \Add1~301\ ))
-- \Add1~314\ = CARRY(( (!\Equal1~0_combout\ & (!\ldZ~0_combout\ & (\reg_Z|R\(45)))) # (\Equal1~0_combout\ & (((\reg_M|R\(45))))) ) + ( !\a_s~0_combout\ $ (((!\Equal1~0_combout\) # (!\reg_Z|R\(45)))) ) + ( \Add1~301\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111000000001100000000000000000000100000111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ldZ~0_combout\,
	datab => \ALT_INV_Equal1~0_combout\,
	datac => \reg_Z|ALT_INV_R\(45),
	datad => \reg_M|ALT_INV_R\(45),
	dataf => \ALT_INV_a_s~0_combout\,
	cin => \Add1~301\,
	sumout => \Add1~313_sumout\,
	cout => \Add1~314\);

-- Location: LABCELL_X23_Y9_N27
\reg_Z|R[45]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_Z|R[45]~feeder_combout\ = ( \Add1~313_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Add1~313_sumout\,
	combout => \reg_Z|R[45]~feeder_combout\);

-- Location: FF_X23_Y9_N28
\reg_Z|R[45]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg_Z|R[45]~feeder_combout\,
	asdata => \reg_Z|R[46]~DUPLICATE_q\,
	sclr => \state.S_init~q\,
	sload => \ldZ~0_combout\,
	ena => \reg_Z|R[52]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_Z|R\(45));

-- Location: LABCELL_X24_Y9_N51
\Add1~326\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~326_sumout\ = SUM(( !\Add1~337_combout\ ) + ( (!\Equal1~0_combout\ & (!\ldZ~0_combout\ & (\reg_Z|R[46]~DUPLICATE_q\))) # (\Equal1~0_combout\ & (((\reg_M|R\(46))))) ) + ( \Add1~314\ ))
-- \Add1~327\ = CARRY(( !\Add1~337_combout\ ) + ( (!\Equal1~0_combout\ & (!\ldZ~0_combout\ & (\reg_Z|R[46]~DUPLICATE_q\))) # (\Equal1~0_combout\ & (((\reg_M|R\(46))))) ) + ( \Add1~314\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111101111100010000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ldZ~0_combout\,
	datab => \ALT_INV_Equal1~0_combout\,
	datac => \reg_Z|ALT_INV_R[46]~DUPLICATE_q\,
	datad => \ALT_INV_Add1~337_combout\,
	dataf => \reg_M|ALT_INV_R\(46),
	cin => \Add1~314\,
	sumout => \Add1~326_sumout\,
	cout => \Add1~327\);

-- Location: LABCELL_X22_Y9_N42
\reg_Z|R[46]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_Z|R[46]~feeder_combout\ = ( \Add1~326_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Add1~326_sumout\,
	combout => \reg_Z|R[46]~feeder_combout\);

-- Location: FF_X22_Y9_N43
\reg_Z|R[46]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg_Z|R[46]~feeder_combout\,
	asdata => \reg_Z|R[47]~DUPLICATE_q\,
	sclr => \state.S_init~q\,
	sload => \ldZ~0_combout\,
	ena => \reg_Z|R[52]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_Z|R[46]~DUPLICATE_q\);

-- Location: LABCELL_X24_Y9_N54
\Add1~339\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~339_sumout\ = SUM(( !\a_s~0_combout\ $ (((!\Equal1~0_combout\) # (!\reg_Z|R[47]~DUPLICATE_q\))) ) + ( (!\Equal1~0_combout\ & (!\ldZ~0_combout\ & (\reg_Z|R[47]~DUPLICATE_q\))) # (\Equal1~0_combout\ & (((\reg_M|R\(47))))) ) + ( \Add1~327\ ))
-- \Add1~340\ = CARRY(( !\a_s~0_combout\ $ (((!\Equal1~0_combout\) # (!\reg_Z|R[47]~DUPLICATE_q\))) ) + ( (!\Equal1~0_combout\ & (!\ldZ~0_combout\ & (\reg_Z|R[47]~DUPLICATE_q\))) # (\Equal1~0_combout\ & (((\reg_M|R\(47))))) ) + ( \Add1~327\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111101111100010000000000000000000000001111111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ldZ~0_combout\,
	datab => \ALT_INV_Equal1~0_combout\,
	datac => \reg_Z|ALT_INV_R[47]~DUPLICATE_q\,
	datad => \ALT_INV_a_s~0_combout\,
	dataf => \reg_M|ALT_INV_R\(47),
	cin => \Add1~327\,
	sumout => \Add1~339_sumout\,
	cout => \Add1~340\);

-- Location: LABCELL_X23_Y9_N6
\reg_Z|R[47]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_Z|R[47]~feeder_combout\ = ( \Add1~339_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Add1~339_sumout\,
	combout => \reg_Z|R[47]~feeder_combout\);

-- Location: FF_X23_Y9_N7
\reg_Z|R[47]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg_Z|R[47]~feeder_combout\,
	asdata => \reg_Z|R\(48),
	sclr => \state.S_init~q\,
	sload => \ldZ~0_combout\,
	ena => \reg_Z|R[52]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_Z|R[47]~DUPLICATE_q\);

-- Location: LABCELL_X24_Y9_N57
\Add1~352\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~352_sumout\ = SUM(( !\Add1~346_combout\ ) + ( (!\Equal1~0_combout\ & (!\ldZ~0_combout\ & (\reg_Z|R[48]~DUPLICATE_q\))) # (\Equal1~0_combout\ & (((\reg_M|R\(48))))) ) + ( \Add1~340\ ))
-- \Add1~353\ = CARRY(( !\Add1~346_combout\ ) + ( (!\Equal1~0_combout\ & (!\ldZ~0_combout\ & (\reg_Z|R[48]~DUPLICATE_q\))) # (\Equal1~0_combout\ & (((\reg_M|R\(48))))) ) + ( \Add1~340\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111101111100010000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ldZ~0_combout\,
	datab => \ALT_INV_Equal1~0_combout\,
	datac => \reg_Z|ALT_INV_R[48]~DUPLICATE_q\,
	datad => \ALT_INV_Add1~346_combout\,
	dataf => \reg_M|ALT_INV_R\(48),
	cin => \Add1~340\,
	sumout => \Add1~352_sumout\,
	cout => \Add1~353\);

-- Location: LABCELL_X23_Y9_N0
\reg_Z|R[48]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_Z|R[48]~feeder_combout\ = ( \Add1~352_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Add1~352_sumout\,
	combout => \reg_Z|R[48]~feeder_combout\);

-- Location: FF_X23_Y9_N1
\reg_Z|R[48]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg_Z|R[48]~feeder_combout\,
	asdata => \reg_Z|R\(49),
	sclr => \state.S_init~q\,
	sload => \ldZ~0_combout\,
	ena => \reg_Z|R[52]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_Z|R[48]~DUPLICATE_q\);

-- Location: LABCELL_X24_Y8_N0
\Add1~343\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~343_sumout\ = SUM(( !\a_s~0_combout\ $ (((!\Equal1~0_combout\) # (!\reg_Z|R\(49)))) ) + ( (!\Equal1~0_combout\ & (!\ldZ~0_combout\ & (\reg_Z|R\(49)))) # (\Equal1~0_combout\ & (((\reg_M|R\(49))))) ) + ( \Add1~353\ ))
-- \Add1~344\ = CARRY(( !\a_s~0_combout\ $ (((!\Equal1~0_combout\) # (!\reg_Z|R\(49)))) ) + ( (!\Equal1~0_combout\ & (!\ldZ~0_combout\ & (\reg_Z|R\(49)))) # (\Equal1~0_combout\ & (((\reg_M|R\(49))))) ) + ( \Add1~353\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111101111010001000000000000000000000010111111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~0_combout\,
	datab => \ALT_INV_ldZ~0_combout\,
	datac => \reg_Z|ALT_INV_R\(49),
	datad => \ALT_INV_a_s~0_combout\,
	dataf => \reg_M|ALT_INV_R\(49),
	cin => \Add1~353\,
	sumout => \Add1~343_sumout\,
	cout => \Add1~344\);

-- Location: MLABCELL_X21_Y8_N30
\reg_Z|R[49]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_Z|R[49]~feeder_combout\ = ( \Add1~343_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Add1~343_sumout\,
	combout => \reg_Z|R[49]~feeder_combout\);

-- Location: FF_X21_Y8_N2
\reg_Z|R[51]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg_Z|R[51]~feeder_combout\,
	asdata => \reg_Z|R\(52),
	sclr => \state.S_init~q\,
	sload => \ldZ~0_combout\,
	ena => \reg_Z|R[52]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_Z|R\(51));

-- Location: FF_X21_Y8_N20
\reg_Z|R[50]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg_Z|R[50]~feeder_combout\,
	asdata => \reg_Z|R\(51),
	sclr => \state.S_init~q\,
	sload => \ldZ~0_combout\,
	ena => \reg_Z|R[52]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_Z|R\(50));

-- Location: FF_X21_Y8_N32
\reg_Z|R[49]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg_Z|R[49]~feeder_combout\,
	asdata => \reg_Z|R\(50),
	sclr => \state.S_init~q\,
	sload => \ldZ~0_combout\,
	ena => \reg_Z|R[52]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_Z|R\(49));

-- Location: LABCELL_X24_Y8_N3
\Add1~330\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~330_sumout\ = SUM(( !\Add1~320_combout\ ) + ( (!\Equal1~0_combout\ & (!\ldZ~0_combout\ & (\reg_Z|R[50]~DUPLICATE_q\))) # (\Equal1~0_combout\ & (((\reg_M|R\(50))))) ) + ( \Add1~344\ ))
-- \Add1~331\ = CARRY(( !\Add1~320_combout\ ) + ( (!\Equal1~0_combout\ & (!\ldZ~0_combout\ & (\reg_Z|R[50]~DUPLICATE_q\))) # (\Equal1~0_combout\ & (((\reg_M|R\(50))))) ) + ( \Add1~344\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111101111010001000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~0_combout\,
	datab => \ALT_INV_ldZ~0_combout\,
	datac => \reg_Z|ALT_INV_R[50]~DUPLICATE_q\,
	datad => \ALT_INV_Add1~320_combout\,
	dataf => \reg_M|ALT_INV_R\(50),
	cin => \Add1~344\,
	sumout => \Add1~330_sumout\,
	cout => \Add1~331\);

-- Location: MLABCELL_X21_Y8_N18
\reg_Z|R[50]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_Z|R[50]~feeder_combout\ = ( \Add1~330_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Add1~330_sumout\,
	combout => \reg_Z|R[50]~feeder_combout\);

-- Location: FF_X21_Y8_N19
\reg_Z|R[50]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg_Z|R[50]~feeder_combout\,
	asdata => \reg_Z|R\(51),
	sclr => \state.S_init~q\,
	sload => \ldZ~0_combout\,
	ena => \reg_Z|R[52]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_Z|R[50]~DUPLICATE_q\);

-- Location: LABCELL_X24_Y8_N6
\Add1~317\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~317_sumout\ = SUM(( !\a_s~0_combout\ $ (((!\Equal1~0_combout\) # (!\reg_Z|R[51]~DUPLICATE_q\))) ) + ( (!\Equal1~0_combout\ & (!\ldZ~0_combout\ & (\reg_Z|R[51]~DUPLICATE_q\))) # (\Equal1~0_combout\ & (((\reg_M|R\(51))))) ) + ( \Add1~331\ ))
-- \Add1~318\ = CARRY(( !\a_s~0_combout\ $ (((!\Equal1~0_combout\) # (!\reg_Z|R[51]~DUPLICATE_q\))) ) + ( (!\Equal1~0_combout\ & (!\ldZ~0_combout\ & (\reg_Z|R[51]~DUPLICATE_q\))) # (\Equal1~0_combout\ & (((\reg_M|R\(51))))) ) + ( \Add1~331\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111101111010001000000000000000000000010111111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~0_combout\,
	datab => \ALT_INV_ldZ~0_combout\,
	datac => \reg_Z|ALT_INV_R[51]~DUPLICATE_q\,
	datad => \ALT_INV_a_s~0_combout\,
	dataf => \reg_M|ALT_INV_R\(51),
	cin => \Add1~331\,
	sumout => \Add1~317_sumout\,
	cout => \Add1~318\);

-- Location: MLABCELL_X21_Y8_N0
\reg_Z|R[51]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_Z|R[51]~feeder_combout\ = \Add1~317_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add1~317_sumout\,
	combout => \reg_Z|R[51]~feeder_combout\);

-- Location: FF_X21_Y8_N1
\reg_Z|R[51]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg_Z|R[51]~feeder_combout\,
	asdata => \reg_Z|R\(52),
	sclr => \state.S_init~q\,
	sload => \ldZ~0_combout\,
	ena => \reg_Z|R[52]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_Z|R[51]~DUPLICATE_q\);

-- Location: LABCELL_X24_Y8_N9
\Add1~304\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~304_sumout\ = SUM(( (!\Equal1~0_combout\ & (!\ldZ~0_combout\ & (\reg_Z|R\(52)))) # (\Equal1~0_combout\ & (((\reg_M|R\(52))))) ) + ( !\Add1~294_combout\ ) + ( \Add1~318\ ))
-- \Add1~305\ = CARRY(( (!\Equal1~0_combout\ & (!\ldZ~0_combout\ & (\reg_Z|R\(52)))) # (\Equal1~0_combout\ & (((\reg_M|R\(52))))) ) + ( !\Add1~294_combout\ ) + ( \Add1~318\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000100001011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~0_combout\,
	datab => \ALT_INV_ldZ~0_combout\,
	datac => \reg_Z|ALT_INV_R\(52),
	datad => \reg_M|ALT_INV_R\(52),
	dataf => \ALT_INV_Add1~294_combout\,
	cin => \Add1~318\,
	sumout => \Add1~304_sumout\,
	cout => \Add1~305\);

-- Location: MLABCELL_X21_Y8_N21
\reg_Z|R[52]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_Z|R[52]~feeder_combout\ = ( \Add1~304_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Add1~304_sumout\,
	combout => \reg_Z|R[52]~feeder_combout\);

-- Location: FF_X21_Y8_N23
\reg_Z|R[52]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg_Z|R[52]~feeder_combout\,
	asdata => \reg_Z|R[53]~DUPLICATE_q\,
	sclr => \state.S_init~q\,
	sload => \ldZ~0_combout\,
	ena => \reg_Z|R[52]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_Z|R\(52));

-- Location: LABCELL_X24_Y8_N12
\Add1~291\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~291_sumout\ = SUM(( !\a_s~0_combout\ $ (((!\Equal1~0_combout\) # (!\reg_Z|R[53]~DUPLICATE_q\))) ) + ( (!\Equal1~0_combout\ & (!\ldZ~0_combout\ & (\reg_Z|R[53]~DUPLICATE_q\))) # (\Equal1~0_combout\ & (((\reg_M|R\(53))))) ) + ( \Add1~305\ ))
-- \Add1~292\ = CARRY(( !\a_s~0_combout\ $ (((!\Equal1~0_combout\) # (!\reg_Z|R[53]~DUPLICATE_q\))) ) + ( (!\Equal1~0_combout\ & (!\ldZ~0_combout\ & (\reg_Z|R[53]~DUPLICATE_q\))) # (\Equal1~0_combout\ & (((\reg_M|R\(53))))) ) + ( \Add1~305\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111101111010001000000000000000000000010111111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~0_combout\,
	datab => \ALT_INV_ldZ~0_combout\,
	datac => \reg_Z|ALT_INV_R[53]~DUPLICATE_q\,
	datad => \ALT_INV_a_s~0_combout\,
	dataf => \reg_M|ALT_INV_R\(53),
	cin => \Add1~305\,
	sumout => \Add1~291_sumout\,
	cout => \Add1~292\);

-- Location: MLABCELL_X21_Y8_N39
\reg_Z|R[53]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_Z|R[53]~feeder_combout\ = ( \Add1~291_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Add1~291_sumout\,
	combout => \reg_Z|R[53]~feeder_combout\);

-- Location: FF_X21_Y8_N41
\reg_Z|R[53]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg_Z|R[53]~feeder_combout\,
	asdata => \reg_Z|R\(54),
	sclr => \state.S_init~q\,
	sload => \ldZ~0_combout\,
	ena => \reg_Z|R[52]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_Z|R[53]~DUPLICATE_q\);

-- Location: LABCELL_X24_Y8_N15
\Add1~278\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~278_sumout\ = SUM(( !\Add1~268_combout\ ) + ( (!\Equal1~0_combout\ & (!\ldZ~0_combout\ & (\reg_Z|R\(54)))) # (\Equal1~0_combout\ & (((\reg_M|R\(54))))) ) + ( \Add1~292\ ))
-- \Add1~279\ = CARRY(( !\Add1~268_combout\ ) + ( (!\Equal1~0_combout\ & (!\ldZ~0_combout\ & (\reg_Z|R\(54)))) # (\Equal1~0_combout\ & (((\reg_M|R\(54))))) ) + ( \Add1~292\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111101111010001000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~0_combout\,
	datab => \ALT_INV_ldZ~0_combout\,
	datac => \reg_Z|ALT_INV_R\(54),
	datad => \ALT_INV_Add1~268_combout\,
	dataf => \reg_M|ALT_INV_R\(54),
	cin => \Add1~292\,
	sumout => \Add1~278_sumout\,
	cout => \Add1~279\);

-- Location: MLABCELL_X21_Y8_N51
\reg_Z|R[54]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_Z|R[54]~feeder_combout\ = ( \Add1~278_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Add1~278_sumout\,
	combout => \reg_Z|R[54]~feeder_combout\);

-- Location: FF_X21_Y8_N52
\reg_Z|R[54]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg_Z|R[54]~feeder_combout\,
	asdata => \reg_Z|R\(55),
	sclr => \state.S_init~q\,
	sload => \ldZ~0_combout\,
	ena => \reg_Z|R[52]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_Z|R\(54));

-- Location: LABCELL_X24_Y8_N18
\Add1~265\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~265_sumout\ = SUM(( !\a_s~0_combout\ $ (((!\Equal1~0_combout\) # (!\reg_Z|R\(55)))) ) + ( (!\Equal1~0_combout\ & (!\ldZ~0_combout\ & (\reg_Z|R\(55)))) # (\Equal1~0_combout\ & (((\reg_M|R\(55))))) ) + ( \Add1~279\ ))
-- \Add1~266\ = CARRY(( !\a_s~0_combout\ $ (((!\Equal1~0_combout\) # (!\reg_Z|R\(55)))) ) + ( (!\Equal1~0_combout\ & (!\ldZ~0_combout\ & (\reg_Z|R\(55)))) # (\Equal1~0_combout\ & (((\reg_M|R\(55))))) ) + ( \Add1~279\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111101111010001000000000000000000000010111111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~0_combout\,
	datab => \ALT_INV_ldZ~0_combout\,
	datac => \reg_Z|ALT_INV_R\(55),
	datad => \ALT_INV_a_s~0_combout\,
	dataf => \reg_M|ALT_INV_R\(55),
	cin => \Add1~279\,
	sumout => \Add1~265_sumout\,
	cout => \Add1~266\);

-- Location: MLABCELL_X21_Y8_N9
\reg_Z|R[55]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_Z|R[55]~feeder_combout\ = ( \Add1~265_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Add1~265_sumout\,
	combout => \reg_Z|R[55]~feeder_combout\);

-- Location: FF_X21_Y8_N37
\reg_Z|R[59]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg_Z|R[59]~feeder_combout\,
	asdata => \reg_Z|R\(60),
	sclr => \state.S_init~q\,
	sload => \ldZ~0_combout\,
	ena => \reg_Z|R[52]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_Z|R[59]~DUPLICATE_q\);

-- Location: FF_X21_Y8_N43
\reg_Z|R[58]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg_Z|R[58]~feeder_combout\,
	asdata => \reg_Z|R[59]~DUPLICATE_q\,
	sclr => \state.S_init~q\,
	sload => \ldZ~0_combout\,
	ena => \reg_Z|R[52]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_Z|R[58]~DUPLICATE_q\);

-- Location: FF_X21_Y8_N59
\reg_Z|R[57]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg_Z|R[57]~feeder_combout\,
	asdata => \reg_Z|R[58]~DUPLICATE_q\,
	sclr => \state.S_init~q\,
	sload => \ldZ~0_combout\,
	ena => \reg_Z|R[52]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_Z|R[57]~DUPLICATE_q\);

-- Location: FF_X21_Y8_N25
\reg_Z|R[56]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg_Z|R[56]~feeder_combout\,
	asdata => \reg_Z|R[57]~DUPLICATE_q\,
	sclr => \state.S_init~q\,
	sload => \ldZ~0_combout\,
	ena => \reg_Z|R[52]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_Z|R[56]~DUPLICATE_q\);

-- Location: FF_X21_Y8_N11
\reg_Z|R[55]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg_Z|R[55]~feeder_combout\,
	asdata => \reg_Z|R[56]~DUPLICATE_q\,
	sclr => \state.S_init~q\,
	sload => \ldZ~0_combout\,
	ena => \reg_Z|R[52]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_Z|R\(55));

-- Location: LABCELL_X24_Y8_N21
\Add1~252\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~252_sumout\ = SUM(( !\Add1~242_combout\ ) + ( (!\Equal1~0_combout\ & (!\ldZ~0_combout\ & (\reg_Z|R\(56)))) # (\Equal1~0_combout\ & (((\reg_M|R\(56))))) ) + ( \Add1~266\ ))
-- \Add1~253\ = CARRY(( !\Add1~242_combout\ ) + ( (!\Equal1~0_combout\ & (!\ldZ~0_combout\ & (\reg_Z|R\(56)))) # (\Equal1~0_combout\ & (((\reg_M|R\(56))))) ) + ( \Add1~266\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111101111010001000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~0_combout\,
	datab => \ALT_INV_ldZ~0_combout\,
	datac => \reg_Z|ALT_INV_R\(56),
	datad => \ALT_INV_Add1~242_combout\,
	dataf => \reg_M|ALT_INV_R\(56),
	cin => \Add1~266\,
	sumout => \Add1~252_sumout\,
	cout => \Add1~253\);

-- Location: MLABCELL_X21_Y8_N24
\reg_Z|R[56]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_Z|R[56]~feeder_combout\ = ( \Add1~252_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Add1~252_sumout\,
	combout => \reg_Z|R[56]~feeder_combout\);

-- Location: FF_X21_Y8_N26
\reg_Z|R[56]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg_Z|R[56]~feeder_combout\,
	asdata => \reg_Z|R[57]~DUPLICATE_q\,
	sclr => \state.S_init~q\,
	sload => \ldZ~0_combout\,
	ena => \reg_Z|R[52]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_Z|R\(56));

-- Location: LABCELL_X24_Y8_N24
\Add1~239\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~239_sumout\ = SUM(( !\a_s~0_combout\ $ (((!\Equal1~0_combout\) # (!\reg_Z|R\(57)))) ) + ( (!\Equal1~0_combout\ & (!\ldZ~0_combout\ & (\reg_Z|R\(57)))) # (\Equal1~0_combout\ & (((\reg_M|R\(57))))) ) + ( \Add1~253\ ))
-- \Add1~240\ = CARRY(( !\a_s~0_combout\ $ (((!\Equal1~0_combout\) # (!\reg_Z|R\(57)))) ) + ( (!\Equal1~0_combout\ & (!\ldZ~0_combout\ & (\reg_Z|R\(57)))) # (\Equal1~0_combout\ & (((\reg_M|R\(57))))) ) + ( \Add1~253\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111101111010001000000000000000000000010111111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~0_combout\,
	datab => \ALT_INV_ldZ~0_combout\,
	datac => \reg_Z|ALT_INV_R\(57),
	datad => \ALT_INV_a_s~0_combout\,
	dataf => \reg_M|ALT_INV_R\(57),
	cin => \Add1~253\,
	sumout => \Add1~239_sumout\,
	cout => \Add1~240\);

-- Location: MLABCELL_X21_Y8_N57
\reg_Z|R[57]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_Z|R[57]~feeder_combout\ = ( \Add1~239_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Add1~239_sumout\,
	combout => \reg_Z|R[57]~feeder_combout\);

-- Location: FF_X21_Y8_N58
\reg_Z|R[57]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg_Z|R[57]~feeder_combout\,
	asdata => \reg_Z|R[58]~DUPLICATE_q\,
	sclr => \state.S_init~q\,
	sload => \ldZ~0_combout\,
	ena => \reg_Z|R[52]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_Z|R\(57));

-- Location: LABCELL_X24_Y8_N27
\Add1~226\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~226_sumout\ = SUM(( !\Add1~216_combout\ ) + ( (!\Equal1~0_combout\ & (!\ldZ~0_combout\ & (\reg_Z|R\(58)))) # (\Equal1~0_combout\ & (((\reg_M|R\(58))))) ) + ( \Add1~240\ ))
-- \Add1~227\ = CARRY(( !\Add1~216_combout\ ) + ( (!\Equal1~0_combout\ & (!\ldZ~0_combout\ & (\reg_Z|R\(58)))) # (\Equal1~0_combout\ & (((\reg_M|R\(58))))) ) + ( \Add1~240\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111101111010001000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~0_combout\,
	datab => \ALT_INV_ldZ~0_combout\,
	datac => \reg_Z|ALT_INV_R\(58),
	datad => \ALT_INV_Add1~216_combout\,
	dataf => \reg_M|ALT_INV_R\(58),
	cin => \Add1~240\,
	sumout => \Add1~226_sumout\,
	cout => \Add1~227\);

-- Location: MLABCELL_X21_Y8_N42
\reg_Z|R[58]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_Z|R[58]~feeder_combout\ = ( \Add1~226_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Add1~226_sumout\,
	combout => \reg_Z|R[58]~feeder_combout\);

-- Location: FF_X21_Y8_N44
\reg_Z|R[58]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg_Z|R[58]~feeder_combout\,
	asdata => \reg_Z|R[59]~DUPLICATE_q\,
	sclr => \state.S_init~q\,
	sload => \ldZ~0_combout\,
	ena => \reg_Z|R[52]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_Z|R\(58));

-- Location: LABCELL_X24_Y8_N30
\Add1~213\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~213_sumout\ = SUM(( !\a_s~0_combout\ $ (((!\Equal1~0_combout\) # (!\reg_Z|R\(59)))) ) + ( (!\Equal1~0_combout\ & (!\ldZ~0_combout\ & (\reg_Z|R\(59)))) # (\Equal1~0_combout\ & (((\reg_M|R\(59))))) ) + ( \Add1~227\ ))
-- \Add1~214\ = CARRY(( !\a_s~0_combout\ $ (((!\Equal1~0_combout\) # (!\reg_Z|R\(59)))) ) + ( (!\Equal1~0_combout\ & (!\ldZ~0_combout\ & (\reg_Z|R\(59)))) # (\Equal1~0_combout\ & (((\reg_M|R\(59))))) ) + ( \Add1~227\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111101111010001000000000000000000000010111111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~0_combout\,
	datab => \ALT_INV_ldZ~0_combout\,
	datac => \reg_Z|ALT_INV_R\(59),
	datad => \ALT_INV_a_s~0_combout\,
	dataf => \reg_M|ALT_INV_R\(59),
	cin => \Add1~227\,
	sumout => \Add1~213_sumout\,
	cout => \Add1~214\);

-- Location: MLABCELL_X21_Y8_N36
\reg_Z|R[59]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_Z|R[59]~feeder_combout\ = ( \Add1~213_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Add1~213_sumout\,
	combout => \reg_Z|R[59]~feeder_combout\);

-- Location: FF_X21_Y8_N38
\reg_Z|R[59]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg_Z|R[59]~feeder_combout\,
	asdata => \reg_Z|R\(60),
	sclr => \state.S_init~q\,
	sload => \ldZ~0_combout\,
	ena => \reg_Z|R[52]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_Z|R\(59));

-- Location: LABCELL_X24_Y8_N33
\Add1~200\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~200_sumout\ = SUM(( !\Add1~190_combout\ ) + ( (!\Equal1~0_combout\ & (!\ldZ~0_combout\ & (\reg_Z|R\(60)))) # (\Equal1~0_combout\ & (((\reg_M|R\(60))))) ) + ( \Add1~214\ ))
-- \Add1~201\ = CARRY(( !\Add1~190_combout\ ) + ( (!\Equal1~0_combout\ & (!\ldZ~0_combout\ & (\reg_Z|R\(60)))) # (\Equal1~0_combout\ & (((\reg_M|R\(60))))) ) + ( \Add1~214\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111101111010001000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~0_combout\,
	datab => \ALT_INV_ldZ~0_combout\,
	datac => \reg_Z|ALT_INV_R\(60),
	datad => \ALT_INV_Add1~190_combout\,
	dataf => \reg_M|ALT_INV_R\(60),
	cin => \Add1~214\,
	sumout => \Add1~200_sumout\,
	cout => \Add1~201\);

-- Location: MLABCELL_X21_Y8_N54
\reg_Z|R[60]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_Z|R[60]~feeder_combout\ = ( \Add1~200_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Add1~200_sumout\,
	combout => \reg_Z|R[60]~feeder_combout\);

-- Location: FF_X21_Y8_N55
\reg_Z|R[60]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg_Z|R[60]~feeder_combout\,
	asdata => \reg_Z|R\(61),
	sclr => \state.S_init~q\,
	sload => \ldZ~0_combout\,
	ena => \reg_Z|R[52]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_Z|R\(60));

-- Location: LABCELL_X24_Y8_N36
\Add1~187\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~187_sumout\ = SUM(( !\a_s~0_combout\ $ (((!\Equal1~0_combout\) # (!\reg_Z|R\(61)))) ) + ( (!\Equal1~0_combout\ & (!\ldZ~0_combout\ & (\reg_Z|R\(61)))) # (\Equal1~0_combout\ & (((\reg_M|R\(61))))) ) + ( \Add1~201\ ))
-- \Add1~188\ = CARRY(( !\a_s~0_combout\ $ (((!\Equal1~0_combout\) # (!\reg_Z|R\(61)))) ) + ( (!\Equal1~0_combout\ & (!\ldZ~0_combout\ & (\reg_Z|R\(61)))) # (\Equal1~0_combout\ & (((\reg_M|R\(61))))) ) + ( \Add1~201\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111101111010001000000000000000000000010111111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~0_combout\,
	datab => \ALT_INV_ldZ~0_combout\,
	datac => \reg_Z|ALT_INV_R\(61),
	datad => \ALT_INV_a_s~0_combout\,
	dataf => \reg_M|ALT_INV_R\(61),
	cin => \Add1~201\,
	sumout => \Add1~187_sumout\,
	cout => \Add1~188\);

-- Location: LABCELL_X23_Y9_N3
\reg_Z|R[61]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_Z|R[61]~feeder_combout\ = ( \Add1~187_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Add1~187_sumout\,
	combout => \reg_Z|R[61]~feeder_combout\);

-- Location: FF_X23_Y9_N4
\reg_Z|R[61]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg_Z|R[61]~feeder_combout\,
	asdata => \reg_Z|R\(62),
	sclr => \state.S_init~q\,
	sload => \ldZ~0_combout\,
	ena => \reg_Z|R[52]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_Z|R\(61));

-- Location: LABCELL_X24_Y8_N39
\Add1~174\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~174_sumout\ = SUM(( !\Add1~164_combout\ ) + ( (!\Equal1~0_combout\ & (!\ldZ~0_combout\ & (\reg_Z|R\(62)))) # (\Equal1~0_combout\ & (((\reg_M|R\(62))))) ) + ( \Add1~188\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111101111010001000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~0_combout\,
	datab => \ALT_INV_ldZ~0_combout\,
	datac => \reg_Z|ALT_INV_R\(62),
	datad => \ALT_INV_Add1~164_combout\,
	dataf => \reg_M|ALT_INV_R\(62),
	cin => \Add1~188\,
	sumout => \Add1~174_sumout\);

-- Location: MLABCELL_X21_Y8_N15
\reg_Z|R[62]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_Z|R[62]~feeder_combout\ = ( \Add1~174_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Add1~174_sumout\,
	combout => \reg_Z|R[62]~feeder_combout\);

-- Location: FF_X21_Y8_N16
\reg_Z|R[62]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg_Z|R[62]~feeder_combout\,
	asdata => \reg_Z|R\(63),
	sclr => \state.S_init~q\,
	sload => \ldZ~0_combout\,
	ena => \reg_Z|R[52]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_Z|R\(62));

-- Location: FF_X21_Y8_N40
\reg_Z|R[53]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg_Z|R[53]~feeder_combout\,
	asdata => \reg_Z|R\(54),
	sclr => \state.S_init~q\,
	sload => \ldZ~0_combout\,
	ena => \reg_Z|R[52]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_Z|R\(53));

-- Location: FF_X22_Y13_N1
\reg_Z|R[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg_Z|R[3]~feeder_combout\,
	asdata => \reg_Z|R\(4),
	sclr => \state.S_init~q\,
	sload => \ldZ~0_combout\,
	ena => \reg_Z|R[52]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_Z|R\(3));

-- Location: LABCELL_X23_Y13_N30
\Add0~258\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~258_cout\ = CARRY(( (!\state.S_5~q\ & !\state.S_1~q\) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.S_5~q\,
	datab => \ALT_INV_state.S_1~q\,
	cin => GND,
	cout => \Add0~258_cout\);

-- Location: LABCELL_X23_Y13_N33
\Add0~254\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~254_cout\ = CARRY(( !\B[0]~0_combout\ $ (((\state.S_1~q\) # (\state.S_5~q\))) ) + ( \A[0]~10_combout\ ) + ( \Add0~258_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001000100001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.S_5~q\,
	datab => \ALT_INV_state.S_1~q\,
	datac => \ALT_INV_A[0]~10_combout\,
	datad => \ALT_INV_B[0]~0_combout\,
	cin => \Add0~258_cout\,
	cout => \Add0~254_cout\);

-- Location: LABCELL_X23_Y13_N36
\Add0~250\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~250_cout\ = CARRY(( \A[1]~11_combout\ ) + ( (!\state.S_5~q\ & (!\state.S_1~q\ $ (((\reg_Z|R[1]~DUPLICATE_q\ & \Equal1~0_combout\))))) # (\state.S_5~q\ & (((\reg_Z|R[1]~DUPLICATE_q\ & \Equal1~0_combout\)))) ) + ( \Add0~254_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000011101110111100000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.S_5~q\,
	datab => \ALT_INV_state.S_1~q\,
	datac => \reg_Z|ALT_INV_R[1]~DUPLICATE_q\,
	datad => \ALT_INV_A[1]~11_combout\,
	dataf => \ALT_INV_Equal1~0_combout\,
	cin => \Add0~254_cout\,
	cout => \Add0~250_cout\);

-- Location: LABCELL_X23_Y13_N39
\Add0~246\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~246_cout\ = CARRY(( !\B[2]~1_combout\ $ (((\state.S_1~q\) # (\state.S_5~q\))) ) + ( \A[2]~12_combout\ ) + ( \Add0~250_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001000100001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.S_5~q\,
	datab => \ALT_INV_state.S_1~q\,
	datac => \ALT_INV_A[2]~12_combout\,
	datad => \ALT_INV_B[2]~1_combout\,
	cin => \Add0~250_cout\,
	cout => \Add0~246_cout\);

-- Location: LABCELL_X23_Y13_N42
\Add0~242\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~242_cout\ = CARRY(( \A[3]~13_combout\ ) + ( (!\state.S_5~q\ & (!\state.S_1~q\ $ (((\Equal1~0_combout\ & \reg_Z|R\(3)))))) # (\state.S_5~q\ & (((\Equal1~0_combout\ & \reg_Z|R\(3))))) ) + ( \Add0~246_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000011101110111100000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.S_5~q\,
	datab => \ALT_INV_state.S_1~q\,
	datac => \ALT_INV_Equal1~0_combout\,
	datad => \ALT_INV_A[3]~13_combout\,
	dataf => \reg_Z|ALT_INV_R\(3),
	cin => \Add0~246_cout\,
	cout => \Add0~242_cout\);

-- Location: LABCELL_X23_Y13_N45
\Add0~238\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~238_cout\ = CARRY(( !\B[4]~2_combout\ $ (((\state.S_1~q\) # (\state.S_5~q\))) ) + ( \A[4]~14_combout\ ) + ( \Add0~242_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001000100001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.S_5~q\,
	datab => \ALT_INV_state.S_1~q\,
	datac => \ALT_INV_A[4]~14_combout\,
	datad => \ALT_INV_B[4]~2_combout\,
	cin => \Add0~242_cout\,
	cout => \Add0~238_cout\);

-- Location: LABCELL_X23_Y13_N48
\Add0~234\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~234_cout\ = CARRY(( (!\Equal1~0_combout\ & (!\ldZ~0_combout\ & (\reg_Z|R\(5)))) # (\Equal1~0_combout\ & (((\reg_M|R\(5))))) ) + ( !\a_s~0_combout\ $ (((!\Equal1~0_combout\) # (!\reg_Z|R\(5)))) ) + ( \Add0~238_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100000010100000000000000000000100001011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~0_combout\,
	datab => \ALT_INV_ldZ~0_combout\,
	datac => \reg_Z|ALT_INV_R\(5),
	datad => \reg_M|ALT_INV_R\(5),
	dataf => \ALT_INV_a_s~0_combout\,
	cin => \Add0~238_cout\,
	cout => \Add0~234_cout\);

-- Location: LABCELL_X23_Y13_N51
\Add0~230\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~230_cout\ = CARRY(( !\Add1~138_combout\ ) + ( (!\Equal1~0_combout\ & (!\ldZ~0_combout\ & (\reg_Z|R\(6)))) # (\Equal1~0_combout\ & (((\reg_M|R\(6))))) ) + ( \Add0~234_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111101111010001000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~0_combout\,
	datab => \ALT_INV_ldZ~0_combout\,
	datac => \reg_Z|ALT_INV_R\(6),
	datad => \ALT_INV_Add1~138_combout\,
	dataf => \reg_M|ALT_INV_R\(6),
	cin => \Add0~234_cout\,
	cout => \Add0~230_cout\);

-- Location: LABCELL_X23_Y13_N54
\Add0~226\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~226_cout\ = CARRY(( (!\Equal1~0_combout\ & (!\ldZ~0_combout\ & (\reg_Z|R\(7)))) # (\Equal1~0_combout\ & (((\reg_M|R\(7))))) ) + ( !\a_s~0_combout\ $ (((!\Equal1~0_combout\) # (!\reg_Z|R\(7)))) ) + ( \Add0~230_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100000010100000000000000000000100001011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~0_combout\,
	datab => \ALT_INV_ldZ~0_combout\,
	datac => \reg_Z|ALT_INV_R\(7),
	datad => \reg_M|ALT_INV_R\(7),
	dataf => \ALT_INV_a_s~0_combout\,
	cin => \Add0~230_cout\,
	cout => \Add0~226_cout\);

-- Location: LABCELL_X23_Y13_N57
\Add0~222\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~222_cout\ = CARRY(( !\Add1~139_combout\ ) + ( (!\Equal1~0_combout\ & (!\ldZ~0_combout\ & (\reg_Z|R\(8)))) # (\Equal1~0_combout\ & (((\reg_M|R\(8))))) ) + ( \Add0~226_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111101111010001000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~0_combout\,
	datab => \ALT_INV_ldZ~0_combout\,
	datac => \reg_Z|ALT_INV_R\(8),
	datad => \ALT_INV_Add1~139_combout\,
	dataf => \reg_M|ALT_INV_R\(8),
	cin => \Add0~226_cout\,
	cout => \Add0~222_cout\);

-- Location: LABCELL_X23_Y12_N30
\Add0~218\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~218_cout\ = CARRY(( (!\Equal1~0_combout\ & (!\ldZ~0_combout\ & (\reg_Z|R\(9)))) # (\Equal1~0_combout\ & (((\reg_M|R\(9))))) ) + ( !\a_s~0_combout\ $ (((!\Equal1~0_combout\) # (!\reg_Z|R\(9)))) ) + ( \Add0~222_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100000010100000000000000000000100001011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~0_combout\,
	datab => \ALT_INV_ldZ~0_combout\,
	datac => \reg_Z|ALT_INV_R\(9),
	datad => \reg_M|ALT_INV_R\(9),
	dataf => \ALT_INV_a_s~0_combout\,
	cin => \Add0~222_cout\,
	cout => \Add0~218_cout\);

-- Location: LABCELL_X23_Y12_N33
\Add0~214\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~214_cout\ = CARRY(( !\Add1~140_combout\ ) + ( (!\Equal1~0_combout\ & (!\ldZ~0_combout\ & (\reg_Z|R\(10)))) # (\Equal1~0_combout\ & (((\reg_M|R\(10))))) ) + ( \Add0~218_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111101111010001000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~0_combout\,
	datab => \ALT_INV_ldZ~0_combout\,
	datac => \reg_Z|ALT_INV_R\(10),
	datad => \ALT_INV_Add1~140_combout\,
	dataf => \reg_M|ALT_INV_R\(10),
	cin => \Add0~218_cout\,
	cout => \Add0~214_cout\);

-- Location: LABCELL_X23_Y12_N36
\Add0~210\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~210_cout\ = CARRY(( (!\Equal1~0_combout\ & (!\ldZ~0_combout\ & (\reg_Z|R\(11)))) # (\Equal1~0_combout\ & (((\reg_M|R\(11))))) ) + ( !\a_s~0_combout\ $ (((!\Equal1~0_combout\) # (!\reg_Z|R\(11)))) ) + ( \Add0~214_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100000010100000000000000000000100001011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~0_combout\,
	datab => \ALT_INV_ldZ~0_combout\,
	datac => \reg_Z|ALT_INV_R\(11),
	datad => \reg_M|ALT_INV_R\(11),
	dataf => \ALT_INV_a_s~0_combout\,
	cin => \Add0~214_cout\,
	cout => \Add0~210_cout\);

-- Location: LABCELL_X23_Y12_N39
\Add0~206\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~206_cout\ = CARRY(( (!\Equal1~0_combout\ & (!\ldZ~0_combout\ & (\reg_Z|R[12]~DUPLICATE_q\))) # (\Equal1~0_combout\ & (((\reg_M|R\(12))))) ) + ( !\Add1~141_combout\ ) + ( \Add0~210_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000100001011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~0_combout\,
	datab => \ALT_INV_ldZ~0_combout\,
	datac => \reg_Z|ALT_INV_R[12]~DUPLICATE_q\,
	datad => \reg_M|ALT_INV_R\(12),
	dataf => \ALT_INV_Add1~141_combout\,
	cin => \Add0~210_cout\,
	cout => \Add0~206_cout\);

-- Location: LABCELL_X23_Y12_N42
\Add0~202\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~202_cout\ = CARRY(( (!\Equal1~0_combout\ & (!\ldZ~0_combout\ & (\reg_Z|R\(13)))) # (\Equal1~0_combout\ & (((\reg_M|R\(13))))) ) + ( !\a_s~0_combout\ $ (((!\Equal1~0_combout\) # (!\reg_Z|R\(13)))) ) + ( \Add0~206_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100000010100000000000000000000100001011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~0_combout\,
	datab => \ALT_INV_ldZ~0_combout\,
	datac => \reg_Z|ALT_INV_R\(13),
	datad => \reg_M|ALT_INV_R\(13),
	dataf => \ALT_INV_a_s~0_combout\,
	cin => \Add0~206_cout\,
	cout => \Add0~202_cout\);

-- Location: LABCELL_X23_Y12_N45
\Add0~198\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~198_cout\ = CARRY(( !\Add1~142_combout\ ) + ( (!\Equal1~0_combout\ & (!\ldZ~0_combout\ & (\reg_Z|R\(14)))) # (\Equal1~0_combout\ & (((\reg_M|R\(14))))) ) + ( \Add0~202_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111101111010001000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~0_combout\,
	datab => \ALT_INV_ldZ~0_combout\,
	datac => \reg_Z|ALT_INV_R\(14),
	datad => \ALT_INV_Add1~142_combout\,
	dataf => \reg_M|ALT_INV_R\(14),
	cin => \Add0~202_cout\,
	cout => \Add0~198_cout\);

-- Location: LABCELL_X23_Y12_N48
\Add0~194\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~194_cout\ = CARRY(( (!\Equal1~0_combout\ & (!\ldZ~0_combout\ & (\reg_Z|R[15]~DUPLICATE_q\))) # (\Equal1~0_combout\ & (((\reg_M|R\(15))))) ) + ( !\a_s~0_combout\ $ (((!\Equal1~0_combout\) # (!\reg_Z|R[15]~DUPLICATE_q\))) ) + ( \Add0~198_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100000010100000000000000000000100001011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~0_combout\,
	datab => \ALT_INV_ldZ~0_combout\,
	datac => \reg_Z|ALT_INV_R[15]~DUPLICATE_q\,
	datad => \reg_M|ALT_INV_R\(15),
	dataf => \ALT_INV_a_s~0_combout\,
	cin => \Add0~198_cout\,
	cout => \Add0~194_cout\);

-- Location: LABCELL_X23_Y12_N51
\Add0~190\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~190_cout\ = CARRY(( !\Add1~143_combout\ ) + ( (!\Equal1~0_combout\ & (!\ldZ~0_combout\ & (\reg_Z|R[16]~DUPLICATE_q\))) # (\Equal1~0_combout\ & (((\reg_M|R\(16))))) ) + ( \Add0~194_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111101111010001000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~0_combout\,
	datab => \ALT_INV_ldZ~0_combout\,
	datac => \reg_Z|ALT_INV_R[16]~DUPLICATE_q\,
	datad => \ALT_INV_Add1~143_combout\,
	dataf => \reg_M|ALT_INV_R\(16),
	cin => \Add0~194_cout\,
	cout => \Add0~190_cout\);

-- Location: LABCELL_X23_Y12_N54
\Add0~186\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~186_cout\ = CARRY(( (!\Equal1~0_combout\ & (!\ldZ~0_combout\ & (\reg_Z|R\(17)))) # (\Equal1~0_combout\ & (((\reg_M|R\(17))))) ) + ( !\a_s~0_combout\ $ (((!\Equal1~0_combout\) # (!\reg_Z|R\(17)))) ) + ( \Add0~190_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100000010100000000000000000000100001011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~0_combout\,
	datab => \ALT_INV_ldZ~0_combout\,
	datac => \reg_Z|ALT_INV_R\(17),
	datad => \reg_M|ALT_INV_R\(17),
	dataf => \ALT_INV_a_s~0_combout\,
	cin => \Add0~190_cout\,
	cout => \Add0~186_cout\);

-- Location: LABCELL_X23_Y12_N57
\Add0~182\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~182_cout\ = CARRY(( !\Add1~144_combout\ ) + ( (!\Equal1~0_combout\ & (!\ldZ~0_combout\ & (\reg_Z|R\(18)))) # (\Equal1~0_combout\ & (((\reg_M|R\(18))))) ) + ( \Add0~186_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111101111010001000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~0_combout\,
	datab => \ALT_INV_ldZ~0_combout\,
	datac => \reg_Z|ALT_INV_R\(18),
	datad => \ALT_INV_Add1~144_combout\,
	dataf => \reg_M|ALT_INV_R\(18),
	cin => \Add0~186_cout\,
	cout => \Add0~182_cout\);

-- Location: LABCELL_X23_Y11_N30
\Add0~178\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~178_cout\ = CARRY(( (!\Equal1~0_combout\ & (!\ldZ~0_combout\ & (\reg_Z|R\(19)))) # (\Equal1~0_combout\ & (((\reg_M|R\(19))))) ) + ( !\a_s~0_combout\ $ (((!\Equal1~0_combout\) # (!\reg_Z|R\(19)))) ) + ( \Add0~182_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100000010100000000000000000000100001011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~0_combout\,
	datab => \ALT_INV_ldZ~0_combout\,
	datac => \reg_Z|ALT_INV_R\(19),
	datad => \reg_M|ALT_INV_R\(19),
	dataf => \ALT_INV_a_s~0_combout\,
	cin => \Add0~182_cout\,
	cout => \Add0~178_cout\);

-- Location: LABCELL_X23_Y11_N33
\Add0~174\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~174_cout\ = CARRY(( (!\Equal1~0_combout\ & (!\ldZ~0_combout\ & (\reg_Z|R\(20)))) # (\Equal1~0_combout\ & (((\reg_M|R\(20))))) ) + ( !\Add1~145_combout\ ) + ( \Add0~178_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000100001011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~0_combout\,
	datab => \ALT_INV_ldZ~0_combout\,
	datac => \reg_Z|ALT_INV_R\(20),
	datad => \reg_M|ALT_INV_R\(20),
	dataf => \ALT_INV_Add1~145_combout\,
	cin => \Add0~178_cout\,
	cout => \Add0~174_cout\);

-- Location: LABCELL_X23_Y11_N36
\Add0~170\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~170_cout\ = CARRY(( (!\Equal1~0_combout\ & (!\ldZ~0_combout\ & (\reg_Z|R\(21)))) # (\Equal1~0_combout\ & (((\reg_M|R\(21))))) ) + ( !\a_s~0_combout\ $ (((!\Equal1~0_combout\) # (!\reg_Z|R\(21)))) ) + ( \Add0~174_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100000010100000000000000000000100001011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~0_combout\,
	datab => \ALT_INV_ldZ~0_combout\,
	datac => \reg_Z|ALT_INV_R\(21),
	datad => \reg_M|ALT_INV_R\(21),
	dataf => \ALT_INV_a_s~0_combout\,
	cin => \Add0~174_cout\,
	cout => \Add0~170_cout\);

-- Location: LABCELL_X23_Y11_N39
\Add0~166\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~166_cout\ = CARRY(( !\Add1~146_combout\ ) + ( (!\Equal1~0_combout\ & (!\ldZ~0_combout\ & (\reg_Z|R\(22)))) # (\Equal1~0_combout\ & (((\reg_M|R\(22))))) ) + ( \Add0~170_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111101111010001000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~0_combout\,
	datab => \ALT_INV_ldZ~0_combout\,
	datac => \reg_Z|ALT_INV_R\(22),
	datad => \ALT_INV_Add1~146_combout\,
	dataf => \reg_M|ALT_INV_R\(22),
	cin => \Add0~170_cout\,
	cout => \Add0~166_cout\);

-- Location: LABCELL_X23_Y11_N42
\Add0~162\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~162_cout\ = CARRY(( (!\Equal1~0_combout\ & (!\ldZ~0_combout\ & (\reg_Z|R\(23)))) # (\Equal1~0_combout\ & (((\reg_M|R\(23))))) ) + ( !\a_s~0_combout\ $ (((!\Equal1~0_combout\) # (!\reg_Z|R\(23)))) ) + ( \Add0~166_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100000010100000000000000000000100001011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~0_combout\,
	datab => \ALT_INV_ldZ~0_combout\,
	datac => \reg_Z|ALT_INV_R\(23),
	datad => \reg_M|ALT_INV_R\(23),
	dataf => \ALT_INV_a_s~0_combout\,
	cin => \Add0~166_cout\,
	cout => \Add0~162_cout\);

-- Location: LABCELL_X23_Y11_N45
\Add0~158\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~158_cout\ = CARRY(( (!\Equal1~0_combout\ & (!\ldZ~0_combout\ & (\reg_Z|R[24]~DUPLICATE_q\))) # (\Equal1~0_combout\ & (((\reg_M|R\(24))))) ) + ( !\Add1~147_combout\ ) + ( \Add0~162_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000100001011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~0_combout\,
	datab => \ALT_INV_ldZ~0_combout\,
	datac => \reg_Z|ALT_INV_R[24]~DUPLICATE_q\,
	datad => \reg_M|ALT_INV_R\(24),
	dataf => \ALT_INV_Add1~147_combout\,
	cin => \Add0~162_cout\,
	cout => \Add0~158_cout\);

-- Location: LABCELL_X23_Y11_N48
\Add0~154\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~154_cout\ = CARRY(( (!\Equal1~0_combout\ & (!\ldZ~0_combout\ & (\reg_Z|R\(25)))) # (\Equal1~0_combout\ & (((\reg_M|R\(25))))) ) + ( !\a_s~0_combout\ $ (((!\Equal1~0_combout\) # (!\reg_Z|R\(25)))) ) + ( \Add0~158_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100000010100000000000000000000100001011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~0_combout\,
	datab => \ALT_INV_ldZ~0_combout\,
	datac => \reg_Z|ALT_INV_R\(25),
	datad => \reg_M|ALT_INV_R\(25),
	dataf => \ALT_INV_a_s~0_combout\,
	cin => \Add0~158_cout\,
	cout => \Add0~154_cout\);

-- Location: LABCELL_X23_Y11_N51
\Add0~150\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~150_cout\ = CARRY(( !\Add1~148_combout\ ) + ( (!\Equal1~0_combout\ & (!\ldZ~0_combout\ & (\reg_Z|R\(26)))) # (\Equal1~0_combout\ & (((\reg_M|R\(26))))) ) + ( \Add0~154_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111101111010001000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~0_combout\,
	datab => \ALT_INV_ldZ~0_combout\,
	datac => \reg_Z|ALT_INV_R\(26),
	datad => \ALT_INV_Add1~148_combout\,
	dataf => \reg_M|ALT_INV_R\(26),
	cin => \Add0~154_cout\,
	cout => \Add0~150_cout\);

-- Location: LABCELL_X23_Y11_N54
\Add0~146\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~146_cout\ = CARRY(( !\a_s~0_combout\ $ (((!\Equal1~0_combout\) # (!\reg_Z|R[27]~DUPLICATE_q\))) ) + ( (!\Equal1~0_combout\ & (!\ldZ~0_combout\ & (\reg_Z|R[27]~DUPLICATE_q\))) # (\Equal1~0_combout\ & (((\reg_M|R\(27))))) ) + ( \Add0~150_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111101111010001000000000000000000000010111111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~0_combout\,
	datab => \ALT_INV_ldZ~0_combout\,
	datac => \reg_Z|ALT_INV_R[27]~DUPLICATE_q\,
	datad => \ALT_INV_a_s~0_combout\,
	dataf => \reg_M|ALT_INV_R\(27),
	cin => \Add0~150_cout\,
	cout => \Add0~146_cout\);

-- Location: LABCELL_X23_Y11_N57
\Add0~142\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~142_cout\ = CARRY(( (!\Equal1~0_combout\ & (!\ldZ~0_combout\ & (\reg_Z|R[28]~DUPLICATE_q\))) # (\Equal1~0_combout\ & (((\reg_M|R\(28))))) ) + ( !\Add1~149_combout\ ) + ( \Add0~146_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000100001011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~0_combout\,
	datab => \ALT_INV_ldZ~0_combout\,
	datac => \reg_Z|ALT_INV_R[28]~DUPLICATE_q\,
	datad => \reg_M|ALT_INV_R\(28),
	dataf => \ALT_INV_Add1~149_combout\,
	cin => \Add0~146_cout\,
	cout => \Add0~142_cout\);

-- Location: LABCELL_X23_Y10_N30
\Add0~138\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~138_cout\ = CARRY(( (!\Equal1~0_combout\ & (!\ldZ~0_combout\ & (\reg_Z|R\(29)))) # (\Equal1~0_combout\ & (((\reg_M|R\(29))))) ) + ( !\a_s~0_combout\ $ (((!\Equal1~0_combout\) # (!\reg_Z|R\(29)))) ) + ( \Add0~142_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100000010100000000000000000000100001011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~0_combout\,
	datab => \ALT_INV_ldZ~0_combout\,
	datac => \reg_Z|ALT_INV_R\(29),
	datad => \reg_M|ALT_INV_R\(29),
	dataf => \ALT_INV_a_s~0_combout\,
	cin => \Add0~142_cout\,
	cout => \Add0~138_cout\);

-- Location: LABCELL_X23_Y10_N33
\Add0~134\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~134_cout\ = CARRY(( !\Add1~150_combout\ ) + ( (!\Equal1~0_combout\ & (!\ldZ~0_combout\ & (\reg_Z|R\(30)))) # (\Equal1~0_combout\ & (((\reg_M|R\(30))))) ) + ( \Add0~138_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111101111010001000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~0_combout\,
	datab => \ALT_INV_ldZ~0_combout\,
	datac => \reg_Z|ALT_INV_R\(30),
	datad => \ALT_INV_Add1~150_combout\,
	dataf => \reg_M|ALT_INV_R\(30),
	cin => \Add0~138_cout\,
	cout => \Add0~134_cout\);

-- Location: LABCELL_X23_Y10_N36
\Add0~130\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~130_cout\ = CARRY(( (!\Equal1~0_combout\ & (!\ldZ~0_combout\ & (\reg_Z|R[31]~DUPLICATE_q\))) # (\Equal1~0_combout\ & (((\reg_M|R\(31))))) ) + ( !\a_s~0_combout\ $ (((!\Equal1~0_combout\) # (!\reg_Z|R[31]~DUPLICATE_q\))) ) + ( \Add0~134_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100000010100000000000000000000100001011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~0_combout\,
	datab => \ALT_INV_ldZ~0_combout\,
	datac => \reg_Z|ALT_INV_R[31]~DUPLICATE_q\,
	datad => \reg_M|ALT_INV_R\(31),
	dataf => \ALT_INV_a_s~0_combout\,
	cin => \Add0~134_cout\,
	cout => \Add0~130_cout\);

-- Location: LABCELL_X23_Y10_N39
\Add0~126\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~126_cout\ = CARRY(( !\Add1~159_combout\ ) + ( (!\Equal1~0_combout\ & (!\ldZ~0_combout\ & (\reg_Z|R[32]~DUPLICATE_q\))) # (\Equal1~0_combout\ & (((\reg_M|R\(32))))) ) + ( \Add0~130_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111101111010001000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~0_combout\,
	datab => \ALT_INV_ldZ~0_combout\,
	datac => \reg_Z|ALT_INV_R[32]~DUPLICATE_q\,
	datad => \ALT_INV_Add1~159_combout\,
	dataf => \reg_M|ALT_INV_R\(32),
	cin => \Add0~130_cout\,
	cout => \Add0~126_cout\);

-- Location: LABCELL_X23_Y10_N42
\Add0~122\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~122_cout\ = CARRY(( (!\Equal1~0_combout\ & (!\ldZ~0_combout\ & (\reg_Z|R\(33)))) # (\Equal1~0_combout\ & (((\reg_M|R\(33))))) ) + ( !\a_s~0_combout\ $ (((!\Equal1~0_combout\) # (!\reg_Z|R\(33)))) ) + ( \Add0~126_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111000000001100000000000000000000100000111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ldZ~0_combout\,
	datab => \ALT_INV_Equal1~0_combout\,
	datac => \reg_Z|ALT_INV_R\(33),
	datad => \reg_M|ALT_INV_R\(33),
	dataf => \ALT_INV_a_s~0_combout\,
	cin => \Add0~126_cout\,
	cout => \Add0~122_cout\);

-- Location: LABCELL_X23_Y10_N45
\Add0~118\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~118_cout\ = CARRY(( !\Add1~181_combout\ ) + ( (!\Equal1~0_combout\ & (!\ldZ~0_combout\ & (\reg_Z|R\(34)))) # (\Equal1~0_combout\ & (((\reg_M|R\(34))))) ) + ( \Add0~122_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111101111100010000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ldZ~0_combout\,
	datab => \ALT_INV_Equal1~0_combout\,
	datac => \reg_Z|ALT_INV_R\(34),
	datad => \ALT_INV_Add1~181_combout\,
	dataf => \reg_M|ALT_INV_R\(34),
	cin => \Add0~122_cout\,
	cout => \Add0~118_cout\);

-- Location: LABCELL_X23_Y10_N48
\Add0~114\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~114_cout\ = CARRY(( (!\Equal1~0_combout\ & (!\ldZ~0_combout\ & (\reg_Z|R[35]~DUPLICATE_q\))) # (\Equal1~0_combout\ & (((\reg_M|R\(35))))) ) + ( !\a_s~0_combout\ $ (((!\Equal1~0_combout\) # (!\reg_Z|R[35]~DUPLICATE_q\))) ) + ( \Add0~118_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111000000001100000000000000000000100000111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ldZ~0_combout\,
	datab => \ALT_INV_Equal1~0_combout\,
	datac => \reg_Z|ALT_INV_R[35]~DUPLICATE_q\,
	datad => \reg_M|ALT_INV_R\(35),
	dataf => \ALT_INV_a_s~0_combout\,
	cin => \Add0~118_cout\,
	cout => \Add0~114_cout\);

-- Location: LABCELL_X23_Y10_N51
\Add0~110\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~110_cout\ = CARRY(( (!\Equal1~0_combout\ & (!\ldZ~0_combout\ & (\reg_Z|R\(36)))) # (\Equal1~0_combout\ & (((\reg_M|R\(36))))) ) + ( !\Add1~207_combout\ ) + ( \Add0~114_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000100000111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ldZ~0_combout\,
	datab => \ALT_INV_Equal1~0_combout\,
	datac => \reg_Z|ALT_INV_R\(36),
	datad => \reg_M|ALT_INV_R\(36),
	dataf => \ALT_INV_Add1~207_combout\,
	cin => \Add0~114_cout\,
	cout => \Add0~110_cout\);

-- Location: LABCELL_X23_Y10_N54
\Add0~106\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~106_cout\ = CARRY(( (!\Equal1~0_combout\ & (!\ldZ~0_combout\ & (\reg_Z|R\(37)))) # (\Equal1~0_combout\ & (((\reg_M|R\(37))))) ) + ( !\a_s~0_combout\ $ (((!\Equal1~0_combout\) # (!\reg_Z|R\(37)))) ) + ( \Add0~110_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111000000001100000000000000000000100000111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ldZ~0_combout\,
	datab => \ALT_INV_Equal1~0_combout\,
	datac => \reg_Z|ALT_INV_R\(37),
	datad => \reg_M|ALT_INV_R\(37),
	dataf => \ALT_INV_a_s~0_combout\,
	cin => \Add0~110_cout\,
	cout => \Add0~106_cout\);

-- Location: LABCELL_X23_Y10_N57
\Add0~102\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~102_cout\ = CARRY(( !\Add1~233_combout\ ) + ( (!\Equal1~0_combout\ & (!\ldZ~0_combout\ & (\reg_Z|R[38]~DUPLICATE_q\))) # (\Equal1~0_combout\ & (((\reg_M|R\(38))))) ) + ( \Add0~106_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111101111100010000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ldZ~0_combout\,
	datab => \ALT_INV_Equal1~0_combout\,
	datac => \reg_Z|ALT_INV_R[38]~DUPLICATE_q\,
	datad => \ALT_INV_Add1~233_combout\,
	dataf => \reg_M|ALT_INV_R\(38),
	cin => \Add0~106_cout\,
	cout => \Add0~102_cout\);

-- Location: LABCELL_X23_Y9_N30
\Add0~98\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~98_cout\ = CARRY(( (!\Equal1~0_combout\ & (!\ldZ~0_combout\ & (\reg_Z|R\(39)))) # (\Equal1~0_combout\ & (((\reg_M|R\(39))))) ) + ( !\a_s~0_combout\ $ (((!\Equal1~0_combout\) # (!\reg_Z|R\(39)))) ) + ( \Add0~102_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100000010100000000000000000000100001011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~0_combout\,
	datab => \ALT_INV_ldZ~0_combout\,
	datac => \reg_Z|ALT_INV_R\(39),
	datad => \reg_M|ALT_INV_R\(39),
	dataf => \ALT_INV_a_s~0_combout\,
	cin => \Add0~102_cout\,
	cout => \Add0~98_cout\);

-- Location: LABCELL_X23_Y9_N33
\Add0~94\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~94_cout\ = CARRY(( !\Add1~259_combout\ ) + ( (!\Equal1~0_combout\ & (!\ldZ~0_combout\ & (\reg_Z|R\(40)))) # (\Equal1~0_combout\ & (((\reg_M|R\(40))))) ) + ( \Add0~98_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111101111010001000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~0_combout\,
	datab => \ALT_INV_ldZ~0_combout\,
	datac => \reg_Z|ALT_INV_R\(40),
	datad => \ALT_INV_Add1~259_combout\,
	dataf => \reg_M|ALT_INV_R\(40),
	cin => \Add0~98_cout\,
	cout => \Add0~94_cout\);

-- Location: LABCELL_X23_Y9_N36
\Add0~90\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~90_cout\ = CARRY(( (!\Equal1~0_combout\ & (!\ldZ~0_combout\ & (\reg_Z|R[41]~DUPLICATE_q\))) # (\Equal1~0_combout\ & (((\reg_M|R\(41))))) ) + ( !\a_s~0_combout\ $ (((!\Equal1~0_combout\) # (!\reg_Z|R[41]~DUPLICATE_q\))) ) + ( \Add0~94_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100000010100000000000000000000100001011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~0_combout\,
	datab => \ALT_INV_ldZ~0_combout\,
	datac => \reg_Z|ALT_INV_R[41]~DUPLICATE_q\,
	datad => \reg_M|ALT_INV_R\(41),
	dataf => \ALT_INV_a_s~0_combout\,
	cin => \Add0~94_cout\,
	cout => \Add0~90_cout\);

-- Location: LABCELL_X23_Y9_N39
\Add0~86\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~86_cout\ = CARRY(( (!\Equal1~0_combout\ & (!\ldZ~0_combout\ & (\reg_Z|R\(42)))) # (\Equal1~0_combout\ & (((\reg_M|R\(42))))) ) + ( !\Add1~285_combout\ ) + ( \Add0~90_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000100001011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~0_combout\,
	datab => \ALT_INV_ldZ~0_combout\,
	datac => \reg_Z|ALT_INV_R\(42),
	datad => \reg_M|ALT_INV_R\(42),
	dataf => \ALT_INV_Add1~285_combout\,
	cin => \Add0~90_cout\,
	cout => \Add0~86_cout\);

-- Location: LABCELL_X23_Y9_N42
\Add0~82\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~82_cout\ = CARRY(( (!\Equal1~0_combout\ & (!\ldZ~0_combout\ & (\reg_Z|R\(43)))) # (\Equal1~0_combout\ & (((\reg_M|R\(43))))) ) + ( !\a_s~0_combout\ $ (((!\Equal1~0_combout\) # (!\reg_Z|R\(43)))) ) + ( \Add0~86_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100000010100000000000000000000100001011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~0_combout\,
	datab => \ALT_INV_ldZ~0_combout\,
	datac => \reg_Z|ALT_INV_R\(43),
	datad => \reg_M|ALT_INV_R\(43),
	dataf => \ALT_INV_a_s~0_combout\,
	cin => \Add0~86_cout\,
	cout => \Add0~82_cout\);

-- Location: LABCELL_X23_Y9_N45
\Add0~78\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~78_cout\ = CARRY(( !\Add1~311_combout\ ) + ( (!\Equal1~0_combout\ & (!\ldZ~0_combout\ & (\reg_Z|R[44]~DUPLICATE_q\))) # (\Equal1~0_combout\ & (((\reg_M|R\(44))))) ) + ( \Add0~82_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111101111010001000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~0_combout\,
	datab => \ALT_INV_ldZ~0_combout\,
	datac => \reg_Z|ALT_INV_R[44]~DUPLICATE_q\,
	datad => \ALT_INV_Add1~311_combout\,
	dataf => \reg_M|ALT_INV_R\(44),
	cin => \Add0~82_cout\,
	cout => \Add0~78_cout\);

-- Location: LABCELL_X23_Y9_N48
\Add0~74\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~74_cout\ = CARRY(( (!\Equal1~0_combout\ & (!\ldZ~0_combout\ & (\reg_Z|R[45]~DUPLICATE_q\))) # (\Equal1~0_combout\ & (((\reg_M|R\(45))))) ) + ( !\a_s~0_combout\ $ (((!\Equal1~0_combout\) # (!\reg_Z|R[45]~DUPLICATE_q\))) ) + ( \Add0~78_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100000010100000000000000000000100001011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~0_combout\,
	datab => \ALT_INV_ldZ~0_combout\,
	datac => \reg_Z|ALT_INV_R[45]~DUPLICATE_q\,
	datad => \reg_M|ALT_INV_R\(45),
	dataf => \ALT_INV_a_s~0_combout\,
	cin => \Add0~78_cout\,
	cout => \Add0~74_cout\);

-- Location: LABCELL_X23_Y9_N51
\Add0~70\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~70_cout\ = CARRY(( !\Add1~337_combout\ ) + ( (!\Equal1~0_combout\ & (!\ldZ~0_combout\ & (\reg_Z|R[46]~DUPLICATE_q\))) # (\Equal1~0_combout\ & (((\reg_M|R\(46))))) ) + ( \Add0~74_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111101111010001000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~0_combout\,
	datab => \ALT_INV_ldZ~0_combout\,
	datac => \reg_Z|ALT_INV_R[46]~DUPLICATE_q\,
	datad => \ALT_INV_Add1~337_combout\,
	dataf => \reg_M|ALT_INV_R\(46),
	cin => \Add0~74_cout\,
	cout => \Add0~70_cout\);

-- Location: LABCELL_X23_Y9_N54
\Add0~66\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~66_cout\ = CARRY(( (!\Equal1~0_combout\ & (!\ldZ~0_combout\ & (\reg_Z|R[47]~DUPLICATE_q\))) # (\Equal1~0_combout\ & (((\reg_M|R\(47))))) ) + ( !\a_s~0_combout\ $ (((!\Equal1~0_combout\) # (!\reg_Z|R[47]~DUPLICATE_q\))) ) + ( \Add0~70_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100000010100000000000000000000100001011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~0_combout\,
	datab => \ALT_INV_ldZ~0_combout\,
	datac => \reg_Z|ALT_INV_R[47]~DUPLICATE_q\,
	datad => \reg_M|ALT_INV_R\(47),
	dataf => \ALT_INV_a_s~0_combout\,
	cin => \Add0~70_cout\,
	cout => \Add0~66_cout\);

-- Location: LABCELL_X23_Y9_N57
\Add0~62\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~62_cout\ = CARRY(( !\Add1~346_combout\ ) + ( (!\Equal1~0_combout\ & (!\ldZ~0_combout\ & (\reg_Z|R\(48)))) # (\Equal1~0_combout\ & (((\reg_M|R\(48))))) ) + ( \Add0~66_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111101111010001000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~0_combout\,
	datab => \ALT_INV_ldZ~0_combout\,
	datac => \reg_Z|ALT_INV_R\(48),
	datad => \ALT_INV_Add1~346_combout\,
	dataf => \reg_M|ALT_INV_R\(48),
	cin => \Add0~66_cout\,
	cout => \Add0~62_cout\);

-- Location: LABCELL_X23_Y8_N0
\Add0~58\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~58_cout\ = CARRY(( !\a_s~0_combout\ $ (((!\Equal1~0_combout\) # (!\reg_Z|R\(49)))) ) + ( (!\Equal1~0_combout\ & (!\ldZ~0_combout\ & (\reg_Z|R\(49)))) # (\Equal1~0_combout\ & (((\reg_M|R\(49))))) ) + ( \Add0~62_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111101111010001000000000000000000000010111111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~0_combout\,
	datab => \ALT_INV_ldZ~0_combout\,
	datac => \reg_Z|ALT_INV_R\(49),
	datad => \ALT_INV_a_s~0_combout\,
	dataf => \reg_M|ALT_INV_R\(49),
	cin => \Add0~62_cout\,
	cout => \Add0~58_cout\);

-- Location: LABCELL_X23_Y8_N3
\Add0~54\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~54_cout\ = CARRY(( !\Add1~320_combout\ ) + ( (!\Equal1~0_combout\ & (!\ldZ~0_combout\ & (\reg_Z|R[50]~DUPLICATE_q\))) # (\Equal1~0_combout\ & (((\reg_M|R\(50))))) ) + ( \Add0~58_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111101111010001000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~0_combout\,
	datab => \ALT_INV_ldZ~0_combout\,
	datac => \reg_Z|ALT_INV_R[50]~DUPLICATE_q\,
	datad => \ALT_INV_Add1~320_combout\,
	dataf => \reg_M|ALT_INV_R\(50),
	cin => \Add0~58_cout\,
	cout => \Add0~54_cout\);

-- Location: LABCELL_X23_Y8_N6
\Add0~50\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~50_cout\ = CARRY(( !\a_s~0_combout\ $ (((!\Equal1~0_combout\) # (!\reg_Z|R[51]~DUPLICATE_q\))) ) + ( (!\Equal1~0_combout\ & (!\ldZ~0_combout\ & (\reg_Z|R[51]~DUPLICATE_q\))) # (\Equal1~0_combout\ & (((\reg_M|R\(51))))) ) + ( \Add0~54_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111101111010001000000000000000000000010111111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~0_combout\,
	datab => \ALT_INV_ldZ~0_combout\,
	datac => \reg_Z|ALT_INV_R[51]~DUPLICATE_q\,
	datad => \ALT_INV_a_s~0_combout\,
	dataf => \reg_M|ALT_INV_R\(51),
	cin => \Add0~54_cout\,
	cout => \Add0~50_cout\);

-- Location: LABCELL_X23_Y8_N9
\Add0~46\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~46_cout\ = CARRY(( !\Add1~294_combout\ ) + ( (!\Equal1~0_combout\ & (!\ldZ~0_combout\ & (\reg_Z|R\(52)))) # (\Equal1~0_combout\ & (((\reg_M|R\(52))))) ) + ( \Add0~50_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111101111010001000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~0_combout\,
	datab => \ALT_INV_ldZ~0_combout\,
	datac => \reg_Z|ALT_INV_R\(52),
	datad => \ALT_INV_Add1~294_combout\,
	dataf => \reg_M|ALT_INV_R\(52),
	cin => \Add0~50_cout\,
	cout => \Add0~46_cout\);

-- Location: LABCELL_X23_Y8_N12
\Add0~42\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~42_cout\ = CARRY(( !\a_s~0_combout\ $ (((!\Equal1~0_combout\) # (!\reg_Z|R\(53)))) ) + ( (!\Equal1~0_combout\ & (!\ldZ~0_combout\ & (\reg_Z|R\(53)))) # (\Equal1~0_combout\ & (((\reg_M|R\(53))))) ) + ( \Add0~46_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111101111010001000000000000000000000010111111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~0_combout\,
	datab => \ALT_INV_ldZ~0_combout\,
	datac => \reg_Z|ALT_INV_R\(53),
	datad => \ALT_INV_a_s~0_combout\,
	dataf => \reg_M|ALT_INV_R\(53),
	cin => \Add0~46_cout\,
	cout => \Add0~42_cout\);

-- Location: LABCELL_X23_Y8_N15
\Add0~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~38_cout\ = CARRY(( !\Add1~268_combout\ ) + ( (!\Equal1~0_combout\ & (!\ldZ~0_combout\ & (\reg_Z|R\(54)))) # (\Equal1~0_combout\ & (((\reg_M|R\(54))))) ) + ( \Add0~42_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111101111010001000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~0_combout\,
	datab => \ALT_INV_ldZ~0_combout\,
	datac => \reg_Z|ALT_INV_R\(54),
	datad => \ALT_INV_Add1~268_combout\,
	dataf => \reg_M|ALT_INV_R\(54),
	cin => \Add0~42_cout\,
	cout => \Add0~38_cout\);

-- Location: LABCELL_X23_Y8_N18
\Add0~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~34_cout\ = CARRY(( !\a_s~0_combout\ $ (((!\Equal1~0_combout\) # (!\reg_Z|R\(55)))) ) + ( (!\Equal1~0_combout\ & (!\ldZ~0_combout\ & (\reg_Z|R\(55)))) # (\Equal1~0_combout\ & (((\reg_M|R\(55))))) ) + ( \Add0~38_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111101111010001000000000000000000000010111111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~0_combout\,
	datab => \ALT_INV_ldZ~0_combout\,
	datac => \reg_Z|ALT_INV_R\(55),
	datad => \ALT_INV_a_s~0_combout\,
	dataf => \reg_M|ALT_INV_R\(55),
	cin => \Add0~38_cout\,
	cout => \Add0~34_cout\);

-- Location: LABCELL_X23_Y8_N21
\Add0~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~30_cout\ = CARRY(( (!\Equal1~0_combout\ & (!\ldZ~0_combout\ & (\reg_Z|R\(56)))) # (\Equal1~0_combout\ & (((\reg_M|R\(56))))) ) + ( !\Add1~242_combout\ ) + ( \Add0~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000100001011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~0_combout\,
	datab => \ALT_INV_ldZ~0_combout\,
	datac => \reg_Z|ALT_INV_R\(56),
	datad => \reg_M|ALT_INV_R\(56),
	dataf => \ALT_INV_Add1~242_combout\,
	cin => \Add0~34_cout\,
	cout => \Add0~30_cout\);

-- Location: LABCELL_X23_Y8_N24
\Add0~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~26_cout\ = CARRY(( (!\Equal1~0_combout\ & (!\ldZ~0_combout\ & (\reg_Z|R[57]~DUPLICATE_q\))) # (\Equal1~0_combout\ & (((\reg_M|R\(57))))) ) + ( !\a_s~0_combout\ $ (((!\Equal1~0_combout\) # (!\reg_Z|R[57]~DUPLICATE_q\))) ) + ( \Add0~30_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111000000001100000000000000000000100000111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ldZ~0_combout\,
	datab => \ALT_INV_Equal1~0_combout\,
	datac => \reg_Z|ALT_INV_R[57]~DUPLICATE_q\,
	datad => \reg_M|ALT_INV_R\(57),
	dataf => \ALT_INV_a_s~0_combout\,
	cin => \Add0~30_cout\,
	cout => \Add0~26_cout\);

-- Location: LABCELL_X23_Y8_N27
\Add0~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~22_cout\ = CARRY(( (!\Equal1~0_combout\ & (!\ldZ~0_combout\ & (\reg_Z|R\(58)))) # (\Equal1~0_combout\ & (((\reg_M|R\(58))))) ) + ( !\Add1~216_combout\ ) + ( \Add0~26_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000100000111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ldZ~0_combout\,
	datab => \ALT_INV_Equal1~0_combout\,
	datac => \reg_Z|ALT_INV_R\(58),
	datad => \reg_M|ALT_INV_R\(58),
	dataf => \ALT_INV_Add1~216_combout\,
	cin => \Add0~26_cout\,
	cout => \Add0~22_cout\);

-- Location: LABCELL_X23_Y8_N30
\Add0~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~18_cout\ = CARRY(( !\a_s~0_combout\ $ (((!\Equal1~0_combout\) # (!\reg_Z|R\(59)))) ) + ( (!\Equal1~0_combout\ & (!\ldZ~0_combout\ & (\reg_Z|R\(59)))) # (\Equal1~0_combout\ & (((\reg_M|R\(59))))) ) + ( \Add0~22_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111101111100010000000000000000000000001111111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ldZ~0_combout\,
	datab => \ALT_INV_Equal1~0_combout\,
	datac => \reg_Z|ALT_INV_R\(59),
	datad => \ALT_INV_a_s~0_combout\,
	dataf => \reg_M|ALT_INV_R\(59),
	cin => \Add0~22_cout\,
	cout => \Add0~18_cout\);

-- Location: LABCELL_X23_Y8_N33
\Add0~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~14_cout\ = CARRY(( !\Add1~190_combout\ ) + ( (!\Equal1~0_combout\ & (!\ldZ~0_combout\ & (\reg_Z|R\(60)))) # (\Equal1~0_combout\ & (((\reg_M|R\(60))))) ) + ( \Add0~18_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111101111100010000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ldZ~0_combout\,
	datab => \ALT_INV_Equal1~0_combout\,
	datac => \reg_Z|ALT_INV_R\(60),
	datad => \ALT_INV_Add1~190_combout\,
	dataf => \reg_M|ALT_INV_R\(60),
	cin => \Add0~18_cout\,
	cout => \Add0~14_cout\);

-- Location: LABCELL_X23_Y8_N36
\Add0~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~10_cout\ = CARRY(( !\a_s~0_combout\ $ (((!\Equal1~0_combout\) # (!\reg_Z|R\(61)))) ) + ( (!\Equal1~0_combout\ & (!\ldZ~0_combout\ & (\reg_Z|R\(61)))) # (\Equal1~0_combout\ & (((\reg_M|R\(61))))) ) + ( \Add0~14_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111101111100010000000000000000000000001111111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ldZ~0_combout\,
	datab => \ALT_INV_Equal1~0_combout\,
	datac => \reg_Z|ALT_INV_R\(61),
	datad => \ALT_INV_a_s~0_combout\,
	dataf => \reg_M|ALT_INV_R\(61),
	cin => \Add0~14_cout\,
	cout => \Add0~10_cout\);

-- Location: LABCELL_X23_Y8_N39
\Add0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~6_cout\ = CARRY(( !\Add1~164_combout\ ) + ( (!\Equal1~0_combout\ & (!\ldZ~0_combout\ & (\reg_Z|R\(62)))) # (\Equal1~0_combout\ & (((\reg_M|R\(62))))) ) + ( \Add0~10_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111101111100010000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ldZ~0_combout\,
	datab => \ALT_INV_Equal1~0_combout\,
	datac => \reg_Z|ALT_INV_R\(62),
	datad => \ALT_INV_Add1~164_combout\,
	dataf => \reg_M|ALT_INV_R\(62),
	cin => \Add0~10_cout\,
	cout => \Add0~6_cout\);

-- Location: LABCELL_X23_Y8_N42
\Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~1_sumout\ = SUM(( !\a_s~0_combout\ $ (((!\reg_Z|R\(63)) # (!\Equal1~0_combout\))) ) + ( (!\Equal1~0_combout\ & (\reg_Z|R\(63) & (!\ldZ~0_combout\))) # (\Equal1~0_combout\ & (((\reg_M|R\(63))))) ) + ( \Add0~6_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101111111000110000000000000000000001000111101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg_Z|ALT_INV_R\(63),
	datab => \ALT_INV_Equal1~0_combout\,
	datac => \ALT_INV_ldZ~0_combout\,
	datad => \ALT_INV_a_s~0_combout\,
	dataf => \reg_M|ALT_INV_R\(63),
	cin => \Add0~6_cout\,
	sumout => \Add0~1_sumout\);

-- Location: LABCELL_X22_Y10_N0
\reg_Z|R~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_Z|R~1_combout\ = ( \reg_Z|R\(63) & ( \Add0~1_sumout\ & ( (!\state.S_6~q\) # (!\ldZ~0_combout\) ) ) ) # ( !\reg_Z|R\(63) & ( \Add0~1_sumout\ & ( !\ldZ~0_combout\ ) ) ) # ( \reg_Z|R\(63) & ( !\Add0~1_sumout\ & ( (!\state.S_6~q\ & \ldZ~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010100000101011110000111100001111101011111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.S_6~q\,
	datac => \ALT_INV_ldZ~0_combout\,
	datae => \reg_Z|ALT_INV_R\(63),
	dataf => \ALT_INV_Add0~1_sumout\,
	combout => \reg_Z|R~1_combout\);

-- Location: FF_X22_Y10_N1
\reg_Z|R[63]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg_Z|R~1_combout\,
	sclr => \state.S_init~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_Z|R\(63));

-- Location: FF_X23_Y9_N8
\reg_Z|R[47]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg_Z|R[47]~feeder_combout\,
	asdata => \reg_Z|R\(48),
	sclr => \state.S_init~q\,
	sload => \ldZ~0_combout\,
	ena => \reg_Z|R[52]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_Z|R\(47));

-- Location: FF_X23_Y9_N26
\reg_Z|R[44]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg_Z|R[44]~feeder_combout\,
	asdata => \reg_Z|R[45]~DUPLICATE_q\,
	sclr => \state.S_init~q\,
	sload => \ldZ~0_combout\,
	ena => \reg_Z|R[52]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_Z|R\(44));

-- Location: FF_X25_Y10_N50
\reg_Z|R[35]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg_Z|R[35]~feeder_combout\,
	asdata => \reg_Z|R\(36),
	sclr => \state.S_init~q\,
	sload => \ldZ~0_combout\,
	ena => \reg_Z|R[52]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_Z|R\(35));

-- Location: FF_X25_Y10_N38
\reg_Z|R[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg_Z|R[31]~feeder_combout\,
	asdata => \reg_Z|R\(32),
	sclr => \state.S_init~q\,
	sload => \ldZ~0_combout\,
	ena => \reg_Z|R[52]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_Z|R\(31));

-- Location: FF_X25_Y11_N35
\reg_Z|R[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg_Z|R[27]~feeder_combout\,
	asdata => \reg_Z|R\(28),
	sclr => \state.S_init~q\,
	sload => \ldZ~0_combout\,
	ena => \reg_Z|R[52]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_Z|R\(27));

-- Location: MLABCELL_X25_Y13_N30
\Add1~545\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~545_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \Add1~545_cout\);

-- Location: MLABCELL_X25_Y13_N33
\Add1~541\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~541_cout\ = CARRY(( !\reg_Z|R\(0) ) + ( \reg_M|R\(0) ) + ( \Add1~545_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \reg_M|ALT_INV_R\(0),
	datad => \reg_Z|ALT_INV_R\(0),
	cin => \Add1~545_cout\,
	cout => \Add1~541_cout\);

-- Location: MLABCELL_X25_Y13_N36
\Add1~537\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~537_cout\ = CARRY(( !\reg_Z|R[1]~DUPLICATE_q\ ) + ( \reg_M|R\(1) ) + ( \Add1~541_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \reg_Z|ALT_INV_R[1]~DUPLICATE_q\,
	datac => \reg_M|ALT_INV_R\(1),
	cin => \Add1~541_cout\,
	cout => \Add1~537_cout\);

-- Location: MLABCELL_X25_Y13_N39
\Add1~533\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~533_cout\ = CARRY(( !\reg_Z|R\(2) ) + ( \reg_M|R\(2) ) + ( \Add1~537_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \reg_M|ALT_INV_R\(2),
	datad => \reg_Z|ALT_INV_R\(2),
	cin => \Add1~537_cout\,
	cout => \Add1~533_cout\);

-- Location: MLABCELL_X25_Y13_N42
\Add1~529\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~529_cout\ = CARRY(( !\reg_Z|R[3]~DUPLICATE_q\ ) + ( \reg_M|R\(3) ) + ( \Add1~533_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \reg_Z|ALT_INV_R[3]~DUPLICATE_q\,
	datac => \reg_M|ALT_INV_R\(3),
	cin => \Add1~533_cout\,
	cout => \Add1~529_cout\);

-- Location: MLABCELL_X25_Y13_N45
\Add1~525\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~525_cout\ = CARRY(( \reg_M|R\(4) ) + ( !\reg_Z|R\(4) ) + ( \Add1~529_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \reg_Z|ALT_INV_R\(4),
	datad => \reg_M|ALT_INV_R\(4),
	cin => \Add1~529_cout\,
	cout => \Add1~525_cout\);

-- Location: MLABCELL_X25_Y13_N48
\Add1~521\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~521_cout\ = CARRY(( !\reg_Z|R\(5) ) + ( \reg_M|R\(5) ) + ( \Add1~525_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \reg_M|ALT_INV_R\(5),
	datad => \reg_Z|ALT_INV_R\(5),
	cin => \Add1~525_cout\,
	cout => \Add1~521_cout\);

-- Location: MLABCELL_X25_Y13_N51
\Add1~517\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~517_cout\ = CARRY(( \reg_M|R\(6) ) + ( !\reg_Z|R\(6) ) + ( \Add1~521_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \reg_Z|ALT_INV_R\(6),
	datad => \reg_M|ALT_INV_R\(6),
	cin => \Add1~521_cout\,
	cout => \Add1~517_cout\);

-- Location: MLABCELL_X25_Y13_N54
\Add1~513\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~513_cout\ = CARRY(( !\reg_Z|R[7]~DUPLICATE_q\ ) + ( \reg_M|R\(7) ) + ( \Add1~517_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \reg_M|ALT_INV_R\(7),
	datad => \reg_Z|ALT_INV_R[7]~DUPLICATE_q\,
	cin => \Add1~517_cout\,
	cout => \Add1~513_cout\);

-- Location: MLABCELL_X25_Y13_N57
\Add1~509\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~509_cout\ = CARRY(( !\reg_Z|R\(8) ) + ( \reg_M|R\(8) ) + ( \Add1~513_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \reg_M|ALT_INV_R\(8),
	datad => \reg_Z|ALT_INV_R\(8),
	cin => \Add1~513_cout\,
	cout => \Add1~509_cout\);

-- Location: MLABCELL_X25_Y12_N0
\Add1~505\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~505_cout\ = CARRY(( \reg_M|R\(9) ) + ( !\reg_Z|R\(9) ) + ( \Add1~509_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \reg_Z|ALT_INV_R\(9),
	datad => \reg_M|ALT_INV_R\(9),
	cin => \Add1~509_cout\,
	cout => \Add1~505_cout\);

-- Location: MLABCELL_X25_Y12_N3
\Add1~501\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~501_cout\ = CARRY(( \reg_M|R\(10) ) + ( !\reg_Z|R\(10) ) + ( \Add1~505_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \reg_Z|ALT_INV_R\(10),
	datad => \reg_M|ALT_INV_R\(10),
	cin => \Add1~505_cout\,
	cout => \Add1~501_cout\);

-- Location: MLABCELL_X25_Y12_N6
\Add1~497\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~497_cout\ = CARRY(( (!\Equal1~0_combout\ & (!\ldZ~0_combout\ & (\reg_Z|R\(11)))) # (\Equal1~0_combout\ & (((\reg_M|R\(11))))) ) + ( !\reg_Z|R\(11) ) + ( \Add1~501_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000000000100000111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ldZ~0_combout\,
	datab => \ALT_INV_Equal1~0_combout\,
	datac => \reg_Z|ALT_INV_R\(11),
	datad => \reg_M|ALT_INV_R\(11),
	cin => \Add1~501_cout\,
	cout => \Add1~497_cout\);

-- Location: MLABCELL_X25_Y12_N9
\Add1~493\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~493_cout\ = CARRY(( !\Add1~141_combout\ ) + ( (!\Equal1~0_combout\ & (!\ldZ~0_combout\ & (\reg_Z|R\(12)))) # (\Equal1~0_combout\ & (((\reg_M|R\(12))))) ) + ( \Add1~497_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111101111100010000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ldZ~0_combout\,
	datab => \ALT_INV_Equal1~0_combout\,
	datac => \reg_Z|ALT_INV_R\(12),
	datad => \ALT_INV_Add1~141_combout\,
	dataf => \reg_M|ALT_INV_R\(12),
	cin => \Add1~497_cout\,
	cout => \Add1~493_cout\);

-- Location: MLABCELL_X25_Y12_N12
\Add1~489\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~489_cout\ = CARRY(( !\a_s~0_combout\ $ (((!\Equal1~0_combout\) # (!\reg_Z|R\(13)))) ) + ( (!\Equal1~0_combout\ & (!\ldZ~0_combout\ & (\reg_Z|R\(13)))) # (\Equal1~0_combout\ & (((\reg_M|R\(13))))) ) + ( \Add1~493_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111101111100010000000000000000000000001111111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ldZ~0_combout\,
	datab => \ALT_INV_Equal1~0_combout\,
	datac => \reg_Z|ALT_INV_R\(13),
	datad => \ALT_INV_a_s~0_combout\,
	dataf => \reg_M|ALT_INV_R\(13),
	cin => \Add1~493_cout\,
	cout => \Add1~489_cout\);

-- Location: MLABCELL_X25_Y12_N15
\Add1~485\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~485_cout\ = CARRY(( !\Add1~142_combout\ ) + ( (!\Equal1~0_combout\ & (!\ldZ~0_combout\ & (\reg_Z|R[14]~DUPLICATE_q\))) # (\Equal1~0_combout\ & (((\reg_M|R\(14))))) ) + ( \Add1~489_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111101111100010000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ldZ~0_combout\,
	datab => \ALT_INV_Equal1~0_combout\,
	datac => \reg_Z|ALT_INV_R[14]~DUPLICATE_q\,
	datad => \ALT_INV_Add1~142_combout\,
	dataf => \reg_M|ALT_INV_R\(14),
	cin => \Add1~489_cout\,
	cout => \Add1~485_cout\);

-- Location: MLABCELL_X25_Y12_N18
\Add1~481\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~481_cout\ = CARRY(( !\a_s~0_combout\ $ (((!\Equal1~0_combout\) # (!\reg_Z|R\(15)))) ) + ( (!\Equal1~0_combout\ & (!\ldZ~0_combout\ & (\reg_Z|R\(15)))) # (\Equal1~0_combout\ & (((\reg_M|R\(15))))) ) + ( \Add1~485_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111101111100010000000000000000000000001111111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ldZ~0_combout\,
	datab => \ALT_INV_Equal1~0_combout\,
	datac => \reg_Z|ALT_INV_R\(15),
	datad => \ALT_INV_a_s~0_combout\,
	dataf => \reg_M|ALT_INV_R\(15),
	cin => \Add1~485_cout\,
	cout => \Add1~481_cout\);

-- Location: MLABCELL_X25_Y12_N21
\Add1~477\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~477_cout\ = CARRY(( !\Add1~143_combout\ ) + ( (!\Equal1~0_combout\ & (!\ldZ~0_combout\ & (\reg_Z|R\(16)))) # (\Equal1~0_combout\ & (((\reg_M|R\(16))))) ) + ( \Add1~481_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111101111100010000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ldZ~0_combout\,
	datab => \ALT_INV_Equal1~0_combout\,
	datac => \reg_Z|ALT_INV_R\(16),
	datad => \ALT_INV_Add1~143_combout\,
	dataf => \reg_M|ALT_INV_R\(16),
	cin => \Add1~481_cout\,
	cout => \Add1~477_cout\);

-- Location: MLABCELL_X25_Y12_N24
\Add1~473\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~473_cout\ = CARRY(( !\a_s~0_combout\ $ (((!\Equal1~0_combout\) # (!\reg_Z|R\(17)))) ) + ( (!\Equal1~0_combout\ & (!\ldZ~0_combout\ & (\reg_Z|R\(17)))) # (\Equal1~0_combout\ & (((\reg_M|R\(17))))) ) + ( \Add1~477_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111101111100010000000000000000000000001111111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ldZ~0_combout\,
	datab => \ALT_INV_Equal1~0_combout\,
	datac => \reg_Z|ALT_INV_R\(17),
	datad => \ALT_INV_a_s~0_combout\,
	dataf => \reg_M|ALT_INV_R\(17),
	cin => \Add1~477_cout\,
	cout => \Add1~473_cout\);

-- Location: MLABCELL_X25_Y12_N27
\Add1~469\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~469_cout\ = CARRY(( !\Add1~144_combout\ ) + ( (!\Equal1~0_combout\ & (!\ldZ~0_combout\ & (\reg_Z|R\(18)))) # (\Equal1~0_combout\ & (((\reg_M|R\(18))))) ) + ( \Add1~473_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111101111100010000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ldZ~0_combout\,
	datab => \ALT_INV_Equal1~0_combout\,
	datac => \reg_Z|ALT_INV_R\(18),
	datad => \ALT_INV_Add1~144_combout\,
	dataf => \reg_M|ALT_INV_R\(18),
	cin => \Add1~473_cout\,
	cout => \Add1~469_cout\);

-- Location: MLABCELL_X25_Y11_N0
\Add1~465\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~465_cout\ = CARRY(( !\a_s~0_combout\ $ (((!\Equal1~0_combout\) # (!\reg_Z|R\(19)))) ) + ( (!\Equal1~0_combout\ & (!\ldZ~0_combout\ & (\reg_Z|R\(19)))) # (\Equal1~0_combout\ & (((\reg_M|R\(19))))) ) + ( \Add1~469_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111101111010001000000000000000000000010111111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~0_combout\,
	datab => \ALT_INV_ldZ~0_combout\,
	datac => \reg_Z|ALT_INV_R\(19),
	datad => \ALT_INV_a_s~0_combout\,
	dataf => \reg_M|ALT_INV_R\(19),
	cin => \Add1~469_cout\,
	cout => \Add1~465_cout\);

-- Location: MLABCELL_X25_Y11_N3
\Add1~461\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~461_cout\ = CARRY(( !\Add1~145_combout\ ) + ( (!\Equal1~0_combout\ & (!\ldZ~0_combout\ & (\reg_Z|R\(20)))) # (\Equal1~0_combout\ & (((\reg_M|R\(20))))) ) + ( \Add1~465_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111101111010001000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~0_combout\,
	datab => \ALT_INV_ldZ~0_combout\,
	datac => \reg_Z|ALT_INV_R\(20),
	datad => \ALT_INV_Add1~145_combout\,
	dataf => \reg_M|ALT_INV_R\(20),
	cin => \Add1~465_cout\,
	cout => \Add1~461_cout\);

-- Location: MLABCELL_X25_Y11_N6
\Add1~457\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~457_cout\ = CARRY(( (!\Equal1~0_combout\ & (!\ldZ~0_combout\ & (\reg_Z|R\(21)))) # (\Equal1~0_combout\ & (((\reg_M|R\(21))))) ) + ( !\a_s~0_combout\ $ (((!\Equal1~0_combout\) # (!\reg_Z|R\(21)))) ) + ( \Add1~461_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100000010100000000000000000000100001011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~0_combout\,
	datab => \ALT_INV_ldZ~0_combout\,
	datac => \reg_Z|ALT_INV_R\(21),
	datad => \reg_M|ALT_INV_R\(21),
	dataf => \ALT_INV_a_s~0_combout\,
	cin => \Add1~461_cout\,
	cout => \Add1~457_cout\);

-- Location: MLABCELL_X25_Y11_N9
\Add1~453\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~453_cout\ = CARRY(( !\Add1~146_combout\ ) + ( (!\Equal1~0_combout\ & (!\ldZ~0_combout\ & (\reg_Z|R[22]~DUPLICATE_q\))) # (\Equal1~0_combout\ & (((\reg_M|R\(22))))) ) + ( \Add1~457_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111101111010001000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~0_combout\,
	datab => \ALT_INV_ldZ~0_combout\,
	datac => \reg_Z|ALT_INV_R[22]~DUPLICATE_q\,
	datad => \ALT_INV_Add1~146_combout\,
	dataf => \reg_M|ALT_INV_R\(22),
	cin => \Add1~457_cout\,
	cout => \Add1~453_cout\);

-- Location: MLABCELL_X25_Y11_N12
\Add1~449\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~449_cout\ = CARRY(( !\a_s~0_combout\ $ (((!\Equal1~0_combout\) # (!\reg_Z|R[23]~DUPLICATE_q\))) ) + ( (!\Equal1~0_combout\ & (!\ldZ~0_combout\ & (\reg_Z|R[23]~DUPLICATE_q\))) # (\Equal1~0_combout\ & (((\reg_M|R\(23))))) ) + ( \Add1~453_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111101111010001000000000000000000000010111111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~0_combout\,
	datab => \ALT_INV_ldZ~0_combout\,
	datac => \reg_Z|ALT_INV_R[23]~DUPLICATE_q\,
	datad => \ALT_INV_a_s~0_combout\,
	dataf => \reg_M|ALT_INV_R\(23),
	cin => \Add1~453_cout\,
	cout => \Add1~449_cout\);

-- Location: MLABCELL_X25_Y11_N15
\Add1~445\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~445_cout\ = CARRY(( !\Add1~147_combout\ ) + ( (!\Equal1~0_combout\ & (!\ldZ~0_combout\ & (\reg_Z|R\(24)))) # (\Equal1~0_combout\ & (((\reg_M|R\(24))))) ) + ( \Add1~449_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111101111010001000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~0_combout\,
	datab => \ALT_INV_ldZ~0_combout\,
	datac => \reg_Z|ALT_INV_R\(24),
	datad => \ALT_INV_Add1~147_combout\,
	dataf => \reg_M|ALT_INV_R\(24),
	cin => \Add1~449_cout\,
	cout => \Add1~445_cout\);

-- Location: MLABCELL_X25_Y11_N18
\Add1~441\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~441_cout\ = CARRY(( (!\Equal1~0_combout\ & (!\ldZ~0_combout\ & (\reg_Z|R\(25)))) # (\Equal1~0_combout\ & (((\reg_M|R\(25))))) ) + ( !\a_s~0_combout\ $ (((!\Equal1~0_combout\) # (!\reg_Z|R\(25)))) ) + ( \Add1~445_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100000010100000000000000000000100001011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~0_combout\,
	datab => \ALT_INV_ldZ~0_combout\,
	datac => \reg_Z|ALT_INV_R\(25),
	datad => \reg_M|ALT_INV_R\(25),
	dataf => \ALT_INV_a_s~0_combout\,
	cin => \Add1~445_cout\,
	cout => \Add1~441_cout\);

-- Location: MLABCELL_X25_Y11_N21
\Add1~437\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~437_cout\ = CARRY(( !\Add1~148_combout\ ) + ( (!\Equal1~0_combout\ & (!\ldZ~0_combout\ & (\reg_Z|R\(26)))) # (\Equal1~0_combout\ & (((\reg_M|R\(26))))) ) + ( \Add1~441_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111101111010001000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~0_combout\,
	datab => \ALT_INV_ldZ~0_combout\,
	datac => \reg_Z|ALT_INV_R\(26),
	datad => \ALT_INV_Add1~148_combout\,
	dataf => \reg_M|ALT_INV_R\(26),
	cin => \Add1~441_cout\,
	cout => \Add1~437_cout\);

-- Location: MLABCELL_X25_Y11_N24
\Add1~433\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~433_cout\ = CARRY(( (!\Equal1~0_combout\ & (!\ldZ~0_combout\ & (\reg_Z|R\(27)))) # (\Equal1~0_combout\ & (((\reg_M|R\(27))))) ) + ( !\a_s~0_combout\ $ (((!\Equal1~0_combout\) # (!\reg_Z|R\(27)))) ) + ( \Add1~437_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100000010100000000000000000000100001011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~0_combout\,
	datab => \ALT_INV_ldZ~0_combout\,
	datac => \reg_Z|ALT_INV_R\(27),
	datad => \reg_M|ALT_INV_R\(27),
	dataf => \ALT_INV_a_s~0_combout\,
	cin => \Add1~437_cout\,
	cout => \Add1~433_cout\);

-- Location: MLABCELL_X25_Y11_N27
\Add1~429\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~429_cout\ = CARRY(( (!\Equal1~0_combout\ & (!\ldZ~0_combout\ & (\reg_Z|R\(28)))) # (\Equal1~0_combout\ & (((\reg_M|R\(28))))) ) + ( !\Add1~149_combout\ ) + ( \Add1~433_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000100001011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~0_combout\,
	datab => \ALT_INV_ldZ~0_combout\,
	datac => \reg_Z|ALT_INV_R\(28),
	datad => \reg_M|ALT_INV_R\(28),
	dataf => \ALT_INV_Add1~149_combout\,
	cin => \Add1~433_cout\,
	cout => \Add1~429_cout\);

-- Location: MLABCELL_X25_Y10_N0
\Add1~425\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~425_cout\ = CARRY(( !\a_s~0_combout\ $ (((!\Equal1~0_combout\) # (!\reg_Z|R\(29)))) ) + ( (!\Equal1~0_combout\ & (!\ldZ~0_combout\ & (\reg_Z|R\(29)))) # (\Equal1~0_combout\ & (((\reg_M|R\(29))))) ) + ( \Add1~429_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111101111100010000000000000000000000001111111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ldZ~0_combout\,
	datab => \ALT_INV_Equal1~0_combout\,
	datac => \reg_Z|ALT_INV_R\(29),
	datad => \ALT_INV_a_s~0_combout\,
	dataf => \reg_M|ALT_INV_R\(29),
	cin => \Add1~429_cout\,
	cout => \Add1~425_cout\);

-- Location: MLABCELL_X25_Y10_N3
\Add1~421\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~421_cout\ = CARRY(( !\Add1~150_combout\ ) + ( (!\Equal1~0_combout\ & (!\ldZ~0_combout\ & (\reg_Z|R\(30)))) # (\Equal1~0_combout\ & (((\reg_M|R\(30))))) ) + ( \Add1~425_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111101111100010000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ldZ~0_combout\,
	datab => \ALT_INV_Equal1~0_combout\,
	datac => \reg_Z|ALT_INV_R\(30),
	datad => \ALT_INV_Add1~150_combout\,
	dataf => \reg_M|ALT_INV_R\(30),
	cin => \Add1~425_cout\,
	cout => \Add1~421_cout\);

-- Location: MLABCELL_X25_Y10_N6
\Add1~417\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~417_cout\ = CARRY(( !\a_s~0_combout\ $ (((!\Equal1~0_combout\) # (!\reg_Z|R\(31)))) ) + ( (!\Equal1~0_combout\ & (!\ldZ~0_combout\ & (\reg_Z|R\(31)))) # (\Equal1~0_combout\ & (((\reg_M|R\(31))))) ) + ( \Add1~421_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111101111010001000000000000000000000010111111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~0_combout\,
	datab => \ALT_INV_ldZ~0_combout\,
	datac => \reg_Z|ALT_INV_R\(31),
	datad => \ALT_INV_a_s~0_combout\,
	dataf => \reg_M|ALT_INV_R\(31),
	cin => \Add1~421_cout\,
	cout => \Add1~417_cout\);

-- Location: MLABCELL_X25_Y10_N9
\Add1~413\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~413_cout\ = CARRY(( (!\Equal1~0_combout\ & (!\ldZ~0_combout\ & (\reg_Z|R[32]~DUPLICATE_q\))) # (\Equal1~0_combout\ & (((\reg_M|R\(32))))) ) + ( !\Add1~159_combout\ ) + ( \Add1~417_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000100001011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~0_combout\,
	datab => \ALT_INV_ldZ~0_combout\,
	datac => \reg_Z|ALT_INV_R[32]~DUPLICATE_q\,
	datad => \reg_M|ALT_INV_R\(32),
	dataf => \ALT_INV_Add1~159_combout\,
	cin => \Add1~417_cout\,
	cout => \Add1~413_cout\);

-- Location: MLABCELL_X25_Y10_N12
\Add1~409\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~409_cout\ = CARRY(( !\a_s~0_combout\ $ (((!\Equal1~0_combout\) # (!\reg_Z|R[33]~DUPLICATE_q\))) ) + ( (!\Equal1~0_combout\ & (!\ldZ~0_combout\ & (\reg_Z|R[33]~DUPLICATE_q\))) # (\Equal1~0_combout\ & (((\reg_M|R\(33))))) ) + ( \Add1~413_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111101111010001000000000000000000000010111111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~0_combout\,
	datab => \ALT_INV_ldZ~0_combout\,
	datac => \reg_Z|ALT_INV_R[33]~DUPLICATE_q\,
	datad => \ALT_INV_a_s~0_combout\,
	dataf => \reg_M|ALT_INV_R\(33),
	cin => \Add1~413_cout\,
	cout => \Add1~409_cout\);

-- Location: MLABCELL_X25_Y10_N15
\Add1~405\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~405_cout\ = CARRY(( !\Add1~181_combout\ ) + ( (!\Equal1~0_combout\ & (!\ldZ~0_combout\ & (\reg_Z|R\(34)))) # (\Equal1~0_combout\ & (((\reg_M|R\(34))))) ) + ( \Add1~409_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111101111010001000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~0_combout\,
	datab => \ALT_INV_ldZ~0_combout\,
	datac => \reg_Z|ALT_INV_R\(34),
	datad => \ALT_INV_Add1~181_combout\,
	dataf => \reg_M|ALT_INV_R\(34),
	cin => \Add1~409_cout\,
	cout => \Add1~405_cout\);

-- Location: MLABCELL_X25_Y10_N18
\Add1~401\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~401_cout\ = CARRY(( !\a_s~0_combout\ $ (((!\Equal1~0_combout\) # (!\reg_Z|R\(35)))) ) + ( (!\Equal1~0_combout\ & (!\ldZ~0_combout\ & (\reg_Z|R\(35)))) # (\Equal1~0_combout\ & (((\reg_M|R\(35))))) ) + ( \Add1~405_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111101111010001000000000000000000000010111111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~0_combout\,
	datab => \ALT_INV_ldZ~0_combout\,
	datac => \reg_Z|ALT_INV_R\(35),
	datad => \ALT_INV_a_s~0_combout\,
	dataf => \reg_M|ALT_INV_R\(35),
	cin => \Add1~405_cout\,
	cout => \Add1~401_cout\);

-- Location: MLABCELL_X25_Y10_N21
\Add1~397\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~397_cout\ = CARRY(( (!\Equal1~0_combout\ & (!\ldZ~0_combout\ & (\reg_Z|R\(36)))) # (\Equal1~0_combout\ & (((\reg_M|R\(36))))) ) + ( !\Add1~207_combout\ ) + ( \Add1~401_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000100001011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~0_combout\,
	datab => \ALT_INV_ldZ~0_combout\,
	datac => \reg_Z|ALT_INV_R\(36),
	datad => \reg_M|ALT_INV_R\(36),
	dataf => \ALT_INV_Add1~207_combout\,
	cin => \Add1~401_cout\,
	cout => \Add1~397_cout\);

-- Location: MLABCELL_X25_Y10_N24
\Add1~393\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~393_cout\ = CARRY(( !\a_s~0_combout\ $ (((!\Equal1~0_combout\) # (!\reg_Z|R\(37)))) ) + ( (!\Equal1~0_combout\ & (!\ldZ~0_combout\ & (\reg_Z|R\(37)))) # (\Equal1~0_combout\ & (((\reg_M|R\(37))))) ) + ( \Add1~397_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111101111010001000000000000000000000010111111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~0_combout\,
	datab => \ALT_INV_ldZ~0_combout\,
	datac => \reg_Z|ALT_INV_R\(37),
	datad => \ALT_INV_a_s~0_combout\,
	dataf => \reg_M|ALT_INV_R\(37),
	cin => \Add1~397_cout\,
	cout => \Add1~393_cout\);

-- Location: MLABCELL_X25_Y10_N27
\Add1~389\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~389_cout\ = CARRY(( (!\Equal1~0_combout\ & (!\ldZ~0_combout\ & (\reg_Z|R\(38)))) # (\Equal1~0_combout\ & (((\reg_M|R\(38))))) ) + ( !\Add1~233_combout\ ) + ( \Add1~393_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000100001011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~0_combout\,
	datab => \ALT_INV_ldZ~0_combout\,
	datac => \reg_Z|ALT_INV_R\(38),
	datad => \reg_M|ALT_INV_R\(38),
	dataf => \ALT_INV_Add1~233_combout\,
	cin => \Add1~393_cout\,
	cout => \Add1~389_cout\);

-- Location: MLABCELL_X25_Y9_N0
\Add1~385\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~385_cout\ = CARRY(( (!\Equal1~0_combout\ & (!\ldZ~0_combout\ & (\reg_Z|R\(39)))) # (\Equal1~0_combout\ & (((\reg_M|R\(39))))) ) + ( !\a_s~0_combout\ $ (((!\Equal1~0_combout\) # (!\reg_Z|R\(39)))) ) + ( \Add1~389_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111000000001100000000000000000000100000111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ldZ~0_combout\,
	datab => \ALT_INV_Equal1~0_combout\,
	datac => \reg_Z|ALT_INV_R\(39),
	datad => \reg_M|ALT_INV_R\(39),
	dataf => \ALT_INV_a_s~0_combout\,
	cin => \Add1~389_cout\,
	cout => \Add1~385_cout\);

-- Location: MLABCELL_X25_Y9_N3
\Add1~381\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~381_cout\ = CARRY(( (!\Equal1~0_combout\ & (!\ldZ~0_combout\ & (\reg_Z|R\(40)))) # (\Equal1~0_combout\ & (((\reg_M|R\(40))))) ) + ( !\Add1~259_combout\ ) + ( \Add1~385_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000100000111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ldZ~0_combout\,
	datab => \ALT_INV_Equal1~0_combout\,
	datac => \reg_Z|ALT_INV_R\(40),
	datad => \reg_M|ALT_INV_R\(40),
	dataf => \ALT_INV_Add1~259_combout\,
	cin => \Add1~385_cout\,
	cout => \Add1~381_cout\);

-- Location: MLABCELL_X25_Y9_N6
\Add1~377\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~377_cout\ = CARRY(( (!\Equal1~0_combout\ & (!\ldZ~0_combout\ & (\reg_Z|R\(41)))) # (\Equal1~0_combout\ & (((\reg_M|R\(41))))) ) + ( !\a_s~0_combout\ $ (((!\Equal1~0_combout\) # (!\reg_Z|R\(41)))) ) + ( \Add1~381_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111000000001100000000000000000000100000111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ldZ~0_combout\,
	datab => \ALT_INV_Equal1~0_combout\,
	datac => \reg_Z|ALT_INV_R\(41),
	datad => \reg_M|ALT_INV_R\(41),
	dataf => \ALT_INV_a_s~0_combout\,
	cin => \Add1~381_cout\,
	cout => \Add1~377_cout\);

-- Location: MLABCELL_X25_Y9_N9
\Add1~373\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~373_cout\ = CARRY(( !\Add1~285_combout\ ) + ( (!\Equal1~0_combout\ & (!\ldZ~0_combout\ & (\reg_Z|R\(42)))) # (\Equal1~0_combout\ & (((\reg_M|R\(42))))) ) + ( \Add1~377_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111101111100010000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ldZ~0_combout\,
	datab => \ALT_INV_Equal1~0_combout\,
	datac => \reg_Z|ALT_INV_R\(42),
	datad => \ALT_INV_Add1~285_combout\,
	dataf => \reg_M|ALT_INV_R\(42),
	cin => \Add1~377_cout\,
	cout => \Add1~373_cout\);

-- Location: MLABCELL_X25_Y9_N12
\Add1~369\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~369_cout\ = CARRY(( !\a_s~0_combout\ $ (((!\Equal1~0_combout\) # (!\reg_Z|R\(43)))) ) + ( (!\Equal1~0_combout\ & (!\ldZ~0_combout\ & (\reg_Z|R\(43)))) # (\Equal1~0_combout\ & (((\reg_M|R\(43))))) ) + ( \Add1~373_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111101111100010000000000000000000000001111111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ldZ~0_combout\,
	datab => \ALT_INV_Equal1~0_combout\,
	datac => \reg_Z|ALT_INV_R\(43),
	datad => \ALT_INV_a_s~0_combout\,
	dataf => \reg_M|ALT_INV_R\(43),
	cin => \Add1~373_cout\,
	cout => \Add1~369_cout\);

-- Location: MLABCELL_X25_Y9_N15
\Add1~365\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~365_cout\ = CARRY(( !\Add1~311_combout\ ) + ( (!\Equal1~0_combout\ & (!\ldZ~0_combout\ & (\reg_Z|R\(44)))) # (\Equal1~0_combout\ & (((\reg_M|R\(44))))) ) + ( \Add1~369_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111101111100010000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ldZ~0_combout\,
	datab => \ALT_INV_Equal1~0_combout\,
	datac => \reg_Z|ALT_INV_R\(44),
	datad => \ALT_INV_Add1~311_combout\,
	dataf => \reg_M|ALT_INV_R\(44),
	cin => \Add1~369_cout\,
	cout => \Add1~365_cout\);

-- Location: MLABCELL_X25_Y9_N18
\Add1~361\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~361_cout\ = CARRY(( (!\Equal1~0_combout\ & (!\ldZ~0_combout\ & (\reg_Z|R[45]~DUPLICATE_q\))) # (\Equal1~0_combout\ & (((\reg_M|R\(45))))) ) + ( !\a_s~0_combout\ $ (((!\Equal1~0_combout\) # (!\reg_Z|R[45]~DUPLICATE_q\))) ) + ( \Add1~365_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100000010100000000000000000000100001011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~0_combout\,
	datab => \ALT_INV_ldZ~0_combout\,
	datac => \reg_Z|ALT_INV_R[45]~DUPLICATE_q\,
	datad => \reg_M|ALT_INV_R\(45),
	dataf => \ALT_INV_a_s~0_combout\,
	cin => \Add1~365_cout\,
	cout => \Add1~361_cout\);

-- Location: MLABCELL_X25_Y9_N21
\Add1~357\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~357_cout\ = CARRY(( (!\Equal1~0_combout\ & (!\ldZ~0_combout\ & (\reg_Z|R\(46)))) # (\Equal1~0_combout\ & (((\reg_M|R\(46))))) ) + ( !\Add1~337_combout\ ) + ( \Add1~361_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000100001011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~0_combout\,
	datab => \ALT_INV_ldZ~0_combout\,
	datac => \reg_Z|ALT_INV_R\(46),
	datad => \reg_M|ALT_INV_R\(46),
	dataf => \ALT_INV_Add1~337_combout\,
	cin => \Add1~361_cout\,
	cout => \Add1~357_cout\);

-- Location: MLABCELL_X25_Y9_N24
\Add1~349\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~349_cout\ = CARRY(( (!\Equal1~0_combout\ & (!\ldZ~0_combout\ & (\reg_Z|R\(47)))) # (\Equal1~0_combout\ & (((\reg_M|R\(47))))) ) + ( !\a_s~0_combout\ $ (((!\Equal1~0_combout\) # (!\reg_Z|R\(47)))) ) + ( \Add1~357_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100000010100000000000000000000100001011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~0_combout\,
	datab => \ALT_INV_ldZ~0_combout\,
	datac => \reg_Z|ALT_INV_R\(47),
	datad => \reg_M|ALT_INV_R\(47),
	dataf => \ALT_INV_a_s~0_combout\,
	cin => \Add1~357_cout\,
	cout => \Add1~349_cout\);

-- Location: MLABCELL_X25_Y9_N27
\Add1~335\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~335_cout\ = CARRY(( !\Add1~346_combout\ ) + ( (!\Equal1~0_combout\ & (!\ldZ~0_combout\ & (\reg_Z|R\(48)))) # (\Equal1~0_combout\ & (((\reg_M|R\(48))))) ) + ( \Add1~349_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111101111010001000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~0_combout\,
	datab => \ALT_INV_ldZ~0_combout\,
	datac => \reg_Z|ALT_INV_R\(48),
	datad => \ALT_INV_Add1~346_combout\,
	dataf => \reg_M|ALT_INV_R\(48),
	cin => \Add1~349_cout\,
	cout => \Add1~335_cout\);

-- Location: MLABCELL_X25_Y8_N0
\Add1~323\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~323_cout\ = CARRY(( !\a_s~0_combout\ $ (((!\Equal1~0_combout\) # (!\reg_Z|R\(49)))) ) + ( (!\Equal1~0_combout\ & (!\ldZ~0_combout\ & (\reg_Z|R\(49)))) # (\Equal1~0_combout\ & (((\reg_M|R\(49))))) ) + ( \Add1~335_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111101111100010000000000000000000000001111111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ldZ~0_combout\,
	datab => \ALT_INV_Equal1~0_combout\,
	datac => \reg_Z|ALT_INV_R\(49),
	datad => \ALT_INV_a_s~0_combout\,
	dataf => \reg_M|ALT_INV_R\(49),
	cin => \Add1~335_cout\,
	cout => \Add1~323_cout\);

-- Location: MLABCELL_X25_Y8_N3
\Add1~309\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~309_cout\ = CARRY(( !\Add1~320_combout\ ) + ( (!\Equal1~0_combout\ & (!\ldZ~0_combout\ & (\reg_Z|R[50]~DUPLICATE_q\))) # (\Equal1~0_combout\ & (((\reg_M|R\(50))))) ) + ( \Add1~323_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111101111100010000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ldZ~0_combout\,
	datab => \ALT_INV_Equal1~0_combout\,
	datac => \reg_Z|ALT_INV_R[50]~DUPLICATE_q\,
	datad => \ALT_INV_Add1~320_combout\,
	dataf => \reg_M|ALT_INV_R\(50),
	cin => \Add1~323_cout\,
	cout => \Add1~309_cout\);

-- Location: MLABCELL_X25_Y8_N6
\Add1~297\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~297_cout\ = CARRY(( !\a_s~0_combout\ $ (((!\Equal1~0_combout\) # (!\reg_Z|R[51]~DUPLICATE_q\))) ) + ( (!\Equal1~0_combout\ & (!\ldZ~0_combout\ & (\reg_Z|R[51]~DUPLICATE_q\))) # (\Equal1~0_combout\ & (((\reg_M|R\(51))))) ) + ( \Add1~309_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111101111100010000000000000000000000001111111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ldZ~0_combout\,
	datab => \ALT_INV_Equal1~0_combout\,
	datac => \reg_Z|ALT_INV_R[51]~DUPLICATE_q\,
	datad => \ALT_INV_a_s~0_combout\,
	dataf => \reg_M|ALT_INV_R\(51),
	cin => \Add1~309_cout\,
	cout => \Add1~297_cout\);

-- Location: MLABCELL_X25_Y8_N9
\Add1~283\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~283_cout\ = CARRY(( !\Add1~294_combout\ ) + ( (!\Equal1~0_combout\ & (!\ldZ~0_combout\ & (\reg_Z|R\(52)))) # (\Equal1~0_combout\ & (((\reg_M|R\(52))))) ) + ( \Add1~297_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111101111100010000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ldZ~0_combout\,
	datab => \ALT_INV_Equal1~0_combout\,
	datac => \reg_Z|ALT_INV_R\(52),
	datad => \ALT_INV_Add1~294_combout\,
	dataf => \reg_M|ALT_INV_R\(52),
	cin => \Add1~297_cout\,
	cout => \Add1~283_cout\);

-- Location: MLABCELL_X25_Y8_N12
\Add1~271\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~271_cout\ = CARRY(( !\a_s~0_combout\ $ (((!\Equal1~0_combout\) # (!\reg_Z|R[53]~DUPLICATE_q\))) ) + ( (!\Equal1~0_combout\ & (!\ldZ~0_combout\ & (\reg_Z|R[53]~DUPLICATE_q\))) # (\Equal1~0_combout\ & (((\reg_M|R\(53))))) ) + ( \Add1~283_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111101111100010000000000000000000000001111111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ldZ~0_combout\,
	datab => \ALT_INV_Equal1~0_combout\,
	datac => \reg_Z|ALT_INV_R[53]~DUPLICATE_q\,
	datad => \ALT_INV_a_s~0_combout\,
	dataf => \reg_M|ALT_INV_R\(53),
	cin => \Add1~283_cout\,
	cout => \Add1~271_cout\);

-- Location: MLABCELL_X25_Y8_N15
\Add1~257\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~257_cout\ = CARRY(( !\Add1~268_combout\ ) + ( (!\Equal1~0_combout\ & (!\ldZ~0_combout\ & (\reg_Z|R\(54)))) # (\Equal1~0_combout\ & (((\reg_M|R\(54))))) ) + ( \Add1~271_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111101111100010000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ldZ~0_combout\,
	datab => \ALT_INV_Equal1~0_combout\,
	datac => \reg_Z|ALT_INV_R\(54),
	datad => \ALT_INV_Add1~268_combout\,
	dataf => \reg_M|ALT_INV_R\(54),
	cin => \Add1~271_cout\,
	cout => \Add1~257_cout\);

-- Location: MLABCELL_X25_Y8_N18
\Add1~245\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~245_cout\ = CARRY(( !\a_s~0_combout\ $ (((!\Equal1~0_combout\) # (!\reg_Z|R\(55)))) ) + ( (!\Equal1~0_combout\ & (!\ldZ~0_combout\ & (\reg_Z|R\(55)))) # (\Equal1~0_combout\ & (((\reg_M|R\(55))))) ) + ( \Add1~257_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111101111100010000000000000000000000001111111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ldZ~0_combout\,
	datab => \ALT_INV_Equal1~0_combout\,
	datac => \reg_Z|ALT_INV_R\(55),
	datad => \ALT_INV_a_s~0_combout\,
	dataf => \reg_M|ALT_INV_R\(55),
	cin => \Add1~257_cout\,
	cout => \Add1~245_cout\);

-- Location: MLABCELL_X25_Y8_N21
\Add1~231\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~231_cout\ = CARRY(( !\Add1~242_combout\ ) + ( (!\Equal1~0_combout\ & (!\ldZ~0_combout\ & (\reg_Z|R\(56)))) # (\Equal1~0_combout\ & (((\reg_M|R\(56))))) ) + ( \Add1~245_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111101111100010000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ldZ~0_combout\,
	datab => \ALT_INV_Equal1~0_combout\,
	datac => \reg_Z|ALT_INV_R\(56),
	datad => \ALT_INV_Add1~242_combout\,
	dataf => \reg_M|ALT_INV_R\(56),
	cin => \Add1~245_cout\,
	cout => \Add1~231_cout\);

-- Location: MLABCELL_X25_Y8_N24
\Add1~219\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~219_cout\ = CARRY(( !\a_s~0_combout\ $ (((!\Equal1~0_combout\) # (!\reg_Z|R[57]~DUPLICATE_q\))) ) + ( (!\Equal1~0_combout\ & (!\ldZ~0_combout\ & (\reg_Z|R[57]~DUPLICATE_q\))) # (\Equal1~0_combout\ & (((\reg_M|R\(57))))) ) + ( \Add1~231_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111101111100010000000000000000000000001111111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ldZ~0_combout\,
	datab => \ALT_INV_Equal1~0_combout\,
	datac => \reg_Z|ALT_INV_R[57]~DUPLICATE_q\,
	datad => \ALT_INV_a_s~0_combout\,
	dataf => \reg_M|ALT_INV_R\(57),
	cin => \Add1~231_cout\,
	cout => \Add1~219_cout\);

-- Location: MLABCELL_X25_Y8_N27
\Add1~205\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~205_cout\ = CARRY(( !\Add1~216_combout\ ) + ( (!\Equal1~0_combout\ & (!\ldZ~0_combout\ & (\reg_Z|R\(58)))) # (\Equal1~0_combout\ & (((\reg_M|R\(58))))) ) + ( \Add1~219_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111101111100010000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ldZ~0_combout\,
	datab => \ALT_INV_Equal1~0_combout\,
	datac => \reg_Z|ALT_INV_R\(58),
	datad => \ALT_INV_Add1~216_combout\,
	dataf => \reg_M|ALT_INV_R\(58),
	cin => \Add1~219_cout\,
	cout => \Add1~205_cout\);

-- Location: MLABCELL_X25_Y8_N30
\Add1~193\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~193_cout\ = CARRY(( !\a_s~0_combout\ $ (((!\Equal1~0_combout\) # (!\reg_Z|R\(59)))) ) + ( (!\Equal1~0_combout\ & (!\ldZ~0_combout\ & (\reg_Z|R\(59)))) # (\Equal1~0_combout\ & (((\reg_M|R\(59))))) ) + ( \Add1~205_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111101111100010000000000000000000000001111111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ldZ~0_combout\,
	datab => \ALT_INV_Equal1~0_combout\,
	datac => \reg_Z|ALT_INV_R\(59),
	datad => \ALT_INV_a_s~0_combout\,
	dataf => \reg_M|ALT_INV_R\(59),
	cin => \Add1~205_cout\,
	cout => \Add1~193_cout\);

-- Location: MLABCELL_X25_Y8_N33
\Add1~179\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~179_cout\ = CARRY(( !\Add1~190_combout\ ) + ( (!\Equal1~0_combout\ & (!\ldZ~0_combout\ & (\reg_Z|R\(60)))) # (\Equal1~0_combout\ & (((\reg_M|R\(60))))) ) + ( \Add1~193_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111101111100010000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ldZ~0_combout\,
	datab => \ALT_INV_Equal1~0_combout\,
	datac => \reg_Z|ALT_INV_R\(60),
	datad => \ALT_INV_Add1~190_combout\,
	dataf => \reg_M|ALT_INV_R\(60),
	cin => \Add1~193_cout\,
	cout => \Add1~179_cout\);

-- Location: MLABCELL_X25_Y8_N36
\Add1~167\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~167_cout\ = CARRY(( !\a_s~0_combout\ $ (((!\Equal1~0_combout\) # (!\reg_Z|R\(61)))) ) + ( (!\Equal1~0_combout\ & (!\ldZ~0_combout\ & (\reg_Z|R\(61)))) # (\Equal1~0_combout\ & (((\reg_M|R\(61))))) ) + ( \Add1~179_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111101111100010000000000000000000000001111111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ldZ~0_combout\,
	datab => \ALT_INV_Equal1~0_combout\,
	datac => \reg_Z|ALT_INV_R\(61),
	datad => \ALT_INV_a_s~0_combout\,
	dataf => \reg_M|ALT_INV_R\(61),
	cin => \Add1~179_cout\,
	cout => \Add1~167_cout\);

-- Location: MLABCELL_X25_Y8_N39
\Add1~157\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~157_cout\ = CARRY(( !\Add1~164_combout\ ) + ( (!\Equal1~0_combout\ & (!\ldZ~0_combout\ & (\reg_Z|R\(62)))) # (\Equal1~0_combout\ & (((\reg_M|R\(62))))) ) + ( \Add1~167_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111101111100010000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ldZ~0_combout\,
	datab => \ALT_INV_Equal1~0_combout\,
	datac => \reg_Z|ALT_INV_R\(62),
	datad => \ALT_INV_Add1~164_combout\,
	dataf => \reg_M|ALT_INV_R\(62),
	cin => \Add1~167_cout\,
	cout => \Add1~157_cout\);

-- Location: MLABCELL_X25_Y8_N42
\Add1~135\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~135_sumout\ = SUM(( !\a_s~0_combout\ $ (((!\reg_Z|R\(63)) # (!\Equal1~0_combout\))) ) + ( (!\Equal1~0_combout\ & (\reg_Z|R\(63) & (!\ldZ~0_combout\))) # (\Equal1~0_combout\ & (((\reg_M|R\(63))))) ) + ( \Add1~157_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101111111000110000000000000000000001000111101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg_Z|ALT_INV_R\(63),
	datab => \ALT_INV_Equal1~0_combout\,
	datac => \ALT_INV_ldZ~0_combout\,
	datad => \ALT_INV_a_s~0_combout\,
	dataf => \reg_M|ALT_INV_R\(63),
	cin => \Add1~157_cout\,
	sumout => \Add1~135_sumout\);

-- Location: LABCELL_X23_Y13_N3
\Selector5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector5~0_combout\ = ( \Add1~135_sumout\ & ( \state.S_2~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_state.S_2~q\,
	dataf => \ALT_INV_Add1~135_sumout\,
	combout => \Selector5~0_combout\);

-- Location: FF_X23_Y13_N5
\state.S_4~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector5~0_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.S_4~DUPLICATE_q\);

-- Location: MLABCELL_X21_Y13_N21
\state~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \state~22_combout\ = ( \state.S_5~q\ ) # ( !\state.S_5~q\ & ( \state.S_4~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_state.S_4~DUPLICATE_q\,
	dataf => \ALT_INV_state.S_5~q\,
	combout => \state~22_combout\);

-- Location: FF_X21_Y13_N23
\state.S_6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \state~22_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.S_6~q\);

-- Location: LABCELL_X22_Y10_N36
\Selector8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector8~0_combout\ = ( \state.S_done~q\ & ( \Equal4~0_combout\ & ( (\state.S_6~q\) # (\start~input_o\) ) ) ) # ( !\state.S_done~q\ & ( \Equal4~0_combout\ & ( \state.S_6~q\ ) ) ) # ( \state.S_done~q\ & ( !\Equal4~0_combout\ & ( \start~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001100001111000011110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_start~input_o\,
	datac => \ALT_INV_state.S_6~q\,
	datae => \ALT_INV_state.S_done~q\,
	dataf => \ALT_INV_Equal4~0_combout\,
	combout => \Selector8~0_combout\);

-- Location: FF_X22_Y10_N38
\state.S_done\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector8~0_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.S_done~q\);

-- Location: LABCELL_X22_Y10_N15
\Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = ( \state.S_done~q\ & ( \start~input_o\ ) ) # ( !\state.S_done~q\ & ( (\state.S_idle~q\) # (\start~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111111111001100111111111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_start~input_o\,
	datad => \ALT_INV_state.S_idle~q\,
	dataf => \ALT_INV_state.S_done~q\,
	combout => \Selector0~0_combout\);

-- Location: FF_X22_Y10_N16
\state.S_idle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector0~0_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.S_idle~q\);

-- Location: LABCELL_X22_Y10_N12
\Selector1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = ( !\state.S_idle~q\ & ( \start~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_start~input_o\,
	dataf => \ALT_INV_state.S_idle~q\,
	combout => \Selector1~0_combout\);

-- Location: FF_X22_Y10_N14
\state.S_init\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector1~0_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.S_init~q\);

-- Location: LABCELL_X24_Y13_N3
\i~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \i~1_combout\ = ( \Add1~15_sumout\ ) # ( !\Add1~15_sumout\ & ( \state.S_init~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_state.S_init~q\,
	dataf => \ALT_INV_Add1~15_sumout\,
	combout => \i~1_combout\);

-- Location: FF_X24_Y13_N4
\i[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \i~1_combout\,
	ena => \Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i[3]~DUPLICATE_q\);

-- Location: FF_X21_Y13_N25
\i[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \i~2_combout\,
	ena => \Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i[2]~DUPLICATE_q\);

-- Location: FF_X21_Y13_N47
\i[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \i~4_combout\,
	ena => \Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i[0]~DUPLICATE_q\);

-- Location: FF_X24_Y13_N17
\i[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \i~0_combout\,
	ena => \Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i[4]~DUPLICATE_q\);

-- Location: MLABCELL_X21_Y13_N42
\Equal4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal4~0_combout\ = ( !\i[4]~DUPLICATE_q\ & ( (!\i[3]~DUPLICATE_q\ & (!\i[2]~DUPLICATE_q\ & (!i(1) & !\i[0]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_i[3]~DUPLICATE_q\,
	datab => \ALT_INV_i[2]~DUPLICATE_q\,
	datac => ALT_INV_i(1),
	datad => \ALT_INV_i[0]~DUPLICATE_q\,
	dataf => \ALT_INV_i[4]~DUPLICATE_q\,
	combout => \Equal4~0_combout\);

-- Location: MLABCELL_X21_Y13_N54
\Selector2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = ( \state.S_6~q\ & ( \state.S_init~q\ ) ) # ( !\state.S_6~q\ & ( \state.S_init~q\ ) ) # ( \state.S_6~q\ & ( !\state.S_init~q\ & ( !\Equal4~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Equal4~0_combout\,
	datae => \ALT_INV_state.S_6~q\,
	dataf => \ALT_INV_state.S_init~q\,
	combout => \Selector2~0_combout\);

-- Location: FF_X23_Y13_N20
\state.S_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Selector2~0_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.S_1~q\);

-- Location: FF_X23_Y13_N14
\state.S_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \state.S_1~q\,
	clrn => \rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.S_2~q\);

-- Location: LABCELL_X23_Y13_N9
\Selector4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = ( !\Add1~135_sumout\ & ( \state.S_2~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_state.S_2~q\,
	dataf => \ALT_INV_Add1~135_sumout\,
	combout => \Selector4~0_combout\);

-- Location: FF_X23_Y13_N11
\state.S_3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector4~0_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.S_3~q\);

-- Location: FF_X23_Y13_N2
\state.S_5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \state.S_3~q\,
	clrn => \rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.S_5~q\);

-- Location: LABCELL_X22_Y13_N12
\reg_Z|R[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_Z|R[0]~feeder_combout\ = ( \Add1~3_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Add1~3_sumout\,
	combout => \reg_Z|R[0]~feeder_combout\);

-- Location: FF_X22_Y13_N13
\reg_Z|R[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg_Z|R[0]~feeder_combout\,
	asdata => \reg_Z|R[1]~DUPLICATE_q\,
	sclr => \state.S_init~q\,
	sload => \ldZ~0_combout\,
	ena => \reg_Z|R[52]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_Z|R\(0));

-- Location: LABCELL_X22_Y10_N33
\Result[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Result[0]~0_combout\ = ( \rst~input_o\ & ( \state.S_done~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_rst~input_o\,
	dataf => \ALT_INV_state.S_done~q\,
	combout => \Result[0]~0_combout\);

-- Location: FF_X25_Y13_N34
\Result[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \reg_Z|R\(0),
	sload => VCC,
	ena => \Result[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Result[0]~reg0_q\);

-- Location: FF_X25_Y13_N43
\Result[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \reg_Z|R[1]~DUPLICATE_q\,
	sload => VCC,
	ena => \Result[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Result[1]~reg0_q\);

-- Location: FF_X22_Y13_N28
\Result[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \reg_Z|R\(2),
	sload => VCC,
	ena => \Result[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Result[2]~reg0_q\);

-- Location: FF_X25_Y13_N58
\Result[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \reg_Z|R[3]~DUPLICATE_q\,
	sload => VCC,
	ena => \Result[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Result[3]~reg0_q\);

-- Location: FF_X25_Y13_N49
\Result[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \reg_Z|R\(4),
	sload => VCC,
	ena => \Result[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Result[4]~reg0_q\);

-- Location: FF_X22_Y13_N53
\Result[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \reg_Z|R\(5),
	sload => VCC,
	ena => \Result[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Result[5]~reg0_q\);

-- Location: FF_X22_Y13_N49
\Result[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \reg_Z|R\(6),
	sload => VCC,
	ena => \Result[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Result[6]~reg0_q\);

-- Location: FF_X25_Y13_N52
\Result[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \reg_Z|R\(7),
	sload => VCC,
	ena => \Result[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Result[7]~reg0_q\);

-- Location: FF_X25_Y13_N40
\Result[8]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \reg_Z|R\(8),
	sload => VCC,
	ena => \Result[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Result[8]~reg0_q\);

-- Location: LABCELL_X27_Y12_N57
\Result[9]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Result[9]~reg0feeder_combout\ = ( \reg_Z|R[9]~DUPLICATE_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \reg_Z|ALT_INV_R[9]~DUPLICATE_q\,
	combout => \Result[9]~reg0feeder_combout\);

-- Location: FF_X27_Y12_N58
\Result[9]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Result[9]~reg0feeder_combout\,
	ena => \Result[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Result[9]~reg0_q\);

-- Location: LABCELL_X27_Y12_N0
\Result[10]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Result[10]~reg0feeder_combout\ = ( \reg_Z|R\(10) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \reg_Z|ALT_INV_R\(10),
	combout => \Result[10]~reg0feeder_combout\);

-- Location: FF_X27_Y12_N1
\Result[10]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Result[10]~reg0feeder_combout\,
	ena => \Result[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Result[10]~reg0_q\);

-- Location: FF_X27_Y12_N22
\Result[11]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \reg_Z|R\(11),
	sload => VCC,
	ena => \Result[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Result[11]~reg0_q\);

-- Location: LABCELL_X27_Y12_N51
\Result[12]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Result[12]~reg0feeder_combout\ = ( \reg_Z|R[12]~DUPLICATE_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \reg_Z|ALT_INV_R[12]~DUPLICATE_q\,
	combout => \Result[12]~reg0feeder_combout\);

-- Location: FF_X27_Y12_N52
\Result[12]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Result[12]~reg0feeder_combout\,
	ena => \Result[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Result[12]~reg0_q\);

-- Location: LABCELL_X27_Y12_N6
\Result[13]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Result[13]~reg0feeder_combout\ = ( \reg_Z|R\(13) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \reg_Z|ALT_INV_R\(13),
	combout => \Result[13]~reg0feeder_combout\);

-- Location: FF_X27_Y12_N7
\Result[13]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Result[13]~reg0feeder_combout\,
	ena => \Result[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Result[13]~reg0_q\);

-- Location: FF_X27_Y12_N10
\Result[14]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \reg_Z|R[14]~DUPLICATE_q\,
	sload => VCC,
	ena => \Result[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Result[14]~reg0_q\);

-- Location: LABCELL_X27_Y12_N24
\Result[15]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Result[15]~reg0feeder_combout\ = ( \reg_Z|R[15]~DUPLICATE_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \reg_Z|ALT_INV_R[15]~DUPLICATE_q\,
	combout => \Result[15]~reg0feeder_combout\);

-- Location: FF_X27_Y12_N25
\Result[15]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Result[15]~reg0feeder_combout\,
	ena => \Result[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Result[15]~reg0_q\);

-- Location: FF_X27_Y12_N31
\Result[16]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \reg_Z|R[16]~DUPLICATE_q\,
	sload => VCC,
	ena => \Result[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Result[16]~reg0_q\);

-- Location: FF_X27_Y12_N34
\Result[17]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \reg_Z|R\(17),
	sload => VCC,
	ena => \Result[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Result[17]~reg0_q\);

-- Location: LABCELL_X27_Y12_N15
\Result[18]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Result[18]~reg0feeder_combout\ = ( \reg_Z|R\(18) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \reg_Z|ALT_INV_R\(18),
	combout => \Result[18]~reg0feeder_combout\);

-- Location: FF_X27_Y12_N16
\Result[18]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Result[18]~reg0feeder_combout\,
	ena => \Result[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Result[18]~reg0_q\);

-- Location: LABCELL_X27_Y12_N54
\Result[19]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Result[19]~reg0feeder_combout\ = ( \reg_Z|R\(19) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \reg_Z|ALT_INV_R\(19),
	combout => \Result[19]~reg0feeder_combout\);

-- Location: FF_X27_Y12_N55
\Result[19]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Result[19]~reg0feeder_combout\,
	ena => \Result[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Result[19]~reg0_q\);

-- Location: FF_X27_Y11_N13
\Result[20]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \reg_Z|R\(20),
	sload => VCC,
	ena => \Result[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Result[20]~reg0_q\);

-- Location: FF_X27_Y11_N58
\Result[21]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \reg_Z|R\(21),
	sload => VCC,
	ena => \Result[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Result[21]~reg0_q\);

-- Location: FF_X27_Y11_N25
\Result[22]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \reg_Z|R[22]~DUPLICATE_q\,
	sload => VCC,
	ena => \Result[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Result[22]~reg0_q\);

-- Location: FF_X25_Y11_N49
\Result[23]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \reg_Z|R[23]~DUPLICATE_q\,
	sload => VCC,
	ena => \Result[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Result[23]~reg0_q\);

-- Location: FF_X25_Y11_N52
\Result[24]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \reg_Z|R\(24),
	sload => VCC,
	ena => \Result[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Result[24]~reg0_q\);

-- Location: FF_X25_Y11_N46
\Result[25]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \reg_Z|R\(25),
	sload => VCC,
	ena => \Result[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Result[25]~reg0_q\);

-- Location: LABCELL_X22_Y10_N57
\Result[26]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Result[26]~reg0feeder_combout\ = ( \reg_Z|R\(26) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \reg_Z|ALT_INV_R\(26),
	combout => \Result[26]~reg0feeder_combout\);

-- Location: FF_X22_Y10_N58
\Result[26]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Result[26]~reg0feeder_combout\,
	ena => \Result[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Result[26]~reg0_q\);

-- Location: MLABCELL_X21_Y10_N24
\Result[27]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Result[27]~reg0feeder_combout\ = ( \reg_Z|R[27]~DUPLICATE_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \reg_Z|ALT_INV_R[27]~DUPLICATE_q\,
	combout => \Result[27]~reg0feeder_combout\);

-- Location: FF_X21_Y10_N26
\Result[27]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Result[27]~reg0feeder_combout\,
	ena => \Result[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Result[27]~reg0_q\);

-- Location: FF_X25_Y11_N43
\Result[28]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \reg_Z|R\(28),
	sload => VCC,
	ena => \Result[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Result[28]~reg0_q\);

-- Location: LABCELL_X27_Y10_N27
\Result[29]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Result[29]~reg0feeder_combout\ = ( \reg_Z|R\(29) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \reg_Z|ALT_INV_R\(29),
	combout => \Result[29]~reg0feeder_combout\);

-- Location: FF_X27_Y10_N28
\Result[29]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Result[29]~reg0feeder_combout\,
	ena => \Result[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Result[29]~reg0_q\);

-- Location: FF_X27_Y10_N58
\Result[30]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \reg_Z|R\(30),
	sload => VCC,
	ena => \Result[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Result[30]~reg0_q\);

-- Location: FF_X27_Y10_N49
\Result[31]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \reg_Z|R[31]~DUPLICATE_q\,
	sload => VCC,
	ena => \Result[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Result[31]~reg0_q\);

-- Location: MLABCELL_X78_Y15_N0
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


