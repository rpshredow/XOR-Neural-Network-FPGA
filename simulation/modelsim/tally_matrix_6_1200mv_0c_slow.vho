-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "11/16/2018 14:23:09"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	tally_matrix IS
    PORT (
	clk : IN std_logic;
	sw : IN std_logic_vector(9 DOWNTO 0);
	button : IN std_logic_vector(2 DOWNTO 0);
	led : OUT std_logic_vector(9 DOWNTO 0)
	);
END tally_matrix;

-- Design Ports Information
-- sw[2]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[3]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[4]	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[5]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[6]	=>  Location: PIN_H7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[7]	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[8]	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[9]	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- button[0]	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- button[1]	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- button[2]	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[0]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[1]	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[2]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[3]	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[4]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[5]	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[6]	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[7]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[8]	=>  Location: PIN_B2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[9]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[1]	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[0]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF tally_matrix IS
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
SIGNAL ww_sw : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_button : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_led : std_logic_vector(9 DOWNTO 0);
SIGNAL \sig2|WideNor0~7clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \sig1|WideNor0~10clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \sig3|WideNor0~17clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \sw[2]~input_o\ : std_logic;
SIGNAL \sw[3]~input_o\ : std_logic;
SIGNAL \sw[4]~input_o\ : std_logic;
SIGNAL \sw[5]~input_o\ : std_logic;
SIGNAL \sw[6]~input_o\ : std_logic;
SIGNAL \sw[7]~input_o\ : std_logic;
SIGNAL \sw[8]~input_o\ : std_logic;
SIGNAL \sw[9]~input_o\ : std_logic;
SIGNAL \button[0]~input_o\ : std_logic;
SIGNAL \button[1]~input_o\ : std_logic;
SIGNAL \button[2]~input_o\ : std_logic;
SIGNAL \led[0]~output_o\ : std_logic;
SIGNAL \led[1]~output_o\ : std_logic;
SIGNAL \led[2]~output_o\ : std_logic;
SIGNAL \led[3]~output_o\ : std_logic;
SIGNAL \led[4]~output_o\ : std_logic;
SIGNAL \led[5]~output_o\ : std_logic;
SIGNAL \led[6]~output_o\ : std_logic;
SIGNAL \led[7]~output_o\ : std_logic;
SIGNAL \led[8]~output_o\ : std_logic;
SIGNAL \led[9]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \sw[1]~input_o\ : std_logic;
SIGNAL \m2|out[10]~feeder_combout\ : std_logic;
SIGNAL \sw[0]~input_o\ : std_logic;
SIGNAL \a5|out~0_combout\ : std_logic;
SIGNAL \a5|out[32]~feeder_combout\ : std_logic;
SIGNAL \a5|out~1_combout\ : std_logic;
SIGNAL \a5|Add48~0_combout\ : std_logic;
SIGNAL \a5|Add49~0_combout\ : std_logic;
SIGNAL \a5|Add51~1_cout\ : std_logic;
SIGNAL \a5|Add51~3\ : std_logic;
SIGNAL \a5|Add51~5\ : std_logic;
SIGNAL \a5|Add51~6_combout\ : std_logic;
SIGNAL \a5|Add51~4_combout\ : std_logic;
SIGNAL \a5|Add51~2_combout\ : std_logic;
SIGNAL \a5|Add52~1_cout\ : std_logic;
SIGNAL \a5|Add52~3\ : std_logic;
SIGNAL \a5|Add52~4_combout\ : std_logic;
SIGNAL \a5|Add52~2_combout\ : std_logic;
SIGNAL \a5|Add51~7\ : std_logic;
SIGNAL \a5|Add51~8_combout\ : std_logic;
SIGNAL \a5|Add52~5\ : std_logic;
SIGNAL \a5|Add52~6_combout\ : std_logic;
SIGNAL \a5|Add50~0_combout\ : std_logic;
SIGNAL \a5|Add51~9\ : std_logic;
SIGNAL \a5|Add51~11\ : std_logic;
SIGNAL \a5|Add51~12_combout\ : std_logic;
SIGNAL \a5|Add51~10_combout\ : std_logic;
SIGNAL \a5|Add52~7\ : std_logic;
SIGNAL \a5|Add52~9\ : std_logic;
SIGNAL \a5|Add52~11\ : std_logic;
SIGNAL \a5|Add52~12_combout\ : std_logic;
SIGNAL \a5|Add52~8_combout\ : std_logic;
SIGNAL \a5|Add52~10_combout\ : std_logic;
SIGNAL \a5|ShiftRight1~0_combout\ : std_logic;
SIGNAL \a5|ShiftRight1~1_combout\ : std_logic;
SIGNAL \a5|ShiftRight1~2_combout\ : std_logic;
SIGNAL \a5|out~6_combout\ : std_logic;
SIGNAL \a5|out~2_combout\ : std_logic;
SIGNAL \a5|out~3_combout\ : std_logic;
SIGNAL \a5|out~4_combout\ : std_logic;
SIGNAL \a5|out~5_combout\ : std_logic;
SIGNAL \a6|Add19~0_combout\ : std_logic;
SIGNAL \a6|Add19~1_combout\ : std_logic;
SIGNAL \a6|Add19~2_combout\ : std_logic;
SIGNAL \a6|Add20~0_combout\ : std_logic;
SIGNAL \a5|out~7_combout\ : std_logic;
SIGNAL \a6|Add20~1_combout\ : std_logic;
SIGNAL \a6|Add20~2_combout\ : std_logic;
SIGNAL \a6|Add27~1\ : std_logic;
SIGNAL \a6|Add27~3\ : std_logic;
SIGNAL \a6|Add27~5\ : std_logic;
SIGNAL \a6|Add27~6_combout\ : std_logic;
SIGNAL \a6|Add27~4_combout\ : std_logic;
SIGNAL \a6|Add27~2_combout\ : std_logic;
SIGNAL \a6|Add27~0_combout\ : std_logic;
SIGNAL \a6|Add28~1\ : std_logic;
SIGNAL \a6|Add28~3\ : std_logic;
SIGNAL \a6|Add28~5\ : std_logic;
SIGNAL \a6|Add28~7\ : std_logic;
SIGNAL \a6|Add28~8_combout\ : std_logic;
SIGNAL \a6|Add28~6_combout\ : std_logic;
SIGNAL \a6|Add31~0_combout\ : std_logic;
SIGNAL \a6|Add28~4_combout\ : std_logic;
SIGNAL \a6|Add31~2_combout\ : std_logic;
SIGNAL \a6|Add28~2_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \a6|Add31~4_combout\ : std_logic;
SIGNAL \a6|Add28~0_combout\ : std_logic;
SIGNAL \a6|Add43~1\ : std_logic;
SIGNAL \a6|Add43~3\ : std_logic;
SIGNAL \a6|Add43~5\ : std_logic;
SIGNAL \a6|Add43~7\ : std_logic;
SIGNAL \a6|Add43~8_combout\ : std_logic;
SIGNAL \a6|Add43~0_combout\ : std_logic;
SIGNAL \a6|Add43~2_combout\ : std_logic;
SIGNAL \a6|Add43~6_combout\ : std_logic;
SIGNAL \a6|Add43~4_combout\ : std_logic;
SIGNAL \a6|out[2]~17_combout\ : std_logic;
SIGNAL \a6|out~39_combout\ : std_logic;
SIGNAL \a6|out[5]~40_combout\ : std_logic;
SIGNAL \a6|Add46~1_cout\ : std_logic;
SIGNAL \a6|Add46~3\ : std_logic;
SIGNAL \a6|Add46~5\ : std_logic;
SIGNAL \a6|Add46~7\ : std_logic;
SIGNAL \a6|Add46~9\ : std_logic;
SIGNAL \a6|Add46~11\ : std_logic;
SIGNAL \a6|Add46~12_combout\ : std_logic;
SIGNAL \a6|Add46~10_combout\ : std_logic;
SIGNAL \a6|Add46~8_combout\ : std_logic;
SIGNAL \a6|Add46~6_combout\ : std_logic;
SIGNAL \a6|Add46~4_combout\ : std_logic;
SIGNAL \a6|Add46~2_combout\ : std_logic;
SIGNAL \a6|Add47~1\ : std_logic;
SIGNAL \a6|Add47~3\ : std_logic;
SIGNAL \a6|Add47~5\ : std_logic;
SIGNAL \a6|Add47~7\ : std_logic;
SIGNAL \a6|Add47~9\ : std_logic;
SIGNAL \a6|Add47~10_combout\ : std_logic;
SIGNAL \a6|Add47~8_combout\ : std_logic;
SIGNAL \a6|Add47~11\ : std_logic;
SIGNAL \a6|Add47~12_combout\ : std_logic;
SIGNAL \a6|out[5]~6_combout\ : std_logic;
SIGNAL \a6|out~41_combout\ : std_logic;
SIGNAL \a6|Add47~0_combout\ : std_logic;
SIGNAL \a6|Add47~2_combout\ : std_logic;
SIGNAL \a6|Add47~4_combout\ : std_logic;
SIGNAL \a6|ShiftRight0~13_combout\ : std_logic;
SIGNAL \a6|Add47~6_combout\ : std_logic;
SIGNAL \a6|out[5]~11_combout\ : std_logic;
SIGNAL \a6|ShiftRight0~11_combout\ : std_logic;
SIGNAL \a6|ShiftRight0~12_combout\ : std_logic;
SIGNAL \a6|out[5]~10_combout\ : std_logic;
SIGNAL \a6|out~36_combout\ : std_logic;
SIGNAL \a6|out~37_combout\ : std_logic;
SIGNAL \a6|out~7_combout\ : std_logic;
SIGNAL \a6|LessThan5~0_combout\ : std_logic;
SIGNAL \a6|out~8_combout\ : std_logic;
SIGNAL \a6|ShiftRight1~1_combout\ : std_logic;
SIGNAL \a6|Add48~1_cout\ : std_logic;
SIGNAL \a6|Add48~2_combout\ : std_logic;
SIGNAL \a6|ShiftLeft0~11_combout\ : std_logic;
SIGNAL \a6|ShiftLeft0~12_combout\ : std_logic;
SIGNAL \a6|Add48~3\ : std_logic;
SIGNAL \a6|Add48~5\ : std_logic;
SIGNAL \a6|Add48~6_combout\ : std_logic;
SIGNAL \a6|Add48~4_combout\ : std_logic;
SIGNAL \a6|Add48~7\ : std_logic;
SIGNAL \a6|Add48~8_combout\ : std_logic;
SIGNAL \a6|ShiftLeft0~6_combout\ : std_logic;
SIGNAL \a6|Add48~9\ : std_logic;
SIGNAL \a6|Add48~10_combout\ : std_logic;
SIGNAL \a6|Add48~11\ : std_logic;
SIGNAL \a6|Add48~13\ : std_logic;
SIGNAL \a6|Add48~14_combout\ : std_logic;
SIGNAL \a6|Add48~12_combout\ : std_logic;
SIGNAL \a6|ShiftLeft0~7_combout\ : std_logic;
SIGNAL \a6|out~35_combout\ : std_logic;
SIGNAL \a6|out~38_combout\ : std_logic;
SIGNAL \a6|out~42_combout\ : std_logic;
SIGNAL \a6|out[2]~18_combout\ : std_logic;
SIGNAL \a6|out~28_combout\ : std_logic;
SIGNAL \a6|out[2]~24_combout\ : std_logic;
SIGNAL \a6|ShiftRight0~20_combout\ : std_logic;
SIGNAL \a6|ShiftRight0~36_combout\ : std_logic;
SIGNAL \a6|out[2]~29_combout\ : std_logic;
SIGNAL \a6|ShiftRight0~9_combout\ : std_logic;
SIGNAL \a6|ShiftRight0~6_combout\ : std_logic;
SIGNAL \a6|out~50_combout\ : std_logic;
SIGNAL \a6|ShiftRight0~3_combout\ : std_logic;
SIGNAL \a6|ShiftRight0~5_combout\ : std_logic;
SIGNAL \a6|ShiftRight0~21_combout\ : std_logic;
SIGNAL \a6|out~51_combout\ : std_logic;
SIGNAL \a6|out~52_combout\ : std_logic;
SIGNAL \a6|out~25_combout\ : std_logic;
SIGNAL \a6|out~26_combout\ : std_logic;
SIGNAL \a6|out~49_combout\ : std_logic;
SIGNAL \a6|out~53_combout\ : std_logic;
SIGNAL \a6|out~54_combout\ : std_logic;
SIGNAL \a6|ShiftRight0~17_combout\ : std_logic;
SIGNAL \a6|out~45_combout\ : std_logic;
SIGNAL \a6|ShiftRight0~18_combout\ : std_logic;
SIGNAL \a6|ShiftRight0~19_combout\ : std_logic;
SIGNAL \a6|ShiftRight0~15_combout\ : std_logic;
SIGNAL \a6|ShiftRight0~14_combout\ : std_logic;
SIGNAL \a6|ShiftRight0~16_combout\ : std_logic;
SIGNAL \a6|out~46_combout\ : std_logic;
SIGNAL \a6|out~43_combout\ : std_logic;
SIGNAL \a6|out~44_combout\ : std_logic;
SIGNAL \a6|out~47_combout\ : std_logic;
SIGNAL \a6|out~48_combout\ : std_logic;
SIGNAL \a6|ShiftLeft0~8_combout\ : std_logic;
SIGNAL \a6|ShiftLeft0~43_combout\ : std_logic;
SIGNAL \a6|ShiftRight0~8_combout\ : std_logic;
SIGNAL \a6|out~76_combout\ : std_logic;
SIGNAL \a6|out[17]~106_combout\ : std_logic;
SIGNAL \a6|ShiftLeft0~15_combout\ : std_logic;
SIGNAL \a6|ShiftLeft0~48_combout\ : std_logic;
SIGNAL \a6|out[17]~105_combout\ : std_logic;
SIGNAL \a6|out~148_combout\ : std_logic;
SIGNAL \a6|out~149_combout\ : std_logic;
SIGNAL \a6|out[15]~72_combout\ : std_logic;
SIGNAL \a6|out[17]~109_combout\ : std_logic;
SIGNAL \a6|out~110_combout\ : std_logic;
SIGNAL \a6|out~150_combout\ : std_logic;
SIGNAL \a6|ShiftLeft0~22_combout\ : std_logic;
SIGNAL \a6|ShiftLeft0~24_combout\ : std_logic;
SIGNAL \a6|out~151_combout\ : std_logic;
SIGNAL \a6|ShiftLeft0~39_combout\ : std_logic;
SIGNAL \a6|out~152_combout\ : std_logic;
SIGNAL \a6|out~153_combout\ : std_logic;
SIGNAL \a6|out~154_combout\ : std_logic;
SIGNAL \a6|out~155_combout\ : std_logic;
SIGNAL \a6|ShiftLeft0~35_combout\ : std_logic;
SIGNAL \a6|ShiftLeft0~31_combout\ : std_logic;
SIGNAL \a6|ShiftLeft0~42_combout\ : std_logic;
SIGNAL \a6|out~146_combout\ : std_logic;
SIGNAL \a6|ShiftLeft0~10_combout\ : std_logic;
SIGNAL \a6|out~145_combout\ : std_logic;
SIGNAL \a6|out~147_combout\ : std_logic;
SIGNAL \a6|out~182_combout\ : std_logic;
SIGNAL \a6|ShiftLeft0~44_combout\ : std_logic;
SIGNAL \a6|ShiftLeft0~18_combout\ : std_logic;
SIGNAL \a6|ShiftLeft0~19_combout\ : std_logic;
SIGNAL \a6|out~156_combout\ : std_logic;
SIGNAL \a6|out~157_combout\ : std_logic;
SIGNAL \a6|out~183_combout\ : std_logic;
SIGNAL \sq2|Add18~0_combout\ : std_logic;
SIGNAL \sq2|Add18~1_combout\ : std_logic;
SIGNAL \a6|out[15]~73_combout\ : std_logic;
SIGNAL \a6|out~79_combout\ : std_logic;
SIGNAL \a6|ShiftRight1~2_combout\ : std_logic;
SIGNAL \a6|ShiftLeft0~9_combout\ : std_logic;
SIGNAL \a6|ShiftLeft0~4_combout\ : std_logic;
SIGNAL \a6|ShiftLeft0~5_combout\ : std_logic;
SIGNAL \a6|ShiftLeft0~46_combout\ : std_logic;
SIGNAL \a6|ShiftLeft0~21_combout\ : std_logic;
SIGNAL \a6|out~169_combout\ : std_logic;
SIGNAL \a6|out~170_combout\ : std_logic;
SIGNAL \a6|out~171_combout\ : std_logic;
SIGNAL \a6|ShiftLeft0~26_combout\ : std_logic;
SIGNAL \a6|ShiftLeft0~45_combout\ : std_logic;
SIGNAL \a6|ShiftRight0~24_combout\ : std_logic;
SIGNAL \a6|ShiftLeft0~41_combout\ : std_logic;
SIGNAL \a6|out~158_combout\ : std_logic;
SIGNAL \a6|out~159_combout\ : std_logic;
SIGNAL \a6|out~160_combout\ : std_logic;
SIGNAL \a6|ShiftRight0~25_combout\ : std_logic;
SIGNAL \a6|ShiftRight0~35_combout\ : std_logic;
SIGNAL \a6|out~161_combout\ : std_logic;
SIGNAL \a6|out~56_combout\ : std_logic;
SIGNAL \a6|out~162_combout\ : std_logic;
SIGNAL \a6|out~115_combout\ : std_logic;
SIGNAL \a6|out~164_combout\ : std_logic;
SIGNAL \a6|out~165_combout\ : std_logic;
SIGNAL \a6|ShiftLeft0~14_combout\ : std_logic;
SIGNAL \a6|ShiftLeft0~38_combout\ : std_logic;
SIGNAL \a6|ShiftLeft0~40_combout\ : std_logic;
SIGNAL \a6|out~163_combout\ : std_logic;
SIGNAL \a6|out~166_combout\ : std_logic;
SIGNAL \a6|out~167_combout\ : std_logic;
SIGNAL \a6|out~168_combout\ : std_logic;
SIGNAL \a6|out[16]~feeder_combout\ : std_logic;
SIGNAL \sq2|Add14~0_combout\ : std_logic;
SIGNAL \sq2|Add18~2_combout\ : std_logic;
SIGNAL \sq2|Add14~1_combout\ : std_logic;
SIGNAL \sq2|Add16~1\ : std_logic;
SIGNAL \sq2|Add16~3\ : std_logic;
SIGNAL \sq2|Add16~5\ : std_logic;
SIGNAL \sq2|Add16~6_combout\ : std_logic;
SIGNAL \a6|ShiftLeft0~36_combout\ : std_logic;
SIGNAL \a6|ShiftLeft0~34_combout\ : std_logic;
SIGNAL \a6|ShiftRight0~7_combout\ : std_logic;
SIGNAL \a6|ShiftLeft0~47_combout\ : std_logic;
SIGNAL \a6|out~107_combout\ : std_logic;
SIGNAL \a6|out~108_combout\ : std_logic;
SIGNAL \a6|out~111_combout\ : std_logic;
SIGNAL \a6|out~112_combout\ : std_logic;
SIGNAL \a6|out[26]~119_combout\ : std_logic;
SIGNAL \a6|out[26]~118_combout\ : std_logic;
SIGNAL \a6|ShiftLeft0~27_combout\ : std_logic;
SIGNAL \a6|out~123_combout\ : std_logic;
SIGNAL \a6|out~124_combout\ : std_logic;
SIGNAL \a6|out~116_combout\ : std_logic;
SIGNAL \a6|out~125_combout\ : std_logic;
SIGNAL \a6|ShiftLeft0~37_combout\ : std_logic;
SIGNAL \a6|out~113_combout\ : std_logic;
SIGNAL \a6|out~114_combout\ : std_logic;
SIGNAL \a6|out~181_combout\ : std_logic;
SIGNAL \a6|out~120_combout\ : std_logic;
SIGNAL \a6|ShiftLeft0~28_combout\ : std_logic;
SIGNAL \a6|ShiftLeft0~29_combout\ : std_logic;
SIGNAL \a6|ShiftLeft0~30_combout\ : std_logic;
SIGNAL \a6|out~121_combout\ : std_logic;
SIGNAL \a6|ShiftRight0~31_combout\ : std_logic;
SIGNAL \a6|out~117_combout\ : std_logic;
SIGNAL \a6|out~122_combout\ : std_logic;
SIGNAL \sq2|Add22~0_combout\ : std_logic;
SIGNAL \a6|ShiftLeft0~16_combout\ : std_logic;
SIGNAL \a6|out~131_combout\ : std_logic;
SIGNAL \a6|ShiftRight0~34_combout\ : std_logic;
SIGNAL \a6|out~130_combout\ : std_logic;
SIGNAL \a6|out~132_combout\ : std_logic;
SIGNAL \a6|out[28]~133_combout\ : std_logic;
SIGNAL \a6|ShiftLeft0~20_combout\ : std_logic;
SIGNAL \a6|out~141_combout\ : std_logic;
SIGNAL \a6|out~142_combout\ : std_logic;
SIGNAL \a6|out~143_combout\ : std_logic;
SIGNAL \a6|out[28]~134_combout\ : std_logic;
SIGNAL \a6|out[28]~135_combout\ : std_logic;
SIGNAL \a6|out[28]~136_combout\ : std_logic;
SIGNAL \a6|out~144_combout\ : std_logic;
SIGNAL \a6|ShiftLeft0~17_combout\ : std_logic;
SIGNAL \a6|out~127_combout\ : std_logic;
SIGNAL \a6|out~128_combout\ : std_logic;
SIGNAL \a6|ShiftRight0~27_combout\ : std_logic;
SIGNAL \a6|out~126_combout\ : std_logic;
SIGNAL \a6|out~129_combout\ : std_logic;
SIGNAL \a6|ShiftLeft0~23_combout\ : std_logic;
SIGNAL \a6|ShiftLeft0~25_combout\ : std_logic;
SIGNAL \a6|ShiftRight0~29_combout\ : std_logic;
SIGNAL \a6|out~137_combout\ : std_logic;
SIGNAL \a6|out~138_combout\ : std_logic;
SIGNAL \a6|out~139_combout\ : std_logic;
SIGNAL \a6|out~140_combout\ : std_logic;
SIGNAL \sq2|Add26~0_combout\ : std_logic;
SIGNAL \sq2|Add26~1_combout\ : std_logic;
SIGNAL \sq2|Add22~1_combout\ : std_logic;
SIGNAL \sq2|Add22~2_combout\ : std_logic;
SIGNAL \sq2|Add26~2_combout\ : std_logic;
SIGNAL \sq2|Add24~1\ : std_logic;
SIGNAL \sq2|Add24~3\ : std_logic;
SIGNAL \sq2|Add24~5\ : std_logic;
SIGNAL \sq2|Add24~6_combout\ : std_logic;
SIGNAL \sq2|Add24~4_combout\ : std_logic;
SIGNAL \sq2|Add16~4_combout\ : std_logic;
SIGNAL \sq2|Add16~2_combout\ : std_logic;
SIGNAL \sq2|Add24~2_combout\ : std_logic;
SIGNAL \sq2|Add24~0_combout\ : std_logic;
SIGNAL \sq2|Add16~0_combout\ : std_logic;
SIGNAL \sq2|Add20~1\ : std_logic;
SIGNAL \sq2|Add20~3\ : std_logic;
SIGNAL \sq2|Add20~5\ : std_logic;
SIGNAL \sq2|Add20~7\ : std_logic;
SIGNAL \sq2|Add20~8_combout\ : std_logic;
SIGNAL \a6|ShiftRight0~26_combout\ : std_logic;
SIGNAL \a6|out~81_combout\ : std_logic;
SIGNAL \a6|out~75_combout\ : std_logic;
SIGNAL \a6|out~82_combout\ : std_logic;
SIGNAL \a6|out~83_combout\ : std_logic;
SIGNAL \a6|out~84_combout\ : std_logic;
SIGNAL \a6|ShiftRight0~28_combout\ : std_logic;
SIGNAL \a6|out~89_combout\ : std_logic;
SIGNAL \a6|out~90_combout\ : std_logic;
SIGNAL \a6|out~91_combout\ : std_logic;
SIGNAL \a6|out~92_combout\ : std_logic;
SIGNAL \a6|out~77_combout\ : std_logic;
SIGNAL \a6|ShiftRight0~2_combout\ : std_logic;
SIGNAL \a6|ShiftRight0~10_combout\ : std_logic;
SIGNAL \a6|out~74_combout\ : std_logic;
SIGNAL \a6|out~78_combout\ : std_logic;
SIGNAL \a6|out~80_combout\ : std_logic;
SIGNAL \a6|out~86_combout\ : std_logic;
SIGNAL \a6|out~85_combout\ : std_logic;
SIGNAL \a6|out~87_combout\ : std_logic;
SIGNAL \a6|out~88_combout\ : std_logic;
SIGNAL \sq2|Add10~0_combout\ : std_logic;
SIGNAL \sq2|Add10~1_combout\ : std_logic;
SIGNAL \a6|ShiftRight0~32_combout\ : std_logic;
SIGNAL \a6|out~97_combout\ : std_logic;
SIGNAL \a6|out~98_combout\ : std_logic;
SIGNAL \a6|out~99_combout\ : std_logic;
SIGNAL \a6|out~100_combout\ : std_logic;
SIGNAL \a6|ShiftRight0~22_combout\ : std_logic;
SIGNAL \a6|ShiftRight0~23_combout\ : std_logic;
SIGNAL \a6|ShiftRight0~30_combout\ : std_logic;
SIGNAL \a6|out~94_combout\ : std_logic;
SIGNAL \a6|out~93_combout\ : std_logic;
SIGNAL \a6|out~95_combout\ : std_logic;
SIGNAL \a6|out~96_combout\ : std_logic;
SIGNAL \a6|out~9_combout\ : std_logic;
SIGNAL \a6|out~12_combout\ : std_logic;
SIGNAL \a6|out~13_combout\ : std_logic;
SIGNAL \a6|out~14_combout\ : std_logic;
SIGNAL \a6|ShiftRight1~0_combout\ : std_logic;
SIGNAL \a6|out~15_combout\ : std_logic;
SIGNAL \a6|out~16_combout\ : std_logic;
SIGNAL \sq2|Add6~0_combout\ : std_logic;
SIGNAL \sq2|Add10~2_combout\ : std_logic;
SIGNAL \sq2|Add6~1_combout\ : std_logic;
SIGNAL \sq2|Add8~1\ : std_logic;
SIGNAL \sq2|Add8~3\ : std_logic;
SIGNAL \sq2|Add8~5\ : std_logic;
SIGNAL \sq2|Add8~6_combout\ : std_logic;
SIGNAL \a6|out~57_combout\ : std_logic;
SIGNAL \a6|out~58_combout\ : std_logic;
SIGNAL \a6|out~59_combout\ : std_logic;
SIGNAL \a6|out~60_combout\ : std_logic;
SIGNAL \a6|out~55_combout\ : std_logic;
SIGNAL \a6|ShiftLeft0~13_combout\ : std_logic;
SIGNAL \a6|out~61_combout\ : std_logic;
SIGNAL \a6|out~62_combout\ : std_logic;
SIGNAL \a6|out[1]~feeder_combout\ : std_logic;
SIGNAL \a6|out~63_combout\ : std_logic;
SIGNAL \a6|out~64_combout\ : std_logic;
SIGNAL \a6|out~66_combout\ : std_logic;
SIGNAL \a6|out~65_combout\ : std_logic;
SIGNAL \a6|out~67_combout\ : std_logic;
SIGNAL \a6|out~68_combout\ : std_logic;
SIGNAL \a6|out~69_combout\ : std_logic;
SIGNAL \a6|out~70_combout\ : std_logic;
SIGNAL \a6|out~71_combout\ : std_logic;
SIGNAL \sq2|Add1~0_combout\ : std_logic;
SIGNAL \a6|out~30_combout\ : std_logic;
SIGNAL \a6|out~31_combout\ : std_logic;
SIGNAL \a6|out~27_combout\ : std_logic;
SIGNAL \a6|out~32_combout\ : std_logic;
SIGNAL \a6|out~33_combout\ : std_logic;
SIGNAL \a6|out~34_combout\ : std_logic;
SIGNAL \sq2|Add2~0_combout\ : std_logic;
SIGNAL \sq2|Add4~2_combout\ : std_logic;
SIGNAL \a6|ShiftRight0~4_combout\ : std_logic;
SIGNAL \a6|out~20_combout\ : std_logic;
SIGNAL \a6|out~21_combout\ : std_logic;
SIGNAL \a6|out~19_combout\ : std_logic;
SIGNAL \a6|out~22_combout\ : std_logic;
SIGNAL \a6|out~23_combout\ : std_logic;
SIGNAL \sq2|Add0~0_combout\ : std_logic;
SIGNAL \sq2|Add5~0_combout\ : std_logic;
SIGNAL \sq2|Add2~1_combout\ : std_logic;
SIGNAL \sq2|Add5~1_combout\ : std_logic;
SIGNAL \sq2|Add5~2_combout\ : std_logic;
SIGNAL \sq2|Add8~4_combout\ : std_logic;
SIGNAL \sq2|Add5~3_combout\ : std_logic;
SIGNAL \sq2|Add8~2_combout\ : std_logic;
SIGNAL \sq2|Add8~0_combout\ : std_logic;
SIGNAL \sq2|Add5~4_combout\ : std_logic;
SIGNAL \sq2|Add12~1\ : std_logic;
SIGNAL \sq2|Add12~3\ : std_logic;
SIGNAL \sq2|Add12~5\ : std_logic;
SIGNAL \sq2|Add12~6_combout\ : std_logic;
SIGNAL \sq2|Add12~4_combout\ : std_logic;
SIGNAL \sq2|Add12~2_combout\ : std_logic;
SIGNAL \a6|ShiftRight0~33_combout\ : std_logic;
SIGNAL \a6|out~101_combout\ : std_logic;
SIGNAL \a6|ShiftLeft0~32_combout\ : std_logic;
SIGNAL \a6|ShiftLeft0~33_combout\ : std_logic;
SIGNAL \a6|out~102_combout\ : std_logic;
SIGNAL \a6|out~103_combout\ : std_logic;
SIGNAL \a6|out~104_combout\ : std_logic;
SIGNAL \sq2|Add12~0_combout\ : std_logic;
SIGNAL \sq2|Add13~1\ : std_logic;
SIGNAL \sq2|Add13~3\ : std_logic;
SIGNAL \sq2|Add13~5\ : std_logic;
SIGNAL \sq2|Add13~7\ : std_logic;
SIGNAL \sq2|Add13~8_combout\ : std_logic;
SIGNAL \sq2|Add20~6_combout\ : std_logic;
SIGNAL \sq2|Add13~6_combout\ : std_logic;
SIGNAL \sq2|Add13~4_combout\ : std_logic;
SIGNAL \sq2|Add20~4_combout\ : std_logic;
SIGNAL \sq2|Add13~2_combout\ : std_logic;
SIGNAL \sq2|Add20~2_combout\ : std_logic;
SIGNAL \sq2|Add13~0_combout\ : std_logic;
SIGNAL \sq2|Add20~0_combout\ : std_logic;
SIGNAL \sq2|Add28~1\ : std_logic;
SIGNAL \sq2|Add28~3\ : std_logic;
SIGNAL \sq2|Add28~5\ : std_logic;
SIGNAL \sq2|Add28~7\ : std_logic;
SIGNAL \sq2|Add28~8_combout\ : std_logic;
SIGNAL \sq2|Add28~6_combout\ : std_logic;
SIGNAL \sq2|Add28~4_combout\ : std_logic;
SIGNAL \sq2|Add28~2_combout\ : std_logic;
SIGNAL \a6|out~173_combout\ : std_logic;
SIGNAL \a6|out~172_combout\ : std_logic;
SIGNAL \a6|out~174_combout\ : std_logic;
SIGNAL \a6|out~175_combout\ : std_logic;
SIGNAL \sq2|Add28~0_combout\ : std_logic;
SIGNAL \a6|out~176_combout\ : std_logic;
SIGNAL \a6|out~177_combout\ : std_logic;
SIGNAL \a6|out~178_combout\ : std_logic;
SIGNAL \a6|out~179_combout\ : std_logic;
SIGNAL \sq2|Add29~1_cout\ : std_logic;
SIGNAL \sq2|Add29~3\ : std_logic;
SIGNAL \sq2|Add29~5\ : std_logic;
SIGNAL \sq2|Add29~7\ : std_logic;
SIGNAL \sq2|Add29~9\ : std_logic;
SIGNAL \sq2|Add29~10_combout\ : std_logic;
SIGNAL \sq2|Add29~6_combout\ : std_logic;
SIGNAL \sq2|Add29~4_combout\ : std_logic;
SIGNAL \sq2|Add29~2_combout\ : std_logic;
SIGNAL \sq2|Add29~8_combout\ : std_logic;
SIGNAL \sq2|LessThan0~0_combout\ : std_logic;
SIGNAL \sq2|Add29~11\ : std_logic;
SIGNAL \sq2|Add29~12_combout\ : std_logic;
SIGNAL \sq2|LessThan0~1_combout\ : std_logic;
SIGNAL \sq2|out[2]~12_combout\ : std_logic;
SIGNAL \a6|out[32]~180_combout\ : std_logic;
SIGNAL \sq2|out[7]~0_combout\ : std_logic;
SIGNAL \sq2|out[4]~1_combout\ : std_logic;
SIGNAL \sq2|out[6]~2_combout\ : std_logic;
SIGNAL \sq2|out[3]~13_combout\ : std_logic;
SIGNAL \sq2|out[5]~3_combout\ : std_logic;
SIGNAL \sig2|Equal16~6_combout\ : std_logic;
SIGNAL \sq2|out[0]~4_combout\ : std_logic;
SIGNAL \sig2|Equal16~4_combout\ : std_logic;
SIGNAL \sig2|Equal16~5_combout\ : std_logic;
SIGNAL \sq2|out[12]~10_combout\ : std_logic;
SIGNAL \sq2|out[15]~7_combout\ : std_logic;
SIGNAL \sq2|out[13]~9_combout\ : std_logic;
SIGNAL \sq2|out[14]~8_combout\ : std_logic;
SIGNAL \sig2|Equal16~3_combout\ : std_logic;
SIGNAL \sq2|out[8]~6_combout\ : std_logic;
SIGNAL \sq2|out[9]~5_combout\ : std_logic;
SIGNAL \sig2|Equal16~2_combout\ : std_logic;
SIGNAL \sig2|Equal13~0_combout\ : std_logic;
SIGNAL \sig2|Equal13~1_combout\ : std_logic;
SIGNAL \sig2|Equal17~0_combout\ : std_logic;
SIGNAL \sig2|WideOr1~2_combout\ : std_logic;
SIGNAL \sq2|out[1]~11_combout\ : std_logic;
SIGNAL \sig2|Equal20~0_combout\ : std_logic;
SIGNAL \sig2|WideOr1~3_combout\ : std_logic;
SIGNAL \sig2|Equal24~0_combout\ : std_logic;
SIGNAL \sig2|Equal27~0_combout\ : std_logic;
SIGNAL \sq2|out[10]~14_combout\ : std_logic;
SIGNAL \sig2|Equal27~1_combout\ : std_logic;
SIGNAL \sig2|Equal27~2_combout\ : std_logic;
SIGNAL \sig2|WideOr1~4_combout\ : std_logic;
SIGNAL \sig2|WideOr1~5_combout\ : std_logic;
SIGNAL \sig2|Equal32~0_combout\ : std_logic;
SIGNAL \sq2|out[11]~15_combout\ : std_logic;
SIGNAL \sig2|Equal32~1_combout\ : std_logic;
SIGNAL \sig2|WideOr1~6_combout\ : std_logic;
SIGNAL \sig2|WideOr1~7_combout\ : std_logic;
SIGNAL \sig2|WideOr1~8_combout\ : std_logic;
SIGNAL \sig2|Equal19~0_combout\ : std_logic;
SIGNAL \sig2|WideOr9~1_combout\ : std_logic;
SIGNAL \sig2|Equal15~0_combout\ : std_logic;
SIGNAL \sig2|Equal13~3_combout\ : std_logic;
SIGNAL \sig2|Equal16~10_combout\ : std_logic;
SIGNAL \sig2|Equal16~7_combout\ : std_logic;
SIGNAL \sig2|Equal16~8_combout\ : std_logic;
SIGNAL \sig2|Equal16~9_combout\ : std_logic;
SIGNAL \sig2|WideOr9~0_combout\ : std_logic;
SIGNAL \sig2|WideOr1~9_combout\ : std_logic;
SIGNAL \sig2|WideOr1~10_combout\ : std_logic;
SIGNAL \sig2|Equal13~2_combout\ : std_logic;
SIGNAL \sig2|WideNor0~0_combout\ : std_logic;
SIGNAL \sig2|WideNor0~1_combout\ : std_logic;
SIGNAL \sig2|WideNor0~2_combout\ : std_logic;
SIGNAL \sig2|WideNor0~5_combout\ : std_logic;
SIGNAL \sig2|WideNor0~3_combout\ : std_logic;
SIGNAL \sig2|WideNor0~4_combout\ : std_logic;
SIGNAL \sig2|WideNor0~6_combout\ : std_logic;
SIGNAL \sig2|WideNor0~7_combout\ : std_logic;
SIGNAL \sig2|WideNor0~7clkctrl_outclk\ : std_logic;
SIGNAL \sig2|WideOr13~0_combout\ : std_logic;
SIGNAL \m6|WideOr113~combout\ : std_logic;
SIGNAL \a8|Add1~0_combout\ : std_logic;
SIGNAL \m6|WideOr117~combout\ : std_logic;
SIGNAL \a8|Add2~0_combout\ : std_logic;
SIGNAL \a8|Add4~0_combout\ : std_logic;
SIGNAL \a8|Add5~1_combout\ : std_logic;
SIGNAL \a8|Add4~1_combout\ : std_logic;
SIGNAL \a8|Add2~1_combout\ : std_logic;
SIGNAL \a8|Add5~3_combout\ : std_logic;
SIGNAL \a8|Add4~2_combout\ : std_logic;
SIGNAL \sig2|WideOr5~0_combout\ : std_logic;
SIGNAL \m6|WideOr120~combout\ : std_logic;
SIGNAL \a8|Add6~1_combout\ : std_logic;
SIGNAL \a8|Add5~2_combout\ : std_logic;
SIGNAL \a8|Add6~0_combout\ : std_logic;
SIGNAL \a8|Add5~0_combout\ : std_logic;
SIGNAL \sig2|WideOr1~11_combout\ : std_logic;
SIGNAL \m6|WideOr122~combout\ : std_logic;
SIGNAL \a8|Add8~1_cout\ : std_logic;
SIGNAL \a8|Add8~3\ : std_logic;
SIGNAL \a8|Add8~5\ : std_logic;
SIGNAL \a8|Add8~6_combout\ : std_logic;
SIGNAL \a8|Add8~7\ : std_logic;
SIGNAL \a8|Add8~8_combout\ : std_logic;
SIGNAL \a3|Add25~0_combout\ : std_logic;
SIGNAL \a3|Add28~0_combout\ : std_logic;
SIGNAL \a3|Add31~1\ : std_logic;
SIGNAL \a3|Add31~3\ : std_logic;
SIGNAL \a3|Add31~5\ : std_logic;
SIGNAL \a3|Add31~6_combout\ : std_logic;
SIGNAL \a3|Add31~4_combout\ : std_logic;
SIGNAL \a3|Add31~0_combout\ : std_logic;
SIGNAL \a3|Add31~2_combout\ : std_logic;
SIGNAL \a3|Add33~0_combout\ : std_logic;
SIGNAL \a3|Add33~1_combout\ : std_logic;
SIGNAL \a3|Add33~2_combout\ : std_logic;
SIGNAL \a3|Add46~1\ : std_logic;
SIGNAL \a3|Add46~3\ : std_logic;
SIGNAL \a3|Add46~5\ : std_logic;
SIGNAL \a3|Add46~7\ : std_logic;
SIGNAL \a3|Add46~11\ : std_logic;
SIGNAL \a3|Add46~12_combout\ : std_logic;
SIGNAL \a3|Add46~10_combout\ : std_logic;
SIGNAL \a3|Add46~6_combout\ : std_logic;
SIGNAL \a3|Add46~4_combout\ : std_logic;
SIGNAL \a3|Add46~2_combout\ : std_logic;
SIGNAL \a3|Add35~0_combout\ : std_logic;
SIGNAL \a3|Add46~0_combout\ : std_logic;
SIGNAL \a3|Add24~0_combout\ : std_logic;
SIGNAL \a3|Add46~8_combout\ : std_logic;
SIGNAL \a3|Add47~1_cout\ : std_logic;
SIGNAL \a3|Add47~3_cout\ : std_logic;
SIGNAL \a3|Add47~5\ : std_logic;
SIGNAL \a3|Add47~7\ : std_logic;
SIGNAL \a3|Add47~9\ : std_logic;
SIGNAL \a3|Add47~11\ : std_logic;
SIGNAL \a3|Add47~12_combout\ : std_logic;
SIGNAL \a3|LessThan0~0_combout\ : std_logic;
SIGNAL \a3|Add47~13\ : std_logic;
SIGNAL \a3|Add47~14_combout\ : std_logic;
SIGNAL \a3|Add47~10_combout\ : std_logic;
SIGNAL \a3|out[20]~54_combout\ : std_logic;
SIGNAL \a3|Add47~6_combout\ : std_logic;
SIGNAL \a3|Add47~8_combout\ : std_logic;
SIGNAL \a3|out~37_combout\ : std_logic;
SIGNAL \a3|Add47~4_combout\ : std_logic;
SIGNAL \a3|out~52_combout\ : std_logic;
SIGNAL \a3|out~53_combout\ : std_logic;
SIGNAL \a3|ShiftLeft0~14_combout\ : std_logic;
SIGNAL \a3|out~50_combout\ : std_logic;
SIGNAL \a3|out~51_combout\ : std_logic;
SIGNAL \a3|out~55_combout\ : std_logic;
SIGNAL \a3|out~73_combout\ : std_logic;
SIGNAL \a3|out~56_combout\ : std_logic;
SIGNAL \a3|out~57_combout\ : std_logic;
SIGNAL \sq1|out[9]~14_combout\ : std_logic;
SIGNAL \a3|ShiftRight1~2_combout\ : std_logic;
SIGNAL \a3|ShiftLeft0~10_combout\ : std_logic;
SIGNAL \a3|out~23_combout\ : std_logic;
SIGNAL \a3|out[29]~36_combout\ : std_logic;
SIGNAL \a3|out~46_combout\ : std_logic;
SIGNAL \a3|out~47_combout\ : std_logic;
SIGNAL \a3|out~48_combout\ : std_logic;
SIGNAL \a3|out~72_combout\ : std_logic;
SIGNAL \a3|ShiftRight1~3_combout\ : std_logic;
SIGNAL \a3|out~45_combout\ : std_logic;
SIGNAL \a3|out~49_combout\ : std_logic;
SIGNAL \sq1|Add26~1_combout\ : std_logic;
SIGNAL \a3|out~38_combout\ : std_logic;
SIGNAL \a3|out~39_combout\ : std_logic;
SIGNAL \a3|out~40_combout\ : std_logic;
SIGNAL \a3|out~41_combout\ : std_logic;
SIGNAL \a3|out~42_combout\ : std_logic;
SIGNAL \a3|out~43_combout\ : std_logic;
SIGNAL \a3|out~71_combout\ : std_logic;
SIGNAL \a3|out~44_combout\ : std_logic;
SIGNAL \sq1|Add22~1_combout\ : std_logic;
SIGNAL \sq1|Add26~2_combout\ : std_logic;
SIGNAL \sq1|Add22~2_combout\ : std_logic;
SIGNAL \sq1|Add24~1\ : std_logic;
SIGNAL \sq1|Add24~2_combout\ : std_logic;
SIGNAL \a3|ShiftLeft0~8_combout\ : std_logic;
SIGNAL \a3|ShiftLeft0~16_combout\ : std_logic;
SIGNAL \a3|out~60_combout\ : std_logic;
SIGNAL \a3|out~61_combout\ : std_logic;
SIGNAL \a3|out~58_combout\ : std_logic;
SIGNAL \a3|out~59_combout\ : std_logic;
SIGNAL \sq1|Add18~1_combout\ : std_logic;
SIGNAL \sq1|Add18~2_combout\ : std_logic;
SIGNAL \a3|out~62_combout\ : std_logic;
SIGNAL \a3|out~63_combout\ : std_logic;
SIGNAL \a3|out~64_combout\ : std_logic;
SIGNAL \a3|out~65_combout\ : std_logic;
SIGNAL \sq1|Add16~1\ : std_logic;
SIGNAL \sq1|Add16~2_combout\ : std_logic;
SIGNAL \sq1|Add24~0_combout\ : std_logic;
SIGNAL \sq1|Add16~0_combout\ : std_logic;
SIGNAL \sq1|Add20~1\ : std_logic;
SIGNAL \sq1|Add20~2_combout\ : std_logic;
SIGNAL \a3|out[0]~9_combout\ : std_logic;
SIGNAL \a3|ShiftRight0~0_combout\ : std_logic;
SIGNAL \a3|out~17_combout\ : std_logic;
SIGNAL \a3|out~70_combout\ : std_logic;
SIGNAL \a3|out~18_combout\ : std_logic;
SIGNAL \a3|out~19_combout\ : std_logic;
SIGNAL \a3|out~20_combout\ : std_logic;
SIGNAL \a3|out~21_combout\ : std_logic;
SIGNAL \a3|out~22_combout\ : std_logic;
SIGNAL \sq1|Add10~1_combout\ : std_logic;
SIGNAL \a3|out~24_combout\ : std_logic;
SIGNAL \sq1|Add10~2_combout\ : std_logic;
SIGNAL \sq1|Add8~1\ : std_logic;
SIGNAL \sq1|Add8~2_combout\ : std_logic;
SIGNAL \a3|ShiftLeft0~11_combout\ : std_logic;
SIGNAL \a3|out[0]~8_combout\ : std_logic;
SIGNAL \a3|out~25_combout\ : std_logic;
SIGNAL \a3|out~26_combout\ : std_logic;
SIGNAL \a3|ShiftLeft0~15_combout\ : std_logic;
SIGNAL \a3|out~27_combout\ : std_logic;
SIGNAL \a3|out~28_combout\ : std_logic;
SIGNAL \a3|out~33_combout\ : std_logic;
SIGNAL \a3|out~29_combout\ : std_logic;
SIGNAL \a3|ShiftLeft0~9_combout\ : std_logic;
SIGNAL \a3|out~13_combout\ : std_logic;
SIGNAL \a3|out~30_combout\ : std_logic;
SIGNAL \a3|out~31_combout\ : std_logic;
SIGNAL \a3|out~32_combout\ : std_logic;
SIGNAL \a3|out~14_combout\ : std_logic;
SIGNAL \a3|out~15_combout\ : std_logic;
SIGNAL \a3|out~16_combout\ : std_logic;
SIGNAL \a3|ShiftLeft0~13_combout\ : std_logic;
SIGNAL \a3|out~10_combout\ : std_logic;
SIGNAL \a3|out~11_combout\ : std_logic;
SIGNAL \a3|out~12_combout\ : std_logic;
SIGNAL \sq1|Add4~2_combout\ : std_logic;
SIGNAL \sq1|Add4~3_combout\ : std_logic;
SIGNAL \sq1|Add5~2_combout\ : std_logic;
SIGNAL \sq1|Add5~3_combout\ : std_logic;
SIGNAL \sq1|Add8~0_combout\ : std_logic;
SIGNAL \sq1|Add12~1\ : std_logic;
SIGNAL \sq1|Add12~2_combout\ : std_logic;
SIGNAL \sq1|Add12~0_combout\ : std_logic;
SIGNAL \a3|ShiftLeft0~12_combout\ : std_logic;
SIGNAL \a3|out~34_combout\ : std_logic;
SIGNAL \a3|out~35_combout\ : std_logic;
SIGNAL \sq1|Add13~1\ : std_logic;
SIGNAL \sq1|Add13~2_combout\ : std_logic;
SIGNAL \sq1|Add13~0_combout\ : std_logic;
SIGNAL \sq1|Add20~0_combout\ : std_logic;
SIGNAL \sq1|Add28~1\ : std_logic;
SIGNAL \sq1|Add28~2_combout\ : std_logic;
SIGNAL \a3|out~66_combout\ : std_logic;
SIGNAL \a3|out~67_combout\ : std_logic;
SIGNAL \sq1|Add28~0_combout\ : std_logic;
SIGNAL \a3|out~68_combout\ : std_logic;
SIGNAL \a3|out~69_combout\ : std_logic;
SIGNAL \sq1|Add29~1_cout\ : std_logic;
SIGNAL \sq1|Add29~3\ : std_logic;
SIGNAL \sq1|Add29~4_combout\ : std_logic;
SIGNAL \sq1|Add29~2_combout\ : std_logic;
SIGNAL \sq1|LessThan0~0_combout\ : std_logic;
SIGNAL \sq1|Add26~0_combout\ : std_logic;
SIGNAL \sq1|Add22~0_combout\ : std_logic;
SIGNAL \sq1|Add24~3\ : std_logic;
SIGNAL \sq1|Add24~4_combout\ : std_logic;
SIGNAL \sq1|Add18~0_combout\ : std_logic;
SIGNAL \sq1|Add16~3\ : std_logic;
SIGNAL \sq1|Add16~4_combout\ : std_logic;
SIGNAL \sq1|Add20~3\ : std_logic;
SIGNAL \sq1|Add20~4_combout\ : std_logic;
SIGNAL \sq1|Add10~0_combout\ : std_logic;
SIGNAL \sq1|Add8~3\ : std_logic;
SIGNAL \sq1|Add8~4_combout\ : std_logic;
SIGNAL \sq1|Add4~1_combout\ : std_logic;
SIGNAL \sq1|Add4~0_combout\ : std_logic;
SIGNAL \sq1|Add5~0_combout\ : std_logic;
SIGNAL \sq1|Add5~1_combout\ : std_logic;
SIGNAL \sq1|Add12~3\ : std_logic;
SIGNAL \sq1|Add12~4_combout\ : std_logic;
SIGNAL \sq1|Add13~3\ : std_logic;
SIGNAL \sq1|Add13~4_combout\ : std_logic;
SIGNAL \sq1|Add28~3\ : std_logic;
SIGNAL \sq1|Add28~4_combout\ : std_logic;
SIGNAL \sq1|Add29~5\ : std_logic;
SIGNAL \sq1|Add29~6_combout\ : std_logic;
SIGNAL \sq1|Add24~5\ : std_logic;
SIGNAL \sq1|Add24~6_combout\ : std_logic;
SIGNAL \sq1|Add16~5\ : std_logic;
SIGNAL \sq1|Add16~6_combout\ : std_logic;
SIGNAL \sq1|Add20~5\ : std_logic;
SIGNAL \sq1|Add20~7\ : std_logic;
SIGNAL \sq1|Add20~8_combout\ : std_logic;
SIGNAL \sq1|Add8~5\ : std_logic;
SIGNAL \sq1|Add8~6_combout\ : std_logic;
SIGNAL \sq1|Add12~5\ : std_logic;
SIGNAL \sq1|Add12~6_combout\ : std_logic;
SIGNAL \sq1|Add13~5\ : std_logic;
SIGNAL \sq1|Add13~7\ : std_logic;
SIGNAL \sq1|Add13~8_combout\ : std_logic;
SIGNAL \sq1|Add20~6_combout\ : std_logic;
SIGNAL \sq1|Add13~6_combout\ : std_logic;
SIGNAL \sq1|Add28~5\ : std_logic;
SIGNAL \sq1|Add28~7\ : std_logic;
SIGNAL \sq1|Add28~8_combout\ : std_logic;
SIGNAL \sq1|Add28~6_combout\ : std_logic;
SIGNAL \sq1|Add29~7\ : std_logic;
SIGNAL \sq1|Add29~9\ : std_logic;
SIGNAL \sq1|Add29~10_combout\ : std_logic;
SIGNAL \sq1|Add29~8_combout\ : std_logic;
SIGNAL \sq1|LessThan0~1_combout\ : std_logic;
SIGNAL \sq1|Add29~11\ : std_logic;
SIGNAL \sq1|Add29~12_combout\ : std_logic;
SIGNAL \sq1|out[9]~15_combout\ : std_logic;
SIGNAL \sq1|out[8]~12_combout\ : std_logic;
SIGNAL \sq1|out[8]~13_combout\ : std_logic;
SIGNAL \sq1|out[7]~10_combout\ : std_logic;
SIGNAL \sq1|out[7]~11_combout\ : std_logic;
SIGNAL \sig1|WideNor0~1_combout\ : std_logic;
SIGNAL \sq1|LessThan0~2_combout\ : std_logic;
SIGNAL \sq1|out[11]~8_combout\ : std_logic;
SIGNAL \sq1|out[10]~7_combout\ : std_logic;
SIGNAL \sq1|out[13]~1_combout\ : std_logic;
SIGNAL \sq1|out[13]~2_combout\ : std_logic;
SIGNAL \sq1|out[14]~5_combout\ : std_logic;
SIGNAL \sq1|out[14]~6_combout\ : std_logic;
SIGNAL \sq1|out[15]~3_combout\ : std_logic;
SIGNAL \sq1|out[15]~4_combout\ : std_logic;
SIGNAL \sig1|Equal29~0_combout\ : std_logic;
SIGNAL \sq1|out[12]~9_combout\ : std_logic;
SIGNAL \sig1|WideNor0~0_combout\ : std_logic;
SIGNAL \sq1|out[1]~18_combout\ : std_logic;
SIGNAL \sq1|out[1]~19_combout\ : std_logic;
SIGNAL \sq1|out[0]~0_combout\ : std_logic;
SIGNAL \sq1|out[2]~20_combout\ : std_logic;
SIGNAL \sq1|out[2]~21_combout\ : std_logic;
SIGNAL \sq1|out[6]~16_combout\ : std_logic;
SIGNAL \sq1|out[6]~17_combout\ : std_logic;
SIGNAL \sq1|out[3]~22_combout\ : std_logic;
SIGNAL \sq1|out[3]~23_combout\ : std_logic;
SIGNAL \sq1|out[4]~26_combout\ : std_logic;
SIGNAL \sq1|out[4]~27_combout\ : std_logic;
SIGNAL \sq1|out[5]~24_combout\ : std_logic;
SIGNAL \sq1|out[5]~25_combout\ : std_logic;
SIGNAL \sig1|Equal14~2_combout\ : std_logic;
SIGNAL \sig1|Equal14~3_combout\ : std_logic;
SIGNAL \sig1|Equal16~0_combout\ : std_logic;
SIGNAL \sig1|Equal13~0_combout\ : std_logic;
SIGNAL \sig1|Equal17~0_combout\ : std_logic;
SIGNAL \sig1|Equal13~1_combout\ : std_logic;
SIGNAL \sig1|Equal19~0_combout\ : std_logic;
SIGNAL \sig1|Equal20~0_combout\ : std_logic;
SIGNAL \sig1|Equal22~0_combout\ : std_logic;
SIGNAL \sig1|WideOr1~0_combout\ : std_logic;
SIGNAL \sig1|Equal24~0_combout\ : std_logic;
SIGNAL \sig1|WideOr1~3_combout\ : std_logic;
SIGNAL \sig1|WideOr1~1_combout\ : std_logic;
SIGNAL \sig1|WideNor0~2_combout\ : std_logic;
SIGNAL \sig1|Equal26~0_combout\ : std_logic;
SIGNAL \sig1|WideOr1~8_combout\ : std_logic;
SIGNAL \sig1|WideOr1~2_combout\ : std_logic;
SIGNAL \sig1|WideOr1~9_combout\ : std_logic;
SIGNAL \sig1|WideOr1~4_combout\ : std_logic;
SIGNAL \sig1|WideOr9~0_combout\ : std_logic;
SIGNAL \sig1|WideOr1~5_combout\ : std_logic;
SIGNAL \sig1|Equal14~4_combout\ : std_logic;
SIGNAL \sig1|WideOr1~6_combout\ : std_logic;
SIGNAL \sig1|Equal13~2_combout\ : std_logic;
SIGNAL \sig1|WideNor0~9_combout\ : std_logic;
SIGNAL \sig1|WideNor0~3_combout\ : std_logic;
SIGNAL \sig1|WideNor0~4_combout\ : std_logic;
SIGNAL \sig1|WideNor0~7_combout\ : std_logic;
SIGNAL \sig1|WideNor0~5_combout\ : std_logic;
SIGNAL \sig1|WideNor0~6_combout\ : std_logic;
SIGNAL \sig1|WideNor0~8_combout\ : std_logic;
SIGNAL \sig1|WideNor0~10_combout\ : std_logic;
SIGNAL \sig1|WideNor0~10clkctrl_outclk\ : std_logic;
SIGNAL \sig1|WideOr5~0_combout\ : std_logic;
SIGNAL \m5|WideOr120~combout\ : std_logic;
SIGNAL \a8|Add8~2_combout\ : std_logic;
SIGNAL \a8|ShiftLeft1~18_combout\ : std_logic;
SIGNAL \a8|Add8~4_combout\ : std_logic;
SIGNAL \sig1|WideOr1~7_combout\ : std_logic;
SIGNAL \m5|WideOr122~combout\ : std_logic;
SIGNAL \a8|ShiftLeft1~19_combout\ : std_logic;
SIGNAL \a8|ShiftLeft1~20_combout\ : std_logic;
SIGNAL \a8|ShiftLeft1~40_combout\ : std_logic;
SIGNAL \m5|WideOr117~combout\ : std_logic;
SIGNAL \a8|ShiftLeft1~5_combout\ : std_logic;
SIGNAL \a8|ShiftLeft1~27_combout\ : std_logic;
SIGNAL \a8|ShiftLeft1~45_combout\ : std_logic;
SIGNAL \a8|out[12]~0_combout\ : std_logic;
SIGNAL \a8|ShiftLeft1~36_combout\ : std_logic;
SIGNAL \a8|ShiftLeft1~22_combout\ : std_logic;
SIGNAL \a8|ShiftLeft1~23_combout\ : std_logic;
SIGNAL \a8|ShiftLeft1~12_combout\ : std_logic;
SIGNAL \a8|ShiftLeft1~24_combout\ : std_logic;
SIGNAL \a8|ShiftLeft1~25_combout\ : std_logic;
SIGNAL \a8|out[11]~3_combout\ : std_logic;
SIGNAL \a8|ShiftLeft1~35_combout\ : std_logic;
SIGNAL \a8|ShiftLeft1~28_combout\ : std_logic;
SIGNAL \a8|ShiftLeft1~29_combout\ : std_logic;
SIGNAL \a8|out[13]~4_combout\ : std_logic;
SIGNAL \a8|ShiftLeft1~33_combout\ : std_logic;
SIGNAL \a8|ShiftLeft1~4_combout\ : std_logic;
SIGNAL \a8|ShiftLeft1~6_combout\ : std_logic;
SIGNAL \a8|ShiftLeft1~34_combout\ : std_logic;
SIGNAL \a9|Add33~0_combout\ : std_logic;
SIGNAL \sig1|WideOr9~1_combout\ : std_logic;
SIGNAL \a8|ShiftLeft1~10_combout\ : std_logic;
SIGNAL \sig1|WideOr13~0_combout\ : std_logic;
SIGNAL \m5|WideOr113~combout\ : std_logic;
SIGNAL \a8|ShiftLeft1~9_combout\ : std_logic;
SIGNAL \a8|ShiftLeft1~11_combout\ : std_logic;
SIGNAL \a8|out[15]~5_combout\ : std_logic;
SIGNAL \a8|out[15]~feeder_combout\ : std_logic;
SIGNAL \a8|ShiftLeft1~39_combout\ : std_logic;
SIGNAL \a8|ShiftLeft1~13_combout\ : std_logic;
SIGNAL \a8|out[17]~6_combout\ : std_logic;
SIGNAL \a8|ShiftLeft1~38_combout\ : std_logic;
SIGNAL \a8|ShiftLeft1~7_combout\ : std_logic;
SIGNAL \a8|ShiftLeft1~16_combout\ : std_logic;
SIGNAL \a8|out[16]~2_combout\ : std_logic;
SIGNAL \a8|ShiftLeft1~37_combout\ : std_logic;
SIGNAL \a9|Add29~0_combout\ : std_logic;
SIGNAL \a9|Add33~1_combout\ : std_logic;
SIGNAL \a9|Add33~2_combout\ : std_logic;
SIGNAL \a9|Add29~1_combout\ : std_logic;
SIGNAL \a9|Add31~1\ : std_logic;
SIGNAL \a9|Add31~3\ : std_logic;
SIGNAL \a9|Add31~5\ : std_logic;
SIGNAL \a9|Add31~6_combout\ : std_logic;
SIGNAL \a8|ShiftLeft1~42_combout\ : std_logic;
SIGNAL \a8|ShiftLeft1~41_combout\ : std_logic;
SIGNAL \a8|ShiftLeft1~43_combout\ : std_logic;
SIGNAL \a9|Add37~0_combout\ : std_logic;
SIGNAL \a9|Add31~4_combout\ : std_logic;
SIGNAL \a9|Add31~2_combout\ : std_logic;
SIGNAL \a9|Add37~1_combout\ : std_logic;
SIGNAL \a9|Add37~2_combout\ : std_logic;
SIGNAL \a9|Add31~0_combout\ : std_logic;
SIGNAL \a9|Add35~1\ : std_logic;
SIGNAL \a9|Add35~3\ : std_logic;
SIGNAL \a9|Add35~5\ : std_logic;
SIGNAL \a9|Add35~7\ : std_logic;
SIGNAL \a9|Add35~8_combout\ : std_logic;
SIGNAL \a8|ShiftLeft1~8_combout\ : std_logic;
SIGNAL \a8|out[14]~1_combout\ : std_logic;
SIGNAL \a8|out~7_combout\ : std_logic;
SIGNAL \a8|out~11_combout\ : std_logic;
SIGNAL \a8|ShiftLeft1~15_combout\ : std_logic;
SIGNAL \a8|out~13_combout\ : std_logic;
SIGNAL \a8|ShiftLeft1~44_combout\ : std_logic;
SIGNAL \a8|out~12_combout\ : std_logic;
SIGNAL \a9|Add16~0_combout\ : std_logic;
SIGNAL \a8|out~8_combout\ : std_logic;
SIGNAL \a8|ShiftLeft1~14_combout\ : std_logic;
SIGNAL \a8|out~9_combout\ : std_logic;
SIGNAL \a8|ShiftLeft1~17_combout\ : std_logic;
SIGNAL \a8|out~10_combout\ : std_logic;
SIGNAL \a9|Add17~0_combout\ : std_logic;
SIGNAL \a9|Add20~0_combout\ : std_logic;
SIGNAL \a9|Add17~1_combout\ : std_logic;
SIGNAL \a9|Add19~4_combout\ : std_logic;
SIGNAL \a9|Add16~1_combout\ : std_logic;
SIGNAL \a9|Add20~1_combout\ : std_logic;
SIGNAL \a8|out[11]~feeder_combout\ : std_logic;
SIGNAL \a8|ShiftLeft1~26_combout\ : std_logic;
SIGNAL \a8|ShiftLeft1~21_combout\ : std_logic;
SIGNAL \a8|out~14_combout\ : std_logic;
SIGNAL \a8|out~15_combout\ : std_logic;
SIGNAL \a8|out[12]~feeder_combout\ : std_logic;
SIGNAL \a8|out[13]~feeder_combout\ : std_logic;
SIGNAL \a9|Add25~0_combout\ : std_logic;
SIGNAL \a8|ShiftLeft1~30_combout\ : std_logic;
SIGNAL \a8|out~16_combout\ : std_logic;
SIGNAL \a8|out~18_combout\ : std_logic;
SIGNAL \a8|ShiftLeft1~31_combout\ : std_logic;
SIGNAL \a8|out~17_combout\ : std_logic;
SIGNAL \a9|Add21~0_combout\ : std_logic;
SIGNAL \a9|Add25~1_combout\ : std_logic;
SIGNAL \a9|Add25~2_combout\ : std_logic;
SIGNAL \a9|Add21~1_combout\ : std_logic;
SIGNAL \a9|Add23~1\ : std_logic;
SIGNAL \a9|Add23~3\ : std_logic;
SIGNAL \a9|Add23~5\ : std_logic;
SIGNAL \a9|Add23~6_combout\ : std_logic;
SIGNAL \a9|Add20~2_combout\ : std_logic;
SIGNAL \a9|Add23~4_combout\ : std_logic;
SIGNAL \a9|Add23~2_combout\ : std_logic;
SIGNAL \a9|Add20~3_combout\ : std_logic;
SIGNAL \a9|Add23~0_combout\ : std_logic;
SIGNAL \a9|Add20~4_combout\ : std_logic;
SIGNAL \a9|Add27~1\ : std_logic;
SIGNAL \a9|Add27~3\ : std_logic;
SIGNAL \a9|Add27~5\ : std_logic;
SIGNAL \a9|Add27~6_combout\ : std_logic;
SIGNAL \a9|Add27~4_combout\ : std_logic;
SIGNAL \a9|Add27~2_combout\ : std_logic;
SIGNAL \a8|out[14]~feeder_combout\ : std_logic;
SIGNAL \a8|ShiftLeft1~32_combout\ : std_logic;
SIGNAL \a9|Add27~0_combout\ : std_logic;
SIGNAL \a9|Add28~1\ : std_logic;
SIGNAL \a9|Add28~3\ : std_logic;
SIGNAL \a9|Add28~5\ : std_logic;
SIGNAL \a9|Add28~7\ : std_logic;
SIGNAL \a9|Add28~8_combout\ : std_logic;
SIGNAL \a9|Add35~6_combout\ : std_logic;
SIGNAL \a9|Add28~6_combout\ : std_logic;
SIGNAL \a9|Add35~4_combout\ : std_logic;
SIGNAL \a9|Add28~4_combout\ : std_logic;
SIGNAL \a9|Add28~2_combout\ : std_logic;
SIGNAL \a9|Add35~2_combout\ : std_logic;
SIGNAL \a9|Add28~0_combout\ : std_logic;
SIGNAL \a9|Add35~0_combout\ : std_logic;
SIGNAL \a9|Add39~1\ : std_logic;
SIGNAL \a9|Add39~3\ : std_logic;
SIGNAL \a9|Add39~5\ : std_logic;
SIGNAL \a9|Add39~7\ : std_logic;
SIGNAL \a9|Add39~8_combout\ : std_logic;
SIGNAL \a9|Add39~6_combout\ : std_logic;
SIGNAL \a9|Add39~4_combout\ : std_logic;
SIGNAL \a9|Add39~2_combout\ : std_logic;
SIGNAL \a9|Add39~0_combout\ : std_logic;
SIGNAL \a9|Add46~1_cout\ : std_logic;
SIGNAL \a9|Add46~3\ : std_logic;
SIGNAL \a9|Add46~5\ : std_logic;
SIGNAL \a9|Add46~7\ : std_logic;
SIGNAL \a9|Add46~9\ : std_logic;
SIGNAL \a9|Add46~11\ : std_logic;
SIGNAL \a9|Add46~12_combout\ : std_logic;
SIGNAL \a9|Add46~10_combout\ : std_logic;
SIGNAL \a9|Add46~8_combout\ : std_logic;
SIGNAL \a9|Add46~6_combout\ : std_logic;
SIGNAL \a9|Add46~4_combout\ : std_logic;
SIGNAL \a9|Add46~2_combout\ : std_logic;
SIGNAL \a9|Add47~1\ : std_logic;
SIGNAL \a9|Add47~3\ : std_logic;
SIGNAL \a9|Add47~5\ : std_logic;
SIGNAL \a9|Add47~7\ : std_logic;
SIGNAL \a9|Add47~9\ : std_logic;
SIGNAL \a9|Add47~11\ : std_logic;
SIGNAL \a9|Add47~12_combout\ : std_logic;
SIGNAL \a9|Add47~4_combout\ : std_logic;
SIGNAL \a9|Add47~6_combout\ : std_logic;
SIGNAL \a9|out[7]~20_combout\ : std_logic;
SIGNAL \a9|Add47~2_combout\ : std_logic;
SIGNAL \a9|Add47~0_combout\ : std_logic;
SIGNAL \a9|ShiftRight0~10_combout\ : std_logic;
SIGNAL \a9|ShiftRight0~9_combout\ : std_logic;
SIGNAL \a9|ShiftRight0~11_combout\ : std_logic;
SIGNAL \a9|ShiftRight0~8_combout\ : std_logic;
SIGNAL \a9|ShiftRight0~14_combout\ : std_logic;
SIGNAL \a9|ShiftRight0~13_combout\ : std_logic;
SIGNAL \a9|ShiftRight0~12_combout\ : std_logic;
SIGNAL \a9|out[7]~19_combout\ : std_logic;
SIGNAL \a9|out~30_combout\ : std_logic;
SIGNAL \a9|out~31_combout\ : std_logic;
SIGNAL \a9|Add47~8_combout\ : std_logic;
SIGNAL \a9|Add47~10_combout\ : std_logic;
SIGNAL \a9|out~23_combout\ : std_logic;
SIGNAL \a9|Add48~1_cout\ : std_logic;
SIGNAL \a9|Add48~2_combout\ : std_logic;
SIGNAL \a9|ShiftLeft0~13_combout\ : std_logic;
SIGNAL \a9|ShiftLeft0~12_combout\ : std_logic;
SIGNAL \a9|ShiftLeft0~14_combout\ : std_logic;
SIGNAL \a9|ShiftRight1~1_combout\ : std_logic;
SIGNAL \a9|ShiftRight1~2_combout\ : std_logic;
SIGNAL \a9|Add48~3\ : std_logic;
SIGNAL \a9|Add48~5\ : std_logic;
SIGNAL \a9|Add48~7\ : std_logic;
SIGNAL \a9|Add48~9\ : std_logic;
SIGNAL \a9|Add48~10_combout\ : std_logic;
SIGNAL \a9|Add48~4_combout\ : std_logic;
SIGNAL \a9|Add48~8_combout\ : std_logic;
SIGNAL \a9|Add48~6_combout\ : std_logic;
SIGNAL \a9|ShiftLeft0~10_combout\ : std_logic;
SIGNAL \a9|Add48~11\ : std_logic;
SIGNAL \a9|Add48~13\ : std_logic;
SIGNAL \a9|Add48~14_combout\ : std_logic;
SIGNAL \a9|Add48~12_combout\ : std_logic;
SIGNAL \a9|ShiftLeft0~11_combout\ : std_logic;
SIGNAL \a9|out~29_combout\ : std_logic;
SIGNAL \a9|out~32_combout\ : std_logic;
SIGNAL \a9|out~33_combout\ : std_logic;
SIGNAL \a9|out[0]~26_combout\ : std_logic;
SIGNAL \a9|out[0]~27_combout\ : std_logic;
SIGNAL \a9|out[0]~28_combout\ : std_logic;
SIGNAL \a9|ShiftRight0~28_combout\ : std_logic;
SIGNAL \a9|ShiftRight0~42_combout\ : std_logic;
SIGNAL \a9|ShiftRight0~22_combout\ : std_logic;
SIGNAL \a9|ShiftRight0~23_combout\ : std_logic;
SIGNAL \a9|ShiftRight0~24_combout\ : std_logic;
SIGNAL \a9|out[12]~1_combout\ : std_logic;
SIGNAL \a9|ShiftRight1~3_combout\ : std_logic;
SIGNAL \a9|ShiftLeft0~17_combout\ : std_logic;
SIGNAL \a9|ShiftLeft0~73_combout\ : std_logic;
SIGNAL \a9|ShiftLeft0~31_combout\ : std_logic;
SIGNAL \a9|ShiftLeft0~30_combout\ : std_logic;
SIGNAL \a9|ShiftLeft0~32_combout\ : std_logic;
SIGNAL \a9|ShiftLeft0~33_combout\ : std_logic;
SIGNAL \a9|ShiftLeft0~18_combout\ : std_logic;
SIGNAL \a9|out~72_combout\ : std_logic;
SIGNAL \a9|out[10]~69_combout\ : std_logic;
SIGNAL \a9|ShiftRight0~30_combout\ : std_logic;
SIGNAL \a9|ShiftRight0~39_combout\ : std_logic;
SIGNAL \a9|ShiftRight0~32_combout\ : std_logic;
SIGNAL \a9|out[10]~4_combout\ : std_logic;
SIGNAL \a9|out~67_combout\ : std_logic;
SIGNAL \a9|ShiftLeft0~19_combout\ : std_logic;
SIGNAL \a9|ShiftLeft0~20_combout\ : std_logic;
SIGNAL \a9|ShiftLeft0~21_combout\ : std_logic;
SIGNAL \a9|out~68_combout\ : std_logic;
SIGNAL \a9|ShiftRight0~20_combout\ : std_logic;
SIGNAL \a9|ShiftRight0~19_combout\ : std_logic;
SIGNAL \a9|ShiftRight0~21_combout\ : std_logic;
SIGNAL \a9|ShiftRight0~15_combout\ : std_logic;
SIGNAL \a9|ShiftRight0~16_combout\ : std_logic;
SIGNAL \a9|ShiftRight0~40_combout\ : std_logic;
SIGNAL \a9|out[11]~5_combout\ : std_logic;
SIGNAL \a9|ShiftLeft0~15_combout\ : std_logic;
SIGNAL \a9|ShiftLeft0~22_combout\ : std_logic;
SIGNAL \a9|ShiftLeft0~23_combout\ : std_logic;
SIGNAL \a9|ShiftLeft0~24_combout\ : std_logic;
SIGNAL \a9|ShiftLeft0~25_combout\ : std_logic;
SIGNAL \a9|out~70_combout\ : std_logic;
SIGNAL \a9|ShiftRight0~6_combout\ : std_logic;
SIGNAL \a9|ShiftRight0~41_combout\ : std_logic;
SIGNAL \a9|ShiftRight0~1_combout\ : std_logic;
SIGNAL \a9|ShiftRight0~2_combout\ : std_logic;
SIGNAL \a9|ShiftRight0~3_combout\ : std_logic;
SIGNAL \a9|out[13]~0_combout\ : std_logic;
SIGNAL \a9|ShiftLeft0~9_combout\ : std_logic;
SIGNAL \a9|ShiftLeft0~72_combout\ : std_logic;
SIGNAL \a9|ShiftLeft0~27_combout\ : std_logic;
SIGNAL \a9|ShiftLeft0~26_combout\ : std_logic;
SIGNAL \a9|ShiftLeft0~28_combout\ : std_logic;
SIGNAL \a9|ShiftLeft0~29_combout\ : std_logic;
SIGNAL \a9|out~71_combout\ : std_logic;
SIGNAL \sq3|Add10~1_combout\ : std_logic;
SIGNAL \a9|ShiftRight0~37_combout\ : std_logic;
SIGNAL \a9|ShiftRight0~0_combout\ : std_logic;
SIGNAL \a9|ShiftRight0~36_combout\ : std_logic;
SIGNAL \a9|out[0]~56_combout\ : std_logic;
SIGNAL \a9|out[0]~58_combout\ : std_logic;
SIGNAL \a9|ShiftRight0~44_combout\ : std_logic;
SIGNAL \a9|out[0]~59_combout\ : std_logic;
SIGNAL \a9|ShiftLeft0~34_combout\ : std_logic;
SIGNAL \a9|ShiftLeft0~8_combout\ : std_logic;
SIGNAL \a9|ShiftLeft0~37_combout\ : std_logic;
SIGNAL \a9|ShiftLeft0~38_combout\ : std_logic;
SIGNAL \a9|out~76_combout\ : std_logic;
SIGNAL \a9|out~77_combout\ : std_logic;
SIGNAL \a9|out~78_combout\ : std_logic;
SIGNAL \a9|out[9]~feeder_combout\ : std_logic;
SIGNAL \a9|ShiftRight0~18_combout\ : std_logic;
SIGNAL \a9|ShiftRight0~45_combout\ : std_logic;
SIGNAL \a9|out~80_combout\ : std_logic;
SIGNAL \a9|ShiftRight0~46_combout\ : std_logic;
SIGNAL \a9|out~81_combout\ : std_logic;
SIGNAL \a9|ShiftLeft0~39_combout\ : std_logic;
SIGNAL \a9|out~79_combout\ : std_logic;
SIGNAL \a9|out~82_combout\ : std_logic;
SIGNAL \a9|out~83_combout\ : std_logic;
SIGNAL \a9|ShiftRight0~25_combout\ : std_logic;
SIGNAL \a9|ShiftRight0~33_combout\ : std_logic;
SIGNAL \a9|ShiftRight0~34_combout\ : std_logic;
SIGNAL \a9|ShiftRight0~43_combout\ : std_logic;
SIGNAL \a9|ShiftLeft0~16_combout\ : std_logic;
SIGNAL \a9|ShiftLeft0~35_combout\ : std_logic;
SIGNAL \a9|ShiftLeft0~36_combout\ : std_logic;
SIGNAL \a9|out~73_combout\ : std_logic;
SIGNAL \a9|out~74_combout\ : std_logic;
SIGNAL \a9|out~75_combout\ : std_logic;
SIGNAL \a9|out[8]~feeder_combout\ : std_logic;
SIGNAL \sq3|Add6~0_combout\ : std_logic;
SIGNAL \sq3|Add10~2_combout\ : std_logic;
SIGNAL \sq3|Add6~1_combout\ : std_logic;
SIGNAL \sq3|Add8~1\ : std_logic;
SIGNAL \sq3|Add8~2_combout\ : std_logic;
SIGNAL \a9|ShiftRight0~27_combout\ : std_logic;
SIGNAL \a9|ShiftRight0~29_combout\ : std_logic;
SIGNAL \a9|ShiftRight0~26_combout\ : std_logic;
SIGNAL \a9|out~44_combout\ : std_logic;
SIGNAL \a9|out~45_combout\ : std_logic;
SIGNAL \a9|ShiftRight1~0_combout\ : std_logic;
SIGNAL \a9|out~43_combout\ : std_logic;
SIGNAL \a9|out~46_combout\ : std_logic;
SIGNAL \a9|out~47_combout\ : std_logic;
SIGNAL \a9|ShiftRight0~5_combout\ : std_logic;
SIGNAL \a9|ShiftRight0~7_combout\ : std_logic;
SIGNAL \a9|ShiftRight0~4_combout\ : std_logic;
SIGNAL \a9|out~21_combout\ : std_logic;
SIGNAL \a9|out~22_combout\ : std_logic;
SIGNAL \a9|out~18_combout\ : std_logic;
SIGNAL \a9|out~24_combout\ : std_logic;
SIGNAL \a9|out~25_combout\ : std_logic;
SIGNAL \a9|out[2]~37_combout\ : std_logic;
SIGNAL \a9|out~38_combout\ : std_logic;
SIGNAL \a9|out~39_combout\ : std_logic;
SIGNAL \a9|ShiftRight0~17_combout\ : std_logic;
SIGNAL \a9|out[2]~36_combout\ : std_logic;
SIGNAL \a9|out~40_combout\ : std_logic;
SIGNAL \a9|out~34_combout\ : std_logic;
SIGNAL \a9|out~35_combout\ : std_logic;
SIGNAL \a9|out~41_combout\ : std_logic;
SIGNAL \a9|out~42_combout\ : std_logic;
SIGNAL \sq3|Add2~0_combout\ : std_logic;
SIGNAL \a9|out~62_combout\ : std_logic;
SIGNAL \a9|out~63_combout\ : std_logic;
SIGNAL \a9|ShiftRight0~38_combout\ : std_logic;
SIGNAL \a9|out~64_combout\ : std_logic;
SIGNAL \a9|out~65_combout\ : std_logic;
SIGNAL \a9|out~66_combout\ : std_logic;
SIGNAL \a9|out[1]~feeder_combout\ : std_logic;
SIGNAL \a9|ShiftRight0~31_combout\ : std_logic;
SIGNAL \a9|out~49_combout\ : std_logic;
SIGNAL \a9|out~50_combout\ : std_logic;
SIGNAL \a9|out~48_combout\ : std_logic;
SIGNAL \a9|out~51_combout\ : std_logic;
SIGNAL \a9|out~52_combout\ : std_logic;
SIGNAL \a9|out~53_combout\ : std_logic;
SIGNAL \a9|out~54_combout\ : std_logic;
SIGNAL \a9|out~55_combout\ : std_logic;
SIGNAL \a9|ShiftRight0~35_combout\ : std_logic;
SIGNAL \a9|out~57_combout\ : std_logic;
SIGNAL \a9|out~60_combout\ : std_logic;
SIGNAL \a9|out~61_combout\ : std_logic;
SIGNAL \a9|out[0]~feeder_combout\ : std_logic;
SIGNAL \sq3|Add1~0_combout\ : std_logic;
SIGNAL \sq3|Add5~0_combout\ : std_logic;
SIGNAL \sq3|Add2~1_combout\ : std_logic;
SIGNAL \sq3|Add1~1_combout\ : std_logic;
SIGNAL \sq3|Add4~4_combout\ : std_logic;
SIGNAL \sq3|Add5~3_combout\ : std_logic;
SIGNAL \sq3|Add8~0_combout\ : std_logic;
SIGNAL \sq3|Add5~4_combout\ : std_logic;
SIGNAL \sq3|Add12~1\ : std_logic;
SIGNAL \sq3|Add12~2_combout\ : std_logic;
SIGNAL \sq3|Add12~0_combout\ : std_logic;
SIGNAL \a9|ShiftRight0~47_combout\ : std_logic;
SIGNAL \a9|out[14]~2_combout\ : std_logic;
SIGNAL \a9|ShiftLeft0~40_combout\ : std_logic;
SIGNAL \a9|ShiftLeft0~41_combout\ : std_logic;
SIGNAL \a9|ShiftLeft0~42_combout\ : std_logic;
SIGNAL \a9|out~84_combout\ : std_logic;
SIGNAL \sq3|Add13~1\ : std_logic;
SIGNAL \sq3|Add13~2_combout\ : std_logic;
SIGNAL \a9|ShiftRight0~48_combout\ : std_logic;
SIGNAL \a9|out[15]~3_combout\ : std_logic;
SIGNAL \a9|ShiftLeft0~47_combout\ : std_logic;
SIGNAL \a9|ShiftLeft0~48_combout\ : std_logic;
SIGNAL \a9|ShiftLeft0~71_combout\ : std_logic;
SIGNAL \a9|out~125_combout\ : std_logic;
SIGNAL \a9|out[20]~85_combout\ : std_logic;
SIGNAL \a9|ShiftLeft0~74_combout\ : std_logic;
SIGNAL \a9|ShiftLeft0~54_combout\ : std_logic;
SIGNAL \a9|ShiftLeft0~55_combout\ : std_logic;
SIGNAL \a9|out[20]~86_combout\ : std_logic;
SIGNAL \a9|out~119_combout\ : std_logic;
SIGNAL \a9|out~120_combout\ : std_logic;
SIGNAL \a9|out~121_combout\ : std_logic;
SIGNAL \a9|ShiftLeft0~75_combout\ : std_logic;
SIGNAL \a9|ShiftLeft0~57_combout\ : std_logic;
SIGNAL \a9|ShiftLeft0~58_combout\ : std_logic;
SIGNAL \a9|out~122_combout\ : std_logic;
SIGNAL \a9|out~123_combout\ : std_logic;
SIGNAL \a9|out~124_combout\ : std_logic;
SIGNAL \sq3|Add14~0_combout\ : std_logic;
SIGNAL \a9|ShiftLeft0~67_combout\ : std_logic;
SIGNAL \a9|ShiftLeft0~43_combout\ : std_logic;
SIGNAL \a9|ShiftLeft0~61_combout\ : std_logic;
SIGNAL \a9|out~107_combout\ : std_logic;
SIGNAL \a9|out~108_combout\ : std_logic;
SIGNAL \a9|out~109_combout\ : std_logic;
SIGNAL \a9|ShiftLeft0~68_combout\ : std_logic;
SIGNAL \a9|ShiftLeft0~49_combout\ : std_logic;
SIGNAL \a9|ShiftLeft0~63_combout\ : std_logic;
SIGNAL \a9|out~110_combout\ : std_logic;
SIGNAL \a9|out~111_combout\ : std_logic;
SIGNAL \a9|out~112_combout\ : std_logic;
SIGNAL \a9|ShiftLeft0~69_combout\ : std_logic;
SIGNAL \a9|ShiftLeft0~53_combout\ : std_logic;
SIGNAL \a9|ShiftLeft0~65_combout\ : std_logic;
SIGNAL \a9|out~113_combout\ : std_logic;
SIGNAL \a9|out~114_combout\ : std_logic;
SIGNAL \a9|out~115_combout\ : std_logic;
SIGNAL \a9|ShiftLeft0~70_combout\ : std_logic;
SIGNAL \a9|ShiftLeft0~59_combout\ : std_logic;
SIGNAL \a9|ShiftLeft0~66_combout\ : std_logic;
SIGNAL \a9|out~116_combout\ : std_logic;
SIGNAL \a9|out~117_combout\ : std_logic;
SIGNAL \a9|out~118_combout\ : std_logic;
SIGNAL \sq3|Add18~1_combout\ : std_logic;
SIGNAL \sq3|Add18~2_combout\ : std_logic;
SIGNAL \sq3|Add14~1_combout\ : std_logic;
SIGNAL \sq3|Add16~1\ : std_logic;
SIGNAL \sq3|Add16~2_combout\ : std_logic;
SIGNAL \a9|ShiftLeft0~44_combout\ : std_logic;
SIGNAL \a9|out[26]~93_combout\ : std_logic;
SIGNAL \a9|ShiftLeft0~62_combout\ : std_logic;
SIGNAL \a9|out[26]~94_combout\ : std_logic;
SIGNAL \a9|out~102_combout\ : std_logic;
SIGNAL \a9|out~103_combout\ : std_logic;
SIGNAL \a9|out~128_combout\ : std_logic;
SIGNAL \a9|ShiftLeft0~64_combout\ : std_logic;
SIGNAL \a9|ShiftLeft0~50_combout\ : std_logic;
SIGNAL \a9|out~105_combout\ : std_logic;
SIGNAL \a9|out~106_combout\ : std_logic;
SIGNAL \a9|out~129_combout\ : std_logic;
SIGNAL \a9|ShiftLeft0~56_combout\ : std_logic;
SIGNAL \a9|out[28]~8_combout\ : std_logic;
SIGNAL \a9|out[31]~104_combout\ : std_logic;
SIGNAL \a9|out[31]~130_combout\ : std_logic;
SIGNAL \a9|ShiftLeft0~60_combout\ : std_logic;
SIGNAL \a9|out[29]~9_combout\ : std_logic;
SIGNAL \sq3|Add26~1_combout\ : std_logic;
SIGNAL \a9|ShiftLeft0~52_combout\ : std_logic;
SIGNAL \a9|ShiftLeft0~51_combout\ : std_logic;
SIGNAL \a9|out~90_combout\ : std_logic;
SIGNAL \a9|out~91_combout\ : std_logic;
SIGNAL \a9|out~92_combout\ : std_logic;
SIGNAL \a9|out~95_combout\ : std_logic;
SIGNAL \a9|out~96_combout\ : std_logic;
SIGNAL \a9|out~127_combout\ : std_logic;
SIGNAL \a9|out~97_combout\ : std_logic;
SIGNAL \a9|out~98_combout\ : std_logic;
SIGNAL \a9|ShiftLeft0~46_combout\ : std_logic;
SIGNAL \a9|ShiftLeft0~45_combout\ : std_logic;
SIGNAL \a9|out~87_combout\ : std_logic;
SIGNAL \a9|out~88_combout\ : std_logic;
SIGNAL \a9|out~89_combout\ : std_logic;
SIGNAL \a9|out~99_combout\ : std_logic;
SIGNAL \a9|out~100_combout\ : std_logic;
SIGNAL \a9|out~101_combout\ : std_logic;
SIGNAL \sq3|Add22~1_combout\ : std_logic;
SIGNAL \sq3|Add26~2_combout\ : std_logic;
SIGNAL \sq3|Add22~2_combout\ : std_logic;
SIGNAL \sq3|Add24~1\ : std_logic;
SIGNAL \sq3|Add24~2_combout\ : std_logic;
SIGNAL \sq3|Add16~0_combout\ : std_logic;
SIGNAL \sq3|Add24~0_combout\ : std_logic;
SIGNAL \sq3|Add20~1\ : std_logic;
SIGNAL \sq3|Add20~2_combout\ : std_logic;
SIGNAL \sq3|Add20~0_combout\ : std_logic;
SIGNAL \sq3|Add13~0_combout\ : std_logic;
SIGNAL \sq3|Add28~1\ : std_logic;
SIGNAL \sq3|Add28~2_combout\ : std_logic;
SIGNAL \sq3|Add28~0_combout\ : std_logic;
SIGNAL \a9|out[30]~6_combout\ : std_logic;
SIGNAL \a9|out[31]~7_combout\ : std_logic;
SIGNAL \sq3|Add29~1_cout\ : std_logic;
SIGNAL \sq3|Add29~3\ : std_logic;
SIGNAL \sq3|Add29~4_combout\ : std_logic;
SIGNAL \sq3|Add29~2_combout\ : std_logic;
SIGNAL \sq3|Add26~0_combout\ : std_logic;
SIGNAL \sq3|Add22~0_combout\ : std_logic;
SIGNAL \sq3|Add24~3\ : std_logic;
SIGNAL \sq3|Add24~4_combout\ : std_logic;
SIGNAL \sq3|Add18~0_combout\ : std_logic;
SIGNAL \sq3|Add16~3\ : std_logic;
SIGNAL \sq3|Add16~4_combout\ : std_logic;
SIGNAL \sq3|Add20~3\ : std_logic;
SIGNAL \sq3|Add20~4_combout\ : std_logic;
SIGNAL \sq3|Add5~2_combout\ : std_logic;
SIGNAL \sq3|Add10~0_combout\ : std_logic;
SIGNAL \sq3|Add8~3\ : std_logic;
SIGNAL \sq3|Add8~4_combout\ : std_logic;
SIGNAL \sq3|Add12~3\ : std_logic;
SIGNAL \sq3|Add12~4_combout\ : std_logic;
SIGNAL \sq3|Add13~3\ : std_logic;
SIGNAL \sq3|Add13~4_combout\ : std_logic;
SIGNAL \sq3|Add28~3\ : std_logic;
SIGNAL \sq3|Add28~4_combout\ : std_logic;
SIGNAL \sq3|Add29~5\ : std_logic;
SIGNAL \sq3|Add29~6_combout\ : std_logic;
SIGNAL \sq3|Add5~1_combout\ : std_logic;
SIGNAL \sq3|Add8~5\ : std_logic;
SIGNAL \sq3|Add8~6_combout\ : std_logic;
SIGNAL \sq3|Add12~5\ : std_logic;
SIGNAL \sq3|Add12~6_combout\ : std_logic;
SIGNAL \sq3|Add13~5\ : std_logic;
SIGNAL \sq3|Add13~6_combout\ : std_logic;
SIGNAL \sq3|Add24~5\ : std_logic;
SIGNAL \sq3|Add24~6_combout\ : std_logic;
SIGNAL \sq3|Add16~5\ : std_logic;
SIGNAL \sq3|Add16~6_combout\ : std_logic;
SIGNAL \sq3|Add20~5\ : std_logic;
SIGNAL \sq3|Add20~6_combout\ : std_logic;
SIGNAL \sq3|Add28~5\ : std_logic;
SIGNAL \sq3|Add28~6_combout\ : std_logic;
SIGNAL \sq3|Add29~7\ : std_logic;
SIGNAL \sq3|Add29~8_combout\ : std_logic;
SIGNAL \sq3|LessThan0~0_combout\ : std_logic;
SIGNAL \sq3|Add20~7\ : std_logic;
SIGNAL \sq3|Add20~8_combout\ : std_logic;
SIGNAL \sq3|Add13~7\ : std_logic;
SIGNAL \sq3|Add13~8_combout\ : std_logic;
SIGNAL \sq3|Add28~7\ : std_logic;
SIGNAL \sq3|Add28~8_combout\ : std_logic;
SIGNAL \sq3|Add29~9\ : std_logic;
SIGNAL \sq3|Add29~11\ : std_logic;
SIGNAL \sq3|Add29~12_combout\ : std_logic;
SIGNAL \sq3|Add29~10_combout\ : std_logic;
SIGNAL \sq3|LessThan0~1_combout\ : std_logic;
SIGNAL \sq3|out[6]~12_combout\ : std_logic;
SIGNAL \sq3|out[5]~0_combout\ : std_logic;
SIGNAL \sq3|out[10]~5_combout\ : std_logic;
SIGNAL \sig3|WideNor0~10_combout\ : std_logic;
SIGNAL \sq3|out[7]~13_combout\ : std_logic;
SIGNAL \sq3|out[8]~11_combout\ : std_logic;
SIGNAL \sig3|Equal25~2_combout\ : std_logic;
SIGNAL \sq3|out[9]~8_combout\ : std_logic;
SIGNAL \sig3|WideNor0~18_combout\ : std_logic;
SIGNAL \sq3|out[4]~1_combout\ : std_logic;
SIGNAL \sq3|out[1]~2_combout\ : std_logic;
SIGNAL \sq3|out[3]~10_combout\ : std_logic;
SIGNAL \sq3|out[2]~3_combout\ : std_logic;
SIGNAL \sig3|WideNor0~9_combout\ : std_logic;
SIGNAL \sig3|WideNor0~11_combout\ : std_logic;
SIGNAL \sq3|out[14]~14_combout\ : std_logic;
SIGNAL \sq3|out[15]~15_combout\ : std_logic;
SIGNAL \a9|out~126_combout\ : std_logic;
SIGNAL \sq3|out[12]~4_combout\ : std_logic;
SIGNAL \sq3|out[11]~6_combout\ : std_logic;
SIGNAL \sq3|out[13]~9_combout\ : std_logic;
SIGNAL \sig3|Equal32~0_combout\ : std_logic;
SIGNAL \sig3|WideOr7~2_combout\ : std_logic;
SIGNAL \sig3|Equal23~0_combout\ : std_logic;
SIGNAL \sig3|WideNor0~6_combout\ : std_logic;
SIGNAL \sig3|WideNor0~7_combout\ : std_logic;
SIGNAL \sig3|Equal26~0_combout\ : std_logic;
SIGNAL \sq3|out[0]~7_combout\ : std_logic;
SIGNAL \sig3|Equal17~0_combout\ : std_logic;
SIGNAL \sig3|Equal17~1_combout\ : std_logic;
SIGNAL \sig3|WideOr7~3_combout\ : std_logic;
SIGNAL \sig3|Equal26~1_combout\ : std_logic;
SIGNAL \sig3|Equal26~2_combout\ : std_logic;
SIGNAL \sig3|Equal26~3_combout\ : std_logic;
SIGNAL \sig3|WideOr7~1_combout\ : std_logic;
SIGNAL \sig3|Equal25~3_combout\ : std_logic;
SIGNAL \sig3|Equal19~2_combout\ : std_logic;
SIGNAL \sig3|WideNor0~8_combout\ : std_logic;
SIGNAL \sig3|Equal20~0_combout\ : std_logic;
SIGNAL \sig3|WideOr7~0_combout\ : std_logic;
SIGNAL \sig3|WideOr7~4_combout\ : std_logic;
SIGNAL \sig3|WideNor0~15_combout\ : std_logic;
SIGNAL \sig3|WideNor0~16_combout\ : std_logic;
SIGNAL \sig3|Equal20~1_combout\ : std_logic;
SIGNAL \sig3|WideNor0~20_combout\ : std_logic;
SIGNAL \sig3|WideNor0~13_combout\ : std_logic;
SIGNAL \sig3|WideNor0~19_combout\ : std_logic;
SIGNAL \sig3|WideNor0~12_combout\ : std_logic;
SIGNAL \sig3|WideNor0~14_combout\ : std_logic;
SIGNAL \sig3|Equal17~2_combout\ : std_logic;
SIGNAL \sig3|Equal18~0_combout\ : std_logic;
SIGNAL \sig3|Equal18~1_combout\ : std_logic;
SIGNAL \sig3|Equal17~3_combout\ : std_logic;
SIGNAL \sig3|Equal19~3_combout\ : std_logic;
SIGNAL \sig3|WideOr7~5_combout\ : std_logic;
SIGNAL \sig3|WideOr7~6_combout\ : std_logic;
SIGNAL \sig3|WideOr7~7_combout\ : std_logic;
SIGNAL \sig3|WideNor0~17_combout\ : std_logic;
SIGNAL \sig3|WideNor0~17clkctrl_outclk\ : std_logic;
SIGNAL \led[0]~reg0_q\ : std_logic;
SIGNAL \sig3|WideOr13~0_combout\ : std_logic;
SIGNAL \led[1]~reg0_q\ : std_logic;
SIGNAL \sig3|WideOr11~0_combout\ : std_logic;
SIGNAL \led[2]~reg0_q\ : std_logic;
SIGNAL \led[3]~reg0feeder_combout\ : std_logic;
SIGNAL \led[3]~reg0_q\ : std_logic;
SIGNAL \led[4]~reg0_q\ : std_logic;
SIGNAL \led[5]~reg0_q\ : std_logic;
SIGNAL \led[6]~reg0_q\ : std_logic;
SIGNAL \led[7]~reg0_q\ : std_logic;
SIGNAL \led[8]~reg0_q\ : std_logic;
SIGNAL \m2|out\ : std_logic_vector(16 DOWNTO 0);
SIGNAL \a3|out\ : std_logic_vector(32 DOWNTO 0);
SIGNAL \a4|out\ : std_logic_vector(32 DOWNTO 0);
SIGNAL \a5|out\ : std_logic_vector(32 DOWNTO 0);
SIGNAL \a6|out\ : std_logic_vector(32 DOWNTO 0);
SIGNAL \sig3|out\ : std_logic_vector(16 DOWNTO 0);
SIGNAL \m1|out\ : std_logic_vector(16 DOWNTO 0);
SIGNAL input1 : std_logic_vector(16 DOWNTO 0);
SIGNAL \a7|out\ : std_logic_vector(32 DOWNTO 0);
SIGNAL \a9|out\ : std_logic_vector(32 DOWNTO 0);
SIGNAL \a8|out\ : std_logic_vector(32 DOWNTO 0);
SIGNAL \sig2|out\ : std_logic_vector(16 DOWNTO 0);
SIGNAL \m5|out\ : std_logic_vector(16 DOWNTO 0);
SIGNAL input2 : std_logic_vector(16 DOWNTO 0);
SIGNAL \m6|out\ : std_logic_vector(16 DOWNTO 0);
SIGNAL \sig1|out\ : std_logic_vector(16 DOWNTO 0);
SIGNAL \a9|ALT_INV_out[10]~69_combout\ : std_logic;
SIGNAL \a5|ALT_INV_out\ : std_logic_vector(32 DOWNTO 32);
SIGNAL \a8|ALT_INV_Add8~8_combout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_sw <= sw;
ww_button <= button;
led <= ww_led;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\sig2|WideNor0~7clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \sig2|WideNor0~7_combout\);

\sig1|WideNor0~10clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \sig1|WideNor0~10_combout\);

\sig3|WideNor0~17clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \sig3|WideNor0~17_combout\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\a9|ALT_INV_out[10]~69_combout\ <= NOT \a9|out[10]~69_combout\;
\a5|ALT_INV_out\(32) <= NOT \a5|out\(32);
\a8|ALT_INV_Add8~8_combout\ <= NOT \a8|Add8~8_combout\;

-- Location: IOOBUF_X0_Y20_N9
\led[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \led[0]~reg0_q\,
	devoe => ww_devoe,
	o => \led[0]~output_o\);

-- Location: IOOBUF_X0_Y20_N2
\led[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \led[1]~reg0_q\,
	devoe => ww_devoe,
	o => \led[1]~output_o\);

-- Location: IOOBUF_X0_Y21_N23
\led[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \led[2]~reg0_q\,
	devoe => ww_devoe,
	o => \led[2]~output_o\);

-- Location: IOOBUF_X0_Y21_N16
\led[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \led[3]~reg0_q\,
	devoe => ww_devoe,
	o => \led[3]~output_o\);

-- Location: IOOBUF_X0_Y24_N23
\led[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \led[4]~reg0_q\,
	devoe => ww_devoe,
	o => \led[4]~output_o\);

-- Location: IOOBUF_X0_Y24_N16
\led[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \led[5]~reg0_q\,
	devoe => ww_devoe,
	o => \led[5]~output_o\);

-- Location: IOOBUF_X0_Y26_N23
\led[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \led[6]~reg0_q\,
	devoe => ww_devoe,
	o => \led[6]~output_o\);

-- Location: IOOBUF_X0_Y26_N16
\led[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \led[7]~reg0_q\,
	devoe => ww_devoe,
	o => \led[7]~output_o\);

-- Location: IOOBUF_X0_Y27_N9
\led[8]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \led[8]~reg0_q\,
	devoe => ww_devoe,
	o => \led[8]~output_o\);

-- Location: IOOBUF_X0_Y27_N16
\led[9]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \led[9]~output_o\);

-- Location: IOIBUF_X41_Y15_N1
\clk~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G9
\clk~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X0_Y27_N1
\sw[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(1),
	o => \sw[1]~input_o\);

-- Location: FF_X31_Y20_N13
\input2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \sw[1]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => input2(0));

-- Location: LCCOMB_X31_Y20_N24
\m2|out[10]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m2|out[10]~feeder_combout\ = input2(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => input2(0),
	combout => \m2|out[10]~feeder_combout\);

-- Location: FF_X31_Y20_N25
\m2|out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \m2|out[10]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m2|out\(10));

-- Location: IOIBUF_X0_Y24_N1
\sw[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(0),
	o => \sw[0]~input_o\);

-- Location: FF_X31_Y20_N9
\input1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \sw[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => input1(0));

-- Location: FF_X31_Y20_N15
\m1|out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => input1(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m1|out\(10));

-- Location: FF_X31_Y20_N27
\a4|out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \m1|out\(10),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a4|out\(10));

-- Location: LCCOMB_X27_Y19_N14
\a5|out~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a5|out~0_combout\ = (\m2|out\(10) & !\a4|out\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \m2|out\(10),
	datad => \a4|out\(10),
	combout => \a5|out~0_combout\);

-- Location: LCCOMB_X26_Y20_N12
\a5|out[32]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a5|out[32]~feeder_combout\ = \a5|out~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \a5|out~0_combout\,
	combout => \a5|out[32]~feeder_combout\);

-- Location: FF_X26_Y20_N13
\a5|out[32]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a5|out[32]~feeder_combout\,
	asdata => VCC,
	sload => \a4|out\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a5|out\(32));

-- Location: LCCOMB_X31_Y20_N14
\a5|out~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a5|out~1_combout\ = (\a4|out\(10) & \m2|out\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a4|out\(10),
	datad => \m2|out\(10),
	combout => \a5|out~1_combout\);

-- Location: FF_X31_Y20_N21
\a5|out[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a5|out~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a5|out\(18));

-- Location: LCCOMB_X26_Y20_N6
\a5|Add48~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a5|Add48~0_combout\ = (\m2|out\(10)) # (\a4|out\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \m2|out\(10),
	datad => \a4|out\(10),
	combout => \a5|Add48~0_combout\);

-- Location: FF_X27_Y20_N9
\a5|out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a5|Add48~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a5|out\(2));

-- Location: LCCOMB_X31_Y20_N20
\a5|Add49~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a5|Add49~0_combout\ = (\m2|out\(10)) # (!\a4|out\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a4|out\(10),
	datad => \m2|out\(10),
	combout => \a5|Add49~0_combout\);

-- Location: LCCOMB_X27_Y19_N0
\a5|Add51~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a5|Add51~1_cout\ = CARRY(!\m2|out\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \m2|out\(10),
	datad => VCC,
	cout => \a5|Add51~1_cout\);

-- Location: LCCOMB_X27_Y19_N2
\a5|Add51~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a5|Add51~2_combout\ = (\a4|out\(10) & ((\a5|Add51~1_cout\) # (GND))) # (!\a4|out\(10) & (!\a5|Add51~1_cout\))
-- \a5|Add51~3\ = CARRY((\a4|out\(10)) # (!\a5|Add51~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a4|out\(10),
	datad => VCC,
	cin => \a5|Add51~1_cout\,
	combout => \a5|Add51~2_combout\,
	cout => \a5|Add51~3\);

-- Location: LCCOMB_X27_Y19_N4
\a5|Add51~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a5|Add51~4_combout\ = (\a5|Add51~3\ & ((\a5|Add49~0_combout\ $ (\a5|out~0_combout\)))) # (!\a5|Add51~3\ & (\a5|Add49~0_combout\ $ (\a5|out~0_combout\ $ (VCC))))
-- \a5|Add51~5\ = CARRY((!\a5|Add51~3\ & (\a5|Add49~0_combout\ $ (\a5|out~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a5|Add49~0_combout\,
	datab => \a5|out~0_combout\,
	datad => VCC,
	cin => \a5|Add51~3\,
	combout => \a5|Add51~4_combout\,
	cout => \a5|Add51~5\);

-- Location: LCCOMB_X27_Y19_N6
\a5|Add51~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a5|Add51~6_combout\ = (\a5|out~1_combout\ & ((\a5|Add51~5\) # (GND))) # (!\a5|out~1_combout\ & (!\a5|Add51~5\))
-- \a5|Add51~7\ = CARRY((\a5|out~1_combout\) # (!\a5|Add51~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a5|out~1_combout\,
	datad => VCC,
	cin => \a5|Add51~5\,
	combout => \a5|Add51~6_combout\,
	cout => \a5|Add51~7\);

-- Location: LCCOMB_X26_Y19_N6
\a5|Add52~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a5|Add52~1_cout\ = CARRY((!\a5|Add51~2_combout\ & !\m2|out\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a5|Add51~2_combout\,
	datab => \m2|out\(10),
	datad => VCC,
	cout => \a5|Add52~1_cout\);

-- Location: LCCOMB_X26_Y19_N8
\a5|Add52~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a5|Add52~2_combout\ = (\a5|Add51~4_combout\ & ((\a5|Add52~1_cout\) # (GND))) # (!\a5|Add51~4_combout\ & (!\a5|Add52~1_cout\))
-- \a5|Add52~3\ = CARRY((\a5|Add51~4_combout\) # (!\a5|Add52~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a5|Add51~4_combout\,
	datad => VCC,
	cin => \a5|Add52~1_cout\,
	combout => \a5|Add52~2_combout\,
	cout => \a5|Add52~3\);

-- Location: LCCOMB_X26_Y19_N10
\a5|Add52~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a5|Add52~4_combout\ = (\a5|Add51~6_combout\ & (!\a5|Add52~3\ & VCC)) # (!\a5|Add51~6_combout\ & (\a5|Add52~3\ $ (GND)))
-- \a5|Add52~5\ = CARRY((!\a5|Add51~6_combout\ & !\a5|Add52~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a5|Add51~6_combout\,
	datad => VCC,
	cin => \a5|Add52~3\,
	combout => \a5|Add52~4_combout\,
	cout => \a5|Add52~5\);

-- Location: LCCOMB_X27_Y19_N8
\a5|Add51~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a5|Add51~8_combout\ = (\a5|Add51~7\ & ((\a5|Add49~0_combout\ $ (\a5|out~0_combout\)))) # (!\a5|Add51~7\ & (\a5|Add49~0_combout\ $ (\a5|out~0_combout\ $ (VCC))))
-- \a5|Add51~9\ = CARRY((!\a5|Add51~7\ & (\a5|Add49~0_combout\ $ (\a5|out~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a5|Add49~0_combout\,
	datab => \a5|out~0_combout\,
	datad => VCC,
	cin => \a5|Add51~7\,
	combout => \a5|Add51~8_combout\,
	cout => \a5|Add51~9\);

-- Location: LCCOMB_X26_Y19_N12
\a5|Add52~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a5|Add52~6_combout\ = (\a5|Add51~8_combout\ & (!\a5|Add52~5\)) # (!\a5|Add51~8_combout\ & (\a5|Add52~5\ & VCC))
-- \a5|Add52~7\ = CARRY((\a5|Add51~8_combout\ & !\a5|Add52~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \a5|Add51~8_combout\,
	datad => VCC,
	cin => \a5|Add52~5\,
	combout => \a5|Add52~6_combout\,
	cout => \a5|Add52~7\);

-- Location: LCCOMB_X27_Y19_N20
\a5|Add50~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a5|Add50~0_combout\ = \m2|out\(10) $ (!\a4|out\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \m2|out\(10),
	datad => \a4|out\(10),
	combout => \a5|Add50~0_combout\);

-- Location: LCCOMB_X27_Y19_N10
\a5|Add51~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a5|Add51~10_combout\ = (\a5|Add51~9\ & (\a5|Add49~0_combout\ $ ((\a5|Add50~0_combout\)))) # (!\a5|Add51~9\ & ((\a5|Add49~0_combout\ $ (!\a5|Add50~0_combout\)) # (GND)))
-- \a5|Add51~11\ = CARRY((\a5|Add49~0_combout\ $ (\a5|Add50~0_combout\)) # (!\a5|Add51~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a5|Add49~0_combout\,
	datab => \a5|Add50~0_combout\,
	datad => VCC,
	cin => \a5|Add51~9\,
	combout => \a5|Add51~10_combout\,
	cout => \a5|Add51~11\);

-- Location: LCCOMB_X27_Y19_N12
\a5|Add51~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a5|Add51~12_combout\ = \a5|Add49~0_combout\ $ (\a5|Add50~0_combout\ $ (\a5|Add51~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a5|Add49~0_combout\,
	datab => \a5|Add50~0_combout\,
	cin => \a5|Add51~11\,
	combout => \a5|Add51~12_combout\);

-- Location: LCCOMB_X26_Y19_N14
\a5|Add52~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a5|Add52~8_combout\ = (\a5|Add51~10_combout\ & (!\a5|Add52~7\ & VCC)) # (!\a5|Add51~10_combout\ & (\a5|Add52~7\ $ (GND)))
-- \a5|Add52~9\ = CARRY((!\a5|Add51~10_combout\ & !\a5|Add52~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \a5|Add51~10_combout\,
	datad => VCC,
	cin => \a5|Add52~7\,
	combout => \a5|Add52~8_combout\,
	cout => \a5|Add52~9\);

-- Location: LCCOMB_X26_Y19_N16
\a5|Add52~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a5|Add52~10_combout\ = (\a5|Add51~12_combout\ & ((\a5|Add52~9\) # (GND))) # (!\a5|Add51~12_combout\ & (!\a5|Add52~9\))
-- \a5|Add52~11\ = CARRY((\a5|Add51~12_combout\) # (!\a5|Add52~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \a5|Add51~12_combout\,
	datad => VCC,
	cin => \a5|Add52~9\,
	combout => \a5|Add52~10_combout\,
	cout => \a5|Add52~11\);

-- Location: LCCOMB_X26_Y19_N18
\a5|Add52~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a5|Add52~12_combout\ = \a5|Add51~12_combout\ $ (\a5|Add52~11\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \a5|Add51~12_combout\,
	cin => \a5|Add52~11\,
	combout => \a5|Add52~12_combout\);

-- Location: LCCOMB_X26_Y19_N0
\a5|ShiftRight1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a5|ShiftRight1~0_combout\ = (!\a5|Add52~6_combout\ & (!\a5|Add52~12_combout\ & (!\a5|Add52~8_combout\ & !\a5|Add52~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a5|Add52~6_combout\,
	datab => \a5|Add52~12_combout\,
	datac => \a5|Add52~8_combout\,
	datad => \a5|Add52~10_combout\,
	combout => \a5|ShiftRight1~0_combout\);

-- Location: LCCOMB_X26_Y20_N2
\a5|ShiftRight1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a5|ShiftRight1~1_combout\ = (\a5|Add52~4_combout\ & (!\a5|Add52~2_combout\ & \a5|ShiftRight1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a5|Add52~4_combout\,
	datac => \a5|Add52~2_combout\,
	datad => \a5|ShiftRight1~0_combout\,
	combout => \a5|ShiftRight1~1_combout\);

-- Location: LCCOMB_X26_Y20_N24
\a5|ShiftRight1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a5|ShiftRight1~2_combout\ = (!\a5|Add52~4_combout\ & \a5|ShiftRight1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a5|Add52~4_combout\,
	datad => \a5|ShiftRight1~0_combout\,
	combout => \a5|ShiftRight1~2_combout\);

-- Location: LCCOMB_X27_Y20_N0
\a5|out~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a5|out~6_combout\ = (\a4|out\(10)) # ((\m2|out\(10) & ((\a5|ShiftRight1~1_combout\) # (\a5|ShiftRight1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a5|ShiftRight1~1_combout\,
	datab => \a5|ShiftRight1~2_combout\,
	datac => \a4|out\(10),
	datad => \m2|out\(10),
	combout => \a5|out~6_combout\);

-- Location: FF_X27_Y20_N1
\a5|out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a5|out~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a5|out\(6));

-- Location: LCCOMB_X26_Y20_N16
\a5|out~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a5|out~2_combout\ = (\a4|out\(10)) # ((\m2|out\(10) & \a5|ShiftRight1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a4|out\(10),
	datac => \m2|out\(10),
	datad => \a5|ShiftRight1~0_combout\,
	combout => \a5|out~2_combout\);

-- Location: FF_X27_Y20_N7
\a5|out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a5|out~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a5|out\(1));

-- Location: LCCOMB_X26_Y20_N22
\a5|out~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a5|out~3_combout\ = (\m2|out\(10) & ((!\a5|Add52~4_combout\) # (!\a5|Add52~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m2|out\(10),
	datac => \a5|Add52~2_combout\,
	datad => \a5|Add52~4_combout\,
	combout => \a5|out~3_combout\);

-- Location: LCCOMB_X26_Y20_N4
\a5|out~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a5|out~4_combout\ = (\a4|out\(10)) # ((\a5|ShiftRight1~0_combout\ & \a5|out~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a5|ShiftRight1~0_combout\,
	datac => \a5|out~3_combout\,
	datad => \a4|out\(10),
	combout => \a5|out~4_combout\);

-- Location: FF_X27_Y20_N5
\a5|out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a5|out~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a5|out\(3));

-- Location: LCCOMB_X26_Y20_N26
\a5|out~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a5|out~5_combout\ = (\a4|out\(10)) # ((\m2|out\(10) & ((\a5|ShiftRight1~2_combout\) # (\a5|ShiftRight1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m2|out\(10),
	datab => \a5|ShiftRight1~2_combout\,
	datac => \a4|out\(10),
	datad => \a5|ShiftRight1~1_combout\,
	combout => \a5|out~5_combout\);

-- Location: FF_X27_Y20_N31
\a5|out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a5|out~5_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a5|out\(4));

-- Location: LCCOMB_X27_Y20_N30
\a6|Add19~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|Add19~0_combout\ = (\a5|out\(2) & ((\a5|out\(1)) # ((\a5|out\(3)) # (\a5|out\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a5|out\(1),
	datab => \a5|out\(3),
	datac => \a5|out\(4),
	datad => \a5|out\(2),
	combout => \a6|Add19~0_combout\);

-- Location: LCCOMB_X27_Y20_N8
\a6|Add19~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|Add19~1_combout\ = \a5|out\(4) $ (\a5|out\(3) $ (\a5|out\(2) $ (\a5|out\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a5|out\(4),
	datab => \a5|out\(3),
	datac => \a5|out\(2),
	datad => \a5|out\(1),
	combout => \a6|Add19~1_combout\);

-- Location: LCCOMB_X27_Y20_N4
\a6|Add19~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|Add19~2_combout\ = (\a5|out\(1) & ((\a5|out\(4) & ((\a5|out\(3)) # (!\a5|out\(2)))) # (!\a5|out\(4) & (\a5|out\(3) & !\a5|out\(2))))) # (!\a5|out\(1) & ((\a5|out\(4) & (\a5|out\(3) & !\a5|out\(2))) # (!\a5|out\(4) & (!\a5|out\(3) & \a5|out\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000111101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a5|out\(1),
	datab => \a5|out\(4),
	datac => \a5|out\(3),
	datad => \a5|out\(2),
	combout => \a6|Add19~2_combout\);

-- Location: LCCOMB_X27_Y20_N18
\a6|Add20~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|Add20~0_combout\ = \a6|Add19~0_combout\ $ (((\a5|out\(6) & (\a6|Add19~1_combout\ & \a6|Add19~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a5|out\(6),
	datab => \a6|Add19~0_combout\,
	datac => \a6|Add19~1_combout\,
	datad => \a6|Add19~2_combout\,
	combout => \a6|Add20~0_combout\);

-- Location: LCCOMB_X26_Y20_N0
\a5|out~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a5|out~7_combout\ = (\m2|out\(10) & ((\a4|out\(10)) # ((!\a5|Add52~2_combout\ & \a5|ShiftRight1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m2|out\(10),
	datab => \a4|out\(10),
	datac => \a5|Add52~2_combout\,
	datad => \a5|ShiftRight1~2_combout\,
	combout => \a5|out~7_combout\);

-- Location: FF_X27_Y20_N13
\a5|out[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a5|out~7_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a5|out\(13));

-- Location: LCCOMB_X27_Y20_N2
\a6|Add20~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|Add20~1_combout\ = \a6|Add19~2_combout\ $ (((\a5|out\(6) & \a6|Add19~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a5|out\(6),
	datab => \a6|Add19~1_combout\,
	datad => \a6|Add19~2_combout\,
	combout => \a6|Add20~1_combout\);

-- Location: FF_X27_Y20_N3
\a5|out[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a5|out~7_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a5|out\(11));

-- Location: LCCOMB_X27_Y20_N6
\a6|Add20~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|Add20~2_combout\ = \a5|out\(6) $ (\a6|Add19~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a5|out\(6),
	datad => \a6|Add19~1_combout\,
	combout => \a6|Add20~2_combout\);

-- Location: LCCOMB_X27_Y20_N10
\a6|Add27~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|Add27~0_combout\ = (\a5|out\(11) & (\a6|Add20~2_combout\ $ (VCC))) # (!\a5|out\(11) & (\a6|Add20~2_combout\ & VCC))
-- \a6|Add27~1\ = CARRY((\a5|out\(11) & \a6|Add20~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a5|out\(11),
	datab => \a6|Add20~2_combout\,
	datad => VCC,
	combout => \a6|Add27~0_combout\,
	cout => \a6|Add27~1\);

-- Location: LCCOMB_X27_Y20_N12
\a6|Add27~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|Add27~2_combout\ = (\a5|out\(13) & ((\a6|Add20~1_combout\ & (\a6|Add27~1\ & VCC)) # (!\a6|Add20~1_combout\ & (!\a6|Add27~1\)))) # (!\a5|out\(13) & ((\a6|Add20~1_combout\ & (!\a6|Add27~1\)) # (!\a6|Add20~1_combout\ & ((\a6|Add27~1\) # (GND)))))
-- \a6|Add27~3\ = CARRY((\a5|out\(13) & (!\a6|Add20~1_combout\ & !\a6|Add27~1\)) # (!\a5|out\(13) & ((!\a6|Add27~1\) # (!\a6|Add20~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a5|out\(13),
	datab => \a6|Add20~1_combout\,
	datad => VCC,
	cin => \a6|Add27~1\,
	combout => \a6|Add27~2_combout\,
	cout => \a6|Add27~3\);

-- Location: LCCOMB_X27_Y20_N14
\a6|Add27~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|Add27~4_combout\ = ((\a5|out\(2) $ (\a6|Add20~0_combout\ $ (!\a6|Add27~3\)))) # (GND)
-- \a6|Add27~5\ = CARRY((\a5|out\(2) & ((\a6|Add20~0_combout\) # (!\a6|Add27~3\))) # (!\a5|out\(2) & (\a6|Add20~0_combout\ & !\a6|Add27~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a5|out\(2),
	datab => \a6|Add20~0_combout\,
	datad => VCC,
	cin => \a6|Add27~3\,
	combout => \a6|Add27~4_combout\,
	cout => \a6|Add27~5\);

-- Location: LCCOMB_X27_Y20_N16
\a6|Add27~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|Add27~6_combout\ = \a6|Add27~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \a6|Add27~5\,
	combout => \a6|Add27~6_combout\);

-- Location: FF_X27_Y20_N15
\a5|out[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a5|out~7_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a5|out\(14));

-- Location: LCCOMB_X27_Y20_N20
\a6|Add28~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|Add28~0_combout\ = (\a6|Add27~0_combout\ & (\a5|out\(14) $ (VCC))) # (!\a6|Add27~0_combout\ & (\a5|out\(14) & VCC))
-- \a6|Add28~1\ = CARRY((\a6|Add27~0_combout\ & \a5|out\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a6|Add27~0_combout\,
	datab => \a5|out\(14),
	datad => VCC,
	combout => \a6|Add28~0_combout\,
	cout => \a6|Add28~1\);

-- Location: LCCOMB_X27_Y20_N22
\a6|Add28~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|Add28~2_combout\ = (\a6|Add27~2_combout\ & (!\a6|Add28~1\)) # (!\a6|Add27~2_combout\ & ((\a6|Add28~1\) # (GND)))
-- \a6|Add28~3\ = CARRY((!\a6|Add28~1\) # (!\a6|Add27~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a6|Add27~2_combout\,
	datad => VCC,
	cin => \a6|Add28~1\,
	combout => \a6|Add28~2_combout\,
	cout => \a6|Add28~3\);

-- Location: LCCOMB_X27_Y20_N24
\a6|Add28~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|Add28~4_combout\ = (\a6|Add27~4_combout\ & (\a6|Add28~3\ $ (GND))) # (!\a6|Add27~4_combout\ & (!\a6|Add28~3\ & VCC))
-- \a6|Add28~5\ = CARRY((\a6|Add27~4_combout\ & !\a6|Add28~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \a6|Add27~4_combout\,
	datad => VCC,
	cin => \a6|Add28~3\,
	combout => \a6|Add28~4_combout\,
	cout => \a6|Add28~5\);

-- Location: LCCOMB_X27_Y20_N26
\a6|Add28~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|Add28~6_combout\ = (\a6|Add27~6_combout\ & (!\a6|Add28~5\)) # (!\a6|Add27~6_combout\ & ((\a6|Add28~5\) # (GND)))
-- \a6|Add28~7\ = CARRY((!\a6|Add28~5\) # (!\a6|Add27~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a6|Add27~6_combout\,
	datad => VCC,
	cin => \a6|Add28~5\,
	combout => \a6|Add28~6_combout\,
	cout => \a6|Add28~7\);

-- Location: LCCOMB_X27_Y20_N28
\a6|Add28~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|Add28~8_combout\ = !\a6|Add28~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \a6|Add28~7\,
	combout => \a6|Add28~8_combout\);

-- Location: LCCOMB_X31_Y20_N8
\a6|Add31~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|Add31~0_combout\ = \a5|out\(18)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \a5|out\(18),
	combout => \a6|Add31~0_combout\);

-- Location: LCCOMB_X31_Y20_N2
\a6|Add31~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|Add31~2_combout\ = \a5|out\(18)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \a5|out\(18),
	combout => \a6|Add31~2_combout\);

-- Location: LCCOMB_X28_Y20_N18
\~GND\ : cycloneiii_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: FF_X28_Y20_N19
\a5|out[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \~GND~combout\,
	asdata => VCC,
	sload => \a4|out\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a5|out\(16));

-- Location: LCCOMB_X28_Y20_N20
\a6|Add31~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|Add31~4_combout\ = \a5|out\(16)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \a5|out\(16),
	combout => \a6|Add31~4_combout\);

-- Location: LCCOMB_X28_Y20_N22
\a6|Add43~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|Add43~0_combout\ = (\a6|Add31~4_combout\ & (\a6|Add28~0_combout\ $ (VCC))) # (!\a6|Add31~4_combout\ & (\a6|Add28~0_combout\ & VCC))
-- \a6|Add43~1\ = CARRY((\a6|Add31~4_combout\ & \a6|Add28~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a6|Add31~4_combout\,
	datab => \a6|Add28~0_combout\,
	datad => VCC,
	combout => \a6|Add43~0_combout\,
	cout => \a6|Add43~1\);

-- Location: LCCOMB_X28_Y20_N24
\a6|Add43~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|Add43~2_combout\ = (\a6|Add31~2_combout\ & ((\a6|Add28~2_combout\ & (\a6|Add43~1\ & VCC)) # (!\a6|Add28~2_combout\ & (!\a6|Add43~1\)))) # (!\a6|Add31~2_combout\ & ((\a6|Add28~2_combout\ & (!\a6|Add43~1\)) # (!\a6|Add28~2_combout\ & ((\a6|Add43~1\) # 
-- (GND)))))
-- \a6|Add43~3\ = CARRY((\a6|Add31~2_combout\ & (!\a6|Add28~2_combout\ & !\a6|Add43~1\)) # (!\a6|Add31~2_combout\ & ((!\a6|Add43~1\) # (!\a6|Add28~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a6|Add31~2_combout\,
	datab => \a6|Add28~2_combout\,
	datad => VCC,
	cin => \a6|Add43~1\,
	combout => \a6|Add43~2_combout\,
	cout => \a6|Add43~3\);

-- Location: LCCOMB_X28_Y20_N26
\a6|Add43~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|Add43~4_combout\ = ((\a6|Add31~0_combout\ $ (\a6|Add28~4_combout\ $ (!\a6|Add43~3\)))) # (GND)
-- \a6|Add43~5\ = CARRY((\a6|Add31~0_combout\ & ((\a6|Add28~4_combout\) # (!\a6|Add43~3\))) # (!\a6|Add31~0_combout\ & (\a6|Add28~4_combout\ & !\a6|Add43~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a6|Add31~0_combout\,
	datab => \a6|Add28~4_combout\,
	datad => VCC,
	cin => \a6|Add43~3\,
	combout => \a6|Add43~4_combout\,
	cout => \a6|Add43~5\);

-- Location: LCCOMB_X28_Y20_N28
\a6|Add43~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|Add43~6_combout\ = (\a6|Add28~6_combout\ & (!\a6|Add43~5\)) # (!\a6|Add28~6_combout\ & ((\a6|Add43~5\) # (GND)))
-- \a6|Add43~7\ = CARRY((!\a6|Add43~5\) # (!\a6|Add28~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a6|Add28~6_combout\,
	datad => VCC,
	cin => \a6|Add43~5\,
	combout => \a6|Add43~6_combout\,
	cout => \a6|Add43~7\);

-- Location: LCCOMB_X28_Y20_N30
\a6|Add43~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|Add43~8_combout\ = \a6|Add43~7\ $ (!\a6|Add28~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \a6|Add28~8_combout\,
	cin => \a6|Add43~7\,
	combout => \a6|Add43~8_combout\);

-- Location: LCCOMB_X28_Y20_N14
\a6|out[2]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|out[2]~17_combout\ = (!\a6|Add43~0_combout\ & (!\a6|Add43~2_combout\ & (!\a6|Add43~6_combout\ & !\a6|Add43~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a6|Add43~0_combout\,
	datab => \a6|Add43~2_combout\,
	datac => \a6|Add43~6_combout\,
	datad => \a6|Add43~4_combout\,
	combout => \a6|out[2]~17_combout\);

-- Location: LCCOMB_X26_Y18_N20
\a6|out~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|out~39_combout\ = (\a5|out\(18) & (\a6|Add43~8_combout\ & !\a6|out[2]~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a5|out\(18),
	datac => \a6|Add43~8_combout\,
	datad => \a6|out[2]~17_combout\,
	combout => \a6|out~39_combout\);

-- Location: LCCOMB_X29_Y18_N16
\a6|out[5]~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|out[5]~40_combout\ = (\a5|out\(32) & ((\a6|out[2]~17_combout\) # (!\a6|Add43~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a5|out\(32),
	datac => \a6|Add43~8_combout\,
	datad => \a6|out[2]~17_combout\,
	combout => \a6|out[5]~40_combout\);

-- Location: LCCOMB_X28_Y20_N0
\a6|Add46~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|Add46~1_cout\ = CARRY(!\a6|Add43~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a6|Add43~0_combout\,
	datad => VCC,
	cout => \a6|Add46~1_cout\);

-- Location: LCCOMB_X28_Y20_N2
\a6|Add46~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|Add46~2_combout\ = (\a6|Add43~2_combout\ & ((\a6|Add46~1_cout\) # (GND))) # (!\a6|Add43~2_combout\ & (!\a6|Add46~1_cout\))
-- \a6|Add46~3\ = CARRY((\a6|Add43~2_combout\) # (!\a6|Add46~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \a6|Add43~2_combout\,
	datad => VCC,
	cin => \a6|Add46~1_cout\,
	combout => \a6|Add46~2_combout\,
	cout => \a6|Add46~3\);

-- Location: LCCOMB_X28_Y20_N4
\a6|Add46~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|Add46~4_combout\ = (\a6|Add43~4_combout\ & (!\a6|Add46~3\ & VCC)) # (!\a6|Add43~4_combout\ & (\a6|Add46~3\ $ (GND)))
-- \a6|Add46~5\ = CARRY((!\a6|Add43~4_combout\ & !\a6|Add46~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a6|Add43~4_combout\,
	datad => VCC,
	cin => \a6|Add46~3\,
	combout => \a6|Add46~4_combout\,
	cout => \a6|Add46~5\);

-- Location: LCCOMB_X28_Y20_N6
\a6|Add46~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|Add46~6_combout\ = (\a6|Add43~6_combout\ & ((\a6|Add46~5\) # (GND))) # (!\a6|Add43~6_combout\ & (!\a6|Add46~5\))
-- \a6|Add46~7\ = CARRY((\a6|Add43~6_combout\) # (!\a6|Add46~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \a6|Add43~6_combout\,
	datad => VCC,
	cin => \a6|Add46~5\,
	combout => \a6|Add46~6_combout\,
	cout => \a6|Add46~7\);

-- Location: LCCOMB_X28_Y20_N8
\a6|Add46~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|Add46~8_combout\ = (\a6|Add43~8_combout\ & (\a6|Add46~7\ $ (GND))) # (!\a6|Add43~8_combout\ & ((GND) # (!\a6|Add46~7\)))
-- \a6|Add46~9\ = CARRY((!\a6|Add46~7\) # (!\a6|Add43~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a6|Add43~8_combout\,
	datad => VCC,
	cin => \a6|Add46~7\,
	combout => \a6|Add46~8_combout\,
	cout => \a6|Add46~9\);

-- Location: LCCOMB_X28_Y20_N10
\a6|Add46~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|Add46~10_combout\ = !\a6|Add46~9\
-- \a6|Add46~11\ = CARRY(!\a6|Add46~9\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \a6|Add46~9\,
	combout => \a6|Add46~10_combout\,
	cout => \a6|Add46~11\);

-- Location: LCCOMB_X28_Y20_N12
\a6|Add46~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|Add46~12_combout\ = \a6|Add46~11\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \a6|Add46~11\,
	combout => \a6|Add46~12_combout\);

-- Location: LCCOMB_X29_Y20_N18
\a6|Add47~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|Add47~0_combout\ = (\a6|Add46~2_combout\ & (\a6|Add43~2_combout\ $ (VCC))) # (!\a6|Add46~2_combout\ & ((\a6|Add43~2_combout\) # (GND)))
-- \a6|Add47~1\ = CARRY((\a6|Add43~2_combout\) # (!\a6|Add46~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a6|Add46~2_combout\,
	datab => \a6|Add43~2_combout\,
	datad => VCC,
	combout => \a6|Add47~0_combout\,
	cout => \a6|Add47~1\);

-- Location: LCCOMB_X29_Y20_N20
\a6|Add47~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|Add47~2_combout\ = (\a6|Add43~4_combout\ & ((\a6|Add46~4_combout\ & (!\a6|Add47~1\)) # (!\a6|Add46~4_combout\ & (\a6|Add47~1\ & VCC)))) # (!\a6|Add43~4_combout\ & ((\a6|Add46~4_combout\ & ((\a6|Add47~1\) # (GND))) # (!\a6|Add46~4_combout\ & 
-- (!\a6|Add47~1\))))
-- \a6|Add47~3\ = CARRY((\a6|Add43~4_combout\ & (\a6|Add46~4_combout\ & !\a6|Add47~1\)) # (!\a6|Add43~4_combout\ & ((\a6|Add46~4_combout\) # (!\a6|Add47~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a6|Add43~4_combout\,
	datab => \a6|Add46~4_combout\,
	datad => VCC,
	cin => \a6|Add47~1\,
	combout => \a6|Add47~2_combout\,
	cout => \a6|Add47~3\);

-- Location: LCCOMB_X29_Y20_N22
\a6|Add47~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|Add47~4_combout\ = ((\a6|Add43~6_combout\ $ (\a6|Add46~6_combout\ $ (\a6|Add47~3\)))) # (GND)
-- \a6|Add47~5\ = CARRY((\a6|Add43~6_combout\ & ((!\a6|Add47~3\) # (!\a6|Add46~6_combout\))) # (!\a6|Add43~6_combout\ & (!\a6|Add46~6_combout\ & !\a6|Add47~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a6|Add43~6_combout\,
	datab => \a6|Add46~6_combout\,
	datad => VCC,
	cin => \a6|Add47~3\,
	combout => \a6|Add47~4_combout\,
	cout => \a6|Add47~5\);

-- Location: LCCOMB_X29_Y20_N24
\a6|Add47~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|Add47~6_combout\ = (\a6|Add46~8_combout\ & ((\a6|Add43~8_combout\ & (!\a6|Add47~5\)) # (!\a6|Add43~8_combout\ & ((\a6|Add47~5\) # (GND))))) # (!\a6|Add46~8_combout\ & ((\a6|Add43~8_combout\ & (\a6|Add47~5\ & VCC)) # (!\a6|Add43~8_combout\ & 
-- (!\a6|Add47~5\))))
-- \a6|Add47~7\ = CARRY((\a6|Add46~8_combout\ & ((!\a6|Add47~5\) # (!\a6|Add43~8_combout\))) # (!\a6|Add46~8_combout\ & (!\a6|Add43~8_combout\ & !\a6|Add47~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a6|Add46~8_combout\,
	datab => \a6|Add43~8_combout\,
	datad => VCC,
	cin => \a6|Add47~5\,
	combout => \a6|Add47~6_combout\,
	cout => \a6|Add47~7\);

-- Location: LCCOMB_X29_Y20_N26
\a6|Add47~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|Add47~8_combout\ = (\a6|Add46~10_combout\ & (!\a6|Add47~7\ & VCC)) # (!\a6|Add46~10_combout\ & (\a6|Add47~7\ $ (GND)))
-- \a6|Add47~9\ = CARRY((!\a6|Add46~10_combout\ & !\a6|Add47~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a6|Add46~10_combout\,
	datad => VCC,
	cin => \a6|Add47~7\,
	combout => \a6|Add47~8_combout\,
	cout => \a6|Add47~9\);

-- Location: LCCOMB_X29_Y20_N28
\a6|Add47~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|Add47~10_combout\ = (\a6|Add46~12_combout\ & ((\a6|Add47~9\) # (GND))) # (!\a6|Add46~12_combout\ & (!\a6|Add47~9\))
-- \a6|Add47~11\ = CARRY((\a6|Add46~12_combout\) # (!\a6|Add47~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a6|Add46~12_combout\,
	datad => VCC,
	cin => \a6|Add47~9\,
	combout => \a6|Add47~10_combout\,
	cout => \a6|Add47~11\);

-- Location: LCCOMB_X29_Y20_N30
\a6|Add47~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|Add47~12_combout\ = \a6|Add47~11\ $ (\a6|Add46~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \a6|Add46~12_combout\,
	cin => \a6|Add47~11\,
	combout => \a6|Add47~12_combout\);

-- Location: LCCOMB_X30_Y20_N16
\a6|out[5]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|out[5]~6_combout\ = (\a6|Add47~10_combout\) # ((\a6|Add47~8_combout\) # (\a6|Add47~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a6|Add47~10_combout\,
	datac => \a6|Add47~8_combout\,
	datad => \a6|Add47~12_combout\,
	combout => \a6|out[5]~6_combout\);

-- Location: LCCOMB_X26_Y18_N26
\a6|out~41\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|out~41_combout\ = (\a5|out\(32) & (((\a6|Add47~12_combout\) # (!\a6|out[5]~6_combout\)) # (!\a6|out[5]~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a5|out\(32),
	datab => \a6|out[5]~40_combout\,
	datac => \a6|out[5]~6_combout\,
	datad => \a6|Add47~12_combout\,
	combout => \a6|out~41_combout\);

-- Location: LCCOMB_X28_Y18_N24
\a6|ShiftRight0~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|ShiftRight0~13_combout\ = (!\a6|Add47~0_combout\ & (\a5|out\(18) & (!\a6|Add47~2_combout\ & !\a6|Add47~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a6|Add47~0_combout\,
	datab => \a5|out\(18),
	datac => \a6|Add47~2_combout\,
	datad => \a6|Add47~4_combout\,
	combout => \a6|ShiftRight0~13_combout\);

-- Location: LCCOMB_X30_Y20_N2
\a6|out[5]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|out[5]~11_combout\ = (\a6|Add47~6_combout\) # ((!\a6|Add47~4_combout\ & \a6|Add47~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a6|Add47~4_combout\,
	datac => \a6|Add47~2_combout\,
	datad => \a6|Add47~6_combout\,
	combout => \a6|out[5]~11_combout\);

-- Location: LCCOMB_X30_Y16_N14
\a6|ShiftRight0~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|ShiftRight0~11_combout\ = (\a6|Add47~0_combout\ & (\a5|out\(11))) # (!\a6|Add47~0_combout\ & ((\a5|out\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a5|out\(11),
	datac => \a5|out\(2),
	datad => \a6|Add47~0_combout\,
	combout => \a6|ShiftRight0~11_combout\);

-- Location: LCCOMB_X26_Y18_N28
\a6|ShiftRight0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|ShiftRight0~12_combout\ = (\a6|Add47~0_combout\ & (((\a5|out\(18))))) # (!\a6|Add47~0_combout\ & ((\a6|Add47~2_combout\ & ((\a5|out\(18)))) # (!\a6|Add47~2_combout\ & (\a5|out\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a5|out\(13),
	datab => \a5|out\(18),
	datac => \a6|Add47~0_combout\,
	datad => \a6|Add47~2_combout\,
	combout => \a6|ShiftRight0~12_combout\);

-- Location: LCCOMB_X29_Y18_N24
\a6|out[5]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|out[5]~10_combout\ = (\a6|Add47~6_combout\) # (\a6|Add47~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \a6|Add47~6_combout\,
	datad => \a6|Add47~4_combout\,
	combout => \a6|out[5]~10_combout\);

-- Location: LCCOMB_X26_Y18_N16
\a6|out~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|out~36_combout\ = (\a6|out[5]~11_combout\ & (((\a6|out[5]~10_combout\)))) # (!\a6|out[5]~11_combout\ & ((\a6|out[5]~10_combout\ & ((\a6|ShiftRight0~12_combout\))) # (!\a6|out[5]~10_combout\ & (\a5|out\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a5|out\(2),
	datab => \a6|out[5]~11_combout\,
	datac => \a6|ShiftRight0~12_combout\,
	datad => \a6|out[5]~10_combout\,
	combout => \a6|out~36_combout\);

-- Location: LCCOMB_X26_Y18_N22
\a6|out~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|out~37_combout\ = (\a6|out[5]~11_combout\ & ((\a6|out~36_combout\ & (\a6|ShiftRight0~13_combout\)) # (!\a6|out~36_combout\ & ((\a6|ShiftRight0~11_combout\))))) # (!\a6|out[5]~11_combout\ & (((\a6|out~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a6|ShiftRight0~13_combout\,
	datab => \a6|out[5]~11_combout\,
	datac => \a6|ShiftRight0~11_combout\,
	datad => \a6|out~36_combout\,
	combout => \a6|out~37_combout\);

-- Location: LCCOMB_X31_Y20_N0
\a6|out~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|out~7_combout\ = (!\a6|Add43~2_combout\ & !\a6|Add43~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \a6|Add43~2_combout\,
	datad => \a6|Add43~0_combout\,
	combout => \a6|out~7_combout\);

-- Location: LCCOMB_X31_Y20_N4
\a6|LessThan5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|LessThan5~0_combout\ = (\a6|Add43~8_combout\ & (((\a6|Add43~6_combout\) # (\a6|Add43~4_combout\)) # (!\a6|out~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a6|Add43~8_combout\,
	datab => \a6|out~7_combout\,
	datac => \a6|Add43~6_combout\,
	datad => \a6|Add43~4_combout\,
	combout => \a6|LessThan5~0_combout\);

-- Location: LCCOMB_X28_Y16_N0
\a6|out~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|out~8_combout\ = (\a5|out\(32) & (!\a6|LessThan5~0_combout\ & ((\a6|Add47~12_combout\) # (!\a6|out[5]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a5|out\(32),
	datab => \a6|Add47~12_combout\,
	datac => \a6|LessThan5~0_combout\,
	datad => \a6|out[5]~6_combout\,
	combout => \a6|out~8_combout\);

-- Location: LCCOMB_X28_Y20_N16
\a6|ShiftRight1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|ShiftRight1~1_combout\ = (\a6|Add43~6_combout\) # ((\a6|Add43~8_combout\) # ((\a6|Add43~2_combout\ & \a6|Add43~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a6|Add43~6_combout\,
	datab => \a6|Add43~2_combout\,
	datac => \a6|Add43~4_combout\,
	datad => \a6|Add43~8_combout\,
	combout => \a6|ShiftRight1~1_combout\);

-- Location: LCCOMB_X29_Y20_N2
\a6|Add48~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|Add48~1_cout\ = CARRY(!\a6|Add47~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a6|Add47~0_combout\,
	datad => VCC,
	cout => \a6|Add48~1_cout\);

-- Location: LCCOMB_X29_Y20_N4
\a6|Add48~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|Add48~2_combout\ = (\a6|Add47~2_combout\ & ((\a6|Add48~1_cout\) # (GND))) # (!\a6|Add47~2_combout\ & (!\a6|Add48~1_cout\))
-- \a6|Add48~3\ = CARRY((\a6|Add47~2_combout\) # (!\a6|Add48~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \a6|Add47~2_combout\,
	datad => VCC,
	cin => \a6|Add48~1_cout\,
	combout => \a6|Add48~2_combout\,
	cout => \a6|Add48~3\);

-- Location: LCCOMB_X30_Y18_N18
\a6|ShiftLeft0~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|ShiftLeft0~11_combout\ = (\a6|Add47~0_combout\ & ((\a5|out\(3)))) # (!\a6|Add47~0_combout\ & (\a5|out\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a5|out\(2),
	datab => \a5|out\(3),
	datad => \a6|Add47~0_combout\,
	combout => \a6|ShiftLeft0~11_combout\);

-- Location: LCCOMB_X30_Y18_N12
\a6|ShiftLeft0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|ShiftLeft0~12_combout\ = (\a6|Add48~2_combout\ & (\a5|out\(1) & (!\a6|Add47~0_combout\))) # (!\a6|Add48~2_combout\ & (((\a6|ShiftLeft0~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a5|out\(1),
	datab => \a6|Add47~0_combout\,
	datac => \a6|Add48~2_combout\,
	datad => \a6|ShiftLeft0~11_combout\,
	combout => \a6|ShiftLeft0~12_combout\);

-- Location: LCCOMB_X29_Y20_N6
\a6|Add48~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|Add48~4_combout\ = (\a6|Add47~4_combout\ & (!\a6|Add48~3\ & VCC)) # (!\a6|Add47~4_combout\ & (\a6|Add48~3\ $ (GND)))
-- \a6|Add48~5\ = CARRY((!\a6|Add47~4_combout\ & !\a6|Add48~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a6|Add47~4_combout\,
	datad => VCC,
	cin => \a6|Add48~3\,
	combout => \a6|Add48~4_combout\,
	cout => \a6|Add48~5\);

-- Location: LCCOMB_X29_Y20_N8
\a6|Add48~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|Add48~6_combout\ = (\a6|Add47~6_combout\ & ((\a6|Add48~5\) # (GND))) # (!\a6|Add47~6_combout\ & (!\a6|Add48~5\))
-- \a6|Add48~7\ = CARRY((\a6|Add47~6_combout\) # (!\a6|Add48~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \a6|Add47~6_combout\,
	datad => VCC,
	cin => \a6|Add48~5\,
	combout => \a6|Add48~6_combout\,
	cout => \a6|Add48~7\);

-- Location: LCCOMB_X29_Y20_N10
\a6|Add48~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|Add48~8_combout\ = (\a6|Add47~8_combout\ & (!\a6|Add48~7\ & VCC)) # (!\a6|Add47~8_combout\ & (\a6|Add48~7\ $ (GND)))
-- \a6|Add48~9\ = CARRY((!\a6|Add47~8_combout\ & !\a6|Add48~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a6|Add47~8_combout\,
	datad => VCC,
	cin => \a6|Add48~7\,
	combout => \a6|Add48~8_combout\,
	cout => \a6|Add48~9\);

-- Location: LCCOMB_X29_Y18_N12
\a6|ShiftLeft0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|ShiftLeft0~6_combout\ = (!\a6|Add48~6_combout\ & (!\a6|Add48~4_combout\ & !\a6|Add48~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a6|Add48~6_combout\,
	datac => \a6|Add48~4_combout\,
	datad => \a6|Add48~8_combout\,
	combout => \a6|ShiftLeft0~6_combout\);

-- Location: LCCOMB_X29_Y20_N12
\a6|Add48~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|Add48~10_combout\ = (\a6|Add47~10_combout\ & ((\a6|Add48~9\) # (GND))) # (!\a6|Add47~10_combout\ & (!\a6|Add48~9\))
-- \a6|Add48~11\ = CARRY((\a6|Add47~10_combout\) # (!\a6|Add48~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \a6|Add47~10_combout\,
	datad => VCC,
	cin => \a6|Add48~9\,
	combout => \a6|Add48~10_combout\,
	cout => \a6|Add48~11\);

-- Location: LCCOMB_X29_Y20_N14
\a6|Add48~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|Add48~12_combout\ = (\a6|Add47~12_combout\ & (!\a6|Add48~11\ & VCC)) # (!\a6|Add47~12_combout\ & (\a6|Add48~11\ $ (GND)))
-- \a6|Add48~13\ = CARRY((!\a6|Add47~12_combout\ & !\a6|Add48~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a6|Add47~12_combout\,
	datad => VCC,
	cin => \a6|Add48~11\,
	combout => \a6|Add48~12_combout\,
	cout => \a6|Add48~13\);

-- Location: LCCOMB_X29_Y20_N16
\a6|Add48~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|Add48~14_combout\ = \a6|Add48~13\ $ (!\a6|Add47~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \a6|Add47~12_combout\,
	cin => \a6|Add48~13\,
	combout => \a6|Add48~14_combout\);

-- Location: LCCOMB_X29_Y18_N18
\a6|ShiftLeft0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|ShiftLeft0~7_combout\ = (\a6|ShiftLeft0~6_combout\ & (!\a6|Add48~10_combout\ & (!\a6|Add48~14_combout\ & !\a6|Add48~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a6|ShiftLeft0~6_combout\,
	datab => \a6|Add48~10_combout\,
	datac => \a6|Add48~14_combout\,
	datad => \a6|Add48~12_combout\,
	combout => \a6|ShiftLeft0~7_combout\);

-- Location: LCCOMB_X26_Y18_N24
\a6|out~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|out~35_combout\ = (\a6|Add47~12_combout\ & (((\a6|ShiftLeft0~12_combout\ & \a6|ShiftLeft0~7_combout\)) # (!\a6|ShiftRight1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a6|ShiftRight1~1_combout\,
	datab => \a6|Add47~12_combout\,
	datac => \a6|ShiftLeft0~12_combout\,
	datad => \a6|ShiftLeft0~7_combout\,
	combout => \a6|out~35_combout\);

-- Location: LCCOMB_X26_Y18_N12
\a6|out~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|out~38_combout\ = (\a6|out~8_combout\ & ((\a6|out~35_combout\) # ((\a6|out~37_combout\ & !\a6|Add47~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a6|out~37_combout\,
	datab => \a6|Add47~12_combout\,
	datac => \a6|out~8_combout\,
	datad => \a6|out~35_combout\,
	combout => \a6|out~38_combout\);

-- Location: LCCOMB_X26_Y18_N8
\a6|out~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|out~42_combout\ = ((\a6|out~38_combout\) # ((\a6|out~39_combout\ & \a6|out~41_combout\))) # (!\a5|out\(32))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a5|out\(32),
	datab => \a6|out~39_combout\,
	datac => \a6|out~41_combout\,
	datad => \a6|out~38_combout\,
	combout => \a6|out~42_combout\);

-- Location: LCCOMB_X30_Y16_N8
\a6|out[2]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|out[2]~18_combout\ = ((!\a5|out\(32)) # (!\a6|out[2]~17_combout\)) # (!\a6|Add43~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a6|Add43~8_combout\,
	datac => \a6|out[2]~17_combout\,
	datad => \a5|out\(32),
	combout => \a6|out[2]~18_combout\);

-- Location: FF_X26_Y18_N9
\a6|out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \a6|out~42_combout\,
	ena => \a6|out[2]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a6|out\(5));

-- Location: LCCOMB_X27_Y18_N4
\a6|out~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|out~28_combout\ = (!\a6|LessThan5~0_combout\ & !\a6|Add47~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \a6|LessThan5~0_combout\,
	datad => \a6|Add47~12_combout\,
	combout => \a6|out~28_combout\);

-- Location: LCCOMB_X27_Y18_N26
\a6|out[2]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|out[2]~24_combout\ = (\a6|LessThan5~0_combout\) # ((\a6|Add47~6_combout\ & !\a6|Add47~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a6|LessThan5~0_combout\,
	datac => \a6|Add47~6_combout\,
	datad => \a6|Add47~12_combout\,
	combout => \a6|out[2]~24_combout\);

-- Location: LCCOMB_X28_Y18_N6
\a6|ShiftRight0~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|ShiftRight0~20_combout\ = (\a6|Add47~0_combout\ & (\a5|out\(32) & (\a6|Add47~2_combout\ & \a6|Add47~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a6|Add47~0_combout\,
	datab => \a5|out\(32),
	datac => \a6|Add47~2_combout\,
	datad => \a6|Add47~4_combout\,
	combout => \a6|ShiftRight0~20_combout\);

-- Location: LCCOMB_X28_Y18_N26
\a6|ShiftRight0~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|ShiftRight0~36_combout\ = (\a6|ShiftRight0~20_combout\) # ((\a5|out\(18) & (!\a6|Add47~4_combout\ & !\a6|Add47~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a5|out\(18),
	datab => \a6|Add47~4_combout\,
	datac => \a6|Add47~2_combout\,
	datad => \a6|ShiftRight0~20_combout\,
	combout => \a6|ShiftRight0~36_combout\);

-- Location: LCCOMB_X27_Y18_N0
\a6|out[2]~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|out[2]~29_combout\ = (\a6|Add47~4_combout\) # ((\a6|Add47~0_combout\ & !\a6|Add47~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a6|Add47~0_combout\,
	datac => \a6|Add47~2_combout\,
	datad => \a6|Add47~4_combout\,
	combout => \a6|out[2]~29_combout\);

-- Location: LCCOMB_X27_Y18_N30
\a6|ShiftRight0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|ShiftRight0~9_combout\ = (!\a6|Add47~2_combout\ & !\a6|Add47~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \a6|Add47~2_combout\,
	datad => \a6|Add47~4_combout\,
	combout => \a6|ShiftRight0~9_combout\);

-- Location: LCCOMB_X28_Y18_N2
\a6|ShiftRight0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|ShiftRight0~6_combout\ = (\a6|Add47~0_combout\ & ((\a5|out\(2)))) # (!\a6|Add47~0_combout\ & (\a5|out\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a5|out\(6),
	datac => \a6|Add47~0_combout\,
	datad => \a5|out\(2),
	combout => \a6|ShiftRight0~6_combout\);

-- Location: LCCOMB_X27_Y18_N14
\a6|out~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|out~50_combout\ = (\a6|ShiftRight0~9_combout\ & (\a5|out\(2) & ((!\a6|out[2]~29_combout\)))) # (!\a6|ShiftRight0~9_combout\ & (((\a6|ShiftRight0~6_combout\) # (\a6|out[2]~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a6|ShiftRight0~9_combout\,
	datab => \a5|out\(2),
	datac => \a6|ShiftRight0~6_combout\,
	datad => \a6|out[2]~29_combout\,
	combout => \a6|out~50_combout\);

-- Location: LCCOMB_X31_Y20_N30
\a6|ShiftRight0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|ShiftRight0~3_combout\ = (\a6|Add47~0_combout\ & (\a5|out\(16))) # (!\a6|Add47~0_combout\ & ((\a5|out\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a5|out\(16),
	datac => \a6|Add47~0_combout\,
	datad => \a5|out\(14),
	combout => \a6|ShiftRight0~3_combout\);

-- Location: LCCOMB_X30_Y16_N6
\a6|ShiftRight0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|ShiftRight0~5_combout\ = (\a6|Add47~0_combout\ & ((\a5|out\(13)))) # (!\a6|Add47~0_combout\ & (\a5|out\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a5|out\(2),
	datac => \a5|out\(13),
	datad => \a6|Add47~0_combout\,
	combout => \a6|ShiftRight0~5_combout\);

-- Location: LCCOMB_X31_Y20_N12
\a6|ShiftRight0~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|ShiftRight0~21_combout\ = (\a6|Add47~2_combout\ & (\a6|ShiftRight0~3_combout\)) # (!\a6|Add47~2_combout\ & ((\a6|ShiftRight0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a6|ShiftRight0~3_combout\,
	datab => \a6|ShiftRight0~5_combout\,
	datad => \a6|Add47~2_combout\,
	combout => \a6|ShiftRight0~21_combout\);

-- Location: LCCOMB_X27_Y18_N12
\a6|out~51\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|out~51_combout\ = (\a6|out[2]~29_combout\ & ((\a6|out~50_combout\ & ((\a6|ShiftRight0~21_combout\))) # (!\a6|out~50_combout\ & (\a5|out\(4))))) # (!\a6|out[2]~29_combout\ & (((\a6|out~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a5|out\(4),
	datab => \a6|out[2]~29_combout\,
	datac => \a6|out~50_combout\,
	datad => \a6|ShiftRight0~21_combout\,
	combout => \a6|out~51_combout\);

-- Location: LCCOMB_X27_Y18_N8
\a6|out~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|out~52_combout\ = (\a6|out[2]~24_combout\ & ((\a6|ShiftRight0~36_combout\) # ((!\a6|out~28_combout\)))) # (!\a6|out[2]~24_combout\ & (((\a6|out~28_combout\ & \a6|out~51_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a6|out[2]~24_combout\,
	datab => \a6|ShiftRight0~36_combout\,
	datac => \a6|out~28_combout\,
	datad => \a6|out~51_combout\,
	combout => \a6|out~52_combout\);

-- Location: LCCOMB_X31_Y20_N6
\a6|out~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|out~25_combout\ = (!\a6|Add43~0_combout\) # (!\a6|Add43~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \a6|Add43~2_combout\,
	datad => \a6|Add43~0_combout\,
	combout => \a6|out~25_combout\);

-- Location: LCCOMB_X31_Y20_N22
\a6|out~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|out~26_combout\ = (\a6|Add43~6_combout\) # ((\a6|Add43~8_combout\) # ((!\a6|out~25_combout\ & \a6|Add43~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a6|out~25_combout\,
	datab => \a6|Add43~4_combout\,
	datac => \a6|Add43~6_combout\,
	datad => \a6|Add43~8_combout\,
	combout => \a6|out~26_combout\);

-- Location: LCCOMB_X27_Y18_N28
\a6|out~49\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|out~49_combout\ = ((!\a6|Add48~2_combout\ & (\a5|out\(2) & \a6|ShiftLeft0~7_combout\))) # (!\a6|out~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a6|Add48~2_combout\,
	datab => \a5|out\(2),
	datac => \a6|out~26_combout\,
	datad => \a6|ShiftLeft0~7_combout\,
	combout => \a6|out~49_combout\);

-- Location: LCCOMB_X27_Y18_N20
\a6|out~53\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|out~53_combout\ = (\a6|out~28_combout\ & (((\a6|out~52_combout\)))) # (!\a6|out~28_combout\ & ((\a6|out~52_combout\ & (\a5|out\(18))) # (!\a6|out~52_combout\ & ((\a6|out~49_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a5|out\(18),
	datab => \a6|out~28_combout\,
	datac => \a6|out~52_combout\,
	datad => \a6|out~49_combout\,
	combout => \a6|out~53_combout\);

-- Location: LCCOMB_X27_Y18_N10
\a6|out~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|out~54_combout\ = ((\a6|out~53_combout\ & ((!\a6|out[5]~6_combout\) # (!\a6|out~28_combout\)))) # (!\a5|out\(32))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a5|out\(32),
	datab => \a6|out~28_combout\,
	datac => \a6|out[5]~6_combout\,
	datad => \a6|out~53_combout\,
	combout => \a6|out~54_combout\);

-- Location: FF_X27_Y18_N11
\a6|out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \a6|out~54_combout\,
	ena => \a6|out[2]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a6|out\(2));

-- Location: LCCOMB_X27_Y17_N0
\a6|ShiftRight0~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|ShiftRight0~17_combout\ = (\a6|Add47~0_combout\ & ((\a5|out\(6)))) # (!\a6|Add47~0_combout\ & (\a5|out\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a5|out\(4),
	datab => \a5|out\(6),
	datac => \a6|Add47~0_combout\,
	combout => \a6|ShiftRight0~17_combout\);

-- Location: LCCOMB_X26_Y18_N10
\a6|out~45\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|out~45_combout\ = (\a6|out[5]~11_combout\ & ((\a5|out\(2)) # ((\a6|out[5]~10_combout\)))) # (!\a6|out[5]~11_combout\ & (((\a6|ShiftRight0~17_combout\ & !\a6|out[5]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a5|out\(2),
	datab => \a6|ShiftRight0~17_combout\,
	datac => \a6|out[5]~11_combout\,
	datad => \a6|out[5]~10_combout\,
	combout => \a6|out~45_combout\);

-- Location: LCCOMB_X30_Y18_N10
\a6|ShiftRight0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|ShiftRight0~18_combout\ = (\a6|Add47~2_combout\ & (\a5|out\(32) & ((\a6|Add47~4_combout\)))) # (!\a6|Add47~2_combout\ & (((\a5|out\(18) & !\a6|Add47~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a6|Add47~2_combout\,
	datab => \a5|out\(32),
	datac => \a5|out\(18),
	datad => \a6|Add47~4_combout\,
	combout => \a6|ShiftRight0~18_combout\);

-- Location: LCCOMB_X30_Y18_N20
\a6|ShiftRight0~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|ShiftRight0~19_combout\ = (!\a6|Add47~0_combout\ & \a6|ShiftRight0~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a6|Add47~0_combout\,
	datad => \a6|ShiftRight0~18_combout\,
	combout => \a6|ShiftRight0~19_combout\);

-- Location: LCCOMB_X28_Y18_N16
\a6|ShiftRight0~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|ShiftRight0~15_combout\ = (\a6|Add47~0_combout\ & ((\a5|out\(14)))) # (!\a6|Add47~0_combout\ & (\a5|out\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a5|out\(13),
	datac => \a6|Add47~0_combout\,
	datad => \a5|out\(14),
	combout => \a6|ShiftRight0~15_combout\);

-- Location: LCCOMB_X31_Y18_N24
\a6|ShiftRight0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|ShiftRight0~14_combout\ = (\a6|Add47~0_combout\ & ((\a5|out\(18)))) # (!\a6|Add47~0_combout\ & (\a5|out\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a6|Add47~0_combout\,
	datab => \a5|out\(16),
	datac => \a5|out\(18),
	combout => \a6|ShiftRight0~14_combout\);

-- Location: LCCOMB_X31_Y18_N18
\a6|ShiftRight0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|ShiftRight0~16_combout\ = (\a6|Add47~2_combout\ & ((\a6|ShiftRight0~14_combout\))) # (!\a6|Add47~2_combout\ & (\a6|ShiftRight0~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a6|Add47~2_combout\,
	datac => \a6|ShiftRight0~15_combout\,
	datad => \a6|ShiftRight0~14_combout\,
	combout => \a6|ShiftRight0~16_combout\);

-- Location: LCCOMB_X26_Y18_N30
\a6|out~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|out~46_combout\ = (\a6|out~45_combout\ & (((\a6|ShiftRight0~19_combout\)) # (!\a6|out[5]~10_combout\))) # (!\a6|out~45_combout\ & (\a6|out[5]~10_combout\ & ((\a6|ShiftRight0~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a6|out~45_combout\,
	datab => \a6|out[5]~10_combout\,
	datac => \a6|ShiftRight0~19_combout\,
	datad => \a6|ShiftRight0~16_combout\,
	combout => \a6|out~46_combout\);

-- Location: LCCOMB_X28_Y18_N10
\a6|out~43\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|out~43_combout\ = (\a6|Add47~0_combout\ & (((\a5|out\(2) & !\a6|Add48~2_combout\)))) # (!\a6|Add47~0_combout\ & ((\a6|Add48~2_combout\ & ((\a5|out\(2)))) # (!\a6|Add48~2_combout\ & (\a5|out\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a5|out\(4),
	datab => \a5|out\(2),
	datac => \a6|Add47~0_combout\,
	datad => \a6|Add48~2_combout\,
	combout => \a6|out~43_combout\);

-- Location: LCCOMB_X29_Y18_N22
\a6|out~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|out~44_combout\ = ((\a6|out~43_combout\ & \a6|ShiftLeft0~7_combout\)) # (!\a6|ShiftRight1~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a6|out~43_combout\,
	datac => \a6|ShiftRight1~1_combout\,
	datad => \a6|ShiftLeft0~7_combout\,
	combout => \a6|out~44_combout\);

-- Location: LCCOMB_X26_Y18_N18
\a6|out~47\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|out~47_combout\ = (!\a6|LessThan5~0_combout\ & ((\a6|Add47~12_combout\ & ((\a6|out~44_combout\))) # (!\a6|Add47~12_combout\ & (\a6|out~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a6|LessThan5~0_combout\,
	datab => \a6|Add47~12_combout\,
	datac => \a6|out~46_combout\,
	datad => \a6|out~44_combout\,
	combout => \a6|out~47_combout\);

-- Location: LCCOMB_X26_Y18_N4
\a6|out~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|out~48_combout\ = ((\a6|out~41_combout\ & ((\a6|out~39_combout\) # (\a6|out~47_combout\)))) # (!\a5|out\(32))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a5|out\(32),
	datab => \a6|out~39_combout\,
	datac => \a6|out~41_combout\,
	datad => \a6|out~47_combout\,
	combout => \a6|out~48_combout\);

-- Location: FF_X26_Y18_N5
\a6|out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \a6|out~48_combout\,
	ena => \a6|out[2]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a6|out\(4));

-- Location: LCCOMB_X28_Y19_N28
\a6|ShiftLeft0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|ShiftLeft0~8_combout\ = (\a6|Add47~0_combout\ & (\a5|out\(1))) # (!\a6|Add47~0_combout\ & ((\a5|out\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a5|out\(1),
	datac => \a5|out\(3),
	datad => \a6|Add47~0_combout\,
	combout => \a6|ShiftLeft0~8_combout\);

-- Location: LCCOMB_X28_Y19_N2
\a6|ShiftLeft0~43\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|ShiftLeft0~43_combout\ = (!\a6|Add48~2_combout\ & (\a6|ShiftLeft0~8_combout\ & !\a6|Add48~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a6|Add48~2_combout\,
	datac => \a6|ShiftLeft0~8_combout\,
	datad => \a6|Add48~4_combout\,
	combout => \a6|ShiftLeft0~43_combout\);

-- Location: LCCOMB_X28_Y18_N4
\a6|ShiftRight0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|ShiftRight0~8_combout\ = (\a5|out\(18) & (!\a6|Add47~2_combout\ & !\a6|Add47~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a5|out\(18),
	datac => \a6|Add47~2_combout\,
	datad => \a6|Add47~4_combout\,
	combout => \a6|ShiftRight0~8_combout\);

-- Location: LCCOMB_X29_Y20_N0
\a6|out~76\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|out~76_combout\ = (!\a6|Add48~10_combout\ & (!\a6|Add48~8_combout\ & (!\a6|Add48~12_combout\ & !\a6|Add48~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a6|Add48~10_combout\,
	datab => \a6|Add48~8_combout\,
	datac => \a6|Add48~12_combout\,
	datad => \a6|Add48~14_combout\,
	combout => \a6|out~76_combout\);

-- Location: LCCOMB_X30_Y20_N20
\a6|out[17]~106\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|out[17]~106_combout\ = ((\a6|Add48~6_combout\) # (!\a6|out~76_combout\)) # (!\a6|Add47~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a6|Add47~12_combout\,
	datac => \a6|out~76_combout\,
	datad => \a6|Add48~6_combout\,
	combout => \a6|out[17]~106_combout\);

-- Location: LCCOMB_X28_Y19_N8
\a6|ShiftLeft0~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|ShiftLeft0~15_combout\ = (\a6|Add48~2_combout\ & (((\a5|out\(2))))) # (!\a6|Add48~2_combout\ & ((\a6|Add47~0_combout\ & ((\a5|out\(2)))) # (!\a6|Add47~0_combout\ & (\a5|out\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a5|out\(11),
	datab => \a6|Add48~2_combout\,
	datac => \a5|out\(2),
	datad => \a6|Add47~0_combout\,
	combout => \a6|ShiftLeft0~15_combout\);

-- Location: LCCOMB_X30_Y19_N8
\a6|ShiftLeft0~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|ShiftLeft0~48_combout\ = (\a6|Add47~0_combout\ & ((\a6|Add48~2_combout\ & ((\a5|out\(13)))) # (!\a6|Add48~2_combout\ & (\a5|out\(18))))) # (!\a6|Add47~0_combout\ & (\a5|out\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a6|Add47~0_combout\,
	datab => \a5|out\(18),
	datac => \a6|Add48~2_combout\,
	datad => \a5|out\(13),
	combout => \a6|ShiftLeft0~48_combout\);

-- Location: LCCOMB_X30_Y20_N14
\a6|out[17]~105\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|out[17]~105_combout\ = (\a6|Add47~12_combout\ & ((\a6|Add48~4_combout\) # ((\a6|Add48~6_combout\) # (!\a6|out~76_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a6|Add48~4_combout\,
	datab => \a6|Add47~12_combout\,
	datac => \a6|out~76_combout\,
	datad => \a6|Add48~6_combout\,
	combout => \a6|out[17]~105_combout\);

-- Location: LCCOMB_X29_Y17_N28
\a6|out~148\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|out~148_combout\ = (\a6|out[17]~105_combout\ & ((\a6|ShiftLeft0~15_combout\) # ((\a6|out[17]~106_combout\)))) # (!\a6|out[17]~105_combout\ & (((\a6|ShiftLeft0~48_combout\ & !\a6|out[17]~106_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a6|ShiftLeft0~15_combout\,
	datab => \a6|ShiftLeft0~48_combout\,
	datac => \a6|out[17]~105_combout\,
	datad => \a6|out[17]~106_combout\,
	combout => \a6|out~148_combout\);

-- Location: LCCOMB_X29_Y17_N8
\a6|out~149\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|out~149_combout\ = (\a6|out[17]~106_combout\ & ((\a6|out~148_combout\ & (\a6|ShiftLeft0~43_combout\)) # (!\a6|out~148_combout\ & ((\a6|ShiftRight0~8_combout\))))) # (!\a6|out[17]~106_combout\ & (((\a6|out~148_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a6|ShiftLeft0~43_combout\,
	datab => \a6|ShiftRight0~8_combout\,
	datac => \a6|out[17]~106_combout\,
	datad => \a6|out~148_combout\,
	combout => \a6|out~149_combout\);

-- Location: LCCOMB_X30_Y20_N8
\a6|out[15]~72\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|out[15]~72_combout\ = (!\a6|Add47~10_combout\ & (!\a6|Add47~6_combout\ & (!\a6|Add47~8_combout\ & !\a6|Add47~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a6|Add47~10_combout\,
	datab => \a6|Add47~6_combout\,
	datac => \a6|Add47~8_combout\,
	datad => \a6|Add47~12_combout\,
	combout => \a6|out[15]~72_combout\);

-- Location: LCCOMB_X30_Y20_N10
\a6|out[17]~109\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|out[17]~109_combout\ = (!\a6|out[15]~72_combout\ & (!\a6|out[17]~105_combout\ & \a6|out[17]~106_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a6|out[15]~72_combout\,
	datac => \a6|out[17]~105_combout\,
	datad => \a6|out[17]~106_combout\,
	combout => \a6|out[17]~109_combout\);

-- Location: LCCOMB_X30_Y20_N24
\a6|out~110\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|out~110_combout\ = (\a6|out[5]~40_combout\ & (!\a6|out[17]~109_combout\ & ((\a6|out~76_combout\) # (!\a6|out[17]~105_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a6|out~76_combout\,
	datab => \a6|out[5]~40_combout\,
	datac => \a6|out[17]~105_combout\,
	datad => \a6|out[17]~109_combout\,
	combout => \a6|out~110_combout\);

-- Location: LCCOMB_X29_Y17_N12
\a6|out~150\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|out~150_combout\ = (\a5|out\(32) & (((\a6|out~149_combout\ & \a6|out~110_combout\)))) # (!\a5|out\(32) & ((\a5|out\(3)) # ((\a6|out~149_combout\ & \a6|out~110_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a5|out\(32),
	datab => \a5|out\(3),
	datac => \a6|out~149_combout\,
	datad => \a6|out~110_combout\,
	combout => \a6|out~150_combout\);

-- Location: FF_X29_Y17_N13
\a6|out[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \a6|out~150_combout\,
	ena => \a6|out[2]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a6|out\(19));

-- Location: LCCOMB_X28_Y19_N12
\a6|ShiftLeft0~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|ShiftLeft0~22_combout\ = (\a5|out\(2) & (\a6|Add47~0_combout\ $ (\a6|Add48~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a6|Add47~0_combout\,
	datac => \a5|out\(2),
	datad => \a6|Add48~2_combout\,
	combout => \a6|ShiftLeft0~22_combout\);

-- Location: LCCOMB_X28_Y19_N20
\a6|ShiftLeft0~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|ShiftLeft0~24_combout\ = (\a6|Add47~0_combout\ & (\a5|out\(6) & ((\a6|Add48~2_combout\)))) # (!\a6|Add47~0_combout\ & (((\a5|out\(13) & !\a6|Add48~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a6|Add47~0_combout\,
	datab => \a5|out\(6),
	datac => \a5|out\(13),
	datad => \a6|Add48~2_combout\,
	combout => \a6|ShiftLeft0~24_combout\);

-- Location: LCCOMB_X29_Y17_N14
\a6|out~151\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|out~151_combout\ = (\a6|out[17]~106_combout\ & (!\a6|Add48~4_combout\ & (\a6|out~43_combout\))) # (!\a6|out[17]~106_combout\ & (((\a6|ShiftLeft0~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a6|Add48~4_combout\,
	datab => \a6|out~43_combout\,
	datac => \a6|ShiftLeft0~24_combout\,
	datad => \a6|out[17]~106_combout\,
	combout => \a6|out~151_combout\);

-- Location: LCCOMB_X30_Y19_N30
\a6|ShiftLeft0~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|ShiftLeft0~39_combout\ = (\a6|Add47~0_combout\ & ((\a5|out\(14)))) # (!\a6|Add47~0_combout\ & (\a5|out\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a5|out\(16),
	datac => \a5|out\(14),
	datad => \a6|Add47~0_combout\,
	combout => \a6|ShiftLeft0~39_combout\);

-- Location: LCCOMB_X30_Y19_N14
\a6|out~152\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|out~152_combout\ = (\a6|Add48~2_combout\ & (\a6|ShiftLeft0~39_combout\)) # (!\a6|Add48~2_combout\ & ((\a5|out\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a6|ShiftLeft0~39_combout\,
	datab => \a5|out\(18),
	datac => \a6|Add48~2_combout\,
	combout => \a6|out~152_combout\);

-- Location: LCCOMB_X29_Y17_N10
\a6|out~153\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|out~153_combout\ = (\a6|out[17]~105_combout\ & (((\a6|out[17]~106_combout\)))) # (!\a6|out[17]~105_combout\ & ((\a6|out[17]~106_combout\ & (\a6|ShiftRight0~19_combout\)) # (!\a6|out[17]~106_combout\ & ((\a6|out~152_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a6|ShiftRight0~19_combout\,
	datab => \a6|out~152_combout\,
	datac => \a6|out[17]~105_combout\,
	datad => \a6|out[17]~106_combout\,
	combout => \a6|out~153_combout\);

-- Location: LCCOMB_X29_Y17_N22
\a6|out~154\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|out~154_combout\ = (\a6|out[17]~105_combout\ & ((\a6|out~151_combout\) # ((\a6|ShiftLeft0~22_combout\ & !\a6|out~153_combout\)))) # (!\a6|out[17]~105_combout\ & (((\a6|out~153_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a6|ShiftLeft0~22_combout\,
	datab => \a6|out[17]~105_combout\,
	datac => \a6|out~151_combout\,
	datad => \a6|out~153_combout\,
	combout => \a6|out~154_combout\);

-- Location: LCCOMB_X29_Y17_N6
\a6|out~155\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|out~155_combout\ = (\a5|out\(4) & (((\a6|out~154_combout\ & \a6|out~110_combout\)) # (!\a5|out\(32)))) # (!\a5|out\(4) & (((\a6|out~154_combout\ & \a6|out~110_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a5|out\(4),
	datab => \a5|out\(32),
	datac => \a6|out~154_combout\,
	datad => \a6|out~110_combout\,
	combout => \a6|out~155_combout\);

-- Location: FF_X29_Y17_N7
\a6|out[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \a6|out~155_combout\,
	ena => \a6|out[2]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a6|out\(20));

-- Location: LCCOMB_X30_Y16_N24
\a6|ShiftLeft0~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|ShiftLeft0~35_combout\ = (\a6|Add47~0_combout\ & ((\a5|out\(16)))) # (!\a6|Add47~0_combout\ & (\a5|out\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a5|out\(18),
	datac => \a5|out\(16),
	datad => \a6|Add47~0_combout\,
	combout => \a6|ShiftLeft0~35_combout\);

-- Location: LCCOMB_X30_Y17_N0
\a6|ShiftLeft0~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|ShiftLeft0~31_combout\ = (\a6|Add47~0_combout\ & ((\a5|out\(13)))) # (!\a6|Add47~0_combout\ & (\a5|out\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a5|out\(14),
	datac => \a5|out\(13),
	datad => \a6|Add47~0_combout\,
	combout => \a6|ShiftLeft0~31_combout\);

-- Location: LCCOMB_X30_Y17_N18
\a6|ShiftLeft0~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|ShiftLeft0~42_combout\ = (\a6|Add48~2_combout\ & ((\a6|ShiftLeft0~31_combout\))) # (!\a6|Add48~2_combout\ & (\a6|ShiftLeft0~35_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a6|Add48~2_combout\,
	datac => \a6|ShiftLeft0~35_combout\,
	datad => \a6|ShiftLeft0~31_combout\,
	combout => \a6|ShiftLeft0~42_combout\);

-- Location: LCCOMB_X29_Y17_N4
\a6|out~146\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|out~146_combout\ = (\a6|out[17]~105_combout\ & (((\a6|out[17]~106_combout\)))) # (!\a6|out[17]~105_combout\ & ((\a6|out[17]~106_combout\ & (\a6|ShiftRight0~36_combout\)) # (!\a6|out[17]~106_combout\ & ((\a6|ShiftLeft0~42_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a6|ShiftRight0~36_combout\,
	datab => \a6|ShiftLeft0~42_combout\,
	datac => \a6|out[17]~105_combout\,
	datad => \a6|out[17]~106_combout\,
	combout => \a6|out~146_combout\);

-- Location: LCCOMB_X28_Y18_N20
\a6|ShiftLeft0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|ShiftLeft0~10_combout\ = (\a6|Add47~0_combout\ & (\a5|out\(4))) # (!\a6|Add47~0_combout\ & ((\a5|out\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a5|out\(4),
	datac => \a6|Add47~0_combout\,
	datad => \a5|out\(6),
	combout => \a6|ShiftLeft0~10_combout\);

-- Location: LCCOMB_X29_Y17_N18
\a6|out~145\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|out~145_combout\ = (\a6|Add48~2_combout\ & (((\a6|ShiftLeft0~10_combout\ & !\a6|out[17]~106_combout\)))) # (!\a6|Add48~2_combout\ & (\a5|out\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a5|out\(2),
	datab => \a6|ShiftLeft0~10_combout\,
	datac => \a6|Add48~2_combout\,
	datad => \a6|out[17]~106_combout\,
	combout => \a6|out~145_combout\);

-- Location: LCCOMB_X29_Y17_N26
\a6|out~147\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|out~147_combout\ = (\a6|out[17]~105_combout\ & (\a6|out~145_combout\ & ((!\a6|out~146_combout\) # (!\a6|Add48~4_combout\)))) # (!\a6|out[17]~105_combout\ & (((\a6|out~146_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a6|Add48~4_combout\,
	datab => \a6|out[17]~105_combout\,
	datac => \a6|out~146_combout\,
	datad => \a6|out~145_combout\,
	combout => \a6|out~147_combout\);

-- Location: LCCOMB_X29_Y17_N16
\a6|out~182\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|out~182_combout\ = (\a5|out\(2) & (((\a6|out~147_combout\ & \a6|out~110_combout\)) # (!\a5|out\(32)))) # (!\a5|out\(2) & (((\a6|out~147_combout\ & \a6|out~110_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a5|out\(2),
	datab => \a5|out\(32),
	datac => \a6|out~147_combout\,
	datad => \a6|out~110_combout\,
	combout => \a6|out~182_combout\);

-- Location: FF_X29_Y17_N17
\a6|out[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \a6|out~182_combout\,
	ena => \a6|out[2]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a6|out\(18));

-- Location: LCCOMB_X30_Y18_N30
\a6|ShiftLeft0~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|ShiftLeft0~44_combout\ = (!\a6|Add48~4_combout\ & \a6|ShiftLeft0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a6|Add48~4_combout\,
	datad => \a6|ShiftLeft0~12_combout\,
	combout => \a6|ShiftLeft0~44_combout\);

-- Location: LCCOMB_X28_Y18_N8
\a6|ShiftLeft0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|ShiftLeft0~18_combout\ = (\a6|Add47~0_combout\ & (\a5|out\(11))) # (!\a6|Add47~0_combout\ & ((\a5|out\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a5|out\(11),
	datab => \a5|out\(13),
	datac => \a6|Add47~0_combout\,
	combout => \a6|ShiftLeft0~18_combout\);

-- Location: LCCOMB_X30_Y18_N26
\a6|ShiftLeft0~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|ShiftLeft0~19_combout\ = (\a6|Add48~2_combout\ & (\a5|out\(2))) # (!\a6|Add48~2_combout\ & ((\a6|ShiftLeft0~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a5|out\(2),
	datac => \a6|Add48~2_combout\,
	datad => \a6|ShiftLeft0~18_combout\,
	combout => \a6|ShiftLeft0~19_combout\);

-- Location: LCCOMB_X29_Y17_N2
\a6|out~156\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|out~156_combout\ = (\a6|out[17]~105_combout\ & ((\a6|ShiftLeft0~19_combout\) # ((\a6|out[17]~106_combout\)))) # (!\a6|out[17]~105_combout\ & (((\a5|out\(18) & !\a6|out[17]~106_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a6|ShiftLeft0~19_combout\,
	datab => \a5|out\(18),
	datac => \a6|out[17]~105_combout\,
	datad => \a6|out[17]~106_combout\,
	combout => \a6|out~156_combout\);

-- Location: LCCOMB_X29_Y17_N0
\a6|out~157\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|out~157_combout\ = (\a6|out[17]~106_combout\ & ((\a6|out~156_combout\ & ((\a6|ShiftLeft0~44_combout\))) # (!\a6|out~156_combout\ & (\a6|ShiftRight0~13_combout\)))) # (!\a6|out[17]~106_combout\ & (((\a6|out~156_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a6|ShiftRight0~13_combout\,
	datab => \a6|ShiftLeft0~44_combout\,
	datac => \a6|out[17]~106_combout\,
	datad => \a6|out~156_combout\,
	combout => \a6|out~157_combout\);

-- Location: LCCOMB_X29_Y17_N30
\a6|out~183\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|out~183_combout\ = (\a5|out\(32) & (\a6|out~110_combout\ & ((\a6|out~157_combout\)))) # (!\a5|out\(32) & ((\a5|out\(2)) # ((\a6|out~110_combout\ & \a6|out~157_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a5|out\(32),
	datab => \a6|out~110_combout\,
	datac => \a5|out\(2),
	datad => \a6|out~157_combout\,
	combout => \a6|out~183_combout\);

-- Location: FF_X29_Y17_N31
\a6|out[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \a6|out~183_combout\,
	ena => \a6|out[2]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a6|out\(21));

-- Location: LCCOMB_X30_Y15_N30
\sq2|Add18~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sq2|Add18~0_combout\ = (\a6|out\(19) & (\a6|out\(20) & (\a6|out\(18) & \a6|out\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a6|out\(19),
	datab => \a6|out\(20),
	datac => \a6|out\(18),
	datad => \a6|out\(21),
	combout => \sq2|Add18~0_combout\);

-- Location: LCCOMB_X29_Y17_N24
\sq2|Add18~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sq2|Add18~1_combout\ = (\a6|out\(20) & ((\a6|out\(18) & ((!\a6|out\(19)) # (!\a6|out\(21)))) # (!\a6|out\(18) & ((\a6|out\(21)) # (\a6|out\(19)))))) # (!\a6|out\(20) & ((\a6|out\(18) & ((\a6|out\(21)) # (\a6|out\(19)))) # (!\a6|out\(18) & (\a6|out\(21) & 
-- \a6|out\(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a6|out\(20),
	datab => \a6|out\(18),
	datac => \a6|out\(21),
	datad => \a6|out\(19),
	combout => \sq2|Add18~1_combout\);

-- Location: LCCOMB_X30_Y20_N18
\a6|out[15]~73\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|out[15]~73_combout\ = (\a6|Add47~12_combout\) # ((\a6|Add47~4_combout\ & \a6|out[15]~72_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a6|Add47~4_combout\,
	datac => \a6|out[15]~72_combout\,
	datad => \a6|Add47~12_combout\,
	combout => \a6|out[15]~73_combout\);

-- Location: LCCOMB_X30_Y20_N12
\a6|out~79\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|out~79_combout\ = (\a6|out[5]~40_combout\ & ((\a6|LessThan5~0_combout\) # ((\a6|out[15]~73_combout\) # (!\a6|out[5]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a6|LessThan5~0_combout\,
	datab => \a6|out[5]~6_combout\,
	datac => \a6|out[5]~40_combout\,
	datad => \a6|out[15]~73_combout\,
	combout => \a6|out~79_combout\);

-- Location: LCCOMB_X31_Y20_N28
\a6|ShiftRight1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|ShiftRight1~2_combout\ = (\a6|Add43~6_combout\) # ((\a6|Add43~8_combout\) # (\a6|Add43~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a6|Add43~6_combout\,
	datac => \a6|Add43~8_combout\,
	datad => \a6|Add43~4_combout\,
	combout => \a6|ShiftRight1~2_combout\);

-- Location: LCCOMB_X28_Y19_N10
\a6|ShiftLeft0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|ShiftLeft0~9_combout\ = (\a6|Add48~2_combout\ & ((\a6|ShiftLeft0~8_combout\))) # (!\a6|Add48~2_combout\ & (\a5|out\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a5|out\(2),
	datab => \a6|ShiftLeft0~8_combout\,
	datad => \a6|Add48~2_combout\,
	combout => \a6|ShiftLeft0~9_combout\);

-- Location: LCCOMB_X29_Y19_N18
\a6|ShiftLeft0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|ShiftLeft0~4_combout\ = (\a6|Add47~0_combout\ & (((\a6|Add48~2_combout\) # (\a5|out\(13))))) # (!\a6|Add47~0_combout\ & (\a5|out\(18) & (!\a6|Add48~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a5|out\(18),
	datab => \a6|Add47~0_combout\,
	datac => \a6|Add48~2_combout\,
	datad => \a5|out\(13),
	combout => \a6|ShiftLeft0~4_combout\);

-- Location: LCCOMB_X29_Y19_N22
\a6|ShiftLeft0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|ShiftLeft0~5_combout\ = (\a6|Add48~2_combout\ & ((\a6|ShiftLeft0~4_combout\ & ((\a5|out\(2)))) # (!\a6|ShiftLeft0~4_combout\ & (\a5|out\(11))))) # (!\a6|Add48~2_combout\ & (((\a6|ShiftLeft0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a5|out\(11),
	datab => \a5|out\(2),
	datac => \a6|Add48~2_combout\,
	datad => \a6|ShiftLeft0~4_combout\,
	combout => \a6|ShiftLeft0~5_combout\);

-- Location: LCCOMB_X29_Y19_N26
\a6|ShiftLeft0~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|ShiftLeft0~46_combout\ = (\a6|Add48~4_combout\ & (\a6|ShiftLeft0~9_combout\)) # (!\a6|Add48~4_combout\ & ((\a6|ShiftLeft0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a6|ShiftLeft0~9_combout\,
	datab => \a6|ShiftLeft0~5_combout\,
	datad => \a6|Add48~4_combout\,
	combout => \a6|ShiftLeft0~46_combout\);

-- Location: LCCOMB_X28_Y17_N14
\a6|ShiftLeft0~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|ShiftLeft0~21_combout\ = (\a6|Add48~6_combout\) # (!\a6|out~76_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \a6|out~76_combout\,
	datad => \a6|Add48~6_combout\,
	combout => \a6|ShiftLeft0~21_combout\);

-- Location: LCCOMB_X29_Y19_N0
\a6|out~169\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|out~169_combout\ = (\a6|out~7_combout\ & (((\a6|ShiftLeft0~46_combout\ & !\a6|ShiftLeft0~21_combout\)) # (!\a6|ShiftRight1~2_combout\))) # (!\a6|out~7_combout\ & (((\a6|ShiftLeft0~46_combout\ & !\a6|ShiftLeft0~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a6|out~7_combout\,
	datab => \a6|ShiftRight1~2_combout\,
	datac => \a6|ShiftLeft0~46_combout\,
	datad => \a6|ShiftLeft0~21_combout\,
	combout => \a6|out~169_combout\);

-- Location: LCCOMB_X29_Y19_N28
\a6|out~170\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|out~170_combout\ = (\a6|out[15]~73_combout\ & (((!\a6|out[15]~72_combout\ & \a6|out~169_combout\)))) # (!\a6|out[15]~73_combout\ & (\a5|out\(18) & (\a6|out[15]~72_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a5|out\(18),
	datab => \a6|out[15]~73_combout\,
	datac => \a6|out[15]~72_combout\,
	datad => \a6|out~169_combout\,
	combout => \a6|out~170_combout\);

-- Location: LCCOMB_X29_Y19_N30
\a6|out~171\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|out~171_combout\ = ((\a6|out~79_combout\ & \a6|out~170_combout\)) # (!\a5|out\(32))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a5|out\(32),
	datac => \a6|out~79_combout\,
	datad => \a6|out~170_combout\,
	combout => \a6|out~171_combout\);

-- Location: FF_X29_Y19_N31
\a6|out[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \a6|out~171_combout\,
	ena => \a6|out[2]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a6|out\(15));

-- Location: LCCOMB_X29_Y18_N0
\a6|ShiftLeft0~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|ShiftLeft0~26_combout\ = (\a6|Add48~2_combout\ & ((\a6|Add47~0_combout\ & (\a5|out\(3))) # (!\a6|Add47~0_combout\ & ((\a5|out\(2)))))) # (!\a6|Add48~2_combout\ & (((\a5|out\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a5|out\(3),
	datab => \a5|out\(2),
	datac => \a6|Add48~2_combout\,
	datad => \a6|Add47~0_combout\,
	combout => \a6|ShiftLeft0~26_combout\);

-- Location: LCCOMB_X29_Y19_N16
\a6|ShiftLeft0~45\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|ShiftLeft0~45_combout\ = (\a5|out\(1) & (!\a6|Add47~0_combout\ & (!\a6|Add48~2_combout\ & !\a6|Add48~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a5|out\(1),
	datab => \a6|Add47~0_combout\,
	datac => \a6|Add48~2_combout\,
	datad => \a6|Add48~4_combout\,
	combout => \a6|ShiftLeft0~45_combout\);

-- Location: LCCOMB_X30_Y16_N2
\a6|ShiftRight0~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|ShiftRight0~24_combout\ = (\a5|out\(18) & (!\a6|Add47~4_combout\ & ((!\a6|Add47~0_combout\) # (!\a6|Add47~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a6|Add47~2_combout\,
	datab => \a5|out\(18),
	datac => \a6|Add47~4_combout\,
	datad => \a6|Add47~0_combout\,
	combout => \a6|ShiftRight0~24_combout\);

-- Location: LCCOMB_X30_Y18_N0
\a6|ShiftLeft0~41\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|ShiftLeft0~41_combout\ = (\a6|Add48~2_combout\ & ((\a6|ShiftLeft0~18_combout\))) # (!\a6|Add48~2_combout\ & (\a5|out\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a5|out\(18),
	datac => \a6|Add48~2_combout\,
	datad => \a6|ShiftLeft0~18_combout\,
	combout => \a6|ShiftLeft0~41_combout\);

-- Location: LCCOMB_X29_Y19_N10
\a6|out~158\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|out~158_combout\ = (\a6|out[17]~106_combout\ & ((\a6|ShiftRight0~24_combout\) # ((\a6|out[17]~105_combout\)))) # (!\a6|out[17]~106_combout\ & (((\a6|ShiftLeft0~41_combout\ & !\a6|out[17]~105_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a6|ShiftRight0~24_combout\,
	datab => \a6|ShiftLeft0~41_combout\,
	datac => \a6|out[17]~106_combout\,
	datad => \a6|out[17]~105_combout\,
	combout => \a6|out~158_combout\);

-- Location: LCCOMB_X29_Y19_N4
\a6|out~159\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|out~159_combout\ = (\a6|out[17]~105_combout\ & ((\a6|out~158_combout\ & ((\a6|ShiftLeft0~45_combout\))) # (!\a6|out~158_combout\ & (\a6|ShiftLeft0~26_combout\)))) # (!\a6|out[17]~105_combout\ & (((\a6|out~158_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a6|ShiftLeft0~26_combout\,
	datab => \a6|ShiftLeft0~45_combout\,
	datac => \a6|out[17]~105_combout\,
	datad => \a6|out~158_combout\,
	combout => \a6|out~159_combout\);

-- Location: LCCOMB_X29_Y19_N14
\a6|out~160\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|out~160_combout\ = (\a5|out\(1) & (((\a6|out~159_combout\ & \a6|out~110_combout\)) # (!\a5|out\(32)))) # (!\a5|out\(1) & (((\a6|out~159_combout\ & \a6|out~110_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a5|out\(1),
	datab => \a5|out\(32),
	datac => \a6|out~159_combout\,
	datad => \a6|out~110_combout\,
	combout => \a6|out~160_combout\);

-- Location: FF_X29_Y19_N15
\a6|out[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \a6|out~160_combout\,
	ena => \a6|out[2]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a6|out\(17));

-- Location: LCCOMB_X30_Y18_N2
\a6|ShiftRight0~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|ShiftRight0~25_combout\ = (\a6|Add47~2_combout\ & (\a5|out\(18) & ((!\a6|Add47~0_combout\)))) # (!\a6|Add47~2_combout\ & ((\a6|Add47~0_combout\ & (\a5|out\(18))) # (!\a6|Add47~0_combout\ & ((\a5|out\(16))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a6|Add47~2_combout\,
	datab => \a5|out\(18),
	datac => \a5|out\(16),
	datad => \a6|Add47~0_combout\,
	combout => \a6|ShiftRight0~25_combout\);

-- Location: LCCOMB_X30_Y18_N8
\a6|ShiftRight0~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|ShiftRight0~35_combout\ = (!\a6|Add47~2_combout\ & !\a6|Add47~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \a6|Add47~2_combout\,
	datad => \a6|Add47~0_combout\,
	combout => \a6|ShiftRight0~35_combout\);

-- Location: LCCOMB_X30_Y18_N22
\a6|out~161\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|out~161_combout\ = (\a6|Add47~6_combout\ & (\a5|out\(32) & ((\a6|ShiftRight0~35_combout\)))) # (!\a6|Add47~6_combout\ & (((\a6|ShiftRight0~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a5|out\(32),
	datab => \a6|ShiftRight0~25_combout\,
	datac => \a6|Add47~6_combout\,
	datad => \a6|ShiftRight0~35_combout\,
	combout => \a6|out~161_combout\);

-- Location: LCCOMB_X30_Y20_N28
\a6|out~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|out~56_combout\ = (!\a6|Add47~10_combout\ & (!\a6|Add47~8_combout\ & !\a6|Add47~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a6|Add47~10_combout\,
	datac => \a6|Add47~8_combout\,
	datad => \a6|Add47~12_combout\,
	combout => \a6|out~56_combout\);

-- Location: LCCOMB_X30_Y19_N26
\a6|out~162\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|out~162_combout\ = (!\a6|Add47~4_combout\ & (!\a6|Add43~8_combout\ & (\a6|out~161_combout\ & \a6|out~56_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a6|Add47~4_combout\,
	datab => \a6|Add43~8_combout\,
	datac => \a6|out~161_combout\,
	datad => \a6|out~56_combout\,
	combout => \a6|out~162_combout\);

-- Location: LCCOMB_X30_Y20_N30
\a6|out~115\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|out~115_combout\ = (\a6|Add47~12_combout\ & \a6|out~76_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a6|Add47~12_combout\,
	datac => \a6|out~76_combout\,
	combout => \a6|out~115_combout\);

-- Location: LCCOMB_X30_Y19_N24
\a6|out~164\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|out~164_combout\ = (\a6|Add48~2_combout\ & (((\a5|out\(4) & !\a6|Add47~0_combout\)))) # (!\a6|Add48~2_combout\ & (\a5|out\(6) & ((\a6|Add47~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a5|out\(6),
	datab => \a5|out\(4),
	datac => \a6|Add48~2_combout\,
	datad => \a6|Add47~0_combout\,
	combout => \a6|out~164_combout\);

-- Location: LCCOMB_X30_Y19_N4
\a6|out~165\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|out~165_combout\ = (\a6|out~164_combout\) # ((\a5|out\(2) & (\a6|Add47~0_combout\ $ (!\a6|Add48~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a6|Add47~0_combout\,
	datab => \a5|out\(2),
	datac => \a6|Add48~2_combout\,
	datad => \a6|out~164_combout\,
	combout => \a6|out~165_combout\);

-- Location: LCCOMB_X29_Y18_N8
\a6|ShiftLeft0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|ShiftLeft0~14_combout\ = (!\a6|Add48~2_combout\ & !\a6|Add47~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \a6|Add48~2_combout\,
	datad => \a6|Add47~0_combout\,
	combout => \a6|ShiftLeft0~14_combout\);

-- Location: LCCOMB_X30_Y19_N18
\a6|ShiftLeft0~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|ShiftLeft0~38_combout\ = (\a6|Add47~0_combout\ & ((\a5|out\(2)))) # (!\a6|Add47~0_combout\ & (\a5|out\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a5|out\(13),
	datac => \a5|out\(2),
	datad => \a6|Add47~0_combout\,
	combout => \a6|ShiftLeft0~38_combout\);

-- Location: LCCOMB_X30_Y19_N0
\a6|ShiftLeft0~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|ShiftLeft0~40_combout\ = (\a6|Add48~2_combout\ & ((\a6|ShiftLeft0~38_combout\))) # (!\a6|Add48~2_combout\ & (\a6|ShiftLeft0~39_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a6|ShiftLeft0~39_combout\,
	datac => \a6|Add48~2_combout\,
	datad => \a6|ShiftLeft0~38_combout\,
	combout => \a6|ShiftLeft0~40_combout\);

-- Location: LCCOMB_X30_Y19_N16
\a6|out~163\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|out~163_combout\ = (\a6|Add48~6_combout\ & (\a5|out\(2) & (\a6|ShiftLeft0~14_combout\))) # (!\a6|Add48~6_combout\ & (((\a6|ShiftLeft0~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a6|Add48~6_combout\,
	datab => \a5|out\(2),
	datac => \a6|ShiftLeft0~14_combout\,
	datad => \a6|ShiftLeft0~40_combout\,
	combout => \a6|out~163_combout\);

-- Location: LCCOMB_X30_Y19_N28
\a6|out~166\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|out~166_combout\ = (\a6|Add48~4_combout\ & (\a6|out~165_combout\ & (!\a6|Add48~6_combout\))) # (!\a6|Add48~4_combout\ & (((\a6|out~163_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a6|Add48~4_combout\,
	datab => \a6|out~165_combout\,
	datac => \a6|Add48~6_combout\,
	datad => \a6|out~163_combout\,
	combout => \a6|out~166_combout\);

-- Location: LCCOMB_X30_Y19_N12
\a6|out~167\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|out~167_combout\ = (\a6|Add43~8_combout\ & (\a6|out\(16))) # (!\a6|Add43~8_combout\ & (((\a6|out~115_combout\ & \a6|out~166_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a6|out\(16),
	datab => \a6|Add43~8_combout\,
	datac => \a6|out~115_combout\,
	datad => \a6|out~166_combout\,
	combout => \a6|out~167_combout\);

-- Location: LCCOMB_X30_Y19_N2
\a6|out~168\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|out~168_combout\ = (\a6|out~162_combout\) # ((\a6|LessThan5~0_combout\ & (\a5|out\(32))) # (!\a6|LessThan5~0_combout\ & ((\a6|out~167_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a5|out\(32),
	datab => \a6|LessThan5~0_combout\,
	datac => \a6|out~162_combout\,
	datad => \a6|out~167_combout\,
	combout => \a6|out~168_combout\);

-- Location: LCCOMB_X30_Y19_N22
\a6|out[16]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|out[16]~feeder_combout\ = \a6|out~168_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \a6|out~168_combout\,
	combout => \a6|out[16]~feeder_combout\);

-- Location: FF_X30_Y19_N23
\a6|out[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \a6|out[16]~feeder_combout\,
	asdata => \a5|out\(2),
	sload => \a5|ALT_INV_out\(32),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a6|out\(16));

-- Location: LCCOMB_X29_Y19_N20
\sq2|Add14~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sq2|Add14~0_combout\ = (\a6|out\(15) & ((\a6|out\(17)) # (\a6|out\(16)))) # (!\a6|out\(15) & (\a6|out\(17) & \a6|out\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a6|out\(15),
	datac => \a6|out\(17),
	datad => \a6|out\(16),
	combout => \sq2|Add14~0_combout\);

-- Location: LCCOMB_X29_Y17_N20
\sq2|Add18~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sq2|Add18~2_combout\ = \a6|out\(20) $ (\a6|out\(18) $ (\a6|out\(21) $ (\a6|out\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a6|out\(20),
	datab => \a6|out\(18),
	datac => \a6|out\(21),
	datad => \a6|out\(19),
	combout => \sq2|Add18~2_combout\);

-- Location: LCCOMB_X29_Y19_N12
\sq2|Add14~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sq2|Add14~1_combout\ = \a6|out\(15) $ (\a6|out\(17) $ (\a6|out\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a6|out\(15),
	datac => \a6|out\(17),
	datad => \a6|out\(16),
	combout => \sq2|Add14~1_combout\);

-- Location: LCCOMB_X30_Y15_N20
\sq2|Add16~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sq2|Add16~0_combout\ = (\sq2|Add18~2_combout\ & (\sq2|Add14~1_combout\ $ (VCC))) # (!\sq2|Add18~2_combout\ & (\sq2|Add14~1_combout\ & VCC))
-- \sq2|Add16~1\ = CARRY((\sq2|Add18~2_combout\ & \sq2|Add14~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sq2|Add18~2_combout\,
	datab => \sq2|Add14~1_combout\,
	datad => VCC,
	combout => \sq2|Add16~0_combout\,
	cout => \sq2|Add16~1\);

-- Location: LCCOMB_X30_Y15_N22
\sq2|Add16~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sq2|Add16~2_combout\ = (\sq2|Add18~1_combout\ & ((\sq2|Add14~0_combout\ & (\sq2|Add16~1\ & VCC)) # (!\sq2|Add14~0_combout\ & (!\sq2|Add16~1\)))) # (!\sq2|Add18~1_combout\ & ((\sq2|Add14~0_combout\ & (!\sq2|Add16~1\)) # (!\sq2|Add14~0_combout\ & 
-- ((\sq2|Add16~1\) # (GND)))))
-- \sq2|Add16~3\ = CARRY((\sq2|Add18~1_combout\ & (!\sq2|Add14~0_combout\ & !\sq2|Add16~1\)) # (!\sq2|Add18~1_combout\ & ((!\sq2|Add16~1\) # (!\sq2|Add14~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sq2|Add18~1_combout\,
	datab => \sq2|Add14~0_combout\,
	datad => VCC,
	cin => \sq2|Add16~1\,
	combout => \sq2|Add16~2_combout\,
	cout => \sq2|Add16~3\);

-- Location: LCCOMB_X30_Y15_N24
\sq2|Add16~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sq2|Add16~4_combout\ = (\sq2|Add18~0_combout\ & (\sq2|Add16~3\ $ (GND))) # (!\sq2|Add18~0_combout\ & (!\sq2|Add16~3\ & VCC))
-- \sq2|Add16~5\ = CARRY((\sq2|Add18~0_combout\ & !\sq2|Add16~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sq2|Add18~0_combout\,
	datad => VCC,
	cin => \sq2|Add16~3\,
	combout => \sq2|Add16~4_combout\,
	cout => \sq2|Add16~5\);

-- Location: LCCOMB_X30_Y15_N26
\sq2|Add16~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sq2|Add16~6_combout\ = \sq2|Add16~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \sq2|Add16~5\,
	combout => \sq2|Add16~6_combout\);

-- Location: LCCOMB_X30_Y16_N20
\a6|ShiftLeft0~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|ShiftLeft0~36_combout\ = (!\a6|Add48~4_combout\ & ((\a6|Add48~2_combout\ & (\a5|out\(2))) # (!\a6|Add48~2_combout\ & ((\a6|ShiftLeft0~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a6|Add48~2_combout\,
	datab => \a6|Add48~4_combout\,
	datac => \a5|out\(2),
	datad => \a6|ShiftLeft0~10_combout\,
	combout => \a6|ShiftLeft0~36_combout\);

-- Location: LCCOMB_X30_Y18_N6
\a6|ShiftLeft0~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|ShiftLeft0~34_combout\ = (\a6|Add48~2_combout\ & (\a5|out\(2))) # (!\a6|Add48~2_combout\ & ((\a6|ShiftLeft0~31_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a5|out\(2),
	datac => \a6|Add48~2_combout\,
	datad => \a6|ShiftLeft0~31_combout\,
	combout => \a6|ShiftLeft0~34_combout\);

-- Location: LCCOMB_X30_Y18_N24
\a6|ShiftRight0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|ShiftRight0~7_combout\ = (\a5|out\(32) & (\a6|Add47~4_combout\ & (!\a6|Add47~2_combout\ & \a6|Add47~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a5|out\(32),
	datab => \a6|Add47~4_combout\,
	datac => \a6|Add47~2_combout\,
	datad => \a6|Add47~0_combout\,
	combout => \a6|ShiftRight0~7_combout\);

-- Location: LCCOMB_X30_Y16_N16
\a6|ShiftLeft0~47\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|ShiftLeft0~47_combout\ = (\a6|Add48~2_combout\ & ((\a6|Add47~0_combout\ & ((\a5|out\(16)))) # (!\a6|Add47~0_combout\ & (\a5|out\(18))))) # (!\a6|Add48~2_combout\ & (\a5|out\(18) & ((\a6|Add47~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a6|Add48~2_combout\,
	datab => \a5|out\(18),
	datac => \a5|out\(16),
	datad => \a6|Add47~0_combout\,
	combout => \a6|ShiftLeft0~47_combout\);

-- Location: LCCOMB_X29_Y16_N2
\a6|out~107\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|out~107_combout\ = (\a6|out[17]~105_combout\ & (((\a6|out[17]~106_combout\)))) # (!\a6|out[17]~105_combout\ & ((\a6|out[17]~106_combout\ & (\a6|ShiftRight0~7_combout\)) # (!\a6|out[17]~106_combout\ & ((\a6|ShiftLeft0~47_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a6|ShiftRight0~7_combout\,
	datab => \a6|ShiftLeft0~47_combout\,
	datac => \a6|out[17]~105_combout\,
	datad => \a6|out[17]~106_combout\,
	combout => \a6|out~107_combout\);

-- Location: LCCOMB_X29_Y16_N22
\a6|out~108\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|out~108_combout\ = (\a6|out[17]~105_combout\ & ((\a6|out~107_combout\ & (\a6|ShiftLeft0~36_combout\)) # (!\a6|out~107_combout\ & ((\a6|ShiftLeft0~34_combout\))))) # (!\a6|out[17]~105_combout\ & (((\a6|out~107_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a6|ShiftLeft0~36_combout\,
	datab => \a6|ShiftLeft0~34_combout\,
	datac => \a6|out[17]~105_combout\,
	datad => \a6|out~107_combout\,
	combout => \a6|out~108_combout\);

-- Location: LCCOMB_X29_Y16_N20
\a6|out~111\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|out~111_combout\ = (\a5|out\(32) & (((\a6|out~108_combout\ & \a6|out~110_combout\)))) # (!\a5|out\(32) & ((\a5|out\(6)) # ((\a6|out~108_combout\ & \a6|out~110_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a5|out\(32),
	datab => \a5|out\(6),
	datac => \a6|out~108_combout\,
	datad => \a6|out~110_combout\,
	combout => \a6|out~111_combout\);

-- Location: FF_X29_Y16_N21
\a6|out[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \a6|out~111_combout\,
	ena => \a6|out[2]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a6|out\(22));

-- Location: LCCOMB_X31_Y18_N4
\a6|out~112\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|out~112_combout\ = (\a5|out\(2) & !\a5|out\(32))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a5|out\(2),
	datad => \a5|out\(32),
	combout => \a6|out~112_combout\);

-- Location: LCCOMB_X29_Y16_N24
\a6|out[26]~119\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|out[26]~119_combout\ = (\a6|Add48~6_combout\) # ((\a6|Add48~2_combout\ & !\a6|Add48~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a6|Add48~2_combout\,
	datac => \a6|Add48~4_combout\,
	datad => \a6|Add48~6_combout\,
	combout => \a6|out[26]~119_combout\);

-- Location: LCCOMB_X30_Y16_N28
\a6|out[26]~118\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|out[26]~118_combout\ = (\a6|Add48~4_combout\) # (\a6|Add48~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \a6|Add48~4_combout\,
	datad => \a6|Add48~6_combout\,
	combout => \a6|out[26]~118_combout\);

-- Location: LCCOMB_X29_Y18_N2
\a6|ShiftLeft0~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|ShiftLeft0~27_combout\ = (\a6|Add48~4_combout\ & (((\a6|ShiftLeft0~14_combout\ & \a5|out\(1))))) # (!\a6|Add48~4_combout\ & (\a6|ShiftLeft0~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a6|Add48~4_combout\,
	datab => \a6|ShiftLeft0~26_combout\,
	datac => \a6|ShiftLeft0~14_combout\,
	datad => \a5|out\(1),
	combout => \a6|ShiftLeft0~27_combout\);

-- Location: LCCOMB_X29_Y16_N28
\a6|out~123\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|out~123_combout\ = (\a6|out[26]~119_combout\ & (!\a6|out[26]~118_combout\ & (\a5|out\(18)))) # (!\a6|out[26]~119_combout\ & (\a6|out[26]~118_combout\ & ((\a6|ShiftLeft0~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a6|out[26]~119_combout\,
	datab => \a6|out[26]~118_combout\,
	datac => \a5|out\(18),
	datad => \a6|ShiftLeft0~41_combout\,
	combout => \a6|out~123_combout\);

-- Location: LCCOMB_X29_Y16_N4
\a6|out~124\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|out~124_combout\ = (\a6|out~123_combout\) # ((\a6|out[26]~119_combout\ & (\a6|out[26]~118_combout\ & \a6|ShiftLeft0~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a6|out[26]~119_combout\,
	datab => \a6|out[26]~118_combout\,
	datac => \a6|ShiftLeft0~27_combout\,
	datad => \a6|out~123_combout\,
	combout => \a6|out~124_combout\);

-- Location: LCCOMB_X30_Y20_N4
\a6|out~116\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|out~116_combout\ = (\a6|out[5]~40_combout\ & ((\a6|out~115_combout\) # ((\a6|out~56_combout\ & !\a6|Add47~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a6|out~56_combout\,
	datab => \a6|Add47~6_combout\,
	datac => \a6|out~115_combout\,
	datad => \a6|out[5]~40_combout\,
	combout => \a6|out~116_combout\);

-- Location: LCCOMB_X29_Y16_N8
\a6|out~125\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|out~125_combout\ = (\a6|out~112_combout\) # ((\a6|Add47~12_combout\ & (\a6|out~124_combout\ & \a6|out~116_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a6|out~112_combout\,
	datab => \a6|Add47~12_combout\,
	datac => \a6|out~124_combout\,
	datad => \a6|out~116_combout\,
	combout => \a6|out~125_combout\);

-- Location: FF_X29_Y16_N9
\a6|out[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \a6|out~125_combout\,
	ena => \a6|out[2]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a6|out\(25));

-- Location: LCCOMB_X30_Y16_N10
\a6|ShiftLeft0~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|ShiftLeft0~37_combout\ = (\a5|out\(18) & ((\a6|Add48~2_combout\) # (\a6|Add47~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a6|Add48~2_combout\,
	datab => \a5|out\(18),
	datad => \a6|Add47~0_combout\,
	combout => \a6|ShiftLeft0~37_combout\);

-- Location: LCCOMB_X29_Y16_N18
\a6|out~113\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|out~113_combout\ = (\a6|out[17]~105_combout\ & ((\a6|ShiftLeft0~5_combout\) # ((\a6|out[17]~106_combout\)))) # (!\a6|out[17]~105_combout\ & (((\a6|ShiftLeft0~37_combout\ & !\a6|out[17]~106_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a6|ShiftLeft0~5_combout\,
	datab => \a6|ShiftLeft0~37_combout\,
	datac => \a6|out[17]~105_combout\,
	datad => \a6|out[17]~106_combout\,
	combout => \a6|out~113_combout\);

-- Location: LCCOMB_X29_Y16_N26
\a6|out~114\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|out~114_combout\ = (\a6|out~113_combout\ & (((\a6|ShiftLeft0~9_combout\ & !\a6|Add48~4_combout\)) # (!\a6|out[17]~106_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a6|ShiftLeft0~9_combout\,
	datab => \a6|out[17]~106_combout\,
	datac => \a6|Add48~4_combout\,
	datad => \a6|out~113_combout\,
	combout => \a6|out~114_combout\);

-- Location: LCCOMB_X29_Y16_N12
\a6|out~181\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|out~181_combout\ = (\a5|out\(32) & (((\a6|out~114_combout\ & \a6|out~110_combout\)))) # (!\a5|out\(32) & ((\a5|out\(2)) # ((\a6|out~114_combout\ & \a6|out~110_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a5|out\(32),
	datab => \a5|out\(2),
	datac => \a6|out~114_combout\,
	datad => \a6|out~110_combout\,
	combout => \a6|out~181_combout\);

-- Location: FF_X29_Y16_N13
\a6|out[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \a6|out~181_combout\,
	ena => \a6|out[2]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a6|out\(23));

-- Location: LCCOMB_X29_Y16_N10
\a6|out~120\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|out~120_combout\ = (\a6|out[26]~118_combout\ & (((\a6|ShiftLeft0~40_combout\ & !\a6|out[26]~119_combout\)))) # (!\a6|out[26]~118_combout\ & (\a5|out\(18) & ((\a6|out[26]~119_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a5|out\(18),
	datab => \a6|out[26]~118_combout\,
	datac => \a6|ShiftLeft0~40_combout\,
	datad => \a6|out[26]~119_combout\,
	combout => \a6|out~120_combout\);

-- Location: LCCOMB_X28_Y19_N24
\a6|ShiftLeft0~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|ShiftLeft0~28_combout\ = (\a6|Add48~2_combout\ & (((\a5|out\(4) & !\a6|Add48~4_combout\)))) # (!\a6|Add48~2_combout\ & (\a5|out\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a5|out\(2),
	datab => \a6|Add48~2_combout\,
	datac => \a5|out\(4),
	datad => \a6|Add48~4_combout\,
	combout => \a6|ShiftLeft0~28_combout\);

-- Location: LCCOMB_X28_Y19_N26
\a6|ShiftLeft0~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|ShiftLeft0~29_combout\ = (\a6|Add47~0_combout\ & ((\a6|Add48~2_combout\ & ((\a5|out\(2)))) # (!\a6|Add48~2_combout\ & (\a5|out\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a6|Add47~0_combout\,
	datab => \a5|out\(6),
	datac => \a5|out\(2),
	datad => \a6|Add48~2_combout\,
	combout => \a6|ShiftLeft0~29_combout\);

-- Location: LCCOMB_X28_Y19_N4
\a6|ShiftLeft0~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|ShiftLeft0~30_combout\ = (\a6|Add47~0_combout\ & (((\a6|ShiftLeft0~29_combout\ & !\a6|Add48~4_combout\)))) # (!\a6|Add47~0_combout\ & ((\a6|ShiftLeft0~28_combout\) # ((\a6|ShiftLeft0~29_combout\ & !\a6|Add48~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a6|Add47~0_combout\,
	datab => \a6|ShiftLeft0~28_combout\,
	datac => \a6|ShiftLeft0~29_combout\,
	datad => \a6|Add48~4_combout\,
	combout => \a6|ShiftLeft0~30_combout\);

-- Location: LCCOMB_X29_Y16_N14
\a6|out~121\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|out~121_combout\ = (\a6|out~120_combout\) # ((\a6|out[26]~118_combout\ & (\a6|out[26]~119_combout\ & \a6|ShiftLeft0~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a6|out~120_combout\,
	datab => \a6|out[26]~118_combout\,
	datac => \a6|out[26]~119_combout\,
	datad => \a6|ShiftLeft0~30_combout\,
	combout => \a6|out~121_combout\);

-- Location: LCCOMB_X30_Y16_N18
\a6|ShiftRight0~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|ShiftRight0~31_combout\ = (!\a6|Add47~0_combout\ & (\a6|Add47~4_combout\ & (!\a6|Add47~2_combout\ & \a5|out\(32))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a6|Add47~0_combout\,
	datab => \a6|Add47~4_combout\,
	datac => \a6|Add47~2_combout\,
	datad => \a5|out\(32),
	combout => \a6|ShiftRight0~31_combout\);

-- Location: LCCOMB_X29_Y16_N6
\a6|out~117\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|out~117_combout\ = (\a6|out~112_combout\) # ((!\a6|Add47~12_combout\ & (\a6|ShiftRight0~31_combout\ & \a6|out~116_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a6|out~112_combout\,
	datab => \a6|Add47~12_combout\,
	datac => \a6|ShiftRight0~31_combout\,
	datad => \a6|out~116_combout\,
	combout => \a6|out~117_combout\);

-- Location: LCCOMB_X29_Y16_N0
\a6|out~122\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|out~122_combout\ = (\a6|out~117_combout\) # ((\a6|out~116_combout\ & (\a6|Add47~12_combout\ & \a6|out~121_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a6|out~116_combout\,
	datab => \a6|Add47~12_combout\,
	datac => \a6|out~121_combout\,
	datad => \a6|out~117_combout\,
	combout => \a6|out~122_combout\);

-- Location: FF_X29_Y16_N1
\a6|out[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \a6|out~122_combout\,
	ena => \a6|out[2]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a6|out\(24));

-- Location: LCCOMB_X30_Y15_N28
\sq2|Add22~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sq2|Add22~0_combout\ = (\a6|out\(22) & (\a6|out\(25) & (\a6|out\(23) & \a6|out\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a6|out\(22),
	datab => \a6|out\(25),
	datac => \a6|out\(23),
	datad => \a6|out\(24),
	combout => \sq2|Add22~0_combout\);

-- Location: LCCOMB_X28_Y19_N18
\a6|ShiftLeft0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|ShiftLeft0~16_combout\ = (\a6|Add48~4_combout\ & (\a6|ShiftLeft0~8_combout\ & (!\a6|Add48~2_combout\))) # (!\a6|Add48~4_combout\ & (((\a6|ShiftLeft0~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a6|ShiftLeft0~8_combout\,
	datab => \a6|Add48~2_combout\,
	datac => \a6|ShiftLeft0~15_combout\,
	datad => \a6|Add48~4_combout\,
	combout => \a6|ShiftLeft0~16_combout\);

-- Location: LCCOMB_X31_Y15_N26
\a6|out~131\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|out~131_combout\ = (\a6|out[26]~118_combout\ & ((\a6|out[26]~119_combout\ & ((\a6|ShiftLeft0~16_combout\))) # (!\a6|out[26]~119_combout\ & (\a6|ShiftLeft0~48_combout\)))) # (!\a6|out[26]~118_combout\ & (((\a6|out[26]~119_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a6|ShiftLeft0~48_combout\,
	datab => \a6|ShiftLeft0~16_combout\,
	datac => \a6|out[26]~118_combout\,
	datad => \a6|out[26]~119_combout\,
	combout => \a6|out~131_combout\);

-- Location: LCCOMB_X30_Y18_N14
\a6|ShiftRight0~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|ShiftRight0~34_combout\ = (\a5|out\(18) & \a6|Add47~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \a5|out\(18),
	datad => \a6|Add47~0_combout\,
	combout => \a6|ShiftRight0~34_combout\);

-- Location: LCCOMB_X31_Y15_N20
\a6|out~130\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|out~130_combout\ = (\a6|Add47~12_combout\ & (\a6|out~116_combout\ & ((\a6|ShiftRight0~34_combout\) # (\a6|out[26]~118_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a6|ShiftRight0~34_combout\,
	datab => \a6|Add47~12_combout\,
	datac => \a6|out[26]~118_combout\,
	datad => \a6|out~116_combout\,
	combout => \a6|out~130_combout\);

-- Location: LCCOMB_X31_Y15_N22
\a6|out~132\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|out~132_combout\ = (\a5|out\(32) & (((\a6|out~131_combout\ & \a6|out~130_combout\)))) # (!\a5|out\(32) & ((\a5|out\(11)) # ((\a6|out~131_combout\ & \a6|out~130_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a5|out\(32),
	datab => \a5|out\(11),
	datac => \a6|out~131_combout\,
	datad => \a6|out~130_combout\,
	combout => \a6|out~132_combout\);

-- Location: FF_X31_Y15_N23
\a6|out[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \a6|out~132_combout\,
	ena => \a6|out[2]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a6|out\(27));

-- Location: LCCOMB_X30_Y17_N12
\a6|out[28]~133\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|out[28]~133_combout\ = ((!\a6|LessThan5~0_combout\ & (\a6|Add48~6_combout\ & \a6|Add47~12_combout\))) # (!\a5|out\(32))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a6|LessThan5~0_combout\,
	datab => \a5|out\(32),
	datac => \a6|Add48~6_combout\,
	datad => \a6|Add47~12_combout\,
	combout => \a6|out[28]~133_combout\);

-- Location: LCCOMB_X30_Y18_N16
\a6|ShiftLeft0~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|ShiftLeft0~20_combout\ = (\a6|Add48~4_combout\ & ((\a6|ShiftLeft0~12_combout\))) # (!\a6|Add48~4_combout\ & (\a6|ShiftLeft0~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a6|Add48~4_combout\,
	datac => \a6|ShiftLeft0~19_combout\,
	datad => \a6|ShiftLeft0~12_combout\,
	combout => \a6|ShiftLeft0~20_combout\);

-- Location: LCCOMB_X30_Y19_N6
\a6|out~141\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|out~141_combout\ = (\a5|out\(18) & \a6|Add48~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a5|out\(18),
	datac => \a6|Add48~4_combout\,
	combout => \a6|out~141_combout\);

-- Location: LCCOMB_X30_Y19_N20
\a6|out~142\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|out~142_combout\ = (\a6|Add47~12_combout\ & (\a6|out[5]~40_combout\ & ((\a6|Add48~6_combout\) # (\a6|out~141_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a6|Add47~12_combout\,
	datab => \a6|out[5]~40_combout\,
	datac => \a6|Add48~6_combout\,
	datad => \a6|out~141_combout\,
	combout => \a6|out~142_combout\);

-- Location: LCCOMB_X31_Y15_N28
\a6|out~143\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|out~143_combout\ = (\a6|out[28]~133_combout\ & ((\a6|out~142_combout\ & (\a6|ShiftLeft0~20_combout\)) # (!\a6|out~142_combout\ & ((\a5|out\(13)))))) # (!\a6|out[28]~133_combout\ & (((\a6|out~142_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a6|out[28]~133_combout\,
	datab => \a6|ShiftLeft0~20_combout\,
	datac => \a5|out\(13),
	datad => \a6|out~142_combout\,
	combout => \a6|out~143_combout\);

-- Location: LCCOMB_X30_Y20_N6
\a6|out[28]~134\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|out[28]~134_combout\ = (\a6|LessThan5~0_combout\ & (((!\a6|Add47~12_combout\)) # (!\a6|out[5]~40_combout\))) # (!\a6|LessThan5~0_combout\ & (!\a6|out[15]~72_combout\ & ((!\a6|Add47~12_combout\) # (!\a6|out[5]~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a6|LessThan5~0_combout\,
	datab => \a6|out[5]~40_combout\,
	datac => \a6|out[15]~72_combout\,
	datad => \a6|Add47~12_combout\,
	combout => \a6|out[28]~134_combout\);

-- Location: LCCOMB_X30_Y17_N14
\a6|out[28]~135\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|out[28]~135_combout\ = (\a5|out\(32) & (\a6|Add47~12_combout\ & ((\a6|out[2]~17_combout\) # (!\a6|Add43~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a6|out[2]~17_combout\,
	datab => \a5|out\(32),
	datac => \a6|Add43~8_combout\,
	datad => \a6|Add47~12_combout\,
	combout => \a6|out[28]~135_combout\);

-- Location: LCCOMB_X31_Y15_N14
\a6|out[28]~136\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|out[28]~136_combout\ = (\a6|out[28]~133_combout\ & (((\a6|out~76_combout\) # (!\a6|out[28]~135_combout\)))) # (!\a6|out[28]~133_combout\ & (\a6|out[28]~134_combout\ $ (((\a6|out~76_combout\) # (!\a6|out[28]~135_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101101001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a6|out[28]~133_combout\,
	datab => \a6|out[28]~134_combout\,
	datac => \a6|out[28]~135_combout\,
	datad => \a6|out~76_combout\,
	combout => \a6|out[28]~136_combout\);

-- Location: LCCOMB_X31_Y15_N8
\a6|out~144\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|out~144_combout\ = (\a6|out~143_combout\ & \a6|out[28]~136_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a6|out~143_combout\,
	datac => \a6|out[28]~136_combout\,
	combout => \a6|out~144_combout\);

-- Location: FF_X31_Y15_N9
\a6|out[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \a6|out~144_combout\,
	ena => \a6|out[2]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a6|out\(29));

-- Location: LCCOMB_X30_Y17_N28
\a6|ShiftLeft0~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|ShiftLeft0~17_combout\ = (\a6|Add48~2_combout\ & (((!\a6|Add48~4_combout\ & \a6|ShiftLeft0~10_combout\)))) # (!\a6|Add48~2_combout\ & (\a5|out\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a5|out\(2),
	datab => \a6|Add48~4_combout\,
	datac => \a6|ShiftLeft0~10_combout\,
	datad => \a6|Add48~2_combout\,
	combout => \a6|ShiftLeft0~17_combout\);

-- Location: LCCOMB_X31_Y15_N18
\a6|out~127\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|out~127_combout\ = (\a6|out[26]~118_combout\ & ((\a6|out[26]~119_combout\ & (\a6|ShiftLeft0~17_combout\)) # (!\a6|out[26]~119_combout\ & ((\a6|ShiftLeft0~42_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a6|ShiftLeft0~17_combout\,
	datab => \a6|ShiftLeft0~42_combout\,
	datac => \a6|out[26]~118_combout\,
	datad => \a6|out[26]~119_combout\,
	combout => \a6|out~127_combout\);

-- Location: LCCOMB_X31_Y15_N6
\a6|out~128\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|out~128_combout\ = (\a6|out~127_combout\) # ((\a6|ShiftRight0~34_combout\ & (\a6|out[26]~119_combout\ & !\a6|out[26]~118_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a6|ShiftRight0~34_combout\,
	datab => \a6|out[26]~119_combout\,
	datac => \a6|out[26]~118_combout\,
	datad => \a6|out~127_combout\,
	combout => \a6|out~128_combout\);

-- Location: LCCOMB_X30_Y20_N22
\a6|ShiftRight0~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|ShiftRight0~27_combout\ = (\a5|out\(32) & (!\a6|Add47~4_combout\ & (\a6|Add47~2_combout\ & \a6|Add47~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a5|out\(32),
	datab => \a6|Add47~4_combout\,
	datac => \a6|Add47~2_combout\,
	datad => \a6|Add47~0_combout\,
	combout => \a6|ShiftRight0~27_combout\);

-- Location: LCCOMB_X31_Y15_N0
\a6|out~126\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|out~126_combout\ = (\a6|out~112_combout\) # ((!\a6|Add47~12_combout\ & (\a6|ShiftRight0~27_combout\ & \a6|out~116_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a6|out~112_combout\,
	datab => \a6|Add47~12_combout\,
	datac => \a6|ShiftRight0~27_combout\,
	datad => \a6|out~116_combout\,
	combout => \a6|out~126_combout\);

-- Location: LCCOMB_X31_Y15_N4
\a6|out~129\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|out~129_combout\ = (\a6|out~126_combout\) # ((\a6|out~128_combout\ & (\a6|Add47~12_combout\ & \a6|out~116_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a6|out~128_combout\,
	datab => \a6|Add47~12_combout\,
	datac => \a6|out~116_combout\,
	datad => \a6|out~126_combout\,
	combout => \a6|out~129_combout\);

-- Location: FF_X31_Y15_N5
\a6|out[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \a6|out~129_combout\,
	ena => \a6|out[2]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a6|out\(26));

-- Location: LCCOMB_X28_Y19_N30
\a6|ShiftLeft0~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|ShiftLeft0~23_combout\ = (!\a6|Add47~0_combout\ & (!\a6|Add48~2_combout\ & (\a5|out\(4) & \a6|Add48~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a6|Add47~0_combout\,
	datab => \a6|Add48~2_combout\,
	datac => \a5|out\(4),
	datad => \a6|Add48~4_combout\,
	combout => \a6|ShiftLeft0~23_combout\);

-- Location: LCCOMB_X28_Y19_N14
\a6|ShiftLeft0~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|ShiftLeft0~25_combout\ = (\a6|ShiftLeft0~22_combout\) # ((\a6|ShiftLeft0~23_combout\) # ((!\a6|Add48~4_combout\ & \a6|ShiftLeft0~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a6|ShiftLeft0~22_combout\,
	datab => \a6|Add48~4_combout\,
	datac => \a6|ShiftLeft0~23_combout\,
	datad => \a6|ShiftLeft0~24_combout\,
	combout => \a6|ShiftLeft0~25_combout\);

-- Location: LCCOMB_X31_Y18_N12
\a6|ShiftRight0~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|ShiftRight0~29_combout\ = (!\a6|Add47~4_combout\ & (\a5|out\(32) & (\a6|Add47~2_combout\ & !\a6|Add47~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a6|Add47~4_combout\,
	datab => \a5|out\(32),
	datac => \a6|Add47~2_combout\,
	datad => \a6|Add47~0_combout\,
	combout => \a6|ShiftRight0~29_combout\);

-- Location: LCCOMB_X30_Y18_N28
\a6|out~137\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|out~137_combout\ = (\a6|Add48~4_combout\ & ((\a6|Add48~2_combout\ & (\a6|ShiftLeft0~39_combout\)) # (!\a6|Add48~2_combout\ & ((\a5|out\(18))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a6|ShiftLeft0~39_combout\,
	datab => \a5|out\(18),
	datac => \a6|Add48~2_combout\,
	datad => \a6|Add48~4_combout\,
	combout => \a6|out~137_combout\);

-- Location: LCCOMB_X31_Y15_N2
\a6|out~138\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|out~138_combout\ = (\a6|out[28]~133_combout\ & (((\a6|out[28]~135_combout\)))) # (!\a6|out[28]~133_combout\ & ((\a6|out[28]~135_combout\ & ((\a6|out~137_combout\))) # (!\a6|out[28]~135_combout\ & (\a6|ShiftRight0~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a6|out[28]~133_combout\,
	datab => \a6|ShiftRight0~29_combout\,
	datac => \a6|out[28]~135_combout\,
	datad => \a6|out~137_combout\,
	combout => \a6|out~138_combout\);

-- Location: LCCOMB_X31_Y15_N16
\a6|out~139\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|out~139_combout\ = (\a6|out[28]~133_combout\ & ((\a6|out~138_combout\ & ((\a6|ShiftLeft0~25_combout\))) # (!\a6|out~138_combout\ & (\a5|out\(13))))) # (!\a6|out[28]~133_combout\ & (((\a6|out~138_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a5|out\(13),
	datab => \a6|ShiftLeft0~25_combout\,
	datac => \a6|out[28]~133_combout\,
	datad => \a6|out~138_combout\,
	combout => \a6|out~139_combout\);

-- Location: LCCOMB_X31_Y15_N24
\a6|out~140\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|out~140_combout\ = (\a6|out[28]~136_combout\ & \a6|out~139_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \a6|out[28]~136_combout\,
	datad => \a6|out~139_combout\,
	combout => \a6|out~140_combout\);

-- Location: FF_X31_Y15_N25
\a6|out[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \a6|out~140_combout\,
	ena => \a6|out[2]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a6|out\(28));

-- Location: LCCOMB_X31_Y15_N10
\sq2|Add26~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sq2|Add26~0_combout\ = (\a6|out\(27) & (\a6|out\(29) & (\a6|out\(26) & \a6|out\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a6|out\(27),
	datab => \a6|out\(29),
	datac => \a6|out\(26),
	datad => \a6|out\(28),
	combout => \sq2|Add26~0_combout\);

-- Location: LCCOMB_X31_Y15_N30
\sq2|Add26~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sq2|Add26~1_combout\ = (\a6|out\(27) & ((\a6|out\(29) & ((!\a6|out\(28)) # (!\a6|out\(26)))) # (!\a6|out\(29) & ((\a6|out\(26)) # (\a6|out\(28)))))) # (!\a6|out\(27) & ((\a6|out\(29) & ((\a6|out\(26)) # (\a6|out\(28)))) # (!\a6|out\(29) & (\a6|out\(26) & 
-- \a6|out\(28)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a6|out\(27),
	datab => \a6|out\(29),
	datac => \a6|out\(26),
	datad => \a6|out\(28),
	combout => \sq2|Add26~1_combout\);

-- Location: LCCOMB_X29_Y16_N16
\sq2|Add22~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sq2|Add22~1_combout\ = (\a6|out\(23) & ((\a6|out\(24) & ((!\a6|out\(22)) # (!\a6|out\(25)))) # (!\a6|out\(24) & ((\a6|out\(25)) # (\a6|out\(22)))))) # (!\a6|out\(23) & ((\a6|out\(24) & ((\a6|out\(25)) # (\a6|out\(22)))) # (!\a6|out\(24) & (\a6|out\(25) & 
-- \a6|out\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a6|out\(23),
	datab => \a6|out\(24),
	datac => \a6|out\(25),
	datad => \a6|out\(22),
	combout => \sq2|Add22~1_combout\);

-- Location: LCCOMB_X29_Y16_N30
\sq2|Add22~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sq2|Add22~2_combout\ = \a6|out\(23) $ (\a6|out\(22) $ (\a6|out\(25) $ (\a6|out\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a6|out\(23),
	datab => \a6|out\(22),
	datac => \a6|out\(25),
	datad => \a6|out\(24),
	combout => \sq2|Add22~2_combout\);

-- Location: LCCOMB_X31_Y15_N12
\sq2|Add26~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sq2|Add26~2_combout\ = \a6|out\(27) $ (\a6|out\(29) $ (\a6|out\(26) $ (\a6|out\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a6|out\(27),
	datab => \a6|out\(29),
	datac => \a6|out\(26),
	datad => \a6|out\(28),
	combout => \sq2|Add26~2_combout\);

-- Location: LCCOMB_X30_Y15_N12
\sq2|Add24~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sq2|Add24~0_combout\ = (\sq2|Add22~2_combout\ & (\sq2|Add26~2_combout\ $ (VCC))) # (!\sq2|Add22~2_combout\ & (\sq2|Add26~2_combout\ & VCC))
-- \sq2|Add24~1\ = CARRY((\sq2|Add22~2_combout\ & \sq2|Add26~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sq2|Add22~2_combout\,
	datab => \sq2|Add26~2_combout\,
	datad => VCC,
	combout => \sq2|Add24~0_combout\,
	cout => \sq2|Add24~1\);

-- Location: LCCOMB_X30_Y15_N14
\sq2|Add24~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sq2|Add24~2_combout\ = (\sq2|Add26~1_combout\ & ((\sq2|Add22~1_combout\ & (\sq2|Add24~1\ & VCC)) # (!\sq2|Add22~1_combout\ & (!\sq2|Add24~1\)))) # (!\sq2|Add26~1_combout\ & ((\sq2|Add22~1_combout\ & (!\sq2|Add24~1\)) # (!\sq2|Add22~1_combout\ & 
-- ((\sq2|Add24~1\) # (GND)))))
-- \sq2|Add24~3\ = CARRY((\sq2|Add26~1_combout\ & (!\sq2|Add22~1_combout\ & !\sq2|Add24~1\)) # (!\sq2|Add26~1_combout\ & ((!\sq2|Add24~1\) # (!\sq2|Add22~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sq2|Add26~1_combout\,
	datab => \sq2|Add22~1_combout\,
	datad => VCC,
	cin => \sq2|Add24~1\,
	combout => \sq2|Add24~2_combout\,
	cout => \sq2|Add24~3\);

-- Location: LCCOMB_X30_Y15_N16
\sq2|Add24~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sq2|Add24~4_combout\ = ((\sq2|Add22~0_combout\ $ (\sq2|Add26~0_combout\ $ (!\sq2|Add24~3\)))) # (GND)
-- \sq2|Add24~5\ = CARRY((\sq2|Add22~0_combout\ & ((\sq2|Add26~0_combout\) # (!\sq2|Add24~3\))) # (!\sq2|Add22~0_combout\ & (\sq2|Add26~0_combout\ & !\sq2|Add24~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sq2|Add22~0_combout\,
	datab => \sq2|Add26~0_combout\,
	datad => VCC,
	cin => \sq2|Add24~3\,
	combout => \sq2|Add24~4_combout\,
	cout => \sq2|Add24~5\);

-- Location: LCCOMB_X30_Y15_N18
\sq2|Add24~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sq2|Add24~6_combout\ = \sq2|Add24~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \sq2|Add24~5\,
	combout => \sq2|Add24~6_combout\);

-- Location: LCCOMB_X30_Y15_N2
\sq2|Add20~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sq2|Add20~0_combout\ = (\sq2|Add24~0_combout\ & (\sq2|Add16~0_combout\ $ (VCC))) # (!\sq2|Add24~0_combout\ & (\sq2|Add16~0_combout\ & VCC))
-- \sq2|Add20~1\ = CARRY((\sq2|Add24~0_combout\ & \sq2|Add16~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sq2|Add24~0_combout\,
	datab => \sq2|Add16~0_combout\,
	datad => VCC,
	combout => \sq2|Add20~0_combout\,
	cout => \sq2|Add20~1\);

-- Location: LCCOMB_X30_Y15_N4
\sq2|Add20~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sq2|Add20~2_combout\ = (\sq2|Add16~2_combout\ & ((\sq2|Add24~2_combout\ & (\sq2|Add20~1\ & VCC)) # (!\sq2|Add24~2_combout\ & (!\sq2|Add20~1\)))) # (!\sq2|Add16~2_combout\ & ((\sq2|Add24~2_combout\ & (!\sq2|Add20~1\)) # (!\sq2|Add24~2_combout\ & 
-- ((\sq2|Add20~1\) # (GND)))))
-- \sq2|Add20~3\ = CARRY((\sq2|Add16~2_combout\ & (!\sq2|Add24~2_combout\ & !\sq2|Add20~1\)) # (!\sq2|Add16~2_combout\ & ((!\sq2|Add20~1\) # (!\sq2|Add24~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sq2|Add16~2_combout\,
	datab => \sq2|Add24~2_combout\,
	datad => VCC,
	cin => \sq2|Add20~1\,
	combout => \sq2|Add20~2_combout\,
	cout => \sq2|Add20~3\);

-- Location: LCCOMB_X30_Y15_N6
\sq2|Add20~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sq2|Add20~4_combout\ = ((\sq2|Add24~4_combout\ $ (\sq2|Add16~4_combout\ $ (!\sq2|Add20~3\)))) # (GND)
-- \sq2|Add20~5\ = CARRY((\sq2|Add24~4_combout\ & ((\sq2|Add16~4_combout\) # (!\sq2|Add20~3\))) # (!\sq2|Add24~4_combout\ & (\sq2|Add16~4_combout\ & !\sq2|Add20~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sq2|Add24~4_combout\,
	datab => \sq2|Add16~4_combout\,
	datad => VCC,
	cin => \sq2|Add20~3\,
	combout => \sq2|Add20~4_combout\,
	cout => \sq2|Add20~5\);

-- Location: LCCOMB_X30_Y15_N8
\sq2|Add20~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sq2|Add20~6_combout\ = (\sq2|Add16~6_combout\ & ((\sq2|Add24~6_combout\ & (\sq2|Add20~5\ & VCC)) # (!\sq2|Add24~6_combout\ & (!\sq2|Add20~5\)))) # (!\sq2|Add16~6_combout\ & ((\sq2|Add24~6_combout\ & (!\sq2|Add20~5\)) # (!\sq2|Add24~6_combout\ & 
-- ((\sq2|Add20~5\) # (GND)))))
-- \sq2|Add20~7\ = CARRY((\sq2|Add16~6_combout\ & (!\sq2|Add24~6_combout\ & !\sq2|Add20~5\)) # (!\sq2|Add16~6_combout\ & ((!\sq2|Add20~5\) # (!\sq2|Add24~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sq2|Add16~6_combout\,
	datab => \sq2|Add24~6_combout\,
	datad => VCC,
	cin => \sq2|Add20~5\,
	combout => \sq2|Add20~6_combout\,
	cout => \sq2|Add20~7\);

-- Location: LCCOMB_X30_Y15_N10
\sq2|Add20~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sq2|Add20~8_combout\ = !\sq2|Add20~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \sq2|Add20~7\,
	combout => \sq2|Add20~8_combout\);

-- Location: LCCOMB_X28_Y18_N12
\a6|ShiftRight0~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|ShiftRight0~26_combout\ = (!\a6|Add47~2_combout\ & \a5|out\(18))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \a6|Add47~2_combout\,
	datad => \a5|out\(18),
	combout => \a6|ShiftRight0~26_combout\);

-- Location: LCCOMB_X30_Y20_N0
\a6|out~81\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|out~81_combout\ = (\a6|out[15]~72_combout\ & (((\a6|ShiftRight0~21_combout\ & !\a6|out[15]~73_combout\)))) # (!\a6|out[15]~72_combout\ & ((\a6|ShiftRight0~27_combout\) # ((\a6|out[15]~73_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a6|ShiftRight0~27_combout\,
	datab => \a6|ShiftRight0~21_combout\,
	datac => \a6|out[15]~72_combout\,
	datad => \a6|out[15]~73_combout\,
	combout => \a6|out~81_combout\);

-- Location: LCCOMB_X31_Y20_N16
\a6|out~75\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|out~75_combout\ = (\a6|out~25_combout\ & (!\a6|Add43~4_combout\ & (!\a6|Add43~6_combout\ & !\a6|Add43~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a6|out~25_combout\,
	datab => \a6|Add43~4_combout\,
	datac => \a6|Add43~6_combout\,
	datad => \a6|Add43~8_combout\,
	combout => \a6|out~75_combout\);

-- Location: LCCOMB_X28_Y17_N26
\a6|out~82\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|out~82_combout\ = (\a6|out~75_combout\) # ((!\a6|Add48~6_combout\ & (\a6|out~76_combout\ & \a6|ShiftLeft0~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a6|Add48~6_combout\,
	datab => \a6|out~75_combout\,
	datac => \a6|out~76_combout\,
	datad => \a6|ShiftLeft0~17_combout\,
	combout => \a6|out~82_combout\);

-- Location: LCCOMB_X28_Y17_N24
\a6|out~83\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|out~83_combout\ = (\a6|out[15]~73_combout\ & ((\a6|out~81_combout\ & ((\a6|out~82_combout\))) # (!\a6|out~81_combout\ & (\a6|ShiftRight0~26_combout\)))) # (!\a6|out[15]~73_combout\ & (((\a6|out~81_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a6|out[15]~73_combout\,
	datab => \a6|ShiftRight0~26_combout\,
	datac => \a6|out~81_combout\,
	datad => \a6|out~82_combout\,
	combout => \a6|out~83_combout\);

-- Location: LCCOMB_X28_Y17_N22
\a6|out~84\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|out~84_combout\ = ((\a6|out~79_combout\ & \a6|out~83_combout\)) # (!\a5|out\(32))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a5|out\(32),
	datac => \a6|out~79_combout\,
	datad => \a6|out~83_combout\,
	combout => \a6|out~84_combout\);

-- Location: FF_X28_Y17_N23
\a6|out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \a6|out~84_combout\,
	ena => \a6|out[2]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a6|out\(10));

-- Location: LCCOMB_X30_Y19_N10
\a6|ShiftRight0~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|ShiftRight0~28_combout\ = (\a5|out\(18) & (!\a6|Add47~0_combout\ & !\a6|Add47~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a5|out\(18),
	datac => \a6|Add47~0_combout\,
	datad => \a6|Add47~2_combout\,
	combout => \a6|ShiftRight0~28_combout\);

-- Location: LCCOMB_X31_Y18_N30
\a6|out~89\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|out~89_combout\ = (\a6|out[15]~73_combout\ & (((!\a6|out[15]~72_combout\)))) # (!\a6|out[15]~73_combout\ & ((\a6|out[15]~72_combout\ & ((\a6|ShiftRight0~16_combout\))) # (!\a6|out[15]~72_combout\ & (\a6|ShiftRight0~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a6|ShiftRight0~29_combout\,
	datab => \a6|ShiftRight0~16_combout\,
	datac => \a6|out[15]~73_combout\,
	datad => \a6|out[15]~72_combout\,
	combout => \a6|out~89_combout\);

-- Location: LCCOMB_X28_Y17_N28
\a6|out~90\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|out~90_combout\ = (\a6|ShiftLeft0~25_combout\ & (((!\a6|ShiftRight1~2_combout\ & !\a6|Add43~2_combout\)) # (!\a6|ShiftLeft0~21_combout\))) # (!\a6|ShiftLeft0~25_combout\ & (!\a6|ShiftRight1~2_combout\ & ((!\a6|Add43~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a6|ShiftLeft0~25_combout\,
	datab => \a6|ShiftRight1~2_combout\,
	datac => \a6|ShiftLeft0~21_combout\,
	datad => \a6|Add43~2_combout\,
	combout => \a6|out~90_combout\);

-- Location: LCCOMB_X28_Y17_N10
\a6|out~91\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|out~91_combout\ = (\a6|out[15]~73_combout\ & ((\a6|out~89_combout\ & ((\a6|out~90_combout\))) # (!\a6|out~89_combout\ & (\a6|ShiftRight0~28_combout\)))) # (!\a6|out[15]~73_combout\ & (((\a6|out~89_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a6|out[15]~73_combout\,
	datab => \a6|ShiftRight0~28_combout\,
	datac => \a6|out~89_combout\,
	datad => \a6|out~90_combout\,
	combout => \a6|out~91_combout\);

-- Location: LCCOMB_X28_Y17_N2
\a6|out~92\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|out~92_combout\ = ((\a6|out~79_combout\ & \a6|out~91_combout\)) # (!\a5|out\(32))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a5|out\(32),
	datac => \a6|out~79_combout\,
	datad => \a6|out~91_combout\,
	combout => \a6|out~92_combout\);

-- Location: FF_X28_Y17_N3
\a6|out[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \a6|out~92_combout\,
	ena => \a6|out[2]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a6|out\(12));

-- Location: LCCOMB_X28_Y17_N8
\a6|out~77\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|out~77_combout\ = (\a6|out~75_combout\) # ((!\a6|Add48~6_combout\ & (\a6|ShiftLeft0~16_combout\ & \a6|out~76_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a6|Add48~6_combout\,
	datab => \a6|ShiftLeft0~16_combout\,
	datac => \a6|out~76_combout\,
	datad => \a6|out~75_combout\,
	combout => \a6|out~77_combout\);

-- Location: LCCOMB_X28_Y18_N0
\a6|ShiftRight0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|ShiftRight0~2_combout\ = (\a6|Add47~0_combout\ & ((\a5|out\(13)))) # (!\a6|Add47~0_combout\ & (\a5|out\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a5|out\(11),
	datab => \a5|out\(13),
	datac => \a6|Add47~0_combout\,
	combout => \a6|ShiftRight0~2_combout\);

-- Location: LCCOMB_X28_Y18_N18
\a6|ShiftRight0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|ShiftRight0~10_combout\ = (\a6|Add47~2_combout\ & (\a5|out\(18))) # (!\a6|Add47~2_combout\ & ((\a6|ShiftRight0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a5|out\(18),
	datac => \a6|Add47~2_combout\,
	datad => \a6|ShiftRight0~2_combout\,
	combout => \a6|ShiftRight0~10_combout\);

-- Location: LCCOMB_X28_Y18_N30
\a6|out~74\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|out~74_combout\ = (\a6|out[15]~72_combout\ & (\a6|ShiftRight0~10_combout\ & ((!\a6|Add47~4_combout\)))) # (!\a6|out[15]~72_combout\ & (((\a6|Add47~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a6|out[15]~72_combout\,
	datab => \a6|ShiftRight0~10_combout\,
	datac => \a6|Add47~12_combout\,
	datad => \a6|Add47~4_combout\,
	combout => \a6|out~74_combout\);

-- Location: LCCOMB_X28_Y17_N0
\a6|out~78\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|out~78_combout\ = (\a6|out~74_combout\ & (((\a6|out~77_combout\) # (!\a6|out[15]~73_combout\)))) # (!\a6|out~74_combout\ & (\a6|ShiftRight0~26_combout\ & ((\a6|out[15]~73_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a6|ShiftRight0~26_combout\,
	datab => \a6|out~77_combout\,
	datac => \a6|out~74_combout\,
	datad => \a6|out[15]~73_combout\,
	combout => \a6|out~78_combout\);

-- Location: LCCOMB_X28_Y17_N4
\a6|out~80\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|out~80_combout\ = ((\a6|out~79_combout\ & \a6|out~78_combout\)) # (!\a5|out\(32))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a5|out\(32),
	datac => \a6|out~79_combout\,
	datad => \a6|out~78_combout\,
	combout => \a6|out~80_combout\);

-- Location: FF_X28_Y17_N5
\a6|out[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \a6|out~80_combout\,
	ena => \a6|out[2]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a6|out\(11));

-- Location: LCCOMB_X30_Y17_N24
\a6|out~86\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|out~86_combout\ = (\a6|out[15]~72_combout\ & ((\a6|out[15]~73_combout\ & ((\a6|ShiftRight0~28_combout\))) # (!\a6|out[15]~73_combout\ & (\a6|ShiftRight0~12_combout\)))) # (!\a6|out[15]~72_combout\ & (((\a6|out[15]~73_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a6|ShiftRight0~12_combout\,
	datab => \a6|out[15]~72_combout\,
	datac => \a6|out[15]~73_combout\,
	datad => \a6|ShiftRight0~28_combout\,
	combout => \a6|out~86_combout\);

-- Location: LCCOMB_X28_Y17_N16
\a6|out~85\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|out~85_combout\ = (\a6|Add43~2_combout\ & (((!\a6|ShiftLeft0~21_combout\ & \a6|ShiftLeft0~20_combout\)))) # (!\a6|Add43~2_combout\ & (((!\a6|ShiftLeft0~21_combout\ & \a6|ShiftLeft0~20_combout\)) # (!\a6|ShiftRight1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a6|Add43~2_combout\,
	datab => \a6|ShiftRight1~2_combout\,
	datac => \a6|ShiftLeft0~21_combout\,
	datad => \a6|ShiftLeft0~20_combout\,
	combout => \a6|out~85_combout\);

-- Location: LCCOMB_X28_Y17_N20
\a6|out~87\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|out~87_combout\ = (\a6|out~86_combout\ & ((\a6|out~85_combout\) # ((!\a6|out[5]~6_combout\ & !\a6|Add47~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a6|out[5]~6_combout\,
	datab => \a6|Add47~6_combout\,
	datac => \a6|out~86_combout\,
	datad => \a6|out~85_combout\,
	combout => \a6|out~87_combout\);

-- Location: LCCOMB_X28_Y17_N12
\a6|out~88\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|out~88_combout\ = ((\a6|out~79_combout\ & \a6|out~87_combout\)) # (!\a5|out\(32))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a5|out\(32),
	datac => \a6|out~79_combout\,
	datad => \a6|out~87_combout\,
	combout => \a6|out~88_combout\);

-- Location: FF_X28_Y17_N13
\a6|out[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \a6|out~88_combout\,
	ena => \a6|out[2]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a6|out\(13));

-- Location: LCCOMB_X28_Y17_N30
\sq2|Add10~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sq2|Add10~0_combout\ = (\a6|out\(10) & (\a6|out\(12) & (\a6|out\(11) & \a6|out\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a6|out\(10),
	datab => \a6|out\(12),
	datac => \a6|out\(11),
	datad => \a6|out\(13),
	combout => \sq2|Add10~0_combout\);

-- Location: LCCOMB_X28_Y17_N6
\sq2|Add10~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sq2|Add10~1_combout\ = (\a6|out\(13) & ((\a6|out\(11) & ((!\a6|out\(12)) # (!\a6|out\(10)))) # (!\a6|out\(11) & ((\a6|out\(10)) # (\a6|out\(12)))))) # (!\a6|out\(13) & ((\a6|out\(11) & ((\a6|out\(10)) # (\a6|out\(12)))) # (!\a6|out\(11) & (\a6|out\(10) & 
-- \a6|out\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a6|out\(13),
	datab => \a6|out\(11),
	datac => \a6|out\(10),
	datad => \a6|out\(12),
	combout => \sq2|Add10~1_combout\);

-- Location: LCCOMB_X28_Y18_N28
\a6|ShiftRight0~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|ShiftRight0~32_combout\ = (\a6|Add47~2_combout\ & ((\a6|ShiftRight0~15_combout\))) # (!\a6|Add47~2_combout\ & (\a5|out\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a5|out\(2),
	datac => \a6|Add47~2_combout\,
	datad => \a6|ShiftRight0~15_combout\,
	combout => \a6|ShiftRight0~32_combout\);

-- Location: LCCOMB_X28_Y16_N4
\a6|out~97\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|out~97_combout\ = (\a6|out[15]~72_combout\ & (((\a6|ShiftRight0~32_combout\ & !\a6|out[15]~73_combout\)))) # (!\a6|out[15]~72_combout\ & ((\a6|ShiftRight0~31_combout\) # ((\a6|out[15]~73_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a6|ShiftRight0~31_combout\,
	datab => \a6|ShiftRight0~32_combout\,
	datac => \a6|out[15]~72_combout\,
	datad => \a6|out[15]~73_combout\,
	combout => \a6|out~97_combout\);

-- Location: LCCOMB_X28_Y16_N16
\a6|out~98\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|out~98_combout\ = ((!\a6|Add48~6_combout\ & (\a6|out~76_combout\ & \a6|ShiftLeft0~30_combout\))) # (!\a6|ShiftRight1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a6|Add48~6_combout\,
	datab => \a6|ShiftRight1~2_combout\,
	datac => \a6|out~76_combout\,
	datad => \a6|ShiftLeft0~30_combout\,
	combout => \a6|out~98_combout\);

-- Location: LCCOMB_X28_Y16_N18
\a6|out~99\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|out~99_combout\ = (\a6|out[15]~73_combout\ & ((\a6|out~97_combout\ & ((\a6|out~98_combout\))) # (!\a6|out~97_combout\ & (\a6|ShiftRight0~25_combout\)))) # (!\a6|out[15]~73_combout\ & (((\a6|out~97_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a6|out[15]~73_combout\,
	datab => \a6|ShiftRight0~25_combout\,
	datac => \a6|out~97_combout\,
	datad => \a6|out~98_combout\,
	combout => \a6|out~99_combout\);

-- Location: LCCOMB_X28_Y16_N8
\a6|out~100\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|out~100_combout\ = ((\a6|out~79_combout\ & \a6|out~99_combout\)) # (!\a5|out\(32))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a5|out\(32),
	datac => \a6|out~79_combout\,
	datad => \a6|out~99_combout\,
	combout => \a6|out~100_combout\);

-- Location: FF_X28_Y16_N9
\a6|out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \a6|out~100_combout\,
	ena => \a6|out[2]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a6|out\(8));

-- Location: LCCOMB_X30_Y16_N4
\a6|ShiftRight0~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|ShiftRight0~22_combout\ = (\a6|Add47~0_combout\ & (\a5|out\(18))) # (!\a6|Add47~0_combout\ & ((\a5|out\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a5|out\(18),
	datac => \a5|out\(13),
	datad => \a6|Add47~0_combout\,
	combout => \a6|ShiftRight0~22_combout\);

-- Location: LCCOMB_X30_Y16_N22
\a6|ShiftRight0~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|ShiftRight0~23_combout\ = (\a6|Add47~2_combout\ & (\a6|ShiftRight0~22_combout\)) # (!\a6|Add47~2_combout\ & ((\a6|ShiftRight0~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a6|ShiftRight0~22_combout\,
	datac => \a6|ShiftRight0~11_combout\,
	datad => \a6|Add47~2_combout\,
	combout => \a6|ShiftRight0~23_combout\);

-- Location: LCCOMB_X28_Y18_N14
\a6|ShiftRight0~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|ShiftRight0~30_combout\ = (\a5|out\(18) & ((!\a6|Add47~0_combout\) # (!\a6|Add47~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a6|Add47~2_combout\,
	datac => \a6|Add47~0_combout\,
	datad => \a5|out\(18),
	combout => \a6|ShiftRight0~30_combout\);

-- Location: LCCOMB_X28_Y16_N12
\a6|out~94\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|out~94_combout\ = (\a6|out[15]~72_combout\ & ((\a6|out[15]~73_combout\ & ((\a6|ShiftRight0~30_combout\))) # (!\a6|out[15]~73_combout\ & (\a6|ShiftRight0~23_combout\)))) # (!\a6|out[15]~72_combout\ & (((\a6|out[15]~73_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a6|ShiftRight0~23_combout\,
	datab => \a6|ShiftRight0~30_combout\,
	datac => \a6|out[15]~72_combout\,
	datad => \a6|out[15]~73_combout\,
	combout => \a6|out~94_combout\);

-- Location: LCCOMB_X28_Y16_N28
\a6|out~93\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|out~93_combout\ = ((!\a6|Add48~6_combout\ & (\a6|out~76_combout\ & \a6|ShiftLeft0~27_combout\))) # (!\a6|ShiftRight1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a6|Add48~6_combout\,
	datab => \a6|ShiftRight1~2_combout\,
	datac => \a6|out~76_combout\,
	datad => \a6|ShiftLeft0~27_combout\,
	combout => \a6|out~93_combout\);

-- Location: LCCOMB_X28_Y16_N24
\a6|out~95\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|out~95_combout\ = (\a6|out~94_combout\ & ((\a6|out~93_combout\) # ((!\a6|Add47~6_combout\ & !\a6|out[5]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a6|Add47~6_combout\,
	datab => \a6|out[5]~6_combout\,
	datac => \a6|out~94_combout\,
	datad => \a6|out~93_combout\,
	combout => \a6|out~95_combout\);

-- Location: LCCOMB_X28_Y16_N26
\a6|out~96\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|out~96_combout\ = ((\a6|out~79_combout\ & \a6|out~95_combout\)) # (!\a5|out\(32))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a5|out\(32),
	datac => \a6|out~79_combout\,
	datad => \a6|out~95_combout\,
	combout => \a6|out~96_combout\);

-- Location: FF_X28_Y16_N27
\a6|out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \a6|out~96_combout\,
	ena => \a6|out[2]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a6|out\(9));

-- Location: LCCOMB_X28_Y18_N22
\a6|out~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|out~9_combout\ = (\a6|Add47~6_combout\) # ((!\a6|Add47~4_combout\ & \a6|Add47~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a6|Add47~4_combout\,
	datac => \a6|Add47~2_combout\,
	datad => \a6|Add47~6_combout\,
	combout => \a6|out~9_combout\);

-- Location: LCCOMB_X29_Y18_N10
\a6|out~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|out~12_combout\ = (\a6|out[5]~10_combout\ & ((\a5|out\(18)) # ((\a6|out[5]~11_combout\)))) # (!\a6|out[5]~10_combout\ & (((\a5|out\(2) & !\a6|out[5]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a5|out\(18),
	datab => \a6|out[5]~10_combout\,
	datac => \a5|out\(2),
	datad => \a6|out[5]~11_combout\,
	combout => \a6|out~12_combout\);

-- Location: LCCOMB_X28_Y16_N10
\a6|out~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|out~13_combout\ = (\a6|out~9_combout\ & (\a6|ShiftRight0~2_combout\ & !\a6|out~12_combout\)) # (!\a6|out~9_combout\ & ((\a6|out~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a6|ShiftRight0~2_combout\,
	datac => \a6|out~9_combout\,
	datad => \a6|out~12_combout\,
	combout => \a6|out~13_combout\);

-- Location: LCCOMB_X28_Y16_N22
\a6|out~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|out~14_combout\ = ((\a6|out~8_combout\ & (!\a6|Add47~12_combout\ & \a6|out~13_combout\))) # (!\a5|out\(32))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a5|out\(32),
	datab => \a6|out~8_combout\,
	datac => \a6|Add47~12_combout\,
	datad => \a6|out~13_combout\,
	combout => \a6|out~14_combout\);

-- Location: LCCOMB_X31_Y20_N10
\a6|ShiftRight1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|ShiftRight1~0_combout\ = (\a6|Add43~6_combout\) # ((\a6|Add43~8_combout\) # ((\a6|Add43~4_combout\ & !\a6|out~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a6|Add43~6_combout\,
	datab => \a6|Add43~4_combout\,
	datac => \a6|Add43~8_combout\,
	datad => \a6|out~7_combout\,
	combout => \a6|ShiftRight1~0_combout\);

-- Location: LCCOMB_X28_Y16_N20
\a6|out~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|out~15_combout\ = (\a6|out~8_combout\ & (((\a6|ShiftLeft0~9_combout\ & \a6|ShiftLeft0~7_combout\)) # (!\a6|ShiftRight1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a6|ShiftRight1~0_combout\,
	datab => \a6|out~8_combout\,
	datac => \a6|ShiftLeft0~9_combout\,
	datad => \a6|ShiftLeft0~7_combout\,
	combout => \a6|out~15_combout\);

-- Location: LCCOMB_X28_Y16_N14
\a6|out~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|out~16_combout\ = (\a6|out~14_combout\) # ((\a6|Add47~12_combout\ & \a6|out~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a6|Add47~12_combout\,
	datac => \a6|out~14_combout\,
	datad => \a6|out~15_combout\,
	combout => \a6|out~16_combout\);

-- Location: FF_X28_Y16_N15
\a6|out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \a6|out~16_combout\,
	ena => \a6|out[2]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a6|out\(7));

-- Location: LCCOMB_X28_Y16_N6
\sq2|Add6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sq2|Add6~0_combout\ = (\a6|out\(8) & ((\a6|out\(9)) # (\a6|out\(7)))) # (!\a6|out\(8) & (\a6|out\(9) & \a6|out\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a6|out\(8),
	datac => \a6|out\(9),
	datad => \a6|out\(7),
	combout => \sq2|Add6~0_combout\);

-- Location: LCCOMB_X28_Y17_N18
\sq2|Add10~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sq2|Add10~2_combout\ = \a6|out\(10) $ (\a6|out\(13) $ (\a6|out\(11) $ (\a6|out\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a6|out\(10),
	datab => \a6|out\(13),
	datac => \a6|out\(11),
	datad => \a6|out\(12),
	combout => \sq2|Add10~2_combout\);

-- Location: LCCOMB_X28_Y16_N2
\sq2|Add6~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sq2|Add6~1_combout\ = \a6|out\(8) $ (\a6|out\(9) $ (\a6|out\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a6|out\(8),
	datac => \a6|out\(9),
	datad => \a6|out\(7),
	combout => \sq2|Add6~1_combout\);

-- Location: LCCOMB_X27_Y15_N0
\sq2|Add8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sq2|Add8~0_combout\ = (\sq2|Add10~2_combout\ & (\sq2|Add6~1_combout\ $ (VCC))) # (!\sq2|Add10~2_combout\ & (\sq2|Add6~1_combout\ & VCC))
-- \sq2|Add8~1\ = CARRY((\sq2|Add10~2_combout\ & \sq2|Add6~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sq2|Add10~2_combout\,
	datab => \sq2|Add6~1_combout\,
	datad => VCC,
	combout => \sq2|Add8~0_combout\,
	cout => \sq2|Add8~1\);

-- Location: LCCOMB_X27_Y15_N2
\sq2|Add8~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sq2|Add8~2_combout\ = (\sq2|Add10~1_combout\ & ((\sq2|Add6~0_combout\ & (\sq2|Add8~1\ & VCC)) # (!\sq2|Add6~0_combout\ & (!\sq2|Add8~1\)))) # (!\sq2|Add10~1_combout\ & ((\sq2|Add6~0_combout\ & (!\sq2|Add8~1\)) # (!\sq2|Add6~0_combout\ & ((\sq2|Add8~1\) # 
-- (GND)))))
-- \sq2|Add8~3\ = CARRY((\sq2|Add10~1_combout\ & (!\sq2|Add6~0_combout\ & !\sq2|Add8~1\)) # (!\sq2|Add10~1_combout\ & ((!\sq2|Add8~1\) # (!\sq2|Add6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sq2|Add10~1_combout\,
	datab => \sq2|Add6~0_combout\,
	datad => VCC,
	cin => \sq2|Add8~1\,
	combout => \sq2|Add8~2_combout\,
	cout => \sq2|Add8~3\);

-- Location: LCCOMB_X27_Y15_N4
\sq2|Add8~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sq2|Add8~4_combout\ = (\sq2|Add10~0_combout\ & (\sq2|Add8~3\ $ (GND))) # (!\sq2|Add10~0_combout\ & (!\sq2|Add8~3\ & VCC))
-- \sq2|Add8~5\ = CARRY((\sq2|Add10~0_combout\ & !\sq2|Add8~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sq2|Add10~0_combout\,
	datad => VCC,
	cin => \sq2|Add8~3\,
	combout => \sq2|Add8~4_combout\,
	cout => \sq2|Add8~5\);

-- Location: LCCOMB_X27_Y15_N6
\sq2|Add8~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sq2|Add8~6_combout\ = \sq2|Add8~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \sq2|Add8~5\,
	combout => \sq2|Add8~6_combout\);

-- Location: LCCOMB_X28_Y19_N16
\a6|out~57\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|out~57_combout\ = (\a6|Add47~0_combout\ & ((\a5|out\(3)))) # (!\a6|Add47~0_combout\ & (\a5|out\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a5|out\(1),
	datac => \a5|out\(3),
	datad => \a6|Add47~0_combout\,
	combout => \a6|out~57_combout\);

-- Location: LCCOMB_X28_Y19_N22
\a6|out~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|out~58_combout\ = (!\a6|Add47~4_combout\ & ((\a6|Add47~2_combout\ & (\a5|out\(2))) # (!\a6|Add47~2_combout\ & ((\a6|out~57_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a5|out\(2),
	datab => \a6|Add47~2_combout\,
	datac => \a6|Add47~4_combout\,
	datad => \a6|out~57_combout\,
	combout => \a6|out~58_combout\);

-- Location: LCCOMB_X30_Y16_N26
\a6|out~59\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|out~59_combout\ = (!\a6|Add47~6_combout\ & ((\a6|out~58_combout\) # ((\a6|ShiftRight0~23_combout\ & \a6|Add47~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a6|out~58_combout\,
	datab => \a6|Add47~6_combout\,
	datac => \a6|ShiftRight0~23_combout\,
	datad => \a6|Add47~4_combout\,
	combout => \a6|out~59_combout\);

-- Location: LCCOMB_X30_Y16_N12
\a6|out~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|out~60_combout\ = (\a6|out~56_combout\ & ((\a6|out~59_combout\) # ((\a6|Add47~6_combout\ & \a6|ShiftRight0~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a6|Add47~6_combout\,
	datab => \a6|ShiftRight0~24_combout\,
	datac => \a6|out~59_combout\,
	datad => \a6|out~56_combout\,
	combout => \a6|out~60_combout\);

-- Location: LCCOMB_X26_Y15_N26
\a6|out~55\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|out~55_combout\ = (\a6|Add43~8_combout\ & ((\a6|out[2]~17_combout\ & ((\a6|out\(1)))) # (!\a6|out[2]~17_combout\ & (\a5|out\(18)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a6|Add43~8_combout\,
	datab => \a5|out\(18),
	datac => \a6|out\(1),
	datad => \a6|out[2]~17_combout\,
	combout => \a6|out~55_combout\);

-- Location: LCCOMB_X29_Y18_N4
\a6|ShiftLeft0~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|ShiftLeft0~13_combout\ = (\a5|out\(1) & (!\a6|Add48~2_combout\ & !\a6|Add47~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a5|out\(1),
	datac => \a6|Add48~2_combout\,
	datad => \a6|Add47~0_combout\,
	combout => \a6|ShiftLeft0~13_combout\);

-- Location: LCCOMB_X29_Y18_N30
\a6|out~61\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|out~61_combout\ = (\a6|Add47~12_combout\ & (((\a6|ShiftLeft0~13_combout\ & \a6|ShiftLeft0~7_combout\)) # (!\a6|Add43~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a6|Add43~6_combout\,
	datab => \a6|ShiftLeft0~13_combout\,
	datac => \a6|Add47~12_combout\,
	datad => \a6|ShiftLeft0~7_combout\,
	combout => \a6|out~61_combout\);

-- Location: LCCOMB_X26_Y15_N12
\a6|out~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|out~62_combout\ = (\a6|out~55_combout\) # ((!\a6|Add43~8_combout\ & ((\a6|out~60_combout\) # (\a6|out~61_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a6|Add43~8_combout\,
	datab => \a6|out~60_combout\,
	datac => \a6|out~55_combout\,
	datad => \a6|out~61_combout\,
	combout => \a6|out~62_combout\);

-- Location: LCCOMB_X26_Y15_N22
\a6|out[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|out[1]~feeder_combout\ = \a6|out~62_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \a6|out~62_combout\,
	combout => \a6|out[1]~feeder_combout\);

-- Location: FF_X26_Y15_N23
\a6|out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \a6|out[1]~feeder_combout\,
	asdata => VCC,
	sload => \a5|ALT_INV_out\(32),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a6|out\(1));

-- Location: LCCOMB_X26_Y15_N28
\a6|out~63\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|out~63_combout\ = (\a6|Add43~8_combout\ & ((\a6|out[2]~17_combout\ & ((\a6|out\(0)))) # (!\a6|out[2]~17_combout\ & (\a5|out\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a6|Add43~8_combout\,
	datab => \a5|out\(16),
	datac => \a6|out\(0),
	datad => \a6|out[2]~17_combout\,
	combout => \a6|out~63_combout\);

-- Location: LCCOMB_X29_Y18_N14
\a6|out~64\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|out~64_combout\ = ((\a5|out\(2) & (\a6|ShiftLeft0~14_combout\ & \a6|ShiftLeft0~7_combout\))) # (!\a6|Add43~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a5|out\(2),
	datab => \a6|ShiftLeft0~14_combout\,
	datac => \a6|Add43~6_combout\,
	datad => \a6|ShiftLeft0~7_combout\,
	combout => \a6|out~64_combout\);

-- Location: LCCOMB_X30_Y18_N4
\a6|out~66\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|out~66_combout\ = (\a6|Add47~6_combout\ & (!\a6|Add47~8_combout\ & \a6|ShiftRight0~25_combout\)) # (!\a6|Add47~6_combout\ & (\a6|Add47~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a6|Add47~6_combout\,
	datac => \a6|Add47~8_combout\,
	datad => \a6|ShiftRight0~25_combout\,
	combout => \a6|out~66_combout\);

-- Location: LCCOMB_X30_Y20_N26
\a6|out~65\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|out~65_combout\ = (\a6|Add47~8_combout\ & (\a5|out\(32) & (!\a6|Add47~0_combout\ & !\a6|Add47~4_combout\))) # (!\a6|Add47~8_combout\ & (((\a6|Add47~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a5|out\(32),
	datab => \a6|Add47~0_combout\,
	datac => \a6|Add47~8_combout\,
	datad => \a6|Add47~4_combout\,
	combout => \a6|out~65_combout\);

-- Location: LCCOMB_X26_Y15_N30
\a6|out~67\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|out~67_combout\ = (\a6|out~65_combout\ & (\a6|ShiftRight0~15_combout\)) # (!\a6|out~65_combout\ & ((\a6|ShiftRight0~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a6|ShiftRight0~15_combout\,
	datac => \a6|ShiftRight0~17_combout\,
	datad => \a6|out~65_combout\,
	combout => \a6|out~67_combout\);

-- Location: LCCOMB_X26_Y15_N24
\a6|out~68\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|out~68_combout\ = (\a6|Add47~2_combout\ & (((\a6|out~67_combout\) # (\a6|out~66_combout\)))) # (!\a6|Add47~2_combout\ & (\a5|out\(2) & ((!\a6|out~66_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a6|Add47~2_combout\,
	datab => \a5|out\(2),
	datac => \a6|out~67_combout\,
	datad => \a6|out~66_combout\,
	combout => \a6|out~68_combout\);

-- Location: LCCOMB_X26_Y15_N0
\a6|out~69\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|out~69_combout\ = (\a6|out~66_combout\ & ((\a6|Add47~6_combout\ & ((!\a6|out~65_combout\))) # (!\a6|Add47~6_combout\ & (!\a6|out~68_combout\ & \a6|out~65_combout\)))) # (!\a6|out~66_combout\ & (!\a6|Add47~6_combout\ & (\a6|out~68_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a6|out~66_combout\,
	datab => \a6|Add47~6_combout\,
	datac => \a6|out~68_combout\,
	datad => \a6|out~65_combout\,
	combout => \a6|out~69_combout\);

-- Location: LCCOMB_X26_Y15_N20
\a6|out~70\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|out~70_combout\ = (\a6|Add47~12_combout\ & (((\a6|out~64_combout\)))) # (!\a6|Add47~12_combout\ & (!\a6|Add47~10_combout\ & ((\a6|out~69_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a6|Add47~12_combout\,
	datab => \a6|Add47~10_combout\,
	datac => \a6|out~64_combout\,
	datad => \a6|out~69_combout\,
	combout => \a6|out~70_combout\);

-- Location: LCCOMB_X26_Y15_N10
\a6|out~71\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|out~71_combout\ = (\a6|out~63_combout\) # ((!\a6|Add43~8_combout\ & \a6|out~70_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a6|out~63_combout\,
	datab => \a6|Add43~8_combout\,
	datad => \a6|out~70_combout\,
	combout => \a6|out~71_combout\);

-- Location: FF_X26_Y15_N11
\a6|out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a6|out~71_combout\,
	asdata => VCC,
	sload => \a5|ALT_INV_out\(32),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a6|out\(0));

-- Location: LCCOMB_X26_Y15_N6
\sq2|Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sq2|Add1~0_combout\ = (\a6|out\(1) & ((\a6|out\(2)) # (\a6|out\(0)))) # (!\a6|out\(1) & (\a6|out\(2) & \a6|out\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a6|out\(1),
	datac => \a6|out\(2),
	datad => \a6|out\(0),
	combout => \sq2|Add1~0_combout\);

-- Location: LCCOMB_X27_Y18_N22
\a6|out~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|out~30_combout\ = (\a6|ShiftRight0~9_combout\ & ((\a6|out[2]~29_combout\ & ((\a5|out\(2)))) # (!\a6|out[2]~29_combout\ & (\a5|out\(3))))) # (!\a6|ShiftRight0~9_combout\ & (((\a6|out[2]~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a5|out\(3),
	datab => \a5|out\(2),
	datac => \a6|ShiftRight0~9_combout\,
	datad => \a6|out[2]~29_combout\,
	combout => \a6|out~30_combout\);

-- Location: LCCOMB_X27_Y18_N16
\a6|out~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|out~31_combout\ = (\a6|out~30_combout\ & (((\a6|ShiftRight0~9_combout\) # (\a6|ShiftRight0~10_combout\)))) # (!\a6|out~30_combout\ & (\a5|out\(2) & (!\a6|ShiftRight0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a6|out~30_combout\,
	datab => \a5|out\(2),
	datac => \a6|ShiftRight0~9_combout\,
	datad => \a6|ShiftRight0~10_combout\,
	combout => \a6|out~31_combout\);

-- Location: LCCOMB_X27_Y18_N24
\a6|out~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|out~27_combout\ = ((!\a6|Add48~2_combout\ & (\a6|ShiftLeft0~8_combout\ & \a6|ShiftLeft0~7_combout\))) # (!\a6|out~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a6|Add48~2_combout\,
	datab => \a6|ShiftLeft0~8_combout\,
	datac => \a6|out~26_combout\,
	datad => \a6|ShiftLeft0~7_combout\,
	combout => \a6|out~27_combout\);

-- Location: LCCOMB_X27_Y18_N18
\a6|out~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|out~32_combout\ = (\a6|out[2]~24_combout\ & (((!\a6|out~28_combout\)))) # (!\a6|out[2]~24_combout\ & ((\a6|out~28_combout\ & (\a6|out~31_combout\)) # (!\a6|out~28_combout\ & ((\a6|out~27_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a6|out[2]~24_combout\,
	datab => \a6|out~31_combout\,
	datac => \a6|out~28_combout\,
	datad => \a6|out~27_combout\,
	combout => \a6|out~32_combout\);

-- Location: LCCOMB_X27_Y18_N6
\a6|out~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|out~33_combout\ = (\a6|out[2]~24_combout\ & ((\a6|out~32_combout\ & ((\a5|out\(18)))) # (!\a6|out~32_combout\ & (\a6|ShiftRight0~8_combout\)))) # (!\a6|out[2]~24_combout\ & (((\a6|out~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a6|ShiftRight0~8_combout\,
	datab => \a5|out\(18),
	datac => \a6|out[2]~24_combout\,
	datad => \a6|out~32_combout\,
	combout => \a6|out~33_combout\);

-- Location: LCCOMB_X27_Y18_N2
\a6|out~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|out~34_combout\ = ((\a6|out~33_combout\ & ((!\a6|out[5]~6_combout\) # (!\a6|out~28_combout\)))) # (!\a5|out\(32))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a5|out\(32),
	datab => \a6|out~28_combout\,
	datac => \a6|out[5]~6_combout\,
	datad => \a6|out~33_combout\,
	combout => \a6|out~34_combout\);

-- Location: FF_X27_Y18_N3
\a6|out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \a6|out~34_combout\,
	ena => \a6|out[2]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a6|out\(3));

-- Location: LCCOMB_X26_Y15_N8
\sq2|Add2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sq2|Add2~0_combout\ = \a6|out\(5) $ (\a6|out\(4) $ (\a6|out\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a6|out\(5),
	datac => \a6|out\(4),
	datad => \a6|out\(3),
	combout => \sq2|Add2~0_combout\);

-- Location: LCCOMB_X26_Y15_N2
\sq2|Add4~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sq2|Add4~2_combout\ = (\sq2|Add2~0_combout\ & (\a6|out\(0) $ (\a6|out\(1) $ (\a6|out\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a6|out\(0),
	datab => \a6|out\(1),
	datac => \sq2|Add2~0_combout\,
	datad => \a6|out\(2),
	combout => \sq2|Add4~2_combout\);

-- Location: LCCOMB_X31_Y20_N18
\a6|ShiftRight0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|ShiftRight0~4_combout\ = (\a6|Add47~2_combout\ & (\a5|out\(18))) # (!\a6|Add47~2_combout\ & ((\a6|ShiftRight0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a5|out\(18),
	datac => \a6|ShiftRight0~3_combout\,
	datad => \a6|Add47~2_combout\,
	combout => \a6|ShiftRight0~4_combout\);

-- Location: LCCOMB_X29_Y18_N26
\a6|out~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|out~20_combout\ = (\a6|out[5]~10_combout\ & (((\a6|out[5]~11_combout\)))) # (!\a6|out[5]~10_combout\ & ((\a6|out[5]~11_combout\ & ((\a6|ShiftRight0~5_combout\))) # (!\a6|out[5]~11_combout\ & (\a6|ShiftRight0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a6|ShiftRight0~6_combout\,
	datab => \a6|out[5]~10_combout\,
	datac => \a6|ShiftRight0~5_combout\,
	datad => \a6|out[5]~11_combout\,
	combout => \a6|out~20_combout\);

-- Location: LCCOMB_X29_Y18_N20
\a6|out~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|out~21_combout\ = (\a6|out[5]~10_combout\ & ((\a6|out~20_combout\ & ((\a6|ShiftRight0~7_combout\))) # (!\a6|out~20_combout\ & (\a6|ShiftRight0~4_combout\)))) # (!\a6|out[5]~10_combout\ & (((\a6|out~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a6|ShiftRight0~4_combout\,
	datab => \a6|out[5]~10_combout\,
	datac => \a6|out~20_combout\,
	datad => \a6|ShiftRight0~7_combout\,
	combout => \a6|out~21_combout\);

-- Location: LCCOMB_X29_Y18_N28
\a6|out~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|out~19_combout\ = (\a6|ShiftLeft0~7_combout\ & ((\a6|Add48~2_combout\ & ((\a5|out\(2)))) # (!\a6|Add48~2_combout\ & (\a6|ShiftLeft0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a6|ShiftLeft0~10_combout\,
	datab => \a5|out\(2),
	datac => \a6|Add48~2_combout\,
	datad => \a6|ShiftLeft0~7_combout\,
	combout => \a6|out~19_combout\);

-- Location: LCCOMB_X29_Y18_N6
\a6|out~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|out~22_combout\ = (\a6|Add47~12_combout\ & (((\a6|out~19_combout\)) # (!\a6|ShiftRight1~0_combout\))) # (!\a6|Add47~12_combout\ & (((\a6|out~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110001011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a6|ShiftRight1~0_combout\,
	datab => \a6|out~21_combout\,
	datac => \a6|Add47~12_combout\,
	datad => \a6|out~19_combout\,
	combout => \a6|out~22_combout\);

-- Location: LCCOMB_X28_Y16_N30
\a6|out~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|out~23_combout\ = ((\a6|out~8_combout\ & \a6|out~22_combout\)) # (!\a5|out\(32))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a5|out\(32),
	datab => \a6|out~8_combout\,
	datad => \a6|out~22_combout\,
	combout => \a6|out~23_combout\);

-- Location: FF_X28_Y16_N31
\a6|out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \a6|out~23_combout\,
	ena => \a6|out[2]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a6|out\(6));

-- Location: LCCOMB_X26_Y15_N16
\sq2|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sq2|Add0~0_combout\ = \a6|out\(1) $ (\a6|out\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \a6|out\(1),
	datad => \a6|out\(0),
	combout => \sq2|Add0~0_combout\);

-- Location: LCCOMB_X26_Y15_N14
\sq2|Add5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sq2|Add5~0_combout\ = (\a6|out\(6) & (\a6|out\(2) $ (\sq2|Add2~0_combout\ $ (\sq2|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a6|out\(6),
	datab => \a6|out\(2),
	datac => \sq2|Add2~0_combout\,
	datad => \sq2|Add0~0_combout\,
	combout => \sq2|Add5~0_combout\);

-- Location: LCCOMB_X26_Y18_N14
\sq2|Add2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sq2|Add2~1_combout\ = (\a6|out\(4) & ((\a6|out\(5)) # (\a6|out\(3)))) # (!\a6|out\(4) & (\a6|out\(5) & \a6|out\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a6|out\(4),
	datac => \a6|out\(5),
	datad => \a6|out\(3),
	combout => \sq2|Add2~1_combout\);

-- Location: LCCOMB_X26_Y15_N18
\sq2|Add5~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sq2|Add5~1_combout\ = (\sq2|Add1~0_combout\ & (\sq2|Add4~2_combout\ & (\sq2|Add5~0_combout\ & \sq2|Add2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sq2|Add1~0_combout\,
	datab => \sq2|Add4~2_combout\,
	datac => \sq2|Add5~0_combout\,
	datad => \sq2|Add2~1_combout\,
	combout => \sq2|Add5~1_combout\);

-- Location: LCCOMB_X27_Y15_N18
\sq2|Add5~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sq2|Add5~2_combout\ = (\sq2|Add5~0_combout\ & ((\sq2|Add2~1_combout\ & ((!\sq2|Add4~2_combout\) # (!\sq2|Add1~0_combout\))) # (!\sq2|Add2~1_combout\ & ((\sq2|Add1~0_combout\) # (\sq2|Add4~2_combout\))))) # (!\sq2|Add5~0_combout\ & ((\sq2|Add2~1_combout\ 
-- & ((\sq2|Add1~0_combout\) # (\sq2|Add4~2_combout\))) # (!\sq2|Add2~1_combout\ & (\sq2|Add1~0_combout\ & \sq2|Add4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sq2|Add5~0_combout\,
	datab => \sq2|Add2~1_combout\,
	datac => \sq2|Add1~0_combout\,
	datad => \sq2|Add4~2_combout\,
	combout => \sq2|Add5~2_combout\);

-- Location: LCCOMB_X27_Y15_N20
\sq2|Add5~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sq2|Add5~3_combout\ = \sq2|Add4~2_combout\ $ (\sq2|Add2~1_combout\ $ (\sq2|Add1~0_combout\ $ (\sq2|Add5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sq2|Add4~2_combout\,
	datab => \sq2|Add2~1_combout\,
	datac => \sq2|Add1~0_combout\,
	datad => \sq2|Add5~0_combout\,
	combout => \sq2|Add5~3_combout\);

-- Location: LCCOMB_X27_Y15_N16
\sq2|Add5~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sq2|Add5~4_combout\ = \a6|out\(2) $ (\a6|out\(6) $ (\sq2|Add0~0_combout\ $ (\sq2|Add2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a6|out\(2),
	datab => \a6|out\(6),
	datac => \sq2|Add0~0_combout\,
	datad => \sq2|Add2~0_combout\,
	combout => \sq2|Add5~4_combout\);

-- Location: LCCOMB_X27_Y15_N8
\sq2|Add12~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sq2|Add12~0_combout\ = (\sq2|Add8~0_combout\ & (\sq2|Add5~4_combout\ $ (VCC))) # (!\sq2|Add8~0_combout\ & (\sq2|Add5~4_combout\ & VCC))
-- \sq2|Add12~1\ = CARRY((\sq2|Add8~0_combout\ & \sq2|Add5~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sq2|Add8~0_combout\,
	datab => \sq2|Add5~4_combout\,
	datad => VCC,
	combout => \sq2|Add12~0_combout\,
	cout => \sq2|Add12~1\);

-- Location: LCCOMB_X27_Y15_N10
\sq2|Add12~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sq2|Add12~2_combout\ = (\sq2|Add5~3_combout\ & ((\sq2|Add8~2_combout\ & (\sq2|Add12~1\ & VCC)) # (!\sq2|Add8~2_combout\ & (!\sq2|Add12~1\)))) # (!\sq2|Add5~3_combout\ & ((\sq2|Add8~2_combout\ & (!\sq2|Add12~1\)) # (!\sq2|Add8~2_combout\ & 
-- ((\sq2|Add12~1\) # (GND)))))
-- \sq2|Add12~3\ = CARRY((\sq2|Add5~3_combout\ & (!\sq2|Add8~2_combout\ & !\sq2|Add12~1\)) # (!\sq2|Add5~3_combout\ & ((!\sq2|Add12~1\) # (!\sq2|Add8~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sq2|Add5~3_combout\,
	datab => \sq2|Add8~2_combout\,
	datad => VCC,
	cin => \sq2|Add12~1\,
	combout => \sq2|Add12~2_combout\,
	cout => \sq2|Add12~3\);

-- Location: LCCOMB_X27_Y15_N12
\sq2|Add12~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sq2|Add12~4_combout\ = ((\sq2|Add5~2_combout\ $ (\sq2|Add8~4_combout\ $ (!\sq2|Add12~3\)))) # (GND)
-- \sq2|Add12~5\ = CARRY((\sq2|Add5~2_combout\ & ((\sq2|Add8~4_combout\) # (!\sq2|Add12~3\))) # (!\sq2|Add5~2_combout\ & (\sq2|Add8~4_combout\ & !\sq2|Add12~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sq2|Add5~2_combout\,
	datab => \sq2|Add8~4_combout\,
	datad => VCC,
	cin => \sq2|Add12~3\,
	combout => \sq2|Add12~4_combout\,
	cout => \sq2|Add12~5\);

-- Location: LCCOMB_X27_Y15_N14
\sq2|Add12~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sq2|Add12~6_combout\ = \sq2|Add8~6_combout\ $ (\sq2|Add12~5\ $ (\sq2|Add5~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sq2|Add8~6_combout\,
	datad => \sq2|Add5~1_combout\,
	cin => \sq2|Add12~5\,
	combout => \sq2|Add12~6_combout\);

-- Location: LCCOMB_X30_Y17_N16
\a6|ShiftRight0~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|ShiftRight0~33_combout\ = (\a6|Add47~0_combout\ & (\a5|out\(32) & (!\a6|Add47~2_combout\ & !\a6|Add47~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a6|Add47~0_combout\,
	datab => \a5|out\(32),
	datac => \a6|Add47~2_combout\,
	datad => \a6|Add47~4_combout\,
	combout => \a6|ShiftRight0~33_combout\);

-- Location: LCCOMB_X30_Y17_N30
\a6|out~101\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|out~101_combout\ = (!\a6|out[15]~73_combout\ & ((\a6|out[15]~72_combout\ & ((\a6|ShiftRight0~4_combout\))) # (!\a6|out[15]~72_combout\ & (\a6|ShiftRight0~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a6|out[15]~73_combout\,
	datab => \a6|ShiftRight0~33_combout\,
	datac => \a6|out[15]~72_combout\,
	datad => \a6|ShiftRight0~4_combout\,
	combout => \a6|out~101_combout\);

-- Location: LCCOMB_X30_Y17_N20
\a6|ShiftLeft0~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|ShiftLeft0~32_combout\ = (!\a6|Add48~2_combout\ & ((\a6|Add48~4_combout\ & ((\a6|ShiftLeft0~10_combout\))) # (!\a6|Add48~4_combout\ & (\a6|ShiftLeft0~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a6|Add48~2_combout\,
	datab => \a6|ShiftLeft0~31_combout\,
	datac => \a6|ShiftLeft0~10_combout\,
	datad => \a6|Add48~4_combout\,
	combout => \a6|ShiftLeft0~32_combout\);

-- Location: LCCOMB_X30_Y17_N22
\a6|ShiftLeft0~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|ShiftLeft0~33_combout\ = (\a6|ShiftLeft0~32_combout\) # ((\a6|Add48~2_combout\ & \a5|out\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a6|Add48~2_combout\,
	datac => \a5|out\(2),
	datad => \a6|ShiftLeft0~32_combout\,
	combout => \a6|ShiftLeft0~33_combout\);

-- Location: LCCOMB_X30_Y17_N10
\a6|out~102\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|out~102_combout\ = (\a6|ShiftLeft0~33_combout\ & (((!\a6|ShiftRight1~2_combout\ & \a6|out~7_combout\)) # (!\a6|ShiftLeft0~21_combout\))) # (!\a6|ShiftLeft0~33_combout\ & (!\a6|ShiftRight1~2_combout\ & (\a6|out~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a6|ShiftLeft0~33_combout\,
	datab => \a6|ShiftRight1~2_combout\,
	datac => \a6|out~7_combout\,
	datad => \a6|ShiftLeft0~21_combout\,
	combout => \a6|out~102_combout\);

-- Location: LCCOMB_X30_Y17_N2
\a6|out~103\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|out~103_combout\ = (\a6|out~101_combout\) # ((\a6|out[15]~73_combout\ & (!\a6|out[15]~72_combout\ & \a6|out~102_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a6|out[15]~73_combout\,
	datab => \a6|out[15]~72_combout\,
	datac => \a6|out~101_combout\,
	datad => \a6|out~102_combout\,
	combout => \a6|out~103_combout\);

-- Location: LCCOMB_X30_Y17_N6
\a6|out~104\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|out~104_combout\ = ((\a6|out~79_combout\ & \a6|out~103_combout\)) # (!\a5|out\(32))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a5|out\(32),
	datac => \a6|out~79_combout\,
	datad => \a6|out~103_combout\,
	combout => \a6|out~104_combout\);

-- Location: FF_X30_Y17_N7
\a6|out[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \a6|out~104_combout\,
	ena => \a6|out[2]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a6|out\(14));

-- Location: LCCOMB_X27_Y15_N22
\sq2|Add13~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sq2|Add13~0_combout\ = (\a6|out\(14) & (\sq2|Add12~0_combout\ $ (VCC))) # (!\a6|out\(14) & (\sq2|Add12~0_combout\ & VCC))
-- \sq2|Add13~1\ = CARRY((\a6|out\(14) & \sq2|Add12~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a6|out\(14),
	datab => \sq2|Add12~0_combout\,
	datad => VCC,
	combout => \sq2|Add13~0_combout\,
	cout => \sq2|Add13~1\);

-- Location: LCCOMB_X27_Y15_N24
\sq2|Add13~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sq2|Add13~2_combout\ = (\sq2|Add12~2_combout\ & (!\sq2|Add13~1\)) # (!\sq2|Add12~2_combout\ & ((\sq2|Add13~1\) # (GND)))
-- \sq2|Add13~3\ = CARRY((!\sq2|Add13~1\) # (!\sq2|Add12~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sq2|Add12~2_combout\,
	datad => VCC,
	cin => \sq2|Add13~1\,
	combout => \sq2|Add13~2_combout\,
	cout => \sq2|Add13~3\);

-- Location: LCCOMB_X27_Y15_N26
\sq2|Add13~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sq2|Add13~4_combout\ = (\sq2|Add12~4_combout\ & (\sq2|Add13~3\ $ (GND))) # (!\sq2|Add12~4_combout\ & (!\sq2|Add13~3\ & VCC))
-- \sq2|Add13~5\ = CARRY((\sq2|Add12~4_combout\ & !\sq2|Add13~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sq2|Add12~4_combout\,
	datad => VCC,
	cin => \sq2|Add13~3\,
	combout => \sq2|Add13~4_combout\,
	cout => \sq2|Add13~5\);

-- Location: LCCOMB_X27_Y15_N28
\sq2|Add13~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sq2|Add13~6_combout\ = (\sq2|Add12~6_combout\ & (!\sq2|Add13~5\)) # (!\sq2|Add12~6_combout\ & ((\sq2|Add13~5\) # (GND)))
-- \sq2|Add13~7\ = CARRY((!\sq2|Add13~5\) # (!\sq2|Add12~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sq2|Add12~6_combout\,
	datad => VCC,
	cin => \sq2|Add13~5\,
	combout => \sq2|Add13~6_combout\,
	cout => \sq2|Add13~7\);

-- Location: LCCOMB_X27_Y15_N30
\sq2|Add13~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sq2|Add13~8_combout\ = !\sq2|Add13~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \sq2|Add13~7\,
	combout => \sq2|Add13~8_combout\);

-- Location: LCCOMB_X28_Y15_N0
\sq2|Add28~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sq2|Add28~0_combout\ = (\sq2|Add13~0_combout\ & (\sq2|Add20~0_combout\ $ (VCC))) # (!\sq2|Add13~0_combout\ & (\sq2|Add20~0_combout\ & VCC))
-- \sq2|Add28~1\ = CARRY((\sq2|Add13~0_combout\ & \sq2|Add20~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sq2|Add13~0_combout\,
	datab => \sq2|Add20~0_combout\,
	datad => VCC,
	combout => \sq2|Add28~0_combout\,
	cout => \sq2|Add28~1\);

-- Location: LCCOMB_X28_Y15_N2
\sq2|Add28~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sq2|Add28~2_combout\ = (\sq2|Add13~2_combout\ & ((\sq2|Add20~2_combout\ & (\sq2|Add28~1\ & VCC)) # (!\sq2|Add20~2_combout\ & (!\sq2|Add28~1\)))) # (!\sq2|Add13~2_combout\ & ((\sq2|Add20~2_combout\ & (!\sq2|Add28~1\)) # (!\sq2|Add20~2_combout\ & 
-- ((\sq2|Add28~1\) # (GND)))))
-- \sq2|Add28~3\ = CARRY((\sq2|Add13~2_combout\ & (!\sq2|Add20~2_combout\ & !\sq2|Add28~1\)) # (!\sq2|Add13~2_combout\ & ((!\sq2|Add28~1\) # (!\sq2|Add20~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sq2|Add13~2_combout\,
	datab => \sq2|Add20~2_combout\,
	datad => VCC,
	cin => \sq2|Add28~1\,
	combout => \sq2|Add28~2_combout\,
	cout => \sq2|Add28~3\);

-- Location: LCCOMB_X28_Y15_N4
\sq2|Add28~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sq2|Add28~4_combout\ = ((\sq2|Add13~4_combout\ $ (\sq2|Add20~4_combout\ $ (!\sq2|Add28~3\)))) # (GND)
-- \sq2|Add28~5\ = CARRY((\sq2|Add13~4_combout\ & ((\sq2|Add20~4_combout\) # (!\sq2|Add28~3\))) # (!\sq2|Add13~4_combout\ & (\sq2|Add20~4_combout\ & !\sq2|Add28~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sq2|Add13~4_combout\,
	datab => \sq2|Add20~4_combout\,
	datad => VCC,
	cin => \sq2|Add28~3\,
	combout => \sq2|Add28~4_combout\,
	cout => \sq2|Add28~5\);

-- Location: LCCOMB_X28_Y15_N6
\sq2|Add28~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sq2|Add28~6_combout\ = (\sq2|Add20~6_combout\ & ((\sq2|Add13~6_combout\ & (\sq2|Add28~5\ & VCC)) # (!\sq2|Add13~6_combout\ & (!\sq2|Add28~5\)))) # (!\sq2|Add20~6_combout\ & ((\sq2|Add13~6_combout\ & (!\sq2|Add28~5\)) # (!\sq2|Add13~6_combout\ & 
-- ((\sq2|Add28~5\) # (GND)))))
-- \sq2|Add28~7\ = CARRY((\sq2|Add20~6_combout\ & (!\sq2|Add13~6_combout\ & !\sq2|Add28~5\)) # (!\sq2|Add20~6_combout\ & ((!\sq2|Add28~5\) # (!\sq2|Add13~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sq2|Add20~6_combout\,
	datab => \sq2|Add13~6_combout\,
	datad => VCC,
	cin => \sq2|Add28~5\,
	combout => \sq2|Add28~6_combout\,
	cout => \sq2|Add28~7\);

-- Location: LCCOMB_X28_Y15_N8
\sq2|Add28~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sq2|Add28~8_combout\ = \sq2|Add20~8_combout\ $ (\sq2|Add28~7\ $ (!\sq2|Add13~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sq2|Add20~8_combout\,
	datad => \sq2|Add13~8_combout\,
	cin => \sq2|Add28~7\,
	combout => \sq2|Add28~8_combout\);

-- Location: LCCOMB_X30_Y17_N4
\a6|out~173\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|out~173_combout\ = (\a6|out[28]~135_combout\ & (((\a6|out[28]~133_combout\)))) # (!\a6|out[28]~135_combout\ & ((\a6|out[28]~133_combout\ & (\a5|out\(14))) # (!\a6|out[28]~133_combout\ & ((\a6|ShiftRight0~33_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a5|out\(14),
	datab => \a6|ShiftRight0~33_combout\,
	datac => \a6|out[28]~135_combout\,
	datad => \a6|out[28]~133_combout\,
	combout => \a6|out~173_combout\);

-- Location: LCCOMB_X30_Y16_N0
\a6|out~172\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|out~172_combout\ = (\a6|Add48~4_combout\ & ((\a6|Add48~2_combout\ & ((\a6|ShiftLeft0~35_combout\))) # (!\a6|Add48~2_combout\ & (\a6|ShiftRight0~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a6|Add48~2_combout\,
	datab => \a6|ShiftRight0~34_combout\,
	datac => \a6|Add48~4_combout\,
	datad => \a6|ShiftLeft0~35_combout\,
	combout => \a6|out~172_combout\);

-- Location: LCCOMB_X30_Y17_N8
\a6|out~174\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|out~174_combout\ = (\a6|out[28]~135_combout\ & ((\a6|out~173_combout\ & (\a6|ShiftLeft0~33_combout\)) # (!\a6|out~173_combout\ & ((\a6|out~172_combout\))))) # (!\a6|out[28]~135_combout\ & (((\a6|out~173_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a6|ShiftLeft0~33_combout\,
	datab => \a6|out[28]~135_combout\,
	datac => \a6|out~173_combout\,
	datad => \a6|out~172_combout\,
	combout => \a6|out~174_combout\);

-- Location: LCCOMB_X30_Y17_N26
\a6|out~175\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|out~175_combout\ = (\a6|out~174_combout\ & \a6|out[28]~136_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \a6|out~174_combout\,
	datad => \a6|out[28]~136_combout\,
	combout => \a6|out~175_combout\);

-- Location: FF_X30_Y17_N27
\a6|out[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \a6|out~175_combout\,
	ena => \a6|out[2]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a6|out\(30));

-- Location: LCCOMB_X29_Y19_N6
\a6|out~176\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|out~176_combout\ = (\a5|out\(18) & (\a6|Add48~4_combout\ & ((\a6|Add47~0_combout\) # (\a6|Add48~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a5|out\(18),
	datab => \a6|Add47~0_combout\,
	datac => \a6|Add48~2_combout\,
	datad => \a6|Add48~4_combout\,
	combout => \a6|out~176_combout\);

-- Location: LCCOMB_X29_Y19_N2
\a6|out~177\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|out~177_combout\ = (\a6|Add47~12_combout\ & (\a6|out[5]~40_combout\ & ((\a6|Add48~6_combout\) # (\a6|out~176_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a6|Add47~12_combout\,
	datab => \a6|out[5]~40_combout\,
	datac => \a6|Add48~6_combout\,
	datad => \a6|out~176_combout\,
	combout => \a6|out~177_combout\);

-- Location: LCCOMB_X29_Y19_N8
\a6|out~178\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|out~178_combout\ = (\a6|out[28]~133_combout\ & ((\a6|out~177_combout\ & ((\a6|ShiftLeft0~46_combout\))) # (!\a6|out~177_combout\ & (\a5|out\(18))))) # (!\a6|out[28]~133_combout\ & (((\a6|out~177_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a5|out\(18),
	datab => \a6|out[28]~133_combout\,
	datac => \a6|ShiftLeft0~46_combout\,
	datad => \a6|out~177_combout\,
	combout => \a6|out~178_combout\);

-- Location: LCCOMB_X29_Y19_N24
\a6|out~179\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|out~179_combout\ = (\a6|out~178_combout\ & \a6|out[28]~136_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \a6|out~178_combout\,
	datad => \a6|out[28]~136_combout\,
	combout => \a6|out~179_combout\);

-- Location: FF_X29_Y19_N25
\a6|out[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \a6|out~179_combout\,
	ena => \a6|out[2]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a6|out\(31));

-- Location: LCCOMB_X28_Y15_N16
\sq2|Add29~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sq2|Add29~1_cout\ = CARRY(\a6|out\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a6|out\(31),
	datad => VCC,
	cout => \sq2|Add29~1_cout\);

-- Location: LCCOMB_X28_Y15_N18
\sq2|Add29~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sq2|Add29~2_combout\ = (\a6|out\(30) & ((\sq2|Add28~0_combout\ & (\sq2|Add29~1_cout\ & VCC)) # (!\sq2|Add28~0_combout\ & (!\sq2|Add29~1_cout\)))) # (!\a6|out\(30) & ((\sq2|Add28~0_combout\ & (!\sq2|Add29~1_cout\)) # (!\sq2|Add28~0_combout\ & 
-- ((\sq2|Add29~1_cout\) # (GND)))))
-- \sq2|Add29~3\ = CARRY((\a6|out\(30) & (!\sq2|Add28~0_combout\ & !\sq2|Add29~1_cout\)) # (!\a6|out\(30) & ((!\sq2|Add29~1_cout\) # (!\sq2|Add28~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a6|out\(30),
	datab => \sq2|Add28~0_combout\,
	datad => VCC,
	cin => \sq2|Add29~1_cout\,
	combout => \sq2|Add29~2_combout\,
	cout => \sq2|Add29~3\);

-- Location: LCCOMB_X28_Y15_N20
\sq2|Add29~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sq2|Add29~4_combout\ = (\sq2|Add28~2_combout\ & (\sq2|Add29~3\ $ (GND))) # (!\sq2|Add28~2_combout\ & (!\sq2|Add29~3\ & VCC))
-- \sq2|Add29~5\ = CARRY((\sq2|Add28~2_combout\ & !\sq2|Add29~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sq2|Add28~2_combout\,
	datad => VCC,
	cin => \sq2|Add29~3\,
	combout => \sq2|Add29~4_combout\,
	cout => \sq2|Add29~5\);

-- Location: LCCOMB_X28_Y15_N22
\sq2|Add29~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sq2|Add29~6_combout\ = (\sq2|Add28~4_combout\ & (!\sq2|Add29~5\)) # (!\sq2|Add28~4_combout\ & ((\sq2|Add29~5\) # (GND)))
-- \sq2|Add29~7\ = CARRY((!\sq2|Add29~5\) # (!\sq2|Add28~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sq2|Add28~4_combout\,
	datad => VCC,
	cin => \sq2|Add29~5\,
	combout => \sq2|Add29~6_combout\,
	cout => \sq2|Add29~7\);

-- Location: LCCOMB_X28_Y15_N24
\sq2|Add29~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sq2|Add29~8_combout\ = (\sq2|Add28~6_combout\ & (\sq2|Add29~7\ $ (GND))) # (!\sq2|Add28~6_combout\ & (!\sq2|Add29~7\ & VCC))
-- \sq2|Add29~9\ = CARRY((\sq2|Add28~6_combout\ & !\sq2|Add29~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sq2|Add28~6_combout\,
	datad => VCC,
	cin => \sq2|Add29~7\,
	combout => \sq2|Add29~8_combout\,
	cout => \sq2|Add29~9\);

-- Location: LCCOMB_X28_Y15_N26
\sq2|Add29~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sq2|Add29~10_combout\ = (\sq2|Add28~8_combout\ & (!\sq2|Add29~9\)) # (!\sq2|Add28~8_combout\ & ((\sq2|Add29~9\) # (GND)))
-- \sq2|Add29~11\ = CARRY((!\sq2|Add29~9\) # (!\sq2|Add28~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sq2|Add28~8_combout\,
	datad => VCC,
	cin => \sq2|Add29~9\,
	combout => \sq2|Add29~10_combout\,
	cout => \sq2|Add29~11\);

-- Location: LCCOMB_X28_Y15_N30
\sq2|LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sq2|LessThan0~0_combout\ = (\sq2|Add29~6_combout\) # ((\sq2|Add29~4_combout\) # ((\sq2|Add29~2_combout\) # (\sq2|Add29~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sq2|Add29~6_combout\,
	datab => \sq2|Add29~4_combout\,
	datac => \sq2|Add29~2_combout\,
	datad => \sq2|Add29~8_combout\,
	combout => \sq2|LessThan0~0_combout\);

-- Location: LCCOMB_X28_Y15_N28
\sq2|Add29~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sq2|Add29~12_combout\ = !\sq2|Add29~11\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \sq2|Add29~11\,
	combout => \sq2|Add29~12_combout\);

-- Location: LCCOMB_X28_Y15_N10
\sq2|LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sq2|LessThan0~1_combout\ = (\sq2|Add29~12_combout\) # ((\sq2|Add29~10_combout\ & \sq2|LessThan0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sq2|Add29~10_combout\,
	datac => \sq2|LessThan0~0_combout\,
	datad => \sq2|Add29~12_combout\,
	combout => \sq2|LessThan0~1_combout\);

-- Location: LCCOMB_X28_Y14_N22
\sq2|out[2]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sq2|out[2]~12_combout\ = (\sq2|LessThan0~1_combout\ & ((\a6|out\(5)) # ((\a6|out\(4))))) # (!\sq2|LessThan0~1_combout\ & (((\a6|out\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a6|out\(5),
	datab => \a6|out\(2),
	datac => \a6|out\(4),
	datad => \sq2|LessThan0~1_combout\,
	combout => \sq2|out[2]~12_combout\);

-- Location: LCCOMB_X31_Y14_N30
\a6|out[32]~180\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a6|out[32]~180_combout\ = (\a5|out\(32) & (\a6|Add43~8_combout\ & ((\a6|out\(32)) # (!\a6|out[2]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a5|out\(32),
	datab => \a6|out[2]~17_combout\,
	datac => \a6|Add43~8_combout\,
	datad => \a6|out\(32),
	combout => \a6|out[32]~180_combout\);

-- Location: FF_X30_Y14_N23
\a6|out[32]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \a6|out[32]~180_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a6|out\(32));

-- Location: LCCOMB_X29_Y15_N12
\sq2|out[7]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sq2|out[7]~0_combout\ = (\sq2|LessThan0~1_combout\ & ((\a6|out\(15)) # ((\a6|out\(14))))) # (!\sq2|LessThan0~1_combout\ & (((\a6|out\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a6|out\(15),
	datab => \a6|out\(7),
	datac => \a6|out\(14),
	datad => \sq2|LessThan0~1_combout\,
	combout => \sq2|out[7]~0_combout\);

-- Location: LCCOMB_X29_Y14_N4
\sq2|out[4]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sq2|out[4]~1_combout\ = (\sq2|LessThan0~1_combout\ & ((\a6|out\(9)) # ((\a6|out\(8))))) # (!\sq2|LessThan0~1_combout\ & (((\a6|out\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a6|out\(9),
	datab => \a6|out\(8),
	datac => \a6|out\(4),
	datad => \sq2|LessThan0~1_combout\,
	combout => \sq2|out[4]~1_combout\);

-- Location: LCCOMB_X28_Y14_N30
\sq2|out[6]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sq2|out[6]~2_combout\ = (\sq2|LessThan0~1_combout\ & ((\a6|out\(13)) # ((\a6|out\(12))))) # (!\sq2|LessThan0~1_combout\ & (((\a6|out\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a6|out\(13),
	datab => \a6|out\(12),
	datac => \a6|out\(6),
	datad => \sq2|LessThan0~1_combout\,
	combout => \sq2|out[6]~2_combout\);

-- Location: LCCOMB_X28_Y14_N16
\sq2|out[3]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sq2|out[3]~13_combout\ = (\sq2|LessThan0~1_combout\ & (((\a6|out\(7)) # (\a6|out\(6))))) # (!\sq2|LessThan0~1_combout\ & (\a6|out\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a6|out\(3),
	datab => \a6|out\(7),
	datac => \a6|out\(6),
	datad => \sq2|LessThan0~1_combout\,
	combout => \sq2|out[3]~13_combout\);

-- Location: LCCOMB_X29_Y15_N0
\sq2|out[5]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sq2|out[5]~3_combout\ = (\sq2|LessThan0~1_combout\ & ((\a6|out\(10)) # ((\a6|out\(11))))) # (!\sq2|LessThan0~1_combout\ & (((\a6|out\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a6|out\(10),
	datab => \a6|out\(11),
	datac => \a6|out\(5),
	datad => \sq2|LessThan0~1_combout\,
	combout => \sq2|out[5]~3_combout\);

-- Location: LCCOMB_X29_Y14_N14
\sig2|Equal16~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sig2|Equal16~6_combout\ = (!\sq2|out[4]~1_combout\ & (!\sq2|out[6]~2_combout\ & (!\sq2|out[3]~13_combout\ & !\sq2|out[5]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sq2|out[4]~1_combout\,
	datab => \sq2|out[6]~2_combout\,
	datac => \sq2|out[3]~13_combout\,
	datad => \sq2|out[5]~3_combout\,
	combout => \sig2|Equal16~6_combout\);

-- Location: LCCOMB_X28_Y14_N8
\sq2|out[0]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sq2|out[0]~4_combout\ = (\a6|out\(0)) # ((\a6|out\(1) & \sq2|LessThan0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a6|out\(0),
	datac => \a6|out\(1),
	datad => \sq2|LessThan0~1_combout\,
	combout => \sq2|out[0]~4_combout\);

-- Location: LCCOMB_X30_Y16_N30
\sig2|Equal16~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sig2|Equal16~4_combout\ = (\a6|out\(23)) # ((\a6|out\(22)) # ((\a6|out\(21)) # (\a6|out\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a6|out\(23),
	datab => \a6|out\(22),
	datac => \a6|out\(21),
	datad => \a6|out\(20),
	combout => \sig2|Equal16~4_combout\);

-- Location: LCCOMB_X29_Y15_N30
\sig2|Equal16~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sig2|Equal16~5_combout\ = (\sq2|LessThan0~1_combout\ & (((!\sig2|Equal16~4_combout\)))) # (!\sq2|LessThan0~1_combout\ & (!\a6|out\(10) & (!\a6|out\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a6|out\(10),
	datab => \a6|out\(11),
	datac => \sig2|Equal16~4_combout\,
	datad => \sq2|LessThan0~1_combout\,
	combout => \sig2|Equal16~5_combout\);

-- Location: LCCOMB_X28_Y15_N12
\sq2|out[12]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sq2|out[12]~10_combout\ = (\sq2|LessThan0~1_combout\ & (((\a6|out\(24)) # (\a6|out\(25))))) # (!\sq2|LessThan0~1_combout\ & (\a6|out\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a6|out\(12),
	datab => \a6|out\(24),
	datac => \a6|out\(25),
	datad => \sq2|LessThan0~1_combout\,
	combout => \sq2|out[12]~10_combout\);

-- Location: LCCOMB_X29_Y15_N16
\sq2|out[15]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sq2|out[15]~7_combout\ = (\sq2|LessThan0~1_combout\ & ((\a6|out\(31)) # ((\a6|out\(30))))) # (!\sq2|LessThan0~1_combout\ & (((\a6|out\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a6|out\(31),
	datab => \a6|out\(15),
	datac => \a6|out\(30),
	datad => \sq2|LessThan0~1_combout\,
	combout => \sq2|out[15]~7_combout\);

-- Location: LCCOMB_X29_Y15_N22
\sq2|out[13]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sq2|out[13]~9_combout\ = (\sq2|LessThan0~1_combout\ & ((\a6|out\(27)) # ((\a6|out\(26))))) # (!\sq2|LessThan0~1_combout\ & (((\a6|out\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a6|out\(27),
	datab => \a6|out\(13),
	datac => \a6|out\(26),
	datad => \sq2|LessThan0~1_combout\,
	combout => \sq2|out[13]~9_combout\);

-- Location: LCCOMB_X29_Y15_N2
\sq2|out[14]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sq2|out[14]~8_combout\ = (\sq2|LessThan0~1_combout\ & (((\a6|out\(28)) # (\a6|out\(29))))) # (!\sq2|LessThan0~1_combout\ & (\a6|out\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a6|out\(14),
	datab => \a6|out\(28),
	datac => \a6|out\(29),
	datad => \sq2|LessThan0~1_combout\,
	combout => \sq2|out[14]~8_combout\);

-- Location: LCCOMB_X29_Y15_N6
\sig2|Equal16~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sig2|Equal16~3_combout\ = (!\sq2|out[12]~10_combout\ & (!\sq2|out[15]~7_combout\ & (!\sq2|out[13]~9_combout\ & !\sq2|out[14]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sq2|out[12]~10_combout\,
	datab => \sq2|out[15]~7_combout\,
	datac => \sq2|out[13]~9_combout\,
	datad => \sq2|out[14]~8_combout\,
	combout => \sig2|Equal16~3_combout\);

-- Location: LCCOMB_X28_Y15_N14
\sq2|out[8]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sq2|out[8]~6_combout\ = (\sq2|LessThan0~1_combout\ & ((\a6|out\(16)) # ((\a6|out\(17))))) # (!\sq2|LessThan0~1_combout\ & (((\a6|out\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a6|out\(16),
	datab => \a6|out\(17),
	datac => \a6|out\(8),
	datad => \sq2|LessThan0~1_combout\,
	combout => \sq2|out[8]~6_combout\);

-- Location: LCCOMB_X28_Y14_N14
\sq2|out[9]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sq2|out[9]~5_combout\ = (\sq2|LessThan0~1_combout\ & (((\a6|out\(18)) # (\a6|out\(19))))) # (!\sq2|LessThan0~1_combout\ & (\a6|out\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a6|out\(9),
	datab => \a6|out\(18),
	datac => \a6|out\(19),
	datad => \sq2|LessThan0~1_combout\,
	combout => \sq2|out[9]~5_combout\);

-- Location: LCCOMB_X29_Y14_N16
\sig2|Equal16~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sig2|Equal16~2_combout\ = (!\sq2|out[8]~6_combout\ & !\sq2|out[9]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sq2|out[8]~6_combout\,
	datad => \sq2|out[9]~5_combout\,
	combout => \sig2|Equal16~2_combout\);

-- Location: LCCOMB_X29_Y14_N28
\sig2|Equal13~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sig2|Equal13~0_combout\ = (\sq2|out[0]~4_combout\ & (\sig2|Equal16~5_combout\ & (\sig2|Equal16~3_combout\ & \sig2|Equal16~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sq2|out[0]~4_combout\,
	datab => \sig2|Equal16~5_combout\,
	datac => \sig2|Equal16~3_combout\,
	datad => \sig2|Equal16~2_combout\,
	combout => \sig2|Equal13~0_combout\);

-- Location: LCCOMB_X29_Y14_N8
\sig2|Equal13~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sig2|Equal13~1_combout\ = (!\sq2|out[7]~0_combout\ & (\sig2|Equal16~6_combout\ & \sig2|Equal13~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sq2|out[7]~0_combout\,
	datac => \sig2|Equal16~6_combout\,
	datad => \sig2|Equal13~0_combout\,
	combout => \sig2|Equal13~1_combout\);

-- Location: LCCOMB_X30_Y14_N8
\sig2|Equal17~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sig2|Equal17~0_combout\ = (!\sq2|out[2]~12_combout\ & (\a6|out\(32) & \sig2|Equal13~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sq2|out[2]~12_combout\,
	datab => \a6|out\(32),
	datad => \sig2|Equal13~1_combout\,
	combout => \sig2|Equal17~0_combout\);

-- Location: LCCOMB_X29_Y14_N2
\sig2|WideOr1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sig2|WideOr1~2_combout\ = (\sq2|out[5]~3_combout\ & ((!\sq2|out[4]~1_combout\))) # (!\sq2|out[5]~3_combout\ & (\sq2|out[6]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sq2|out[6]~2_combout\,
	datac => \sq2|out[4]~1_combout\,
	datad => \sq2|out[5]~3_combout\,
	combout => \sig2|WideOr1~2_combout\);

-- Location: LCCOMB_X28_Y14_N4
\sq2|out[1]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sq2|out[1]~11_combout\ = (\sq2|LessThan0~1_combout\ & ((\a6|out\(3)) # ((\a6|out\(2))))) # (!\sq2|LessThan0~1_combout\ & (((\a6|out\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a6|out\(3),
	datab => \a6|out\(2),
	datac => \a6|out\(1),
	datad => \sq2|LessThan0~1_combout\,
	combout => \sq2|out[1]~11_combout\);

-- Location: LCCOMB_X28_Y14_N6
\sig2|Equal20~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sig2|Equal20~0_combout\ = (\a6|out\(32) & (\sq2|out[1]~11_combout\ & (\sq2|out[2]~12_combout\ & \sq2|out[3]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a6|out\(32),
	datab => \sq2|out[1]~11_combout\,
	datac => \sq2|out[2]~12_combout\,
	datad => \sq2|out[3]~13_combout\,
	combout => \sig2|Equal20~0_combout\);

-- Location: LCCOMB_X29_Y14_N22
\sig2|WideOr1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sig2|WideOr1~3_combout\ = (\sq2|out[7]~0_combout\) # ((\sig2|WideOr1~2_combout\) # ((!\sig2|Equal13~0_combout\) # (!\sig2|Equal20~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sq2|out[7]~0_combout\,
	datab => \sig2|WideOr1~2_combout\,
	datac => \sig2|Equal20~0_combout\,
	datad => \sig2|Equal13~0_combout\,
	combout => \sig2|WideOr1~3_combout\);

-- Location: LCCOMB_X29_Y14_N18
\sig2|Equal24~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sig2|Equal24~0_combout\ = (\sq2|out[4]~1_combout\ & (\sq2|out[6]~2_combout\ & (\sq2|out[7]~0_combout\ & \sq2|out[5]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sq2|out[4]~1_combout\,
	datab => \sq2|out[6]~2_combout\,
	datac => \sq2|out[7]~0_combout\,
	datad => \sq2|out[5]~3_combout\,
	combout => \sig2|Equal24~0_combout\);

-- Location: LCCOMB_X28_Y14_N0
\sig2|Equal27~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sig2|Equal27~0_combout\ = (\a6|out\(32) & (\sq2|out[0]~4_combout\ & (\sq2|out[2]~12_combout\ & \sq2|out[3]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a6|out\(32),
	datab => \sq2|out[0]~4_combout\,
	datac => \sq2|out[2]~12_combout\,
	datad => \sq2|out[3]~13_combout\,
	combout => \sig2|Equal27~0_combout\);

-- Location: LCCOMB_X28_Y14_N20
\sq2|out[10]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sq2|out[10]~14_combout\ = (\sq2|LessThan0~1_combout\ & ((\a6|out\(20)) # ((\a6|out\(21))))) # (!\sq2|LessThan0~1_combout\ & (((\a6|out\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a6|out\(20),
	datab => \a6|out\(10),
	datac => \a6|out\(21),
	datad => \sq2|LessThan0~1_combout\,
	combout => \sq2|out[10]~14_combout\);

-- Location: LCCOMB_X28_Y14_N18
\sig2|Equal27~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sig2|Equal27~1_combout\ = (\sq2|out[8]~6_combout\ & (\sq2|out[1]~11_combout\ & (\sq2|out[9]~5_combout\ & \sq2|out[10]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sq2|out[8]~6_combout\,
	datab => \sq2|out[1]~11_combout\,
	datac => \sq2|out[9]~5_combout\,
	datad => \sq2|out[10]~14_combout\,
	combout => \sig2|Equal27~1_combout\);

-- Location: LCCOMB_X29_Y14_N30
\sig2|Equal27~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sig2|Equal27~2_combout\ = (\sig2|Equal16~3_combout\ & (\sig2|Equal24~0_combout\ & (\sig2|Equal27~0_combout\ & \sig2|Equal27~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sig2|Equal16~3_combout\,
	datab => \sig2|Equal24~0_combout\,
	datac => \sig2|Equal27~0_combout\,
	datad => \sig2|Equal27~1_combout\,
	combout => \sig2|Equal27~2_combout\);

-- Location: LCCOMB_X29_Y14_N10
\sig2|WideOr1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sig2|WideOr1~4_combout\ = (((!\sig2|Equal24~0_combout\) # (!\sig2|Equal16~3_combout\)) # (!\sig2|Equal16~5_combout\)) # (!\sq2|out[0]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sq2|out[0]~4_combout\,
	datab => \sig2|Equal16~5_combout\,
	datac => \sig2|Equal16~3_combout\,
	datad => \sig2|Equal24~0_combout\,
	combout => \sig2|WideOr1~4_combout\);

-- Location: LCCOMB_X29_Y14_N26
\sig2|WideOr1~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sig2|WideOr1~5_combout\ = (!\sig2|Equal27~2_combout\ & (((\sig2|WideOr1~4_combout\) # (!\sig2|Equal20~0_combout\)) # (!\sq2|out[8]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sq2|out[8]~6_combout\,
	datab => \sig2|Equal20~0_combout\,
	datac => \sig2|Equal27~2_combout\,
	datad => \sig2|WideOr1~4_combout\,
	combout => \sig2|WideOr1~5_combout\);

-- Location: LCCOMB_X28_Y14_N24
\sig2|Equal32~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sig2|Equal32~0_combout\ = (\sq2|out[8]~6_combout\ & \sq2|out[12]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sq2|out[8]~6_combout\,
	datad => \sq2|out[12]~10_combout\,
	combout => \sig2|Equal32~0_combout\);

-- Location: LCCOMB_X28_Y14_N26
\sq2|out[11]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sq2|out[11]~15_combout\ = (\sq2|LessThan0~1_combout\ & (((\a6|out\(23)) # (\a6|out\(22))))) # (!\sq2|LessThan0~1_combout\ & (\a6|out\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a6|out\(11),
	datab => \a6|out\(23),
	datac => \a6|out\(22),
	datad => \sq2|LessThan0~1_combout\,
	combout => \sq2|out[11]~15_combout\);

-- Location: LCCOMB_X28_Y14_N2
\sig2|Equal32~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sig2|Equal32~1_combout\ = (\sq2|out[11]~15_combout\ & (\sq2|out[9]~5_combout\ & (\sq2|out[0]~4_combout\ & \sq2|out[10]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sq2|out[11]~15_combout\,
	datab => \sq2|out[9]~5_combout\,
	datac => \sq2|out[0]~4_combout\,
	datad => \sq2|out[10]~14_combout\,
	combout => \sig2|Equal32~1_combout\);

-- Location: LCCOMB_X29_Y14_N20
\sig2|WideOr1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sig2|WideOr1~6_combout\ = (\sig2|Equal32~1_combout\ & ((\sq2|out[14]~8_combout\ & ((\sq2|out[13]~9_combout\))) # (!\sq2|out[14]~8_combout\ & (!\sq2|out[15]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sq2|out[15]~7_combout\,
	datab => \sq2|out[13]~9_combout\,
	datac => \sq2|out[14]~8_combout\,
	datad => \sig2|Equal32~1_combout\,
	combout => \sig2|WideOr1~6_combout\);

-- Location: LCCOMB_X29_Y14_N0
\sig2|WideOr1~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sig2|WideOr1~7_combout\ = (\sig2|Equal20~0_combout\ & ((\sig2|Equal13~0_combout\) # ((\sig2|Equal32~0_combout\ & \sig2|WideOr1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sig2|Equal20~0_combout\,
	datab => \sig2|Equal13~0_combout\,
	datac => \sig2|Equal32~0_combout\,
	datad => \sig2|WideOr1~6_combout\,
	combout => \sig2|WideOr1~7_combout\);

-- Location: LCCOMB_X29_Y14_N6
\sig2|WideOr1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sig2|WideOr1~8_combout\ = (\sig2|WideOr1~3_combout\ & (\sig2|WideOr1~5_combout\ & ((!\sig2|WideOr1~7_combout\) # (!\sig2|Equal24~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sig2|WideOr1~3_combout\,
	datab => \sig2|Equal24~0_combout\,
	datac => \sig2|WideOr1~5_combout\,
	datad => \sig2|WideOr1~7_combout\,
	combout => \sig2|WideOr1~8_combout\);

-- Location: LCCOMB_X30_Y14_N2
\sig2|Equal19~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sig2|Equal19~0_combout\ = (\sq2|out[2]~12_combout\ & (\a6|out\(32) & (\sq2|out[1]~11_combout\ & \sig2|Equal13~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sq2|out[2]~12_combout\,
	datab => \a6|out\(32),
	datac => \sq2|out[1]~11_combout\,
	datad => \sig2|Equal13~1_combout\,
	combout => \sig2|Equal19~0_combout\);

-- Location: LCCOMB_X30_Y14_N4
\sig2|WideOr9~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sig2|WideOr9~1_combout\ = (\sig2|WideOr1~8_combout\ & (!\sig2|Equal19~0_combout\ & ((!\sq2|out[1]~11_combout\) # (!\sig2|Equal17~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sig2|Equal17~0_combout\,
	datab => \sig2|WideOr1~8_combout\,
	datac => \sig2|Equal19~0_combout\,
	datad => \sq2|out[1]~11_combout\,
	combout => \sig2|WideOr9~1_combout\);

-- Location: LCCOMB_X30_Y14_N12
\sig2|Equal15~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sig2|Equal15~0_combout\ = (!\sq2|out[2]~12_combout\ & (!\a6|out\(32) & \sig2|Equal13~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sq2|out[2]~12_combout\,
	datab => \a6|out\(32),
	datad => \sig2|Equal13~1_combout\,
	combout => \sig2|Equal15~0_combout\);

-- Location: LCCOMB_X30_Y14_N22
\sig2|Equal13~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sig2|Equal13~3_combout\ = (\sq2|out[2]~12_combout\ & (\sq2|out[1]~11_combout\ & (!\a6|out\(32) & \sig2|Equal13~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sq2|out[2]~12_combout\,
	datab => \sq2|out[1]~11_combout\,
	datac => \a6|out\(32),
	datad => \sig2|Equal13~1_combout\,
	combout => \sig2|Equal13~3_combout\);

-- Location: LCCOMB_X28_Y14_N12
\sig2|Equal16~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sig2|Equal16~10_combout\ = (!\sq2|out[2]~12_combout\ & (!\a6|out\(0) & ((!\a6|out\(1)) # (!\sq2|LessThan0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sq2|out[2]~12_combout\,
	datab => \sq2|LessThan0~1_combout\,
	datac => \a6|out\(1),
	datad => \a6|out\(0),
	combout => \sig2|Equal16~10_combout\);

-- Location: LCCOMB_X29_Y15_N4
\sig2|Equal16~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sig2|Equal16~7_combout\ = (\sig2|Equal16~5_combout\ & \sig2|Equal16~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sig2|Equal16~5_combout\,
	datad => \sig2|Equal16~3_combout\,
	combout => \sig2|Equal16~7_combout\);

-- Location: LCCOMB_X29_Y15_N28
\sig2|Equal16~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sig2|Equal16~8_combout\ = (!\sq2|out[7]~0_combout\ & (!\sq2|out[8]~6_combout\ & !\sq2|out[9]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sq2|out[7]~0_combout\,
	datac => \sq2|out[8]~6_combout\,
	datad => \sq2|out[9]~5_combout\,
	combout => \sig2|Equal16~8_combout\);

-- Location: LCCOMB_X29_Y15_N20
\sig2|Equal16~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sig2|Equal16~9_combout\ = (!\sq2|out[1]~11_combout\ & (!\a6|out\(32) & (\sig2|Equal16~7_combout\ & \sig2|Equal16~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sq2|out[1]~11_combout\,
	datab => \a6|out\(32),
	datac => \sig2|Equal16~7_combout\,
	datad => \sig2|Equal16~8_combout\,
	combout => \sig2|Equal16~9_combout\);

-- Location: LCCOMB_X30_Y14_N10
\sig2|WideOr9~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sig2|WideOr9~0_combout\ = (!\sig2|Equal17~0_combout\ & (\sig2|WideOr1~8_combout\ & !\sig2|Equal19~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sig2|Equal17~0_combout\,
	datac => \sig2|WideOr1~8_combout\,
	datad => \sig2|Equal19~0_combout\,
	combout => \sig2|WideOr9~0_combout\);

-- Location: LCCOMB_X30_Y14_N6
\sig2|WideOr1~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sig2|WideOr1~9_combout\ = (\sig2|WideOr9~0_combout\ & (((!\sig2|Equal16~9_combout\) # (!\sig2|Equal16~10_combout\)) # (!\sig2|Equal16~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sig2|Equal16~6_combout\,
	datab => \sig2|Equal16~10_combout\,
	datac => \sig2|Equal16~9_combout\,
	datad => \sig2|WideOr9~0_combout\,
	combout => \sig2|WideOr1~9_combout\);

-- Location: LCCOMB_X30_Y14_N16
\sig2|WideOr1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sig2|WideOr1~10_combout\ = (!\sig2|Equal15~0_combout\ & (!\sig2|Equal13~3_combout\ & \sig2|WideOr1~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sig2|Equal15~0_combout\,
	datac => \sig2|Equal13~3_combout\,
	datad => \sig2|WideOr1~9_combout\,
	combout => \sig2|WideOr1~10_combout\);

-- Location: LCCOMB_X27_Y14_N16
\sig2|Equal13~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sig2|Equal13~2_combout\ = (\sq2|out[2]~12_combout\ & (!\a6|out\(32) & \sq2|out[1]~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sq2|out[2]~12_combout\,
	datac => \a6|out\(32),
	datad => \sq2|out[1]~11_combout\,
	combout => \sig2|Equal13~2_combout\);

-- Location: LCCOMB_X29_Y15_N8
\sig2|WideNor0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sig2|WideNor0~0_combout\ = (\sq2|out[8]~6_combout\ & ((!\sq2|out[7]~0_combout\))) # (!\sq2|out[8]~6_combout\ & (\sq2|out[9]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sq2|out[9]~5_combout\,
	datac => \sq2|out[7]~0_combout\,
	datad => \sq2|out[8]~6_combout\,
	combout => \sig2|WideNor0~0_combout\);

-- Location: LCCOMB_X29_Y15_N14
\sig2|WideNor0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sig2|WideNor0~1_combout\ = (\sq2|out[6]~2_combout\ & (((!\sig2|WideNor0~0_combout\ & \sq2|out[5]~3_combout\)))) # (!\sq2|out[6]~2_combout\ & (\sig2|Equal16~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sq2|out[6]~2_combout\,
	datab => \sig2|Equal16~8_combout\,
	datac => \sig2|WideNor0~0_combout\,
	datad => \sq2|out[5]~3_combout\,
	combout => \sig2|WideNor0~1_combout\);

-- Location: LCCOMB_X29_Y15_N18
\sig2|WideNor0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sig2|WideNor0~2_combout\ = (\sig2|Equal16~7_combout\ & (\sig2|WideNor0~1_combout\ & ((\sq2|out[4]~1_combout\) # (!\sq2|out[5]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sq2|out[4]~1_combout\,
	datab => \sig2|Equal16~7_combout\,
	datac => \sig2|WideNor0~1_combout\,
	datad => \sq2|out[5]~3_combout\,
	combout => \sig2|WideNor0~2_combout\);

-- Location: LCCOMB_X27_Y14_N18
\sig2|WideNor0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sig2|WideNor0~5_combout\ = (\sq2|out[10]~14_combout\ & (\sq2|out[8]~6_combout\ & (\sq2|out[9]~5_combout\ & \sig2|Equal24~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sq2|out[10]~14_combout\,
	datab => \sq2|out[8]~6_combout\,
	datac => \sq2|out[9]~5_combout\,
	datad => \sig2|Equal24~0_combout\,
	combout => \sig2|WideNor0~5_combout\);

-- Location: LCCOMB_X29_Y15_N26
\sig2|WideNor0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sig2|WideNor0~3_combout\ = (\sq2|out[12]~10_combout\ & (\sq2|out[11]~15_combout\ $ (!\sq2|out[13]~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sq2|out[12]~10_combout\,
	datac => \sq2|out[11]~15_combout\,
	datad => \sq2|out[13]~9_combout\,
	combout => \sig2|WideNor0~3_combout\);

-- Location: LCCOMB_X29_Y15_N10
\sig2|WideNor0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sig2|WideNor0~4_combout\ = (\sq2|out[14]~8_combout\ & (\sig2|WideNor0~3_combout\ & ((\sq2|out[13]~9_combout\)))) # (!\sq2|out[14]~8_combout\ & (!\sq2|out[15]~7_combout\ & (\sig2|WideNor0~3_combout\ $ (!\sq2|out[13]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sig2|WideNor0~3_combout\,
	datab => \sq2|out[15]~7_combout\,
	datac => \sq2|out[13]~9_combout\,
	datad => \sq2|out[14]~8_combout\,
	combout => \sig2|WideNor0~4_combout\);

-- Location: LCCOMB_X29_Y15_N24
\sig2|WideNor0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sig2|WideNor0~6_combout\ = (\sq2|out[3]~13_combout\ & ((\sig2|WideNor0~2_combout\) # ((\sig2|WideNor0~5_combout\ & \sig2|WideNor0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sq2|out[3]~13_combout\,
	datab => \sig2|WideNor0~2_combout\,
	datac => \sig2|WideNor0~5_combout\,
	datad => \sig2|WideNor0~4_combout\,
	combout => \sig2|WideNor0~6_combout\);

-- Location: LCCOMB_X28_Y14_N10
\sig2|WideNor0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sig2|WideNor0~7_combout\ = ((\sq2|out[0]~4_combout\ & (\sig2|Equal13~2_combout\ & \sig2|WideNor0~6_combout\))) # (!\sig2|WideOr1~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sig2|WideOr1~10_combout\,
	datab => \sq2|out[0]~4_combout\,
	datac => \sig2|Equal13~2_combout\,
	datad => \sig2|WideNor0~6_combout\,
	combout => \sig2|WideNor0~7_combout\);

-- Location: CLKCTRL_G8
\sig2|WideNor0~7clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \sig2|WideNor0~7clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \sig2|WideNor0~7clkctrl_outclk\);

-- Location: LCCOMB_X30_Y14_N26
\sig2|out[3]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sig2|out\(3) = (GLOBAL(\sig2|WideNor0~7clkctrl_outclk\) & ((\sig2|WideOr9~1_combout\))) # (!GLOBAL(\sig2|WideNor0~7clkctrl_outclk\) & (\sig2|out\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sig2|out\(3),
	datac => \sig2|WideOr9~1_combout\,
	datad => \sig2|WideNor0~7clkctrl_outclk\,
	combout => \sig2|out\(3));

-- Location: LCCOMB_X29_Y14_N24
\sig2|WideOr13~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sig2|WideOr13~0_combout\ = (\sig2|WideOr1~8_combout\ & !\sig2|Equal19~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sig2|WideOr1~8_combout\,
	datad => \sig2|Equal19~0_combout\,
	combout => \sig2|WideOr13~0_combout\);

-- Location: LCCOMB_X29_Y14_N12
\sig2|out[1]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sig2|out\(1) = (GLOBAL(\sig2|WideNor0~7clkctrl_outclk\) & (\sig2|WideOr13~0_combout\)) # (!GLOBAL(\sig2|WideNor0~7clkctrl_outclk\) & ((\sig2|out\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sig2|WideOr13~0_combout\,
	datac => \sig2|WideNor0~7clkctrl_outclk\,
	datad => \sig2|out\(1),
	combout => \sig2|out\(1));

-- Location: LCCOMB_X30_Y14_N20
\m6|WideOr113\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m6|WideOr113~combout\ = (\sig2|out\(3)) # (\sig2|out\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sig2|out\(3),
	datad => \sig2|out\(1),
	combout => \m6|WideOr113~combout\);

-- Location: FF_X30_Y14_N21
\m6|out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \m6|WideOr113~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m6|out\(1));

-- Location: FF_X30_Y14_N27
\m6|out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sig2|out\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m6|out\(2));

-- Location: LCCOMB_X28_Y14_N28
\sig2|out[0]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sig2|out\(0) = (GLOBAL(\sig2|WideNor0~7clkctrl_outclk\) & ((\sig2|WideOr1~8_combout\))) # (!GLOBAL(\sig2|WideNor0~7clkctrl_outclk\) & (\sig2|out\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sig2|out\(0),
	datac => \sig2|WideOr1~8_combout\,
	datad => \sig2|WideNor0~7clkctrl_outclk\,
	combout => \sig2|out\(0));

-- Location: FF_X28_Y14_N29
\m6|out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sig2|out\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m6|out\(0));

-- Location: LCCOMB_X31_Y14_N26
\a8|Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a8|Add1~0_combout\ = (\m6|out\(1) & ((\m6|out\(2)) # (\m6|out\(0)))) # (!\m6|out\(1) & (\m6|out\(2) & \m6|out\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m6|out\(1),
	datac => \m6|out\(2),
	datad => \m6|out\(0),
	combout => \a8|Add1~0_combout\);

-- Location: LCCOMB_X31_Y14_N28
\sig2|out[9]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sig2|out\(9) = (GLOBAL(\sig2|WideNor0~7clkctrl_outclk\) & ((\sig2|WideOr1~9_combout\))) # (!GLOBAL(\sig2|WideNor0~7clkctrl_outclk\) & (\sig2|out\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sig2|out\(9),
	datac => \sig2|WideOr1~9_combout\,
	datad => \sig2|WideNor0~7clkctrl_outclk\,
	combout => \sig2|out\(9));

-- Location: FF_X31_Y14_N13
\m6|out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \sig2|out\(9),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m6|out\(6));

-- Location: LCCOMB_X30_Y14_N0
\sig2|out[5]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sig2|out\(5) = (GLOBAL(\sig2|WideNor0~7clkctrl_outclk\) & (\sig2|WideOr9~0_combout\)) # (!GLOBAL(\sig2|WideNor0~7clkctrl_outclk\) & ((\sig2|out\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sig2|WideOr9~0_combout\,
	datab => \sig2|out\(5),
	datad => \sig2|WideNor0~7clkctrl_outclk\,
	combout => \sig2|out\(5));

-- Location: FF_X31_Y14_N17
\m6|out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \sig2|out\(5),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m6|out\(4));

-- Location: FF_X30_Y14_N1
\m6|out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sig2|out\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m6|out\(3));

-- Location: LCCOMB_X31_Y14_N18
\m6|WideOr117\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m6|WideOr117~combout\ = (\sig2|out\(5)) # (\sig2|out\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sig2|out\(5),
	datad => \sig2|out\(9),
	combout => \m6|WideOr117~combout\);

-- Location: FF_X31_Y14_N19
\m6|out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \m6|WideOr117~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m6|out\(5));

-- Location: LCCOMB_X31_Y14_N6
\a8|Add2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a8|Add2~0_combout\ = \m6|out\(4) $ (\m6|out\(3) $ (\m6|out\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m6|out\(4),
	datac => \m6|out\(3),
	datad => \m6|out\(5),
	combout => \a8|Add2~0_combout\);

-- Location: LCCOMB_X31_Y14_N8
\a8|Add4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a8|Add4~0_combout\ = \m6|out\(1) $ (\m6|out\(0) $ (\m6|out\(2) $ (\a8|Add2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m6|out\(1),
	datab => \m6|out\(0),
	datac => \m6|out\(2),
	datad => \a8|Add2~0_combout\,
	combout => \a8|Add4~0_combout\);

-- Location: LCCOMB_X31_Y14_N0
\a8|Add5~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a8|Add5~1_combout\ = (\m6|out\(6) & \a8|Add4~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \m6|out\(6),
	datad => \a8|Add4~0_combout\,
	combout => \a8|Add5~1_combout\);

-- Location: LCCOMB_X31_Y14_N4
\a8|Add4~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a8|Add4~1_combout\ = (\a8|Add2~0_combout\ & (\m6|out\(1) $ (\m6|out\(0) $ (\m6|out\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m6|out\(1),
	datab => \m6|out\(0),
	datac => \m6|out\(2),
	datad => \a8|Add2~0_combout\,
	combout => \a8|Add4~1_combout\);

-- Location: LCCOMB_X31_Y14_N16
\a8|Add2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a8|Add2~1_combout\ = (\m6|out\(3) & ((\m6|out\(4)) # (\m6|out\(5)))) # (!\m6|out\(3) & (\m6|out\(4) & \m6|out\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m6|out\(3),
	datac => \m6|out\(4),
	datad => \m6|out\(5),
	combout => \a8|Add2~1_combout\);

-- Location: LCCOMB_X31_Y14_N24
\a8|Add5~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a8|Add5~3_combout\ = (\a8|Add5~1_combout\ & (\a8|Add1~0_combout\ $ (\a8|Add4~1_combout\ $ (\a8|Add2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a8|Add1~0_combout\,
	datab => \a8|Add5~1_combout\,
	datac => \a8|Add4~1_combout\,
	datad => \a8|Add2~1_combout\,
	combout => \a8|Add5~3_combout\);

-- Location: LCCOMB_X31_Y14_N22
\a8|Add4~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a8|Add4~2_combout\ = (\a8|Add4~1_combout\ & ((\a8|Add1~0_combout\) # (\a8|Add2~1_combout\))) # (!\a8|Add4~1_combout\ & (\a8|Add1~0_combout\ & \a8|Add2~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a8|Add4~1_combout\,
	datac => \a8|Add1~0_combout\,
	datad => \a8|Add2~1_combout\,
	combout => \a8|Add4~2_combout\);

-- Location: FF_X31_Y14_N29
\m6|out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sig2|out\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m6|out\(7));

-- Location: LCCOMB_X30_Y14_N28
\sig2|WideOr5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sig2|WideOr5~0_combout\ = (\sig2|WideOr1~9_combout\ & ((\sq2|out[1]~11_combout\) # (!\sig2|Equal15~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sig2|Equal15~0_combout\,
	datab => \sq2|out[1]~11_combout\,
	datad => \sig2|WideOr1~9_combout\,
	combout => \sig2|WideOr5~0_combout\);

-- Location: LCCOMB_X30_Y14_N14
\sig2|out[13]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sig2|out\(13) = (GLOBAL(\sig2|WideNor0~7clkctrl_outclk\) & ((\sig2|WideOr5~0_combout\))) # (!GLOBAL(\sig2|WideNor0~7clkctrl_outclk\) & (\sig2|out\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sig2|out\(13),
	datac => \sig2|WideNor0~7clkctrl_outclk\,
	datad => \sig2|WideOr5~0_combout\,
	combout => \sig2|out\(13));

-- Location: FF_X30_Y14_N15
\m6|out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sig2|out\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m6|out\(9));

-- Location: LCCOMB_X31_Y14_N10
\m6|WideOr120\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m6|WideOr120~combout\ = (\sig2|out\(9)) # (\sig2|out\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sig2|out\(9),
	datad => \sig2|out\(13),
	combout => \m6|WideOr120~combout\);

-- Location: FF_X31_Y14_N11
\m6|out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \m6|WideOr120~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m6|out\(8));

-- Location: LCCOMB_X31_Y14_N20
\a8|Add6~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a8|Add6~1_combout\ = (\m6|out\(7) & ((\m6|out\(9)) # (\m6|out\(8)))) # (!\m6|out\(7) & (\m6|out\(9) & \m6|out\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \m6|out\(7),
	datac => \m6|out\(9),
	datad => \m6|out\(8),
	combout => \a8|Add6~1_combout\);

-- Location: LCCOMB_X31_Y14_N2
\a8|Add5~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a8|Add5~2_combout\ = \a8|Add1~0_combout\ $ (\a8|Add5~1_combout\ $ (\a8|Add4~1_combout\ $ (\a8|Add2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a8|Add1~0_combout\,
	datab => \a8|Add5~1_combout\,
	datac => \a8|Add4~1_combout\,
	datad => \a8|Add2~1_combout\,
	combout => \a8|Add5~2_combout\);

-- Location: LCCOMB_X31_Y14_N14
\a8|Add6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a8|Add6~0_combout\ = \m6|out\(7) $ (\m6|out\(9) $ (\m6|out\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \m6|out\(7),
	datac => \m6|out\(9),
	datad => \m6|out\(8),
	combout => \a8|Add6~0_combout\);

-- Location: LCCOMB_X31_Y14_N12
\a8|Add5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a8|Add5~0_combout\ = \m6|out\(6) $ (\a8|Add4~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \m6|out\(6),
	datad => \a8|Add4~0_combout\,
	combout => \a8|Add5~0_combout\);

-- Location: LCCOMB_X30_Y14_N18
\sig2|WideOr1~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sig2|WideOr1~11_combout\ = (\sig2|WideOr1~9_combout\ & (((\sq2|out[2]~12_combout\) # (\a6|out\(32))) # (!\sig2|Equal13~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sig2|Equal13~1_combout\,
	datab => \sq2|out[2]~12_combout\,
	datac => \a6|out\(32),
	datad => \sig2|WideOr1~9_combout\,
	combout => \sig2|WideOr1~11_combout\);

-- Location: LCCOMB_X30_Y14_N24
\sig2|out[14]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sig2|out\(14) = (GLOBAL(\sig2|WideNor0~7clkctrl_outclk\) & ((\sig2|WideOr1~11_combout\))) # (!GLOBAL(\sig2|WideNor0~7clkctrl_outclk\) & (\sig2|out\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sig2|out\(14),
	datac => \sig2|WideNor0~7clkctrl_outclk\,
	datad => \sig2|WideOr1~11_combout\,
	combout => \sig2|out\(14));

-- Location: LCCOMB_X30_Y14_N30
\sig2|out[15]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sig2|out\(15) = (GLOBAL(\sig2|WideNor0~7clkctrl_outclk\) & ((\sig2|WideOr1~10_combout\))) # (!GLOBAL(\sig2|WideNor0~7clkctrl_outclk\) & (\sig2|out\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sig2|out\(15),
	datac => \sig2|WideNor0~7clkctrl_outclk\,
	datad => \sig2|WideOr1~10_combout\,
	combout => \sig2|out\(15));

-- Location: LCCOMB_X27_Y14_N24
\m6|WideOr122\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m6|WideOr122~combout\ = (\sig2|out\(14)) # (\sig2|out\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sig2|out\(14),
	datad => \sig2|out\(15),
	combout => \m6|WideOr122~combout\);

-- Location: FF_X27_Y14_N25
\m6|out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \m6|WideOr122~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m6|out\(10));

-- Location: LCCOMB_X31_Y17_N22
\a8|Add8~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a8|Add8~1_cout\ = CARRY(\m6|out\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m6|out\(10),
	datad => VCC,
	cout => \a8|Add8~1_cout\);

-- Location: LCCOMB_X31_Y17_N24
\a8|Add8~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a8|Add8~2_combout\ = (\a8|Add6~0_combout\ & ((\a8|Add5~0_combout\ & (\a8|Add8~1_cout\ & VCC)) # (!\a8|Add5~0_combout\ & (!\a8|Add8~1_cout\)))) # (!\a8|Add6~0_combout\ & ((\a8|Add5~0_combout\ & (!\a8|Add8~1_cout\)) # (!\a8|Add5~0_combout\ & 
-- ((\a8|Add8~1_cout\) # (GND)))))
-- \a8|Add8~3\ = CARRY((\a8|Add6~0_combout\ & (!\a8|Add5~0_combout\ & !\a8|Add8~1_cout\)) # (!\a8|Add6~0_combout\ & ((!\a8|Add8~1_cout\) # (!\a8|Add5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a8|Add6~0_combout\,
	datab => \a8|Add5~0_combout\,
	datad => VCC,
	cin => \a8|Add8~1_cout\,
	combout => \a8|Add8~2_combout\,
	cout => \a8|Add8~3\);

-- Location: LCCOMB_X31_Y17_N26
\a8|Add8~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a8|Add8~4_combout\ = ((\a8|Add6~1_combout\ $ (\a8|Add5~2_combout\ $ (!\a8|Add8~3\)))) # (GND)
-- \a8|Add8~5\ = CARRY((\a8|Add6~1_combout\ & ((\a8|Add5~2_combout\) # (!\a8|Add8~3\))) # (!\a8|Add6~1_combout\ & (\a8|Add5~2_combout\ & !\a8|Add8~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a8|Add6~1_combout\,
	datab => \a8|Add5~2_combout\,
	datad => VCC,
	cin => \a8|Add8~3\,
	combout => \a8|Add8~4_combout\,
	cout => \a8|Add8~5\);

-- Location: LCCOMB_X31_Y17_N28
\a8|Add8~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a8|Add8~6_combout\ = (\a8|Add8~5\ & (\a8|Add5~3_combout\ $ ((!\a8|Add4~2_combout\)))) # (!\a8|Add8~5\ & ((\a8|Add5~3_combout\ $ (\a8|Add4~2_combout\)) # (GND)))
-- \a8|Add8~7\ = CARRY((\a8|Add5~3_combout\ $ (!\a8|Add4~2_combout\)) # (!\a8|Add8~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a8|Add5~3_combout\,
	datab => \a8|Add4~2_combout\,
	datad => VCC,
	cin => \a8|Add8~5\,
	combout => \a8|Add8~6_combout\,
	cout => \a8|Add8~7\);

-- Location: LCCOMB_X31_Y17_N30
\a8|Add8~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a8|Add8~8_combout\ = \a8|Add8~7\ $ (((!\a8|Add4~2_combout\) # (!\a8|Add5~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a8|Add5~3_combout\,
	datad => \a8|Add4~2_combout\,
	cin => \a8|Add8~7\,
	combout => \a8|Add8~8_combout\);

-- Location: LCCOMB_X27_Y16_N12
\a3|Add25~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a3|Add25~0_combout\ = (\a5|out\(18) & \a5|out\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \a5|out\(18),
	datad => \a5|out\(2),
	combout => \a3|Add25~0_combout\);

-- Location: LCCOMB_X27_Y16_N26
\a3|Add28~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a3|Add28~0_combout\ = (!\a5|out\(18) & \a5|out\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \a5|out\(18),
	datad => \a5|out\(2),
	combout => \a3|Add28~0_combout\);

-- Location: LCCOMB_X27_Y16_N0
\a3|Add31~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a3|Add31~0_combout\ = (\a5|out\(18) & (\a3|Add28~0_combout\ $ (VCC))) # (!\a5|out\(18) & (\a3|Add28~0_combout\ & VCC))
-- \a3|Add31~1\ = CARRY((\a5|out\(18) & \a3|Add28~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a5|out\(18),
	datab => \a3|Add28~0_combout\,
	datad => VCC,
	combout => \a3|Add31~0_combout\,
	cout => \a3|Add31~1\);

-- Location: LCCOMB_X27_Y16_N2
\a3|Add31~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a3|Add31~2_combout\ = (\a3|Add31~1\ & (\a5|out\(18) $ ((!\a3|Add25~0_combout\)))) # (!\a3|Add31~1\ & ((\a5|out\(18) $ (\a3|Add25~0_combout\)) # (GND)))
-- \a3|Add31~3\ = CARRY((\a5|out\(18) $ (!\a3|Add25~0_combout\)) # (!\a3|Add31~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a5|out\(18),
	datab => \a3|Add25~0_combout\,
	datad => VCC,
	cin => \a3|Add31~1\,
	combout => \a3|Add31~2_combout\,
	cout => \a3|Add31~3\);

-- Location: LCCOMB_X27_Y16_N4
\a3|Add31~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a3|Add31~4_combout\ = (\a3|Add31~3\ & ((\a3|Add25~0_combout\ $ (\a5|out\(2))))) # (!\a3|Add31~3\ & (\a3|Add25~0_combout\ $ (\a5|out\(2) $ (VCC))))
-- \a3|Add31~5\ = CARRY((!\a3|Add31~3\ & (\a3|Add25~0_combout\ $ (\a5|out\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a3|Add25~0_combout\,
	datab => \a5|out\(2),
	datad => VCC,
	cin => \a3|Add31~3\,
	combout => \a3|Add31~4_combout\,
	cout => \a3|Add31~5\);

-- Location: LCCOMB_X27_Y16_N6
\a3|Add31~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a3|Add31~6_combout\ = \a3|Add31~5\ $ (((\a5|out\(2) & \a3|Add25~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a5|out\(2),
	datad => \a3|Add25~0_combout\,
	cin => \a3|Add31~5\,
	combout => \a3|Add31~6_combout\);

-- Location: LCCOMB_X27_Y16_N28
\a3|Add33~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a3|Add33~0_combout\ = (\a3|Add31~0_combout\ & (\a5|out\(18) & \a3|Add31~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a3|Add31~0_combout\,
	datac => \a5|out\(18),
	datad => \a3|Add31~2_combout\,
	combout => \a3|Add33~0_combout\);

-- Location: LCCOMB_X27_Y16_N8
\a3|Add33~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a3|Add33~1_combout\ = \a3|Add31~6_combout\ $ (((\a3|Add31~4_combout\ & \a3|Add33~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a3|Add31~6_combout\,
	datac => \a3|Add31~4_combout\,
	datad => \a3|Add33~0_combout\,
	combout => \a3|Add33~1_combout\);

-- Location: LCCOMB_X27_Y16_N30
\a3|Add33~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a3|Add33~2_combout\ = \a3|Add31~4_combout\ $ (((\a5|out\(18) & (\a3|Add31~2_combout\ & \a3|Add31~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a5|out\(18),
	datab => \a3|Add31~2_combout\,
	datac => \a3|Add31~4_combout\,
	datad => \a3|Add31~0_combout\,
	combout => \a3|Add33~2_combout\);

-- Location: LCCOMB_X27_Y16_N14
\a3|Add46~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a3|Add46~0_combout\ = \a5|out\(18) $ (\a3|Add28~0_combout\ $ (GND))
-- \a3|Add46~1\ = CARRY(\a5|out\(18) $ (!\a3|Add28~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a5|out\(18),
	datab => \a3|Add28~0_combout\,
	datad => VCC,
	combout => \a3|Add46~0_combout\,
	cout => \a3|Add46~1\);

-- Location: LCCOMB_X27_Y16_N16
\a3|Add46~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a3|Add46~2_combout\ = (\a3|Add25~0_combout\ & (!\a3|Add46~1\)) # (!\a3|Add25~0_combout\ & (\a3|Add46~1\ & VCC))
-- \a3|Add46~3\ = CARRY((\a3|Add25~0_combout\ & !\a3|Add46~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a3|Add25~0_combout\,
	datad => VCC,
	cin => \a3|Add46~1\,
	combout => \a3|Add46~2_combout\,
	cout => \a3|Add46~3\);

-- Location: LCCOMB_X27_Y16_N18
\a3|Add46~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a3|Add46~4_combout\ = (\a3|Add33~2_combout\ & (!\a3|Add46~3\ & VCC)) # (!\a3|Add33~2_combout\ & (\a3|Add46~3\ $ (GND)))
-- \a3|Add46~5\ = CARRY((!\a3|Add33~2_combout\ & !\a3|Add46~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a3|Add33~2_combout\,
	datad => VCC,
	cin => \a3|Add46~3\,
	combout => \a3|Add46~4_combout\,
	cout => \a3|Add46~5\);

-- Location: LCCOMB_X27_Y16_N20
\a3|Add46~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a3|Add46~6_combout\ = (\a3|Add33~1_combout\ & ((\a3|Add46~5\) # (GND))) # (!\a3|Add33~1_combout\ & (!\a3|Add46~5\))
-- \a3|Add46~7\ = CARRY((\a3|Add33~1_combout\) # (!\a3|Add46~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \a3|Add33~1_combout\,
	datad => VCC,
	cin => \a3|Add46~5\,
	combout => \a3|Add46~6_combout\,
	cout => \a3|Add46~7\);

-- Location: LCCOMB_X27_Y16_N22
\a3|Add46~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a3|Add46~10_combout\ = \a3|Add46~7\ $ (GND)
-- \a3|Add46~11\ = CARRY(!\a3|Add46~7\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \a3|Add46~7\,
	combout => \a3|Add46~10_combout\,
	cout => \a3|Add46~11\);

-- Location: LCCOMB_X27_Y16_N24
\a3|Add46~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a3|Add46~12_combout\ = !\a3|Add46~11\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \a3|Add46~11\,
	combout => \a3|Add46~12_combout\);

-- Location: LCCOMB_X26_Y14_N22
\a3|Add35~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a3|Add35~0_combout\ = (\a5|out\(18)) # (\a5|out\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \a5|out\(18),
	datad => \a5|out\(2),
	combout => \a3|Add35~0_combout\);

-- Location: LCCOMB_X20_Y14_N8
\a3|Add24~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a3|Add24~0_combout\ = \a5|out\(2) $ (\a5|out\(18))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \a5|out\(2),
	datad => \a5|out\(18),
	combout => \a3|Add24~0_combout\);

-- Location: LCCOMB_X26_Y14_N24
\a3|Add46~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a3|Add46~8_combout\ = \a5|out\(18) $ (!\a5|out\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \a5|out\(18),
	datad => \a5|out\(2),
	combout => \a3|Add46~8_combout\);

-- Location: LCCOMB_X26_Y14_N0
\a3|Add47~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a3|Add47~1_cout\ = CARRY((\a3|Add24~0_combout\) # (!\a3|Add46~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a3|Add24~0_combout\,
	datab => \a3|Add46~8_combout\,
	datad => VCC,
	cout => \a3|Add47~1_cout\);

-- Location: LCCOMB_X26_Y14_N2
\a3|Add47~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a3|Add47~3_cout\ = CARRY((\a3|Add35~0_combout\ & (\a3|Add46~0_combout\ & !\a3|Add47~1_cout\)) # (!\a3|Add35~0_combout\ & ((\a3|Add46~0_combout\) # (!\a3|Add47~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a3|Add35~0_combout\,
	datab => \a3|Add46~0_combout\,
	datad => VCC,
	cin => \a3|Add47~1_cout\,
	cout => \a3|Add47~3_cout\);

-- Location: LCCOMB_X26_Y14_N4
\a3|Add47~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a3|Add47~4_combout\ = ((\a3|Add46~2_combout\ $ (\a3|Add25~0_combout\ $ (\a3|Add47~3_cout\)))) # (GND)
-- \a3|Add47~5\ = CARRY((\a3|Add46~2_combout\ & (\a3|Add25~0_combout\ & !\a3|Add47~3_cout\)) # (!\a3|Add46~2_combout\ & ((\a3|Add25~0_combout\) # (!\a3|Add47~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a3|Add46~2_combout\,
	datab => \a3|Add25~0_combout\,
	datad => VCC,
	cin => \a3|Add47~3_cout\,
	combout => \a3|Add47~4_combout\,
	cout => \a3|Add47~5\);

-- Location: LCCOMB_X26_Y14_N6
\a3|Add47~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a3|Add47~6_combout\ = (\a3|Add33~2_combout\ & ((\a3|Add46~4_combout\ & (!\a3|Add47~5\)) # (!\a3|Add46~4_combout\ & (\a3|Add47~5\ & VCC)))) # (!\a3|Add33~2_combout\ & ((\a3|Add46~4_combout\ & ((\a3|Add47~5\) # (GND))) # (!\a3|Add46~4_combout\ & 
-- (!\a3|Add47~5\))))
-- \a3|Add47~7\ = CARRY((\a3|Add33~2_combout\ & (\a3|Add46~4_combout\ & !\a3|Add47~5\)) # (!\a3|Add33~2_combout\ & ((\a3|Add46~4_combout\) # (!\a3|Add47~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a3|Add33~2_combout\,
	datab => \a3|Add46~4_combout\,
	datad => VCC,
	cin => \a3|Add47~5\,
	combout => \a3|Add47~6_combout\,
	cout => \a3|Add47~7\);

-- Location: LCCOMB_X26_Y14_N8
\a3|Add47~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a3|Add47~8_combout\ = ((\a3|Add46~6_combout\ $ (\a3|Add33~1_combout\ $ (\a3|Add47~7\)))) # (GND)
-- \a3|Add47~9\ = CARRY((\a3|Add46~6_combout\ & (\a3|Add33~1_combout\ & !\a3|Add47~7\)) # (!\a3|Add46~6_combout\ & ((\a3|Add33~1_combout\) # (!\a3|Add47~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a3|Add46~6_combout\,
	datab => \a3|Add33~1_combout\,
	datad => VCC,
	cin => \a3|Add47~7\,
	combout => \a3|Add47~8_combout\,
	cout => \a3|Add47~9\);

-- Location: LCCOMB_X26_Y14_N10
\a3|Add47~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a3|Add47~10_combout\ = (\a3|Add46~10_combout\ & ((\a3|Add47~9\) # (GND))) # (!\a3|Add46~10_combout\ & (!\a3|Add47~9\))
-- \a3|Add47~11\ = CARRY((\a3|Add46~10_combout\) # (!\a3|Add47~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \a3|Add46~10_combout\,
	datad => VCC,
	cin => \a3|Add47~9\,
	combout => \a3|Add47~10_combout\,
	cout => \a3|Add47~11\);

-- Location: LCCOMB_X26_Y14_N12
\a3|Add47~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a3|Add47~12_combout\ = (\a3|Add46~12_combout\ & (!\a3|Add47~11\ & VCC)) # (!\a3|Add46~12_combout\ & (\a3|Add47~11\ $ (GND)))
-- \a3|Add47~13\ = CARRY((!\a3|Add46~12_combout\ & !\a3|Add47~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a3|Add46~12_combout\,
	datad => VCC,
	cin => \a3|Add47~11\,
	combout => \a3|Add47~12_combout\,
	cout => \a3|Add47~13\);

-- Location: LCCOMB_X27_Y16_N10
\a3|LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a3|LessThan0~0_combout\ = (!\a3|Add25~0_combout\ & ((\a3|Add33~0_combout\ & (\a3|Add31~4_combout\ & \a3|Add31~6_combout\)) # (!\a3|Add33~0_combout\ & (!\a3|Add31~4_combout\ & !\a3|Add31~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a3|Add25~0_combout\,
	datab => \a3|Add33~0_combout\,
	datac => \a3|Add31~4_combout\,
	datad => \a3|Add31~6_combout\,
	combout => \a3|LessThan0~0_combout\);

-- Location: LCCOMB_X26_Y14_N14
\a3|Add47~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a3|Add47~14_combout\ = \a3|Add47~13\ $ (\a3|Add46~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \a3|Add46~12_combout\,
	cin => \a3|Add47~13\,
	combout => \a3|Add47~14_combout\);

-- Location: LCCOMB_X26_Y14_N18
\a3|out[20]~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a3|out[20]~54_combout\ = ((!\a3|Add47~14_combout\ & ((!\a3|Add47~10_combout\) # (!\a3|Add47~12_combout\)))) # (!\a3|LessThan0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a3|Add47~12_combout\,
	datab => \a3|LessThan0~0_combout\,
	datac => \a3|Add47~14_combout\,
	datad => \a3|Add47~10_combout\,
	combout => \a3|out[20]~54_combout\);

-- Location: LCCOMB_X26_Y13_N0
\a3|out~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a3|out~37_combout\ = (\a5|out\(18) & \a3|Add47~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a5|out\(18),
	datad => \a3|Add47~8_combout\,
	combout => \a3|out~37_combout\);

-- Location: LCCOMB_X24_Y14_N12
\a3|out~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a3|out~52_combout\ = (\a5|out\(2) & ((\a3|Add47~8_combout\ & ((!\a3|Add47~6_combout\))) # (!\a3|Add47~8_combout\ & (\a3|Add47~4_combout\ & \a3|Add47~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a3|Add47~8_combout\,
	datab => \a5|out\(2),
	datac => \a3|Add47~4_combout\,
	datad => \a3|Add47~6_combout\,
	combout => \a3|out~52_combout\);

-- Location: LCCOMB_X24_Y14_N14
\a3|out~53\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a3|out~53_combout\ = (!\a3|Add47~14_combout\ & ((\a3|out~52_combout\) # ((\a3|Add47~6_combout\ & \a3|out~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a3|Add47~6_combout\,
	datab => \a3|out~37_combout\,
	datac => \a3|Add47~14_combout\,
	datad => \a3|out~52_combout\,
	combout => \a3|out~53_combout\);

-- Location: LCCOMB_X20_Y14_N6
\a3|ShiftLeft0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a3|ShiftLeft0~14_combout\ = (\a3|Add47~6_combout\) # ((\a3|Add47~4_combout\) # (\a5|out\(2) $ (!\a5|out\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a5|out\(2),
	datab => \a5|out\(18),
	datac => \a3|Add47~6_combout\,
	datad => \a3|Add47~4_combout\,
	combout => \a3|ShiftLeft0~14_combout\);

-- Location: LCCOMB_X26_Y14_N20
\a3|out~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a3|out~50_combout\ = (!\a3|Add47~10_combout\ & (!\a3|Add47~8_combout\ & (\a3|Add47~14_combout\ & !\a3|Add47~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a3|Add47~10_combout\,
	datab => \a3|Add47~8_combout\,
	datac => \a3|Add47~14_combout\,
	datad => \a3|Add47~12_combout\,
	combout => \a3|out~50_combout\);

-- Location: LCCOMB_X21_Y14_N22
\a3|out~51\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a3|out~51_combout\ = (!\a3|ShiftLeft0~14_combout\ & (\a5|out\(18) & \a3|out~50_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a3|ShiftLeft0~14_combout\,
	datac => \a5|out\(18),
	datad => \a3|out~50_combout\,
	combout => \a3|out~51_combout\);

-- Location: LCCOMB_X23_Y13_N26
\a3|out~55\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a3|out~55_combout\ = (!\a3|out[20]~54_combout\ & ((\a3|out~53_combout\) # (\a3|out~51_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a3|out[20]~54_combout\,
	datac => \a3|out~53_combout\,
	datad => \a3|out~51_combout\,
	combout => \a3|out~55_combout\);

-- Location: FF_X23_Y13_N27
\a3|out[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \a3|out~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a3|out\(20));

-- Location: LCCOMB_X21_Y14_N26
\a3|out~73\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a3|out~73_combout\ = (!\a3|Add47~4_combout\ & (!\a3|Add47~6_combout\ & (\a5|out\(18) & \a3|out~50_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a3|Add47~4_combout\,
	datab => \a3|Add47~6_combout\,
	datac => \a5|out\(18),
	datad => \a3|out~50_combout\,
	combout => \a3|out~73_combout\);

-- Location: LCCOMB_X26_Y13_N24
\a3|out~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a3|out~56_combout\ = (\a3|Add47~6_combout\ & (\a5|out\(18) & ((\a5|out\(2)) # (\a3|Add47~8_combout\)))) # (!\a3|Add47~6_combout\ & (\a5|out\(2) & ((\a3|Add47~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a5|out\(2),
	datab => \a5|out\(18),
	datac => \a3|Add47~6_combout\,
	datad => \a3|Add47~8_combout\,
	combout => \a3|out~56_combout\);

-- Location: LCCOMB_X23_Y13_N12
\a3|out~57\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a3|out~57_combout\ = (!\a3|out[20]~54_combout\ & ((\a3|out~73_combout\) # ((\a3|out~56_combout\ & !\a3|Add47~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a3|out~73_combout\,
	datab => \a3|out~56_combout\,
	datac => \a3|Add47~14_combout\,
	datad => \a3|out[20]~54_combout\,
	combout => \a3|out~57_combout\);

-- Location: FF_X23_Y13_N13
\a3|out[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \a3|out~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a3|out\(18));

-- Location: LCCOMB_X23_Y13_N4
\sq1|out[9]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sq1|out[9]~14_combout\ = (\a3|out\(20)) # (\a3|out\(18))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \a3|out\(20),
	datad => \a3|out\(18),
	combout => \sq1|out[9]~14_combout\);

-- Location: LCCOMB_X26_Y14_N26
\a3|ShiftRight1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a3|ShiftRight1~2_combout\ = (\a3|Add47~10_combout\ & (!\a3|Add47~14_combout\ & (\a3|Add47~8_combout\ & \a3|Add47~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a3|Add47~10_combout\,
	datab => \a3|Add47~14_combout\,
	datac => \a3|Add47~8_combout\,
	datad => \a3|Add47~12_combout\,
	combout => \a3|ShiftRight1~2_combout\);

-- Location: LCCOMB_X26_Y16_N22
\a3|ShiftLeft0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a3|ShiftLeft0~10_combout\ = (!\a3|Add47~4_combout\ & !\a3|Add47~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a3|Add47~4_combout\,
	datad => \a3|Add47~6_combout\,
	combout => \a3|ShiftLeft0~10_combout\);

-- Location: LCCOMB_X19_Y13_N4
\a3|out~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a3|out~23_combout\ = (\a5|out\(18)) # ((!\a5|out\(2) & (\a3|ShiftRight1~2_combout\ & \a3|ShiftLeft0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a5|out\(2),
	datab => \a5|out\(18),
	datac => \a3|ShiftRight1~2_combout\,
	datad => \a3|ShiftLeft0~10_combout\,
	combout => \a3|out~23_combout\);

-- Location: FF_X19_Y13_N5
\a3|out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \a3|out~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a3|out\(10));

-- Location: LCCOMB_X26_Y14_N30
\a3|out[29]~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a3|out[29]~36_combout\ = (\a3|Add47~12_combout\ & (\a3|LessThan0~0_combout\ & (!\a3|Add47~14_combout\ & \a3|Add47~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a3|Add47~12_combout\,
	datab => \a3|LessThan0~0_combout\,
	datac => \a3|Add47~14_combout\,
	datad => \a3|Add47~10_combout\,
	combout => \a3|out[29]~36_combout\);

-- Location: LCCOMB_X26_Y13_N2
\a3|out~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a3|out~46_combout\ = (\a3|Add47~6_combout\ & (((!\a3|Add47~8_combout\)) # (!\a3|Add47~4_combout\))) # (!\a3|Add47~6_combout\ & (((\a3|Add47~8_combout\) # (!\a3|Add24~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a3|Add47~4_combout\,
	datab => \a3|Add24~0_combout\,
	datac => \a3|Add47~6_combout\,
	datad => \a3|Add47~8_combout\,
	combout => \a3|out~46_combout\);

-- Location: LCCOMB_X26_Y13_N28
\a3|out~47\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a3|out~47_combout\ = (\a5|out\(2) & !\a3|Add47~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a5|out\(2),
	datad => \a3|Add47~8_combout\,
	combout => \a3|out~47_combout\);

-- Location: LCCOMB_X26_Y13_N10
\a3|out~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a3|out~48_combout\ = (\a3|out[29]~36_combout\ & (\a3|out~46_combout\ & ((\a3|out~37_combout\) # (\a3|out~47_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a3|out[29]~36_combout\,
	datab => \a3|out~37_combout\,
	datac => \a3|out~46_combout\,
	datad => \a3|out~47_combout\,
	combout => \a3|out~48_combout\);

-- Location: FF_X26_Y13_N11
\a3|out[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \a3|out~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a3|out\(26));

-- Location: LCCOMB_X26_Y13_N8
\a3|out~72\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a3|out~72_combout\ = (\a3|out[29]~36_combout\ & ((\a3|Add47~8_combout\ & ((\a5|out\(18)))) # (!\a3|Add47~8_combout\ & (\a5|out\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a5|out\(2),
	datab => \a5|out\(18),
	datac => \a3|out[29]~36_combout\,
	datad => \a3|Add47~8_combout\,
	combout => \a3|out~72_combout\);

-- Location: LCCOMB_X26_Y16_N20
\a3|ShiftRight1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a3|ShiftRight1~3_combout\ = (\a3|Add47~6_combout\ & ((\a3|Add47~4_combout\) # (\a5|out\(2) $ (!\a5|out\(18)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a5|out\(2),
	datab => \a3|Add47~4_combout\,
	datac => \a5|out\(18),
	datad => \a3|Add47~6_combout\,
	combout => \a3|ShiftRight1~3_combout\);

-- Location: LCCOMB_X26_Y13_N22
\a3|out~45\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a3|out~45_combout\ = (\a3|out~72_combout\ & ((\a3|Add47~8_combout\ & ((!\a3|ShiftRight1~3_combout\))) # (!\a3|Add47~8_combout\ & (!\a3|ShiftLeft0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a3|ShiftLeft0~10_combout\,
	datab => \a3|Add47~8_combout\,
	datac => \a3|out~72_combout\,
	datad => \a3|ShiftRight1~3_combout\,
	combout => \a3|out~45_combout\);

-- Location: FF_X26_Y13_N23
\a3|out[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \a3|out~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a3|out\(28));

-- Location: LCCOMB_X26_Y13_N6
\a3|out~49\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a3|out~49_combout\ = (\a3|out~72_combout\ & ((\a3|Add47~8_combout\ & (!\a3|Add47~6_combout\)) # (!\a3|Add47~8_combout\ & ((\a3|ShiftLeft0~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a3|Add47~6_combout\,
	datab => \a3|Add47~8_combout\,
	datac => \a3|out~72_combout\,
	datad => \a3|ShiftLeft0~14_combout\,
	combout => \a3|out~49_combout\);

-- Location: FF_X26_Y13_N7
\a3|out[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \a3|out~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a3|out\(29));

-- Location: LCCOMB_X26_Y13_N12
\sq1|Add26~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sq1|Add26~1_combout\ = \a3|out\(28) $ (((!\a3|out\(29)) # (!\a3|out\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a3|out\(26),
	datac => \a3|out\(28),
	datad => \a3|out\(29),
	combout => \sq1|Add26~1_combout\);

-- Location: LCCOMB_X26_Y13_N4
\a3|out~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a3|out~38_combout\ = (\a3|out~37_combout\ & ((\a3|Add47~4_combout\ & ((\a3|Add24~0_combout\) # (!\a3|Add47~6_combout\))) # (!\a3|Add47~4_combout\ & ((\a3|Add47~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a3|Add47~4_combout\,
	datab => \a3|Add24~0_combout\,
	datac => \a3|Add47~6_combout\,
	datad => \a3|out~37_combout\,
	combout => \a3|out~38_combout\);

-- Location: LCCOMB_X20_Y14_N30
\a3|out~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a3|out~39_combout\ = (\a5|out\(2) & ((\a3|Add47~6_combout\ & ((!\a3|Add47~8_combout\))) # (!\a3|Add47~6_combout\ & (!\a3|Add47~4_combout\ & \a3|Add47~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a3|Add47~4_combout\,
	datab => \a3|Add47~6_combout\,
	datac => \a5|out\(2),
	datad => \a3|Add47~8_combout\,
	combout => \a3|out~39_combout\);

-- Location: LCCOMB_X23_Y13_N20
\a3|out~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a3|out~40_combout\ = (\a3|out[29]~36_combout\ & ((\a3|out~38_combout\) # (\a3|out~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a3|out~38_combout\,
	datac => \a3|out[29]~36_combout\,
	datad => \a3|out~39_combout\,
	combout => \a3|out~40_combout\);

-- Location: FF_X23_Y13_N21
\a3|out[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \a3|out~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a3|out\(24));

-- Location: LCCOMB_X26_Y16_N24
\a3|out~41\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a3|out~41_combout\ = (\a5|out\(2) & ((\a3|Add47~8_combout\ & (\a3|ShiftLeft0~10_combout\)) # (!\a3|Add47~8_combout\ & ((\a3|ShiftRight1~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a3|ShiftLeft0~10_combout\,
	datab => \a3|ShiftRight1~3_combout\,
	datac => \a3|Add47~8_combout\,
	datad => \a5|out\(2),
	combout => \a3|out~41_combout\);

-- Location: LCCOMB_X23_Y13_N14
\a3|out~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a3|out~42_combout\ = (\a3|out[29]~36_combout\ & ((\a3|out~41_combout\) # ((!\a3|ShiftLeft0~10_combout\ & \a3|out~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a3|ShiftLeft0~10_combout\,
	datab => \a3|out~37_combout\,
	datac => \a3|out[29]~36_combout\,
	datad => \a3|out~41_combout\,
	combout => \a3|out~42_combout\);

-- Location: FF_X23_Y13_N15
\a3|out[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \a3|out~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a3|out\(22));

-- Location: LCCOMB_X20_Y14_N16
\a3|out~43\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a3|out~43_combout\ = (\a3|Add47~6_combout\ & (\a5|out\(18) & ((!\a3|Add47~4_combout\)))) # (!\a3|Add47~6_combout\ & ((\a3|Add47~4_combout\ & (\a5|out\(18))) # (!\a3|Add47~4_combout\ & ((\a5|out\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a5|out\(18),
	datab => \a5|out\(2),
	datac => \a3|Add47~6_combout\,
	datad => \a3|Add47~4_combout\,
	combout => \a3|out~43_combout\);

-- Location: LCCOMB_X20_Y14_N4
\a3|out~71\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a3|out~71_combout\ = (\a5|out\(2) & (!\a3|Add47~8_combout\ & ((\a5|out\(18)) # (\a3|Add47~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a5|out\(18),
	datab => \a5|out\(2),
	datac => \a3|Add47~6_combout\,
	datad => \a3|Add47~8_combout\,
	combout => \a3|out~71_combout\);

-- Location: LCCOMB_X23_Y13_N16
\a3|out~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a3|out~44_combout\ = (\a3|out[29]~36_combout\ & ((\a3|out~71_combout\) # ((\a3|out~43_combout\ & \a3|Add47~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a3|out~43_combout\,
	datab => \a3|Add47~8_combout\,
	datac => \a3|out[29]~36_combout\,
	datad => \a3|out~71_combout\,
	combout => \a3|out~44_combout\);

-- Location: FF_X23_Y13_N17
\a3|out[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \a3|out~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a3|out\(25));

-- Location: LCCOMB_X23_Y13_N28
\sq1|Add22~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sq1|Add22~1_combout\ = \a3|out\(24) $ (((!\a3|out\(25)) # (!\a3|out\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a3|out\(24),
	datac => \a3|out\(22),
	datad => \a3|out\(25),
	combout => \sq1|Add22~1_combout\);

-- Location: LCCOMB_X26_Y13_N20
\sq1|Add26~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sq1|Add26~2_combout\ = \a3|out\(26) $ (\a3|out\(29))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \a3|out\(26),
	datad => \a3|out\(29),
	combout => \sq1|Add26~2_combout\);

-- Location: LCCOMB_X23_Y13_N6
\sq1|Add22~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sq1|Add22~2_combout\ = \a3|out\(22) $ (\a3|out\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \a3|out\(22),
	datad => \a3|out\(25),
	combout => \sq1|Add22~2_combout\);

-- Location: LCCOMB_X24_Y13_N22
\sq1|Add24~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sq1|Add24~0_combout\ = (\sq1|Add26~2_combout\ & (\sq1|Add22~2_combout\ $ (VCC))) # (!\sq1|Add26~2_combout\ & (\sq1|Add22~2_combout\ & VCC))
-- \sq1|Add24~1\ = CARRY((\sq1|Add26~2_combout\ & \sq1|Add22~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sq1|Add26~2_combout\,
	datab => \sq1|Add22~2_combout\,
	datad => VCC,
	combout => \sq1|Add24~0_combout\,
	cout => \sq1|Add24~1\);

-- Location: LCCOMB_X24_Y13_N24
\sq1|Add24~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sq1|Add24~2_combout\ = (\sq1|Add26~1_combout\ & ((\sq1|Add22~1_combout\ & ((\sq1|Add24~1\) # (GND))) # (!\sq1|Add22~1_combout\ & (!\sq1|Add24~1\)))) # (!\sq1|Add26~1_combout\ & ((\sq1|Add22~1_combout\ & (!\sq1|Add24~1\)) # (!\sq1|Add22~1_combout\ & 
-- (\sq1|Add24~1\ & VCC))))
-- \sq1|Add24~3\ = CARRY((\sq1|Add26~1_combout\ & ((\sq1|Add22~1_combout\) # (!\sq1|Add24~1\))) # (!\sq1|Add26~1_combout\ & (\sq1|Add22~1_combout\ & !\sq1|Add24~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sq1|Add26~1_combout\,
	datab => \sq1|Add22~1_combout\,
	datad => VCC,
	cin => \sq1|Add24~1\,
	combout => \sq1|Add24~2_combout\,
	cout => \sq1|Add24~3\);

-- Location: LCCOMB_X21_Y14_N24
\a3|ShiftLeft0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a3|ShiftLeft0~8_combout\ = (\a3|Add47~6_combout\ & ((\a3|Add47~4_combout\ & ((\a5|out\(18)))) # (!\a3|Add47~4_combout\ & (\a5|out\(2))))) # (!\a3|Add47~6_combout\ & (\a5|out\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a5|out\(2),
	datab => \a5|out\(18),
	datac => \a3|Add47~6_combout\,
	datad => \a3|Add47~4_combout\,
	combout => \a3|ShiftLeft0~8_combout\);

-- Location: LCCOMB_X21_Y14_N8
\a3|ShiftLeft0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a3|ShiftLeft0~16_combout\ = (!\a3|Add47~6_combout\ & ((\a5|out\(2) $ (\a5|out\(18))) # (!\a3|Add47~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a5|out\(2),
	datab => \a3|Add47~6_combout\,
	datac => \a5|out\(18),
	datad => \a3|Add47~4_combout\,
	combout => \a3|ShiftLeft0~16_combout\);

-- Location: LCCOMB_X21_Y14_N16
\a3|out~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a3|out~60_combout\ = (\a5|out\(18) & (((\a3|ShiftLeft0~16_combout\ & \a3|out~50_combout\)) # (!\a3|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a3|LessThan0~0_combout\,
	datab => \a5|out\(18),
	datac => \a3|ShiftLeft0~16_combout\,
	datad => \a3|out~50_combout\,
	combout => \a3|out~60_combout\);

-- Location: LCCOMB_X21_Y14_N14
\a3|out~61\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a3|out~61_combout\ = (\a3|out~60_combout\) # ((\a3|LessThan0~0_combout\ & (\a3|ShiftLeft0~8_combout\ & \a3|ShiftRight1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a3|LessThan0~0_combout\,
	datab => \a3|ShiftLeft0~8_combout\,
	datac => \a3|ShiftRight1~2_combout\,
	datad => \a3|out~60_combout\,
	combout => \a3|out~61_combout\);

-- Location: FF_X21_Y14_N15
\a3|out[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \a3|out~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a3|out\(15));

-- Location: LCCOMB_X26_Y16_N26
\a3|out~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a3|out~58_combout\ = (\a5|out\(2) & ((\a3|Add47~8_combout\ & ((!\a3|Add47~6_combout\))) # (!\a3|Add47~8_combout\ & (\a3|ShiftRight1~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a5|out\(2),
	datab => \a3|ShiftRight1~3_combout\,
	datac => \a3|Add47~8_combout\,
	datad => \a3|Add47~6_combout\,
	combout => \a3|out~58_combout\);

-- Location: LCCOMB_X24_Y13_N30
\a3|out~59\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a3|out~59_combout\ = (\a3|out[29]~36_combout\ & ((\a3|out~58_combout\) # ((\a3|Add47~6_combout\ & \a3|out~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a3|Add47~6_combout\,
	datab => \a3|out[29]~36_combout\,
	datac => \a3|out~37_combout\,
	datad => \a3|out~58_combout\,
	combout => \a3|out~59_combout\);

-- Location: FF_X24_Y13_N31
\a3|out[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \a3|out~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a3|out\(21));

-- Location: LCCOMB_X24_Y13_N20
\sq1|Add18~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sq1|Add18~1_combout\ = \a3|out\(20) $ (((!\a3|out\(18)) # (!\a3|out\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a3|out\(21),
	datac => \a3|out\(20),
	datad => \a3|out\(18),
	combout => \sq1|Add18~1_combout\);

-- Location: LCCOMB_X24_Y13_N10
\sq1|Add18~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sq1|Add18~2_combout\ = \a3|out\(21) $ (\a3|out\(18))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \a3|out\(21),
	datad => \a3|out\(18),
	combout => \sq1|Add18~2_combout\);

-- Location: LCCOMB_X20_Y14_N2
\a3|out~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a3|out~62_combout\ = (\a5|out\(2) & (((!\a3|Add47~8_combout\) # (!\a3|Add47~6_combout\)) # (!\a3|Add47~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a3|Add47~4_combout\,
	datab => \a5|out\(2),
	datac => \a3|Add47~6_combout\,
	datad => \a3|Add47~8_combout\,
	combout => \a3|out~62_combout\);

-- Location: LCCOMB_X20_Y14_N0
\a3|out~63\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a3|out~63_combout\ = (\a3|out~62_combout\ & ((\a3|Add47~8_combout\) # ((!\a3|Add24~0_combout\ & \a3|Add47~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a3|Add47~8_combout\,
	datab => \a3|Add24~0_combout\,
	datac => \a3|Add47~6_combout\,
	datad => \a3|out~62_combout\,
	combout => \a3|out~63_combout\);

-- Location: LCCOMB_X21_Y14_N12
\a3|out~64\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a3|out~64_combout\ = (\a3|out~63_combout\) # ((\a3|Add47~4_combout\ & (\a3|Add47~6_combout\ & \a3|out~37_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a3|out~63_combout\,
	datab => \a3|Add47~4_combout\,
	datac => \a3|Add47~6_combout\,
	datad => \a3|out~37_combout\,
	combout => \a3|out~64_combout\);

-- Location: LCCOMB_X21_Y14_N30
\a3|out~65\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a3|out~65_combout\ = (!\a3|out[20]~54_combout\ & ((\a3|out~73_combout\) # ((!\a3|Add47~14_combout\ & \a3|out~64_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a3|out[20]~54_combout\,
	datab => \a3|out~73_combout\,
	datac => \a3|Add47~14_combout\,
	datad => \a3|out~64_combout\,
	combout => \a3|out~65_combout\);

-- Location: FF_X21_Y14_N31
\a3|out[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \a3|out~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a3|out\(17));

-- Location: LCCOMB_X24_Y13_N12
\sq1|Add16~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sq1|Add16~0_combout\ = (\sq1|Add18~2_combout\ & (\a3|out\(17) $ (VCC))) # (!\sq1|Add18~2_combout\ & (\a3|out\(17) & VCC))
-- \sq1|Add16~1\ = CARRY((\sq1|Add18~2_combout\ & \a3|out\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sq1|Add18~2_combout\,
	datab => \a3|out\(17),
	datad => VCC,
	combout => \sq1|Add16~0_combout\,
	cout => \sq1|Add16~1\);

-- Location: LCCOMB_X24_Y13_N14
\sq1|Add16~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sq1|Add16~2_combout\ = (\a3|out\(15) & ((\sq1|Add18~1_combout\ & (!\sq1|Add16~1\)) # (!\sq1|Add18~1_combout\ & (\sq1|Add16~1\ & VCC)))) # (!\a3|out\(15) & ((\sq1|Add18~1_combout\ & ((\sq1|Add16~1\) # (GND))) # (!\sq1|Add18~1_combout\ & 
-- (!\sq1|Add16~1\))))
-- \sq1|Add16~3\ = CARRY((\a3|out\(15) & (\sq1|Add18~1_combout\ & !\sq1|Add16~1\)) # (!\a3|out\(15) & ((\sq1|Add18~1_combout\) # (!\sq1|Add16~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a3|out\(15),
	datab => \sq1|Add18~1_combout\,
	datad => VCC,
	cin => \sq1|Add16~1\,
	combout => \sq1|Add16~2_combout\,
	cout => \sq1|Add16~3\);

-- Location: LCCOMB_X24_Y13_N0
\sq1|Add20~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sq1|Add20~0_combout\ = (\sq1|Add24~0_combout\ & (\sq1|Add16~0_combout\ $ (VCC))) # (!\sq1|Add24~0_combout\ & (\sq1|Add16~0_combout\ & VCC))
-- \sq1|Add20~1\ = CARRY((\sq1|Add24~0_combout\ & \sq1|Add16~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sq1|Add24~0_combout\,
	datab => \sq1|Add16~0_combout\,
	datad => VCC,
	combout => \sq1|Add20~0_combout\,
	cout => \sq1|Add20~1\);

-- Location: LCCOMB_X24_Y13_N2
\sq1|Add20~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sq1|Add20~2_combout\ = (\sq1|Add24~2_combout\ & ((\sq1|Add16~2_combout\ & (\sq1|Add20~1\ & VCC)) # (!\sq1|Add16~2_combout\ & (!\sq1|Add20~1\)))) # (!\sq1|Add24~2_combout\ & ((\sq1|Add16~2_combout\ & (!\sq1|Add20~1\)) # (!\sq1|Add16~2_combout\ & 
-- ((\sq1|Add20~1\) # (GND)))))
-- \sq1|Add20~3\ = CARRY((\sq1|Add24~2_combout\ & (!\sq1|Add16~2_combout\ & !\sq1|Add20~1\)) # (!\sq1|Add24~2_combout\ & ((!\sq1|Add20~1\) # (!\sq1|Add16~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sq1|Add24~2_combout\,
	datab => \sq1|Add16~2_combout\,
	datad => VCC,
	cin => \sq1|Add20~1\,
	combout => \sq1|Add20~2_combout\,
	cout => \sq1|Add20~3\);

-- Location: LCCOMB_X26_Y14_N28
\a3|out[0]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a3|out[0]~9_combout\ = (!\a3|Add33~2_combout\ & (!\a3|Add25~0_combout\ & (\a3|Add47~14_combout\ & !\a3|Add33~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a3|Add33~2_combout\,
	datab => \a3|Add25~0_combout\,
	datac => \a3|Add47~14_combout\,
	datad => \a3|Add33~1_combout\,
	combout => \a3|out[0]~9_combout\);

-- Location: LCCOMB_X26_Y14_N16
\a3|ShiftRight0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a3|ShiftRight0~0_combout\ = (\a3|Add47~12_combout\) # ((\a3|Add47~8_combout\) # ((\a3|Add47~10_combout\) # (!\a3|Add47~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a3|Add47~12_combout\,
	datab => \a3|Add47~8_combout\,
	datac => \a3|Add47~14_combout\,
	datad => \a3|Add47~10_combout\,
	combout => \a3|ShiftRight0~0_combout\);

-- Location: LCCOMB_X26_Y16_N4
\a3|out~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a3|out~17_combout\ = ((!\a3|ShiftRight0~0_combout\ & (\a3|out[0]~9_combout\ & !\a3|ShiftRight1~3_combout\))) # (!\a3|LessThan0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a3|ShiftRight0~0_combout\,
	datab => \a3|LessThan0~0_combout\,
	datac => \a3|out[0]~9_combout\,
	datad => \a3|ShiftRight1~3_combout\,
	combout => \a3|out~17_combout\);

-- Location: LCCOMB_X20_Y14_N28
\a3|out~70\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a3|out~70_combout\ = (\a3|ShiftRight1~2_combout\ & ((\a5|out\(2)) # ((!\a3|Add47~6_combout\ & !\a3|Add47~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a5|out\(2),
	datab => \a3|Add47~6_combout\,
	datac => \a3|ShiftRight1~2_combout\,
	datad => \a3|Add47~4_combout\,
	combout => \a3|out~70_combout\);

-- Location: LCCOMB_X19_Y13_N30
\a3|out~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a3|out~18_combout\ = (\a3|out~17_combout\ & (((\a5|out\(18))))) # (!\a3|out~17_combout\ & (!\a3|out[0]~9_combout\ & ((\a3|out~70_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a3|out[0]~9_combout\,
	datab => \a5|out\(18),
	datac => \a3|out~17_combout\,
	datad => \a3|out~70_combout\,
	combout => \a3|out~18_combout\);

-- Location: FF_X19_Y13_N31
\a3|out[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \a3|out~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a3|out\(12));

-- Location: LCCOMB_X21_Y14_N18
\a3|out~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a3|out~19_combout\ = ((!\a3|Add47~6_combout\ & (!\a3|ShiftRight0~0_combout\ & \a3|out[0]~9_combout\))) # (!\a3|LessThan0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a3|LessThan0~0_combout\,
	datab => \a3|Add47~6_combout\,
	datac => \a3|ShiftRight0~0_combout\,
	datad => \a3|out[0]~9_combout\,
	combout => \a3|out~19_combout\);

-- Location: LCCOMB_X20_Y14_N10
\a3|out~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a3|out~20_combout\ = (\a5|out\(2) & (\a3|ShiftRight1~2_combout\ & \a3|ShiftLeft0~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a5|out\(2),
	datac => \a3|ShiftRight1~2_combout\,
	datad => \a3|ShiftLeft0~14_combout\,
	combout => \a3|out~20_combout\);

-- Location: LCCOMB_X20_Y14_N20
\a3|out~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a3|out~21_combout\ = (\a3|out~20_combout\) # ((\a3|ShiftRight1~2_combout\ & (\a3|Add24~0_combout\ & \a3|ShiftLeft0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a3|ShiftRight1~2_combout\,
	datab => \a3|Add24~0_combout\,
	datac => \a3|ShiftLeft0~10_combout\,
	datad => \a3|out~20_combout\,
	combout => \a3|out~21_combout\);

-- Location: LCCOMB_X19_Y13_N28
\a3|out~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a3|out~22_combout\ = (\a3|out~19_combout\ & (\a5|out\(18))) # (!\a3|out~19_combout\ & (((!\a3|out[0]~9_combout\ & \a3|out~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a3|out~19_combout\,
	datab => \a5|out\(18),
	datac => \a3|out[0]~9_combout\,
	datad => \a3|out~21_combout\,
	combout => \a3|out~22_combout\);

-- Location: FF_X19_Y13_N29
\a3|out[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \a3|out~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a3|out\(13));

-- Location: LCCOMB_X19_Y13_N26
\sq1|Add10~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sq1|Add10~1_combout\ = \a3|out\(12) $ (((!\a3|out\(13)) # (!\a3|out\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a3|out\(10),
	datac => \a3|out\(12),
	datad => \a3|out\(13),
	combout => \sq1|Add10~1_combout\);

-- Location: LCCOMB_X19_Y13_N0
\a3|out~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a3|out~24_combout\ = (\a5|out\(18)) # ((!\a5|out\(2) & (!\a3|Add47~6_combout\ & \a3|ShiftRight1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a5|out\(2),
	datab => \a3|Add47~6_combout\,
	datac => \a3|ShiftRight1~2_combout\,
	datad => \a5|out\(18),
	combout => \a3|out~24_combout\);

-- Location: FF_X19_Y13_N1
\a3|out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \a3|out~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a3|out\(7));

-- Location: LCCOMB_X19_Y13_N22
\sq1|Add10~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sq1|Add10~2_combout\ = \a3|out\(10) $ (\a3|out\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \a3|out\(10),
	datad => \a3|out\(13),
	combout => \sq1|Add10~2_combout\);

-- Location: LCCOMB_X19_Y13_N6
\sq1|Add8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sq1|Add8~0_combout\ = (\sq1|Add10~2_combout\ & (\a3|out\(10) $ (VCC))) # (!\sq1|Add10~2_combout\ & (\a3|out\(10) & VCC))
-- \sq1|Add8~1\ = CARRY((\sq1|Add10~2_combout\ & \a3|out\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sq1|Add10~2_combout\,
	datab => \a3|out\(10),
	datad => VCC,
	combout => \sq1|Add8~0_combout\,
	cout => \sq1|Add8~1\);

-- Location: LCCOMB_X19_Y13_N8
\sq1|Add8~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sq1|Add8~2_combout\ = (\sq1|Add10~1_combout\ & ((\a3|out\(7) & (!\sq1|Add8~1\)) # (!\a3|out\(7) & ((\sq1|Add8~1\) # (GND))))) # (!\sq1|Add10~1_combout\ & ((\a3|out\(7) & (\sq1|Add8~1\ & VCC)) # (!\a3|out\(7) & (!\sq1|Add8~1\))))
-- \sq1|Add8~3\ = CARRY((\sq1|Add10~1_combout\ & ((!\sq1|Add8~1\) # (!\a3|out\(7)))) # (!\sq1|Add10~1_combout\ & (!\a3|out\(7) & !\sq1|Add8~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sq1|Add10~1_combout\,
	datab => \a3|out\(7),
	datad => VCC,
	cin => \sq1|Add8~1\,
	combout => \sq1|Add8~2_combout\,
	cout => \sq1|Add8~3\);

-- Location: LCCOMB_X17_Y14_N22
\a3|ShiftLeft0~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a3|ShiftLeft0~11_combout\ = (\a3|Add47~6_combout\ & ((\a5|out\(18)))) # (!\a3|Add47~6_combout\ & (\a5|out\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a5|out\(2),
	datac => \a5|out\(18),
	datad => \a3|Add47~6_combout\,
	combout => \a3|ShiftLeft0~11_combout\);

-- Location: LCCOMB_X17_Y14_N4
\a3|out[0]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a3|out[0]~8_combout\ = ((\a3|Add47~14_combout\ & \a3|Add47~8_combout\)) # (!\a3|LessThan0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a3|LessThan0~0_combout\,
	datac => \a3|Add47~14_combout\,
	datad => \a3|Add47~8_combout\,
	combout => \a3|out[0]~8_combout\);

-- Location: LCCOMB_X17_Y14_N12
\a3|out~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a3|out~25_combout\ = (\a3|ShiftRight1~2_combout\ & ((\a5|out\(2)) # ((!\a3|Add47~6_combout\) # (!\a3|Add47~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a5|out\(2),
	datab => \a3|Add47~4_combout\,
	datac => \a3|ShiftRight1~2_combout\,
	datad => \a3|Add47~6_combout\,
	combout => \a3|out~25_combout\);

-- Location: LCCOMB_X17_Y14_N26
\a3|out~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a3|out~26_combout\ = (\a3|out[0]~9_combout\ & ((\a3|ShiftLeft0~11_combout\) # ((\a3|out[0]~8_combout\)))) # (!\a3|out[0]~9_combout\ & (((!\a3|out[0]~8_combout\ & \a3|out~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a3|ShiftLeft0~11_combout\,
	datab => \a3|out[0]~9_combout\,
	datac => \a3|out[0]~8_combout\,
	datad => \a3|out~25_combout\,
	combout => \a3|out~26_combout\);

-- Location: LCCOMB_X17_Y14_N24
\a3|ShiftLeft0~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a3|ShiftLeft0~15_combout\ = (!\a5|out\(2) & (\a5|out\(18) & (!\a3|Add47~4_combout\ & !\a3|Add47~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a5|out\(2),
	datab => \a5|out\(18),
	datac => \a3|Add47~4_combout\,
	datad => \a3|Add47~6_combout\,
	combout => \a3|ShiftLeft0~15_combout\);

-- Location: LCCOMB_X17_Y14_N28
\a3|out~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a3|out~27_combout\ = (\a3|out~26_combout\ & (((\a3|ShiftLeft0~15_combout\) # (!\a3|out[0]~8_combout\)))) # (!\a3|out~26_combout\ & (\a5|out\(2) & (\a3|out[0]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a3|out~26_combout\,
	datab => \a5|out\(2),
	datac => \a3|out[0]~8_combout\,
	datad => \a3|ShiftLeft0~15_combout\,
	combout => \a3|out~27_combout\);

-- Location: LCCOMB_X17_Y13_N6
\a3|out~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a3|out~28_combout\ = (\a3|out~27_combout\ & (((!\a3|Add47~12_combout\ & !\a3|Add47~10_combout\)) # (!\a3|out[0]~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a3|Add47~12_combout\,
	datab => \a3|Add47~10_combout\,
	datac => \a3|out[0]~9_combout\,
	datad => \a3|out~27_combout\,
	combout => \a3|out~28_combout\);

-- Location: FF_X17_Y13_N7
\a3|out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \a3|out~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a3|out\(3));

-- Location: LCCOMB_X17_Y13_N16
\a3|out~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a3|out~33_combout\ = (\a5|out\(18)) # ((!\a5|out\(2) & (\a3|ShiftRight1~2_combout\ & !\a3|ShiftRight1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a5|out\(18),
	datab => \a5|out\(2),
	datac => \a3|ShiftRight1~2_combout\,
	datad => \a3|ShiftRight1~3_combout\,
	combout => \a3|out~33_combout\);

-- Location: FF_X17_Y13_N17
\a3|out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \a3|out~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a3|out\(6));

-- Location: LCCOMB_X17_Y13_N26
\a3|out~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a3|out~29_combout\ = (\a5|out\(2)) # ((!\a5|out\(18) & (\a3|ShiftRight1~2_combout\ & !\a3|ShiftRight1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a5|out\(18),
	datab => \a5|out\(2),
	datac => \a3|ShiftRight1~2_combout\,
	datad => \a3|ShiftRight1~3_combout\,
	combout => \a3|out~29_combout\);

-- Location: FF_X17_Y13_N27
\a3|out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \a3|out~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a3|out\(5));

-- Location: LCCOMB_X17_Y14_N14
\a3|ShiftLeft0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a3|ShiftLeft0~9_combout\ = (\a5|out\(18) & (!\a3|Add47~4_combout\ & !\a3|Add47~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a5|out\(18),
	datac => \a3|Add47~4_combout\,
	datad => \a3|Add47~6_combout\,
	combout => \a3|ShiftLeft0~9_combout\);

-- Location: LCCOMB_X17_Y14_N2
\a3|out~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a3|out~13_combout\ = (\a3|ShiftRight1~2_combout\ & ((\a3|Add35~0_combout\) # ((!\a3|Add47~6_combout\) # (!\a3|Add47~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a3|Add35~0_combout\,
	datab => \a3|Add47~4_combout\,
	datac => \a3|ShiftRight1~2_combout\,
	datad => \a3|Add47~6_combout\,
	combout => \a3|out~13_combout\);

-- Location: LCCOMB_X17_Y14_N18
\a3|out~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a3|out~30_combout\ = (\a3|out[0]~9_combout\ & ((\a3|ShiftLeft0~11_combout\) # ((\a3|out[0]~8_combout\)))) # (!\a3|out[0]~9_combout\ & (((!\a3|out[0]~8_combout\ & \a3|out~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a3|ShiftLeft0~11_combout\,
	datab => \a3|out[0]~9_combout\,
	datac => \a3|out[0]~8_combout\,
	datad => \a3|out~13_combout\,
	combout => \a3|out~30_combout\);

-- Location: LCCOMB_X17_Y14_N8
\a3|out~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a3|out~31_combout\ = (\a3|out[0]~8_combout\ & ((\a3|out~30_combout\ & ((\a3|ShiftLeft0~9_combout\))) # (!\a3|out~30_combout\ & (\a5|out\(2))))) # (!\a3|out[0]~8_combout\ & (((\a3|out~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a5|out\(2),
	datab => \a3|ShiftLeft0~9_combout\,
	datac => \a3|out[0]~8_combout\,
	datad => \a3|out~30_combout\,
	combout => \a3|out~31_combout\);

-- Location: LCCOMB_X17_Y13_N2
\a3|out~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a3|out~32_combout\ = (\a3|out~31_combout\ & (((!\a3|Add47~12_combout\ & !\a3|Add47~10_combout\)) # (!\a3|out[0]~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a3|Add47~12_combout\,
	datab => \a3|Add47~10_combout\,
	datac => \a3|out[0]~9_combout\,
	datad => \a3|out~31_combout\,
	combout => \a3|out~32_combout\);

-- Location: FF_X17_Y13_N3
\a3|out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \a3|out~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a3|out\(2));

-- Location: LCCOMB_X17_Y14_N0
\a3|out~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a3|out~14_combout\ = (\a3|out[0]~9_combout\ & ((\a3|ShiftLeft0~8_combout\) # ((\a3|out[0]~8_combout\)))) # (!\a3|out[0]~9_combout\ & (((!\a3|out[0]~8_combout\ & \a3|out~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a3|ShiftLeft0~8_combout\,
	datab => \a3|out[0]~9_combout\,
	datac => \a3|out[0]~8_combout\,
	datad => \a3|out~13_combout\,
	combout => \a3|out~14_combout\);

-- Location: LCCOMB_X17_Y14_N16
\a3|out~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a3|out~15_combout\ = (\a3|out[0]~8_combout\ & ((\a3|out~14_combout\ & ((\a3|ShiftLeft0~9_combout\))) # (!\a3|out~14_combout\ & (\a5|out\(2))))) # (!\a3|out[0]~8_combout\ & (((\a3|out~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a5|out\(2),
	datab => \a3|ShiftLeft0~9_combout\,
	datac => \a3|out[0]~8_combout\,
	datad => \a3|out~14_combout\,
	combout => \a3|out~15_combout\);

-- Location: LCCOMB_X17_Y13_N30
\a3|out~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a3|out~16_combout\ = (\a3|out~15_combout\ & (((!\a3|Add47~12_combout\ & !\a3|Add47~10_combout\)) # (!\a3|out[0]~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a3|Add47~12_combout\,
	datab => \a3|Add47~10_combout\,
	datac => \a3|out[0]~9_combout\,
	datad => \a3|out~15_combout\,
	combout => \a3|out~16_combout\);

-- Location: FF_X17_Y13_N31
\a3|out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \a3|out~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a3|out\(1));

-- Location: LCCOMB_X17_Y14_N30
\a3|ShiftLeft0~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a3|ShiftLeft0~13_combout\ = (\a5|out\(18) & (!\a3|Add47~6_combout\ & ((!\a3|Add47~4_combout\) # (!\a5|out\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a5|out\(2),
	datab => \a5|out\(18),
	datac => \a3|Add47~4_combout\,
	datad => \a3|Add47~6_combout\,
	combout => \a3|ShiftLeft0~13_combout\);

-- Location: LCCOMB_X17_Y14_N10
\a3|out~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a3|out~10_combout\ = (\a3|out[0]~8_combout\ & (((\a3|out[0]~9_combout\)))) # (!\a3|out[0]~8_combout\ & ((\a3|out[0]~9_combout\ & (\a3|ShiftLeft0~8_combout\)) # (!\a3|out[0]~9_combout\ & ((\a3|ShiftRight1~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a3|ShiftLeft0~8_combout\,
	datab => \a3|out[0]~8_combout\,
	datac => \a3|ShiftRight1~2_combout\,
	datad => \a3|out[0]~9_combout\,
	combout => \a3|out~10_combout\);

-- Location: LCCOMB_X17_Y14_N20
\a3|out~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a3|out~11_combout\ = (\a3|out[0]~8_combout\ & ((\a3|out~10_combout\ & (\a3|ShiftLeft0~13_combout\)) # (!\a3|out~10_combout\ & ((\a5|out\(2)))))) # (!\a3|out[0]~8_combout\ & (((\a3|out~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a3|ShiftLeft0~13_combout\,
	datab => \a5|out\(2),
	datac => \a3|out[0]~8_combout\,
	datad => \a3|out~10_combout\,
	combout => \a3|out~11_combout\);

-- Location: LCCOMB_X17_Y13_N10
\a3|out~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a3|out~12_combout\ = (\a3|out~11_combout\ & (((!\a3|Add47~12_combout\ & !\a3|Add47~10_combout\)) # (!\a3|out[0]~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a3|Add47~12_combout\,
	datab => \a3|Add47~10_combout\,
	datac => \a3|out[0]~9_combout\,
	datad => \a3|out~11_combout\,
	combout => \a3|out~12_combout\);

-- Location: FF_X17_Y13_N11
\a3|out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a3|out~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a3|out\(0));

-- Location: LCCOMB_X17_Y13_N8
\sq1|Add4~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sq1|Add4~2_combout\ = \a3|out\(5) $ (\a3|out\(2) $ (\a3|out\(1) $ (\a3|out\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a3|out\(5),
	datab => \a3|out\(2),
	datac => \a3|out\(1),
	datad => \a3|out\(0),
	combout => \sq1|Add4~2_combout\);

-- Location: LCCOMB_X17_Y13_N24
\sq1|Add4~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sq1|Add4~3_combout\ = (\a3|out\(1) & ((\a3|out\(0) & ((!\a3|out\(5)) # (!\a3|out\(2)))) # (!\a3|out\(0) & ((\a3|out\(2)) # (\a3|out\(5)))))) # (!\a3|out\(1) & ((\a3|out\(0) & ((\a3|out\(2)) # (\a3|out\(5)))) # (!\a3|out\(0) & (\a3|out\(2) & 
-- \a3|out\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a3|out\(1),
	datab => \a3|out\(0),
	datac => \a3|out\(2),
	datad => \a3|out\(5),
	combout => \sq1|Add4~3_combout\);

-- Location: LCCOMB_X17_Y13_N20
\sq1|Add5~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sq1|Add5~2_combout\ = \a3|out\(3) $ (\sq1|Add4~3_combout\ $ (((\a3|out\(6) & \sq1|Add4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a3|out\(3),
	datab => \a3|out\(6),
	datac => \sq1|Add4~2_combout\,
	datad => \sq1|Add4~3_combout\,
	combout => \sq1|Add5~2_combout\);

-- Location: LCCOMB_X17_Y13_N28
\sq1|Add5~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sq1|Add5~3_combout\ = \a3|out\(6) $ (\sq1|Add4~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a3|out\(6),
	datac => \sq1|Add4~2_combout\,
	combout => \sq1|Add5~3_combout\);

-- Location: LCCOMB_X20_Y13_N22
\sq1|Add12~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sq1|Add12~0_combout\ = (\sq1|Add5~3_combout\ & (\sq1|Add8~0_combout\ $ (VCC))) # (!\sq1|Add5~3_combout\ & (\sq1|Add8~0_combout\ & VCC))
-- \sq1|Add12~1\ = CARRY((\sq1|Add5~3_combout\ & \sq1|Add8~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sq1|Add5~3_combout\,
	datab => \sq1|Add8~0_combout\,
	datad => VCC,
	combout => \sq1|Add12~0_combout\,
	cout => \sq1|Add12~1\);

-- Location: LCCOMB_X20_Y13_N24
\sq1|Add12~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sq1|Add12~2_combout\ = (\sq1|Add8~2_combout\ & ((\sq1|Add5~2_combout\ & (\sq1|Add12~1\ & VCC)) # (!\sq1|Add5~2_combout\ & (!\sq1|Add12~1\)))) # (!\sq1|Add8~2_combout\ & ((\sq1|Add5~2_combout\ & (!\sq1|Add12~1\)) # (!\sq1|Add5~2_combout\ & 
-- ((\sq1|Add12~1\) # (GND)))))
-- \sq1|Add12~3\ = CARRY((\sq1|Add8~2_combout\ & (!\sq1|Add5~2_combout\ & !\sq1|Add12~1\)) # (!\sq1|Add8~2_combout\ & ((!\sq1|Add12~1\) # (!\sq1|Add5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sq1|Add8~2_combout\,
	datab => \sq1|Add5~2_combout\,
	datad => VCC,
	cin => \sq1|Add12~1\,
	combout => \sq1|Add12~2_combout\,
	cout => \sq1|Add12~3\);

-- Location: LCCOMB_X20_Y14_N18
\a3|ShiftLeft0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a3|ShiftLeft0~12_combout\ = (\a5|out\(18) & ((\a5|out\(2)) # ((\a3|Add47~6_combout\ & \a3|Add47~4_combout\)))) # (!\a5|out\(18) & (\a5|out\(2) & (\a3|Add47~6_combout\ $ (\a3|Add47~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a5|out\(18),
	datab => \a5|out\(2),
	datac => \a3|Add47~6_combout\,
	datad => \a3|Add47~4_combout\,
	combout => \a3|ShiftLeft0~12_combout\);

-- Location: LCCOMB_X20_Y14_N12
\a3|out~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a3|out~34_combout\ = (\a3|ShiftRight1~2_combout\ & ((\a3|ShiftLeft0~12_combout\) # ((\a3|ShiftLeft0~10_combout\ & \a3|Add24~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a3|ShiftLeft0~10_combout\,
	datab => \a3|Add24~0_combout\,
	datac => \a3|ShiftRight1~2_combout\,
	datad => \a3|ShiftLeft0~12_combout\,
	combout => \a3|out~34_combout\);

-- Location: LCCOMB_X21_Y14_N6
\a3|out~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a3|out~35_combout\ = (\a3|out~19_combout\ & (((\a5|out\(18))))) # (!\a3|out~19_combout\ & (\a3|out~34_combout\ & ((!\a3|out[0]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a3|out~19_combout\,
	datab => \a3|out~34_combout\,
	datac => \a5|out\(18),
	datad => \a3|out[0]~9_combout\,
	combout => \a3|out~35_combout\);

-- Location: FF_X21_Y14_N7
\a3|out[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \a3|out~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a3|out\(14));

-- Location: LCCOMB_X20_Y13_N12
\sq1|Add13~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sq1|Add13~0_combout\ = (\sq1|Add12~0_combout\ & (\a3|out\(14) $ (VCC))) # (!\sq1|Add12~0_combout\ & (\a3|out\(14) & VCC))
-- \sq1|Add13~1\ = CARRY((\sq1|Add12~0_combout\ & \a3|out\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sq1|Add12~0_combout\,
	datab => \a3|out\(14),
	datad => VCC,
	combout => \sq1|Add13~0_combout\,
	cout => \sq1|Add13~1\);

-- Location: LCCOMB_X20_Y13_N14
\sq1|Add13~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sq1|Add13~2_combout\ = (\sq1|Add12~2_combout\ & (!\sq1|Add13~1\)) # (!\sq1|Add12~2_combout\ & ((\sq1|Add13~1\) # (GND)))
-- \sq1|Add13~3\ = CARRY((!\sq1|Add13~1\) # (!\sq1|Add12~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sq1|Add12~2_combout\,
	datad => VCC,
	cin => \sq1|Add13~1\,
	combout => \sq1|Add13~2_combout\,
	cout => \sq1|Add13~3\);

-- Location: LCCOMB_X20_Y13_N2
\sq1|Add28~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sq1|Add28~0_combout\ = (\sq1|Add13~0_combout\ & (\sq1|Add20~0_combout\ $ (VCC))) # (!\sq1|Add13~0_combout\ & (\sq1|Add20~0_combout\ & VCC))
-- \sq1|Add28~1\ = CARRY((\sq1|Add13~0_combout\ & \sq1|Add20~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sq1|Add13~0_combout\,
	datab => \sq1|Add20~0_combout\,
	datad => VCC,
	combout => \sq1|Add28~0_combout\,
	cout => \sq1|Add28~1\);

-- Location: LCCOMB_X20_Y13_N4
\sq1|Add28~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sq1|Add28~2_combout\ = (\sq1|Add20~2_combout\ & ((\sq1|Add13~2_combout\ & (\sq1|Add28~1\ & VCC)) # (!\sq1|Add13~2_combout\ & (!\sq1|Add28~1\)))) # (!\sq1|Add20~2_combout\ & ((\sq1|Add13~2_combout\ & (!\sq1|Add28~1\)) # (!\sq1|Add13~2_combout\ & 
-- ((\sq1|Add28~1\) # (GND)))))
-- \sq1|Add28~3\ = CARRY((\sq1|Add20~2_combout\ & (!\sq1|Add13~2_combout\ & !\sq1|Add28~1\)) # (!\sq1|Add20~2_combout\ & ((!\sq1|Add28~1\) # (!\sq1|Add13~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sq1|Add20~2_combout\,
	datab => \sq1|Add13~2_combout\,
	datad => VCC,
	cin => \sq1|Add28~1\,
	combout => \sq1|Add28~2_combout\,
	cout => \sq1|Add28~3\);

-- Location: LCCOMB_X20_Y14_N26
\a3|out~66\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a3|out~66_combout\ = (\a5|out\(18) & (!\a3|Add47~6_combout\ & \a3|Add47~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a5|out\(18),
	datac => \a3|Add47~6_combout\,
	datad => \a3|Add47~8_combout\,
	combout => \a3|out~66_combout\);

-- Location: LCCOMB_X20_Y13_N0
\a3|out~67\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a3|out~67_combout\ = (\a3|out[29]~36_combout\ & ((\a3|out~66_combout\) # ((\a3|ShiftLeft0~12_combout\ & !\a3|Add47~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a3|out~66_combout\,
	datab => \a3|ShiftLeft0~12_combout\,
	datac => \a3|out[29]~36_combout\,
	datad => \a3|Add47~8_combout\,
	combout => \a3|out~67_combout\);

-- Location: FF_X20_Y13_N1
\a3|out[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \a3|out~67_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a3|out\(30));

-- Location: LCCOMB_X26_Y13_N30
\a3|out~68\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a3|out~68_combout\ = (\a3|Add47~6_combout\ & (((\a3|Add47~8_combout\)) # (!\a3|Add47~4_combout\))) # (!\a3|Add47~6_combout\ & (((\a3|Add47~4_combout\ & !\a3|Add24~0_combout\)) # (!\a3|Add47~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a3|Add47~4_combout\,
	datab => \a3|Add24~0_combout\,
	datac => \a3|Add47~6_combout\,
	datad => \a3|Add47~8_combout\,
	combout => \a3|out~68_combout\);

-- Location: LCCOMB_X26_Y13_N16
\a3|out~69\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a3|out~69_combout\ = (\a3|out[29]~36_combout\ & ((\a3|out~68_combout\ & ((\a3|out~47_combout\))) # (!\a3|out~68_combout\ & (\a5|out\(18)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a3|out[29]~36_combout\,
	datab => \a5|out\(18),
	datac => \a3|out~68_combout\,
	datad => \a3|out~47_combout\,
	combout => \a3|out~69_combout\);

-- Location: FF_X26_Y13_N17
\a3|out[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \a3|out~69_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a3|out\(31));

-- Location: LCCOMB_X21_Y13_N16
\sq1|Add29~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sq1|Add29~1_cout\ = CARRY(\a3|out\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a3|out\(31),
	datad => VCC,
	cout => \sq1|Add29~1_cout\);

-- Location: LCCOMB_X21_Y13_N18
\sq1|Add29~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sq1|Add29~2_combout\ = (\a3|out\(30) & ((\sq1|Add28~0_combout\ & (\sq1|Add29~1_cout\ & VCC)) # (!\sq1|Add28~0_combout\ & (!\sq1|Add29~1_cout\)))) # (!\a3|out\(30) & ((\sq1|Add28~0_combout\ & (!\sq1|Add29~1_cout\)) # (!\sq1|Add28~0_combout\ & 
-- ((\sq1|Add29~1_cout\) # (GND)))))
-- \sq1|Add29~3\ = CARRY((\a3|out\(30) & (!\sq1|Add28~0_combout\ & !\sq1|Add29~1_cout\)) # (!\a3|out\(30) & ((!\sq1|Add29~1_cout\) # (!\sq1|Add28~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a3|out\(30),
	datab => \sq1|Add28~0_combout\,
	datad => VCC,
	cin => \sq1|Add29~1_cout\,
	combout => \sq1|Add29~2_combout\,
	cout => \sq1|Add29~3\);

-- Location: LCCOMB_X21_Y13_N20
\sq1|Add29~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sq1|Add29~4_combout\ = (\sq1|Add28~2_combout\ & (\sq1|Add29~3\ $ (GND))) # (!\sq1|Add28~2_combout\ & (!\sq1|Add29~3\ & VCC))
-- \sq1|Add29~5\ = CARRY((\sq1|Add28~2_combout\ & !\sq1|Add29~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sq1|Add28~2_combout\,
	datad => VCC,
	cin => \sq1|Add29~3\,
	combout => \sq1|Add29~4_combout\,
	cout => \sq1|Add29~5\);

-- Location: LCCOMB_X21_Y13_N12
\sq1|LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sq1|LessThan0~0_combout\ = (\sq1|Add29~4_combout\) # (\sq1|Add29~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sq1|Add29~4_combout\,
	datad => \sq1|Add29~2_combout\,
	combout => \sq1|LessThan0~0_combout\);

-- Location: LCCOMB_X26_Y13_N18
\sq1|Add26~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sq1|Add26~0_combout\ = (\a3|out\(26) & (\a3|out\(28) & \a3|out\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a3|out\(26),
	datac => \a3|out\(28),
	datad => \a3|out\(29),
	combout => \sq1|Add26~0_combout\);

-- Location: LCCOMB_X23_Y13_N18
\sq1|Add22~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sq1|Add22~0_combout\ = (\a3|out\(25) & (\a3|out\(22) & \a3|out\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a3|out\(25),
	datac => \a3|out\(22),
	datad => \a3|out\(24),
	combout => \sq1|Add22~0_combout\);

-- Location: LCCOMB_X24_Y13_N26
\sq1|Add24~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sq1|Add24~4_combout\ = ((\sq1|Add26~0_combout\ $ (\sq1|Add22~0_combout\ $ (!\sq1|Add24~3\)))) # (GND)
-- \sq1|Add24~5\ = CARRY((\sq1|Add26~0_combout\ & ((\sq1|Add22~0_combout\) # (!\sq1|Add24~3\))) # (!\sq1|Add26~0_combout\ & (\sq1|Add22~0_combout\ & !\sq1|Add24~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sq1|Add26~0_combout\,
	datab => \sq1|Add22~0_combout\,
	datad => VCC,
	cin => \sq1|Add24~3\,
	combout => \sq1|Add24~4_combout\,
	cout => \sq1|Add24~5\);

-- Location: LCCOMB_X23_Y13_N8
\sq1|Add18~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sq1|Add18~0_combout\ = (\a3|out\(21) & (\a3|out\(20) & \a3|out\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a3|out\(21),
	datac => \a3|out\(20),
	datad => \a3|out\(18),
	combout => \sq1|Add18~0_combout\);

-- Location: LCCOMB_X24_Y13_N16
\sq1|Add16~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sq1|Add16~4_combout\ = (\sq1|Add18~0_combout\ & (\sq1|Add16~3\ $ (GND))) # (!\sq1|Add18~0_combout\ & (!\sq1|Add16~3\ & VCC))
-- \sq1|Add16~5\ = CARRY((\sq1|Add18~0_combout\ & !\sq1|Add16~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sq1|Add18~0_combout\,
	datad => VCC,
	cin => \sq1|Add16~3\,
	combout => \sq1|Add16~4_combout\,
	cout => \sq1|Add16~5\);

-- Location: LCCOMB_X24_Y13_N4
\sq1|Add20~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sq1|Add20~4_combout\ = ((\sq1|Add24~4_combout\ $ (\sq1|Add16~4_combout\ $ (!\sq1|Add20~3\)))) # (GND)
-- \sq1|Add20~5\ = CARRY((\sq1|Add24~4_combout\ & ((\sq1|Add16~4_combout\) # (!\sq1|Add20~3\))) # (!\sq1|Add24~4_combout\ & (\sq1|Add16~4_combout\ & !\sq1|Add20~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sq1|Add24~4_combout\,
	datab => \sq1|Add16~4_combout\,
	datad => VCC,
	cin => \sq1|Add20~3\,
	combout => \sq1|Add20~4_combout\,
	cout => \sq1|Add20~5\);

-- Location: LCCOMB_X19_Y13_N2
\sq1|Add10~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sq1|Add10~0_combout\ = (\a3|out\(10) & (\a3|out\(12) & \a3|out\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a3|out\(10),
	datac => \a3|out\(12),
	datad => \a3|out\(13),
	combout => \sq1|Add10~0_combout\);

-- Location: LCCOMB_X19_Y13_N10
\sq1|Add8~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sq1|Add8~4_combout\ = (\sq1|Add10~0_combout\ & (\sq1|Add8~3\ $ (GND))) # (!\sq1|Add10~0_combout\ & (!\sq1|Add8~3\ & VCC))
-- \sq1|Add8~5\ = CARRY((\sq1|Add10~0_combout\ & !\sq1|Add8~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sq1|Add10~0_combout\,
	datad => VCC,
	cin => \sq1|Add8~3\,
	combout => \sq1|Add8~4_combout\,
	cout => \sq1|Add8~5\);

-- Location: LCCOMB_X17_Y13_N12
\sq1|Add4~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sq1|Add4~1_combout\ = (\a3|out\(0) & (\a3|out\(2) & (\a3|out\(1) & \a3|out\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a3|out\(0),
	datab => \a3|out\(2),
	datac => \a3|out\(1),
	datad => \a3|out\(5),
	combout => \sq1|Add4~1_combout\);

-- Location: LCCOMB_X17_Y13_N4
\sq1|Add4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sq1|Add4~0_combout\ = (\a3|out\(1) & ((\a3|out\(0)) # ((\a3|out\(2)) # (\a3|out\(5))))) # (!\a3|out\(1) & ((\a3|out\(0) & ((\a3|out\(2)) # (\a3|out\(5)))) # (!\a3|out\(0) & (\a3|out\(2) & \a3|out\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a3|out\(1),
	datab => \a3|out\(0),
	datac => \a3|out\(2),
	datad => \a3|out\(5),
	combout => \sq1|Add4~0_combout\);

-- Location: LCCOMB_X17_Y13_N18
\sq1|Add5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sq1|Add5~0_combout\ = (\a3|out\(6) & (\sq1|Add4~2_combout\ & (\a3|out\(3) $ (\sq1|Add4~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a3|out\(3),
	datab => \a3|out\(6),
	datac => \sq1|Add4~2_combout\,
	datad => \sq1|Add4~3_combout\,
	combout => \sq1|Add5~0_combout\);

-- Location: LCCOMB_X17_Y13_N14
\sq1|Add5~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sq1|Add5~1_combout\ = \sq1|Add5~0_combout\ $ (((\sq1|Add4~1_combout\) # ((\a3|out\(3) & \sq1|Add4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sq1|Add4~1_combout\,
	datab => \a3|out\(3),
	datac => \sq1|Add4~0_combout\,
	datad => \sq1|Add5~0_combout\,
	combout => \sq1|Add5~1_combout\);

-- Location: LCCOMB_X20_Y13_N26
\sq1|Add12~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sq1|Add12~4_combout\ = ((\sq1|Add8~4_combout\ $ (\sq1|Add5~1_combout\ $ (!\sq1|Add12~3\)))) # (GND)
-- \sq1|Add12~5\ = CARRY((\sq1|Add8~4_combout\ & ((\sq1|Add5~1_combout\) # (!\sq1|Add12~3\))) # (!\sq1|Add8~4_combout\ & (\sq1|Add5~1_combout\ & !\sq1|Add12~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sq1|Add8~4_combout\,
	datab => \sq1|Add5~1_combout\,
	datad => VCC,
	cin => \sq1|Add12~3\,
	combout => \sq1|Add12~4_combout\,
	cout => \sq1|Add12~5\);

-- Location: LCCOMB_X20_Y13_N16
\sq1|Add13~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sq1|Add13~4_combout\ = (\sq1|Add12~4_combout\ & (\sq1|Add13~3\ $ (GND))) # (!\sq1|Add12~4_combout\ & (!\sq1|Add13~3\ & VCC))
-- \sq1|Add13~5\ = CARRY((\sq1|Add12~4_combout\ & !\sq1|Add13~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sq1|Add12~4_combout\,
	datad => VCC,
	cin => \sq1|Add13~3\,
	combout => \sq1|Add13~4_combout\,
	cout => \sq1|Add13~5\);

-- Location: LCCOMB_X20_Y13_N6
\sq1|Add28~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sq1|Add28~4_combout\ = ((\sq1|Add20~4_combout\ $ (\sq1|Add13~4_combout\ $ (!\sq1|Add28~3\)))) # (GND)
-- \sq1|Add28~5\ = CARRY((\sq1|Add20~4_combout\ & ((\sq1|Add13~4_combout\) # (!\sq1|Add28~3\))) # (!\sq1|Add20~4_combout\ & (\sq1|Add13~4_combout\ & !\sq1|Add28~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sq1|Add20~4_combout\,
	datab => \sq1|Add13~4_combout\,
	datad => VCC,
	cin => \sq1|Add28~3\,
	combout => \sq1|Add28~4_combout\,
	cout => \sq1|Add28~5\);

-- Location: LCCOMB_X21_Y13_N22
\sq1|Add29~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sq1|Add29~6_combout\ = (\sq1|Add28~4_combout\ & (!\sq1|Add29~5\)) # (!\sq1|Add28~4_combout\ & ((\sq1|Add29~5\) # (GND)))
-- \sq1|Add29~7\ = CARRY((!\sq1|Add29~5\) # (!\sq1|Add28~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sq1|Add28~4_combout\,
	datad => VCC,
	cin => \sq1|Add29~5\,
	combout => \sq1|Add29~6_combout\,
	cout => \sq1|Add29~7\);

-- Location: LCCOMB_X24_Y13_N28
\sq1|Add24~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sq1|Add24~6_combout\ = \sq1|Add24~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \sq1|Add24~5\,
	combout => \sq1|Add24~6_combout\);

-- Location: LCCOMB_X24_Y13_N18
\sq1|Add16~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sq1|Add16~6_combout\ = \sq1|Add16~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \sq1|Add16~5\,
	combout => \sq1|Add16~6_combout\);

-- Location: LCCOMB_X24_Y13_N6
\sq1|Add20~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sq1|Add20~6_combout\ = (\sq1|Add24~6_combout\ & ((\sq1|Add16~6_combout\ & (\sq1|Add20~5\ & VCC)) # (!\sq1|Add16~6_combout\ & (!\sq1|Add20~5\)))) # (!\sq1|Add24~6_combout\ & ((\sq1|Add16~6_combout\ & (!\sq1|Add20~5\)) # (!\sq1|Add16~6_combout\ & 
-- ((\sq1|Add20~5\) # (GND)))))
-- \sq1|Add20~7\ = CARRY((\sq1|Add24~6_combout\ & (!\sq1|Add16~6_combout\ & !\sq1|Add20~5\)) # (!\sq1|Add24~6_combout\ & ((!\sq1|Add20~5\) # (!\sq1|Add16~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sq1|Add24~6_combout\,
	datab => \sq1|Add16~6_combout\,
	datad => VCC,
	cin => \sq1|Add20~5\,
	combout => \sq1|Add20~6_combout\,
	cout => \sq1|Add20~7\);

-- Location: LCCOMB_X24_Y13_N8
\sq1|Add20~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sq1|Add20~8_combout\ = !\sq1|Add20~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \sq1|Add20~7\,
	combout => \sq1|Add20~8_combout\);

-- Location: LCCOMB_X19_Y13_N12
\sq1|Add8~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sq1|Add8~6_combout\ = \sq1|Add8~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \sq1|Add8~5\,
	combout => \sq1|Add8~6_combout\);

-- Location: LCCOMB_X20_Y13_N28
\sq1|Add12~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sq1|Add12~6_combout\ = \sq1|Add12~5\ $ (\sq1|Add8~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \sq1|Add8~6_combout\,
	cin => \sq1|Add12~5\,
	combout => \sq1|Add12~6_combout\);

-- Location: LCCOMB_X20_Y13_N18
\sq1|Add13~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sq1|Add13~6_combout\ = (\sq1|Add12~6_combout\ & (!\sq1|Add13~5\)) # (!\sq1|Add12~6_combout\ & ((\sq1|Add13~5\) # (GND)))
-- \sq1|Add13~7\ = CARRY((!\sq1|Add13~5\) # (!\sq1|Add12~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sq1|Add12~6_combout\,
	datad => VCC,
	cin => \sq1|Add13~5\,
	combout => \sq1|Add13~6_combout\,
	cout => \sq1|Add13~7\);

-- Location: LCCOMB_X20_Y13_N20
\sq1|Add13~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sq1|Add13~8_combout\ = !\sq1|Add13~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \sq1|Add13~7\,
	combout => \sq1|Add13~8_combout\);

-- Location: LCCOMB_X20_Y13_N8
\sq1|Add28~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sq1|Add28~6_combout\ = (\sq1|Add20~6_combout\ & ((\sq1|Add13~6_combout\ & (\sq1|Add28~5\ & VCC)) # (!\sq1|Add13~6_combout\ & (!\sq1|Add28~5\)))) # (!\sq1|Add20~6_combout\ & ((\sq1|Add13~6_combout\ & (!\sq1|Add28~5\)) # (!\sq1|Add13~6_combout\ & 
-- ((\sq1|Add28~5\) # (GND)))))
-- \sq1|Add28~7\ = CARRY((\sq1|Add20~6_combout\ & (!\sq1|Add13~6_combout\ & !\sq1|Add28~5\)) # (!\sq1|Add20~6_combout\ & ((!\sq1|Add28~5\) # (!\sq1|Add13~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sq1|Add20~6_combout\,
	datab => \sq1|Add13~6_combout\,
	datad => VCC,
	cin => \sq1|Add28~5\,
	combout => \sq1|Add28~6_combout\,
	cout => \sq1|Add28~7\);

-- Location: LCCOMB_X20_Y13_N10
\sq1|Add28~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sq1|Add28~8_combout\ = \sq1|Add20~8_combout\ $ (\sq1|Add28~7\ $ (!\sq1|Add13~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sq1|Add20~8_combout\,
	datad => \sq1|Add13~8_combout\,
	cin => \sq1|Add28~7\,
	combout => \sq1|Add28~8_combout\);

-- Location: LCCOMB_X21_Y13_N24
\sq1|Add29~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sq1|Add29~8_combout\ = (\sq1|Add28~6_combout\ & (\sq1|Add29~7\ $ (GND))) # (!\sq1|Add28~6_combout\ & (!\sq1|Add29~7\ & VCC))
-- \sq1|Add29~9\ = CARRY((\sq1|Add28~6_combout\ & !\sq1|Add29~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sq1|Add28~6_combout\,
	datad => VCC,
	cin => \sq1|Add29~7\,
	combout => \sq1|Add29~8_combout\,
	cout => \sq1|Add29~9\);

-- Location: LCCOMB_X21_Y13_N26
\sq1|Add29~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sq1|Add29~10_combout\ = (\sq1|Add28~8_combout\ & (!\sq1|Add29~9\)) # (!\sq1|Add28~8_combout\ & ((\sq1|Add29~9\) # (GND)))
-- \sq1|Add29~11\ = CARRY((!\sq1|Add29~9\) # (!\sq1|Add28~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sq1|Add28~8_combout\,
	datad => VCC,
	cin => \sq1|Add29~9\,
	combout => \sq1|Add29~10_combout\,
	cout => \sq1|Add29~11\);

-- Location: LCCOMB_X21_Y13_N0
\sq1|LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sq1|LessThan0~1_combout\ = (\sq1|Add29~10_combout\ & ((\sq1|LessThan0~0_combout\) # ((\sq1|Add29~6_combout\) # (\sq1|Add29~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sq1|LessThan0~0_combout\,
	datab => \sq1|Add29~6_combout\,
	datac => \sq1|Add29~10_combout\,
	datad => \sq1|Add29~8_combout\,
	combout => \sq1|LessThan0~1_combout\);

-- Location: LCCOMB_X21_Y13_N28
\sq1|Add29~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sq1|Add29~12_combout\ = !\sq1|Add29~11\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \sq1|Add29~11\,
	combout => \sq1|Add29~12_combout\);

-- Location: LCCOMB_X22_Y13_N30
\sq1|out[9]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sq1|out[9]~15_combout\ = (\sq1|LessThan0~1_combout\ & (\sq1|out[9]~14_combout\)) # (!\sq1|LessThan0~1_combout\ & ((\sq1|Add29~12_combout\ & (\sq1|out[9]~14_combout\)) # (!\sq1|Add29~12_combout\ & ((\a3|out\(10))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sq1|out[9]~14_combout\,
	datab => \a3|out\(10),
	datac => \sq1|LessThan0~1_combout\,
	datad => \sq1|Add29~12_combout\,
	combout => \sq1|out[9]~15_combout\);

-- Location: LCCOMB_X21_Y14_N28
\sq1|out[8]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sq1|out[8]~12_combout\ = (\a3|out\(17)) # (\a3|out\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a3|out\(17),
	datac => \a3|out\(15),
	combout => \sq1|out[8]~12_combout\);

-- Location: LCCOMB_X22_Y13_N8
\sq1|out[8]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sq1|out[8]~13_combout\ = (\sq1|LessThan0~1_combout\ & (\sq1|out[8]~12_combout\)) # (!\sq1|LessThan0~1_combout\ & ((\sq1|Add29~12_combout\ & (\sq1|out[8]~12_combout\)) # (!\sq1|Add29~12_combout\ & ((\a3|out\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sq1|out[8]~12_combout\,
	datab => \a3|out\(7),
	datac => \sq1|LessThan0~1_combout\,
	datad => \sq1|Add29~12_combout\,
	combout => \sq1|out[8]~13_combout\);

-- Location: LCCOMB_X21_Y14_N10
\sq1|out[7]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sq1|out[7]~10_combout\ = (\a3|out\(15)) # (\a3|out\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \a3|out\(15),
	datad => \a3|out\(14),
	combout => \sq1|out[7]~10_combout\);

-- Location: LCCOMB_X22_Y13_N20
\sq1|out[7]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sq1|out[7]~11_combout\ = (\sq1|LessThan0~1_combout\ & (\sq1|out[7]~10_combout\)) # (!\sq1|LessThan0~1_combout\ & ((\sq1|Add29~12_combout\ & (\sq1|out[7]~10_combout\)) # (!\sq1|Add29~12_combout\ & ((\a3|out\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sq1|out[7]~10_combout\,
	datab => \a3|out\(7),
	datac => \sq1|LessThan0~1_combout\,
	datad => \sq1|Add29~12_combout\,
	combout => \sq1|out[7]~11_combout\);

-- Location: LCCOMB_X22_Y13_N2
\sig1|WideNor0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sig1|WideNor0~1_combout\ = (!\sq1|out[9]~15_combout\ & (!\sq1|out[8]~13_combout\ & !\sq1|out[7]~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sq1|out[9]~15_combout\,
	datac => \sq1|out[8]~13_combout\,
	datad => \sq1|out[7]~11_combout\,
	combout => \sig1|WideNor0~1_combout\);

-- Location: LCCOMB_X21_Y13_N8
\sq1|LessThan0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sq1|LessThan0~2_combout\ = (\sq1|LessThan0~1_combout\) # (\sq1|Add29~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sq1|LessThan0~1_combout\,
	datad => \sq1|Add29~12_combout\,
	combout => \sq1|LessThan0~2_combout\);

-- Location: LCCOMB_X23_Y13_N22
\sq1|out[11]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sq1|out[11]~8_combout\ = (\sq1|LessThan0~2_combout\ & (((\a3|out\(24)) # (\a3|out\(22))))) # (!\sq1|LessThan0~2_combout\ & (\a3|out\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a3|out\(12),
	datab => \a3|out\(24),
	datac => \a3|out\(22),
	datad => \sq1|LessThan0~2_combout\,
	combout => \sq1|out[11]~8_combout\);

-- Location: LCCOMB_X23_Y13_N10
\sq1|out[10]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sq1|out[10]~7_combout\ = (\sq1|LessThan0~2_combout\ & ((\a3|out\(21)) # ((\a3|out\(20))))) # (!\sq1|LessThan0~2_combout\ & (((\a3|out\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a3|out\(21),
	datab => \a3|out\(10),
	datac => \a3|out\(20),
	datad => \sq1|LessThan0~2_combout\,
	combout => \sq1|out[10]~7_combout\);

-- Location: LCCOMB_X26_Y13_N14
\sq1|out[13]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sq1|out[13]~1_combout\ = (\a3|out\(28)) # (\a3|out\(26))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \a3|out\(28),
	datad => \a3|out\(26),
	combout => \sq1|out[13]~1_combout\);

-- Location: LCCOMB_X21_Y13_N30
\sq1|out[13]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sq1|out[13]~2_combout\ = (\sq1|LessThan0~1_combout\ & (((\sq1|out[13]~1_combout\)))) # (!\sq1|LessThan0~1_combout\ & ((\sq1|Add29~12_combout\ & ((\sq1|out[13]~1_combout\))) # (!\sq1|Add29~12_combout\ & (\a3|out\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a3|out\(13),
	datab => \sq1|LessThan0~1_combout\,
	datac => \sq1|out[13]~1_combout\,
	datad => \sq1|Add29~12_combout\,
	combout => \sq1|out[13]~2_combout\);

-- Location: LCCOMB_X26_Y13_N26
\sq1|out[14]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sq1|out[14]~5_combout\ = (\a3|out\(28)) # (\a3|out\(29))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \a3|out\(28),
	datad => \a3|out\(29),
	combout => \sq1|out[14]~5_combout\);

-- Location: LCCOMB_X21_Y13_N14
\sq1|out[14]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sq1|out[14]~6_combout\ = (\sq1|LessThan0~1_combout\ & (((\sq1|out[14]~5_combout\)))) # (!\sq1|LessThan0~1_combout\ & ((\sq1|Add29~12_combout\ & ((\sq1|out[14]~5_combout\))) # (!\sq1|Add29~12_combout\ & (\a3|out\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a3|out\(14),
	datab => \sq1|LessThan0~1_combout\,
	datac => \sq1|out[14]~5_combout\,
	datad => \sq1|Add29~12_combout\,
	combout => \sq1|out[14]~6_combout\);

-- Location: LCCOMB_X19_Y13_N14
\sq1|out[15]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sq1|out[15]~3_combout\ = (\a3|out\(30)) # (\a3|out\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \a3|out\(30),
	datad => \a3|out\(31),
	combout => \sq1|out[15]~3_combout\);

-- Location: LCCOMB_X21_Y13_N4
\sq1|out[15]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sq1|out[15]~4_combout\ = (\sq1|LessThan0~1_combout\ & (((\sq1|out[15]~3_combout\)))) # (!\sq1|LessThan0~1_combout\ & ((\sq1|Add29~12_combout\ & ((\sq1|out[15]~3_combout\))) # (!\sq1|Add29~12_combout\ & (\a3|out\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a3|out\(15),
	datab => \sq1|LessThan0~1_combout\,
	datac => \sq1|out[15]~3_combout\,
	datad => \sq1|Add29~12_combout\,
	combout => \sq1|out[15]~4_combout\);

-- Location: LCCOMB_X21_Y13_N10
\sig1|Equal29~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sig1|Equal29~0_combout\ = (!\sq1|out[13]~2_combout\ & (!\sq1|out[14]~6_combout\ & !\sq1|out[15]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sq1|out[13]~2_combout\,
	datac => \sq1|out[14]~6_combout\,
	datad => \sq1|out[15]~4_combout\,
	combout => \sig1|Equal29~0_combout\);

-- Location: LCCOMB_X23_Y13_N2
\sq1|out[12]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sq1|out[12]~9_combout\ = (\sq1|LessThan0~2_combout\ & ((\a3|out\(25)) # ((\a3|out\(24))))) # (!\sq1|LessThan0~2_combout\ & (((\a3|out\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a3|out\(25),
	datab => \a3|out\(24),
	datac => \a3|out\(12),
	datad => \sq1|LessThan0~2_combout\,
	combout => \sq1|out[12]~9_combout\);

-- Location: LCCOMB_X23_Y13_N0
\sig1|WideNor0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sig1|WideNor0~0_combout\ = (!\sq1|out[11]~8_combout\ & (!\sq1|out[10]~7_combout\ & (\sig1|Equal29~0_combout\ & !\sq1|out[12]~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sq1|out[11]~8_combout\,
	datab => \sq1|out[10]~7_combout\,
	datac => \sig1|Equal29~0_combout\,
	datad => \sq1|out[12]~9_combout\,
	combout => \sig1|WideNor0~0_combout\);

-- Location: FF_X23_Y14_N23
\a3|out[32]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \a3|LessThan0~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a3|out\(32));

-- Location: LCCOMB_X17_Y13_N0
\sq1|out[1]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sq1|out[1]~18_combout\ = (\a3|out\(2)) # (\a3|out\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \a3|out\(2),
	datad => \a3|out\(3),
	combout => \sq1|out[1]~18_combout\);

-- Location: LCCOMB_X21_Y14_N20
\sq1|out[1]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sq1|out[1]~19_combout\ = (\sq1|LessThan0~1_combout\ & (\sq1|out[1]~18_combout\)) # (!\sq1|LessThan0~1_combout\ & ((\sq1|Add29~12_combout\ & (\sq1|out[1]~18_combout\)) # (!\sq1|Add29~12_combout\ & ((\a3|out\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sq1|out[1]~18_combout\,
	datab => \sq1|LessThan0~1_combout\,
	datac => \a3|out\(1),
	datad => \sq1|Add29~12_combout\,
	combout => \sq1|out[1]~19_combout\);

-- Location: LCCOMB_X22_Y13_N16
\sq1|out[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sq1|out[0]~0_combout\ = (\a3|out\(0)) # ((\a3|out\(1) & ((\sq1|LessThan0~1_combout\) # (\sq1|Add29~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a3|out\(1),
	datab => \a3|out\(0),
	datac => \sq1|LessThan0~1_combout\,
	datad => \sq1|Add29~12_combout\,
	combout => \sq1|out[0]~0_combout\);

-- Location: LCCOMB_X17_Y13_N22
\sq1|out[2]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sq1|out[2]~20_combout\ = (\a3|out\(5)) # (\a3|out\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \a3|out\(5),
	datad => \a3|out\(3),
	combout => \sq1|out[2]~20_combout\);

-- Location: LCCOMB_X22_Y14_N18
\sq1|out[2]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sq1|out[2]~21_combout\ = (\sq1|Add29~12_combout\ & (\sq1|out[2]~20_combout\)) # (!\sq1|Add29~12_combout\ & ((\sq1|LessThan0~1_combout\ & (\sq1|out[2]~20_combout\)) # (!\sq1|LessThan0~1_combout\ & ((\a3|out\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sq1|out[2]~20_combout\,
	datab => \sq1|Add29~12_combout\,
	datac => \sq1|LessThan0~1_combout\,
	datad => \a3|out\(2),
	combout => \sq1|out[2]~21_combout\);

-- Location: LCCOMB_X19_Y13_N18
\sq1|out[6]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sq1|out[6]~16_combout\ = (\a3|out\(12)) # (\a3|out\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \a3|out\(12),
	datad => \a3|out\(13),
	combout => \sq1|out[6]~16_combout\);

-- Location: LCCOMB_X22_Y13_N26
\sq1|out[6]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sq1|out[6]~17_combout\ = (\sq1|LessThan0~1_combout\ & (((\sq1|out[6]~16_combout\)))) # (!\sq1|LessThan0~1_combout\ & ((\sq1|Add29~12_combout\ & ((\sq1|out[6]~16_combout\))) # (!\sq1|Add29~12_combout\ & (\a3|out\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a3|out\(6),
	datab => \sq1|out[6]~16_combout\,
	datac => \sq1|LessThan0~1_combout\,
	datad => \sq1|Add29~12_combout\,
	combout => \sq1|out[6]~17_combout\);

-- Location: LCCOMB_X19_Y13_N16
\sq1|out[3]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sq1|out[3]~22_combout\ = (\a3|out\(6)) # (\a3|out\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \a3|out\(6),
	datad => \a3|out\(7),
	combout => \sq1|out[3]~22_combout\);

-- Location: LCCOMB_X21_Y13_N6
\sq1|out[3]~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sq1|out[3]~23_combout\ = (\sq1|Add29~12_combout\ & (((\sq1|out[3]~22_combout\)))) # (!\sq1|Add29~12_combout\ & ((\sq1|LessThan0~1_combout\ & ((\sq1|out[3]~22_combout\))) # (!\sq1|LessThan0~1_combout\ & (\a3|out\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a3|out\(3),
	datab => \sq1|Add29~12_combout\,
	datac => \sq1|out[3]~22_combout\,
	datad => \sq1|LessThan0~1_combout\,
	combout => \sq1|out[3]~23_combout\);

-- Location: LCCOMB_X19_Y13_N20
\sq1|out[4]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sq1|out[4]~26_combout\ = (\a3|out\(10)) # (\a3|out\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \a3|out\(10),
	datad => \a3|out\(7),
	combout => \sq1|out[4]~26_combout\);

-- Location: LCCOMB_X22_Y13_N14
\sq1|out[4]~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sq1|out[4]~27_combout\ = (\sq1|LessThan0~1_combout\ & (((\sq1|out[4]~26_combout\)))) # (!\sq1|LessThan0~1_combout\ & ((\sq1|Add29~12_combout\ & ((\sq1|out[4]~26_combout\))) # (!\sq1|Add29~12_combout\ & (\a3|out\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a3|out\(3),
	datab => \sq1|out[4]~26_combout\,
	datac => \sq1|LessThan0~1_combout\,
	datad => \sq1|Add29~12_combout\,
	combout => \sq1|out[4]~27_combout\);

-- Location: LCCOMB_X19_Y13_N24
\sq1|out[5]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sq1|out[5]~24_combout\ = (\a3|out\(12)) # (\a3|out\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \a3|out\(12),
	datad => \a3|out\(10),
	combout => \sq1|out[5]~24_combout\);

-- Location: LCCOMB_X22_Y13_N4
\sq1|out[5]~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sq1|out[5]~25_combout\ = (\sq1|LessThan0~1_combout\ & (\sq1|out[5]~24_combout\)) # (!\sq1|LessThan0~1_combout\ & ((\sq1|Add29~12_combout\ & (\sq1|out[5]~24_combout\)) # (!\sq1|Add29~12_combout\ & ((\a3|out\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sq1|out[5]~24_combout\,
	datab => \a3|out\(5),
	datac => \sq1|LessThan0~1_combout\,
	datad => \sq1|Add29~12_combout\,
	combout => \sq1|out[5]~25_combout\);

-- Location: LCCOMB_X22_Y13_N22
\sig1|Equal14~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sig1|Equal14~2_combout\ = (!\sq1|out[6]~17_combout\ & (!\sq1|out[3]~23_combout\ & (!\sq1|out[4]~27_combout\ & !\sq1|out[5]~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sq1|out[6]~17_combout\,
	datab => \sq1|out[3]~23_combout\,
	datac => \sq1|out[4]~27_combout\,
	datad => \sq1|out[5]~25_combout\,
	combout => \sig1|Equal14~2_combout\);

-- Location: LCCOMB_X22_Y14_N10
\sig1|Equal14~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sig1|Equal14~3_combout\ = (!\sq1|out[2]~21_combout\ & \sig1|Equal14~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sq1|out[2]~21_combout\,
	datad => \sig1|Equal14~2_combout\,
	combout => \sig1|Equal14~3_combout\);

-- Location: LCCOMB_X22_Y14_N6
\sig1|Equal16~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sig1|Equal16~0_combout\ = (!\a3|out\(32) & (!\sq1|out[1]~19_combout\ & (!\sq1|out[0]~0_combout\ & \sig1|Equal14~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a3|out\(32),
	datab => \sq1|out[1]~19_combout\,
	datac => \sq1|out[0]~0_combout\,
	datad => \sig1|Equal14~3_combout\,
	combout => \sig1|Equal16~0_combout\);

-- Location: LCCOMB_X23_Y14_N12
\sig1|Equal13~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sig1|Equal13~0_combout\ = (\sig1|WideNor0~1_combout\ & (\sq1|out[0]~0_combout\ & \sig1|WideNor0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sig1|WideNor0~1_combout\,
	datab => \sq1|out[0]~0_combout\,
	datad => \sig1|WideNor0~0_combout\,
	combout => \sig1|Equal13~0_combout\);

-- Location: LCCOMB_X23_Y14_N22
\sig1|Equal17~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sig1|Equal17~0_combout\ = (\sig1|Equal14~2_combout\ & (!\sq1|out[2]~21_combout\ & (\a3|out\(32) & \sig1|Equal13~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sig1|Equal14~2_combout\,
	datab => \sq1|out[2]~21_combout\,
	datac => \a3|out\(32),
	datad => \sig1|Equal13~0_combout\,
	combout => \sig1|Equal17~0_combout\);

-- Location: LCCOMB_X23_Y14_N4
\sig1|Equal13~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sig1|Equal13~1_combout\ = (\sq1|out[1]~19_combout\ & \sq1|out[2]~21_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sq1|out[1]~19_combout\,
	datad => \sq1|out[2]~21_combout\,
	combout => \sig1|Equal13~1_combout\);

-- Location: LCCOMB_X23_Y14_N24
\sig1|Equal19~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sig1|Equal19~0_combout\ = (\sig1|Equal14~2_combout\ & (\a3|out\(32) & (\sig1|Equal13~1_combout\ & \sig1|Equal13~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sig1|Equal14~2_combout\,
	datab => \a3|out\(32),
	datac => \sig1|Equal13~1_combout\,
	datad => \sig1|Equal13~0_combout\,
	combout => \sig1|Equal19~0_combout\);

-- Location: LCCOMB_X22_Y14_N30
\sig1|Equal20~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sig1|Equal20~0_combout\ = (\a3|out\(32) & (\sq1|out[2]~21_combout\ & (\sq1|out[3]~23_combout\ & \sq1|out[1]~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a3|out\(32),
	datab => \sq1|out[2]~21_combout\,
	datac => \sq1|out[3]~23_combout\,
	datad => \sq1|out[1]~19_combout\,
	combout => \sig1|Equal20~0_combout\);

-- Location: LCCOMB_X22_Y13_N6
\sig1|Equal22~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sig1|Equal22~0_combout\ = (\sq1|out[5]~25_combout\ & ((\sq1|LessThan0~2_combout\ & ((\sq1|out[4]~26_combout\))) # (!\sq1|LessThan0~2_combout\ & (\a3|out\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a3|out\(3),
	datab => \sq1|out[4]~26_combout\,
	datac => \sq1|out[5]~25_combout\,
	datad => \sq1|LessThan0~2_combout\,
	combout => \sig1|Equal22~0_combout\);

-- Location: LCCOMB_X22_Y14_N26
\sig1|WideOr1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sig1|WideOr1~0_combout\ = ((!\sig1|Equal22~0_combout\ & ((\sq1|out[5]~25_combout\) # (\sq1|out[6]~17_combout\)))) # (!\sig1|Equal20~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sig1|Equal20~0_combout\,
	datab => \sq1|out[5]~25_combout\,
	datac => \sig1|Equal22~0_combout\,
	datad => \sq1|out[6]~17_combout\,
	combout => \sig1|WideOr1~0_combout\);

-- Location: LCCOMB_X22_Y13_N24
\sig1|Equal24~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sig1|Equal24~0_combout\ = (!\sq1|out[9]~15_combout\ & (\sq1|out[7]~11_combout\ & (\sq1|out[6]~17_combout\ & \sq1|out[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sq1|out[9]~15_combout\,
	datab => \sq1|out[7]~11_combout\,
	datac => \sq1|out[6]~17_combout\,
	datad => \sq1|out[0]~0_combout\,
	combout => \sig1|Equal24~0_combout\);

-- Location: LCCOMB_X22_Y14_N22
\sig1|WideOr1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sig1|WideOr1~3_combout\ = ((!\sig1|WideNor0~0_combout\) # (!\sig1|Equal24~0_combout\)) # (!\sig1|Equal22~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sig1|Equal22~0_combout\,
	datac => \sig1|Equal24~0_combout\,
	datad => \sig1|WideNor0~0_combout\,
	combout => \sig1|WideOr1~3_combout\);

-- Location: LCCOMB_X21_Y13_N2
\sig1|WideOr1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sig1|WideOr1~1_combout\ = (\sq1|out[14]~6_combout\ & (!\sq1|out[13]~2_combout\)) # (!\sq1|out[14]~6_combout\ & ((\sq1|out[15]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sq1|out[13]~2_combout\,
	datac => \sq1|out[14]~6_combout\,
	datad => \sq1|out[15]~4_combout\,
	combout => \sig1|WideOr1~1_combout\);

-- Location: LCCOMB_X22_Y13_N18
\sig1|WideNor0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sig1|WideNor0~2_combout\ = (\sq1|LessThan0~2_combout\ & (\sq1|out[8]~12_combout\ & ((\sq1|out[7]~10_combout\)))) # (!\sq1|LessThan0~2_combout\ & (((\a3|out\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sq1|out[8]~12_combout\,
	datab => \a3|out\(7),
	datac => \sq1|out[7]~10_combout\,
	datad => \sq1|LessThan0~2_combout\,
	combout => \sig1|WideNor0~2_combout\);

-- Location: LCCOMB_X22_Y13_N0
\sig1|Equal26~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sig1|Equal26~0_combout\ = (\sq1|out[9]~15_combout\ & (\sig1|WideNor0~2_combout\ & (\sq1|out[6]~17_combout\ & \sig1|Equal22~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sq1|out[9]~15_combout\,
	datab => \sig1|WideNor0~2_combout\,
	datac => \sq1|out[6]~17_combout\,
	datad => \sig1|Equal22~0_combout\,
	combout => \sig1|Equal26~0_combout\);

-- Location: LCCOMB_X22_Y14_N20
\sig1|WideOr1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sig1|WideOr1~8_combout\ = ((\sig1|WideOr1~1_combout\ & ((\sq1|out[12]~9_combout\) # (!\sig1|Equal29~0_combout\)))) # (!\sig1|Equal26~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sig1|Equal29~0_combout\,
	datab => \sq1|out[12]~9_combout\,
	datac => \sig1|WideOr1~1_combout\,
	datad => \sig1|Equal26~0_combout\,
	combout => \sig1|WideOr1~8_combout\);

-- Location: LCCOMB_X22_Y14_N28
\sig1|WideOr1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sig1|WideOr1~2_combout\ = (\sq1|out[12]~9_combout\ & (((\sq1|out[11]~8_combout\ & \sq1|out[10]~7_combout\)))) # (!\sq1|out[12]~9_combout\ & (\sig1|Equal29~0_combout\ & ((\sq1|out[10]~7_combout\) # (!\sq1|out[11]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sig1|Equal29~0_combout\,
	datab => \sq1|out[12]~9_combout\,
	datac => \sq1|out[11]~8_combout\,
	datad => \sq1|out[10]~7_combout\,
	combout => \sig1|WideOr1~2_combout\);

-- Location: LCCOMB_X22_Y14_N24
\sig1|WideOr1~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sig1|WideOr1~9_combout\ = ((\sig1|WideOr1~8_combout\) # ((!\sig1|WideOr1~2_combout\) # (!\sig1|Equal20~0_combout\))) # (!\sq1|out[0]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sq1|out[0]~0_combout\,
	datab => \sig1|WideOr1~8_combout\,
	datac => \sig1|Equal20~0_combout\,
	datad => \sig1|WideOr1~2_combout\,
	combout => \sig1|WideOr1~9_combout\);

-- Location: LCCOMB_X22_Y14_N2
\sig1|WideOr1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sig1|WideOr1~4_combout\ = (\sig1|WideOr1~9_combout\ & ((\sig1|WideOr1~0_combout\) # ((!\sig1|Equal13~0_combout\ & \sig1|WideOr1~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sig1|WideOr1~0_combout\,
	datab => \sig1|Equal13~0_combout\,
	datac => \sig1|WideOr1~3_combout\,
	datad => \sig1|WideOr1~9_combout\,
	combout => \sig1|WideOr1~4_combout\);

-- Location: LCCOMB_X23_Y14_N20
\sig1|WideOr9~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sig1|WideOr9~0_combout\ = (!\sig1|Equal17~0_combout\ & (!\sig1|Equal19~0_combout\ & \sig1|WideOr1~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sig1|Equal17~0_combout\,
	datab => \sig1|Equal19~0_combout\,
	datad => \sig1|WideOr1~4_combout\,
	combout => \sig1|WideOr9~0_combout\);

-- Location: LCCOMB_X23_Y14_N14
\sig1|WideOr1~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sig1|WideOr1~5_combout\ = (\sig1|WideOr9~0_combout\ & (((!\sig1|Equal16~0_combout\) # (!\sig1|WideNor0~0_combout\)) # (!\sig1|WideNor0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sig1|WideNor0~1_combout\,
	datab => \sig1|WideNor0~0_combout\,
	datac => \sig1|Equal16~0_combout\,
	datad => \sig1|WideOr9~0_combout\,
	combout => \sig1|WideOr1~5_combout\);

-- Location: LCCOMB_X23_Y14_N0
\sig1|Equal14~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sig1|Equal14~4_combout\ = (\sig1|Equal13~0_combout\ & (!\a3|out\(32) & (!\sq1|out[2]~21_combout\ & \sig1|Equal14~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sig1|Equal13~0_combout\,
	datab => \a3|out\(32),
	datac => \sq1|out[2]~21_combout\,
	datad => \sig1|Equal14~2_combout\,
	combout => \sig1|Equal14~4_combout\);

-- Location: LCCOMB_X23_Y14_N6
\sig1|WideOr1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sig1|WideOr1~6_combout\ = (\sig1|WideOr1~5_combout\ & !\sig1|Equal14~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sig1|WideOr1~5_combout\,
	datad => \sig1|Equal14~4_combout\,
	combout => \sig1|WideOr1~6_combout\);

-- Location: LCCOMB_X23_Y14_N10
\sig1|Equal13~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sig1|Equal13~2_combout\ = (\sig1|Equal13~0_combout\ & (!\a3|out\(32) & (\sig1|Equal13~1_combout\ & \sig1|Equal14~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sig1|Equal13~0_combout\,
	datab => \a3|out\(32),
	datac => \sig1|Equal13~1_combout\,
	datad => \sig1|Equal14~2_combout\,
	combout => \sig1|Equal13~2_combout\);

-- Location: LCCOMB_X22_Y13_N12
\sig1|WideNor0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sig1|WideNor0~9_combout\ = (!\a3|out\(32) & (\sig1|Equal13~1_combout\ & (\sq1|out[3]~23_combout\ & \sq1|out[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a3|out\(32),
	datab => \sig1|Equal13~1_combout\,
	datac => \sq1|out[3]~23_combout\,
	datad => \sq1|out[0]~0_combout\,
	combout => \sig1|WideNor0~9_combout\);

-- Location: LCCOMB_X23_Y13_N24
\sig1|WideNor0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sig1|WideNor0~3_combout\ = (\sq1|out[12]~9_combout\ & ((!\sq1|out[11]~8_combout\))) # (!\sq1|out[12]~9_combout\ & (\sq1|out[13]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sq1|out[13]~2_combout\,
	datac => \sq1|out[11]~8_combout\,
	datad => \sq1|out[12]~9_combout\,
	combout => \sig1|WideNor0~3_combout\);

-- Location: LCCOMB_X23_Y13_N30
\sig1|WideNor0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sig1|WideNor0~4_combout\ = (!\sig1|WideOr1~1_combout\ & (\sq1|out[10]~7_combout\ & (\sig1|Equal26~0_combout\ & !\sig1|WideNor0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sig1|WideOr1~1_combout\,
	datab => \sq1|out[10]~7_combout\,
	datac => \sig1|Equal26~0_combout\,
	datad => \sig1|WideNor0~3_combout\,
	combout => \sig1|WideNor0~4_combout\);

-- Location: LCCOMB_X20_Y13_N30
\sig1|WideNor0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sig1|WideNor0~7_combout\ = (\sig1|WideNor0~1_combout\ & (!\sq1|out[6]~17_combout\ & ((\sq1|out[4]~27_combout\) # (!\sq1|out[5]~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sq1|out[4]~27_combout\,
	datab => \sig1|WideNor0~1_combout\,
	datac => \sq1|out[5]~25_combout\,
	datad => \sq1|out[6]~17_combout\,
	combout => \sig1|WideNor0~7_combout\);

-- Location: LCCOMB_X22_Y13_N10
\sig1|WideNor0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sig1|WideNor0~5_combout\ = (\sig1|WideNor0~2_combout\) # ((!\sq1|out[9]~15_combout\ & !\sq1|out[8]~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sq1|out[9]~15_combout\,
	datac => \sq1|out[8]~13_combout\,
	datad => \sig1|WideNor0~2_combout\,
	combout => \sig1|WideNor0~5_combout\);

-- Location: LCCOMB_X22_Y13_N28
\sig1|WideNor0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sig1|WideNor0~6_combout\ = (\sig1|WideNor0~5_combout\ & (\sq1|out[6]~17_combout\ & \sig1|Equal22~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sig1|WideNor0~5_combout\,
	datac => \sq1|out[6]~17_combout\,
	datad => \sig1|Equal22~0_combout\,
	combout => \sig1|WideNor0~6_combout\);

-- Location: LCCOMB_X23_Y12_N18
\sig1|WideNor0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sig1|WideNor0~8_combout\ = (\sig1|WideNor0~4_combout\) # ((\sig1|WideNor0~0_combout\ & ((\sig1|WideNor0~7_combout\) # (\sig1|WideNor0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sig1|WideNor0~4_combout\,
	datab => \sig1|WideNor0~7_combout\,
	datac => \sig1|WideNor0~6_combout\,
	datad => \sig1|WideNor0~0_combout\,
	combout => \sig1|WideNor0~8_combout\);

-- Location: LCCOMB_X23_Y12_N0
\sig1|WideNor0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sig1|WideNor0~10_combout\ = ((\sig1|Equal13~2_combout\) # ((\sig1|WideNor0~9_combout\ & \sig1|WideNor0~8_combout\))) # (!\sig1|WideOr1~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sig1|WideOr1~6_combout\,
	datab => \sig1|Equal13~2_combout\,
	datac => \sig1|WideNor0~9_combout\,
	datad => \sig1|WideNor0~8_combout\,
	combout => \sig1|WideNor0~10_combout\);

-- Location: CLKCTRL_G17
\sig1|WideNor0~10clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \sig1|WideNor0~10clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \sig1|WideNor0~10clkctrl_outclk\);

-- Location: LCCOMB_X23_Y14_N28
\sig1|out[11]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sig1|out\(11) = (GLOBAL(\sig1|WideNor0~10clkctrl_outclk\) & (\sig1|WideOr1~5_combout\)) # (!GLOBAL(\sig1|WideNor0~10clkctrl_outclk\) & ((\sig1|out\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sig1|WideOr1~5_combout\,
	datab => \sig1|out\(11),
	datad => \sig1|WideNor0~10clkctrl_outclk\,
	combout => \sig1|out\(11));

-- Location: FF_X23_Y14_N3
\m5|out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \sig1|out\(11),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m5|out\(7));

-- Location: FF_X24_Y14_N21
\a7|out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \m5|out\(7),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a7|out\(7));

-- Location: LCCOMB_X24_Y14_N10
\sig1|WideOr5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sig1|WideOr5~0_combout\ = (\sig1|WideOr1~5_combout\ & ((\sq1|out[1]~19_combout\) # (!\sig1|Equal14~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sig1|Equal14~4_combout\,
	datab => \sq1|out[1]~19_combout\,
	datad => \sig1|WideOr1~5_combout\,
	combout => \sig1|WideOr5~0_combout\);

-- Location: LCCOMB_X24_Y14_N8
\sig1|out[13]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sig1|out\(13) = (GLOBAL(\sig1|WideNor0~10clkctrl_outclk\) & ((\sig1|WideOr5~0_combout\))) # (!GLOBAL(\sig1|WideNor0~10clkctrl_outclk\) & (\sig1|out\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sig1|out\(13),
	datac => \sig1|WideNor0~10clkctrl_outclk\,
	datad => \sig1|WideOr5~0_combout\,
	combout => \sig1|out\(13));

-- Location: LCCOMB_X24_Y14_N26
\m5|WideOr120\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m5|WideOr120~combout\ = (\sig1|out\(13)) # (\sig1|out\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sig1|out\(13),
	datad => \sig1|out\(11),
	combout => \m5|WideOr120~combout\);

-- Location: FF_X24_Y14_N27
\m5|out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \m5|WideOr120~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m5|out\(8));

-- Location: FF_X24_Y14_N11
\a7|out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \m5|out\(8),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a7|out\(8));

-- Location: LCCOMB_X24_Y14_N16
\a8|ShiftLeft1~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a8|ShiftLeft1~18_combout\ = (\a8|Add8~2_combout\ & (\a7|out\(7))) # (!\a8|Add8~2_combout\ & ((\a7|out\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a7|out\(7),
	datac => \a7|out\(8),
	datad => \a8|Add8~2_combout\,
	combout => \a8|ShiftLeft1~18_combout\);

-- Location: FF_X24_Y14_N9
\m5|out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sig1|out\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m5|out\(9));

-- Location: FF_X24_Y14_N19
\a7|out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \m5|out\(9),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a7|out\(9));

-- Location: LCCOMB_X23_Y14_N18
\sig1|out[14]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sig1|out\(14) = (GLOBAL(\sig1|WideNor0~10clkctrl_outclk\) & (\sig1|WideOr1~6_combout\)) # (!GLOBAL(\sig1|WideNor0~10clkctrl_outclk\) & ((\sig1|out\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sig1|WideOr1~6_combout\,
	datab => \sig1|out\(14),
	datad => \sig1|WideNor0~10clkctrl_outclk\,
	combout => \sig1|out\(14));

-- Location: LCCOMB_X23_Y14_N8
\sig1|WideOr1~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sig1|WideOr1~7_combout\ = (!\sig1|Equal13~2_combout\ & (!\sig1|Equal14~4_combout\ & \sig1|WideOr1~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sig1|Equal13~2_combout\,
	datab => \sig1|Equal14~4_combout\,
	datac => \sig1|WideOr1~5_combout\,
	combout => \sig1|WideOr1~7_combout\);

-- Location: LCCOMB_X23_Y14_N16
\sig1|out[15]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sig1|out\(15) = (GLOBAL(\sig1|WideNor0~10clkctrl_outclk\) & ((\sig1|WideOr1~7_combout\))) # (!GLOBAL(\sig1|WideNor0~10clkctrl_outclk\) & (\sig1|out\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sig1|out\(15),
	datab => \sig1|WideNor0~10clkctrl_outclk\,
	datad => \sig1|WideOr1~7_combout\,
	combout => \sig1|out\(15));

-- Location: LCCOMB_X23_Y14_N30
\m5|WideOr122\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m5|WideOr122~combout\ = (\sig1|out\(14)) # (\sig1|out\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sig1|out\(14),
	datad => \sig1|out\(15),
	combout => \m5|WideOr122~combout\);

-- Location: FF_X23_Y14_N31
\m5|out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \m5|WideOr122~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m5|out\(10));

-- Location: FF_X23_Y14_N17
\a7|out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \m5|out\(10),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a7|out\(10));

-- Location: LCCOMB_X24_Y14_N30
\a8|ShiftLeft1~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a8|ShiftLeft1~19_combout\ = (\a8|Add8~2_combout\ & (\a7|out\(9))) # (!\a8|Add8~2_combout\ & ((\a7|out\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a7|out\(9),
	datab => \a7|out\(10),
	datad => \a8|Add8~2_combout\,
	combout => \a8|ShiftLeft1~19_combout\);

-- Location: LCCOMB_X17_Y16_N18
\a8|ShiftLeft1~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a8|ShiftLeft1~20_combout\ = (\a8|Add8~4_combout\ & (\a8|ShiftLeft1~18_combout\)) # (!\a8|Add8~4_combout\ & ((\a8|ShiftLeft1~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a8|ShiftLeft1~18_combout\,
	datac => \a8|Add8~4_combout\,
	datad => \a8|ShiftLeft1~19_combout\,
	combout => \a8|ShiftLeft1~20_combout\);

-- Location: LCCOMB_X17_Y16_N22
\a8|ShiftLeft1~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a8|ShiftLeft1~40_combout\ = (\a8|Add8~6_combout\ & (\a8|Add8~8_combout\ & \a8|ShiftLeft1~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a8|Add8~6_combout\,
	datac => \a8|Add8~8_combout\,
	datad => \a8|ShiftLeft1~20_combout\,
	combout => \a8|ShiftLeft1~40_combout\);

-- Location: FF_X17_Y16_N23
\a8|out[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a8|ShiftLeft1~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a8|out\(22));

-- Location: LCCOMB_X23_Y14_N26
\sig1|out[5]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sig1|out\(5) = (GLOBAL(\sig1|WideNor0~10clkctrl_outclk\) & (\sig1|WideOr9~0_combout\)) # (!GLOBAL(\sig1|WideNor0~10clkctrl_outclk\) & ((\sig1|out\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sig1|WideOr9~0_combout\,
	datac => \sig1|out\(5),
	datad => \sig1|WideNor0~10clkctrl_outclk\,
	combout => \sig1|out\(5));

-- Location: LCCOMB_X24_Y14_N22
\m5|WideOr117\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m5|WideOr117~combout\ = (\sig1|out\(5)) # (\sig1|out\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sig1|out\(5),
	datad => \sig1|out\(11),
	combout => \m5|WideOr117~combout\);

-- Location: FF_X24_Y14_N23
\m5|out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \m5|WideOr117~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m5|out\(5));

-- Location: FF_X24_Y14_N25
\a7|out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \m5|out\(5),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a7|out\(5));

-- Location: FF_X23_Y14_N5
\m5|out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \sig1|out\(11),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m5|out\(6));

-- Location: FF_X24_Y14_N1
\a7|out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \m5|out\(6),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a7|out\(6));

-- Location: LCCOMB_X24_Y14_N0
\a8|ShiftLeft1~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a8|ShiftLeft1~5_combout\ = (\a8|Add8~2_combout\ & (\a7|out\(5))) # (!\a8|Add8~2_combout\ & ((\a7|out\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a7|out\(5),
	datac => \a7|out\(6),
	datad => \a8|Add8~2_combout\,
	combout => \a8|ShiftLeft1~5_combout\);

-- Location: LCCOMB_X17_Y16_N16
\a8|ShiftLeft1~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a8|ShiftLeft1~27_combout\ = (\a8|Add8~4_combout\ & (\a8|ShiftLeft1~5_combout\)) # (!\a8|Add8~4_combout\ & ((\a8|ShiftLeft1~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a8|Add8~4_combout\,
	datac => \a8|ShiftLeft1~5_combout\,
	datad => \a8|ShiftLeft1~18_combout\,
	combout => \a8|ShiftLeft1~27_combout\);

-- Location: LCCOMB_X24_Y14_N28
\a8|ShiftLeft1~45\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a8|ShiftLeft1~45_combout\ = (\a8|Add8~4_combout\ & ((\a8|Add8~2_combout\ & (\a7|out\(9))) # (!\a8|Add8~2_combout\ & ((\a7|out\(10))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a7|out\(9),
	datab => \a8|Add8~2_combout\,
	datac => \a7|out\(10),
	datad => \a8|Add8~4_combout\,
	combout => \a8|ShiftLeft1~45_combout\);

-- Location: LCCOMB_X19_Y18_N4
\a8|out[12]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a8|out[12]~0_combout\ = (\a8|Add8~6_combout\ & (\a8|ShiftLeft1~27_combout\)) # (!\a8|Add8~6_combout\ & ((\a8|ShiftLeft1~45_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a8|Add8~6_combout\,
	datac => \a8|ShiftLeft1~27_combout\,
	datad => \a8|ShiftLeft1~45_combout\,
	combout => \a8|out[12]~0_combout\);

-- Location: LCCOMB_X17_Y17_N30
\a8|ShiftLeft1~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a8|ShiftLeft1~36_combout\ = (\a8|Add8~8_combout\ & \a8|out[12]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a8|Add8~8_combout\,
	datac => \a8|out[12]~0_combout\,
	combout => \a8|ShiftLeft1~36_combout\);

-- Location: FF_X17_Y17_N31
\a8|out[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a8|ShiftLeft1~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a8|out\(20));

-- Location: LCCOMB_X24_Y14_N18
\a8|ShiftLeft1~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a8|ShiftLeft1~22_combout\ = (\a8|Add8~2_combout\ & (\a7|out\(8))) # (!\a8|Add8~2_combout\ & ((\a7|out\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a7|out\(8),
	datac => \a7|out\(9),
	datad => \a8|Add8~2_combout\,
	combout => \a8|ShiftLeft1~22_combout\);

-- Location: LCCOMB_X26_Y17_N22
\a8|ShiftLeft1~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a8|ShiftLeft1~23_combout\ = (\a8|Add8~4_combout\ & (((\a8|ShiftLeft1~22_combout\)))) # (!\a8|Add8~4_combout\ & (\a8|Add8~2_combout\ & (\a7|out\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a8|Add8~2_combout\,
	datab => \a7|out\(10),
	datac => \a8|ShiftLeft1~22_combout\,
	datad => \a8|Add8~4_combout\,
	combout => \a8|ShiftLeft1~23_combout\);

-- Location: FF_X23_Y14_N13
\m5|out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \sig1|out\(5),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m5|out\(4));

-- Location: FF_X24_Y14_N7
\a7|out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \m5|out\(4),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a7|out\(4));

-- Location: LCCOMB_X24_Y14_N24
\a8|ShiftLeft1~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a8|ShiftLeft1~12_combout\ = (\a8|Add8~2_combout\ & (\a7|out\(4))) # (!\a8|Add8~2_combout\ & ((\a7|out\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a7|out\(4),
	datac => \a7|out\(5),
	datad => \a8|Add8~2_combout\,
	combout => \a8|ShiftLeft1~12_combout\);

-- Location: LCCOMB_X24_Y14_N20
\a8|ShiftLeft1~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a8|ShiftLeft1~24_combout\ = (\a8|Add8~2_combout\ & (\a7|out\(6))) # (!\a8|Add8~2_combout\ & ((\a7|out\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a7|out\(6),
	datac => \a7|out\(7),
	datad => \a8|Add8~2_combout\,
	combout => \a8|ShiftLeft1~24_combout\);

-- Location: LCCOMB_X24_Y14_N6
\a8|ShiftLeft1~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a8|ShiftLeft1~25_combout\ = (\a8|Add8~4_combout\ & (\a8|ShiftLeft1~12_combout\)) # (!\a8|Add8~4_combout\ & ((\a8|ShiftLeft1~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a8|ShiftLeft1~12_combout\,
	datab => \a8|Add8~4_combout\,
	datad => \a8|ShiftLeft1~24_combout\,
	combout => \a8|ShiftLeft1~25_combout\);

-- Location: LCCOMB_X19_Y18_N30
\a8|out[11]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a8|out[11]~3_combout\ = (\a8|Add8~6_combout\ & ((\a8|ShiftLeft1~25_combout\))) # (!\a8|Add8~6_combout\ & (\a8|ShiftLeft1~23_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a8|Add8~6_combout\,
	datab => \a8|ShiftLeft1~23_combout\,
	datad => \a8|ShiftLeft1~25_combout\,
	combout => \a8|out[11]~3_combout\);

-- Location: LCCOMB_X17_Y17_N0
\a8|ShiftLeft1~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a8|ShiftLeft1~35_combout\ = (\a8|out[11]~3_combout\ & \a8|Add8~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \a8|out[11]~3_combout\,
	datad => \a8|Add8~8_combout\,
	combout => \a8|ShiftLeft1~35_combout\);

-- Location: FF_X17_Y17_N1
\a8|out[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a8|ShiftLeft1~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a8|out\(19));

-- Location: LCCOMB_X26_Y17_N0
\a8|ShiftLeft1~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a8|ShiftLeft1~28_combout\ = (\a8|Add8~2_combout\ & (\a7|out\(10) & \a8|Add8~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a8|Add8~2_combout\,
	datab => \a7|out\(10),
	datad => \a8|Add8~4_combout\,
	combout => \a8|ShiftLeft1~28_combout\);

-- Location: LCCOMB_X24_Y14_N4
\a8|ShiftLeft1~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a8|ShiftLeft1~29_combout\ = (\a8|Add8~4_combout\ & (\a8|ShiftLeft1~24_combout\)) # (!\a8|Add8~4_combout\ & ((\a8|ShiftLeft1~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a8|ShiftLeft1~24_combout\,
	datab => \a8|Add8~4_combout\,
	datad => \a8|ShiftLeft1~22_combout\,
	combout => \a8|ShiftLeft1~29_combout\);

-- Location: LCCOMB_X19_Y18_N22
\a8|out[13]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a8|out[13]~4_combout\ = (\a8|Add8~6_combout\ & ((\a8|ShiftLeft1~29_combout\))) # (!\a8|Add8~6_combout\ & (\a8|ShiftLeft1~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a8|ShiftLeft1~28_combout\,
	datac => \a8|ShiftLeft1~29_combout\,
	datad => \a8|Add8~6_combout\,
	combout => \a8|out[13]~4_combout\);

-- Location: LCCOMB_X19_Y17_N12
\a8|ShiftLeft1~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a8|ShiftLeft1~33_combout\ = (\a8|Add8~8_combout\ & \a8|out[13]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a8|Add8~8_combout\,
	datad => \a8|out[13]~4_combout\,
	combout => \a8|ShiftLeft1~33_combout\);

-- Location: FF_X19_Y17_N13
\a8|out[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a8|ShiftLeft1~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a8|out\(21));

-- Location: FF_X23_Y14_N19
\m5|out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \sig1|out\(5),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m5|out\(3));

-- Location: FF_X24_Y14_N31
\a7|out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \m5|out\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a7|out\(3));

-- Location: LCCOMB_X24_Y14_N2
\a8|ShiftLeft1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a8|ShiftLeft1~4_combout\ = (\a8|Add8~2_combout\ & ((\a7|out\(3)))) # (!\a8|Add8~2_combout\ & (\a7|out\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a7|out\(4),
	datab => \a7|out\(3),
	datad => \a8|Add8~2_combout\,
	combout => \a8|ShiftLeft1~4_combout\);

-- Location: LCCOMB_X17_Y16_N12
\a8|ShiftLeft1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a8|ShiftLeft1~6_combout\ = (\a8|Add8~4_combout\ & ((\a8|ShiftLeft1~4_combout\))) # (!\a8|Add8~4_combout\ & (\a8|ShiftLeft1~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a8|Add8~4_combout\,
	datac => \a8|ShiftLeft1~5_combout\,
	datad => \a8|ShiftLeft1~4_combout\,
	combout => \a8|ShiftLeft1~6_combout\);

-- Location: LCCOMB_X16_Y17_N20
\a8|ShiftLeft1~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a8|ShiftLeft1~34_combout\ = (\a8|Add8~8_combout\ & ((\a8|Add8~6_combout\ & ((\a8|ShiftLeft1~6_combout\))) # (!\a8|Add8~6_combout\ & (\a8|ShiftLeft1~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a8|ShiftLeft1~20_combout\,
	datab => \a8|Add8~8_combout\,
	datac => \a8|Add8~6_combout\,
	datad => \a8|ShiftLeft1~6_combout\,
	combout => \a8|ShiftLeft1~34_combout\);

-- Location: FF_X16_Y17_N21
\a8|out[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a8|ShiftLeft1~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a8|out\(18));

-- Location: LCCOMB_X17_Y17_N4
\a9|Add33~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|Add33~0_combout\ = (\a8|out\(20) & (\a8|out\(19) & (\a8|out\(21) & \a8|out\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a8|out\(20),
	datab => \a8|out\(19),
	datac => \a8|out\(21),
	datad => \a8|out\(18),
	combout => \a9|Add33~0_combout\);

-- Location: LCCOMB_X22_Y14_N12
\sig1|WideOr9~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sig1|WideOr9~1_combout\ = (!\sig1|Equal19~0_combout\ & (\sig1|WideOr1~4_combout\ & ((!\sq1|out[1]~19_combout\) # (!\sig1|Equal17~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sig1|Equal19~0_combout\,
	datab => \sig1|Equal17~0_combout\,
	datac => \sig1|WideOr1~4_combout\,
	datad => \sq1|out[1]~19_combout\,
	combout => \sig1|WideOr9~1_combout\);

-- Location: LCCOMB_X22_Y14_N0
\sig1|out[2]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sig1|out\(2) = (GLOBAL(\sig1|WideNor0~10clkctrl_outclk\) & ((\sig1|WideOr9~1_combout\))) # (!GLOBAL(\sig1|WideNor0~10clkctrl_outclk\) & (\sig1|out\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sig1|out\(2),
	datac => \sig1|WideOr9~1_combout\,
	datad => \sig1|WideNor0~10clkctrl_outclk\,
	combout => \sig1|out\(2));

-- Location: FF_X22_Y14_N1
\m5|out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sig1|out\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m5|out\(2));

-- Location: FF_X24_Y14_N5
\a7|out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \m5|out\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a7|out\(2));

-- Location: LCCOMB_X23_Y14_N2
\a8|ShiftLeft1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a8|ShiftLeft1~10_combout\ = (\a8|Add8~2_combout\ & ((\a7|out\(2)))) # (!\a8|Add8~2_combout\ & (\a7|out\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a7|out\(3),
	datab => \a8|Add8~2_combout\,
	datad => \a7|out\(2),
	combout => \a8|ShiftLeft1~10_combout\);

-- Location: LCCOMB_X22_Y14_N16
\sig1|WideOr13~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sig1|WideOr13~0_combout\ = (\sig1|WideOr1~4_combout\ & !\sig1|Equal19~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sig1|WideOr1~4_combout\,
	datab => \sig1|Equal19~0_combout\,
	combout => \sig1|WideOr13~0_combout\);

-- Location: LCCOMB_X22_Y14_N14
\sig1|out[1]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sig1|out\(1) = (GLOBAL(\sig1|WideNor0~10clkctrl_outclk\) & (\sig1|WideOr13~0_combout\)) # (!GLOBAL(\sig1|WideNor0~10clkctrl_outclk\) & ((\sig1|out\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sig1|WideOr13~0_combout\,
	datab => \sig1|out\(1),
	datad => \sig1|WideNor0~10clkctrl_outclk\,
	combout => \sig1|out\(1));

-- Location: LCCOMB_X22_Y14_N8
\m5|WideOr113\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m5|WideOr113~combout\ = (\sig1|out\(1)) # (\sig1|out\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sig1|out\(1),
	datad => \sig1|out\(2),
	combout => \m5|WideOr113~combout\);

-- Location: FF_X22_Y14_N9
\m5|out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \m5|WideOr113~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m5|out\(1));

-- Location: FF_X22_Y14_N17
\a7|out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \m5|out\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a7|out\(1));

-- Location: LCCOMB_X22_Y14_N4
\sig1|out[0]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sig1|out\(0) = (GLOBAL(\sig1|WideNor0~10clkctrl_outclk\) & (\sig1|WideOr1~4_combout\)) # (!GLOBAL(\sig1|WideNor0~10clkctrl_outclk\) & ((\sig1|out\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sig1|WideOr1~4_combout\,
	datac => \sig1|out\(0),
	datad => \sig1|WideNor0~10clkctrl_outclk\,
	combout => \sig1|out\(0));

-- Location: FF_X22_Y14_N5
\m5|out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sig1|out\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m5|out\(0));

-- Location: FF_X22_Y14_N15
\a7|out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \m5|out\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a7|out\(0));

-- Location: LCCOMB_X31_Y17_N4
\a8|ShiftLeft1~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a8|ShiftLeft1~9_combout\ = (\a8|Add8~2_combout\ & ((\a7|out\(0)))) # (!\a8|Add8~2_combout\ & (\a7|out\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a8|Add8~2_combout\,
	datac => \a7|out\(1),
	datad => \a7|out\(0),
	combout => \a8|ShiftLeft1~9_combout\);

-- Location: LCCOMB_X19_Y17_N10
\a8|ShiftLeft1~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a8|ShiftLeft1~11_combout\ = (\a8|Add8~4_combout\ & ((\a8|ShiftLeft1~9_combout\))) # (!\a8|Add8~4_combout\ & (\a8|ShiftLeft1~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a8|Add8~4_combout\,
	datac => \a8|ShiftLeft1~10_combout\,
	datad => \a8|ShiftLeft1~9_combout\,
	combout => \a8|ShiftLeft1~11_combout\);

-- Location: LCCOMB_X19_Y17_N4
\a8|out[15]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a8|out[15]~5_combout\ = (\a8|Add8~6_combout\ & ((\a8|ShiftLeft1~11_combout\))) # (!\a8|Add8~6_combout\ & (\a8|ShiftLeft1~25_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a8|Add8~6_combout\,
	datac => \a8|ShiftLeft1~25_combout\,
	datad => \a8|ShiftLeft1~11_combout\,
	combout => \a8|out[15]~5_combout\);

-- Location: LCCOMB_X16_Y17_N14
\a8|out[15]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a8|out[15]~feeder_combout\ = \a8|out[15]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \a8|out[15]~5_combout\,
	combout => \a8|out[15]~feeder_combout\);

-- Location: LCCOMB_X16_Y17_N22
\a8|ShiftLeft1~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a8|ShiftLeft1~39_combout\ = (\a8|ShiftLeft1~23_combout\ & \a8|Add8~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a8|ShiftLeft1~23_combout\,
	datac => \a8|Add8~6_combout\,
	combout => \a8|ShiftLeft1~39_combout\);

-- Location: FF_X16_Y17_N15
\a8|out[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a8|out[15]~feeder_combout\,
	asdata => \a8|ShiftLeft1~39_combout\,
	sload => \a8|ALT_INV_Add8~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a8|out\(15));

-- Location: LCCOMB_X26_Y17_N4
\a8|ShiftLeft1~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a8|ShiftLeft1~13_combout\ = (\a8|Add8~4_combout\ & (\a8|ShiftLeft1~10_combout\)) # (!\a8|Add8~4_combout\ & ((\a8|ShiftLeft1~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a8|ShiftLeft1~10_combout\,
	datac => \a8|ShiftLeft1~12_combout\,
	datad => \a8|Add8~4_combout\,
	combout => \a8|ShiftLeft1~13_combout\);

-- Location: LCCOMB_X19_Y17_N18
\a8|out[17]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a8|out[17]~6_combout\ = (\a8|Add8~6_combout\ & ((\a8|ShiftLeft1~13_combout\))) # (!\a8|Add8~6_combout\ & (\a8|ShiftLeft1~29_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a8|Add8~6_combout\,
	datab => \a8|ShiftLeft1~29_combout\,
	datad => \a8|ShiftLeft1~13_combout\,
	combout => \a8|out[17]~6_combout\);

-- Location: LCCOMB_X19_Y17_N30
\a8|ShiftLeft1~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a8|ShiftLeft1~38_combout\ = (\a8|Add8~6_combout\ & (\a8|Add8~2_combout\ & (\a7|out\(10) & \a8|Add8~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a8|Add8~6_combout\,
	datab => \a8|Add8~2_combout\,
	datac => \a7|out\(10),
	datad => \a8|Add8~4_combout\,
	combout => \a8|ShiftLeft1~38_combout\);

-- Location: FF_X19_Y17_N19
\a8|out[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a8|out[17]~6_combout\,
	asdata => \a8|ShiftLeft1~38_combout\,
	sload => \a8|ALT_INV_Add8~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a8|out\(17));

-- Location: LCCOMB_X31_Y17_N20
\a8|ShiftLeft1~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a8|ShiftLeft1~7_combout\ = (\a8|Add8~2_combout\ & (\a7|out\(1))) # (!\a8|Add8~2_combout\ & ((\a7|out\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a7|out\(1),
	datac => \a7|out\(2),
	datad => \a8|Add8~2_combout\,
	combout => \a8|ShiftLeft1~7_combout\);

-- Location: LCCOMB_X19_Y17_N20
\a8|ShiftLeft1~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a8|ShiftLeft1~16_combout\ = (\a8|Add8~4_combout\ & (\a8|ShiftLeft1~7_combout\)) # (!\a8|Add8~4_combout\ & ((\a8|ShiftLeft1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a8|ShiftLeft1~7_combout\,
	datac => \a8|ShiftLeft1~4_combout\,
	datad => \a8|Add8~4_combout\,
	combout => \a8|ShiftLeft1~16_combout\);

-- Location: LCCOMB_X19_Y17_N24
\a8|out[16]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a8|out[16]~2_combout\ = (\a8|Add8~6_combout\ & ((\a8|ShiftLeft1~16_combout\))) # (!\a8|Add8~6_combout\ & (\a8|ShiftLeft1~27_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a8|Add8~6_combout\,
	datab => \a8|ShiftLeft1~27_combout\,
	datad => \a8|ShiftLeft1~16_combout\,
	combout => \a8|out[16]~2_combout\);

-- Location: LCCOMB_X19_Y17_N8
\a8|ShiftLeft1~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a8|ShiftLeft1~37_combout\ = (\a8|Add8~6_combout\ & (\a8|Add8~4_combout\ & \a8|ShiftLeft1~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a8|Add8~6_combout\,
	datab => \a8|Add8~4_combout\,
	datad => \a8|ShiftLeft1~19_combout\,
	combout => \a8|ShiftLeft1~37_combout\);

-- Location: FF_X19_Y17_N25
\a8|out[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a8|out[16]~2_combout\,
	asdata => \a8|ShiftLeft1~37_combout\,
	sload => \a8|ALT_INV_Add8~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a8|out\(16));

-- Location: LCCOMB_X17_Y17_N6
\a9|Add29~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|Add29~0_combout\ = (\a8|out\(15) & ((\a8|out\(17)) # (\a8|out\(16)))) # (!\a8|out\(15) & (\a8|out\(17) & \a8|out\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a8|out\(15),
	datac => \a8|out\(17),
	datad => \a8|out\(16),
	combout => \a9|Add29~0_combout\);

-- Location: LCCOMB_X17_Y17_N18
\a9|Add33~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|Add33~1_combout\ = (\a8|out\(20) & ((\a8|out\(19) & ((!\a8|out\(18)) # (!\a8|out\(21)))) # (!\a8|out\(19) & ((\a8|out\(21)) # (\a8|out\(18)))))) # (!\a8|out\(20) & ((\a8|out\(19) & ((\a8|out\(21)) # (\a8|out\(18)))) # (!\a8|out\(19) & (\a8|out\(21) & 
-- \a8|out\(18)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a8|out\(20),
	datab => \a8|out\(19),
	datac => \a8|out\(21),
	datad => \a8|out\(18),
	combout => \a9|Add33~1_combout\);

-- Location: LCCOMB_X17_Y17_N28
\a9|Add33~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|Add33~2_combout\ = \a8|out\(20) $ (\a8|out\(19) $ (\a8|out\(21) $ (\a8|out\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a8|out\(20),
	datab => \a8|out\(19),
	datac => \a8|out\(21),
	datad => \a8|out\(18),
	combout => \a9|Add33~2_combout\);

-- Location: LCCOMB_X17_Y17_N2
\a9|Add29~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|Add29~1_combout\ = \a8|out\(15) $ (\a8|out\(17) $ (\a8|out\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a8|out\(15),
	datac => \a8|out\(17),
	datad => \a8|out\(16),
	combout => \a9|Add29~1_combout\);

-- Location: LCCOMB_X17_Y17_N20
\a9|Add31~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|Add31~0_combout\ = (\a9|Add33~2_combout\ & (\a9|Add29~1_combout\ $ (VCC))) # (!\a9|Add33~2_combout\ & (\a9|Add29~1_combout\ & VCC))
-- \a9|Add31~1\ = CARRY((\a9|Add33~2_combout\ & \a9|Add29~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a9|Add33~2_combout\,
	datab => \a9|Add29~1_combout\,
	datad => VCC,
	combout => \a9|Add31~0_combout\,
	cout => \a9|Add31~1\);

-- Location: LCCOMB_X17_Y17_N22
\a9|Add31~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|Add31~2_combout\ = (\a9|Add29~0_combout\ & ((\a9|Add33~1_combout\ & (\a9|Add31~1\ & VCC)) # (!\a9|Add33~1_combout\ & (!\a9|Add31~1\)))) # (!\a9|Add29~0_combout\ & ((\a9|Add33~1_combout\ & (!\a9|Add31~1\)) # (!\a9|Add33~1_combout\ & ((\a9|Add31~1\) # 
-- (GND)))))
-- \a9|Add31~3\ = CARRY((\a9|Add29~0_combout\ & (!\a9|Add33~1_combout\ & !\a9|Add31~1\)) # (!\a9|Add29~0_combout\ & ((!\a9|Add31~1\) # (!\a9|Add33~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a9|Add29~0_combout\,
	datab => \a9|Add33~1_combout\,
	datad => VCC,
	cin => \a9|Add31~1\,
	combout => \a9|Add31~2_combout\,
	cout => \a9|Add31~3\);

-- Location: LCCOMB_X17_Y17_N24
\a9|Add31~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|Add31~4_combout\ = (\a9|Add33~0_combout\ & (\a9|Add31~3\ $ (GND))) # (!\a9|Add33~0_combout\ & (!\a9|Add31~3\ & VCC))
-- \a9|Add31~5\ = CARRY((\a9|Add33~0_combout\ & !\a9|Add31~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \a9|Add33~0_combout\,
	datad => VCC,
	cin => \a9|Add31~3\,
	combout => \a9|Add31~4_combout\,
	cout => \a9|Add31~5\);

-- Location: LCCOMB_X17_Y17_N26
\a9|Add31~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|Add31~6_combout\ = \a9|Add31~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \a9|Add31~5\,
	combout => \a9|Add31~6_combout\);

-- Location: LCCOMB_X17_Y16_N6
\a8|ShiftLeft1~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a8|ShiftLeft1~42_combout\ = (\a8|Add8~8_combout\ & (\a8|Add8~4_combout\ & (\a8|Add8~6_combout\ & \a8|ShiftLeft1~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a8|Add8~8_combout\,
	datab => \a8|Add8~4_combout\,
	datac => \a8|Add8~6_combout\,
	datad => \a8|ShiftLeft1~19_combout\,
	combout => \a8|ShiftLeft1~42_combout\);

-- Location: FF_X17_Y16_N7
\a8|out[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a8|ShiftLeft1~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a8|out\(24));

-- Location: LCCOMB_X17_Y16_N20
\a8|ShiftLeft1~41\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a8|ShiftLeft1~41_combout\ = (\a8|Add8~8_combout\ & (\a8|Add8~6_combout\ & \a8|ShiftLeft1~23_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a8|Add8~8_combout\,
	datac => \a8|Add8~6_combout\,
	datad => \a8|ShiftLeft1~23_combout\,
	combout => \a8|ShiftLeft1~41_combout\);

-- Location: FF_X17_Y16_N21
\a8|out[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a8|ShiftLeft1~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a8|out\(23));

-- Location: LCCOMB_X17_Y16_N24
\a8|ShiftLeft1~43\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a8|ShiftLeft1~43_combout\ = (\a8|Add8~8_combout\ & (\a8|Add8~6_combout\ & \a8|ShiftLeft1~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a8|Add8~8_combout\,
	datac => \a8|Add8~6_combout\,
	datad => \a8|ShiftLeft1~28_combout\,
	combout => \a8|ShiftLeft1~43_combout\);

-- Location: FF_X17_Y16_N25
\a8|out[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a8|ShiftLeft1~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a8|out\(25));

-- Location: LCCOMB_X17_Y16_N26
\a9|Add37~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|Add37~0_combout\ = (\a8|out\(24) & (\a8|out\(23) & (\a8|out\(22) & \a8|out\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a8|out\(24),
	datab => \a8|out\(23),
	datac => \a8|out\(22),
	datad => \a8|out\(25),
	combout => \a9|Add37~0_combout\);

-- Location: LCCOMB_X17_Y16_N0
\a9|Add37~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|Add37~1_combout\ = (\a8|out\(24) & ((\a8|out\(23) & ((!\a8|out\(25)) # (!\a8|out\(22)))) # (!\a8|out\(23) & ((\a8|out\(22)) # (\a8|out\(25)))))) # (!\a8|out\(24) & ((\a8|out\(23) & ((\a8|out\(22)) # (\a8|out\(25)))) # (!\a8|out\(23) & (\a8|out\(22) & 
-- \a8|out\(25)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a8|out\(24),
	datab => \a8|out\(23),
	datac => \a8|out\(22),
	datad => \a8|out\(25),
	combout => \a9|Add37~1_combout\);

-- Location: LCCOMB_X17_Y16_N14
\a9|Add37~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|Add37~2_combout\ = \a8|out\(24) $ (\a8|out\(23) $ (\a8|out\(22) $ (\a8|out\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a8|out\(24),
	datab => \a8|out\(23),
	datac => \a8|out\(22),
	datad => \a8|out\(25),
	combout => \a9|Add37~2_combout\);

-- Location: LCCOMB_X17_Y17_N8
\a9|Add35~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|Add35~0_combout\ = (\a9|Add37~2_combout\ & (\a9|Add31~0_combout\ $ (VCC))) # (!\a9|Add37~2_combout\ & (\a9|Add31~0_combout\ & VCC))
-- \a9|Add35~1\ = CARRY((\a9|Add37~2_combout\ & \a9|Add31~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a9|Add37~2_combout\,
	datab => \a9|Add31~0_combout\,
	datad => VCC,
	combout => \a9|Add35~0_combout\,
	cout => \a9|Add35~1\);

-- Location: LCCOMB_X17_Y17_N10
\a9|Add35~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|Add35~2_combout\ = (\a9|Add31~2_combout\ & ((\a9|Add37~1_combout\ & (\a9|Add35~1\ & VCC)) # (!\a9|Add37~1_combout\ & (!\a9|Add35~1\)))) # (!\a9|Add31~2_combout\ & ((\a9|Add37~1_combout\ & (!\a9|Add35~1\)) # (!\a9|Add37~1_combout\ & ((\a9|Add35~1\) # 
-- (GND)))))
-- \a9|Add35~3\ = CARRY((\a9|Add31~2_combout\ & (!\a9|Add37~1_combout\ & !\a9|Add35~1\)) # (!\a9|Add31~2_combout\ & ((!\a9|Add35~1\) # (!\a9|Add37~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a9|Add31~2_combout\,
	datab => \a9|Add37~1_combout\,
	datad => VCC,
	cin => \a9|Add35~1\,
	combout => \a9|Add35~2_combout\,
	cout => \a9|Add35~3\);

-- Location: LCCOMB_X17_Y17_N12
\a9|Add35~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|Add35~4_combout\ = ((\a9|Add37~0_combout\ $ (\a9|Add31~4_combout\ $ (!\a9|Add35~3\)))) # (GND)
-- \a9|Add35~5\ = CARRY((\a9|Add37~0_combout\ & ((\a9|Add31~4_combout\) # (!\a9|Add35~3\))) # (!\a9|Add37~0_combout\ & (\a9|Add31~4_combout\ & !\a9|Add35~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a9|Add37~0_combout\,
	datab => \a9|Add31~4_combout\,
	datad => VCC,
	cin => \a9|Add35~3\,
	combout => \a9|Add35~4_combout\,
	cout => \a9|Add35~5\);

-- Location: LCCOMB_X17_Y17_N14
\a9|Add35~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|Add35~6_combout\ = (\a9|Add31~6_combout\ & (!\a9|Add35~5\)) # (!\a9|Add31~6_combout\ & ((\a9|Add35~5\) # (GND)))
-- \a9|Add35~7\ = CARRY((!\a9|Add35~5\) # (!\a9|Add31~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a9|Add31~6_combout\,
	datad => VCC,
	cin => \a9|Add35~5\,
	combout => \a9|Add35~6_combout\,
	cout => \a9|Add35~7\);

-- Location: LCCOMB_X17_Y17_N16
\a9|Add35~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|Add35~8_combout\ = !\a9|Add35~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \a9|Add35~7\,
	combout => \a9|Add35~8_combout\);

-- Location: LCCOMB_X31_Y17_N10
\a8|ShiftLeft1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a8|ShiftLeft1~8_combout\ = (\a8|Add8~4_combout\ & (((!\a8|Add8~2_combout\ & \a7|out\(0))))) # (!\a8|Add8~4_combout\ & (\a8|ShiftLeft1~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a8|ShiftLeft1~7_combout\,
	datab => \a8|Add8~2_combout\,
	datac => \a8|Add8~4_combout\,
	datad => \a7|out\(0),
	combout => \a8|ShiftLeft1~8_combout\);

-- Location: LCCOMB_X17_Y16_N4
\a8|out[14]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a8|out[14]~1_combout\ = (\a8|Add8~6_combout\ & (\a8|ShiftLeft1~8_combout\)) # (!\a8|Add8~6_combout\ & ((\a8|ShiftLeft1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a8|ShiftLeft1~8_combout\,
	datac => \a8|Add8~6_combout\,
	datad => \a8|ShiftLeft1~6_combout\,
	combout => \a8|out[14]~1_combout\);

-- Location: LCCOMB_X19_Y16_N16
\a8|out~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a8|out~7_combout\ = (\m6|out\(6)) # ((!\a8|Add8~8_combout\ & \a8|out[14]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m6|out\(6),
	datac => \a8|Add8~8_combout\,
	datad => \a8|out[14]~1_combout\,
	combout => \a8|out~7_combout\);

-- Location: FF_X19_Y16_N17
\a8|out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a8|out~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a8|out\(6));

-- Location: LCCOMB_X19_Y16_N14
\a8|out~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a8|out~11_combout\ = (\m6|out\(2)) # ((!\a8|Add8~8_combout\ & (!\a8|Add8~6_combout\ & \a8|ShiftLeft1~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a8|Add8~8_combout\,
	datab => \m6|out\(2),
	datac => \a8|Add8~6_combout\,
	datad => \a8|ShiftLeft1~8_combout\,
	combout => \a8|out~11_combout\);

-- Location: FF_X19_Y16_N15
\a8|out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a8|out~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a8|out\(2));

-- Location: LCCOMB_X31_Y17_N18
\a8|ShiftLeft1~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a8|ShiftLeft1~15_combout\ = (\a7|out\(0) & (!\a8|Add8~4_combout\ & !\a8|Add8~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a7|out\(0),
	datac => \a8|Add8~4_combout\,
	datad => \a8|Add8~2_combout\,
	combout => \a8|ShiftLeft1~15_combout\);

-- Location: LCCOMB_X19_Y16_N26
\a8|out~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a8|out~13_combout\ = (\m6|out\(0)) # ((!\a8|Add8~6_combout\ & (!\a8|Add8~8_combout\ & \a8|ShiftLeft1~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a8|Add8~6_combout\,
	datab => \m6|out\(0),
	datac => \a8|Add8~8_combout\,
	datad => \a8|ShiftLeft1~15_combout\,
	combout => \a8|out~13_combout\);

-- Location: FF_X19_Y16_N27
\a8|out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a8|out~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a8|out\(0));

-- Location: LCCOMB_X31_Y17_N12
\a8|ShiftLeft1~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a8|ShiftLeft1~44_combout\ = (!\a8|Add8~4_combout\ & ((\a8|Add8~2_combout\ & ((\a7|out\(0)))) # (!\a8|Add8~2_combout\ & (\a7|out\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a8|Add8~4_combout\,
	datab => \a8|Add8~2_combout\,
	datac => \a7|out\(1),
	datad => \a7|out\(0),
	combout => \a8|ShiftLeft1~44_combout\);

-- Location: LCCOMB_X19_Y16_N28
\a8|out~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a8|out~12_combout\ = (\m6|out\(1)) # ((!\a8|Add8~8_combout\ & (\a8|ShiftLeft1~44_combout\ & !\a8|Add8~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a8|Add8~8_combout\,
	datab => \a8|ShiftLeft1~44_combout\,
	datac => \a8|Add8~6_combout\,
	datad => \m6|out\(1),
	combout => \a8|out~12_combout\);

-- Location: FF_X19_Y16_N29
\a8|out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a8|out~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a8|out\(1));

-- Location: LCCOMB_X19_Y16_N8
\a9|Add16~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|Add16~0_combout\ = \a8|out\(2) $ (\a8|out\(0) $ (\a8|out\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a8|out\(2),
	datac => \a8|out\(0),
	datad => \a8|out\(1),
	combout => \a9|Add16~0_combout\);

-- Location: LCCOMB_X19_Y16_N22
\a8|out~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a8|out~8_combout\ = (\m6|out\(3)) # ((!\a8|Add8~6_combout\ & (!\a8|Add8~8_combout\ & \a8|ShiftLeft1~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a8|Add8~6_combout\,
	datab => \m6|out\(3),
	datac => \a8|Add8~8_combout\,
	datad => \a8|ShiftLeft1~11_combout\,
	combout => \a8|out~8_combout\);

-- Location: FF_X19_Y16_N23
\a8|out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a8|out~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a8|out\(3));

-- Location: LCCOMB_X20_Y17_N22
\a8|ShiftLeft1~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a8|ShiftLeft1~14_combout\ = (\a8|Add8~6_combout\ & (\a8|ShiftLeft1~9_combout\ & (!\a8|Add8~4_combout\))) # (!\a8|Add8~6_combout\ & (((\a8|ShiftLeft1~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a8|ShiftLeft1~9_combout\,
	datab => \a8|Add8~4_combout\,
	datac => \a8|Add8~6_combout\,
	datad => \a8|ShiftLeft1~13_combout\,
	combout => \a8|ShiftLeft1~14_combout\);

-- Location: LCCOMB_X19_Y16_N4
\a8|out~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a8|out~9_combout\ = (\m6|out\(5)) # ((!\a8|Add8~8_combout\ & \a8|ShiftLeft1~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \m6|out\(5),
	datac => \a8|Add8~8_combout\,
	datad => \a8|ShiftLeft1~14_combout\,
	combout => \a8|out~9_combout\);

-- Location: FF_X19_Y16_N5
\a8|out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a8|out~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a8|out\(5));

-- Location: LCCOMB_X19_Y17_N26
\a8|ShiftLeft1~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a8|ShiftLeft1~17_combout\ = (\a8|Add8~6_combout\ & (\a8|ShiftLeft1~15_combout\)) # (!\a8|Add8~6_combout\ & ((\a8|ShiftLeft1~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a8|Add8~6_combout\,
	datac => \a8|ShiftLeft1~15_combout\,
	datad => \a8|ShiftLeft1~16_combout\,
	combout => \a8|ShiftLeft1~17_combout\);

-- Location: LCCOMB_X19_Y16_N6
\a8|out~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a8|out~10_combout\ = (\m6|out\(4)) # ((!\a8|Add8~8_combout\ & \a8|ShiftLeft1~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a8|Add8~8_combout\,
	datac => \m6|out\(4),
	datad => \a8|ShiftLeft1~17_combout\,
	combout => \a8|out~10_combout\);

-- Location: FF_X19_Y16_N7
\a8|out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a8|out~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a8|out\(4));

-- Location: LCCOMB_X19_Y16_N0
\a9|Add17~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|Add17~0_combout\ = \a8|out\(3) $ (\a8|out\(5) $ (\a8|out\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a8|out\(3),
	datac => \a8|out\(5),
	datad => \a8|out\(4),
	combout => \a9|Add17~0_combout\);

-- Location: LCCOMB_X19_Y16_N30
\a9|Add20~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|Add20~0_combout\ = (\a8|out\(6) & (\a9|Add16~0_combout\ $ (\a9|Add17~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a8|out\(6),
	datac => \a9|Add16~0_combout\,
	datad => \a9|Add17~0_combout\,
	combout => \a9|Add20~0_combout\);

-- Location: LCCOMB_X19_Y16_N12
\a9|Add17~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|Add17~1_combout\ = (\a8|out\(5) & ((\a8|out\(3)) # (\a8|out\(4)))) # (!\a8|out\(5) & (\a8|out\(3) & \a8|out\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a8|out\(5),
	datac => \a8|out\(3),
	datad => \a8|out\(4),
	combout => \a9|Add17~1_combout\);

-- Location: LCCOMB_X19_Y16_N18
\a9|Add19~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|Add19~4_combout\ = (\a9|Add16~0_combout\ & (\a8|out\(3) $ (\a8|out\(5) $ (\a8|out\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a8|out\(3),
	datab => \a8|out\(5),
	datac => \a9|Add16~0_combout\,
	datad => \a8|out\(4),
	combout => \a9|Add19~4_combout\);

-- Location: LCCOMB_X19_Y16_N10
\a9|Add16~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|Add16~1_combout\ = (\a8|out\(0) & ((\a8|out\(1)) # (\a8|out\(2)))) # (!\a8|out\(0) & (\a8|out\(1) & \a8|out\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a8|out\(0),
	datab => \a8|out\(1),
	datac => \a8|out\(2),
	combout => \a9|Add16~1_combout\);

-- Location: LCCOMB_X19_Y16_N24
\a9|Add20~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|Add20~1_combout\ = (\a9|Add20~0_combout\ & (\a9|Add17~1_combout\ & (\a9|Add19~4_combout\ & \a9|Add16~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a9|Add20~0_combout\,
	datab => \a9|Add17~1_combout\,
	datac => \a9|Add19~4_combout\,
	datad => \a9|Add16~1_combout\,
	combout => \a9|Add20~1_combout\);

-- Location: LCCOMB_X19_Y18_N8
\a8|out[11]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a8|out[11]~feeder_combout\ = \a8|out[11]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a8|out[11]~3_combout\,
	combout => \a8|out[11]~feeder_combout\);

-- Location: LCCOMB_X19_Y17_N0
\a8|ShiftLeft1~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a8|ShiftLeft1~26_combout\ = (!\a8|Add8~6_combout\ & ((\a8|Add8~4_combout\ & (\a8|ShiftLeft1~9_combout\)) # (!\a8|Add8~4_combout\ & ((\a8|ShiftLeft1~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a8|Add8~6_combout\,
	datab => \a8|ShiftLeft1~9_combout\,
	datac => \a8|ShiftLeft1~10_combout\,
	datad => \a8|Add8~4_combout\,
	combout => \a8|ShiftLeft1~26_combout\);

-- Location: FF_X19_Y18_N9
\a8|out[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a8|out[11]~feeder_combout\,
	asdata => \a8|ShiftLeft1~26_combout\,
	sload => \a8|Add8~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a8|out\(11));

-- Location: LCCOMB_X17_Y16_N30
\a8|ShiftLeft1~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a8|ShiftLeft1~21_combout\ = (\a8|Add8~6_combout\ & ((\a8|Add8~4_combout\ & ((\a8|ShiftLeft1~4_combout\))) # (!\a8|Add8~4_combout\ & (\a8|ShiftLeft1~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a8|Add8~6_combout\,
	datab => \a8|ShiftLeft1~5_combout\,
	datac => \a8|Add8~4_combout\,
	datad => \a8|ShiftLeft1~4_combout\,
	combout => \a8|ShiftLeft1~21_combout\);

-- Location: LCCOMB_X17_Y16_N28
\a8|out~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a8|out~14_combout\ = (!\a8|Add8~6_combout\ & ((\a8|Add8~8_combout\ & (\a8|ShiftLeft1~8_combout\)) # (!\a8|Add8~8_combout\ & ((\a8|ShiftLeft1~20_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a8|Add8~8_combout\,
	datab => \a8|ShiftLeft1~8_combout\,
	datac => \a8|Add8~6_combout\,
	datad => \a8|ShiftLeft1~20_combout\,
	combout => \a8|out~14_combout\);

-- Location: LCCOMB_X19_Y18_N18
\a8|out~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a8|out~15_combout\ = (\m6|out\(10)) # ((\a8|out~14_combout\) # ((!\a8|Add8~8_combout\ & \a8|ShiftLeft1~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m6|out\(10),
	datab => \a8|Add8~8_combout\,
	datac => \a8|ShiftLeft1~21_combout\,
	datad => \a8|out~14_combout\,
	combout => \a8|out~15_combout\);

-- Location: FF_X19_Y18_N19
\a8|out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a8|out~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a8|out\(10));

-- Location: LCCOMB_X19_Y18_N14
\a8|out[12]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a8|out[12]~feeder_combout\ = \a8|out[12]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a8|out[12]~0_combout\,
	combout => \a8|out[12]~feeder_combout\);

-- Location: FF_X19_Y18_N15
\a8|out[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a8|out[12]~feeder_combout\,
	asdata => \a8|ShiftLeft1~17_combout\,
	sload => \a8|Add8~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a8|out\(12));

-- Location: LCCOMB_X19_Y18_N12
\a8|out[13]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a8|out[13]~feeder_combout\ = \a8|out[13]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \a8|out[13]~4_combout\,
	combout => \a8|out[13]~feeder_combout\);

-- Location: FF_X19_Y18_N13
\a8|out[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a8|out[13]~feeder_combout\,
	asdata => \a8|ShiftLeft1~14_combout\,
	sload => \a8|Add8~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a8|out\(13));

-- Location: LCCOMB_X19_Y18_N28
\a9|Add25~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|Add25~0_combout\ = (\a8|out\(11) & (\a8|out\(10) & (\a8|out\(12) & \a8|out\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a8|out\(11),
	datab => \a8|out\(10),
	datac => \a8|out\(12),
	datad => \a8|out\(13),
	combout => \a9|Add25~0_combout\);

-- Location: LCCOMB_X19_Y17_N6
\a8|ShiftLeft1~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a8|ShiftLeft1~30_combout\ = (!\a8|Add8~6_combout\ & (!\a8|Add8~4_combout\ & (\a8|Add8~8_combout\ & \a8|ShiftLeft1~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a8|Add8~6_combout\,
	datab => \a8|Add8~4_combout\,
	datac => \a8|Add8~8_combout\,
	datad => \a8|ShiftLeft1~9_combout\,
	combout => \a8|ShiftLeft1~30_combout\);

-- Location: LCCOMB_X19_Y17_N2
\a8|out~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a8|out~16_combout\ = (\a8|ShiftLeft1~30_combout\) # ((\m6|out\(9)) # ((!\a8|Add8~8_combout\ & \a8|out[17]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a8|ShiftLeft1~30_combout\,
	datab => \a8|Add8~8_combout\,
	datac => \m6|out\(9),
	datad => \a8|out[17]~6_combout\,
	combout => \a8|out~16_combout\);

-- Location: FF_X19_Y17_N3
\a8|out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a8|out~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a8|out\(9));

-- Location: LCCOMB_X19_Y17_N22
\a8|out~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a8|out~18_combout\ = (\m6|out\(7)) # ((!\a8|Add8~8_combout\ & \a8|out[15]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a8|Add8~8_combout\,
	datac => \a8|out[15]~5_combout\,
	datad => \m6|out\(7),
	combout => \a8|out~18_combout\);

-- Location: FF_X19_Y17_N23
\a8|out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a8|out~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a8|out\(7));

-- Location: LCCOMB_X19_Y18_N20
\a8|ShiftLeft1~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a8|ShiftLeft1~31_combout\ = (!\a8|Add8~6_combout\ & (\a8|Add8~8_combout\ & \a8|ShiftLeft1~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a8|Add8~6_combout\,
	datab => \a8|Add8~8_combout\,
	datad => \a8|ShiftLeft1~15_combout\,
	combout => \a8|ShiftLeft1~31_combout\);

-- Location: LCCOMB_X19_Y17_N28
\a8|out~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a8|out~17_combout\ = (\a8|ShiftLeft1~31_combout\) # ((\m6|out\(8)) # ((!\a8|Add8~8_combout\ & \a8|out[16]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a8|ShiftLeft1~31_combout\,
	datab => \m6|out\(8),
	datac => \a8|Add8~8_combout\,
	datad => \a8|out[16]~2_combout\,
	combout => \a8|out~17_combout\);

-- Location: FF_X19_Y17_N29
\a8|out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a8|out~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a8|out\(8));

-- Location: LCCOMB_X19_Y17_N16
\a9|Add21~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|Add21~0_combout\ = (\a8|out\(9) & ((\a8|out\(7)) # (\a8|out\(8)))) # (!\a8|out\(9) & (\a8|out\(7) & \a8|out\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a8|out\(9),
	datac => \a8|out\(7),
	datad => \a8|out\(8),
	combout => \a9|Add21~0_combout\);

-- Location: LCCOMB_X19_Y18_N6
\a9|Add25~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|Add25~1_combout\ = (\a8|out\(13) & ((\a8|out\(11) & ((!\a8|out\(10)) # (!\a8|out\(12)))) # (!\a8|out\(11) & ((\a8|out\(12)) # (\a8|out\(10)))))) # (!\a8|out\(13) & ((\a8|out\(11) & ((\a8|out\(12)) # (\a8|out\(10)))) # (!\a8|out\(11) & (\a8|out\(12) & 
-- \a8|out\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a8|out\(13),
	datab => \a8|out\(11),
	datac => \a8|out\(12),
	datad => \a8|out\(10),
	combout => \a9|Add25~1_combout\);

-- Location: LCCOMB_X19_Y18_N24
\a9|Add25~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|Add25~2_combout\ = \a8|out\(13) $ (\a8|out\(12) $ (\a8|out\(11) $ (\a8|out\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a8|out\(13),
	datab => \a8|out\(12),
	datac => \a8|out\(11),
	datad => \a8|out\(10),
	combout => \a9|Add25~2_combout\);

-- Location: LCCOMB_X19_Y17_N14
\a9|Add21~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|Add21~1_combout\ = \a8|out\(8) $ (\a8|out\(7) $ (\a8|out\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a8|out\(8),
	datac => \a8|out\(7),
	datad => \a8|out\(9),
	combout => \a9|Add21~1_combout\);

-- Location: LCCOMB_X20_Y17_N10
\a9|Add23~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|Add23~0_combout\ = (\a9|Add25~2_combout\ & (\a9|Add21~1_combout\ $ (VCC))) # (!\a9|Add25~2_combout\ & (\a9|Add21~1_combout\ & VCC))
-- \a9|Add23~1\ = CARRY((\a9|Add25~2_combout\ & \a9|Add21~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a9|Add25~2_combout\,
	datab => \a9|Add21~1_combout\,
	datad => VCC,
	combout => \a9|Add23~0_combout\,
	cout => \a9|Add23~1\);

-- Location: LCCOMB_X20_Y17_N12
\a9|Add23~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|Add23~2_combout\ = (\a9|Add21~0_combout\ & ((\a9|Add25~1_combout\ & (\a9|Add23~1\ & VCC)) # (!\a9|Add25~1_combout\ & (!\a9|Add23~1\)))) # (!\a9|Add21~0_combout\ & ((\a9|Add25~1_combout\ & (!\a9|Add23~1\)) # (!\a9|Add25~1_combout\ & ((\a9|Add23~1\) # 
-- (GND)))))
-- \a9|Add23~3\ = CARRY((\a9|Add21~0_combout\ & (!\a9|Add25~1_combout\ & !\a9|Add23~1\)) # (!\a9|Add21~0_combout\ & ((!\a9|Add23~1\) # (!\a9|Add25~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a9|Add21~0_combout\,
	datab => \a9|Add25~1_combout\,
	datad => VCC,
	cin => \a9|Add23~1\,
	combout => \a9|Add23~2_combout\,
	cout => \a9|Add23~3\);

-- Location: LCCOMB_X20_Y17_N14
\a9|Add23~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|Add23~4_combout\ = (\a9|Add25~0_combout\ & (\a9|Add23~3\ $ (GND))) # (!\a9|Add25~0_combout\ & (!\a9|Add23~3\ & VCC))
-- \a9|Add23~5\ = CARRY((\a9|Add25~0_combout\ & !\a9|Add23~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a9|Add25~0_combout\,
	datad => VCC,
	cin => \a9|Add23~3\,
	combout => \a9|Add23~4_combout\,
	cout => \a9|Add23~5\);

-- Location: LCCOMB_X20_Y17_N16
\a9|Add23~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|Add23~6_combout\ = \a9|Add23~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \a9|Add23~5\,
	combout => \a9|Add23~6_combout\);

-- Location: LCCOMB_X19_Y16_N2
\a9|Add20~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|Add20~2_combout\ = (\a9|Add16~1_combout\ & ((\a9|Add17~1_combout\ & ((!\a9|Add19~4_combout\) # (!\a9|Add20~0_combout\))) # (!\a9|Add17~1_combout\ & ((\a9|Add20~0_combout\) # (\a9|Add19~4_combout\))))) # (!\a9|Add16~1_combout\ & ((\a9|Add17~1_combout\ 
-- & ((\a9|Add20~0_combout\) # (\a9|Add19~4_combout\))) # (!\a9|Add17~1_combout\ & (\a9|Add20~0_combout\ & \a9|Add19~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a9|Add16~1_combout\,
	datab => \a9|Add17~1_combout\,
	datac => \a9|Add20~0_combout\,
	datad => \a9|Add19~4_combout\,
	combout => \a9|Add20~2_combout\);

-- Location: LCCOMB_X19_Y16_N20
\a9|Add20~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|Add20~3_combout\ = \a9|Add17~1_combout\ $ (\a9|Add16~1_combout\ $ (\a9|Add20~0_combout\ $ (\a9|Add19~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a9|Add17~1_combout\,
	datab => \a9|Add16~1_combout\,
	datac => \a9|Add20~0_combout\,
	datad => \a9|Add19~4_combout\,
	combout => \a9|Add20~3_combout\);

-- Location: LCCOMB_X20_Y17_N18
\a9|Add20~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|Add20~4_combout\ = \a8|out\(6) $ (\a9|Add17~0_combout\ $ (\a9|Add16~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a8|out\(6),
	datac => \a9|Add17~0_combout\,
	datad => \a9|Add16~0_combout\,
	combout => \a9|Add20~4_combout\);

-- Location: LCCOMB_X20_Y17_N24
\a9|Add27~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|Add27~0_combout\ = (\a9|Add23~0_combout\ & (\a9|Add20~4_combout\ $ (VCC))) # (!\a9|Add23~0_combout\ & (\a9|Add20~4_combout\ & VCC))
-- \a9|Add27~1\ = CARRY((\a9|Add23~0_combout\ & \a9|Add20~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a9|Add23~0_combout\,
	datab => \a9|Add20~4_combout\,
	datad => VCC,
	combout => \a9|Add27~0_combout\,
	cout => \a9|Add27~1\);

-- Location: LCCOMB_X20_Y17_N26
\a9|Add27~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|Add27~2_combout\ = (\a9|Add23~2_combout\ & ((\a9|Add20~3_combout\ & (\a9|Add27~1\ & VCC)) # (!\a9|Add20~3_combout\ & (!\a9|Add27~1\)))) # (!\a9|Add23~2_combout\ & ((\a9|Add20~3_combout\ & (!\a9|Add27~1\)) # (!\a9|Add20~3_combout\ & ((\a9|Add27~1\) # 
-- (GND)))))
-- \a9|Add27~3\ = CARRY((\a9|Add23~2_combout\ & (!\a9|Add20~3_combout\ & !\a9|Add27~1\)) # (!\a9|Add23~2_combout\ & ((!\a9|Add27~1\) # (!\a9|Add20~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a9|Add23~2_combout\,
	datab => \a9|Add20~3_combout\,
	datad => VCC,
	cin => \a9|Add27~1\,
	combout => \a9|Add27~2_combout\,
	cout => \a9|Add27~3\);

-- Location: LCCOMB_X20_Y17_N28
\a9|Add27~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|Add27~4_combout\ = ((\a9|Add20~2_combout\ $ (\a9|Add23~4_combout\ $ (!\a9|Add27~3\)))) # (GND)
-- \a9|Add27~5\ = CARRY((\a9|Add20~2_combout\ & ((\a9|Add23~4_combout\) # (!\a9|Add27~3\))) # (!\a9|Add20~2_combout\ & (\a9|Add23~4_combout\ & !\a9|Add27~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a9|Add20~2_combout\,
	datab => \a9|Add23~4_combout\,
	datad => VCC,
	cin => \a9|Add27~3\,
	combout => \a9|Add27~4_combout\,
	cout => \a9|Add27~5\);

-- Location: LCCOMB_X20_Y17_N30
\a9|Add27~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|Add27~6_combout\ = \a9|Add20~1_combout\ $ (\a9|Add27~5\ $ (\a9|Add23~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a9|Add20~1_combout\,
	datad => \a9|Add23~6_combout\,
	cin => \a9|Add27~5\,
	combout => \a9|Add27~6_combout\);

-- Location: LCCOMB_X16_Y17_N0
\a8|out[14]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a8|out[14]~feeder_combout\ = \a8|out[14]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \a8|out[14]~1_combout\,
	combout => \a8|out[14]~feeder_combout\);

-- Location: LCCOMB_X17_Y16_N2
\a8|ShiftLeft1~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a8|ShiftLeft1~32_combout\ = (\a8|Add8~6_combout\ & ((\a8|Add8~4_combout\ & (\a8|ShiftLeft1~18_combout\)) # (!\a8|Add8~4_combout\ & ((\a8|ShiftLeft1~19_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a8|ShiftLeft1~18_combout\,
	datab => \a8|Add8~4_combout\,
	datac => \a8|Add8~6_combout\,
	datad => \a8|ShiftLeft1~19_combout\,
	combout => \a8|ShiftLeft1~32_combout\);

-- Location: FF_X16_Y17_N1
\a8|out[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a8|out[14]~feeder_combout\,
	asdata => \a8|ShiftLeft1~32_combout\,
	sload => \a8|ALT_INV_Add8~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a8|out\(14));

-- Location: LCCOMB_X20_Y17_N0
\a9|Add28~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|Add28~0_combout\ = (\a8|out\(14) & (\a9|Add27~0_combout\ $ (VCC))) # (!\a8|out\(14) & (\a9|Add27~0_combout\ & VCC))
-- \a9|Add28~1\ = CARRY((\a8|out\(14) & \a9|Add27~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a8|out\(14),
	datab => \a9|Add27~0_combout\,
	datad => VCC,
	combout => \a9|Add28~0_combout\,
	cout => \a9|Add28~1\);

-- Location: LCCOMB_X20_Y17_N2
\a9|Add28~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|Add28~2_combout\ = (\a9|Add27~2_combout\ & (!\a9|Add28~1\)) # (!\a9|Add27~2_combout\ & ((\a9|Add28~1\) # (GND)))
-- \a9|Add28~3\ = CARRY((!\a9|Add28~1\) # (!\a9|Add27~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a9|Add27~2_combout\,
	datad => VCC,
	cin => \a9|Add28~1\,
	combout => \a9|Add28~2_combout\,
	cout => \a9|Add28~3\);

-- Location: LCCOMB_X20_Y17_N4
\a9|Add28~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|Add28~4_combout\ = (\a9|Add27~4_combout\ & (\a9|Add28~3\ $ (GND))) # (!\a9|Add27~4_combout\ & (!\a9|Add28~3\ & VCC))
-- \a9|Add28~5\ = CARRY((\a9|Add27~4_combout\ & !\a9|Add28~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \a9|Add27~4_combout\,
	datad => VCC,
	cin => \a9|Add28~3\,
	combout => \a9|Add28~4_combout\,
	cout => \a9|Add28~5\);

-- Location: LCCOMB_X20_Y17_N6
\a9|Add28~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|Add28~6_combout\ = (\a9|Add27~6_combout\ & (!\a9|Add28~5\)) # (!\a9|Add27~6_combout\ & ((\a9|Add28~5\) # (GND)))
-- \a9|Add28~7\ = CARRY((!\a9|Add28~5\) # (!\a9|Add27~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a9|Add27~6_combout\,
	datad => VCC,
	cin => \a9|Add28~5\,
	combout => \a9|Add28~6_combout\,
	cout => \a9|Add28~7\);

-- Location: LCCOMB_X20_Y17_N8
\a9|Add28~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|Add28~8_combout\ = !\a9|Add28~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \a9|Add28~7\,
	combout => \a9|Add28~8_combout\);

-- Location: LCCOMB_X21_Y17_N4
\a9|Add39~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|Add39~0_combout\ = (\a9|Add28~0_combout\ & (\a9|Add35~0_combout\ $ (VCC))) # (!\a9|Add28~0_combout\ & (\a9|Add35~0_combout\ & VCC))
-- \a9|Add39~1\ = CARRY((\a9|Add28~0_combout\ & \a9|Add35~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a9|Add28~0_combout\,
	datab => \a9|Add35~0_combout\,
	datad => VCC,
	combout => \a9|Add39~0_combout\,
	cout => \a9|Add39~1\);

-- Location: LCCOMB_X21_Y17_N6
\a9|Add39~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|Add39~2_combout\ = (\a9|Add28~2_combout\ & ((\a9|Add35~2_combout\ & (\a9|Add39~1\ & VCC)) # (!\a9|Add35~2_combout\ & (!\a9|Add39~1\)))) # (!\a9|Add28~2_combout\ & ((\a9|Add35~2_combout\ & (!\a9|Add39~1\)) # (!\a9|Add35~2_combout\ & ((\a9|Add39~1\) # 
-- (GND)))))
-- \a9|Add39~3\ = CARRY((\a9|Add28~2_combout\ & (!\a9|Add35~2_combout\ & !\a9|Add39~1\)) # (!\a9|Add28~2_combout\ & ((!\a9|Add39~1\) # (!\a9|Add35~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a9|Add28~2_combout\,
	datab => \a9|Add35~2_combout\,
	datad => VCC,
	cin => \a9|Add39~1\,
	combout => \a9|Add39~2_combout\,
	cout => \a9|Add39~3\);

-- Location: LCCOMB_X21_Y17_N8
\a9|Add39~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|Add39~4_combout\ = ((\a9|Add35~4_combout\ $ (\a9|Add28~4_combout\ $ (!\a9|Add39~3\)))) # (GND)
-- \a9|Add39~5\ = CARRY((\a9|Add35~4_combout\ & ((\a9|Add28~4_combout\) # (!\a9|Add39~3\))) # (!\a9|Add35~4_combout\ & (\a9|Add28~4_combout\ & !\a9|Add39~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a9|Add35~4_combout\,
	datab => \a9|Add28~4_combout\,
	datad => VCC,
	cin => \a9|Add39~3\,
	combout => \a9|Add39~4_combout\,
	cout => \a9|Add39~5\);

-- Location: LCCOMB_X21_Y17_N10
\a9|Add39~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|Add39~6_combout\ = (\a9|Add35~6_combout\ & ((\a9|Add28~6_combout\ & (\a9|Add39~5\ & VCC)) # (!\a9|Add28~6_combout\ & (!\a9|Add39~5\)))) # (!\a9|Add35~6_combout\ & ((\a9|Add28~6_combout\ & (!\a9|Add39~5\)) # (!\a9|Add28~6_combout\ & ((\a9|Add39~5\) # 
-- (GND)))))
-- \a9|Add39~7\ = CARRY((\a9|Add35~6_combout\ & (!\a9|Add28~6_combout\ & !\a9|Add39~5\)) # (!\a9|Add35~6_combout\ & ((!\a9|Add39~5\) # (!\a9|Add28~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a9|Add35~6_combout\,
	datab => \a9|Add28~6_combout\,
	datad => VCC,
	cin => \a9|Add39~5\,
	combout => \a9|Add39~6_combout\,
	cout => \a9|Add39~7\);

-- Location: LCCOMB_X21_Y17_N12
\a9|Add39~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|Add39~8_combout\ = \a9|Add35~8_combout\ $ (\a9|Add39~7\ $ (!\a9|Add28~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a9|Add35~8_combout\,
	datad => \a9|Add28~8_combout\,
	cin => \a9|Add39~7\,
	combout => \a9|Add39~8_combout\);

-- Location: LCCOMB_X21_Y17_N16
\a9|Add46~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|Add46~1_cout\ = CARRY(!\a9|Add39~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a9|Add39~0_combout\,
	datad => VCC,
	cout => \a9|Add46~1_cout\);

-- Location: LCCOMB_X21_Y17_N18
\a9|Add46~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|Add46~2_combout\ = (\a9|Add39~2_combout\ & ((\a9|Add46~1_cout\) # (GND))) # (!\a9|Add39~2_combout\ & (!\a9|Add46~1_cout\))
-- \a9|Add46~3\ = CARRY((\a9|Add39~2_combout\) # (!\a9|Add46~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a9|Add39~2_combout\,
	datad => VCC,
	cin => \a9|Add46~1_cout\,
	combout => \a9|Add46~2_combout\,
	cout => \a9|Add46~3\);

-- Location: LCCOMB_X21_Y17_N20
\a9|Add46~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|Add46~4_combout\ = (\a9|Add39~4_combout\ & (!\a9|Add46~3\ & VCC)) # (!\a9|Add39~4_combout\ & (\a9|Add46~3\ $ (GND)))
-- \a9|Add46~5\ = CARRY((!\a9|Add39~4_combout\ & !\a9|Add46~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \a9|Add39~4_combout\,
	datad => VCC,
	cin => \a9|Add46~3\,
	combout => \a9|Add46~4_combout\,
	cout => \a9|Add46~5\);

-- Location: LCCOMB_X21_Y17_N22
\a9|Add46~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|Add46~6_combout\ = (\a9|Add39~6_combout\ & ((\a9|Add46~5\) # (GND))) # (!\a9|Add39~6_combout\ & (!\a9|Add46~5\))
-- \a9|Add46~7\ = CARRY((\a9|Add39~6_combout\) # (!\a9|Add46~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a9|Add39~6_combout\,
	datad => VCC,
	cin => \a9|Add46~5\,
	combout => \a9|Add46~6_combout\,
	cout => \a9|Add46~7\);

-- Location: LCCOMB_X21_Y17_N24
\a9|Add46~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|Add46~8_combout\ = (\a9|Add39~8_combout\ & (\a9|Add46~7\ $ (GND))) # (!\a9|Add39~8_combout\ & ((GND) # (!\a9|Add46~7\)))
-- \a9|Add46~9\ = CARRY((!\a9|Add46~7\) # (!\a9|Add39~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a9|Add39~8_combout\,
	datad => VCC,
	cin => \a9|Add46~7\,
	combout => \a9|Add46~8_combout\,
	cout => \a9|Add46~9\);

-- Location: LCCOMB_X21_Y17_N26
\a9|Add46~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|Add46~10_combout\ = !\a9|Add46~9\
-- \a9|Add46~11\ = CARRY(!\a9|Add46~9\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \a9|Add46~9\,
	combout => \a9|Add46~10_combout\,
	cout => \a9|Add46~11\);

-- Location: LCCOMB_X21_Y17_N28
\a9|Add46~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|Add46~12_combout\ = \a9|Add46~11\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \a9|Add46~11\,
	combout => \a9|Add46~12_combout\);

-- Location: LCCOMB_X22_Y17_N4
\a9|Add47~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|Add47~0_combout\ = (\a9|Add39~2_combout\ & ((GND) # (!\a9|Add46~2_combout\))) # (!\a9|Add39~2_combout\ & (\a9|Add46~2_combout\ $ (GND)))
-- \a9|Add47~1\ = CARRY((\a9|Add39~2_combout\) # (!\a9|Add46~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a9|Add39~2_combout\,
	datab => \a9|Add46~2_combout\,
	datad => VCC,
	combout => \a9|Add47~0_combout\,
	cout => \a9|Add47~1\);

-- Location: LCCOMB_X22_Y17_N6
\a9|Add47~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|Add47~2_combout\ = (\a9|Add39~4_combout\ & ((\a9|Add46~4_combout\ & (!\a9|Add47~1\)) # (!\a9|Add46~4_combout\ & (\a9|Add47~1\ & VCC)))) # (!\a9|Add39~4_combout\ & ((\a9|Add46~4_combout\ & ((\a9|Add47~1\) # (GND))) # (!\a9|Add46~4_combout\ & 
-- (!\a9|Add47~1\))))
-- \a9|Add47~3\ = CARRY((\a9|Add39~4_combout\ & (\a9|Add46~4_combout\ & !\a9|Add47~1\)) # (!\a9|Add39~4_combout\ & ((\a9|Add46~4_combout\) # (!\a9|Add47~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a9|Add39~4_combout\,
	datab => \a9|Add46~4_combout\,
	datad => VCC,
	cin => \a9|Add47~1\,
	combout => \a9|Add47~2_combout\,
	cout => \a9|Add47~3\);

-- Location: LCCOMB_X22_Y17_N8
\a9|Add47~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|Add47~4_combout\ = ((\a9|Add39~6_combout\ $ (\a9|Add46~6_combout\ $ (\a9|Add47~3\)))) # (GND)
-- \a9|Add47~5\ = CARRY((\a9|Add39~6_combout\ & ((!\a9|Add47~3\) # (!\a9|Add46~6_combout\))) # (!\a9|Add39~6_combout\ & (!\a9|Add46~6_combout\ & !\a9|Add47~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a9|Add39~6_combout\,
	datab => \a9|Add46~6_combout\,
	datad => VCC,
	cin => \a9|Add47~3\,
	combout => \a9|Add47~4_combout\,
	cout => \a9|Add47~5\);

-- Location: LCCOMB_X22_Y17_N10
\a9|Add47~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|Add47~6_combout\ = (\a9|Add39~8_combout\ & ((\a9|Add46~8_combout\ & (!\a9|Add47~5\)) # (!\a9|Add46~8_combout\ & (\a9|Add47~5\ & VCC)))) # (!\a9|Add39~8_combout\ & ((\a9|Add46~8_combout\ & ((\a9|Add47~5\) # (GND))) # (!\a9|Add46~8_combout\ & 
-- (!\a9|Add47~5\))))
-- \a9|Add47~7\ = CARRY((\a9|Add39~8_combout\ & (\a9|Add46~8_combout\ & !\a9|Add47~5\)) # (!\a9|Add39~8_combout\ & ((\a9|Add46~8_combout\) # (!\a9|Add47~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a9|Add39~8_combout\,
	datab => \a9|Add46~8_combout\,
	datad => VCC,
	cin => \a9|Add47~5\,
	combout => \a9|Add47~6_combout\,
	cout => \a9|Add47~7\);

-- Location: LCCOMB_X22_Y17_N12
\a9|Add47~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|Add47~8_combout\ = (\a9|Add46~10_combout\ & (!\a9|Add47~7\ & VCC)) # (!\a9|Add46~10_combout\ & (\a9|Add47~7\ $ (GND)))
-- \a9|Add47~9\ = CARRY((!\a9|Add46~10_combout\ & !\a9|Add47~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a9|Add46~10_combout\,
	datad => VCC,
	cin => \a9|Add47~7\,
	combout => \a9|Add47~8_combout\,
	cout => \a9|Add47~9\);

-- Location: LCCOMB_X22_Y17_N14
\a9|Add47~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|Add47~10_combout\ = (\a9|Add46~12_combout\ & ((\a9|Add47~9\) # (GND))) # (!\a9|Add46~12_combout\ & (!\a9|Add47~9\))
-- \a9|Add47~11\ = CARRY((\a9|Add46~12_combout\) # (!\a9|Add47~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \a9|Add46~12_combout\,
	datad => VCC,
	cin => \a9|Add47~9\,
	combout => \a9|Add47~10_combout\,
	cout => \a9|Add47~11\);

-- Location: LCCOMB_X22_Y17_N16
\a9|Add47~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|Add47~12_combout\ = \a9|Add47~11\ $ (\a9|Add46~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \a9|Add46~12_combout\,
	cin => \a9|Add47~11\,
	combout => \a9|Add47~12_combout\);

-- Location: LCCOMB_X22_Y17_N30
\a9|out[7]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|out[7]~20_combout\ = (\a9|Add47~4_combout\) # (\a9|Add47~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \a9|Add47~4_combout\,
	datad => \a9|Add47~6_combout\,
	combout => \a9|out[7]~20_combout\);

-- Location: LCCOMB_X19_Y18_N10
\a9|ShiftRight0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|ShiftRight0~10_combout\ = (\a9|Add47~0_combout\ & ((\a8|out\(16)))) # (!\a9|Add47~0_combout\ & (\a8|out\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a8|out\(14),
	datac => \a8|out\(16),
	datad => \a9|Add47~0_combout\,
	combout => \a9|ShiftRight0~10_combout\);

-- Location: LCCOMB_X21_Y18_N4
\a9|ShiftRight0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|ShiftRight0~9_combout\ = (\a9|Add47~0_combout\ & ((\a8|out\(20)))) # (!\a9|Add47~0_combout\ & (\a8|out\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a8|out\(18),
	datac => \a9|Add47~0_combout\,
	datad => \a8|out\(20),
	combout => \a9|ShiftRight0~9_combout\);

-- Location: LCCOMB_X22_Y16_N16
\a9|ShiftRight0~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|ShiftRight0~11_combout\ = (\a9|Add47~2_combout\ & ((\a9|ShiftRight0~9_combout\))) # (!\a9|Add47~2_combout\ & (\a9|ShiftRight0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a9|Add47~2_combout\,
	datac => \a9|ShiftRight0~10_combout\,
	datad => \a9|ShiftRight0~9_combout\,
	combout => \a9|ShiftRight0~11_combout\);

-- Location: LCCOMB_X22_Y17_N28
\a9|ShiftRight0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|ShiftRight0~8_combout\ = (!\a9|Add47~4_combout\ & !\a9|Add47~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \a9|Add47~4_combout\,
	datad => \a9|Add47~2_combout\,
	combout => \a9|ShiftRight0~8_combout\);

-- Location: LCCOMB_X21_Y19_N8
\a9|ShiftRight0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|ShiftRight0~14_combout\ = (\a9|ShiftRight0~8_combout\ & ((\a9|Add47~0_combout\ & ((\a8|out\(24)))) # (!\a9|Add47~0_combout\ & (\a8|out\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a8|out\(22),
	datab => \a9|Add47~0_combout\,
	datac => \a8|out\(24),
	datad => \a9|ShiftRight0~8_combout\,
	combout => \a9|ShiftRight0~14_combout\);

-- Location: LCCOMB_X23_Y20_N22
\a9|ShiftRight0~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|ShiftRight0~13_combout\ = (\a9|Add47~0_combout\ & ((\a8|out\(8)))) # (!\a9|Add47~0_combout\ & (\a8|out\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a8|out\(6),
	datac => \a8|out\(8),
	datad => \a9|Add47~0_combout\,
	combout => \a9|ShiftRight0~13_combout\);

-- Location: LCCOMB_X19_Y18_N16
\a9|ShiftRight0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|ShiftRight0~12_combout\ = (\a9|Add47~0_combout\ & ((\a8|out\(12)))) # (!\a9|Add47~0_combout\ & (\a8|out\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a8|out\(10),
	datac => \a8|out\(12),
	datad => \a9|Add47~0_combout\,
	combout => \a9|ShiftRight0~12_combout\);

-- Location: LCCOMB_X22_Y17_N24
\a9|out[7]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|out[7]~19_combout\ = (\a9|Add47~6_combout\) # ((\a9|Add47~2_combout\ & !\a9|Add47~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a9|Add47~2_combout\,
	datac => \a9|Add47~4_combout\,
	datad => \a9|Add47~6_combout\,
	combout => \a9|out[7]~19_combout\);

-- Location: LCCOMB_X22_Y16_N6
\a9|out~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|out~30_combout\ = (\a9|out[7]~20_combout\ & (((\a9|out[7]~19_combout\)))) # (!\a9|out[7]~20_combout\ & ((\a9|out[7]~19_combout\ & ((\a9|ShiftRight0~12_combout\))) # (!\a9|out[7]~19_combout\ & (\a9|ShiftRight0~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a9|ShiftRight0~13_combout\,
	datab => \a9|ShiftRight0~12_combout\,
	datac => \a9|out[7]~20_combout\,
	datad => \a9|out[7]~19_combout\,
	combout => \a9|out~30_combout\);

-- Location: LCCOMB_X22_Y16_N28
\a9|out~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|out~31_combout\ = (\a9|out[7]~20_combout\ & ((\a9|out~30_combout\ & ((\a9|ShiftRight0~14_combout\))) # (!\a9|out~30_combout\ & (\a9|ShiftRight0~11_combout\)))) # (!\a9|out[7]~20_combout\ & (((\a9|out~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a9|out[7]~20_combout\,
	datab => \a9|ShiftRight0~11_combout\,
	datac => \a9|ShiftRight0~14_combout\,
	datad => \a9|out~30_combout\,
	combout => \a9|out~31_combout\);

-- Location: LCCOMB_X23_Y18_N26
\a9|out~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|out~23_combout\ = (\a9|Add39~8_combout\) # ((!\a9|Add47~12_combout\ & ((\a9|Add47~8_combout\) # (\a9|Add47~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a9|Add47~12_combout\,
	datab => \a9|Add39~8_combout\,
	datac => \a9|Add47~8_combout\,
	datad => \a9|Add47~10_combout\,
	combout => \a9|out~23_combout\);

-- Location: LCCOMB_X23_Y17_N0
\a9|Add48~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|Add48~1_cout\ = CARRY(!\a9|Add47~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a9|Add47~0_combout\,
	datad => VCC,
	cout => \a9|Add48~1_cout\);

-- Location: LCCOMB_X23_Y17_N2
\a9|Add48~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|Add48~2_combout\ = (\a9|Add47~2_combout\ & ((\a9|Add48~1_cout\) # (GND))) # (!\a9|Add47~2_combout\ & (!\a9|Add48~1_cout\))
-- \a9|Add48~3\ = CARRY((\a9|Add47~2_combout\) # (!\a9|Add48~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \a9|Add47~2_combout\,
	datad => VCC,
	cin => \a9|Add48~1_cout\,
	combout => \a9|Add48~2_combout\,
	cout => \a9|Add48~3\);

-- Location: LCCOMB_X22_Y16_N14
\a9|ShiftLeft0~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|ShiftLeft0~13_combout\ = (\a9|Add47~0_combout\ & ((\a8|out\(4)))) # (!\a9|Add47~0_combout\ & (\a8|out\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a8|out\(6),
	datac => \a8|out\(4),
	datad => \a9|Add47~0_combout\,
	combout => \a9|ShiftLeft0~13_combout\);

-- Location: LCCOMB_X23_Y20_N28
\a9|ShiftLeft0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|ShiftLeft0~12_combout\ = (\a9|Add47~0_combout\ & ((\a8|out\(0)))) # (!\a9|Add47~0_combout\ & (\a8|out\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a8|out\(2),
	datac => \a8|out\(0),
	datad => \a9|Add47~0_combout\,
	combout => \a9|ShiftLeft0~12_combout\);

-- Location: LCCOMB_X22_Y16_N20
\a9|ShiftLeft0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|ShiftLeft0~14_combout\ = (\a9|Add48~2_combout\ & ((\a9|ShiftLeft0~12_combout\))) # (!\a9|Add48~2_combout\ & (\a9|ShiftLeft0~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a9|Add48~2_combout\,
	datac => \a9|ShiftLeft0~13_combout\,
	datad => \a9|ShiftLeft0~12_combout\,
	combout => \a9|ShiftLeft0~14_combout\);

-- Location: LCCOMB_X21_Y17_N30
\a9|ShiftRight1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|ShiftRight1~1_combout\ = (!\a9|Add39~8_combout\ & !\a9|Add39~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a9|Add39~8_combout\,
	datac => \a9|Add39~6_combout\,
	combout => \a9|ShiftRight1~1_combout\);

-- Location: LCCOMB_X22_Y16_N12
\a9|ShiftRight1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|ShiftRight1~2_combout\ = ((\a9|Add39~4_combout\ & ((\a9|Add39~0_combout\) # (\a9|Add39~2_combout\)))) # (!\a9|ShiftRight1~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a9|Add39~4_combout\,
	datab => \a9|Add39~0_combout\,
	datac => \a9|Add39~2_combout\,
	datad => \a9|ShiftRight1~1_combout\,
	combout => \a9|ShiftRight1~2_combout\);

-- Location: LCCOMB_X23_Y17_N4
\a9|Add48~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|Add48~4_combout\ = (\a9|Add47~4_combout\ & (!\a9|Add48~3\ & VCC)) # (!\a9|Add47~4_combout\ & (\a9|Add48~3\ $ (GND)))
-- \a9|Add48~5\ = CARRY((!\a9|Add47~4_combout\ & !\a9|Add48~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a9|Add47~4_combout\,
	datad => VCC,
	cin => \a9|Add48~3\,
	combout => \a9|Add48~4_combout\,
	cout => \a9|Add48~5\);

-- Location: LCCOMB_X23_Y17_N6
\a9|Add48~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|Add48~6_combout\ = (\a9|Add47~6_combout\ & ((\a9|Add48~5\) # (GND))) # (!\a9|Add47~6_combout\ & (!\a9|Add48~5\))
-- \a9|Add48~7\ = CARRY((\a9|Add47~6_combout\) # (!\a9|Add48~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a9|Add47~6_combout\,
	datad => VCC,
	cin => \a9|Add48~5\,
	combout => \a9|Add48~6_combout\,
	cout => \a9|Add48~7\);

-- Location: LCCOMB_X23_Y17_N8
\a9|Add48~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|Add48~8_combout\ = (\a9|Add47~8_combout\ & (!\a9|Add48~7\ & VCC)) # (!\a9|Add47~8_combout\ & (\a9|Add48~7\ $ (GND)))
-- \a9|Add48~9\ = CARRY((!\a9|Add47~8_combout\ & !\a9|Add48~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a9|Add47~8_combout\,
	datad => VCC,
	cin => \a9|Add48~7\,
	combout => \a9|Add48~8_combout\,
	cout => \a9|Add48~9\);

-- Location: LCCOMB_X23_Y17_N10
\a9|Add48~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|Add48~10_combout\ = (\a9|Add47~10_combout\ & ((\a9|Add48~9\) # (GND))) # (!\a9|Add47~10_combout\ & (!\a9|Add48~9\))
-- \a9|Add48~11\ = CARRY((\a9|Add47~10_combout\) # (!\a9|Add48~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a9|Add47~10_combout\,
	datad => VCC,
	cin => \a9|Add48~9\,
	combout => \a9|Add48~10_combout\,
	cout => \a9|Add48~11\);

-- Location: LCCOMB_X23_Y17_N20
\a9|ShiftLeft0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|ShiftLeft0~10_combout\ = (!\a9|Add48~4_combout\ & (!\a9|Add48~8_combout\ & !\a9|Add48~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a9|Add48~4_combout\,
	datac => \a9|Add48~8_combout\,
	datad => \a9|Add48~6_combout\,
	combout => \a9|ShiftLeft0~10_combout\);

-- Location: LCCOMB_X23_Y17_N12
\a9|Add48~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|Add48~12_combout\ = (\a9|Add47~12_combout\ & (!\a9|Add48~11\ & VCC)) # (!\a9|Add47~12_combout\ & (\a9|Add48~11\ $ (GND)))
-- \a9|Add48~13\ = CARRY((!\a9|Add47~12_combout\ & !\a9|Add48~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a9|Add47~12_combout\,
	datad => VCC,
	cin => \a9|Add48~11\,
	combout => \a9|Add48~12_combout\,
	cout => \a9|Add48~13\);

-- Location: LCCOMB_X23_Y17_N14
\a9|Add48~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|Add48~14_combout\ = \a9|Add47~12_combout\ $ (!\a9|Add48~13\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a9|Add47~12_combout\,
	cin => \a9|Add48~13\,
	combout => \a9|Add48~14_combout\);

-- Location: LCCOMB_X23_Y17_N26
\a9|ShiftLeft0~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|ShiftLeft0~11_combout\ = (!\a9|Add48~10_combout\ & (\a9|ShiftLeft0~10_combout\ & (!\a9|Add48~14_combout\ & !\a9|Add48~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a9|Add48~10_combout\,
	datab => \a9|ShiftLeft0~10_combout\,
	datac => \a9|Add48~14_combout\,
	datad => \a9|Add48~12_combout\,
	combout => \a9|ShiftLeft0~11_combout\);

-- Location: LCCOMB_X22_Y16_N24
\a9|out~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|out~29_combout\ = (\a9|Add47~12_combout\ & (((\a9|ShiftLeft0~14_combout\ & \a9|ShiftLeft0~11_combout\)) # (!\a9|ShiftRight1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a9|Add47~12_combout\,
	datab => \a9|ShiftLeft0~14_combout\,
	datac => \a9|ShiftRight1~2_combout\,
	datad => \a9|ShiftLeft0~11_combout\,
	combout => \a9|out~29_combout\);

-- Location: LCCOMB_X23_Y18_N10
\a9|out~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|out~32_combout\ = (!\a9|out~23_combout\ & ((\a9|out~29_combout\) # ((!\a9|Add47~12_combout\ & \a9|out~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a9|Add47~12_combout\,
	datab => \a9|out~31_combout\,
	datac => \a9|out~23_combout\,
	datad => \a9|out~29_combout\,
	combout => \a9|out~32_combout\);

-- Location: LCCOMB_X23_Y18_N18
\a9|out~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|out~33_combout\ = (\a9|out~32_combout\) # ((\a8|out\(22) & \a9|Add39~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a8|out\(22),
	datac => \a9|Add39~8_combout\,
	datad => \a9|out~32_combout\,
	combout => \a9|out~33_combout\);

-- Location: LCCOMB_X22_Y17_N2
\a9|out[0]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|out[0]~26_combout\ = (!\a9|Add39~8_combout\ & !\a9|Add47~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a9|Add39~8_combout\,
	datad => \a9|Add47~12_combout\,
	combout => \a9|out[0]~26_combout\);

-- Location: LCCOMB_X22_Y17_N18
\a9|out[0]~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|out[0]~27_combout\ = (!\a9|Add47~6_combout\ & (!\a9|Add47~10_combout\ & !\a9|Add47~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a9|Add47~6_combout\,
	datac => \a9|Add47~10_combout\,
	datad => \a9|Add47~8_combout\,
	combout => \a9|out[0]~27_combout\);

-- Location: LCCOMB_X22_Y17_N20
\a9|out[0]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|out[0]~28_combout\ = ((\a9|Add47~0_combout\) # ((!\a9|out[0]~27_combout\) # (!\a9|out[0]~26_combout\))) # (!\a9|ShiftRight0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a9|ShiftRight0~8_combout\,
	datab => \a9|Add47~0_combout\,
	datac => \a9|out[0]~26_combout\,
	datad => \a9|out[0]~27_combout\,
	combout => \a9|out[0]~28_combout\);

-- Location: FF_X23_Y18_N19
\a9|out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \a9|out~33_combout\,
	ena => \a9|out[0]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a9|out\(6));

-- Location: LCCOMB_X21_Y18_N26
\a9|ShiftRight0~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|ShiftRight0~28_combout\ = (\a9|Add47~0_combout\ & ((\a8|out\(22)))) # (!\a9|Add47~0_combout\ & (\a8|out\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a8|out\(20),
	datac => \a9|Add47~0_combout\,
	datad => \a8|out\(22),
	combout => \a9|ShiftRight0~28_combout\);

-- Location: LCCOMB_X21_Y18_N20
\a9|ShiftRight0~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|ShiftRight0~42_combout\ = (\a9|Add47~2_combout\ & (((\a8|out\(24) & !\a9|Add47~0_combout\)))) # (!\a9|Add47~2_combout\ & (\a9|ShiftRight0~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a9|ShiftRight0~28_combout\,
	datab => \a8|out\(24),
	datac => \a9|Add47~0_combout\,
	datad => \a9|Add47~2_combout\,
	combout => \a9|ShiftRight0~42_combout\);

-- Location: LCCOMB_X21_Y18_N2
\a9|ShiftRight0~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|ShiftRight0~22_combout\ = (\a9|Add47~0_combout\ & ((\a8|out\(18)))) # (!\a9|Add47~0_combout\ & (\a8|out\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a8|out\(16),
	datab => \a8|out\(18),
	datac => \a9|Add47~0_combout\,
	combout => \a9|ShiftRight0~22_combout\);

-- Location: LCCOMB_X21_Y19_N30
\a9|ShiftRight0~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|ShiftRight0~23_combout\ = (\a9|Add47~0_combout\ & (\a8|out\(14))) # (!\a9|Add47~0_combout\ & ((\a8|out\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a8|out\(14),
	datac => \a9|Add47~0_combout\,
	datad => \a8|out\(12),
	combout => \a9|ShiftRight0~23_combout\);

-- Location: LCCOMB_X21_Y18_N8
\a9|ShiftRight0~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|ShiftRight0~24_combout\ = (\a9|Add47~2_combout\ & (\a9|ShiftRight0~22_combout\)) # (!\a9|Add47~2_combout\ & ((\a9|ShiftRight0~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a9|ShiftRight0~22_combout\,
	datac => \a9|ShiftRight0~23_combout\,
	datad => \a9|Add47~2_combout\,
	combout => \a9|ShiftRight0~24_combout\);

-- Location: LCCOMB_X24_Y15_N22
\a9|out[12]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|out[12]~1_combout\ = (\a9|Add47~4_combout\ & (\a9|ShiftRight0~42_combout\)) # (!\a9|Add47~4_combout\ & ((\a9|ShiftRight0~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a9|Add47~4_combout\,
	datab => \a9|ShiftRight0~42_combout\,
	datad => \a9|ShiftRight0~24_combout\,
	combout => \a9|out[12]~1_combout\);

-- Location: LCCOMB_X21_Y17_N14
\a9|ShiftRight1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|ShiftRight1~3_combout\ = (!\a9|Add39~4_combout\ & (!\a9|Add39~8_combout\ & (!\a9|Add39~6_combout\ & !\a9|Add39~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a9|Add39~4_combout\,
	datab => \a9|Add39~8_combout\,
	datac => \a9|Add39~6_combout\,
	datad => \a9|Add39~2_combout\,
	combout => \a9|ShiftRight1~3_combout\);

-- Location: LCCOMB_X23_Y20_N18
\a9|ShiftLeft0~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|ShiftLeft0~17_combout\ = (\a9|Add47~0_combout\ & ((\a8|out\(2)))) # (!\a9|Add47~0_combout\ & (\a8|out\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a8|out\(4),
	datac => \a8|out\(2),
	datad => \a9|Add47~0_combout\,
	combout => \a9|ShiftLeft0~17_combout\);

-- Location: LCCOMB_X23_Y20_N20
\a9|ShiftLeft0~73\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|ShiftLeft0~73_combout\ = (\a9|Add48~2_combout\ & (\a8|out\(0) & ((!\a9|Add47~0_combout\)))) # (!\a9|Add48~2_combout\ & (((\a9|ShiftLeft0~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a8|out\(0),
	datab => \a9|ShiftLeft0~17_combout\,
	datac => \a9|Add48~2_combout\,
	datad => \a9|Add47~0_combout\,
	combout => \a9|ShiftLeft0~73_combout\);

-- Location: LCCOMB_X22_Y20_N16
\a9|ShiftLeft0~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|ShiftLeft0~31_combout\ = (\a9|Add47~0_combout\ & (\a8|out\(10))) # (!\a9|Add47~0_combout\ & ((\a8|out\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a8|out\(10),
	datac => \a8|out\(12),
	datad => \a9|Add47~0_combout\,
	combout => \a9|ShiftLeft0~31_combout\);

-- Location: LCCOMB_X23_Y20_N0
\a9|ShiftLeft0~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|ShiftLeft0~30_combout\ = (\a9|Add47~0_combout\ & (\a8|out\(6))) # (!\a9|Add47~0_combout\ & ((\a8|out\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a8|out\(6),
	datac => \a8|out\(8),
	datad => \a9|Add47~0_combout\,
	combout => \a9|ShiftLeft0~30_combout\);

-- Location: LCCOMB_X23_Y20_N14
\a9|ShiftLeft0~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|ShiftLeft0~32_combout\ = (\a9|Add48~2_combout\ & ((\a9|ShiftLeft0~30_combout\))) # (!\a9|Add48~2_combout\ & (\a9|ShiftLeft0~31_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a9|Add48~2_combout\,
	datac => \a9|ShiftLeft0~31_combout\,
	datad => \a9|ShiftLeft0~30_combout\,
	combout => \a9|ShiftLeft0~32_combout\);

-- Location: LCCOMB_X23_Y20_N8
\a9|ShiftLeft0~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|ShiftLeft0~33_combout\ = (\a9|Add48~4_combout\ & (\a9|ShiftLeft0~73_combout\)) # (!\a9|Add48~4_combout\ & ((\a9|ShiftLeft0~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a9|Add48~4_combout\,
	datab => \a9|ShiftLeft0~73_combout\,
	datac => \a9|ShiftLeft0~32_combout\,
	combout => \a9|ShiftLeft0~33_combout\);

-- Location: LCCOMB_X23_Y17_N28
\a9|ShiftLeft0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|ShiftLeft0~18_combout\ = (!\a9|Add48~10_combout\ & (!\a9|Add48~8_combout\ & (!\a9|Add48~14_combout\ & !\a9|Add48~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a9|Add48~10_combout\,
	datab => \a9|Add48~8_combout\,
	datac => \a9|Add48~14_combout\,
	datad => \a9|Add48~12_combout\,
	combout => \a9|ShiftLeft0~18_combout\);

-- Location: LCCOMB_X24_Y15_N28
\a9|out~72\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|out~72_combout\ = (\a9|ShiftRight1~3_combout\) # ((!\a9|Add48~6_combout\ & (\a9|ShiftLeft0~33_combout\ & \a9|ShiftLeft0~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a9|ShiftRight1~3_combout\,
	datab => \a9|Add48~6_combout\,
	datac => \a9|ShiftLeft0~33_combout\,
	datad => \a9|ShiftLeft0~18_combout\,
	combout => \a9|out~72_combout\);

-- Location: LCCOMB_X22_Y17_N26
\a9|out[10]~69\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|out[10]~69_combout\ = (!\a9|Add39~8_combout\ & ((\a9|Add47~12_combout\) # (\a9|out[0]~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a9|Add39~8_combout\,
	datab => \a9|Add47~12_combout\,
	datad => \a9|out[0]~27_combout\,
	combout => \a9|out[10]~69_combout\);

-- Location: FF_X24_Y15_N23
\a9|out[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \a9|out[12]~1_combout\,
	asdata => \a9|out~72_combout\,
	sclr => \a9|ALT_INV_out[10]~69_combout\,
	sload => \a9|Add47~12_combout\,
	ena => \a9|out[0]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a9|out\(12));

-- Location: LCCOMB_X21_Y18_N28
\a9|ShiftRight0~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|ShiftRight0~30_combout\ = (\a9|Add47~2_combout\ & ((\a9|Add47~0_combout\ & ((\a8|out\(24)))) # (!\a9|Add47~0_combout\ & (\a8|out\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a8|out\(22),
	datab => \a8|out\(24),
	datac => \a9|Add47~0_combout\,
	datad => \a9|Add47~2_combout\,
	combout => \a9|ShiftRight0~30_combout\);

-- Location: LCCOMB_X21_Y18_N6
\a9|ShiftRight0~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|ShiftRight0~39_combout\ = (\a9|ShiftRight0~30_combout\) # ((!\a9|Add47~2_combout\ & \a9|ShiftRight0~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a9|Add47~2_combout\,
	datac => \a9|ShiftRight0~9_combout\,
	datad => \a9|ShiftRight0~30_combout\,
	combout => \a9|ShiftRight0~39_combout\);

-- Location: LCCOMB_X19_Y18_N26
\a9|ShiftRight0~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|ShiftRight0~32_combout\ = (\a9|Add47~2_combout\ & (\a9|ShiftRight0~10_combout\)) # (!\a9|Add47~2_combout\ & ((\a9|ShiftRight0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a9|ShiftRight0~10_combout\,
	datab => \a9|ShiftRight0~12_combout\,
	datad => \a9|Add47~2_combout\,
	combout => \a9|ShiftRight0~32_combout\);

-- Location: LCCOMB_X24_Y15_N0
\a9|out[10]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|out[10]~4_combout\ = (\a9|Add47~4_combout\ & (\a9|ShiftRight0~39_combout\)) # (!\a9|Add47~4_combout\ & ((\a9|ShiftRight0~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a9|Add47~4_combout\,
	datab => \a9|ShiftRight0~39_combout\,
	datad => \a9|ShiftRight0~32_combout\,
	combout => \a9|out[10]~4_combout\);

-- Location: LCCOMB_X22_Y16_N18
\a9|out~67\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|out~67_combout\ = (!\a9|Add39~4_combout\ & (\a9|ShiftRight1~1_combout\ & ((!\a9|Add39~2_combout\) # (!\a9|Add39~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a9|Add39~4_combout\,
	datab => \a9|Add39~0_combout\,
	datac => \a9|Add39~2_combout\,
	datad => \a9|ShiftRight1~1_combout\,
	combout => \a9|out~67_combout\);

-- Location: LCCOMB_X22_Y16_N8
\a9|ShiftLeft0~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|ShiftLeft0~19_combout\ = (\a9|Add47~0_combout\ & ((\a8|out\(8)))) # (!\a9|Add47~0_combout\ & (\a8|out\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a8|out\(10),
	datac => \a8|out\(8),
	datad => \a9|Add47~0_combout\,
	combout => \a9|ShiftLeft0~19_combout\);

-- Location: LCCOMB_X22_Y16_N0
\a9|ShiftLeft0~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|ShiftLeft0~20_combout\ = (\a9|Add48~2_combout\ & (\a9|ShiftLeft0~13_combout\)) # (!\a9|Add48~2_combout\ & ((\a9|ShiftLeft0~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a9|ShiftLeft0~13_combout\,
	datac => \a9|Add48~2_combout\,
	datad => \a9|ShiftLeft0~19_combout\,
	combout => \a9|ShiftLeft0~20_combout\);

-- Location: LCCOMB_X22_Y16_N2
\a9|ShiftLeft0~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|ShiftLeft0~21_combout\ = (\a9|Add48~4_combout\ & (\a9|ShiftLeft0~12_combout\ & (!\a9|Add48~2_combout\))) # (!\a9|Add48~4_combout\ & (((\a9|ShiftLeft0~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a9|Add48~4_combout\,
	datab => \a9|ShiftLeft0~12_combout\,
	datac => \a9|Add48~2_combout\,
	datad => \a9|ShiftLeft0~20_combout\,
	combout => \a9|ShiftLeft0~21_combout\);

-- Location: LCCOMB_X24_Y15_N8
\a9|out~68\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|out~68_combout\ = (\a9|out~67_combout\) # ((!\a9|Add48~6_combout\ & (\a9|ShiftLeft0~21_combout\ & \a9|ShiftLeft0~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a9|out~67_combout\,
	datab => \a9|Add48~6_combout\,
	datac => \a9|ShiftLeft0~21_combout\,
	datad => \a9|ShiftLeft0~18_combout\,
	combout => \a9|out~68_combout\);

-- Location: FF_X24_Y15_N1
\a9|out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \a9|out[10]~4_combout\,
	asdata => \a9|out~68_combout\,
	sclr => \a9|ALT_INV_out[10]~69_combout\,
	sload => \a9|Add47~12_combout\,
	ena => \a9|out[0]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a9|out\(10));

-- Location: LCCOMB_X22_Y20_N22
\a9|ShiftRight0~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|ShiftRight0~20_combout\ = (\a9|Add47~0_combout\ & (\a8|out\(13))) # (!\a9|Add47~0_combout\ & ((\a8|out\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a8|out\(13),
	datac => \a8|out\(11),
	datad => \a9|Add47~0_combout\,
	combout => \a9|ShiftRight0~20_combout\);

-- Location: LCCOMB_X22_Y20_N12
\a9|ShiftRight0~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|ShiftRight0~19_combout\ = (\a9|Add47~0_combout\ & (\a8|out\(17))) # (!\a9|Add47~0_combout\ & ((\a8|out\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a8|out\(17),
	datac => \a8|out\(15),
	datad => \a9|Add47~0_combout\,
	combout => \a9|ShiftRight0~19_combout\);

-- Location: LCCOMB_X22_Y20_N20
\a9|ShiftRight0~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|ShiftRight0~21_combout\ = (\a9|Add47~2_combout\ & ((\a9|ShiftRight0~19_combout\))) # (!\a9|Add47~2_combout\ & (\a9|ShiftRight0~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a9|Add47~2_combout\,
	datac => \a9|ShiftRight0~20_combout\,
	datad => \a9|ShiftRight0~19_combout\,
	combout => \a9|ShiftRight0~21_combout\);

-- Location: LCCOMB_X22_Y20_N8
\a9|ShiftRight0~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|ShiftRight0~15_combout\ = (\a9|Add47~2_combout\ & ((\a9|Add47~0_combout\ & (\a8|out\(25))) # (!\a9|Add47~0_combout\ & ((\a8|out\(23))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a8|out\(25),
	datab => \a8|out\(23),
	datac => \a9|Add47~2_combout\,
	datad => \a9|Add47~0_combout\,
	combout => \a9|ShiftRight0~15_combout\);

-- Location: LCCOMB_X22_Y20_N2
\a9|ShiftRight0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|ShiftRight0~16_combout\ = (\a9|Add47~0_combout\ & ((\a8|out\(21)))) # (!\a9|Add47~0_combout\ & (\a8|out\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a8|out\(19),
	datac => \a8|out\(21),
	datad => \a9|Add47~0_combout\,
	combout => \a9|ShiftRight0~16_combout\);

-- Location: LCCOMB_X22_Y20_N30
\a9|ShiftRight0~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|ShiftRight0~40_combout\ = (\a9|ShiftRight0~15_combout\) # ((!\a9|Add47~2_combout\ & \a9|ShiftRight0~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a9|ShiftRight0~15_combout\,
	datac => \a9|Add47~2_combout\,
	datad => \a9|ShiftRight0~16_combout\,
	combout => \a9|ShiftRight0~40_combout\);

-- Location: LCCOMB_X24_Y15_N14
\a9|out[11]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|out[11]~5_combout\ = (\a9|Add47~4_combout\ & ((\a9|ShiftRight0~40_combout\))) # (!\a9|Add47~4_combout\ & (\a9|ShiftRight0~21_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a9|Add47~4_combout\,
	datab => \a9|ShiftRight0~21_combout\,
	datad => \a9|ShiftRight0~40_combout\,
	combout => \a9|out[11]~5_combout\);

-- Location: LCCOMB_X24_Y16_N26
\a9|ShiftLeft0~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|ShiftLeft0~15_combout\ = (\a9|Add47~0_combout\ & (\a8|out\(1))) # (!\a9|Add47~0_combout\ & ((\a8|out\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a8|out\(1),
	datac => \a8|out\(3),
	datad => \a9|Add47~0_combout\,
	combout => \a9|ShiftLeft0~15_combout\);

-- Location: LCCOMB_X24_Y16_N24
\a9|ShiftLeft0~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|ShiftLeft0~22_combout\ = (\a9|Add47~0_combout\ & ((\a8|out\(5)))) # (!\a9|Add47~0_combout\ & (\a8|out\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a8|out\(7),
	datac => \a8|out\(5),
	datad => \a9|Add47~0_combout\,
	combout => \a9|ShiftLeft0~22_combout\);

-- Location: LCCOMB_X24_Y16_N20
\a9|ShiftLeft0~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|ShiftLeft0~23_combout\ = (\a9|Add47~0_combout\ & ((\a8|out\(9)))) # (!\a9|Add47~0_combout\ & (\a8|out\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a8|out\(11),
	datab => \a8|out\(9),
	datad => \a9|Add47~0_combout\,
	combout => \a9|ShiftLeft0~23_combout\);

-- Location: LCCOMB_X24_Y16_N0
\a9|ShiftLeft0~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|ShiftLeft0~24_combout\ = (\a9|Add48~2_combout\ & (\a9|ShiftLeft0~22_combout\)) # (!\a9|Add48~2_combout\ & ((\a9|ShiftLeft0~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a9|ShiftLeft0~22_combout\,
	datac => \a9|Add48~2_combout\,
	datad => \a9|ShiftLeft0~23_combout\,
	combout => \a9|ShiftLeft0~24_combout\);

-- Location: LCCOMB_X24_Y16_N6
\a9|ShiftLeft0~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|ShiftLeft0~25_combout\ = (\a9|Add48~4_combout\ & (\a9|ShiftLeft0~15_combout\ & (!\a9|Add48~2_combout\))) # (!\a9|Add48~4_combout\ & (((\a9|ShiftLeft0~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a9|ShiftLeft0~15_combout\,
	datab => \a9|Add48~4_combout\,
	datac => \a9|Add48~2_combout\,
	datad => \a9|ShiftLeft0~24_combout\,
	combout => \a9|ShiftLeft0~25_combout\);

-- Location: LCCOMB_X24_Y15_N26
\a9|out~70\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|out~70_combout\ = (\a9|out~67_combout\) # ((!\a9|Add48~6_combout\ & (\a9|ShiftLeft0~25_combout\ & \a9|ShiftLeft0~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a9|out~67_combout\,
	datab => \a9|Add48~6_combout\,
	datac => \a9|ShiftLeft0~25_combout\,
	datad => \a9|ShiftLeft0~18_combout\,
	combout => \a9|out~70_combout\);

-- Location: FF_X24_Y15_N15
\a9|out[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \a9|out[11]~5_combout\,
	asdata => \a9|out~70_combout\,
	sclr => \a9|ALT_INV_out[10]~69_combout\,
	sload => \a9|Add47~12_combout\,
	ena => \a9|out[0]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a9|out\(11));

-- Location: LCCOMB_X20_Y16_N24
\a9|ShiftRight0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|ShiftRight0~6_combout\ = (\a9|Add47~0_combout\ & ((\a8|out\(23)))) # (!\a9|Add47~0_combout\ & (\a8|out\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a8|out\(21),
	datac => \a8|out\(23),
	datad => \a9|Add47~0_combout\,
	combout => \a9|ShiftRight0~6_combout\);

-- Location: LCCOMB_X20_Y16_N30
\a9|ShiftRight0~41\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|ShiftRight0~41_combout\ = (\a9|Add47~2_combout\ & (!\a9|Add47~0_combout\ & (\a8|out\(25)))) # (!\a9|Add47~2_combout\ & (((\a9|ShiftRight0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a9|Add47~2_combout\,
	datab => \a9|Add47~0_combout\,
	datac => \a8|out\(25),
	datad => \a9|ShiftRight0~6_combout\,
	combout => \a9|ShiftRight0~41_combout\);

-- Location: LCCOMB_X20_Y16_N8
\a9|ShiftRight0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|ShiftRight0~1_combout\ = (\a9|Add47~0_combout\ & ((\a8|out\(19)))) # (!\a9|Add47~0_combout\ & (\a8|out\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a8|out\(17),
	datab => \a8|out\(19),
	datad => \a9|Add47~0_combout\,
	combout => \a9|ShiftRight0~1_combout\);

-- Location: LCCOMB_X20_Y16_N6
\a9|ShiftRight0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|ShiftRight0~2_combout\ = (\a9|Add47~0_combout\ & (\a8|out\(15))) # (!\a9|Add47~0_combout\ & ((\a8|out\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a8|out\(15),
	datac => \a8|out\(13),
	datad => \a9|Add47~0_combout\,
	combout => \a9|ShiftRight0~2_combout\);

-- Location: LCCOMB_X20_Y16_N20
\a9|ShiftRight0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|ShiftRight0~3_combout\ = (\a9|Add47~2_combout\ & (\a9|ShiftRight0~1_combout\)) # (!\a9|Add47~2_combout\ & ((\a9|ShiftRight0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a9|Add47~2_combout\,
	datac => \a9|ShiftRight0~1_combout\,
	datad => \a9|ShiftRight0~2_combout\,
	combout => \a9|ShiftRight0~3_combout\);

-- Location: LCCOMB_X24_Y15_N18
\a9|out[13]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|out[13]~0_combout\ = (\a9|Add47~4_combout\ & (\a9|ShiftRight0~41_combout\)) # (!\a9|Add47~4_combout\ & ((\a9|ShiftRight0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a9|Add47~4_combout\,
	datab => \a9|ShiftRight0~41_combout\,
	datad => \a9|ShiftRight0~3_combout\,
	combout => \a9|out[13]~0_combout\);

-- Location: LCCOMB_X21_Y16_N0
\a9|ShiftLeft0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|ShiftLeft0~9_combout\ = (\a9|Add47~0_combout\ & (\a8|out\(3))) # (!\a9|Add47~0_combout\ & ((\a8|out\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a8|out\(3),
	datac => \a9|Add47~0_combout\,
	datad => \a8|out\(5),
	combout => \a9|ShiftLeft0~9_combout\);

-- Location: LCCOMB_X21_Y16_N6
\a9|ShiftLeft0~72\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|ShiftLeft0~72_combout\ = (\a9|Add48~2_combout\ & (\a8|out\(1) & ((!\a9|Add47~0_combout\)))) # (!\a9|Add48~2_combout\ & (((\a9|ShiftLeft0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a8|out\(1),
	datab => \a9|ShiftLeft0~9_combout\,
	datac => \a9|Add47~0_combout\,
	datad => \a9|Add48~2_combout\,
	combout => \a9|ShiftLeft0~72_combout\);

-- Location: LCCOMB_X21_Y16_N18
\a9|ShiftLeft0~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|ShiftLeft0~27_combout\ = (\a9|Add47~0_combout\ & (\a8|out\(11))) # (!\a9|Add47~0_combout\ & ((\a8|out\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a8|out\(11),
	datac => \a9|Add47~0_combout\,
	datad => \a8|out\(13),
	combout => \a9|ShiftLeft0~27_combout\);

-- Location: LCCOMB_X21_Y16_N4
\a9|ShiftLeft0~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|ShiftLeft0~26_combout\ = (\a9|Add47~0_combout\ & ((\a8|out\(7)))) # (!\a9|Add47~0_combout\ & (\a8|out\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a8|out\(9),
	datab => \a8|out\(7),
	datac => \a9|Add47~0_combout\,
	combout => \a9|ShiftLeft0~26_combout\);

-- Location: LCCOMB_X21_Y16_N16
\a9|ShiftLeft0~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|ShiftLeft0~28_combout\ = (\a9|Add48~2_combout\ & ((\a9|ShiftLeft0~26_combout\))) # (!\a9|Add48~2_combout\ & (\a9|ShiftLeft0~27_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a9|ShiftLeft0~27_combout\,
	datac => \a9|ShiftLeft0~26_combout\,
	datad => \a9|Add48~2_combout\,
	combout => \a9|ShiftLeft0~28_combout\);

-- Location: LCCOMB_X21_Y16_N30
\a9|ShiftLeft0~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|ShiftLeft0~29_combout\ = (\a9|Add48~4_combout\ & (\a9|ShiftLeft0~72_combout\)) # (!\a9|Add48~4_combout\ & ((\a9|ShiftLeft0~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a9|ShiftLeft0~72_combout\,
	datac => \a9|Add48~4_combout\,
	datad => \a9|ShiftLeft0~28_combout\,
	combout => \a9|ShiftLeft0~29_combout\);

-- Location: LCCOMB_X24_Y15_N16
\a9|out~71\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|out~71_combout\ = (\a9|ShiftRight1~3_combout\) # ((!\a9|Add48~6_combout\ & (\a9|ShiftLeft0~29_combout\ & \a9|ShiftLeft0~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a9|ShiftRight1~3_combout\,
	datab => \a9|Add48~6_combout\,
	datac => \a9|ShiftLeft0~29_combout\,
	datad => \a9|ShiftLeft0~18_combout\,
	combout => \a9|out~71_combout\);

-- Location: FF_X24_Y15_N19
\a9|out[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \a9|out[13]~0_combout\,
	asdata => \a9|out~71_combout\,
	sclr => \a9|ALT_INV_out[10]~69_combout\,
	sload => \a9|Add47~12_combout\,
	ena => \a9|out[0]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a9|out\(13));

-- Location: LCCOMB_X24_Y15_N2
\sq3|Add10~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sq3|Add10~1_combout\ = (\a9|out\(12) & ((\a9|out\(10) & ((!\a9|out\(13)) # (!\a9|out\(11)))) # (!\a9|out\(10) & ((\a9|out\(11)) # (\a9|out\(13)))))) # (!\a9|out\(12) & ((\a9|out\(10) & ((\a9|out\(11)) # (\a9|out\(13)))) # (!\a9|out\(10) & (\a9|out\(11) & 
-- \a9|out\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a9|out\(12),
	datab => \a9|out\(10),
	datac => \a9|out\(11),
	datad => \a9|out\(13),
	combout => \sq3|Add10~1_combout\);

-- Location: LCCOMB_X20_Y16_N4
\a9|ShiftRight0~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|ShiftRight0~37_combout\ = (\a9|Add47~2_combout\ & ((\a9|ShiftRight0~6_combout\))) # (!\a9|Add47~2_combout\ & (\a9|ShiftRight0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a9|Add47~2_combout\,
	datac => \a9|ShiftRight0~1_combout\,
	datad => \a9|ShiftRight0~6_combout\,
	combout => \a9|ShiftRight0~37_combout\);

-- Location: LCCOMB_X20_Y16_N26
\a9|ShiftRight0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|ShiftRight0~0_combout\ = (\a9|Add47~0_combout\ & (\a8|out\(11))) # (!\a9|Add47~0_combout\ & ((\a8|out\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a8|out\(11),
	datac => \a8|out\(9),
	datad => \a9|Add47~0_combout\,
	combout => \a9|ShiftRight0~0_combout\);

-- Location: LCCOMB_X20_Y16_N22
\a9|ShiftRight0~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|ShiftRight0~36_combout\ = (\a9|Add47~2_combout\ & ((\a9|ShiftRight0~2_combout\))) # (!\a9|Add47~2_combout\ & (\a9|ShiftRight0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a9|ShiftRight0~0_combout\,
	datac => \a9|Add47~2_combout\,
	datad => \a9|ShiftRight0~2_combout\,
	combout => \a9|ShiftRight0~36_combout\);

-- Location: LCCOMB_X22_Y17_N0
\a9|out[0]~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|out[0]~56_combout\ = (\a9|Add47~6_combout\) # ((\a9|Add47~12_combout\) # ((\a9|Add47~10_combout\) # (\a9|Add47~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a9|Add47~6_combout\,
	datab => \a9|Add47~12_combout\,
	datac => \a9|Add47~10_combout\,
	datad => \a9|Add47~8_combout\,
	combout => \a9|out[0]~56_combout\);

-- Location: LCCOMB_X22_Y18_N12
\a9|out[0]~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|out[0]~58_combout\ = (\a9|Add47~12_combout\) # ((\a9|Add47~6_combout\ & (!\a9|Add47~10_combout\ & !\a9|Add47~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a9|Add47~6_combout\,
	datab => \a9|Add47~10_combout\,
	datac => \a9|Add47~12_combout\,
	datad => \a9|Add47~8_combout\,
	combout => \a9|out[0]~58_combout\);

-- Location: LCCOMB_X24_Y16_N10
\a9|ShiftRight0~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|ShiftRight0~44_combout\ = (\a8|out\(25) & (!\a9|Add47~2_combout\ & (!\a9|Add47~4_combout\ & !\a9|Add47~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a8|out\(25),
	datab => \a9|Add47~2_combout\,
	datac => \a9|Add47~4_combout\,
	datad => \a9|Add47~0_combout\,
	combout => \a9|ShiftRight0~44_combout\);

-- Location: LCCOMB_X23_Y16_N22
\a9|out[0]~59\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|out[0]~59_combout\ = (\a9|Add47~12_combout\) # ((\a9|Add47~4_combout\ & \a9|out[0]~27_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a9|Add47~4_combout\,
	datac => \a9|Add47~12_combout\,
	datad => \a9|out[0]~27_combout\,
	combout => \a9|out[0]~59_combout\);

-- Location: LCCOMB_X23_Y17_N30
\a9|ShiftLeft0~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|ShiftLeft0~34_combout\ = (!\a9|Add48~6_combout\ & \a9|ShiftLeft0~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a9|Add48~6_combout\,
	datad => \a9|ShiftLeft0~18_combout\,
	combout => \a9|ShiftLeft0~34_combout\);

-- Location: LCCOMB_X20_Y16_N0
\a9|ShiftLeft0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|ShiftLeft0~8_combout\ = (\a8|out\(1) & !\a9|Add47~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \a8|out\(1),
	datad => \a9|Add47~0_combout\,
	combout => \a9|ShiftLeft0~8_combout\);

-- Location: LCCOMB_X21_Y16_N24
\a9|ShiftLeft0~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|ShiftLeft0~37_combout\ = (\a9|Add48~2_combout\ & (\a9|ShiftLeft0~9_combout\)) # (!\a9|Add48~2_combout\ & ((\a9|ShiftLeft0~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a9|ShiftLeft0~9_combout\,
	datac => \a9|ShiftLeft0~26_combout\,
	datad => \a9|Add48~2_combout\,
	combout => \a9|ShiftLeft0~37_combout\);

-- Location: LCCOMB_X21_Y16_N10
\a9|ShiftLeft0~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|ShiftLeft0~38_combout\ = (\a9|Add48~4_combout\ & (\a9|ShiftLeft0~8_combout\ & (!\a9|Add48~2_combout\))) # (!\a9|Add48~4_combout\ & (((\a9|ShiftLeft0~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a9|ShiftLeft0~8_combout\,
	datab => \a9|Add48~2_combout\,
	datac => \a9|Add48~4_combout\,
	datad => \a9|ShiftLeft0~37_combout\,
	combout => \a9|ShiftLeft0~38_combout\);

-- Location: LCCOMB_X23_Y16_N24
\a9|out~76\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|out~76_combout\ = (\a9|ShiftRight1~1_combout\ & (((\a9|ShiftLeft0~34_combout\ & \a9|ShiftLeft0~38_combout\)) # (!\a9|Add39~4_combout\))) # (!\a9|ShiftRight1~1_combout\ & (((\a9|ShiftLeft0~34_combout\ & \a9|ShiftLeft0~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a9|ShiftRight1~1_combout\,
	datab => \a9|Add39~4_combout\,
	datac => \a9|ShiftLeft0~34_combout\,
	datad => \a9|ShiftLeft0~38_combout\,
	combout => \a9|out~76_combout\);

-- Location: LCCOMB_X23_Y16_N2
\a9|out~77\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|out~77_combout\ = (\a9|out[0]~58_combout\ & ((\a9|out[0]~59_combout\ & ((\a9|out~76_combout\))) # (!\a9|out[0]~59_combout\ & (\a9|ShiftRight0~44_combout\)))) # (!\a9|out[0]~58_combout\ & (((\a9|out[0]~59_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a9|out[0]~58_combout\,
	datab => \a9|ShiftRight0~44_combout\,
	datac => \a9|out[0]~59_combout\,
	datad => \a9|out~76_combout\,
	combout => \a9|out~77_combout\);

-- Location: LCCOMB_X23_Y16_N6
\a9|out~78\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|out~78_combout\ = (\a9|out[0]~56_combout\ & (((\a9|out~77_combout\)))) # (!\a9|out[0]~56_combout\ & ((\a9|out~77_combout\ & (\a9|ShiftRight0~37_combout\)) # (!\a9|out~77_combout\ & ((\a9|ShiftRight0~36_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a9|ShiftRight0~37_combout\,
	datab => \a9|ShiftRight0~36_combout\,
	datac => \a9|out[0]~56_combout\,
	datad => \a9|out~77_combout\,
	combout => \a9|out~78_combout\);

-- Location: LCCOMB_X23_Y16_N30
\a9|out[9]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|out[9]~feeder_combout\ = \a9|out~78_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \a9|out~78_combout\,
	combout => \a9|out[9]~feeder_combout\);

-- Location: FF_X23_Y16_N31
\a9|out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \a9|out[9]~feeder_combout\,
	asdata => \a8|out\(25),
	sload => \a9|Add39~8_combout\,
	ena => \a9|out[0]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a9|out\(9));

-- Location: LCCOMB_X22_Y20_N0
\a9|ShiftRight0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|ShiftRight0~18_combout\ = (\a9|Add47~0_combout\ & (\a8|out\(9))) # (!\a9|Add47~0_combout\ & ((\a8|out\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a8|out\(9),
	datab => \a8|out\(7),
	datad => \a9|Add47~0_combout\,
	combout => \a9|ShiftRight0~18_combout\);

-- Location: LCCOMB_X22_Y20_N10
\a9|ShiftRight0~45\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|ShiftRight0~45_combout\ = (\a9|Add47~2_combout\ & (\a9|ShiftRight0~16_combout\)) # (!\a9|Add47~2_combout\ & ((\a9|ShiftRight0~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a9|ShiftRight0~16_combout\,
	datac => \a9|Add47~2_combout\,
	datad => \a9|ShiftRight0~19_combout\,
	combout => \a9|ShiftRight0~45_combout\);

-- Location: LCCOMB_X23_Y16_N18
\a9|out~80\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|out~80_combout\ = (\a9|out[7]~19_combout\ & (((\a9|out[7]~20_combout\)))) # (!\a9|out[7]~19_combout\ & ((\a9|out[7]~20_combout\ & ((\a9|ShiftRight0~45_combout\))) # (!\a9|out[7]~20_combout\ & (\a9|ShiftRight0~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a9|ShiftRight0~18_combout\,
	datab => \a9|out[7]~19_combout\,
	datac => \a9|ShiftRight0~45_combout\,
	datad => \a9|out[7]~20_combout\,
	combout => \a9|out~80_combout\);

-- Location: LCCOMB_X22_Y19_N26
\a9|ShiftRight0~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|ShiftRight0~46_combout\ = (\a9|ShiftRight0~8_combout\ & ((\a9|Add47~0_combout\ & ((\a8|out\(25)))) # (!\a9|Add47~0_combout\ & (\a8|out\(23)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a9|Add47~0_combout\,
	datab => \a8|out\(23),
	datac => \a8|out\(25),
	datad => \a9|ShiftRight0~8_combout\,
	combout => \a9|ShiftRight0~46_combout\);

-- Location: LCCOMB_X23_Y16_N8
\a9|out~81\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|out~81_combout\ = (\a9|out~80_combout\ & (((\a9|ShiftRight0~46_combout\) # (!\a9|out[7]~19_combout\)))) # (!\a9|out~80_combout\ & (\a9|ShiftRight0~20_combout\ & (\a9|out[7]~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a9|out~80_combout\,
	datab => \a9|ShiftRight0~20_combout\,
	datac => \a9|out[7]~19_combout\,
	datad => \a9|ShiftRight0~46_combout\,
	combout => \a9|out~81_combout\);

-- Location: LCCOMB_X24_Y16_N22
\a9|ShiftLeft0~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|ShiftLeft0~39_combout\ = (\a9|Add48~2_combout\ & (\a9|ShiftLeft0~15_combout\)) # (!\a9|Add48~2_combout\ & ((\a9|ShiftLeft0~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a9|ShiftLeft0~15_combout\,
	datac => \a9|Add48~2_combout\,
	datad => \a9|ShiftLeft0~22_combout\,
	combout => \a9|ShiftLeft0~39_combout\);

-- Location: LCCOMB_X23_Y16_N10
\a9|out~79\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|out~79_combout\ = (\a9|Add47~12_combout\ & (((\a9|ShiftLeft0~11_combout\ & \a9|ShiftLeft0~39_combout\)) # (!\a9|ShiftRight1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a9|ShiftRight1~2_combout\,
	datab => \a9|Add47~12_combout\,
	datac => \a9|ShiftLeft0~11_combout\,
	datad => \a9|ShiftLeft0~39_combout\,
	combout => \a9|out~79_combout\);

-- Location: LCCOMB_X23_Y16_N4
\a9|out~82\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|out~82_combout\ = (!\a9|out~23_combout\ & ((\a9|out~79_combout\) # ((!\a9|Add47~12_combout\ & \a9|out~81_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a9|out~23_combout\,
	datab => \a9|Add47~12_combout\,
	datac => \a9|out~81_combout\,
	datad => \a9|out~79_combout\,
	combout => \a9|out~82_combout\);

-- Location: LCCOMB_X23_Y16_N26
\a9|out~83\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|out~83_combout\ = (\a9|out~82_combout\) # ((\a9|Add39~8_combout\ & \a8|out\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a9|Add39~8_combout\,
	datab => \a8|out\(23),
	datac => \a9|out~82_combout\,
	combout => \a9|out~83_combout\);

-- Location: FF_X23_Y16_N27
\a9|out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \a9|out~83_combout\,
	ena => \a9|out[0]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a9|out\(7));

-- Location: LCCOMB_X21_Y19_N0
\a9|ShiftRight0~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|ShiftRight0~25_combout\ = (\a9|Add47~0_combout\ & ((\a8|out\(10)))) # (!\a9|Add47~0_combout\ & (\a8|out\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a8|out\(8),
	datac => \a9|Add47~0_combout\,
	datad => \a8|out\(10),
	combout => \a9|ShiftRight0~25_combout\);

-- Location: LCCOMB_X21_Y19_N18
\a9|ShiftRight0~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|ShiftRight0~33_combout\ = (\a9|Add47~2_combout\ & ((\a9|ShiftRight0~23_combout\))) # (!\a9|Add47~2_combout\ & (\a9|ShiftRight0~25_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a9|ShiftRight0~25_combout\,
	datac => \a9|ShiftRight0~23_combout\,
	datad => \a9|Add47~2_combout\,
	combout => \a9|ShiftRight0~33_combout\);

-- Location: LCCOMB_X21_Y18_N30
\a9|ShiftRight0~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|ShiftRight0~34_combout\ = (\a9|Add47~2_combout\ & (\a9|ShiftRight0~28_combout\)) # (!\a9|Add47~2_combout\ & ((\a9|ShiftRight0~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a9|Add47~2_combout\,
	datac => \a9|ShiftRight0~28_combout\,
	datad => \a9|ShiftRight0~22_combout\,
	combout => \a9|ShiftRight0~34_combout\);

-- Location: LCCOMB_X23_Y20_N2
\a9|ShiftRight0~43\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|ShiftRight0~43_combout\ = (\a8|out\(24) & (!\a9|Add47~0_combout\ & (!\a9|Add47~2_combout\ & !\a9|Add47~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a8|out\(24),
	datab => \a9|Add47~0_combout\,
	datac => \a9|Add47~2_combout\,
	datad => \a9|Add47~4_combout\,
	combout => \a9|ShiftRight0~43_combout\);

-- Location: LCCOMB_X23_Y20_N4
\a9|ShiftLeft0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|ShiftLeft0~16_combout\ = (\a8|out\(0) & !\a9|Add47~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \a8|out\(0),
	datad => \a9|Add47~0_combout\,
	combout => \a9|ShiftLeft0~16_combout\);

-- Location: LCCOMB_X23_Y20_N16
\a9|ShiftLeft0~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|ShiftLeft0~35_combout\ = (\a9|Add48~2_combout\ & (\a9|ShiftLeft0~17_combout\)) # (!\a9|Add48~2_combout\ & ((\a9|ShiftLeft0~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a9|ShiftLeft0~17_combout\,
	datac => \a9|Add48~2_combout\,
	datad => \a9|ShiftLeft0~30_combout\,
	combout => \a9|ShiftLeft0~35_combout\);

-- Location: LCCOMB_X23_Y20_N26
\a9|ShiftLeft0~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|ShiftLeft0~36_combout\ = (\a9|Add48~4_combout\ & (\a9|ShiftLeft0~16_combout\ & (!\a9|Add48~2_combout\))) # (!\a9|Add48~4_combout\ & (((\a9|ShiftLeft0~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a9|Add48~4_combout\,
	datab => \a9|ShiftLeft0~16_combout\,
	datac => \a9|Add48~2_combout\,
	datad => \a9|ShiftLeft0~35_combout\,
	combout => \a9|ShiftLeft0~36_combout\);

-- Location: LCCOMB_X23_Y16_N0
\a9|out~73\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|out~73_combout\ = (\a9|ShiftRight1~1_combout\ & (((\a9|ShiftLeft0~34_combout\ & \a9|ShiftLeft0~36_combout\)) # (!\a9|Add39~4_combout\))) # (!\a9|ShiftRight1~1_combout\ & (((\a9|ShiftLeft0~34_combout\ & \a9|ShiftLeft0~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a9|ShiftRight1~1_combout\,
	datab => \a9|Add39~4_combout\,
	datac => \a9|ShiftLeft0~34_combout\,
	datad => \a9|ShiftLeft0~36_combout\,
	combout => \a9|out~73_combout\);

-- Location: LCCOMB_X23_Y16_N12
\a9|out~74\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|out~74_combout\ = (\a9|out[0]~58_combout\ & ((\a9|out[0]~59_combout\ & ((\a9|out~73_combout\))) # (!\a9|out[0]~59_combout\ & (\a9|ShiftRight0~43_combout\)))) # (!\a9|out[0]~58_combout\ & (((\a9|out[0]~59_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a9|out[0]~58_combout\,
	datab => \a9|ShiftRight0~43_combout\,
	datac => \a9|out[0]~59_combout\,
	datad => \a9|out~73_combout\,
	combout => \a9|out~74_combout\);

-- Location: LCCOMB_X23_Y16_N16
\a9|out~75\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|out~75_combout\ = (\a9|out[0]~56_combout\ & (((\a9|out~74_combout\)))) # (!\a9|out[0]~56_combout\ & ((\a9|out~74_combout\ & ((\a9|ShiftRight0~34_combout\))) # (!\a9|out~74_combout\ & (\a9|ShiftRight0~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a9|ShiftRight0~33_combout\,
	datab => \a9|ShiftRight0~34_combout\,
	datac => \a9|out[0]~56_combout\,
	datad => \a9|out~74_combout\,
	combout => \a9|out~75_combout\);

-- Location: LCCOMB_X23_Y16_N20
\a9|out[8]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|out[8]~feeder_combout\ = \a9|out~75_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \a9|out~75_combout\,
	combout => \a9|out[8]~feeder_combout\);

-- Location: FF_X23_Y16_N21
\a9|out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \a9|out[8]~feeder_combout\,
	asdata => \a8|out\(24),
	sload => \a9|Add39~8_combout\,
	ena => \a9|out[0]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a9|out\(8));

-- Location: LCCOMB_X23_Y16_N28
\sq3|Add6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sq3|Add6~0_combout\ = (\a9|out\(9) & ((\a9|out\(7)) # (\a9|out\(8)))) # (!\a9|out\(9) & (\a9|out\(7) & \a9|out\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a9|out\(9),
	datac => \a9|out\(7),
	datad => \a9|out\(8),
	combout => \sq3|Add6~0_combout\);

-- Location: LCCOMB_X24_Y15_N6
\sq3|Add10~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sq3|Add10~2_combout\ = \a9|out\(12) $ (\a9|out\(13) $ (\a9|out\(11) $ (\a9|out\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a9|out\(12),
	datab => \a9|out\(13),
	datac => \a9|out\(11),
	datad => \a9|out\(10),
	combout => \sq3|Add10~2_combout\);

-- Location: LCCOMB_X23_Y16_N14
\sq3|Add6~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sq3|Add6~1_combout\ = \a9|out\(7) $ (\a9|out\(9) $ (\a9|out\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a9|out\(7),
	datac => \a9|out\(9),
	datad => \a9|out\(8),
	combout => \sq3|Add6~1_combout\);

-- Location: LCCOMB_X24_Y18_N4
\sq3|Add8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sq3|Add8~0_combout\ = (\sq3|Add10~2_combout\ & (\sq3|Add6~1_combout\ $ (VCC))) # (!\sq3|Add10~2_combout\ & (\sq3|Add6~1_combout\ & VCC))
-- \sq3|Add8~1\ = CARRY((\sq3|Add10~2_combout\ & \sq3|Add6~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sq3|Add10~2_combout\,
	datab => \sq3|Add6~1_combout\,
	datad => VCC,
	combout => \sq3|Add8~0_combout\,
	cout => \sq3|Add8~1\);

-- Location: LCCOMB_X24_Y18_N6
\sq3|Add8~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sq3|Add8~2_combout\ = (\sq3|Add10~1_combout\ & ((\sq3|Add6~0_combout\ & (\sq3|Add8~1\ & VCC)) # (!\sq3|Add6~0_combout\ & (!\sq3|Add8~1\)))) # (!\sq3|Add10~1_combout\ & ((\sq3|Add6~0_combout\ & (!\sq3|Add8~1\)) # (!\sq3|Add6~0_combout\ & ((\sq3|Add8~1\) # 
-- (GND)))))
-- \sq3|Add8~3\ = CARRY((\sq3|Add10~1_combout\ & (!\sq3|Add6~0_combout\ & !\sq3|Add8~1\)) # (!\sq3|Add10~1_combout\ & ((!\sq3|Add8~1\) # (!\sq3|Add6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sq3|Add10~1_combout\,
	datab => \sq3|Add6~0_combout\,
	datad => VCC,
	cin => \sq3|Add8~1\,
	combout => \sq3|Add8~2_combout\,
	cout => \sq3|Add8~3\);

-- Location: LCCOMB_X21_Y18_N16
\a9|ShiftRight0~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|ShiftRight0~27_combout\ = (\a8|out\(24) & !\a9|Add47~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a8|out\(24),
	datac => \a9|Add47~0_combout\,
	combout => \a9|ShiftRight0~27_combout\);

-- Location: LCCOMB_X21_Y18_N12
\a9|ShiftRight0~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|ShiftRight0~29_combout\ = (!\a9|Add47~4_combout\ & ((\a9|Add47~2_combout\ & ((\a9|ShiftRight0~27_combout\))) # (!\a9|Add47~2_combout\ & (\a9|ShiftRight0~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a9|Add47~4_combout\,
	datab => \a9|Add47~2_combout\,
	datac => \a9|ShiftRight0~28_combout\,
	datad => \a9|ShiftRight0~27_combout\,
	combout => \a9|ShiftRight0~29_combout\);

-- Location: LCCOMB_X22_Y18_N10
\a9|ShiftRight0~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|ShiftRight0~26_combout\ = (\a9|Add47~0_combout\ & (\a8|out\(6))) # (!\a9|Add47~0_combout\ & ((\a8|out\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a8|out\(6),
	datab => \a8|out\(4),
	datad => \a9|Add47~0_combout\,
	combout => \a9|ShiftRight0~26_combout\);

-- Location: LCCOMB_X21_Y18_N22
\a9|out~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|out~44_combout\ = (\a9|out[7]~19_combout\ & ((\a9|ShiftRight0~25_combout\) # ((\a9|out[7]~20_combout\)))) # (!\a9|out[7]~19_combout\ & (((\a9|ShiftRight0~26_combout\ & !\a9|out[7]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a9|ShiftRight0~25_combout\,
	datab => \a9|ShiftRight0~26_combout\,
	datac => \a9|out[7]~19_combout\,
	datad => \a9|out[7]~20_combout\,
	combout => \a9|out~44_combout\);

-- Location: LCCOMB_X21_Y18_N18
\a9|out~45\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|out~45_combout\ = (\a9|out~44_combout\ & ((\a9|ShiftRight0~29_combout\) # ((!\a9|out[7]~20_combout\)))) # (!\a9|out~44_combout\ & (((\a9|ShiftRight0~24_combout\ & \a9|out[7]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a9|ShiftRight0~29_combout\,
	datab => \a9|ShiftRight0~24_combout\,
	datac => \a9|out~44_combout\,
	datad => \a9|out[7]~20_combout\,
	combout => \a9|out~45_combout\);

-- Location: LCCOMB_X21_Y17_N0
\a9|ShiftRight1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|ShiftRight1~0_combout\ = (\a9|Add39~8_combout\) # ((\a9|Add39~6_combout\) # ((\a9|Add39~2_combout\ & \a9|Add39~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a9|Add39~2_combout\,
	datab => \a9|Add39~8_combout\,
	datac => \a9|Add39~6_combout\,
	datad => \a9|Add39~4_combout\,
	combout => \a9|ShiftRight1~0_combout\);

-- Location: LCCOMB_X23_Y18_N2
\a9|out~43\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|out~43_combout\ = (\a9|Add47~12_combout\ & (((\a9|ShiftLeft0~73_combout\ & \a9|ShiftLeft0~11_combout\)) # (!\a9|ShiftRight1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a9|ShiftRight1~0_combout\,
	datab => \a9|ShiftLeft0~73_combout\,
	datac => \a9|Add47~12_combout\,
	datad => \a9|ShiftLeft0~11_combout\,
	combout => \a9|out~43_combout\);

-- Location: LCCOMB_X23_Y18_N0
\a9|out~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|out~46_combout\ = (!\a9|out~23_combout\ & ((\a9|out~43_combout\) # ((!\a9|Add47~12_combout\ & \a9|out~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a9|Add47~12_combout\,
	datab => \a9|out~45_combout\,
	datac => \a9|out~23_combout\,
	datad => \a9|out~43_combout\,
	combout => \a9|out~46_combout\);

-- Location: LCCOMB_X23_Y18_N6
\a9|out~47\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|out~47_combout\ = (\a9|out~46_combout\) # ((\a8|out\(20) & \a9|Add39~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a8|out\(20),
	datac => \a9|Add39~8_combout\,
	datad => \a9|out~46_combout\,
	combout => \a9|out~47_combout\);

-- Location: FF_X23_Y18_N7
\a9|out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \a9|out~47_combout\,
	ena => \a9|out[0]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a9|out\(4));

-- Location: LCCOMB_X20_Y16_N18
\a9|ShiftRight0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|ShiftRight0~5_combout\ = (\a8|out\(25) & !\a9|Add47~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a8|out\(25),
	datad => \a9|Add47~0_combout\,
	combout => \a9|ShiftRight0~5_combout\);

-- Location: LCCOMB_X20_Y16_N10
\a9|ShiftRight0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|ShiftRight0~7_combout\ = (!\a9|Add47~4_combout\ & ((\a9|Add47~2_combout\ & ((\a9|ShiftRight0~5_combout\))) # (!\a9|Add47~2_combout\ & (\a9|ShiftRight0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a9|Add47~4_combout\,
	datab => \a9|ShiftRight0~6_combout\,
	datac => \a9|Add47~2_combout\,
	datad => \a9|ShiftRight0~5_combout\,
	combout => \a9|ShiftRight0~7_combout\);

-- Location: LCCOMB_X20_Y16_N2
\a9|ShiftRight0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|ShiftRight0~4_combout\ = (\a9|Add47~0_combout\ & (\a8|out\(7))) # (!\a9|Add47~0_combout\ & ((\a8|out\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a8|out\(7),
	datac => \a8|out\(5),
	datad => \a9|Add47~0_combout\,
	combout => \a9|ShiftRight0~4_combout\);

-- Location: LCCOMB_X20_Y16_N16
\a9|out~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|out~21_combout\ = (\a9|out[7]~19_combout\ & (((\a9|out[7]~20_combout\)))) # (!\a9|out[7]~19_combout\ & ((\a9|out[7]~20_combout\ & ((\a9|ShiftRight0~3_combout\))) # (!\a9|out[7]~20_combout\ & (\a9|ShiftRight0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a9|out[7]~19_combout\,
	datab => \a9|ShiftRight0~4_combout\,
	datac => \a9|out[7]~20_combout\,
	datad => \a9|ShiftRight0~3_combout\,
	combout => \a9|out~21_combout\);

-- Location: LCCOMB_X20_Y16_N28
\a9|out~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|out~22_combout\ = (\a9|out[7]~19_combout\ & ((\a9|out~21_combout\ & (\a9|ShiftRight0~7_combout\)) # (!\a9|out~21_combout\ & ((\a9|ShiftRight0~0_combout\))))) # (!\a9|out[7]~19_combout\ & (((\a9|out~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a9|ShiftRight0~7_combout\,
	datab => \a9|out[7]~19_combout\,
	datac => \a9|ShiftRight0~0_combout\,
	datad => \a9|out~21_combout\,
	combout => \a9|out~22_combout\);

-- Location: LCCOMB_X23_Y18_N28
\a9|out~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|out~18_combout\ = (\a9|Add47~12_combout\ & (((\a9|ShiftLeft0~72_combout\ & \a9|ShiftLeft0~11_combout\)) # (!\a9|ShiftRight1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a9|ShiftRight1~0_combout\,
	datab => \a9|ShiftLeft0~72_combout\,
	datac => \a9|Add47~12_combout\,
	datad => \a9|ShiftLeft0~11_combout\,
	combout => \a9|out~18_combout\);

-- Location: LCCOMB_X23_Y18_N4
\a9|out~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|out~24_combout\ = (!\a9|out~23_combout\ & ((\a9|out~18_combout\) # ((!\a9|Add47~12_combout\ & \a9|out~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a9|Add47~12_combout\,
	datab => \a9|out~22_combout\,
	datac => \a9|out~23_combout\,
	datad => \a9|out~18_combout\,
	combout => \a9|out~24_combout\);

-- Location: LCCOMB_X23_Y18_N22
\a9|out~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|out~25_combout\ = (\a9|out~24_combout\) # ((\a8|out\(21) & \a9|Add39~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a8|out\(21),
	datac => \a9|out~24_combout\,
	datad => \a9|Add39~8_combout\,
	combout => \a9|out~25_combout\);

-- Location: FF_X23_Y18_N23
\a9|out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \a9|out~25_combout\,
	ena => \a9|out[0]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a9|out\(5));

-- Location: LCCOMB_X22_Y20_N18
\a9|out[2]~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|out[2]~37_combout\ = (\a9|Add47~4_combout\) # ((\a9|Add47~0_combout\ & !\a9|Add47~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a9|Add47~0_combout\,
	datac => \a9|Add47~2_combout\,
	datad => \a9|Add47~4_combout\,
	combout => \a9|out[2]~37_combout\);

-- Location: LCCOMB_X22_Y20_N14
\a9|out~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|out~38_combout\ = (\a9|ShiftRight0~8_combout\ & (\a8|out\(3) & ((!\a9|out[2]~37_combout\)))) # (!\a9|ShiftRight0~8_combout\ & (((\a9|ShiftRight0~18_combout\) # (\a9|out[2]~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a8|out\(3),
	datab => \a9|ShiftRight0~18_combout\,
	datac => \a9|ShiftRight0~8_combout\,
	datad => \a9|out[2]~37_combout\,
	combout => \a9|out~38_combout\);

-- Location: LCCOMB_X22_Y20_N26
\a9|out~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|out~39_combout\ = (\a9|out~38_combout\ & (((\a9|ShiftRight0~21_combout\) # (!\a9|out[2]~37_combout\)))) # (!\a9|out~38_combout\ & (\a8|out\(5) & ((\a9|out[2]~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a8|out\(5),
	datab => \a9|ShiftRight0~21_combout\,
	datac => \a9|out~38_combout\,
	datad => \a9|out[2]~37_combout\,
	combout => \a9|out~39_combout\);

-- Location: LCCOMB_X22_Y20_N4
\a9|ShiftRight0~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|ShiftRight0~17_combout\ = (!\a9|Add47~4_combout\ & ((\a9|ShiftRight0~15_combout\) # ((!\a9|Add47~2_combout\ & \a9|ShiftRight0~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a9|Add47~4_combout\,
	datab => \a9|Add47~2_combout\,
	datac => \a9|ShiftRight0~15_combout\,
	datad => \a9|ShiftRight0~16_combout\,
	combout => \a9|ShiftRight0~17_combout\);

-- Location: LCCOMB_X22_Y17_N22
\a9|out[2]~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|out[2]~36_combout\ = (\a9|Add39~8_combout\) # ((\a9|Add47~6_combout\ & !\a9|Add47~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a9|Add47~6_combout\,
	datac => \a9|Add39~8_combout\,
	datad => \a9|Add47~12_combout\,
	combout => \a9|out[2]~36_combout\);

-- Location: LCCOMB_X22_Y20_N28
\a9|out~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|out~40_combout\ = (\a9|out[0]~26_combout\ & ((\a9|out[2]~36_combout\ & ((\a9|ShiftRight0~17_combout\))) # (!\a9|out[2]~36_combout\ & (\a9|out~39_combout\)))) # (!\a9|out[0]~26_combout\ & (((\a9|out[2]~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a9|out~39_combout\,
	datab => \a9|ShiftRight0~17_combout\,
	datac => \a9|out[0]~26_combout\,
	datad => \a9|out[2]~36_combout\,
	combout => \a9|out~40_combout\);

-- Location: LCCOMB_X21_Y17_N2
\a9|out~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|out~34_combout\ = ((\a9|Add39~2_combout\ & (\a9|Add39~0_combout\ & \a9|Add39~4_combout\))) # (!\a9|ShiftRight1~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a9|Add39~2_combout\,
	datab => \a9|Add39~0_combout\,
	datac => \a9|ShiftRight1~1_combout\,
	datad => \a9|Add39~4_combout\,
	combout => \a9|out~34_combout\);

-- Location: LCCOMB_X23_Y17_N16
\a9|out~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|out~35_combout\ = ((!\a9|Add48~2_combout\ & (\a9|ShiftLeft0~15_combout\ & \a9|ShiftLeft0~11_combout\))) # (!\a9|out~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a9|out~34_combout\,
	datab => \a9|Add48~2_combout\,
	datac => \a9|ShiftLeft0~15_combout\,
	datad => \a9|ShiftLeft0~11_combout\,
	combout => \a9|out~35_combout\);

-- Location: LCCOMB_X23_Y18_N24
\a9|out~41\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|out~41_combout\ = (\a9|out[0]~26_combout\ & (((\a9|out~40_combout\)))) # (!\a9|out[0]~26_combout\ & ((\a9|out~40_combout\ & (\a8|out\(19))) # (!\a9|out~40_combout\ & ((\a9|out~35_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a9|out[0]~26_combout\,
	datab => \a8|out\(19),
	datac => \a9|out~40_combout\,
	datad => \a9|out~35_combout\,
	combout => \a9|out~41_combout\);

-- Location: LCCOMB_X23_Y18_N20
\a9|out~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|out~42_combout\ = (\a9|out~41_combout\ & (((!\a9|Add47~10_combout\ & !\a9|Add47~8_combout\)) # (!\a9|out[0]~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a9|Add47~10_combout\,
	datab => \a9|Add47~8_combout\,
	datac => \a9|out[0]~26_combout\,
	datad => \a9|out~41_combout\,
	combout => \a9|out~42_combout\);

-- Location: FF_X23_Y18_N21
\a9|out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \a9|out~42_combout\,
	ena => \a9|out[0]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a9|out\(3));

-- Location: LCCOMB_X23_Y18_N8
\sq3|Add2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sq3|Add2~0_combout\ = \a9|out\(4) $ (\a9|out\(5) $ (\a9|out\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a9|out\(4),
	datac => \a9|out\(5),
	datad => \a9|out\(3),
	combout => \sq3|Add2~0_combout\);

-- Location: LCCOMB_X20_Y18_N12
\a9|out~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|out~62_combout\ = (\a9|Add47~2_combout\) # ((\a9|Add47~0_combout\ & ((\a8|out\(3)))) # (!\a9|Add47~0_combout\ & (\a8|out\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a8|out\(1),
	datab => \a8|out\(3),
	datac => \a9|Add47~0_combout\,
	datad => \a9|Add47~2_combout\,
	combout => \a9|out~62_combout\);

-- Location: LCCOMB_X20_Y18_N2
\a9|out~63\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|out~63_combout\ = (\a9|out~62_combout\ & ((\a9|ShiftRight0~4_combout\) # (!\a9|Add47~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a9|Add47~2_combout\,
	datac => \a9|ShiftRight0~4_combout\,
	datad => \a9|out~62_combout\,
	combout => \a9|out~63_combout\);

-- Location: LCCOMB_X21_Y16_N2
\a9|ShiftRight0~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|ShiftRight0~38_combout\ = (\a9|Add47~4_combout\ & (!\a9|Add47~2_combout\ & ((\a9|ShiftRight0~5_combout\)))) # (!\a9|Add47~4_combout\ & (((\a9|ShiftRight0~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a9|Add47~2_combout\,
	datab => \a9|Add47~4_combout\,
	datac => \a9|ShiftRight0~37_combout\,
	datad => \a9|ShiftRight0~5_combout\,
	combout => \a9|ShiftRight0~38_combout\);

-- Location: LCCOMB_X22_Y18_N28
\a9|out~64\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|out~64_combout\ = (\a9|ShiftRight1~1_combout\) # ((!\a9|Add48~2_combout\ & (\a9|ShiftLeft0~8_combout\ & \a9|ShiftLeft0~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a9|Add48~2_combout\,
	datab => \a9|ShiftLeft0~8_combout\,
	datac => \a9|ShiftLeft0~11_combout\,
	datad => \a9|ShiftRight1~1_combout\,
	combout => \a9|out~64_combout\);

-- Location: LCCOMB_X22_Y18_N6
\a9|out~65\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|out~65_combout\ = (\a9|out[0]~58_combout\ & ((\a9|out[0]~59_combout\ & ((\a9|out~64_combout\))) # (!\a9|out[0]~59_combout\ & (\a9|ShiftRight0~38_combout\)))) # (!\a9|out[0]~58_combout\ & (((\a9|out[0]~59_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a9|out[0]~58_combout\,
	datab => \a9|ShiftRight0~38_combout\,
	datac => \a9|out[0]~59_combout\,
	datad => \a9|out~64_combout\,
	combout => \a9|out~65_combout\);

-- Location: LCCOMB_X22_Y18_N16
\a9|out~66\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|out~66_combout\ = (\a9|out[0]~56_combout\ & (((\a9|out~65_combout\)))) # (!\a9|out[0]~56_combout\ & ((\a9|out~65_combout\ & ((\a9|ShiftRight0~36_combout\))) # (!\a9|out~65_combout\ & (\a9|out~63_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a9|out~63_combout\,
	datab => \a9|out[0]~56_combout\,
	datac => \a9|ShiftRight0~36_combout\,
	datad => \a9|out~65_combout\,
	combout => \a9|out~66_combout\);

-- Location: LCCOMB_X22_Y18_N8
\a9|out[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|out[1]~feeder_combout\ = \a9|out~66_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \a9|out~66_combout\,
	combout => \a9|out[1]~feeder_combout\);

-- Location: FF_X22_Y18_N9
\a9|out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \a9|out[1]~feeder_combout\,
	asdata => \a8|out\(17),
	sload => \a9|Add39~8_combout\,
	ena => \a9|out[0]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a9|out\(1));

-- Location: LCCOMB_X21_Y18_N10
\a9|ShiftRight0~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|ShiftRight0~31_combout\ = (!\a9|Add47~4_combout\ & ((\a9|ShiftRight0~30_combout\) # ((!\a9|Add47~2_combout\ & \a9|ShiftRight0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a9|Add47~4_combout\,
	datab => \a9|Add47~2_combout\,
	datac => \a9|ShiftRight0~9_combout\,
	datad => \a9|ShiftRight0~30_combout\,
	combout => \a9|ShiftRight0~31_combout\);

-- Location: LCCOMB_X23_Y20_N12
\a9|out~49\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|out~49_combout\ = (\a9|ShiftRight0~8_combout\ & (\a8|out\(2) & ((!\a9|out[2]~37_combout\)))) # (!\a9|ShiftRight0~8_combout\ & (((\a9|ShiftRight0~13_combout\) # (\a9|out[2]~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a8|out\(2),
	datab => \a9|ShiftRight0~8_combout\,
	datac => \a9|ShiftRight0~13_combout\,
	datad => \a9|out[2]~37_combout\,
	combout => \a9|out~49_combout\);

-- Location: LCCOMB_X23_Y20_N30
\a9|out~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|out~50_combout\ = (\a9|out[2]~37_combout\ & ((\a9|out~49_combout\ & ((\a9|ShiftRight0~32_combout\))) # (!\a9|out~49_combout\ & (\a8|out\(4))))) # (!\a9|out[2]~37_combout\ & (((\a9|out~49_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a8|out\(4),
	datab => \a9|out[2]~37_combout\,
	datac => \a9|ShiftRight0~32_combout\,
	datad => \a9|out~49_combout\,
	combout => \a9|out~50_combout\);

-- Location: LCCOMB_X23_Y17_N18
\a9|out~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|out~48_combout\ = ((\a9|ShiftLeft0~12_combout\ & (\a9|ShiftLeft0~11_combout\ & !\a9|Add48~2_combout\))) # (!\a9|out~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a9|out~34_combout\,
	datab => \a9|ShiftLeft0~12_combout\,
	datac => \a9|ShiftLeft0~11_combout\,
	datad => \a9|Add48~2_combout\,
	combout => \a9|out~48_combout\);

-- Location: LCCOMB_X22_Y18_N24
\a9|out~51\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|out~51_combout\ = (\a9|out[2]~36_combout\ & (!\a9|out[0]~26_combout\)) # (!\a9|out[2]~36_combout\ & ((\a9|out[0]~26_combout\ & (\a9|out~50_combout\)) # (!\a9|out[0]~26_combout\ & ((\a9|out~48_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a9|out[2]~36_combout\,
	datab => \a9|out[0]~26_combout\,
	datac => \a9|out~50_combout\,
	datad => \a9|out~48_combout\,
	combout => \a9|out~51_combout\);

-- Location: LCCOMB_X22_Y18_N2
\a9|out~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|out~52_combout\ = (\a9|out[2]~36_combout\ & ((\a9|out~51_combout\ & ((\a8|out\(18)))) # (!\a9|out~51_combout\ & (\a9|ShiftRight0~31_combout\)))) # (!\a9|out[2]~36_combout\ & (((\a9|out~51_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a9|ShiftRight0~31_combout\,
	datab => \a8|out\(18),
	datac => \a9|out[2]~36_combout\,
	datad => \a9|out~51_combout\,
	combout => \a9|out~52_combout\);

-- Location: LCCOMB_X22_Y18_N4
\a9|out~53\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|out~53_combout\ = (\a9|out~52_combout\ & (((!\a9|Add47~8_combout\ & !\a9|Add47~10_combout\)) # (!\a9|out[0]~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a9|Add47~8_combout\,
	datab => \a9|out[0]~26_combout\,
	datac => \a9|Add47~10_combout\,
	datad => \a9|out~52_combout\,
	combout => \a9|out~53_combout\);

-- Location: FF_X22_Y18_N5
\a9|out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \a9|out~53_combout\,
	ena => \a9|out[0]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a9|out\(2));

-- Location: LCCOMB_X21_Y18_N24
\a9|out~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|out~54_combout\ = (\a9|Add47~2_combout\) # ((\a9|Add47~0_combout\ & ((\a8|out\(2)))) # (!\a9|Add47~0_combout\ & (\a8|out\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a8|out\(0),
	datab => \a8|out\(2),
	datac => \a9|Add47~0_combout\,
	datad => \a9|Add47~2_combout\,
	combout => \a9|out~54_combout\);

-- Location: LCCOMB_X22_Y18_N22
\a9|out~55\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|out~55_combout\ = (\a9|out~54_combout\ & ((\a9|ShiftRight0~26_combout\) # (!\a9|Add47~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a9|Add47~2_combout\,
	datac => \a9|ShiftRight0~26_combout\,
	datad => \a9|out~54_combout\,
	combout => \a9|out~55_combout\);

-- Location: LCCOMB_X21_Y18_N0
\a9|ShiftRight0~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|ShiftRight0~35_combout\ = (\a9|Add47~4_combout\ & (\a9|ShiftRight0~27_combout\ & ((!\a9|Add47~2_combout\)))) # (!\a9|Add47~4_combout\ & (((\a9|ShiftRight0~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a9|Add47~4_combout\,
	datab => \a9|ShiftRight0~27_combout\,
	datac => \a9|ShiftRight0~34_combout\,
	datad => \a9|Add47~2_combout\,
	combout => \a9|ShiftRight0~35_combout\);

-- Location: LCCOMB_X22_Y18_N0
\a9|out~57\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|out~57_combout\ = (\a9|ShiftRight1~1_combout\) # ((!\a9|Add48~2_combout\ & (\a9|ShiftLeft0~11_combout\ & \a9|ShiftLeft0~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a9|Add48~2_combout\,
	datab => \a9|ShiftRight1~1_combout\,
	datac => \a9|ShiftLeft0~11_combout\,
	datad => \a9|ShiftLeft0~16_combout\,
	combout => \a9|out~57_combout\);

-- Location: LCCOMB_X22_Y18_N26
\a9|out~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|out~60_combout\ = (\a9|out[0]~58_combout\ & ((\a9|out[0]~59_combout\ & ((\a9|out~57_combout\))) # (!\a9|out[0]~59_combout\ & (\a9|ShiftRight0~35_combout\)))) # (!\a9|out[0]~58_combout\ & (((\a9|out[0]~59_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a9|out[0]~58_combout\,
	datab => \a9|ShiftRight0~35_combout\,
	datac => \a9|out[0]~59_combout\,
	datad => \a9|out~57_combout\,
	combout => \a9|out~60_combout\);

-- Location: LCCOMB_X22_Y18_N18
\a9|out~61\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|out~61_combout\ = (\a9|out~60_combout\ & (((\a9|ShiftRight0~33_combout\) # (\a9|out[0]~56_combout\)))) # (!\a9|out~60_combout\ & (\a9|out~55_combout\ & ((!\a9|out[0]~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a9|out~55_combout\,
	datab => \a9|ShiftRight0~33_combout\,
	datac => \a9|out~60_combout\,
	datad => \a9|out[0]~56_combout\,
	combout => \a9|out~61_combout\);

-- Location: LCCOMB_X22_Y18_N20
\a9|out[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|out[0]~feeder_combout\ = \a9|out~61_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \a9|out~61_combout\,
	combout => \a9|out[0]~feeder_combout\);

-- Location: FF_X22_Y18_N21
\a9|out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a9|out[0]~feeder_combout\,
	asdata => \a8|out\(16),
	sload => \a9|Add39~8_combout\,
	ena => \a9|out[0]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a9|out\(0));

-- Location: LCCOMB_X22_Y18_N14
\sq3|Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sq3|Add1~0_combout\ = \a9|out\(1) $ (\a9|out\(2) $ (\a9|out\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a9|out\(1),
	datac => \a9|out\(2),
	datad => \a9|out\(0),
	combout => \sq3|Add1~0_combout\);

-- Location: LCCOMB_X23_Y18_N14
\sq3|Add5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sq3|Add5~0_combout\ = (\a9|out\(6) & (\sq3|Add2~0_combout\ $ (\sq3|Add1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a9|out\(6),
	datac => \sq3|Add2~0_combout\,
	datad => \sq3|Add1~0_combout\,
	combout => \sq3|Add5~0_combout\);

-- Location: LCCOMB_X23_Y18_N16
\sq3|Add2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sq3|Add2~1_combout\ = (\a9|out\(4) & ((\a9|out\(5)) # (\a9|out\(3)))) # (!\a9|out\(4) & (\a9|out\(5) & \a9|out\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a9|out\(4),
	datac => \a9|out\(5),
	datad => \a9|out\(3),
	combout => \sq3|Add2~1_combout\);

-- Location: LCCOMB_X22_Y18_N30
\sq3|Add1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sq3|Add1~1_combout\ = (\a9|out\(2) & ((\a9|out\(1)) # (\a9|out\(0)))) # (!\a9|out\(2) & (\a9|out\(1) & \a9|out\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a9|out\(2),
	datac => \a9|out\(1),
	datad => \a9|out\(0),
	combout => \sq3|Add1~1_combout\);

-- Location: LCCOMB_X23_Y18_N12
\sq3|Add4~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sq3|Add4~4_combout\ = (\sq3|Add1~0_combout\ & (\a9|out\(4) $ (\a9|out\(3) $ (\a9|out\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a9|out\(4),
	datab => \a9|out\(3),
	datac => \a9|out\(5),
	datad => \sq3|Add1~0_combout\,
	combout => \sq3|Add4~4_combout\);

-- Location: LCCOMB_X24_Y18_N2
\sq3|Add5~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sq3|Add5~3_combout\ = \sq3|Add5~0_combout\ $ (\sq3|Add2~1_combout\ $ (\sq3|Add1~1_combout\ $ (\sq3|Add4~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sq3|Add5~0_combout\,
	datab => \sq3|Add2~1_combout\,
	datac => \sq3|Add1~1_combout\,
	datad => \sq3|Add4~4_combout\,
	combout => \sq3|Add5~3_combout\);

-- Location: LCCOMB_X24_Y18_N0
\sq3|Add5~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sq3|Add5~4_combout\ = \a9|out\(6) $ (\sq3|Add1~0_combout\ $ (\sq3|Add2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a9|out\(6),
	datac => \sq3|Add1~0_combout\,
	datad => \sq3|Add2~0_combout\,
	combout => \sq3|Add5~4_combout\);

-- Location: LCCOMB_X24_Y18_N22
\sq3|Add12~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sq3|Add12~0_combout\ = (\sq3|Add8~0_combout\ & (\sq3|Add5~4_combout\ $ (VCC))) # (!\sq3|Add8~0_combout\ & (\sq3|Add5~4_combout\ & VCC))
-- \sq3|Add12~1\ = CARRY((\sq3|Add8~0_combout\ & \sq3|Add5~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sq3|Add8~0_combout\,
	datab => \sq3|Add5~4_combout\,
	datad => VCC,
	combout => \sq3|Add12~0_combout\,
	cout => \sq3|Add12~1\);

-- Location: LCCOMB_X24_Y18_N24
\sq3|Add12~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sq3|Add12~2_combout\ = (\sq3|Add8~2_combout\ & ((\sq3|Add5~3_combout\ & (\sq3|Add12~1\ & VCC)) # (!\sq3|Add5~3_combout\ & (!\sq3|Add12~1\)))) # (!\sq3|Add8~2_combout\ & ((\sq3|Add5~3_combout\ & (!\sq3|Add12~1\)) # (!\sq3|Add5~3_combout\ & 
-- ((\sq3|Add12~1\) # (GND)))))
-- \sq3|Add12~3\ = CARRY((\sq3|Add8~2_combout\ & (!\sq3|Add5~3_combout\ & !\sq3|Add12~1\)) # (!\sq3|Add8~2_combout\ & ((!\sq3|Add12~1\) # (!\sq3|Add5~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sq3|Add8~2_combout\,
	datab => \sq3|Add5~3_combout\,
	datad => VCC,
	cin => \sq3|Add12~1\,
	combout => \sq3|Add12~2_combout\,
	cout => \sq3|Add12~3\);

-- Location: LCCOMB_X21_Y18_N14
\a9|ShiftRight0~47\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|ShiftRight0~47_combout\ = (!\a9|Add47~2_combout\ & ((\a9|Add47~0_combout\ & ((\a8|out\(24)))) # (!\a9|Add47~0_combout\ & (\a8|out\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a8|out\(22),
	datab => \a8|out\(24),
	datac => \a9|Add47~0_combout\,
	datad => \a9|Add47~2_combout\,
	combout => \a9|ShiftRight0~47_combout\);

-- Location: LCCOMB_X22_Y16_N30
\a9|out[14]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|out[14]~2_combout\ = (\a9|Add47~4_combout\ & (\a9|ShiftRight0~47_combout\)) # (!\a9|Add47~4_combout\ & ((\a9|ShiftRight0~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a9|Add47~4_combout\,
	datab => \a9|ShiftRight0~47_combout\,
	datad => \a9|ShiftRight0~11_combout\,
	combout => \a9|out[14]~2_combout\);

-- Location: LCCOMB_X21_Y19_N12
\a9|ShiftLeft0~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|ShiftLeft0~40_combout\ = (\a9|Add47~0_combout\ & ((\a8|out\(12)))) # (!\a9|Add47~0_combout\ & (\a8|out\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a8|out\(14),
	datac => \a9|Add47~0_combout\,
	datad => \a8|out\(12),
	combout => \a9|ShiftLeft0~40_combout\);

-- Location: LCCOMB_X22_Y16_N26
\a9|ShiftLeft0~41\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|ShiftLeft0~41_combout\ = (\a9|Add48~2_combout\ & (\a9|ShiftLeft0~19_combout\)) # (!\a9|Add48~2_combout\ & ((\a9|ShiftLeft0~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a9|ShiftLeft0~19_combout\,
	datac => \a9|Add48~2_combout\,
	datad => \a9|ShiftLeft0~40_combout\,
	combout => \a9|ShiftLeft0~41_combout\);

-- Location: LCCOMB_X22_Y16_N4
\a9|ShiftLeft0~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|ShiftLeft0~42_combout\ = (\a9|Add48~4_combout\ & ((\a9|ShiftLeft0~14_combout\))) # (!\a9|Add48~4_combout\ & (\a9|ShiftLeft0~41_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a9|Add48~4_combout\,
	datac => \a9|ShiftLeft0~41_combout\,
	datad => \a9|ShiftLeft0~14_combout\,
	combout => \a9|ShiftLeft0~42_combout\);

-- Location: LCCOMB_X22_Y16_N22
\a9|out~84\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|out~84_combout\ = (\a9|ShiftRight1~3_combout\ & (((\a9|ShiftLeft0~42_combout\ & \a9|ShiftLeft0~34_combout\)) # (!\a9|Add39~0_combout\))) # (!\a9|ShiftRight1~3_combout\ & (\a9|ShiftLeft0~42_combout\ & (\a9|ShiftLeft0~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a9|ShiftRight1~3_combout\,
	datab => \a9|ShiftLeft0~42_combout\,
	datac => \a9|ShiftLeft0~34_combout\,
	datad => \a9|Add39~0_combout\,
	combout => \a9|out~84_combout\);

-- Location: FF_X22_Y16_N31
\a9|out[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \a9|out[14]~2_combout\,
	asdata => \a9|out~84_combout\,
	sclr => \a9|ALT_INV_out[10]~69_combout\,
	sload => \a9|Add47~12_combout\,
	ena => \a9|out[0]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a9|out\(14));

-- Location: LCCOMB_X24_Y18_N12
\sq3|Add13~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sq3|Add13~0_combout\ = (\sq3|Add12~0_combout\ & (\a9|out\(14) $ (VCC))) # (!\sq3|Add12~0_combout\ & (\a9|out\(14) & VCC))
-- \sq3|Add13~1\ = CARRY((\sq3|Add12~0_combout\ & \a9|out\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sq3|Add12~0_combout\,
	datab => \a9|out\(14),
	datad => VCC,
	combout => \sq3|Add13~0_combout\,
	cout => \sq3|Add13~1\);

-- Location: LCCOMB_X24_Y18_N14
\sq3|Add13~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sq3|Add13~2_combout\ = (\sq3|Add12~2_combout\ & (!\sq3|Add13~1\)) # (!\sq3|Add12~2_combout\ & ((\sq3|Add13~1\) # (GND)))
-- \sq3|Add13~3\ = CARRY((!\sq3|Add13~1\) # (!\sq3|Add12~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sq3|Add12~2_combout\,
	datad => VCC,
	cin => \sq3|Add13~1\,
	combout => \sq3|Add13~2_combout\,
	cout => \sq3|Add13~3\);

-- Location: LCCOMB_X22_Y20_N24
\a9|ShiftRight0~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|ShiftRight0~48_combout\ = (!\a9|Add47~2_combout\ & ((\a9|Add47~0_combout\ & (\a8|out\(25))) # (!\a9|Add47~0_combout\ & ((\a8|out\(23))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a8|out\(25),
	datab => \a8|out\(23),
	datac => \a9|Add47~2_combout\,
	datad => \a9|Add47~0_combout\,
	combout => \a9|ShiftRight0~48_combout\);

-- Location: LCCOMB_X22_Y15_N22
\a9|out[15]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|out[15]~3_combout\ = (\a9|Add47~4_combout\ & (\a9|ShiftRight0~48_combout\)) # (!\a9|Add47~4_combout\ & ((\a9|ShiftRight0~45_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a9|Add47~4_combout\,
	datab => \a9|ShiftRight0~48_combout\,
	datad => \a9|ShiftRight0~45_combout\,
	combout => \a9|out[15]~3_combout\);

-- Location: LCCOMB_X21_Y16_N20
\a9|ShiftLeft0~47\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|ShiftLeft0~47_combout\ = (\a9|Add47~0_combout\ & ((\a8|out\(13)))) # (!\a9|Add47~0_combout\ & (\a8|out\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a8|out\(15),
	datac => \a9|Add47~0_combout\,
	datad => \a8|out\(13),
	combout => \a9|ShiftLeft0~47_combout\);

-- Location: LCCOMB_X24_Y16_N18
\a9|ShiftLeft0~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|ShiftLeft0~48_combout\ = (\a9|Add48~2_combout\ & ((\a9|ShiftLeft0~23_combout\))) # (!\a9|Add48~2_combout\ & (\a9|ShiftLeft0~47_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a9|ShiftLeft0~47_combout\,
	datac => \a9|Add48~2_combout\,
	datad => \a9|ShiftLeft0~23_combout\,
	combout => \a9|ShiftLeft0~48_combout\);

-- Location: LCCOMB_X24_Y16_N12
\a9|ShiftLeft0~71\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|ShiftLeft0~71_combout\ = (\a9|Add48~4_combout\ & (\a9|ShiftLeft0~39_combout\)) # (!\a9|Add48~4_combout\ & ((\a9|ShiftLeft0~48_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a9|Add48~4_combout\,
	datac => \a9|ShiftLeft0~39_combout\,
	datad => \a9|ShiftLeft0~48_combout\,
	combout => \a9|ShiftLeft0~71_combout\);

-- Location: LCCOMB_X22_Y15_N8
\a9|out~125\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|out~125_combout\ = (\a9|ShiftRight1~3_combout\ & (((\a9|ShiftLeft0~71_combout\ & \a9|ShiftLeft0~34_combout\)) # (!\a9|Add39~0_combout\))) # (!\a9|ShiftRight1~3_combout\ & (((\a9|ShiftLeft0~71_combout\ & \a9|ShiftLeft0~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a9|ShiftRight1~3_combout\,
	datab => \a9|Add39~0_combout\,
	datac => \a9|ShiftLeft0~71_combout\,
	datad => \a9|ShiftLeft0~34_combout\,
	combout => \a9|out~125_combout\);

-- Location: FF_X22_Y15_N23
\a9|out[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \a9|out[15]~3_combout\,
	asdata => \a9|out~125_combout\,
	sclr => \a9|ALT_INV_out[10]~69_combout\,
	sload => \a9|Add47~12_combout\,
	ena => \a9|out[0]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a9|out\(15));

-- Location: LCCOMB_X23_Y17_N24
\a9|out[20]~85\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|out[20]~85_combout\ = (\a9|Add47~12_combout\ & ((\a9|Add48~6_combout\) # ((\a9|Add48~4_combout\) # (!\a9|ShiftLeft0~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a9|Add48~6_combout\,
	datab => \a9|Add48~4_combout\,
	datac => \a9|Add47~12_combout\,
	datad => \a9|ShiftLeft0~18_combout\,
	combout => \a9|out[20]~85_combout\);

-- Location: LCCOMB_X23_Y20_N10
\a9|ShiftLeft0~74\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|ShiftLeft0~74_combout\ = (\a8|out\(0) & (!\a9|Add47~0_combout\ & (!\a9|Add48~2_combout\ & !\a9|Add48~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a8|out\(0),
	datab => \a9|Add47~0_combout\,
	datac => \a9|Add48~2_combout\,
	datad => \a9|Add48~4_combout\,
	combout => \a9|ShiftLeft0~74_combout\);

-- Location: LCCOMB_X21_Y16_N12
\a9|ShiftLeft0~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|ShiftLeft0~54_combout\ = (\a9|Add47~0_combout\ & ((\a8|out\(14)))) # (!\a9|Add47~0_combout\ & (\a8|out\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a8|out\(16),
	datab => \a8|out\(14),
	datac => \a9|Add47~0_combout\,
	combout => \a9|ShiftLeft0~54_combout\);

-- Location: LCCOMB_X22_Y16_N10
\a9|ShiftLeft0~55\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|ShiftLeft0~55_combout\ = (\a9|Add48~2_combout\ & (\a9|ShiftLeft0~31_combout\)) # (!\a9|Add48~2_combout\ & ((\a9|ShiftLeft0~54_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a9|Add48~2_combout\,
	datab => \a9|ShiftLeft0~31_combout\,
	datad => \a9|ShiftLeft0~54_combout\,
	combout => \a9|ShiftLeft0~55_combout\);

-- Location: LCCOMB_X23_Y17_N22
\a9|out[20]~86\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|out[20]~86_combout\ = (\a9|Add48~6_combout\) # ((!\a9|ShiftLeft0~18_combout\) # (!\a9|Add47~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a9|Add48~6_combout\,
	datac => \a9|Add47~12_combout\,
	datad => \a9|ShiftLeft0~18_combout\,
	combout => \a9|out[20]~86_combout\);

-- Location: LCCOMB_X22_Y15_N2
\a9|out~119\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|out~119_combout\ = (\a9|out[20]~86_combout\ & ((\a9|ShiftRight0~35_combout\) # ((\a9|out[20]~85_combout\)))) # (!\a9|out[20]~86_combout\ & (((\a9|ShiftLeft0~55_combout\ & !\a9|out[20]~85_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a9|ShiftRight0~35_combout\,
	datab => \a9|ShiftLeft0~55_combout\,
	datac => \a9|out[20]~86_combout\,
	datad => \a9|out[20]~85_combout\,
	combout => \a9|out~119_combout\);

-- Location: LCCOMB_X22_Y15_N24
\a9|out~120\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|out~120_combout\ = (\a9|out[20]~85_combout\ & ((\a9|out~119_combout\ & ((\a9|ShiftLeft0~74_combout\))) # (!\a9|out~119_combout\ & (\a9|ShiftLeft0~35_combout\)))) # (!\a9|out[20]~85_combout\ & (((\a9|out~119_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a9|ShiftLeft0~35_combout\,
	datab => \a9|out[20]~85_combout\,
	datac => \a9|ShiftLeft0~74_combout\,
	datad => \a9|out~119_combout\,
	combout => \a9|out~120_combout\);

-- Location: LCCOMB_X22_Y15_N30
\a9|out~121\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|out~121_combout\ = (\a9|out[10]~69_combout\ & (\a9|out~120_combout\ & ((\a9|ShiftLeft0~18_combout\) # (!\a9|out[20]~85_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a9|out[10]~69_combout\,
	datab => \a9|out[20]~85_combout\,
	datac => \a9|ShiftLeft0~18_combout\,
	datad => \a9|out~120_combout\,
	combout => \a9|out~121_combout\);

-- Location: FF_X22_Y15_N31
\a9|out[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \a9|out~121_combout\,
	ena => \a9|out[0]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a9|out\(16));

-- Location: LCCOMB_X24_Y16_N28
\a9|ShiftLeft0~75\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|ShiftLeft0~75_combout\ = (\a8|out\(1) & (!\a9|Add47~0_combout\ & (!\a9|Add48~2_combout\ & !\a9|Add48~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a8|out\(1),
	datab => \a9|Add47~0_combout\,
	datac => \a9|Add48~2_combout\,
	datad => \a9|Add48~4_combout\,
	combout => \a9|ShiftLeft0~75_combout\);

-- Location: LCCOMB_X21_Y16_N26
\a9|ShiftLeft0~57\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|ShiftLeft0~57_combout\ = (\a9|Add47~0_combout\ & ((\a8|out\(15)))) # (!\a9|Add47~0_combout\ & (\a8|out\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a8|out\(17),
	datab => \a8|out\(15),
	datac => \a9|Add47~0_combout\,
	combout => \a9|ShiftLeft0~57_combout\);

-- Location: LCCOMB_X21_Y16_N28
\a9|ShiftLeft0~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|ShiftLeft0~58_combout\ = (\a9|Add48~2_combout\ & (\a9|ShiftLeft0~27_combout\)) # (!\a9|Add48~2_combout\ & ((\a9|ShiftLeft0~57_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a9|ShiftLeft0~27_combout\,
	datac => \a9|ShiftLeft0~57_combout\,
	datad => \a9|Add48~2_combout\,
	combout => \a9|ShiftLeft0~58_combout\);

-- Location: LCCOMB_X22_Y15_N0
\a9|out~122\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|out~122_combout\ = (\a9|out[20]~86_combout\ & (((\a9|out[20]~85_combout\)))) # (!\a9|out[20]~86_combout\ & ((\a9|out[20]~85_combout\ & (\a9|ShiftLeft0~37_combout\)) # (!\a9|out[20]~85_combout\ & ((\a9|ShiftLeft0~58_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a9|ShiftLeft0~37_combout\,
	datab => \a9|ShiftLeft0~58_combout\,
	datac => \a9|out[20]~86_combout\,
	datad => \a9|out[20]~85_combout\,
	combout => \a9|out~122_combout\);

-- Location: LCCOMB_X22_Y15_N6
\a9|out~123\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|out~123_combout\ = (\a9|out[20]~86_combout\ & ((\a9|out~122_combout\ & ((\a9|ShiftLeft0~75_combout\))) # (!\a9|out~122_combout\ & (\a9|ShiftRight0~38_combout\)))) # (!\a9|out[20]~86_combout\ & (((\a9|out~122_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a9|ShiftRight0~38_combout\,
	datab => \a9|ShiftLeft0~75_combout\,
	datac => \a9|out[20]~86_combout\,
	datad => \a9|out~122_combout\,
	combout => \a9|out~123_combout\);

-- Location: LCCOMB_X22_Y15_N16
\a9|out~124\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|out~124_combout\ = (\a9|out[10]~69_combout\ & (\a9|out~123_combout\ & ((\a9|ShiftLeft0~18_combout\) # (!\a9|out[20]~85_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a9|out[10]~69_combout\,
	datab => \a9|out[20]~85_combout\,
	datac => \a9|ShiftLeft0~18_combout\,
	datad => \a9|out~123_combout\,
	combout => \a9|out~124_combout\);

-- Location: FF_X22_Y15_N17
\a9|out[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \a9|out~124_combout\,
	ena => \a9|out[0]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a9|out\(17));

-- Location: LCCOMB_X22_Y15_N26
\sq3|Add14~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sq3|Add14~0_combout\ = (\a9|out\(15) & ((\a9|out\(16)) # (\a9|out\(17)))) # (!\a9|out\(15) & (\a9|out\(16) & \a9|out\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a9|out\(15),
	datac => \a9|out\(16),
	datad => \a9|out\(17),
	combout => \sq3|Add14~0_combout\);

-- Location: LCCOMB_X23_Y20_N24
\a9|ShiftLeft0~67\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|ShiftLeft0~67_combout\ = (\a9|ShiftLeft0~12_combout\ & (!\a9|Add48~2_combout\ & !\a9|Add48~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a9|ShiftLeft0~12_combout\,
	datac => \a9|Add48~2_combout\,
	datad => \a9|Add48~4_combout\,
	combout => \a9|ShiftLeft0~67_combout\);

-- Location: LCCOMB_X20_Y19_N4
\a9|ShiftLeft0~43\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|ShiftLeft0~43_combout\ = (\a9|Add47~0_combout\ & (\a8|out\(16))) # (!\a9|Add47~0_combout\ & ((\a8|out\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a8|out\(16),
	datab => \a8|out\(18),
	datad => \a9|Add47~0_combout\,
	combout => \a9|ShiftLeft0~43_combout\);

-- Location: LCCOMB_X21_Y19_N16
\a9|ShiftLeft0~61\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|ShiftLeft0~61_combout\ = (\a9|Add48~2_combout\ & (\a9|ShiftLeft0~40_combout\)) # (!\a9|Add48~2_combout\ & ((\a9|ShiftLeft0~43_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a9|ShiftLeft0~40_combout\,
	datac => \a9|ShiftLeft0~43_combout\,
	datad => \a9|Add48~2_combout\,
	combout => \a9|ShiftLeft0~61_combout\);

-- Location: LCCOMB_X24_Y17_N8
\a9|out~107\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|out~107_combout\ = (\a9|out[20]~85_combout\ & (((\a9|out[20]~86_combout\)))) # (!\a9|out[20]~85_combout\ & ((\a9|out[20]~86_combout\ & (\a9|ShiftRight0~31_combout\)) # (!\a9|out[20]~86_combout\ & ((\a9|ShiftLeft0~61_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a9|ShiftRight0~31_combout\,
	datab => \a9|out[20]~85_combout\,
	datac => \a9|ShiftLeft0~61_combout\,
	datad => \a9|out[20]~86_combout\,
	combout => \a9|out~107_combout\);

-- Location: LCCOMB_X24_Y17_N18
\a9|out~108\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|out~108_combout\ = (\a9|out~107_combout\ & ((\a9|ShiftLeft0~67_combout\) # ((!\a9|out[20]~85_combout\)))) # (!\a9|out~107_combout\ & (((\a9|ShiftLeft0~20_combout\ & \a9|out[20]~85_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a9|ShiftLeft0~67_combout\,
	datab => \a9|ShiftLeft0~20_combout\,
	datac => \a9|out~107_combout\,
	datad => \a9|out[20]~85_combout\,
	combout => \a9|out~108_combout\);

-- Location: LCCOMB_X24_Y17_N30
\a9|out~109\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|out~109_combout\ = (\a9|out[10]~69_combout\ & (\a9|out~108_combout\ & ((\a9|ShiftLeft0~18_combout\) # (!\a9|out[20]~85_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a9|out[10]~69_combout\,
	datab => \a9|ShiftLeft0~18_combout\,
	datac => \a9|out[20]~85_combout\,
	datad => \a9|out~108_combout\,
	combout => \a9|out~109_combout\);

-- Location: FF_X24_Y17_N31
\a9|out[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \a9|out~109_combout\,
	ena => \a9|out[0]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a9|out\(18));

-- Location: LCCOMB_X24_Y17_N6
\a9|ShiftLeft0~68\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|ShiftLeft0~68_combout\ = (!\a9|Add48~2_combout\ & (!\a9|Add48~4_combout\ & \a9|ShiftLeft0~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a9|Add48~2_combout\,
	datac => \a9|Add48~4_combout\,
	datad => \a9|ShiftLeft0~15_combout\,
	combout => \a9|ShiftLeft0~68_combout\);

-- Location: LCCOMB_X21_Y19_N14
\a9|ShiftLeft0~49\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|ShiftLeft0~49_combout\ = (\a9|Add47~0_combout\ & (\a8|out\(17))) # (!\a9|Add47~0_combout\ & ((\a8|out\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a8|out\(17),
	datab => \a8|out\(19),
	datac => \a9|Add47~0_combout\,
	combout => \a9|ShiftLeft0~49_combout\);

-- Location: LCCOMB_X21_Y19_N20
\a9|ShiftLeft0~63\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|ShiftLeft0~63_combout\ = (\a9|Add48~2_combout\ & (\a9|ShiftLeft0~47_combout\)) # (!\a9|Add48~2_combout\ & ((\a9|ShiftLeft0~49_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a9|ShiftLeft0~47_combout\,
	datac => \a9|ShiftLeft0~49_combout\,
	datad => \a9|Add48~2_combout\,
	combout => \a9|ShiftLeft0~63_combout\);

-- Location: LCCOMB_X24_Y17_N10
\a9|out~110\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|out~110_combout\ = (\a9|out[20]~86_combout\ & (((\a9|out[20]~85_combout\)))) # (!\a9|out[20]~86_combout\ & ((\a9|out[20]~85_combout\ & ((\a9|ShiftLeft0~24_combout\))) # (!\a9|out[20]~85_combout\ & (\a9|ShiftLeft0~63_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a9|ShiftLeft0~63_combout\,
	datab => \a9|out[20]~86_combout\,
	datac => \a9|ShiftLeft0~24_combout\,
	datad => \a9|out[20]~85_combout\,
	combout => \a9|out~110_combout\);

-- Location: LCCOMB_X24_Y17_N4
\a9|out~111\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|out~111_combout\ = (\a9|out[20]~86_combout\ & ((\a9|out~110_combout\ & (\a9|ShiftLeft0~68_combout\)) # (!\a9|out~110_combout\ & ((\a9|ShiftRight0~17_combout\))))) # (!\a9|out[20]~86_combout\ & (((\a9|out~110_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a9|ShiftLeft0~68_combout\,
	datab => \a9|out[20]~86_combout\,
	datac => \a9|ShiftRight0~17_combout\,
	datad => \a9|out~110_combout\,
	combout => \a9|out~111_combout\);

-- Location: LCCOMB_X24_Y17_N16
\a9|out~112\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|out~112_combout\ = (\a9|out[10]~69_combout\ & (\a9|out~111_combout\ & ((\a9|ShiftLeft0~18_combout\) # (!\a9|out[20]~85_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a9|out[10]~69_combout\,
	datab => \a9|ShiftLeft0~18_combout\,
	datac => \a9|out~111_combout\,
	datad => \a9|out[20]~85_combout\,
	combout => \a9|out~112_combout\);

-- Location: FF_X24_Y17_N17
\a9|out[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \a9|out~112_combout\,
	ena => \a9|out[0]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a9|out\(19));

-- Location: LCCOMB_X23_Y20_N6
\a9|ShiftLeft0~69\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|ShiftLeft0~69_combout\ = (!\a9|Add48~4_combout\ & ((\a9|Add48~2_combout\ & (\a9|ShiftLeft0~16_combout\)) # (!\a9|Add48~2_combout\ & ((\a9|ShiftLeft0~17_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a9|Add48~4_combout\,
	datab => \a9|ShiftLeft0~16_combout\,
	datac => \a9|Add48~2_combout\,
	datad => \a9|ShiftLeft0~17_combout\,
	combout => \a9|ShiftLeft0~69_combout\);

-- Location: LCCOMB_X21_Y16_N22
\a9|ShiftLeft0~53\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|ShiftLeft0~53_combout\ = (\a9|Add47~0_combout\ & (\a8|out\(18))) # (!\a9|Add47~0_combout\ & ((\a8|out\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a8|out\(18),
	datac => \a9|Add47~0_combout\,
	datad => \a8|out\(20),
	combout => \a9|ShiftLeft0~53_combout\);

-- Location: LCCOMB_X21_Y16_N14
\a9|ShiftLeft0~65\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|ShiftLeft0~65_combout\ = (\a9|Add48~2_combout\ & (\a9|ShiftLeft0~54_combout\)) # (!\a9|Add48~2_combout\ & ((\a9|ShiftLeft0~53_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a9|ShiftLeft0~54_combout\,
	datac => \a9|ShiftLeft0~53_combout\,
	datad => \a9|Add48~2_combout\,
	combout => \a9|ShiftLeft0~65_combout\);

-- Location: LCCOMB_X24_Y17_N0
\a9|out~113\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|out~113_combout\ = (\a9|out[20]~85_combout\ & (((\a9|out[20]~86_combout\)))) # (!\a9|out[20]~85_combout\ & ((\a9|out[20]~86_combout\ & ((\a9|ShiftRight0~29_combout\))) # (!\a9|out[20]~86_combout\ & (\a9|ShiftLeft0~65_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a9|ShiftLeft0~65_combout\,
	datab => \a9|out[20]~85_combout\,
	datac => \a9|ShiftRight0~29_combout\,
	datad => \a9|out[20]~86_combout\,
	combout => \a9|out~113_combout\);

-- Location: LCCOMB_X24_Y17_N26
\a9|out~114\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|out~114_combout\ = (\a9|out[20]~85_combout\ & ((\a9|out~113_combout\ & ((\a9|ShiftLeft0~69_combout\))) # (!\a9|out~113_combout\ & (\a9|ShiftLeft0~32_combout\)))) # (!\a9|out[20]~85_combout\ & (((\a9|out~113_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a9|ShiftLeft0~32_combout\,
	datab => \a9|out[20]~85_combout\,
	datac => \a9|ShiftLeft0~69_combout\,
	datad => \a9|out~113_combout\,
	combout => \a9|out~114_combout\);

-- Location: LCCOMB_X24_Y17_N22
\a9|out~115\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|out~115_combout\ = (\a9|out[10]~69_combout\ & (\a9|out~114_combout\ & ((\a9|ShiftLeft0~18_combout\) # (!\a9|out[20]~85_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a9|out[10]~69_combout\,
	datab => \a9|ShiftLeft0~18_combout\,
	datac => \a9|out~114_combout\,
	datad => \a9|out[20]~85_combout\,
	combout => \a9|out~115_combout\);

-- Location: FF_X24_Y17_N23
\a9|out[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \a9|out~115_combout\,
	ena => \a9|out[0]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a9|out\(20));

-- Location: LCCOMB_X20_Y17_N20
\a9|ShiftLeft0~70\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|ShiftLeft0~70_combout\ = (!\a9|Add48~4_combout\ & ((\a9|Add48~2_combout\ & ((\a9|ShiftLeft0~8_combout\))) # (!\a9|Add48~2_combout\ & (\a9|ShiftLeft0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a9|ShiftLeft0~9_combout\,
	datab => \a9|Add48~4_combout\,
	datac => \a9|Add48~2_combout\,
	datad => \a9|ShiftLeft0~8_combout\,
	combout => \a9|ShiftLeft0~70_combout\);

-- Location: LCCOMB_X20_Y16_N12
\a9|ShiftLeft0~59\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|ShiftLeft0~59_combout\ = (\a9|Add47~0_combout\ & (\a8|out\(19))) # (!\a9|Add47~0_combout\ & ((\a8|out\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a8|out\(19),
	datac => \a8|out\(21),
	datad => \a9|Add47~0_combout\,
	combout => \a9|ShiftLeft0~59_combout\);

-- Location: LCCOMB_X21_Y16_N8
\a9|ShiftLeft0~66\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|ShiftLeft0~66_combout\ = (\a9|Add48~2_combout\ & ((\a9|ShiftLeft0~57_combout\))) # (!\a9|Add48~2_combout\ & (\a9|ShiftLeft0~59_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a9|ShiftLeft0~59_combout\,
	datac => \a9|ShiftLeft0~57_combout\,
	datad => \a9|Add48~2_combout\,
	combout => \a9|ShiftLeft0~66_combout\);

-- Location: LCCOMB_X24_Y17_N12
\a9|out~116\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|out~116_combout\ = (\a9|out[20]~86_combout\ & (((\a9|out[20]~85_combout\)))) # (!\a9|out[20]~86_combout\ & ((\a9|out[20]~85_combout\ & (\a9|ShiftLeft0~28_combout\)) # (!\a9|out[20]~85_combout\ & ((\a9|ShiftLeft0~66_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a9|ShiftLeft0~28_combout\,
	datab => \a9|out[20]~86_combout\,
	datac => \a9|ShiftLeft0~66_combout\,
	datad => \a9|out[20]~85_combout\,
	combout => \a9|out~116_combout\);

-- Location: LCCOMB_X24_Y17_N14
\a9|out~117\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|out~117_combout\ = (\a9|out[20]~86_combout\ & ((\a9|out~116_combout\ & ((\a9|ShiftLeft0~70_combout\))) # (!\a9|out~116_combout\ & (\a9|ShiftRight0~7_combout\)))) # (!\a9|out[20]~86_combout\ & (((\a9|out~116_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a9|ShiftRight0~7_combout\,
	datab => \a9|out[20]~86_combout\,
	datac => \a9|ShiftLeft0~70_combout\,
	datad => \a9|out~116_combout\,
	combout => \a9|out~117_combout\);

-- Location: LCCOMB_X24_Y17_N24
\a9|out~118\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|out~118_combout\ = (\a9|out[10]~69_combout\ & (\a9|out~117_combout\ & ((\a9|ShiftLeft0~18_combout\) # (!\a9|out[20]~85_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a9|out[10]~69_combout\,
	datab => \a9|ShiftLeft0~18_combout\,
	datac => \a9|out~117_combout\,
	datad => \a9|out[20]~85_combout\,
	combout => \a9|out~118_combout\);

-- Location: FF_X24_Y17_N25
\a9|out[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \a9|out~118_combout\,
	ena => \a9|out[0]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a9|out\(21));

-- Location: LCCOMB_X24_Y17_N20
\sq3|Add18~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sq3|Add18~1_combout\ = (\a9|out\(18) & ((\a9|out\(19) & ((!\a9|out\(21)) # (!\a9|out\(20)))) # (!\a9|out\(19) & ((\a9|out\(20)) # (\a9|out\(21)))))) # (!\a9|out\(18) & ((\a9|out\(19) & ((\a9|out\(20)) # (\a9|out\(21)))) # (!\a9|out\(19) & (\a9|out\(20) & 
-- \a9|out\(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a9|out\(18),
	datab => \a9|out\(19),
	datac => \a9|out\(20),
	datad => \a9|out\(21),
	combout => \sq3|Add18~1_combout\);

-- Location: LCCOMB_X24_Y17_N2
\sq3|Add18~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sq3|Add18~2_combout\ = \a9|out\(20) $ (\a9|out\(19) $ (\a9|out\(18) $ (\a9|out\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a9|out\(20),
	datab => \a9|out\(19),
	datac => \a9|out\(18),
	datad => \a9|out\(21),
	combout => \sq3|Add18~2_combout\);

-- Location: LCCOMB_X22_Y15_N20
\sq3|Add14~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sq3|Add14~1_combout\ = \a9|out\(15) $ (\a9|out\(16) $ (\a9|out\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a9|out\(15),
	datac => \a9|out\(16),
	datad => \a9|out\(17),
	combout => \sq3|Add14~1_combout\);

-- Location: LCCOMB_X23_Y19_N10
\sq3|Add16~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sq3|Add16~0_combout\ = (\sq3|Add18~2_combout\ & (\sq3|Add14~1_combout\ $ (VCC))) # (!\sq3|Add18~2_combout\ & (\sq3|Add14~1_combout\ & VCC))
-- \sq3|Add16~1\ = CARRY((\sq3|Add18~2_combout\ & \sq3|Add14~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sq3|Add18~2_combout\,
	datab => \sq3|Add14~1_combout\,
	datad => VCC,
	combout => \sq3|Add16~0_combout\,
	cout => \sq3|Add16~1\);

-- Location: LCCOMB_X23_Y19_N12
\sq3|Add16~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sq3|Add16~2_combout\ = (\sq3|Add14~0_combout\ & ((\sq3|Add18~1_combout\ & (\sq3|Add16~1\ & VCC)) # (!\sq3|Add18~1_combout\ & (!\sq3|Add16~1\)))) # (!\sq3|Add14~0_combout\ & ((\sq3|Add18~1_combout\ & (!\sq3|Add16~1\)) # (!\sq3|Add18~1_combout\ & 
-- ((\sq3|Add16~1\) # (GND)))))
-- \sq3|Add16~3\ = CARRY((\sq3|Add14~0_combout\ & (!\sq3|Add18~1_combout\ & !\sq3|Add16~1\)) # (!\sq3|Add14~0_combout\ & ((!\sq3|Add16~1\) # (!\sq3|Add18~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sq3|Add14~0_combout\,
	datab => \sq3|Add18~1_combout\,
	datad => VCC,
	cin => \sq3|Add16~1\,
	combout => \sq3|Add16~2_combout\,
	cout => \sq3|Add16~3\);

-- Location: LCCOMB_X20_Y19_N22
\a9|ShiftLeft0~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|ShiftLeft0~44_combout\ = (\a9|Add47~0_combout\ & ((\a8|out\(20)))) # (!\a9|Add47~0_combout\ & (\a8|out\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a8|out\(22),
	datac => \a8|out\(20),
	datad => \a9|Add47~0_combout\,
	combout => \a9|ShiftLeft0~44_combout\);

-- Location: LCCOMB_X22_Y19_N28
\a9|out[26]~93\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|out[26]~93_combout\ = (\a9|Add48~6_combout\) # ((!\a9|Add48~4_combout\ & \a9|Add48~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a9|Add48~6_combout\,
	datac => \a9|Add48~4_combout\,
	datad => \a9|Add48~2_combout\,
	combout => \a9|out[26]~93_combout\);

-- Location: LCCOMB_X21_Y19_N22
\a9|ShiftLeft0~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|ShiftLeft0~62_combout\ = (\a8|out\(24) & \a9|Add47~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a8|out\(24),
	datac => \a9|Add47~0_combout\,
	combout => \a9|ShiftLeft0~62_combout\);

-- Location: LCCOMB_X23_Y19_N28
\a9|out[26]~94\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|out[26]~94_combout\ = (\a9|Add48~4_combout\) # (\a9|Add48~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a9|Add48~4_combout\,
	datad => \a9|Add48~6_combout\,
	combout => \a9|out[26]~94_combout\);

-- Location: LCCOMB_X22_Y19_N2
\a9|out~102\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|out~102_combout\ = (\a9|out[26]~93_combout\ & (((\a9|out[26]~94_combout\)))) # (!\a9|out[26]~93_combout\ & ((\a9|out[26]~94_combout\ & (\a9|ShiftLeft0~61_combout\)) # (!\a9|out[26]~94_combout\ & ((\a9|ShiftLeft0~62_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a9|ShiftLeft0~61_combout\,
	datab => \a9|ShiftLeft0~62_combout\,
	datac => \a9|out[26]~93_combout\,
	datad => \a9|out[26]~94_combout\,
	combout => \a9|out~102_combout\);

-- Location: LCCOMB_X22_Y19_N24
\a9|out~103\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|out~103_combout\ = (\a9|out[26]~93_combout\ & ((\a9|out~102_combout\ & ((\a9|ShiftLeft0~21_combout\))) # (!\a9|out~102_combout\ & (\a9|ShiftLeft0~44_combout\)))) # (!\a9|out[26]~93_combout\ & (((\a9|out~102_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a9|ShiftLeft0~44_combout\,
	datab => \a9|out[26]~93_combout\,
	datac => \a9|ShiftLeft0~21_combout\,
	datad => \a9|out~102_combout\,
	combout => \a9|out~103_combout\);

-- Location: LCCOMB_X22_Y19_N22
\a9|out~128\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|out~128_combout\ = (\a9|Add47~12_combout\ & (\a9|out~103_combout\ & (!\a9|Add39~8_combout\ & \a9|ShiftLeft0~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a9|Add47~12_combout\,
	datab => \a9|out~103_combout\,
	datac => \a9|Add39~8_combout\,
	datad => \a9|ShiftLeft0~18_combout\,
	combout => \a9|out~128_combout\);

-- Location: FF_X22_Y19_N23
\a9|out[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \a9|out~128_combout\,
	ena => \a9|out[0]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a9|out\(26));

-- Location: LCCOMB_X21_Y19_N26
\a9|ShiftLeft0~64\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|ShiftLeft0~64_combout\ = (\a8|out\(25) & \a9|Add47~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a8|out\(25),
	datac => \a9|Add47~0_combout\,
	combout => \a9|ShiftLeft0~64_combout\);

-- Location: LCCOMB_X21_Y19_N4
\a9|ShiftLeft0~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|ShiftLeft0~50_combout\ = (\a9|Add47~0_combout\ & ((\a8|out\(21)))) # (!\a9|Add47~0_combout\ & (\a8|out\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a8|out\(23),
	datac => \a9|Add47~0_combout\,
	datad => \a8|out\(21),
	combout => \a9|ShiftLeft0~50_combout\);

-- Location: LCCOMB_X21_Y19_N28
\a9|out~105\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|out~105_combout\ = (\a9|out[26]~94_combout\ & (((\a9|out[26]~93_combout\)))) # (!\a9|out[26]~94_combout\ & ((\a9|out[26]~93_combout\ & ((\a9|ShiftLeft0~50_combout\))) # (!\a9|out[26]~93_combout\ & (\a9|ShiftLeft0~64_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a9|ShiftLeft0~64_combout\,
	datab => \a9|ShiftLeft0~50_combout\,
	datac => \a9|out[26]~94_combout\,
	datad => \a9|out[26]~93_combout\,
	combout => \a9|out~105_combout\);

-- Location: LCCOMB_X21_Y19_N6
\a9|out~106\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|out~106_combout\ = (\a9|out[26]~94_combout\ & ((\a9|out~105_combout\ & ((\a9|ShiftLeft0~25_combout\))) # (!\a9|out~105_combout\ & (\a9|ShiftLeft0~63_combout\)))) # (!\a9|out[26]~94_combout\ & (((\a9|out~105_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a9|out[26]~94_combout\,
	datab => \a9|ShiftLeft0~63_combout\,
	datac => \a9|ShiftLeft0~25_combout\,
	datad => \a9|out~105_combout\,
	combout => \a9|out~106_combout\);

-- Location: LCCOMB_X22_Y19_N18
\a9|out~129\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|out~129_combout\ = (\a9|Add47~12_combout\ & (!\a9|Add39~8_combout\ & (\a9|out~106_combout\ & \a9|ShiftLeft0~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a9|Add47~12_combout\,
	datab => \a9|Add39~8_combout\,
	datac => \a9|out~106_combout\,
	datad => \a9|ShiftLeft0~18_combout\,
	combout => \a9|out~129_combout\);

-- Location: FF_X22_Y19_N19
\a9|out[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \a9|out~129_combout\,
	ena => \a9|out[0]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a9|out\(27));

-- Location: LCCOMB_X21_Y19_N24
\a9|ShiftLeft0~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|ShiftLeft0~56_combout\ = (\a9|Add47~0_combout\ & (\a8|out\(22))) # (!\a9|Add47~0_combout\ & ((\a8|out\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a8|out\(22),
	datab => \a9|Add47~0_combout\,
	datac => \a8|out\(24),
	combout => \a9|ShiftLeft0~56_combout\);

-- Location: LCCOMB_X22_Y19_N4
\a9|out[28]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|out[28]~8_combout\ = (\a9|Add48~4_combout\ & (\a9|ShiftLeft0~65_combout\)) # (!\a9|Add48~4_combout\ & ((\a9|ShiftLeft0~56_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a9|ShiftLeft0~65_combout\,
	datab => \a9|Add48~4_combout\,
	datad => \a9|ShiftLeft0~56_combout\,
	combout => \a9|out[28]~8_combout\);

-- Location: LCCOMB_X22_Y19_N12
\a9|out[31]~104\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|out[31]~104_combout\ = ((\a9|Add39~8_combout\) # (!\a9|ShiftLeft0~18_combout\)) # (!\a9|Add47~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a9|Add47~12_combout\,
	datac => \a9|Add39~8_combout\,
	datad => \a9|ShiftLeft0~18_combout\,
	combout => \a9|out[31]~104_combout\);

-- Location: LCCOMB_X22_Y19_N8
\a9|out[31]~130\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|out[31]~130_combout\ = (\a9|out[31]~104_combout\) # ((!\a9|Add48~6_combout\ & (!\a9|Add48~2_combout\ & !\a9|Add48~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a9|Add48~6_combout\,
	datab => \a9|Add48~2_combout\,
	datac => \a9|Add48~4_combout\,
	datad => \a9|out[31]~104_combout\,
	combout => \a9|out[31]~130_combout\);

-- Location: FF_X22_Y19_N5
\a9|out[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \a9|out[28]~8_combout\,
	asdata => \a9|ShiftLeft0~33_combout\,
	sclr => \a9|out[31]~130_combout\,
	sload => \a9|Add48~6_combout\,
	ena => \a9|out[0]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a9|out\(28));

-- Location: LCCOMB_X21_Y19_N10
\a9|ShiftLeft0~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|ShiftLeft0~60_combout\ = (\a9|Add47~0_combout\ & (\a8|out\(23))) # (!\a9|Add47~0_combout\ & ((\a8|out\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a8|out\(23),
	datab => \a9|Add47~0_combout\,
	datac => \a8|out\(25),
	combout => \a9|ShiftLeft0~60_combout\);

-- Location: LCCOMB_X22_Y19_N10
\a9|out[29]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|out[29]~9_combout\ = (\a9|Add48~4_combout\ & ((\a9|ShiftLeft0~66_combout\))) # (!\a9|Add48~4_combout\ & (\a9|ShiftLeft0~60_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a9|ShiftLeft0~60_combout\,
	datab => \a9|Add48~4_combout\,
	datad => \a9|ShiftLeft0~66_combout\,
	combout => \a9|out[29]~9_combout\);

-- Location: FF_X22_Y19_N11
\a9|out[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \a9|out[29]~9_combout\,
	asdata => \a9|ShiftLeft0~29_combout\,
	sclr => \a9|out[31]~130_combout\,
	sload => \a9|Add48~6_combout\,
	ena => \a9|out[0]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a9|out\(29));

-- Location: LCCOMB_X22_Y19_N0
\sq3|Add26~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sq3|Add26~1_combout\ = (\a9|out\(26) & ((\a9|out\(27) & ((!\a9|out\(29)) # (!\a9|out\(28)))) # (!\a9|out\(27) & ((\a9|out\(28)) # (\a9|out\(29)))))) # (!\a9|out\(26) & ((\a9|out\(27) & ((\a9|out\(28)) # (\a9|out\(29)))) # (!\a9|out\(27) & (\a9|out\(28) & 
-- \a9|out\(29)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a9|out\(26),
	datab => \a9|out\(27),
	datac => \a9|out\(28),
	datad => \a9|out\(29),
	combout => \sq3|Add26~1_combout\);

-- Location: LCCOMB_X24_Y16_N8
\a9|ShiftLeft0~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|ShiftLeft0~52_combout\ = (!\a9|Add48~4_combout\ & ((\a9|Add48~2_combout\ & (\a9|ShiftLeft0~15_combout\)) # (!\a9|Add48~2_combout\ & ((\a9|ShiftLeft0~22_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a9|ShiftLeft0~15_combout\,
	datab => \a9|ShiftLeft0~22_combout\,
	datac => \a9|Add48~2_combout\,
	datad => \a9|Add48~4_combout\,
	combout => \a9|ShiftLeft0~52_combout\);

-- Location: LCCOMB_X21_Y19_N2
\a9|ShiftLeft0~51\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|ShiftLeft0~51_combout\ = (\a9|Add48~2_combout\ & ((\a9|ShiftLeft0~49_combout\))) # (!\a9|Add48~2_combout\ & (\a9|ShiftLeft0~50_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a9|ShiftLeft0~50_combout\,
	datac => \a9|ShiftLeft0~49_combout\,
	datad => \a9|Add48~2_combout\,
	combout => \a9|ShiftLeft0~51_combout\);

-- Location: LCCOMB_X24_Y19_N2
\a9|out~90\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|out~90_combout\ = (\a9|out[20]~86_combout\ & (((\a9|out[20]~85_combout\)))) # (!\a9|out[20]~86_combout\ & ((\a9|out[20]~85_combout\ & ((\a9|ShiftLeft0~48_combout\))) # (!\a9|out[20]~85_combout\ & (\a9|ShiftLeft0~51_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a9|ShiftLeft0~51_combout\,
	datab => \a9|ShiftLeft0~48_combout\,
	datac => \a9|out[20]~86_combout\,
	datad => \a9|out[20]~85_combout\,
	combout => \a9|out~90_combout\);

-- Location: LCCOMB_X24_Y19_N6
\a9|out~91\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|out~91_combout\ = (\a9|out[20]~86_combout\ & ((\a9|out~90_combout\ & ((\a9|ShiftLeft0~52_combout\))) # (!\a9|out~90_combout\ & (\a9|ShiftRight0~46_combout\)))) # (!\a9|out[20]~86_combout\ & (((\a9|out~90_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a9|ShiftRight0~46_combout\,
	datab => \a9|ShiftLeft0~52_combout\,
	datac => \a9|out[20]~86_combout\,
	datad => \a9|out~90_combout\,
	combout => \a9|out~91_combout\);

-- Location: LCCOMB_X24_Y19_N12
\a9|out~92\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|out~92_combout\ = (\a9|out[10]~69_combout\ & (\a9|out~91_combout\ & ((\a9|ShiftLeft0~18_combout\) # (!\a9|out[20]~85_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a9|out[10]~69_combout\,
	datab => \a9|out[20]~85_combout\,
	datac => \a9|ShiftLeft0~18_combout\,
	datad => \a9|out~91_combout\,
	combout => \a9|out~92_combout\);

-- Location: FF_X24_Y19_N13
\a9|out[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \a9|out~92_combout\,
	ena => \a9|out[0]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a9|out\(23));

-- Location: LCCOMB_X23_Y19_N30
\a9|out~95\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|out~95_combout\ = (\a9|out[26]~93_combout\ & (((\a9|out[26]~94_combout\)))) # (!\a9|out[26]~93_combout\ & ((\a9|out[26]~94_combout\ & ((\a9|ShiftLeft0~55_combout\))) # (!\a9|out[26]~94_combout\ & (\a9|ShiftLeft0~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a9|ShiftLeft0~56_combout\,
	datab => \a9|out[26]~93_combout\,
	datac => \a9|ShiftLeft0~55_combout\,
	datad => \a9|out[26]~94_combout\,
	combout => \a9|out~95_combout\);

-- Location: LCCOMB_X24_Y19_N30
\a9|out~96\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|out~96_combout\ = (\a9|out[26]~93_combout\ & ((\a9|out~95_combout\ & ((\a9|ShiftLeft0~36_combout\))) # (!\a9|out~95_combout\ & (\a9|ShiftLeft0~53_combout\)))) # (!\a9|out[26]~93_combout\ & (((\a9|out~95_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a9|ShiftLeft0~53_combout\,
	datab => \a9|out[26]~93_combout\,
	datac => \a9|ShiftLeft0~36_combout\,
	datad => \a9|out~95_combout\,
	combout => \a9|out~96_combout\);

-- Location: LCCOMB_X24_Y16_N16
\a9|out~127\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|out~127_combout\ = (!\a9|Add47~2_combout\ & (!\a9|Add47~0_combout\ & (!\a9|Add47~4_combout\ & \a9|out[0]~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a9|Add47~2_combout\,
	datab => \a9|Add47~0_combout\,
	datac => \a9|Add47~4_combout\,
	datad => \a9|out[0]~27_combout\,
	combout => \a9|out~127_combout\);

-- Location: LCCOMB_X24_Y19_N20
\a9|out~97\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|out~97_combout\ = (\a9|Add39~8_combout\) # ((\a9|Add47~12_combout\ & (!\a9|ShiftLeft0~18_combout\)) # (!\a9|Add47~12_combout\ & ((!\a9|out~127_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a9|Add39~8_combout\,
	datab => \a9|Add47~12_combout\,
	datac => \a9|ShiftLeft0~18_combout\,
	datad => \a9|out~127_combout\,
	combout => \a9|out~97_combout\);

-- Location: LCCOMB_X24_Y19_N24
\a9|out~98\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|out~98_combout\ = (!\a9|out~97_combout\ & ((\a9|Add47~12_combout\ & ((\a9|out~96_combout\))) # (!\a9|Add47~12_combout\ & (\a8|out\(24)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a8|out\(24),
	datab => \a9|Add47~12_combout\,
	datac => \a9|out~96_combout\,
	datad => \a9|out~97_combout\,
	combout => \a9|out~98_combout\);

-- Location: FF_X24_Y19_N25
\a9|out[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \a9|out~98_combout\,
	ena => \a9|out[0]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a9|out\(24));

-- Location: LCCOMB_X23_Y19_N18
\a9|ShiftLeft0~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|ShiftLeft0~46_combout\ = (!\a9|Add48~4_combout\ & ((\a9|Add48~2_combout\ & (\a9|ShiftLeft0~12_combout\)) # (!\a9|Add48~2_combout\ & ((\a9|ShiftLeft0~13_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a9|Add48~4_combout\,
	datab => \a9|Add48~2_combout\,
	datac => \a9|ShiftLeft0~12_combout\,
	datad => \a9|ShiftLeft0~13_combout\,
	combout => \a9|ShiftLeft0~46_combout\);

-- Location: LCCOMB_X24_Y19_N14
\a9|ShiftLeft0~45\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|ShiftLeft0~45_combout\ = (\a9|Add48~2_combout\ & (\a9|ShiftLeft0~43_combout\)) # (!\a9|Add48~2_combout\ & ((\a9|ShiftLeft0~44_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a9|ShiftLeft0~43_combout\,
	datac => \a9|Add48~2_combout\,
	datad => \a9|ShiftLeft0~44_combout\,
	combout => \a9|ShiftLeft0~45_combout\);

-- Location: LCCOMB_X24_Y19_N0
\a9|out~87\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|out~87_combout\ = (\a9|out[20]~86_combout\ & ((\a9|ShiftRight0~14_combout\) # ((\a9|out[20]~85_combout\)))) # (!\a9|out[20]~86_combout\ & (((\a9|ShiftLeft0~45_combout\ & !\a9|out[20]~85_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a9|ShiftRight0~14_combout\,
	datab => \a9|ShiftLeft0~45_combout\,
	datac => \a9|out[20]~86_combout\,
	datad => \a9|out[20]~85_combout\,
	combout => \a9|out~87_combout\);

-- Location: LCCOMB_X24_Y19_N18
\a9|out~88\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|out~88_combout\ = (\a9|out[20]~85_combout\ & ((\a9|out~87_combout\ & ((\a9|ShiftLeft0~46_combout\))) # (!\a9|out~87_combout\ & (\a9|ShiftLeft0~41_combout\)))) # (!\a9|out[20]~85_combout\ & (((\a9|out~87_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a9|ShiftLeft0~41_combout\,
	datab => \a9|out[20]~85_combout\,
	datac => \a9|ShiftLeft0~46_combout\,
	datad => \a9|out~87_combout\,
	combout => \a9|out~88_combout\);

-- Location: LCCOMB_X24_Y19_N22
\a9|out~89\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|out~89_combout\ = (\a9|out[10]~69_combout\ & (\a9|out~88_combout\ & ((\a9|ShiftLeft0~18_combout\) # (!\a9|out[20]~85_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a9|out[10]~69_combout\,
	datab => \a9|out[20]~85_combout\,
	datac => \a9|ShiftLeft0~18_combout\,
	datad => \a9|out~88_combout\,
	combout => \a9|out~89_combout\);

-- Location: FF_X24_Y19_N23
\a9|out[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \a9|out~89_combout\,
	ena => \a9|out[0]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a9|out\(22));

-- Location: LCCOMB_X24_Y19_N16
\a9|out~99\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|out~99_combout\ = (\a9|out[26]~93_combout\ & ((\a9|ShiftLeft0~59_combout\) # ((\a9|out[26]~94_combout\)))) # (!\a9|out[26]~93_combout\ & (((\a9|ShiftLeft0~60_combout\ & !\a9|out[26]~94_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a9|ShiftLeft0~59_combout\,
	datab => \a9|out[26]~93_combout\,
	datac => \a9|ShiftLeft0~60_combout\,
	datad => \a9|out[26]~94_combout\,
	combout => \a9|out~99_combout\);

-- Location: LCCOMB_X24_Y19_N4
\a9|out~100\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|out~100_combout\ = (\a9|out[26]~94_combout\ & ((\a9|out~99_combout\ & (\a9|ShiftLeft0~38_combout\)) # (!\a9|out~99_combout\ & ((\a9|ShiftLeft0~58_combout\))))) # (!\a9|out[26]~94_combout\ & (((\a9|out~99_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a9|ShiftLeft0~38_combout\,
	datab => \a9|out[26]~94_combout\,
	datac => \a9|ShiftLeft0~58_combout\,
	datad => \a9|out~99_combout\,
	combout => \a9|out~100_combout\);

-- Location: LCCOMB_X24_Y19_N10
\a9|out~101\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|out~101_combout\ = (!\a9|out~97_combout\ & ((\a9|Add47~12_combout\ & ((\a9|out~100_combout\))) # (!\a9|Add47~12_combout\ & (\a8|out\(25)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a8|out\(25),
	datab => \a9|Add47~12_combout\,
	datac => \a9|out~100_combout\,
	datad => \a9|out~97_combout\,
	combout => \a9|out~101_combout\);

-- Location: FF_X24_Y19_N11
\a9|out[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \a9|out~101_combout\,
	ena => \a9|out[0]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a9|out\(25));

-- Location: LCCOMB_X24_Y19_N8
\sq3|Add22~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sq3|Add22~1_combout\ = (\a9|out\(23) & ((\a9|out\(24) & ((!\a9|out\(25)) # (!\a9|out\(22)))) # (!\a9|out\(24) & ((\a9|out\(22)) # (\a9|out\(25)))))) # (!\a9|out\(23) & ((\a9|out\(24) & ((\a9|out\(22)) # (\a9|out\(25)))) # (!\a9|out\(24) & (\a9|out\(22) & 
-- \a9|out\(25)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a9|out\(23),
	datab => \a9|out\(24),
	datac => \a9|out\(22),
	datad => \a9|out\(25),
	combout => \sq3|Add22~1_combout\);

-- Location: LCCOMB_X22_Y19_N16
\sq3|Add26~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sq3|Add26~2_combout\ = \a9|out\(26) $ (\a9|out\(27) $ (\a9|out\(29) $ (\a9|out\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a9|out\(26),
	datab => \a9|out\(27),
	datac => \a9|out\(29),
	datad => \a9|out\(28),
	combout => \sq3|Add26~2_combout\);

-- Location: LCCOMB_X24_Y19_N28
\sq3|Add22~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sq3|Add22~2_combout\ = \a9|out\(23) $ (\a9|out\(24) $ (\a9|out\(22) $ (\a9|out\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a9|out\(23),
	datab => \a9|out\(24),
	datac => \a9|out\(22),
	datad => \a9|out\(25),
	combout => \sq3|Add22~2_combout\);

-- Location: LCCOMB_X23_Y19_N20
\sq3|Add24~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sq3|Add24~0_combout\ = (\sq3|Add26~2_combout\ & (\sq3|Add22~2_combout\ $ (VCC))) # (!\sq3|Add26~2_combout\ & (\sq3|Add22~2_combout\ & VCC))
-- \sq3|Add24~1\ = CARRY((\sq3|Add26~2_combout\ & \sq3|Add22~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sq3|Add26~2_combout\,
	datab => \sq3|Add22~2_combout\,
	datad => VCC,
	combout => \sq3|Add24~0_combout\,
	cout => \sq3|Add24~1\);

-- Location: LCCOMB_X23_Y19_N22
\sq3|Add24~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sq3|Add24~2_combout\ = (\sq3|Add26~1_combout\ & ((\sq3|Add22~1_combout\ & (\sq3|Add24~1\ & VCC)) # (!\sq3|Add22~1_combout\ & (!\sq3|Add24~1\)))) # (!\sq3|Add26~1_combout\ & ((\sq3|Add22~1_combout\ & (!\sq3|Add24~1\)) # (!\sq3|Add22~1_combout\ & 
-- ((\sq3|Add24~1\) # (GND)))))
-- \sq3|Add24~3\ = CARRY((\sq3|Add26~1_combout\ & (!\sq3|Add22~1_combout\ & !\sq3|Add24~1\)) # (!\sq3|Add26~1_combout\ & ((!\sq3|Add24~1\) # (!\sq3|Add22~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sq3|Add26~1_combout\,
	datab => \sq3|Add22~1_combout\,
	datad => VCC,
	cin => \sq3|Add24~1\,
	combout => \sq3|Add24~2_combout\,
	cout => \sq3|Add24~3\);

-- Location: LCCOMB_X23_Y19_N0
\sq3|Add20~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sq3|Add20~0_combout\ = (\sq3|Add16~0_combout\ & (\sq3|Add24~0_combout\ $ (VCC))) # (!\sq3|Add16~0_combout\ & (\sq3|Add24~0_combout\ & VCC))
-- \sq3|Add20~1\ = CARRY((\sq3|Add16~0_combout\ & \sq3|Add24~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sq3|Add16~0_combout\,
	datab => \sq3|Add24~0_combout\,
	datad => VCC,
	combout => \sq3|Add20~0_combout\,
	cout => \sq3|Add20~1\);

-- Location: LCCOMB_X23_Y19_N2
\sq3|Add20~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sq3|Add20~2_combout\ = (\sq3|Add16~2_combout\ & ((\sq3|Add24~2_combout\ & (\sq3|Add20~1\ & VCC)) # (!\sq3|Add24~2_combout\ & (!\sq3|Add20~1\)))) # (!\sq3|Add16~2_combout\ & ((\sq3|Add24~2_combout\ & (!\sq3|Add20~1\)) # (!\sq3|Add24~2_combout\ & 
-- ((\sq3|Add20~1\) # (GND)))))
-- \sq3|Add20~3\ = CARRY((\sq3|Add16~2_combout\ & (!\sq3|Add24~2_combout\ & !\sq3|Add20~1\)) # (!\sq3|Add16~2_combout\ & ((!\sq3|Add20~1\) # (!\sq3|Add24~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sq3|Add16~2_combout\,
	datab => \sq3|Add24~2_combout\,
	datad => VCC,
	cin => \sq3|Add20~1\,
	combout => \sq3|Add20~2_combout\,
	cout => \sq3|Add20~3\);

-- Location: LCCOMB_X23_Y15_N20
\sq3|Add28~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sq3|Add28~0_combout\ = (\sq3|Add20~0_combout\ & (\sq3|Add13~0_combout\ $ (VCC))) # (!\sq3|Add20~0_combout\ & (\sq3|Add13~0_combout\ & VCC))
-- \sq3|Add28~1\ = CARRY((\sq3|Add20~0_combout\ & \sq3|Add13~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sq3|Add20~0_combout\,
	datab => \sq3|Add13~0_combout\,
	datad => VCC,
	combout => \sq3|Add28~0_combout\,
	cout => \sq3|Add28~1\);

-- Location: LCCOMB_X23_Y15_N22
\sq3|Add28~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sq3|Add28~2_combout\ = (\sq3|Add13~2_combout\ & ((\sq3|Add20~2_combout\ & (\sq3|Add28~1\ & VCC)) # (!\sq3|Add20~2_combout\ & (!\sq3|Add28~1\)))) # (!\sq3|Add13~2_combout\ & ((\sq3|Add20~2_combout\ & (!\sq3|Add28~1\)) # (!\sq3|Add20~2_combout\ & 
-- ((\sq3|Add28~1\) # (GND)))))
-- \sq3|Add28~3\ = CARRY((\sq3|Add13~2_combout\ & (!\sq3|Add20~2_combout\ & !\sq3|Add28~1\)) # (!\sq3|Add13~2_combout\ & ((!\sq3|Add28~1\) # (!\sq3|Add20~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sq3|Add13~2_combout\,
	datab => \sq3|Add20~2_combout\,
	datad => VCC,
	cin => \sq3|Add28~1\,
	combout => \sq3|Add28~2_combout\,
	cout => \sq3|Add28~3\);

-- Location: LCCOMB_X22_Y19_N6
\a9|out[30]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|out[30]~6_combout\ = (\a9|Add48~4_combout\ & (\a9|ShiftLeft0~45_combout\)) # (!\a9|Add48~4_combout\ & ((\a9|ShiftLeft0~62_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a9|ShiftLeft0~45_combout\,
	datab => \a9|Add48~4_combout\,
	datad => \a9|ShiftLeft0~62_combout\,
	combout => \a9|out[30]~6_combout\);

-- Location: FF_X22_Y19_N7
\a9|out[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \a9|out[30]~6_combout\,
	asdata => \a9|ShiftLeft0~42_combout\,
	sclr => \a9|out[31]~130_combout\,
	sload => \a9|Add48~6_combout\,
	ena => \a9|out[0]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a9|out\(30));

-- Location: LCCOMB_X22_Y19_N30
\a9|out[31]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|out[31]~7_combout\ = (\a9|Add48~4_combout\ & ((\a9|ShiftLeft0~51_combout\))) # (!\a9|Add48~4_combout\ & (\a9|ShiftLeft0~64_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a9|ShiftLeft0~64_combout\,
	datab => \a9|Add48~4_combout\,
	datad => \a9|ShiftLeft0~51_combout\,
	combout => \a9|out[31]~7_combout\);

-- Location: FF_X22_Y19_N31
\a9|out[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \a9|out[31]~7_combout\,
	asdata => \a9|ShiftLeft0~71_combout\,
	sclr => \a9|out[31]~130_combout\,
	sload => \a9|Add48~6_combout\,
	ena => \a9|out[0]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a9|out\(31));

-- Location: LCCOMB_X23_Y15_N2
\sq3|Add29~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sq3|Add29~1_cout\ = CARRY(\a9|out\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a9|out\(31),
	datad => VCC,
	cout => \sq3|Add29~1_cout\);

-- Location: LCCOMB_X23_Y15_N4
\sq3|Add29~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sq3|Add29~2_combout\ = (\sq3|Add28~0_combout\ & ((\a9|out\(30) & (\sq3|Add29~1_cout\ & VCC)) # (!\a9|out\(30) & (!\sq3|Add29~1_cout\)))) # (!\sq3|Add28~0_combout\ & ((\a9|out\(30) & (!\sq3|Add29~1_cout\)) # (!\a9|out\(30) & ((\sq3|Add29~1_cout\) # 
-- (GND)))))
-- \sq3|Add29~3\ = CARRY((\sq3|Add28~0_combout\ & (!\a9|out\(30) & !\sq3|Add29~1_cout\)) # (!\sq3|Add28~0_combout\ & ((!\sq3|Add29~1_cout\) # (!\a9|out\(30)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sq3|Add28~0_combout\,
	datab => \a9|out\(30),
	datad => VCC,
	cin => \sq3|Add29~1_cout\,
	combout => \sq3|Add29~2_combout\,
	cout => \sq3|Add29~3\);

-- Location: LCCOMB_X23_Y15_N6
\sq3|Add29~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sq3|Add29~4_combout\ = (\sq3|Add28~2_combout\ & (\sq3|Add29~3\ $ (GND))) # (!\sq3|Add28~2_combout\ & (!\sq3|Add29~3\ & VCC))
-- \sq3|Add29~5\ = CARRY((\sq3|Add28~2_combout\ & !\sq3|Add29~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sq3|Add28~2_combout\,
	datad => VCC,
	cin => \sq3|Add29~3\,
	combout => \sq3|Add29~4_combout\,
	cout => \sq3|Add29~5\);

-- Location: LCCOMB_X22_Y19_N14
\sq3|Add26~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sq3|Add26~0_combout\ = (\a9|out\(26) & (\a9|out\(27) & (\a9|out\(28) & \a9|out\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a9|out\(26),
	datab => \a9|out\(27),
	datac => \a9|out\(28),
	datad => \a9|out\(29),
	combout => \sq3|Add26~0_combout\);

-- Location: LCCOMB_X24_Y19_N26
\sq3|Add22~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sq3|Add22~0_combout\ = (\a9|out\(23) & (\a9|out\(24) & (\a9|out\(22) & \a9|out\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a9|out\(23),
	datab => \a9|out\(24),
	datac => \a9|out\(22),
	datad => \a9|out\(25),
	combout => \sq3|Add22~0_combout\);

-- Location: LCCOMB_X23_Y19_N24
\sq3|Add24~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sq3|Add24~4_combout\ = ((\sq3|Add26~0_combout\ $ (\sq3|Add22~0_combout\ $ (!\sq3|Add24~3\)))) # (GND)
-- \sq3|Add24~5\ = CARRY((\sq3|Add26~0_combout\ & ((\sq3|Add22~0_combout\) # (!\sq3|Add24~3\))) # (!\sq3|Add26~0_combout\ & (\sq3|Add22~0_combout\ & !\sq3|Add24~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sq3|Add26~0_combout\,
	datab => \sq3|Add22~0_combout\,
	datad => VCC,
	cin => \sq3|Add24~3\,
	combout => \sq3|Add24~4_combout\,
	cout => \sq3|Add24~5\);

-- Location: LCCOMB_X24_Y17_N28
\sq3|Add18~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sq3|Add18~0_combout\ = (\a9|out\(20) & (\a9|out\(21) & (\a9|out\(18) & \a9|out\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a9|out\(20),
	datab => \a9|out\(21),
	datac => \a9|out\(18),
	datad => \a9|out\(19),
	combout => \sq3|Add18~0_combout\);

-- Location: LCCOMB_X23_Y19_N14
\sq3|Add16~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sq3|Add16~4_combout\ = (\sq3|Add18~0_combout\ & (\sq3|Add16~3\ $ (GND))) # (!\sq3|Add18~0_combout\ & (!\sq3|Add16~3\ & VCC))
-- \sq3|Add16~5\ = CARRY((\sq3|Add18~0_combout\ & !\sq3|Add16~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sq3|Add18~0_combout\,
	datad => VCC,
	cin => \sq3|Add16~3\,
	combout => \sq3|Add16~4_combout\,
	cout => \sq3|Add16~5\);

-- Location: LCCOMB_X23_Y19_N4
\sq3|Add20~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sq3|Add20~4_combout\ = ((\sq3|Add24~4_combout\ $ (\sq3|Add16~4_combout\ $ (!\sq3|Add20~3\)))) # (GND)
-- \sq3|Add20~5\ = CARRY((\sq3|Add24~4_combout\ & ((\sq3|Add16~4_combout\) # (!\sq3|Add20~3\))) # (!\sq3|Add24~4_combout\ & (\sq3|Add16~4_combout\ & !\sq3|Add20~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sq3|Add24~4_combout\,
	datab => \sq3|Add16~4_combout\,
	datad => VCC,
	cin => \sq3|Add20~3\,
	combout => \sq3|Add20~4_combout\,
	cout => \sq3|Add20~5\);

-- Location: LCCOMB_X24_Y18_N30
\sq3|Add5~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sq3|Add5~2_combout\ = (\sq3|Add5~0_combout\ & ((\sq3|Add1~1_combout\ & ((!\sq3|Add4~4_combout\) # (!\sq3|Add2~1_combout\))) # (!\sq3|Add1~1_combout\ & ((\sq3|Add2~1_combout\) # (\sq3|Add4~4_combout\))))) # (!\sq3|Add5~0_combout\ & ((\sq3|Add1~1_combout\ 
-- & ((\sq3|Add2~1_combout\) # (\sq3|Add4~4_combout\))) # (!\sq3|Add1~1_combout\ & (\sq3|Add2~1_combout\ & \sq3|Add4~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sq3|Add5~0_combout\,
	datab => \sq3|Add1~1_combout\,
	datac => \sq3|Add2~1_combout\,
	datad => \sq3|Add4~4_combout\,
	combout => \sq3|Add5~2_combout\);

-- Location: LCCOMB_X24_Y15_N24
\sq3|Add10~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sq3|Add10~0_combout\ = (\a9|out\(12) & (\a9|out\(10) & (\a9|out\(11) & \a9|out\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a9|out\(12),
	datab => \a9|out\(10),
	datac => \a9|out\(11),
	datad => \a9|out\(13),
	combout => \sq3|Add10~0_combout\);

-- Location: LCCOMB_X24_Y18_N8
\sq3|Add8~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sq3|Add8~4_combout\ = (\sq3|Add10~0_combout\ & (\sq3|Add8~3\ $ (GND))) # (!\sq3|Add10~0_combout\ & (!\sq3|Add8~3\ & VCC))
-- \sq3|Add8~5\ = CARRY((\sq3|Add10~0_combout\ & !\sq3|Add8~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sq3|Add10~0_combout\,
	datad => VCC,
	cin => \sq3|Add8~3\,
	combout => \sq3|Add8~4_combout\,
	cout => \sq3|Add8~5\);

-- Location: LCCOMB_X24_Y18_N26
\sq3|Add12~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sq3|Add12~4_combout\ = ((\sq3|Add5~2_combout\ $ (\sq3|Add8~4_combout\ $ (!\sq3|Add12~3\)))) # (GND)
-- \sq3|Add12~5\ = CARRY((\sq3|Add5~2_combout\ & ((\sq3|Add8~4_combout\) # (!\sq3|Add12~3\))) # (!\sq3|Add5~2_combout\ & (\sq3|Add8~4_combout\ & !\sq3|Add12~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sq3|Add5~2_combout\,
	datab => \sq3|Add8~4_combout\,
	datad => VCC,
	cin => \sq3|Add12~3\,
	combout => \sq3|Add12~4_combout\,
	cout => \sq3|Add12~5\);

-- Location: LCCOMB_X24_Y18_N16
\sq3|Add13~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sq3|Add13~4_combout\ = (\sq3|Add12~4_combout\ & (\sq3|Add13~3\ $ (GND))) # (!\sq3|Add12~4_combout\ & (!\sq3|Add13~3\ & VCC))
-- \sq3|Add13~5\ = CARRY((\sq3|Add12~4_combout\ & !\sq3|Add13~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sq3|Add12~4_combout\,
	datad => VCC,
	cin => \sq3|Add13~3\,
	combout => \sq3|Add13~4_combout\,
	cout => \sq3|Add13~5\);

-- Location: LCCOMB_X23_Y15_N24
\sq3|Add28~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sq3|Add28~4_combout\ = ((\sq3|Add20~4_combout\ $ (\sq3|Add13~4_combout\ $ (!\sq3|Add28~3\)))) # (GND)
-- \sq3|Add28~5\ = CARRY((\sq3|Add20~4_combout\ & ((\sq3|Add13~4_combout\) # (!\sq3|Add28~3\))) # (!\sq3|Add20~4_combout\ & (\sq3|Add13~4_combout\ & !\sq3|Add28~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sq3|Add20~4_combout\,
	datab => \sq3|Add13~4_combout\,
	datad => VCC,
	cin => \sq3|Add28~3\,
	combout => \sq3|Add28~4_combout\,
	cout => \sq3|Add28~5\);

-- Location: LCCOMB_X23_Y15_N8
\sq3|Add29~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sq3|Add29~6_combout\ = (\sq3|Add28~4_combout\ & (!\sq3|Add29~5\)) # (!\sq3|Add28~4_combout\ & ((\sq3|Add29~5\) # (GND)))
-- \sq3|Add29~7\ = CARRY((!\sq3|Add29~5\) # (!\sq3|Add28~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sq3|Add28~4_combout\,
	datad => VCC,
	cin => \sq3|Add29~5\,
	combout => \sq3|Add29~6_combout\,
	cout => \sq3|Add29~7\);

-- Location: LCCOMB_X23_Y18_N30
\sq3|Add5~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sq3|Add5~1_combout\ = (\sq3|Add4~4_combout\ & (\sq3|Add2~1_combout\ & (\sq3|Add5~0_combout\ & \sq3|Add1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sq3|Add4~4_combout\,
	datab => \sq3|Add2~1_combout\,
	datac => \sq3|Add5~0_combout\,
	datad => \sq3|Add1~1_combout\,
	combout => \sq3|Add5~1_combout\);

-- Location: LCCOMB_X24_Y18_N10
\sq3|Add8~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sq3|Add8~6_combout\ = \sq3|Add8~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \sq3|Add8~5\,
	combout => \sq3|Add8~6_combout\);

-- Location: LCCOMB_X24_Y18_N28
\sq3|Add12~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sq3|Add12~6_combout\ = \sq3|Add5~1_combout\ $ (\sq3|Add12~5\ $ (\sq3|Add8~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sq3|Add5~1_combout\,
	datad => \sq3|Add8~6_combout\,
	cin => \sq3|Add12~5\,
	combout => \sq3|Add12~6_combout\);

-- Location: LCCOMB_X24_Y18_N18
\sq3|Add13~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sq3|Add13~6_combout\ = (\sq3|Add12~6_combout\ & (!\sq3|Add13~5\)) # (!\sq3|Add12~6_combout\ & ((\sq3|Add13~5\) # (GND)))
-- \sq3|Add13~7\ = CARRY((!\sq3|Add13~5\) # (!\sq3|Add12~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sq3|Add12~6_combout\,
	datad => VCC,
	cin => \sq3|Add13~5\,
	combout => \sq3|Add13~6_combout\,
	cout => \sq3|Add13~7\);

-- Location: LCCOMB_X23_Y19_N26
\sq3|Add24~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sq3|Add24~6_combout\ = \sq3|Add24~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \sq3|Add24~5\,
	combout => \sq3|Add24~6_combout\);

-- Location: LCCOMB_X23_Y19_N16
\sq3|Add16~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sq3|Add16~6_combout\ = \sq3|Add16~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \sq3|Add16~5\,
	combout => \sq3|Add16~6_combout\);

-- Location: LCCOMB_X23_Y19_N6
\sq3|Add20~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sq3|Add20~6_combout\ = (\sq3|Add24~6_combout\ & ((\sq3|Add16~6_combout\ & (\sq3|Add20~5\ & VCC)) # (!\sq3|Add16~6_combout\ & (!\sq3|Add20~5\)))) # (!\sq3|Add24~6_combout\ & ((\sq3|Add16~6_combout\ & (!\sq3|Add20~5\)) # (!\sq3|Add16~6_combout\ & 
-- ((\sq3|Add20~5\) # (GND)))))
-- \sq3|Add20~7\ = CARRY((\sq3|Add24~6_combout\ & (!\sq3|Add16~6_combout\ & !\sq3|Add20~5\)) # (!\sq3|Add24~6_combout\ & ((!\sq3|Add20~5\) # (!\sq3|Add16~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sq3|Add24~6_combout\,
	datab => \sq3|Add16~6_combout\,
	datad => VCC,
	cin => \sq3|Add20~5\,
	combout => \sq3|Add20~6_combout\,
	cout => \sq3|Add20~7\);

-- Location: LCCOMB_X23_Y15_N26
\sq3|Add28~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sq3|Add28~6_combout\ = (\sq3|Add13~6_combout\ & ((\sq3|Add20~6_combout\ & (\sq3|Add28~5\ & VCC)) # (!\sq3|Add20~6_combout\ & (!\sq3|Add28~5\)))) # (!\sq3|Add13~6_combout\ & ((\sq3|Add20~6_combout\ & (!\sq3|Add28~5\)) # (!\sq3|Add20~6_combout\ & 
-- ((\sq3|Add28~5\) # (GND)))))
-- \sq3|Add28~7\ = CARRY((\sq3|Add13~6_combout\ & (!\sq3|Add20~6_combout\ & !\sq3|Add28~5\)) # (!\sq3|Add13~6_combout\ & ((!\sq3|Add28~5\) # (!\sq3|Add20~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sq3|Add13~6_combout\,
	datab => \sq3|Add20~6_combout\,
	datad => VCC,
	cin => \sq3|Add28~5\,
	combout => \sq3|Add28~6_combout\,
	cout => \sq3|Add28~7\);

-- Location: LCCOMB_X23_Y15_N10
\sq3|Add29~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sq3|Add29~8_combout\ = (\sq3|Add28~6_combout\ & (\sq3|Add29~7\ $ (GND))) # (!\sq3|Add28~6_combout\ & (!\sq3|Add29~7\ & VCC))
-- \sq3|Add29~9\ = CARRY((\sq3|Add28~6_combout\ & !\sq3|Add29~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sq3|Add28~6_combout\,
	datad => VCC,
	cin => \sq3|Add29~7\,
	combout => \sq3|Add29~8_combout\,
	cout => \sq3|Add29~9\);

-- Location: LCCOMB_X23_Y15_N30
\sq3|LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sq3|LessThan0~0_combout\ = (\sq3|Add29~4_combout\) # ((\sq3|Add29~2_combout\) # ((\sq3|Add29~6_combout\) # (\sq3|Add29~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sq3|Add29~4_combout\,
	datab => \sq3|Add29~2_combout\,
	datac => \sq3|Add29~6_combout\,
	datad => \sq3|Add29~8_combout\,
	combout => \sq3|LessThan0~0_combout\);

-- Location: LCCOMB_X23_Y19_N8
\sq3|Add20~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sq3|Add20~8_combout\ = !\sq3|Add20~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \sq3|Add20~7\,
	combout => \sq3|Add20~8_combout\);

-- Location: LCCOMB_X24_Y18_N20
\sq3|Add13~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sq3|Add13~8_combout\ = !\sq3|Add13~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \sq3|Add13~7\,
	combout => \sq3|Add13~8_combout\);

-- Location: LCCOMB_X23_Y15_N28
\sq3|Add28~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sq3|Add28~8_combout\ = \sq3|Add20~8_combout\ $ (\sq3|Add28~7\ $ (!\sq3|Add13~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sq3|Add20~8_combout\,
	datad => \sq3|Add13~8_combout\,
	cin => \sq3|Add28~7\,
	combout => \sq3|Add28~8_combout\);

-- Location: LCCOMB_X23_Y15_N12
\sq3|Add29~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sq3|Add29~10_combout\ = (\sq3|Add28~8_combout\ & (!\sq3|Add29~9\)) # (!\sq3|Add28~8_combout\ & ((\sq3|Add29~9\) # (GND)))
-- \sq3|Add29~11\ = CARRY((!\sq3|Add29~9\) # (!\sq3|Add28~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sq3|Add28~8_combout\,
	datad => VCC,
	cin => \sq3|Add29~9\,
	combout => \sq3|Add29~10_combout\,
	cout => \sq3|Add29~11\);

-- Location: LCCOMB_X23_Y15_N14
\sq3|Add29~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sq3|Add29~12_combout\ = !\sq3|Add29~11\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \sq3|Add29~11\,
	combout => \sq3|Add29~12_combout\);

-- Location: LCCOMB_X23_Y15_N0
\sq3|LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sq3|LessThan0~1_combout\ = (\sq3|Add29~12_combout\) # ((\sq3|LessThan0~0_combout\ & \sq3|Add29~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sq3|LessThan0~0_combout\,
	datac => \sq3|Add29~12_combout\,
	datad => \sq3|Add29~10_combout\,
	combout => \sq3|LessThan0~1_combout\);

-- Location: LCCOMB_X22_Y15_N18
\sq3|out[6]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sq3|out[6]~12_combout\ = (\sq3|LessThan0~1_combout\ & (((\a9|out\(13)) # (\a9|out\(12))))) # (!\sq3|LessThan0~1_combout\ & (\a9|out\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a9|out\(6),
	datab => \sq3|LessThan0~1_combout\,
	datac => \a9|out\(13),
	datad => \a9|out\(12),
	combout => \sq3|out[6]~12_combout\);

-- Location: LCCOMB_X23_Y15_N16
\sq3|out[5]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sq3|out[5]~0_combout\ = (\sq3|LessThan0~1_combout\ & (((\a9|out\(11)) # (\a9|out\(10))))) # (!\sq3|LessThan0~1_combout\ & (\a9|out\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a9|out\(5),
	datab => \a9|out\(11),
	datac => \a9|out\(10),
	datad => \sq3|LessThan0~1_combout\,
	combout => \sq3|out[5]~0_combout\);

-- Location: LCCOMB_X24_Y15_N30
\sq3|out[10]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sq3|out[10]~5_combout\ = (\sq3|LessThan0~1_combout\ & ((\a9|out\(21)) # ((\a9|out\(20))))) # (!\sq3|LessThan0~1_combout\ & (((\a9|out\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a9|out\(21),
	datab => \a9|out\(10),
	datac => \a9|out\(20),
	datad => \sq3|LessThan0~1_combout\,
	combout => \sq3|out[10]~5_combout\);

-- Location: LCCOMB_X20_Y15_N12
\sig3|WideNor0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sig3|WideNor0~10_combout\ = (\sq3|out[6]~12_combout\ & (\sq3|out[5]~0_combout\ & \sq3|out[10]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sq3|out[6]~12_combout\,
	datab => \sq3|out[5]~0_combout\,
	datad => \sq3|out[10]~5_combout\,
	combout => \sig3|WideNor0~10_combout\);

-- Location: LCCOMB_X22_Y15_N14
\sq3|out[7]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sq3|out[7]~13_combout\ = (\sq3|LessThan0~1_combout\ & ((\a9|out\(14)) # ((\a9|out\(15))))) # (!\sq3|LessThan0~1_combout\ & (((\a9|out\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a9|out\(14),
	datab => \sq3|LessThan0~1_combout\,
	datac => \a9|out\(15),
	datad => \a9|out\(7),
	combout => \sq3|out[7]~13_combout\);

-- Location: LCCOMB_X22_Y15_N10
\sq3|out[8]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sq3|out[8]~11_combout\ = (\sq3|LessThan0~1_combout\ & ((\a9|out\(16)) # ((\a9|out\(17))))) # (!\sq3|LessThan0~1_combout\ & (((\a9|out\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a9|out\(16),
	datab => \a9|out\(17),
	datac => \sq3|LessThan0~1_combout\,
	datad => \a9|out\(8),
	combout => \sq3|out[8]~11_combout\);

-- Location: LCCOMB_X22_Y15_N4
\sig3|Equal25~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sig3|Equal25~2_combout\ = (\sq3|out[7]~13_combout\ & \sq3|out[8]~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sq3|out[7]~13_combout\,
	datad => \sq3|out[8]~11_combout\,
	combout => \sig3|Equal25~2_combout\);

-- Location: LCCOMB_X21_Y15_N18
\sq3|out[9]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sq3|out[9]~8_combout\ = (\sq3|LessThan0~1_combout\ & (((\a9|out\(19)) # (\a9|out\(18))))) # (!\sq3|LessThan0~1_combout\ & (\a9|out\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a9|out\(9),
	datab => \a9|out\(19),
	datac => \a9|out\(18),
	datad => \sq3|LessThan0~1_combout\,
	combout => \sq3|out[9]~8_combout\);

-- Location: LCCOMB_X21_Y15_N2
\sig3|WideNor0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sig3|WideNor0~18_combout\ = (\sq3|out[9]~8_combout\ & ((\a9|out\(0)) # ((\sq3|LessThan0~1_combout\ & \a9|out\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sq3|LessThan0~1_combout\,
	datab => \a9|out\(1),
	datac => \a9|out\(0),
	datad => \sq3|out[9]~8_combout\,
	combout => \sig3|WideNor0~18_combout\);

-- Location: LCCOMB_X23_Y15_N18
\sq3|out[4]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sq3|out[4]~1_combout\ = (\sq3|LessThan0~1_combout\ & ((\a9|out\(9)) # ((\a9|out\(8))))) # (!\sq3|LessThan0~1_combout\ & (((\a9|out\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a9|out\(9),
	datab => \a9|out\(4),
	datac => \a9|out\(8),
	datad => \sq3|LessThan0~1_combout\,
	combout => \sq3|out[4]~1_combout\);

-- Location: LCCOMB_X19_Y15_N4
\sq3|out[1]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sq3|out[1]~2_combout\ = (\sq3|LessThan0~1_combout\ & (((\a9|out\(3)) # (\a9|out\(2))))) # (!\sq3|LessThan0~1_combout\ & (\a9|out\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a9|out\(1),
	datab => \a9|out\(3),
	datac => \a9|out\(2),
	datad => \sq3|LessThan0~1_combout\,
	combout => \sq3|out[1]~2_combout\);

-- Location: LCCOMB_X19_Y15_N14
\sq3|out[3]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sq3|out[3]~10_combout\ = (\sq3|LessThan0~1_combout\ & ((\a9|out\(6)) # ((\a9|out\(7))))) # (!\sq3|LessThan0~1_combout\ & (((\a9|out\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a9|out\(6),
	datab => \a9|out\(3),
	datac => \a9|out\(7),
	datad => \sq3|LessThan0~1_combout\,
	combout => \sq3|out[3]~10_combout\);

-- Location: LCCOMB_X19_Y15_N18
\sq3|out[2]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sq3|out[2]~3_combout\ = (\sq3|LessThan0~1_combout\ & ((\a9|out\(4)) # ((\a9|out\(5))))) # (!\sq3|LessThan0~1_combout\ & (((\a9|out\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a9|out\(4),
	datab => \a9|out\(2),
	datac => \a9|out\(5),
	datad => \sq3|LessThan0~1_combout\,
	combout => \sq3|out[2]~3_combout\);

-- Location: LCCOMB_X19_Y15_N2
\sig3|WideNor0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sig3|WideNor0~9_combout\ = (\sq3|out[4]~1_combout\ & (\sq3|out[1]~2_combout\ & (\sq3|out[3]~10_combout\ & \sq3|out[2]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sq3|out[4]~1_combout\,
	datab => \sq3|out[1]~2_combout\,
	datac => \sq3|out[3]~10_combout\,
	datad => \sq3|out[2]~3_combout\,
	combout => \sig3|WideNor0~9_combout\);

-- Location: LCCOMB_X20_Y15_N10
\sig3|WideNor0~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sig3|WideNor0~11_combout\ = (\sig3|WideNor0~10_combout\ & (\sig3|Equal25~2_combout\ & (\sig3|WideNor0~18_combout\ & \sig3|WideNor0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sig3|WideNor0~10_combout\,
	datab => \sig3|Equal25~2_combout\,
	datac => \sig3|WideNor0~18_combout\,
	datad => \sig3|WideNor0~9_combout\,
	combout => \sig3|WideNor0~11_combout\);

-- Location: LCCOMB_X21_Y15_N8
\sq3|out[14]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sq3|out[14]~14_combout\ = (\sq3|LessThan0~1_combout\ & (((\a9|out\(29)) # (\a9|out\(28))))) # (!\sq3|LessThan0~1_combout\ & (\a9|out\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sq3|LessThan0~1_combout\,
	datab => \a9|out\(14),
	datac => \a9|out\(29),
	datad => \a9|out\(28),
	combout => \sq3|out[14]~14_combout\);

-- Location: LCCOMB_X21_Y15_N14
\sq3|out[15]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sq3|out[15]~15_combout\ = (\sq3|LessThan0~1_combout\ & ((\a9|out\(30)) # ((\a9|out\(31))))) # (!\sq3|LessThan0~1_combout\ & (((\a9|out\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sq3|LessThan0~1_combout\,
	datab => \a9|out\(30),
	datac => \a9|out\(31),
	datad => \a9|out\(15),
	combout => \sq3|out[15]~15_combout\);

-- Location: LCCOMB_X24_Y16_N30
\a9|out~126\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a9|out~126_combout\ = (\a9|Add47~12_combout\) # ((\a9|out\(32)) # (!\a9|out~127_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a9|Add47~12_combout\,
	datac => \a9|out\(32),
	datad => \a9|out~127_combout\,
	combout => \a9|out~126_combout\);

-- Location: FF_X24_Y16_N31
\a9|out[32]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \a9|out~126_combout\,
	sclr => \a9|Add39~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a9|out\(32));

-- Location: LCCOMB_X24_Y15_N20
\sq3|out[12]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sq3|out[12]~4_combout\ = (\sq3|LessThan0~1_combout\ & ((\a9|out\(24)) # ((\a9|out\(25))))) # (!\sq3|LessThan0~1_combout\ & (((\a9|out\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a9|out\(24),
	datab => \a9|out\(25),
	datac => \a9|out\(12),
	datad => \sq3|LessThan0~1_combout\,
	combout => \sq3|out[12]~4_combout\);

-- Location: LCCOMB_X24_Y15_N4
\sq3|out[11]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sq3|out[11]~6_combout\ = (\sq3|LessThan0~1_combout\ & ((\a9|out\(22)) # ((\a9|out\(23))))) # (!\sq3|LessThan0~1_combout\ & (((\a9|out\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a9|out\(22),
	datab => \a9|out\(23),
	datac => \a9|out\(11),
	datad => \sq3|LessThan0~1_combout\,
	combout => \sq3|out[11]~6_combout\);

-- Location: LCCOMB_X21_Y15_N16
\sq3|out[13]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sq3|out[13]~9_combout\ = (\sq3|LessThan0~1_combout\ & ((\a9|out\(26)) # ((\a9|out\(27))))) # (!\sq3|LessThan0~1_combout\ & (((\a9|out\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sq3|LessThan0~1_combout\,
	datab => \a9|out\(26),
	datac => \a9|out\(27),
	datad => \a9|out\(13),
	combout => \sq3|out[13]~9_combout\);

-- Location: LCCOMB_X24_Y15_N10
\sig3|Equal32~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sig3|Equal32~0_combout\ = (\a9|out\(32) & (\sq3|out[12]~4_combout\ & (\sq3|out[11]~6_combout\ & \sq3|out[13]~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a9|out\(32),
	datab => \sq3|out[12]~4_combout\,
	datac => \sq3|out[11]~6_combout\,
	datad => \sq3|out[13]~9_combout\,
	combout => \sig3|Equal32~0_combout\);

-- Location: LCCOMB_X20_Y15_N30
\sig3|WideOr7~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sig3|WideOr7~2_combout\ = (((!\sq3|out[14]~14_combout\ & \sq3|out[15]~15_combout\)) # (!\sig3|Equal32~0_combout\)) # (!\sig3|WideNor0~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sig3|WideNor0~11_combout\,
	datab => \sq3|out[14]~14_combout\,
	datac => \sq3|out[15]~15_combout\,
	datad => \sig3|Equal32~0_combout\,
	combout => \sig3|WideOr7~2_combout\);

-- Location: LCCOMB_X19_Y15_N30
\sig3|Equal23~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sig3|Equal23~0_combout\ = (\sq3|out[5]~0_combout\ & (\sq3|out[6]~12_combout\ & \sig3|WideNor0~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sq3|out[5]~0_combout\,
	datac => \sq3|out[6]~12_combout\,
	datad => \sig3|WideNor0~9_combout\,
	combout => \sig3|Equal23~0_combout\);

-- Location: LCCOMB_X22_Y19_N20
\sig3|WideNor0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sig3|WideNor0~6_combout\ = (\a9|out\(30)) # ((\a9|out\(31)) # ((\a9|out\(29)) # (\a9|out\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a9|out\(30),
	datab => \a9|out\(31),
	datac => \a9|out\(29),
	datad => \a9|out\(28),
	combout => \sig3|WideNor0~6_combout\);

-- Location: LCCOMB_X22_Y15_N12
\sig3|WideNor0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sig3|WideNor0~7_combout\ = (\sq3|LessThan0~1_combout\ & (((!\sig3|WideNor0~6_combout\)))) # (!\sq3|LessThan0~1_combout\ & (!\a9|out\(14) & (!\a9|out\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a9|out\(14),
	datab => \sq3|LessThan0~1_combout\,
	datac => \a9|out\(15),
	datad => \sig3|WideNor0~6_combout\,
	combout => \sig3|WideNor0~7_combout\);

-- Location: LCCOMB_X24_Y15_N12
\sig3|Equal26~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sig3|Equal26~0_combout\ = (!\sq3|out[10]~5_combout\ & (!\sq3|out[11]~6_combout\ & !\sq3|out[12]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sq3|out[10]~5_combout\,
	datac => \sq3|out[11]~6_combout\,
	datad => \sq3|out[12]~4_combout\,
	combout => \sig3|Equal26~0_combout\);

-- Location: LCCOMB_X21_Y15_N0
\sq3|out[0]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sq3|out[0]~7_combout\ = (\a9|out\(0)) # ((\sq3|LessThan0~1_combout\ & \a9|out\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sq3|LessThan0~1_combout\,
	datab => \a9|out\(1),
	datad => \a9|out\(0),
	combout => \sq3|out[0]~7_combout\);

-- Location: LCCOMB_X21_Y15_N26
\sig3|Equal17~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sig3|Equal17~0_combout\ = (\sq3|out[0]~7_combout\ & (\a9|out\(32) & !\sq3|out[9]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sq3|out[0]~7_combout\,
	datac => \a9|out\(32),
	datad => \sq3|out[9]~8_combout\,
	combout => \sig3|Equal17~0_combout\);

-- Location: LCCOMB_X21_Y15_N12
\sig3|Equal17~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sig3|Equal17~1_combout\ = (\sig3|WideNor0~7_combout\ & (!\sq3|out[13]~9_combout\ & (\sig3|Equal26~0_combout\ & \sig3|Equal17~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sig3|WideNor0~7_combout\,
	datab => \sq3|out[13]~9_combout\,
	datac => \sig3|Equal26~0_combout\,
	datad => \sig3|Equal17~0_combout\,
	combout => \sig3|Equal17~1_combout\);

-- Location: LCCOMB_X19_Y15_N24
\sig3|WideOr7~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sig3|WideOr7~3_combout\ = ((\sq3|out[8]~11_combout\) # (!\sig3|Equal17~1_combout\)) # (!\sig3|Equal23~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sig3|Equal23~0_combout\,
	datac => \sq3|out[8]~11_combout\,
	datad => \sig3|Equal17~1_combout\,
	combout => \sig3|WideOr7~3_combout\);

-- Location: LCCOMB_X21_Y15_N20
\sig3|Equal26~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sig3|Equal26~1_combout\ = (!\sq3|out[14]~14_combout\ & (\a9|out\(32) & (!\sq3|out[13]~9_combout\ & \sq3|out[6]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sq3|out[14]~14_combout\,
	datab => \a9|out\(32),
	datac => \sq3|out[13]~9_combout\,
	datad => \sq3|out[6]~12_combout\,
	combout => \sig3|Equal26~1_combout\);

-- Location: LCCOMB_X21_Y15_N6
\sig3|Equal26~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sig3|Equal26~2_combout\ = (\sq3|out[5]~0_combout\ & (!\sq3|out[15]~15_combout\ & \sig3|WideNor0~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sq3|out[5]~0_combout\,
	datac => \sq3|out[15]~15_combout\,
	datad => \sig3|WideNor0~18_combout\,
	combout => \sig3|Equal26~2_combout\);

-- Location: LCCOMB_X20_Y15_N6
\sig3|Equal26~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sig3|Equal26~3_combout\ = (\sig3|WideNor0~9_combout\ & (\sig3|Equal25~2_combout\ & (\sig3|Equal26~1_combout\ & \sig3|Equal26~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sig3|WideNor0~9_combout\,
	datab => \sig3|Equal25~2_combout\,
	datac => \sig3|Equal26~1_combout\,
	datad => \sig3|Equal26~2_combout\,
	combout => \sig3|Equal26~3_combout\);

-- Location: LCCOMB_X20_Y15_N22
\sig3|WideOr7~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sig3|WideOr7~1_combout\ = ((\sq3|out[11]~6_combout\ & (!\sq3|out[10]~5_combout\)) # (!\sq3|out[11]~6_combout\ & ((\sq3|out[12]~4_combout\)))) # (!\sig3|Equal26~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sq3|out[10]~5_combout\,
	datab => \sq3|out[12]~4_combout\,
	datac => \sq3|out[11]~6_combout\,
	datad => \sig3|Equal26~3_combout\,
	combout => \sig3|WideOr7~1_combout\);

-- Location: LCCOMB_X21_Y15_N10
\sig3|Equal25~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sig3|Equal25~3_combout\ = (\sig3|Equal17~1_combout\ & (\sq3|out[7]~13_combout\ & (\sq3|out[8]~11_combout\ & \sig3|Equal23~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sig3|Equal17~1_combout\,
	datab => \sq3|out[7]~13_combout\,
	datac => \sq3|out[8]~11_combout\,
	datad => \sig3|Equal23~0_combout\,
	combout => \sig3|Equal25~3_combout\);

-- Location: LCCOMB_X19_Y15_N12
\sig3|Equal19~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sig3|Equal19~2_combout\ = (\sq3|out[1]~2_combout\ & \sq3|out[2]~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sq3|out[1]~2_combout\,
	datad => \sq3|out[2]~3_combout\,
	combout => \sig3|Equal19~2_combout\);

-- Location: LCCOMB_X22_Y15_N28
\sig3|WideNor0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sig3|WideNor0~8_combout\ = (!\sq3|out[6]~12_combout\ & (!\sq3|out[7]~13_combout\ & !\sq3|out[8]~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sq3|out[6]~12_combout\,
	datac => \sq3|out[7]~13_combout\,
	datad => \sq3|out[8]~11_combout\,
	combout => \sig3|WideNor0~8_combout\);

-- Location: LCCOMB_X19_Y15_N28
\sig3|Equal20~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sig3|Equal20~0_combout\ = (\sig3|Equal19~2_combout\ & (\sq3|out[3]~10_combout\ & (\sig3|WideNor0~8_combout\ & \sig3|Equal17~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sig3|Equal19~2_combout\,
	datab => \sq3|out[3]~10_combout\,
	datac => \sig3|WideNor0~8_combout\,
	datad => \sig3|Equal17~1_combout\,
	combout => \sig3|Equal20~0_combout\);

-- Location: LCCOMB_X20_Y15_N20
\sig3|WideOr7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sig3|WideOr7~0_combout\ = (!\sig3|Equal25~3_combout\ & (((!\sq3|out[4]~1_combout\ & \sq3|out[5]~0_combout\)) # (!\sig3|Equal20~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sq3|out[4]~1_combout\,
	datab => \sq3|out[5]~0_combout\,
	datac => \sig3|Equal25~3_combout\,
	datad => \sig3|Equal20~0_combout\,
	combout => \sig3|WideOr7~0_combout\);

-- Location: LCCOMB_X20_Y15_N2
\sig3|WideOr7~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sig3|WideOr7~4_combout\ = (\sig3|WideOr7~2_combout\ & (\sig3|WideOr7~3_combout\ & (\sig3|WideOr7~1_combout\ & \sig3|WideOr7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sig3|WideOr7~2_combout\,
	datab => \sig3|WideOr7~3_combout\,
	datac => \sig3|WideOr7~1_combout\,
	datad => \sig3|WideOr7~0_combout\,
	combout => \sig3|WideOr7~4_combout\);

-- Location: LCCOMB_X21_Y15_N22
\sig3|WideNor0~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sig3|WideNor0~15_combout\ = (\sq3|out[12]~4_combout\ & ((\sq3|out[11]~6_combout\ & (\sq3|out[13]~9_combout\ & !\sig3|WideNor0~7_combout\)) # (!\sq3|out[11]~6_combout\ & ((\sig3|WideNor0~7_combout\))))) # (!\sq3|out[12]~4_combout\ & 
-- (\sq3|out[13]~9_combout\ & ((\sig3|WideNor0~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sq3|out[12]~4_combout\,
	datab => \sq3|out[13]~9_combout\,
	datac => \sq3|out[11]~6_combout\,
	datad => \sig3|WideNor0~7_combout\,
	combout => \sig3|WideNor0~15_combout\);

-- Location: LCCOMB_X21_Y15_N28
\sig3|WideNor0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sig3|WideNor0~16_combout\ = (!\a9|out\(32) & ((\sig3|WideNor0~15_combout\ & (\sq3|out[14]~14_combout\ & !\sig3|WideNor0~7_combout\)) # (!\sig3|WideNor0~15_combout\ & ((\sig3|WideNor0~7_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sig3|WideNor0~15_combout\,
	datab => \a9|out\(32),
	datac => \sq3|out[14]~14_combout\,
	datad => \sig3|WideNor0~7_combout\,
	combout => \sig3|WideNor0~16_combout\);

-- Location: LCCOMB_X19_Y15_N8
\sig3|Equal20~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sig3|Equal20~1_combout\ = (!\sq3|out[5]~0_combout\ & !\sq3|out[4]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sq3|out[5]~0_combout\,
	datad => \sq3|out[4]~1_combout\,
	combout => \sig3|Equal20~1_combout\);

-- Location: LCCOMB_X19_Y15_N20
\sig3|WideNor0~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sig3|WideNor0~20_combout\ = (\sig3|Equal20~1_combout\ & ((\sq3|out[2]~3_combout\ & ((\sq3|out[1]~2_combout\))) # (!\sq3|out[2]~3_combout\ & (!\sq3|out[3]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sig3|Equal20~1_combout\,
	datab => \sq3|out[3]~10_combout\,
	datac => \sq3|out[1]~2_combout\,
	datad => \sq3|out[2]~3_combout\,
	combout => \sig3|WideNor0~20_combout\);

-- Location: LCCOMB_X17_Y15_N0
\sig3|WideNor0~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sig3|WideNor0~13_combout\ = (!\sq3|out[9]~8_combout\ & (\sig3|WideNor0~8_combout\ & ((\sig3|WideNor0~20_combout\) # (\sig3|WideNor0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sig3|WideNor0~20_combout\,
	datab => \sq3|out[9]~8_combout\,
	datac => \sig3|WideNor0~9_combout\,
	datad => \sig3|WideNor0~8_combout\,
	combout => \sig3|WideNor0~13_combout\);

-- Location: LCCOMB_X19_Y15_N0
\sig3|WideNor0~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sig3|WideNor0~19_combout\ = (\sig3|Equal23~0_combout\ & ((\sq3|out[8]~11_combout\ & ((\sq3|out[7]~13_combout\))) # (!\sq3|out[8]~11_combout\ & (!\sq3|out[9]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sq3|out[8]~11_combout\,
	datab => \sq3|out[9]~8_combout\,
	datac => \sq3|out[7]~13_combout\,
	datad => \sig3|Equal23~0_combout\,
	combout => \sig3|WideNor0~19_combout\);

-- Location: LCCOMB_X21_Y15_N24
\sig3|WideNor0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sig3|WideNor0~12_combout\ = (!\a9|out\(32) & (\sig3|Equal26~0_combout\ & (!\sq3|out[13]~9_combout\ & \sig3|WideNor0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a9|out\(32),
	datab => \sig3|Equal26~0_combout\,
	datac => \sq3|out[13]~9_combout\,
	datad => \sig3|WideNor0~7_combout\,
	combout => \sig3|WideNor0~12_combout\);

-- Location: LCCOMB_X24_Y16_N14
\sig3|WideNor0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sig3|WideNor0~14_combout\ = (\sq3|out[0]~7_combout\ & (\sig3|WideNor0~12_combout\ & ((\sig3|WideNor0~13_combout\) # (\sig3|WideNor0~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sig3|WideNor0~13_combout\,
	datab => \sig3|WideNor0~19_combout\,
	datac => \sq3|out[0]~7_combout\,
	datad => \sig3|WideNor0~12_combout\,
	combout => \sig3|WideNor0~14_combout\);

-- Location: LCCOMB_X19_Y15_N22
\sig3|Equal17~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sig3|Equal17~2_combout\ = (!\sq3|out[4]~1_combout\ & (!\sq3|out[5]~0_combout\ & (\sig3|WideNor0~8_combout\ & !\sq3|out[3]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sq3|out[4]~1_combout\,
	datab => \sq3|out[5]~0_combout\,
	datac => \sig3|WideNor0~8_combout\,
	datad => \sq3|out[3]~10_combout\,
	combout => \sig3|Equal17~2_combout\);

-- Location: LCCOMB_X19_Y15_N26
\sig3|Equal18~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sig3|Equal18~0_combout\ = (!\sq3|out[3]~10_combout\ & (\sig3|Equal20~1_combout\ & (\sig3|WideNor0~8_combout\ & !\sq3|out[2]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sq3|out[3]~10_combout\,
	datab => \sig3|Equal20~1_combout\,
	datac => \sig3|WideNor0~8_combout\,
	datad => \sq3|out[2]~3_combout\,
	combout => \sig3|Equal18~0_combout\);

-- Location: LCCOMB_X19_Y15_N16
\sig3|Equal18~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sig3|Equal18~1_combout\ = (\sq3|out[1]~2_combout\ & (\sig3|Equal18~0_combout\ & \sig3|Equal17~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sq3|out[1]~2_combout\,
	datac => \sig3|Equal18~0_combout\,
	datad => \sig3|Equal17~1_combout\,
	combout => \sig3|Equal18~1_combout\);

-- Location: LCCOMB_X19_Y15_N10
\sig3|Equal17~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sig3|Equal17~3_combout\ = (!\sq3|out[1]~2_combout\ & (\sig3|Equal18~0_combout\ & \sig3|Equal17~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sq3|out[1]~2_combout\,
	datac => \sig3|Equal18~0_combout\,
	datad => \sig3|Equal17~1_combout\,
	combout => \sig3|Equal17~3_combout\);

-- Location: LCCOMB_X19_Y15_N6
\sig3|Equal19~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sig3|Equal19~3_combout\ = (\sig3|Equal17~2_combout\ & (\sq3|out[2]~3_combout\ & (\sq3|out[1]~2_combout\ & \sig3|Equal17~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sig3|Equal17~2_combout\,
	datab => \sq3|out[2]~3_combout\,
	datac => \sq3|out[1]~2_combout\,
	datad => \sig3|Equal17~1_combout\,
	combout => \sig3|Equal19~3_combout\);

-- Location: LCCOMB_X20_Y15_N4
\sig3|WideOr7~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sig3|WideOr7~5_combout\ = (!\sig3|Equal18~1_combout\ & (!\sig3|Equal17~3_combout\ & (!\sig3|Equal19~3_combout\ & \sig3|WideOr7~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sig3|Equal18~1_combout\,
	datab => \sig3|Equal17~3_combout\,
	datac => \sig3|Equal19~3_combout\,
	datad => \sig3|WideOr7~4_combout\,
	combout => \sig3|WideOr7~5_combout\);

-- Location: LCCOMB_X21_Y15_N30
\sig3|WideOr7~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sig3|WideOr7~6_combout\ = (\sq3|out[2]~3_combout\) # ((\sq3|out[0]~7_combout\) # ((\sq3|out[1]~2_combout\) # (\sq3|out[9]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sq3|out[2]~3_combout\,
	datab => \sq3|out[0]~7_combout\,
	datac => \sq3|out[1]~2_combout\,
	datad => \sq3|out[9]~8_combout\,
	combout => \sig3|WideOr7~6_combout\);

-- Location: LCCOMB_X20_Y15_N24
\sig3|WideOr7~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sig3|WideOr7~7_combout\ = (\sig3|WideOr7~5_combout\ & (((\sig3|WideOr7~6_combout\) # (!\sig3|Equal17~2_combout\)) # (!\sig3|WideNor0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sig3|WideNor0~12_combout\,
	datab => \sig3|Equal17~2_combout\,
	datac => \sig3|WideOr7~5_combout\,
	datad => \sig3|WideOr7~6_combout\,
	combout => \sig3|WideOr7~7_combout\);

-- Location: LCCOMB_X21_Y15_N4
\sig3|WideNor0~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sig3|WideNor0~17_combout\ = (\sig3|WideNor0~14_combout\) # (((\sig3|WideNor0~11_combout\ & \sig3|WideNor0~16_combout\)) # (!\sig3|WideOr7~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sig3|WideNor0~11_combout\,
	datab => \sig3|WideNor0~16_combout\,
	datac => \sig3|WideNor0~14_combout\,
	datad => \sig3|WideOr7~7_combout\,
	combout => \sig3|WideNor0~17_combout\);

-- Location: CLKCTRL_G16
\sig3|WideNor0~17clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \sig3|WideNor0~17clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \sig3|WideNor0~17clkctrl_outclk\);

-- Location: LCCOMB_X20_Y15_N26
\sig3|out[0]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sig3|out\(0) = (GLOBAL(\sig3|WideNor0~17clkctrl_outclk\) & (\sig3|WideOr7~4_combout\)) # (!GLOBAL(\sig3|WideNor0~17clkctrl_outclk\) & ((\sig3|out\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sig3|WideOr7~4_combout\,
	datac => \sig3|WideNor0~17clkctrl_outclk\,
	datad => \sig3|out\(0),
	combout => \sig3|out\(0));

-- Location: FF_X20_Y15_N27
\led[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sig3|out\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led[0]~reg0_q\);

-- Location: LCCOMB_X20_Y15_N8
\sig3|WideOr13~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sig3|WideOr13~0_combout\ = (!\sig3|Equal19~3_combout\ & \sig3|WideOr7~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sig3|Equal19~3_combout\,
	datab => \sig3|WideOr7~4_combout\,
	combout => \sig3|WideOr13~0_combout\);

-- Location: LCCOMB_X20_Y15_N18
\sig3|out[1]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sig3|out\(1) = (GLOBAL(\sig3|WideNor0~17clkctrl_outclk\) & ((\sig3|WideOr13~0_combout\))) # (!GLOBAL(\sig3|WideNor0~17clkctrl_outclk\) & (\sig3|out\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sig3|out\(1),
	datac => \sig3|WideNor0~17clkctrl_outclk\,
	datad => \sig3|WideOr13~0_combout\,
	combout => \sig3|out\(1));

-- Location: FF_X20_Y15_N19
\led[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sig3|out\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led[1]~reg0_q\);

-- Location: LCCOMB_X20_Y15_N14
\sig3|WideOr11~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sig3|WideOr11~0_combout\ = (!\sig3|Equal19~3_combout\ & (\sig3|WideOr7~4_combout\ & !\sig3|Equal18~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sig3|Equal19~3_combout\,
	datab => \sig3|WideOr7~4_combout\,
	datad => \sig3|Equal18~1_combout\,
	combout => \sig3|WideOr11~0_combout\);

-- Location: LCCOMB_X20_Y15_N16
\sig3|out[2]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sig3|out\(2) = (GLOBAL(\sig3|WideNor0~17clkctrl_outclk\) & (\sig3|WideOr11~0_combout\)) # (!GLOBAL(\sig3|WideNor0~17clkctrl_outclk\) & ((\sig3|out\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sig3|WideNor0~17clkctrl_outclk\,
	datac => \sig3|WideOr11~0_combout\,
	datad => \sig3|out\(2),
	combout => \sig3|out\(2));

-- Location: FF_X20_Y15_N17
\led[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sig3|out\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led[2]~reg0_q\);

-- Location: LCCOMB_X19_Y18_N0
\led[3]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led[3]~reg0feeder_combout\ = \sig3|out\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sig3|out\(2),
	combout => \led[3]~reg0feeder_combout\);

-- Location: FF_X19_Y18_N1
\led[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \led[3]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led[3]~reg0_q\);

-- Location: LCCOMB_X20_Y15_N0
\sig3|out[4]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sig3|out\(4) = (GLOBAL(\sig3|WideNor0~17clkctrl_outclk\) & (\sig3|WideOr7~5_combout\)) # (!GLOBAL(\sig3|WideNor0~17clkctrl_outclk\) & ((\sig3|out\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sig3|WideOr7~5_combout\,
	datac => \sig3|WideNor0~17clkctrl_outclk\,
	datad => \sig3|out\(4),
	combout => \sig3|out\(4));

-- Location: FF_X20_Y15_N9
\led[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \sig3|out\(4),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led[4]~reg0_q\);

-- Location: FF_X20_Y15_N13
\led[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \sig3|out\(4),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led[5]~reg0_q\);

-- Location: FF_X20_Y15_N1
\led[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sig3|out\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led[6]~reg0_q\);

-- Location: FF_X19_Y15_N9
\led[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \sig3|out\(4),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led[7]~reg0_q\);

-- Location: LCCOMB_X20_Y15_N28
\sig3|out[8]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sig3|out\(8) = (GLOBAL(\sig3|WideNor0~17clkctrl_outclk\) & ((\sig3|WideOr7~7_combout\))) # (!GLOBAL(\sig3|WideNor0~17clkctrl_outclk\) & (\sig3|out\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sig3|out\(8),
	datac => \sig3|WideNor0~17clkctrl_outclk\,
	datad => \sig3|WideOr7~7_combout\,
	combout => \sig3|out\(8));

-- Location: FF_X20_Y15_N29
\led[8]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sig3|out\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led[8]~reg0_q\);

-- Location: IOIBUF_X0_Y25_N22
\sw[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(2),
	o => \sw[2]~input_o\);

-- Location: IOIBUF_X0_Y23_N8
\sw[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(3),
	o => \sw[3]~input_o\);

-- Location: IOIBUF_X0_Y27_N22
\sw[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(4),
	o => \sw[4]~input_o\);

-- Location: IOIBUF_X0_Y22_N15
\sw[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(5),
	o => \sw[5]~input_o\);

-- Location: IOIBUF_X0_Y25_N15
\sw[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(6),
	o => \sw[6]~input_o\);

-- Location: IOIBUF_X0_Y26_N8
\sw[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(7),
	o => \sw[7]~input_o\);

-- Location: IOIBUF_X0_Y26_N1
\sw[8]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(8),
	o => \sw[8]~input_o\);

-- Location: IOIBUF_X0_Y25_N1
\sw[9]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(9),
	o => \sw[9]~input_o\);

-- Location: IOIBUF_X0_Y21_N8
\button[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_button(0),
	o => \button[0]~input_o\);

-- Location: IOIBUF_X0_Y23_N15
\button[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_button(1),
	o => \button[1]~input_o\);

-- Location: IOIBUF_X0_Y23_N1
\button[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_button(2),
	o => \button[2]~input_o\);

ww_led(0) <= \led[0]~output_o\;

ww_led(1) <= \led[1]~output_o\;

ww_led(2) <= \led[2]~output_o\;

ww_led(3) <= \led[3]~output_o\;

ww_led(4) <= \led[4]~output_o\;

ww_led(5) <= \led[5]~output_o\;

ww_led(6) <= \led[6]~output_o\;

ww_led(7) <= \led[7]~output_o\;

ww_led(8) <= \led[8]~output_o\;

ww_led(9) <= \led[9]~output_o\;
END structure;


