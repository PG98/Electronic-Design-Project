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
-- VERSION "Version 13.0.0 Build 156 04/24/2013 SJ Full Version"

-- DATE "07/18/2018 11:52:26"

-- 
-- Device: Altera EP2C5Q208C8 Package PQFP208
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	top IS
    PORT (
	txd : OUT std_logic;
	clk : IN std_logic;
	ultraleft_echo : IN std_logic;
	ultra_2 : IN std_logic;
	ultraright_echo : IN std_logic;
	ultraback_echo : IN std_logic;
	Button : IN std_logic_vector(7 DOWNTO 0);
	dinfrared : IN std_logic_vector(3 DOWNTO 0);
	Infrared : IN std_logic_vector(3 DOWNTO 0);
	speedInfrac : IN std_logic;
	rxd : IN std_logic;
	Signs : IN std_logic_vector(3 DOWNTO 0);
	Touch : IN std_logic_vector(3 DOWNTO 0);
	pwml : OUT std_logic;
	pwmr : OUT std_logic;
	beep : OUT std_logic;
	steer : OUT std_logic;
	ultra_trigger : OUT std_logic;
	ultraback_trigger : OUT std_logic;
	ultra_right_trigger : OUT std_logic;
	ultra_left_trigger : OUT std_logic;
	Digital : OUT std_logic_vector(6 DOWNTO 0);
	Led : OUT std_logic_vector(7 DOWNTO 0);
	Position : OUT std_logic_vector(3 DOWNTO 0)
	);
END top;

-- Design Ports Information
-- txd	=>  Location: PIN_137,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dinfrared[3]	=>  Location: PIN_99,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- dinfrared[0]	=>  Location: PIN_75,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Infrared[1]	=>  Location: PIN_163,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Infrared[0]	=>  Location: PIN_150,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- speedInfrac	=>  Location: PIN_23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Signs[1]	=>  Location: PIN_24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Signs[0]	=>  Location: PIN_27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Touch[3]	=>  Location: PIN_69,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Touch[2]	=>  Location: PIN_70,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- pwml	=>  Location: PIN_199,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- pwmr	=>  Location: PIN_201,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- beep	=>  Location: PIN_152,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- steer	=>  Location: PIN_205,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ultra_trigger	=>  Location: PIN_169,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ultraback_trigger	=>  Location: PIN_146,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ultra_right_trigger	=>  Location: PIN_171,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ultra_left_trigger	=>  Location: PIN_147,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Digital[6]	=>  Location: PIN_44,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Digital[5]	=>  Location: PIN_40,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Digital[4]	=>  Location: PIN_45,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Digital[3]	=>  Location: PIN_47,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Digital[2]	=>  Location: PIN_48,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Digital[1]	=>  Location: PIN_41,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Digital[0]	=>  Location: PIN_43,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Led[7]	=>  Location: PIN_56,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Led[6]	=>  Location: PIN_57,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Led[5]	=>  Location: PIN_58,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Led[4]	=>  Location: PIN_59,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Led[3]	=>  Location: PIN_60,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Led[2]	=>  Location: PIN_61,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Led[1]	=>  Location: PIN_63,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Led[0]	=>  Location: PIN_64,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Position[3]	=>  Location: PIN_39,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Position[2]	=>  Location: PIN_37,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Position[1]	=>  Location: PIN_36,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Position[0]	=>  Location: PIN_35,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- clk	=>  Location: PIN_131,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Signs[2]	=>  Location: PIN_198,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Signs[3]	=>  Location: PIN_195,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Touch[1]	=>  Location: PIN_160,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- dinfrared[2]	=>  Location: PIN_191,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Touch[0]	=>  Location: PIN_200,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- dinfrared[1]	=>  Location: PIN_193,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Infrared[3]	=>  Location: PIN_141,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Infrared[2]	=>  Location: PIN_139,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Button[7]	=>  Location: PIN_3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Button[6]	=>  Location: PIN_4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Button[5]	=>  Location: PIN_5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Button[4]	=>  Location: PIN_6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Button[3]	=>  Location: PIN_8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Button[2]	=>  Location: PIN_10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Button[1]	=>  Location: PIN_11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Button[0]	=>  Location: PIN_12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- rxd	=>  Location: PIN_135,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ultra_2	=>  Location: PIN_165,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ultraback_echo	=>  Location: PIN_145,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ultraright_echo	=>  Location: PIN_170,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ultraleft_echo	=>  Location: PIN_149,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF top IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_txd : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_ultraleft_echo : std_logic;
SIGNAL ww_ultra_2 : std_logic;
SIGNAL ww_ultraright_echo : std_logic;
SIGNAL ww_ultraback_echo : std_logic;
SIGNAL ww_Button : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_dinfrared : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Infrared : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_speedInfrac : std_logic;
SIGNAL ww_rxd : std_logic;
SIGNAL ww_Signs : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Touch : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_pwml : std_logic;
SIGNAL ww_pwmr : std_logic;
SIGNAL ww_beep : std_logic;
SIGNAL ww_steer : std_logic;
SIGNAL ww_ultra_trigger : std_logic;
SIGNAL ww_ultraback_trigger : std_logic;
SIGNAL ww_ultra_right_trigger : std_logic;
SIGNAL ww_ultra_left_trigger : std_logic;
SIGNAL ww_Digital : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_Led : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Position : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst17|out_9600~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst17|out_8~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst17|out_16k~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst17|out_10k~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst13|clk_9600~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst18|Add0~0_combout\ : std_logic;
SIGNAL \inst18|Add0~2_combout\ : std_logic;
SIGNAL \inst18|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ : std_logic;
SIGNAL \inst18|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ : std_logic;
SIGNAL \inst18|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ : std_logic;
SIGNAL \inst18|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ : std_logic;
SIGNAL \inst18|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ : std_logic;
SIGNAL \inst18|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ : std_logic;
SIGNAL \inst18|Add1~6_combout\ : std_logic;
SIGNAL \inst|Div2|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ : std_logic;
SIGNAL \inst|Div2|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ : std_logic;
SIGNAL \inst|Div2|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ : std_logic;
SIGNAL \inst|Div2|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ : std_logic;
SIGNAL \inst|Div2|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ : std_logic;
SIGNAL \inst|Div2|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ : std_logic;
SIGNAL \inst|Div2|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\ : std_logic;
SIGNAL \inst|Div2|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\ : std_logic;
SIGNAL \inst|Div2|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\ : std_logic;
SIGNAL \inst|Div2|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ : std_logic;
SIGNAL \inst|Div2|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~1_cout\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~3_cout\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~5_cout\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~7_cout\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~9_cout\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[7]~11_cout\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ : std_logic;
SIGNAL \inst|Mod2|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ : std_logic;
SIGNAL \inst|Mod2|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ : std_logic;
SIGNAL \inst|Mod2|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ : std_logic;
SIGNAL \inst|Mod2|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ : std_logic;
SIGNAL \inst|Mod2|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ : std_logic;
SIGNAL \inst|Mod2|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ : std_logic;
SIGNAL \inst|Mod2|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ : std_logic;
SIGNAL \inst|Mod2|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ : std_logic;
SIGNAL \inst11|data[1]~0_combout\ : std_logic;
SIGNAL \inst13|Add1~0_combout\ : std_logic;
SIGNAL \inst13|Add1~2_combout\ : std_logic;
SIGNAL \inst13|Add1~8_combout\ : std_logic;
SIGNAL \inst13|Add1~11\ : std_logic;
SIGNAL \inst13|Add1~12_combout\ : std_logic;
SIGNAL \inst13|Add4~0_combout\ : std_logic;
SIGNAL \inst13|Add4~2_combout\ : std_logic;
SIGNAL \inst13|Add4~8_combout\ : std_logic;
SIGNAL \inst13|Add4~11\ : std_logic;
SIGNAL \inst13|Add4~12_combout\ : std_logic;
SIGNAL \inst13|Add2~0_combout\ : std_logic;
SIGNAL \inst13|Add2~2_combout\ : std_logic;
SIGNAL \inst13|Add2~8_combout\ : std_logic;
SIGNAL \inst13|Add3~0_combout\ : std_logic;
SIGNAL \inst13|Add3~2_combout\ : std_logic;
SIGNAL \inst13|Add3~4_combout\ : std_logic;
SIGNAL \inst13|Add3~6_combout\ : std_logic;
SIGNAL \inst13|Add3~10_combout\ : std_logic;
SIGNAL \inst13|Add7~0_combout\ : std_logic;
SIGNAL \inst13|Add7~1\ : std_logic;
SIGNAL \inst13|Add7~2_combout\ : std_logic;
SIGNAL \inst13|Add7~3\ : std_logic;
SIGNAL \inst13|Add7~4_combout\ : std_logic;
SIGNAL \inst13|Add7~5\ : std_logic;
SIGNAL \inst13|Add7~6_combout\ : std_logic;
SIGNAL \inst13|Add7~7\ : std_logic;
SIGNAL \inst13|Add7~8_combout\ : std_logic;
SIGNAL \inst13|Add7~9\ : std_logic;
SIGNAL \inst13|Add7~10_combout\ : std_logic;
SIGNAL \inst13|Add7~11\ : std_logic;
SIGNAL \inst13|Add7~12_combout\ : std_logic;
SIGNAL \inst13|Add7~13\ : std_logic;
SIGNAL \inst13|Add7~14_combout\ : std_logic;
SIGNAL \inst13|Add6~4_combout\ : std_logic;
SIGNAL \inst13|Add8~0_combout\ : std_logic;
SIGNAL \inst13|Add8~2_combout\ : std_logic;
SIGNAL \inst13|Add8~8_combout\ : std_logic;
SIGNAL \inst13|speed[5]~2_combout\ : std_logic;
SIGNAL \inst13|speed[1]~0_combout\ : std_logic;
SIGNAL \inst6|Add1~14_combout\ : std_logic;
SIGNAL \inst6|Add1~22_combout\ : std_logic;
SIGNAL \inst17|cnt8[1]~27_combout\ : std_logic;
SIGNAL \inst17|cnt8[4]~33_combout\ : std_logic;
SIGNAL \inst17|cnt8[17]~59_combout\ : std_logic;
SIGNAL \inst17|cnt8[23]~72\ : std_logic;
SIGNAL \inst17|cnt8[24]~73_combout\ : std_logic;
SIGNAL \inst13|DelayCnt[3]~36_combout\ : std_logic;
SIGNAL \inst13|DelayCnt[5]~40_combout\ : std_logic;
SIGNAL \inst13|DelayCnt[6]~42_combout\ : std_logic;
SIGNAL \inst13|DelayCnt[12]~54_combout\ : std_logic;
SIGNAL \inst13|DelayCnt[24]~78_combout\ : std_logic;
SIGNAL \inst13|DelayCnt[28]~86_combout\ : std_logic;
SIGNAL \inst17|cnt9600[0]~22_combout\ : std_logic;
SIGNAL \inst17|cnt9600[5]~32_combout\ : std_logic;
SIGNAL \inst17|cnt9600[14]~50_combout\ : std_logic;
SIGNAL \inst17|cnt9600[17]~56_combout\ : std_logic;
SIGNAL \inst17|cnt9600[19]~61\ : std_logic;
SIGNAL \inst17|cnt9600[20]~62_combout\ : std_logic;
SIGNAL \inst17|cnt9600[20]~63\ : std_logic;
SIGNAL \inst17|cnt9600[21]~64_combout\ : std_logic;
SIGNAL \inst17|cnt10k[3]~18_combout\ : std_logic;
SIGNAL \inst17|cnt10k[4]~20_combout\ : std_logic;
SIGNAL \inst17|cnt10k[6]~24_combout\ : std_logic;
SIGNAL \inst17|cnt10k[10]~33\ : std_logic;
SIGNAL \inst17|cnt10k[11]~34_combout\ : std_logic;
SIGNAL \inst6|tone[1]~30_combout\ : std_logic;
SIGNAL \inst6|tone[3]~34_combout\ : std_logic;
SIGNAL \inst6|tone[4]~36_combout\ : std_logic;
SIGNAL \inst6|tone[6]~40_combout\ : std_logic;
SIGNAL \inst6|tone[8]~44_combout\ : std_logic;
SIGNAL \inst6|tone[10]~48_combout\ : std_logic;
SIGNAL \inst6|tone[19]~66_combout\ : std_logic;
SIGNAL \inst6|tone[20]~68_combout\ : std_logic;
SIGNAL \inst6|tone[26]~80_combout\ : std_logic;
SIGNAL \inst17|cnt16k[3]~18_combout\ : std_logic;
SIGNAL \inst17|cnt16k[5]~22_combout\ : std_logic;
SIGNAL \inst17|cnt16k[10]~33\ : std_logic;
SIGNAL \inst17|cnt16k[11]~34_combout\ : std_logic;
SIGNAL \inst13|cnt2[0]~6_combout\ : std_logic;
SIGNAL \inst13|Add0~0_combout\ : std_logic;
SIGNAL \inst13|Add0~1\ : std_logic;
SIGNAL \inst13|Add0~2_combout\ : std_logic;
SIGNAL \inst13|Add0~3\ : std_logic;
SIGNAL \inst13|Add0~4_combout\ : std_logic;
SIGNAL \inst13|Add0~5\ : std_logic;
SIGNAL \inst13|Add0~6_combout\ : std_logic;
SIGNAL \inst13|Add0~7\ : std_logic;
SIGNAL \inst13|Add0~8_combout\ : std_logic;
SIGNAL \inst13|Add0~9\ : std_logic;
SIGNAL \inst13|Add0~10_combout\ : std_logic;
SIGNAL \inst13|Add0~11\ : std_logic;
SIGNAL \inst13|Add0~12_combout\ : std_logic;
SIGNAL \inst13|Add0~13\ : std_logic;
SIGNAL \inst13|Add0~14_combout\ : std_logic;
SIGNAL \inst13|Add0~15\ : std_logic;
SIGNAL \inst13|Add0~16_combout\ : std_logic;
SIGNAL \inst13|Add0~17\ : std_logic;
SIGNAL \inst13|Add0~18_combout\ : std_logic;
SIGNAL \inst13|Add0~19\ : std_logic;
SIGNAL \inst13|Add0~20_combout\ : std_logic;
SIGNAL \inst13|Add0~21\ : std_logic;
SIGNAL \inst13|Add0~22_combout\ : std_logic;
SIGNAL \inst13|Add0~23\ : std_logic;
SIGNAL \inst13|Add0~24_combout\ : std_logic;
SIGNAL \inst17|cnt1[0]~27_combout\ : std_logic;
SIGNAL \inst17|cnt1[0]~28\ : std_logic;
SIGNAL \inst17|cnt1[1]~29_combout\ : std_logic;
SIGNAL \inst17|cnt1[1]~30\ : std_logic;
SIGNAL \inst17|cnt1[2]~31_combout\ : std_logic;
SIGNAL \inst17|cnt1[2]~32\ : std_logic;
SIGNAL \inst17|cnt1[3]~33_combout\ : std_logic;
SIGNAL \inst17|cnt1[3]~34\ : std_logic;
SIGNAL \inst17|cnt1[4]~35_combout\ : std_logic;
SIGNAL \inst17|cnt1[4]~36\ : std_logic;
SIGNAL \inst17|cnt1[5]~37_combout\ : std_logic;
SIGNAL \inst17|cnt1[5]~38\ : std_logic;
SIGNAL \inst17|cnt1[6]~39_combout\ : std_logic;
SIGNAL \inst17|cnt1[6]~40\ : std_logic;
SIGNAL \inst17|cnt1[7]~41_combout\ : std_logic;
SIGNAL \inst17|cnt1[7]~42\ : std_logic;
SIGNAL \inst17|cnt1[8]~43_combout\ : std_logic;
SIGNAL \inst17|cnt1[8]~44\ : std_logic;
SIGNAL \inst17|cnt1[9]~45_combout\ : std_logic;
SIGNAL \inst17|cnt1[9]~46\ : std_logic;
SIGNAL \inst17|cnt1[10]~47_combout\ : std_logic;
SIGNAL \inst17|cnt1[10]~48\ : std_logic;
SIGNAL \inst17|cnt1[11]~49_combout\ : std_logic;
SIGNAL \inst17|cnt1[11]~50\ : std_logic;
SIGNAL \inst17|cnt1[12]~51_combout\ : std_logic;
SIGNAL \inst17|cnt1[12]~52\ : std_logic;
SIGNAL \inst17|cnt1[13]~53_combout\ : std_logic;
SIGNAL \inst17|cnt1[13]~54\ : std_logic;
SIGNAL \inst17|cnt1[14]~55_combout\ : std_logic;
SIGNAL \inst17|cnt1[14]~56\ : std_logic;
SIGNAL \inst17|cnt1[15]~57_combout\ : std_logic;
SIGNAL \inst17|cnt1[15]~58\ : std_logic;
SIGNAL \inst17|cnt1[16]~59_combout\ : std_logic;
SIGNAL \inst17|cnt1[16]~60\ : std_logic;
SIGNAL \inst17|cnt1[17]~61_combout\ : std_logic;
SIGNAL \inst17|cnt1[17]~62\ : std_logic;
SIGNAL \inst17|cnt1[18]~63_combout\ : std_logic;
SIGNAL \inst17|cnt1[18]~64\ : std_logic;
SIGNAL \inst17|cnt1[19]~65_combout\ : std_logic;
SIGNAL \inst17|cnt1[19]~66\ : std_logic;
SIGNAL \inst17|cnt1[20]~67_combout\ : std_logic;
SIGNAL \inst17|cnt1[20]~68\ : std_logic;
SIGNAL \inst17|cnt1[21]~69_combout\ : std_logic;
SIGNAL \inst17|cnt1[21]~70\ : std_logic;
SIGNAL \inst17|cnt1[22]~71_combout\ : std_logic;
SIGNAL \inst17|cnt1[22]~72\ : std_logic;
SIGNAL \inst17|cnt1[23]~73_combout\ : std_logic;
SIGNAL \inst17|cnt1[23]~74\ : std_logic;
SIGNAL \inst17|cnt1[24]~75_combout\ : std_logic;
SIGNAL \inst17|cnt1[24]~76\ : std_logic;
SIGNAL \inst17|cnt1[25]~77_combout\ : std_logic;
SIGNAL \inst17|cnt1[25]~78\ : std_logic;
SIGNAL \inst17|cnt1[26]~79_combout\ : std_logic;
SIGNAL \inst12|cnt[0]~8_combout\ : std_logic;
SIGNAL \inst6|Equal0~1_combout\ : std_logic;
SIGNAL \inst18|Div0|auto_generated|divider|divider|StageOut[28]~27_combout\ : std_logic;
SIGNAL \inst18|Div0|auto_generated|divider|divider|StageOut[27]~29_combout\ : std_logic;
SIGNAL \inst18|Div0|auto_generated|divider|divider|StageOut[26]~30_combout\ : std_logic;
SIGNAL \inst18|Div0|auto_generated|divider|divider|StageOut[25]~32_combout\ : std_logic;
SIGNAL \inst18|Div0|auto_generated|divider|divider|StageOut[32]~35_combout\ : std_logic;
SIGNAL \inst18|Div0|auto_generated|divider|divider|StageOut[31]~36_combout\ : std_logic;
SIGNAL \inst18|Div0|auto_generated|divider|divider|StageOut[30]~38_combout\ : std_logic;
SIGNAL \inst18|Div0|auto_generated|divider|divider|StageOut[37]~41_combout\ : std_logic;
SIGNAL \inst18|Div0|auto_generated|divider|divider|StageOut[36]~42_combout\ : std_logic;
SIGNAL \inst18|Div0|auto_generated|divider|divider|StageOut[35]~45_combout\ : std_logic;
SIGNAL \inst|Div2|auto_generated|divider|divider|StageOut[18]~36_combout\ : std_logic;
SIGNAL \inst|Div2|auto_generated|divider|divider|StageOut[17]~38_combout\ : std_logic;
SIGNAL \inst|Div2|auto_generated|divider|divider|StageOut[16]~41_combout\ : std_logic;
SIGNAL \inst|Div2|auto_generated|divider|divider|StageOut[15]~42_combout\ : std_logic;
SIGNAL \inst|Div2|auto_generated|divider|divider|StageOut[22]~45_combout\ : std_logic;
SIGNAL \inst|Div2|auto_generated|divider|divider|StageOut[21]~46_combout\ : std_logic;
SIGNAL \inst|Div2|auto_generated|divider|divider|StageOut[20]~48_combout\ : std_logic;
SIGNAL \inst|Div2|auto_generated|divider|divider|StageOut[27]~51_combout\ : std_logic;
SIGNAL \inst|Div2|auto_generated|divider|divider|StageOut[26]~52_combout\ : std_logic;
SIGNAL \inst|Div2|auto_generated|divider|divider|StageOut[25]~55_combout\ : std_logic;
SIGNAL \inst|Div2|auto_generated|divider|divider|StageOut[33]~56_combout\ : std_logic;
SIGNAL \inst|Div2|auto_generated|divider|divider|StageOut[32]~57_combout\ : std_logic;
SIGNAL \inst|Div2|auto_generated|divider|divider|StageOut[31]~58_combout\ : std_logic;
SIGNAL \inst|Div2|auto_generated|divider|divider|StageOut[31]~59_combout\ : std_logic;
SIGNAL \inst|Div2|auto_generated|divider|divider|StageOut[30]~60_combout\ : std_logic;
SIGNAL \inst|Div2|auto_generated|divider|divider|StageOut[30]~61_combout\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|StageOut[54]~0_combout\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|StageOut[54]~1_combout\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|StageOut[53]~2_combout\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|StageOut[53]~3_combout\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|StageOut[52]~4_combout\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|StageOut[52]~5_combout\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|StageOut[51]~6_combout\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|StageOut[51]~7_combout\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|StageOut[50]~8_combout\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|StageOut[50]~9_combout\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|StageOut[49]~10_combout\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|StageOut[49]~11_combout\ : std_logic;
SIGNAL \inst|Mod2|auto_generated|divider|divider|StageOut[18]~36_combout\ : std_logic;
SIGNAL \inst|Mod2|auto_generated|divider|divider|StageOut[17]~38_combout\ : std_logic;
SIGNAL \inst|Mod2|auto_generated|divider|divider|StageOut[16]~40_combout\ : std_logic;
SIGNAL \inst|Mod2|auto_generated|divider|divider|StageOut[15]~42_combout\ : std_logic;
SIGNAL \inst|Mod2|auto_generated|divider|divider|StageOut[23]~44_combout\ : std_logic;
SIGNAL \inst|Mod2|auto_generated|divider|divider|StageOut[22]~45_combout\ : std_logic;
SIGNAL \inst|Mod2|auto_generated|divider|divider|StageOut[21]~47_combout\ : std_logic;
SIGNAL \inst|Mod2|auto_generated|divider|divider|StageOut[20]~49_combout\ : std_logic;
SIGNAL \inst|Mod2|auto_generated|divider|divider|StageOut[28]~50_combout\ : std_logic;
SIGNAL \inst|Mod2|auto_generated|divider|divider|StageOut[26]~52_combout\ : std_logic;
SIGNAL \inst|Mod2|auto_generated|divider|divider|StageOut[25]~54_combout\ : std_logic;
SIGNAL \inst|Mod2|auto_generated|divider|divider|StageOut[30]~57_combout\ : std_logic;
SIGNAL \inst|Mod2|auto_generated|divider|divider|StageOut[33]~58_combout\ : std_logic;
SIGNAL \inst|Mod2|auto_generated|divider|divider|StageOut[32]~59_combout\ : std_logic;
SIGNAL \inst|Mod2|auto_generated|divider|divider|StageOut[31]~60_combout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|StageOut[33]~0_combout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|StageOut[32]~3_combout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|StageOut[31]~5_combout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|StageOut[30]~6_combout\ : std_logic;
SIGNAL \inst|Mux2~1_combout\ : std_logic;
SIGNAL \inst|Mux0~2_combout\ : std_logic;
SIGNAL \inst|Mux0~3_combout\ : std_logic;
SIGNAL \inst|Mux0~4_combout\ : std_logic;
SIGNAL \inst|Mux0~5_combout\ : std_logic;
SIGNAL \inst13|lastsign3~regout\ : std_logic;
SIGNAL \inst13|led~12_combout\ : std_logic;
SIGNAL \inst13|led~16_combout\ : std_logic;
SIGNAL \inst13|led~21_combout\ : std_logic;
SIGNAL \inst13|led~22_combout\ : std_logic;
SIGNAL \inst11|Mux2~1_combout\ : std_logic;
SIGNAL \inst11|Mux2~2_combout\ : std_logic;
SIGNAL \inst11|Mux2~3_combout\ : std_logic;
SIGNAL \inst11|Mux6~0_combout\ : std_logic;
SIGNAL \inst17|LessThan1~6_combout\ : std_logic;
SIGNAL \inst13|always1~5_combout\ : std_logic;
SIGNAL \inst13|speed~64_combout\ : std_logic;
SIGNAL \inst13|speed~66_combout\ : std_logic;
SIGNAL \inst13|always1~11_combout\ : std_logic;
SIGNAL \inst13|speed~67_combout\ : std_logic;
SIGNAL \inst13|speed~68_combout\ : std_logic;
SIGNAL \inst13|speed~69_combout\ : std_logic;
SIGNAL \inst13|speed~70_combout\ : std_logic;
SIGNAL \inst13|speed~71_combout\ : std_logic;
SIGNAL \inst13|speed~73_combout\ : std_logic;
SIGNAL \inst13|speed~74_combout\ : std_logic;
SIGNAL \inst13|speed~75_combout\ : std_logic;
SIGNAL \inst13|speed~76_combout\ : std_logic;
SIGNAL \inst13|speed~77_combout\ : std_logic;
SIGNAL \inst13|speed~100_combout\ : std_logic;
SIGNAL \inst13|speed~101_combout\ : std_logic;
SIGNAL \inst13|speed~102_combout\ : std_logic;
SIGNAL \inst13|speed~103_combout\ : std_logic;
SIGNAL \inst13|speed~104_combout\ : std_logic;
SIGNAL \inst13|speed~105_combout\ : std_logic;
SIGNAL \inst13|speed~106_combout\ : std_logic;
SIGNAL \inst13|speed~107_combout\ : std_logic;
SIGNAL \inst13|speed~108_combout\ : std_logic;
SIGNAL \inst13|speed~109_combout\ : std_logic;
SIGNAL \inst13|speed~110_combout\ : std_logic;
SIGNAL \inst13|speed~111_combout\ : std_logic;
SIGNAL \inst13|speed~112_combout\ : std_logic;
SIGNAL \inst13|speed~113_combout\ : std_logic;
SIGNAL \inst13|speed~114_combout\ : std_logic;
SIGNAL \inst13|speed~115_combout\ : std_logic;
SIGNAL \inst13|speed~116_combout\ : std_logic;
SIGNAL \inst13|speed~117_combout\ : std_logic;
SIGNAL \inst13|speed~118_combout\ : std_logic;
SIGNAL \inst13|speed~119_combout\ : std_logic;
SIGNAL \inst13|speed~120_combout\ : std_logic;
SIGNAL \inst13|speed~121_combout\ : std_logic;
SIGNAL \inst13|speed~122_combout\ : std_logic;
SIGNAL \inst13|speed~123_combout\ : std_logic;
SIGNAL \inst13|speed~124_combout\ : std_logic;
SIGNAL \inst13|speed~125_combout\ : std_logic;
SIGNAL \inst13|speed~126_combout\ : std_logic;
SIGNAL \inst13|speed~129_combout\ : std_logic;
SIGNAL \inst13|speed~132_combout\ : std_logic;
SIGNAL \inst13|direction~9_combout\ : std_logic;
SIGNAL \inst13|direction~10_combout\ : std_logic;
SIGNAL \inst13|direction~11_combout\ : std_logic;
SIGNAL \inst13|direction~12_combout\ : std_logic;
SIGNAL \inst13|direction~13_combout\ : std_logic;
SIGNAL \inst13|direction~14_combout\ : std_logic;
SIGNAL \inst6|counter~9_combout\ : std_logic;
SIGNAL \inst6|counter~10_combout\ : std_logic;
SIGNAL \inst6|counter~17_combout\ : std_logic;
SIGNAL \inst6|counter~18_combout\ : std_logic;
SIGNAL \inst13|beepEnable~4_combout\ : std_logic;
SIGNAL \inst13|degree~30_combout\ : std_logic;
SIGNAL \inst13|degree~36_combout\ : std_logic;
SIGNAL \inst13|degree~37_combout\ : std_logic;
SIGNAL \inst13|degree~38_combout\ : std_logic;
SIGNAL \inst13|degree~42_combout\ : std_logic;
SIGNAL \inst13|degree~43_combout\ : std_logic;
SIGNAL \inst13|degree~59_combout\ : std_logic;
SIGNAL \inst13|degree~69_combout\ : std_logic;
SIGNAL \inst13|degree~70_combout\ : std_logic;
SIGNAL \inst13|clk_9600~regout\ : std_logic;
SIGNAL \inst11|byteCount[3]~0_combout\ : std_logic;
SIGNAL \inst17|out_1~regout\ : std_logic;
SIGNAL \inst13|DelayCnt[0]~92_combout\ : std_logic;
SIGNAL \inst9|state.00~regout\ : std_logic;
SIGNAL \inst9|Selector5~0_combout\ : std_logic;
SIGNAL \inst13|Equal0~0_combout\ : std_logic;
SIGNAL \inst13|Equal0~1_combout\ : std_logic;
SIGNAL \inst13|Equal0~2_combout\ : std_logic;
SIGNAL \inst13|Equal0~3_combout\ : std_logic;
SIGNAL \inst13|clk_9600~0_combout\ : std_logic;
SIGNAL \inst17|LessThan0~0_combout\ : std_logic;
SIGNAL \inst17|LessThan0~1_combout\ : std_logic;
SIGNAL \inst17|LessThan0~2_combout\ : std_logic;
SIGNAL \inst17|LessThan0~3_combout\ : std_logic;
SIGNAL \inst17|LessThan0~4_combout\ : std_logic;
SIGNAL \inst17|LessThan0~5_combout\ : std_logic;
SIGNAL \inst17|LessThan0~6_combout\ : std_logic;
SIGNAL \inst17|LessThan0~7_combout\ : std_logic;
SIGNAL \inst17|LessThan0~8_combout\ : std_logic;
SIGNAL \inst17|out_1~0_combout\ : std_logic;
SIGNAL \inst9|state.10~regout\ : std_logic;
SIGNAL \inst9|Selector0~0_combout\ : std_logic;
SIGNAL \inst13|clk_count~0_combout\ : std_logic;
SIGNAL \inst13|clk_count~1_combout\ : std_logic;
SIGNAL \inst13|clk_count~2_combout\ : std_logic;
SIGNAL \inst13|clk_count~3_combout\ : std_logic;
SIGNAL \inst13|clk_count~4_combout\ : std_logic;
SIGNAL \inst9|Selector2~0_combout\ : std_logic;
SIGNAL \inst18|Div0|auto_generated|divider|divider|StageOut[38]~46_combout\ : std_logic;
SIGNAL \inst|Div2|auto_generated|divider|divider|StageOut[28]~62_combout\ : std_logic;
SIGNAL \inst|Div2|auto_generated|divider|divider|StageOut[33]~63_combout\ : std_logic;
SIGNAL \inst|Mux0~6_combout\ : std_logic;
SIGNAL \inst13|led~25_combout\ : std_logic;
SIGNAL \inst13|speed[6]~136_combout\ : std_logic;
SIGNAL \inst13|speed~141_combout\ : std_logic;
SIGNAL \inst13|speed~142_combout\ : std_logic;
SIGNAL \inst13|direction~17_combout\ : std_logic;
SIGNAL \inst13|degree~86_combout\ : std_logic;
SIGNAL \inst13|degree~88_combout\ : std_logic;
SIGNAL \inst18|Div0|auto_generated|divider|divider|StageOut[33]~47_combout\ : std_logic;
SIGNAL \inst|Div2|auto_generated|divider|divider|StageOut[23]~64_combout\ : std_logic;
SIGNAL \inst|Div2|auto_generated|divider|divider|StageOut[32]~67_combout\ : std_logic;
SIGNAL \inst|Mod2|auto_generated|divider|divider|StageOut[27]~66_combout\ : std_logic;
SIGNAL \inst13|lastsign3~0_combout\ : std_logic;
SIGNAL \inst17|out_8~clkctrl_outclk\ : std_logic;
SIGNAL \inst13|clk_9600~clkctrl_outclk\ : std_logic;
SIGNAL \inst12|dis[0]~feeder_combout\ : std_logic;
SIGNAL \inst17|cnt9600[0]~23\ : std_logic;
SIGNAL \inst17|cnt9600[1]~24_combout\ : std_logic;
SIGNAL \inst17|cnt9600[1]~25\ : std_logic;
SIGNAL \inst17|cnt9600[2]~26_combout\ : std_logic;
SIGNAL \inst17|cnt9600[2]~27\ : std_logic;
SIGNAL \inst17|cnt9600[3]~29\ : std_logic;
SIGNAL \inst17|cnt9600[4]~30_combout\ : std_logic;
SIGNAL \inst17|cnt9600[4]~31\ : std_logic;
SIGNAL \inst17|cnt9600[5]~33\ : std_logic;
SIGNAL \inst17|cnt9600[6]~34_combout\ : std_logic;
SIGNAL \inst17|cnt9600[6]~35\ : std_logic;
SIGNAL \inst17|cnt9600[7]~36_combout\ : std_logic;
SIGNAL \inst17|cnt9600[7]~37\ : std_logic;
SIGNAL \inst17|cnt9600[8]~38_combout\ : std_logic;
SIGNAL \inst17|cnt9600[8]~39\ : std_logic;
SIGNAL \inst17|cnt9600[9]~40_combout\ : std_logic;
SIGNAL \inst17|cnt9600[9]~41\ : std_logic;
SIGNAL \inst17|cnt9600[10]~42_combout\ : std_logic;
SIGNAL \inst17|cnt9600[10]~43\ : std_logic;
SIGNAL \inst17|cnt9600[11]~44_combout\ : std_logic;
SIGNAL \inst17|cnt9600[11]~45\ : std_logic;
SIGNAL \inst17|cnt9600[12]~46_combout\ : std_logic;
SIGNAL \inst17|cnt9600[12]~47\ : std_logic;
SIGNAL \inst17|cnt9600[13]~48_combout\ : std_logic;
SIGNAL \inst17|cnt9600[13]~49\ : std_logic;
SIGNAL \inst17|cnt9600[14]~51\ : std_logic;
SIGNAL \inst17|cnt9600[15]~52_combout\ : std_logic;
SIGNAL \inst17|cnt9600[15]~53\ : std_logic;
SIGNAL \inst17|cnt9600[16]~55\ : std_logic;
SIGNAL \inst17|cnt9600[17]~57\ : std_logic;
SIGNAL \inst17|cnt9600[18]~58_combout\ : std_logic;
SIGNAL \inst17|cnt9600[18]~59\ : std_logic;
SIGNAL \inst17|cnt9600[19]~60_combout\ : std_logic;
SIGNAL \inst17|cnt9600[16]~54_combout\ : std_logic;
SIGNAL \inst17|LessThan1~5_combout\ : std_logic;
SIGNAL \inst17|LessThan1~4_combout\ : std_logic;
SIGNAL \inst17|LessThan1~0_combout\ : std_logic;
SIGNAL \inst17|cnt9600[3]~28_combout\ : std_logic;
SIGNAL \inst17|LessThan1~1_combout\ : std_logic;
SIGNAL \inst17|LessThan1~2_combout\ : std_logic;
SIGNAL \inst17|LessThan1~3_combout\ : std_logic;
SIGNAL \inst17|LessThan1~7_combout\ : std_logic;
SIGNAL \inst17|out_9600~0_combout\ : std_logic;
SIGNAL \inst17|out_9600~regout\ : std_logic;
SIGNAL \inst17|out_9600~clkctrl_outclk\ : std_logic;
SIGNAL \inst11|status~feeder_combout\ : std_logic;
SIGNAL \inst11|resetStatus~0_combout\ : std_logic;
SIGNAL \inst11|resetStatus~regout\ : std_logic;
SIGNAL \inst11|status~regout\ : std_logic;
SIGNAL \inst11|byteCount[0]~1_combout\ : std_logic;
SIGNAL \inst11|byteCount[1]~3_combout\ : std_logic;
SIGNAL \inst11|byteCount[3]~4_combout\ : std_logic;
SIGNAL \inst11|byteCount[3]~5_combout\ : std_logic;
SIGNAL \inst11|Add0~0_combout\ : std_logic;
SIGNAL \inst11|byteCount[2]~2_combout\ : std_logic;
SIGNAL \inst11|Equal0~0_combout\ : std_logic;
SIGNAL \inst11|data[7]~2_combout\ : std_logic;
SIGNAL \inst11|resetSend~regout\ : std_logic;
SIGNAL \inst11|send~0_combout\ : std_logic;
SIGNAL \inst11|send~1_combout\ : std_logic;
SIGNAL \inst11|send~regout\ : std_logic;
SIGNAL \inst3|last_send~feeder_combout\ : std_logic;
SIGNAL \inst3|last_send~regout\ : std_logic;
SIGNAL \inst3|flag~0_combout\ : std_logic;
SIGNAL \inst3|flag~regout\ : std_logic;
SIGNAL \inst3|count~3_combout\ : std_logic;
SIGNAL \inst3|count[2]~2_combout\ : std_logic;
SIGNAL \inst3|count~4_combout\ : std_logic;
SIGNAL \inst3|count~1_combout\ : std_logic;
SIGNAL \inst3|count~0_combout\ : std_logic;
SIGNAL \inst3|count~5_combout\ : std_logic;
SIGNAL \inst11|data[0]~4_combout\ : std_logic;
SIGNAL \inst9|Selector3~0_combout\ : std_logic;
SIGNAL \inst9|Selector1~1_combout\ : std_logic;
SIGNAL \inst9|Selector6~0_combout\ : std_logic;
SIGNAL \inst9|Selector5~1_combout\ : std_logic;
SIGNAL \inst9|Add0~0_combout\ : std_logic;
SIGNAL \inst9|Selector3~1_combout\ : std_logic;
SIGNAL \rxd~combout\ : std_logic;
SIGNAL \inst9|Selector1~0_combout\ : std_logic;
SIGNAL \inst9|state.01~regout\ : std_logic;
SIGNAL \inst9|Selector4~0_combout\ : std_logic;
SIGNAL \inst9|Decoder0~3_combout\ : std_logic;
SIGNAL \inst9|data[7]~6_combout\ : std_logic;
SIGNAL \inst9|Decoder0~4_combout\ : std_logic;
SIGNAL \inst9|data[6]~7_combout\ : std_logic;
SIGNAL \inst13|state~11_combout\ : std_logic;
SIGNAL \inst13|state.01~regout\ : std_logic;
SIGNAL \inst13|display[7]~0_combout\ : std_logic;
SIGNAL \inst13|initialSpeed~0_combout\ : std_logic;
SIGNAL \inst13|state~9_combout\ : std_logic;
SIGNAL \inst13|state.10~regout\ : std_logic;
SIGNAL \inst13|DelayCnt[1]~32_combout\ : std_logic;
SIGNAL \inst13|state~10_combout\ : std_logic;
SIGNAL \inst13|state.00~regout\ : std_logic;
SIGNAL \inst13|DelayCnt[30]~93_combout\ : std_logic;
SIGNAL \inst13|DelayCnt[1]~33\ : std_logic;
SIGNAL \inst13|DelayCnt[2]~34_combout\ : std_logic;
SIGNAL \inst13|DelayCnt[2]~35\ : std_logic;
SIGNAL \inst13|DelayCnt[3]~37\ : std_logic;
SIGNAL \inst13|DelayCnt[4]~38_combout\ : std_logic;
SIGNAL \inst13|DelayCnt[4]~39\ : std_logic;
SIGNAL \inst13|DelayCnt[5]~41\ : std_logic;
SIGNAL \inst13|DelayCnt[6]~43\ : std_logic;
SIGNAL \inst13|DelayCnt[7]~44_combout\ : std_logic;
SIGNAL \inst13|DelayCnt[7]~45\ : std_logic;
SIGNAL \inst13|DelayCnt[8]~46_combout\ : std_logic;
SIGNAL \inst13|DelayCnt[8]~47\ : std_logic;
SIGNAL \inst13|DelayCnt[9]~49\ : std_logic;
SIGNAL \inst13|DelayCnt[10]~50_combout\ : std_logic;
SIGNAL \inst13|DelayCnt[10]~51\ : std_logic;
SIGNAL \inst13|DelayCnt[11]~52_combout\ : std_logic;
SIGNAL \inst13|DelayCnt[11]~53\ : std_logic;
SIGNAL \inst13|DelayCnt[12]~55\ : std_logic;
SIGNAL \inst13|DelayCnt[13]~56_combout\ : std_logic;
SIGNAL \inst13|DelayCnt[13]~57\ : std_logic;
SIGNAL \inst13|DelayCnt[14]~58_combout\ : std_logic;
SIGNAL \inst13|DelayCnt[14]~59\ : std_logic;
SIGNAL \inst13|DelayCnt[15]~60_combout\ : std_logic;
SIGNAL \inst13|DelayCnt[15]~61\ : std_logic;
SIGNAL \inst13|DelayCnt[16]~62_combout\ : std_logic;
SIGNAL \inst13|DelayCnt[16]~63\ : std_logic;
SIGNAL \inst13|DelayCnt[17]~64_combout\ : std_logic;
SIGNAL \inst13|DelayCnt[17]~65\ : std_logic;
SIGNAL \inst13|DelayCnt[18]~66_combout\ : std_logic;
SIGNAL \inst13|DelayCnt[18]~67\ : std_logic;
SIGNAL \inst13|DelayCnt[19]~69\ : std_logic;
SIGNAL \inst13|DelayCnt[20]~70_combout\ : std_logic;
SIGNAL \inst13|DelayCnt[20]~71\ : std_logic;
SIGNAL \inst13|DelayCnt[21]~73\ : std_logic;
SIGNAL \inst13|DelayCnt[22]~75\ : std_logic;
SIGNAL \inst13|DelayCnt[23]~76_combout\ : std_logic;
SIGNAL \inst13|DelayCnt[23]~77\ : std_logic;
SIGNAL \inst13|DelayCnt[24]~79\ : std_logic;
SIGNAL \inst13|DelayCnt[25]~80_combout\ : std_logic;
SIGNAL \inst13|DelayCnt[25]~81\ : std_logic;
SIGNAL \inst13|DelayCnt[26]~83\ : std_logic;
SIGNAL \inst13|DelayCnt[27]~84_combout\ : std_logic;
SIGNAL \inst13|DelayCnt[27]~85\ : std_logic;
SIGNAL \inst13|DelayCnt[28]~87\ : std_logic;
SIGNAL \inst13|DelayCnt[29]~88_combout\ : std_logic;
SIGNAL \inst13|DelayCnt[29]~89\ : std_logic;
SIGNAL \inst13|DelayCnt[30]~90_combout\ : std_logic;
SIGNAL \inst13|DelayCnt[26]~82_combout\ : std_logic;
SIGNAL \inst13|LessThan2~0_combout\ : std_logic;
SIGNAL \inst13|DelayCnt[22]~74_combout\ : std_logic;
SIGNAL \inst13|DelayCnt[21]~72_combout\ : std_logic;
SIGNAL \inst13|DelayCnt[19]~68_combout\ : std_logic;
SIGNAL \inst13|LessThan2~1_combout\ : std_logic;
SIGNAL \inst13|DelayCnt[9]~48_combout\ : std_logic;
SIGNAL \inst13|LessThan2~2_combout\ : std_logic;
SIGNAL \inst13|LessThan2~3_combout\ : std_logic;
SIGNAL \inst13|LessThan2~4_combout\ : std_logic;
SIGNAL \inst13|LessThan2~5_combout\ : std_logic;
SIGNAL \inst13|LessThan2~6_combout\ : std_logic;
SIGNAL \inst13|LessThan2~7_combout\ : std_logic;
SIGNAL \inst13|initialSpeed[7]~1_combout\ : std_logic;
SIGNAL \inst13|isSet~0_combout\ : std_logic;
SIGNAL \inst13|isSet~regout\ : std_logic;
SIGNAL \inst13|display[5]~2_combout\ : std_logic;
SIGNAL \inst13|initialSpeed~3_combout\ : std_logic;
SIGNAL \inst13|display[4]~3_combout\ : std_logic;
SIGNAL \inst13|initialSpeed~4_combout\ : std_logic;
SIGNAL \inst9|Decoder0~2_combout\ : std_logic;
SIGNAL \inst9|data[3]~4_combout\ : std_logic;
SIGNAL \inst13|initialSpeed~5_combout\ : std_logic;
SIGNAL \inst9|Decoder0~1_combout\ : std_logic;
SIGNAL \inst9|data[1]~3_combout\ : std_logic;
SIGNAL \inst13|initialSpeed~7_combout\ : std_logic;
SIGNAL \inst13|Add3~1\ : std_logic;
SIGNAL \inst13|Add3~3\ : std_logic;
SIGNAL \inst13|Add3~5\ : std_logic;
SIGNAL \inst13|Add3~7\ : std_logic;
SIGNAL \inst13|Add3~9\ : std_logic;
SIGNAL \inst13|Add3~11\ : std_logic;
SIGNAL \inst13|Add3~13\ : std_logic;
SIGNAL \inst13|Add3~14_combout\ : std_logic;
SIGNAL \inst4|cnt[0]~8_combout\ : std_logic;
SIGNAL \ultraback_echo~combout\ : std_logic;
SIGNAL \inst4|cnt[4]~16_combout\ : std_logic;
SIGNAL \inst4|cnt[2]~24_combout\ : std_logic;
SIGNAL \inst4|cnt[2]~25_combout\ : std_logic;
SIGNAL \inst4|cnt[2]~26_combout\ : std_logic;
SIGNAL \inst4|cnt[0]~9\ : std_logic;
SIGNAL \inst4|cnt[1]~10_combout\ : std_logic;
SIGNAL \inst4|cnt[1]~11\ : std_logic;
SIGNAL \inst4|cnt[2]~13\ : std_logic;
SIGNAL \inst4|cnt[3]~14_combout\ : std_logic;
SIGNAL \inst4|cnt[3]~15\ : std_logic;
SIGNAL \inst4|cnt[4]~17\ : std_logic;
SIGNAL \inst4|cnt[5]~18_combout\ : std_logic;
SIGNAL \inst4|cnt[5]~19\ : std_logic;
SIGNAL \inst4|cnt[6]~20_combout\ : std_logic;
SIGNAL \inst4|cnt[2]~12_combout\ : std_logic;
SIGNAL \inst13|LessThan5~0_combout\ : std_logic;
SIGNAL \inst13|LessThan1~3_combout\ : std_logic;
SIGNAL \inst4|cnt[6]~21\ : std_logic;
SIGNAL \inst4|cnt[7]~22_combout\ : std_logic;
SIGNAL \inst13|LessThan1~2_combout\ : std_logic;
SIGNAL \inst9|Decoder0~0_combout\ : std_logic;
SIGNAL \inst9|data[0]~0_combout\ : std_logic;
SIGNAL \inst9|data[5]~2_combout\ : std_logic;
SIGNAL \inst9|data[4]~1_combout\ : std_logic;
SIGNAL \inst13|Equal6~0_combout\ : std_logic;
SIGNAL \inst13|flag~0_combout\ : std_logic;
SIGNAL \inst13|flag~regout\ : std_logic;
SIGNAL \inst13|lastsign2~0_combout\ : std_logic;
SIGNAL \inst13|display[4]~10_combout\ : std_logic;
SIGNAL \inst13|lastsign2~regout\ : std_logic;
SIGNAL \inst13|mystate~2_combout\ : std_logic;
SIGNAL \inst13|always1~2_combout\ : std_logic;
SIGNAL \inst13|led~10_combout\ : std_logic;
SIGNAL \inst13|speed~33_combout\ : std_logic;
SIGNAL \inst13|mystate[0]~1_combout\ : std_logic;
SIGNAL \inst13|backdone~5_combout\ : std_logic;
SIGNAL \inst13|mystate~0_combout\ : std_logic;
SIGNAL \inst13|Equal7~0_combout\ : std_logic;
SIGNAL \inst13|LessThan3~0_combout\ : std_logic;
SIGNAL \inst13|LessThan3~1_combout\ : std_logic;
SIGNAL \inst13|always1~13_combout\ : std_logic;
SIGNAL \inst13|backStatus~18_combout\ : std_logic;
SIGNAL \inst13|backStatus~19_combout\ : std_logic;
SIGNAL \inst13|backStatus~15_combout\ : std_logic;
SIGNAL \inst13|speed~65_combout\ : std_logic;
SIGNAL \inst13|backStatus~16_combout\ : std_logic;
SIGNAL \inst13|backStatus~17_combout\ : std_logic;
SIGNAL \inst13|backStatus.01~regout\ : std_logic;
SIGNAL \inst13|cnt2[0]~7\ : std_logic;
SIGNAL \inst13|cnt2[1]~9\ : std_logic;
SIGNAL \inst13|cnt2[2]~11\ : std_logic;
SIGNAL \inst13|cnt2[3]~12_combout\ : std_logic;
SIGNAL \inst13|cnt2[3]~13\ : std_logic;
SIGNAL \inst13|cnt2[4]~15\ : std_logic;
SIGNAL \inst13|cnt2[5]~16_combout\ : std_logic;
SIGNAL \inst13|cnt2[4]~14_combout\ : std_logic;
SIGNAL \inst13|cnt2[2]~10_combout\ : std_logic;
SIGNAL \inst13|cnt2[1]~8_combout\ : std_logic;
SIGNAL \inst13|always1~14_combout\ : std_logic;
SIGNAL \inst13|backStatus~13_combout\ : std_logic;
SIGNAL \inst13|target2[2]~4_combout\ : std_logic;
SIGNAL \inst13|target2~12_combout\ : std_logic;
SIGNAL \inst13|speed[6]~53_combout\ : std_logic;
SIGNAL \inst13|target2[2]~3_combout\ : std_logic;
SIGNAL \inst13|target2~11_combout\ : std_logic;
SIGNAL \inst13|WideOr0~combout\ : std_logic;
SIGNAL \inst5|cnt[0]~9\ : std_logic;
SIGNAL \inst5|cnt[1]~10_combout\ : std_logic;
SIGNAL \ultra_2~combout\ : std_logic;
SIGNAL \inst5|cnt[3]~15\ : std_logic;
SIGNAL \inst5|cnt[4]~17\ : std_logic;
SIGNAL \inst5|cnt[5]~18_combout\ : std_logic;
SIGNAL \inst5|cnt[5]~19\ : std_logic;
SIGNAL \inst5|cnt[6]~21\ : std_logic;
SIGNAL \inst5|cnt[7]~25_combout\ : std_logic;
SIGNAL \inst5|cnt[6]~20_combout\ : std_logic;
SIGNAL \inst5|cnt[2]~12_combout\ : std_logic;
SIGNAL \inst5|cnt[0]~8_combout\ : std_logic;
SIGNAL \inst5|cnt[3]~22_combout\ : std_logic;
SIGNAL \inst5|cnt[3]~23_combout\ : std_logic;
SIGNAL \inst5|cnt[3]~24_combout\ : std_logic;
SIGNAL \inst5|cnt[1]~11\ : std_logic;
SIGNAL \inst5|cnt[2]~13\ : std_logic;
SIGNAL \inst5|cnt[3]~14_combout\ : std_logic;
SIGNAL \inst13|LessThan6~0_combout\ : std_logic;
SIGNAL \inst2|always0~0_combout\ : std_logic;
SIGNAL \inst13|target2[2]~2_combout\ : std_logic;
SIGNAL \inst13|target2[2]~7_combout\ : std_logic;
SIGNAL \inst13|target2[1]~9_combout\ : std_logic;
SIGNAL \inst13|target2[2]~5_combout\ : std_logic;
SIGNAL \inst13|target2[2]~6_combout\ : std_logic;
SIGNAL \inst13|target2[1]~8_combout\ : std_logic;
SIGNAL \inst13|target2[1]~10_combout\ : std_logic;
SIGNAL \inst13|LessThan7~0_combout\ : std_logic;
SIGNAL \inst13|LessThan7~1_combout\ : std_logic;
SIGNAL \inst13|LessThan7~2_combout\ : std_logic;
SIGNAL \inst13|LessThan7~2_wirecell_combout\ : std_logic;
SIGNAL \inst13|Delaying2~regout\ : std_logic;
SIGNAL \inst13|last2~0_combout\ : std_logic;
SIGNAL \inst13|last2~3_combout\ : std_logic;
SIGNAL \inst13|last2~4_combout\ : std_logic;
SIGNAL \inst13|last2~regout\ : std_logic;
SIGNAL \inst13|always1~9_combout\ : std_logic;
SIGNAL \inst13|backdone~3_combout\ : std_logic;
SIGNAL \inst13|backdone~4_combout\ : std_logic;
SIGNAL \inst13|backdone~6_combout\ : std_logic;
SIGNAL \inst13|backdone~0_combout\ : std_logic;
SIGNAL \inst13|backdone~7_combout\ : std_logic;
SIGNAL \inst13|backdone~regout\ : std_logic;
SIGNAL \inst13|always1~3_combout\ : std_logic;
SIGNAL \inst13|always1~10_combout\ : std_logic;
SIGNAL \inst13|always1~15_combout\ : std_logic;
SIGNAL \inst13|backStatus~20_combout\ : std_logic;
SIGNAL \inst13|backStatus~21_combout\ : std_logic;
SIGNAL \inst13|backStatus.10~regout\ : std_logic;
SIGNAL \inst13|always1~4_combout\ : std_logic;
SIGNAL \inst13|always1~6_combout\ : std_logic;
SIGNAL \inst13|speed~72_combout\ : std_logic;
SIGNAL \inst13|backStatus~14_combout\ : std_logic;
SIGNAL \inst13|backStatus.00~regout\ : std_logic;
SIGNAL \inst13|speed[6]~35_combout\ : std_logic;
SIGNAL \inst13|speed[6]~36_combout\ : std_logic;
SIGNAL \inst13|speed~37_combout\ : std_logic;
SIGNAL \inst13|speed[6]~38_combout\ : std_logic;
SIGNAL \inst13|speed[6]~41_combout\ : std_logic;
SIGNAL \inst13|initialSpeed~2_combout\ : std_logic;
SIGNAL \inst13|Add2~1\ : std_logic;
SIGNAL \inst13|Add2~3\ : std_logic;
SIGNAL \inst13|Add2~5\ : std_logic;
SIGNAL \inst13|Add2~7\ : std_logic;
SIGNAL \inst13|Add2~9\ : std_logic;
SIGNAL \inst13|Add2~11\ : std_logic;
SIGNAL \inst13|Add2~12_combout\ : std_logic;
SIGNAL \inst13|speed~42_combout\ : std_logic;
SIGNAL \inst13|speed~43_combout\ : std_logic;
SIGNAL \inst13|Equal5~0_combout\ : std_logic;
SIGNAL \inst13|speed~39_combout\ : std_logic;
SIGNAL \inst13|speed~40_combout\ : std_logic;
SIGNAL \inst13|direction~2_combout\ : std_logic;
SIGNAL \inst13|direction~5_combout\ : std_logic;
SIGNAL \inst13|direction~6_combout\ : std_logic;
SIGNAL \inst13|direction~7_combout\ : std_logic;
SIGNAL \inst13|direction~8_combout\ : std_logic;
SIGNAL \inst13|direction~3_combout\ : std_logic;
SIGNAL \inst2|always0~3_combout\ : std_logic;
SIGNAL \inst2|LessThan0~0_combout\ : std_logic;
SIGNAL \inst14|cnt[0]~8_combout\ : std_logic;
SIGNAL \ultraright_echo~combout\ : std_logic;
SIGNAL \inst14|cnt[2]~13\ : std_logic;
SIGNAL \inst14|cnt[3]~14_combout\ : std_logic;
SIGNAL \inst14|cnt[3]~15\ : std_logic;
SIGNAL \inst14|cnt[4]~17\ : std_logic;
SIGNAL \inst14|cnt[5]~22\ : std_logic;
SIGNAL \inst14|cnt[6]~23_combout\ : std_logic;
SIGNAL \inst14|cnt[6]~24\ : std_logic;
SIGNAL \inst14|cnt[7]~25_combout\ : std_logic;
SIGNAL \inst14|cnt[4]~16_combout\ : std_logic;
SIGNAL \inst14|cnt[5]~18_combout\ : std_logic;
SIGNAL \inst14|cnt[5]~19_combout\ : std_logic;
SIGNAL \inst14|cnt[5]~20_combout\ : std_logic;
SIGNAL \inst14|cnt[0]~9\ : std_logic;
SIGNAL \inst14|cnt[1]~10_combout\ : std_logic;
SIGNAL \inst14|cnt[1]~11\ : std_logic;
SIGNAL \inst14|cnt[2]~12_combout\ : std_logic;
SIGNAL \inst14|dis[2]~feeder_combout\ : std_logic;
SIGNAL \inst14|dis[3]~feeder_combout\ : std_logic;
SIGNAL \inst2|LessThan5~0_combout\ : std_logic;
SIGNAL \inst14|cnt[5]~21_combout\ : std_logic;
SIGNAL \inst14|dis[5]~feeder_combout\ : std_logic;
SIGNAL \inst14|dis[7]~feeder_combout\ : std_logic;
SIGNAL \inst2|always0~1_combout\ : std_logic;
SIGNAL \inst12|cnt[0]~9\ : std_logic;
SIGNAL \inst12|cnt[1]~13_combout\ : std_logic;
SIGNAL \ultraleft_echo~combout\ : std_logic;
SIGNAL \inst12|cnt[3]~18\ : std_logic;
SIGNAL \inst12|cnt[4]~19_combout\ : std_logic;
SIGNAL \inst12|cnt[4]~20\ : std_logic;
SIGNAL \inst12|cnt[5]~21_combout\ : std_logic;
SIGNAL \inst12|cnt[5]~22\ : std_logic;
SIGNAL \inst12|cnt[6]~23_combout\ : std_logic;
SIGNAL \inst12|cnt[1]~10_combout\ : std_logic;
SIGNAL \inst12|cnt[1]~11_combout\ : std_logic;
SIGNAL \inst12|cnt[1]~12_combout\ : std_logic;
SIGNAL \inst12|cnt[1]~14\ : std_logic;
SIGNAL \inst12|cnt[2]~15_combout\ : std_logic;
SIGNAL \inst12|cnt[2]~16\ : std_logic;
SIGNAL \inst12|cnt[3]~17_combout\ : std_logic;
SIGNAL \inst12|dis[3]~feeder_combout\ : std_logic;
SIGNAL \inst12|dis[2]~feeder_combout\ : std_logic;
SIGNAL \inst2|LessThan8~0_combout\ : std_logic;
SIGNAL \inst12|cnt[6]~24\ : std_logic;
SIGNAL \inst12|cnt[7]~25_combout\ : std_logic;
SIGNAL \inst12|dis[7]~feeder_combout\ : std_logic;
SIGNAL \inst12|dis[5]~feeder_combout\ : std_logic;
SIGNAL \inst2|mode~0_combout\ : std_logic;
SIGNAL \inst2|LessThan8~1_combout\ : std_logic;
SIGNAL \inst2|always0~2_combout\ : std_logic;
SIGNAL \inst2|mode~1_combout\ : std_logic;
SIGNAL \inst2|always0~4_combout\ : std_logic;
SIGNAL \inst2|mode~2_combout\ : std_logic;
SIGNAL \inst2|mode~3_combout\ : std_logic;
SIGNAL \inst2|mode~regout\ : std_logic;
SIGNAL \inst13|direction~4_combout\ : std_logic;
SIGNAL \inst13|direction~15_combout\ : std_logic;
SIGNAL \inst13|direction~16_combout\ : std_logic;
SIGNAL \inst13|direction~regout\ : std_logic;
SIGNAL \inst13|always1~7_combout\ : std_logic;
SIGNAL \inst13|degree~19_combout\ : std_logic;
SIGNAL \inst13|always1~8_combout\ : std_logic;
SIGNAL \inst13|speed~48_combout\ : std_logic;
SIGNAL \inst5|cnt[4]~16_combout\ : std_logic;
SIGNAL \inst13|LessThan6~1_combout\ : std_logic;
SIGNAL \inst13|speed[6]~44_combout\ : std_logic;
SIGNAL \inst13|speed[6]~45_combout\ : std_logic;
SIGNAL \inst13|display[3]~4_combout\ : std_logic;
SIGNAL \inst13|Add6~1\ : std_logic;
SIGNAL \inst13|Add6~3\ : std_logic;
SIGNAL \inst13|Add6~5\ : std_logic;
SIGNAL \inst13|Add6~7\ : std_logic;
SIGNAL \inst13|Add6~8_combout\ : std_logic;
SIGNAL \inst13|display[1]~6_combout\ : std_logic;
SIGNAL \inst13|Add8~1\ : std_logic;
SIGNAL \inst13|Add8~3\ : std_logic;
SIGNAL \inst13|Add8~5\ : std_logic;
SIGNAL \inst13|Add8~7\ : std_logic;
SIGNAL \inst13|Add8~9\ : std_logic;
SIGNAL \inst13|Add8~11\ : std_logic;
SIGNAL \inst13|Add8~12_combout\ : std_logic;
SIGNAL \inst13|speed~46_combout\ : std_logic;
SIGNAL \inst13|speed~47_combout\ : std_logic;
SIGNAL \inst13|speed~50_combout\ : std_logic;
SIGNAL \inst13|speed~51_combout\ : std_logic;
SIGNAL \inst13|speed[6]~52_combout\ : std_logic;
SIGNAL \inst13|speed[6]~137_combout\ : std_logic;
SIGNAL \inst13|speed[6]~54_combout\ : std_logic;
SIGNAL \inst13|speed[6]~55_combout\ : std_logic;
SIGNAL \inst13|speed[6]~56_combout\ : std_logic;
SIGNAL \inst11|data[0]~3_combout\ : std_logic;
SIGNAL \inst11|Mux0~0_combout\ : std_logic;
SIGNAL \inst11|Mux0~1_combout\ : std_logic;
SIGNAL \inst13|Add3~12_combout\ : std_logic;
SIGNAL \inst13|Add1~1\ : std_logic;
SIGNAL \inst13|Add1~3\ : std_logic;
SIGNAL \inst13|Add1~5\ : std_logic;
SIGNAL \inst13|Add1~7\ : std_logic;
SIGNAL \inst13|Add1~9\ : std_logic;
SIGNAL \inst13|Add1~10_combout\ : std_logic;
SIGNAL \inst13|Add2~10_combout\ : std_logic;
SIGNAL \inst13|Add4~1\ : std_logic;
SIGNAL \inst13|Add4~3\ : std_logic;
SIGNAL \inst13|Add4~5\ : std_logic;
SIGNAL \inst13|Add4~7\ : std_logic;
SIGNAL \inst13|Add4~9\ : std_logic;
SIGNAL \inst13|Add4~10_combout\ : std_logic;
SIGNAL \inst13|speed~57_combout\ : std_logic;
SIGNAL \inst13|speed~58_combout\ : std_logic;
SIGNAL \inst13|speed~49_combout\ : std_logic;
SIGNAL \inst13|Add6~6_combout\ : std_logic;
SIGNAL \inst13|Add8~10_combout\ : std_logic;
SIGNAL \inst13|display[6]~1_combout\ : std_logic;
SIGNAL \inst13|speed~59_combout\ : std_logic;
SIGNAL \inst13|speed~60_combout\ : std_logic;
SIGNAL \inst13|speed~61_combout\ : std_logic;
SIGNAL \inst13|speed~62_combout\ : std_logic;
SIGNAL \inst11|Mux2~0_combout\ : std_logic;
SIGNAL \inst11|Mux1~0_combout\ : std_logic;
SIGNAL \inst11|Mux1~2_combout\ : std_logic;
SIGNAL \inst13|speed~88_combout\ : std_logic;
SIGNAL \inst13|always1~12_combout\ : std_logic;
SIGNAL \inst13|speed~139_combout\ : std_logic;
SIGNAL \inst13|Add6~2_combout\ : std_logic;
SIGNAL \inst13|Add8~6_combout\ : std_logic;
SIGNAL \inst13|speed~83_combout\ : std_logic;
SIGNAL \inst13|speed~84_combout\ : std_logic;
SIGNAL \inst13|led[1]~15_combout\ : std_logic;
SIGNAL \inst13|led[1]~24_combout\ : std_logic;
SIGNAL \inst13|speed[3]~85_combout\ : std_logic;
SIGNAL \inst13|speed~86_combout\ : std_logic;
SIGNAL \inst13|backStatus~12_combout\ : std_logic;
SIGNAL \inst13|Add4~6_combout\ : std_logic;
SIGNAL \inst13|Add3~8_combout\ : std_logic;
SIGNAL \inst13|Add2~6_combout\ : std_logic;
SIGNAL \inst13|Add1~6_combout\ : std_logic;
SIGNAL \inst13|speed~80_combout\ : std_logic;
SIGNAL \inst13|speed~81_combout\ : std_logic;
SIGNAL \inst13|speed~82_combout\ : std_logic;
SIGNAL \inst13|speed~87_combout\ : std_logic;
SIGNAL \inst13|speed~89_combout\ : std_logic;
SIGNAL \inst11|Mux1~1_combout\ : std_logic;
SIGNAL \inst2|degree~4_combout\ : std_logic;
SIGNAL \inst2|degree[6]~0_combout\ : std_logic;
SIGNAL \inst2|LessThan5~1_combout\ : std_logic;
SIGNAL \inst2|degree~3_combout\ : std_logic;
SIGNAL \inst2|degree~5_combout\ : std_logic;
SIGNAL \inst13|degree~29_combout\ : std_logic;
SIGNAL \inst13|speed[6]~99_combout\ : std_logic;
SIGNAL \inst13|speed~93_combout\ : std_logic;
SIGNAL \inst13|led~11_combout\ : std_logic;
SIGNAL \inst13|degree~31_combout\ : std_logic;
SIGNAL \inst13|degree~32_combout\ : std_logic;
SIGNAL \inst13|degree~33_combout\ : std_logic;
SIGNAL \inst13|degree~34_combout\ : std_logic;
SIGNAL \inst13|degree~35_combout\ : std_logic;
SIGNAL \inst13|degree~39_combout\ : std_logic;
SIGNAL \inst13|degree~18_combout\ : std_logic;
SIGNAL \inst13|degree~25_combout\ : std_logic;
SIGNAL \inst13|degree~24_combout\ : std_logic;
SIGNAL \inst13|degree~72_combout\ : std_logic;
SIGNAL \inst13|degree~87_combout\ : std_logic;
SIGNAL \inst13|speed[6]~138_combout\ : std_logic;
SIGNAL \inst13|degree~84_combout\ : std_logic;
SIGNAL \inst13|degree~85_combout\ : std_logic;
SIGNAL \inst13|degree~71_combout\ : std_logic;
SIGNAL \inst13|degree[1]~1_combout\ : std_logic;
SIGNAL \inst13|degree~73_combout\ : std_logic;
SIGNAL \inst13|degree~77_combout\ : std_logic;
SIGNAL \inst13|degree~78_combout\ : std_logic;
SIGNAL \inst13|degree~76_combout\ : std_logic;
SIGNAL \inst13|degree~79_combout\ : std_logic;
SIGNAL \inst13|degree~80_combout\ : std_logic;
SIGNAL \inst13|degree~74_combout\ : std_logic;
SIGNAL \inst13|degree~75_combout\ : std_logic;
SIGNAL \inst13|degree~81_combout\ : std_logic;
SIGNAL \inst13|speed~79_combout\ : std_logic;
SIGNAL \inst2|degree~1_combout\ : std_logic;
SIGNAL \inst2|degree~2_combout\ : std_logic;
SIGNAL \inst13|degree~67_combout\ : std_logic;
SIGNAL \inst13|degree~65_combout\ : std_logic;
SIGNAL \inst13|degree~20_combout\ : std_logic;
SIGNAL \inst13|degree~63_combout\ : std_logic;
SIGNAL \inst13|degree~60_combout\ : std_logic;
SIGNAL \inst13|degree~61_combout\ : std_logic;
SIGNAL \inst13|degree~62_combout\ : std_logic;
SIGNAL \inst13|degree~64_combout\ : std_logic;
SIGNAL \inst13|degree~57_combout\ : std_logic;
SIGNAL \inst13|degree~58_combout\ : std_logic;
SIGNAL \inst13|degree~66_combout\ : std_logic;
SIGNAL \inst13|degree~68_combout\ : std_logic;
SIGNAL \inst11|Mux3~0_combout\ : std_logic;
SIGNAL \inst11|LessThan0~0_combout\ : std_logic;
SIGNAL \inst11|Mux3~1_combout\ : std_logic;
SIGNAL \inst11|Mux3~2_combout\ : std_logic;
SIGNAL \inst11|Mux3~3_combout\ : std_logic;
SIGNAL \inst3|Mux0~0_combout\ : std_logic;
SIGNAL \inst3|Mux0~1_combout\ : std_logic;
SIGNAL \inst11|Mux5~0_combout\ : std_logic;
SIGNAL \inst11|Mux5~1_combout\ : std_logic;
SIGNAL \inst11|Mux5~2_combout\ : std_logic;
SIGNAL \inst11|Mux4~0_combout\ : std_logic;
SIGNAL \inst11|data[3]~1_combout\ : std_logic;
SIGNAL \inst13|Add1~4_combout\ : std_logic;
SIGNAL \inst13|Add4~4_combout\ : std_logic;
SIGNAL \inst13|Add2~4_combout\ : std_logic;
SIGNAL \inst13|speed~90_combout\ : std_logic;
SIGNAL \inst13|speed~91_combout\ : std_logic;
SIGNAL \inst13|speed~92_combout\ : std_logic;
SIGNAL \inst13|speed~140_combout\ : std_logic;
SIGNAL \inst13|Add6~0_combout\ : std_logic;
SIGNAL \inst13|Add8~4_combout\ : std_logic;
SIGNAL \inst13|speed~94_combout\ : std_logic;
SIGNAL \inst13|speed~95_combout\ : std_logic;
SIGNAL \inst13|speed~96_combout\ : std_logic;
SIGNAL \inst13|speed~97_combout\ : std_logic;
SIGNAL \inst13|speed~98_combout\ : std_logic;
SIGNAL \inst13|speed[3]~_wirecell_combout\ : std_logic;
SIGNAL \inst13|display[0]~7_combout\ : std_logic;
SIGNAL \inst13|speed~63_combout\ : std_logic;
SIGNAL \inst13|speed~127_combout\ : std_logic;
SIGNAL \inst13|speed~128_combout\ : std_logic;
SIGNAL \inst13|speed~143_combout\ : std_logic;
SIGNAL \inst13|speed~130_combout\ : std_logic;
SIGNAL \inst13|speed~131_combout\ : std_logic;
SIGNAL \inst13|initialSpeed~8_combout\ : std_logic;
SIGNAL \inst13|speed~133_combout\ : std_logic;
SIGNAL \inst13|speed~144_combout\ : std_logic;
SIGNAL \inst13|speed~134_combout\ : std_logic;
SIGNAL \inst13|speed~135_combout\ : std_logic;
SIGNAL \inst13|speed~145_combout\ : std_logic;
SIGNAL \inst13|speed[0]~1_combout\ : std_logic;
SIGNAL \inst13|speed~78_combout\ : std_logic;
SIGNAL \inst11|Mux7~0_combout\ : std_logic;
SIGNAL \inst11|Mux7~1_combout\ : std_logic;
SIGNAL \inst3|Mux0~2_combout\ : std_logic;
SIGNAL \inst3|Mux0~3_combout\ : std_logic;
SIGNAL \inst3|txd~0_combout\ : std_logic;
SIGNAL \inst3|txd~1_combout\ : std_logic;
SIGNAL \inst3|txd~regout\ : std_logic;
SIGNAL \inst17|cnt10k[0]~12_combout\ : std_logic;
SIGNAL \inst17|cnt10k[0]~13\ : std_logic;
SIGNAL \inst17|cnt10k[1]~15\ : std_logic;
SIGNAL \inst17|cnt10k[2]~16_combout\ : std_logic;
SIGNAL \inst17|cnt10k[2]~17\ : std_logic;
SIGNAL \inst17|cnt10k[3]~19\ : std_logic;
SIGNAL \inst17|cnt10k[4]~21\ : std_logic;
SIGNAL \inst17|cnt10k[5]~22_combout\ : std_logic;
SIGNAL \inst17|cnt10k[5]~23\ : std_logic;
SIGNAL \inst17|cnt10k[6]~25\ : std_logic;
SIGNAL \inst17|cnt10k[7]~27\ : std_logic;
SIGNAL \inst17|cnt10k[8]~29\ : std_logic;
SIGNAL \inst17|cnt10k[9]~30_combout\ : std_logic;
SIGNAL \inst17|cnt10k[9]~31\ : std_logic;
SIGNAL \inst17|cnt10k[10]~32_combout\ : std_logic;
SIGNAL \inst17|cnt10k[8]~28_combout\ : std_logic;
SIGNAL \inst17|cnt10k[7]~26_combout\ : std_logic;
SIGNAL \inst17|LessThan6~0_combout\ : std_logic;
SIGNAL \inst17|cnt10k[1]~14_combout\ : std_logic;
SIGNAL \inst17|LessThan6~1_combout\ : std_logic;
SIGNAL \inst17|LessThan6~2_combout\ : std_logic;
SIGNAL \inst17|LessThan6~3_combout\ : std_logic;
SIGNAL \inst17|out_10k~0_combout\ : std_logic;
SIGNAL \inst17|out_10k~regout\ : std_logic;
SIGNAL \inst17|out_10k~clkctrl_outclk\ : std_logic;
SIGNAL \inst19|Add0~0_combout\ : std_logic;
SIGNAL \inst19|Add0~5\ : std_logic;
SIGNAL \inst19|Add0~6_combout\ : std_logic;
SIGNAL \inst19|cnt~4_combout\ : std_logic;
SIGNAL \inst19|Add0~7\ : std_logic;
SIGNAL \inst19|Add0~8_combout\ : std_logic;
SIGNAL \inst19|cnt~3_combout\ : std_logic;
SIGNAL \inst19|Add0~9\ : std_logic;
SIGNAL \inst19|Add0~11\ : std_logic;
SIGNAL \inst19|Add0~12_combout\ : std_logic;
SIGNAL \inst19|cnt~1_combout\ : std_logic;
SIGNAL \inst19|cnt~7_combout\ : std_logic;
SIGNAL \inst19|Add0~1\ : std_logic;
SIGNAL \inst19|Add0~2_combout\ : std_logic;
SIGNAL \inst19|cnt~6_combout\ : std_logic;
SIGNAL \inst19|Add0~3\ : std_logic;
SIGNAL \inst19|Add0~4_combout\ : std_logic;
SIGNAL \inst19|cnt~5_combout\ : std_logic;
SIGNAL \inst19|Add0~10_combout\ : std_logic;
SIGNAL \inst19|cnt~2_combout\ : std_logic;
SIGNAL \inst19|LessThan0~0_combout\ : std_logic;
SIGNAL \inst19|cnt~0_combout\ : std_logic;
SIGNAL \inst19|Add0~13\ : std_logic;
SIGNAL \inst19|Add0~14_combout\ : std_logic;
SIGNAL \inst19|LessThan1~1_cout\ : std_logic;
SIGNAL \inst19|LessThan1~3_cout\ : std_logic;
SIGNAL \inst19|LessThan1~5_cout\ : std_logic;
SIGNAL \inst19|LessThan1~7_cout\ : std_logic;
SIGNAL \inst19|LessThan1~9_cout\ : std_logic;
SIGNAL \inst19|LessThan1~11_cout\ : std_logic;
SIGNAL \inst19|LessThan1~13_cout\ : std_logic;
SIGNAL \inst19|LessThan1~14_combout\ : std_logic;
SIGNAL \inst19|PWML~0_combout\ : std_logic;
SIGNAL \inst19|LessThan0~1_combout\ : std_logic;
SIGNAL \inst19|PWML~regout\ : std_logic;
SIGNAL \inst19|PWMR~0_combout\ : std_logic;
SIGNAL \inst19|PWMR~regout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \inst6|tone[0]~28_combout\ : std_logic;
SIGNAL \inst13|beepEnable~1_combout\ : std_logic;
SIGNAL \inst13|beepEnable~2_combout\ : std_logic;
SIGNAL \inst13|beepEnable~3_combout\ : std_logic;
SIGNAL \inst13|beepEnable~5_combout\ : std_logic;
SIGNAL \inst13|beepEnable~6_combout\ : std_logic;
SIGNAL \inst13|last2~5_combout\ : std_logic;
SIGNAL \inst13|beepEnable~7_combout\ : std_logic;
SIGNAL \inst13|beepEnable~8_combout\ : std_logic;
SIGNAL \inst13|beepEnable~0_combout\ : std_logic;
SIGNAL \inst13|beepEnable~9_combout\ : std_logic;
SIGNAL \inst13|beepEnable~10_combout\ : std_logic;
SIGNAL \inst13|beepEnable~regout\ : std_logic;
SIGNAL \inst6|tone[0]~29\ : std_logic;
SIGNAL \inst6|tone[1]~31\ : std_logic;
SIGNAL \inst6|tone[2]~32_combout\ : std_logic;
SIGNAL \inst6|tone[2]~33\ : std_logic;
SIGNAL \inst6|tone[3]~35\ : std_logic;
SIGNAL \inst6|tone[4]~37\ : std_logic;
SIGNAL \inst6|tone[5]~38_combout\ : std_logic;
SIGNAL \inst6|tone[5]~39\ : std_logic;
SIGNAL \inst6|tone[6]~41\ : std_logic;
SIGNAL \inst6|tone[7]~42_combout\ : std_logic;
SIGNAL \inst6|tone[7]~43\ : std_logic;
SIGNAL \inst6|tone[8]~45\ : std_logic;
SIGNAL \inst6|tone[9]~46_combout\ : std_logic;
SIGNAL \inst6|tone[9]~47\ : std_logic;
SIGNAL \inst6|tone[10]~49\ : std_logic;
SIGNAL \inst6|tone[11]~50_combout\ : std_logic;
SIGNAL \inst6|tone[11]~51\ : std_logic;
SIGNAL \inst6|tone[12]~52_combout\ : std_logic;
SIGNAL \inst6|tone[12]~53\ : std_logic;
SIGNAL \inst6|tone[13]~54_combout\ : std_logic;
SIGNAL \inst6|tone[13]~55\ : std_logic;
SIGNAL \inst6|tone[14]~56_combout\ : std_logic;
SIGNAL \inst6|tone[14]~57\ : std_logic;
SIGNAL \inst6|tone[15]~58_combout\ : std_logic;
SIGNAL \inst6|tone[15]~59\ : std_logic;
SIGNAL \inst6|tone[16]~60_combout\ : std_logic;
SIGNAL \inst6|tone[16]~61\ : std_logic;
SIGNAL \inst6|tone[17]~63\ : std_logic;
SIGNAL \inst6|tone[18]~64_combout\ : std_logic;
SIGNAL \inst6|tone[18]~65\ : std_logic;
SIGNAL \inst6|tone[19]~67\ : std_logic;
SIGNAL \inst6|tone[20]~69\ : std_logic;
SIGNAL \inst6|tone[21]~70_combout\ : std_logic;
SIGNAL \inst6|tone[21]~71\ : std_logic;
SIGNAL \inst6|tone[22]~73\ : std_logic;
SIGNAL \inst6|tone[23]~74_combout\ : std_logic;
SIGNAL \inst6|tone[23]~75\ : std_logic;
SIGNAL \inst6|tone[24]~77\ : std_logic;
SIGNAL \inst6|tone[25]~78_combout\ : std_logic;
SIGNAL \inst6|tone[25]~79\ : std_logic;
SIGNAL \inst6|tone[26]~81\ : std_logic;
SIGNAL \inst6|tone[27]~82_combout\ : std_logic;
SIGNAL \inst6|tone[22]~72_combout\ : std_logic;
SIGNAL \inst6|counter~15_combout\ : std_logic;
SIGNAL \inst6|tone[17]~62_combout\ : std_logic;
SIGNAL \inst6|counter[8]~6_combout\ : std_logic;
SIGNAL \inst6|counter~11_combout\ : std_logic;
SIGNAL \inst6|Add1~0_combout\ : std_logic;
SIGNAL \inst6|counter~3_combout\ : std_logic;
SIGNAL \inst6|Add1~1\ : std_logic;
SIGNAL \inst6|Add1~2_combout\ : std_logic;
SIGNAL \inst6|counter~2_combout\ : std_logic;
SIGNAL \inst6|Add1~3\ : std_logic;
SIGNAL \inst6|Add1~4_combout\ : std_logic;
SIGNAL \inst6|counter~1_combout\ : std_logic;
SIGNAL \inst6|Add1~5\ : std_logic;
SIGNAL \inst6|Add1~6_combout\ : std_logic;
SIGNAL \inst6|counter~0_combout\ : std_logic;
SIGNAL \inst6|Add1~7\ : std_logic;
SIGNAL \inst6|Add1~8_combout\ : std_logic;
SIGNAL \inst6|counter~4_combout\ : std_logic;
SIGNAL \inst6|Add1~9\ : std_logic;
SIGNAL \inst6|Add1~10_combout\ : std_logic;
SIGNAL \inst6|counter~5_combout\ : std_logic;
SIGNAL \inst6|Add1~11\ : std_logic;
SIGNAL \inst6|Add1~12_combout\ : std_logic;
SIGNAL \inst6|counter~7_combout\ : std_logic;
SIGNAL \inst6|counter~8_combout\ : std_logic;
SIGNAL \inst6|Add1~13\ : std_logic;
SIGNAL \inst6|Add1~15\ : std_logic;
SIGNAL \inst6|Add1~16_combout\ : std_logic;
SIGNAL \inst6|counter~12_combout\ : std_logic;
SIGNAL \inst6|Add1~17\ : std_logic;
SIGNAL \inst6|Add1~19\ : std_logic;
SIGNAL \inst6|Add1~20_combout\ : std_logic;
SIGNAL \inst6|counter~16_combout\ : std_logic;
SIGNAL \inst6|Add1~21\ : std_logic;
SIGNAL \inst6|Add1~23\ : std_logic;
SIGNAL \inst6|Add1~25\ : std_logic;
SIGNAL \inst6|Add1~26_combout\ : std_logic;
SIGNAL \inst6|tone[24]~76_combout\ : std_logic;
SIGNAL \inst6|counter~19_combout\ : std_logic;
SIGNAL \inst6|Add1~24_combout\ : std_logic;
SIGNAL \inst6|counter~20_combout\ : std_logic;
SIGNAL \inst6|Add1~27\ : std_logic;
SIGNAL \inst6|Add1~28_combout\ : std_logic;
SIGNAL \inst6|counter~21_combout\ : std_logic;
SIGNAL \inst6|Equal0~3_combout\ : std_logic;
SIGNAL \inst6|counter~13_combout\ : std_logic;
SIGNAL \inst6|Add1~18_combout\ : std_logic;
SIGNAL \inst6|counter~14_combout\ : std_logic;
SIGNAL \inst6|Equal0~2_combout\ : std_logic;
SIGNAL \inst6|Equal0~0_combout\ : std_logic;
SIGNAL \inst6|Equal0~4_combout\ : std_logic;
SIGNAL \inst6|beep~0_combout\ : std_logic;
SIGNAL \inst6|beep~regout\ : std_logic;
SIGNAL \inst18|count~3_combout\ : std_logic;
SIGNAL \inst18|count~2_combout\ : std_logic;
SIGNAL \inst18|count[0]~feeder_combout\ : std_logic;
SIGNAL \inst18|Add0~1\ : std_logic;
SIGNAL \inst18|Add0~3\ : std_logic;
SIGNAL \inst18|Add0~4_combout\ : std_logic;
SIGNAL \inst18|count~4_combout\ : std_logic;
SIGNAL \inst18|count[2]~feeder_combout\ : std_logic;
SIGNAL \inst18|Add0~5\ : std_logic;
SIGNAL \inst18|Add0~6_combout\ : std_logic;
SIGNAL \inst18|count~1_combout\ : std_logic;
SIGNAL \inst18|Add0~7\ : std_logic;
SIGNAL \inst18|Add0~8_combout\ : std_logic;
SIGNAL \inst18|count~0_combout\ : std_logic;
SIGNAL \inst18|Add0~9\ : std_logic;
SIGNAL \inst18|Add0~10_combout\ : std_logic;
SIGNAL \inst18|count~5_combout\ : std_logic;
SIGNAL \inst18|Add0~11\ : std_logic;
SIGNAL \inst18|Add0~12_combout\ : std_logic;
SIGNAL \inst18|count~6_combout\ : std_logic;
SIGNAL \inst18|LessThan0~0_combout\ : std_logic;
SIGNAL \inst18|LessThan0~1_combout\ : std_logic;
SIGNAL \inst18|LessThan0~2_combout\ : std_logic;
SIGNAL \inst18|count~8_combout\ : std_logic;
SIGNAL \inst18|Add0~13\ : std_logic;
SIGNAL \inst18|Add0~14_combout\ : std_logic;
SIGNAL \inst18|count~7_combout\ : std_logic;
SIGNAL \inst18|Add0~15\ : std_logic;
SIGNAL \inst18|Add0~16_combout\ : std_logic;
SIGNAL \inst18|LessThan1~6_combout\ : std_logic;
SIGNAL \inst13|degree~26_combout\ : std_logic;
SIGNAL \inst13|degree~27_combout\ : std_logic;
SIGNAL \inst13|degree~82_combout\ : std_logic;
SIGNAL \inst13|degree~83_combout\ : std_logic;
SIGNAL \inst13|degree~21_combout\ : std_logic;
SIGNAL \inst13|degree~22_combout\ : std_logic;
SIGNAL \inst13|degree~23_combout\ : std_logic;
SIGNAL \inst13|degree[6]~0_combout\ : std_logic;
SIGNAL \inst9|data[2]~5_combout\ : std_logic;
SIGNAL \inst13|degree~28_combout\ : std_logic;
SIGNAL \inst13|degree~40_combout\ : std_logic;
SIGNAL \inst13|degree~41_combout\ : std_logic;
SIGNAL \inst13|degree~44_combout\ : std_logic;
SIGNAL \inst13|degree~45_combout\ : std_logic;
SIGNAL \inst13|degree~46_combout\ : std_logic;
SIGNAL \inst13|degree~47_combout\ : std_logic;
SIGNAL \inst13|degree~48_combout\ : std_logic;
SIGNAL \inst13|degree~49_combout\ : std_logic;
SIGNAL \inst18|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ : std_logic;
SIGNAL \inst18|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ : std_logic;
SIGNAL \inst18|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ : std_logic;
SIGNAL \inst18|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ : std_logic;
SIGNAL \inst18|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ : std_logic;
SIGNAL \inst18|Div0|auto_generated|divider|divider|StageOut[27]~28_combout\ : std_logic;
SIGNAL \inst18|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ : std_logic;
SIGNAL \inst18|Div0|auto_generated|divider|divider|StageOut[26]~31_combout\ : std_logic;
SIGNAL \inst13|degree~54_combout\ : std_logic;
SIGNAL \inst13|degree~50_combout\ : std_logic;
SIGNAL \inst13|degree~51_combout\ : std_logic;
SIGNAL \inst13|degree~52_combout\ : std_logic;
SIGNAL \inst13|degree~53_combout\ : std_logic;
SIGNAL \inst13|degree~55_combout\ : std_logic;
SIGNAL \inst13|degree~56_combout\ : std_logic;
SIGNAL \inst18|Div0|auto_generated|divider|divider|StageOut[25]~33_combout\ : std_logic;
SIGNAL \inst18|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ : std_logic;
SIGNAL \inst18|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ : std_logic;
SIGNAL \inst18|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ : std_logic;
SIGNAL \inst18|Div0|auto_generated|divider|divider|StageOut[28]~26_combout\ : std_logic;
SIGNAL \inst18|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ : std_logic;
SIGNAL \inst18|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\ : std_logic;
SIGNAL \inst18|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ : std_logic;
SIGNAL \inst18|Div0|auto_generated|divider|divider|StageOut[33]~34_combout\ : std_logic;
SIGNAL \inst18|Div0|auto_generated|divider|divider|StageOut[32]~48_combout\ : std_logic;
SIGNAL \inst18|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ : std_logic;
SIGNAL \inst18|Div0|auto_generated|divider|divider|StageOut[31]~37_combout\ : std_logic;
SIGNAL \inst18|Div0|auto_generated|divider|divider|StageOut[30]~39_combout\ : std_logic;
SIGNAL \inst18|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ : std_logic;
SIGNAL \inst18|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ : std_logic;
SIGNAL \inst18|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ : std_logic;
SIGNAL \inst18|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ : std_logic;
SIGNAL \inst18|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ : std_logic;
SIGNAL \inst18|Div0|auto_generated|divider|divider|StageOut[38]~40_combout\ : std_logic;
SIGNAL \inst18|Div0|auto_generated|divider|divider|StageOut[37]~49_combout\ : std_logic;
SIGNAL \inst18|Div0|auto_generated|divider|divider|StageOut[36]~43_combout\ : std_logic;
SIGNAL \inst18|Div0|auto_generated|divider|divider|StageOut[35]~44_combout\ : std_logic;
SIGNAL \inst18|Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~1_cout\ : std_logic;
SIGNAL \inst18|Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~3_cout\ : std_logic;
SIGNAL \inst18|Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~5_cout\ : std_logic;
SIGNAL \inst18|Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~7_cout\ : std_logic;
SIGNAL \inst18|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ : std_logic;
SIGNAL \inst18|Add1~1\ : std_logic;
SIGNAL \inst18|Add1~3\ : std_logic;
SIGNAL \inst18|Add1~5\ : std_logic;
SIGNAL \inst18|Add1~7\ : std_logic;
SIGNAL \inst18|Add1~8_combout\ : std_logic;
SIGNAL \inst18|Add1~4_combout\ : std_logic;
SIGNAL \inst18|Add1~0_combout\ : std_logic;
SIGNAL \inst18|Add1~2_combout\ : std_logic;
SIGNAL \inst18|LessThan1~8_combout\ : std_logic;
SIGNAL \inst18|LessThan1~7_combout\ : std_logic;
SIGNAL \inst18|LessThan1~9_combout\ : std_logic;
SIGNAL \inst18|LessThan1~10_combout\ : std_logic;
SIGNAL \inst18|LessThan1~11_combout\ : std_logic;
SIGNAL \inst18|LessThan1~12_combout\ : std_logic;
SIGNAL \inst18|steer~regout\ : std_logic;
SIGNAL \inst17|cnt8[0]~25_combout\ : std_logic;
SIGNAL \inst17|cnt8[20]~65_combout\ : std_logic;
SIGNAL \inst17|cnt8[18]~61_combout\ : std_logic;
SIGNAL \inst17|cnt8[15]~55_combout\ : std_logic;
SIGNAL \inst17|LessThan3~4_combout\ : std_logic;
SIGNAL \inst17|cnt8[6]~37_combout\ : std_logic;
SIGNAL \inst17|LessThan3~1_combout\ : std_logic;
SIGNAL \inst17|cnt8[8]~41_combout\ : std_logic;
SIGNAL \inst17|LessThan3~0_combout\ : std_logic;
SIGNAL \inst17|LessThan3~2_combout\ : std_logic;
SIGNAL \inst17|LessThan3~3_combout\ : std_logic;
SIGNAL \inst17|LessThan3~5_combout\ : std_logic;
SIGNAL \inst17|LessThan3~7_combout\ : std_logic;
SIGNAL \inst17|cnt8[0]~26\ : std_logic;
SIGNAL \inst17|cnt8[1]~28\ : std_logic;
SIGNAL \inst17|cnt8[2]~29_combout\ : std_logic;
SIGNAL \inst17|cnt8[2]~30\ : std_logic;
SIGNAL \inst17|cnt8[3]~31_combout\ : std_logic;
SIGNAL \inst17|cnt8[3]~32\ : std_logic;
SIGNAL \inst17|cnt8[4]~34\ : std_logic;
SIGNAL \inst17|cnt8[5]~35_combout\ : std_logic;
SIGNAL \inst17|cnt8[5]~36\ : std_logic;
SIGNAL \inst17|cnt8[6]~38\ : std_logic;
SIGNAL \inst17|cnt8[7]~39_combout\ : std_logic;
SIGNAL \inst17|cnt8[7]~40\ : std_logic;
SIGNAL \inst17|cnt8[8]~42\ : std_logic;
SIGNAL \inst17|cnt8[9]~43_combout\ : std_logic;
SIGNAL \inst17|cnt8[9]~44\ : std_logic;
SIGNAL \inst17|cnt8[10]~45_combout\ : std_logic;
SIGNAL \inst17|cnt8[10]~46\ : std_logic;
SIGNAL \inst17|cnt8[11]~47_combout\ : std_logic;
SIGNAL \inst17|cnt8[11]~48\ : std_logic;
SIGNAL \inst17|cnt8[12]~49_combout\ : std_logic;
SIGNAL \inst17|cnt8[12]~50\ : std_logic;
SIGNAL \inst17|cnt8[13]~51_combout\ : std_logic;
SIGNAL \inst17|cnt8[13]~52\ : std_logic;
SIGNAL \inst17|cnt8[14]~53_combout\ : std_logic;
SIGNAL \inst17|cnt8[14]~54\ : std_logic;
SIGNAL \inst17|cnt8[15]~56\ : std_logic;
SIGNAL \inst17|cnt8[16]~57_combout\ : std_logic;
SIGNAL \inst17|cnt8[16]~58\ : std_logic;
SIGNAL \inst17|cnt8[17]~60\ : std_logic;
SIGNAL \inst17|cnt8[18]~62\ : std_logic;
SIGNAL \inst17|cnt8[19]~63_combout\ : std_logic;
SIGNAL \inst17|cnt8[19]~64\ : std_logic;
SIGNAL \inst17|cnt8[20]~66\ : std_logic;
SIGNAL \inst17|cnt8[21]~67_combout\ : std_logic;
SIGNAL \inst17|cnt8[21]~68\ : std_logic;
SIGNAL \inst17|cnt8[22]~69_combout\ : std_logic;
SIGNAL \inst17|cnt8[22]~70\ : std_logic;
SIGNAL \inst17|cnt8[23]~71_combout\ : std_logic;
SIGNAL \inst17|LessThan3~6_combout\ : std_logic;
SIGNAL \inst17|out_8~0_combout\ : std_logic;
SIGNAL \inst17|out_8~regout\ : std_logic;
SIGNAL \inst17|cnt16k[0]~12_combout\ : std_logic;
SIGNAL \inst17|cnt16k[0]~13\ : std_logic;
SIGNAL \inst17|cnt16k[1]~14_combout\ : std_logic;
SIGNAL \inst17|cnt16k[1]~15\ : std_logic;
SIGNAL \inst17|cnt16k[2]~16_combout\ : std_logic;
SIGNAL \inst17|cnt16k[2]~17\ : std_logic;
SIGNAL \inst17|cnt16k[3]~19\ : std_logic;
SIGNAL \inst17|cnt16k[4]~20_combout\ : std_logic;
SIGNAL \inst17|cnt16k[4]~21\ : std_logic;
SIGNAL \inst17|cnt16k[5]~23\ : std_logic;
SIGNAL \inst17|cnt16k[6]~25\ : std_logic;
SIGNAL \inst17|cnt16k[7]~26_combout\ : std_logic;
SIGNAL \inst17|cnt16k[7]~27\ : std_logic;
SIGNAL \inst17|cnt16k[8]~29\ : std_logic;
SIGNAL \inst17|cnt16k[9]~30_combout\ : std_logic;
SIGNAL \inst17|cnt16k[9]~31\ : std_logic;
SIGNAL \inst17|cnt16k[10]~32_combout\ : std_logic;
SIGNAL \inst17|cnt16k[8]~28_combout\ : std_logic;
SIGNAL \inst17|cnt16k[6]~24_combout\ : std_logic;
SIGNAL \inst17|LessThan2~0_combout\ : std_logic;
SIGNAL \inst17|LessThan2~1_combout\ : std_logic;
SIGNAL \inst17|LessThan2~2_combout\ : std_logic;
SIGNAL \inst17|LessThan2~3_combout\ : std_logic;
SIGNAL \inst17|out_16k~0_combout\ : std_logic;
SIGNAL \inst17|out_16k~regout\ : std_logic;
SIGNAL \inst17|out_16k~clkctrl_outclk\ : std_logic;
SIGNAL \inst|col[0]~0_combout\ : std_logic;
SIGNAL \inst13|display[5]~feeder_combout\ : std_logic;
SIGNAL \inst|Div2|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \inst|Div2|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \inst|Div2|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \inst|Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \inst|Div2|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \inst|Div2|auto_generated|divider|divider|StageOut[18]~37_combout\ : std_logic;
SIGNAL \inst|Div2|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \inst|Div2|auto_generated|divider|divider|StageOut[17]~39_combout\ : std_logic;
SIGNAL \inst|Div2|auto_generated|divider|divider|StageOut[16]~40_combout\ : std_logic;
SIGNAL \inst13|display[4]~feeder_combout\ : std_logic;
SIGNAL \inst|Div2|auto_generated|divider|divider|StageOut[15]~43_combout\ : std_logic;
SIGNAL \inst|Div2|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : std_logic;
SIGNAL \inst|Div2|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : std_logic;
SIGNAL \inst|Div2|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : std_logic;
SIGNAL \inst|Div2|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ : std_logic;
SIGNAL \inst|Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|StageOut[31]~4_combout\ : std_logic;
SIGNAL \inst|Div2|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ : std_logic;
SIGNAL \inst|Div2|auto_generated|divider|divider|StageOut[22]~65_combout\ : std_logic;
SIGNAL \inst|Div2|auto_generated|divider|divider|StageOut[21]~47_combout\ : std_logic;
SIGNAL \inst|Div2|auto_generated|divider|divider|StageOut[20]~49_combout\ : std_logic;
SIGNAL \inst|Div2|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ : std_logic;
SIGNAL \inst|Div2|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ : std_logic;
SIGNAL \inst|Div2|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ : std_logic;
SIGNAL \inst|Div2|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ : std_logic;
SIGNAL \inst|Div2|auto_generated|divider|divider|StageOut[23]~44_combout\ : std_logic;
SIGNAL \inst|Div2|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ : std_logic;
SIGNAL \inst|Div2|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ : std_logic;
SIGNAL \inst|Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ : std_logic;
SIGNAL \inst|Div2|auto_generated|divider|divider|StageOut[28]~50_combout\ : std_logic;
SIGNAL \inst|Div2|auto_generated|divider|divider|StageOut[27]~66_combout\ : std_logic;
SIGNAL \inst|Div2|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ : std_logic;
SIGNAL \inst|Div2|auto_generated|divider|divider|StageOut[26]~53_combout\ : std_logic;
SIGNAL \inst13|initialSpeed~6_combout\ : std_logic;
SIGNAL \inst13|display[2]~5_combout\ : std_logic;
SIGNAL \inst|Div2|auto_generated|divider|divider|StageOut[25]~54_combout\ : std_logic;
SIGNAL \inst|Div2|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ : std_logic;
SIGNAL \inst|Div2|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ : std_logic;
SIGNAL \inst|Div2|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ : std_logic;
SIGNAL \inst|Div2|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\ : std_logic;
SIGNAL \inst|Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|StageOut[30]~7_combout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|StageOut[33]~1_combout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|StageOut[32]~2_combout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ : std_logic;
SIGNAL \inst|Mux1~2_combout\ : std_logic;
SIGNAL \inst|Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \inst|Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \inst|Mod2|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \inst|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \inst|Mod2|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \inst|Mod2|auto_generated|divider|divider|StageOut[18]~37_combout\ : std_logic;
SIGNAL \inst|Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \inst|Mod2|auto_generated|divider|divider|StageOut[17]~39_combout\ : std_logic;
SIGNAL \inst|Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ : std_logic;
SIGNAL \inst|Mod2|auto_generated|divider|divider|StageOut[16]~41_combout\ : std_logic;
SIGNAL \inst|Mod2|auto_generated|divider|divider|StageOut[15]~43_combout\ : std_logic;
SIGNAL \inst|Mod2|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : std_logic;
SIGNAL \inst|Mod2|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : std_logic;
SIGNAL \inst|Mod2|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : std_logic;
SIGNAL \inst|Mod2|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ : std_logic;
SIGNAL \inst|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \inst|Mod2|auto_generated|divider|divider|StageOut[22]~65_combout\ : std_logic;
SIGNAL \inst|Mod2|auto_generated|divider|divider|StageOut[23]~64_combout\ : std_logic;
SIGNAL \inst|Mod2|auto_generated|divider|divider|StageOut[21]~46_combout\ : std_logic;
SIGNAL \inst|Mod2|auto_generated|divider|divider|StageOut[20]~48_combout\ : std_logic;
SIGNAL \inst|Mod2|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ : std_logic;
SIGNAL \inst|Mod2|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ : std_logic;
SIGNAL \inst|Mod2|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ : std_logic;
SIGNAL \inst|Mod2|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ : std_logic;
SIGNAL \inst|Mod2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ : std_logic;
SIGNAL \inst|Mod2|auto_generated|divider|divider|StageOut[28]~62_combout\ : std_logic;
SIGNAL \inst|Mod2|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ : std_logic;
SIGNAL \inst|Mod2|auto_generated|divider|divider|StageOut[27]~51_combout\ : std_logic;
SIGNAL \inst|Mod2|auto_generated|divider|divider|StageOut[26]~53_combout\ : std_logic;
SIGNAL \inst|Mod2|auto_generated|divider|divider|StageOut[25]~55_combout\ : std_logic;
SIGNAL \inst|Mod2|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ : std_logic;
SIGNAL \inst|Mod2|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ : std_logic;
SIGNAL \inst|Mod2|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ : std_logic;
SIGNAL \inst|Mod2|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\ : std_logic;
SIGNAL \inst|Mod2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ : std_logic;
SIGNAL \inst|Mod2|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ : std_logic;
SIGNAL \inst|Mod2|auto_generated|divider|divider|StageOut[31]~61_combout\ : std_logic;
SIGNAL \inst|Mod2|auto_generated|divider|divider|StageOut[33]~63_combout\ : std_logic;
SIGNAL \inst|Mod2|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ : std_logic;
SIGNAL \inst|Mod2|auto_generated|divider|divider|StageOut[32]~67_combout\ : std_logic;
SIGNAL \inst|Mod2|auto_generated|divider|divider|StageOut[30]~56_combout\ : std_logic;
SIGNAL \inst|Mod2|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ : std_logic;
SIGNAL \inst|Mod2|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ : std_logic;
SIGNAL \inst|Mod2|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ : std_logic;
SIGNAL \inst|Mod2|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ : std_logic;
SIGNAL \inst|Mod2|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ : std_logic;
SIGNAL \inst|Mod2|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ : std_logic;
SIGNAL \inst|Mux1~3_combout\ : std_logic;
SIGNAL \inst|Mux1~4_combout\ : std_logic;
SIGNAL \inst|Add0~0_combout\ : std_logic;
SIGNAL \inst|Mux3~3_combout\ : std_logic;
SIGNAL \inst|Mux3~4_combout\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~1\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~3\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~5\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~7\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~9\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ : std_logic;
SIGNAL \inst|Mux3~2_combout\ : std_logic;
SIGNAL \inst|Mux2~0_combout\ : std_logic;
SIGNAL \inst|Mux2~2_combout\ : std_logic;
SIGNAL \inst|Mux2~3_combout\ : std_logic;
SIGNAL \inst|WideOr0~0_combout\ : std_logic;
SIGNAL \inst|WideOr1~0_combout\ : std_logic;
SIGNAL \inst|WideOr2~0_combout\ : std_logic;
SIGNAL \inst|WideOr3~0_combout\ : std_logic;
SIGNAL \inst|WideOr4~0_combout\ : std_logic;
SIGNAL \inst|WideOr5~0_combout\ : std_logic;
SIGNAL \inst|WideOr6~0_combout\ : std_logic;
SIGNAL \inst13|led[7]~3_combout\ : std_logic;
SIGNAL \inst13|led~13_combout\ : std_logic;
SIGNAL \inst13|led~14_combout\ : std_logic;
SIGNAL \inst13|led[4]~28_combout\ : std_logic;
SIGNAL \inst13|speed~34_combout\ : std_logic;
SIGNAL \inst13|led[3]~29_combout\ : std_logic;
SIGNAL \inst13|led[1]~26_combout\ : std_logic;
SIGNAL \inst13|led~17_combout\ : std_logic;
SIGNAL \inst13|led[1]~18_combout\ : std_logic;
SIGNAL \inst13|led[1]~19_combout\ : std_logic;
SIGNAL \inst13|led~20_combout\ : std_logic;
SIGNAL \inst13|led~23_combout\ : std_logic;
SIGNAL \inst|Decoder0~0_combout\ : std_logic;
SIGNAL \inst|Decoder0~1_combout\ : std_logic;
SIGNAL \inst|Decoder0~2_combout\ : std_logic;
SIGNAL \inst9|data\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst6|counter\ : std_logic_vector(14 DOWNTO 0);
SIGNAL \dinfrared~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|DIG\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Button~combout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Signs~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst19|cnt\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|OL\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \Infrared~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|col\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst9|count\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst18|count\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \Touch~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst6|tone\ : std_logic_vector(27 DOWNTO 0);
SIGNAL \inst5|cnt\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst5|dis\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst14|cnt\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst14|dis\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst4|cnt\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst4|dis\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst3|count\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst17|cnt9600\ : std_logic_vector(21 DOWNTO 0);
SIGNAL \inst17|cnt8\ : std_logic_vector(24 DOWNTO 0);
SIGNAL \inst17|cnt16k\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst17|cnt10k\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst17|cnt1\ : std_logic_vector(26 DOWNTO 0);
SIGNAL \inst11|data\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst11|byteCount\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst13|target2\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst13|speed\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst13|mystate\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst13|led\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst13|initialSpeed\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst13|display\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst13|degree\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \inst13|cnt2\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst13|clk_count\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst13|DelayCnt\ : std_logic_vector(30 DOWNTO 0);
SIGNAL \inst2|degree\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst12|dis\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst12|cnt\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_ultraleft_echo~combout\ : std_logic;
SIGNAL \ALT_INV_ultraright_echo~combout\ : std_logic;
SIGNAL \ALT_INV_ultraback_echo~combout\ : std_logic;
SIGNAL \ALT_INV_ultra_2~combout\ : std_logic;
SIGNAL \inst13|ALT_INV_display[4]~10_combout\ : std_logic;
SIGNAL \inst13|ALT_INV_state.00~regout\ : std_logic;
SIGNAL \inst13|ALT_INV_state.10~regout\ : std_logic;
SIGNAL \inst13|ALT_INV_beepEnable~regout\ : std_logic;

BEGIN

txd <= ww_txd;
ww_clk <= clk;
ww_ultraleft_echo <= ultraleft_echo;
ww_ultra_2 <= ultra_2;
ww_ultraright_echo <= ultraright_echo;
ww_ultraback_echo <= ultraback_echo;
ww_Button <= Button;
ww_dinfrared <= dinfrared;
ww_Infrared <= Infrared;
ww_speedInfrac <= speedInfrac;
ww_rxd <= rxd;
ww_Signs <= Signs;
ww_Touch <= Touch;
pwml <= ww_pwml;
pwmr <= ww_pwmr;
beep <= ww_beep;
steer <= ww_steer;
ultra_trigger <= ww_ultra_trigger;
ultraback_trigger <= ww_ultraback_trigger;
ultra_right_trigger <= ww_ultra_right_trigger;
ultra_left_trigger <= ww_ultra_left_trigger;
Digital <= ww_Digital;
Led <= ww_Led;
Position <= ww_Position;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst17|out_9600~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \inst17|out_9600~regout\);

\inst17|out_8~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \inst17|out_8~regout\);

\inst17|out_16k~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \inst17|out_16k~regout\);

\inst17|out_10k~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \inst17|out_10k~regout\);

\clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk~combout\);

\inst13|clk_9600~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \inst13|clk_9600~regout\);
\ALT_INV_ultraleft_echo~combout\ <= NOT \ultraleft_echo~combout\;
\ALT_INV_ultraright_echo~combout\ <= NOT \ultraright_echo~combout\;
\ALT_INV_ultraback_echo~combout\ <= NOT \ultraback_echo~combout\;
\ALT_INV_ultra_2~combout\ <= NOT \ultra_2~combout\;
\inst13|ALT_INV_display[4]~10_combout\ <= NOT \inst13|display[4]~10_combout\;
\inst13|ALT_INV_state.00~regout\ <= NOT \inst13|state.00~regout\;
\inst13|ALT_INV_state.10~regout\ <= NOT \inst13|state.10~regout\;
\inst13|ALT_INV_beepEnable~regout\ <= NOT \inst13|beepEnable~regout\;

-- Location: LCFF_X13_Y11_N21
\inst11|data[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst17|out_9600~clkctrl_outclk\,
	datain => \inst11|data[1]~0_combout\,
	sdata => \inst13|speed\(1),
	sclr => \inst11|data[0]~4_combout\,
	sload => \inst11|byteCount\(3),
	ena => \inst11|data[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst11|data\(1));

-- Location: LCFF_X14_Y7_N17
\inst13|speed[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst13|speed[5]~2_combout\,
	sdata => \inst13|speed~78_combout\,
	sload => \inst13|ALT_INV_state.00~regout\,
	ena => \inst13|speed~79_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst13|speed\(5));

-- Location: LCFF_X14_Y7_N11
\inst13|speed[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst13|speed[1]~0_combout\,
	sdata => \inst13|speed~126_combout\,
	sload => \inst13|ALT_INV_state.00~regout\,
	ena => \inst13|speed~79_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst13|speed\(1));

-- Location: LCCOMB_X21_Y11_N12
\inst18|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst18|Add0~0_combout\ = \inst18|count\(0) $ (VCC)
-- \inst18|Add0~1\ = CARRY(\inst18|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst18|count\(0),
	datad => VCC,
	combout => \inst18|Add0~0_combout\,
	cout => \inst18|Add0~1\);

-- Location: LCCOMB_X21_Y11_N14
\inst18|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst18|Add0~2_combout\ = (\inst18|count\(1) & (!\inst18|Add0~1\)) # (!\inst18|count\(1) & ((\inst18|Add0~1\) # (GND)))
-- \inst18|Add0~3\ = CARRY((!\inst18|Add0~1\) # (!\inst18|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst18|count\(1),
	datad => VCC,
	cin => \inst18|Add0~1\,
	combout => \inst18|Add0~2_combout\,
	cout => \inst18|Add0~3\);

-- Location: LCCOMB_X19_Y10_N2
\inst18|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst18|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ = (\inst13|degree\(5) & (!\inst18|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\)) # (!\inst13|degree\(5) & 
-- (\inst18|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & VCC))
-- \inst18|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ = CARRY((\inst13|degree\(5) & !\inst18|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst13|degree\(5),
	datad => VCC,
	cin => \inst18|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\,
	combout => \inst18|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	cout => \inst18|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\);

-- Location: LCCOMB_X19_Y10_N4
\inst18|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst18|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ = (\inst13|degree\(6) & (\inst18|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ $ (GND))) # (!\inst13|degree\(6) & 
-- (!\inst18|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & VCC))
-- \inst18|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ = CARRY((\inst13|degree\(6) & !\inst18|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst13|degree\(6),
	datad => VCC,
	cin => \inst18|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\,
	combout => \inst18|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	cout => \inst18|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\);

-- Location: LCCOMB_X19_Y10_N22
\inst18|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst18|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ = (\inst18|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (((\inst18|Div0|auto_generated|divider|divider|StageOut[26]~30_combout\) # 
-- (\inst18|Div0|auto_generated|divider|divider|StageOut[26]~31_combout\)))) # (!\inst18|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (!\inst18|Div0|auto_generated|divider|divider|StageOut[26]~30_combout\ & 
-- (!\inst18|Div0|auto_generated|divider|divider|StageOut[26]~31_combout\)))
-- \inst18|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ = CARRY((!\inst18|Div0|auto_generated|divider|divider|StageOut[26]~30_combout\ & (!\inst18|Div0|auto_generated|divider|divider|StageOut[26]~31_combout\ & 
-- !\inst18|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|Div0|auto_generated|divider|divider|StageOut[26]~30_combout\,
	datab => \inst18|Div0|auto_generated|divider|divider|StageOut[26]~31_combout\,
	datad => VCC,
	cin => \inst18|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\,
	combout => \inst18|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	cout => \inst18|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\);

-- Location: LCCOMB_X20_Y10_N8
\inst18|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst18|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ = (((\inst18|Div0|auto_generated|divider|divider|StageOut[30]~38_combout\) # (\inst18|Div0|auto_generated|divider|divider|StageOut[30]~39_combout\)))
-- \inst18|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ = CARRY((\inst18|Div0|auto_generated|divider|divider|StageOut[30]~38_combout\) # (\inst18|Div0|auto_generated|divider|divider|StageOut[30]~39_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|Div0|auto_generated|divider|divider|StageOut[30]~38_combout\,
	datab => \inst18|Div0|auto_generated|divider|divider|StageOut[30]~39_combout\,
	datad => VCC,
	combout => \inst18|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	cout => \inst18|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\);

-- Location: LCCOMB_X20_Y10_N10
\inst18|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst18|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ = (\inst18|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ & (((\inst18|Div0|auto_generated|divider|divider|StageOut[31]~36_combout\) # 
-- (\inst18|Div0|auto_generated|divider|divider|StageOut[31]~37_combout\)))) # (!\inst18|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ & (!\inst18|Div0|auto_generated|divider|divider|StageOut[31]~36_combout\ & 
-- (!\inst18|Div0|auto_generated|divider|divider|StageOut[31]~37_combout\)))
-- \inst18|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ = CARRY((!\inst18|Div0|auto_generated|divider|divider|StageOut[31]~36_combout\ & (!\inst18|Div0|auto_generated|divider|divider|StageOut[31]~37_combout\ & 
-- !\inst18|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|Div0|auto_generated|divider|divider|StageOut[31]~36_combout\,
	datab => \inst18|Div0|auto_generated|divider|divider|StageOut[31]~37_combout\,
	datad => VCC,
	cin => \inst18|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\,
	combout => \inst18|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	cout => \inst18|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\);

-- Location: LCCOMB_X20_Y10_N12
\inst18|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst18|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ = (\inst18|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & (((\inst18|Div0|auto_generated|divider|divider|StageOut[32]~35_combout\) # 
-- (\inst18|Div0|auto_generated|divider|divider|StageOut[32]~48_combout\)))) # (!\inst18|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & ((((\inst18|Div0|auto_generated|divider|divider|StageOut[32]~35_combout\) # 
-- (\inst18|Div0|auto_generated|divider|divider|StageOut[32]~48_combout\)))))
-- \inst18|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ = CARRY((!\inst18|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & ((\inst18|Div0|auto_generated|divider|divider|StageOut[32]~35_combout\) # 
-- (\inst18|Div0|auto_generated|divider|divider|StageOut[32]~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|Div0|auto_generated|divider|divider|StageOut[32]~35_combout\,
	datab => \inst18|Div0|auto_generated|divider|divider|StageOut[32]~48_combout\,
	datad => VCC,
	cin => \inst18|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\,
	combout => \inst18|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\,
	cout => \inst18|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\);

-- Location: LCCOMB_X22_Y10_N6
\inst18|Add1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst18|Add1~6_combout\ = (\inst18|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & (!\inst18|Add1~5\)) # (!\inst18|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & (\inst18|Add1~5\ & VCC))
-- \inst18|Add1~7\ = CARRY((\inst18|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & !\inst18|Add1~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => VCC,
	cin => \inst18|Add1~5\,
	combout => \inst18|Add1~6_combout\,
	cout => \inst18|Add1~7\);

-- Location: LCFF_X8_Y10_N17
\inst17|cnt8[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst17|cnt8[4]~33_combout\,
	sclr => \inst17|LessThan3~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst17|cnt8\(4));

-- Location: LCFF_X8_Y9_N11
\inst17|cnt8[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst17|cnt8[17]~59_combout\,
	sclr => \inst17|LessThan3~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst17|cnt8\(17));

-- Location: LCFF_X8_Y9_N25
\inst17|cnt8[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst17|cnt8[24]~73_combout\,
	sclr => \inst17|LessThan3~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst17|cnt8\(24));

-- Location: LCCOMB_X19_Y8_N2
\inst|Div2|auto_generated|divider|divider|add_sub_4_result_int[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Div2|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ = (((\inst|Div2|auto_generated|divider|divider|StageOut[15]~42_combout\) # (\inst|Div2|auto_generated|divider|divider|StageOut[15]~43_combout\)))
-- \inst|Div2|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ = CARRY((\inst|Div2|auto_generated|divider|divider|StageOut[15]~42_combout\) # (\inst|Div2|auto_generated|divider|divider|StageOut[15]~43_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div2|auto_generated|divider|divider|StageOut[15]~42_combout\,
	datab => \inst|Div2|auto_generated|divider|divider|StageOut[15]~43_combout\,
	datad => VCC,
	combout => \inst|Div2|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	cout => \inst|Div2|auto_generated|divider|divider|add_sub_4_result_int[1]~1\);

-- Location: LCCOMB_X19_Y8_N4
\inst|Div2|auto_generated|divider|divider|add_sub_4_result_int[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Div2|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ = (\inst|Div2|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (((\inst|Div2|auto_generated|divider|divider|StageOut[16]~41_combout\) # 
-- (\inst|Div2|auto_generated|divider|divider|StageOut[16]~40_combout\)))) # (!\inst|Div2|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (!\inst|Div2|auto_generated|divider|divider|StageOut[16]~41_combout\ & 
-- (!\inst|Div2|auto_generated|divider|divider|StageOut[16]~40_combout\)))
-- \inst|Div2|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ = CARRY((!\inst|Div2|auto_generated|divider|divider|StageOut[16]~41_combout\ & (!\inst|Div2|auto_generated|divider|divider|StageOut[16]~40_combout\ & 
-- !\inst|Div2|auto_generated|divider|divider|add_sub_4_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div2|auto_generated|divider|divider|StageOut[16]~41_combout\,
	datab => \inst|Div2|auto_generated|divider|divider|StageOut[16]~40_combout\,
	datad => VCC,
	cin => \inst|Div2|auto_generated|divider|divider|add_sub_4_result_int[1]~1\,
	combout => \inst|Div2|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	cout => \inst|Div2|auto_generated|divider|divider|add_sub_4_result_int[2]~3\);

-- Location: LCCOMB_X20_Y8_N22
\inst|Div2|auto_generated|divider|divider|add_sub_5_result_int[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Div2|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ = (\inst|Div2|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (((\inst|Div2|auto_generated|divider|divider|StageOut[21]~46_combout\) # 
-- (\inst|Div2|auto_generated|divider|divider|StageOut[21]~47_combout\)))) # (!\inst|Div2|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (!\inst|Div2|auto_generated|divider|divider|StageOut[21]~46_combout\ & 
-- (!\inst|Div2|auto_generated|divider|divider|StageOut[21]~47_combout\)))
-- \inst|Div2|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ = CARRY((!\inst|Div2|auto_generated|divider|divider|StageOut[21]~46_combout\ & (!\inst|Div2|auto_generated|divider|divider|StageOut[21]~47_combout\ & 
-- !\inst|Div2|auto_generated|divider|divider|add_sub_5_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div2|auto_generated|divider|divider|StageOut[21]~46_combout\,
	datab => \inst|Div2|auto_generated|divider|divider|StageOut[21]~47_combout\,
	datad => VCC,
	cin => \inst|Div2|auto_generated|divider|divider|add_sub_5_result_int[1]~1\,
	combout => \inst|Div2|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	cout => \inst|Div2|auto_generated|divider|divider|add_sub_5_result_int[2]~3\);

-- Location: LCCOMB_X21_Y8_N10
\inst|Div2|auto_generated|divider|divider|add_sub_6_result_int[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Div2|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ = (((\inst|Div2|auto_generated|divider|divider|StageOut[25]~55_combout\) # (\inst|Div2|auto_generated|divider|divider|StageOut[25]~54_combout\)))
-- \inst|Div2|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ = CARRY((\inst|Div2|auto_generated|divider|divider|StageOut[25]~55_combout\) # (\inst|Div2|auto_generated|divider|divider|StageOut[25]~54_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div2|auto_generated|divider|divider|StageOut[25]~55_combout\,
	datab => \inst|Div2|auto_generated|divider|divider|StageOut[25]~54_combout\,
	datad => VCC,
	combout => \inst|Div2|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	cout => \inst|Div2|auto_generated|divider|divider|add_sub_6_result_int[1]~1\);

-- Location: LCCOMB_X21_Y8_N12
\inst|Div2|auto_generated|divider|divider|add_sub_6_result_int[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Div2|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ = (\inst|Div2|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (((\inst|Div2|auto_generated|divider|divider|StageOut[26]~52_combout\) # 
-- (\inst|Div2|auto_generated|divider|divider|StageOut[26]~53_combout\)))) # (!\inst|Div2|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (!\inst|Div2|auto_generated|divider|divider|StageOut[26]~52_combout\ & 
-- (!\inst|Div2|auto_generated|divider|divider|StageOut[26]~53_combout\)))
-- \inst|Div2|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ = CARRY((!\inst|Div2|auto_generated|divider|divider|StageOut[26]~52_combout\ & (!\inst|Div2|auto_generated|divider|divider|StageOut[26]~53_combout\ & 
-- !\inst|Div2|auto_generated|divider|divider|add_sub_6_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div2|auto_generated|divider|divider|StageOut[26]~52_combout\,
	datab => \inst|Div2|auto_generated|divider|divider|StageOut[26]~53_combout\,
	datad => VCC,
	cin => \inst|Div2|auto_generated|divider|divider|add_sub_6_result_int[1]~1\,
	combout => \inst|Div2|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	cout => \inst|Div2|auto_generated|divider|divider|add_sub_6_result_int[2]~3\);

-- Location: LCCOMB_X21_Y8_N14
\inst|Div2|auto_generated|divider|divider|add_sub_6_result_int[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Div2|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ = (\inst|Div2|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & (((\inst|Div2|auto_generated|divider|divider|StageOut[27]~51_combout\) # 
-- (\inst|Div2|auto_generated|divider|divider|StageOut[27]~66_combout\)))) # (!\inst|Div2|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((((\inst|Div2|auto_generated|divider|divider|StageOut[27]~51_combout\) # 
-- (\inst|Div2|auto_generated|divider|divider|StageOut[27]~66_combout\)))))
-- \inst|Div2|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ = CARRY((!\inst|Div2|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((\inst|Div2|auto_generated|divider|divider|StageOut[27]~51_combout\) # 
-- (\inst|Div2|auto_generated|divider|divider|StageOut[27]~66_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div2|auto_generated|divider|divider|StageOut[27]~51_combout\,
	datab => \inst|Div2|auto_generated|divider|divider|StageOut[27]~66_combout\,
	datad => VCC,
	cin => \inst|Div2|auto_generated|divider|divider|add_sub_6_result_int[2]~3\,
	combout => \inst|Div2|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	cout => \inst|Div2|auto_generated|divider|divider|add_sub_6_result_int[3]~5\);

-- Location: LCCOMB_X21_Y6_N2
\inst|Div2|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Div2|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\ = CARRY((\inst|Div2|auto_generated|divider|divider|StageOut[30]~60_combout\) # (\inst|Div2|auto_generated|divider|divider|StageOut[30]~61_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div2|auto_generated|divider|divider|StageOut[30]~60_combout\,
	datab => \inst|Div2|auto_generated|divider|divider|StageOut[30]~61_combout\,
	datad => VCC,
	cout => \inst|Div2|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\);

-- Location: LCCOMB_X21_Y6_N4
\inst|Div2|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Div2|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\ = CARRY((!\inst|Div2|auto_generated|divider|divider|StageOut[31]~59_combout\ & (!\inst|Div2|auto_generated|divider|divider|StageOut[31]~58_combout\ & 
-- !\inst|Div2|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div2|auto_generated|divider|divider|StageOut[31]~59_combout\,
	datab => \inst|Div2|auto_generated|divider|divider|StageOut[31]~58_combout\,
	datad => VCC,
	cin => \inst|Div2|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\,
	cout => \inst|Div2|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\);

-- Location: LCCOMB_X21_Y6_N6
\inst|Div2|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Div2|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\ = CARRY((!\inst|Div2|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\ & ((\inst|Div2|auto_generated|divider|divider|StageOut[32]~57_combout\) # 
-- (\inst|Div2|auto_generated|divider|divider|StageOut[32]~67_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div2|auto_generated|divider|divider|StageOut[32]~57_combout\,
	datab => \inst|Div2|auto_generated|divider|divider|StageOut[32]~67_combout\,
	datad => VCC,
	cin => \inst|Div2|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\,
	cout => \inst|Div2|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\);

-- Location: LCCOMB_X21_Y6_N8
\inst|Div2|auto_generated|divider|divider|add_sub_7_result_int[4]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Div2|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ = CARRY((!\inst|Div2|auto_generated|divider|divider|StageOut[33]~56_combout\ & (!\inst|Div2|auto_generated|divider|divider|StageOut[33]~63_combout\ & 
-- !\inst|Div2|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div2|auto_generated|divider|divider|StageOut[33]~56_combout\,
	datab => \inst|Div2|auto_generated|divider|divider|StageOut[33]~63_combout\,
	datad => VCC,
	cin => \inst|Div2|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\,
	cout => \inst|Div2|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\);

-- Location: LCCOMB_X21_Y6_N10
\inst|Div2|auto_generated|divider|divider|add_sub_7_result_int[5]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Div2|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ = \inst|Div2|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst|Div2|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\,
	combout => \inst|Div2|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\);

-- Location: LCCOMB_X22_Y7_N6
\inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\ = \inst13|display\(3) $ (VCC)
-- \inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~1\ = CARRY(\inst13|display\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|display\(3),
	datad => VCC,
	combout => \inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\,
	cout => \inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~1\);

-- Location: LCCOMB_X22_Y7_N8
\inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\ = (\inst13|display\(4) & (\inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~1\ & VCC)) # (!\inst13|display\(4) & 
-- (!\inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~1\))
-- \inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~3\ = CARRY((!\inst13|display\(4) & !\inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst13|display\(4),
	datad => VCC,
	cin => \inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~1\,
	combout => \inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\,
	cout => \inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~3\);

-- Location: LCCOMB_X22_Y7_N10
\inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\ = (\inst13|display\(5) & ((GND) # (!\inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~3\))) # (!\inst13|display\(5) & 
-- (\inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~3\ $ (GND)))
-- \inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~5\ = CARRY((\inst13|display\(5)) # (!\inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|display\(5),
	datad => VCC,
	cin => \inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~3\,
	combout => \inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\,
	cout => \inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~5\);

-- Location: LCCOMB_X22_Y7_N12
\inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\ = (\inst13|display\(6) & (!\inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~5\)) # (!\inst13|display\(6) & 
-- ((\inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~5\) # (GND)))
-- \inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~7\ = CARRY((!\inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~5\) # (!\inst13|display\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst13|display\(6),
	datad => VCC,
	cin => \inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~5\,
	combout => \inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\,
	cout => \inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~7\);

-- Location: LCCOMB_X22_Y7_N14
\inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\ = (\inst13|display\(7) & (\inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~7\ $ (GND))) # (!\inst13|display\(7) & 
-- (!\inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~7\ & VCC))
-- \inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~9\ = CARRY((\inst13|display\(7) & !\inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst13|display\(7),
	datad => VCC,
	cin => \inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~7\,
	combout => \inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\,
	cout => \inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~9\);

-- Location: LCCOMB_X22_Y6_N14
\inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~1_cout\ = CARRY((\inst|Div1|auto_generated|divider|divider|StageOut[49]~11_combout\) # (\inst|Div1|auto_generated|divider|divider|StageOut[49]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div1|auto_generated|divider|divider|StageOut[49]~11_combout\,
	datab => \inst|Div1|auto_generated|divider|divider|StageOut[49]~10_combout\,
	datad => VCC,
	cout => \inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~1_cout\);

-- Location: LCCOMB_X22_Y6_N16
\inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~3_cout\ = CARRY((!\inst|Div1|auto_generated|divider|divider|StageOut[50]~9_combout\ & (!\inst|Div1|auto_generated|divider|divider|StageOut[50]~8_combout\ & 
-- !\inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div1|auto_generated|divider|divider|StageOut[50]~9_combout\,
	datab => \inst|Div1|auto_generated|divider|divider|StageOut[50]~8_combout\,
	datad => VCC,
	cin => \inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~1_cout\,
	cout => \inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~3_cout\);

-- Location: LCCOMB_X22_Y6_N18
\inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~5_cout\ = CARRY((\inst|Div1|auto_generated|divider|divider|StageOut[51]~7_combout\) # ((\inst|Div1|auto_generated|divider|divider|StageOut[51]~6_combout\) # 
-- (!\inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div1|auto_generated|divider|divider|StageOut[51]~7_combout\,
	datab => \inst|Div1|auto_generated|divider|divider|StageOut[51]~6_combout\,
	datad => VCC,
	cin => \inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~3_cout\,
	cout => \inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~5_cout\);

-- Location: LCCOMB_X22_Y6_N20
\inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~7_cout\ = CARRY(((!\inst|Div1|auto_generated|divider|divider|StageOut[52]~5_combout\ & !\inst|Div1|auto_generated|divider|divider|StageOut[52]~4_combout\)) # 
-- (!\inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~5_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div1|auto_generated|divider|divider|StageOut[52]~5_combout\,
	datab => \inst|Div1|auto_generated|divider|divider|StageOut[52]~4_combout\,
	datad => VCC,
	cin => \inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~5_cout\,
	cout => \inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~7_cout\);

-- Location: LCCOMB_X22_Y6_N22
\inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~9_cout\ = CARRY((!\inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~7_cout\ & ((\inst|Div1|auto_generated|divider|divider|StageOut[53]~2_combout\) # 
-- (\inst|Div1|auto_generated|divider|divider|StageOut[53]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div1|auto_generated|divider|divider|StageOut[53]~2_combout\,
	datab => \inst|Div1|auto_generated|divider|divider|StageOut[53]~3_combout\,
	datad => VCC,
	cin => \inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~7_cout\,
	cout => \inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~9_cout\);

-- Location: LCCOMB_X22_Y6_N24
\inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[7]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[7]~11_cout\ = CARRY((!\inst|Div1|auto_generated|divider|divider|StageOut[54]~1_combout\ & (!\inst|Div1|auto_generated|divider|divider|StageOut[54]~0_combout\ & 
-- !\inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div1|auto_generated|divider|divider|StageOut[54]~1_combout\,
	datab => \inst|Div1|auto_generated|divider|divider|StageOut[54]~0_combout\,
	datad => VCC,
	cin => \inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~9_cout\,
	cout => \inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[7]~11_cout\);

-- Location: LCCOMB_X22_Y6_N26
\inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ = \inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[7]~11_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[7]~11_cout\,
	combout => \inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\);

-- Location: LCCOMB_X18_Y9_N20
\inst|Mod2|auto_generated|divider|divider|add_sub_4_result_int[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mod2|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ = (((\inst|Mod2|auto_generated|divider|divider|StageOut[15]~42_combout\) # (\inst|Mod2|auto_generated|divider|divider|StageOut[15]~43_combout\)))
-- \inst|Mod2|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ = CARRY((\inst|Mod2|auto_generated|divider|divider|StageOut[15]~42_combout\) # (\inst|Mod2|auto_generated|divider|divider|StageOut[15]~43_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod2|auto_generated|divider|divider|StageOut[15]~42_combout\,
	datab => \inst|Mod2|auto_generated|divider|divider|StageOut[15]~43_combout\,
	datad => VCC,
	combout => \inst|Mod2|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	cout => \inst|Mod2|auto_generated|divider|divider|add_sub_4_result_int[1]~1\);

-- Location: LCCOMB_X18_Y9_N22
\inst|Mod2|auto_generated|divider|divider|add_sub_4_result_int[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mod2|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ = (\inst|Mod2|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (((\inst|Mod2|auto_generated|divider|divider|StageOut[16]~40_combout\) # 
-- (\inst|Mod2|auto_generated|divider|divider|StageOut[16]~41_combout\)))) # (!\inst|Mod2|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (!\inst|Mod2|auto_generated|divider|divider|StageOut[16]~40_combout\ & 
-- (!\inst|Mod2|auto_generated|divider|divider|StageOut[16]~41_combout\)))
-- \inst|Mod2|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ = CARRY((!\inst|Mod2|auto_generated|divider|divider|StageOut[16]~40_combout\ & (!\inst|Mod2|auto_generated|divider|divider|StageOut[16]~41_combout\ & 
-- !\inst|Mod2|auto_generated|divider|divider|add_sub_4_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod2|auto_generated|divider|divider|StageOut[16]~40_combout\,
	datab => \inst|Mod2|auto_generated|divider|divider|StageOut[16]~41_combout\,
	datad => VCC,
	cin => \inst|Mod2|auto_generated|divider|divider|add_sub_4_result_int[1]~1\,
	combout => \inst|Mod2|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	cout => \inst|Mod2|auto_generated|divider|divider|add_sub_4_result_int[2]~3\);

-- Location: LCCOMB_X18_Y9_N24
\inst|Mod2|auto_generated|divider|divider|add_sub_4_result_int[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mod2|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ = (\inst|Mod2|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & (((\inst|Mod2|auto_generated|divider|divider|StageOut[17]~38_combout\) # 
-- (\inst|Mod2|auto_generated|divider|divider|StageOut[17]~39_combout\)))) # (!\inst|Mod2|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((((\inst|Mod2|auto_generated|divider|divider|StageOut[17]~38_combout\) # 
-- (\inst|Mod2|auto_generated|divider|divider|StageOut[17]~39_combout\)))))
-- \inst|Mod2|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ = CARRY((!\inst|Mod2|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((\inst|Mod2|auto_generated|divider|divider|StageOut[17]~38_combout\) # 
-- (\inst|Mod2|auto_generated|divider|divider|StageOut[17]~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod2|auto_generated|divider|divider|StageOut[17]~38_combout\,
	datab => \inst|Mod2|auto_generated|divider|divider|StageOut[17]~39_combout\,
	datad => VCC,
	cin => \inst|Mod2|auto_generated|divider|divider|add_sub_4_result_int[2]~3\,
	combout => \inst|Mod2|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	cout => \inst|Mod2|auto_generated|divider|divider|add_sub_4_result_int[3]~5\);

-- Location: LCCOMB_X19_Y9_N6
\inst|Mod2|auto_generated|divider|divider|add_sub_5_result_int[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mod2|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ = (\inst|Mod2|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & (((\inst|Mod2|auto_generated|divider|divider|StageOut[22]~45_combout\) # 
-- (\inst|Mod2|auto_generated|divider|divider|StageOut[22]~65_combout\)))) # (!\inst|Mod2|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((((\inst|Mod2|auto_generated|divider|divider|StageOut[22]~45_combout\) # 
-- (\inst|Mod2|auto_generated|divider|divider|StageOut[22]~65_combout\)))))
-- \inst|Mod2|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ = CARRY((!\inst|Mod2|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((\inst|Mod2|auto_generated|divider|divider|StageOut[22]~45_combout\) # 
-- (\inst|Mod2|auto_generated|divider|divider|StageOut[22]~65_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod2|auto_generated|divider|divider|StageOut[22]~45_combout\,
	datab => \inst|Mod2|auto_generated|divider|divider|StageOut[22]~65_combout\,
	datad => VCC,
	cin => \inst|Mod2|auto_generated|divider|divider|add_sub_5_result_int[2]~3\,
	combout => \inst|Mod2|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	cout => \inst|Mod2|auto_generated|divider|divider|add_sub_5_result_int[3]~5\);

-- Location: LCCOMB_X19_Y6_N8
\inst|Mod2|auto_generated|divider|divider|add_sub_6_result_int[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mod2|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ = (\inst|Mod2|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (((\inst|Mod2|auto_generated|divider|divider|StageOut[26]~52_combout\) # 
-- (\inst|Mod2|auto_generated|divider|divider|StageOut[26]~53_combout\)))) # (!\inst|Mod2|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (!\inst|Mod2|auto_generated|divider|divider|StageOut[26]~52_combout\ & 
-- (!\inst|Mod2|auto_generated|divider|divider|StageOut[26]~53_combout\)))
-- \inst|Mod2|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ = CARRY((!\inst|Mod2|auto_generated|divider|divider|StageOut[26]~52_combout\ & (!\inst|Mod2|auto_generated|divider|divider|StageOut[26]~53_combout\ & 
-- !\inst|Mod2|auto_generated|divider|divider|add_sub_6_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod2|auto_generated|divider|divider|StageOut[26]~52_combout\,
	datab => \inst|Mod2|auto_generated|divider|divider|StageOut[26]~53_combout\,
	datad => VCC,
	cin => \inst|Mod2|auto_generated|divider|divider|add_sub_6_result_int[1]~1\,
	combout => \inst|Mod2|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	cout => \inst|Mod2|auto_generated|divider|divider|add_sub_6_result_int[2]~3\);

-- Location: LCCOMB_X19_Y6_N10
\inst|Mod2|auto_generated|divider|divider|add_sub_6_result_int[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mod2|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ = (\inst|Mod2|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & (((\inst|Mod2|auto_generated|divider|divider|StageOut[27]~66_combout\) # 
-- (\inst|Mod2|auto_generated|divider|divider|StageOut[27]~51_combout\)))) # (!\inst|Mod2|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((((\inst|Mod2|auto_generated|divider|divider|StageOut[27]~66_combout\) # 
-- (\inst|Mod2|auto_generated|divider|divider|StageOut[27]~51_combout\)))))
-- \inst|Mod2|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ = CARRY((!\inst|Mod2|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((\inst|Mod2|auto_generated|divider|divider|StageOut[27]~66_combout\) # 
-- (\inst|Mod2|auto_generated|divider|divider|StageOut[27]~51_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod2|auto_generated|divider|divider|StageOut[27]~66_combout\,
	datab => \inst|Mod2|auto_generated|divider|divider|StageOut[27]~51_combout\,
	datad => VCC,
	cin => \inst|Mod2|auto_generated|divider|divider|add_sub_6_result_int[2]~3\,
	combout => \inst|Mod2|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	cout => \inst|Mod2|auto_generated|divider|divider|add_sub_6_result_int[3]~5\);

-- Location: LCCOMB_X20_Y6_N16
\inst|Mod2|auto_generated|divider|divider|add_sub_7_result_int[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mod2|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ = (((\inst|Mod2|auto_generated|divider|divider|StageOut[30]~57_combout\) # (\inst|Mod2|auto_generated|divider|divider|StageOut[30]~56_combout\)))
-- \inst|Mod2|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ = CARRY((\inst|Mod2|auto_generated|divider|divider|StageOut[30]~57_combout\) # (\inst|Mod2|auto_generated|divider|divider|StageOut[30]~56_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod2|auto_generated|divider|divider|StageOut[30]~57_combout\,
	datab => \inst|Mod2|auto_generated|divider|divider|StageOut[30]~56_combout\,
	datad => VCC,
	combout => \inst|Mod2|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	cout => \inst|Mod2|auto_generated|divider|divider|add_sub_7_result_int[1]~1\);

-- Location: LCCOMB_X20_Y6_N20
\inst|Mod2|auto_generated|divider|divider|add_sub_7_result_int[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mod2|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ = (\inst|Mod2|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & (((\inst|Mod2|auto_generated|divider|divider|StageOut[32]~59_combout\) # 
-- (\inst|Mod2|auto_generated|divider|divider|StageOut[32]~67_combout\)))) # (!\inst|Mod2|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & ((((\inst|Mod2|auto_generated|divider|divider|StageOut[32]~59_combout\) # 
-- (\inst|Mod2|auto_generated|divider|divider|StageOut[32]~67_combout\)))))
-- \inst|Mod2|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ = CARRY((!\inst|Mod2|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & ((\inst|Mod2|auto_generated|divider|divider|StageOut[32]~59_combout\) # 
-- (\inst|Mod2|auto_generated|divider|divider|StageOut[32]~67_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod2|auto_generated|divider|divider|StageOut[32]~59_combout\,
	datab => \inst|Mod2|auto_generated|divider|divider|StageOut[32]~67_combout\,
	datad => VCC,
	cin => \inst|Mod2|auto_generated|divider|divider|add_sub_7_result_int[2]~3\,
	combout => \inst|Mod2|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\,
	cout => \inst|Mod2|auto_generated|divider|divider|add_sub_7_result_int[3]~5\);

-- Location: LCCOMB_X20_Y7_N4
\inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ = \inst|Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ $ (GND)
-- \inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ = CARRY(!\inst|Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => VCC,
	combout => \inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	cout => \inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\);

-- Location: LCCOMB_X20_Y7_N6
\inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ = (\inst|Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (!\inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\)) # 
-- (!\inst|Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (\inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & VCC))
-- \inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ = CARRY((\inst|Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & !\inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => VCC,
	cin => \inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\,
	combout => \inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	cout => \inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\);

-- Location: LCCOMB_X21_Y7_N2
\inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ = (((\inst|Mod1|auto_generated|divider|divider|StageOut[30]~6_combout\) # (\inst|Mod1|auto_generated|divider|divider|StageOut[30]~7_combout\)))
-- \inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ = CARRY((\inst|Mod1|auto_generated|divider|divider|StageOut[30]~6_combout\) # (\inst|Mod1|auto_generated|divider|divider|StageOut[30]~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod1|auto_generated|divider|divider|StageOut[30]~6_combout\,
	datab => \inst|Mod1|auto_generated|divider|divider|StageOut[30]~7_combout\,
	datad => VCC,
	combout => \inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	cout => \inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\);

-- Location: LCCOMB_X21_Y7_N6
\inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ = (\inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & (((\inst|Mod1|auto_generated|divider|divider|StageOut[32]~3_combout\) # 
-- (\inst|Mod1|auto_generated|divider|divider|StageOut[32]~2_combout\)))) # (!\inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & ((((\inst|Mod1|auto_generated|divider|divider|StageOut[32]~3_combout\) # 
-- (\inst|Mod1|auto_generated|divider|divider|StageOut[32]~2_combout\)))))
-- \inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ = CARRY((!\inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & ((\inst|Mod1|auto_generated|divider|divider|StageOut[32]~3_combout\) # 
-- (\inst|Mod1|auto_generated|divider|divider|StageOut[32]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod1|auto_generated|divider|divider|StageOut[32]~3_combout\,
	datab => \inst|Mod1|auto_generated|divider|divider|StageOut[32]~2_combout\,
	datad => VCC,
	cin => \inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\,
	combout => \inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\,
	cout => \inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\);

-- Location: LCFF_X15_Y3_N25
\inst13|DelayCnt[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst13|DelayCnt[28]~86_combout\,
	ena => \inst13|DelayCnt[30]~93_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst13|DelayCnt\(28));

-- Location: LCFF_X15_Y4_N25
\inst13|DelayCnt[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst13|DelayCnt[12]~54_combout\,
	ena => \inst13|DelayCnt[30]~93_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst13|DelayCnt\(12));

-- Location: LCFF_X15_Y3_N17
\inst13|DelayCnt[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst13|DelayCnt[24]~78_combout\,
	ena => \inst13|DelayCnt[30]~93_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst13|DelayCnt\(24));

-- Location: LCCOMB_X13_Y11_N20
\inst11|data[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|data[1]~0_combout\ = (\inst11|data[0]~3_combout\ & ((\inst5|dis\(1)))) # (!\inst11|data[0]~3_combout\ & (\inst11|Mux6~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|data[0]~3_combout\,
	datab => \inst11|Mux6~0_combout\,
	datad => \inst5|dis\(1),
	combout => \inst11|data[1]~0_combout\);

-- Location: LCFF_X26_Y8_N11
\inst17|cnt9600[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst17|cnt9600[0]~22_combout\,
	sclr => \inst17|LessThan1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst17|cnt9600\(0));

-- Location: LCFF_X26_Y8_N21
\inst17|cnt9600[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst17|cnt9600[5]~32_combout\,
	sclr => \inst17|LessThan1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst17|cnt9600\(5));

-- Location: LCFF_X26_Y7_N7
\inst17|cnt9600[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst17|cnt9600[14]~50_combout\,
	sclr => \inst17|LessThan1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst17|cnt9600\(14));

-- Location: LCFF_X26_Y7_N13
\inst17|cnt9600[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst17|cnt9600[17]~56_combout\,
	sclr => \inst17|LessThan1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst17|cnt9600\(17));

-- Location: LCFF_X26_Y7_N19
\inst17|cnt9600[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst17|cnt9600[20]~62_combout\,
	sclr => \inst17|LessThan1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst17|cnt9600\(20));

-- Location: LCFF_X26_Y7_N21
\inst17|cnt9600[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst17|cnt9600[21]~64_combout\,
	sclr => \inst17|LessThan1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst17|cnt9600\(21));

-- Location: LCCOMB_X17_Y11_N18
\inst13|Add1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|Add1~0_combout\ = \inst13|initialSpeed\(1) $ (GND)
-- \inst13|Add1~1\ = CARRY(!\inst13|initialSpeed\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|initialSpeed\(1),
	datad => VCC,
	combout => \inst13|Add1~0_combout\,
	cout => \inst13|Add1~1\);

-- Location: LCCOMB_X17_Y11_N20
\inst13|Add1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|Add1~2_combout\ = (\inst13|initialSpeed\(2) & ((\inst13|Add1~1\) # (GND))) # (!\inst13|initialSpeed\(2) & (!\inst13|Add1~1\))
-- \inst13|Add1~3\ = CARRY((\inst13|initialSpeed\(2)) # (!\inst13|Add1~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|initialSpeed\(2),
	datad => VCC,
	cin => \inst13|Add1~1\,
	combout => \inst13|Add1~2_combout\,
	cout => \inst13|Add1~3\);

-- Location: LCCOMB_X17_Y11_N26
\inst13|Add1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|Add1~8_combout\ = (\inst13|initialSpeed\(5) & (\inst13|Add1~7\ $ (GND))) # (!\inst13|initialSpeed\(5) & (!\inst13|Add1~7\ & VCC))
-- \inst13|Add1~9\ = CARRY((\inst13|initialSpeed\(5) & !\inst13|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst13|initialSpeed\(5),
	datad => VCC,
	cin => \inst13|Add1~7\,
	combout => \inst13|Add1~8_combout\,
	cout => \inst13|Add1~9\);

-- Location: LCCOMB_X17_Y11_N28
\inst13|Add1~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|Add1~10_combout\ = (\inst13|initialSpeed\(6) & (!\inst13|Add1~9\)) # (!\inst13|initialSpeed\(6) & ((\inst13|Add1~9\) # (GND)))
-- \inst13|Add1~11\ = CARRY((!\inst13|Add1~9\) # (!\inst13|initialSpeed\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst13|initialSpeed\(6),
	datad => VCC,
	cin => \inst13|Add1~9\,
	combout => \inst13|Add1~10_combout\,
	cout => \inst13|Add1~11\);

-- Location: LCCOMB_X17_Y11_N30
\inst13|Add1~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|Add1~12_combout\ = \inst13|Add1~11\ $ (!\inst13|initialSpeed\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst13|initialSpeed\(7),
	cin => \inst13|Add1~11\,
	combout => \inst13|Add1~12_combout\);

-- Location: LCCOMB_X17_Y8_N4
\inst13|Add4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|Add4~0_combout\ = \inst13|initialSpeed\(1) $ (GND)
-- \inst13|Add4~1\ = CARRY(!\inst13|initialSpeed\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|initialSpeed\(1),
	datad => VCC,
	combout => \inst13|Add4~0_combout\,
	cout => \inst13|Add4~1\);

-- Location: LCCOMB_X17_Y8_N6
\inst13|Add4~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|Add4~2_combout\ = (\inst13|initialSpeed\(2) & (!\inst13|Add4~1\)) # (!\inst13|initialSpeed\(2) & (\inst13|Add4~1\ & VCC))
-- \inst13|Add4~3\ = CARRY((\inst13|initialSpeed\(2) & !\inst13|Add4~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|initialSpeed\(2),
	datad => VCC,
	cin => \inst13|Add4~1\,
	combout => \inst13|Add4~2_combout\,
	cout => \inst13|Add4~3\);

-- Location: LCCOMB_X17_Y8_N12
\inst13|Add4~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|Add4~8_combout\ = (\inst13|initialSpeed\(5) & (\inst13|Add4~7\ $ (GND))) # (!\inst13|initialSpeed\(5) & (!\inst13|Add4~7\ & VCC))
-- \inst13|Add4~9\ = CARRY((\inst13|initialSpeed\(5) & !\inst13|Add4~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst13|initialSpeed\(5),
	datad => VCC,
	cin => \inst13|Add4~7\,
	combout => \inst13|Add4~8_combout\,
	cout => \inst13|Add4~9\);

-- Location: LCCOMB_X17_Y8_N14
\inst13|Add4~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|Add4~10_combout\ = (\inst13|initialSpeed\(6) & (!\inst13|Add4~9\)) # (!\inst13|initialSpeed\(6) & ((\inst13|Add4~9\) # (GND)))
-- \inst13|Add4~11\ = CARRY((!\inst13|Add4~9\) # (!\inst13|initialSpeed\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|initialSpeed\(6),
	datad => VCC,
	cin => \inst13|Add4~9\,
	combout => \inst13|Add4~10_combout\,
	cout => \inst13|Add4~11\);

-- Location: LCCOMB_X17_Y8_N16
\inst13|Add4~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|Add4~12_combout\ = \inst13|Add4~11\ $ (!\inst13|initialSpeed\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst13|initialSpeed\(7),
	cin => \inst13|Add4~11\,
	combout => \inst13|Add4~12_combout\);

-- Location: LCCOMB_X17_Y11_N2
\inst13|Add2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|Add2~0_combout\ = \inst13|initialSpeed\(1) $ (GND)
-- \inst13|Add2~1\ = CARRY(!\inst13|initialSpeed\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|initialSpeed\(1),
	datad => VCC,
	combout => \inst13|Add2~0_combout\,
	cout => \inst13|Add2~1\);

-- Location: LCCOMB_X17_Y11_N4
\inst13|Add2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|Add2~2_combout\ = (\inst13|initialSpeed\(2) & ((\inst13|Add2~1\) # (GND))) # (!\inst13|initialSpeed\(2) & (!\inst13|Add2~1\))
-- \inst13|Add2~3\ = CARRY((\inst13|initialSpeed\(2)) # (!\inst13|Add2~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|initialSpeed\(2),
	datad => VCC,
	cin => \inst13|Add2~1\,
	combout => \inst13|Add2~2_combout\,
	cout => \inst13|Add2~3\);

-- Location: LCCOMB_X17_Y11_N10
\inst13|Add2~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|Add2~8_combout\ = (\inst13|initialSpeed\(5) & (\inst13|Add2~7\ $ (GND))) # (!\inst13|initialSpeed\(5) & (!\inst13|Add2~7\ & VCC))
-- \inst13|Add2~9\ = CARRY((\inst13|initialSpeed\(5) & !\inst13|Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst13|initialSpeed\(5),
	datad => VCC,
	cin => \inst13|Add2~7\,
	combout => \inst13|Add2~8_combout\,
	cout => \inst13|Add2~9\);

-- Location: LCCOMB_X18_Y7_N16
\inst13|Add3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|Add3~0_combout\ = \inst13|initialSpeed\(0) $ (GND)
-- \inst13|Add3~1\ = CARRY(!\inst13|initialSpeed\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|initialSpeed\(0),
	datad => VCC,
	combout => \inst13|Add3~0_combout\,
	cout => \inst13|Add3~1\);

-- Location: LCCOMB_X18_Y7_N18
\inst13|Add3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|Add3~2_combout\ = (\inst13|initialSpeed\(1) & (!\inst13|Add3~1\)) # (!\inst13|initialSpeed\(1) & (\inst13|Add3~1\ & VCC))
-- \inst13|Add3~3\ = CARRY((\inst13|initialSpeed\(1) & !\inst13|Add3~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst13|initialSpeed\(1),
	datad => VCC,
	cin => \inst13|Add3~1\,
	combout => \inst13|Add3~2_combout\,
	cout => \inst13|Add3~3\);

-- Location: LCCOMB_X18_Y7_N20
\inst13|Add3~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|Add3~4_combout\ = (\inst13|initialSpeed\(2) & (!\inst13|Add3~3\ & VCC)) # (!\inst13|initialSpeed\(2) & (\inst13|Add3~3\ $ (GND)))
-- \inst13|Add3~5\ = CARRY((!\inst13|initialSpeed\(2) & !\inst13|Add3~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|initialSpeed\(2),
	datad => VCC,
	cin => \inst13|Add3~3\,
	combout => \inst13|Add3~4_combout\,
	cout => \inst13|Add3~5\);

-- Location: LCCOMB_X18_Y7_N22
\inst13|Add3~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|Add3~6_combout\ = (\inst13|initialSpeed\(3) & (!\inst13|Add3~5\)) # (!\inst13|initialSpeed\(3) & (\inst13|Add3~5\ & VCC))
-- \inst13|Add3~7\ = CARRY((\inst13|initialSpeed\(3) & !\inst13|Add3~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst13|initialSpeed\(3),
	datad => VCC,
	cin => \inst13|Add3~5\,
	combout => \inst13|Add3~6_combout\,
	cout => \inst13|Add3~7\);

-- Location: LCCOMB_X18_Y7_N26
\inst13|Add3~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|Add3~10_combout\ = (\inst13|initialSpeed\(5) & (!\inst13|Add3~9\)) # (!\inst13|initialSpeed\(5) & ((\inst13|Add3~9\) # (GND)))
-- \inst13|Add3~11\ = CARRY((!\inst13|Add3~9\) # (!\inst13|initialSpeed\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst13|initialSpeed\(5),
	datad => VCC,
	cin => \inst13|Add3~9\,
	combout => \inst13|Add3~10_combout\,
	cout => \inst13|Add3~11\);

-- Location: LCCOMB_X17_Y7_N12
\inst13|Add7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|Add7~0_combout\ = \inst13|display[0]~7_combout\ $ (VCC)
-- \inst13|Add7~1\ = CARRY(\inst13|display[0]~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|display[0]~7_combout\,
	datad => VCC,
	combout => \inst13|Add7~0_combout\,
	cout => \inst13|Add7~1\);

-- Location: LCCOMB_X17_Y7_N14
\inst13|Add7~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|Add7~2_combout\ = (\inst13|display[1]~6_combout\ & (!\inst13|Add7~1\)) # (!\inst13|display[1]~6_combout\ & ((\inst13|Add7~1\) # (GND)))
-- \inst13|Add7~3\ = CARRY((!\inst13|Add7~1\) # (!\inst13|display[1]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst13|display[1]~6_combout\,
	datad => VCC,
	cin => \inst13|Add7~1\,
	combout => \inst13|Add7~2_combout\,
	cout => \inst13|Add7~3\);

-- Location: LCCOMB_X17_Y7_N16
\inst13|Add7~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|Add7~4_combout\ = (\inst13|display[2]~5_combout\ & ((GND) # (!\inst13|Add7~3\))) # (!\inst13|display[2]~5_combout\ & (\inst13|Add7~3\ $ (GND)))
-- \inst13|Add7~5\ = CARRY((\inst13|display[2]~5_combout\) # (!\inst13|Add7~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst13|display[2]~5_combout\,
	datad => VCC,
	cin => \inst13|Add7~3\,
	combout => \inst13|Add7~4_combout\,
	cout => \inst13|Add7~5\);

-- Location: LCCOMB_X17_Y7_N18
\inst13|Add7~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|Add7~6_combout\ = (\inst13|display[3]~4_combout\ & (!\inst13|Add7~5\)) # (!\inst13|display[3]~4_combout\ & ((\inst13|Add7~5\) # (GND)))
-- \inst13|Add7~7\ = CARRY((!\inst13|Add7~5\) # (!\inst13|display[3]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|display[3]~4_combout\,
	datad => VCC,
	cin => \inst13|Add7~5\,
	combout => \inst13|Add7~6_combout\,
	cout => \inst13|Add7~7\);

-- Location: LCCOMB_X17_Y7_N20
\inst13|Add7~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|Add7~8_combout\ = (\inst13|display[4]~3_combout\ & (\inst13|Add7~7\ $ (GND))) # (!\inst13|display[4]~3_combout\ & (!\inst13|Add7~7\ & VCC))
-- \inst13|Add7~9\ = CARRY((\inst13|display[4]~3_combout\ & !\inst13|Add7~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|display[4]~3_combout\,
	datad => VCC,
	cin => \inst13|Add7~7\,
	combout => \inst13|Add7~8_combout\,
	cout => \inst13|Add7~9\);

-- Location: LCCOMB_X17_Y7_N22
\inst13|Add7~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|Add7~10_combout\ = (\inst13|display[5]~2_combout\ & (!\inst13|Add7~9\)) # (!\inst13|display[5]~2_combout\ & ((\inst13|Add7~9\) # (GND)))
-- \inst13|Add7~11\ = CARRY((!\inst13|Add7~9\) # (!\inst13|display[5]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst13|display[5]~2_combout\,
	datad => VCC,
	cin => \inst13|Add7~9\,
	combout => \inst13|Add7~10_combout\,
	cout => \inst13|Add7~11\);

-- Location: LCCOMB_X17_Y7_N24
\inst13|Add7~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|Add7~12_combout\ = (\inst13|display[6]~1_combout\ & (\inst13|Add7~11\ $ (GND))) # (!\inst13|display[6]~1_combout\ & (!\inst13|Add7~11\ & VCC))
-- \inst13|Add7~13\ = CARRY((\inst13|display[6]~1_combout\ & !\inst13|Add7~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst13|display[6]~1_combout\,
	datad => VCC,
	cin => \inst13|Add7~11\,
	combout => \inst13|Add7~12_combout\,
	cout => \inst13|Add7~13\);

-- Location: LCCOMB_X17_Y7_N26
\inst13|Add7~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|Add7~14_combout\ = \inst13|Add7~13\ $ (\inst13|display[7]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst13|display[7]~0_combout\,
	cin => \inst13|Add7~13\,
	combout => \inst13|Add7~14_combout\);

-- Location: LCCOMB_X17_Y9_N16
\inst13|Add6~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|Add6~4_combout\ = (\inst13|display[5]~2_combout\ & (\inst13|Add6~3\ $ (GND))) # (!\inst13|display[5]~2_combout\ & (!\inst13|Add6~3\ & VCC))
-- \inst13|Add6~5\ = CARRY((\inst13|display[5]~2_combout\ & !\inst13|Add6~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst13|display[5]~2_combout\,
	datad => VCC,
	cin => \inst13|Add6~3\,
	combout => \inst13|Add6~4_combout\,
	cout => \inst13|Add6~5\);

-- Location: LCCOMB_X15_Y6_N2
\inst13|Add8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|Add8~0_combout\ = \inst13|display[1]~6_combout\ $ (VCC)
-- \inst13|Add8~1\ = CARRY(\inst13|display[1]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|display[1]~6_combout\,
	datad => VCC,
	combout => \inst13|Add8~0_combout\,
	cout => \inst13|Add8~1\);

-- Location: LCCOMB_X15_Y6_N4
\inst13|Add8~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|Add8~2_combout\ = (\inst13|display[2]~5_combout\ & (!\inst13|Add8~1\)) # (!\inst13|display[2]~5_combout\ & ((\inst13|Add8~1\) # (GND)))
-- \inst13|Add8~3\ = CARRY((!\inst13|Add8~1\) # (!\inst13|display[2]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|display[2]~5_combout\,
	datad => VCC,
	cin => \inst13|Add8~1\,
	combout => \inst13|Add8~2_combout\,
	cout => \inst13|Add8~3\);

-- Location: LCCOMB_X15_Y6_N10
\inst13|Add8~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|Add8~8_combout\ = (\inst13|display[5]~2_combout\ & (\inst13|Add8~7\ $ (GND))) # (!\inst13|display[5]~2_combout\ & (!\inst13|Add8~7\ & VCC))
-- \inst13|Add8~9\ = CARRY((\inst13|display[5]~2_combout\ & !\inst13|Add8~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|display[5]~2_combout\,
	datad => VCC,
	cin => \inst13|Add8~7\,
	combout => \inst13|Add8~8_combout\,
	cout => \inst13|Add8~9\);

-- Location: LCCOMB_X14_Y7_N16
\inst13|speed[5]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|speed[5]~2_combout\ = (\inst13|state.10~regout\ & (\inst13|speed~77_combout\)) # (!\inst13|state.10~regout\ & ((\inst13|speed~71_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|speed~77_combout\,
	datab => \inst13|state.10~regout\,
	datad => \inst13|speed~71_combout\,
	combout => \inst13|speed[5]~2_combout\);

-- Location: LCCOMB_X14_Y7_N10
\inst13|speed[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|speed[1]~0_combout\ = (\inst13|state.10~regout\ & ((\inst13|speed~142_combout\))) # (!\inst13|state.10~regout\ & (\inst13|speed~121_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|state.10~regout\,
	datab => \inst13|speed~121_combout\,
	datad => \inst13|speed~142_combout\,
	combout => \inst13|speed[1]~0_combout\);

-- Location: LCFF_X5_Y6_N17
\inst17|cnt10k[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst17|cnt10k[6]~24_combout\,
	sclr => \inst17|LessThan6~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst17|cnt10k\(6));

-- Location: LCFF_X5_Y6_N11
\inst17|cnt10k[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst17|cnt10k[3]~18_combout\,
	sclr => \inst17|LessThan6~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst17|cnt10k\(3));

-- Location: LCFF_X5_Y6_N13
\inst17|cnt10k[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst17|cnt10k[4]~20_combout\,
	sclr => \inst17|LessThan6~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst17|cnt10k\(4));

-- Location: LCFF_X5_Y6_N27
\inst17|cnt10k[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst17|cnt10k[11]~34_combout\,
	sclr => \inst17|LessThan6~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst17|cnt10k\(11));

-- Location: LCFF_X17_Y5_N11
\inst6|tone[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst6|tone[19]~66_combout\,
	sclr => \inst13|ALT_INV_beepEnable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|tone\(19));

-- Location: LCCOMB_X19_Y5_N14
\inst6|Add1~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|Add1~14_combout\ = (\inst6|counter\(7) & (\inst6|Add1~13\ & VCC)) # (!\inst6|counter\(7) & (!\inst6|Add1~13\))
-- \inst6|Add1~15\ = CARRY((!\inst6|counter\(7) & !\inst6|Add1~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|counter\(7),
	datad => VCC,
	cin => \inst6|Add1~13\,
	combout => \inst6|Add1~14_combout\,
	cout => \inst6|Add1~15\);

-- Location: LCFF_X17_Y5_N13
\inst6|tone[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst6|tone[20]~68_combout\,
	sclr => \inst13|ALT_INV_beepEnable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|tone\(20));

-- Location: LCCOMB_X19_Y5_N22
\inst6|Add1~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|Add1~22_combout\ = (\inst6|counter\(11) & (\inst6|Add1~21\ & VCC)) # (!\inst6|counter\(11) & (!\inst6|Add1~21\))
-- \inst6|Add1~23\ = CARRY((!\inst6|counter\(11) & !\inst6|Add1~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|counter\(11),
	datad => VCC,
	cin => \inst6|Add1~21\,
	combout => \inst6|Add1~22_combout\,
	cout => \inst6|Add1~23\);

-- Location: LCFF_X8_Y10_N11
\inst17|cnt8[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst17|cnt8[1]~27_combout\,
	sclr => \inst17|LessThan3~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst17|cnt8\(1));

-- Location: LCCOMB_X8_Y10_N10
\inst17|cnt8[1]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|cnt8[1]~27_combout\ = (\inst17|cnt8\(1) & (!\inst17|cnt8[0]~26\)) # (!\inst17|cnt8\(1) & ((\inst17|cnt8[0]~26\) # (GND)))
-- \inst17|cnt8[1]~28\ = CARRY((!\inst17|cnt8[0]~26\) # (!\inst17|cnt8\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|cnt8\(1),
	datad => VCC,
	cin => \inst17|cnt8[0]~26\,
	combout => \inst17|cnt8[1]~27_combout\,
	cout => \inst17|cnt8[1]~28\);

-- Location: LCCOMB_X8_Y10_N16
\inst17|cnt8[4]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|cnt8[4]~33_combout\ = (\inst17|cnt8\(4) & (\inst17|cnt8[3]~32\ $ (GND))) # (!\inst17|cnt8\(4) & (!\inst17|cnt8[3]~32\ & VCC))
-- \inst17|cnt8[4]~34\ = CARRY((\inst17|cnt8\(4) & !\inst17|cnt8[3]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|cnt8\(4),
	datad => VCC,
	cin => \inst17|cnt8[3]~32\,
	combout => \inst17|cnt8[4]~33_combout\,
	cout => \inst17|cnt8[4]~34\);

-- Location: LCCOMB_X8_Y9_N10
\inst17|cnt8[17]~59\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|cnt8[17]~59_combout\ = (\inst17|cnt8\(17) & (!\inst17|cnt8[16]~58\)) # (!\inst17|cnt8\(17) & ((\inst17|cnt8[16]~58\) # (GND)))
-- \inst17|cnt8[17]~60\ = CARRY((!\inst17|cnt8[16]~58\) # (!\inst17|cnt8\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|cnt8\(17),
	datad => VCC,
	cin => \inst17|cnt8[16]~58\,
	combout => \inst17|cnt8[17]~59_combout\,
	cout => \inst17|cnt8[17]~60\);

-- Location: LCCOMB_X8_Y9_N22
\inst17|cnt8[23]~71\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|cnt8[23]~71_combout\ = (\inst17|cnt8\(23) & (!\inst17|cnt8[22]~70\)) # (!\inst17|cnt8\(23) & ((\inst17|cnt8[22]~70\) # (GND)))
-- \inst17|cnt8[23]~72\ = CARRY((!\inst17|cnt8[22]~70\) # (!\inst17|cnt8\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst17|cnt8\(23),
	datad => VCC,
	cin => \inst17|cnt8[22]~70\,
	combout => \inst17|cnt8[23]~71_combout\,
	cout => \inst17|cnt8[23]~72\);

-- Location: LCCOMB_X8_Y9_N24
\inst17|cnt8[24]~73\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|cnt8[24]~73_combout\ = \inst17|cnt8\(24) $ (!\inst17|cnt8[23]~72\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|cnt8\(24),
	cin => \inst17|cnt8[23]~72\,
	combout => \inst17|cnt8[24]~73_combout\);

-- Location: LCFF_X21_Y5_N7
\inst17|cnt16k[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst17|cnt16k[3]~18_combout\,
	sclr => \inst17|LessThan2~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst17|cnt16k\(3));

-- Location: LCFF_X21_Y5_N11
\inst17|cnt16k[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst17|cnt16k[5]~22_combout\,
	sclr => \inst17|LessThan2~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst17|cnt16k\(5));

-- Location: LCFF_X21_Y5_N23
\inst17|cnt16k[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst17|cnt16k[11]~34_combout\,
	sclr => \inst17|LessThan2~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst17|cnt16k\(11));

-- Location: LCFF_X15_Y4_N13
\inst13|DelayCnt[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst13|DelayCnt[6]~42_combout\,
	ena => \inst13|DelayCnt[30]~93_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst13|DelayCnt\(6));

-- Location: LCFF_X15_Y4_N11
\inst13|DelayCnt[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst13|DelayCnt[5]~40_combout\,
	ena => \inst13|DelayCnt[30]~93_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst13|DelayCnt\(5));

-- Location: LCFF_X15_Y4_N7
\inst13|DelayCnt[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst13|DelayCnt[3]~36_combout\,
	ena => \inst13|DelayCnt[30]~93_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst13|DelayCnt\(3));

-- Location: LCCOMB_X15_Y4_N6
\inst13|DelayCnt[3]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|DelayCnt[3]~36_combout\ = (\inst13|DelayCnt\(3) & (\inst13|DelayCnt[2]~35\ $ (GND))) # (!\inst13|DelayCnt\(3) & (!\inst13|DelayCnt[2]~35\ & VCC))
-- \inst13|DelayCnt[3]~37\ = CARRY((\inst13|DelayCnt\(3) & !\inst13|DelayCnt[2]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|DelayCnt\(3),
	datad => VCC,
	cin => \inst13|DelayCnt[2]~35\,
	combout => \inst13|DelayCnt[3]~36_combout\,
	cout => \inst13|DelayCnt[3]~37\);

-- Location: LCCOMB_X15_Y4_N10
\inst13|DelayCnt[5]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|DelayCnt[5]~40_combout\ = (\inst13|DelayCnt\(5) & (\inst13|DelayCnt[4]~39\ $ (GND))) # (!\inst13|DelayCnt\(5) & (!\inst13|DelayCnt[4]~39\ & VCC))
-- \inst13|DelayCnt[5]~41\ = CARRY((\inst13|DelayCnt\(5) & !\inst13|DelayCnt[4]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|DelayCnt\(5),
	datad => VCC,
	cin => \inst13|DelayCnt[4]~39\,
	combout => \inst13|DelayCnt[5]~40_combout\,
	cout => \inst13|DelayCnt[5]~41\);

-- Location: LCCOMB_X15_Y4_N12
\inst13|DelayCnt[6]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|DelayCnt[6]~42_combout\ = (\inst13|DelayCnt\(6) & (!\inst13|DelayCnt[5]~41\)) # (!\inst13|DelayCnt\(6) & ((\inst13|DelayCnt[5]~41\) # (GND)))
-- \inst13|DelayCnt[6]~43\ = CARRY((!\inst13|DelayCnt[5]~41\) # (!\inst13|DelayCnt\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|DelayCnt\(6),
	datad => VCC,
	cin => \inst13|DelayCnt[5]~41\,
	combout => \inst13|DelayCnt[6]~42_combout\,
	cout => \inst13|DelayCnt[6]~43\);

-- Location: LCCOMB_X15_Y4_N24
\inst13|DelayCnt[12]~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|DelayCnt[12]~54_combout\ = (\inst13|DelayCnt\(12) & (!\inst13|DelayCnt[11]~53\)) # (!\inst13|DelayCnt\(12) & ((\inst13|DelayCnt[11]~53\) # (GND)))
-- \inst13|DelayCnt[12]~55\ = CARRY((!\inst13|DelayCnt[11]~53\) # (!\inst13|DelayCnt\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|DelayCnt\(12),
	datad => VCC,
	cin => \inst13|DelayCnt[11]~53\,
	combout => \inst13|DelayCnt[12]~54_combout\,
	cout => \inst13|DelayCnt[12]~55\);

-- Location: LCCOMB_X15_Y3_N16
\inst13|DelayCnt[24]~78\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|DelayCnt[24]~78_combout\ = (\inst13|DelayCnt\(24) & (!\inst13|DelayCnt[23]~77\)) # (!\inst13|DelayCnt\(24) & ((\inst13|DelayCnt[23]~77\) # (GND)))
-- \inst13|DelayCnt[24]~79\ = CARRY((!\inst13|DelayCnt[23]~77\) # (!\inst13|DelayCnt\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|DelayCnt\(24),
	datad => VCC,
	cin => \inst13|DelayCnt[23]~77\,
	combout => \inst13|DelayCnt[24]~78_combout\,
	cout => \inst13|DelayCnt[24]~79\);

-- Location: LCCOMB_X15_Y3_N24
\inst13|DelayCnt[28]~86\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|DelayCnt[28]~86_combout\ = (\inst13|DelayCnt\(28) & (!\inst13|DelayCnt[27]~85\)) # (!\inst13|DelayCnt\(28) & ((\inst13|DelayCnt[27]~85\) # (GND)))
-- \inst13|DelayCnt[28]~87\ = CARRY((!\inst13|DelayCnt[27]~85\) # (!\inst13|DelayCnt\(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|DelayCnt\(28),
	datad => VCC,
	cin => \inst13|DelayCnt[27]~85\,
	combout => \inst13|DelayCnt[28]~86_combout\,
	cout => \inst13|DelayCnt[28]~87\);

-- Location: LCCOMB_X26_Y8_N10
\inst17|cnt9600[0]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|cnt9600[0]~22_combout\ = \inst17|cnt9600\(0) $ (VCC)
-- \inst17|cnt9600[0]~23\ = CARRY(\inst17|cnt9600\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|cnt9600\(0),
	datad => VCC,
	combout => \inst17|cnt9600[0]~22_combout\,
	cout => \inst17|cnt9600[0]~23\);

-- Location: LCCOMB_X26_Y8_N20
\inst17|cnt9600[5]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|cnt9600[5]~32_combout\ = (\inst17|cnt9600\(5) & (!\inst17|cnt9600[4]~31\)) # (!\inst17|cnt9600\(5) & ((\inst17|cnt9600[4]~31\) # (GND)))
-- \inst17|cnt9600[5]~33\ = CARRY((!\inst17|cnt9600[4]~31\) # (!\inst17|cnt9600\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|cnt9600\(5),
	datad => VCC,
	cin => \inst17|cnt9600[4]~31\,
	combout => \inst17|cnt9600[5]~32_combout\,
	cout => \inst17|cnt9600[5]~33\);

-- Location: LCCOMB_X26_Y7_N6
\inst17|cnt9600[14]~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|cnt9600[14]~50_combout\ = (\inst17|cnt9600\(14) & (\inst17|cnt9600[13]~49\ $ (GND))) # (!\inst17|cnt9600\(14) & (!\inst17|cnt9600[13]~49\ & VCC))
-- \inst17|cnt9600[14]~51\ = CARRY((\inst17|cnt9600\(14) & !\inst17|cnt9600[13]~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|cnt9600\(14),
	datad => VCC,
	cin => \inst17|cnt9600[13]~49\,
	combout => \inst17|cnt9600[14]~50_combout\,
	cout => \inst17|cnt9600[14]~51\);

-- Location: LCCOMB_X26_Y7_N12
\inst17|cnt9600[17]~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|cnt9600[17]~56_combout\ = (\inst17|cnt9600\(17) & (!\inst17|cnt9600[16]~55\)) # (!\inst17|cnt9600\(17) & ((\inst17|cnt9600[16]~55\) # (GND)))
-- \inst17|cnt9600[17]~57\ = CARRY((!\inst17|cnt9600[16]~55\) # (!\inst17|cnt9600\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|cnt9600\(17),
	datad => VCC,
	cin => \inst17|cnt9600[16]~55\,
	combout => \inst17|cnt9600[17]~56_combout\,
	cout => \inst17|cnt9600[17]~57\);

-- Location: LCCOMB_X26_Y7_N16
\inst17|cnt9600[19]~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|cnt9600[19]~60_combout\ = (\inst17|cnt9600\(19) & (!\inst17|cnt9600[18]~59\)) # (!\inst17|cnt9600\(19) & ((\inst17|cnt9600[18]~59\) # (GND)))
-- \inst17|cnt9600[19]~61\ = CARRY((!\inst17|cnt9600[18]~59\) # (!\inst17|cnt9600\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|cnt9600\(19),
	datad => VCC,
	cin => \inst17|cnt9600[18]~59\,
	combout => \inst17|cnt9600[19]~60_combout\,
	cout => \inst17|cnt9600[19]~61\);

-- Location: LCCOMB_X26_Y7_N18
\inst17|cnt9600[20]~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|cnt9600[20]~62_combout\ = (\inst17|cnt9600\(20) & (\inst17|cnt9600[19]~61\ $ (GND))) # (!\inst17|cnt9600\(20) & (!\inst17|cnt9600[19]~61\ & VCC))
-- \inst17|cnt9600[20]~63\ = CARRY((\inst17|cnt9600\(20) & !\inst17|cnt9600[19]~61\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst17|cnt9600\(20),
	datad => VCC,
	cin => \inst17|cnt9600[19]~61\,
	combout => \inst17|cnt9600[20]~62_combout\,
	cout => \inst17|cnt9600[20]~63\);

-- Location: LCCOMB_X26_Y7_N20
\inst17|cnt9600[21]~64\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|cnt9600[21]~64_combout\ = \inst17|cnt9600\(21) $ (\inst17|cnt9600[20]~63\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|cnt9600\(21),
	cin => \inst17|cnt9600[20]~63\,
	combout => \inst17|cnt9600[21]~64_combout\);

-- Location: LCFF_X15_Y12_N13
\inst13|cnt2[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst17|out_8~clkctrl_outclk\,
	datain => \inst13|cnt2[0]~6_combout\,
	sclr => \inst13|LessThan7~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst13|cnt2\(0));

-- Location: LCCOMB_X5_Y6_N10
\inst17|cnt10k[3]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|cnt10k[3]~18_combout\ = (\inst17|cnt10k\(3) & (!\inst17|cnt10k[2]~17\)) # (!\inst17|cnt10k\(3) & ((\inst17|cnt10k[2]~17\) # (GND)))
-- \inst17|cnt10k[3]~19\ = CARRY((!\inst17|cnt10k[2]~17\) # (!\inst17|cnt10k\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|cnt10k\(3),
	datad => VCC,
	cin => \inst17|cnt10k[2]~17\,
	combout => \inst17|cnt10k[3]~18_combout\,
	cout => \inst17|cnt10k[3]~19\);

-- Location: LCCOMB_X5_Y6_N12
\inst17|cnt10k[4]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|cnt10k[4]~20_combout\ = (\inst17|cnt10k\(4) & (\inst17|cnt10k[3]~19\ $ (GND))) # (!\inst17|cnt10k\(4) & (!\inst17|cnt10k[3]~19\ & VCC))
-- \inst17|cnt10k[4]~21\ = CARRY((\inst17|cnt10k\(4) & !\inst17|cnt10k[3]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|cnt10k\(4),
	datad => VCC,
	cin => \inst17|cnt10k[3]~19\,
	combout => \inst17|cnt10k[4]~20_combout\,
	cout => \inst17|cnt10k[4]~21\);

-- Location: LCCOMB_X5_Y6_N16
\inst17|cnt10k[6]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|cnt10k[6]~24_combout\ = (\inst17|cnt10k\(6) & (\inst17|cnt10k[5]~23\ $ (GND))) # (!\inst17|cnt10k\(6) & (!\inst17|cnt10k[5]~23\ & VCC))
-- \inst17|cnt10k[6]~25\ = CARRY((\inst17|cnt10k\(6) & !\inst17|cnt10k[5]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|cnt10k\(6),
	datad => VCC,
	cin => \inst17|cnt10k[5]~23\,
	combout => \inst17|cnt10k[6]~24_combout\,
	cout => \inst17|cnt10k[6]~25\);

-- Location: LCCOMB_X5_Y6_N24
\inst17|cnt10k[10]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|cnt10k[10]~32_combout\ = (\inst17|cnt10k\(10) & (\inst17|cnt10k[9]~31\ $ (GND))) # (!\inst17|cnt10k\(10) & (!\inst17|cnt10k[9]~31\ & VCC))
-- \inst17|cnt10k[10]~33\ = CARRY((\inst17|cnt10k\(10) & !\inst17|cnt10k[9]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst17|cnt10k\(10),
	datad => VCC,
	cin => \inst17|cnt10k[9]~31\,
	combout => \inst17|cnt10k[10]~32_combout\,
	cout => \inst17|cnt10k[10]~33\);

-- Location: LCCOMB_X5_Y6_N26
\inst17|cnt10k[11]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|cnt10k[11]~34_combout\ = \inst17|cnt10k[10]~33\ $ (\inst17|cnt10k\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst17|cnt10k\(11),
	cin => \inst17|cnt10k[10]~33\,
	combout => \inst17|cnt10k[11]~34_combout\);

-- Location: LCFF_X17_Y6_N25
\inst6|tone[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst6|tone[10]~48_combout\,
	sclr => \inst13|ALT_INV_beepEnable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|tone\(10));

-- Location: LCFF_X17_Y6_N21
\inst6|tone[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst6|tone[8]~44_combout\,
	sclr => \inst13|ALT_INV_beepEnable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|tone\(8));

-- Location: LCFF_X17_Y6_N17
\inst6|tone[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst6|tone[6]~40_combout\,
	sclr => \inst13|ALT_INV_beepEnable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|tone\(6));

-- Location: LCFF_X17_Y6_N13
\inst6|tone[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst6|tone[4]~36_combout\,
	sclr => \inst13|ALT_INV_beepEnable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|tone\(4));

-- Location: LCFF_X17_Y6_N11
\inst6|tone[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst6|tone[3]~34_combout\,
	sclr => \inst13|ALT_INV_beepEnable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|tone\(3));

-- Location: LCFF_X17_Y6_N7
\inst6|tone[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst6|tone[1]~30_combout\,
	sclr => \inst13|ALT_INV_beepEnable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|tone\(1));

-- Location: LCCOMB_X17_Y6_N6
\inst6|tone[1]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|tone[1]~30_combout\ = (\inst6|tone\(1) & (!\inst6|tone[0]~29\)) # (!\inst6|tone\(1) & ((\inst6|tone[0]~29\) # (GND)))
-- \inst6|tone[1]~31\ = CARRY((!\inst6|tone[0]~29\) # (!\inst6|tone\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|tone\(1),
	datad => VCC,
	cin => \inst6|tone[0]~29\,
	combout => \inst6|tone[1]~30_combout\,
	cout => \inst6|tone[1]~31\);

-- Location: LCCOMB_X17_Y6_N10
\inst6|tone[3]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|tone[3]~34_combout\ = (\inst6|tone\(3) & (!\inst6|tone[2]~33\)) # (!\inst6|tone\(3) & ((\inst6|tone[2]~33\) # (GND)))
-- \inst6|tone[3]~35\ = CARRY((!\inst6|tone[2]~33\) # (!\inst6|tone\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|tone\(3),
	datad => VCC,
	cin => \inst6|tone[2]~33\,
	combout => \inst6|tone[3]~34_combout\,
	cout => \inst6|tone[3]~35\);

-- Location: LCCOMB_X17_Y6_N12
\inst6|tone[4]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|tone[4]~36_combout\ = (\inst6|tone\(4) & (\inst6|tone[3]~35\ $ (GND))) # (!\inst6|tone\(4) & (!\inst6|tone[3]~35\ & VCC))
-- \inst6|tone[4]~37\ = CARRY((\inst6|tone\(4) & !\inst6|tone[3]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|tone\(4),
	datad => VCC,
	cin => \inst6|tone[3]~35\,
	combout => \inst6|tone[4]~36_combout\,
	cout => \inst6|tone[4]~37\);

-- Location: LCCOMB_X17_Y6_N16
\inst6|tone[6]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|tone[6]~40_combout\ = (\inst6|tone\(6) & (\inst6|tone[5]~39\ $ (GND))) # (!\inst6|tone\(6) & (!\inst6|tone[5]~39\ & VCC))
-- \inst6|tone[6]~41\ = CARRY((\inst6|tone\(6) & !\inst6|tone[5]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|tone\(6),
	datad => VCC,
	cin => \inst6|tone[5]~39\,
	combout => \inst6|tone[6]~40_combout\,
	cout => \inst6|tone[6]~41\);

-- Location: LCCOMB_X17_Y6_N20
\inst6|tone[8]~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|tone[8]~44_combout\ = (\inst6|tone\(8) & (\inst6|tone[7]~43\ $ (GND))) # (!\inst6|tone\(8) & (!\inst6|tone[7]~43\ & VCC))
-- \inst6|tone[8]~45\ = CARRY((\inst6|tone\(8) & !\inst6|tone[7]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|tone\(8),
	datad => VCC,
	cin => \inst6|tone[7]~43\,
	combout => \inst6|tone[8]~44_combout\,
	cout => \inst6|tone[8]~45\);

-- Location: LCCOMB_X17_Y6_N24
\inst6|tone[10]~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|tone[10]~48_combout\ = (\inst6|tone\(10) & (\inst6|tone[9]~47\ $ (GND))) # (!\inst6|tone\(10) & (!\inst6|tone[9]~47\ & VCC))
-- \inst6|tone[10]~49\ = CARRY((\inst6|tone\(10) & !\inst6|tone[9]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|tone\(10),
	datad => VCC,
	cin => \inst6|tone[9]~47\,
	combout => \inst6|tone[10]~48_combout\,
	cout => \inst6|tone[10]~49\);

-- Location: LCCOMB_X17_Y5_N10
\inst6|tone[19]~66\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|tone[19]~66_combout\ = (\inst6|tone\(19) & (!\inst6|tone[18]~65\)) # (!\inst6|tone\(19) & ((\inst6|tone[18]~65\) # (GND)))
-- \inst6|tone[19]~67\ = CARRY((!\inst6|tone[18]~65\) # (!\inst6|tone\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|tone\(19),
	datad => VCC,
	cin => \inst6|tone[18]~65\,
	combout => \inst6|tone[19]~66_combout\,
	cout => \inst6|tone[19]~67\);

-- Location: LCCOMB_X17_Y5_N12
\inst6|tone[20]~68\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|tone[20]~68_combout\ = (\inst6|tone\(20) & (\inst6|tone[19]~67\ $ (GND))) # (!\inst6|tone\(20) & (!\inst6|tone[19]~67\ & VCC))
-- \inst6|tone[20]~69\ = CARRY((\inst6|tone\(20) & !\inst6|tone[19]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|tone\(20),
	datad => VCC,
	cin => \inst6|tone[19]~67\,
	combout => \inst6|tone[20]~68_combout\,
	cout => \inst6|tone[20]~69\);

-- Location: LCFF_X17_Y5_N25
\inst6|tone[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst6|tone[26]~80_combout\,
	sclr => \inst13|ALT_INV_beepEnable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|tone\(26));

-- Location: LCCOMB_X17_Y5_N24
\inst6|tone[26]~80\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|tone[26]~80_combout\ = (\inst6|tone\(26) & (\inst6|tone[25]~79\ $ (GND))) # (!\inst6|tone\(26) & (!\inst6|tone[25]~79\ & VCC))
-- \inst6|tone[26]~81\ = CARRY((\inst6|tone\(26) & !\inst6|tone[25]~79\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|tone\(26),
	datad => VCC,
	cin => \inst6|tone[25]~79\,
	combout => \inst6|tone[26]~80_combout\,
	cout => \inst6|tone[26]~81\);

-- Location: LCCOMB_X21_Y5_N6
\inst17|cnt16k[3]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|cnt16k[3]~18_combout\ = (\inst17|cnt16k\(3) & (!\inst17|cnt16k[2]~17\)) # (!\inst17|cnt16k\(3) & ((\inst17|cnt16k[2]~17\) # (GND)))
-- \inst17|cnt16k[3]~19\ = CARRY((!\inst17|cnt16k[2]~17\) # (!\inst17|cnt16k\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|cnt16k\(3),
	datad => VCC,
	cin => \inst17|cnt16k[2]~17\,
	combout => \inst17|cnt16k[3]~18_combout\,
	cout => \inst17|cnt16k[3]~19\);

-- Location: LCCOMB_X21_Y5_N10
\inst17|cnt16k[5]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|cnt16k[5]~22_combout\ = (\inst17|cnt16k\(5) & (!\inst17|cnt16k[4]~21\)) # (!\inst17|cnt16k\(5) & ((\inst17|cnt16k[4]~21\) # (GND)))
-- \inst17|cnt16k[5]~23\ = CARRY((!\inst17|cnt16k[4]~21\) # (!\inst17|cnt16k\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|cnt16k\(5),
	datad => VCC,
	cin => \inst17|cnt16k[4]~21\,
	combout => \inst17|cnt16k[5]~22_combout\,
	cout => \inst17|cnt16k[5]~23\);

-- Location: LCCOMB_X21_Y5_N20
\inst17|cnt16k[10]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|cnt16k[10]~32_combout\ = (\inst17|cnt16k\(10) & (\inst17|cnt16k[9]~31\ $ (GND))) # (!\inst17|cnt16k\(10) & (!\inst17|cnt16k[9]~31\ & VCC))
-- \inst17|cnt16k[10]~33\ = CARRY((\inst17|cnt16k\(10) & !\inst17|cnt16k[9]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|cnt16k\(10),
	datad => VCC,
	cin => \inst17|cnt16k[9]~31\,
	combout => \inst17|cnt16k[10]~32_combout\,
	cout => \inst17|cnt16k[10]~33\);

-- Location: LCCOMB_X21_Y5_N22
\inst17|cnt16k[11]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|cnt16k[11]~34_combout\ = \inst17|cnt16k[10]~33\ $ (\inst17|cnt16k\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst17|cnt16k\(11),
	cin => \inst17|cnt16k[10]~33\,
	combout => \inst17|cnt16k[11]~34_combout\);

-- Location: LCFF_X9_Y12_N29
\inst17|cnt1[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst17|cnt1[11]~49_combout\,
	sclr => \inst17|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst17|cnt1\(11));

-- Location: LCFF_X10_Y12_N31
\inst17|cnt1[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \inst17|cnt1[12]~51_combout\,
	sclr => \inst17|LessThan0~8_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst17|cnt1\(12));

-- Location: LCFF_X9_Y11_N1
\inst17|cnt1[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst17|cnt1[13]~53_combout\,
	sclr => \inst17|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst17|cnt1\(13));

-- Location: LCFF_X10_Y12_N21
\inst17|cnt1[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \inst17|cnt1[14]~55_combout\,
	sclr => \inst17|LessThan0~8_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst17|cnt1\(14));

-- Location: LCFF_X9_Y12_N7
\inst17|cnt1[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst17|cnt1[0]~27_combout\,
	sclr => \inst17|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst17|cnt1\(0));

-- Location: LCFF_X9_Y12_N9
\inst17|cnt1[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst17|cnt1[1]~29_combout\,
	sclr => \inst17|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst17|cnt1\(1));

-- Location: LCFF_X9_Y12_N11
\inst17|cnt1[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst17|cnt1[2]~31_combout\,
	sclr => \inst17|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst17|cnt1\(2));

-- Location: LCFF_X9_Y12_N13
\inst17|cnt1[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst17|cnt1[3]~33_combout\,
	sclr => \inst17|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst17|cnt1\(3));

-- Location: LCFF_X9_Y12_N15
\inst17|cnt1[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst17|cnt1[4]~35_combout\,
	sclr => \inst17|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst17|cnt1\(4));

-- Location: LCFF_X9_Y12_N17
\inst17|cnt1[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst17|cnt1[5]~37_combout\,
	sclr => \inst17|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst17|cnt1\(5));

-- Location: LCFF_X9_Y12_N19
\inst17|cnt1[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst17|cnt1[6]~39_combout\,
	sclr => \inst17|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst17|cnt1\(6));

-- Location: LCFF_X9_Y12_N21
\inst17|cnt1[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst17|cnt1[7]~41_combout\,
	sclr => \inst17|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst17|cnt1\(7));

-- Location: LCFF_X9_Y12_N23
\inst17|cnt1[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst17|cnt1[8]~43_combout\,
	sclr => \inst17|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst17|cnt1\(8));

-- Location: LCFF_X9_Y12_N25
\inst17|cnt1[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst17|cnt1[9]~45_combout\,
	sclr => \inst17|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst17|cnt1\(9));

-- Location: LCFF_X9_Y12_N27
\inst17|cnt1[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst17|cnt1[10]~47_combout\,
	sclr => \inst17|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst17|cnt1\(10));

-- Location: LCFF_X9_Y11_N5
\inst17|cnt1[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst17|cnt1[15]~57_combout\,
	sclr => \inst17|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst17|cnt1\(15));

-- Location: LCFF_X9_Y11_N7
\inst17|cnt1[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst17|cnt1[16]~59_combout\,
	sclr => \inst17|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst17|cnt1\(16));

-- Location: LCFF_X9_Y11_N9
\inst17|cnt1[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst17|cnt1[17]~61_combout\,
	sclr => \inst17|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst17|cnt1\(17));

-- Location: LCFF_X9_Y11_N11
\inst17|cnt1[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst17|cnt1[18]~63_combout\,
	sclr => \inst17|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst17|cnt1\(18));

-- Location: LCFF_X9_Y11_N13
\inst17|cnt1[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst17|cnt1[19]~65_combout\,
	sclr => \inst17|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst17|cnt1\(19));

-- Location: LCFF_X9_Y11_N15
\inst17|cnt1[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst17|cnt1[20]~67_combout\,
	sclr => \inst17|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst17|cnt1\(20));

-- Location: LCFF_X9_Y11_N17
\inst17|cnt1[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst17|cnt1[21]~69_combout\,
	sclr => \inst17|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst17|cnt1\(21));

-- Location: LCFF_X9_Y11_N19
\inst17|cnt1[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst17|cnt1[22]~71_combout\,
	sclr => \inst17|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst17|cnt1\(22));

-- Location: LCFF_X9_Y11_N21
\inst17|cnt1[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst17|cnt1[23]~73_combout\,
	sclr => \inst17|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst17|cnt1\(23));

-- Location: LCFF_X9_Y11_N23
\inst17|cnt1[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst17|cnt1[24]~75_combout\,
	sclr => \inst17|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst17|cnt1\(24));

-- Location: LCFF_X9_Y11_N25
\inst17|cnt1[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst17|cnt1[25]~77_combout\,
	sclr => \inst17|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst17|cnt1\(25));

-- Location: LCFF_X9_Y11_N27
\inst17|cnt1[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst17|cnt1[26]~79_combout\,
	sclr => \inst17|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst17|cnt1\(26));

-- Location: LCCOMB_X15_Y12_N12
\inst13|cnt2[0]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|cnt2[0]~6_combout\ = \inst13|cnt2\(0) $ (VCC)
-- \inst13|cnt2[0]~7\ = CARRY(\inst13|cnt2\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|cnt2\(0),
	datad => VCC,
	combout => \inst13|cnt2[0]~6_combout\,
	cout => \inst13|cnt2[0]~7\);

-- Location: LCFF_X20_Y11_N7
\inst12|cnt[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst17|out_16k~clkctrl_outclk\,
	datain => \inst12|cnt[0]~8_combout\,
	sclr => \ALT_INV_ultraleft_echo~combout\,
	ena => \inst12|cnt[1]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst12|cnt\(0));

-- Location: LCCOMB_X3_Y6_N0
\inst13|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|Add0~0_combout\ = \inst13|clk_count\(0) $ (VCC)
-- \inst13|Add0~1\ = CARRY(\inst13|clk_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|clk_count\(0),
	datad => VCC,
	combout => \inst13|Add0~0_combout\,
	cout => \inst13|Add0~1\);

-- Location: LCCOMB_X3_Y6_N2
\inst13|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|Add0~2_combout\ = (\inst13|clk_count\(1) & (!\inst13|Add0~1\)) # (!\inst13|clk_count\(1) & ((\inst13|Add0~1\) # (GND)))
-- \inst13|Add0~3\ = CARRY((!\inst13|Add0~1\) # (!\inst13|clk_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst13|clk_count\(1),
	datad => VCC,
	cin => \inst13|Add0~1\,
	combout => \inst13|Add0~2_combout\,
	cout => \inst13|Add0~3\);

-- Location: LCCOMB_X3_Y6_N4
\inst13|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|Add0~4_combout\ = (\inst13|clk_count\(2) & (\inst13|Add0~3\ $ (GND))) # (!\inst13|clk_count\(2) & (!\inst13|Add0~3\ & VCC))
-- \inst13|Add0~5\ = CARRY((\inst13|clk_count\(2) & !\inst13|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|clk_count\(2),
	datad => VCC,
	cin => \inst13|Add0~3\,
	combout => \inst13|Add0~4_combout\,
	cout => \inst13|Add0~5\);

-- Location: LCCOMB_X3_Y6_N6
\inst13|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|Add0~6_combout\ = (\inst13|clk_count\(3) & (!\inst13|Add0~5\)) # (!\inst13|clk_count\(3) & ((\inst13|Add0~5\) # (GND)))
-- \inst13|Add0~7\ = CARRY((!\inst13|Add0~5\) # (!\inst13|clk_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst13|clk_count\(3),
	datad => VCC,
	cin => \inst13|Add0~5\,
	combout => \inst13|Add0~6_combout\,
	cout => \inst13|Add0~7\);

-- Location: LCCOMB_X3_Y6_N8
\inst13|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|Add0~8_combout\ = (\inst13|clk_count\(4) & (\inst13|Add0~7\ $ (GND))) # (!\inst13|clk_count\(4) & (!\inst13|Add0~7\ & VCC))
-- \inst13|Add0~9\ = CARRY((\inst13|clk_count\(4) & !\inst13|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst13|clk_count\(4),
	datad => VCC,
	cin => \inst13|Add0~7\,
	combout => \inst13|Add0~8_combout\,
	cout => \inst13|Add0~9\);

-- Location: LCCOMB_X3_Y6_N10
\inst13|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|Add0~10_combout\ = (\inst13|clk_count\(5) & (!\inst13|Add0~9\)) # (!\inst13|clk_count\(5) & ((\inst13|Add0~9\) # (GND)))
-- \inst13|Add0~11\ = CARRY((!\inst13|Add0~9\) # (!\inst13|clk_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst13|clk_count\(5),
	datad => VCC,
	cin => \inst13|Add0~9\,
	combout => \inst13|Add0~10_combout\,
	cout => \inst13|Add0~11\);

-- Location: LCCOMB_X3_Y6_N12
\inst13|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|Add0~12_combout\ = (\inst13|clk_count\(6) & (\inst13|Add0~11\ $ (GND))) # (!\inst13|clk_count\(6) & (!\inst13|Add0~11\ & VCC))
-- \inst13|Add0~13\ = CARRY((\inst13|clk_count\(6) & !\inst13|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|clk_count\(6),
	datad => VCC,
	cin => \inst13|Add0~11\,
	combout => \inst13|Add0~12_combout\,
	cout => \inst13|Add0~13\);

-- Location: LCCOMB_X3_Y6_N14
\inst13|Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|Add0~14_combout\ = (\inst13|clk_count\(7) & (!\inst13|Add0~13\)) # (!\inst13|clk_count\(7) & ((\inst13|Add0~13\) # (GND)))
-- \inst13|Add0~15\ = CARRY((!\inst13|Add0~13\) # (!\inst13|clk_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst13|clk_count\(7),
	datad => VCC,
	cin => \inst13|Add0~13\,
	combout => \inst13|Add0~14_combout\,
	cout => \inst13|Add0~15\);

-- Location: LCCOMB_X3_Y6_N16
\inst13|Add0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|Add0~16_combout\ = (\inst13|clk_count\(8) & (\inst13|Add0~15\ $ (GND))) # (!\inst13|clk_count\(8) & (!\inst13|Add0~15\ & VCC))
-- \inst13|Add0~17\ = CARRY((\inst13|clk_count\(8) & !\inst13|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|clk_count\(8),
	datad => VCC,
	cin => \inst13|Add0~15\,
	combout => \inst13|Add0~16_combout\,
	cout => \inst13|Add0~17\);

-- Location: LCCOMB_X3_Y6_N18
\inst13|Add0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|Add0~18_combout\ = (\inst13|clk_count\(9) & (!\inst13|Add0~17\)) # (!\inst13|clk_count\(9) & ((\inst13|Add0~17\) # (GND)))
-- \inst13|Add0~19\ = CARRY((!\inst13|Add0~17\) # (!\inst13|clk_count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst13|clk_count\(9),
	datad => VCC,
	cin => \inst13|Add0~17\,
	combout => \inst13|Add0~18_combout\,
	cout => \inst13|Add0~19\);

-- Location: LCCOMB_X3_Y6_N20
\inst13|Add0~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|Add0~20_combout\ = (\inst13|clk_count\(10) & (\inst13|Add0~19\ $ (GND))) # (!\inst13|clk_count\(10) & (!\inst13|Add0~19\ & VCC))
-- \inst13|Add0~21\ = CARRY((\inst13|clk_count\(10) & !\inst13|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|clk_count\(10),
	datad => VCC,
	cin => \inst13|Add0~19\,
	combout => \inst13|Add0~20_combout\,
	cout => \inst13|Add0~21\);

-- Location: LCCOMB_X3_Y6_N22
\inst13|Add0~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|Add0~22_combout\ = (\inst13|clk_count\(11) & (!\inst13|Add0~21\)) # (!\inst13|clk_count\(11) & ((\inst13|Add0~21\) # (GND)))
-- \inst13|Add0~23\ = CARRY((!\inst13|Add0~21\) # (!\inst13|clk_count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst13|clk_count\(11),
	datad => VCC,
	cin => \inst13|Add0~21\,
	combout => \inst13|Add0~22_combout\,
	cout => \inst13|Add0~23\);

-- Location: LCCOMB_X3_Y6_N24
\inst13|Add0~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|Add0~24_combout\ = \inst13|Add0~23\ $ (!\inst13|clk_count\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst13|clk_count\(12),
	cin => \inst13|Add0~23\,
	combout => \inst13|Add0~24_combout\);

-- Location: LCCOMB_X9_Y12_N6
\inst17|cnt1[0]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|cnt1[0]~27_combout\ = \inst17|cnt1\(0) $ (VCC)
-- \inst17|cnt1[0]~28\ = CARRY(\inst17|cnt1\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|cnt1\(0),
	datad => VCC,
	combout => \inst17|cnt1[0]~27_combout\,
	cout => \inst17|cnt1[0]~28\);

-- Location: LCCOMB_X9_Y12_N8
\inst17|cnt1[1]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|cnt1[1]~29_combout\ = (\inst17|cnt1\(1) & (!\inst17|cnt1[0]~28\)) # (!\inst17|cnt1\(1) & ((\inst17|cnt1[0]~28\) # (GND)))
-- \inst17|cnt1[1]~30\ = CARRY((!\inst17|cnt1[0]~28\) # (!\inst17|cnt1\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst17|cnt1\(1),
	datad => VCC,
	cin => \inst17|cnt1[0]~28\,
	combout => \inst17|cnt1[1]~29_combout\,
	cout => \inst17|cnt1[1]~30\);

-- Location: LCCOMB_X9_Y12_N10
\inst17|cnt1[2]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|cnt1[2]~31_combout\ = (\inst17|cnt1\(2) & (\inst17|cnt1[1]~30\ $ (GND))) # (!\inst17|cnt1\(2) & (!\inst17|cnt1[1]~30\ & VCC))
-- \inst17|cnt1[2]~32\ = CARRY((\inst17|cnt1\(2) & !\inst17|cnt1[1]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|cnt1\(2),
	datad => VCC,
	cin => \inst17|cnt1[1]~30\,
	combout => \inst17|cnt1[2]~31_combout\,
	cout => \inst17|cnt1[2]~32\);

-- Location: LCCOMB_X9_Y12_N12
\inst17|cnt1[3]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|cnt1[3]~33_combout\ = (\inst17|cnt1\(3) & (!\inst17|cnt1[2]~32\)) # (!\inst17|cnt1\(3) & ((\inst17|cnt1[2]~32\) # (GND)))
-- \inst17|cnt1[3]~34\ = CARRY((!\inst17|cnt1[2]~32\) # (!\inst17|cnt1\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|cnt1\(3),
	datad => VCC,
	cin => \inst17|cnt1[2]~32\,
	combout => \inst17|cnt1[3]~33_combout\,
	cout => \inst17|cnt1[3]~34\);

-- Location: LCCOMB_X9_Y12_N14
\inst17|cnt1[4]~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|cnt1[4]~35_combout\ = (\inst17|cnt1\(4) & (\inst17|cnt1[3]~34\ $ (GND))) # (!\inst17|cnt1\(4) & (!\inst17|cnt1[3]~34\ & VCC))
-- \inst17|cnt1[4]~36\ = CARRY((\inst17|cnt1\(4) & !\inst17|cnt1[3]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst17|cnt1\(4),
	datad => VCC,
	cin => \inst17|cnt1[3]~34\,
	combout => \inst17|cnt1[4]~35_combout\,
	cout => \inst17|cnt1[4]~36\);

-- Location: LCCOMB_X9_Y12_N16
\inst17|cnt1[5]~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|cnt1[5]~37_combout\ = (\inst17|cnt1\(5) & (!\inst17|cnt1[4]~36\)) # (!\inst17|cnt1\(5) & ((\inst17|cnt1[4]~36\) # (GND)))
-- \inst17|cnt1[5]~38\ = CARRY((!\inst17|cnt1[4]~36\) # (!\inst17|cnt1\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|cnt1\(5),
	datad => VCC,
	cin => \inst17|cnt1[4]~36\,
	combout => \inst17|cnt1[5]~37_combout\,
	cout => \inst17|cnt1[5]~38\);

-- Location: LCCOMB_X9_Y12_N18
\inst17|cnt1[6]~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|cnt1[6]~39_combout\ = (\inst17|cnt1\(6) & (\inst17|cnt1[5]~38\ $ (GND))) # (!\inst17|cnt1\(6) & (!\inst17|cnt1[5]~38\ & VCC))
-- \inst17|cnt1[6]~40\ = CARRY((\inst17|cnt1\(6) & !\inst17|cnt1[5]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst17|cnt1\(6),
	datad => VCC,
	cin => \inst17|cnt1[5]~38\,
	combout => \inst17|cnt1[6]~39_combout\,
	cout => \inst17|cnt1[6]~40\);

-- Location: LCCOMB_X9_Y12_N20
\inst17|cnt1[7]~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|cnt1[7]~41_combout\ = (\inst17|cnt1\(7) & (!\inst17|cnt1[6]~40\)) # (!\inst17|cnt1\(7) & ((\inst17|cnt1[6]~40\) # (GND)))
-- \inst17|cnt1[7]~42\ = CARRY((!\inst17|cnt1[6]~40\) # (!\inst17|cnt1\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|cnt1\(7),
	datad => VCC,
	cin => \inst17|cnt1[6]~40\,
	combout => \inst17|cnt1[7]~41_combout\,
	cout => \inst17|cnt1[7]~42\);

-- Location: LCCOMB_X9_Y12_N22
\inst17|cnt1[8]~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|cnt1[8]~43_combout\ = (\inst17|cnt1\(8) & (\inst17|cnt1[7]~42\ $ (GND))) # (!\inst17|cnt1\(8) & (!\inst17|cnt1[7]~42\ & VCC))
-- \inst17|cnt1[8]~44\ = CARRY((\inst17|cnt1\(8) & !\inst17|cnt1[7]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst17|cnt1\(8),
	datad => VCC,
	cin => \inst17|cnt1[7]~42\,
	combout => \inst17|cnt1[8]~43_combout\,
	cout => \inst17|cnt1[8]~44\);

-- Location: LCCOMB_X9_Y12_N24
\inst17|cnt1[9]~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|cnt1[9]~45_combout\ = (\inst17|cnt1\(9) & (!\inst17|cnt1[8]~44\)) # (!\inst17|cnt1\(9) & ((\inst17|cnt1[8]~44\) # (GND)))
-- \inst17|cnt1[9]~46\ = CARRY((!\inst17|cnt1[8]~44\) # (!\inst17|cnt1\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|cnt1\(9),
	datad => VCC,
	cin => \inst17|cnt1[8]~44\,
	combout => \inst17|cnt1[9]~45_combout\,
	cout => \inst17|cnt1[9]~46\);

-- Location: LCCOMB_X9_Y12_N26
\inst17|cnt1[10]~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|cnt1[10]~47_combout\ = (\inst17|cnt1\(10) & (\inst17|cnt1[9]~46\ $ (GND))) # (!\inst17|cnt1\(10) & (!\inst17|cnt1[9]~46\ & VCC))
-- \inst17|cnt1[10]~48\ = CARRY((\inst17|cnt1\(10) & !\inst17|cnt1[9]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst17|cnt1\(10),
	datad => VCC,
	cin => \inst17|cnt1[9]~46\,
	combout => \inst17|cnt1[10]~47_combout\,
	cout => \inst17|cnt1[10]~48\);

-- Location: LCCOMB_X9_Y12_N28
\inst17|cnt1[11]~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|cnt1[11]~49_combout\ = (\inst17|cnt1\(11) & (!\inst17|cnt1[10]~48\)) # (!\inst17|cnt1\(11) & ((\inst17|cnt1[10]~48\) # (GND)))
-- \inst17|cnt1[11]~50\ = CARRY((!\inst17|cnt1[10]~48\) # (!\inst17|cnt1\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst17|cnt1\(11),
	datad => VCC,
	cin => \inst17|cnt1[10]~48\,
	combout => \inst17|cnt1[11]~49_combout\,
	cout => \inst17|cnt1[11]~50\);

-- Location: LCCOMB_X9_Y12_N30
\inst17|cnt1[12]~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|cnt1[12]~51_combout\ = (\inst17|cnt1\(12) & (\inst17|cnt1[11]~50\ $ (GND))) # (!\inst17|cnt1\(12) & (!\inst17|cnt1[11]~50\ & VCC))
-- \inst17|cnt1[12]~52\ = CARRY((\inst17|cnt1\(12) & !\inst17|cnt1[11]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst17|cnt1\(12),
	datad => VCC,
	cin => \inst17|cnt1[11]~50\,
	combout => \inst17|cnt1[12]~51_combout\,
	cout => \inst17|cnt1[12]~52\);

-- Location: LCCOMB_X9_Y11_N0
\inst17|cnt1[13]~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|cnt1[13]~53_combout\ = (\inst17|cnt1\(13) & (!\inst17|cnt1[12]~52\)) # (!\inst17|cnt1\(13) & ((\inst17|cnt1[12]~52\) # (GND)))
-- \inst17|cnt1[13]~54\ = CARRY((!\inst17|cnt1[12]~52\) # (!\inst17|cnt1\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst17|cnt1\(13),
	datad => VCC,
	cin => \inst17|cnt1[12]~52\,
	combout => \inst17|cnt1[13]~53_combout\,
	cout => \inst17|cnt1[13]~54\);

-- Location: LCCOMB_X9_Y11_N2
\inst17|cnt1[14]~55\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|cnt1[14]~55_combout\ = (\inst17|cnt1\(14) & (\inst17|cnt1[13]~54\ $ (GND))) # (!\inst17|cnt1\(14) & (!\inst17|cnt1[13]~54\ & VCC))
-- \inst17|cnt1[14]~56\ = CARRY((\inst17|cnt1\(14) & !\inst17|cnt1[13]~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst17|cnt1\(14),
	datad => VCC,
	cin => \inst17|cnt1[13]~54\,
	combout => \inst17|cnt1[14]~55_combout\,
	cout => \inst17|cnt1[14]~56\);

-- Location: LCCOMB_X9_Y11_N4
\inst17|cnt1[15]~57\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|cnt1[15]~57_combout\ = (\inst17|cnt1\(15) & (!\inst17|cnt1[14]~56\)) # (!\inst17|cnt1\(15) & ((\inst17|cnt1[14]~56\) # (GND)))
-- \inst17|cnt1[15]~58\ = CARRY((!\inst17|cnt1[14]~56\) # (!\inst17|cnt1\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst17|cnt1\(15),
	datad => VCC,
	cin => \inst17|cnt1[14]~56\,
	combout => \inst17|cnt1[15]~57_combout\,
	cout => \inst17|cnt1[15]~58\);

-- Location: LCCOMB_X9_Y11_N6
\inst17|cnt1[16]~59\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|cnt1[16]~59_combout\ = (\inst17|cnt1\(16) & (\inst17|cnt1[15]~58\ $ (GND))) # (!\inst17|cnt1\(16) & (!\inst17|cnt1[15]~58\ & VCC))
-- \inst17|cnt1[16]~60\ = CARRY((\inst17|cnt1\(16) & !\inst17|cnt1[15]~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|cnt1\(16),
	datad => VCC,
	cin => \inst17|cnt1[15]~58\,
	combout => \inst17|cnt1[16]~59_combout\,
	cout => \inst17|cnt1[16]~60\);

-- Location: LCCOMB_X9_Y11_N8
\inst17|cnt1[17]~61\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|cnt1[17]~61_combout\ = (\inst17|cnt1\(17) & (!\inst17|cnt1[16]~60\)) # (!\inst17|cnt1\(17) & ((\inst17|cnt1[16]~60\) # (GND)))
-- \inst17|cnt1[17]~62\ = CARRY((!\inst17|cnt1[16]~60\) # (!\inst17|cnt1\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst17|cnt1\(17),
	datad => VCC,
	cin => \inst17|cnt1[16]~60\,
	combout => \inst17|cnt1[17]~61_combout\,
	cout => \inst17|cnt1[17]~62\);

-- Location: LCCOMB_X9_Y11_N10
\inst17|cnt1[18]~63\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|cnt1[18]~63_combout\ = (\inst17|cnt1\(18) & (\inst17|cnt1[17]~62\ $ (GND))) # (!\inst17|cnt1\(18) & (!\inst17|cnt1[17]~62\ & VCC))
-- \inst17|cnt1[18]~64\ = CARRY((\inst17|cnt1\(18) & !\inst17|cnt1[17]~62\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|cnt1\(18),
	datad => VCC,
	cin => \inst17|cnt1[17]~62\,
	combout => \inst17|cnt1[18]~63_combout\,
	cout => \inst17|cnt1[18]~64\);

-- Location: LCCOMB_X9_Y11_N12
\inst17|cnt1[19]~65\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|cnt1[19]~65_combout\ = (\inst17|cnt1\(19) & (!\inst17|cnt1[18]~64\)) # (!\inst17|cnt1\(19) & ((\inst17|cnt1[18]~64\) # (GND)))
-- \inst17|cnt1[19]~66\ = CARRY((!\inst17|cnt1[18]~64\) # (!\inst17|cnt1\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|cnt1\(19),
	datad => VCC,
	cin => \inst17|cnt1[18]~64\,
	combout => \inst17|cnt1[19]~65_combout\,
	cout => \inst17|cnt1[19]~66\);

-- Location: LCCOMB_X9_Y11_N14
\inst17|cnt1[20]~67\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|cnt1[20]~67_combout\ = (\inst17|cnt1\(20) & (\inst17|cnt1[19]~66\ $ (GND))) # (!\inst17|cnt1\(20) & (!\inst17|cnt1[19]~66\ & VCC))
-- \inst17|cnt1[20]~68\ = CARRY((\inst17|cnt1\(20) & !\inst17|cnt1[19]~66\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst17|cnt1\(20),
	datad => VCC,
	cin => \inst17|cnt1[19]~66\,
	combout => \inst17|cnt1[20]~67_combout\,
	cout => \inst17|cnt1[20]~68\);

-- Location: LCCOMB_X9_Y11_N16
\inst17|cnt1[21]~69\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|cnt1[21]~69_combout\ = (\inst17|cnt1\(21) & (!\inst17|cnt1[20]~68\)) # (!\inst17|cnt1\(21) & ((\inst17|cnt1[20]~68\) # (GND)))
-- \inst17|cnt1[21]~70\ = CARRY((!\inst17|cnt1[20]~68\) # (!\inst17|cnt1\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|cnt1\(21),
	datad => VCC,
	cin => \inst17|cnt1[20]~68\,
	combout => \inst17|cnt1[21]~69_combout\,
	cout => \inst17|cnt1[21]~70\);

-- Location: LCCOMB_X9_Y11_N18
\inst17|cnt1[22]~71\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|cnt1[22]~71_combout\ = (\inst17|cnt1\(22) & (\inst17|cnt1[21]~70\ $ (GND))) # (!\inst17|cnt1\(22) & (!\inst17|cnt1[21]~70\ & VCC))
-- \inst17|cnt1[22]~72\ = CARRY((\inst17|cnt1\(22) & !\inst17|cnt1[21]~70\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst17|cnt1\(22),
	datad => VCC,
	cin => \inst17|cnt1[21]~70\,
	combout => \inst17|cnt1[22]~71_combout\,
	cout => \inst17|cnt1[22]~72\);

-- Location: LCCOMB_X9_Y11_N20
\inst17|cnt1[23]~73\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|cnt1[23]~73_combout\ = (\inst17|cnt1\(23) & (!\inst17|cnt1[22]~72\)) # (!\inst17|cnt1\(23) & ((\inst17|cnt1[22]~72\) # (GND)))
-- \inst17|cnt1[23]~74\ = CARRY((!\inst17|cnt1[22]~72\) # (!\inst17|cnt1\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|cnt1\(23),
	datad => VCC,
	cin => \inst17|cnt1[22]~72\,
	combout => \inst17|cnt1[23]~73_combout\,
	cout => \inst17|cnt1[23]~74\);

-- Location: LCCOMB_X9_Y11_N22
\inst17|cnt1[24]~75\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|cnt1[24]~75_combout\ = (\inst17|cnt1\(24) & (\inst17|cnt1[23]~74\ $ (GND))) # (!\inst17|cnt1\(24) & (!\inst17|cnt1[23]~74\ & VCC))
-- \inst17|cnt1[24]~76\ = CARRY((\inst17|cnt1\(24) & !\inst17|cnt1[23]~74\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst17|cnt1\(24),
	datad => VCC,
	cin => \inst17|cnt1[23]~74\,
	combout => \inst17|cnt1[24]~75_combout\,
	cout => \inst17|cnt1[24]~76\);

-- Location: LCCOMB_X9_Y11_N24
\inst17|cnt1[25]~77\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|cnt1[25]~77_combout\ = (\inst17|cnt1\(25) & (!\inst17|cnt1[24]~76\)) # (!\inst17|cnt1\(25) & ((\inst17|cnt1[24]~76\) # (GND)))
-- \inst17|cnt1[25]~78\ = CARRY((!\inst17|cnt1[24]~76\) # (!\inst17|cnt1\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|cnt1\(25),
	datad => VCC,
	cin => \inst17|cnt1[24]~76\,
	combout => \inst17|cnt1[25]~77_combout\,
	cout => \inst17|cnt1[25]~78\);

-- Location: LCCOMB_X9_Y11_N26
\inst17|cnt1[26]~79\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|cnt1[26]~79_combout\ = \inst17|cnt1[25]~78\ $ (!\inst17|cnt1\(26))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst17|cnt1\(26),
	cin => \inst17|cnt1[25]~78\,
	combout => \inst17|cnt1[26]~79_combout\);

-- Location: LCCOMB_X20_Y11_N6
\inst12|cnt[0]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst12|cnt[0]~8_combout\ = \inst12|cnt\(0) $ (VCC)
-- \inst12|cnt[0]~9\ = CARRY(\inst12|cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|cnt\(0),
	datad => VCC,
	combout => \inst12|cnt[0]~8_combout\,
	cout => \inst12|cnt[0]~9\);

-- Location: LCFF_X13_Y11_N17
\inst11|data[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst17|out_9600~clkctrl_outclk\,
	datain => \inst11|Mux2~3_combout\,
	ena => \inst11|data[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst11|data\(5));

-- Location: LCFF_X18_Y6_N17
\inst13|speed[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst13|speed~114_combout\,
	ena => \inst13|speed~79_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst13|speed\(2));

-- Location: LCFF_X18_Y5_N31
\inst6|counter[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst6|counter~10_combout\,
	ena => \inst13|beepEnable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|counter\(7));

-- Location: LCCOMB_X20_Y5_N20
\inst6|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|Equal0~1_combout\ = (!\inst6|counter\(6) & (!\inst6|counter\(5) & (!\inst6|counter\(4) & !\inst6|counter\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|counter\(6),
	datab => \inst6|counter\(5),
	datac => \inst6|counter\(4),
	datad => \inst6|counter\(7),
	combout => \inst6|Equal0~1_combout\);

-- Location: LCFF_X18_Y5_N11
\inst6|counter[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst6|counter~18_combout\,
	ena => \inst13|beepEnable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|counter\(11));

-- Location: LCCOMB_X19_Y10_N16
\inst18|Div0|auto_generated|divider|divider|StageOut[28]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst18|Div0|auto_generated|divider|divider|StageOut[28]~27_combout\ = (!\inst18|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & \inst18|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst18|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \inst18|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	combout => \inst18|Div0|auto_generated|divider|divider|StageOut[28]~27_combout\);

-- Location: LCCOMB_X19_Y10_N18
\inst18|Div0|auto_generated|divider|divider|StageOut[27]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst18|Div0|auto_generated|divider|divider|StageOut[27]~29_combout\ = (!\inst18|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & \inst18|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst18|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \inst18|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	combout => \inst18|Div0|auto_generated|divider|divider|StageOut[27]~29_combout\);

-- Location: LCCOMB_X19_Y10_N12
\inst18|Div0|auto_generated|divider|divider|StageOut[26]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst18|Div0|auto_generated|divider|divider|StageOut[26]~30_combout\ = (\inst18|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & !\inst13|degree\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst18|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \inst13|degree\(4),
	combout => \inst18|Div0|auto_generated|divider|divider|StageOut[26]~30_combout\);

-- Location: LCCOMB_X19_Y10_N10
\inst18|Div0|auto_generated|divider|divider|StageOut[25]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst18|Div0|auto_generated|divider|divider|StageOut[25]~32_combout\ = (\inst18|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & !\inst13|degree\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst18|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \inst13|degree\(3),
	combout => \inst18|Div0|auto_generated|divider|divider|StageOut[25]~32_combout\);

-- Location: LCCOMB_X20_Y10_N0
\inst18|Div0|auto_generated|divider|divider|StageOut[32]~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst18|Div0|auto_generated|divider|divider|StageOut[32]~35_combout\ = (\inst18|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ & !\inst18|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst18|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	datad => \inst18|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \inst18|Div0|auto_generated|divider|divider|StageOut[32]~35_combout\);

-- Location: LCCOMB_X20_Y10_N6
\inst18|Div0|auto_generated|divider|divider|StageOut[31]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst18|Div0|auto_generated|divider|divider|StageOut[31]~36_combout\ = (!\inst13|degree\(3) & \inst18|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|degree\(3),
	datad => \inst18|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \inst18|Div0|auto_generated|divider|divider|StageOut[31]~36_combout\);

-- Location: LCCOMB_X20_Y10_N24
\inst18|Div0|auto_generated|divider|divider|StageOut[30]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst18|Div0|auto_generated|divider|divider|StageOut[30]~38_combout\ = (!\inst13|degree\(2) & \inst18|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|degree\(2),
	datad => \inst18|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \inst18|Div0|auto_generated|divider|divider|StageOut[30]~38_combout\);

-- Location: LCCOMB_X21_Y10_N14
\inst18|Div0|auto_generated|divider|divider|StageOut[37]~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst18|Div0|auto_generated|divider|divider|StageOut[37]~41_combout\ = (\inst18|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ & !\inst18|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	datad => \inst18|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \inst18|Div0|auto_generated|divider|divider|StageOut[37]~41_combout\);

-- Location: LCCOMB_X21_Y10_N8
\inst18|Div0|auto_generated|divider|divider|StageOut[36]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst18|Div0|auto_generated|divider|divider|StageOut[36]~42_combout\ = (!\inst13|degree\(2) & \inst18|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|degree\(2),
	datad => \inst18|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \inst18|Div0|auto_generated|divider|divider|StageOut[36]~42_combout\);

-- Location: LCCOMB_X21_Y10_N30
\inst18|Div0|auto_generated|divider|divider|StageOut[35]~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst18|Div0|auto_generated|divider|divider|StageOut[35]~45_combout\ = (\inst13|degree\(1) & !\inst18|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|degree\(1),
	datad => \inst18|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \inst18|Div0|auto_generated|divider|divider|StageOut[35]~45_combout\);

-- Location: LCCOMB_X19_Y8_N24
\inst|Div2|auto_generated|divider|divider|StageOut[18]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Div2|auto_generated|divider|divider|StageOut[18]~36_combout\ = (\inst13|display\(7) & \inst|Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|display\(7),
	datad => \inst|Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst|Div2|auto_generated|divider|divider|StageOut[18]~36_combout\);

-- Location: LCCOMB_X18_Y8_N20
\inst|Div2|auto_generated|divider|divider|StageOut[17]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Div2|auto_generated|divider|divider|StageOut[17]~38_combout\ = (\inst13|display\(6) & \inst|Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|display\(6),
	datad => \inst|Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst|Div2|auto_generated|divider|divider|StageOut[17]~38_combout\);

-- Location: LCCOMB_X20_Y8_N4
\inst|Div2|auto_generated|divider|divider|StageOut[16]~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Div2|auto_generated|divider|divider|StageOut[16]~41_combout\ = (\inst|Div2|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ & !\inst|Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Div2|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datad => \inst|Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst|Div2|auto_generated|divider|divider|StageOut[16]~41_combout\);

-- Location: LCCOMB_X19_Y8_N12
\inst|Div2|auto_generated|divider|divider|StageOut[15]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Div2|auto_generated|divider|divider|StageOut[15]~42_combout\ = (\inst13|display\(4) & \inst|Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|display\(4),
	datad => \inst|Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst|Div2|auto_generated|divider|divider|StageOut[15]~42_combout\);

-- Location: LCCOMB_X20_Y8_N16
\inst|Div2|auto_generated|divider|divider|StageOut[22]~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Div2|auto_generated|divider|divider|StageOut[22]~45_combout\ = (\inst|Div2|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ & !\inst|Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Div2|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datad => \inst|Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst|Div2|auto_generated|divider|divider|StageOut[22]~45_combout\);

-- Location: LCCOMB_X20_Y8_N10
\inst|Div2|auto_generated|divider|divider|StageOut[21]~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Div2|auto_generated|divider|divider|StageOut[21]~46_combout\ = (\inst13|display\(4) & \inst|Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|display\(4),
	datad => \inst|Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst|Div2|auto_generated|divider|divider|StageOut[21]~46_combout\);

-- Location: LCCOMB_X20_Y8_N6
\inst|Div2|auto_generated|divider|divider|StageOut[20]~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Div2|auto_generated|divider|divider|StageOut[20]~48_combout\ = (\inst13|display\(3) & \inst|Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|display\(3),
	datad => \inst|Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst|Div2|auto_generated|divider|divider|StageOut[20]~48_combout\);

-- Location: LCCOMB_X20_Y8_N30
\inst|Div2|auto_generated|divider|divider|StageOut[27]~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Div2|auto_generated|divider|divider|StageOut[27]~51_combout\ = (\inst|Div2|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ & !\inst|Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Div2|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datad => \inst|Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \inst|Div2|auto_generated|divider|divider|StageOut[27]~51_combout\);

-- Location: LCCOMB_X21_Y8_N6
\inst|Div2|auto_generated|divider|divider|StageOut[26]~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Div2|auto_generated|divider|divider|StageOut[26]~52_combout\ = (\inst13|display\(3) & \inst|Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|display\(3),
	datad => \inst|Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \inst|Div2|auto_generated|divider|divider|StageOut[26]~52_combout\);

-- Location: LCCOMB_X21_Y8_N24
\inst|Div2|auto_generated|divider|divider|StageOut[25]~55\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Div2|auto_generated|divider|divider|StageOut[25]~55_combout\ = (\inst13|display\(2) & !\inst|Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|display\(2),
	datad => \inst|Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \inst|Div2|auto_generated|divider|divider|StageOut[25]~55_combout\);

-- Location: LCCOMB_X21_Y8_N4
\inst|Div2|auto_generated|divider|divider|StageOut[33]~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Div2|auto_generated|divider|divider|StageOut[33]~56_combout\ = (\inst|Div2|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ & !\inst|Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Div2|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	datad => \inst|Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \inst|Div2|auto_generated|divider|divider|StageOut[33]~56_combout\);

-- Location: LCCOMB_X21_Y8_N22
\inst|Div2|auto_generated|divider|divider|StageOut[32]~57\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Div2|auto_generated|divider|divider|StageOut[32]~57_combout\ = (!\inst|Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & \inst|Div2|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \inst|Div2|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	combout => \inst|Div2|auto_generated|divider|divider|StageOut[32]~57_combout\);

-- Location: LCCOMB_X21_Y6_N26
\inst|Div2|auto_generated|divider|divider|StageOut[31]~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Div2|auto_generated|divider|divider|StageOut[31]~58_combout\ = (\inst13|display\(2) & \inst|Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|display\(2),
	datad => \inst|Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \inst|Div2|auto_generated|divider|divider|StageOut[31]~58_combout\);

-- Location: LCCOMB_X21_Y8_N28
\inst|Div2|auto_generated|divider|divider|StageOut[31]~59\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Div2|auto_generated|divider|divider|StageOut[31]~59_combout\ = (\inst|Div2|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ & !\inst|Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div2|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	datad => \inst|Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \inst|Div2|auto_generated|divider|divider|StageOut[31]~59_combout\);

-- Location: LCCOMB_X21_Y6_N30
\inst|Div2|auto_generated|divider|divider|StageOut[30]~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Div2|auto_generated|divider|divider|StageOut[30]~60_combout\ = (\inst13|display\(1) & \inst|Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|display\(1),
	datad => \inst|Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \inst|Div2|auto_generated|divider|divider|StageOut[30]~60_combout\);

-- Location: LCCOMB_X21_Y8_N2
\inst|Div2|auto_generated|divider|divider|StageOut[30]~61\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Div2|auto_generated|divider|divider|StageOut[30]~61_combout\ = (\inst13|display\(1) & !\inst|Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|display\(1),
	datad => \inst|Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \inst|Div2|auto_generated|divider|divider|StageOut[30]~61_combout\);

-- Location: LCCOMB_X22_Y6_N28
\inst|Div1|auto_generated|divider|divider|StageOut[54]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Div1|auto_generated|divider|divider|StageOut[54]~0_combout\ = (\inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & \inst13|display\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \inst13|display\(7),
	combout => \inst|Div1|auto_generated|divider|divider|StageOut[54]~0_combout\);

-- Location: LCCOMB_X22_Y7_N28
\inst|Div1|auto_generated|divider|divider|StageOut[54]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Div1|auto_generated|divider|divider|StageOut[54]~1_combout\ = (\inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\ & !\inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\,
	datac => \inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \inst|Div1|auto_generated|divider|divider|StageOut[54]~1_combout\);

-- Location: LCCOMB_X22_Y6_N10
\inst|Div1|auto_generated|divider|divider|StageOut[53]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Div1|auto_generated|divider|divider|StageOut[53]~2_combout\ = (\inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & \inst13|display\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \inst13|display\(6),
	combout => \inst|Div1|auto_generated|divider|divider|StageOut[53]~2_combout\);

-- Location: LCCOMB_X22_Y7_N26
\inst|Div1|auto_generated|divider|divider|StageOut[53]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Div1|auto_generated|divider|divider|StageOut[53]~3_combout\ = (!\inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & \inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\,
	combout => \inst|Div1|auto_generated|divider|divider|StageOut[53]~3_combout\);

-- Location: LCCOMB_X22_Y6_N4
\inst|Div1|auto_generated|divider|divider|StageOut[52]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Div1|auto_generated|divider|divider|StageOut[52]~4_combout\ = (\inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & \inst13|display\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \inst13|display\(5),
	combout => \inst|Div1|auto_generated|divider|divider|StageOut[52]~4_combout\);

-- Location: LCCOMB_X22_Y7_N4
\inst|Div1|auto_generated|divider|divider|StageOut[52]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Div1|auto_generated|divider|divider|StageOut[52]~5_combout\ = (!\inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & \inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\,
	combout => \inst|Div1|auto_generated|divider|divider|StageOut[52]~5_combout\);

-- Location: LCCOMB_X22_Y6_N30
\inst|Div1|auto_generated|divider|divider|StageOut[51]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Div1|auto_generated|divider|divider|StageOut[51]~6_combout\ = (\inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & \inst13|display\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \inst13|display\(4),
	combout => \inst|Div1|auto_generated|divider|divider|StageOut[51]~6_combout\);

-- Location: LCCOMB_X22_Y7_N22
\inst|Div1|auto_generated|divider|divider|StageOut[51]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Div1|auto_generated|divider|divider|StageOut[51]~7_combout\ = (\inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\ & !\inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\,
	datac => \inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \inst|Div1|auto_generated|divider|divider|StageOut[51]~7_combout\);

-- Location: LCCOMB_X22_Y6_N8
\inst|Div1|auto_generated|divider|divider|StageOut[50]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Div1|auto_generated|divider|divider|StageOut[50]~8_combout\ = (\inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & \inst13|display\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \inst13|display\(3),
	combout => \inst|Div1|auto_generated|divider|divider|StageOut[50]~8_combout\);

-- Location: LCCOMB_X22_Y7_N24
\inst|Div1|auto_generated|divider|divider|StageOut[50]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Div1|auto_generated|divider|divider|StageOut[50]~9_combout\ = (!\inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & \inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\,
	combout => \inst|Div1|auto_generated|divider|divider|StageOut[50]~9_combout\);

-- Location: LCCOMB_X22_Y6_N2
\inst|Div1|auto_generated|divider|divider|StageOut[49]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Div1|auto_generated|divider|divider|StageOut[49]~10_combout\ = (\inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & \inst13|display\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \inst13|display\(2),
	combout => \inst|Div1|auto_generated|divider|divider|StageOut[49]~10_combout\);

-- Location: LCCOMB_X22_Y6_N12
\inst|Div1|auto_generated|divider|divider|StageOut[49]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Div1|auto_generated|divider|divider|StageOut[49]~11_combout\ = (!\inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & \inst13|display\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \inst13|display\(2),
	combout => \inst|Div1|auto_generated|divider|divider|StageOut[49]~11_combout\);

-- Location: LCCOMB_X18_Y9_N16
\inst|Mod2|auto_generated|divider|divider|StageOut[18]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mod2|auto_generated|divider|divider|StageOut[18]~36_combout\ = (\inst|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \inst13|display\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \inst13|display\(7),
	combout => \inst|Mod2|auto_generated|divider|divider|StageOut[18]~36_combout\);

-- Location: LCCOMB_X18_Y9_N12
\inst|Mod2|auto_generated|divider|divider|StageOut[17]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mod2|auto_generated|divider|divider|StageOut[17]~38_combout\ = (\inst13|display\(6) & \inst|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|display\(6),
	datad => \inst|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst|Mod2|auto_generated|divider|divider|StageOut[17]~38_combout\);

-- Location: LCCOMB_X17_Y9_N30
\inst|Mod2|auto_generated|divider|divider|StageOut[16]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mod2|auto_generated|divider|divider|StageOut[16]~40_combout\ = (\inst|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \inst13|display\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \inst13|display\(5),
	combout => \inst|Mod2|auto_generated|divider|divider|StageOut[16]~40_combout\);

-- Location: LCCOMB_X18_Y9_N10
\inst|Mod2|auto_generated|divider|divider|StageOut[15]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mod2|auto_generated|divider|divider|StageOut[15]~42_combout\ = (\inst|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \inst13|display\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \inst13|display\(4),
	combout => \inst|Mod2|auto_generated|divider|divider|StageOut[15]~42_combout\);

-- Location: LCCOMB_X19_Y9_N12
\inst|Mod2|auto_generated|divider|divider|StageOut[23]~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mod2|auto_generated|divider|divider|StageOut[23]~44_combout\ = (\inst|Mod2|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ & !\inst|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Mod2|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	datad => \inst|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst|Mod2|auto_generated|divider|divider|StageOut[23]~44_combout\);

-- Location: LCCOMB_X19_Y9_N24
\inst|Mod2|auto_generated|divider|divider|StageOut[22]~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mod2|auto_generated|divider|divider|StageOut[22]~45_combout\ = (\inst|Mod2|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ & !\inst|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Mod2|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datad => \inst|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst|Mod2|auto_generated|divider|divider|StageOut[22]~45_combout\);

-- Location: LCCOMB_X19_Y9_N20
\inst|Mod2|auto_generated|divider|divider|StageOut[21]~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mod2|auto_generated|divider|divider|StageOut[21]~47_combout\ = (\inst|Mod2|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ & !\inst|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Mod2|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datad => \inst|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst|Mod2|auto_generated|divider|divider|StageOut[21]~47_combout\);

-- Location: LCCOMB_X19_Y9_N16
\inst|Mod2|auto_generated|divider|divider|StageOut[20]~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mod2|auto_generated|divider|divider|StageOut[20]~49_combout\ = (\inst13|display\(3) & !\inst|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|display\(3),
	datad => \inst|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst|Mod2|auto_generated|divider|divider|StageOut[20]~49_combout\);

-- Location: LCCOMB_X19_Y9_N26
\inst|Mod2|auto_generated|divider|divider|StageOut[28]~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mod2|auto_generated|divider|divider|StageOut[28]~50_combout\ = (\inst|Mod2|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ & !\inst|Mod2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod2|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	datad => \inst|Mod2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \inst|Mod2|auto_generated|divider|divider|StageOut[28]~50_combout\);

-- Location: LCCOMB_X19_Y9_N14
\inst|Mod2|auto_generated|divider|divider|StageOut[26]~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mod2|auto_generated|divider|divider|StageOut[26]~52_combout\ = (\inst13|display\(3) & \inst|Mod2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|display\(3),
	datad => \inst|Mod2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \inst|Mod2|auto_generated|divider|divider|StageOut[26]~52_combout\);

-- Location: LCCOMB_X19_Y6_N16
\inst|Mod2|auto_generated|divider|divider|StageOut[25]~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mod2|auto_generated|divider|divider|StageOut[25]~54_combout\ = (\inst13|display\(2) & \inst|Mod2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|display\(2),
	datad => \inst|Mod2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \inst|Mod2|auto_generated|divider|divider|StageOut[25]~54_combout\);

-- Location: LCCOMB_X19_Y6_N0
\inst|Mod2|auto_generated|divider|divider|StageOut[30]~57\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mod2|auto_generated|divider|divider|StageOut[30]~57_combout\ = (!\inst|Mod2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & \inst13|display\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Mod2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \inst13|display\(1),
	combout => \inst|Mod2|auto_generated|divider|divider|StageOut[30]~57_combout\);

-- Location: LCCOMB_X19_Y6_N2
\inst|Mod2|auto_generated|divider|divider|StageOut[33]~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mod2|auto_generated|divider|divider|StageOut[33]~58_combout\ = (!\inst|Mod2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & \inst|Mod2|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Mod2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \inst|Mod2|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	combout => \inst|Mod2|auto_generated|divider|divider|StageOut[33]~58_combout\);

-- Location: LCCOMB_X19_Y6_N20
\inst|Mod2|auto_generated|divider|divider|StageOut[32]~59\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mod2|auto_generated|divider|divider|StageOut[32]~59_combout\ = (\inst|Mod2|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ & !\inst|Mod2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Mod2|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	datad => \inst|Mod2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \inst|Mod2|auto_generated|divider|divider|StageOut[32]~59_combout\);

-- Location: LCCOMB_X19_Y6_N30
\inst|Mod2|auto_generated|divider|divider|StageOut[31]~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mod2|auto_generated|divider|divider|StageOut[31]~60_combout\ = (\inst13|display\(2) & \inst|Mod2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|display\(2),
	datac => \inst|Mod2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \inst|Mod2|auto_generated|divider|divider|StageOut[31]~60_combout\);

-- Location: LCCOMB_X21_Y7_N24
\inst|Mod1|auto_generated|divider|divider|StageOut[33]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mod1|auto_generated|divider|divider|StageOut[33]~0_combout\ = (!\inst|Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \inst|Mod1|auto_generated|divider|divider|StageOut[33]~0_combout\);

-- Location: LCCOMB_X20_Y7_N30
\inst|Mod1|auto_generated|divider|divider|StageOut[32]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mod1|auto_generated|divider|divider|StageOut[32]~3_combout\ = (\inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ & !\inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	datad => \inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \inst|Mod1|auto_generated|divider|divider|StageOut[32]~3_combout\);

-- Location: LCCOMB_X20_Y7_N2
\inst|Mod1|auto_generated|divider|divider|StageOut[31]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mod1|auto_generated|divider|divider|StageOut[31]~5_combout\ = (\inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ & !\inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	datad => \inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \inst|Mod1|auto_generated|divider|divider|StageOut[31]~5_combout\);

-- Location: LCCOMB_X21_Y7_N16
\inst|Mod1|auto_generated|divider|divider|StageOut[30]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mod1|auto_generated|divider|divider|StageOut[30]~6_combout\ = (!\inst|Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & \inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \inst|Mod1|auto_generated|divider|divider|StageOut[30]~6_combout\);

-- Location: LCCOMB_X21_Y7_N20
\inst|Mux2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mux2~1_combout\ = (\inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & ((\inst|Mod1|auto_generated|divider|divider|StageOut[30]~7_combout\) # ((\inst|Mod1|auto_generated|divider|divider|StageOut[30]~6_combout\)))) # 
-- (!\inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & (((\inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod1|auto_generated|divider|divider|StageOut[30]~7_combout\,
	datab => \inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	datac => \inst|Mod1|auto_generated|divider|divider|StageOut[30]~6_combout\,
	datad => \inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \inst|Mux2~1_combout\);

-- Location: LCCOMB_X20_Y9_N10
\inst|Mux0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mux0~2_combout\ = (\inst|Mod2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\inst|Mod2|auto_generated|divider|divider|StageOut[26]~52_combout\) # ((\inst|Mod2|auto_generated|divider|divider|StageOut[26]~53_combout\)))) # 
-- (!\inst|Mod2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & (((\inst|Mod2|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod2|auto_generated|divider|divider|StageOut[26]~52_combout\,
	datab => \inst|Mod2|auto_generated|divider|divider|StageOut[26]~53_combout\,
	datac => \inst|Mod2|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	datad => \inst|Mod2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \inst|Mux0~2_combout\);

-- Location: LCCOMB_X20_Y6_N2
\inst|Mux0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mux0~3_combout\ = (!\inst|col\(0) & ((\inst|Mod2|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & ((\inst|Mux0~2_combout\))) # (!\inst|Mod2|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & 
-- (\inst|Mod2|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod2|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\,
	datab => \inst|Mux0~2_combout\,
	datac => \inst|Mod2|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datad => \inst|col\(0),
	combout => \inst|Mux0~3_combout\);

-- Location: LCCOMB_X20_Y7_N16
\inst|Mux0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mux0~4_combout\ = (\inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & (!\inst|Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)) # 
-- (!\inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datab => \inst|Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	combout => \inst|Mux0~4_combout\);

-- Location: LCCOMB_X21_Y7_N12
\inst|Mux0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mux0~5_combout\ = (\inst|col\(0) & ((\inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & ((\inst|Mux0~4_combout\))) # (!\inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & 
-- (\inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\,
	datab => \inst|Mux0~4_combout\,
	datac => \inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datad => \inst|col\(0),
	combout => \inst|Mux0~5_combout\);

-- Location: LCFF_X15_Y8_N21
\inst13|lastsign3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst13|lastsign3~0_combout\,
	ena => \inst13|display[4]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst13|lastsign3~regout\);

-- Location: LCCOMB_X14_Y4_N24
\inst13|led~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|led~12_combout\ = (\inst13|led\(7)) # ((\inst13|led~10_combout\ & \inst13|led~25_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|led~10_combout\,
	datab => \inst13|led\(7),
	datad => \inst13|led~25_combout\,
	combout => \inst13|led~12_combout\);

-- Location: LCCOMB_X12_Y8_N24
\inst13|led~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|led~16_combout\ = (\inst13|led[1]~15_combout\ & (((\inst13|degree~18_combout\) # (\inst13|led[1]~26_combout\)))) # (!\inst13|led[1]~15_combout\ & (\Touch~combout\(1) & ((!\inst13|led[1]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Touch~combout\(1),
	datab => \inst13|degree~18_combout\,
	datac => \inst13|led[1]~15_combout\,
	datad => \inst13|led[1]~26_combout\,
	combout => \inst13|led~16_combout\);

-- Location: LCCOMB_X12_Y8_N26
\inst13|led~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|led~21_combout\ = (\inst13|backStatus.00~regout\ & !\inst13|backStatus.10~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|backStatus.00~regout\,
	datad => \inst13|backStatus.10~regout\,
	combout => \inst13|led~21_combout\);

-- Location: LCCOMB_X12_Y8_N20
\inst13|led~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|led~22_combout\ = (\inst13|led[1]~15_combout\ & (((\inst13|led[1]~26_combout\)))) # (!\inst13|led[1]~15_combout\ & ((\inst13|led[1]~26_combout\ & ((\inst13|led~21_combout\))) # (!\inst13|led[1]~26_combout\ & (\Touch~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Touch~combout\(0),
	datab => \inst13|led~21_combout\,
	datac => \inst13|led[1]~15_combout\,
	datad => \inst13|led[1]~26_combout\,
	combout => \inst13|led~22_combout\);

-- Location: LCCOMB_X13_Y11_N4
\inst11|Mux2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|Mux2~1_combout\ = (\inst13|degree\(5)) # ((\inst13|degree\(4) & !\inst11|LessThan0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|degree\(4),
	datab => \inst13|degree\(5),
	datad => \inst11|LessThan0~0_combout\,
	combout => \inst11|Mux2~1_combout\);

-- Location: LCCOMB_X13_Y11_N10
\inst11|Mux2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|Mux2~2_combout\ = (\inst11|byteCount\(0) & (((\inst5|dis\(5))))) # (!\inst11|byteCount\(0) & (\inst13|degree\(6) & ((!\inst11|Mux2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|degree\(6),
	datab => \inst5|dis\(5),
	datac => \inst11|Mux2~1_combout\,
	datad => \inst11|byteCount\(0),
	combout => \inst11|Mux2~2_combout\);

-- Location: LCCOMB_X13_Y11_N16
\inst11|Mux2~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|Mux2~3_combout\ = (\inst11|Mux2~0_combout\ & ((\inst13|speed\(5)) # ((\inst11|Mux1~1_combout\ & \inst11|Mux2~2_combout\)))) # (!\inst11|Mux2~0_combout\ & (((\inst11|Mux1~1_combout\ & \inst11|Mux2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Mux2~0_combout\,
	datab => \inst13|speed\(5),
	datac => \inst11|Mux1~1_combout\,
	datad => \inst11|Mux2~2_combout\,
	combout => \inst11|Mux2~3_combout\);

-- Location: LCFF_X14_Y11_N13
\inst5|dis[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_ultra_2~combout\,
	sdata => \inst5|cnt\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst5|dis\(2));

-- Location: LCCOMB_X12_Y11_N16
\inst11|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|Mux6~0_combout\ = (\inst11|byteCount\(2) & (\inst11|byteCount\(1))) # (!\inst11|byteCount\(2) & (!\inst11|byteCount\(1) & \inst11|byteCount\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|byteCount\(2),
	datab => \inst11|byteCount\(1),
	datad => \inst11|byteCount\(0),
	combout => \inst11|Mux6~0_combout\);

-- Location: LCCOMB_X26_Y7_N28
\inst17|LessThan1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|LessThan1~6_combout\ = (!\inst17|cnt9600\(21) & !\inst17|cnt9600\(20))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst17|cnt9600\(21),
	datad => \inst17|cnt9600\(20),
	combout => \inst17|LessThan1~6_combout\);

-- Location: LCCOMB_X14_Y8_N8
\inst13|always1~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|always1~5_combout\ = ((!\inst4|dis\(2) & !\inst4|dis\(3))) # (!\inst4|dis\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|dis\(4),
	datab => \inst4|dis\(2),
	datad => \inst4|dis\(3),
	combout => \inst13|always1~5_combout\);

-- Location: LCCOMB_X17_Y7_N8
\inst13|speed~64\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|speed~64_combout\ = (\inst13|backStatus.00~regout\ & (\inst13|Add7~10_combout\ & (\inst13|speed~63_combout\))) # (!\inst13|backStatus.00~regout\ & ((\inst13|Add6~4_combout\) # ((\inst13|Add7~10_combout\ & \inst13|speed~63_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|backStatus.00~regout\,
	datab => \inst13|Add7~10_combout\,
	datac => \inst13|speed~63_combout\,
	datad => \inst13|Add6~4_combout\,
	combout => \inst13|speed~64_combout\);

-- Location: LCCOMB_X14_Y7_N6
\inst13|speed~66\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|speed~66_combout\ = (\inst13|speed\(5) & (((\inst13|speed~65_combout\ & \inst13|speed~64_combout\)) # (!\inst13|backdone~3_combout\))) # (!\inst13|speed\(5) & (\inst13|speed~65_combout\ & ((\inst13|speed~64_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|speed\(5),
	datab => \inst13|speed~65_combout\,
	datac => \inst13|backdone~3_combout\,
	datad => \inst13|speed~64_combout\,
	combout => \inst13|speed~66_combout\);

-- Location: LCCOMB_X12_Y8_N16
\inst13|always1~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|always1~11_combout\ = (\dinfrared~combout\(2) & \dinfrared~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dinfrared~combout\(2),
	datac => \dinfrared~combout\(1),
	combout => \inst13|always1~11_combout\);

-- Location: LCCOMB_X14_Y7_N28
\inst13|speed~67\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|speed~67_combout\ = (\inst13|Equal7~0_combout\ & (((\inst13|speed~66_combout\)))) # (!\inst13|Equal7~0_combout\ & (\inst13|display[5]~2_combout\ & (!\inst13|always1~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|display[5]~2_combout\,
	datab => \inst13|Equal7~0_combout\,
	datac => \inst13|always1~11_combout\,
	datad => \inst13|speed~66_combout\,
	combout => \inst13|speed~67_combout\);

-- Location: LCCOMB_X15_Y7_N18
\inst13|speed~68\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|speed~68_combout\ = (\inst13|WideOr0~combout\ & (\inst13|speed\(5))) # (!\inst13|WideOr0~combout\ & (((\inst13|Add8~8_combout\ & !\inst13|LessThan6~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|speed\(5),
	datab => \inst13|WideOr0~combout\,
	datac => \inst13|Add8~8_combout\,
	datad => \inst13|LessThan6~1_combout\,
	combout => \inst13|speed~68_combout\);

-- Location: LCCOMB_X15_Y7_N8
\inst13|speed~69\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|speed~69_combout\ = (\inst13|speed[6]~53_combout\ & ((\inst13|speed~68_combout\) # ((\inst13|display[5]~2_combout\ & \inst13|target2[2]~2_combout\)))) # (!\inst13|speed[6]~53_combout\ & (\inst13|display[5]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|display[5]~2_combout\,
	datab => \inst13|speed[6]~53_combout\,
	datac => \inst13|target2[2]~2_combout\,
	datad => \inst13|speed~68_combout\,
	combout => \inst13|speed~69_combout\);

-- Location: LCCOMB_X14_Y7_N30
\inst13|speed~70\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|speed~70_combout\ = (\inst13|always1~2_combout\ & ((\inst13|mystate\(0) & ((\inst13|speed~67_combout\))) # (!\inst13|mystate\(0) & (\inst13|speed~69_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|always1~2_combout\,
	datab => \inst13|mystate\(0),
	datac => \inst13|speed~69_combout\,
	datad => \inst13|speed~67_combout\,
	combout => \inst13|speed~70_combout\);

-- Location: LCCOMB_X14_Y7_N12
\inst13|speed~71\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|speed~71_combout\ = (!\inst13|speed[6]~138_combout\ & ((\inst13|speed~70_combout\) # ((\inst13|speed\(5) & !\inst13|always1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|speed\(5),
	datab => \inst13|speed[6]~138_combout\,
	datac => \inst13|always1~2_combout\,
	datad => \inst13|speed~70_combout\,
	combout => \inst13|speed~71_combout\);

-- Location: LCCOMB_X17_Y8_N2
\inst13|speed~73\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|speed~73_combout\ = (\inst13|LessThan1~3_combout\ & (((\inst13|speed[6]~36_combout\ & \inst13|Add3~10_combout\)))) # (!\inst13|LessThan1~3_combout\ & (\inst13|Add4~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Add4~8_combout\,
	datab => \inst13|speed[6]~36_combout\,
	datac => \inst13|Add3~10_combout\,
	datad => \inst13|LessThan1~3_combout\,
	combout => \inst13|speed~73_combout\);

-- Location: LCCOMB_X17_Y8_N20
\inst13|speed~74\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|speed~74_combout\ = (\inst13|speed~37_combout\ & ((\inst13|Add2~8_combout\) # ((!\inst13|backStatus~13_combout\ & \inst13|speed~73_combout\)))) # (!\inst13|speed~37_combout\ & (((!\inst13|backStatus~13_combout\ & \inst13|speed~73_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|speed~37_combout\,
	datab => \inst13|Add2~8_combout\,
	datac => \inst13|backStatus~13_combout\,
	datad => \inst13|speed~73_combout\,
	combout => \inst13|speed~74_combout\);

-- Location: LCCOMB_X13_Y7_N26
\inst13|speed~75\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|speed~75_combout\ = (\inst13|backStatus~13_combout\ & ((\inst13|Add2~8_combout\) # ((!\inst13|backStatus~12_combout\ & \inst13|speed~74_combout\)))) # (!\inst13|backStatus~13_combout\ & (!\inst13|backStatus~12_combout\ & 
-- ((\inst13|speed~74_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|backStatus~13_combout\,
	datab => \inst13|backStatus~12_combout\,
	datac => \inst13|Add2~8_combout\,
	datad => \inst13|speed~74_combout\,
	combout => \inst13|speed~75_combout\);

-- Location: LCCOMB_X13_Y7_N12
\inst13|speed~76\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|speed~76_combout\ = (\inst13|speed~72_combout\ & ((\inst13|speed[6]~35_combout\ & ((\inst13|speed~75_combout\))) # (!\inst13|speed[6]~35_combout\ & (\inst13|Add1~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Add1~8_combout\,
	datab => \inst13|speed[6]~35_combout\,
	datac => \inst13|speed~72_combout\,
	datad => \inst13|speed~75_combout\,
	combout => \inst13|speed~76_combout\);

-- Location: LCCOMB_X13_Y7_N30
\inst13|speed~77\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|speed~77_combout\ = (\inst13|Equal6~0_combout\ & ((\inst13|speed~76_combout\) # ((\inst13|speed\(5) & !\inst13|direction~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|speed\(5),
	datab => \inst13|direction~2_combout\,
	datac => \inst13|Equal6~0_combout\,
	datad => \inst13|speed~76_combout\,
	combout => \inst13|speed~77_combout\);

-- Location: LCCOMB_X15_Y6_N28
\inst13|speed~100\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|speed~100_combout\ = (\inst13|WideOr0~combout\ & (!\inst13|speed\(2))) # (!\inst13|WideOr0~combout\ & (((\inst13|Add8~2_combout\ & !\inst13|LessThan6~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|speed\(2),
	datab => \inst13|WideOr0~combout\,
	datac => \inst13|Add8~2_combout\,
	datad => \inst13|LessThan6~1_combout\,
	combout => \inst13|speed~100_combout\);

-- Location: LCCOMB_X15_Y6_N18
\inst13|speed~101\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|speed~101_combout\ = (\inst13|speed[6]~53_combout\ & ((\inst13|speed~100_combout\) # ((\inst13|display[2]~5_combout\ & \inst13|target2[2]~2_combout\)))) # (!\inst13|speed[6]~53_combout\ & (\inst13|display[2]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|display[2]~5_combout\,
	datab => \inst13|target2[2]~2_combout\,
	datac => \inst13|speed[6]~53_combout\,
	datad => \inst13|speed~100_combout\,
	combout => \inst13|speed~101_combout\);

-- Location: LCCOMB_X17_Y7_N6
\inst13|speed~102\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|speed~102_combout\ = (\inst13|display[2]~5_combout\ & (!\inst13|Equal7~0_combout\ & ((!\dinfrared~combout\(1)) # (!\dinfrared~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dinfrared~combout\(2),
	datab => \dinfrared~combout\(1),
	datac => \inst13|display[2]~5_combout\,
	datad => \inst13|Equal7~0_combout\,
	combout => \inst13|speed~102_combout\);

-- Location: LCCOMB_X17_Y7_N0
\inst13|speed~103\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|speed~103_combout\ = (\inst13|display[2]~5_combout\ & !\inst13|backStatus.00~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|display[2]~5_combout\,
	datad => \inst13|backStatus.00~regout\,
	combout => \inst13|speed~103_combout\);

-- Location: LCCOMB_X18_Y6_N20
\inst13|speed~104\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|speed~104_combout\ = (\inst13|speed~103_combout\) # ((\inst13|always1~8_combout\) # ((\inst13|speed~63_combout\ & \inst13|Add7~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|speed~63_combout\,
	datab => \inst13|speed~103_combout\,
	datac => \inst13|always1~8_combout\,
	datad => \inst13|Add7~4_combout\,
	combout => \inst13|speed~104_combout\);

-- Location: LCCOMB_X18_Y6_N18
\inst13|speed~105\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|speed~105_combout\ = (\inst13|Equal7~0_combout\ & ((\inst13|backdone~3_combout\ & ((\inst13|speed~104_combout\))) # (!\inst13|backdone~3_combout\ & (!\inst13|speed\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|speed\(2),
	datab => \inst13|Equal7~0_combout\,
	datac => \inst13|speed~104_combout\,
	datad => \inst13|backdone~3_combout\,
	combout => \inst13|speed~105_combout\);

-- Location: LCCOMB_X18_Y6_N12
\inst13|speed~106\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|speed~106_combout\ = (\inst13|mystate\(0) & ((\inst13|speed~102_combout\) # ((\inst13|speed~105_combout\)))) # (!\inst13|mystate\(0) & (((\inst13|speed~101_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|mystate\(0),
	datab => \inst13|speed~102_combout\,
	datac => \inst13|speed~101_combout\,
	datad => \inst13|speed~105_combout\,
	combout => \inst13|speed~106_combout\);

-- Location: LCCOMB_X18_Y6_N6
\inst13|speed~107\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|speed~107_combout\ = (\inst13|speed[6]~99_combout\ & ((\inst13|always1~2_combout\ & ((\inst13|speed~106_combout\))) # (!\inst13|always1~2_combout\ & (!\inst13|speed\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|speed\(2),
	datab => \inst13|speed[6]~99_combout\,
	datac => \inst13|always1~2_combout\,
	datad => \inst13|speed~106_combout\,
	combout => \inst13|speed~107_combout\);

-- Location: LCCOMB_X18_Y6_N28
\inst13|speed~108\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|speed~108_combout\ = (\inst13|speed~107_combout\) # ((\inst13|speed~93_combout\ & (!\inst13|Equal6~0_combout\ & \inst13|state.10~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|speed~93_combout\,
	datab => \inst13|Equal6~0_combout\,
	datac => \inst13|state.10~regout\,
	datad => \inst13|speed~107_combout\,
	combout => \inst13|speed~108_combout\);

-- Location: LCCOMB_X17_Y8_N22
\inst13|speed~109\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|speed~109_combout\ = (\inst13|speed[6]~36_combout\ & (((\inst13|Add3~4_combout\ & !\inst13|backStatus~13_combout\)))) # (!\inst13|speed[6]~36_combout\ & (\inst13|Add2~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Add2~2_combout\,
	datab => \inst13|speed[6]~36_combout\,
	datac => \inst13|Add3~4_combout\,
	datad => \inst13|backStatus~13_combout\,
	combout => \inst13|speed~109_combout\);

-- Location: LCCOMB_X17_Y8_N28
\inst13|speed~110\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|speed~110_combout\ = (\inst13|LessThan1~3_combout\ & (((\inst13|speed~109_combout\)))) # (!\inst13|LessThan1~3_combout\ & (\inst13|Add4~2_combout\ & (!\inst13|backStatus~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Add4~2_combout\,
	datab => \inst13|LessThan1~3_combout\,
	datac => \inst13|backStatus~13_combout\,
	datad => \inst13|speed~109_combout\,
	combout => \inst13|speed~110_combout\);

-- Location: LCCOMB_X17_Y8_N26
\inst13|speed~111\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|speed~111_combout\ = (\inst13|Add2~2_combout\ & ((\inst13|backStatus~13_combout\) # ((\inst13|speed~110_combout\ & !\inst13|backStatus~12_combout\)))) # (!\inst13|Add2~2_combout\ & (\inst13|speed~110_combout\ & (!\inst13|backStatus~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Add2~2_combout\,
	datab => \inst13|speed~110_combout\,
	datac => \inst13|backStatus~12_combout\,
	datad => \inst13|backStatus~13_combout\,
	combout => \inst13|speed~111_combout\);

-- Location: LCCOMB_X18_Y6_N22
\inst13|speed~112\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|speed~112_combout\ = (\inst13|speed~72_combout\ & ((\inst13|speed[6]~35_combout\ & ((\inst13|speed~111_combout\))) # (!\inst13|speed[6]~35_combout\ & (\inst13|Add1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|speed[6]~35_combout\,
	datab => \inst13|Add1~2_combout\,
	datac => \inst13|speed~72_combout\,
	datad => \inst13|speed~111_combout\,
	combout => \inst13|speed~112_combout\);

-- Location: LCCOMB_X18_Y6_N24
\inst13|speed~113\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|speed~113_combout\ = (\inst13|state.10~regout\ & ((\inst13|speed~112_combout\) # ((!\inst13|speed\(2) & !\inst13|direction~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|speed\(2),
	datab => \inst13|state.10~regout\,
	datac => \inst13|direction~2_combout\,
	datad => \inst13|speed~112_combout\,
	combout => \inst13|speed~113_combout\);

-- Location: LCCOMB_X18_Y6_N16
\inst13|speed~114\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|speed~114_combout\ = (\inst13|state.00~regout\ & (!\inst13|speed~108_combout\ & ((!\inst13|speed~113_combout\) # (!\inst13|Equal6~0_combout\)))) # (!\inst13|state.00~regout\ & (!\inst13|Equal6~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|state.00~regout\,
	datab => \inst13|Equal6~0_combout\,
	datac => \inst13|speed~113_combout\,
	datad => \inst13|speed~108_combout\,
	combout => \inst13|speed~114_combout\);

-- Location: LCCOMB_X17_Y7_N10
\inst13|speed~115\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|speed~115_combout\ = (\inst13|speed~63_combout\ & ((\inst13|Add7~2_combout\) # ((\inst13|display[1]~6_combout\ & !\inst13|backStatus.00~regout\)))) # (!\inst13|speed~63_combout\ & (\inst13|display[1]~6_combout\ & 
-- ((!\inst13|backStatus.00~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|speed~63_combout\,
	datab => \inst13|display[1]~6_combout\,
	datac => \inst13|Add7~2_combout\,
	datad => \inst13|backStatus.00~regout\,
	combout => \inst13|speed~115_combout\);

-- Location: LCCOMB_X14_Y7_N0
\inst13|speed~116\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|speed~116_combout\ = (\inst13|speed\(1) & (((\inst13|speed~115_combout\ & \inst13|speed~65_combout\)) # (!\inst13|backdone~3_combout\))) # (!\inst13|speed\(1) & (\inst13|speed~115_combout\ & (\inst13|speed~65_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|speed\(1),
	datab => \inst13|speed~115_combout\,
	datac => \inst13|speed~65_combout\,
	datad => \inst13|backdone~3_combout\,
	combout => \inst13|speed~116_combout\);

-- Location: LCCOMB_X14_Y7_N2
\inst13|speed~117\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|speed~117_combout\ = (\inst13|Equal7~0_combout\ & (((\inst13|speed~116_combout\)))) # (!\inst13|Equal7~0_combout\ & (\inst13|display[1]~6_combout\ & (!\inst13|always1~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|display[1]~6_combout\,
	datab => \inst13|Equal7~0_combout\,
	datac => \inst13|always1~11_combout\,
	datad => \inst13|speed~116_combout\,
	combout => \inst13|speed~117_combout\);

-- Location: LCCOMB_X15_Y8_N0
\inst13|speed~118\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|speed~118_combout\ = (\inst13|WideOr0~combout\ & (\inst13|speed\(1))) # (!\inst13|WideOr0~combout\ & (((!\inst13|LessThan6~1_combout\ & \inst13|Add8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|speed\(1),
	datab => \inst13|LessThan6~1_combout\,
	datac => \inst13|WideOr0~combout\,
	datad => \inst13|Add8~0_combout\,
	combout => \inst13|speed~118_combout\);

-- Location: LCCOMB_X15_Y8_N26
\inst13|speed~119\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|speed~119_combout\ = (\inst13|speed[6]~53_combout\ & ((\inst13|speed~118_combout\) # ((\inst13|display[1]~6_combout\ & \inst13|target2[2]~2_combout\)))) # (!\inst13|speed[6]~53_combout\ & (\inst13|display[1]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|speed[6]~53_combout\,
	datab => \inst13|display[1]~6_combout\,
	datac => \inst13|target2[2]~2_combout\,
	datad => \inst13|speed~118_combout\,
	combout => \inst13|speed~119_combout\);

-- Location: LCCOMB_X14_Y7_N24
\inst13|speed~120\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|speed~120_combout\ = (\inst13|always1~2_combout\ & ((\inst13|mystate\(0) & ((\inst13|speed~117_combout\))) # (!\inst13|mystate\(0) & (\inst13|speed~119_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|mystate\(0),
	datab => \inst13|always1~2_combout\,
	datac => \inst13|speed~119_combout\,
	datad => \inst13|speed~117_combout\,
	combout => \inst13|speed~120_combout\);

-- Location: LCCOMB_X14_Y7_N22
\inst13|speed~121\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|speed~121_combout\ = (!\inst13|speed[6]~138_combout\ & ((\inst13|speed~120_combout\) # ((\inst13|speed\(1) & !\inst13|always1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|speed\(1),
	datab => \inst13|always1~2_combout\,
	datac => \inst13|speed~120_combout\,
	datad => \inst13|speed[6]~138_combout\,
	combout => \inst13|speed~121_combout\);

-- Location: LCCOMB_X13_Y7_N6
\inst13|speed~122\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|speed~122_combout\ = (\inst13|LessThan1~3_combout\ & ((\inst13|speed~141_combout\))) # (!\inst13|LessThan1~3_combout\ & (\inst13|Add4~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|Add4~0_combout\,
	datac => \inst13|LessThan1~3_combout\,
	datad => \inst13|speed~141_combout\,
	combout => \inst13|speed~122_combout\);

-- Location: LCCOMB_X13_Y7_N24
\inst13|speed~123\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|speed~123_combout\ = (\inst13|backStatus~13_combout\ & (((\inst13|Add2~0_combout\)))) # (!\inst13|backStatus~13_combout\ & (!\inst13|backStatus~12_combout\ & ((\inst13|speed~122_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|backStatus~12_combout\,
	datab => \inst13|Add2~0_combout\,
	datac => \inst13|backStatus~13_combout\,
	datad => \inst13|speed~122_combout\,
	combout => \inst13|speed~123_combout\);

-- Location: LCCOMB_X13_Y7_N14
\inst13|speed~124\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|speed~124_combout\ = (\inst13|always1~6_combout\) # ((\inst13|speed[6]~35_combout\ & ((\inst13|speed~123_combout\))) # (!\inst13|speed[6]~35_combout\ & (\inst13|Add1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Add1~0_combout\,
	datab => \inst13|speed[6]~35_combout\,
	datac => \inst13|speed~123_combout\,
	datad => \inst13|always1~6_combout\,
	combout => \inst13|speed~124_combout\);

-- Location: LCCOMB_X13_Y7_N28
\inst13|speed~125\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|speed~125_combout\ = (\inst13|Equal6~0_combout\ & ((\inst13|direction~2_combout\ & ((\inst13|speed~124_combout\))) # (!\inst13|direction~2_combout\ & (\inst13|speed\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|speed\(1),
	datab => \inst13|Equal6~0_combout\,
	datac => \inst13|speed~124_combout\,
	datad => \inst13|direction~2_combout\,
	combout => \inst13|speed~125_combout\);

-- Location: LCCOMB_X15_Y7_N14
\inst13|speed~126\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|speed~126_combout\ = (\inst13|Equal6~0_combout\) # ((\inst13|LessThan6~1_combout\ & (\inst9|data\(0) $ (\inst9|data\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Equal6~0_combout\,
	datab => \inst9|data\(0),
	datac => \inst9|data\(1),
	datad => \inst13|LessThan6~1_combout\,
	combout => \inst13|speed~126_combout\);

-- Location: LCCOMB_X14_Y7_N20
\inst13|speed~129\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|speed~129_combout\ = (\inst13|mystate\(0) & (\inst13|mystate\(1) & (!\inst13|always1~11_combout\))) # (!\inst13|mystate\(0) & (((!\inst13|WideOr0~combout\)) # (!\inst13|mystate\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100101011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|mystate\(0),
	datab => \inst13|mystate\(1),
	datac => \inst13|always1~11_combout\,
	datad => \inst13|WideOr0~combout\,
	combout => \inst13|speed~129_combout\);

-- Location: LCCOMB_X13_Y7_N10
\inst13|speed~132\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|speed~132_combout\ = (\inst13|Add3~0_combout\ & (\inst13|backStatus.10~regout\ & (\inst13|flag~regout\ $ (!\inst9|data\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|flag~regout\,
	datab => \inst9|data\(0),
	datac => \inst13|Add3~0_combout\,
	datad => \inst13|backStatus.10~regout\,
	combout => \inst13|speed~132_combout\);

-- Location: LCCOMB_X15_Y10_N12
\inst13|direction~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|direction~9_combout\ = (!\inst13|mystate\(0) & (\inst13|mystate\(1) & ((\Touch~combout\(1)) # (\Touch~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|mystate\(0),
	datab => \Touch~combout\(1),
	datac => \inst13|mystate\(1),
	datad => \Touch~combout\(0),
	combout => \inst13|direction~9_combout\);

-- Location: LCCOMB_X14_Y10_N2
\inst13|direction~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|direction~10_combout\ = (\inst13|direction~17_combout\) # ((\inst13|direction~9_combout\ & \inst13|target2[2]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|direction~9_combout\,
	datac => \inst13|target2[2]~2_combout\,
	datad => \inst13|direction~17_combout\,
	combout => \inst13|direction~10_combout\);

-- Location: LCCOMB_X13_Y10_N16
\inst13|direction~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|direction~11_combout\ = (!\inst13|direction~regout\ & (((\inst13|backStatus.00~regout\ & !\inst13|backStatus.10~regout\)) # (!\inst13|backdone~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|backStatus.00~regout\,
	datab => \inst13|direction~regout\,
	datac => \inst13|backdone~3_combout\,
	datad => \inst13|backStatus.10~regout\,
	combout => \inst13|direction~11_combout\);

-- Location: LCCOMB_X13_Y10_N26
\inst13|direction~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|direction~12_combout\ = (\inst13|backdone~3_combout\ & ((\inst13|always1~8_combout\) # ((\inst13|backStatus.00~regout\ & \inst13|backStatus.01~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|backStatus.00~regout\,
	datab => \inst13|backStatus.01~regout\,
	datac => \inst13|backdone~3_combout\,
	datad => \inst13|always1~8_combout\,
	combout => \inst13|direction~12_combout\);

-- Location: LCCOMB_X13_Y10_N28
\inst13|direction~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|direction~13_combout\ = (\inst13|direction~10_combout\ & (((\inst13|direction~12_combout\) # (\inst13|direction~11_combout\)) # (!\inst13|Equal7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Equal7~0_combout\,
	datab => \inst13|direction~12_combout\,
	datac => \inst13|direction~11_combout\,
	datad => \inst13|direction~10_combout\,
	combout => \inst13|direction~13_combout\);

-- Location: LCCOMB_X13_Y10_N10
\inst13|direction~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|direction~14_combout\ = (!\inst13|state.10~regout\ & ((\inst13|last2~5_combout\ & ((\inst13|direction~13_combout\))) # (!\inst13|last2~5_combout\ & (!\inst13|direction~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|state.10~regout\,
	datab => \inst13|direction~regout\,
	datac => \inst13|last2~5_combout\,
	datad => \inst13|direction~13_combout\,
	combout => \inst13|direction~14_combout\);

-- Location: LCCOMB_X18_Y5_N26
\inst6|counter~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|counter~9_combout\ = \inst6|counter[8]~6_combout\ $ (((\inst6|tone\(27) & (!\inst6|tone\(19))) # (!\inst6|tone\(27) & ((!\inst6|tone\(16))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100001000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|tone\(19),
	datab => \inst6|tone\(27),
	datac => \inst6|tone\(16),
	datad => \inst6|counter[8]~6_combout\,
	combout => \inst6|counter~9_combout\);

-- Location: LCCOMB_X18_Y5_N30
\inst6|counter~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|counter~10_combout\ = (\inst6|Equal0~4_combout\ & (\inst6|counter~9_combout\)) # (!\inst6|Equal0~4_combout\ & ((\inst6|Add1~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Equal0~4_combout\,
	datab => \inst6|counter~9_combout\,
	datac => \inst6|Add1~14_combout\,
	combout => \inst6|counter~10_combout\);

-- Location: LCCOMB_X18_Y5_N6
\inst6|counter~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|counter~17_combout\ = \inst6|counter[8]~6_combout\ $ (((\inst6|tone\(27) & ((!\inst6|tone\(23)))) # (!\inst6|tone\(27) & (!\inst6|tone\(20)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|tone\(20),
	datab => \inst6|tone\(23),
	datac => \inst6|tone\(27),
	datad => \inst6|counter[8]~6_combout\,
	combout => \inst6|counter~17_combout\);

-- Location: LCCOMB_X18_Y5_N10
\inst6|counter~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|counter~18_combout\ = (\inst6|Equal0~4_combout\ & (\inst6|counter~17_combout\)) # (!\inst6|Equal0~4_combout\ & ((\inst6|Add1~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|counter~17_combout\,
	datac => \inst6|Equal0~4_combout\,
	datad => \inst6|Add1~22_combout\,
	combout => \inst6|counter~18_combout\);

-- Location: LCCOMB_X12_Y10_N6
\inst13|beepEnable~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|beepEnable~4_combout\ = ((!\inst13|backStatus.01~regout\ & ((\inst13|beepEnable~regout\) # (\inst13|backStatus.10~regout\)))) # (!\inst13|backStatus.00~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|beepEnable~regout\,
	datab => \inst13|backStatus.10~regout\,
	datac => \inst13|backStatus.01~regout\,
	datad => \inst13|backStatus.00~regout\,
	combout => \inst13|beepEnable~4_combout\);

-- Location: LCCOMB_X15_Y10_N14
\inst13|degree~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|degree~30_combout\ = (\inst13|speed[6]~53_combout\ & (((\inst13|always1~2_combout\ & !\inst13|WideOr0~combout\)) # (!\inst13|degree\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|degree\(5),
	datab => \inst13|always1~2_combout\,
	datac => \inst13|WideOr0~combout\,
	datad => \inst13|speed[6]~53_combout\,
	combout => \inst13|degree~30_combout\);

-- Location: LCCOMB_X17_Y10_N6
\inst13|degree~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|degree~36_combout\ = (\inst13|speed[6]~35_combout\ & (\inst13|Equal6~0_combout\ & (!\inst13|always1~6_combout\ & \inst13|degree~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|speed[6]~35_combout\,
	datab => \inst13|Equal6~0_combout\,
	datac => \inst13|always1~6_combout\,
	datad => \inst13|degree~25_combout\,
	combout => \inst13|degree~36_combout\);

-- Location: LCCOMB_X17_Y10_N20
\inst13|degree~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|degree~37_combout\ = (\inst13|degree\(5) & (((!\inst13|backStatus~13_combout\ & \inst13|degree~36_combout\)))) # (!\inst13|degree\(5) & (((!\inst13|backStatus~13_combout\ & \inst13|degree~36_combout\)) # (!\inst13|degree~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|degree\(5),
	datab => \inst13|degree~24_combout\,
	datac => \inst13|backStatus~13_combout\,
	datad => \inst13|degree~36_combout\,
	combout => \inst13|degree~37_combout\);

-- Location: LCCOMB_X17_Y10_N30
\inst13|degree~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|degree~38_combout\ = (\inst13|state.10~regout\ & ((\inst13|Equal5~0_combout\ & ((\inst13|degree~37_combout\))) # (!\inst13|Equal5~0_combout\ & (!\inst13|speed~93_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|speed~93_combout\,
	datab => \inst13|state.10~regout\,
	datac => \inst13|degree~37_combout\,
	datad => \inst13|Equal5~0_combout\,
	combout => \inst13|degree~38_combout\);

-- Location: LCCOMB_X14_Y10_N20
\inst13|degree~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|degree~42_combout\ = (!\inst13|degree\(4) & (\inst13|lastsign2~regout\ & \Signs~combout\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|degree\(4),
	datac => \inst13|lastsign2~regout\,
	datad => \Signs~combout\(2),
	combout => \inst13|degree~42_combout\);

-- Location: LCCOMB_X15_Y10_N0
\inst13|degree~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|degree~43_combout\ = \Touch~combout\(1) $ (\Touch~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Touch~combout\(1),
	datad => \Touch~combout\(0),
	combout => \inst13|degree~43_combout\);

-- Location: LCCOMB_X17_Y8_N18
\inst13|degree~59\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|degree~59_combout\ = (!\inst13|always1~8_combout\ & ((\Infrared~combout\(2)) # ((!\inst13|degree~31_combout\) # (!\Infrared~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Infrared~combout\(2),
	datab => \Infrared~combout\(3),
	datac => \inst13|always1~8_combout\,
	datad => \inst13|degree~31_combout\,
	combout => \inst13|degree~59_combout\);

-- Location: LCCOMB_X18_Y11_N16
\inst13|degree~69\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|degree~69_combout\ = (\inst13|Equal7~0_combout\ & (((\inst13|led~11_combout\ & \inst13|degree~59_combout\)))) # (!\inst13|Equal7~0_combout\ & (!\inst13|speed~93_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Equal7~0_combout\,
	datab => \inst13|speed~93_combout\,
	datac => \inst13|led~11_combout\,
	datad => \inst13|degree~59_combout\,
	combout => \inst13|degree~69_combout\);

-- Location: LCCOMB_X18_Y11_N6
\inst13|degree~70\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|degree~70_combout\ = (\inst13|always1~2_combout\ & ((\inst13|degree~86_combout\) # ((\inst13|mystate\(0) & \inst13|degree~69_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|mystate\(0),
	datab => \inst13|always1~2_combout\,
	datac => \inst13|degree~69_combout\,
	datad => \inst13|degree~86_combout\,
	combout => \inst13|degree~70_combout\);

-- Location: LCFF_X13_Y10_N13
\inst13|DelayCnt[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst13|DelayCnt[0]~92_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst13|DelayCnt\(0));

-- Location: LCFF_X1_Y6_N29
\inst13|clk_9600\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst13|clk_9600~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst13|clk_9600~regout\);

-- Location: LCCOMB_X12_Y11_N24
\inst11|byteCount[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|byteCount[3]~0_combout\ = (\inst11|resetSend~regout\) # ((!\inst11|status~regout\ & ((\inst11|Equal0~0_combout\) # (\inst3|flag~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|status~regout\,
	datab => \inst11|Equal0~0_combout\,
	datac => \inst11|resetSend~regout\,
	datad => \inst3|flag~regout\,
	combout => \inst11|byteCount[3]~0_combout\);

-- Location: LCFF_X10_Y12_N17
\inst17|out_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst17|out_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst17|out_1~regout\);

-- Location: LCFF_X19_Y11_N29
\inst12|dis[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_ultraleft_echo~combout\,
	datain => \inst12|dis[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst12|dis\(0));

-- Location: LCCOMB_X13_Y10_N12
\inst13|DelayCnt[0]~92\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|DelayCnt[0]~92_combout\ = \inst13|DelayCnt\(0) $ (((\inst13|speed~34_combout\ & \inst13|LessThan2~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|speed~34_combout\,
	datac => \inst13|DelayCnt\(0),
	datad => \inst13|LessThan2~7_combout\,
	combout => \inst13|DelayCnt[0]~92_combout\);

-- Location: LCFF_X14_Y6_N27
\inst9|state.00\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst17|out_9600~clkctrl_outclk\,
	datain => \inst9|Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|state.00~regout\);

-- Location: LCCOMB_X14_Y6_N16
\inst9|Selector5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|Selector5~0_combout\ = ((\inst9|count\(3) & \inst9|state.01~regout\)) # (!\inst9|state.00~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|state.00~regout\,
	datab => \inst9|count\(3),
	datac => \inst9|state.01~regout\,
	combout => \inst9|Selector5~0_combout\);

-- Location: LCFF_X3_Y6_N1
\inst13|clk_count[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst13|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst13|clk_count\(0));

-- Location: LCFF_X3_Y6_N3
\inst13|clk_count[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst13|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst13|clk_count\(1));

-- Location: LCFF_X2_Y6_N17
\inst13|clk_count[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst13|clk_count~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst13|clk_count\(3));

-- Location: LCFF_X2_Y6_N31
\inst13|clk_count[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst13|clk_count~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst13|clk_count\(2));

-- Location: LCCOMB_X2_Y6_N12
\inst13|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|Equal0~0_combout\ = (\inst13|clk_count\(3) & (!\inst13|clk_count\(2) & (\inst13|clk_count\(0) & \inst13|clk_count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|clk_count\(3),
	datab => \inst13|clk_count\(2),
	datac => \inst13|clk_count\(0),
	datad => \inst13|clk_count\(1),
	combout => \inst13|Equal0~0_combout\);

-- Location: LCFF_X3_Y6_N31
\inst13|clk_count[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst13|clk_count~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst13|clk_count\(5));

-- Location: LCFF_X3_Y6_N9
\inst13|clk_count[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst13|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst13|clk_count\(4));

-- Location: LCFF_X3_Y6_N13
\inst13|clk_count[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst13|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst13|clk_count\(6));

-- Location: LCFF_X3_Y6_N15
\inst13|clk_count[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst13|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst13|clk_count\(7));

-- Location: LCCOMB_X2_Y6_N14
\inst13|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|Equal0~1_combout\ = (!\inst13|clk_count\(6) & (!\inst13|clk_count\(7) & (!\inst13|clk_count\(4) & \inst13|clk_count\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|clk_count\(6),
	datab => \inst13|clk_count\(7),
	datac => \inst13|clk_count\(4),
	datad => \inst13|clk_count\(5),
	combout => \inst13|Equal0~1_combout\);

-- Location: LCFF_X3_Y6_N29
\inst13|clk_count[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst13|clk_count~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst13|clk_count\(9));

-- Location: LCFF_X3_Y6_N27
\inst13|clk_count[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst13|clk_count~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst13|clk_count\(11));

-- Location: LCFF_X3_Y6_N17
\inst13|clk_count[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst13|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst13|clk_count\(8));

-- Location: LCFF_X3_Y6_N21
\inst13|clk_count[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst13|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst13|clk_count\(10));

-- Location: LCCOMB_X2_Y6_N20
\inst13|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|Equal0~2_combout\ = (\inst13|clk_count\(11) & (!\inst13|clk_count\(10) & (!\inst13|clk_count\(8) & \inst13|clk_count\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|clk_count\(11),
	datab => \inst13|clk_count\(10),
	datac => \inst13|clk_count\(8),
	datad => \inst13|clk_count\(9),
	combout => \inst13|Equal0~2_combout\);

-- Location: LCFF_X3_Y6_N25
\inst13|clk_count[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst13|Add0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst13|clk_count\(12));

-- Location: LCCOMB_X2_Y6_N22
\inst13|Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|Equal0~3_combout\ = (!\inst13|clk_count\(12) & (\inst13|Equal0~2_combout\ & (\inst13|Equal0~1_combout\ & \inst13|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|clk_count\(12),
	datab => \inst13|Equal0~2_combout\,
	datac => \inst13|Equal0~1_combout\,
	datad => \inst13|Equal0~0_combout\,
	combout => \inst13|Equal0~3_combout\);

-- Location: LCCOMB_X1_Y6_N28
\inst13|clk_9600~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|clk_9600~0_combout\ = \inst13|clk_9600~regout\ $ (\inst13|Equal0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|clk_9600~regout\,
	datad => \inst13|Equal0~3_combout\,
	combout => \inst13|clk_9600~0_combout\);

-- Location: LCCOMB_X10_Y12_N24
\inst17|LessThan0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|LessThan0~0_combout\ = (((!\inst17|cnt1\(11)) # (!\inst17|cnt1\(13))) # (!\inst17|cnt1\(12))) # (!\inst17|cnt1\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|cnt1\(14),
	datab => \inst17|cnt1\(12),
	datac => \inst17|cnt1\(13),
	datad => \inst17|cnt1\(11),
	combout => \inst17|LessThan0~0_combout\);

-- Location: LCCOMB_X9_Y12_N0
\inst17|LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|LessThan0~1_combout\ = (((!\inst17|cnt1\(3)) # (!\inst17|cnt1\(0))) # (!\inst17|cnt1\(1))) # (!\inst17|cnt1\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|cnt1\(2),
	datab => \inst17|cnt1\(1),
	datac => \inst17|cnt1\(0),
	datad => \inst17|cnt1\(3),
	combout => \inst17|LessThan0~1_combout\);

-- Location: LCCOMB_X9_Y12_N2
\inst17|LessThan0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|LessThan0~2_combout\ = ((\inst17|LessThan0~1_combout\) # (!\inst17|cnt1\(5))) # (!\inst17|cnt1\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst17|cnt1\(4),
	datac => \inst17|cnt1\(5),
	datad => \inst17|LessThan0~1_combout\,
	combout => \inst17|LessThan0~2_combout\);

-- Location: LCCOMB_X9_Y12_N4
\inst17|LessThan0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|LessThan0~3_combout\ = (!\inst17|cnt1\(7) & (!\inst17|cnt1\(6) & (!\inst17|cnt1\(9) & !\inst17|cnt1\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|cnt1\(7),
	datab => \inst17|cnt1\(6),
	datac => \inst17|cnt1\(9),
	datad => \inst17|cnt1\(8),
	combout => \inst17|LessThan0~3_combout\);

-- Location: LCCOMB_X10_Y12_N28
\inst17|LessThan0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|LessThan0~4_combout\ = (\inst17|LessThan0~0_combout\) # ((!\inst17|cnt1\(10) & (\inst17|LessThan0~3_combout\ & \inst17|LessThan0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|cnt1\(10),
	datab => \inst17|LessThan0~3_combout\,
	datac => \inst17|LessThan0~0_combout\,
	datad => \inst17|LessThan0~2_combout\,
	combout => \inst17|LessThan0~4_combout\);

-- Location: LCCOMB_X10_Y12_N18
\inst17|LessThan0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|LessThan0~5_combout\ = (!\inst17|cnt1\(17) & (((!\inst17|cnt1\(15) & \inst17|LessThan0~4_combout\)) # (!\inst17|cnt1\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|cnt1\(17),
	datab => \inst17|cnt1\(15),
	datac => \inst17|cnt1\(16),
	datad => \inst17|LessThan0~4_combout\,
	combout => \inst17|LessThan0~5_combout\);

-- Location: LCCOMB_X9_Y11_N28
\inst17|LessThan0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|LessThan0~6_combout\ = (((!\inst17|cnt1\(18)) # (!\inst17|cnt1\(21))) # (!\inst17|cnt1\(20))) # (!\inst17|cnt1\(19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|cnt1\(19),
	datab => \inst17|cnt1\(20),
	datac => \inst17|cnt1\(21),
	datad => \inst17|cnt1\(18),
	combout => \inst17|LessThan0~6_combout\);

-- Location: LCCOMB_X10_Y12_N10
\inst17|LessThan0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|LessThan0~7_combout\ = (!\inst17|cnt1\(23) & (((\inst17|LessThan0~6_combout\) # (\inst17|LessThan0~5_combout\)) # (!\inst17|cnt1\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|cnt1\(23),
	datab => \inst17|cnt1\(22),
	datac => \inst17|LessThan0~6_combout\,
	datad => \inst17|LessThan0~5_combout\,
	combout => \inst17|LessThan0~7_combout\);

-- Location: LCCOMB_X10_Y12_N26
\inst17|LessThan0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|LessThan0~8_combout\ = (\inst17|cnt1\(25)) # ((\inst17|cnt1\(26)) # ((\inst17|cnt1\(24) & !\inst17|LessThan0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|cnt1\(25),
	datab => \inst17|cnt1\(24),
	datac => \inst17|cnt1\(26),
	datad => \inst17|LessThan0~7_combout\,
	combout => \inst17|LessThan0~8_combout\);

-- Location: LCCOMB_X10_Y12_N16
\inst17|out_1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|out_1~0_combout\ = \inst17|out_1~regout\ $ (\inst17|LessThan0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst17|out_1~regout\,
	datad => \inst17|LessThan0~8_combout\,
	combout => \inst17|out_1~0_combout\);

-- Location: LCFF_X15_Y6_N23
\inst9|state.10\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst17|out_9600~clkctrl_outclk\,
	datain => \inst9|Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|state.10~regout\);

-- Location: LCCOMB_X14_Y6_N26
\inst9|Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|Selector0~0_combout\ = (!\inst9|state.10~regout\ & ((\inst9|state.00~regout\) # (!\rxd~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rxd~combout\,
	datac => \inst9|state.00~regout\,
	datad => \inst9|state.10~regout\,
	combout => \inst9|Selector0~0_combout\);

-- Location: LCCOMB_X2_Y6_N16
\inst13|clk_count~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|clk_count~0_combout\ = (\inst13|Add0~6_combout\ & !\inst13|Equal0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Add0~6_combout\,
	datad => \inst13|Equal0~3_combout\,
	combout => \inst13|clk_count~0_combout\);

-- Location: LCCOMB_X2_Y6_N30
\inst13|clk_count~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|clk_count~1_combout\ = (\inst13|Add0~4_combout\ & !\inst13|Equal0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Add0~4_combout\,
	datad => \inst13|Equal0~3_combout\,
	combout => \inst13|clk_count~1_combout\);

-- Location: LCCOMB_X3_Y6_N30
\inst13|clk_count~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|clk_count~2_combout\ = (\inst13|Add0~10_combout\ & !\inst13|Equal0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Add0~10_combout\,
	datad => \inst13|Equal0~3_combout\,
	combout => \inst13|clk_count~2_combout\);

-- Location: LCCOMB_X3_Y6_N28
\inst13|clk_count~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|clk_count~3_combout\ = (\inst13|Add0~18_combout\ & !\inst13|Equal0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|Add0~18_combout\,
	datad => \inst13|Equal0~3_combout\,
	combout => \inst13|clk_count~3_combout\);

-- Location: LCCOMB_X3_Y6_N26
\inst13|clk_count~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|clk_count~4_combout\ = (\inst13|Add0~22_combout\ & !\inst13|Equal0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|Add0~22_combout\,
	datad => \inst13|Equal0~3_combout\,
	combout => \inst13|clk_count~4_combout\);

-- Location: LCCOMB_X15_Y6_N22
\inst9|Selector2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|Selector2~0_combout\ = (\inst9|count\(3) & \inst9|state.01~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst9|count\(3),
	datad => \inst9|state.01~regout\,
	combout => \inst9|Selector2~0_combout\);

-- Location: LCCOMB_X21_Y10_N12
\inst18|Div0|auto_generated|divider|divider|StageOut[38]~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst18|Div0|auto_generated|divider|divider|StageOut[38]~46_combout\ = (\inst18|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & ((\inst18|Div0|auto_generated|divider|divider|StageOut[32]~48_combout\) # 
-- ((\inst18|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ & !\inst18|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	datab => \inst18|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datac => \inst18|Div0|auto_generated|divider|divider|StageOut[32]~48_combout\,
	datad => \inst18|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \inst18|Div0|auto_generated|divider|divider|StageOut[38]~46_combout\);

-- Location: LCCOMB_X21_Y8_N20
\inst|Div2|auto_generated|divider|divider|StageOut[28]~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Div2|auto_generated|divider|divider|StageOut[28]~62_combout\ = (\inst|Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\inst|Div2|auto_generated|divider|divider|StageOut[22]~65_combout\) # 
-- ((!\inst|Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \inst|Div2|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div2|auto_generated|divider|divider|StageOut[22]~65_combout\,
	datab => \inst|Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \inst|Div2|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datad => \inst|Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \inst|Div2|auto_generated|divider|divider|StageOut[28]~62_combout\);

-- Location: LCCOMB_X21_Y6_N18
\inst|Div2|auto_generated|divider|divider|StageOut[33]~63\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Div2|auto_generated|divider|divider|StageOut[33]~63_combout\ = (\inst|Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\inst|Div2|auto_generated|divider|divider|StageOut[27]~66_combout\) # 
-- ((!\inst|Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & \inst|Div2|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datab => \inst|Div2|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datac => \inst|Div2|auto_generated|divider|divider|StageOut[27]~66_combout\,
	datad => \inst|Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \inst|Div2|auto_generated|divider|divider|StageOut[33]~63_combout\);

-- Location: LCCOMB_X20_Y6_N14
\inst|Mux0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mux0~6_combout\ = (\inst|Mux0~3_combout\ & (\inst|col\(1) $ ((\inst|col\(0))))) # (!\inst|Mux0~3_combout\ & (\inst|Mux0~5_combout\ & (\inst|col\(1) $ (\inst|col\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|col\(1),
	datab => \inst|Mux0~3_combout\,
	datac => \inst|col\(0),
	datad => \inst|Mux0~5_combout\,
	combout => \inst|Mux0~6_combout\);

-- Location: LCCOMB_X14_Y9_N14
\inst13|led~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|led~25_combout\ = (\inst13|Equal7~0_combout\ & (\inst13|backStatus.00~regout\ & (!\inst13|backStatus.10~regout\ & !\inst13|backStatus.01~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Equal7~0_combout\,
	datab => \inst13|backStatus.00~regout\,
	datac => \inst13|backStatus.10~regout\,
	datad => \inst13|backStatus.01~regout\,
	combout => \inst13|led~25_combout\);

-- Location: LCCOMB_X14_Y10_N0
\inst13|speed[6]~136\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|speed[6]~136_combout\ = (\inst13|lastsign2~regout\ & (!\Signs~combout\(2) & ((!\inst13|WideOr0~combout\) # (!\inst13|speed[6]~53_combout\)))) # (!\inst13|lastsign2~regout\ & (((!\inst13|WideOr0~combout\) # (!\inst13|speed[6]~53_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|lastsign2~regout\,
	datab => \Signs~combout\(2),
	datac => \inst13|speed[6]~53_combout\,
	datad => \inst13|WideOr0~combout\,
	combout => \inst13|speed[6]~136_combout\);

-- Location: LCCOMB_X18_Y7_N8
\inst13|speed~141\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|speed~141_combout\ = (\Infrared~combout\(3) & ((\Infrared~combout\(2) & (\inst13|Add3~2_combout\)) # (!\Infrared~combout\(2) & ((\inst13|Add2~0_combout\))))) # (!\Infrared~combout\(3) & (((\inst13|Add2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Infrared~combout\(3),
	datab => \inst13|Add3~2_combout\,
	datac => \Infrared~combout\(2),
	datad => \inst13|Add2~0_combout\,
	combout => \inst13|speed~141_combout\);

-- Location: LCCOMB_X13_Y7_N2
\inst13|speed~142\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|speed~142_combout\ = (\inst13|speed~125_combout\) # ((!\inst13|Equal6~0_combout\ & (\dinfrared~combout\(1) $ (\dinfrared~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dinfrared~combout\(1),
	datab => \dinfrared~combout\(2),
	datac => \inst13|Equal6~0_combout\,
	datad => \inst13|speed~125_combout\,
	combout => \inst13|speed~142_combout\);

-- Location: LCCOMB_X13_Y10_N14
\inst13|direction~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|direction~17_combout\ = (\inst13|mystate\(0)) # ((!\inst13|direction~regout\ & ((\inst13|WideOr0~combout\) # (!\inst13|mystate\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|mystate\(1),
	datab => \inst13|WideOr0~combout\,
	datac => \inst13|direction~regout\,
	datad => \inst13|mystate\(0),
	combout => \inst13|direction~17_combout\);

-- Location: LCCOMB_X18_Y11_N10
\inst13|degree~86\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|degree~86_combout\ = (!\inst13|mystate\(0) & (((!\inst13|WideOr0~combout\ & !\inst13|degree~44_combout\)) # (!\inst13|mystate\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|mystate\(0),
	datab => \inst13|mystate\(1),
	datac => \inst13|WideOr0~combout\,
	datad => \inst13|degree~44_combout\,
	combout => \inst13|degree~86_combout\);

-- Location: LCCOMB_X15_Y9_N6
\inst13|degree~88\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|degree~88_combout\ = (!\inst13|mystate\(0) & (((\inst13|degree\(0) & \inst13|WideOr0~combout\)) # (!\inst13|mystate\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|mystate\(1),
	datab => \inst13|degree\(0),
	datac => \inst13|mystate\(0),
	datad => \inst13|WideOr0~combout\,
	combout => \inst13|degree~88_combout\);

-- Location: LCCOMB_X20_Y10_N20
\inst18|Div0|auto_generated|divider|divider|StageOut[33]~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst18|Div0|auto_generated|divider|divider|StageOut[33]~47_combout\ = (\inst18|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\inst18|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- ((!\inst13|degree\(5)))) # (!\inst18|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & (\inst18|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datab => \inst18|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datac => \inst13|degree\(5),
	datad => \inst18|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \inst18|Div0|auto_generated|divider|divider|StageOut[33]~47_combout\);

-- Location: LCCOMB_X20_Y8_N12
\inst|Div2|auto_generated|divider|divider|StageOut[23]~64\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Div2|auto_generated|divider|divider|StageOut[23]~64_combout\ = (\inst|Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\inst|Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\inst13|display\(6))) # 
-- (!\inst|Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\inst|Div2|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|display\(6),
	datab => \inst|Div2|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datac => \inst|Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \inst|Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst|Div2|auto_generated|divider|divider|StageOut[23]~64_combout\);

-- Location: LCCOMB_X21_Y6_N22
\inst|Div2|auto_generated|divider|divider|StageOut[32]~67\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Div2|auto_generated|divider|divider|StageOut[32]~67_combout\ = (\inst|Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\inst|Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & (\inst13|display\(3))) # 
-- (!\inst|Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\inst|Div2|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datab => \inst13|display\(3),
	datac => \inst|Div2|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datad => \inst|Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \inst|Div2|auto_generated|divider|divider|StageOut[32]~67_combout\);

-- Location: LCCOMB_X18_Y6_N30
\inst|Mod2|auto_generated|divider|divider|StageOut[27]~66\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mod2|auto_generated|divider|divider|StageOut[27]~66_combout\ = (\inst|Mod2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\inst|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (\inst13|display\(4))) # 
-- (!\inst|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\inst|Mod2|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \inst13|display\(4),
	datac => \inst|Mod2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \inst|Mod2|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	combout => \inst|Mod2|auto_generated|divider|divider|StageOut[27]~66_combout\);

-- Location: LCCOMB_X15_Y8_N20
\inst13|lastsign3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|lastsign3~0_combout\ = !\Signs~combout\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Signs~combout\(3),
	combout => \inst13|lastsign3~0_combout\);

-- Location: PIN_5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Button[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Button(5),
	combout => \Button~combout\(5));

-- Location: PIN_6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Button[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Button(4),
	combout => \Button~combout\(4));

-- Location: PIN_8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Button[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Button(3),
	combout => \Button~combout\(3));

-- Location: PIN_10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Button[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Button(2),
	combout => \Button~combout\(2));

-- Location: PIN_11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Button[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Button(1),
	combout => \Button~combout\(1));

-- Location: CLKCTRL_G1
\inst17|out_8~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst17|out_8~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst17|out_8~clkctrl_outclk\);

-- Location: CLKCTRL_G0
\inst13|clk_9600~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst13|clk_9600~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst13|clk_9600~clkctrl_outclk\);

-- Location: LCCOMB_X19_Y11_N28
\inst12|dis[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst12|dis[0]~feeder_combout\ = \inst12|cnt\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst12|cnt\(0),
	combout => \inst12|dis[0]~feeder_combout\);

-- Location: LCCOMB_X26_Y8_N12
\inst17|cnt9600[1]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|cnt9600[1]~24_combout\ = (\inst17|cnt9600\(1) & (!\inst17|cnt9600[0]~23\)) # (!\inst17|cnt9600\(1) & ((\inst17|cnt9600[0]~23\) # (GND)))
-- \inst17|cnt9600[1]~25\ = CARRY((!\inst17|cnt9600[0]~23\) # (!\inst17|cnt9600\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst17|cnt9600\(1),
	datad => VCC,
	cin => \inst17|cnt9600[0]~23\,
	combout => \inst17|cnt9600[1]~24_combout\,
	cout => \inst17|cnt9600[1]~25\);

-- Location: LCFF_X26_Y8_N13
\inst17|cnt9600[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst17|cnt9600[1]~24_combout\,
	sclr => \inst17|LessThan1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst17|cnt9600\(1));

-- Location: LCCOMB_X26_Y8_N14
\inst17|cnt9600[2]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|cnt9600[2]~26_combout\ = (\inst17|cnt9600\(2) & (\inst17|cnt9600[1]~25\ $ (GND))) # (!\inst17|cnt9600\(2) & (!\inst17|cnt9600[1]~25\ & VCC))
-- \inst17|cnt9600[2]~27\ = CARRY((\inst17|cnt9600\(2) & !\inst17|cnt9600[1]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst17|cnt9600\(2),
	datad => VCC,
	cin => \inst17|cnt9600[1]~25\,
	combout => \inst17|cnt9600[2]~26_combout\,
	cout => \inst17|cnt9600[2]~27\);

-- Location: LCFF_X26_Y8_N15
\inst17|cnt9600[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst17|cnt9600[2]~26_combout\,
	sclr => \inst17|LessThan1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst17|cnt9600\(2));

-- Location: LCCOMB_X26_Y8_N16
\inst17|cnt9600[3]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|cnt9600[3]~28_combout\ = (\inst17|cnt9600\(3) & (!\inst17|cnt9600[2]~27\)) # (!\inst17|cnt9600\(3) & ((\inst17|cnt9600[2]~27\) # (GND)))
-- \inst17|cnt9600[3]~29\ = CARRY((!\inst17|cnt9600[2]~27\) # (!\inst17|cnt9600\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|cnt9600\(3),
	datad => VCC,
	cin => \inst17|cnt9600[2]~27\,
	combout => \inst17|cnt9600[3]~28_combout\,
	cout => \inst17|cnt9600[3]~29\);

-- Location: LCCOMB_X26_Y8_N18
\inst17|cnt9600[4]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|cnt9600[4]~30_combout\ = (\inst17|cnt9600\(4) & (\inst17|cnt9600[3]~29\ $ (GND))) # (!\inst17|cnt9600\(4) & (!\inst17|cnt9600[3]~29\ & VCC))
-- \inst17|cnt9600[4]~31\ = CARRY((\inst17|cnt9600\(4) & !\inst17|cnt9600[3]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst17|cnt9600\(4),
	datad => VCC,
	cin => \inst17|cnt9600[3]~29\,
	combout => \inst17|cnt9600[4]~30_combout\,
	cout => \inst17|cnt9600[4]~31\);

-- Location: LCFF_X26_Y8_N19
\inst17|cnt9600[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst17|cnt9600[4]~30_combout\,
	sclr => \inst17|LessThan1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst17|cnt9600\(4));

-- Location: LCCOMB_X26_Y8_N22
\inst17|cnt9600[6]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|cnt9600[6]~34_combout\ = (\inst17|cnt9600\(6) & (\inst17|cnt9600[5]~33\ $ (GND))) # (!\inst17|cnt9600\(6) & (!\inst17|cnt9600[5]~33\ & VCC))
-- \inst17|cnt9600[6]~35\ = CARRY((\inst17|cnt9600\(6) & !\inst17|cnt9600[5]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst17|cnt9600\(6),
	datad => VCC,
	cin => \inst17|cnt9600[5]~33\,
	combout => \inst17|cnt9600[6]~34_combout\,
	cout => \inst17|cnt9600[6]~35\);

-- Location: LCFF_X26_Y8_N23
\inst17|cnt9600[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst17|cnt9600[6]~34_combout\,
	sclr => \inst17|LessThan1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst17|cnt9600\(6));

-- Location: LCCOMB_X26_Y8_N24
\inst17|cnt9600[7]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|cnt9600[7]~36_combout\ = (\inst17|cnt9600\(7) & (!\inst17|cnt9600[6]~35\)) # (!\inst17|cnt9600\(7) & ((\inst17|cnt9600[6]~35\) # (GND)))
-- \inst17|cnt9600[7]~37\ = CARRY((!\inst17|cnt9600[6]~35\) # (!\inst17|cnt9600\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst17|cnt9600\(7),
	datad => VCC,
	cin => \inst17|cnt9600[6]~35\,
	combout => \inst17|cnt9600[7]~36_combout\,
	cout => \inst17|cnt9600[7]~37\);

-- Location: LCFF_X26_Y8_N25
\inst17|cnt9600[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst17|cnt9600[7]~36_combout\,
	sclr => \inst17|LessThan1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst17|cnt9600\(7));

-- Location: LCCOMB_X26_Y8_N26
\inst17|cnt9600[8]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|cnt9600[8]~38_combout\ = (\inst17|cnt9600\(8) & (\inst17|cnt9600[7]~37\ $ (GND))) # (!\inst17|cnt9600\(8) & (!\inst17|cnt9600[7]~37\ & VCC))
-- \inst17|cnt9600[8]~39\ = CARRY((\inst17|cnt9600\(8) & !\inst17|cnt9600[7]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst17|cnt9600\(8),
	datad => VCC,
	cin => \inst17|cnt9600[7]~37\,
	combout => \inst17|cnt9600[8]~38_combout\,
	cout => \inst17|cnt9600[8]~39\);

-- Location: LCFF_X26_Y8_N27
\inst17|cnt9600[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst17|cnt9600[8]~38_combout\,
	sclr => \inst17|LessThan1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst17|cnt9600\(8));

-- Location: LCCOMB_X26_Y8_N28
\inst17|cnt9600[9]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|cnt9600[9]~40_combout\ = (\inst17|cnt9600\(9) & (!\inst17|cnt9600[8]~39\)) # (!\inst17|cnt9600\(9) & ((\inst17|cnt9600[8]~39\) # (GND)))
-- \inst17|cnt9600[9]~41\ = CARRY((!\inst17|cnt9600[8]~39\) # (!\inst17|cnt9600\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst17|cnt9600\(9),
	datad => VCC,
	cin => \inst17|cnt9600[8]~39\,
	combout => \inst17|cnt9600[9]~40_combout\,
	cout => \inst17|cnt9600[9]~41\);

-- Location: LCFF_X26_Y8_N29
\inst17|cnt9600[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst17|cnt9600[9]~40_combout\,
	sclr => \inst17|LessThan1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst17|cnt9600\(9));

-- Location: LCCOMB_X26_Y8_N30
\inst17|cnt9600[10]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|cnt9600[10]~42_combout\ = (\inst17|cnt9600\(10) & (\inst17|cnt9600[9]~41\ $ (GND))) # (!\inst17|cnt9600\(10) & (!\inst17|cnt9600[9]~41\ & VCC))
-- \inst17|cnt9600[10]~43\ = CARRY((\inst17|cnt9600\(10) & !\inst17|cnt9600[9]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst17|cnt9600\(10),
	datad => VCC,
	cin => \inst17|cnt9600[9]~41\,
	combout => \inst17|cnt9600[10]~42_combout\,
	cout => \inst17|cnt9600[10]~43\);

-- Location: LCFF_X26_Y8_N31
\inst17|cnt9600[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst17|cnt9600[10]~42_combout\,
	sclr => \inst17|LessThan1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst17|cnt9600\(10));

-- Location: LCCOMB_X26_Y7_N0
\inst17|cnt9600[11]~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|cnt9600[11]~44_combout\ = (\inst17|cnt9600\(11) & (!\inst17|cnt9600[10]~43\)) # (!\inst17|cnt9600\(11) & ((\inst17|cnt9600[10]~43\) # (GND)))
-- \inst17|cnt9600[11]~45\ = CARRY((!\inst17|cnt9600[10]~43\) # (!\inst17|cnt9600\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst17|cnt9600\(11),
	datad => VCC,
	cin => \inst17|cnt9600[10]~43\,
	combout => \inst17|cnt9600[11]~44_combout\,
	cout => \inst17|cnt9600[11]~45\);

-- Location: LCFF_X26_Y7_N1
\inst17|cnt9600[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst17|cnt9600[11]~44_combout\,
	sclr => \inst17|LessThan1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst17|cnt9600\(11));

-- Location: LCCOMB_X26_Y7_N2
\inst17|cnt9600[12]~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|cnt9600[12]~46_combout\ = (\inst17|cnt9600\(12) & (\inst17|cnt9600[11]~45\ $ (GND))) # (!\inst17|cnt9600\(12) & (!\inst17|cnt9600[11]~45\ & VCC))
-- \inst17|cnt9600[12]~47\ = CARRY((\inst17|cnt9600\(12) & !\inst17|cnt9600[11]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst17|cnt9600\(12),
	datad => VCC,
	cin => \inst17|cnt9600[11]~45\,
	combout => \inst17|cnt9600[12]~46_combout\,
	cout => \inst17|cnt9600[12]~47\);

-- Location: LCFF_X26_Y7_N3
\inst17|cnt9600[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst17|cnt9600[12]~46_combout\,
	sclr => \inst17|LessThan1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst17|cnt9600\(12));

-- Location: LCCOMB_X26_Y7_N4
\inst17|cnt9600[13]~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|cnt9600[13]~48_combout\ = (\inst17|cnt9600\(13) & (!\inst17|cnt9600[12]~47\)) # (!\inst17|cnt9600\(13) & ((\inst17|cnt9600[12]~47\) # (GND)))
-- \inst17|cnt9600[13]~49\ = CARRY((!\inst17|cnt9600[12]~47\) # (!\inst17|cnt9600\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst17|cnt9600\(13),
	datad => VCC,
	cin => \inst17|cnt9600[12]~47\,
	combout => \inst17|cnt9600[13]~48_combout\,
	cout => \inst17|cnt9600[13]~49\);

-- Location: LCFF_X26_Y7_N5
\inst17|cnt9600[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst17|cnt9600[13]~48_combout\,
	sclr => \inst17|LessThan1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst17|cnt9600\(13));

-- Location: LCCOMB_X26_Y7_N8
\inst17|cnt9600[15]~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|cnt9600[15]~52_combout\ = (\inst17|cnt9600\(15) & (!\inst17|cnt9600[14]~51\)) # (!\inst17|cnt9600\(15) & ((\inst17|cnt9600[14]~51\) # (GND)))
-- \inst17|cnt9600[15]~53\ = CARRY((!\inst17|cnt9600[14]~51\) # (!\inst17|cnt9600\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst17|cnt9600\(15),
	datad => VCC,
	cin => \inst17|cnt9600[14]~51\,
	combout => \inst17|cnt9600[15]~52_combout\,
	cout => \inst17|cnt9600[15]~53\);

-- Location: LCFF_X26_Y7_N9
\inst17|cnt9600[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst17|cnt9600[15]~52_combout\,
	sclr => \inst17|LessThan1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst17|cnt9600\(15));

-- Location: LCCOMB_X26_Y7_N10
\inst17|cnt9600[16]~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|cnt9600[16]~54_combout\ = (\inst17|cnt9600\(16) & (\inst17|cnt9600[15]~53\ $ (GND))) # (!\inst17|cnt9600\(16) & (!\inst17|cnt9600[15]~53\ & VCC))
-- \inst17|cnt9600[16]~55\ = CARRY((\inst17|cnt9600\(16) & !\inst17|cnt9600[15]~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|cnt9600\(16),
	datad => VCC,
	cin => \inst17|cnt9600[15]~53\,
	combout => \inst17|cnt9600[16]~54_combout\,
	cout => \inst17|cnt9600[16]~55\);

-- Location: LCCOMB_X26_Y7_N14
\inst17|cnt9600[18]~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|cnt9600[18]~58_combout\ = (\inst17|cnt9600\(18) & (\inst17|cnt9600[17]~57\ $ (GND))) # (!\inst17|cnt9600\(18) & (!\inst17|cnt9600[17]~57\ & VCC))
-- \inst17|cnt9600[18]~59\ = CARRY((\inst17|cnt9600\(18) & !\inst17|cnt9600[17]~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst17|cnt9600\(18),
	datad => VCC,
	cin => \inst17|cnt9600[17]~57\,
	combout => \inst17|cnt9600[18]~58_combout\,
	cout => \inst17|cnt9600[18]~59\);

-- Location: LCFF_X26_Y7_N15
\inst17|cnt9600[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst17|cnt9600[18]~58_combout\,
	sclr => \inst17|LessThan1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst17|cnt9600\(18));

-- Location: LCFF_X26_Y7_N17
\inst17|cnt9600[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst17|cnt9600[19]~60_combout\,
	sclr => \inst17|LessThan1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst17|cnt9600\(19));

-- Location: LCFF_X26_Y7_N11
\inst17|cnt9600[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst17|cnt9600[16]~54_combout\,
	sclr => \inst17|LessThan1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst17|cnt9600\(16));

-- Location: LCCOMB_X26_Y7_N30
\inst17|LessThan1~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|LessThan1~5_combout\ = (!\inst17|cnt9600\(17) & (!\inst17|cnt9600\(18) & (!\inst17|cnt9600\(19) & !\inst17|cnt9600\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|cnt9600\(17),
	datab => \inst17|cnt9600\(18),
	datac => \inst17|cnt9600\(19),
	datad => \inst17|cnt9600\(16),
	combout => \inst17|LessThan1~5_combout\);

-- Location: LCCOMB_X26_Y7_N24
\inst17|LessThan1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|LessThan1~4_combout\ = (!\inst17|cnt9600\(14) & (!\inst17|cnt9600\(15) & (!\inst17|cnt9600\(13) & !\inst17|cnt9600\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|cnt9600\(14),
	datab => \inst17|cnt9600\(15),
	datac => \inst17|cnt9600\(13),
	datad => \inst17|cnt9600\(12),
	combout => \inst17|LessThan1~4_combout\);

-- Location: LCCOMB_X26_Y8_N8
\inst17|LessThan1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|LessThan1~0_combout\ = (!\inst17|cnt9600\(6) & (!\inst17|cnt9600\(7) & !\inst17|cnt9600\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst17|cnt9600\(6),
	datac => \inst17|cnt9600\(7),
	datad => \inst17|cnt9600\(8),
	combout => \inst17|LessThan1~0_combout\);

-- Location: LCFF_X26_Y8_N17
\inst17|cnt9600[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst17|cnt9600[3]~28_combout\,
	sclr => \inst17|LessThan1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst17|cnt9600\(3));

-- Location: LCCOMB_X26_Y8_N2
\inst17|LessThan1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|LessThan1~1_combout\ = ((!\inst17|cnt9600\(2) & ((!\inst17|cnt9600\(1)) # (!\inst17|cnt9600\(0))))) # (!\inst17|cnt9600\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|cnt9600\(0),
	datab => \inst17|cnt9600\(2),
	datac => \inst17|cnt9600\(3),
	datad => \inst17|cnt9600\(1),
	combout => \inst17|LessThan1~1_combout\);

-- Location: LCCOMB_X26_Y8_N0
\inst17|LessThan1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|LessThan1~2_combout\ = (\inst17|LessThan1~0_combout\ & (((!\inst17|cnt9600\(4) & \inst17|LessThan1~1_combout\)) # (!\inst17|cnt9600\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|cnt9600\(5),
	datab => \inst17|cnt9600\(4),
	datac => \inst17|LessThan1~0_combout\,
	datad => \inst17|LessThan1~1_combout\,
	combout => \inst17|LessThan1~2_combout\);

-- Location: LCCOMB_X26_Y7_N22
\inst17|LessThan1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|LessThan1~3_combout\ = ((!\inst17|cnt9600\(10) & ((\inst17|LessThan1~2_combout\) # (!\inst17|cnt9600\(9))))) # (!\inst17|cnt9600\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|cnt9600\(9),
	datab => \inst17|cnt9600\(11),
	datac => \inst17|cnt9600\(10),
	datad => \inst17|LessThan1~2_combout\,
	combout => \inst17|LessThan1~3_combout\);

-- Location: LCCOMB_X26_Y7_N26
\inst17|LessThan1~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|LessThan1~7_combout\ = (((!\inst17|LessThan1~3_combout\) # (!\inst17|LessThan1~4_combout\)) # (!\inst17|LessThan1~5_combout\)) # (!\inst17|LessThan1~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|LessThan1~6_combout\,
	datab => \inst17|LessThan1~5_combout\,
	datac => \inst17|LessThan1~4_combout\,
	datad => \inst17|LessThan1~3_combout\,
	combout => \inst17|LessThan1~7_combout\);

-- Location: LCCOMB_X27_Y7_N6
\inst17|out_9600~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|out_9600~0_combout\ = \inst17|out_9600~regout\ $ (\inst17|LessThan1~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst17|out_9600~regout\,
	datad => \inst17|LessThan1~7_combout\,
	combout => \inst17|out_9600~0_combout\);

-- Location: LCFF_X27_Y7_N7
\inst17|out_9600\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst17|out_9600~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst17|out_9600~regout\);

-- Location: CLKCTRL_G7
\inst17|out_9600~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst17|out_9600~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst17|out_9600~clkctrl_outclk\);

-- Location: LCCOMB_X12_Y11_N30
\inst11|status~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|status~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \inst11|status~feeder_combout\);

-- Location: LCCOMB_X12_Y11_N10
\inst11|resetStatus~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|resetStatus~0_combout\ = (\inst11|resetSend~regout\ & (\inst11|resetStatus~regout\)) # (!\inst11|resetSend~regout\ & ((\inst11|status~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|resetSend~regout\,
	datac => \inst11|resetStatus~regout\,
	datad => \inst11|status~regout\,
	combout => \inst11|resetStatus~0_combout\);

-- Location: LCFF_X12_Y11_N11
\inst11|resetStatus\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst17|out_9600~clkctrl_outclk\,
	datain => \inst11|resetStatus~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst11|resetStatus~regout\);

-- Location: LCFF_X12_Y11_N31
\inst11|status\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst17|out_1~regout\,
	datain => \inst11|status~feeder_combout\,
	aclr => \inst11|resetStatus~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst11|status~regout\);

-- Location: LCCOMB_X12_Y11_N6
\inst11|byteCount[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|byteCount[0]~1_combout\ = (\inst11|byteCount[3]~0_combout\ & (\inst11|byteCount\(0))) # (!\inst11|byteCount[3]~0_combout\ & (!\inst11|byteCount\(0) & !\inst11|status~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|byteCount[3]~0_combout\,
	datac => \inst11|byteCount\(0),
	datad => \inst11|status~regout\,
	combout => \inst11|byteCount[0]~1_combout\);

-- Location: LCFF_X12_Y11_N7
\inst11|byteCount[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst17|out_9600~clkctrl_outclk\,
	datain => \inst11|byteCount[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst11|byteCount\(0));

-- Location: LCCOMB_X12_Y11_N14
\inst11|byteCount[1]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|byteCount[1]~3_combout\ = (\inst11|byteCount[3]~0_combout\ & (((\inst11|byteCount\(1))))) # (!\inst11|byteCount[3]~0_combout\ & (!\inst11|status~regout\ & (\inst11|byteCount\(0) $ (!\inst11|byteCount\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|byteCount[3]~0_combout\,
	datab => \inst11|byteCount\(0),
	datac => \inst11|byteCount\(1),
	datad => \inst11|status~regout\,
	combout => \inst11|byteCount[1]~3_combout\);

-- Location: LCFF_X12_Y11_N15
\inst11|byteCount[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst17|out_9600~clkctrl_outclk\,
	datain => \inst11|byteCount[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst11|byteCount\(1));

-- Location: LCCOMB_X12_Y11_N4
\inst11|byteCount[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|byteCount[3]~4_combout\ = (\inst11|byteCount\(2)) # ((\inst11|byteCount\(0)) # ((\inst11|byteCount\(1)) # (\inst3|flag~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|byteCount\(2),
	datab => \inst11|byteCount\(0),
	datac => \inst11|byteCount\(1),
	datad => \inst3|flag~regout\,
	combout => \inst11|byteCount[3]~4_combout\);

-- Location: LCCOMB_X12_Y11_N8
\inst11|byteCount[3]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|byteCount[3]~5_combout\ = (\inst11|resetSend~regout\ & (((\inst11|byteCount\(3))))) # (!\inst11|resetSend~regout\ & ((\inst11|status~regout\) # ((\inst11|byteCount[3]~4_combout\ & \inst11|byteCount\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|resetSend~regout\,
	datab => \inst11|byteCount[3]~4_combout\,
	datac => \inst11|byteCount\(3),
	datad => \inst11|status~regout\,
	combout => \inst11|byteCount[3]~5_combout\);

-- Location: LCFF_X12_Y11_N9
\inst11|byteCount[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst17|out_9600~clkctrl_outclk\,
	datain => \inst11|byteCount[3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst11|byteCount\(3));

-- Location: LCCOMB_X12_Y11_N22
\inst11|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|Add0~0_combout\ = \inst11|byteCount\(2) $ (((\inst11|byteCount\(0)) # (\inst11|byteCount\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|byteCount\(2),
	datac => \inst11|byteCount\(0),
	datad => \inst11|byteCount\(1),
	combout => \inst11|Add0~0_combout\);

-- Location: LCCOMB_X12_Y11_N28
\inst11|byteCount[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|byteCount[2]~2_combout\ = (\inst11|byteCount[3]~0_combout\ & (((\inst11|byteCount\(2))))) # (!\inst11|byteCount[3]~0_combout\ & (!\inst11|Add0~0_combout\ & ((!\inst11|status~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|byteCount[3]~0_combout\,
	datab => \inst11|Add0~0_combout\,
	datac => \inst11|byteCount\(2),
	datad => \inst11|status~regout\,
	combout => \inst11|byteCount[2]~2_combout\);

-- Location: LCFF_X12_Y11_N29
\inst11|byteCount[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst17|out_9600~clkctrl_outclk\,
	datain => \inst11|byteCount[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst11|byteCount\(2));

-- Location: LCCOMB_X12_Y11_N20
\inst11|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|Equal0~0_combout\ = (!\inst11|byteCount\(0) & (!\inst11|byteCount\(3) & (!\inst11|byteCount\(1) & !\inst11|byteCount\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|byteCount\(0),
	datab => \inst11|byteCount\(3),
	datac => \inst11|byteCount\(1),
	datad => \inst11|byteCount\(2),
	combout => \inst11|Equal0~0_combout\);

-- Location: LCCOMB_X12_Y11_N18
\inst11|data[7]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|data[7]~2_combout\ = (!\inst11|resetSend~regout\ & (!\inst3|flag~regout\ & (!\inst11|Equal0~0_combout\ & !\inst11|status~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|resetSend~regout\,
	datab => \inst3|flag~regout\,
	datac => \inst11|Equal0~0_combout\,
	datad => \inst11|status~regout\,
	combout => \inst11|data[7]~2_combout\);

-- Location: LCFF_X12_Y11_N17
\inst11|resetSend\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst17|out_9600~clkctrl_outclk\,
	sdata => \inst11|data[7]~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst11|resetSend~regout\);

-- Location: LCCOMB_X12_Y11_N2
\inst11|send~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|send~0_combout\ = (\inst11|status~regout\ & (\inst11|send~regout\)) # (!\inst11|status~regout\ & (((!\inst11|Equal0~0_combout\ & !\inst3|flag~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|status~regout\,
	datab => \inst11|send~regout\,
	datac => \inst11|Equal0~0_combout\,
	datad => \inst3|flag~regout\,
	combout => \inst11|send~0_combout\);

-- Location: LCCOMB_X12_Y11_N12
\inst11|send~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|send~1_combout\ = (!\inst11|resetSend~regout\ & \inst11|send~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst11|resetSend~regout\,
	datad => \inst11|send~0_combout\,
	combout => \inst11|send~1_combout\);

-- Location: LCFF_X12_Y11_N13
\inst11|send\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst17|out_9600~clkctrl_outclk\,
	datain => \inst11|send~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst11|send~regout\);

-- Location: LCCOMB_X10_Y11_N28
\inst3|last_send~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|last_send~feeder_combout\ = \inst11|send~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst11|send~regout\,
	combout => \inst3|last_send~feeder_combout\);

-- Location: LCFF_X10_Y11_N29
\inst3|last_send\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst17|out_9600~clkctrl_outclk\,
	datain => \inst3|last_send~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|last_send~regout\);

-- Location: LCCOMB_X13_Y11_N30
\inst3|flag~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|flag~0_combout\ = (\inst3|flag~regout\ & (!\inst3|count\(3))) # (!\inst3|flag~regout\ & (((\inst11|send~regout\ & !\inst3|last_send~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|count\(3),
	datab => \inst11|send~regout\,
	datac => \inst3|flag~regout\,
	datad => \inst3|last_send~regout\,
	combout => \inst3|flag~0_combout\);

-- Location: LCFF_X13_Y11_N31
\inst3|flag\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst17|out_9600~clkctrl_outclk\,
	datain => \inst3|flag~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|flag~regout\);

-- Location: LCCOMB_X10_Y11_N14
\inst3|count~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|count~3_combout\ = (!\inst3|count\(3) & (\inst3|flag~regout\ & (\inst3|count\(0) $ (\inst3|count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|count\(0),
	datab => \inst3|count\(3),
	datac => \inst3|count\(1),
	datad => \inst3|flag~regout\,
	combout => \inst3|count~3_combout\);

-- Location: LCCOMB_X10_Y11_N16
\inst3|count[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|count[2]~2_combout\ = (\inst3|flag~regout\) # ((!\inst3|last_send~regout\ & \inst11|send~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|last_send~regout\,
	datac => \inst3|flag~regout\,
	datad => \inst11|send~regout\,
	combout => \inst3|count[2]~2_combout\);

-- Location: LCFF_X10_Y11_N15
\inst3|count[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst17|out_9600~clkctrl_outclk\,
	datain => \inst3|count~3_combout\,
	ena => \inst3|count[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|count\(1));

-- Location: LCCOMB_X10_Y11_N24
\inst3|count~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|count~4_combout\ = (!\inst3|count\(3) & (!\inst3|count\(0) & \inst3|flag~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|count\(3),
	datac => \inst3|count\(0),
	datad => \inst3|flag~regout\,
	combout => \inst3|count~4_combout\);

-- Location: LCFF_X10_Y11_N25
\inst3|count[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst17|out_9600~clkctrl_outclk\,
	datain => \inst3|count~4_combout\,
	ena => \inst3|count[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|count\(0));

-- Location: LCCOMB_X10_Y11_N12
\inst3|count~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|count~1_combout\ = (\inst3|count\(2) & (\inst3|count\(1) & (\inst3|count\(0) & \inst3|count~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|count\(2),
	datab => \inst3|count\(1),
	datac => \inst3|count\(0),
	datad => \inst3|count~0_combout\,
	combout => \inst3|count~1_combout\);

-- Location: LCFF_X10_Y11_N13
\inst3|count[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst17|out_9600~clkctrl_outclk\,
	datain => \inst3|count~1_combout\,
	ena => \inst3|count[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|count\(3));

-- Location: LCCOMB_X10_Y11_N26
\inst3|count~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|count~0_combout\ = (!\inst3|count\(3) & \inst3|flag~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|count\(3),
	datad => \inst3|flag~regout\,
	combout => \inst3|count~0_combout\);

-- Location: LCCOMB_X10_Y11_N30
\inst3|count~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|count~5_combout\ = (\inst3|count~0_combout\ & (\inst3|count\(2) $ (((\inst3|count\(0) & \inst3|count\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|count\(0),
	datab => \inst3|count~0_combout\,
	datac => \inst3|count\(2),
	datad => \inst3|count\(1),
	combout => \inst3|count~5_combout\);

-- Location: LCFF_X10_Y11_N31
\inst3|count[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst17|out_9600~clkctrl_outclk\,
	datain => \inst3|count~5_combout\,
	ena => \inst3|count[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|count\(2));

-- Location: LCCOMB_X13_Y9_N2
\inst11|data[0]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|data[0]~4_combout\ = (\inst11|byteCount\(3) & ((\inst11|byteCount\(0)) # ((\inst11|byteCount\(2)) # (\inst11|byteCount\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|byteCount\(0),
	datab => \inst11|byteCount\(2),
	datac => \inst11|byteCount\(3),
	datad => \inst11|byteCount\(1),
	combout => \inst11|data[0]~4_combout\);

-- Location: LCCOMB_X14_Y6_N8
\inst9|Selector3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|Selector3~0_combout\ = (\inst9|count\(3) & ((\inst9|state.01~regout\) # (!\inst9|state.00~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|state.00~regout\,
	datab => \inst9|count\(3),
	datac => \inst9|state.01~regout\,
	combout => \inst9|Selector3~0_combout\);

-- Location: LCCOMB_X14_Y6_N2
\inst9|Selector1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|Selector1~1_combout\ = (!\inst9|count\(3) & \inst9|state.01~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|count\(3),
	datac => \inst9|state.01~regout\,
	combout => \inst9|Selector1~1_combout\);

-- Location: LCCOMB_X14_Y6_N14
\inst9|Selector6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|Selector6~0_combout\ = (\inst9|count\(0) & (((\inst9|count\(3) & \inst9|state.01~regout\)) # (!\inst9|state.00~regout\))) # (!\inst9|count\(0) & (((!\inst9|count\(3) & \inst9|state.01~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|state.00~regout\,
	datab => \inst9|count\(3),
	datac => \inst9|count\(0),
	datad => \inst9|state.01~regout\,
	combout => \inst9|Selector6~0_combout\);

-- Location: LCFF_X14_Y6_N15
\inst9|count[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst17|out_9600~clkctrl_outclk\,
	datain => \inst9|Selector6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|count\(0));

-- Location: LCCOMB_X14_Y6_N24
\inst9|Selector5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|Selector5~1_combout\ = (\inst9|count\(1) & ((\inst9|Selector5~0_combout\) # ((\inst9|Selector1~1_combout\ & !\inst9|count\(0))))) # (!\inst9|count\(1) & (((\inst9|Selector1~1_combout\ & \inst9|count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|Selector5~0_combout\,
	datab => \inst9|Selector1~1_combout\,
	datac => \inst9|count\(1),
	datad => \inst9|count\(0),
	combout => \inst9|Selector5~1_combout\);

-- Location: LCFF_X14_Y6_N25
\inst9|count[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst17|out_9600~clkctrl_outclk\,
	datain => \inst9|Selector5~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|count\(1));

-- Location: LCCOMB_X14_Y6_N30
\inst9|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|Add0~0_combout\ = (\inst9|count\(1) & \inst9|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst9|count\(1),
	datad => \inst9|count\(0),
	combout => \inst9|Add0~0_combout\);

-- Location: LCCOMB_X14_Y6_N6
\inst9|Selector3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|Selector3~1_combout\ = (\inst9|Selector3~0_combout\) # ((\inst9|count\(2) & (\inst9|state.01~regout\ & \inst9|Add0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|count\(2),
	datab => \inst9|Selector3~0_combout\,
	datac => \inst9|state.01~regout\,
	datad => \inst9|Add0~0_combout\,
	combout => \inst9|Selector3~1_combout\);

-- Location: LCFF_X14_Y6_N7
\inst9|count[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst17|out_9600~clkctrl_outclk\,
	datain => \inst9|Selector3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|count\(3));

-- Location: PIN_135,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\rxd~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_rxd,
	combout => \rxd~combout\);

-- Location: LCCOMB_X14_Y6_N28
\inst9|Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|Selector1~0_combout\ = (\inst9|state.00~regout\ & (!\inst9|count\(3) & (\inst9|state.01~regout\))) # (!\inst9|state.00~regout\ & (((!\inst9|count\(3) & \inst9|state.01~regout\)) # (!\rxd~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|state.00~regout\,
	datab => \inst9|count\(3),
	datac => \inst9|state.01~regout\,
	datad => \rxd~combout\,
	combout => \inst9|Selector1~0_combout\);

-- Location: LCFF_X14_Y6_N29
\inst9|state.01\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst17|out_9600~clkctrl_outclk\,
	datain => \inst9|Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|state.01~regout\);

-- Location: LCCOMB_X14_Y6_N10
\inst9|Selector4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|Selector4~0_combout\ = (\inst9|count\(2) & ((\inst9|Selector5~0_combout\) # ((\inst9|Selector1~1_combout\ & !\inst9|Add0~0_combout\)))) # (!\inst9|count\(2) & (((\inst9|Selector1~1_combout\ & \inst9|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|Selector5~0_combout\,
	datab => \inst9|Selector1~1_combout\,
	datac => \inst9|count\(2),
	datad => \inst9|Add0~0_combout\,
	combout => \inst9|Selector4~0_combout\);

-- Location: LCFF_X14_Y6_N11
\inst9|count[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst17|out_9600~clkctrl_outclk\,
	datain => \inst9|Selector4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|count\(2));

-- Location: LCCOMB_X14_Y6_N20
\inst9|Decoder0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|Decoder0~3_combout\ = (!\inst9|count\(3) & (\inst9|state.01~regout\ & \inst9|count\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|count\(3),
	datac => \inst9|state.01~regout\,
	datad => \inst9|count\(2),
	combout => \inst9|Decoder0~3_combout\);

-- Location: LCCOMB_X13_Y6_N14
\inst9|data[7]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|data[7]~6_combout\ = (\inst9|Decoder0~3_combout\ & ((\inst9|Add0~0_combout\ & (\rxd~combout\)) # (!\inst9|Add0~0_combout\ & ((\inst9|data\(7)))))) # (!\inst9|Decoder0~3_combout\ & (((\inst9|data\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rxd~combout\,
	datab => \inst9|Decoder0~3_combout\,
	datac => \inst9|data\(7),
	datad => \inst9|Add0~0_combout\,
	combout => \inst9|data[7]~6_combout\);

-- Location: LCFF_X13_Y6_N15
\inst9|data[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst17|out_9600~clkctrl_outclk\,
	datain => \inst9|data[7]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|data\(7));

-- Location: LCCOMB_X14_Y6_N18
\inst9|Decoder0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|Decoder0~4_combout\ = (\inst9|count\(1) & (!\inst9|count\(3) & (\inst9|state.01~regout\ & \inst9|count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|count\(1),
	datab => \inst9|count\(3),
	datac => \inst9|state.01~regout\,
	datad => \inst9|count\(2),
	combout => \inst9|Decoder0~4_combout\);

-- Location: LCCOMB_X13_Y6_N0
\inst9|data[6]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|data[6]~7_combout\ = (\inst9|count\(0) & (((\inst9|data\(6))))) # (!\inst9|count\(0) & ((\inst9|Decoder0~4_combout\ & (\rxd~combout\)) # (!\inst9|Decoder0~4_combout\ & ((\inst9|data\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rxd~combout\,
	datab => \inst9|count\(0),
	datac => \inst9|data\(6),
	datad => \inst9|Decoder0~4_combout\,
	combout => \inst9|data[6]~7_combout\);

-- Location: LCFF_X13_Y6_N1
\inst9|data[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst17|out_9600~clkctrl_outclk\,
	datain => \inst9|data[6]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|data\(6));

-- Location: LCCOMB_X13_Y6_N28
\inst13|state~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|state~11_combout\ = (!\inst9|data\(7) & \inst9|data\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst9|data\(7),
	datad => \inst9|data\(6),
	combout => \inst13|state~11_combout\);

-- Location: LCFF_X13_Y6_N29
\inst13|state.01\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst13|clk_9600~clkctrl_outclk\,
	datain => \inst13|state~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst13|state.01~regout\);

-- Location: PIN_3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Button[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Button(7),
	combout => \Button~combout\(7));

-- Location: LCCOMB_X18_Y8_N0
\inst13|display[7]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|display[7]~0_combout\ = (\inst13|isSet~regout\ & ((\inst13|initialSpeed\(7)))) # (!\inst13|isSet~regout\ & (\Button~combout\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|isSet~regout\,
	datab => \Button~combout\(7),
	datad => \inst13|initialSpeed\(7),
	combout => \inst13|display[7]~0_combout\);

-- Location: LCCOMB_X18_Y8_N6
\inst13|initialSpeed~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|initialSpeed~0_combout\ = (!\inst13|state.01~regout\ & \inst13|display[7]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|state.01~regout\,
	datad => \inst13|display[7]~0_combout\,
	combout => \inst13|initialSpeed~0_combout\);

-- Location: LCCOMB_X13_Y6_N8
\inst13|state~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|state~9_combout\ = (\inst9|data\(7) & !\inst9|data\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst9|data\(7),
	datad => \inst9|data\(6),
	combout => \inst13|state~9_combout\);

-- Location: LCFF_X13_Y6_N9
\inst13|state.10\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst13|clk_9600~clkctrl_outclk\,
	datain => \inst13|state~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst13|state.10~regout\);

-- Location: LCCOMB_X15_Y4_N2
\inst13|DelayCnt[1]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|DelayCnt[1]~32_combout\ = (\inst13|DelayCnt\(0) & (\inst13|DelayCnt\(1) $ (VCC))) # (!\inst13|DelayCnt\(0) & (\inst13|DelayCnt\(1) & VCC))
-- \inst13|DelayCnt[1]~33\ = CARRY((\inst13|DelayCnt\(0) & \inst13|DelayCnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|DelayCnt\(0),
	datab => \inst13|DelayCnt\(1),
	datad => VCC,
	combout => \inst13|DelayCnt[1]~32_combout\,
	cout => \inst13|DelayCnt[1]~33\);

-- Location: LCCOMB_X13_Y6_N18
\inst13|state~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|state~10_combout\ = (\inst9|data\(7)) # (\inst9|data\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst9|data\(7),
	datad => \inst9|data\(6),
	combout => \inst13|state~10_combout\);

-- Location: LCFF_X13_Y6_N19
\inst13|state.00\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst13|clk_9600~clkctrl_outclk\,
	datain => \inst13|state~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst13|state.00~regout\);

-- Location: LCCOMB_X14_Y4_N22
\inst13|DelayCnt[30]~93\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|DelayCnt[30]~93_combout\ = (!\inst13|state.01~regout\ & (\inst13|LessThan2~7_combout\ & (\inst13|state.00~regout\ & !\inst13|state.10~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|state.01~regout\,
	datab => \inst13|LessThan2~7_combout\,
	datac => \inst13|state.00~regout\,
	datad => \inst13|state.10~regout\,
	combout => \inst13|DelayCnt[30]~93_combout\);

-- Location: LCFF_X15_Y4_N3
\inst13|DelayCnt[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst13|DelayCnt[1]~32_combout\,
	ena => \inst13|DelayCnt[30]~93_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst13|DelayCnt\(1));

-- Location: LCCOMB_X15_Y4_N4
\inst13|DelayCnt[2]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|DelayCnt[2]~34_combout\ = (\inst13|DelayCnt\(2) & (!\inst13|DelayCnt[1]~33\)) # (!\inst13|DelayCnt\(2) & ((\inst13|DelayCnt[1]~33\) # (GND)))
-- \inst13|DelayCnt[2]~35\ = CARRY((!\inst13|DelayCnt[1]~33\) # (!\inst13|DelayCnt\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst13|DelayCnt\(2),
	datad => VCC,
	cin => \inst13|DelayCnt[1]~33\,
	combout => \inst13|DelayCnt[2]~34_combout\,
	cout => \inst13|DelayCnt[2]~35\);

-- Location: LCFF_X15_Y4_N5
\inst13|DelayCnt[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst13|DelayCnt[2]~34_combout\,
	ena => \inst13|DelayCnt[30]~93_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst13|DelayCnt\(2));

-- Location: LCCOMB_X15_Y4_N8
\inst13|DelayCnt[4]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|DelayCnt[4]~38_combout\ = (\inst13|DelayCnt\(4) & (!\inst13|DelayCnt[3]~37\)) # (!\inst13|DelayCnt\(4) & ((\inst13|DelayCnt[3]~37\) # (GND)))
-- \inst13|DelayCnt[4]~39\ = CARRY((!\inst13|DelayCnt[3]~37\) # (!\inst13|DelayCnt\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst13|DelayCnt\(4),
	datad => VCC,
	cin => \inst13|DelayCnt[3]~37\,
	combout => \inst13|DelayCnt[4]~38_combout\,
	cout => \inst13|DelayCnt[4]~39\);

-- Location: LCFF_X15_Y4_N9
\inst13|DelayCnt[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst13|DelayCnt[4]~38_combout\,
	ena => \inst13|DelayCnt[30]~93_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst13|DelayCnt\(4));

-- Location: LCCOMB_X15_Y4_N14
\inst13|DelayCnt[7]~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|DelayCnt[7]~44_combout\ = (\inst13|DelayCnt\(7) & (\inst13|DelayCnt[6]~43\ $ (GND))) # (!\inst13|DelayCnt\(7) & (!\inst13|DelayCnt[6]~43\ & VCC))
-- \inst13|DelayCnt[7]~45\ = CARRY((\inst13|DelayCnt\(7) & !\inst13|DelayCnt[6]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst13|DelayCnt\(7),
	datad => VCC,
	cin => \inst13|DelayCnt[6]~43\,
	combout => \inst13|DelayCnt[7]~44_combout\,
	cout => \inst13|DelayCnt[7]~45\);

-- Location: LCFF_X15_Y4_N15
\inst13|DelayCnt[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst13|DelayCnt[7]~44_combout\,
	ena => \inst13|DelayCnt[30]~93_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst13|DelayCnt\(7));

-- Location: LCCOMB_X15_Y4_N16
\inst13|DelayCnt[8]~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|DelayCnt[8]~46_combout\ = (\inst13|DelayCnt\(8) & (!\inst13|DelayCnt[7]~45\)) # (!\inst13|DelayCnt\(8) & ((\inst13|DelayCnt[7]~45\) # (GND)))
-- \inst13|DelayCnt[8]~47\ = CARRY((!\inst13|DelayCnt[7]~45\) # (!\inst13|DelayCnt\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst13|DelayCnt\(8),
	datad => VCC,
	cin => \inst13|DelayCnt[7]~45\,
	combout => \inst13|DelayCnt[8]~46_combout\,
	cout => \inst13|DelayCnt[8]~47\);

-- Location: LCFF_X15_Y4_N17
\inst13|DelayCnt[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst13|DelayCnt[8]~46_combout\,
	ena => \inst13|DelayCnt[30]~93_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst13|DelayCnt\(8));

-- Location: LCCOMB_X15_Y4_N18
\inst13|DelayCnt[9]~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|DelayCnt[9]~48_combout\ = (\inst13|DelayCnt\(9) & (\inst13|DelayCnt[8]~47\ $ (GND))) # (!\inst13|DelayCnt\(9) & (!\inst13|DelayCnt[8]~47\ & VCC))
-- \inst13|DelayCnt[9]~49\ = CARRY((\inst13|DelayCnt\(9) & !\inst13|DelayCnt[8]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|DelayCnt\(9),
	datad => VCC,
	cin => \inst13|DelayCnt[8]~47\,
	combout => \inst13|DelayCnt[9]~48_combout\,
	cout => \inst13|DelayCnt[9]~49\);

-- Location: LCCOMB_X15_Y4_N20
\inst13|DelayCnt[10]~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|DelayCnt[10]~50_combout\ = (\inst13|DelayCnt\(10) & (!\inst13|DelayCnt[9]~49\)) # (!\inst13|DelayCnt\(10) & ((\inst13|DelayCnt[9]~49\) # (GND)))
-- \inst13|DelayCnt[10]~51\ = CARRY((!\inst13|DelayCnt[9]~49\) # (!\inst13|DelayCnt\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst13|DelayCnt\(10),
	datad => VCC,
	cin => \inst13|DelayCnt[9]~49\,
	combout => \inst13|DelayCnt[10]~50_combout\,
	cout => \inst13|DelayCnt[10]~51\);

-- Location: LCFF_X15_Y4_N21
\inst13|DelayCnt[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst13|DelayCnt[10]~50_combout\,
	ena => \inst13|DelayCnt[30]~93_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst13|DelayCnt\(10));

-- Location: LCCOMB_X15_Y4_N22
\inst13|DelayCnt[11]~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|DelayCnt[11]~52_combout\ = (\inst13|DelayCnt\(11) & (\inst13|DelayCnt[10]~51\ $ (GND))) # (!\inst13|DelayCnt\(11) & (!\inst13|DelayCnt[10]~51\ & VCC))
-- \inst13|DelayCnt[11]~53\ = CARRY((\inst13|DelayCnt\(11) & !\inst13|DelayCnt[10]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst13|DelayCnt\(11),
	datad => VCC,
	cin => \inst13|DelayCnt[10]~51\,
	combout => \inst13|DelayCnt[11]~52_combout\,
	cout => \inst13|DelayCnt[11]~53\);

-- Location: LCFF_X15_Y4_N23
\inst13|DelayCnt[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst13|DelayCnt[11]~52_combout\,
	ena => \inst13|DelayCnt[30]~93_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst13|DelayCnt\(11));

-- Location: LCCOMB_X15_Y4_N26
\inst13|DelayCnt[13]~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|DelayCnt[13]~56_combout\ = (\inst13|DelayCnt\(13) & (\inst13|DelayCnt[12]~55\ $ (GND))) # (!\inst13|DelayCnt\(13) & (!\inst13|DelayCnt[12]~55\ & VCC))
-- \inst13|DelayCnt[13]~57\ = CARRY((\inst13|DelayCnt\(13) & !\inst13|DelayCnt[12]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst13|DelayCnt\(13),
	datad => VCC,
	cin => \inst13|DelayCnt[12]~55\,
	combout => \inst13|DelayCnt[13]~56_combout\,
	cout => \inst13|DelayCnt[13]~57\);

-- Location: LCFF_X15_Y4_N27
\inst13|DelayCnt[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst13|DelayCnt[13]~56_combout\,
	ena => \inst13|DelayCnt[30]~93_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst13|DelayCnt\(13));

-- Location: LCCOMB_X15_Y4_N28
\inst13|DelayCnt[14]~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|DelayCnt[14]~58_combout\ = (\inst13|DelayCnt\(14) & (!\inst13|DelayCnt[13]~57\)) # (!\inst13|DelayCnt\(14) & ((\inst13|DelayCnt[13]~57\) # (GND)))
-- \inst13|DelayCnt[14]~59\ = CARRY((!\inst13|DelayCnt[13]~57\) # (!\inst13|DelayCnt\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst13|DelayCnt\(14),
	datad => VCC,
	cin => \inst13|DelayCnt[13]~57\,
	combout => \inst13|DelayCnt[14]~58_combout\,
	cout => \inst13|DelayCnt[14]~59\);

-- Location: LCFF_X15_Y4_N29
\inst13|DelayCnt[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst13|DelayCnt[14]~58_combout\,
	ena => \inst13|DelayCnt[30]~93_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst13|DelayCnt\(14));

-- Location: LCCOMB_X15_Y4_N30
\inst13|DelayCnt[15]~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|DelayCnt[15]~60_combout\ = (\inst13|DelayCnt\(15) & (\inst13|DelayCnt[14]~59\ $ (GND))) # (!\inst13|DelayCnt\(15) & (!\inst13|DelayCnt[14]~59\ & VCC))
-- \inst13|DelayCnt[15]~61\ = CARRY((\inst13|DelayCnt\(15) & !\inst13|DelayCnt[14]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst13|DelayCnt\(15),
	datad => VCC,
	cin => \inst13|DelayCnt[14]~59\,
	combout => \inst13|DelayCnt[15]~60_combout\,
	cout => \inst13|DelayCnt[15]~61\);

-- Location: LCFF_X15_Y4_N31
\inst13|DelayCnt[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst13|DelayCnt[15]~60_combout\,
	ena => \inst13|DelayCnt[30]~93_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst13|DelayCnt\(15));

-- Location: LCCOMB_X15_Y3_N0
\inst13|DelayCnt[16]~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|DelayCnt[16]~62_combout\ = (\inst13|DelayCnt\(16) & (!\inst13|DelayCnt[15]~61\)) # (!\inst13|DelayCnt\(16) & ((\inst13|DelayCnt[15]~61\) # (GND)))
-- \inst13|DelayCnt[16]~63\ = CARRY((!\inst13|DelayCnt[15]~61\) # (!\inst13|DelayCnt\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst13|DelayCnt\(16),
	datad => VCC,
	cin => \inst13|DelayCnt[15]~61\,
	combout => \inst13|DelayCnt[16]~62_combout\,
	cout => \inst13|DelayCnt[16]~63\);

-- Location: LCFF_X15_Y3_N1
\inst13|DelayCnt[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst13|DelayCnt[16]~62_combout\,
	ena => \inst13|DelayCnt[30]~93_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst13|DelayCnt\(16));

-- Location: LCCOMB_X15_Y3_N2
\inst13|DelayCnt[17]~64\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|DelayCnt[17]~64_combout\ = (\inst13|DelayCnt\(17) & (\inst13|DelayCnt[16]~63\ $ (GND))) # (!\inst13|DelayCnt\(17) & (!\inst13|DelayCnt[16]~63\ & VCC))
-- \inst13|DelayCnt[17]~65\ = CARRY((\inst13|DelayCnt\(17) & !\inst13|DelayCnt[16]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst13|DelayCnt\(17),
	datad => VCC,
	cin => \inst13|DelayCnt[16]~63\,
	combout => \inst13|DelayCnt[17]~64_combout\,
	cout => \inst13|DelayCnt[17]~65\);

-- Location: LCFF_X15_Y3_N3
\inst13|DelayCnt[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst13|DelayCnt[17]~64_combout\,
	ena => \inst13|DelayCnt[30]~93_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst13|DelayCnt\(17));

-- Location: LCCOMB_X15_Y3_N4
\inst13|DelayCnt[18]~66\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|DelayCnt[18]~66_combout\ = (\inst13|DelayCnt\(18) & (!\inst13|DelayCnt[17]~65\)) # (!\inst13|DelayCnt\(18) & ((\inst13|DelayCnt[17]~65\) # (GND)))
-- \inst13|DelayCnt[18]~67\ = CARRY((!\inst13|DelayCnt[17]~65\) # (!\inst13|DelayCnt\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst13|DelayCnt\(18),
	datad => VCC,
	cin => \inst13|DelayCnt[17]~65\,
	combout => \inst13|DelayCnt[18]~66_combout\,
	cout => \inst13|DelayCnt[18]~67\);

-- Location: LCFF_X15_Y3_N5
\inst13|DelayCnt[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst13|DelayCnt[18]~66_combout\,
	ena => \inst13|DelayCnt[30]~93_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst13|DelayCnt\(18));

-- Location: LCCOMB_X15_Y3_N6
\inst13|DelayCnt[19]~68\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|DelayCnt[19]~68_combout\ = (\inst13|DelayCnt\(19) & (\inst13|DelayCnt[18]~67\ $ (GND))) # (!\inst13|DelayCnt\(19) & (!\inst13|DelayCnt[18]~67\ & VCC))
-- \inst13|DelayCnt[19]~69\ = CARRY((\inst13|DelayCnt\(19) & !\inst13|DelayCnt[18]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|DelayCnt\(19),
	datad => VCC,
	cin => \inst13|DelayCnt[18]~67\,
	combout => \inst13|DelayCnt[19]~68_combout\,
	cout => \inst13|DelayCnt[19]~69\);

-- Location: LCCOMB_X15_Y3_N8
\inst13|DelayCnt[20]~70\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|DelayCnt[20]~70_combout\ = (\inst13|DelayCnt\(20) & (!\inst13|DelayCnt[19]~69\)) # (!\inst13|DelayCnt\(20) & ((\inst13|DelayCnt[19]~69\) # (GND)))
-- \inst13|DelayCnt[20]~71\ = CARRY((!\inst13|DelayCnt[19]~69\) # (!\inst13|DelayCnt\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst13|DelayCnt\(20),
	datad => VCC,
	cin => \inst13|DelayCnt[19]~69\,
	combout => \inst13|DelayCnt[20]~70_combout\,
	cout => \inst13|DelayCnt[20]~71\);

-- Location: LCFF_X15_Y3_N9
\inst13|DelayCnt[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst13|DelayCnt[20]~70_combout\,
	ena => \inst13|DelayCnt[30]~93_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst13|DelayCnt\(20));

-- Location: LCCOMB_X15_Y3_N10
\inst13|DelayCnt[21]~72\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|DelayCnt[21]~72_combout\ = (\inst13|DelayCnt\(21) & (\inst13|DelayCnt[20]~71\ $ (GND))) # (!\inst13|DelayCnt\(21) & (!\inst13|DelayCnt[20]~71\ & VCC))
-- \inst13|DelayCnt[21]~73\ = CARRY((\inst13|DelayCnt\(21) & !\inst13|DelayCnt[20]~71\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|DelayCnt\(21),
	datad => VCC,
	cin => \inst13|DelayCnt[20]~71\,
	combout => \inst13|DelayCnt[21]~72_combout\,
	cout => \inst13|DelayCnt[21]~73\);

-- Location: LCCOMB_X15_Y3_N12
\inst13|DelayCnt[22]~74\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|DelayCnt[22]~74_combout\ = (\inst13|DelayCnt\(22) & (!\inst13|DelayCnt[21]~73\)) # (!\inst13|DelayCnt\(22) & ((\inst13|DelayCnt[21]~73\) # (GND)))
-- \inst13|DelayCnt[22]~75\ = CARRY((!\inst13|DelayCnt[21]~73\) # (!\inst13|DelayCnt\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|DelayCnt\(22),
	datad => VCC,
	cin => \inst13|DelayCnt[21]~73\,
	combout => \inst13|DelayCnt[22]~74_combout\,
	cout => \inst13|DelayCnt[22]~75\);

-- Location: LCCOMB_X15_Y3_N14
\inst13|DelayCnt[23]~76\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|DelayCnt[23]~76_combout\ = (\inst13|DelayCnt\(23) & (\inst13|DelayCnt[22]~75\ $ (GND))) # (!\inst13|DelayCnt\(23) & (!\inst13|DelayCnt[22]~75\ & VCC))
-- \inst13|DelayCnt[23]~77\ = CARRY((\inst13|DelayCnt\(23) & !\inst13|DelayCnt[22]~75\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst13|DelayCnt\(23),
	datad => VCC,
	cin => \inst13|DelayCnt[22]~75\,
	combout => \inst13|DelayCnt[23]~76_combout\,
	cout => \inst13|DelayCnt[23]~77\);

-- Location: LCFF_X15_Y3_N15
\inst13|DelayCnt[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst13|DelayCnt[23]~76_combout\,
	ena => \inst13|DelayCnt[30]~93_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst13|DelayCnt\(23));

-- Location: LCCOMB_X15_Y3_N18
\inst13|DelayCnt[25]~80\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|DelayCnt[25]~80_combout\ = (\inst13|DelayCnt\(25) & (\inst13|DelayCnt[24]~79\ $ (GND))) # (!\inst13|DelayCnt\(25) & (!\inst13|DelayCnt[24]~79\ & VCC))
-- \inst13|DelayCnt[25]~81\ = CARRY((\inst13|DelayCnt\(25) & !\inst13|DelayCnt[24]~79\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst13|DelayCnt\(25),
	datad => VCC,
	cin => \inst13|DelayCnt[24]~79\,
	combout => \inst13|DelayCnt[25]~80_combout\,
	cout => \inst13|DelayCnt[25]~81\);

-- Location: LCFF_X15_Y3_N19
\inst13|DelayCnt[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst13|DelayCnt[25]~80_combout\,
	ena => \inst13|DelayCnt[30]~93_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst13|DelayCnt\(25));

-- Location: LCCOMB_X15_Y3_N20
\inst13|DelayCnt[26]~82\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|DelayCnt[26]~82_combout\ = (\inst13|DelayCnt\(26) & (!\inst13|DelayCnt[25]~81\)) # (!\inst13|DelayCnt\(26) & ((\inst13|DelayCnt[25]~81\) # (GND)))
-- \inst13|DelayCnt[26]~83\ = CARRY((!\inst13|DelayCnt[25]~81\) # (!\inst13|DelayCnt\(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|DelayCnt\(26),
	datad => VCC,
	cin => \inst13|DelayCnt[25]~81\,
	combout => \inst13|DelayCnt[26]~82_combout\,
	cout => \inst13|DelayCnt[26]~83\);

-- Location: LCCOMB_X15_Y3_N22
\inst13|DelayCnt[27]~84\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|DelayCnt[27]~84_combout\ = (\inst13|DelayCnt\(27) & (\inst13|DelayCnt[26]~83\ $ (GND))) # (!\inst13|DelayCnt\(27) & (!\inst13|DelayCnt[26]~83\ & VCC))
-- \inst13|DelayCnt[27]~85\ = CARRY((\inst13|DelayCnt\(27) & !\inst13|DelayCnt[26]~83\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst13|DelayCnt\(27),
	datad => VCC,
	cin => \inst13|DelayCnt[26]~83\,
	combout => \inst13|DelayCnt[27]~84_combout\,
	cout => \inst13|DelayCnt[27]~85\);

-- Location: LCFF_X15_Y3_N23
\inst13|DelayCnt[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst13|DelayCnt[27]~84_combout\,
	ena => \inst13|DelayCnt[30]~93_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst13|DelayCnt\(27));

-- Location: LCCOMB_X15_Y3_N26
\inst13|DelayCnt[29]~88\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|DelayCnt[29]~88_combout\ = (\inst13|DelayCnt\(29) & (\inst13|DelayCnt[28]~87\ $ (GND))) # (!\inst13|DelayCnt\(29) & (!\inst13|DelayCnt[28]~87\ & VCC))
-- \inst13|DelayCnt[29]~89\ = CARRY((\inst13|DelayCnt\(29) & !\inst13|DelayCnt[28]~87\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst13|DelayCnt\(29),
	datad => VCC,
	cin => \inst13|DelayCnt[28]~87\,
	combout => \inst13|DelayCnt[29]~88_combout\,
	cout => \inst13|DelayCnt[29]~89\);

-- Location: LCFF_X15_Y3_N27
\inst13|DelayCnt[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst13|DelayCnt[29]~88_combout\,
	ena => \inst13|DelayCnt[30]~93_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst13|DelayCnt\(29));

-- Location: LCCOMB_X15_Y3_N28
\inst13|DelayCnt[30]~90\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|DelayCnt[30]~90_combout\ = \inst13|DelayCnt[29]~89\ $ (\inst13|DelayCnt\(30))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst13|DelayCnt\(30),
	cin => \inst13|DelayCnt[29]~89\,
	combout => \inst13|DelayCnt[30]~90_combout\);

-- Location: LCFF_X15_Y3_N29
\inst13|DelayCnt[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst13|DelayCnt[30]~90_combout\,
	ena => \inst13|DelayCnt[30]~93_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst13|DelayCnt\(30));

-- Location: LCFF_X15_Y3_N21
\inst13|DelayCnt[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst13|DelayCnt[26]~82_combout\,
	ena => \inst13|DelayCnt[30]~93_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst13|DelayCnt\(26));

-- Location: LCCOMB_X15_Y3_N30
\inst13|LessThan2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|LessThan2~0_combout\ = (!\inst13|DelayCnt\(28) & (!\inst13|DelayCnt\(27) & (!\inst13|DelayCnt\(26) & !\inst13|DelayCnt\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|DelayCnt\(28),
	datab => \inst13|DelayCnt\(27),
	datac => \inst13|DelayCnt\(26),
	datad => \inst13|DelayCnt\(25),
	combout => \inst13|LessThan2~0_combout\);

-- Location: LCFF_X15_Y3_N13
\inst13|DelayCnt[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst13|DelayCnt[22]~74_combout\,
	ena => \inst13|DelayCnt[30]~93_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst13|DelayCnt\(22));

-- Location: LCFF_X15_Y3_N11
\inst13|DelayCnt[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst13|DelayCnt[21]~72_combout\,
	ena => \inst13|DelayCnt[30]~93_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst13|DelayCnt\(21));

-- Location: LCFF_X15_Y3_N7
\inst13|DelayCnt[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst13|DelayCnt[19]~68_combout\,
	ena => \inst13|DelayCnt[30]~93_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst13|DelayCnt\(19));

-- Location: LCCOMB_X14_Y4_N14
\inst13|LessThan2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|LessThan2~1_combout\ = (!\inst13|DelayCnt\(18) & (!\inst13|DelayCnt\(17) & !\inst13|DelayCnt\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|DelayCnt\(18),
	datac => \inst13|DelayCnt\(17),
	datad => \inst13|DelayCnt\(19),
	combout => \inst13|LessThan2~1_combout\);

-- Location: LCFF_X15_Y4_N19
\inst13|DelayCnt[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst13|DelayCnt[9]~48_combout\,
	ena => \inst13|DelayCnt[30]~93_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst13|DelayCnt\(9));

-- Location: LCCOMB_X15_Y4_N0
\inst13|LessThan2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|LessThan2~2_combout\ = (((!\inst13|DelayCnt\(8) & !\inst13|DelayCnt\(9))) # (!\inst13|DelayCnt\(11))) # (!\inst13|DelayCnt\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|DelayCnt\(8),
	datab => \inst13|DelayCnt\(9),
	datac => \inst13|DelayCnt\(10),
	datad => \inst13|DelayCnt\(11),
	combout => \inst13|LessThan2~2_combout\);

-- Location: LCCOMB_X14_Y4_N12
\inst13|LessThan2~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|LessThan2~3_combout\ = (\inst13|DelayCnt\(13) & ((\inst13|DelayCnt\(12)) # (!\inst13|LessThan2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|DelayCnt\(12),
	datac => \inst13|LessThan2~2_combout\,
	datad => \inst13|DelayCnt\(13),
	combout => \inst13|LessThan2~3_combout\);

-- Location: LCCOMB_X14_Y4_N18
\inst13|LessThan2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|LessThan2~4_combout\ = (\inst13|DelayCnt\(16) & ((\inst13|DelayCnt\(14)) # ((\inst13|DelayCnt\(15)) # (\inst13|LessThan2~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|DelayCnt\(14),
	datab => \inst13|DelayCnt\(15),
	datac => \inst13|DelayCnt\(16),
	datad => \inst13|LessThan2~3_combout\,
	combout => \inst13|LessThan2~4_combout\);

-- Location: LCCOMB_X14_Y4_N28
\inst13|LessThan2~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|LessThan2~5_combout\ = (((\inst13|LessThan2~1_combout\ & !\inst13|LessThan2~4_combout\)) # (!\inst13|DelayCnt\(21))) # (!\inst13|DelayCnt\(20))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|DelayCnt\(20),
	datab => \inst13|DelayCnt\(21),
	datac => \inst13|LessThan2~1_combout\,
	datad => \inst13|LessThan2~4_combout\,
	combout => \inst13|LessThan2~5_combout\);

-- Location: LCCOMB_X14_Y4_N30
\inst13|LessThan2~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|LessThan2~6_combout\ = (\inst13|DelayCnt\(24) & ((\inst13|DelayCnt\(23)) # ((\inst13|DelayCnt\(22)) # (!\inst13|LessThan2~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|DelayCnt\(24),
	datab => \inst13|DelayCnt\(23),
	datac => \inst13|DelayCnt\(22),
	datad => \inst13|LessThan2~5_combout\,
	combout => \inst13|LessThan2~6_combout\);

-- Location: LCCOMB_X14_Y4_N20
\inst13|LessThan2~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|LessThan2~7_combout\ = (!\inst13|DelayCnt\(29) & (!\inst13|DelayCnt\(30) & (\inst13|LessThan2~0_combout\ & !\inst13|LessThan2~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|DelayCnt\(29),
	datab => \inst13|DelayCnt\(30),
	datac => \inst13|LessThan2~0_combout\,
	datad => \inst13|LessThan2~6_combout\,
	combout => \inst13|LessThan2~7_combout\);

-- Location: LCCOMB_X18_Y8_N28
\inst13|initialSpeed[7]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|initialSpeed[7]~1_combout\ = (\inst13|state.00~regout\ & ((\inst13|state.01~regout\) # ((!\inst13|state.10~regout\ & !\inst13|LessThan2~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|state.00~regout\,
	datab => \inst13|state.10~regout\,
	datac => \inst13|LessThan2~7_combout\,
	datad => \inst13|state.01~regout\,
	combout => \inst13|initialSpeed[7]~1_combout\);

-- Location: LCFF_X18_Y8_N7
\inst13|initialSpeed[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst13|initialSpeed~0_combout\,
	ena => \inst13|initialSpeed[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst13|initialSpeed\(7));

-- Location: LCCOMB_X18_Y8_N10
\inst13|isSet~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|isSet~0_combout\ = (\inst13|isSet~regout\) # (\inst13|state.01~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|isSet~regout\,
	datad => \inst13|state.01~regout\,
	combout => \inst13|isSet~0_combout\);

-- Location: LCFF_X18_Y8_N11
\inst13|isSet\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst13|isSet~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst13|isSet~regout\);

-- Location: LCCOMB_X17_Y8_N0
\inst13|display[5]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|display[5]~2_combout\ = (\inst13|isSet~regout\ & ((\inst13|initialSpeed\(5)))) # (!\inst13|isSet~regout\ & (\Button~combout\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Button~combout\(5),
	datac => \inst13|isSet~regout\,
	datad => \inst13|initialSpeed\(5),
	combout => \inst13|display[5]~2_combout\);

-- Location: LCCOMB_X17_Y8_N30
\inst13|initialSpeed~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|initialSpeed~3_combout\ = (\inst13|state.01~regout\ & (\inst9|data\(5))) # (!\inst13|state.01~regout\ & ((\inst13|display[5]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|data\(5),
	datab => \inst13|state.01~regout\,
	datad => \inst13|display[5]~2_combout\,
	combout => \inst13|initialSpeed~3_combout\);

-- Location: LCFF_X17_Y8_N31
\inst13|initialSpeed[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst13|initialSpeed~3_combout\,
	ena => \inst13|initialSpeed[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst13|initialSpeed\(5));

-- Location: LCCOMB_X18_Y7_N4
\inst13|display[4]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|display[4]~3_combout\ = (\inst13|isSet~regout\ & ((\inst13|initialSpeed\(4)))) # (!\inst13|isSet~regout\ & (\Button~combout\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Button~combout\(4),
	datac => \inst13|initialSpeed\(4),
	datad => \inst13|isSet~regout\,
	combout => \inst13|display[4]~3_combout\);

-- Location: LCCOMB_X18_Y7_N14
\inst13|initialSpeed~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|initialSpeed~4_combout\ = (\inst13|state.01~regout\ & (\inst9|data\(4))) # (!\inst13|state.01~regout\ & ((\inst13|display[4]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|data\(4),
	datab => \inst13|state.01~regout\,
	datac => \inst13|display[4]~3_combout\,
	combout => \inst13|initialSpeed~4_combout\);

-- Location: LCFF_X18_Y7_N15
\inst13|initialSpeed[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst13|initialSpeed~4_combout\,
	ena => \inst13|initialSpeed[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst13|initialSpeed\(4));

-- Location: LCCOMB_X14_Y6_N12
\inst9|Decoder0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|Decoder0~2_combout\ = (\inst9|count\(1) & (!\inst9|count\(3) & (\inst9|state.01~regout\ & !\inst9|count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|count\(1),
	datab => \inst9|count\(3),
	datac => \inst9|state.01~regout\,
	datad => \inst9|count\(2),
	combout => \inst9|Decoder0~2_combout\);

-- Location: LCCOMB_X15_Y6_N0
\inst9|data[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|data[3]~4_combout\ = (\inst9|count\(0) & ((\inst9|Decoder0~2_combout\ & (\rxd~combout\)) # (!\inst9|Decoder0~2_combout\ & ((\inst9|data\(3)))))) # (!\inst9|count\(0) & (((\inst9|data\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|count\(0),
	datab => \rxd~combout\,
	datac => \inst9|data\(3),
	datad => \inst9|Decoder0~2_combout\,
	combout => \inst9|data[3]~4_combout\);

-- Location: LCFF_X15_Y6_N1
\inst9|data[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst17|out_9600~clkctrl_outclk\,
	datain => \inst9|data[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|data\(3));

-- Location: LCCOMB_X18_Y8_N26
\inst13|initialSpeed~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|initialSpeed~5_combout\ = (\inst13|state.01~regout\ & ((!\inst9|data\(3)))) # (!\inst13|state.01~regout\ & (!\inst13|display[3]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|display[3]~4_combout\,
	datac => \inst13|state.01~regout\,
	datad => \inst9|data\(3),
	combout => \inst13|initialSpeed~5_combout\);

-- Location: LCFF_X18_Y8_N27
\inst13|initialSpeed[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst13|initialSpeed~5_combout\,
	ena => \inst13|initialSpeed[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst13|initialSpeed\(3));

-- Location: LCCOMB_X13_Y6_N12
\inst9|Decoder0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|Decoder0~1_combout\ = (!\inst9|count\(1) & (\inst9|state.01~regout\ & (\inst9|count\(0) & !\inst9|count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|count\(1),
	datab => \inst9|state.01~regout\,
	datac => \inst9|count\(0),
	datad => \inst9|count\(3),
	combout => \inst9|Decoder0~1_combout\);

-- Location: LCCOMB_X13_Y6_N16
\inst9|data[1]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|data[1]~3_combout\ = (\inst9|count\(2) & (((\inst9|data\(1))))) # (!\inst9|count\(2) & ((\inst9|Decoder0~1_combout\ & (\rxd~combout\)) # (!\inst9|Decoder0~1_combout\ & ((\inst9|data\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rxd~combout\,
	datab => \inst9|count\(2),
	datac => \inst9|data\(1),
	datad => \inst9|Decoder0~1_combout\,
	combout => \inst9|data[1]~3_combout\);

-- Location: LCFF_X13_Y6_N17
\inst9|data[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst17|out_9600~clkctrl_outclk\,
	datain => \inst9|data[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|data\(1));

-- Location: LCCOMB_X18_Y8_N14
\inst13|initialSpeed~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|initialSpeed~7_combout\ = (\inst13|state.01~regout\ & ((!\inst9|data\(1)))) # (!\inst13|state.01~regout\ & (!\inst13|display[1]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|display[1]~6_combout\,
	datab => \inst9|data\(1),
	datad => \inst13|state.01~regout\,
	combout => \inst13|initialSpeed~7_combout\);

-- Location: LCFF_X18_Y8_N15
\inst13|initialSpeed[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst13|initialSpeed~7_combout\,
	ena => \inst13|initialSpeed[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst13|initialSpeed\(1));

-- Location: LCCOMB_X18_Y7_N24
\inst13|Add3~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|Add3~8_combout\ = (\inst13|initialSpeed\(4) & (\inst13|Add3~7\ $ (GND))) # (!\inst13|initialSpeed\(4) & (!\inst13|Add3~7\ & VCC))
-- \inst13|Add3~9\ = CARRY((\inst13|initialSpeed\(4) & !\inst13|Add3~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst13|initialSpeed\(4),
	datad => VCC,
	cin => \inst13|Add3~7\,
	combout => \inst13|Add3~8_combout\,
	cout => \inst13|Add3~9\);

-- Location: LCCOMB_X18_Y7_N28
\inst13|Add3~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|Add3~12_combout\ = (\inst13|initialSpeed\(6) & (\inst13|Add3~11\ $ (GND))) # (!\inst13|initialSpeed\(6) & (!\inst13|Add3~11\ & VCC))
-- \inst13|Add3~13\ = CARRY((\inst13|initialSpeed\(6) & !\inst13|Add3~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|initialSpeed\(6),
	datad => VCC,
	cin => \inst13|Add3~11\,
	combout => \inst13|Add3~12_combout\,
	cout => \inst13|Add3~13\);

-- Location: LCCOMB_X18_Y7_N30
\inst13|Add3~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|Add3~14_combout\ = \inst13|Add3~13\ $ (\inst13|initialSpeed\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst13|initialSpeed\(7),
	cin => \inst13|Add3~13\,
	combout => \inst13|Add3~14_combout\);

-- Location: LCCOMB_X15_Y8_N2
\inst4|cnt[0]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|cnt[0]~8_combout\ = \inst4|cnt\(0) $ (VCC)
-- \inst4|cnt[0]~9\ = CARRY(\inst4|cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|cnt\(0),
	datad => VCC,
	combout => \inst4|cnt[0]~8_combout\,
	cout => \inst4|cnt[0]~9\);

-- Location: PIN_145,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ultraback_echo~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_ultraback_echo,
	combout => \ultraback_echo~combout\);

-- Location: LCCOMB_X15_Y8_N10
\inst4|cnt[4]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|cnt[4]~16_combout\ = (\inst4|cnt\(4) & (\inst4|cnt[3]~15\ $ (GND))) # (!\inst4|cnt\(4) & (!\inst4|cnt[3]~15\ & VCC))
-- \inst4|cnt[4]~17\ = CARRY((\inst4|cnt\(4) & !\inst4|cnt[3]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|cnt\(4),
	datad => VCC,
	cin => \inst4|cnt[3]~15\,
	combout => \inst4|cnt[4]~16_combout\,
	cout => \inst4|cnt[4]~17\);

-- Location: LCFF_X15_Y8_N11
\inst4|cnt[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst17|out_16k~clkctrl_outclk\,
	datain => \inst4|cnt[4]~16_combout\,
	sclr => \ALT_INV_ultraback_echo~combout\,
	ena => \inst4|cnt[2]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|cnt\(4));

-- Location: LCCOMB_X15_Y8_N28
\inst4|cnt[2]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|cnt[2]~24_combout\ = (\inst4|cnt\(3)) # ((\inst4|cnt\(4)) # ((\inst4|cnt\(1) & \inst4|cnt\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|cnt\(1),
	datab => \inst4|cnt\(0),
	datac => \inst4|cnt\(3),
	datad => \inst4|cnt\(4),
	combout => \inst4|cnt[2]~24_combout\);

-- Location: LCCOMB_X15_Y8_N18
\inst4|cnt[2]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|cnt[2]~25_combout\ = (\inst4|cnt\(5) & (\inst4|cnt\(6) & ((\inst4|cnt\(2)) # (\inst4|cnt[2]~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|cnt\(2),
	datab => \inst4|cnt\(5),
	datac => \inst4|cnt\(6),
	datad => \inst4|cnt[2]~24_combout\,
	combout => \inst4|cnt[2]~25_combout\);

-- Location: LCCOMB_X15_Y8_N24
\inst4|cnt[2]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|cnt[2]~26_combout\ = ((!\inst4|cnt\(7) & !\inst4|cnt[2]~25_combout\)) # (!\ultraback_echo~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|cnt\(7),
	datac => \ultraback_echo~combout\,
	datad => \inst4|cnt[2]~25_combout\,
	combout => \inst4|cnt[2]~26_combout\);

-- Location: LCFF_X15_Y8_N3
\inst4|cnt[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst17|out_16k~clkctrl_outclk\,
	datain => \inst4|cnt[0]~8_combout\,
	sclr => \ALT_INV_ultraback_echo~combout\,
	ena => \inst4|cnt[2]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|cnt\(0));

-- Location: LCCOMB_X15_Y8_N4
\inst4|cnt[1]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|cnt[1]~10_combout\ = (\inst4|cnt\(1) & (!\inst4|cnt[0]~9\)) # (!\inst4|cnt\(1) & ((\inst4|cnt[0]~9\) # (GND)))
-- \inst4|cnt[1]~11\ = CARRY((!\inst4|cnt[0]~9\) # (!\inst4|cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|cnt\(1),
	datad => VCC,
	cin => \inst4|cnt[0]~9\,
	combout => \inst4|cnt[1]~10_combout\,
	cout => \inst4|cnt[1]~11\);

-- Location: LCFF_X15_Y8_N5
\inst4|cnt[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst17|out_16k~clkctrl_outclk\,
	datain => \inst4|cnt[1]~10_combout\,
	sclr => \ALT_INV_ultraback_echo~combout\,
	ena => \inst4|cnt[2]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|cnt\(1));

-- Location: LCCOMB_X15_Y8_N6
\inst4|cnt[2]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|cnt[2]~12_combout\ = (\inst4|cnt\(2) & (\inst4|cnt[1]~11\ $ (GND))) # (!\inst4|cnt\(2) & (!\inst4|cnt[1]~11\ & VCC))
-- \inst4|cnt[2]~13\ = CARRY((\inst4|cnt\(2) & !\inst4|cnt[1]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|cnt\(2),
	datad => VCC,
	cin => \inst4|cnt[1]~11\,
	combout => \inst4|cnt[2]~12_combout\,
	cout => \inst4|cnt[2]~13\);

-- Location: LCCOMB_X15_Y8_N8
\inst4|cnt[3]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|cnt[3]~14_combout\ = (\inst4|cnt\(3) & (!\inst4|cnt[2]~13\)) # (!\inst4|cnt\(3) & ((\inst4|cnt[2]~13\) # (GND)))
-- \inst4|cnt[3]~15\ = CARRY((!\inst4|cnt[2]~13\) # (!\inst4|cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|cnt\(3),
	datad => VCC,
	cin => \inst4|cnt[2]~13\,
	combout => \inst4|cnt[3]~14_combout\,
	cout => \inst4|cnt[3]~15\);

-- Location: LCFF_X15_Y8_N9
\inst4|cnt[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst17|out_16k~clkctrl_outclk\,
	datain => \inst4|cnt[3]~14_combout\,
	sclr => \ALT_INV_ultraback_echo~combout\,
	ena => \inst4|cnt[2]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|cnt\(3));

-- Location: LCCOMB_X15_Y8_N12
\inst4|cnt[5]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|cnt[5]~18_combout\ = (\inst4|cnt\(5) & (!\inst4|cnt[4]~17\)) # (!\inst4|cnt\(5) & ((\inst4|cnt[4]~17\) # (GND)))
-- \inst4|cnt[5]~19\ = CARRY((!\inst4|cnt[4]~17\) # (!\inst4|cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|cnt\(5),
	datad => VCC,
	cin => \inst4|cnt[4]~17\,
	combout => \inst4|cnt[5]~18_combout\,
	cout => \inst4|cnt[5]~19\);

-- Location: LCFF_X15_Y8_N13
\inst4|cnt[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst17|out_16k~clkctrl_outclk\,
	datain => \inst4|cnt[5]~18_combout\,
	sclr => \ALT_INV_ultraback_echo~combout\,
	ena => \inst4|cnt[2]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|cnt\(5));

-- Location: LCCOMB_X15_Y8_N14
\inst4|cnt[6]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|cnt[6]~20_combout\ = (\inst4|cnt\(6) & (\inst4|cnt[5]~19\ $ (GND))) # (!\inst4|cnt\(6) & (!\inst4|cnt[5]~19\ & VCC))
-- \inst4|cnt[6]~21\ = CARRY((\inst4|cnt\(6) & !\inst4|cnt[5]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|cnt\(6),
	datad => VCC,
	cin => \inst4|cnt[5]~19\,
	combout => \inst4|cnt[6]~20_combout\,
	cout => \inst4|cnt[6]~21\);

-- Location: LCFF_X15_Y8_N15
\inst4|cnt[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst17|out_16k~clkctrl_outclk\,
	datain => \inst4|cnt[6]~20_combout\,
	sclr => \ALT_INV_ultraback_echo~combout\,
	ena => \inst4|cnt[2]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|cnt\(6));

-- Location: LCFF_X14_Y8_N9
\inst4|dis[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_ultraback_echo~combout\,
	sdata => \inst4|cnt\(6),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|dis\(6));

-- Location: LCFF_X14_Y8_N29
\inst4|dis[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_ultraback_echo~combout\,
	sdata => \inst4|cnt\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|dis\(3));

-- Location: LCFF_X15_Y8_N7
\inst4|cnt[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst17|out_16k~clkctrl_outclk\,
	datain => \inst4|cnt[2]~12_combout\,
	sclr => \ALT_INV_ultraback_echo~combout\,
	ena => \inst4|cnt[2]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|cnt\(2));

-- Location: LCFF_X14_Y8_N27
\inst4|dis[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_ultraback_echo~combout\,
	sdata => \inst4|cnt\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|dis\(2));

-- Location: LCFF_X14_Y8_N7
\inst4|dis[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_ultraback_echo~combout\,
	sdata => \inst4|cnt\(4),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|dis\(4));

-- Location: LCCOMB_X14_Y8_N26
\inst13|LessThan5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|LessThan5~0_combout\ = (\inst4|dis\(3) & (\inst4|dis\(2) & \inst4|dis\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|dis\(3),
	datac => \inst4|dis\(2),
	datad => \inst4|dis\(4),
	combout => \inst13|LessThan5~0_combout\);

-- Location: LCFF_X14_Y8_N17
\inst4|dis[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_ultraback_echo~combout\,
	sdata => \inst4|cnt\(5),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|dis\(5));

-- Location: LCCOMB_X14_Y8_N30
\inst13|LessThan1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|LessThan1~3_combout\ = (!\inst4|dis\(7) & (!\inst4|dis\(6) & ((!\inst4|dis\(5)) # (!\inst13|LessThan5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|dis\(7),
	datab => \inst4|dis\(6),
	datac => \inst13|LessThan5~0_combout\,
	datad => \inst4|dis\(5),
	combout => \inst13|LessThan1~3_combout\);

-- Location: LCCOMB_X15_Y8_N16
\inst4|cnt[7]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|cnt[7]~22_combout\ = \inst4|cnt\(7) $ (\inst4|cnt[6]~21\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|cnt\(7),
	cin => \inst4|cnt[6]~21\,
	combout => \inst4|cnt[7]~22_combout\);

-- Location: LCFF_X15_Y8_N17
\inst4|cnt[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst17|out_16k~clkctrl_outclk\,
	datain => \inst4|cnt[7]~22_combout\,
	sclr => \ALT_INV_ultraback_echo~combout\,
	ena => \inst4|cnt[2]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|cnt\(7));

-- Location: LCFF_X14_Y8_N19
\inst4|dis[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_ultraback_echo~combout\,
	sdata => \inst4|cnt\(7),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|dis\(7));

-- Location: LCCOMB_X14_Y8_N10
\inst13|LessThan1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|LessThan1~2_combout\ = (!\inst4|dis\(6) & !\inst4|dis\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|dis\(6),
	datad => \inst4|dis\(7),
	combout => \inst13|LessThan1~2_combout\);

-- Location: LCCOMB_X14_Y6_N0
\inst9|Decoder0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|Decoder0~0_combout\ = (!\inst9|count\(1) & (\inst9|state.01~regout\ & (!\inst9|count\(0) & !\inst9|count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|count\(1),
	datab => \inst9|state.01~regout\,
	datac => \inst9|count\(0),
	datad => \inst9|count\(3),
	combout => \inst9|Decoder0~0_combout\);

-- Location: LCCOMB_X14_Y8_N4
\inst9|data[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|data[0]~0_combout\ = (\inst9|count\(2) & (((\inst9|data\(0))))) # (!\inst9|count\(2) & ((\inst9|Decoder0~0_combout\ & (\rxd~combout\)) # (!\inst9|Decoder0~0_combout\ & ((\inst9|data\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|count\(2),
	datab => \rxd~combout\,
	datac => \inst9|data\(0),
	datad => \inst9|Decoder0~0_combout\,
	combout => \inst9|data[0]~0_combout\);

-- Location: LCFF_X14_Y8_N5
\inst9|data[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst17|out_9600~clkctrl_outclk\,
	datain => \inst9|data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|data\(0));

-- Location: LCCOMB_X13_Y6_N24
\inst9|data[5]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|data[5]~2_combout\ = (\inst9|count\(2) & ((\inst9|Decoder0~1_combout\ & (\rxd~combout\)) # (!\inst9|Decoder0~1_combout\ & ((\inst9|data\(5)))))) # (!\inst9|count\(2) & (((\inst9|data\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rxd~combout\,
	datab => \inst9|count\(2),
	datac => \inst9|data\(5),
	datad => \inst9|Decoder0~1_combout\,
	combout => \inst9|data[5]~2_combout\);

-- Location: LCFF_X13_Y6_N25
\inst9|data[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst17|out_9600~clkctrl_outclk\,
	datain => \inst9|data[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|data\(5));

-- Location: LCCOMB_X14_Y6_N4
\inst9|data[4]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|data[4]~1_combout\ = (\inst9|count\(2) & ((\inst9|Decoder0~0_combout\ & (\rxd~combout\)) # (!\inst9|Decoder0~0_combout\ & ((\inst9|data\(4)))))) # (!\inst9|count\(2) & (((\inst9|data\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|count\(2),
	datab => \rxd~combout\,
	datac => \inst9|data\(4),
	datad => \inst9|Decoder0~0_combout\,
	combout => \inst9|data[4]~1_combout\);

-- Location: LCFF_X14_Y6_N5
\inst9|data[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst17|out_9600~clkctrl_outclk\,
	datain => \inst9|data[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|data\(4));

-- Location: LCCOMB_X13_Y6_N30
\inst13|Equal6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|Equal6~0_combout\ = (!\inst9|data\(5) & \inst9|data\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst9|data\(5),
	datad => \inst9|data\(4),
	combout => \inst13|Equal6~0_combout\);

-- Location: LCCOMB_X12_Y8_N30
\inst13|flag~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|flag~0_combout\ = (\inst13|state.10~regout\ & ((\inst13|Equal6~0_combout\ & ((\inst9|data\(0)))) # (!\inst13|Equal6~0_combout\ & (\inst13|flag~regout\)))) # (!\inst13|state.10~regout\ & (\inst13|flag~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|flag~regout\,
	datab => \inst9|data\(0),
	datac => \inst13|state.10~regout\,
	datad => \inst13|Equal6~0_combout\,
	combout => \inst13|flag~0_combout\);

-- Location: LCFF_X13_Y8_N25
\inst13|flag\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \inst13|flag~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst13|flag~regout\);

-- Location: PIN_195,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Signs[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Signs(3),
	combout => \Signs~combout\(3));

-- Location: PIN_198,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Signs[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Signs(2),
	combout => \Signs~combout\(2));

-- Location: LCCOMB_X13_Y10_N30
\inst13|lastsign2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|lastsign2~0_combout\ = !\Signs~combout\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Signs~combout\(2),
	combout => \inst13|lastsign2~0_combout\);

-- Location: LCCOMB_X18_Y8_N22
\inst13|display[4]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|display[4]~10_combout\ = (!\inst13|LessThan2~7_combout\ & (!\inst13|state.01~regout\ & (!\inst13|state.10~regout\ & \inst13|state.00~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|LessThan2~7_combout\,
	datab => \inst13|state.01~regout\,
	datac => \inst13|state.10~regout\,
	datad => \inst13|state.00~regout\,
	combout => \inst13|display[4]~10_combout\);

-- Location: LCFF_X14_Y10_N21
\inst13|lastsign2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \inst13|lastsign2~0_combout\,
	sload => VCC,
	ena => \inst13|display[4]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst13|lastsign2~regout\);

-- Location: LCCOMB_X15_Y7_N24
\inst13|mystate~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|mystate~2_combout\ = (\inst13|state.10~regout\ & ((!\inst9|data\(5)))) # (!\inst13|state.10~regout\ & (\inst13|always1~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|always1~3_combout\,
	datac => \inst13|state.10~regout\,
	datad => \inst9|data\(5),
	combout => \inst13|mystate~2_combout\);

-- Location: LCCOMB_X13_Y10_N18
\inst13|always1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|always1~2_combout\ = (!\inst13|lastsign2~regout\) # (!\Signs~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Signs~combout\(2),
	datad => \inst13|lastsign2~regout\,
	combout => \inst13|always1~2_combout\);

-- Location: LCCOMB_X15_Y7_N0
\inst13|led~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|led~10_combout\ = (\inst13|always1~2_combout\ & (((\inst13|backdone~regout\) # (!\Signs~combout\(3))) # (!\inst13|lastsign3~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|lastsign3~regout\,
	datab => \inst13|backdone~regout\,
	datac => \inst13|always1~2_combout\,
	datad => \Signs~combout\(3),
	combout => \inst13|led~10_combout\);

-- Location: LCCOMB_X15_Y6_N24
\inst13|speed~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|speed~33_combout\ = (!\inst13|state.01~regout\ & \inst13|state.00~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|state.01~regout\,
	datac => \inst13|state.00~regout\,
	combout => \inst13|speed~33_combout\);

-- Location: LCCOMB_X15_Y7_N20
\inst13|mystate[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|mystate[0]~1_combout\ = (\inst13|speed~33_combout\ & ((\inst13|state.10~regout\) # ((!\inst13|LessThan2~7_combout\ & !\inst13|led~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|LessThan2~7_combout\,
	datab => \inst13|led~10_combout\,
	datac => \inst13|state.10~regout\,
	datad => \inst13|speed~33_combout\,
	combout => \inst13|mystate[0]~1_combout\);

-- Location: LCFF_X15_Y7_N25
\inst13|mystate[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst13|mystate~2_combout\,
	ena => \inst13|mystate[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst13|mystate\(1));

-- Location: LCCOMB_X13_Y10_N22
\inst13|backdone~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|backdone~5_combout\ = (\inst13|mystate\(0)) # ((\inst13|mystate\(1)) # ((\inst13|lastsign2~regout\ & \Signs~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|mystate\(0),
	datab => \inst13|lastsign2~regout\,
	datac => \inst13|mystate\(1),
	datad => \Signs~combout\(2),
	combout => \inst13|backdone~5_combout\);

-- Location: LCCOMB_X15_Y7_N30
\inst13|mystate~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|mystate~0_combout\ = (!\inst13|state.10~regout\) # (!\inst9|data\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|data\(4),
	datac => \inst13|state.10~regout\,
	combout => \inst13|mystate~0_combout\);

-- Location: LCFF_X15_Y7_N31
\inst13|mystate[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst13|mystate~0_combout\,
	ena => \inst13|mystate[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst13|mystate\(0));

-- Location: LCCOMB_X15_Y7_N26
\inst13|Equal7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|Equal7~0_combout\ = (!\inst13|mystate\(1) & \inst13|mystate\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|mystate\(1),
	datad => \inst13|mystate\(0),
	combout => \inst13|Equal7~0_combout\);

-- Location: LCFF_X14_Y8_N25
\inst4|dis[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_ultraback_echo~combout\,
	sdata => \inst4|cnt\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|dis\(1));

-- Location: LCCOMB_X14_Y8_N24
\inst13|LessThan3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|LessThan3~0_combout\ = (!\inst4|dis\(3) & (!\inst4|dis\(2) & ((!\inst4|dis\(1)) # (!\inst4|dis\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|dis\(0),
	datab => \inst4|dis\(3),
	datac => \inst4|dis\(1),
	datad => \inst4|dis\(2),
	combout => \inst13|LessThan3~0_combout\);

-- Location: LCCOMB_X14_Y8_N0
\inst13|LessThan3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|LessThan3~1_combout\ = (\inst13|LessThan1~2_combout\ & (((!\inst4|dis\(4) & \inst13|LessThan3~0_combout\)) # (!\inst4|dis\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|dis\(4),
	datab => \inst4|dis\(5),
	datac => \inst13|LessThan3~0_combout\,
	datad => \inst13|LessThan1~2_combout\,
	combout => \inst13|LessThan3~1_combout\);

-- Location: LCCOMB_X15_Y10_N28
\inst13|always1~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|always1~13_combout\ = (!\inst13|backStatus.00~regout\ & \inst13|LessThan3~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|backStatus.00~regout\,
	datad => \inst13|LessThan3~1_combout\,
	combout => \inst13|always1~13_combout\);

-- Location: LCCOMB_X15_Y10_N8
\inst13|backStatus~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|backStatus~18_combout\ = (\inst13|state.10~regout\ & (\inst13|always1~15_combout\)) # (!\inst13|state.10~regout\ & (((\inst13|always1~13_combout\ & \inst13|always1~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|always1~15_combout\,
	datab => \inst13|always1~13_combout\,
	datac => \inst13|always1~3_combout\,
	datad => \inst13|state.10~regout\,
	combout => \inst13|backStatus~18_combout\);

-- Location: LCCOMB_X13_Y12_N14
\inst13|backStatus~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|backStatus~19_combout\ = (\inst13|state.10~regout\ & ((\inst13|speed~72_combout\ & (\inst13|backStatus~13_combout\)) # (!\inst13|speed~72_combout\ & ((\inst13|backStatus~18_combout\))))) # (!\inst13|state.10~regout\ & 
-- (((\inst13|backStatus~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|backStatus~13_combout\,
	datab => \inst13|state.10~regout\,
	datac => \inst13|speed~72_combout\,
	datad => \inst13|backStatus~18_combout\,
	combout => \inst13|backStatus~19_combout\);

-- Location: LCCOMB_X13_Y10_N4
\inst13|backStatus~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|backStatus~15_combout\ = ((\inst13|state.01~regout\) # ((\inst13|state.10~regout\ & !\inst13|Equal6~0_combout\))) # (!\inst13|state.00~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|state.00~regout\,
	datab => \inst13|state.10~regout\,
	datac => \inst13|state.01~regout\,
	datad => \inst13|Equal6~0_combout\,
	combout => \inst13|backStatus~15_combout\);

-- Location: LCCOMB_X15_Y9_N24
\inst13|speed~65\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|speed~65_combout\ = (!\inst13|always1~8_combout\ & (!\inst13|always1~9_combout\ & ((\inst13|backStatus.00~regout\) # (!\inst13|LessThan3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|always1~8_combout\,
	datab => \inst13|backStatus.00~regout\,
	datac => \inst13|LessThan3~1_combout\,
	datad => \inst13|always1~9_combout\,
	combout => \inst13|speed~65_combout\);

-- Location: LCCOMB_X13_Y12_N28
\inst13|backStatus~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|backStatus~16_combout\ = (\inst13|always1~3_combout\ & (((\inst13|speed~65_combout\) # (!\inst13|Equal7~0_combout\)) # (!\inst13|always1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|always1~2_combout\,
	datab => \inst13|always1~3_combout\,
	datac => \inst13|Equal7~0_combout\,
	datad => \inst13|speed~65_combout\,
	combout => \inst13|backStatus~16_combout\);

-- Location: LCCOMB_X13_Y12_N2
\inst13|backStatus~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|backStatus~17_combout\ = (!\inst13|backStatus~15_combout\ & ((\inst13|state.10~regout\) # ((!\inst13|LessThan2~7_combout\ & !\inst13|backStatus~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|LessThan2~7_combout\,
	datab => \inst13|state.10~regout\,
	datac => \inst13|backStatus~15_combout\,
	datad => \inst13|backStatus~16_combout\,
	combout => \inst13|backStatus~17_combout\);

-- Location: LCFF_X13_Y12_N15
\inst13|backStatus.01\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst13|backStatus~19_combout\,
	ena => \inst13|backStatus~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst13|backStatus.01~regout\);

-- Location: LCCOMB_X15_Y12_N14
\inst13|cnt2[1]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|cnt2[1]~8_combout\ = (\inst13|cnt2\(1) & (!\inst13|cnt2[0]~7\)) # (!\inst13|cnt2\(1) & ((\inst13|cnt2[0]~7\) # (GND)))
-- \inst13|cnt2[1]~9\ = CARRY((!\inst13|cnt2[0]~7\) # (!\inst13|cnt2\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|cnt2\(1),
	datad => VCC,
	cin => \inst13|cnt2[0]~7\,
	combout => \inst13|cnt2[1]~8_combout\,
	cout => \inst13|cnt2[1]~9\);

-- Location: LCCOMB_X15_Y12_N16
\inst13|cnt2[2]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|cnt2[2]~10_combout\ = (\inst13|cnt2\(2) & (\inst13|cnt2[1]~9\ $ (GND))) # (!\inst13|cnt2\(2) & (!\inst13|cnt2[1]~9\ & VCC))
-- \inst13|cnt2[2]~11\ = CARRY((\inst13|cnt2\(2) & !\inst13|cnt2[1]~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|cnt2\(2),
	datad => VCC,
	cin => \inst13|cnt2[1]~9\,
	combout => \inst13|cnt2[2]~10_combout\,
	cout => \inst13|cnt2[2]~11\);

-- Location: LCCOMB_X15_Y12_N18
\inst13|cnt2[3]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|cnt2[3]~12_combout\ = (\inst13|cnt2\(3) & (!\inst13|cnt2[2]~11\)) # (!\inst13|cnt2\(3) & ((\inst13|cnt2[2]~11\) # (GND)))
-- \inst13|cnt2[3]~13\ = CARRY((!\inst13|cnt2[2]~11\) # (!\inst13|cnt2\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst13|cnt2\(3),
	datad => VCC,
	cin => \inst13|cnt2[2]~11\,
	combout => \inst13|cnt2[3]~12_combout\,
	cout => \inst13|cnt2[3]~13\);

-- Location: LCFF_X15_Y12_N19
\inst13|cnt2[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst17|out_8~clkctrl_outclk\,
	datain => \inst13|cnt2[3]~12_combout\,
	sclr => \inst13|LessThan7~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst13|cnt2\(3));

-- Location: LCCOMB_X15_Y12_N20
\inst13|cnt2[4]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|cnt2[4]~14_combout\ = (\inst13|cnt2\(4) & (\inst13|cnt2[3]~13\ $ (GND))) # (!\inst13|cnt2\(4) & (!\inst13|cnt2[3]~13\ & VCC))
-- \inst13|cnt2[4]~15\ = CARRY((\inst13|cnt2\(4) & !\inst13|cnt2[3]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|cnt2\(4),
	datad => VCC,
	cin => \inst13|cnt2[3]~13\,
	combout => \inst13|cnt2[4]~14_combout\,
	cout => \inst13|cnt2[4]~15\);

-- Location: LCCOMB_X15_Y12_N22
\inst13|cnt2[5]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|cnt2[5]~16_combout\ = \inst13|cnt2[4]~15\ $ (\inst13|cnt2\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst13|cnt2\(5),
	cin => \inst13|cnt2[4]~15\,
	combout => \inst13|cnt2[5]~16_combout\);

-- Location: LCFF_X15_Y12_N23
\inst13|cnt2[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst17|out_8~clkctrl_outclk\,
	datain => \inst13|cnt2[5]~16_combout\,
	sclr => \inst13|LessThan7~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst13|cnt2\(5));

-- Location: LCFF_X15_Y12_N21
\inst13|cnt2[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst17|out_8~clkctrl_outclk\,
	datain => \inst13|cnt2[4]~14_combout\,
	sclr => \inst13|LessThan7~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst13|cnt2\(4));

-- Location: LCFF_X15_Y12_N17
\inst13|cnt2[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst17|out_8~clkctrl_outclk\,
	datain => \inst13|cnt2[2]~10_combout\,
	sclr => \inst13|LessThan7~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst13|cnt2\(2));

-- Location: LCFF_X15_Y12_N15
\inst13|cnt2[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst17|out_8~clkctrl_outclk\,
	datain => \inst13|cnt2[1]~8_combout\,
	sclr => \inst13|LessThan7~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst13|cnt2\(1));

-- Location: LCCOMB_X15_Y12_N30
\inst13|always1~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|always1~14_combout\ = (\inst13|last2~regout\ & !\inst13|Delaying2~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|last2~regout\,
	datac => \inst13|Delaying2~regout\,
	combout => \inst13|always1~14_combout\);

-- Location: LCCOMB_X14_Y8_N6
\inst13|backStatus~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|backStatus~13_combout\ = (\inst13|backStatus.01~regout\ & (\inst13|flag~regout\ $ (!\inst9|data\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|backStatus.01~regout\,
	datab => \inst13|flag~regout\,
	datad => \inst9|data\(0),
	combout => \inst13|backStatus~13_combout\);

-- Location: LCCOMB_X15_Y9_N22
\inst13|target2[2]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|target2[2]~4_combout\ = (\inst13|state.10~regout\ & (((\inst13|always1~14_combout\ & \inst13|backStatus~13_combout\)))) # (!\inst13|state.10~regout\ & (\inst13|always1~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|always1~9_combout\,
	datab => \inst13|always1~14_combout\,
	datac => \inst13|backStatus~13_combout\,
	datad => \inst13|state.10~regout\,
	combout => \inst13|target2[2]~4_combout\);

-- Location: LCCOMB_X15_Y9_N30
\inst13|target2~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|target2~12_combout\ = (!\inst13|target2[2]~4_combout\ & ((\inst13|state.10~regout\) # ((!\inst13|mystate\(1) & \inst13|mystate\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|mystate\(1),
	datab => \inst13|state.10~regout\,
	datac => \inst13|mystate\(0),
	datad => \inst13|target2[2]~4_combout\,
	combout => \inst13|target2~12_combout\);

-- Location: LCCOMB_X14_Y10_N24
\inst13|speed[6]~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|speed[6]~53_combout\ = (\inst13|mystate\(1) & !\inst13|mystate\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|mystate\(1),
	datad => \inst13|mystate\(0),
	combout => \inst13|speed[6]~53_combout\);

-- Location: LCCOMB_X15_Y12_N4
\inst13|target2[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|target2[2]~3_combout\ = (\inst13|Delaying2~regout\) # (!\inst13|last2~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|last2~regout\,
	datac => \inst13|Delaying2~regout\,
	combout => \inst13|target2[2]~3_combout\);

-- Location: LCCOMB_X15_Y9_N12
\inst13|target2~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|target2~11_combout\ = (\inst13|state.10~regout\ & (((!\inst13|target2[2]~4_combout\)))) # (!\inst13|state.10~regout\ & ((\inst13|Equal7~0_combout\ & ((!\inst13|target2[2]~4_combout\))) # (!\inst13|Equal7~0_combout\ & (!\inst13|WideOr0~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|WideOr0~combout\,
	datab => \inst13|state.10~regout\,
	datac => \inst13|Equal7~0_combout\,
	datad => \inst13|target2[2]~4_combout\,
	combout => \inst13|target2~11_combout\);

-- Location: LCFF_X15_Y9_N13
\inst13|target2[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst13|target2~11_combout\,
	ena => \inst13|target2[1]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst13|target2\(1));

-- Location: LCCOMB_X15_Y9_N10
\inst13|WideOr0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|WideOr0~combout\ = (\inst13|target2\(0)) # (\inst13|target2\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|target2\(0),
	datad => \inst13|target2\(1),
	combout => \inst13|WideOr0~combout\);

-- Location: LCCOMB_X15_Y11_N12
\inst5|cnt[0]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|cnt[0]~8_combout\ = \inst5|cnt\(0) $ (VCC)
-- \inst5|cnt[0]~9\ = CARRY(\inst5|cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|cnt\(0),
	datad => VCC,
	combout => \inst5|cnt[0]~8_combout\,
	cout => \inst5|cnt[0]~9\);

-- Location: LCCOMB_X15_Y11_N14
\inst5|cnt[1]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|cnt[1]~10_combout\ = (\inst5|cnt\(1) & (!\inst5|cnt[0]~9\)) # (!\inst5|cnt\(1) & ((\inst5|cnt[0]~9\) # (GND)))
-- \inst5|cnt[1]~11\ = CARRY((!\inst5|cnt[0]~9\) # (!\inst5|cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|cnt\(1),
	datad => VCC,
	cin => \inst5|cnt[0]~9\,
	combout => \inst5|cnt[1]~10_combout\,
	cout => \inst5|cnt[1]~11\);

-- Location: PIN_165,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ultra_2~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_ultra_2,
	combout => \ultra_2~combout\);

-- Location: LCCOMB_X15_Y11_N18
\inst5|cnt[3]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|cnt[3]~14_combout\ = (\inst5|cnt\(3) & (!\inst5|cnt[2]~13\)) # (!\inst5|cnt\(3) & ((\inst5|cnt[2]~13\) # (GND)))
-- \inst5|cnt[3]~15\ = CARRY((!\inst5|cnt[2]~13\) # (!\inst5|cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|cnt\(3),
	datad => VCC,
	cin => \inst5|cnt[2]~13\,
	combout => \inst5|cnt[3]~14_combout\,
	cout => \inst5|cnt[3]~15\);

-- Location: LCCOMB_X15_Y11_N20
\inst5|cnt[4]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|cnt[4]~16_combout\ = (\inst5|cnt\(4) & (\inst5|cnt[3]~15\ $ (GND))) # (!\inst5|cnt\(4) & (!\inst5|cnt[3]~15\ & VCC))
-- \inst5|cnt[4]~17\ = CARRY((\inst5|cnt\(4) & !\inst5|cnt[3]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|cnt\(4),
	datad => VCC,
	cin => \inst5|cnt[3]~15\,
	combout => \inst5|cnt[4]~16_combout\,
	cout => \inst5|cnt[4]~17\);

-- Location: LCCOMB_X15_Y11_N22
\inst5|cnt[5]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|cnt[5]~18_combout\ = (\inst5|cnt\(5) & (!\inst5|cnt[4]~17\)) # (!\inst5|cnt\(5) & ((\inst5|cnt[4]~17\) # (GND)))
-- \inst5|cnt[5]~19\ = CARRY((!\inst5|cnt[4]~17\) # (!\inst5|cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|cnt\(5),
	datad => VCC,
	cin => \inst5|cnt[4]~17\,
	combout => \inst5|cnt[5]~18_combout\,
	cout => \inst5|cnt[5]~19\);

-- Location: LCFF_X15_Y11_N23
\inst5|cnt[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst17|out_16k~clkctrl_outclk\,
	datain => \inst5|cnt[5]~18_combout\,
	sclr => \ALT_INV_ultra_2~combout\,
	ena => \inst5|cnt[3]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst5|cnt\(5));

-- Location: LCCOMB_X15_Y11_N24
\inst5|cnt[6]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|cnt[6]~20_combout\ = (\inst5|cnt\(6) & (\inst5|cnt[5]~19\ $ (GND))) # (!\inst5|cnt\(6) & (!\inst5|cnt[5]~19\ & VCC))
-- \inst5|cnt[6]~21\ = CARRY((\inst5|cnt\(6) & !\inst5|cnt[5]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|cnt\(6),
	datad => VCC,
	cin => \inst5|cnt[5]~19\,
	combout => \inst5|cnt[6]~20_combout\,
	cout => \inst5|cnt[6]~21\);

-- Location: LCCOMB_X15_Y11_N26
\inst5|cnt[7]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|cnt[7]~25_combout\ = \inst5|cnt[6]~21\ $ (\inst5|cnt\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst5|cnt\(7),
	cin => \inst5|cnt[6]~21\,
	combout => \inst5|cnt[7]~25_combout\);

-- Location: LCFF_X15_Y11_N27
\inst5|cnt[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst17|out_16k~clkctrl_outclk\,
	datain => \inst5|cnt[7]~25_combout\,
	sclr => \ALT_INV_ultra_2~combout\,
	ena => \inst5|cnt[3]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst5|cnt\(7));

-- Location: LCFF_X15_Y11_N25
\inst5|cnt[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst17|out_16k~clkctrl_outclk\,
	datain => \inst5|cnt[6]~20_combout\,
	sclr => \ALT_INV_ultra_2~combout\,
	ena => \inst5|cnt[3]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst5|cnt\(6));

-- Location: LCCOMB_X15_Y11_N16
\inst5|cnt[2]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|cnt[2]~12_combout\ = (\inst5|cnt\(2) & (\inst5|cnt[1]~11\ $ (GND))) # (!\inst5|cnt\(2) & (!\inst5|cnt[1]~11\ & VCC))
-- \inst5|cnt[2]~13\ = CARRY((\inst5|cnt\(2) & !\inst5|cnt[1]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|cnt\(2),
	datad => VCC,
	cin => \inst5|cnt[1]~11\,
	combout => \inst5|cnt[2]~12_combout\,
	cout => \inst5|cnt[2]~13\);

-- Location: LCFF_X15_Y11_N17
\inst5|cnt[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst17|out_16k~clkctrl_outclk\,
	datain => \inst5|cnt[2]~12_combout\,
	sclr => \ALT_INV_ultra_2~combout\,
	ena => \inst5|cnt[3]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst5|cnt\(2));

-- Location: LCFF_X15_Y11_N13
\inst5|cnt[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst17|out_16k~clkctrl_outclk\,
	datain => \inst5|cnt[0]~8_combout\,
	sclr => \ALT_INV_ultra_2~combout\,
	ena => \inst5|cnt[3]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst5|cnt\(0));

-- Location: LCCOMB_X15_Y11_N10
\inst5|cnt[3]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|cnt[3]~22_combout\ = (\inst5|cnt\(3)) # ((\inst5|cnt\(2)) # ((\inst5|cnt\(1) & \inst5|cnt\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|cnt\(1),
	datab => \inst5|cnt\(3),
	datac => \inst5|cnt\(2),
	datad => \inst5|cnt\(0),
	combout => \inst5|cnt[3]~22_combout\);

-- Location: LCCOMB_X15_Y11_N4
\inst5|cnt[3]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|cnt[3]~23_combout\ = (\inst5|cnt\(5) & (\inst5|cnt\(6) & ((\inst5|cnt\(4)) # (\inst5|cnt[3]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|cnt\(4),
	datab => \inst5|cnt\(5),
	datac => \inst5|cnt\(6),
	datad => \inst5|cnt[3]~22_combout\,
	combout => \inst5|cnt[3]~23_combout\);

-- Location: LCCOMB_X15_Y11_N30
\inst5|cnt[3]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|cnt[3]~24_combout\ = ((!\inst5|cnt\(7) & !\inst5|cnt[3]~23_combout\)) # (!\ultra_2~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|cnt\(7),
	datac => \inst5|cnt[3]~23_combout\,
	datad => \ultra_2~combout\,
	combout => \inst5|cnt[3]~24_combout\);

-- Location: LCFF_X15_Y11_N15
\inst5|cnt[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst17|out_16k~clkctrl_outclk\,
	datain => \inst5|cnt[1]~10_combout\,
	sclr => \ALT_INV_ultra_2~combout\,
	ena => \inst5|cnt[3]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst5|cnt\(1));

-- Location: LCFF_X15_Y11_N19
\inst5|cnt[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst17|out_16k~clkctrl_outclk\,
	datain => \inst5|cnt[3]~14_combout\,
	sclr => \ALT_INV_ultra_2~combout\,
	ena => \inst5|cnt[3]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst5|cnt\(3));

-- Location: LCFF_X14_Y11_N9
\inst5|dis[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_ultra_2~combout\,
	sdata => \inst5|cnt\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst5|dis\(3));

-- Location: LCFF_X14_Y11_N5
\inst5|dis[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_ultra_2~combout\,
	sdata => \inst5|cnt\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst5|dis\(0));

-- Location: LCFF_X14_Y11_N29
\inst5|dis[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_ultra_2~combout\,
	sdata => \inst5|cnt\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst5|dis\(1));

-- Location: LCCOMB_X14_Y11_N4
\inst13|LessThan6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|LessThan6~0_combout\ = (\inst5|dis\(3)) # ((\inst5|dis\(2) & ((\inst5|dis\(0)) # (\inst5|dis\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|dis\(2),
	datab => \inst5|dis\(3),
	datac => \inst5|dis\(0),
	datad => \inst5|dis\(1),
	combout => \inst13|LessThan6~0_combout\);

-- Location: LCFF_X14_Y11_N1
\inst5|dis[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_ultra_2~combout\,
	sdata => \inst5|cnt\(7),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst5|dis\(7));

-- Location: LCFF_X14_Y11_N11
\inst5|dis[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_ultra_2~combout\,
	sdata => \inst5|cnt\(5),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst5|dis\(5));

-- Location: LCFF_X14_Y11_N23
\inst5|dis[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_ultra_2~combout\,
	sdata => \inst5|cnt\(6),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst5|dis\(6));

-- Location: LCCOMB_X14_Y11_N10
\inst2|always0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|always0~0_combout\ = (!\inst5|dis\(7) & (!\inst5|dis\(5) & !\inst5|dis\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|dis\(7),
	datac => \inst5|dis\(5),
	datad => \inst5|dis\(6),
	combout => \inst2|always0~0_combout\);

-- Location: LCCOMB_X15_Y6_N26
\inst13|target2[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|target2[2]~2_combout\ = (!\inst13|WideOr0~combout\ & (((\inst5|dis\(4) & \inst13|LessThan6~0_combout\)) # (!\inst2|always0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|dis\(4),
	datab => \inst13|WideOr0~combout\,
	datac => \inst13|LessThan6~0_combout\,
	datad => \inst2|always0~0_combout\,
	combout => \inst13|target2[2]~2_combout\);

-- Location: LCCOMB_X15_Y12_N8
\inst13|target2[2]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|target2[2]~7_combout\ = ((\inst13|target2[2]~2_combout\) # ((\inst13|WideOr0~combout\ & \inst13|target2[2]~3_combout\))) # (!\inst13|speed[6]~53_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|WideOr0~combout\,
	datab => \inst13|speed[6]~53_combout\,
	datac => \inst13|target2[2]~3_combout\,
	datad => \inst13|target2[2]~2_combout\,
	combout => \inst13|target2[2]~7_combout\);

-- Location: LCCOMB_X15_Y9_N14
\inst13|target2[1]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|target2[1]~9_combout\ = ((\inst13|LessThan2~7_combout\) # ((!\inst13|Equal7~0_combout\ & \inst13|target2[2]~7_combout\))) # (!\inst13|led~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Equal7~0_combout\,
	datab => \inst13|led~10_combout\,
	datac => \inst13|LessThan2~7_combout\,
	datad => \inst13|target2[2]~7_combout\,
	combout => \inst13|target2[1]~9_combout\);

-- Location: LCCOMB_X12_Y9_N12
\inst13|target2[2]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|target2[2]~5_combout\ = ((\inst13|state.10~regout\ & (\inst13|flag~regout\ $ (\inst9|data\(0))))) # (!\inst13|backStatus.01~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|flag~regout\,
	datab => \inst9|data\(0),
	datac => \inst13|backStatus.01~regout\,
	datad => \inst13|state.10~regout\,
	combout => \inst13|target2[2]~5_combout\);

-- Location: LCCOMB_X12_Y9_N22
\inst13|target2[2]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|target2[2]~6_combout\ = (\inst13|target2[2]~5_combout\) # ((\inst13|LessThan3~1_combout\ & !\inst13|backStatus.00~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|LessThan3~1_combout\,
	datac => \inst13|backStatus.00~regout\,
	datad => \inst13|target2[2]~5_combout\,
	combout => \inst13|target2[2]~6_combout\);

-- Location: LCCOMB_X15_Y9_N28
\inst13|target2[1]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|target2[1]~8_combout\ = (\inst13|state.10~regout\ & (((\inst13|target2[2]~6_combout\)) # (!\inst13|Equal6~0_combout\))) # (!\inst13|state.10~regout\ & (((\inst13|target2[2]~7_combout\ & \inst13|target2[2]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Equal6~0_combout\,
	datab => \inst13|state.10~regout\,
	datac => \inst13|target2[2]~7_combout\,
	datad => \inst13|target2[2]~6_combout\,
	combout => \inst13|target2[1]~8_combout\);

-- Location: LCCOMB_X15_Y9_N0
\inst13|target2[1]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|target2[1]~10_combout\ = (\inst13|speed~33_combout\ & (!\inst13|target2[1]~8_combout\ & ((\inst13|state.10~regout\) # (!\inst13|target2[1]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|state.10~regout\,
	datab => \inst13|speed~33_combout\,
	datac => \inst13|target2[1]~9_combout\,
	datad => \inst13|target2[1]~8_combout\,
	combout => \inst13|target2[1]~10_combout\);

-- Location: LCFF_X15_Y9_N31
\inst13|target2[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst13|target2~12_combout\,
	ena => \inst13|target2[1]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst13|target2\(0));

-- Location: LCCOMB_X15_Y12_N0
\inst13|LessThan7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|LessThan7~0_combout\ = (\inst13|cnt2\(1) & (\inst13|cnt2\(3) & ((\inst13|cnt2\(0)) # (!\inst13|target2\(0))))) # (!\inst13|cnt2\(1) & (!\inst13|cnt2\(0) & (\inst13|target2\(0) & !\inst13|cnt2\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|cnt2\(0),
	datab => \inst13|cnt2\(1),
	datac => \inst13|target2\(0),
	datad => \inst13|cnt2\(3),
	combout => \inst13|LessThan7~0_combout\);

-- Location: LCCOMB_X15_Y12_N10
\inst13|LessThan7~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|LessThan7~1_combout\ = (\inst13|cnt2\(2) & (\inst13|target2\(1) & (!\inst13|cnt2\(3)))) # (!\inst13|cnt2\(2) & ((\inst13|LessThan7~0_combout\ & ((!\inst13|cnt2\(3)))) # (!\inst13|LessThan7~0_combout\ & (\inst13|target2\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|target2\(1),
	datab => \inst13|cnt2\(3),
	datac => \inst13|cnt2\(2),
	datad => \inst13|LessThan7~0_combout\,
	combout => \inst13|LessThan7~1_combout\);

-- Location: LCCOMB_X15_Y12_N24
\inst13|LessThan7~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|LessThan7~2_combout\ = (\inst13|cnt2\(5)) # ((\inst13|cnt2\(4)) # (!\inst13|LessThan7~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|cnt2\(5),
	datac => \inst13|cnt2\(4),
	datad => \inst13|LessThan7~1_combout\,
	combout => \inst13|LessThan7~2_combout\);

-- Location: LCCOMB_X15_Y12_N28
\inst13|LessThan7~2_wirecell\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|LessThan7~2_wirecell_combout\ = !\inst13|LessThan7~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|LessThan7~2_combout\,
	combout => \inst13|LessThan7~2_wirecell_combout\);

-- Location: LCFF_X15_Y12_N29
\inst13|Delaying2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst17|out_8~clkctrl_outclk\,
	datain => \inst13|LessThan7~2_wirecell_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst13|Delaying2~regout\);

-- Location: LCCOMB_X14_Y12_N20
\inst13|last2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|last2~0_combout\ = (\inst13|Equal6~0_combout\ & (\inst13|Delaying2~regout\)) # (!\inst13|Equal6~0_combout\ & ((\inst13|last2~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|Delaying2~regout\,
	datac => \inst13|last2~regout\,
	datad => \inst13|Equal6~0_combout\,
	combout => \inst13|last2~0_combout\);

-- Location: LCCOMB_X14_Y12_N14
\inst13|last2~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|last2~3_combout\ = (\inst13|last2~regout\ & ((\inst13|Delaying2~regout\) # (\inst13|mystate\(1) $ (!\inst13|mystate\(0))))) # (!\inst13|last2~regout\ & (\inst13|Delaying2~regout\ & (\inst13|mystate\(1) $ (\inst13|mystate\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|last2~regout\,
	datab => \inst13|mystate\(1),
	datac => \inst13|mystate\(0),
	datad => \inst13|Delaying2~regout\,
	combout => \inst13|last2~3_combout\);

-- Location: LCCOMB_X14_Y12_N24
\inst13|last2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|last2~4_combout\ = (\inst13|led~10_combout\ & ((\inst13|LessThan2~7_combout\ & (\inst13|last2~regout\)) # (!\inst13|LessThan2~7_combout\ & ((\inst13|last2~3_combout\))))) # (!\inst13|led~10_combout\ & (\inst13|last2~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|last2~regout\,
	datab => \inst13|last2~3_combout\,
	datac => \inst13|led~10_combout\,
	datad => \inst13|LessThan2~7_combout\,
	combout => \inst13|last2~4_combout\);

-- Location: LCFF_X14_Y12_N21
\inst13|last2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst13|last2~0_combout\,
	sdata => \inst13|last2~4_combout\,
	sload => \inst13|ALT_INV_state.10~regout\,
	ena => \inst13|speed~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst13|last2~regout\);

-- Location: LCCOMB_X15_Y12_N26
\inst13|always1~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|always1~9_combout\ = (\inst13|backStatus.01~regout\ & (\inst13|last2~regout\ & !\inst13|Delaying2~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|backStatus.01~regout\,
	datac => \inst13|last2~regout\,
	datad => \inst13|Delaying2~regout\,
	combout => \inst13|always1~9_combout\);

-- Location: LCCOMB_X14_Y10_N26
\inst13|backdone~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|backdone~3_combout\ = (!\inst13|always1~9_combout\ & ((\inst13|backStatus.00~regout\) # (!\inst13|LessThan3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|backStatus.00~regout\,
	datac => \inst13|LessThan3~1_combout\,
	datad => \inst13|always1~9_combout\,
	combout => \inst13|backdone~3_combout\);

-- Location: LCCOMB_X17_Y12_N30
\inst13|backdone~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|backdone~4_combout\ = (\inst13|always1~8_combout\ & (\inst13|always1~2_combout\ & (\inst13|Equal7~0_combout\ & \inst13|backdone~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|always1~8_combout\,
	datab => \inst13|always1~2_combout\,
	datac => \inst13|Equal7~0_combout\,
	datad => \inst13|backdone~3_combout\,
	combout => \inst13|backdone~4_combout\);

-- Location: LCCOMB_X17_Y12_N0
\inst13|backdone~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|backdone~6_combout\ = (\inst13|always1~3_combout\ & ((\inst13|backdone~4_combout\) # ((\inst13|backdone~regout\ & \inst13|backdone~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|backdone~regout\,
	datab => \inst13|backdone~5_combout\,
	datac => \inst13|always1~3_combout\,
	datad => \inst13|backdone~4_combout\,
	combout => \inst13|backdone~6_combout\);

-- Location: LCCOMB_X17_Y12_N16
\inst13|backdone~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|backdone~0_combout\ = (\inst13|LessThan2~7_combout\ & (\inst13|backdone~regout\)) # (!\inst13|LessThan2~7_combout\ & ((\inst13|backdone~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|LessThan2~7_combout\,
	datac => \inst13|backdone~regout\,
	datad => \inst13|backdone~6_combout\,
	combout => \inst13|backdone~0_combout\);

-- Location: LCCOMB_X15_Y8_N22
\inst13|backdone~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|backdone~7_combout\ = (\inst13|backdone~regout\) # ((\inst9|data\(4) & (!\inst9|data\(5) & \inst13|always1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|data\(4),
	datab => \inst13|backdone~regout\,
	datac => \inst9|data\(5),
	datad => \inst13|always1~6_combout\,
	combout => \inst13|backdone~7_combout\);

-- Location: LCFF_X17_Y12_N17
\inst13|backdone\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst13|backdone~0_combout\,
	sdata => \inst13|backdone~7_combout\,
	sload => \inst13|state.10~regout\,
	ena => \inst13|speed~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst13|backdone~regout\);

-- Location: LCCOMB_X15_Y7_N16
\inst13|always1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|always1~3_combout\ = ((\inst13|backdone~regout\) # (!\Signs~combout\(3))) # (!\inst13|lastsign3~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|lastsign3~regout\,
	datab => \Signs~combout\(3),
	datad => \inst13|backdone~regout\,
	combout => \inst13|always1~3_combout\);

-- Location: LCCOMB_X14_Y8_N18
\inst13|always1~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|always1~10_combout\ = (\inst13|last2~regout\ & (!\inst13|Delaying2~regout\ & \inst13|backStatus~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|last2~regout\,
	datab => \inst13|Delaying2~regout\,
	datad => \inst13|backStatus~13_combout\,
	combout => \inst13|always1~10_combout\);

-- Location: LCCOMB_X15_Y10_N20
\inst13|always1~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|always1~15_combout\ = (\inst13|LessThan3~1_combout\ & ((\inst9|data\(0) $ (\inst13|flag~regout\)) # (!\inst13|backStatus.00~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|data\(0),
	datab => \inst13|backStatus.00~regout\,
	datac => \inst13|flag~regout\,
	datad => \inst13|LessThan3~1_combout\,
	combout => \inst13|always1~15_combout\);

-- Location: LCCOMB_X13_Y10_N2
\inst13|backStatus~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|backStatus~20_combout\ = (!\inst13|always1~15_combout\ & ((\inst13|always1~10_combout\) # ((!\inst13|backStatus~12_combout\ & !\inst13|always1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|backStatus~12_combout\,
	datab => \inst13|always1~6_combout\,
	datac => \inst13|always1~10_combout\,
	datad => \inst13|always1~15_combout\,
	combout => \inst13|backStatus~20_combout\);

-- Location: LCCOMB_X13_Y12_N12
\inst13|backStatus~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|backStatus~21_combout\ = (\inst13|state.10~regout\ & (((\inst13|backStatus~20_combout\)))) # (!\inst13|state.10~regout\ & (\inst13|always1~9_combout\ & (\inst13|always1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|always1~9_combout\,
	datab => \inst13|always1~3_combout\,
	datac => \inst13|state.10~regout\,
	datad => \inst13|backStatus~20_combout\,
	combout => \inst13|backStatus~21_combout\);

-- Location: LCFF_X13_Y12_N13
\inst13|backStatus.10\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst13|backStatus~21_combout\,
	ena => \inst13|backStatus~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst13|backStatus.10~regout\);

-- Location: LCCOMB_X14_Y8_N22
\inst13|always1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|always1~4_combout\ = (\inst13|direction~regout\ & (\inst13|backStatus.10~regout\ & (\inst13|flag~regout\ $ (!\inst9|data\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|direction~regout\,
	datab => \inst13|flag~regout\,
	datac => \inst9|data\(0),
	datad => \inst13|backStatus.10~regout\,
	combout => \inst13|always1~4_combout\);

-- Location: LCCOMB_X14_Y8_N16
\inst13|always1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|always1~6_combout\ = (\inst13|always1~5_combout\ & (\inst13|LessThan1~2_combout\ & (!\inst4|dis\(5) & \inst13|always1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|always1~5_combout\,
	datab => \inst13|LessThan1~2_combout\,
	datac => \inst4|dis\(5),
	datad => \inst13|always1~4_combout\,
	combout => \inst13|always1~6_combout\);

-- Location: LCCOMB_X14_Y7_N14
\inst13|speed~72\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|speed~72_combout\ = (!\inst13|always1~6_combout\ & (!\inst13|always1~10_combout\ & ((\inst13|speed[6]~35_combout\) # (!\inst13|LessThan3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|LessThan3~1_combout\,
	datab => \inst13|speed[6]~35_combout\,
	datac => \inst13|always1~6_combout\,
	datad => \inst13|always1~10_combout\,
	combout => \inst13|speed~72_combout\);

-- Location: LCCOMB_X13_Y12_N16
\inst13|backStatus~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|backStatus~14_combout\ = (\inst13|state.10~regout\ & ((\inst13|speed[6]~35_combout\) # ((!\inst13|speed~72_combout\)))) # (!\inst13|state.10~regout\ & (((\inst13|always1~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|speed[6]~35_combout\,
	datab => \inst13|state.10~regout\,
	datac => \inst13|speed~72_combout\,
	datad => \inst13|always1~3_combout\,
	combout => \inst13|backStatus~14_combout\);

-- Location: LCFF_X13_Y12_N17
\inst13|backStatus.00\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst13|backStatus~14_combout\,
	ena => \inst13|backStatus~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst13|backStatus.00~regout\);

-- Location: LCCOMB_X13_Y8_N8
\inst13|speed[6]~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|speed[6]~35_combout\ = (\inst13|backStatus.00~regout\ & (\inst13|flag~regout\ $ (!\inst9|data\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|backStatus.00~regout\,
	datac => \inst13|flag~regout\,
	datad => \inst9|data\(0),
	combout => \inst13|speed[6]~35_combout\);

-- Location: PIN_139,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Infrared[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Infrared(2),
	combout => \Infrared~combout\(2));

-- Location: PIN_141,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Infrared[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Infrared(3),
	combout => \Infrared~combout\(3));

-- Location: LCCOMB_X13_Y7_N4
\inst13|speed[6]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|speed[6]~36_combout\ = (\Infrared~combout\(2) & \Infrared~combout\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Infrared~combout\(2),
	datac => \Infrared~combout\(3),
	combout => \inst13|speed[6]~36_combout\);

-- Location: LCCOMB_X14_Y8_N12
\inst13|speed~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|speed~37_combout\ = (\inst13|LessThan1~2_combout\ & (!\inst13|speed[6]~36_combout\ & ((!\inst4|dis\(5)) # (!\inst13|LessThan5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|LessThan1~2_combout\,
	datab => \inst13|speed[6]~36_combout\,
	datac => \inst13|LessThan5~0_combout\,
	datad => \inst4|dis\(5),
	combout => \inst13|speed~37_combout\);

-- Location: LCCOMB_X13_Y8_N10
\inst13|speed[6]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|speed[6]~38_combout\ = (!\inst13|backStatus.01~regout\ & (\inst13|speed[6]~35_combout\ & ((!\inst13|speed~37_combout\) # (!\inst13|backStatus.10~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|backStatus.01~regout\,
	datab => \inst13|backStatus.10~regout\,
	datac => \inst13|speed[6]~35_combout\,
	datad => \inst13|speed~37_combout\,
	combout => \inst13|speed[6]~38_combout\);

-- Location: LCCOMB_X13_Y8_N28
\inst13|speed[6]~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|speed[6]~41_combout\ = (\inst13|speed[6]~38_combout\ & (\inst13|LessThan1~3_combout\)) # (!\inst13|speed[6]~38_combout\ & ((!\inst13|speed[6]~35_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|LessThan1~3_combout\,
	datac => \inst13|speed[6]~35_combout\,
	datad => \inst13|speed[6]~38_combout\,
	combout => \inst13|speed[6]~41_combout\);

-- Location: LCCOMB_X18_Y8_N12
\inst13|initialSpeed~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|initialSpeed~2_combout\ = (\inst13|display[6]~1_combout\ & !\inst13|state.01~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|display[6]~1_combout\,
	datad => \inst13|state.01~regout\,
	combout => \inst13|initialSpeed~2_combout\);

-- Location: LCFF_X18_Y8_N13
\inst13|initialSpeed[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst13|initialSpeed~2_combout\,
	ena => \inst13|initialSpeed[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst13|initialSpeed\(6));

-- Location: LCCOMB_X17_Y11_N6
\inst13|Add2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|Add2~4_combout\ = (\inst13|initialSpeed\(3) & (\inst13|Add2~3\ $ (GND))) # (!\inst13|initialSpeed\(3) & ((GND) # (!\inst13|Add2~3\)))
-- \inst13|Add2~5\ = CARRY((!\inst13|Add2~3\) # (!\inst13|initialSpeed\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|initialSpeed\(3),
	datad => VCC,
	cin => \inst13|Add2~3\,
	combout => \inst13|Add2~4_combout\,
	cout => \inst13|Add2~5\);

-- Location: LCCOMB_X17_Y11_N8
\inst13|Add2~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|Add2~6_combout\ = (\inst13|initialSpeed\(4) & (!\inst13|Add2~5\)) # (!\inst13|initialSpeed\(4) & ((\inst13|Add2~5\) # (GND)))
-- \inst13|Add2~7\ = CARRY((!\inst13|Add2~5\) # (!\inst13|initialSpeed\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst13|initialSpeed\(4),
	datad => VCC,
	cin => \inst13|Add2~5\,
	combout => \inst13|Add2~6_combout\,
	cout => \inst13|Add2~7\);

-- Location: LCCOMB_X17_Y11_N12
\inst13|Add2~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|Add2~10_combout\ = (\inst13|initialSpeed\(6) & (!\inst13|Add2~9\)) # (!\inst13|initialSpeed\(6) & ((\inst13|Add2~9\) # (GND)))
-- \inst13|Add2~11\ = CARRY((!\inst13|Add2~9\) # (!\inst13|initialSpeed\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst13|initialSpeed\(6),
	datad => VCC,
	cin => \inst13|Add2~9\,
	combout => \inst13|Add2~10_combout\,
	cout => \inst13|Add2~11\);

-- Location: LCCOMB_X17_Y11_N14
\inst13|Add2~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|Add2~12_combout\ = \inst13|Add2~11\ $ (!\inst13|initialSpeed\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst13|initialSpeed\(7),
	cin => \inst13|Add2~11\,
	combout => \inst13|Add2~12_combout\);

-- Location: LCCOMB_X13_Y8_N26
\inst13|speed~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|speed~42_combout\ = (\inst13|speed[6]~38_combout\ & ((\inst13|Add4~12_combout\) # ((\inst13|speed[6]~41_combout\)))) # (!\inst13|speed[6]~38_combout\ & (((\inst13|Add2~12_combout\ & !\inst13|speed[6]~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Add4~12_combout\,
	datab => \inst13|speed[6]~38_combout\,
	datac => \inst13|Add2~12_combout\,
	datad => \inst13|speed[6]~41_combout\,
	combout => \inst13|speed~42_combout\);

-- Location: LCCOMB_X17_Y10_N18
\inst13|speed~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|speed~43_combout\ = (\inst13|speed[6]~41_combout\ & ((\inst13|speed~42_combout\ & ((\inst13|Add3~14_combout\))) # (!\inst13|speed~42_combout\ & (\inst13|Add1~12_combout\)))) # (!\inst13|speed[6]~41_combout\ & (((\inst13|speed~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Add1~12_combout\,
	datab => \inst13|Add3~14_combout\,
	datac => \inst13|speed[6]~41_combout\,
	datad => \inst13|speed~42_combout\,
	combout => \inst13|speed~43_combout\);

-- Location: LCCOMB_X13_Y6_N10
\inst13|Equal5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|Equal5~0_combout\ = (\inst9|data\(5)) # (\inst9|data\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst9|data\(5),
	datad => \inst9|data\(4),
	combout => \inst13|Equal5~0_combout\);

-- Location: LCCOMB_X17_Y10_N26
\inst13|speed~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|speed~39_combout\ = (!\inst13|always1~6_combout\ & (\inst13|Equal5~0_combout\ & ((!\inst13|speed[6]~38_combout\) # (!\inst13|backStatus~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|backStatus~12_combout\,
	datab => \inst13|always1~6_combout\,
	datac => \inst13|speed[6]~38_combout\,
	datad => \inst13|Equal5~0_combout\,
	combout => \inst13|speed~39_combout\);

-- Location: LCCOMB_X17_Y10_N16
\inst13|speed~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|speed~40_combout\ = (\inst13|state.10~regout\ & (((\inst13|speed~39_combout\)))) # (!\inst13|state.10~regout\ & (\inst13|always1~3_combout\ & (!\inst13|LessThan2~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|state.10~regout\,
	datab => \inst13|always1~3_combout\,
	datac => \inst13|LessThan2~7_combout\,
	datad => \inst13|speed~39_combout\,
	combout => \inst13|speed~40_combout\);

-- Location: LCCOMB_X14_Y10_N18
\inst13|direction~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|direction~2_combout\ = (!\inst13|always1~10_combout\ & ((\inst13|speed[6]~35_combout\) # (!\inst13|LessThan3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|LessThan3~1_combout\,
	datac => \inst13|always1~10_combout\,
	datad => \inst13|speed[6]~35_combout\,
	combout => \inst13|direction~2_combout\);

-- Location: LCCOMB_X14_Y10_N4
\inst13|direction~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|direction~5_combout\ = (!\inst13|direction~regout\ & (((\inst9|data\(5)) # (!\inst13|direction~2_combout\)) # (!\inst13|led~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|led~20_combout\,
	datab => \inst9|data\(5),
	datac => \inst13|direction~regout\,
	datad => \inst13|direction~2_combout\,
	combout => \inst13|direction~5_combout\);

-- Location: LCCOMB_X15_Y10_N10
\inst13|direction~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|direction~6_combout\ = (\inst13|backStatus.00~regout\ & (\inst13|backStatus.01~regout\ & (\inst13|flag~regout\ $ (!\inst9|data\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|backStatus.00~regout\,
	datab => \inst13|backStatus.01~regout\,
	datac => \inst13|flag~regout\,
	datad => \inst9|data\(0),
	combout => \inst13|direction~6_combout\);

-- Location: LCCOMB_X14_Y10_N6
\inst13|direction~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|direction~7_combout\ = ((\inst13|direction~2_combout\ & ((\inst13|always1~6_combout\) # (\inst13|direction~6_combout\)))) # (!\inst9|data\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|always1~6_combout\,
	datab => \inst9|data\(4),
	datac => \inst13|direction~6_combout\,
	datad => \inst13|direction~2_combout\,
	combout => \inst13|direction~7_combout\);

-- Location: LCCOMB_X14_Y10_N12
\inst13|direction~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|direction~8_combout\ = (\inst13|state.10~regout\ & ((\inst13|direction~5_combout\) # ((!\inst9|data\(5) & \inst13|direction~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|state.10~regout\,
	datab => \inst9|data\(5),
	datac => \inst13|direction~5_combout\,
	datad => \inst13|direction~7_combout\,
	combout => \inst13|direction~8_combout\);

-- Location: LCCOMB_X13_Y10_N20
\inst13|direction~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|direction~3_combout\ = (\inst13|LessThan6~1_combout\ & ((\inst9|data\(0) & ((!\inst9|data\(1)) # (!\inst13|direction~regout\))) # (!\inst9|data\(0) & (!\inst13|direction~regout\ & !\inst9|data\(1))))) # (!\inst13|LessThan6~1_combout\ & 
-- (((!\inst13|direction~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|LessThan6~1_combout\,
	datab => \inst9|data\(0),
	datac => \inst13|direction~regout\,
	datad => \inst9|data\(1),
	combout => \inst13|direction~3_combout\);

-- Location: LCCOMB_X14_Y11_N8
\inst2|always0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|always0~3_combout\ = (\inst5|dis\(2) & (\inst5|dis\(3) & \inst5|dis\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|dis\(2),
	datac => \inst5|dis\(3),
	datad => \inst5|dis\(1),
	combout => \inst2|always0~3_combout\);

-- Location: LCCOMB_X19_Y11_N30
\inst2|LessThan0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|LessThan0~0_combout\ = ((\inst5|dis\(4) & (\inst5|dis\(0) & \inst2|always0~3_combout\))) # (!\inst2|always0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|dis\(4),
	datab => \inst5|dis\(0),
	datac => \inst2|always0~0_combout\,
	datad => \inst2|always0~3_combout\,
	combout => \inst2|LessThan0~0_combout\);

-- Location: LCCOMB_X20_Y13_N2
\inst14|cnt[0]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst14|cnt[0]~8_combout\ = \inst14|cnt\(0) $ (VCC)
-- \inst14|cnt[0]~9\ = CARRY(\inst14|cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst14|cnt\(0),
	datad => VCC,
	combout => \inst14|cnt[0]~8_combout\,
	cout => \inst14|cnt[0]~9\);

-- Location: PIN_170,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ultraright_echo~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_ultraright_echo,
	combout => \ultraright_echo~combout\);

-- Location: LCCOMB_X20_Y13_N6
\inst14|cnt[2]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst14|cnt[2]~12_combout\ = (\inst14|cnt\(2) & (\inst14|cnt[1]~11\ $ (GND))) # (!\inst14|cnt\(2) & (!\inst14|cnt[1]~11\ & VCC))
-- \inst14|cnt[2]~13\ = CARRY((\inst14|cnt\(2) & !\inst14|cnt[1]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|cnt\(2),
	datad => VCC,
	cin => \inst14|cnt[1]~11\,
	combout => \inst14|cnt[2]~12_combout\,
	cout => \inst14|cnt[2]~13\);

-- Location: LCCOMB_X20_Y13_N8
\inst14|cnt[3]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst14|cnt[3]~14_combout\ = (\inst14|cnt\(3) & (!\inst14|cnt[2]~13\)) # (!\inst14|cnt\(3) & ((\inst14|cnt[2]~13\) # (GND)))
-- \inst14|cnt[3]~15\ = CARRY((!\inst14|cnt[2]~13\) # (!\inst14|cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst14|cnt\(3),
	datad => VCC,
	cin => \inst14|cnt[2]~13\,
	combout => \inst14|cnt[3]~14_combout\,
	cout => \inst14|cnt[3]~15\);

-- Location: LCFF_X20_Y13_N9
\inst14|cnt[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst17|out_16k~clkctrl_outclk\,
	datain => \inst14|cnt[3]~14_combout\,
	sclr => \ALT_INV_ultraright_echo~combout\,
	ena => \inst14|cnt[5]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst14|cnt\(3));

-- Location: LCCOMB_X20_Y13_N10
\inst14|cnt[4]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst14|cnt[4]~16_combout\ = (\inst14|cnt\(4) & (\inst14|cnt[3]~15\ $ (GND))) # (!\inst14|cnt\(4) & (!\inst14|cnt[3]~15\ & VCC))
-- \inst14|cnt[4]~17\ = CARRY((\inst14|cnt\(4) & !\inst14|cnt[3]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|cnt\(4),
	datad => VCC,
	cin => \inst14|cnt[3]~15\,
	combout => \inst14|cnt[4]~16_combout\,
	cout => \inst14|cnt[4]~17\);

-- Location: LCCOMB_X20_Y13_N12
\inst14|cnt[5]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst14|cnt[5]~21_combout\ = (\inst14|cnt\(5) & (!\inst14|cnt[4]~17\)) # (!\inst14|cnt\(5) & ((\inst14|cnt[4]~17\) # (GND)))
-- \inst14|cnt[5]~22\ = CARRY((!\inst14|cnt[4]~17\) # (!\inst14|cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|cnt\(5),
	datad => VCC,
	cin => \inst14|cnt[4]~17\,
	combout => \inst14|cnt[5]~21_combout\,
	cout => \inst14|cnt[5]~22\);

-- Location: LCCOMB_X20_Y13_N14
\inst14|cnt[6]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst14|cnt[6]~23_combout\ = (\inst14|cnt\(6) & (\inst14|cnt[5]~22\ $ (GND))) # (!\inst14|cnt\(6) & (!\inst14|cnt[5]~22\ & VCC))
-- \inst14|cnt[6]~24\ = CARRY((\inst14|cnt\(6) & !\inst14|cnt[5]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst14|cnt\(6),
	datad => VCC,
	cin => \inst14|cnt[5]~22\,
	combout => \inst14|cnt[6]~23_combout\,
	cout => \inst14|cnt[6]~24\);

-- Location: LCFF_X20_Y13_N15
\inst14|cnt[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst17|out_16k~clkctrl_outclk\,
	datain => \inst14|cnt[6]~23_combout\,
	sclr => \ALT_INV_ultraright_echo~combout\,
	ena => \inst14|cnt[5]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst14|cnt\(6));

-- Location: LCCOMB_X20_Y13_N16
\inst14|cnt[7]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst14|cnt[7]~25_combout\ = \inst14|cnt[6]~24\ $ (\inst14|cnt\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst14|cnt\(7),
	cin => \inst14|cnt[6]~24\,
	combout => \inst14|cnt[7]~25_combout\);

-- Location: LCFF_X20_Y13_N17
\inst14|cnt[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst17|out_16k~clkctrl_outclk\,
	datain => \inst14|cnt[7]~25_combout\,
	sclr => \ALT_INV_ultraright_echo~combout\,
	ena => \inst14|cnt[5]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst14|cnt\(7));

-- Location: LCFF_X20_Y13_N11
\inst14|cnt[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst17|out_16k~clkctrl_outclk\,
	datain => \inst14|cnt[4]~16_combout\,
	sclr => \ALT_INV_ultraright_echo~combout\,
	ena => \inst14|cnt[5]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst14|cnt\(4));

-- Location: LCCOMB_X20_Y13_N28
\inst14|cnt[5]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst14|cnt[5]~18_combout\ = (\inst14|cnt\(3)) # ((\inst14|cnt\(4)) # ((\inst14|cnt\(0) & \inst14|cnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|cnt\(0),
	datab => \inst14|cnt\(1),
	datac => \inst14|cnt\(3),
	datad => \inst14|cnt\(4),
	combout => \inst14|cnt[5]~18_combout\);

-- Location: LCCOMB_X20_Y13_N26
\inst14|cnt[5]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst14|cnt[5]~19_combout\ = (\inst14|cnt\(5) & (\inst14|cnt\(6) & ((\inst14|cnt\(2)) # (\inst14|cnt[5]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|cnt\(5),
	datab => \inst14|cnt\(2),
	datac => \inst14|cnt\(6),
	datad => \inst14|cnt[5]~18_combout\,
	combout => \inst14|cnt[5]~19_combout\);

-- Location: LCCOMB_X20_Y13_N0
\inst14|cnt[5]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst14|cnt[5]~20_combout\ = ((!\inst14|cnt\(7) & !\inst14|cnt[5]~19_combout\)) # (!\ultraright_echo~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst14|cnt\(7),
	datac => \ultraright_echo~combout\,
	datad => \inst14|cnt[5]~19_combout\,
	combout => \inst14|cnt[5]~20_combout\);

-- Location: LCFF_X20_Y13_N3
\inst14|cnt[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst17|out_16k~clkctrl_outclk\,
	datain => \inst14|cnt[0]~8_combout\,
	sclr => \ALT_INV_ultraright_echo~combout\,
	ena => \inst14|cnt[5]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst14|cnt\(0));

-- Location: LCCOMB_X20_Y13_N4
\inst14|cnt[1]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst14|cnt[1]~10_combout\ = (\inst14|cnt\(1) & (!\inst14|cnt[0]~9\)) # (!\inst14|cnt\(1) & ((\inst14|cnt[0]~9\) # (GND)))
-- \inst14|cnt[1]~11\ = CARRY((!\inst14|cnt[0]~9\) # (!\inst14|cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst14|cnt\(1),
	datad => VCC,
	cin => \inst14|cnt[0]~9\,
	combout => \inst14|cnt[1]~10_combout\,
	cout => \inst14|cnt[1]~11\);

-- Location: LCFF_X20_Y13_N5
\inst14|cnt[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst17|out_16k~clkctrl_outclk\,
	datain => \inst14|cnt[1]~10_combout\,
	sclr => \ALT_INV_ultraright_echo~combout\,
	ena => \inst14|cnt[5]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst14|cnt\(1));

-- Location: LCFF_X20_Y13_N7
\inst14|cnt[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst17|out_16k~clkctrl_outclk\,
	datain => \inst14|cnt[2]~12_combout\,
	sclr => \ALT_INV_ultraright_echo~combout\,
	ena => \inst14|cnt[5]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst14|cnt\(2));

-- Location: LCCOMB_X20_Y13_N18
\inst14|dis[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst14|dis[2]~feeder_combout\ = \inst14|cnt\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst14|cnt\(2),
	combout => \inst14|dis[2]~feeder_combout\);

-- Location: LCFF_X20_Y13_N19
\inst14|dis[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_ultraright_echo~combout\,
	datain => \inst14|dis[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst14|dis\(2));

-- Location: LCFF_X19_Y13_N29
\inst14|dis[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_ultraright_echo~combout\,
	sdata => \inst14|cnt\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst14|dis\(1));

-- Location: LCCOMB_X20_Y13_N24
\inst14|dis[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst14|dis[3]~feeder_combout\ = \inst14|cnt\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst14|cnt\(3),
	combout => \inst14|dis[3]~feeder_combout\);

-- Location: LCFF_X20_Y13_N25
\inst14|dis[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_ultraright_echo~combout\,
	datain => \inst14|dis[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst14|dis\(3));

-- Location: LCCOMB_X19_Y13_N28
\inst2|LessThan5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|LessThan5~0_combout\ = (\inst14|dis\(2) & (\inst14|dis\(1) & \inst14|dis\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst14|dis\(2),
	datac => \inst14|dis\(1),
	datad => \inst14|dis\(3),
	combout => \inst2|LessThan5~0_combout\);

-- Location: LCFF_X20_Y13_N13
\inst14|cnt[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst17|out_16k~clkctrl_outclk\,
	datain => \inst14|cnt[5]~21_combout\,
	sclr => \ALT_INV_ultraright_echo~combout\,
	ena => \inst14|cnt[5]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst14|cnt\(5));

-- Location: LCCOMB_X20_Y13_N30
\inst14|dis[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst14|dis[5]~feeder_combout\ = \inst14|cnt\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst14|cnt\(5),
	combout => \inst14|dis[5]~feeder_combout\);

-- Location: LCFF_X20_Y13_N31
\inst14|dis[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_ultraright_echo~combout\,
	datain => \inst14|dis[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst14|dis\(5));

-- Location: LCFF_X19_Y13_N7
\inst14|dis[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_ultraright_echo~combout\,
	sdata => \inst14|cnt\(6),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst14|dis\(6));

-- Location: LCCOMB_X20_Y13_N20
\inst14|dis[7]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst14|dis[7]~feeder_combout\ = \inst14|cnt\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst14|cnt\(7),
	combout => \inst14|dis[7]~feeder_combout\);

-- Location: LCFF_X20_Y13_N21
\inst14|dis[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_ultraright_echo~combout\,
	datain => \inst14|dis[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst14|dis\(7));

-- Location: LCCOMB_X19_Y13_N6
\inst2|always0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|always0~1_combout\ = (!\inst14|dis\(5) & (!\inst14|dis\(6) & !\inst14|dis\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst14|dis\(5),
	datac => \inst14|dis\(6),
	datad => \inst14|dis\(7),
	combout => \inst2|always0~1_combout\);

-- Location: LCCOMB_X20_Y11_N8
\inst12|cnt[1]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst12|cnt[1]~13_combout\ = (\inst12|cnt\(1) & (!\inst12|cnt[0]~9\)) # (!\inst12|cnt\(1) & ((\inst12|cnt[0]~9\) # (GND)))
-- \inst12|cnt[1]~14\ = CARRY((!\inst12|cnt[0]~9\) # (!\inst12|cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst12|cnt\(1),
	datad => VCC,
	cin => \inst12|cnt[0]~9\,
	combout => \inst12|cnt[1]~13_combout\,
	cout => \inst12|cnt[1]~14\);

-- Location: PIN_149,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ultraleft_echo~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_ultraleft_echo,
	combout => \ultraleft_echo~combout\);

-- Location: LCCOMB_X20_Y11_N12
\inst12|cnt[3]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst12|cnt[3]~17_combout\ = (\inst12|cnt\(3) & (!\inst12|cnt[2]~16\)) # (!\inst12|cnt\(3) & ((\inst12|cnt[2]~16\) # (GND)))
-- \inst12|cnt[3]~18\ = CARRY((!\inst12|cnt[2]~16\) # (!\inst12|cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|cnt\(3),
	datad => VCC,
	cin => \inst12|cnt[2]~16\,
	combout => \inst12|cnt[3]~17_combout\,
	cout => \inst12|cnt[3]~18\);

-- Location: LCCOMB_X20_Y11_N14
\inst12|cnt[4]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst12|cnt[4]~19_combout\ = (\inst12|cnt\(4) & (\inst12|cnt[3]~18\ $ (GND))) # (!\inst12|cnt\(4) & (!\inst12|cnt[3]~18\ & VCC))
-- \inst12|cnt[4]~20\ = CARRY((\inst12|cnt\(4) & !\inst12|cnt[3]~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst12|cnt\(4),
	datad => VCC,
	cin => \inst12|cnt[3]~18\,
	combout => \inst12|cnt[4]~19_combout\,
	cout => \inst12|cnt[4]~20\);

-- Location: LCFF_X20_Y11_N15
\inst12|cnt[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst17|out_16k~clkctrl_outclk\,
	datain => \inst12|cnt[4]~19_combout\,
	sclr => \ALT_INV_ultraleft_echo~combout\,
	ena => \inst12|cnt[1]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst12|cnt\(4));

-- Location: LCCOMB_X20_Y11_N16
\inst12|cnt[5]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst12|cnt[5]~21_combout\ = (\inst12|cnt\(5) & (!\inst12|cnt[4]~20\)) # (!\inst12|cnt\(5) & ((\inst12|cnt[4]~20\) # (GND)))
-- \inst12|cnt[5]~22\ = CARRY((!\inst12|cnt[4]~20\) # (!\inst12|cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst12|cnt\(5),
	datad => VCC,
	cin => \inst12|cnt[4]~20\,
	combout => \inst12|cnt[5]~21_combout\,
	cout => \inst12|cnt[5]~22\);

-- Location: LCFF_X20_Y11_N17
\inst12|cnt[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst17|out_16k~clkctrl_outclk\,
	datain => \inst12|cnt[5]~21_combout\,
	sclr => \ALT_INV_ultraleft_echo~combout\,
	ena => \inst12|cnt[1]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst12|cnt\(5));

-- Location: LCCOMB_X20_Y11_N18
\inst12|cnt[6]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst12|cnt[6]~23_combout\ = (\inst12|cnt\(6) & (\inst12|cnt[5]~22\ $ (GND))) # (!\inst12|cnt\(6) & (!\inst12|cnt[5]~22\ & VCC))
-- \inst12|cnt[6]~24\ = CARRY((\inst12|cnt\(6) & !\inst12|cnt[5]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst12|cnt\(6),
	datad => VCC,
	cin => \inst12|cnt[5]~22\,
	combout => \inst12|cnt[6]~23_combout\,
	cout => \inst12|cnt[6]~24\);

-- Location: LCFF_X20_Y11_N19
\inst12|cnt[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst17|out_16k~clkctrl_outclk\,
	datain => \inst12|cnt[6]~23_combout\,
	sclr => \ALT_INV_ultraleft_echo~combout\,
	ena => \inst12|cnt[1]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst12|cnt\(6));

-- Location: LCCOMB_X20_Y11_N26
\inst12|cnt[1]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst12|cnt[1]~10_combout\ = (\inst12|cnt\(4)) # ((\inst12|cnt\(3)) # ((\inst12|cnt\(0) & \inst12|cnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|cnt\(0),
	datab => \inst12|cnt\(4),
	datac => \inst12|cnt\(1),
	datad => \inst12|cnt\(3),
	combout => \inst12|cnt[1]~10_combout\);

-- Location: LCCOMB_X20_Y11_N0
\inst12|cnt[1]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst12|cnt[1]~11_combout\ = (\inst12|cnt\(6) & (\inst12|cnt\(5) & ((\inst12|cnt\(2)) # (\inst12|cnt[1]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|cnt\(2),
	datab => \inst12|cnt\(6),
	datac => \inst12|cnt\(5),
	datad => \inst12|cnt[1]~10_combout\,
	combout => \inst12|cnt[1]~11_combout\);

-- Location: LCCOMB_X20_Y11_N22
\inst12|cnt[1]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst12|cnt[1]~12_combout\ = ((!\inst12|cnt\(7) & !\inst12|cnt[1]~11_combout\)) # (!\ultraleft_echo~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|cnt\(7),
	datac => \ultraleft_echo~combout\,
	datad => \inst12|cnt[1]~11_combout\,
	combout => \inst12|cnt[1]~12_combout\);

-- Location: LCFF_X20_Y11_N9
\inst12|cnt[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst17|out_16k~clkctrl_outclk\,
	datain => \inst12|cnt[1]~13_combout\,
	sclr => \ALT_INV_ultraleft_echo~combout\,
	ena => \inst12|cnt[1]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst12|cnt\(1));

-- Location: LCCOMB_X20_Y11_N10
\inst12|cnt[2]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst12|cnt[2]~15_combout\ = (\inst12|cnt\(2) & (\inst12|cnt[1]~14\ $ (GND))) # (!\inst12|cnt\(2) & (!\inst12|cnt[1]~14\ & VCC))
-- \inst12|cnt[2]~16\ = CARRY((\inst12|cnt\(2) & !\inst12|cnt[1]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst12|cnt\(2),
	datad => VCC,
	cin => \inst12|cnt[1]~14\,
	combout => \inst12|cnt[2]~15_combout\,
	cout => \inst12|cnt[2]~16\);

-- Location: LCFF_X20_Y11_N11
\inst12|cnt[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst17|out_16k~clkctrl_outclk\,
	datain => \inst12|cnt[2]~15_combout\,
	sclr => \ALT_INV_ultraleft_echo~combout\,
	ena => \inst12|cnt[1]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst12|cnt\(2));

-- Location: LCFF_X20_Y11_N13
\inst12|cnt[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst17|out_16k~clkctrl_outclk\,
	datain => \inst12|cnt[3]~17_combout\,
	sclr => \ALT_INV_ultraleft_echo~combout\,
	ena => \inst12|cnt[1]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst12|cnt\(3));

-- Location: LCCOMB_X20_Y11_N28
\inst12|dis[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst12|dis[3]~feeder_combout\ = \inst12|cnt\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst12|cnt\(3),
	combout => \inst12|dis[3]~feeder_combout\);

-- Location: LCFF_X20_Y11_N29
\inst12|dis[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_ultraleft_echo~combout\,
	datain => \inst12|dis[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst12|dis\(3));

-- Location: LCFF_X19_Y11_N1
\inst12|dis[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_ultraleft_echo~combout\,
	sdata => \inst12|cnt\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst12|dis\(1));

-- Location: LCCOMB_X20_Y11_N2
\inst12|dis[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst12|dis[2]~feeder_combout\ = \inst12|cnt\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst12|cnt\(2),
	combout => \inst12|dis[2]~feeder_combout\);

-- Location: LCFF_X20_Y11_N3
\inst12|dis[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_ultraleft_echo~combout\,
	datain => \inst12|dis[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst12|dis\(2));

-- Location: LCCOMB_X19_Y11_N0
\inst2|LessThan8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|LessThan8~0_combout\ = (\inst12|dis\(3) & (\inst12|dis\(1) & \inst12|dis\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst12|dis\(3),
	datac => \inst12|dis\(1),
	datad => \inst12|dis\(2),
	combout => \inst2|LessThan8~0_combout\);

-- Location: LCFF_X19_Y11_N7
\inst12|dis[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_ultraleft_echo~combout\,
	sdata => \inst12|cnt\(4),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst12|dis\(4));

-- Location: LCCOMB_X20_Y11_N20
\inst12|cnt[7]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst12|cnt[7]~25_combout\ = \inst12|cnt\(7) $ (\inst12|cnt[6]~24\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|cnt\(7),
	cin => \inst12|cnt[6]~24\,
	combout => \inst12|cnt[7]~25_combout\);

-- Location: LCFF_X20_Y11_N21
\inst12|cnt[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst17|out_16k~clkctrl_outclk\,
	datain => \inst12|cnt[7]~25_combout\,
	sclr => \ALT_INV_ultraleft_echo~combout\,
	ena => \inst12|cnt[1]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst12|cnt\(7));

-- Location: LCCOMB_X19_Y11_N22
\inst12|dis[7]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst12|dis[7]~feeder_combout\ = \inst12|cnt\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst12|cnt\(7),
	combout => \inst12|dis[7]~feeder_combout\);

-- Location: LCFF_X19_Y11_N23
\inst12|dis[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_ultraleft_echo~combout\,
	datain => \inst12|dis[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst12|dis\(7));

-- Location: LCFF_X19_Y11_N13
\inst12|dis[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_ultraleft_echo~combout\,
	sdata => \inst12|cnt\(6),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst12|dis\(6));

-- Location: LCCOMB_X20_Y11_N24
\inst12|dis[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst12|dis[5]~feeder_combout\ = \inst12|cnt\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst12|cnt\(5),
	combout => \inst12|dis[5]~feeder_combout\);

-- Location: LCFF_X20_Y11_N25
\inst12|dis[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_ultraleft_echo~combout\,
	datain => \inst12|dis[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst12|dis\(5));

-- Location: LCCOMB_X19_Y11_N12
\inst2|mode~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|mode~0_combout\ = (!\inst12|dis\(7) & (!\inst12|dis\(6) & !\inst12|dis\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst12|dis\(7),
	datac => \inst12|dis\(6),
	datad => \inst12|dis\(5),
	combout => \inst2|mode~0_combout\);

-- Location: LCCOMB_X19_Y11_N6
\inst2|LessThan8~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|LessThan8~1_combout\ = ((\inst12|dis\(0) & (\inst2|LessThan8~0_combout\ & \inst12|dis\(4)))) # (!\inst2|mode~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|dis\(0),
	datab => \inst2|LessThan8~0_combout\,
	datac => \inst12|dis\(4),
	datad => \inst2|mode~0_combout\,
	combout => \inst2|LessThan8~1_combout\);

-- Location: LCCOMB_X19_Y13_N26
\inst2|always0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|always0~2_combout\ = (\inst14|dis\(4) & (!\inst2|LessThan5~0_combout\ & (\inst2|always0~1_combout\ & \inst2|LessThan8~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|dis\(4),
	datab => \inst2|LessThan5~0_combout\,
	datac => \inst2|always0~1_combout\,
	datad => \inst2|LessThan8~1_combout\,
	combout => \inst2|always0~2_combout\);

-- Location: LCCOMB_X19_Y11_N4
\inst2|mode~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|mode~1_combout\ = ((\inst12|dis\(4) & ((\inst12|dis\(0)) # (!\inst2|LessThan8~0_combout\)))) # (!\inst2|mode~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|dis\(0),
	datab => \inst2|LessThan8~0_combout\,
	datac => \inst2|mode~0_combout\,
	datad => \inst12|dis\(4),
	combout => \inst2|mode~1_combout\);

-- Location: LCCOMB_X14_Y11_N0
\inst2|always0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|always0~4_combout\ = (\inst5|dis\(4) & (!\inst5|dis\(5) & (!\inst5|dis\(7) & !\inst5|dis\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|dis\(4),
	datab => \inst5|dis\(5),
	datac => \inst5|dis\(7),
	datad => \inst5|dis\(6),
	combout => \inst2|always0~4_combout\);

-- Location: LCCOMB_X19_Y11_N26
\inst2|mode~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|mode~2_combout\ = (\inst2|LessThan0~0_combout\ & (((\inst2|mode~1_combout\)))) # (!\inst2|LessThan0~0_combout\ & (!\inst2|always0~3_combout\ & ((\inst2|always0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|always0~3_combout\,
	datab => \inst2|mode~1_combout\,
	datac => \inst2|always0~4_combout\,
	datad => \inst2|LessThan0~0_combout\,
	combout => \inst2|mode~2_combout\);

-- Location: LCCOMB_X19_Y11_N16
\inst2|mode~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|mode~3_combout\ = (\inst2|always0~2_combout\ & (((\inst2|LessThan0~0_combout\) # (\inst2|mode~2_combout\)))) # (!\inst2|always0~2_combout\ & (\inst2|LessThan5~1_combout\ & ((\inst2|mode~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|LessThan5~1_combout\,
	datab => \inst2|LessThan0~0_combout\,
	datac => \inst2|always0~2_combout\,
	datad => \inst2|mode~2_combout\,
	combout => \inst2|mode~3_combout\);

-- Location: LCFF_X19_Y11_N17
\inst2|mode\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst17|out_16k~clkctrl_outclk\,
	datain => \inst2|mode~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|mode~regout\);

-- Location: LCCOMB_X13_Y10_N6
\inst13|direction~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|direction~4_combout\ = (!\inst13|state.00~regout\ & ((\inst13|Equal6~0_combout\ & ((\inst2|mode~regout\))) # (!\inst13|Equal6~0_combout\ & (\inst13|direction~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Equal6~0_combout\,
	datab => \inst13|state.00~regout\,
	datac => \inst13|direction~3_combout\,
	datad => \inst2|mode~regout\,
	combout => \inst13|direction~4_combout\);

-- Location: LCCOMB_X13_Y10_N8
\inst13|direction~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|direction~15_combout\ = (!\inst13|direction~4_combout\ & (((!\inst13|direction~14_combout\ & !\inst13|direction~8_combout\)) # (!\inst13|state.00~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|direction~14_combout\,
	datab => \inst13|state.00~regout\,
	datac => \inst13|direction~8_combout\,
	datad => \inst13|direction~4_combout\,
	combout => \inst13|direction~15_combout\);

-- Location: LCCOMB_X17_Y8_N24
\inst13|direction~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|direction~16_combout\ = (\inst13|state.00~regout\ & ((!\inst13|state.01~regout\))) # (!\inst13|state.00~regout\ & (!\inst9|data\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|data\(5),
	datac => \inst13|state.01~regout\,
	datad => \inst13|state.00~regout\,
	combout => \inst13|direction~16_combout\);

-- Location: LCFF_X13_Y10_N9
\inst13|direction\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst13|direction~15_combout\,
	ena => \inst13|direction~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst13|direction~regout\);

-- Location: LCFF_X14_Y8_N15
\inst4|dis[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_ultraback_echo~combout\,
	sdata => \inst4|cnt\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|dis\(0));

-- Location: LCCOMB_X14_Y8_N14
\inst13|always1~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|always1~7_combout\ = ((!\inst4|dis\(1) & (!\inst4|dis\(2) & !\inst4|dis\(0)))) # (!\inst4|dis\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|dis\(1),
	datab => \inst4|dis\(2),
	datac => \inst4|dis\(0),
	datad => \inst4|dis\(3),
	combout => \inst13|always1~7_combout\);

-- Location: LCCOMB_X14_Y8_N20
\inst13|degree~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|degree~19_combout\ = (!\inst4|dis\(5) & (\inst13|backStatus.10~regout\ & (!\inst4|dis\(6) & !\inst4|dis\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|dis\(5),
	datab => \inst13|backStatus.10~regout\,
	datac => \inst4|dis\(6),
	datad => \inst4|dis\(7),
	combout => \inst13|degree~19_combout\);

-- Location: LCCOMB_X14_Y8_N2
\inst13|always1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|always1~8_combout\ = (!\inst4|dis\(4) & (\inst13|direction~regout\ & (\inst13|always1~7_combout\ & \inst13|degree~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|dis\(4),
	datab => \inst13|direction~regout\,
	datac => \inst13|always1~7_combout\,
	datad => \inst13|degree~19_combout\,
	combout => \inst13|always1~8_combout\);

-- Location: LCCOMB_X17_Y9_N2
\inst13|speed~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|speed~48_combout\ = ((!\inst13|mystate\(1) & !\inst13|always1~8_combout\)) # (!\inst13|mystate\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|mystate\(0),
	datac => \inst13|mystate\(1),
	datad => \inst13|always1~8_combout\,
	combout => \inst13|speed~48_combout\);

-- Location: LCFF_X15_Y11_N21
\inst5|cnt[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst17|out_16k~clkctrl_outclk\,
	datain => \inst5|cnt[4]~16_combout\,
	sclr => \ALT_INV_ultra_2~combout\,
	ena => \inst5|cnt[3]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst5|cnt\(4));

-- Location: LCFF_X14_Y11_N31
\inst5|dis[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_ultra_2~combout\,
	sdata => \inst5|cnt\(4),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst5|dis\(4));

-- Location: LCCOMB_X14_Y11_N14
\inst13|LessThan6~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|LessThan6~1_combout\ = ((\inst5|dis\(4) & \inst13|LessThan6~0_combout\)) # (!\inst2|always0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|dis\(4),
	datac => \inst13|LessThan6~0_combout\,
	datad => \inst2|always0~0_combout\,
	combout => \inst13|LessThan6~1_combout\);

-- Location: LCCOMB_X14_Y9_N2
\inst13|speed[6]~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|speed[6]~44_combout\ = (\inst13|mystate\(1) & (((\inst13|mystate\(0)) # (\inst13|LessThan6~1_combout\)))) # (!\inst13|mystate\(1) & (((!\inst13|mystate\(0))) # (!\inst13|backStatus.00~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|backStatus.00~regout\,
	datab => \inst13|mystate\(1),
	datac => \inst13|mystate\(0),
	datad => \inst13|LessThan6~1_combout\,
	combout => \inst13|speed[6]~44_combout\);

-- Location: LCCOMB_X14_Y9_N24
\inst13|speed[6]~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|speed[6]~45_combout\ = (\inst13|Equal7~0_combout\ & ((\inst13|backStatus.01~regout\) # ((\inst13|backStatus.10~regout\) # (\inst13|speed[6]~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|backStatus.01~regout\,
	datab => \inst13|backStatus.10~regout\,
	datac => \inst13|Equal7~0_combout\,
	datad => \inst13|speed[6]~44_combout\,
	combout => \inst13|speed[6]~45_combout\);

-- Location: LCCOMB_X18_Y8_N24
\inst13|display[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|display[3]~4_combout\ = (\inst13|isSet~regout\ & ((!\inst13|initialSpeed\(3)))) # (!\inst13|isSet~regout\ & (\Button~combout\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Button~combout\(3),
	datab => \inst13|initialSpeed\(3),
	datad => \inst13|isSet~regout\,
	combout => \inst13|display[3]~4_combout\);

-- Location: LCCOMB_X17_Y9_N12
\inst13|Add6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|Add6~0_combout\ = \inst13|display[3]~4_combout\ $ (VCC)
-- \inst13|Add6~1\ = CARRY(\inst13|display[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|display[3]~4_combout\,
	datad => VCC,
	combout => \inst13|Add6~0_combout\,
	cout => \inst13|Add6~1\);

-- Location: LCCOMB_X17_Y9_N14
\inst13|Add6~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|Add6~2_combout\ = (\inst13|display[4]~3_combout\ & (!\inst13|Add6~1\)) # (!\inst13|display[4]~3_combout\ & ((\inst13|Add6~1\) # (GND)))
-- \inst13|Add6~3\ = CARRY((!\inst13|Add6~1\) # (!\inst13|display[4]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst13|display[4]~3_combout\,
	datad => VCC,
	cin => \inst13|Add6~1\,
	combout => \inst13|Add6~2_combout\,
	cout => \inst13|Add6~3\);

-- Location: LCCOMB_X17_Y9_N18
\inst13|Add6~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|Add6~6_combout\ = (\inst13|display[6]~1_combout\ & (!\inst13|Add6~5\)) # (!\inst13|display[6]~1_combout\ & ((\inst13|Add6~5\) # (GND)))
-- \inst13|Add6~7\ = CARRY((!\inst13|Add6~5\) # (!\inst13|display[6]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|display[6]~1_combout\,
	datad => VCC,
	cin => \inst13|Add6~5\,
	combout => \inst13|Add6~6_combout\,
	cout => \inst13|Add6~7\);

-- Location: LCCOMB_X17_Y9_N20
\inst13|Add6~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|Add6~8_combout\ = \inst13|display[7]~0_combout\ $ (!\inst13|Add6~7\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|display[7]~0_combout\,
	cin => \inst13|Add6~7\,
	combout => \inst13|Add6~8_combout\);

-- Location: LCCOMB_X18_Y8_N8
\inst13|display[1]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|display[1]~6_combout\ = (\inst13|isSet~regout\ & ((!\inst13|initialSpeed\(1)))) # (!\inst13|isSet~regout\ & (\Button~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Button~combout\(1),
	datab => \inst13|initialSpeed\(1),
	datad => \inst13|isSet~regout\,
	combout => \inst13|display[1]~6_combout\);

-- Location: LCCOMB_X15_Y6_N6
\inst13|Add8~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|Add8~4_combout\ = (\inst13|display[3]~4_combout\ & ((GND) # (!\inst13|Add8~3\))) # (!\inst13|display[3]~4_combout\ & (\inst13|Add8~3\ $ (GND)))
-- \inst13|Add8~5\ = CARRY((\inst13|display[3]~4_combout\) # (!\inst13|Add8~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst13|display[3]~4_combout\,
	datad => VCC,
	cin => \inst13|Add8~3\,
	combout => \inst13|Add8~4_combout\,
	cout => \inst13|Add8~5\);

-- Location: LCCOMB_X15_Y6_N8
\inst13|Add8~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|Add8~6_combout\ = (\inst13|display[4]~3_combout\ & (!\inst13|Add8~5\)) # (!\inst13|display[4]~3_combout\ & ((\inst13|Add8~5\) # (GND)))
-- \inst13|Add8~7\ = CARRY((!\inst13|Add8~5\) # (!\inst13|display[4]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst13|display[4]~3_combout\,
	datad => VCC,
	cin => \inst13|Add8~5\,
	combout => \inst13|Add8~6_combout\,
	cout => \inst13|Add8~7\);

-- Location: LCCOMB_X15_Y6_N12
\inst13|Add8~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|Add8~10_combout\ = (\inst13|display[6]~1_combout\ & (!\inst13|Add8~9\)) # (!\inst13|display[6]~1_combout\ & ((\inst13|Add8~9\) # (GND)))
-- \inst13|Add8~11\ = CARRY((!\inst13|Add8~9\) # (!\inst13|display[6]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|display[6]~1_combout\,
	datad => VCC,
	cin => \inst13|Add8~9\,
	combout => \inst13|Add8~10_combout\,
	cout => \inst13|Add8~11\);

-- Location: LCCOMB_X15_Y6_N14
\inst13|Add8~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|Add8~12_combout\ = \inst13|Add8~11\ $ (!\inst13|display[7]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst13|display[7]~0_combout\,
	cin => \inst13|Add8~11\,
	combout => \inst13|Add8~12_combout\);

-- Location: LCCOMB_X14_Y9_N6
\inst13|speed~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|speed~46_combout\ = (\inst13|Equal7~0_combout\ & (((\inst13|speed[6]~44_combout\)))) # (!\inst13|Equal7~0_combout\ & ((\inst13|speed[6]~44_combout\ & (\inst13|display[7]~0_combout\)) # (!\inst13|speed[6]~44_combout\ & 
-- ((\inst13|Add8~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|display[7]~0_combout\,
	datab => \inst13|Equal7~0_combout\,
	datac => \inst13|Add8~12_combout\,
	datad => \inst13|speed[6]~44_combout\,
	combout => \inst13|speed~46_combout\);

-- Location: LCCOMB_X17_Y9_N28
\inst13|speed~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|speed~47_combout\ = (\inst13|speed[6]~45_combout\ & ((\inst13|speed~46_combout\ & ((\inst13|Add6~8_combout\))) # (!\inst13|speed~46_combout\ & (\inst13|Add7~14_combout\)))) # (!\inst13|speed[6]~45_combout\ & (((\inst13|speed~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Add7~14_combout\,
	datab => \inst13|speed[6]~45_combout\,
	datac => \inst13|Add6~8_combout\,
	datad => \inst13|speed~46_combout\,
	combout => \inst13|speed~47_combout\);

-- Location: LCCOMB_X17_Y9_N0
\inst13|speed~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|speed~50_combout\ = (\inst13|speed~49_combout\ & ((\inst13|display[7]~0_combout\) # ((\inst13|speed~48_combout\ & \inst13|speed~47_combout\)))) # (!\inst13|speed~49_combout\ & (\inst13|speed~48_combout\ & ((\inst13|speed~47_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|speed~49_combout\,
	datab => \inst13|speed~48_combout\,
	datac => \inst13|display[7]~0_combout\,
	datad => \inst13|speed~47_combout\,
	combout => \inst13|speed~50_combout\);

-- Location: LCCOMB_X17_Y10_N0
\inst13|speed~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|speed~51_combout\ = (\inst13|speed~40_combout\ & ((\inst13|state.10~regout\ & (\inst13|speed~43_combout\)) # (!\inst13|state.10~regout\ & ((\inst13|speed~50_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|state.10~regout\,
	datab => \inst13|speed~43_combout\,
	datac => \inst13|speed~40_combout\,
	datad => \inst13|speed~50_combout\,
	combout => \inst13|speed~51_combout\);

-- Location: LCCOMB_X14_Y10_N8
\inst13|speed[6]~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|speed[6]~52_combout\ = (\inst9|data\(5) & ((\inst13|state.10~regout\) # (!\inst13|state.00~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|data\(5),
	datac => \inst13|state.00~regout\,
	datad => \inst13|state.10~regout\,
	combout => \inst13|speed[6]~52_combout\);

-- Location: LCCOMB_X14_Y10_N14
\inst13|speed[6]~137\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|speed[6]~137_combout\ = ((\inst13|mystate\(0) & (!\inst13|mystate\(1) & !\inst13|backdone~3_combout\))) # (!\inst13|speed[6]~136_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|speed[6]~136_combout\,
	datab => \inst13|mystate\(0),
	datac => \inst13|mystate\(1),
	datad => \inst13|backdone~3_combout\,
	combout => \inst13|speed[6]~137_combout\);

-- Location: LCCOMB_X14_Y10_N16
\inst13|speed[6]~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|speed[6]~54_combout\ = (\inst13|always1~3_combout\ & (!\inst13|LessThan2~7_combout\ & (\inst13|speed[6]~137_combout\ & !\inst13|state.10~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|always1~3_combout\,
	datab => \inst13|LessThan2~7_combout\,
	datac => \inst13|speed[6]~137_combout\,
	datad => \inst13|state.10~regout\,
	combout => \inst13|speed[6]~54_combout\);

-- Location: LCCOMB_X14_Y10_N28
\inst13|speed[6]~55\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|speed[6]~55_combout\ = (\inst13|state.01~regout\) # ((\inst13|state.10~regout\ & (\inst9|data\(4) & !\inst13|direction~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|state.10~regout\,
	datab => \inst13|state.01~regout\,
	datac => \inst9|data\(4),
	datad => \inst13|direction~2_combout\,
	combout => \inst13|speed[6]~55_combout\);

-- Location: LCCOMB_X14_Y10_N22
\inst13|speed[6]~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|speed[6]~56_combout\ = (!\inst13|speed[6]~52_combout\ & (((!\inst13|speed[6]~54_combout\ & !\inst13|speed[6]~55_combout\)) # (!\inst13|state.00~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|state.00~regout\,
	datab => \inst13|speed[6]~52_combout\,
	datac => \inst13|speed[6]~54_combout\,
	datad => \inst13|speed[6]~55_combout\,
	combout => \inst13|speed[6]~56_combout\);

-- Location: LCFF_X17_Y10_N1
\inst13|speed[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst13|speed~51_combout\,
	sclr => \inst13|ALT_INV_state.00~regout\,
	ena => \inst13|speed[6]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst13|speed\(7));

-- Location: LCCOMB_X12_Y11_N0
\inst11|data[0]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|data[0]~3_combout\ = (\inst11|byteCount\(0) & (\inst11|byteCount\(1) & \inst11|byteCount\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|byteCount\(0),
	datac => \inst11|byteCount\(1),
	datad => \inst11|byteCount\(2),
	combout => \inst11|data[0]~3_combout\);

-- Location: LCCOMB_X14_Y11_N18
\inst11|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|Mux0~0_combout\ = (\inst11|byteCount\(3) & (\inst13|speed\(7))) # (!\inst11|byteCount\(3) & (((\inst11|data[0]~3_combout\ & \inst5|dis\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|byteCount\(3),
	datab => \inst13|speed\(7),
	datac => \inst11|data[0]~3_combout\,
	datad => \inst5|dis\(7),
	combout => \inst11|Mux0~0_combout\);

-- Location: LCCOMB_X13_Y11_N22
\inst11|Mux0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|Mux0~1_combout\ = (!\inst11|data[0]~4_combout\ & \inst11|Mux0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst11|data[0]~4_combout\,
	datad => \inst11|Mux0~0_combout\,
	combout => \inst11|Mux0~1_combout\);

-- Location: LCFF_X13_Y11_N23
\inst11|data[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst17|out_9600~clkctrl_outclk\,
	datain => \inst11|Mux0~1_combout\,
	ena => \inst11|data[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst11|data\(7));

-- Location: LCCOMB_X17_Y11_N22
\inst13|Add1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|Add1~4_combout\ = (\inst13|initialSpeed\(3) & (!\inst13|Add1~3\ & VCC)) # (!\inst13|initialSpeed\(3) & (\inst13|Add1~3\ $ (GND)))
-- \inst13|Add1~5\ = CARRY((!\inst13|initialSpeed\(3) & !\inst13|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|initialSpeed\(3),
	datad => VCC,
	cin => \inst13|Add1~3\,
	combout => \inst13|Add1~4_combout\,
	cout => \inst13|Add1~5\);

-- Location: LCCOMB_X17_Y11_N24
\inst13|Add1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|Add1~6_combout\ = (\inst13|initialSpeed\(4) & (\inst13|Add1~5\ & VCC)) # (!\inst13|initialSpeed\(4) & (!\inst13|Add1~5\))
-- \inst13|Add1~7\ = CARRY((!\inst13|initialSpeed\(4) & !\inst13|Add1~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst13|initialSpeed\(4),
	datad => VCC,
	cin => \inst13|Add1~5\,
	combout => \inst13|Add1~6_combout\,
	cout => \inst13|Add1~7\);

-- Location: LCCOMB_X17_Y8_N8
\inst13|Add4~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|Add4~4_combout\ = (\inst13|initialSpeed\(3) & (!\inst13|Add4~3\ & VCC)) # (!\inst13|initialSpeed\(3) & (\inst13|Add4~3\ $ (GND)))
-- \inst13|Add4~5\ = CARRY((!\inst13|initialSpeed\(3) & !\inst13|Add4~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|initialSpeed\(3),
	datad => VCC,
	cin => \inst13|Add4~3\,
	combout => \inst13|Add4~4_combout\,
	cout => \inst13|Add4~5\);

-- Location: LCCOMB_X17_Y8_N10
\inst13|Add4~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|Add4~6_combout\ = (\inst13|initialSpeed\(4) & (!\inst13|Add4~5\)) # (!\inst13|initialSpeed\(4) & ((\inst13|Add4~5\) # (GND)))
-- \inst13|Add4~7\ = CARRY((!\inst13|Add4~5\) # (!\inst13|initialSpeed\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst13|initialSpeed\(4),
	datad => VCC,
	cin => \inst13|Add4~5\,
	combout => \inst13|Add4~6_combout\,
	cout => \inst13|Add4~7\);

-- Location: LCCOMB_X13_Y8_N4
\inst13|speed~57\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|speed~57_combout\ = (\inst13|speed[6]~38_combout\ & (((\inst13|Add4~10_combout\) # (\inst13|speed[6]~41_combout\)))) # (!\inst13|speed[6]~38_combout\ & (\inst13|Add2~10_combout\ & ((!\inst13|speed[6]~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|speed[6]~38_combout\,
	datab => \inst13|Add2~10_combout\,
	datac => \inst13|Add4~10_combout\,
	datad => \inst13|speed[6]~41_combout\,
	combout => \inst13|speed~57_combout\);

-- Location: LCCOMB_X17_Y9_N22
\inst13|speed~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|speed~58_combout\ = (\inst13|speed[6]~41_combout\ & ((\inst13|speed~57_combout\ & (\inst13|Add3~12_combout\)) # (!\inst13|speed~57_combout\ & ((\inst13|Add1~10_combout\))))) # (!\inst13|speed[6]~41_combout\ & (((\inst13|speed~57_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|speed[6]~41_combout\,
	datab => \inst13|Add3~12_combout\,
	datac => \inst13|Add1~10_combout\,
	datad => \inst13|speed~57_combout\,
	combout => \inst13|speed~58_combout\);

-- Location: PIN_193,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\dinfrared[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_dinfrared(1),
	combout => \dinfrared~combout\(1));

-- Location: PIN_191,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\dinfrared[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_dinfrared(2),
	combout => \dinfrared~combout\(2));

-- Location: LCCOMB_X12_Y8_N2
\inst13|speed~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|speed~49_combout\ = (\inst13|mystate\(1) & (\inst13|mystate\(0) & ((!\dinfrared~combout\(2)) # (!\dinfrared~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|mystate\(1),
	datab => \dinfrared~combout\(1),
	datac => \dinfrared~combout\(2),
	datad => \inst13|mystate\(0),
	combout => \inst13|speed~49_combout\);

-- Location: PIN_4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Button[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Button(6),
	combout => \Button~combout\(6));

-- Location: LCCOMB_X18_Y8_N18
\inst13|display[6]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|display[6]~1_combout\ = (\inst13|isSet~regout\ & ((\inst13|initialSpeed\(6)))) # (!\inst13|isSet~regout\ & (\Button~combout\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|isSet~regout\,
	datab => \Button~combout\(6),
	datad => \inst13|initialSpeed\(6),
	combout => \inst13|display[6]~1_combout\);

-- Location: LCCOMB_X14_Y9_N20
\inst13|speed~59\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|speed~59_combout\ = (\inst13|Equal7~0_combout\ & (\inst13|speed[6]~44_combout\)) # (!\inst13|Equal7~0_combout\ & ((\inst13|speed[6]~44_combout\ & ((\inst13|display[6]~1_combout\))) # (!\inst13|speed[6]~44_combout\ & (\inst13|Add8~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Equal7~0_combout\,
	datab => \inst13|speed[6]~44_combout\,
	datac => \inst13|Add8~10_combout\,
	datad => \inst13|display[6]~1_combout\,
	combout => \inst13|speed~59_combout\);

-- Location: LCCOMB_X17_Y9_N10
\inst13|speed~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|speed~60_combout\ = (\inst13|speed[6]~45_combout\ & ((\inst13|speed~59_combout\ & ((\inst13|Add6~6_combout\))) # (!\inst13|speed~59_combout\ & (\inst13|Add7~12_combout\)))) # (!\inst13|speed[6]~45_combout\ & (((\inst13|speed~59_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Add7~12_combout\,
	datab => \inst13|Add6~6_combout\,
	datac => \inst13|speed[6]~45_combout\,
	datad => \inst13|speed~59_combout\,
	combout => \inst13|speed~60_combout\);

-- Location: LCCOMB_X17_Y9_N24
\inst13|speed~61\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|speed~61_combout\ = (\inst13|display[6]~1_combout\ & ((\inst13|speed~49_combout\) # ((\inst13|speed~48_combout\ & \inst13|speed~60_combout\)))) # (!\inst13|display[6]~1_combout\ & (\inst13|speed~48_combout\ & ((\inst13|speed~60_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|display[6]~1_combout\,
	datab => \inst13|speed~48_combout\,
	datac => \inst13|speed~49_combout\,
	datad => \inst13|speed~60_combout\,
	combout => \inst13|speed~61_combout\);

-- Location: LCCOMB_X17_Y9_N8
\inst13|speed~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|speed~62_combout\ = (\inst13|speed~40_combout\ & ((\inst13|state.10~regout\ & (\inst13|speed~58_combout\)) # (!\inst13|state.10~regout\ & ((\inst13|speed~61_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|state.10~regout\,
	datab => \inst13|speed~58_combout\,
	datac => \inst13|speed~61_combout\,
	datad => \inst13|speed~40_combout\,
	combout => \inst13|speed~62_combout\);

-- Location: LCFF_X17_Y9_N9
\inst13|speed[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst13|speed~62_combout\,
	sclr => \inst13|ALT_INV_state.00~regout\,
	ena => \inst13|speed[6]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst13|speed\(6));

-- Location: LCCOMB_X12_Y11_N26
\inst11|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|Mux2~0_combout\ = (!\inst11|byteCount\(2) & (!\inst11|byteCount\(0) & (\inst11|byteCount\(3) & !\inst11|byteCount\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|byteCount\(2),
	datab => \inst11|byteCount\(0),
	datac => \inst11|byteCount\(3),
	datad => \inst11|byteCount\(1),
	combout => \inst11|Mux2~0_combout\);

-- Location: LCCOMB_X14_Y11_N22
\inst11|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|Mux1~0_combout\ = (\inst11|byteCount\(0) & (\inst5|dis\(6))) # (!\inst11|byteCount\(0) & ((!\inst13|direction~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|byteCount\(0),
	datac => \inst5|dis\(6),
	datad => \inst13|direction~regout\,
	combout => \inst11|Mux1~0_combout\);

-- Location: LCCOMB_X15_Y11_N8
\inst11|Mux1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|Mux1~2_combout\ = (\inst11|Mux1~1_combout\ & ((\inst11|Mux1~0_combout\) # ((\inst13|speed\(6) & \inst11|Mux2~0_combout\)))) # (!\inst11|Mux1~1_combout\ & (\inst13|speed\(6) & (\inst11|Mux2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Mux1~1_combout\,
	datab => \inst13|speed\(6),
	datac => \inst11|Mux2~0_combout\,
	datad => \inst11|Mux1~0_combout\,
	combout => \inst11|Mux1~2_combout\);

-- Location: LCFF_X15_Y11_N9
\inst11|data[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst17|out_9600~clkctrl_outclk\,
	datain => \inst11|Mux1~2_combout\,
	ena => \inst11|data[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst11|data\(6));

-- Location: LCCOMB_X13_Y9_N24
\inst13|speed~88\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|speed~88_combout\ = (\inst13|state.00~regout\ & ((\inst13|state.10~regout\) # ((\inst13|always1~3_combout\ & !\inst13|LessThan2~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|always1~3_combout\,
	datab => \inst13|state.00~regout\,
	datac => \inst13|state.10~regout\,
	datad => \inst13|LessThan2~7_combout\,
	combout => \inst13|speed~88_combout\);

-- Location: LCCOMB_X13_Y7_N16
\inst13|always1~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|always1~12_combout\ = (\dinfrared~combout\(1)) # (\dinfrared~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dinfrared~combout\(1),
	datad => \dinfrared~combout\(2),
	combout => \inst13|always1~12_combout\);

-- Location: LCCOMB_X17_Y9_N26
\inst13|speed~139\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|speed~139_combout\ = (\inst13|display[4]~3_combout\ & ((!\dinfrared~combout\(1)) # (!\dinfrared~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dinfrared~combout\(2),
	datac => \inst13|display[4]~3_combout\,
	datad => \dinfrared~combout\(1),
	combout => \inst13|speed~139_combout\);

-- Location: LCCOMB_X14_Y9_N10
\inst13|speed~83\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|speed~83_combout\ = (\inst13|Equal7~0_combout\ & (((\inst13|speed[6]~44_combout\)))) # (!\inst13|Equal7~0_combout\ & ((\inst13|speed[6]~44_combout\ & (\inst13|display[4]~3_combout\)) # (!\inst13|speed[6]~44_combout\ & 
-- ((\inst13|Add8~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Equal7~0_combout\,
	datab => \inst13|display[4]~3_combout\,
	datac => \inst13|Add8~6_combout\,
	datad => \inst13|speed[6]~44_combout\,
	combout => \inst13|speed~83_combout\);

-- Location: LCCOMB_X14_Y9_N0
\inst13|speed~84\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|speed~84_combout\ = (\inst13|speed[6]~45_combout\ & ((\inst13|speed~83_combout\ & ((\inst13|Add6~2_combout\))) # (!\inst13|speed~83_combout\ & (\inst13|Add7~8_combout\)))) # (!\inst13|speed[6]~45_combout\ & (((\inst13|speed~83_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Add7~8_combout\,
	datab => \inst13|Add6~2_combout\,
	datac => \inst13|speed[6]~45_combout\,
	datad => \inst13|speed~83_combout\,
	combout => \inst13|speed~84_combout\);

-- Location: LCCOMB_X12_Y6_N28
\inst13|led[1]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|led[1]~15_combout\ = (\inst13|state.10~regout\) # ((\inst13|mystate\(0) & \inst13|mystate\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|mystate\(0),
	datac => \inst13|state.10~regout\,
	datad => \inst13|mystate\(1),
	combout => \inst13|led[1]~15_combout\);

-- Location: LCCOMB_X12_Y6_N2
\inst13|led[1]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|led[1]~24_combout\ = ((\inst13|state.10~regout\ & ((\inst9|data\(4)) # (\inst9|data\(5))))) # (!\inst13|led[1]~15_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|data\(4),
	datab => \inst9|data\(5),
	datac => \inst13|state.10~regout\,
	datad => \inst13|led[1]~15_combout\,
	combout => \inst13|led[1]~24_combout\);

-- Location: LCCOMB_X13_Y9_N30
\inst13|speed[3]~85\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|speed[3]~85_combout\ = (!\inst13|state.10~regout\ & (((!\inst13|led[1]~24_combout\) # (!\inst13|always1~8_combout\)) # (!\inst13|Equal7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Equal7~0_combout\,
	datab => \inst13|always1~8_combout\,
	datac => \inst13|state.10~regout\,
	datad => \inst13|led[1]~24_combout\,
	combout => \inst13|speed[3]~85_combout\);

-- Location: LCCOMB_X13_Y9_N16
\inst13|speed~86\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|speed~86_combout\ = (\inst13|led[1]~24_combout\ & (((\inst13|speed~84_combout\ & \inst13|speed[3]~85_combout\)))) # (!\inst13|led[1]~24_combout\ & ((\inst13|speed~139_combout\) # ((!\inst13|speed[3]~85_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|led[1]~24_combout\,
	datab => \inst13|speed~139_combout\,
	datac => \inst13|speed~84_combout\,
	datad => \inst13|speed[3]~85_combout\,
	combout => \inst13|speed~86_combout\);

-- Location: LCCOMB_X13_Y8_N16
\inst13|backStatus~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|backStatus~12_combout\ = (\inst13|flag~regout\ $ (\inst9|data\(0))) # (!\inst13|backStatus.10~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|backStatus.10~regout\,
	datac => \inst13|flag~regout\,
	datad => \inst9|data\(0),
	combout => \inst13|backStatus~12_combout\);

-- Location: LCCOMB_X13_Y8_N30
\inst13|speed~80\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|speed~80_combout\ = (\inst13|speed[6]~38_combout\ & (((\inst13|speed[6]~41_combout\)))) # (!\inst13|speed[6]~38_combout\ & ((\inst13|speed[6]~41_combout\ & ((\inst13|Add1~6_combout\))) # (!\inst13|speed[6]~41_combout\ & 
-- (\inst13|Add2~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|speed[6]~38_combout\,
	datab => \inst13|Add2~6_combout\,
	datac => \inst13|Add1~6_combout\,
	datad => \inst13|speed[6]~41_combout\,
	combout => \inst13|speed~80_combout\);

-- Location: LCCOMB_X13_Y8_N12
\inst13|speed~81\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|speed~81_combout\ = (\inst13|speed[6]~38_combout\ & ((\inst13|speed~80_combout\ & ((\inst13|Add3~8_combout\))) # (!\inst13|speed~80_combout\ & (\inst13|Add4~6_combout\)))) # (!\inst13|speed[6]~38_combout\ & (((\inst13|speed~80_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|speed[6]~38_combout\,
	datab => \inst13|Add4~6_combout\,
	datac => \inst13|Add3~8_combout\,
	datad => \inst13|speed~80_combout\,
	combout => \inst13|speed~81_combout\);

-- Location: LCCOMB_X13_Y8_N6
\inst13|speed~82\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|speed~82_combout\ = (!\inst13|always1~6_combout\ & (\inst13|speed~81_combout\ & ((!\inst13|backStatus~12_combout\) # (!\inst13|speed[6]~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|always1~6_combout\,
	datab => \inst13|speed[6]~38_combout\,
	datac => \inst13|backStatus~12_combout\,
	datad => \inst13|speed~81_combout\,
	combout => \inst13|speed~82_combout\);

-- Location: LCCOMB_X13_Y9_N18
\inst13|speed~87\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|speed~87_combout\ = (\inst13|state.10~regout\ & ((\inst13|speed~86_combout\ & (!\inst13|always1~12_combout\)) # (!\inst13|speed~86_combout\ & ((\inst13|speed~82_combout\))))) # (!\inst13|state.10~regout\ & (((\inst13|speed~86_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|state.10~regout\,
	datab => \inst13|always1~12_combout\,
	datac => \inst13|speed~86_combout\,
	datad => \inst13|speed~82_combout\,
	combout => \inst13|speed~87_combout\);

-- Location: LCCOMB_X13_Y9_N26
\inst13|speed~89\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|speed~89_combout\ = (\inst13|Equal5~0_combout\ & (\inst13|state.00~regout\ & ((!\inst13|speed~87_combout\) # (!\inst13|speed~88_combout\)))) # (!\inst13|Equal5~0_combout\ & (((!\inst13|speed~87_combout\) # (!\inst13|speed~88_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Equal5~0_combout\,
	datab => \inst13|state.00~regout\,
	datac => \inst13|speed~88_combout\,
	datad => \inst13|speed~87_combout\,
	combout => \inst13|speed~89_combout\);

-- Location: LCFF_X13_Y9_N27
\inst13|speed[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst13|speed~89_combout\,
	ena => \inst13|speed[6]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst13|speed\(4));

-- Location: LCCOMB_X14_Y11_N12
\inst11|Mux1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|Mux1~1_combout\ = (!\inst11|byteCount\(3) & (\inst11|byteCount\(1) & \inst11|byteCount\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|byteCount\(3),
	datab => \inst11|byteCount\(1),
	datad => \inst11|byteCount\(2),
	combout => \inst11|Mux1~1_combout\);

-- Location: LCCOMB_X19_Y11_N2
\inst2|degree~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|degree~4_combout\ = (\inst2|LessThan0~0_combout\ & (((\inst2|LessThan8~0_combout\) # (!\inst2|mode~0_combout\)) # (!\inst12|dis\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|dis\(4),
	datab => \inst2|LessThan8~0_combout\,
	datac => \inst2|mode~0_combout\,
	datad => \inst2|LessThan0~0_combout\,
	combout => \inst2|degree~4_combout\);

-- Location: LCCOMB_X19_Y11_N8
\inst2|degree[6]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|degree[6]~0_combout\ = (\inst2|always0~0_combout\ & (((!\inst5|dis\(0) & \inst2|always0~3_combout\)) # (!\inst5|dis\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|dis\(4),
	datab => \inst5|dis\(0),
	datac => \inst2|always0~0_combout\,
	datad => \inst2|always0~3_combout\,
	combout => \inst2|degree[6]~0_combout\);

-- Location: LCFF_X19_Y13_N21
\inst14|dis[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_ultraright_echo~combout\,
	sdata => \inst14|cnt\(4),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst14|dis\(4));

-- Location: LCFF_X19_Y13_N25
\inst14|dis[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_ultraright_echo~combout\,
	sdata => \inst14|cnt\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst14|dis\(0));

-- Location: LCCOMB_X19_Y13_N24
\inst2|LessThan5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|LessThan5~1_combout\ = ((\inst14|dis\(4) & (\inst14|dis\(0) & \inst2|LessThan5~0_combout\))) # (!\inst2|always0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|always0~1_combout\,
	datab => \inst14|dis\(4),
	datac => \inst14|dis\(0),
	datad => \inst2|LessThan5~0_combout\,
	combout => \inst2|LessThan5~1_combout\);

-- Location: LCCOMB_X19_Y11_N20
\inst2|degree~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|degree~3_combout\ = (\inst2|degree[6]~0_combout\) # ((\inst2|LessThan8~1_combout\ & (\inst2|LessThan0~0_combout\ & \inst2|LessThan5~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|LessThan8~1_combout\,
	datab => \inst2|LessThan0~0_combout\,
	datac => \inst2|degree[6]~0_combout\,
	datad => \inst2|LessThan5~1_combout\,
	combout => \inst2|degree~3_combout\);

-- Location: LCCOMB_X19_Y11_N24
\inst2|degree~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|degree~5_combout\ = (\inst2|degree~3_combout\) # ((!\inst2|always0~2_combout\ & ((\inst2|degree~4_combout\) # (!\inst2|LessThan5~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|LessThan5~1_combout\,
	datab => \inst2|degree~4_combout\,
	datac => \inst2|degree~3_combout\,
	datad => \inst2|always0~2_combout\,
	combout => \inst2|degree~5_combout\);

-- Location: LCFF_X19_Y11_N25
\inst2|degree[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst17|out_16k~clkctrl_outclk\,
	datain => \inst2|degree~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|degree\(5));

-- Location: LCCOMB_X18_Y10_N8
\inst13|degree~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|degree~29_combout\ = (\inst13|Equal6~0_combout\ & (((\inst2|degree\(5))))) # (!\inst13|Equal6~0_combout\ & (\inst9|data\(2) $ ((!\inst9|data\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110100100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|data\(2),
	datab => \inst13|Equal6~0_combout\,
	datac => \inst9|data\(3),
	datad => \inst2|degree\(5),
	combout => \inst13|degree~29_combout\);

-- Location: LCCOMB_X18_Y6_N14
\inst13|speed[6]~99\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|speed[6]~99_combout\ = (\inst13|always1~3_combout\ & (!\inst13|LessThan2~7_combout\ & !\inst13|state.10~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|always1~3_combout\,
	datac => \inst13|LessThan2~7_combout\,
	datad => \inst13|state.10~regout\,
	combout => \inst13|speed[6]~99_combout\);

-- Location: LCCOMB_X17_Y10_N24
\inst13|speed~93\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|speed~93_combout\ = \dinfrared~combout\(1) $ (\dinfrared~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dinfrared~combout\(1),
	datad => \dinfrared~combout\(2),
	combout => \inst13|speed~93_combout\);

-- Location: LCCOMB_X14_Y9_N28
\inst13|led~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|led~11_combout\ = (!\inst13|backStatus.01~regout\ & \inst13|backStatus.00~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|backStatus.01~regout\,
	datad => \inst13|backStatus.00~regout\,
	combout => \inst13|led~11_combout\);

-- Location: LCCOMB_X14_Y8_N28
\inst13|degree~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|degree~31_combout\ = (\inst13|degree~19_combout\ & ((!\inst4|dis\(1)) # (!\inst13|LessThan5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|LessThan5~0_combout\,
	datab => \inst4|dis\(1),
	datad => \inst13|degree~19_combout\,
	combout => \inst13|degree~31_combout\);

-- Location: LCCOMB_X14_Y9_N22
\inst13|degree~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|degree~32_combout\ = (\inst13|Equal7~0_combout\ & (((!\Infrared~combout\(3) & \inst13|degree~31_combout\)) # (!\inst13|led~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Equal7~0_combout\,
	datab => \inst13|led~11_combout\,
	datac => \Infrared~combout\(3),
	datad => \inst13|degree~31_combout\,
	combout => \inst13|degree~32_combout\);

-- Location: LCCOMB_X14_Y9_N12
\inst13|degree~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|degree~33_combout\ = (\inst13|Equal7~0_combout\ & (\inst13|speed~65_combout\ & ((\inst13|degree~32_combout\)))) # (!\inst13|Equal7~0_combout\ & ((\inst13|speed~93_combout\) # ((\inst13|speed~65_combout\ & \inst13|degree~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Equal7~0_combout\,
	datab => \inst13|speed~65_combout\,
	datac => \inst13|speed~93_combout\,
	datad => \inst13|degree~32_combout\,
	combout => \inst13|degree~33_combout\);

-- Location: LCCOMB_X14_Y9_N26
\inst13|degree~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|degree~34_combout\ = (\inst13|degree~30_combout\) # ((\inst13|mystate\(0) & (\inst13|always1~2_combout\ & \inst13|degree~33_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|degree~30_combout\,
	datab => \inst13|mystate\(0),
	datac => \inst13|always1~2_combout\,
	datad => \inst13|degree~33_combout\,
	combout => \inst13|degree~34_combout\);

-- Location: LCCOMB_X18_Y10_N22
\inst13|degree~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|degree~35_combout\ = (\inst13|speed[6]~99_combout\ & ((\inst13|degree~34_combout\) # ((!\inst13|degree~84_combout\ & !\inst13|degree\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|degree~84_combout\,
	datab => \inst13|degree\(5),
	datac => \inst13|speed[6]~99_combout\,
	datad => \inst13|degree~34_combout\,
	combout => \inst13|degree~35_combout\);

-- Location: LCCOMB_X18_Y10_N6
\inst13|degree~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|degree~39_combout\ = (\inst13|state.00~regout\ & (!\inst13|degree~38_combout\ & ((!\inst13|degree~35_combout\)))) # (!\inst13|state.00~regout\ & (((!\inst13|degree~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001101000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|degree~38_combout\,
	datab => \inst13|state.00~regout\,
	datac => \inst13|degree~29_combout\,
	datad => \inst13|degree~35_combout\,
	combout => \inst13|degree~39_combout\);

-- Location: LCFF_X18_Y10_N7
\inst13|degree[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst13|degree~39_combout\,
	ena => \inst13|direction~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst13|degree\(5));

-- Location: LCCOMB_X13_Y8_N18
\inst13|degree~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|degree~18_combout\ = (!\inst13|backStatus.01~regout\ & (\inst13|backStatus.00~regout\ & (\inst13|flag~regout\ $ (!\inst9|data\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|backStatus.01~regout\,
	datab => \inst13|backStatus.00~regout\,
	datac => \inst13|flag~regout\,
	datad => \inst9|data\(0),
	combout => \inst13|degree~18_combout\);

-- Location: LCCOMB_X17_Y10_N28
\inst13|degree~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|degree~25_combout\ = (\Infrared~combout\(3)) # ((\inst13|backStatus~12_combout\) # (!\inst13|LessThan1~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Infrared~combout\(3),
	datac => \inst13|LessThan1~3_combout\,
	datad => \inst13|backStatus~12_combout\,
	combout => \inst13|degree~25_combout\);

-- Location: LCCOMB_X17_Y10_N2
\inst13|degree~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|degree~24_combout\ = (\inst13|Equal6~0_combout\ & (!\inst13|always1~6_combout\ & (!\inst13|always1~10_combout\ & !\inst13|always1~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Equal6~0_combout\,
	datab => \inst13|always1~6_combout\,
	datac => \inst13|always1~10_combout\,
	datad => \inst13|always1~15_combout\,
	combout => \inst13|degree~24_combout\);

-- Location: LCCOMB_X17_Y10_N8
\inst13|degree~72\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|degree~72_combout\ = (\inst13|degree~24_combout\ & (((!\inst13|degree~25_combout\) # (!\inst13|degree~18_combout\)))) # (!\inst13|degree~24_combout\ & (\inst13|degree\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|degree\(1),
	datab => \inst13|degree~18_combout\,
	datac => \inst13|degree~25_combout\,
	datad => \inst13|degree~24_combout\,
	combout => \inst13|degree~72_combout\);

-- Location: LCCOMB_X17_Y10_N22
\inst13|degree~87\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|degree~87_combout\ = (\inst13|Equal5~0_combout\ & (((\inst13|degree~72_combout\)))) # (!\inst13|Equal5~0_combout\ & (\dinfrared~combout\(1) $ ((\dinfrared~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dinfrared~combout\(1),
	datab => \dinfrared~combout\(2),
	datac => \inst13|degree~72_combout\,
	datad => \inst13|Equal5~0_combout\,
	combout => \inst13|degree~87_combout\);

-- Location: LCCOMB_X15_Y7_N22
\inst13|speed[6]~138\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|speed[6]~138_combout\ = (\inst13|LessThan2~7_combout\) # ((\inst13|lastsign3~regout\ & (\Signs~combout\(3) & !\inst13|backdone~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|lastsign3~regout\,
	datab => \Signs~combout\(3),
	datac => \inst13|backdone~regout\,
	datad => \inst13|LessThan2~7_combout\,
	combout => \inst13|speed[6]~138_combout\);

-- Location: LCCOMB_X15_Y7_N12
\inst13|degree~84\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|degree~84_combout\ = (\inst13|always1~2_combout\ & ((\inst13|mystate\(1)) # ((\inst13|speed~65_combout\) # (!\inst13|mystate\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|mystate\(1),
	datab => \inst13|mystate\(0),
	datac => \inst13|always1~2_combout\,
	datad => \inst13|speed~65_combout\,
	combout => \inst13|degree~84_combout\);

-- Location: LCCOMB_X15_Y7_N6
\inst13|degree~85\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|degree~85_combout\ = ((!\inst13|mystate\(0) & ((\inst13|target2\(1)) # (\inst13|target2\(0))))) # (!\inst13|degree~84_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|target2\(1),
	datab => \inst13|mystate\(0),
	datac => \inst13|target2\(0),
	datad => \inst13|degree~84_combout\,
	combout => \inst13|degree~85_combout\);

-- Location: LCCOMB_X18_Y11_N12
\inst13|degree~71\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|degree~71_combout\ = (\inst13|degree~70_combout\) # ((\inst13|speed[6]~138_combout\) # ((\inst13|degree\(1) & \inst13|degree~85_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|degree~70_combout\,
	datab => \inst13|degree\(1),
	datac => \inst13|speed[6]~138_combout\,
	datad => \inst13|degree~85_combout\,
	combout => \inst13|degree~71_combout\);

-- Location: LCCOMB_X18_Y11_N28
\inst13|degree[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|degree[1]~1_combout\ = (\inst13|state.10~regout\ & (\inst13|degree~87_combout\)) # (!\inst13|state.10~regout\ & ((\inst13|degree~71_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|state.10~regout\,
	datab => \inst13|degree~87_combout\,
	datad => \inst13|degree~71_combout\,
	combout => \inst13|degree[1]~1_combout\);

-- Location: LCCOMB_X19_Y11_N14
\inst13|degree~73\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|degree~73_combout\ = (\inst13|Equal6~0_combout\ & (((!\inst2|degree\(5))))) # (!\inst13|Equal6~0_combout\ & (\inst9|data\(2) $ ((\inst9|data\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|data\(2),
	datab => \inst9|data\(3),
	datac => \inst2|degree\(5),
	datad => \inst13|Equal6~0_combout\,
	combout => \inst13|degree~73_combout\);

-- Location: LCFF_X18_Y11_N29
\inst13|degree[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst13|degree[1]~1_combout\,
	sdata => \inst13|degree~73_combout\,
	sload => \inst13|ALT_INV_state.00~regout\,
	ena => \inst13|direction~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst13|degree\(1));

-- Location: LCCOMB_X15_Y9_N2
\inst13|degree~77\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|degree~77_combout\ = (!\inst13|always1~8_combout\ & (\inst13|led~11_combout\ & ((\inst13|speed[6]~36_combout\) # (!\inst13|degree~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|always1~8_combout\,
	datab => \inst13|led~11_combout\,
	datac => \inst13|speed[6]~36_combout\,
	datad => \inst13|degree~31_combout\,
	combout => \inst13|degree~77_combout\);

-- Location: LCCOMB_X15_Y9_N4
\inst13|degree~78\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|degree~78_combout\ = (\inst13|Equal7~0_combout\ & ((\inst13|degree~77_combout\) # ((!\inst13|speed~65_combout\ & \inst13|degree\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|speed~65_combout\,
	datab => \inst13|Equal7~0_combout\,
	datac => \inst13|degree\(0),
	datad => \inst13|degree~77_combout\,
	combout => \inst13|degree~78_combout\);

-- Location: LCCOMB_X15_Y10_N22
\inst13|degree~76\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|degree~76_combout\ = (\inst13|mystate\(0) & (\inst13|mystate\(1) & (\dinfrared~combout\(2) $ (!\dinfrared~combout\(1))))) # (!\inst13|mystate\(0) & (\dinfrared~combout\(2) $ (((!\dinfrared~combout\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|mystate\(0),
	datab => \dinfrared~combout\(2),
	datac => \inst13|mystate\(1),
	datad => \dinfrared~combout\(1),
	combout => \inst13|degree~76_combout\);

-- Location: LCCOMB_X15_Y9_N26
\inst13|degree~79\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|degree~79_combout\ = (\inst13|degree~88_combout\) # ((\inst13|mystate\(0) & ((\inst13|degree~78_combout\) # (\inst13|degree~76_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|degree~88_combout\,
	datab => \inst13|mystate\(0),
	datac => \inst13|degree~78_combout\,
	datad => \inst13|degree~76_combout\,
	combout => \inst13|degree~79_combout\);

-- Location: LCCOMB_X15_Y9_N16
\inst13|degree~80\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|degree~80_combout\ = (\inst13|speed[6]~138_combout\) # ((\inst13|always1~2_combout\ & ((\inst13|degree~79_combout\))) # (!\inst13|always1~2_combout\ & (\inst13|degree\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|always1~2_combout\,
	datab => \inst13|speed[6]~138_combout\,
	datac => \inst13|degree\(0),
	datad => \inst13|degree~79_combout\,
	combout => \inst13|degree~80_combout\);

-- Location: LCCOMB_X13_Y9_N22
\inst13|degree~74\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|degree~74_combout\ = (\inst13|speed~37_combout\ & (\inst13|backStatus.10~regout\ & (\inst9|data\(0) $ (!\inst13|flag~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|data\(0),
	datab => \inst13|speed~37_combout\,
	datac => \inst13|backStatus.10~regout\,
	datad => \inst13|flag~regout\,
	combout => \inst13|degree~74_combout\);

-- Location: LCCOMB_X14_Y9_N16
\inst13|degree~75\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|degree~75_combout\ = (\inst13|always1~6_combout\ & (((\inst13|degree\(0) & !\inst13|speed~72_combout\)))) # (!\inst13|always1~6_combout\ & ((\inst13|degree~74_combout\) # ((\inst13|degree\(0) & !\inst13|speed~72_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|always1~6_combout\,
	datab => \inst13|degree~74_combout\,
	datac => \inst13|degree\(0),
	datad => \inst13|speed~72_combout\,
	combout => \inst13|degree~75_combout\);

-- Location: LCCOMB_X15_Y9_N8
\inst13|degree~81\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|degree~81_combout\ = (\inst13|state.10~regout\ & (\inst13|Equal6~0_combout\ & ((\inst13|degree~75_combout\)))) # (!\inst13|state.10~regout\ & (((\inst13|degree~80_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Equal6~0_combout\,
	datab => \inst13|state.10~regout\,
	datac => \inst13|degree~80_combout\,
	datad => \inst13|degree~75_combout\,
	combout => \inst13|degree~81_combout\);

-- Location: LCCOMB_X15_Y8_N30
\inst13|speed~79\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|speed~79_combout\ = (\inst13|state.00~regout\ & (!\inst13|state.01~regout\ & ((!\inst13|state.10~regout\) # (!\inst9|data\(5))))) # (!\inst13|state.00~regout\ & (!\inst9|data\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|data\(5),
	datab => \inst13|state.00~regout\,
	datac => \inst13|state.01~regout\,
	datad => \inst13|state.10~regout\,
	combout => \inst13|speed~79_combout\);

-- Location: LCFF_X15_Y9_N9
\inst13|degree[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst13|degree~81_combout\,
	sclr => \inst13|ALT_INV_state.00~regout\,
	ena => \inst13|speed~79_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst13|degree\(0));

-- Location: LCCOMB_X19_Y11_N10
\inst2|degree~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|degree~1_combout\ = (\inst2|degree[6]~0_combout\) # ((\inst2|LessThan5~1_combout\ & ((\inst2|LessThan8~1_combout\) # (!\inst2|LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|LessThan8~1_combout\,
	datab => \inst2|degree[6]~0_combout\,
	datac => \inst2|LessThan5~1_combout\,
	datad => \inst2|LessThan0~0_combout\,
	combout => \inst2|degree~1_combout\);

-- Location: LCCOMB_X19_Y11_N18
\inst2|degree~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|degree~2_combout\ = (\inst2|degree~1_combout\) # (!\inst2|always0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|always0~2_combout\,
	datad => \inst2|degree~1_combout\,
	combout => \inst2|degree~2_combout\);

-- Location: LCFF_X19_Y11_N19
\inst2|degree[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst17|out_16k~clkctrl_outclk\,
	datain => \inst2|degree~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|degree\(2));

-- Location: LCCOMB_X18_Y10_N30
\inst13|degree~67\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|degree~67_combout\ = (\inst13|Equal6~0_combout\ & (((\inst2|degree\(2))))) # (!\inst13|Equal6~0_combout\ & ((\inst9|data\(2)) # ((!\inst9|data\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|data\(2),
	datab => \inst13|Equal6~0_combout\,
	datac => \inst9|data\(3),
	datad => \inst2|degree\(2),
	combout => \inst13|degree~67_combout\);

-- Location: LCCOMB_X18_Y10_N26
\inst13|degree~65\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|degree~65_combout\ = (\inst13|LessThan2~7_combout\) # (((!\inst13|degree\(2) & !\inst13|always1~2_combout\)) # (!\inst13|always1~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|degree\(2),
	datab => \inst13|always1~2_combout\,
	datac => \inst13|LessThan2~7_combout\,
	datad => \inst13|always1~3_combout\,
	combout => \inst13|degree~65_combout\);

-- Location: PIN_160,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Touch[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Touch(1),
	combout => \Touch~combout\(1));

-- Location: PIN_200,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Touch[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Touch(0),
	combout => \Touch~combout\(0));

-- Location: LCCOMB_X15_Y10_N6
\inst13|degree~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|degree~20_combout\ = (\inst13|LessThan6~1_combout\ & (((!\Touch~combout\(1) & \Touch~combout\(0))))) # (!\inst13|LessThan6~1_combout\ & (\Infrared~combout\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Infrared~combout\(2),
	datab => \Touch~combout\(1),
	datac => \Touch~combout\(0),
	datad => \inst13|LessThan6~1_combout\,
	combout => \inst13|degree~20_combout\);

-- Location: LCCOMB_X15_Y10_N26
\inst13|degree~63\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|degree~63_combout\ = ((\inst13|WideOr0~combout\ & (!\inst13|degree\(2))) # (!\inst13|WideOr0~combout\ & ((\inst13|degree~20_combout\)))) # (!\inst13|speed[6]~53_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|degree\(2),
	datab => \inst13|speed[6]~53_combout\,
	datac => \inst13|WideOr0~combout\,
	datad => \inst13|degree~20_combout\,
	combout => \inst13|degree~63_combout\);

-- Location: LCCOMB_X15_Y12_N6
\inst13|degree~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|degree~60_combout\ = (\inst13|backStatus.00~regout\ & (((\inst13|Delaying2~regout\) # (!\inst13|backStatus.01~regout\)) # (!\inst13|last2~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|last2~regout\,
	datab => \inst13|backStatus.00~regout\,
	datac => \inst13|backStatus.01~regout\,
	datad => \inst13|Delaying2~regout\,
	combout => \inst13|degree~60_combout\);

-- Location: LCCOMB_X18_Y10_N4
\inst13|degree~61\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|degree~61_combout\ = (\inst13|degree~59_combout\ & ((\inst13|degree~60_combout\) # ((!\inst13|degree\(2) & !\inst13|speed~65_combout\)))) # (!\inst13|degree~59_combout\ & (((!\inst13|degree\(2) & !\inst13|speed~65_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|degree~59_combout\,
	datab => \inst13|degree~60_combout\,
	datac => \inst13|degree\(2),
	datad => \inst13|speed~65_combout\,
	combout => \inst13|degree~61_combout\);

-- Location: LCCOMB_X18_Y10_N18
\inst13|degree~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|degree~62_combout\ = (\inst13|Equal7~0_combout\ & (((\inst13|degree~61_combout\)))) # (!\inst13|Equal7~0_combout\ & ((\dinfrared~combout\(2)) # ((!\dinfrared~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Equal7~0_combout\,
	datab => \dinfrared~combout\(2),
	datac => \inst13|degree~61_combout\,
	datad => \dinfrared~combout\(1),
	combout => \inst13|degree~62_combout\);

-- Location: LCCOMB_X18_Y10_N20
\inst13|degree~64\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|degree~64_combout\ = (\inst13|always1~2_combout\ & ((\inst13|mystate\(0) & ((\inst13|degree~62_combout\))) # (!\inst13|mystate\(0) & (\inst13|degree~63_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|mystate\(0),
	datab => \inst13|always1~2_combout\,
	datac => \inst13|degree~63_combout\,
	datad => \inst13|degree~62_combout\,
	combout => \inst13|degree~64_combout\);

-- Location: LCCOMB_X17_Y10_N12
\inst13|degree~57\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|degree~57_combout\ = (\inst13|degree~36_combout\ & (((!\inst13|degree\(2) & !\inst13|degree~24_combout\)) # (!\inst13|always1~10_combout\))) # (!\inst13|degree~36_combout\ & (!\inst13|degree\(2) & ((!\inst13|degree~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|degree~36_combout\,
	datab => \inst13|degree\(2),
	datac => \inst13|always1~10_combout\,
	datad => \inst13|degree~24_combout\,
	combout => \inst13|degree~57_combout\);

-- Location: LCCOMB_X17_Y10_N14
\inst13|degree~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|degree~58_combout\ = (\inst13|Equal5~0_combout\ & (((\inst13|degree~57_combout\)))) # (!\inst13|Equal5~0_combout\ & (((\dinfrared~combout\(2))) # (!\dinfrared~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dinfrared~combout\(1),
	datab => \dinfrared~combout\(2),
	datac => \inst13|Equal5~0_combout\,
	datad => \inst13|degree~57_combout\,
	combout => \inst13|degree~58_combout\);

-- Location: LCCOMB_X18_Y10_N0
\inst13|degree~66\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|degree~66_combout\ = (\inst13|state.10~regout\ & (((\inst13|degree~58_combout\)))) # (!\inst13|state.10~regout\ & ((\inst13|degree~65_combout\) # ((\inst13|degree~64_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|state.10~regout\,
	datab => \inst13|degree~65_combout\,
	datac => \inst13|degree~64_combout\,
	datad => \inst13|degree~58_combout\,
	combout => \inst13|degree~66_combout\);

-- Location: LCCOMB_X18_Y10_N10
\inst13|degree~68\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|degree~68_combout\ = (\inst13|state.00~regout\ & ((!\inst13|degree~66_combout\))) # (!\inst13|state.00~regout\ & (!\inst13|degree~67_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|degree~67_combout\,
	datac => \inst13|state.00~regout\,
	datad => \inst13|degree~66_combout\,
	combout => \inst13|degree~68_combout\);

-- Location: LCFF_X18_Y10_N11
\inst13|degree[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst13|degree~68_combout\,
	ena => \inst13|direction~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst13|degree\(2));

-- Location: LCCOMB_X14_Y11_N16
\inst11|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|Mux3~0_combout\ = ((\inst13|degree\(1)) # ((\inst13|degree\(0)) # (!\inst13|degree\(2)))) # (!\inst13|degree\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|degree\(3),
	datab => \inst13|degree\(1),
	datac => \inst13|degree\(0),
	datad => \inst13|degree\(2),
	combout => \inst11|Mux3~0_combout\);

-- Location: LCCOMB_X14_Y11_N24
\inst11|LessThan0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|LessThan0~0_combout\ = ((!\inst13|degree\(2) & ((\inst13|degree\(1)) # (\inst13|degree\(0))))) # (!\inst13|degree\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|degree\(3),
	datab => \inst13|degree\(1),
	datac => \inst13|degree\(0),
	datad => \inst13|degree\(2),
	combout => \inst11|LessThan0~0_combout\);

-- Location: LCCOMB_X14_Y11_N26
\inst11|Mux3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|Mux3~1_combout\ = (\inst13|degree\(4) & (!\inst13|degree\(5) & ((!\inst11|LessThan0~0_combout\)))) # (!\inst13|degree\(4) & (\inst13|degree\(5) & (\inst11|Mux3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|degree\(4),
	datab => \inst13|degree\(5),
	datac => \inst11|Mux3~0_combout\,
	datad => \inst11|LessThan0~0_combout\,
	combout => \inst11|Mux3~1_combout\);

-- Location: LCCOMB_X14_Y11_N30
\inst11|Mux3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|Mux3~2_combout\ = (\inst11|byteCount\(0) & (((\inst5|dis\(4))))) # (!\inst11|byteCount\(0) & (\inst13|degree\(6) & ((\inst11|Mux3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|degree\(6),
	datab => \inst11|byteCount\(0),
	datac => \inst5|dis\(4),
	datad => \inst11|Mux3~1_combout\,
	combout => \inst11|Mux3~2_combout\);

-- Location: LCCOMB_X13_Y11_N6
\inst11|Mux3~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|Mux3~3_combout\ = (\inst11|Mux2~0_combout\ & (((\inst11|Mux1~1_combout\ & \inst11|Mux3~2_combout\)) # (!\inst13|speed\(4)))) # (!\inst11|Mux2~0_combout\ & (((\inst11|Mux1~1_combout\ & \inst11|Mux3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Mux2~0_combout\,
	datab => \inst13|speed\(4),
	datac => \inst11|Mux1~1_combout\,
	datad => \inst11|Mux3~2_combout\,
	combout => \inst11|Mux3~3_combout\);

-- Location: LCFF_X13_Y11_N7
\inst11|data[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst17|out_9600~clkctrl_outclk\,
	datain => \inst11|Mux3~3_combout\,
	ena => \inst11|data[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst11|data\(4));

-- Location: LCCOMB_X13_Y11_N12
\inst3|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Mux0~0_combout\ = (\inst3|count\(0) & ((\inst11|data\(5)) # ((\inst3|count\(1))))) # (!\inst3|count\(0) & (((\inst11|data\(4) & !\inst3|count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|data\(5),
	datab => \inst11|data\(4),
	datac => \inst3|count\(0),
	datad => \inst3|count\(1),
	combout => \inst3|Mux0~0_combout\);

-- Location: LCCOMB_X13_Y11_N24
\inst3|Mux0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Mux0~1_combout\ = (\inst3|count\(1) & ((\inst3|Mux0~0_combout\ & (\inst11|data\(7))) # (!\inst3|Mux0~0_combout\ & ((\inst11|data\(6)))))) # (!\inst3|count\(1) & (((\inst3|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|count\(1),
	datab => \inst11|data\(7),
	datac => \inst11|data\(6),
	datad => \inst3|Mux0~0_combout\,
	combout => \inst3|Mux0~1_combout\);

-- Location: LCCOMB_X14_Y11_N28
\inst11|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|Mux5~0_combout\ = (\inst11|byteCount\(1) & !\inst11|byteCount\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst11|byteCount\(1),
	datad => \inst11|byteCount\(3),
	combout => \inst11|Mux5~0_combout\);

-- Location: LCCOMB_X14_Y11_N6
\inst11|Mux5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|Mux5~1_combout\ = (\inst11|Mux5~0_combout\ & ((\inst11|byteCount\(0) & (\inst5|dis\(2) & \inst11|byteCount\(2))) # (!\inst11|byteCount\(0) & ((!\inst11|byteCount\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|dis\(2),
	datab => \inst11|byteCount\(0),
	datac => \inst11|byteCount\(2),
	datad => \inst11|Mux5~0_combout\,
	combout => \inst11|Mux5~1_combout\);

-- Location: LCCOMB_X14_Y11_N20
\inst11|Mux5~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|Mux5~2_combout\ = (!\inst11|data[0]~4_combout\ & ((\inst11|Mux5~1_combout\) # ((!\inst13|speed\(2) & \inst11|byteCount\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|speed\(2),
	datab => \inst11|byteCount\(3),
	datac => \inst11|data[0]~4_combout\,
	datad => \inst11|Mux5~1_combout\,
	combout => \inst11|Mux5~2_combout\);

-- Location: LCFF_X14_Y11_N21
\inst11|data[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst17|out_9600~clkctrl_outclk\,
	datain => \inst11|Mux5~2_combout\,
	ena => \inst11|data[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst11|data\(2));

-- Location: LCCOMB_X13_Y9_N0
\inst11|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|Mux4~0_combout\ = (\inst11|byteCount\(1) & (\inst11|byteCount\(2) & \inst5|dis\(3))) # (!\inst11|byteCount\(1) & (!\inst11|byteCount\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst11|byteCount\(1),
	datac => \inst11|byteCount\(2),
	datad => \inst5|dis\(3),
	combout => \inst11|Mux4~0_combout\);

-- Location: LCCOMB_X13_Y9_N20
\inst11|data[3]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|data[3]~1_combout\ = (\inst11|byteCount\(0) & ((\inst11|Mux4~0_combout\))) # (!\inst11|byteCount\(0) & (\inst11|byteCount\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|byteCount\(0),
	datab => \inst11|byteCount\(1),
	datad => \inst11|Mux4~0_combout\,
	combout => \inst11|data[3]~1_combout\);

-- Location: LCCOMB_X13_Y8_N20
\inst13|speed~90\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|speed~90_combout\ = (\inst13|speed[6]~38_combout\ & ((\inst13|Add4~4_combout\) # ((\inst13|speed[6]~41_combout\)))) # (!\inst13|speed[6]~38_combout\ & (((\inst13|Add2~4_combout\ & !\inst13|speed[6]~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|speed[6]~38_combout\,
	datab => \inst13|Add4~4_combout\,
	datac => \inst13|Add2~4_combout\,
	datad => \inst13|speed[6]~41_combout\,
	combout => \inst13|speed~90_combout\);

-- Location: LCCOMB_X13_Y8_N22
\inst13|speed~91\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|speed~91_combout\ = (\inst13|speed~90_combout\ & ((\inst13|Add3~6_combout\) # ((!\inst13|speed[6]~41_combout\)))) # (!\inst13|speed~90_combout\ & (((\inst13|Add1~4_combout\ & \inst13|speed[6]~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Add3~6_combout\,
	datab => \inst13|Add1~4_combout\,
	datac => \inst13|speed~90_combout\,
	datad => \inst13|speed[6]~41_combout\,
	combout => \inst13|speed~91_combout\);

-- Location: LCCOMB_X13_Y8_N0
\inst13|speed~92\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|speed~92_combout\ = (\inst13|always1~6_combout\) # ((\inst13|speed~91_combout\ & ((!\inst13|backStatus~12_combout\) # (!\inst13|speed[6]~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|speed[6]~38_combout\,
	datab => \inst13|always1~6_combout\,
	datac => \inst13|backStatus~12_combout\,
	datad => \inst13|speed~91_combout\,
	combout => \inst13|speed~92_combout\);

-- Location: LCCOMB_X17_Y9_N4
\inst13|speed~140\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|speed~140_combout\ = (\inst13|display[3]~4_combout\ & ((!\dinfrared~combout\(2)) # (!\dinfrared~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dinfrared~combout\(1),
	datac => \dinfrared~combout\(2),
	datad => \inst13|display[3]~4_combout\,
	combout => \inst13|speed~140_combout\);

-- Location: LCCOMB_X14_Y9_N18
\inst13|speed~94\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|speed~94_combout\ = (\inst13|speed[6]~44_combout\ & ((\inst13|display[3]~4_combout\) # ((\inst13|Equal7~0_combout\)))) # (!\inst13|speed[6]~44_combout\ & (((!\inst13|Equal7~0_combout\ & \inst13|Add8~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|display[3]~4_combout\,
	datab => \inst13|speed[6]~44_combout\,
	datac => \inst13|Equal7~0_combout\,
	datad => \inst13|Add8~4_combout\,
	combout => \inst13|speed~94_combout\);

-- Location: LCCOMB_X14_Y9_N8
\inst13|speed~95\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|speed~95_combout\ = (\inst13|speed[6]~45_combout\ & ((\inst13|speed~94_combout\ & ((\inst13|Add6~0_combout\))) # (!\inst13|speed~94_combout\ & (\inst13|Add7~6_combout\)))) # (!\inst13|speed[6]~45_combout\ & (((\inst13|speed~94_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Add7~6_combout\,
	datab => \inst13|Add6~0_combout\,
	datac => \inst13|speed[6]~45_combout\,
	datad => \inst13|speed~94_combout\,
	combout => \inst13|speed~95_combout\);

-- Location: LCCOMB_X13_Y9_N6
\inst13|speed~96\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|speed~96_combout\ = (\inst13|led[1]~24_combout\ & (((\inst13|speed~95_combout\ & \inst13|speed[3]~85_combout\)))) # (!\inst13|led[1]~24_combout\ & ((\inst13|speed~140_combout\) # ((!\inst13|speed[3]~85_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|led[1]~24_combout\,
	datab => \inst13|speed~140_combout\,
	datac => \inst13|speed~95_combout\,
	datad => \inst13|speed[3]~85_combout\,
	combout => \inst13|speed~96_combout\);

-- Location: LCCOMB_X13_Y9_N28
\inst13|speed~97\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|speed~97_combout\ = (\inst13|state.10~regout\ & ((\inst13|speed~96_combout\ & (\inst13|speed~93_combout\)) # (!\inst13|speed~96_combout\ & ((\inst13|speed~92_combout\))))) # (!\inst13|state.10~regout\ & (((\inst13|speed~96_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|speed~93_combout\,
	datab => \inst13|speed~92_combout\,
	datac => \inst13|state.10~regout\,
	datad => \inst13|speed~96_combout\,
	combout => \inst13|speed~97_combout\);

-- Location: LCCOMB_X13_Y9_N12
\inst13|speed~98\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|speed~98_combout\ = (\inst13|Equal5~0_combout\ & (\inst13|state.00~regout\ & ((!\inst13|speed~97_combout\) # (!\inst13|speed~88_combout\)))) # (!\inst13|Equal5~0_combout\ & (((!\inst13|speed~97_combout\) # (!\inst13|speed~88_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Equal5~0_combout\,
	datab => \inst13|state.00~regout\,
	datac => \inst13|speed~88_combout\,
	datad => \inst13|speed~97_combout\,
	combout => \inst13|speed~98_combout\);

-- Location: LCFF_X13_Y9_N13
\inst13|speed[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst13|speed~98_combout\,
	ena => \inst13|speed[6]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst13|speed\(3));

-- Location: LCCOMB_X13_Y9_N8
\inst13|speed[3]~_wirecell\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|speed[3]~_wirecell_combout\ = !\inst13|speed\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst13|speed\(3),
	combout => \inst13|speed[3]~_wirecell_combout\);

-- Location: LCFF_X13_Y9_N21
\inst11|data[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst17|out_9600~clkctrl_outclk\,
	datain => \inst11|data[3]~1_combout\,
	sdata => \inst13|speed[3]~_wirecell_combout\,
	sclr => \inst11|data[0]~4_combout\,
	sload => \inst11|byteCount\(3),
	ena => \inst11|data[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst11|data\(3));

-- Location: PIN_12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Button[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Button(0),
	combout => \Button~combout\(0));

-- Location: LCCOMB_X18_Y8_N2
\inst13|display[0]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|display[0]~7_combout\ = (\inst13|isSet~regout\ & (!\inst13|initialSpeed\(0))) # (!\inst13|isSet~regout\ & ((\Button~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|initialSpeed\(0),
	datab => \Button~combout\(0),
	datad => \inst13|isSet~regout\,
	combout => \inst13|display[0]~7_combout\);

-- Location: LCCOMB_X13_Y12_N22
\inst13|speed~63\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|speed~63_combout\ = (\inst13|backStatus.00~regout\ & ((\inst13|backStatus.01~regout\) # (\inst13|backStatus.10~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|backStatus.01~regout\,
	datac => \inst13|backStatus.00~regout\,
	datad => \inst13|backStatus.10~regout\,
	combout => \inst13|speed~63_combout\);

-- Location: LCCOMB_X15_Y7_N4
\inst13|speed~127\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|speed~127_combout\ = (!\inst13|backStatus.00~regout\ & \inst13|display[0]~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|backStatus.00~regout\,
	datac => \inst13|display[0]~7_combout\,
	combout => \inst13|speed~127_combout\);

-- Location: LCCOMB_X15_Y7_N10
\inst13|speed~128\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|speed~128_combout\ = (\inst13|speed~127_combout\) # ((\inst13|always1~8_combout\) # ((\inst13|Add7~0_combout\ & \inst13|speed~63_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Add7~0_combout\,
	datab => \inst13|speed~63_combout\,
	datac => \inst13|speed~127_combout\,
	datad => \inst13|always1~8_combout\,
	combout => \inst13|speed~128_combout\);

-- Location: LCCOMB_X14_Y7_N26
\inst13|speed~143\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|speed~143_combout\ = (\inst13|mystate\(0) & (!\inst13|mystate\(1) & (\inst13|speed~128_combout\ & \inst13|backdone~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|mystate\(0),
	datab => \inst13|mystate\(1),
	datac => \inst13|speed~128_combout\,
	datad => \inst13|backdone~3_combout\,
	combout => \inst13|speed~143_combout\);

-- Location: LCCOMB_X14_Y7_N18
\inst13|speed~130\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|speed~130_combout\ = (\inst13|always1~2_combout\ & ((\inst13|speed~143_combout\) # ((\inst13|speed~129_combout\ & \inst13|display[0]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|speed~129_combout\,
	datab => \inst13|display[0]~7_combout\,
	datac => \inst13|always1~2_combout\,
	datad => \inst13|speed~143_combout\,
	combout => \inst13|speed~130_combout\);

-- Location: LCCOMB_X14_Y7_N4
\inst13|speed~131\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|speed~131_combout\ = (!\inst13|speed[6]~138_combout\ & ((\inst13|speed~130_combout\) # ((\inst13|speed[6]~137_combout\ & \inst13|speed\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|speed[6]~137_combout\,
	datab => \inst13|speed[6]~138_combout\,
	datac => \inst13|speed\(0),
	datad => \inst13|speed~130_combout\,
	combout => \inst13|speed~131_combout\);

-- Location: LCCOMB_X18_Y8_N16
\inst13|initialSpeed~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|initialSpeed~8_combout\ = (\inst13|state.01~regout\ & (!\inst9|data\(0))) # (!\inst13|state.01~regout\ & ((!\inst13|display[0]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|data\(0),
	datab => \inst13|display[0]~7_combout\,
	datad => \inst13|state.01~regout\,
	combout => \inst13|initialSpeed~8_combout\);

-- Location: LCFF_X18_Y8_N17
\inst13|initialSpeed[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst13|initialSpeed~8_combout\,
	ena => \inst13|initialSpeed[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst13|initialSpeed\(0));

-- Location: LCCOMB_X13_Y7_N20
\inst13|speed~133\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|speed~133_combout\ = ((!\inst13|backStatus~12_combout\ & ((!\inst13|speed[6]~36_combout\) # (!\inst13|LessThan1~3_combout\)))) # (!\inst13|degree~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|backStatus~12_combout\,
	datab => \inst13|LessThan1~3_combout\,
	datac => \inst13|speed[6]~36_combout\,
	datad => \inst13|degree~18_combout\,
	combout => \inst13|speed~133_combout\);

-- Location: LCCOMB_X13_Y7_N8
\inst13|speed~144\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|speed~144_combout\ = (\Infrared~combout\(3) & (\Infrared~combout\(2) & (\inst13|LessThan1~3_combout\ & \inst13|degree~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Infrared~combout\(3),
	datab => \Infrared~combout\(2),
	datac => \inst13|LessThan1~3_combout\,
	datad => \inst13|degree~18_combout\,
	combout => \inst13|speed~144_combout\);

-- Location: LCCOMB_X13_Y7_N22
\inst13|speed~134\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|speed~134_combout\ = (\inst13|speed~132_combout\ & ((\inst13|speed~144_combout\) # ((!\inst13|initialSpeed\(0) & \inst13|speed~133_combout\)))) # (!\inst13|speed~132_combout\ & (!\inst13|initialSpeed\(0) & (\inst13|speed~133_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|speed~132_combout\,
	datab => \inst13|initialSpeed\(0),
	datac => \inst13|speed~133_combout\,
	datad => \inst13|speed~144_combout\,
	combout => \inst13|speed~134_combout\);

-- Location: LCCOMB_X13_Y7_N0
\inst13|speed~135\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|speed~135_combout\ = (\inst13|speed\(0) & (((\inst13|speed~134_combout\ & \inst13|speed~72_combout\)) # (!\inst13|direction~2_combout\))) # (!\inst13|speed\(0) & (\inst13|speed~134_combout\ & (\inst13|speed~72_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|speed\(0),
	datab => \inst13|speed~134_combout\,
	datac => \inst13|speed~72_combout\,
	datad => \inst13|direction~2_combout\,
	combout => \inst13|speed~135_combout\);

-- Location: LCCOMB_X13_Y7_N18
\inst13|speed~145\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|speed~145_combout\ = (\inst9|data\(5) & (((!\inst13|always1~12_combout\)))) # (!\inst9|data\(5) & ((\inst9|data\(4) & ((\inst13|speed~135_combout\))) # (!\inst9|data\(4) & (!\inst13|always1~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111100001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|data\(5),
	datab => \inst9|data\(4),
	datac => \inst13|always1~12_combout\,
	datad => \inst13|speed~135_combout\,
	combout => \inst13|speed~145_combout\);

-- Location: LCCOMB_X14_Y7_N8
\inst13|speed[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|speed[0]~1_combout\ = (\inst13|state.10~regout\ & ((\inst13|speed~145_combout\))) # (!\inst13|state.10~regout\ & (\inst13|speed~131_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|state.10~regout\,
	datab => \inst13|speed~131_combout\,
	datad => \inst13|speed~145_combout\,
	combout => \inst13|speed[0]~1_combout\);

-- Location: LCCOMB_X13_Y6_N22
\inst13|speed~78\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|speed~78_combout\ = (!\inst13|Equal5~0_combout\ & (\inst13|LessThan6~1_combout\ & (\inst9|data\(0) $ (\inst9|data\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|data\(0),
	datab => \inst9|data\(1),
	datac => \inst13|Equal5~0_combout\,
	datad => \inst13|LessThan6~1_combout\,
	combout => \inst13|speed~78_combout\);

-- Location: LCFF_X14_Y7_N9
\inst13|speed[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst13|speed[0]~1_combout\,
	sdata => \inst13|speed~78_combout\,
	sload => \inst13|ALT_INV_state.00~regout\,
	ena => \inst13|speed~79_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst13|speed\(0));

-- Location: LCCOMB_X14_Y11_N2
\inst11|Mux7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|Mux7~0_combout\ = (\inst11|Mux5~0_combout\ & ((\inst11|byteCount\(0) & (\inst11|byteCount\(2) & \inst5|dis\(0))) # (!\inst11|byteCount\(0) & (!\inst11|byteCount\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|byteCount\(0),
	datab => \inst11|byteCount\(2),
	datac => \inst5|dis\(0),
	datad => \inst11|Mux5~0_combout\,
	combout => \inst11|Mux7~0_combout\);

-- Location: LCCOMB_X13_Y11_N18
\inst11|Mux7~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|Mux7~1_combout\ = (!\inst11|data[0]~4_combout\ & ((\inst11|Mux7~0_combout\) # ((\inst11|byteCount\(3) & \inst13|speed\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|byteCount\(3),
	datab => \inst13|speed\(0),
	datac => \inst11|data[0]~4_combout\,
	datad => \inst11|Mux7~0_combout\,
	combout => \inst11|Mux7~1_combout\);

-- Location: LCFF_X13_Y11_N19
\inst11|data[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst17|out_9600~clkctrl_outclk\,
	datain => \inst11|Mux7~1_combout\,
	ena => \inst11|data[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst11|data\(0));

-- Location: LCCOMB_X13_Y11_N28
\inst3|Mux0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Mux0~2_combout\ = (\inst3|count\(0) & ((\inst11|data\(1)) # ((\inst3|count\(1))))) # (!\inst3|count\(0) & (((\inst11|data\(0) & !\inst3|count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|data\(1),
	datab => \inst11|data\(0),
	datac => \inst3|count\(0),
	datad => \inst3|count\(1),
	combout => \inst3|Mux0~2_combout\);

-- Location: LCCOMB_X13_Y11_N2
\inst3|Mux0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Mux0~3_combout\ = (\inst3|count\(1) & ((\inst3|Mux0~2_combout\ & ((\inst11|data\(3)))) # (!\inst3|Mux0~2_combout\ & (\inst11|data\(2))))) # (!\inst3|count\(1) & (((\inst3|Mux0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|count\(1),
	datab => \inst11|data\(2),
	datac => \inst11|data\(3),
	datad => \inst3|Mux0~2_combout\,
	combout => \inst3|Mux0~3_combout\);

-- Location: LCCOMB_X13_Y11_N0
\inst3|txd~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|txd~0_combout\ = (\inst3|count\(3)) # ((\inst3|count\(2) & (\inst3|Mux0~1_combout\)) # (!\inst3|count\(2) & ((\inst3|Mux0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|count\(3),
	datab => \inst3|count\(2),
	datac => \inst3|Mux0~1_combout\,
	datad => \inst3|Mux0~3_combout\,
	combout => \inst3|txd~0_combout\);

-- Location: LCCOMB_X13_Y11_N14
\inst3|txd~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|txd~1_combout\ = (\inst3|flag~regout\ & (((\inst3|txd~0_combout\)))) # (!\inst3|flag~regout\ & ((\inst3|last_send~regout\) # ((!\inst11|send~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|last_send~regout\,
	datab => \inst3|flag~regout\,
	datac => \inst11|send~regout\,
	datad => \inst3|txd~0_combout\,
	combout => \inst3|txd~1_combout\);

-- Location: LCFF_X13_Y11_N15
\inst3|txd\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst17|out_9600~clkctrl_outclk\,
	datain => \inst3|txd~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|txd~regout\);

-- Location: LCCOMB_X5_Y6_N4
\inst17|cnt10k[0]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|cnt10k[0]~12_combout\ = \inst17|cnt10k\(0) $ (VCC)
-- \inst17|cnt10k[0]~13\ = CARRY(\inst17|cnt10k\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst17|cnt10k\(0),
	datad => VCC,
	combout => \inst17|cnt10k[0]~12_combout\,
	cout => \inst17|cnt10k[0]~13\);

-- Location: LCFF_X5_Y6_N5
\inst17|cnt10k[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst17|cnt10k[0]~12_combout\,
	sclr => \inst17|LessThan6~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst17|cnt10k\(0));

-- Location: LCCOMB_X5_Y6_N6
\inst17|cnt10k[1]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|cnt10k[1]~14_combout\ = (\inst17|cnt10k\(1) & (!\inst17|cnt10k[0]~13\)) # (!\inst17|cnt10k\(1) & ((\inst17|cnt10k[0]~13\) # (GND)))
-- \inst17|cnt10k[1]~15\ = CARRY((!\inst17|cnt10k[0]~13\) # (!\inst17|cnt10k\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|cnt10k\(1),
	datad => VCC,
	cin => \inst17|cnt10k[0]~13\,
	combout => \inst17|cnt10k[1]~14_combout\,
	cout => \inst17|cnt10k[1]~15\);

-- Location: LCCOMB_X5_Y6_N8
\inst17|cnt10k[2]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|cnt10k[2]~16_combout\ = (\inst17|cnt10k\(2) & (\inst17|cnt10k[1]~15\ $ (GND))) # (!\inst17|cnt10k\(2) & (!\inst17|cnt10k[1]~15\ & VCC))
-- \inst17|cnt10k[2]~17\ = CARRY((\inst17|cnt10k\(2) & !\inst17|cnt10k[1]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst17|cnt10k\(2),
	datad => VCC,
	cin => \inst17|cnt10k[1]~15\,
	combout => \inst17|cnt10k[2]~16_combout\,
	cout => \inst17|cnt10k[2]~17\);

-- Location: LCFF_X5_Y6_N9
\inst17|cnt10k[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst17|cnt10k[2]~16_combout\,
	sclr => \inst17|LessThan6~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst17|cnt10k\(2));

-- Location: LCCOMB_X5_Y6_N14
\inst17|cnt10k[5]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|cnt10k[5]~22_combout\ = (\inst17|cnt10k\(5) & (!\inst17|cnt10k[4]~21\)) # (!\inst17|cnt10k\(5) & ((\inst17|cnt10k[4]~21\) # (GND)))
-- \inst17|cnt10k[5]~23\ = CARRY((!\inst17|cnt10k[4]~21\) # (!\inst17|cnt10k\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst17|cnt10k\(5),
	datad => VCC,
	cin => \inst17|cnt10k[4]~21\,
	combout => \inst17|cnt10k[5]~22_combout\,
	cout => \inst17|cnt10k[5]~23\);

-- Location: LCFF_X5_Y6_N15
\inst17|cnt10k[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst17|cnt10k[5]~22_combout\,
	sclr => \inst17|LessThan6~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst17|cnt10k\(5));

-- Location: LCCOMB_X5_Y6_N18
\inst17|cnt10k[7]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|cnt10k[7]~26_combout\ = (\inst17|cnt10k\(7) & (!\inst17|cnt10k[6]~25\)) # (!\inst17|cnt10k\(7) & ((\inst17|cnt10k[6]~25\) # (GND)))
-- \inst17|cnt10k[7]~27\ = CARRY((!\inst17|cnt10k[6]~25\) # (!\inst17|cnt10k\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|cnt10k\(7),
	datad => VCC,
	cin => \inst17|cnt10k[6]~25\,
	combout => \inst17|cnt10k[7]~26_combout\,
	cout => \inst17|cnt10k[7]~27\);

-- Location: LCCOMB_X5_Y6_N20
\inst17|cnt10k[8]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|cnt10k[8]~28_combout\ = (\inst17|cnt10k\(8) & (\inst17|cnt10k[7]~27\ $ (GND))) # (!\inst17|cnt10k\(8) & (!\inst17|cnt10k[7]~27\ & VCC))
-- \inst17|cnt10k[8]~29\ = CARRY((\inst17|cnt10k\(8) & !\inst17|cnt10k[7]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|cnt10k\(8),
	datad => VCC,
	cin => \inst17|cnt10k[7]~27\,
	combout => \inst17|cnt10k[8]~28_combout\,
	cout => \inst17|cnt10k[8]~29\);

-- Location: LCCOMB_X5_Y6_N22
\inst17|cnt10k[9]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|cnt10k[9]~30_combout\ = (\inst17|cnt10k\(9) & (!\inst17|cnt10k[8]~29\)) # (!\inst17|cnt10k\(9) & ((\inst17|cnt10k[8]~29\) # (GND)))
-- \inst17|cnt10k[9]~31\ = CARRY((!\inst17|cnt10k[8]~29\) # (!\inst17|cnt10k\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst17|cnt10k\(9),
	datad => VCC,
	cin => \inst17|cnt10k[8]~29\,
	combout => \inst17|cnt10k[9]~30_combout\,
	cout => \inst17|cnt10k[9]~31\);

-- Location: LCFF_X5_Y6_N23
\inst17|cnt10k[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst17|cnt10k[9]~30_combout\,
	sclr => \inst17|LessThan6~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst17|cnt10k\(9));

-- Location: LCFF_X5_Y6_N25
\inst17|cnt10k[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst17|cnt10k[10]~32_combout\,
	sclr => \inst17|LessThan6~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst17|cnt10k\(10));

-- Location: LCFF_X5_Y6_N21
\inst17|cnt10k[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst17|cnt10k[8]~28_combout\,
	sclr => \inst17|LessThan6~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst17|cnt10k\(8));

-- Location: LCFF_X5_Y6_N19
\inst17|cnt10k[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst17|cnt10k[7]~26_combout\,
	sclr => \inst17|LessThan6~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst17|cnt10k\(7));

-- Location: LCCOMB_X5_Y6_N28
\inst17|LessThan6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|LessThan6~0_combout\ = ((!\inst17|cnt10k\(7)) # (!\inst17|cnt10k\(8))) # (!\inst17|cnt10k\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|cnt10k\(6),
	datac => \inst17|cnt10k\(8),
	datad => \inst17|cnt10k\(7),
	combout => \inst17|LessThan6~0_combout\);

-- Location: LCFF_X5_Y6_N7
\inst17|cnt10k[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst17|cnt10k[1]~14_combout\,
	sclr => \inst17|LessThan6~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst17|cnt10k\(1));

-- Location: LCCOMB_X5_Y6_N2
\inst17|LessThan6~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|LessThan6~1_combout\ = (!\inst17|cnt10k\(3) & (!\inst17|cnt10k\(2) & ((!\inst17|cnt10k\(1)) # (!\inst17|cnt10k\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|cnt10k\(3),
	datab => \inst17|cnt10k\(0),
	datac => \inst17|cnt10k\(2),
	datad => \inst17|cnt10k\(1),
	combout => \inst17|LessThan6~1_combout\);

-- Location: LCCOMB_X5_Y6_N0
\inst17|LessThan6~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|LessThan6~2_combout\ = (\inst17|LessThan6~0_combout\) # ((!\inst17|cnt10k\(4) & (!\inst17|cnt10k\(5) & \inst17|LessThan6~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|cnt10k\(4),
	datab => \inst17|LessThan6~0_combout\,
	datac => \inst17|cnt10k\(5),
	datad => \inst17|LessThan6~1_combout\,
	combout => \inst17|LessThan6~2_combout\);

-- Location: LCCOMB_X5_Y6_N30
\inst17|LessThan6~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|LessThan6~3_combout\ = (\inst17|cnt10k\(11) & ((\inst17|cnt10k\(9)) # ((\inst17|cnt10k\(10)) # (!\inst17|LessThan6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|cnt10k\(11),
	datab => \inst17|cnt10k\(9),
	datac => \inst17|cnt10k\(10),
	datad => \inst17|LessThan6~2_combout\,
	combout => \inst17|LessThan6~3_combout\);

-- Location: LCCOMB_X4_Y6_N28
\inst17|out_10k~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|out_10k~0_combout\ = \inst17|out_10k~regout\ $ (\inst17|LessThan6~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst17|out_10k~regout\,
	datad => \inst17|LessThan6~3_combout\,
	combout => \inst17|out_10k~0_combout\);

-- Location: LCFF_X4_Y6_N29
\inst17|out_10k\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst17|out_10k~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst17|out_10k~regout\);

-- Location: CLKCTRL_G2
\inst17|out_10k~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst17|out_10k~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst17|out_10k~clkctrl_outclk\);

-- Location: LCCOMB_X12_Y5_N14
\inst19|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst19|Add0~0_combout\ = \inst19|cnt\(0) $ (VCC)
-- \inst19|Add0~1\ = CARRY(\inst19|cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst19|cnt\(0),
	datad => VCC,
	combout => \inst19|Add0~0_combout\,
	cout => \inst19|Add0~1\);

-- Location: LCCOMB_X12_Y5_N18
\inst19|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst19|Add0~4_combout\ = (\inst19|cnt\(2) & (\inst19|Add0~3\ $ (GND))) # (!\inst19|cnt\(2) & (!\inst19|Add0~3\ & VCC))
-- \inst19|Add0~5\ = CARRY((\inst19|cnt\(2) & !\inst19|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst19|cnt\(2),
	datad => VCC,
	cin => \inst19|Add0~3\,
	combout => \inst19|Add0~4_combout\,
	cout => \inst19|Add0~5\);

-- Location: LCCOMB_X12_Y5_N20
\inst19|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst19|Add0~6_combout\ = (\inst19|cnt\(3) & (!\inst19|Add0~5\)) # (!\inst19|cnt\(3) & ((\inst19|Add0~5\) # (GND)))
-- \inst19|Add0~7\ = CARRY((!\inst19|Add0~5\) # (!\inst19|cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst19|cnt\(3),
	datad => VCC,
	cin => \inst19|Add0~5\,
	combout => \inst19|Add0~6_combout\,
	cout => \inst19|Add0~7\);

-- Location: LCCOMB_X12_Y5_N2
\inst19|cnt~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst19|cnt~4_combout\ = (!\inst19|cnt\(7) & (\inst19|Add0~6_combout\ & ((\inst19|LessThan0~0_combout\) # (!\inst19|cnt\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|LessThan0~0_combout\,
	datab => \inst19|cnt\(7),
	datac => \inst19|Add0~6_combout\,
	datad => \inst19|cnt\(6),
	combout => \inst19|cnt~4_combout\);

-- Location: LCFF_X12_Y5_N3
\inst19|cnt[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst17|out_10k~clkctrl_outclk\,
	datain => \inst19|cnt~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst19|cnt\(3));

-- Location: LCCOMB_X12_Y5_N22
\inst19|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst19|Add0~8_combout\ = (\inst19|cnt\(4) & (\inst19|Add0~7\ $ (GND))) # (!\inst19|cnt\(4) & (!\inst19|Add0~7\ & VCC))
-- \inst19|Add0~9\ = CARRY((\inst19|cnt\(4) & !\inst19|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst19|cnt\(4),
	datad => VCC,
	cin => \inst19|Add0~7\,
	combout => \inst19|Add0~8_combout\,
	cout => \inst19|Add0~9\);

-- Location: LCCOMB_X12_Y5_N4
\inst19|cnt~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst19|cnt~3_combout\ = (!\inst19|cnt\(7) & (\inst19|Add0~8_combout\ & ((\inst19|LessThan0~0_combout\) # (!\inst19|cnt\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|cnt\(6),
	datab => \inst19|cnt\(7),
	datac => \inst19|Add0~8_combout\,
	datad => \inst19|LessThan0~0_combout\,
	combout => \inst19|cnt~3_combout\);

-- Location: LCFF_X12_Y5_N5
\inst19|cnt[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst17|out_10k~clkctrl_outclk\,
	datain => \inst19|cnt~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst19|cnt\(4));

-- Location: LCCOMB_X12_Y5_N24
\inst19|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst19|Add0~10_combout\ = (\inst19|cnt\(5) & (!\inst19|Add0~9\)) # (!\inst19|cnt\(5) & ((\inst19|Add0~9\) # (GND)))
-- \inst19|Add0~11\ = CARRY((!\inst19|Add0~9\) # (!\inst19|cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|cnt\(5),
	datad => VCC,
	cin => \inst19|Add0~9\,
	combout => \inst19|Add0~10_combout\,
	cout => \inst19|Add0~11\);

-- Location: LCCOMB_X12_Y5_N26
\inst19|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst19|Add0~12_combout\ = (\inst19|cnt\(6) & (\inst19|Add0~11\ $ (GND))) # (!\inst19|cnt\(6) & (!\inst19|Add0~11\ & VCC))
-- \inst19|Add0~13\ = CARRY((\inst19|cnt\(6) & !\inst19|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|cnt\(6),
	datad => VCC,
	cin => \inst19|Add0~11\,
	combout => \inst19|Add0~12_combout\,
	cout => \inst19|Add0~13\);

-- Location: LCCOMB_X12_Y5_N12
\inst19|cnt~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst19|cnt~1_combout\ = (!\inst19|cnt\(7) & (\inst19|Add0~12_combout\ & ((\inst19|LessThan0~0_combout\) # (!\inst19|cnt\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|LessThan0~0_combout\,
	datab => \inst19|cnt\(7),
	datac => \inst19|cnt\(6),
	datad => \inst19|Add0~12_combout\,
	combout => \inst19|cnt~1_combout\);

-- Location: LCFF_X12_Y5_N13
\inst19|cnt[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst17|out_10k~clkctrl_outclk\,
	datain => \inst19|cnt~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst19|cnt\(6));

-- Location: LCCOMB_X12_Y5_N8
\inst19|cnt~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst19|cnt~7_combout\ = (!\inst19|cnt\(7) & (\inst19|Add0~0_combout\ & ((\inst19|LessThan0~0_combout\) # (!\inst19|cnt\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|LessThan0~0_combout\,
	datab => \inst19|cnt\(7),
	datac => \inst19|Add0~0_combout\,
	datad => \inst19|cnt\(6),
	combout => \inst19|cnt~7_combout\);

-- Location: LCFF_X12_Y5_N9
\inst19|cnt[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst17|out_10k~clkctrl_outclk\,
	datain => \inst19|cnt~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst19|cnt\(0));

-- Location: LCCOMB_X12_Y5_N16
\inst19|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst19|Add0~2_combout\ = (\inst19|cnt\(1) & (!\inst19|Add0~1\)) # (!\inst19|cnt\(1) & ((\inst19|Add0~1\) # (GND)))
-- \inst19|Add0~3\ = CARRY((!\inst19|Add0~1\) # (!\inst19|cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst19|cnt\(1),
	datad => VCC,
	cin => \inst19|Add0~1\,
	combout => \inst19|Add0~2_combout\,
	cout => \inst19|Add0~3\);

-- Location: LCCOMB_X12_Y5_N30
\inst19|cnt~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst19|cnt~6_combout\ = (!\inst19|cnt\(7) & (\inst19|Add0~2_combout\ & ((\inst19|LessThan0~0_combout\) # (!\inst19|cnt\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|LessThan0~0_combout\,
	datab => \inst19|cnt\(7),
	datac => \inst19|Add0~2_combout\,
	datad => \inst19|cnt\(6),
	combout => \inst19|cnt~6_combout\);

-- Location: LCFF_X12_Y5_N31
\inst19|cnt[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst17|out_10k~clkctrl_outclk\,
	datain => \inst19|cnt~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst19|cnt\(1));

-- Location: LCCOMB_X12_Y5_N0
\inst19|cnt~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst19|cnt~5_combout\ = (!\inst19|cnt\(7) & (\inst19|Add0~4_combout\ & ((\inst19|LessThan0~0_combout\) # (!\inst19|cnt\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|cnt\(6),
	datab => \inst19|cnt\(7),
	datac => \inst19|Add0~4_combout\,
	datad => \inst19|LessThan0~0_combout\,
	combout => \inst19|cnt~5_combout\);

-- Location: LCFF_X12_Y5_N1
\inst19|cnt[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst17|out_10k~clkctrl_outclk\,
	datain => \inst19|cnt~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst19|cnt\(2));

-- Location: LCCOMB_X12_Y5_N10
\inst19|cnt~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst19|cnt~2_combout\ = (!\inst19|cnt\(7) & (\inst19|Add0~10_combout\ & ((\inst19|LessThan0~0_combout\) # (!\inst19|cnt\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|LessThan0~0_combout\,
	datab => \inst19|cnt\(7),
	datac => \inst19|Add0~10_combout\,
	datad => \inst19|cnt\(6),
	combout => \inst19|cnt~2_combout\);

-- Location: LCFF_X12_Y5_N11
\inst19|cnt[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst17|out_10k~clkctrl_outclk\,
	datain => \inst19|cnt~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst19|cnt\(5));

-- Location: LCCOMB_X12_Y5_N6
\inst19|LessThan0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst19|LessThan0~0_combout\ = ((!\inst19|cnt\(3) & (!\inst19|cnt\(2) & !\inst19|cnt\(4)))) # (!\inst19|cnt\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|cnt\(3),
	datab => \inst19|cnt\(2),
	datac => \inst19|cnt\(4),
	datad => \inst19|cnt\(5),
	combout => \inst19|LessThan0~0_combout\);

-- Location: LCCOMB_X13_Y5_N24
\inst19|cnt~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst19|cnt~0_combout\ = (!\inst19|cnt\(7) & (\inst19|Add0~14_combout\ & ((\inst19|LessThan0~0_combout\) # (!\inst19|cnt\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|cnt\(6),
	datab => \inst19|LessThan0~0_combout\,
	datac => \inst19|cnt\(7),
	datad => \inst19|Add0~14_combout\,
	combout => \inst19|cnt~0_combout\);

-- Location: LCFF_X13_Y5_N25
\inst19|cnt[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst17|out_10k~clkctrl_outclk\,
	datain => \inst19|cnt~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst19|cnt\(7));

-- Location: LCCOMB_X12_Y5_N28
\inst19|Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst19|Add0~14_combout\ = \inst19|Add0~13\ $ (\inst19|cnt\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst19|cnt\(7),
	cin => \inst19|Add0~13\,
	combout => \inst19|Add0~14_combout\);

-- Location: LCCOMB_X13_Y5_N0
\inst19|LessThan1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst19|LessThan1~1_cout\ = CARRY((!\inst19|Add0~0_combout\ & \inst13|speed\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add0~0_combout\,
	datab => \inst13|speed\(0),
	datad => VCC,
	cout => \inst19|LessThan1~1_cout\);

-- Location: LCCOMB_X13_Y5_N2
\inst19|LessThan1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst19|LessThan1~3_cout\ = CARRY((\inst13|speed\(1) & (\inst19|Add0~2_combout\ & !\inst19|LessThan1~1_cout\)) # (!\inst13|speed\(1) & ((\inst19|Add0~2_combout\) # (!\inst19|LessThan1~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|speed\(1),
	datab => \inst19|Add0~2_combout\,
	datad => VCC,
	cin => \inst19|LessThan1~1_cout\,
	cout => \inst19|LessThan1~3_cout\);

-- Location: LCCOMB_X13_Y5_N4
\inst19|LessThan1~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst19|LessThan1~5_cout\ = CARRY((\inst13|speed\(2) & (!\inst19|Add0~4_combout\ & !\inst19|LessThan1~3_cout\)) # (!\inst13|speed\(2) & ((!\inst19|LessThan1~3_cout\) # (!\inst19|Add0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|speed\(2),
	datab => \inst19|Add0~4_combout\,
	datad => VCC,
	cin => \inst19|LessThan1~3_cout\,
	cout => \inst19|LessThan1~5_cout\);

-- Location: LCCOMB_X13_Y5_N6
\inst19|LessThan1~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst19|LessThan1~7_cout\ = CARRY((\inst19|Add0~6_combout\ & ((\inst13|speed\(3)) # (!\inst19|LessThan1~5_cout\))) # (!\inst19|Add0~6_combout\ & (\inst13|speed\(3) & !\inst19|LessThan1~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add0~6_combout\,
	datab => \inst13|speed\(3),
	datad => VCC,
	cin => \inst19|LessThan1~5_cout\,
	cout => \inst19|LessThan1~7_cout\);

-- Location: LCCOMB_X13_Y5_N8
\inst19|LessThan1~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst19|LessThan1~9_cout\ = CARRY((\inst13|speed\(4) & (!\inst19|Add0~8_combout\ & !\inst19|LessThan1~7_cout\)) # (!\inst13|speed\(4) & ((!\inst19|LessThan1~7_cout\) # (!\inst19|Add0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|speed\(4),
	datab => \inst19|Add0~8_combout\,
	datad => VCC,
	cin => \inst19|LessThan1~7_cout\,
	cout => \inst19|LessThan1~9_cout\);

-- Location: LCCOMB_X13_Y5_N10
\inst19|LessThan1~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst19|LessThan1~11_cout\ = CARRY((\inst13|speed\(5) & (\inst19|Add0~10_combout\ & !\inst19|LessThan1~9_cout\)) # (!\inst13|speed\(5) & ((\inst19|Add0~10_combout\) # (!\inst19|LessThan1~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|speed\(5),
	datab => \inst19|Add0~10_combout\,
	datad => VCC,
	cin => \inst19|LessThan1~9_cout\,
	cout => \inst19|LessThan1~11_cout\);

-- Location: LCCOMB_X13_Y5_N12
\inst19|LessThan1~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst19|LessThan1~13_cout\ = CARRY((\inst13|speed\(6) & ((!\inst19|LessThan1~11_cout\) # (!\inst19|Add0~12_combout\))) # (!\inst13|speed\(6) & (!\inst19|Add0~12_combout\ & !\inst19|LessThan1~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|speed\(6),
	datab => \inst19|Add0~12_combout\,
	datad => VCC,
	cin => \inst19|LessThan1~11_cout\,
	cout => \inst19|LessThan1~13_cout\);

-- Location: LCCOMB_X13_Y5_N14
\inst19|LessThan1~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst19|LessThan1~14_combout\ = (\inst13|speed\(7) & ((\inst19|LessThan1~13_cout\) # (!\inst19|Add0~14_combout\))) # (!\inst13|speed\(7) & (\inst19|LessThan1~13_cout\ & !\inst19|Add0~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst13|speed\(7),
	datad => \inst19|Add0~14_combout\,
	cin => \inst19|LessThan1~13_cout\,
	combout => \inst19|LessThan1~14_combout\);

-- Location: LCCOMB_X13_Y5_N28
\inst19|PWML~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst19|PWML~0_combout\ = (\inst19|LessThan1~14_combout\ & !\inst13|direction~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst19|LessThan1~14_combout\,
	datad => \inst13|direction~regout\,
	combout => \inst19|PWML~0_combout\);

-- Location: LCCOMB_X13_Y5_N22
\inst19|LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst19|LessThan0~1_combout\ = (!\inst19|cnt\(7) & ((\inst19|LessThan0~0_combout\) # (!\inst19|cnt\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|cnt\(7),
	datac => \inst19|LessThan0~0_combout\,
	datad => \inst19|cnt\(6),
	combout => \inst19|LessThan0~1_combout\);

-- Location: LCFF_X13_Y5_N29
\inst19|PWML\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst17|out_10k~clkctrl_outclk\,
	datain => \inst19|PWML~0_combout\,
	ena => \inst19|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst19|PWML~regout\);

-- Location: LCCOMB_X13_Y5_N18
\inst19|PWMR~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst19|PWMR~0_combout\ = (\inst19|LessThan1~14_combout\ & \inst13|direction~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst19|LessThan1~14_combout\,
	datad => \inst13|direction~regout\,
	combout => \inst19|PWMR~0_combout\);

-- Location: LCFF_X13_Y5_N19
\inst19|PWMR\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst17|out_10k~clkctrl_outclk\,
	datain => \inst19|PWMR~0_combout\,
	ena => \inst19|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst19|PWMR~regout\);

-- Location: PIN_131,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_clk,
	combout => \clk~combout\);

-- Location: CLKCTRL_G6
\clk~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~clkctrl_outclk\);

-- Location: LCCOMB_X17_Y6_N4
\inst6|tone[0]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|tone[0]~28_combout\ = \inst6|tone\(0) $ (VCC)
-- \inst6|tone[0]~29\ = CARRY(\inst6|tone\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|tone\(0),
	datad => VCC,
	combout => \inst6|tone[0]~28_combout\,
	cout => \inst6|tone[0]~29\);

-- Location: LCCOMB_X12_Y10_N14
\inst13|beepEnable~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|beepEnable~1_combout\ = ((!\inst13|backStatus.01~regout\ & ((\inst13|beepEnable~regout\) # (\inst13|backStatus.10~regout\)))) # (!\inst13|speed[6]~35_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|beepEnable~regout\,
	datab => \inst13|speed[6]~35_combout\,
	datac => \inst13|backStatus.01~regout\,
	datad => \inst13|backStatus.10~regout\,
	combout => \inst13|beepEnable~1_combout\);

-- Location: LCCOMB_X13_Y8_N2
\inst13|beepEnable~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|beepEnable~2_combout\ = (\inst13|Equal6~0_combout\ & (!\inst13|always1~10_combout\ & ((\inst13|speed[6]~35_combout\) # (!\inst13|LessThan3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|LessThan3~1_combout\,
	datab => \inst13|speed[6]~35_combout\,
	datac => \inst13|Equal6~0_combout\,
	datad => \inst13|always1~10_combout\,
	combout => \inst13|beepEnable~2_combout\);

-- Location: LCCOMB_X12_Y10_N20
\inst13|beepEnable~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|beepEnable~3_combout\ = (\inst13|beepEnable~2_combout\ & (((!\inst13|always1~6_combout\ & \inst13|beepEnable~1_combout\)))) # (!\inst13|beepEnable~2_combout\ & (\inst13|beepEnable~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|beepEnable~regout\,
	datab => \inst13|always1~6_combout\,
	datac => \inst13|beepEnable~1_combout\,
	datad => \inst13|beepEnable~2_combout\,
	combout => \inst13|beepEnable~3_combout\);

-- Location: LCCOMB_X12_Y10_N28
\inst13|beepEnable~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|beepEnable~5_combout\ = (\inst13|mystate\(0) & (\inst13|beepEnable~4_combout\ & ((!\inst13|always1~8_combout\)))) # (!\inst13|mystate\(0) & (((\inst13|target2[2]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|beepEnable~4_combout\,
	datab => \inst13|mystate\(0),
	datac => \inst13|target2[2]~3_combout\,
	datad => \inst13|always1~8_combout\,
	combout => \inst13|beepEnable~5_combout\);

-- Location: LCCOMB_X13_Y10_N0
\inst13|beepEnable~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|beepEnable~6_combout\ = (\inst13|mystate\(1) & (\inst13|WideOr0~combout\ & ((!\inst13|mystate\(0))))) # (!\inst13|mystate\(1) & (((\inst13|backdone~3_combout\ & \inst13|mystate\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|mystate\(1),
	datab => \inst13|WideOr0~combout\,
	datac => \inst13|backdone~3_combout\,
	datad => \inst13|mystate\(0),
	combout => \inst13|beepEnable~6_combout\);

-- Location: LCCOMB_X13_Y10_N24
\inst13|last2~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|last2~5_combout\ = (\inst13|always1~3_combout\ & (!\inst13|LessThan2~7_combout\ & ((!\inst13|lastsign2~regout\) # (!\Signs~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Signs~combout\(2),
	datab => \inst13|lastsign2~regout\,
	datac => \inst13|always1~3_combout\,
	datad => \inst13|LessThan2~7_combout\,
	combout => \inst13|last2~5_combout\);

-- Location: LCCOMB_X12_Y10_N26
\inst13|beepEnable~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|beepEnable~7_combout\ = (\inst13|beepEnable~6_combout\ & ((\inst13|last2~5_combout\ & ((\inst13|beepEnable~5_combout\))) # (!\inst13|last2~5_combout\ & (\inst13|beepEnable~regout\)))) # (!\inst13|beepEnable~6_combout\ & 
-- (\inst13|beepEnable~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|beepEnable~regout\,
	datab => \inst13|beepEnable~5_combout\,
	datac => \inst13|beepEnable~6_combout\,
	datad => \inst13|last2~5_combout\,
	combout => \inst13|beepEnable~7_combout\);

-- Location: LCCOMB_X12_Y10_N12
\inst13|beepEnable~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|beepEnable~8_combout\ = (\inst13|state.10~regout\ & (\inst13|beepEnable~3_combout\)) # (!\inst13|state.10~regout\ & ((\inst13|beepEnable~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|state.10~regout\,
	datac => \inst13|beepEnable~3_combout\,
	datad => \inst13|beepEnable~7_combout\,
	combout => \inst13|beepEnable~8_combout\);

-- Location: LCCOMB_X12_Y10_N16
\inst13|beepEnable~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|beepEnable~0_combout\ = (\inst13|state.01~regout\ & (\inst13|beepEnable~regout\)) # (!\inst13|state.01~regout\ & ((\inst13|beepEnable~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|state.01~regout\,
	datac => \inst13|beepEnable~regout\,
	datad => \inst13|beepEnable~8_combout\,
	combout => \inst13|beepEnable~0_combout\);

-- Location: LCCOMB_X13_Y6_N4
\inst13|beepEnable~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|beepEnable~9_combout\ = \inst9|data\(1) $ (\inst9|data\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|data\(1),
	datad => \inst9|data\(0),
	combout => \inst13|beepEnable~9_combout\);

-- Location: LCCOMB_X13_Y6_N26
\inst13|beepEnable~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|beepEnable~10_combout\ = (\inst13|beepEnable~regout\ & ((\inst13|Equal5~0_combout\) # ((\inst13|LessThan6~1_combout\ & \inst13|beepEnable~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|LessThan6~1_combout\,
	datab => \inst13|Equal5~0_combout\,
	datac => \inst13|beepEnable~9_combout\,
	datad => \inst13|beepEnable~regout\,
	combout => \inst13|beepEnable~10_combout\);

-- Location: LCFF_X12_Y10_N17
\inst13|beepEnable\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst13|beepEnable~0_combout\,
	sdata => \inst13|beepEnable~10_combout\,
	sload => \inst13|ALT_INV_state.00~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst13|beepEnable~regout\);

-- Location: LCFF_X17_Y6_N5
\inst6|tone[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst6|tone[0]~28_combout\,
	sclr => \inst13|ALT_INV_beepEnable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|tone\(0));

-- Location: LCCOMB_X17_Y6_N8
\inst6|tone[2]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|tone[2]~32_combout\ = (\inst6|tone\(2) & (\inst6|tone[1]~31\ $ (GND))) # (!\inst6|tone\(2) & (!\inst6|tone[1]~31\ & VCC))
-- \inst6|tone[2]~33\ = CARRY((\inst6|tone\(2) & !\inst6|tone[1]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|tone\(2),
	datad => VCC,
	cin => \inst6|tone[1]~31\,
	combout => \inst6|tone[2]~32_combout\,
	cout => \inst6|tone[2]~33\);

-- Location: LCFF_X17_Y6_N9
\inst6|tone[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst6|tone[2]~32_combout\,
	sclr => \inst13|ALT_INV_beepEnable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|tone\(2));

-- Location: LCCOMB_X17_Y6_N14
\inst6|tone[5]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|tone[5]~38_combout\ = (\inst6|tone\(5) & (!\inst6|tone[4]~37\)) # (!\inst6|tone\(5) & ((\inst6|tone[4]~37\) # (GND)))
-- \inst6|tone[5]~39\ = CARRY((!\inst6|tone[4]~37\) # (!\inst6|tone\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|tone\(5),
	datad => VCC,
	cin => \inst6|tone[4]~37\,
	combout => \inst6|tone[5]~38_combout\,
	cout => \inst6|tone[5]~39\);

-- Location: LCFF_X17_Y6_N15
\inst6|tone[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst6|tone[5]~38_combout\,
	sclr => \inst13|ALT_INV_beepEnable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|tone\(5));

-- Location: LCCOMB_X17_Y6_N18
\inst6|tone[7]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|tone[7]~42_combout\ = (\inst6|tone\(7) & (!\inst6|tone[6]~41\)) # (!\inst6|tone\(7) & ((\inst6|tone[6]~41\) # (GND)))
-- \inst6|tone[7]~43\ = CARRY((!\inst6|tone[6]~41\) # (!\inst6|tone\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|tone\(7),
	datad => VCC,
	cin => \inst6|tone[6]~41\,
	combout => \inst6|tone[7]~42_combout\,
	cout => \inst6|tone[7]~43\);

-- Location: LCFF_X17_Y6_N19
\inst6|tone[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst6|tone[7]~42_combout\,
	sclr => \inst13|ALT_INV_beepEnable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|tone\(7));

-- Location: LCCOMB_X17_Y6_N22
\inst6|tone[9]~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|tone[9]~46_combout\ = (\inst6|tone\(9) & (!\inst6|tone[8]~45\)) # (!\inst6|tone\(9) & ((\inst6|tone[8]~45\) # (GND)))
-- \inst6|tone[9]~47\ = CARRY((!\inst6|tone[8]~45\) # (!\inst6|tone\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|tone\(9),
	datad => VCC,
	cin => \inst6|tone[8]~45\,
	combout => \inst6|tone[9]~46_combout\,
	cout => \inst6|tone[9]~47\);

-- Location: LCFF_X17_Y6_N23
\inst6|tone[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst6|tone[9]~46_combout\,
	sclr => \inst13|ALT_INV_beepEnable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|tone\(9));

-- Location: LCCOMB_X17_Y6_N26
\inst6|tone[11]~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|tone[11]~50_combout\ = (\inst6|tone\(11) & (!\inst6|tone[10]~49\)) # (!\inst6|tone\(11) & ((\inst6|tone[10]~49\) # (GND)))
-- \inst6|tone[11]~51\ = CARRY((!\inst6|tone[10]~49\) # (!\inst6|tone\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|tone\(11),
	datad => VCC,
	cin => \inst6|tone[10]~49\,
	combout => \inst6|tone[11]~50_combout\,
	cout => \inst6|tone[11]~51\);

-- Location: LCFF_X17_Y6_N27
\inst6|tone[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst6|tone[11]~50_combout\,
	sclr => \inst13|ALT_INV_beepEnable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|tone\(11));

-- Location: LCCOMB_X17_Y6_N28
\inst6|tone[12]~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|tone[12]~52_combout\ = (\inst6|tone\(12) & (\inst6|tone[11]~51\ $ (GND))) # (!\inst6|tone\(12) & (!\inst6|tone[11]~51\ & VCC))
-- \inst6|tone[12]~53\ = CARRY((\inst6|tone\(12) & !\inst6|tone[11]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|tone\(12),
	datad => VCC,
	cin => \inst6|tone[11]~51\,
	combout => \inst6|tone[12]~52_combout\,
	cout => \inst6|tone[12]~53\);

-- Location: LCFF_X17_Y6_N29
\inst6|tone[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst6|tone[12]~52_combout\,
	sclr => \inst13|ALT_INV_beepEnable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|tone\(12));

-- Location: LCCOMB_X17_Y6_N30
\inst6|tone[13]~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|tone[13]~54_combout\ = (\inst6|tone\(13) & (!\inst6|tone[12]~53\)) # (!\inst6|tone\(13) & ((\inst6|tone[12]~53\) # (GND)))
-- \inst6|tone[13]~55\ = CARRY((!\inst6|tone[12]~53\) # (!\inst6|tone\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|tone\(13),
	datad => VCC,
	cin => \inst6|tone[12]~53\,
	combout => \inst6|tone[13]~54_combout\,
	cout => \inst6|tone[13]~55\);

-- Location: LCFF_X17_Y6_N31
\inst6|tone[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst6|tone[13]~54_combout\,
	sclr => \inst13|ALT_INV_beepEnable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|tone\(13));

-- Location: LCCOMB_X17_Y5_N0
\inst6|tone[14]~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|tone[14]~56_combout\ = (\inst6|tone\(14) & (\inst6|tone[13]~55\ $ (GND))) # (!\inst6|tone\(14) & (!\inst6|tone[13]~55\ & VCC))
-- \inst6|tone[14]~57\ = CARRY((\inst6|tone\(14) & !\inst6|tone[13]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|tone\(14),
	datad => VCC,
	cin => \inst6|tone[13]~55\,
	combout => \inst6|tone[14]~56_combout\,
	cout => \inst6|tone[14]~57\);

-- Location: LCFF_X17_Y5_N1
\inst6|tone[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst6|tone[14]~56_combout\,
	sclr => \inst13|ALT_INV_beepEnable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|tone\(14));

-- Location: LCCOMB_X17_Y5_N2
\inst6|tone[15]~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|tone[15]~58_combout\ = (\inst6|tone\(15) & (!\inst6|tone[14]~57\)) # (!\inst6|tone\(15) & ((\inst6|tone[14]~57\) # (GND)))
-- \inst6|tone[15]~59\ = CARRY((!\inst6|tone[14]~57\) # (!\inst6|tone\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|tone\(15),
	datad => VCC,
	cin => \inst6|tone[14]~57\,
	combout => \inst6|tone[15]~58_combout\,
	cout => \inst6|tone[15]~59\);

-- Location: LCFF_X17_Y5_N3
\inst6|tone[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst6|tone[15]~58_combout\,
	sclr => \inst13|ALT_INV_beepEnable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|tone\(15));

-- Location: LCCOMB_X17_Y5_N4
\inst6|tone[16]~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|tone[16]~60_combout\ = (\inst6|tone\(16) & (\inst6|tone[15]~59\ $ (GND))) # (!\inst6|tone\(16) & (!\inst6|tone[15]~59\ & VCC))
-- \inst6|tone[16]~61\ = CARRY((\inst6|tone\(16) & !\inst6|tone[15]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|tone\(16),
	datad => VCC,
	cin => \inst6|tone[15]~59\,
	combout => \inst6|tone[16]~60_combout\,
	cout => \inst6|tone[16]~61\);

-- Location: LCFF_X17_Y5_N5
\inst6|tone[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst6|tone[16]~60_combout\,
	sclr => \inst13|ALT_INV_beepEnable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|tone\(16));

-- Location: LCCOMB_X17_Y5_N6
\inst6|tone[17]~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|tone[17]~62_combout\ = (\inst6|tone\(17) & (!\inst6|tone[16]~61\)) # (!\inst6|tone\(17) & ((\inst6|tone[16]~61\) # (GND)))
-- \inst6|tone[17]~63\ = CARRY((!\inst6|tone[16]~61\) # (!\inst6|tone\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|tone\(17),
	datad => VCC,
	cin => \inst6|tone[16]~61\,
	combout => \inst6|tone[17]~62_combout\,
	cout => \inst6|tone[17]~63\);

-- Location: LCCOMB_X17_Y5_N8
\inst6|tone[18]~64\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|tone[18]~64_combout\ = (\inst6|tone\(18) & (\inst6|tone[17]~63\ $ (GND))) # (!\inst6|tone\(18) & (!\inst6|tone[17]~63\ & VCC))
-- \inst6|tone[18]~65\ = CARRY((\inst6|tone\(18) & !\inst6|tone[17]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|tone\(18),
	datad => VCC,
	cin => \inst6|tone[17]~63\,
	combout => \inst6|tone[18]~64_combout\,
	cout => \inst6|tone[18]~65\);

-- Location: LCFF_X17_Y5_N9
\inst6|tone[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst6|tone[18]~64_combout\,
	sclr => \inst13|ALT_INV_beepEnable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|tone\(18));

-- Location: LCCOMB_X17_Y5_N14
\inst6|tone[21]~70\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|tone[21]~70_combout\ = (\inst6|tone\(21) & (!\inst6|tone[20]~69\)) # (!\inst6|tone\(21) & ((\inst6|tone[20]~69\) # (GND)))
-- \inst6|tone[21]~71\ = CARRY((!\inst6|tone[20]~69\) # (!\inst6|tone\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|tone\(21),
	datad => VCC,
	cin => \inst6|tone[20]~69\,
	combout => \inst6|tone[21]~70_combout\,
	cout => \inst6|tone[21]~71\);

-- Location: LCFF_X17_Y5_N15
\inst6|tone[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst6|tone[21]~70_combout\,
	sclr => \inst13|ALT_INV_beepEnable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|tone\(21));

-- Location: LCCOMB_X17_Y5_N16
\inst6|tone[22]~72\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|tone[22]~72_combout\ = (\inst6|tone\(22) & (\inst6|tone[21]~71\ $ (GND))) # (!\inst6|tone\(22) & (!\inst6|tone[21]~71\ & VCC))
-- \inst6|tone[22]~73\ = CARRY((\inst6|tone\(22) & !\inst6|tone[21]~71\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|tone\(22),
	datad => VCC,
	cin => \inst6|tone[21]~71\,
	combout => \inst6|tone[22]~72_combout\,
	cout => \inst6|tone[22]~73\);

-- Location: LCCOMB_X17_Y5_N18
\inst6|tone[23]~74\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|tone[23]~74_combout\ = (\inst6|tone\(23) & (!\inst6|tone[22]~73\)) # (!\inst6|tone\(23) & ((\inst6|tone[22]~73\) # (GND)))
-- \inst6|tone[23]~75\ = CARRY((!\inst6|tone[22]~73\) # (!\inst6|tone\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|tone\(23),
	datad => VCC,
	cin => \inst6|tone[22]~73\,
	combout => \inst6|tone[23]~74_combout\,
	cout => \inst6|tone[23]~75\);

-- Location: LCFF_X17_Y5_N19
\inst6|tone[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst6|tone[23]~74_combout\,
	sclr => \inst13|ALT_INV_beepEnable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|tone\(23));

-- Location: LCCOMB_X17_Y5_N20
\inst6|tone[24]~76\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|tone[24]~76_combout\ = (\inst6|tone\(24) & (\inst6|tone[23]~75\ $ (GND))) # (!\inst6|tone\(24) & (!\inst6|tone[23]~75\ & VCC))
-- \inst6|tone[24]~77\ = CARRY((\inst6|tone\(24) & !\inst6|tone[23]~75\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|tone\(24),
	datad => VCC,
	cin => \inst6|tone[23]~75\,
	combout => \inst6|tone[24]~76_combout\,
	cout => \inst6|tone[24]~77\);

-- Location: LCCOMB_X17_Y5_N22
\inst6|tone[25]~78\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|tone[25]~78_combout\ = (\inst6|tone\(25) & (!\inst6|tone[24]~77\)) # (!\inst6|tone\(25) & ((\inst6|tone[24]~77\) # (GND)))
-- \inst6|tone[25]~79\ = CARRY((!\inst6|tone[24]~77\) # (!\inst6|tone\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|tone\(25),
	datad => VCC,
	cin => \inst6|tone[24]~77\,
	combout => \inst6|tone[25]~78_combout\,
	cout => \inst6|tone[25]~79\);

-- Location: LCFF_X17_Y5_N23
\inst6|tone[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst6|tone[25]~78_combout\,
	sclr => \inst13|ALT_INV_beepEnable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|tone\(25));

-- Location: LCCOMB_X17_Y5_N26
\inst6|tone[27]~82\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|tone[27]~82_combout\ = \inst6|tone[26]~81\ $ (\inst6|tone\(27))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst6|tone\(27),
	cin => \inst6|tone[26]~81\,
	combout => \inst6|tone[27]~82_combout\);

-- Location: LCFF_X17_Y5_N27
\inst6|tone[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst6|tone[27]~82_combout\,
	sclr => \inst13|ALT_INV_beepEnable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|tone\(27));

-- Location: LCFF_X17_Y5_N17
\inst6|tone[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst6|tone[22]~72_combout\,
	sclr => \inst13|ALT_INV_beepEnable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|tone\(22));

-- Location: LCCOMB_X18_Y5_N8
\inst6|counter~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|counter~15_combout\ = \inst6|tone\(22) $ (((\inst6|tone\(27) & ((!\inst6|tone\(25)))) # (!\inst6|tone\(27) & (!\inst6|tone\(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|tone\(19),
	datab => \inst6|tone\(27),
	datac => \inst6|tone\(25),
	datad => \inst6|tone\(22),
	combout => \inst6|counter~15_combout\);

-- Location: LCFF_X17_Y5_N7
\inst6|tone[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst6|tone[17]~62_combout\,
	sclr => \inst13|ALT_INV_beepEnable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|tone\(17));

-- Location: LCCOMB_X18_Y5_N22
\inst6|counter[8]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|counter[8]~6_combout\ = (\inst6|tone\(27) & (\inst6|tone\(25))) # (!\inst6|tone\(27) & ((\inst6|tone\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|tone\(27),
	datac => \inst6|tone\(25),
	datad => \inst6|tone\(22),
	combout => \inst6|counter[8]~6_combout\);

-- Location: LCCOMB_X18_Y5_N0
\inst6|counter~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|counter~11_combout\ = \inst6|counter[8]~6_combout\ $ (((\inst6|tone\(27) & (!\inst6|tone\(20))) # (!\inst6|tone\(27) & ((!\inst6|tone\(17))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100001000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|tone\(20),
	datab => \inst6|tone\(27),
	datac => \inst6|tone\(17),
	datad => \inst6|counter[8]~6_combout\,
	combout => \inst6|counter~11_combout\);

-- Location: LCCOMB_X19_Y5_N0
\inst6|Add1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|Add1~0_combout\ = \inst6|counter\(0) $ (VCC)
-- \inst6|Add1~1\ = CARRY(\inst6|counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|counter\(0),
	datad => VCC,
	combout => \inst6|Add1~0_combout\,
	cout => \inst6|Add1~1\);

-- Location: LCCOMB_X20_Y5_N24
\inst6|counter~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|counter~3_combout\ = (\inst6|Add1~0_combout\ & !\inst6|Equal0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|Add1~0_combout\,
	datad => \inst6|Equal0~4_combout\,
	combout => \inst6|counter~3_combout\);

-- Location: LCFF_X20_Y5_N25
\inst6|counter[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst6|counter~3_combout\,
	ena => \inst13|beepEnable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|counter\(0));

-- Location: LCCOMB_X19_Y5_N2
\inst6|Add1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|Add1~2_combout\ = (\inst6|counter\(1) & (\inst6|Add1~1\ & VCC)) # (!\inst6|counter\(1) & (!\inst6|Add1~1\))
-- \inst6|Add1~3\ = CARRY((!\inst6|counter\(1) & !\inst6|Add1~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|counter\(1),
	datad => VCC,
	cin => \inst6|Add1~1\,
	combout => \inst6|Add1~2_combout\,
	cout => \inst6|Add1~3\);

-- Location: LCCOMB_X20_Y5_N14
\inst6|counter~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|counter~2_combout\ = (!\inst6|Equal0~4_combout\ & \inst6|Add1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|Equal0~4_combout\,
	datad => \inst6|Add1~2_combout\,
	combout => \inst6|counter~2_combout\);

-- Location: LCFF_X20_Y5_N15
\inst6|counter[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst6|counter~2_combout\,
	ena => \inst13|beepEnable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|counter\(1));

-- Location: LCCOMB_X19_Y5_N4
\inst6|Add1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|Add1~4_combout\ = (\inst6|counter\(2) & ((GND) # (!\inst6|Add1~3\))) # (!\inst6|counter\(2) & (\inst6|Add1~3\ $ (GND)))
-- \inst6|Add1~5\ = CARRY((\inst6|counter\(2)) # (!\inst6|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|counter\(2),
	datad => VCC,
	cin => \inst6|Add1~3\,
	combout => \inst6|Add1~4_combout\,
	cout => \inst6|Add1~5\);

-- Location: LCCOMB_X20_Y5_N12
\inst6|counter~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|counter~1_combout\ = (\inst6|Add1~4_combout\ & !\inst6|Equal0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|Add1~4_combout\,
	datad => \inst6|Equal0~4_combout\,
	combout => \inst6|counter~1_combout\);

-- Location: LCFF_X20_Y5_N13
\inst6|counter[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst6|counter~1_combout\,
	ena => \inst13|beepEnable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|counter\(2));

-- Location: LCCOMB_X19_Y5_N6
\inst6|Add1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|Add1~6_combout\ = (\inst6|counter\(3) & (\inst6|Add1~5\ & VCC)) # (!\inst6|counter\(3) & (!\inst6|Add1~5\))
-- \inst6|Add1~7\ = CARRY((!\inst6|counter\(3) & !\inst6|Add1~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|counter\(3),
	datad => VCC,
	cin => \inst6|Add1~5\,
	combout => \inst6|Add1~6_combout\,
	cout => \inst6|Add1~7\);

-- Location: LCCOMB_X20_Y5_N22
\inst6|counter~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|counter~0_combout\ = (\inst6|Add1~6_combout\ & !\inst6|Equal0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|Add1~6_combout\,
	datad => \inst6|Equal0~4_combout\,
	combout => \inst6|counter~0_combout\);

-- Location: LCFF_X20_Y5_N23
\inst6|counter[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst6|counter~0_combout\,
	ena => \inst13|beepEnable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|counter\(3));

-- Location: LCCOMB_X19_Y5_N8
\inst6|Add1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|Add1~8_combout\ = (\inst6|counter\(4) & ((GND) # (!\inst6|Add1~7\))) # (!\inst6|counter\(4) & (\inst6|Add1~7\ $ (GND)))
-- \inst6|Add1~9\ = CARRY((\inst6|counter\(4)) # (!\inst6|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|counter\(4),
	datad => VCC,
	cin => \inst6|Add1~7\,
	combout => \inst6|Add1~8_combout\,
	cout => \inst6|Add1~9\);

-- Location: LCCOMB_X20_Y5_N8
\inst6|counter~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|counter~4_combout\ = (!\inst6|Equal0~4_combout\ & \inst6|Add1~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|Equal0~4_combout\,
	datad => \inst6|Add1~8_combout\,
	combout => \inst6|counter~4_combout\);

-- Location: LCFF_X20_Y5_N9
\inst6|counter[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst6|counter~4_combout\,
	ena => \inst13|beepEnable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|counter\(4));

-- Location: LCCOMB_X19_Y5_N10
\inst6|Add1~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|Add1~10_combout\ = (\inst6|counter\(5) & (\inst6|Add1~9\ & VCC)) # (!\inst6|counter\(5) & (!\inst6|Add1~9\))
-- \inst6|Add1~11\ = CARRY((!\inst6|counter\(5) & !\inst6|Add1~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|counter\(5),
	datad => VCC,
	cin => \inst6|Add1~9\,
	combout => \inst6|Add1~10_combout\,
	cout => \inst6|Add1~11\);

-- Location: LCCOMB_X20_Y5_N30
\inst6|counter~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|counter~5_combout\ = (!\inst6|Equal0~4_combout\ & \inst6|Add1~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|Equal0~4_combout\,
	datad => \inst6|Add1~10_combout\,
	combout => \inst6|counter~5_combout\);

-- Location: LCFF_X20_Y5_N31
\inst6|counter[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst6|counter~5_combout\,
	ena => \inst13|beepEnable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|counter\(5));

-- Location: LCCOMB_X19_Y5_N12
\inst6|Add1~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|Add1~12_combout\ = (\inst6|counter\(6) & ((GND) # (!\inst6|Add1~11\))) # (!\inst6|counter\(6) & (\inst6|Add1~11\ $ (GND)))
-- \inst6|Add1~13\ = CARRY((\inst6|counter\(6)) # (!\inst6|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|counter\(6),
	datad => VCC,
	cin => \inst6|Add1~11\,
	combout => \inst6|Add1~12_combout\,
	cout => \inst6|Add1~13\);

-- Location: LCCOMB_X18_Y5_N12
\inst6|counter~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|counter~7_combout\ = \inst6|counter[8]~6_combout\ $ (((\inst6|tone\(27) & ((!\inst6|tone\(18)))) # (!\inst6|tone\(27) & (!\inst6|tone\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100100111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|tone\(15),
	datab => \inst6|counter[8]~6_combout\,
	datac => \inst6|tone\(27),
	datad => \inst6|tone\(18),
	combout => \inst6|counter~7_combout\);

-- Location: LCCOMB_X18_Y5_N28
\inst6|counter~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|counter~8_combout\ = (\inst6|Equal0~4_combout\ & ((\inst6|counter~7_combout\))) # (!\inst6|Equal0~4_combout\ & (\inst6|Add1~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Equal0~4_combout\,
	datac => \inst6|Add1~12_combout\,
	datad => \inst6|counter~7_combout\,
	combout => \inst6|counter~8_combout\);

-- Location: LCFF_X18_Y5_N29
\inst6|counter[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst6|counter~8_combout\,
	ena => \inst13|beepEnable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|counter\(6));

-- Location: LCCOMB_X19_Y5_N16
\inst6|Add1~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|Add1~16_combout\ = (\inst6|counter\(8) & ((GND) # (!\inst6|Add1~15\))) # (!\inst6|counter\(8) & (\inst6|Add1~15\ $ (GND)))
-- \inst6|Add1~17\ = CARRY((\inst6|counter\(8)) # (!\inst6|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|counter\(8),
	datad => VCC,
	cin => \inst6|Add1~15\,
	combout => \inst6|Add1~16_combout\,
	cout => \inst6|Add1~17\);

-- Location: LCCOMB_X18_Y5_N4
\inst6|counter~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|counter~12_combout\ = (\inst6|Equal0~4_combout\ & (\inst6|counter~11_combout\)) # (!\inst6|Equal0~4_combout\ & ((\inst6|Add1~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Equal0~4_combout\,
	datab => \inst6|counter~11_combout\,
	datac => \inst6|Add1~16_combout\,
	combout => \inst6|counter~12_combout\);

-- Location: LCFF_X18_Y5_N5
\inst6|counter[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst6|counter~12_combout\,
	ena => \inst13|beepEnable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|counter\(8));

-- Location: LCCOMB_X19_Y5_N18
\inst6|Add1~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|Add1~18_combout\ = (\inst6|counter\(9) & (\inst6|Add1~17\ & VCC)) # (!\inst6|counter\(9) & (!\inst6|Add1~17\))
-- \inst6|Add1~19\ = CARRY((!\inst6|counter\(9) & !\inst6|Add1~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|counter\(9),
	datad => VCC,
	cin => \inst6|Add1~17\,
	combout => \inst6|Add1~18_combout\,
	cout => \inst6|Add1~19\);

-- Location: LCCOMB_X19_Y5_N20
\inst6|Add1~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|Add1~20_combout\ = (\inst6|counter\(10) & ((GND) # (!\inst6|Add1~19\))) # (!\inst6|counter\(10) & (\inst6|Add1~19\ $ (GND)))
-- \inst6|Add1~21\ = CARRY((\inst6|counter\(10)) # (!\inst6|Add1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|counter\(10),
	datad => VCC,
	cin => \inst6|Add1~19\,
	combout => \inst6|Add1~20_combout\,
	cout => \inst6|Add1~21\);

-- Location: LCCOMB_X18_Y5_N16
\inst6|counter~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|counter~16_combout\ = (\inst6|Equal0~4_combout\ & (\inst6|counter~15_combout\)) # (!\inst6|Equal0~4_combout\ & ((\inst6|Add1~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Equal0~4_combout\,
	datac => \inst6|counter~15_combout\,
	datad => \inst6|Add1~20_combout\,
	combout => \inst6|counter~16_combout\);

-- Location: LCFF_X18_Y5_N17
\inst6|counter[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst6|counter~16_combout\,
	ena => \inst13|beepEnable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|counter\(10));

-- Location: LCCOMB_X19_Y5_N24
\inst6|Add1~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|Add1~24_combout\ = (\inst6|counter\(12) & ((GND) # (!\inst6|Add1~23\))) # (!\inst6|counter\(12) & (\inst6|Add1~23\ $ (GND)))
-- \inst6|Add1~25\ = CARRY((\inst6|counter\(12)) # (!\inst6|Add1~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|counter\(12),
	datad => VCC,
	cin => \inst6|Add1~23\,
	combout => \inst6|Add1~24_combout\,
	cout => \inst6|Add1~25\);

-- Location: LCCOMB_X19_Y5_N26
\inst6|Add1~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|Add1~26_combout\ = (\inst6|counter\(13) & (\inst6|Add1~25\ & VCC)) # (!\inst6|counter\(13) & (!\inst6|Add1~25\))
-- \inst6|Add1~27\ = CARRY((!\inst6|counter\(13) & !\inst6|Add1~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|counter\(13),
	datad => VCC,
	cin => \inst6|Add1~25\,
	combout => \inst6|Add1~26_combout\,
	cout => \inst6|Add1~27\);

-- Location: LCFF_X19_Y5_N27
\inst6|counter[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst6|Add1~26_combout\,
	ena => \inst13|beepEnable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|counter\(13));

-- Location: LCFF_X17_Y5_N21
\inst6|tone[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst6|tone[24]~76_combout\,
	sclr => \inst13|ALT_INV_beepEnable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|tone\(24));

-- Location: LCCOMB_X18_Y5_N24
\inst6|counter~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|counter~19_combout\ = \inst6|counter[8]~6_combout\ $ (((\inst6|tone\(27) & ((!\inst6|tone\(24)))) # (!\inst6|tone\(27) & (!\inst6|tone\(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|tone\(21),
	datab => \inst6|tone\(27),
	datac => \inst6|tone\(24),
	datad => \inst6|counter[8]~6_combout\,
	combout => \inst6|counter~19_combout\);

-- Location: LCCOMB_X18_Y5_N20
\inst6|counter~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|counter~20_combout\ = (\inst6|Equal0~4_combout\ & (\inst6|counter~19_combout\)) # (!\inst6|Equal0~4_combout\ & ((\inst6|Add1~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Equal0~4_combout\,
	datac => \inst6|counter~19_combout\,
	datad => \inst6|Add1~24_combout\,
	combout => \inst6|counter~20_combout\);

-- Location: LCFF_X18_Y5_N21
\inst6|counter[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst6|counter~20_combout\,
	ena => \inst13|beepEnable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|counter\(12));

-- Location: LCCOMB_X19_Y5_N28
\inst6|Add1~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|Add1~28_combout\ = \inst6|Add1~27\ $ (\inst6|counter\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst6|counter\(14),
	cin => \inst6|Add1~27\,
	combout => \inst6|Add1~28_combout\);

-- Location: LCCOMB_X20_Y5_N2
\inst6|counter~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|counter~21_combout\ = (!\inst6|Equal0~4_combout\ & \inst6|Add1~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|Equal0~4_combout\,
	datad => \inst6|Add1~28_combout\,
	combout => \inst6|counter~21_combout\);

-- Location: LCFF_X20_Y5_N3
\inst6|counter[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst6|counter~21_combout\,
	ena => \inst13|beepEnable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|counter\(14));

-- Location: LCCOMB_X20_Y5_N4
\inst6|Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|Equal0~3_combout\ = (!\inst6|counter\(13) & (!\inst6|counter\(12) & !\inst6|counter\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|counter\(13),
	datac => \inst6|counter\(12),
	datad => \inst6|counter\(14),
	combout => \inst6|Equal0~3_combout\);

-- Location: LCCOMB_X18_Y5_N18
\inst6|counter~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|counter~13_combout\ = \inst6|counter[8]~6_combout\ $ (((\inst6|tone\(27) & ((!\inst6|tone\(21)))) # (!\inst6|tone\(27) & (!\inst6|tone\(18)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100100111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|tone\(18),
	datab => \inst6|counter[8]~6_combout\,
	datac => \inst6|tone\(27),
	datad => \inst6|tone\(21),
	combout => \inst6|counter~13_combout\);

-- Location: LCCOMB_X18_Y5_N14
\inst6|counter~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|counter~14_combout\ = (\inst6|Equal0~4_combout\ & (\inst6|counter~13_combout\)) # (!\inst6|Equal0~4_combout\ & ((\inst6|Add1~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|counter~13_combout\,
	datac => \inst6|Equal0~4_combout\,
	datad => \inst6|Add1~18_combout\,
	combout => \inst6|counter~14_combout\);

-- Location: LCFF_X18_Y5_N15
\inst6|counter[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst6|counter~14_combout\,
	ena => \inst13|beepEnable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|counter\(9));

-- Location: LCCOMB_X19_Y5_N30
\inst6|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|Equal0~2_combout\ = (!\inst6|counter\(11) & (!\inst6|counter\(10) & (!\inst6|counter\(8) & !\inst6|counter\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|counter\(11),
	datab => \inst6|counter\(10),
	datac => \inst6|counter\(8),
	datad => \inst6|counter\(9),
	combout => \inst6|Equal0~2_combout\);

-- Location: LCCOMB_X20_Y5_N26
\inst6|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|Equal0~0_combout\ = (!\inst6|counter\(0) & (!\inst6|counter\(3) & (!\inst6|counter\(1) & !\inst6|counter\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|counter\(0),
	datab => \inst6|counter\(3),
	datac => \inst6|counter\(1),
	datad => \inst6|counter\(2),
	combout => \inst6|Equal0~0_combout\);

-- Location: LCCOMB_X20_Y5_N18
\inst6|Equal0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|Equal0~4_combout\ = (\inst6|Equal0~1_combout\ & (\inst6|Equal0~3_combout\ & (\inst6|Equal0~2_combout\ & \inst6|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Equal0~1_combout\,
	datab => \inst6|Equal0~3_combout\,
	datac => \inst6|Equal0~2_combout\,
	datad => \inst6|Equal0~0_combout\,
	combout => \inst6|Equal0~4_combout\);

-- Location: LCCOMB_X20_Y5_N0
\inst6|beep~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|beep~0_combout\ = \inst6|beep~regout\ $ (\inst6|Equal0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|beep~regout\,
	datad => \inst6|Equal0~4_combout\,
	combout => \inst6|beep~0_combout\);

-- Location: LCFF_X20_Y5_N1
\inst6|beep\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst6|beep~0_combout\,
	sclr => \inst13|ALT_INV_beepEnable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|beep~regout\);

-- Location: LCCOMB_X22_Y11_N16
\inst18|count~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst18|count~3_combout\ = (\inst18|Add0~2_combout\ & \inst18|LessThan0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|Add0~2_combout\,
	datad => \inst18|LessThan0~2_combout\,
	combout => \inst18|count~3_combout\);

-- Location: LCFF_X22_Y11_N25
\inst18|count[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst17|out_10k~clkctrl_outclk\,
	sdata => \inst18|count~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst18|count\(1));

-- Location: LCCOMB_X22_Y11_N22
\inst18|count~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst18|count~2_combout\ = (\inst18|Add0~0_combout\ & \inst18|LessThan0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|Add0~0_combout\,
	datad => \inst18|LessThan0~2_combout\,
	combout => \inst18|count~2_combout\);

-- Location: LCCOMB_X22_Y11_N14
\inst18|count[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst18|count[0]~feeder_combout\ = \inst18|count~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst18|count~2_combout\,
	combout => \inst18|count[0]~feeder_combout\);

-- Location: LCFF_X22_Y11_N15
\inst18|count[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst17|out_10k~clkctrl_outclk\,
	datain => \inst18|count[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst18|count\(0));

-- Location: LCCOMB_X21_Y11_N16
\inst18|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst18|Add0~4_combout\ = (\inst18|count\(2) & (\inst18|Add0~3\ $ (GND))) # (!\inst18|count\(2) & (!\inst18|Add0~3\ & VCC))
-- \inst18|Add0~5\ = CARRY((\inst18|count\(2) & !\inst18|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst18|count\(2),
	datad => VCC,
	cin => \inst18|Add0~3\,
	combout => \inst18|Add0~4_combout\,
	cout => \inst18|Add0~5\);

-- Location: LCCOMB_X22_Y11_N2
\inst18|count~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst18|count~4_combout\ = (\inst18|LessThan0~2_combout\ & \inst18|Add0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst18|LessThan0~2_combout\,
	datad => \inst18|Add0~4_combout\,
	combout => \inst18|count~4_combout\);

-- Location: LCCOMB_X22_Y11_N30
\inst18|count[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst18|count[2]~feeder_combout\ = \inst18|count~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst18|count~4_combout\,
	combout => \inst18|count[2]~feeder_combout\);

-- Location: LCFF_X22_Y11_N31
\inst18|count[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst17|out_10k~clkctrl_outclk\,
	datain => \inst18|count[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst18|count\(2));

-- Location: LCCOMB_X21_Y11_N18
\inst18|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst18|Add0~6_combout\ = (\inst18|count\(3) & (!\inst18|Add0~5\)) # (!\inst18|count\(3) & ((\inst18|Add0~5\) # (GND)))
-- \inst18|Add0~7\ = CARRY((!\inst18|Add0~5\) # (!\inst18|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst18|count\(3),
	datad => VCC,
	cin => \inst18|Add0~5\,
	combout => \inst18|Add0~6_combout\,
	cout => \inst18|Add0~7\);

-- Location: LCCOMB_X22_Y11_N8
\inst18|count~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst18|count~1_combout\ = (\inst18|LessThan0~2_combout\ & \inst18|Add0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst18|LessThan0~2_combout\,
	datad => \inst18|Add0~6_combout\,
	combout => \inst18|count~1_combout\);

-- Location: LCFF_X22_Y11_N9
\inst18|count[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst17|out_10k~clkctrl_outclk\,
	datain => \inst18|count~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst18|count\(3));

-- Location: LCCOMB_X21_Y11_N20
\inst18|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst18|Add0~8_combout\ = (\inst18|count\(4) & (\inst18|Add0~7\ $ (GND))) # (!\inst18|count\(4) & (!\inst18|Add0~7\ & VCC))
-- \inst18|Add0~9\ = CARRY((\inst18|count\(4) & !\inst18|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst18|count\(4),
	datad => VCC,
	cin => \inst18|Add0~7\,
	combout => \inst18|Add0~8_combout\,
	cout => \inst18|Add0~9\);

-- Location: LCCOMB_X21_Y11_N30
\inst18|count~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst18|count~0_combout\ = (\inst18|Add0~8_combout\ & \inst18|LessThan0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst18|Add0~8_combout\,
	datad => \inst18|LessThan0~2_combout\,
	combout => \inst18|count~0_combout\);

-- Location: LCFF_X21_Y11_N31
\inst18|count[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst17|out_10k~clkctrl_outclk\,
	datain => \inst18|count~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst18|count\(4));

-- Location: LCCOMB_X21_Y11_N22
\inst18|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst18|Add0~10_combout\ = (\inst18|count\(5) & (!\inst18|Add0~9\)) # (!\inst18|count\(5) & ((\inst18|Add0~9\) # (GND)))
-- \inst18|Add0~11\ = CARRY((!\inst18|Add0~9\) # (!\inst18|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst18|count\(5),
	datad => VCC,
	cin => \inst18|Add0~9\,
	combout => \inst18|Add0~10_combout\,
	cout => \inst18|Add0~11\);

-- Location: LCCOMB_X21_Y11_N8
\inst18|count~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst18|count~5_combout\ = (\inst18|Add0~10_combout\ & \inst18|LessThan0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst18|Add0~10_combout\,
	datad => \inst18|LessThan0~2_combout\,
	combout => \inst18|count~5_combout\);

-- Location: LCFF_X21_Y11_N9
\inst18|count[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst17|out_10k~clkctrl_outclk\,
	datain => \inst18|count~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst18|count\(5));

-- Location: LCCOMB_X21_Y11_N24
\inst18|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst18|Add0~12_combout\ = (\inst18|count\(6) & (\inst18|Add0~11\ $ (GND))) # (!\inst18|count\(6) & (!\inst18|Add0~11\ & VCC))
-- \inst18|Add0~13\ = CARRY((\inst18|count\(6) & !\inst18|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst18|count\(6),
	datad => VCC,
	cin => \inst18|Add0~11\,
	combout => \inst18|Add0~12_combout\,
	cout => \inst18|Add0~13\);

-- Location: LCCOMB_X21_Y11_N4
\inst18|count~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst18|count~6_combout\ = (\inst18|Add0~12_combout\ & \inst18|LessThan0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst18|Add0~12_combout\,
	datad => \inst18|LessThan0~2_combout\,
	combout => \inst18|count~6_combout\);

-- Location: LCFF_X21_Y11_N5
\inst18|count[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst17|out_10k~clkctrl_outclk\,
	datain => \inst18|count~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst18|count\(6));

-- Location: LCCOMB_X22_Y11_N12
\inst18|LessThan0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst18|LessThan0~0_combout\ = (!\inst18|count\(5) & (((!\inst18|count\(0)) # (!\inst18|count\(2))) # (!\inst18|count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|count\(1),
	datab => \inst18|count\(2),
	datac => \inst18|count\(0),
	datad => \inst18|count\(5),
	combout => \inst18|LessThan0~0_combout\);

-- Location: LCCOMB_X22_Y11_N26
\inst18|LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst18|LessThan0~1_combout\ = (!\inst18|count\(3) & (!\inst18|count\(4) & \inst18|LessThan0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst18|count\(3),
	datac => \inst18|count\(4),
	datad => \inst18|LessThan0~0_combout\,
	combout => \inst18|LessThan0~1_combout\);

-- Location: LCCOMB_X22_Y11_N28
\inst18|LessThan0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst18|LessThan0~2_combout\ = (!\inst18|count\(8) & (((\inst18|LessThan0~1_combout\) # (!\inst18|count\(6))) # (!\inst18|count\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|count\(7),
	datab => \inst18|count\(6),
	datac => \inst18|count\(8),
	datad => \inst18|LessThan0~1_combout\,
	combout => \inst18|LessThan0~2_combout\);

-- Location: LCCOMB_X21_Y11_N0
\inst18|count~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst18|count~8_combout\ = (\inst18|Add0~16_combout\ & \inst18|LessThan0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst18|Add0~16_combout\,
	datad => \inst18|LessThan0~2_combout\,
	combout => \inst18|count~8_combout\);

-- Location: LCFF_X21_Y11_N1
\inst18|count[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst17|out_10k~clkctrl_outclk\,
	datain => \inst18|count~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst18|count\(8));

-- Location: LCCOMB_X21_Y11_N26
\inst18|Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst18|Add0~14_combout\ = (\inst18|count\(7) & (!\inst18|Add0~13\)) # (!\inst18|count\(7) & ((\inst18|Add0~13\) # (GND)))
-- \inst18|Add0~15\ = CARRY((!\inst18|Add0~13\) # (!\inst18|count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst18|count\(7),
	datad => VCC,
	cin => \inst18|Add0~13\,
	combout => \inst18|Add0~14_combout\,
	cout => \inst18|Add0~15\);

-- Location: LCCOMB_X21_Y11_N2
\inst18|count~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst18|count~7_combout\ = (\inst18|Add0~14_combout\ & \inst18|LessThan0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst18|Add0~14_combout\,
	datad => \inst18|LessThan0~2_combout\,
	combout => \inst18|count~7_combout\);

-- Location: LCFF_X21_Y11_N3
\inst18|count[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst17|out_10k~clkctrl_outclk\,
	datain => \inst18|count~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst18|count\(7));

-- Location: LCCOMB_X21_Y11_N28
\inst18|Add0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst18|Add0~16_combout\ = \inst18|Add0~15\ $ (!\inst18|count\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst18|count\(8),
	cin => \inst18|Add0~15\,
	combout => \inst18|Add0~16_combout\);

-- Location: LCCOMB_X21_Y11_N6
\inst18|LessThan1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst18|LessThan1~6_combout\ = (!\inst18|Add0~12_combout\ & (!\inst18|Add0~16_combout\ & (!\inst18|Add0~10_combout\ & !\inst18|Add0~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|Add0~12_combout\,
	datab => \inst18|Add0~16_combout\,
	datac => \inst18|Add0~10_combout\,
	datad => \inst18|Add0~14_combout\,
	combout => \inst18|LessThan1~6_combout\);

-- Location: LCCOMB_X17_Y10_N10
\inst13|degree~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|degree~26_combout\ = (\inst13|degree~24_combout\ & (((!\inst13|degree~25_combout\)) # (!\inst13|speed[6]~35_combout\))) # (!\inst13|degree~24_combout\ & (((\inst13|degree\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|speed[6]~35_combout\,
	datab => \inst13|degree\(6),
	datac => \inst13|degree~25_combout\,
	datad => \inst13|degree~24_combout\,
	combout => \inst13|degree~26_combout\);

-- Location: LCCOMB_X17_Y10_N4
\inst13|degree~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|degree~27_combout\ = (\inst13|Equal5~0_combout\ & (((\inst13|degree~26_combout\)))) # (!\inst13|Equal5~0_combout\ & (!\dinfrared~combout\(2) & (\dinfrared~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Equal5~0_combout\,
	datab => \dinfrared~combout\(2),
	datac => \dinfrared~combout\(1),
	datad => \inst13|degree~26_combout\,
	combout => \inst13|degree~27_combout\);

-- Location: LCCOMB_X15_Y10_N16
\inst13|degree~82\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|degree~82_combout\ = (!\inst13|mystate\(0) & (((!\inst13|WideOr0~combout\ & !\inst13|degree~20_combout\)) # (!\inst13|mystate\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|mystate\(0),
	datab => \inst13|WideOr0~combout\,
	datac => \inst13|mystate\(1),
	datad => \inst13|degree~20_combout\,
	combout => \inst13|degree~82_combout\);

-- Location: LCCOMB_X15_Y10_N18
\inst13|degree~83\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|degree~83_combout\ = (\inst13|backStatus.01~regout\) # ((\inst13|always1~8_combout\) # ((!\inst13|backStatus.00~regout\ & \inst13|LessThan3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|backStatus.00~regout\,
	datab => \inst13|LessThan3~1_combout\,
	datac => \inst13|backStatus.01~regout\,
	datad => \inst13|always1~8_combout\,
	combout => \inst13|degree~83_combout\);

-- Location: LCCOMB_X15_Y10_N30
\inst13|degree~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|degree~21_combout\ = (\inst13|mystate\(1) & (!\dinfrared~combout\(1) & (\dinfrared~combout\(2)))) # (!\inst13|mystate\(1) & (((\inst13|degree~83_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dinfrared~combout\(1),
	datab => \dinfrared~combout\(2),
	datac => \inst13|mystate\(1),
	datad => \inst13|degree~83_combout\,
	combout => \inst13|degree~21_combout\);

-- Location: LCCOMB_X15_Y10_N24
\inst13|degree~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|degree~22_combout\ = (\inst13|always1~2_combout\ & ((\inst13|degree~82_combout\) # ((\inst13|mystate\(0) & !\inst13|degree~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|mystate\(0),
	datab => \inst13|always1~2_combout\,
	datac => \inst13|degree~82_combout\,
	datad => \inst13|degree~21_combout\,
	combout => \inst13|degree~22_combout\);

-- Location: LCCOMB_X18_Y10_N28
\inst13|degree~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|degree~23_combout\ = (\inst13|speed[6]~138_combout\) # ((\inst13|degree~22_combout\) # ((\inst13|degree\(6) & \inst13|degree~85_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|degree\(6),
	datab => \inst13|speed[6]~138_combout\,
	datac => \inst13|degree~22_combout\,
	datad => \inst13|degree~85_combout\,
	combout => \inst13|degree~23_combout\);

-- Location: LCCOMB_X18_Y10_N24
\inst13|degree[6]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|degree[6]~0_combout\ = (\inst13|state.10~regout\ & (\inst13|degree~27_combout\)) # (!\inst13|state.10~regout\ & ((\inst13|degree~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|state.10~regout\,
	datab => \inst13|degree~27_combout\,
	datad => \inst13|degree~23_combout\,
	combout => \inst13|degree[6]~0_combout\);

-- Location: LCCOMB_X14_Y6_N22
\inst9|data[2]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|data[2]~5_combout\ = (\inst9|count\(0) & (((\inst9|data\(2))))) # (!\inst9|count\(0) & ((\inst9|Decoder0~2_combout\ & (\rxd~combout\)) # (!\inst9|Decoder0~2_combout\ & ((\inst9|data\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|count\(0),
	datab => \rxd~combout\,
	datac => \inst9|data\(2),
	datad => \inst9|Decoder0~2_combout\,
	combout => \inst9|data[2]~5_combout\);

-- Location: LCFF_X14_Y6_N23
\inst9|data[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst17|out_9600~clkctrl_outclk\,
	datain => \inst9|data[2]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|data\(2));

-- Location: LCCOMB_X18_Y10_N14
\inst13|degree~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|degree~28_combout\ = (\inst13|Equal6~0_combout\ & (((!\inst2|degree\(2))))) # (!\inst13|Equal6~0_combout\ & (\inst9|data\(3) & (!\inst9|data\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Equal6~0_combout\,
	datab => \inst9|data\(3),
	datac => \inst9|data\(2),
	datad => \inst2|degree\(2),
	combout => \inst13|degree~28_combout\);

-- Location: LCFF_X18_Y10_N25
\inst13|degree[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst13|degree[6]~0_combout\,
	sdata => \inst13|degree~28_combout\,
	sload => \inst13|ALT_INV_state.00~regout\,
	ena => \inst13|direction~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst13|degree\(6));

-- Location: LCCOMB_X13_Y8_N24
\inst13|degree~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|degree~40_combout\ = ((!\inst13|speed[6]~35_combout\) # (!\inst13|backStatus.10~regout\)) # (!\inst13|speed~37_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|speed~37_combout\,
	datab => \inst13|backStatus.10~regout\,
	datad => \inst13|speed[6]~35_combout\,
	combout => \inst13|degree~40_combout\);

-- Location: LCCOMB_X17_Y11_N0
\inst13|degree~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|degree~41_combout\ = ((\inst13|speed~72_combout\ & ((\inst13|degree~40_combout\))) # (!\inst13|speed~72_combout\ & (!\inst13|degree\(4)))) # (!\inst13|Equal6~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Equal6~0_combout\,
	datab => \inst13|degree\(4),
	datac => \inst13|speed~72_combout\,
	datad => \inst13|degree~40_combout\,
	combout => \inst13|degree~41_combout\);

-- Location: LCCOMB_X18_Y11_N26
\inst13|degree~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|degree~44_combout\ = (\inst13|LessThan6~1_combout\ & (\inst13|degree~43_combout\)) # (!\inst13|LessThan6~1_combout\ & (((\Infrared~combout\(3)) # (\Infrared~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|degree~43_combout\,
	datab => \Infrared~combout\(3),
	datac => \Infrared~combout\(2),
	datad => \inst13|LessThan6~1_combout\,
	combout => \inst13|degree~44_combout\);

-- Location: LCCOMB_X18_Y11_N4
\inst13|degree~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|degree~45_combout\ = ((\inst13|WideOr0~combout\ & (!\inst13|degree\(4))) # (!\inst13|WideOr0~combout\ & ((\inst13|degree~44_combout\)))) # (!\inst13|speed[6]~53_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|speed[6]~53_combout\,
	datab => \inst13|degree\(4),
	datac => \inst13|WideOr0~combout\,
	datad => \inst13|degree~44_combout\,
	combout => \inst13|degree~45_combout\);

-- Location: LCCOMB_X15_Y9_N18
\inst13|degree~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|degree~46_combout\ = ((\inst13|speed~65_combout\ & ((\Infrared~combout\(3)) # (!\inst13|degree~31_combout\)))) # (!\inst13|Equal7~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Infrared~combout\(3),
	datab => \inst13|degree~31_combout\,
	datac => \inst13|speed~65_combout\,
	datad => \inst13|Equal7~0_combout\,
	combout => \inst13|degree~46_combout\);

-- Location: LCCOMB_X15_Y9_N20
\inst13|degree~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|degree~47_combout\ = (\inst13|always1~2_combout\ & ((\inst13|degree~46_combout\) # ((!\inst13|degree\(4) & !\inst13|speed~65_combout\)))) # (!\inst13|always1~2_combout\ & (!\inst13|degree\(4) & (!\inst13|speed~65_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|always1~2_combout\,
	datab => \inst13|degree\(4),
	datac => \inst13|speed~65_combout\,
	datad => \inst13|degree~46_combout\,
	combout => \inst13|degree~47_combout\);

-- Location: LCCOMB_X18_Y11_N30
\inst13|degree~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|degree~48_combout\ = (\inst13|degree~42_combout\) # ((\inst13|speed[6]~138_combout\) # ((\inst13|degree~45_combout\ & \inst13|degree~47_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|degree~42_combout\,
	datab => \inst13|degree~45_combout\,
	datac => \inst13|speed[6]~138_combout\,
	datad => \inst13|degree~47_combout\,
	combout => \inst13|degree~48_combout\);

-- Location: LCCOMB_X18_Y11_N2
\inst13|degree~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|degree~49_combout\ = (\inst13|state.00~regout\ & ((\inst13|state.10~regout\ & (!\inst13|degree~41_combout\)) # (!\inst13|state.10~regout\ & ((!\inst13|degree~48_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|state.10~regout\,
	datab => \inst13|state.00~regout\,
	datac => \inst13|degree~41_combout\,
	datad => \inst13|degree~48_combout\,
	combout => \inst13|degree~49_combout\);

-- Location: LCFF_X18_Y11_N3
\inst13|degree[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst13|degree~49_combout\,
	ena => \inst13|speed~79_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst13|degree\(4));

-- Location: LCCOMB_X19_Y10_N0
\inst18|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst18|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ = \inst13|degree\(4) $ (GND)
-- \inst18|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ = CARRY(!\inst13|degree\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|degree\(4),
	datad => VCC,
	combout => \inst18|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	cout => \inst18|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\);

-- Location: LCCOMB_X19_Y10_N6
\inst18|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst18|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ = CARRY(!\inst18|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \inst18|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\,
	cout => \inst18|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\);

-- Location: LCCOMB_X19_Y10_N8
\inst18|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst18|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ = \inst18|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst18|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\,
	combout => \inst18|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\);

-- Location: LCCOMB_X18_Y10_N16
\inst18|Div0|auto_generated|divider|divider|StageOut[27]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst18|Div0|auto_generated|divider|divider|StageOut[27]~28_combout\ = (\inst18|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & !\inst13|degree\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst18|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \inst13|degree\(5),
	combout => \inst18|Div0|auto_generated|divider|divider|StageOut[27]~28_combout\);

-- Location: LCCOMB_X20_Y10_N28
\inst18|Div0|auto_generated|divider|divider|StageOut[26]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst18|Div0|auto_generated|divider|divider|StageOut[26]~31_combout\ = (\inst18|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ & !\inst18|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst18|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datad => \inst18|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \inst18|Div0|auto_generated|divider|divider|StageOut[26]~31_combout\);

-- Location: LCCOMB_X18_Y11_N0
\inst13|degree~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|degree~54_combout\ = (!\inst13|degree\(3) & (((\inst13|degree~50_combout\ & !\inst13|speed~65_combout\)) # (!\inst13|always1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|degree~50_combout\,
	datab => \inst13|degree\(3),
	datac => \inst13|always1~2_combout\,
	datad => \inst13|speed~65_combout\,
	combout => \inst13|degree~54_combout\);

-- Location: LCCOMB_X18_Y11_N24
\inst13|degree~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|degree~50_combout\ = ((\inst13|WideOr0~combout\ & (!\inst13|degree\(3))) # (!\inst13|WideOr0~combout\ & ((\inst13|degree~44_combout\)))) # (!\inst13|speed[6]~53_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|speed[6]~53_combout\,
	datab => \inst13|WideOr0~combout\,
	datac => \inst13|degree\(3),
	datad => \inst13|degree~44_combout\,
	combout => \inst13|degree~50_combout\);

-- Location: LCCOMB_X18_Y11_N22
\inst13|degree~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|degree~51_combout\ = (\inst13|speed~65_combout\ & ((\Infrared~combout\(2)) # ((!\Infrared~combout\(3)) # (!\inst13|degree~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Infrared~combout\(2),
	datab => \inst13|degree~31_combout\,
	datac => \Infrared~combout\(3),
	datad => \inst13|speed~65_combout\,
	combout => \inst13|degree~51_combout\);

-- Location: LCCOMB_X18_Y11_N20
\inst13|degree~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|degree~52_combout\ = (\inst13|always1~2_combout\ & (\inst13|degree~50_combout\ & ((\inst13|degree~51_combout\) # (!\inst13|Equal7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Equal7~0_combout\,
	datab => \inst13|always1~2_combout\,
	datac => \inst13|degree~50_combout\,
	datad => \inst13|degree~51_combout\,
	combout => \inst13|degree~52_combout\);

-- Location: LCCOMB_X18_Y11_N14
\inst13|degree~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|degree~53_combout\ = (!\inst13|state.10~regout\ & ((\inst13|degree~52_combout\) # (\inst13|speed[6]~138_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|state.10~regout\,
	datac => \inst13|degree~52_combout\,
	datad => \inst13|speed[6]~138_combout\,
	combout => \inst13|degree~53_combout\);

-- Location: LCCOMB_X18_Y11_N18
\inst13|degree~55\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|degree~55_combout\ = (\inst13|state.10~regout\ & (((\inst13|speed~72_combout\) # (!\inst13|Equal6~0_combout\)) # (!\inst13|degree\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|state.10~regout\,
	datab => \inst13|degree\(3),
	datac => \inst13|speed~72_combout\,
	datad => \inst13|Equal6~0_combout\,
	combout => \inst13|degree~55_combout\);

-- Location: LCCOMB_X18_Y11_N8
\inst13|degree~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|degree~56_combout\ = (\inst13|state.00~regout\ & (!\inst13|degree~54_combout\ & (!\inst13|degree~53_combout\ & !\inst13|degree~55_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|state.00~regout\,
	datab => \inst13|degree~54_combout\,
	datac => \inst13|degree~53_combout\,
	datad => \inst13|degree~55_combout\,
	combout => \inst13|degree~56_combout\);

-- Location: LCFF_X18_Y11_N9
\inst13|degree[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst13|degree~56_combout\,
	ena => \inst13|speed~79_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst13|degree\(3));

-- Location: LCCOMB_X19_Y10_N30
\inst18|Div0|auto_generated|divider|divider|StageOut[25]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst18|Div0|auto_generated|divider|divider|StageOut[25]~33_combout\ = (!\inst18|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & !\inst13|degree\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst18|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \inst13|degree\(3),
	combout => \inst18|Div0|auto_generated|divider|divider|StageOut[25]~33_combout\);

-- Location: LCCOMB_X19_Y10_N20
\inst18|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst18|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ = (((\inst18|Div0|auto_generated|divider|divider|StageOut[25]~32_combout\) # (\inst18|Div0|auto_generated|divider|divider|StageOut[25]~33_combout\)))
-- \inst18|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ = CARRY((\inst18|Div0|auto_generated|divider|divider|StageOut[25]~32_combout\) # (\inst18|Div0|auto_generated|divider|divider|StageOut[25]~33_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|Div0|auto_generated|divider|divider|StageOut[25]~32_combout\,
	datab => \inst18|Div0|auto_generated|divider|divider|StageOut[25]~33_combout\,
	datad => VCC,
	combout => \inst18|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	cout => \inst18|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\);

-- Location: LCCOMB_X19_Y10_N24
\inst18|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst18|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ = (\inst18|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & (((\inst18|Div0|auto_generated|divider|divider|StageOut[27]~29_combout\) # 
-- (\inst18|Div0|auto_generated|divider|divider|StageOut[27]~28_combout\)))) # (!\inst18|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((((\inst18|Div0|auto_generated|divider|divider|StageOut[27]~29_combout\) # 
-- (\inst18|Div0|auto_generated|divider|divider|StageOut[27]~28_combout\)))))
-- \inst18|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ = CARRY((!\inst18|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((\inst18|Div0|auto_generated|divider|divider|StageOut[27]~29_combout\) # 
-- (\inst18|Div0|auto_generated|divider|divider|StageOut[27]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|Div0|auto_generated|divider|divider|StageOut[27]~29_combout\,
	datab => \inst18|Div0|auto_generated|divider|divider|StageOut[27]~28_combout\,
	datad => VCC,
	cin => \inst18|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\,
	combout => \inst18|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	cout => \inst18|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\);

-- Location: LCCOMB_X19_Y10_N14
\inst18|Div0|auto_generated|divider|divider|StageOut[28]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst18|Div0|auto_generated|divider|divider|StageOut[28]~26_combout\ = (\inst18|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & \inst13|degree\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst18|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \inst13|degree\(6),
	combout => \inst18|Div0|auto_generated|divider|divider|StageOut[28]~26_combout\);

-- Location: LCCOMB_X19_Y10_N26
\inst18|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst18|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\ = CARRY((!\inst18|Div0|auto_generated|divider|divider|StageOut[28]~27_combout\ & (!\inst18|Div0|auto_generated|divider|divider|StageOut[28]~26_combout\ & 
-- !\inst18|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|Div0|auto_generated|divider|divider|StageOut[28]~27_combout\,
	datab => \inst18|Div0|auto_generated|divider|divider|StageOut[28]~26_combout\,
	datad => VCC,
	cin => \inst18|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\,
	cout => \inst18|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\);

-- Location: LCCOMB_X19_Y10_N28
\inst18|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst18|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ = \inst18|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst18|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\,
	combout => \inst18|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\);

-- Location: LCCOMB_X20_Y10_N26
\inst18|Div0|auto_generated|divider|divider|StageOut[33]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst18|Div0|auto_generated|divider|divider|StageOut[33]~34_combout\ = (\inst18|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ & !\inst18|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst18|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	datad => \inst18|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \inst18|Div0|auto_generated|divider|divider|StageOut[33]~34_combout\);

-- Location: LCCOMB_X20_Y10_N30
\inst18|Div0|auto_generated|divider|divider|StageOut[32]~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst18|Div0|auto_generated|divider|divider|StageOut[32]~48_combout\ = (\inst18|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\inst18|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- (!\inst13|degree\(4))) # (!\inst18|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\inst18|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datab => \inst13|degree\(4),
	datac => \inst18|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datad => \inst18|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \inst18|Div0|auto_generated|divider|divider|StageOut[32]~48_combout\);

-- Location: LCCOMB_X20_Y10_N22
\inst18|Div0|auto_generated|divider|divider|StageOut[31]~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst18|Div0|auto_generated|divider|divider|StageOut[31]~37_combout\ = (\inst18|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ & !\inst18|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst18|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	datad => \inst18|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \inst18|Div0|auto_generated|divider|divider|StageOut[31]~37_combout\);

-- Location: LCCOMB_X20_Y10_N18
\inst18|Div0|auto_generated|divider|divider|StageOut[30]~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst18|Div0|auto_generated|divider|divider|StageOut[30]~39_combout\ = (!\inst13|degree\(2) & !\inst18|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|degree\(2),
	datad => \inst18|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \inst18|Div0|auto_generated|divider|divider|StageOut[30]~39_combout\);

-- Location: LCCOMB_X20_Y10_N14
\inst18|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst18|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ = CARRY((!\inst18|Div0|auto_generated|divider|divider|StageOut[33]~47_combout\ & (!\inst18|Div0|auto_generated|divider|divider|StageOut[33]~34_combout\ & 
-- !\inst18|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|Div0|auto_generated|divider|divider|StageOut[33]~47_combout\,
	datab => \inst18|Div0|auto_generated|divider|divider|StageOut[33]~34_combout\,
	datad => VCC,
	cin => \inst18|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\,
	cout => \inst18|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\);

-- Location: LCCOMB_X20_Y10_N16
\inst18|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst18|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ = \inst18|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst18|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\,
	combout => \inst18|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\);

-- Location: LCCOMB_X21_Y10_N24
\inst18|Div0|auto_generated|divider|divider|StageOut[38]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst18|Div0|auto_generated|divider|divider|StageOut[38]~40_combout\ = (\inst18|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ & !\inst18|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\,
	datad => \inst18|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \inst18|Div0|auto_generated|divider|divider|StageOut[38]~40_combout\);

-- Location: LCCOMB_X21_Y10_N18
\inst18|Div0|auto_generated|divider|divider|StageOut[37]~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst18|Div0|auto_generated|divider|divider|StageOut[37]~49_combout\ = (\inst18|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & ((\inst18|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & 
-- ((!\inst13|degree\(3)))) # (!\inst18|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & (\inst18|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	datab => \inst13|degree\(3),
	datac => \inst18|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \inst18|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \inst18|Div0|auto_generated|divider|divider|StageOut[37]~49_combout\);

-- Location: LCCOMB_X21_Y10_N22
\inst18|Div0|auto_generated|divider|divider|StageOut[36]~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst18|Div0|auto_generated|divider|divider|StageOut[36]~43_combout\ = (\inst18|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ & !\inst18|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	datad => \inst18|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \inst18|Div0|auto_generated|divider|divider|StageOut[36]~43_combout\);

-- Location: LCCOMB_X21_Y10_N16
\inst18|Div0|auto_generated|divider|divider|StageOut[35]~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst18|Div0|auto_generated|divider|divider|StageOut[35]~44_combout\ = (\inst13|degree\(1) & \inst18|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|degree\(1),
	datad => \inst18|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \inst18|Div0|auto_generated|divider|divider|StageOut[35]~44_combout\);

-- Location: LCCOMB_X22_Y10_N18
\inst18|Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst18|Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~1_cout\ = CARRY((\inst18|Div0|auto_generated|divider|divider|StageOut[35]~45_combout\) # (\inst18|Div0|auto_generated|divider|divider|StageOut[35]~44_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|Div0|auto_generated|divider|divider|StageOut[35]~45_combout\,
	datab => \inst18|Div0|auto_generated|divider|divider|StageOut[35]~44_combout\,
	datad => VCC,
	cout => \inst18|Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~1_cout\);

-- Location: LCCOMB_X22_Y10_N20
\inst18|Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst18|Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~3_cout\ = CARRY((!\inst18|Div0|auto_generated|divider|divider|StageOut[36]~42_combout\ & (!\inst18|Div0|auto_generated|divider|divider|StageOut[36]~43_combout\ & 
-- !\inst18|Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|Div0|auto_generated|divider|divider|StageOut[36]~42_combout\,
	datab => \inst18|Div0|auto_generated|divider|divider|StageOut[36]~43_combout\,
	datad => VCC,
	cin => \inst18|Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~1_cout\,
	cout => \inst18|Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~3_cout\);

-- Location: LCCOMB_X22_Y10_N22
\inst18|Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst18|Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~5_cout\ = CARRY((!\inst18|Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~3_cout\ & ((\inst18|Div0|auto_generated|divider|divider|StageOut[37]~41_combout\) # 
-- (\inst18|Div0|auto_generated|divider|divider|StageOut[37]~49_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|Div0|auto_generated|divider|divider|StageOut[37]~41_combout\,
	datab => \inst18|Div0|auto_generated|divider|divider|StageOut[37]~49_combout\,
	datad => VCC,
	cin => \inst18|Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~3_cout\,
	cout => \inst18|Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~5_cout\);

-- Location: LCCOMB_X22_Y10_N24
\inst18|Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst18|Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~7_cout\ = CARRY((!\inst18|Div0|auto_generated|divider|divider|StageOut[38]~46_combout\ & (!\inst18|Div0|auto_generated|divider|divider|StageOut[38]~40_combout\ & 
-- !\inst18|Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|Div0|auto_generated|divider|divider|StageOut[38]~46_combout\,
	datab => \inst18|Div0|auto_generated|divider|divider|StageOut[38]~40_combout\,
	datad => VCC,
	cin => \inst18|Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~5_cout\,
	cout => \inst18|Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~7_cout\);

-- Location: LCCOMB_X22_Y10_N26
\inst18|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst18|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ = \inst18|Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst18|Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~7_cout\,
	combout => \inst18|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\);

-- Location: LCCOMB_X22_Y10_N0
\inst18|Add1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst18|Add1~0_combout\ = \inst18|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ $ (GND)
-- \inst18|Add1~1\ = CARRY(!\inst18|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst18|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	datad => VCC,
	combout => \inst18|Add1~0_combout\,
	cout => \inst18|Add1~1\);

-- Location: LCCOMB_X22_Y10_N2
\inst18|Add1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst18|Add1~2_combout\ = (\inst18|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & ((\inst18|Add1~1\) # (GND))) # (!\inst18|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & (!\inst18|Add1~1\))
-- \inst18|Add1~3\ = CARRY((\inst18|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\) # (!\inst18|Add1~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst18|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datad => VCC,
	cin => \inst18|Add1~1\,
	combout => \inst18|Add1~2_combout\,
	cout => \inst18|Add1~3\);

-- Location: LCCOMB_X22_Y10_N4
\inst18|Add1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst18|Add1~4_combout\ = (\inst18|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & (\inst18|Add1~3\ $ (GND))) # (!\inst18|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((GND) # (!\inst18|Add1~3\)))
-- \inst18|Add1~5\ = CARRY((!\inst18|Add1~3\) # (!\inst18|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => VCC,
	cin => \inst18|Add1~3\,
	combout => \inst18|Add1~4_combout\,
	cout => \inst18|Add1~5\);

-- Location: LCCOMB_X22_Y10_N8
\inst18|Add1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst18|Add1~8_combout\ = !\inst18|Add1~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst18|Add1~7\,
	combout => \inst18|Add1~8_combout\);

-- Location: LCCOMB_X22_Y10_N16
\inst18|LessThan1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst18|LessThan1~8_combout\ = (\inst18|count~3_combout\ & (\inst18|Add1~0_combout\ & (!\inst18|count~2_combout\ & \inst18|Add1~2_combout\))) # (!\inst18|count~3_combout\ & ((\inst18|Add1~2_combout\) # ((\inst18|Add1~0_combout\ & 
-- !\inst18|count~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|count~3_combout\,
	datab => \inst18|Add1~0_combout\,
	datac => \inst18|count~2_combout\,
	datad => \inst18|Add1~2_combout\,
	combout => \inst18|LessThan1~8_combout\);

-- Location: LCCOMB_X21_Y11_N10
\inst18|LessThan1~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst18|LessThan1~7_combout\ = (\inst18|LessThan0~2_combout\ & ((\inst18|Add0~4_combout\) # (!\inst18|LessThan1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|Add0~4_combout\,
	datab => \inst18|LessThan0~2_combout\,
	datad => \inst18|LessThan1~6_combout\,
	combout => \inst18|LessThan1~7_combout\);

-- Location: LCCOMB_X22_Y10_N10
\inst18|LessThan1~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst18|LessThan1~9_combout\ = (\inst18|Add1~4_combout\ & (((\inst18|count~4_combout\ & \inst18|LessThan1~8_combout\)) # (!\inst18|LessThan1~7_combout\))) # (!\inst18|Add1~4_combout\ & (!\inst18|count~4_combout\ & (\inst18|LessThan1~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|count~4_combout\,
	datab => \inst18|Add1~4_combout\,
	datac => \inst18|LessThan1~8_combout\,
	datad => \inst18|LessThan1~7_combout\,
	combout => \inst18|LessThan1~9_combout\);

-- Location: LCCOMB_X22_Y10_N28
\inst18|LessThan1~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst18|LessThan1~10_combout\ = (\inst18|Add1~6_combout\ & (((\inst18|LessThan1~9_combout\) # (!\inst18|LessThan0~2_combout\)) # (!\inst18|Add0~6_combout\))) # (!\inst18|Add1~6_combout\ & (\inst18|LessThan1~9_combout\ & ((!\inst18|LessThan0~2_combout\) # 
-- (!\inst18|Add0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|Add1~6_combout\,
	datab => \inst18|Add0~6_combout\,
	datac => \inst18|LessThan0~2_combout\,
	datad => \inst18|LessThan1~9_combout\,
	combout => \inst18|LessThan1~10_combout\);

-- Location: LCCOMB_X22_Y10_N12
\inst18|LessThan1~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst18|LessThan1~11_combout\ = (\inst18|Add1~8_combout\ & (((\inst18|LessThan1~10_combout\) # (!\inst18|Add0~8_combout\)) # (!\inst18|LessThan0~2_combout\))) # (!\inst18|Add1~8_combout\ & (\inst18|LessThan1~10_combout\ & ((!\inst18|Add0~8_combout\) # 
-- (!\inst18|LessThan0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|LessThan0~2_combout\,
	datab => \inst18|Add0~8_combout\,
	datac => \inst18|Add1~8_combout\,
	datad => \inst18|LessThan1~10_combout\,
	combout => \inst18|LessThan1~11_combout\);

-- Location: LCCOMB_X22_Y10_N30
\inst18|LessThan1~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst18|LessThan1~12_combout\ = (\inst18|LessThan1~11_combout\ & ((\inst18|LessThan1~6_combout\) # (!\inst18|LessThan0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|LessThan0~2_combout\,
	datac => \inst18|LessThan1~6_combout\,
	datad => \inst18|LessThan1~11_combout\,
	combout => \inst18|LessThan1~12_combout\);

-- Location: LCFF_X22_Y10_N31
\inst18|steer\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst17|out_10k~clkctrl_outclk\,
	datain => \inst18|LessThan1~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst18|steer~regout\);

-- Location: LCCOMB_X8_Y10_N8
\inst17|cnt8[0]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|cnt8[0]~25_combout\ = \inst17|cnt8\(0) $ (VCC)
-- \inst17|cnt8[0]~26\ = CARRY(\inst17|cnt8\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst17|cnt8\(0),
	datad => VCC,
	combout => \inst17|cnt8[0]~25_combout\,
	cout => \inst17|cnt8[0]~26\);

-- Location: LCCOMB_X8_Y9_N16
\inst17|cnt8[20]~65\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|cnt8[20]~65_combout\ = (\inst17|cnt8\(20) & (\inst17|cnt8[19]~64\ $ (GND))) # (!\inst17|cnt8\(20) & (!\inst17|cnt8[19]~64\ & VCC))
-- \inst17|cnt8[20]~66\ = CARRY((\inst17|cnt8\(20) & !\inst17|cnt8[19]~64\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|cnt8\(20),
	datad => VCC,
	cin => \inst17|cnt8[19]~64\,
	combout => \inst17|cnt8[20]~65_combout\,
	cout => \inst17|cnt8[20]~66\);

-- Location: LCFF_X8_Y9_N17
\inst17|cnt8[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst17|cnt8[20]~65_combout\,
	sclr => \inst17|LessThan3~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst17|cnt8\(20));

-- Location: LCCOMB_X8_Y9_N12
\inst17|cnt8[18]~61\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|cnt8[18]~61_combout\ = (\inst17|cnt8\(18) & (\inst17|cnt8[17]~60\ $ (GND))) # (!\inst17|cnt8\(18) & (!\inst17|cnt8[17]~60\ & VCC))
-- \inst17|cnt8[18]~62\ = CARRY((\inst17|cnt8\(18) & !\inst17|cnt8[17]~60\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|cnt8\(18),
	datad => VCC,
	cin => \inst17|cnt8[17]~60\,
	combout => \inst17|cnt8[18]~61_combout\,
	cout => \inst17|cnt8[18]~62\);

-- Location: LCFF_X8_Y9_N13
\inst17|cnt8[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst17|cnt8[18]~61_combout\,
	sclr => \inst17|LessThan3~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst17|cnt8\(18));

-- Location: LCCOMB_X8_Y9_N6
\inst17|cnt8[15]~55\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|cnt8[15]~55_combout\ = (\inst17|cnt8\(15) & (!\inst17|cnt8[14]~54\)) # (!\inst17|cnt8\(15) & ((\inst17|cnt8[14]~54\) # (GND)))
-- \inst17|cnt8[15]~56\ = CARRY((!\inst17|cnt8[14]~54\) # (!\inst17|cnt8\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|cnt8\(15),
	datad => VCC,
	cin => \inst17|cnt8[14]~54\,
	combout => \inst17|cnt8[15]~55_combout\,
	cout => \inst17|cnt8[15]~56\);

-- Location: LCFF_X8_Y9_N7
\inst17|cnt8[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst17|cnt8[15]~55_combout\,
	sclr => \inst17|LessThan3~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst17|cnt8\(15));

-- Location: LCCOMB_X8_Y9_N30
\inst17|LessThan3~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|LessThan3~4_combout\ = (((!\inst17|cnt8\(15)) # (!\inst17|cnt8\(16))) # (!\inst17|cnt8\(18))) # (!\inst17|cnt8\(17))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|cnt8\(17),
	datab => \inst17|cnt8\(18),
	datac => \inst17|cnt8\(16),
	datad => \inst17|cnt8\(15),
	combout => \inst17|LessThan3~4_combout\);

-- Location: LCCOMB_X8_Y10_N20
\inst17|cnt8[6]~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|cnt8[6]~37_combout\ = (\inst17|cnt8\(6) & (\inst17|cnt8[5]~36\ $ (GND))) # (!\inst17|cnt8\(6) & (!\inst17|cnt8[5]~36\ & VCC))
-- \inst17|cnt8[6]~38\ = CARRY((\inst17|cnt8\(6) & !\inst17|cnt8[5]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|cnt8\(6),
	datad => VCC,
	cin => \inst17|cnt8[5]~36\,
	combout => \inst17|cnt8[6]~37_combout\,
	cout => \inst17|cnt8[6]~38\);

-- Location: LCFF_X8_Y10_N21
\inst17|cnt8[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst17|cnt8[6]~37_combout\,
	sclr => \inst17|LessThan3~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst17|cnt8\(6));

-- Location: LCCOMB_X7_Y10_N30
\inst17|LessThan3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|LessThan3~1_combout\ = (!\inst17|cnt8\(4) & (!\inst17|cnt8\(5) & (!\inst17|cnt8\(3) & !\inst17|cnt8\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|cnt8\(4),
	datab => \inst17|cnt8\(5),
	datac => \inst17|cnt8\(3),
	datad => \inst17|cnt8\(6),
	combout => \inst17|LessThan3~1_combout\);

-- Location: LCCOMB_X8_Y10_N24
\inst17|cnt8[8]~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|cnt8[8]~41_combout\ = (\inst17|cnt8\(8) & (\inst17|cnt8[7]~40\ $ (GND))) # (!\inst17|cnt8\(8) & (!\inst17|cnt8[7]~40\ & VCC))
-- \inst17|cnt8[8]~42\ = CARRY((\inst17|cnt8\(8) & !\inst17|cnt8[7]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|cnt8\(8),
	datad => VCC,
	cin => \inst17|cnt8[7]~40\,
	combout => \inst17|cnt8[8]~41_combout\,
	cout => \inst17|cnt8[8]~42\);

-- Location: LCFF_X8_Y10_N25
\inst17|cnt8[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst17|cnt8[8]~41_combout\,
	sclr => \inst17|LessThan3~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst17|cnt8\(8));

-- Location: LCCOMB_X7_Y10_N14
\inst17|LessThan3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|LessThan3~0_combout\ = (((!\inst17|cnt8\(11)) # (!\inst17|cnt8\(9))) # (!\inst17|cnt8\(8))) # (!\inst17|cnt8\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|cnt8\(10),
	datab => \inst17|cnt8\(8),
	datac => \inst17|cnt8\(9),
	datad => \inst17|cnt8\(11),
	combout => \inst17|LessThan3~0_combout\);

-- Location: LCCOMB_X8_Y10_N0
\inst17|LessThan3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|LessThan3~2_combout\ = (!\inst17|cnt8\(12) & ((\inst17|LessThan3~0_combout\) # ((!\inst17|cnt8\(7) & \inst17|LessThan3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|cnt8\(12),
	datab => \inst17|cnt8\(7),
	datac => \inst17|LessThan3~1_combout\,
	datad => \inst17|LessThan3~0_combout\,
	combout => \inst17|LessThan3~2_combout\);

-- Location: LCCOMB_X8_Y10_N2
\inst17|LessThan3~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|LessThan3~3_combout\ = (!\inst17|cnt8\(14) & ((\inst17|LessThan3~2_combout\) # (!\inst17|cnt8\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst17|cnt8\(14),
	datac => \inst17|cnt8\(13),
	datad => \inst17|LessThan3~2_combout\,
	combout => \inst17|LessThan3~3_combout\);

-- Location: LCCOMB_X8_Y10_N4
\inst17|LessThan3~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|LessThan3~5_combout\ = (!\inst17|cnt8\(20) & (((\inst17|LessThan3~4_combout\) # (\inst17|LessThan3~3_combout\)) # (!\inst17|cnt8\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|cnt8\(19),
	datab => \inst17|cnt8\(20),
	datac => \inst17|LessThan3~4_combout\,
	datad => \inst17|LessThan3~3_combout\,
	combout => \inst17|LessThan3~5_combout\);

-- Location: LCCOMB_X8_Y10_N6
\inst17|LessThan3~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|LessThan3~7_combout\ = ((!\inst17|LessThan3~5_combout\ & \inst17|cnt8\(21))) # (!\inst17|LessThan3~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst17|LessThan3~6_combout\,
	datac => \inst17|LessThan3~5_combout\,
	datad => \inst17|cnt8\(21),
	combout => \inst17|LessThan3~7_combout\);

-- Location: LCFF_X8_Y10_N9
\inst17|cnt8[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst17|cnt8[0]~25_combout\,
	sclr => \inst17|LessThan3~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst17|cnt8\(0));

-- Location: LCCOMB_X8_Y10_N12
\inst17|cnt8[2]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|cnt8[2]~29_combout\ = (\inst17|cnt8\(2) & (\inst17|cnt8[1]~28\ $ (GND))) # (!\inst17|cnt8\(2) & (!\inst17|cnt8[1]~28\ & VCC))
-- \inst17|cnt8[2]~30\ = CARRY((\inst17|cnt8\(2) & !\inst17|cnt8[1]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst17|cnt8\(2),
	datad => VCC,
	cin => \inst17|cnt8[1]~28\,
	combout => \inst17|cnt8[2]~29_combout\,
	cout => \inst17|cnt8[2]~30\);

-- Location: LCFF_X8_Y10_N13
\inst17|cnt8[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst17|cnt8[2]~29_combout\,
	sclr => \inst17|LessThan3~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst17|cnt8\(2));

-- Location: LCCOMB_X8_Y10_N14
\inst17|cnt8[3]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|cnt8[3]~31_combout\ = (\inst17|cnt8\(3) & (!\inst17|cnt8[2]~30\)) # (!\inst17|cnt8\(3) & ((\inst17|cnt8[2]~30\) # (GND)))
-- \inst17|cnt8[3]~32\ = CARRY((!\inst17|cnt8[2]~30\) # (!\inst17|cnt8\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst17|cnt8\(3),
	datad => VCC,
	cin => \inst17|cnt8[2]~30\,
	combout => \inst17|cnt8[3]~31_combout\,
	cout => \inst17|cnt8[3]~32\);

-- Location: LCFF_X8_Y10_N15
\inst17|cnt8[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst17|cnt8[3]~31_combout\,
	sclr => \inst17|LessThan3~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst17|cnt8\(3));

-- Location: LCCOMB_X8_Y10_N18
\inst17|cnt8[5]~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|cnt8[5]~35_combout\ = (\inst17|cnt8\(5) & (!\inst17|cnt8[4]~34\)) # (!\inst17|cnt8\(5) & ((\inst17|cnt8[4]~34\) # (GND)))
-- \inst17|cnt8[5]~36\ = CARRY((!\inst17|cnt8[4]~34\) # (!\inst17|cnt8\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst17|cnt8\(5),
	datad => VCC,
	cin => \inst17|cnt8[4]~34\,
	combout => \inst17|cnt8[5]~35_combout\,
	cout => \inst17|cnt8[5]~36\);

-- Location: LCFF_X8_Y10_N19
\inst17|cnt8[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst17|cnt8[5]~35_combout\,
	sclr => \inst17|LessThan3~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst17|cnt8\(5));

-- Location: LCCOMB_X8_Y10_N22
\inst17|cnt8[7]~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|cnt8[7]~39_combout\ = (\inst17|cnt8\(7) & (!\inst17|cnt8[6]~38\)) # (!\inst17|cnt8\(7) & ((\inst17|cnt8[6]~38\) # (GND)))
-- \inst17|cnt8[7]~40\ = CARRY((!\inst17|cnt8[6]~38\) # (!\inst17|cnt8\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst17|cnt8\(7),
	datad => VCC,
	cin => \inst17|cnt8[6]~38\,
	combout => \inst17|cnt8[7]~39_combout\,
	cout => \inst17|cnt8[7]~40\);

-- Location: LCFF_X8_Y10_N23
\inst17|cnt8[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst17|cnt8[7]~39_combout\,
	sclr => \inst17|LessThan3~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst17|cnt8\(7));

-- Location: LCCOMB_X8_Y10_N26
\inst17|cnt8[9]~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|cnt8[9]~43_combout\ = (\inst17|cnt8\(9) & (!\inst17|cnt8[8]~42\)) # (!\inst17|cnt8\(9) & ((\inst17|cnt8[8]~42\) # (GND)))
-- \inst17|cnt8[9]~44\ = CARRY((!\inst17|cnt8[8]~42\) # (!\inst17|cnt8\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst17|cnt8\(9),
	datad => VCC,
	cin => \inst17|cnt8[8]~42\,
	combout => \inst17|cnt8[9]~43_combout\,
	cout => \inst17|cnt8[9]~44\);

-- Location: LCFF_X8_Y10_N27
\inst17|cnt8[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst17|cnt8[9]~43_combout\,
	sclr => \inst17|LessThan3~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst17|cnt8\(9));

-- Location: LCCOMB_X8_Y10_N28
\inst17|cnt8[10]~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|cnt8[10]~45_combout\ = (\inst17|cnt8\(10) & (\inst17|cnt8[9]~44\ $ (GND))) # (!\inst17|cnt8\(10) & (!\inst17|cnt8[9]~44\ & VCC))
-- \inst17|cnt8[10]~46\ = CARRY((\inst17|cnt8\(10) & !\inst17|cnt8[9]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst17|cnt8\(10),
	datad => VCC,
	cin => \inst17|cnt8[9]~44\,
	combout => \inst17|cnt8[10]~45_combout\,
	cout => \inst17|cnt8[10]~46\);

-- Location: LCFF_X8_Y10_N29
\inst17|cnt8[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst17|cnt8[10]~45_combout\,
	sclr => \inst17|LessThan3~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst17|cnt8\(10));

-- Location: LCCOMB_X8_Y10_N30
\inst17|cnt8[11]~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|cnt8[11]~47_combout\ = (\inst17|cnt8\(11) & (!\inst17|cnt8[10]~46\)) # (!\inst17|cnt8\(11) & ((\inst17|cnt8[10]~46\) # (GND)))
-- \inst17|cnt8[11]~48\ = CARRY((!\inst17|cnt8[10]~46\) # (!\inst17|cnt8\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst17|cnt8\(11),
	datad => VCC,
	cin => \inst17|cnt8[10]~46\,
	combout => \inst17|cnt8[11]~47_combout\,
	cout => \inst17|cnt8[11]~48\);

-- Location: LCFF_X8_Y10_N31
\inst17|cnt8[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst17|cnt8[11]~47_combout\,
	sclr => \inst17|LessThan3~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst17|cnt8\(11));

-- Location: LCCOMB_X8_Y9_N0
\inst17|cnt8[12]~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|cnt8[12]~49_combout\ = (\inst17|cnt8\(12) & (\inst17|cnt8[11]~48\ $ (GND))) # (!\inst17|cnt8\(12) & (!\inst17|cnt8[11]~48\ & VCC))
-- \inst17|cnt8[12]~50\ = CARRY((\inst17|cnt8\(12) & !\inst17|cnt8[11]~48\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst17|cnt8\(12),
	datad => VCC,
	cin => \inst17|cnt8[11]~48\,
	combout => \inst17|cnt8[12]~49_combout\,
	cout => \inst17|cnt8[12]~50\);

-- Location: LCFF_X8_Y9_N1
\inst17|cnt8[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst17|cnt8[12]~49_combout\,
	sclr => \inst17|LessThan3~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst17|cnt8\(12));

-- Location: LCCOMB_X8_Y9_N2
\inst17|cnt8[13]~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|cnt8[13]~51_combout\ = (\inst17|cnt8\(13) & (!\inst17|cnt8[12]~50\)) # (!\inst17|cnt8\(13) & ((\inst17|cnt8[12]~50\) # (GND)))
-- \inst17|cnt8[13]~52\ = CARRY((!\inst17|cnt8[12]~50\) # (!\inst17|cnt8\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst17|cnt8\(13),
	datad => VCC,
	cin => \inst17|cnt8[12]~50\,
	combout => \inst17|cnt8[13]~51_combout\,
	cout => \inst17|cnt8[13]~52\);

-- Location: LCFF_X8_Y9_N3
\inst17|cnt8[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst17|cnt8[13]~51_combout\,
	sclr => \inst17|LessThan3~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst17|cnt8\(13));

-- Location: LCCOMB_X8_Y9_N4
\inst17|cnt8[14]~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|cnt8[14]~53_combout\ = (\inst17|cnt8\(14) & (\inst17|cnt8[13]~52\ $ (GND))) # (!\inst17|cnt8\(14) & (!\inst17|cnt8[13]~52\ & VCC))
-- \inst17|cnt8[14]~54\ = CARRY((\inst17|cnt8\(14) & !\inst17|cnt8[13]~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst17|cnt8\(14),
	datad => VCC,
	cin => \inst17|cnt8[13]~52\,
	combout => \inst17|cnt8[14]~53_combout\,
	cout => \inst17|cnt8[14]~54\);

-- Location: LCFF_X8_Y9_N5
\inst17|cnt8[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst17|cnt8[14]~53_combout\,
	sclr => \inst17|LessThan3~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst17|cnt8\(14));

-- Location: LCCOMB_X8_Y9_N8
\inst17|cnt8[16]~57\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|cnt8[16]~57_combout\ = (\inst17|cnt8\(16) & (\inst17|cnt8[15]~56\ $ (GND))) # (!\inst17|cnt8\(16) & (!\inst17|cnt8[15]~56\ & VCC))
-- \inst17|cnt8[16]~58\ = CARRY((\inst17|cnt8\(16) & !\inst17|cnt8[15]~56\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst17|cnt8\(16),
	datad => VCC,
	cin => \inst17|cnt8[15]~56\,
	combout => \inst17|cnt8[16]~57_combout\,
	cout => \inst17|cnt8[16]~58\);

-- Location: LCFF_X8_Y9_N9
\inst17|cnt8[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst17|cnt8[16]~57_combout\,
	sclr => \inst17|LessThan3~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst17|cnt8\(16));

-- Location: LCCOMB_X8_Y9_N14
\inst17|cnt8[19]~63\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|cnt8[19]~63_combout\ = (\inst17|cnt8\(19) & (!\inst17|cnt8[18]~62\)) # (!\inst17|cnt8\(19) & ((\inst17|cnt8[18]~62\) # (GND)))
-- \inst17|cnt8[19]~64\ = CARRY((!\inst17|cnt8[18]~62\) # (!\inst17|cnt8\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst17|cnt8\(19),
	datad => VCC,
	cin => \inst17|cnt8[18]~62\,
	combout => \inst17|cnt8[19]~63_combout\,
	cout => \inst17|cnt8[19]~64\);

-- Location: LCFF_X8_Y9_N15
\inst17|cnt8[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst17|cnt8[19]~63_combout\,
	sclr => \inst17|LessThan3~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst17|cnt8\(19));

-- Location: LCCOMB_X8_Y9_N18
\inst17|cnt8[21]~67\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|cnt8[21]~67_combout\ = (\inst17|cnt8\(21) & (!\inst17|cnt8[20]~66\)) # (!\inst17|cnt8\(21) & ((\inst17|cnt8[20]~66\) # (GND)))
-- \inst17|cnt8[21]~68\ = CARRY((!\inst17|cnt8[20]~66\) # (!\inst17|cnt8\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst17|cnt8\(21),
	datad => VCC,
	cin => \inst17|cnt8[20]~66\,
	combout => \inst17|cnt8[21]~67_combout\,
	cout => \inst17|cnt8[21]~68\);

-- Location: LCFF_X8_Y9_N19
\inst17|cnt8[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst17|cnt8[21]~67_combout\,
	sclr => \inst17|LessThan3~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst17|cnt8\(21));

-- Location: LCCOMB_X8_Y9_N20
\inst17|cnt8[22]~69\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|cnt8[22]~69_combout\ = (\inst17|cnt8\(22) & (\inst17|cnt8[21]~68\ $ (GND))) # (!\inst17|cnt8\(22) & (!\inst17|cnt8[21]~68\ & VCC))
-- \inst17|cnt8[22]~70\ = CARRY((\inst17|cnt8\(22) & !\inst17|cnt8[21]~68\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|cnt8\(22),
	datad => VCC,
	cin => \inst17|cnt8[21]~68\,
	combout => \inst17|cnt8[22]~69_combout\,
	cout => \inst17|cnt8[22]~70\);

-- Location: LCFF_X8_Y9_N21
\inst17|cnt8[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst17|cnt8[22]~69_combout\,
	sclr => \inst17|LessThan3~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst17|cnt8\(22));

-- Location: LCFF_X8_Y9_N23
\inst17|cnt8[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst17|cnt8[23]~71_combout\,
	sclr => \inst17|LessThan3~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst17|cnt8\(23));

-- Location: LCCOMB_X8_Y9_N28
\inst17|LessThan3~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|LessThan3~6_combout\ = (!\inst17|cnt8\(24) & (!\inst17|cnt8\(22) & !\inst17|cnt8\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|cnt8\(24),
	datac => \inst17|cnt8\(22),
	datad => \inst17|cnt8\(23),
	combout => \inst17|LessThan3~6_combout\);

-- Location: LCCOMB_X7_Y10_N0
\inst17|out_8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|out_8~0_combout\ = \inst17|out_8~regout\ $ ((((\inst17|cnt8\(21) & !\inst17|LessThan3~5_combout\)) # (!\inst17|LessThan3~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001101001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|cnt8\(21),
	datab => \inst17|LessThan3~6_combout\,
	datac => \inst17|out_8~regout\,
	datad => \inst17|LessThan3~5_combout\,
	combout => \inst17|out_8~0_combout\);

-- Location: LCFF_X7_Y10_N1
\inst17|out_8\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst17|out_8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst17|out_8~regout\);

-- Location: LCCOMB_X21_Y5_N0
\inst17|cnt16k[0]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|cnt16k[0]~12_combout\ = \inst17|cnt16k\(0) $ (VCC)
-- \inst17|cnt16k[0]~13\ = CARRY(\inst17|cnt16k\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst17|cnt16k\(0),
	datad => VCC,
	combout => \inst17|cnt16k[0]~12_combout\,
	cout => \inst17|cnt16k[0]~13\);

-- Location: LCFF_X21_Y5_N1
\inst17|cnt16k[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst17|cnt16k[0]~12_combout\,
	sclr => \inst17|LessThan2~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst17|cnt16k\(0));

-- Location: LCCOMB_X21_Y5_N2
\inst17|cnt16k[1]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|cnt16k[1]~14_combout\ = (\inst17|cnt16k\(1) & (!\inst17|cnt16k[0]~13\)) # (!\inst17|cnt16k\(1) & ((\inst17|cnt16k[0]~13\) # (GND)))
-- \inst17|cnt16k[1]~15\ = CARRY((!\inst17|cnt16k[0]~13\) # (!\inst17|cnt16k\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst17|cnt16k\(1),
	datad => VCC,
	cin => \inst17|cnt16k[0]~13\,
	combout => \inst17|cnt16k[1]~14_combout\,
	cout => \inst17|cnt16k[1]~15\);

-- Location: LCFF_X21_Y5_N3
\inst17|cnt16k[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst17|cnt16k[1]~14_combout\,
	sclr => \inst17|LessThan2~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst17|cnt16k\(1));

-- Location: LCCOMB_X21_Y5_N4
\inst17|cnt16k[2]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|cnt16k[2]~16_combout\ = (\inst17|cnt16k\(2) & (\inst17|cnt16k[1]~15\ $ (GND))) # (!\inst17|cnt16k\(2) & (!\inst17|cnt16k[1]~15\ & VCC))
-- \inst17|cnt16k[2]~17\ = CARRY((\inst17|cnt16k\(2) & !\inst17|cnt16k[1]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst17|cnt16k\(2),
	datad => VCC,
	cin => \inst17|cnt16k[1]~15\,
	combout => \inst17|cnt16k[2]~16_combout\,
	cout => \inst17|cnt16k[2]~17\);

-- Location: LCFF_X21_Y5_N5
\inst17|cnt16k[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst17|cnt16k[2]~16_combout\,
	sclr => \inst17|LessThan2~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst17|cnt16k\(2));

-- Location: LCCOMB_X21_Y5_N8
\inst17|cnt16k[4]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|cnt16k[4]~20_combout\ = (\inst17|cnt16k\(4) & (\inst17|cnt16k[3]~19\ $ (GND))) # (!\inst17|cnt16k\(4) & (!\inst17|cnt16k[3]~19\ & VCC))
-- \inst17|cnt16k[4]~21\ = CARRY((\inst17|cnt16k\(4) & !\inst17|cnt16k[3]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst17|cnt16k\(4),
	datad => VCC,
	cin => \inst17|cnt16k[3]~19\,
	combout => \inst17|cnt16k[4]~20_combout\,
	cout => \inst17|cnt16k[4]~21\);

-- Location: LCFF_X21_Y5_N9
\inst17|cnt16k[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst17|cnt16k[4]~20_combout\,
	sclr => \inst17|LessThan2~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst17|cnt16k\(4));

-- Location: LCCOMB_X21_Y5_N12
\inst17|cnt16k[6]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|cnt16k[6]~24_combout\ = (\inst17|cnt16k\(6) & (\inst17|cnt16k[5]~23\ $ (GND))) # (!\inst17|cnt16k\(6) & (!\inst17|cnt16k[5]~23\ & VCC))
-- \inst17|cnt16k[6]~25\ = CARRY((\inst17|cnt16k\(6) & !\inst17|cnt16k[5]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|cnt16k\(6),
	datad => VCC,
	cin => \inst17|cnt16k[5]~23\,
	combout => \inst17|cnt16k[6]~24_combout\,
	cout => \inst17|cnt16k[6]~25\);

-- Location: LCCOMB_X21_Y5_N14
\inst17|cnt16k[7]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|cnt16k[7]~26_combout\ = (\inst17|cnt16k\(7) & (!\inst17|cnt16k[6]~25\)) # (!\inst17|cnt16k\(7) & ((\inst17|cnt16k[6]~25\) # (GND)))
-- \inst17|cnt16k[7]~27\ = CARRY((!\inst17|cnt16k[6]~25\) # (!\inst17|cnt16k\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst17|cnt16k\(7),
	datad => VCC,
	cin => \inst17|cnt16k[6]~25\,
	combout => \inst17|cnt16k[7]~26_combout\,
	cout => \inst17|cnt16k[7]~27\);

-- Location: LCFF_X21_Y5_N15
\inst17|cnt16k[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst17|cnt16k[7]~26_combout\,
	sclr => \inst17|LessThan2~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst17|cnt16k\(7));

-- Location: LCCOMB_X21_Y5_N16
\inst17|cnt16k[8]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|cnt16k[8]~28_combout\ = (\inst17|cnt16k\(8) & (\inst17|cnt16k[7]~27\ $ (GND))) # (!\inst17|cnt16k\(8) & (!\inst17|cnt16k[7]~27\ & VCC))
-- \inst17|cnt16k[8]~29\ = CARRY((\inst17|cnt16k\(8) & !\inst17|cnt16k[7]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|cnt16k\(8),
	datad => VCC,
	cin => \inst17|cnt16k[7]~27\,
	combout => \inst17|cnt16k[8]~28_combout\,
	cout => \inst17|cnt16k[8]~29\);

-- Location: LCCOMB_X21_Y5_N18
\inst17|cnt16k[9]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|cnt16k[9]~30_combout\ = (\inst17|cnt16k\(9) & (!\inst17|cnt16k[8]~29\)) # (!\inst17|cnt16k\(9) & ((\inst17|cnt16k[8]~29\) # (GND)))
-- \inst17|cnt16k[9]~31\ = CARRY((!\inst17|cnt16k[8]~29\) # (!\inst17|cnt16k\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst17|cnt16k\(9),
	datad => VCC,
	cin => \inst17|cnt16k[8]~29\,
	combout => \inst17|cnt16k[9]~30_combout\,
	cout => \inst17|cnt16k[9]~31\);

-- Location: LCFF_X21_Y5_N19
\inst17|cnt16k[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst17|cnt16k[9]~30_combout\,
	sclr => \inst17|LessThan2~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst17|cnt16k\(9));

-- Location: LCFF_X21_Y5_N21
\inst17|cnt16k[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst17|cnt16k[10]~32_combout\,
	sclr => \inst17|LessThan2~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst17|cnt16k\(10));

-- Location: LCFF_X21_Y5_N17
\inst17|cnt16k[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst17|cnt16k[8]~28_combout\,
	sclr => \inst17|LessThan2~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst17|cnt16k\(8));

-- Location: LCFF_X21_Y5_N13
\inst17|cnt16k[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst17|cnt16k[6]~24_combout\,
	sclr => \inst17|LessThan2~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst17|cnt16k\(6));

-- Location: LCCOMB_X21_Y5_N24
\inst17|LessThan2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|LessThan2~0_combout\ = ((!\inst17|cnt16k\(6)) # (!\inst17|cnt16k\(8))) # (!\inst17|cnt16k\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst17|cnt16k\(7),
	datac => \inst17|cnt16k\(8),
	datad => \inst17|cnt16k\(6),
	combout => \inst17|LessThan2~0_combout\);

-- Location: LCCOMB_X21_Y5_N30
\inst17|LessThan2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|LessThan2~1_combout\ = (!\inst17|cnt16k\(3) & (!\inst17|cnt16k\(2) & ((!\inst17|cnt16k\(1)) # (!\inst17|cnt16k\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|cnt16k\(3),
	datab => \inst17|cnt16k\(0),
	datac => \inst17|cnt16k\(2),
	datad => \inst17|cnt16k\(1),
	combout => \inst17|LessThan2~1_combout\);

-- Location: LCCOMB_X21_Y5_N28
\inst17|LessThan2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|LessThan2~2_combout\ = (\inst17|LessThan2~0_combout\) # ((!\inst17|cnt16k\(5) & ((\inst17|LessThan2~1_combout\) # (!\inst17|cnt16k\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|cnt16k\(5),
	datab => \inst17|cnt16k\(4),
	datac => \inst17|LessThan2~0_combout\,
	datad => \inst17|LessThan2~1_combout\,
	combout => \inst17|LessThan2~2_combout\);

-- Location: LCCOMB_X21_Y5_N26
\inst17|LessThan2~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|LessThan2~3_combout\ = (\inst17|cnt16k\(11)) # ((\inst17|cnt16k\(10) & ((\inst17|cnt16k\(9)) # (!\inst17|LessThan2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|cnt16k\(11),
	datab => \inst17|cnt16k\(9),
	datac => \inst17|cnt16k\(10),
	datad => \inst17|LessThan2~2_combout\,
	combout => \inst17|LessThan2~3_combout\);

-- Location: LCCOMB_X22_Y5_N0
\inst17|out_16k~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|out_16k~0_combout\ = \inst17|out_16k~regout\ $ (\inst17|LessThan2~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst17|out_16k~regout\,
	datad => \inst17|LessThan2~3_combout\,
	combout => \inst17|out_16k~0_combout\);

-- Location: LCFF_X22_Y5_N1
\inst17|out_16k\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst17|out_16k~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst17|out_16k~regout\);

-- Location: CLKCTRL_G4
\inst17|out_16k~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst17|out_16k~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst17|out_16k~clkctrl_outclk\);

-- Location: LCCOMB_X20_Y5_N28
\inst|col[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|col[0]~0_combout\ = !\inst|col\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|col\(0),
	combout => \inst|col[0]~0_combout\);

-- Location: LCFF_X21_Y6_N25
\inst|col[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst17|out_16k~clkctrl_outclk\,
	sdata => \inst|col[0]~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|col\(0));

-- Location: LCFF_X18_Y8_N19
\inst13|display[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst13|display[6]~1_combout\,
	sdata => \inst4|dis\(6),
	sload => \inst13|ALT_INV_display[4]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst13|display\(6));

-- Location: LCCOMB_X19_Y8_N0
\inst13|display[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|display[5]~feeder_combout\ = \inst13|display[5]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|display[5]~2_combout\,
	combout => \inst13|display[5]~feeder_combout\);

-- Location: LCFF_X19_Y8_N1
\inst13|display[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst13|display[5]~feeder_combout\,
	sdata => \inst4|dis\(5),
	sload => \inst13|ALT_INV_display[4]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst13|display\(5));

-- Location: LCCOMB_X19_Y8_N16
\inst|Div2|auto_generated|divider|divider|add_sub_3_result_int[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Div2|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ = \inst13|display\(5) $ (VCC)
-- \inst|Div2|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ = CARRY(\inst13|display\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|display\(5),
	datad => VCC,
	combout => \inst|Div2|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	cout => \inst|Div2|auto_generated|divider|divider|add_sub_3_result_int[1]~1\);

-- Location: LCCOMB_X19_Y8_N18
\inst|Div2|auto_generated|divider|divider|add_sub_3_result_int[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Div2|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ = (\inst13|display\(6) & (\inst|Div2|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & VCC)) # (!\inst13|display\(6) & 
-- (!\inst|Div2|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))
-- \inst|Div2|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ = CARRY((!\inst13|display\(6) & !\inst|Div2|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst13|display\(6),
	datad => VCC,
	cin => \inst|Div2|auto_generated|divider|divider|add_sub_3_result_int[1]~1\,
	combout => \inst|Div2|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	cout => \inst|Div2|auto_generated|divider|divider|add_sub_3_result_int[2]~3\);

-- Location: LCCOMB_X19_Y8_N20
\inst|Div2|auto_generated|divider|divider|add_sub_3_result_int[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Div2|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ = (\inst13|display\(7) & (\inst|Div2|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ $ (GND))) # (!\inst13|display\(7) & 
-- (!\inst|Div2|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & VCC))
-- \inst|Div2|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ = CARRY((\inst13|display\(7) & !\inst|Div2|auto_generated|divider|divider|add_sub_3_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|display\(7),
	datad => VCC,
	cin => \inst|Div2|auto_generated|divider|divider|add_sub_3_result_int[2]~3\,
	combout => \inst|Div2|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	cout => \inst|Div2|auto_generated|divider|divider|add_sub_3_result_int[3]~5\);

-- Location: LCCOMB_X19_Y8_N22
\inst|Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ = !\inst|Div2|auto_generated|divider|divider|add_sub_3_result_int[3]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst|Div2|auto_generated|divider|divider|add_sub_3_result_int[3]~5\,
	combout => \inst|Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\);

-- Location: LCCOMB_X19_Y8_N14
\inst|Div2|auto_generated|divider|divider|StageOut[18]~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Div2|auto_generated|divider|divider|StageOut[18]~37_combout\ = (\inst|Div2|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ & !\inst|Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Div2|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	datad => \inst|Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst|Div2|auto_generated|divider|divider|StageOut[18]~37_combout\);

-- Location: LCCOMB_X19_Y8_N28
\inst|Div2|auto_generated|divider|divider|StageOut[17]~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Div2|auto_generated|divider|divider|StageOut[17]~39_combout\ = (\inst|Div2|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ & !\inst|Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Div2|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datad => \inst|Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst|Div2|auto_generated|divider|divider|StageOut[17]~39_combout\);

-- Location: LCCOMB_X19_Y8_N26
\inst|Div2|auto_generated|divider|divider|StageOut[16]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Div2|auto_generated|divider|divider|StageOut[16]~40_combout\ = (\inst13|display\(5) & \inst|Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|display\(5),
	datad => \inst|Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst|Div2|auto_generated|divider|divider|StageOut[16]~40_combout\);

-- Location: LCCOMB_X19_Y7_N0
\inst13|display[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|display[4]~feeder_combout\ = \inst13|display[4]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|display[4]~3_combout\,
	combout => \inst13|display[4]~feeder_combout\);

-- Location: LCFF_X19_Y7_N1
\inst13|display[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst13|display[4]~feeder_combout\,
	sdata => \inst4|dis\(4),
	sload => \inst13|ALT_INV_display[4]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst13|display\(4));

-- Location: LCCOMB_X19_Y8_N30
\inst|Div2|auto_generated|divider|divider|StageOut[15]~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Div2|auto_generated|divider|divider|StageOut[15]~43_combout\ = (\inst13|display\(4) & !\inst|Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|display\(4),
	datad => \inst|Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst|Div2|auto_generated|divider|divider|StageOut[15]~43_combout\);

-- Location: LCCOMB_X19_Y8_N6
\inst|Div2|auto_generated|divider|divider|add_sub_4_result_int[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Div2|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ = (\inst|Div2|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & (((\inst|Div2|auto_generated|divider|divider|StageOut[17]~38_combout\) # 
-- (\inst|Div2|auto_generated|divider|divider|StageOut[17]~39_combout\)))) # (!\inst|Div2|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((((\inst|Div2|auto_generated|divider|divider|StageOut[17]~38_combout\) # 
-- (\inst|Div2|auto_generated|divider|divider|StageOut[17]~39_combout\)))))
-- \inst|Div2|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ = CARRY((!\inst|Div2|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((\inst|Div2|auto_generated|divider|divider|StageOut[17]~38_combout\) # 
-- (\inst|Div2|auto_generated|divider|divider|StageOut[17]~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div2|auto_generated|divider|divider|StageOut[17]~38_combout\,
	datab => \inst|Div2|auto_generated|divider|divider|StageOut[17]~39_combout\,
	datad => VCC,
	cin => \inst|Div2|auto_generated|divider|divider|add_sub_4_result_int[2]~3\,
	combout => \inst|Div2|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	cout => \inst|Div2|auto_generated|divider|divider|add_sub_4_result_int[3]~5\);

-- Location: LCCOMB_X19_Y8_N8
\inst|Div2|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Div2|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ = CARRY((!\inst|Div2|auto_generated|divider|divider|StageOut[18]~36_combout\ & (!\inst|Div2|auto_generated|divider|divider|StageOut[18]~37_combout\ & 
-- !\inst|Div2|auto_generated|divider|divider|add_sub_4_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div2|auto_generated|divider|divider|StageOut[18]~36_combout\,
	datab => \inst|Div2|auto_generated|divider|divider|StageOut[18]~37_combout\,
	datad => VCC,
	cin => \inst|Div2|auto_generated|divider|divider|add_sub_4_result_int[3]~5\,
	cout => \inst|Div2|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\);

-- Location: LCCOMB_X19_Y8_N10
\inst|Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ = \inst|Div2|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst|Div2|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\,
	combout => \inst|Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\);

-- Location: LCCOMB_X20_Y7_N8
\inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ = (\inst|Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (!\inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & VCC)) # 
-- (!\inst|Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ $ (GND)))
-- \inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ = CARRY((!\inst|Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & !\inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => VCC,
	cin => \inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\,
	combout => \inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	cout => \inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\);

-- Location: LCCOMB_X20_Y7_N10
\inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\ = CARRY(!\inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\,
	cout => \inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\);

-- Location: LCCOMB_X20_Y7_N12
\inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ = \inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\,
	combout => \inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\);

-- Location: LCCOMB_X21_Y7_N26
\inst|Mod1|auto_generated|divider|divider|StageOut[31]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mod1|auto_generated|divider|divider|StageOut[31]~4_combout\ = (!\inst|Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & \inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \inst|Mod1|auto_generated|divider|divider|StageOut[31]~4_combout\);

-- Location: LCCOMB_X20_Y8_N14
\inst|Div2|auto_generated|divider|divider|StageOut[22]~65\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Div2|auto_generated|divider|divider|StageOut[22]~65_combout\ = (\inst|Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\inst|Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\inst13|display\(5))) # 
-- (!\inst|Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\inst|Div2|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|display\(5),
	datab => \inst|Div2|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datac => \inst|Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \inst|Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst|Div2|auto_generated|divider|divider|StageOut[22]~65_combout\);

-- Location: LCCOMB_X20_Y8_N0
\inst|Div2|auto_generated|divider|divider|StageOut[21]~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Div2|auto_generated|divider|divider|StageOut[21]~47_combout\ = (\inst|Div2|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ & !\inst|Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div2|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datad => \inst|Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst|Div2|auto_generated|divider|divider|StageOut[21]~47_combout\);

-- Location: LCFF_X18_Y8_N25
\inst13|display[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst13|display[3]~4_combout\,
	sdata => \inst4|dis\(3),
	sload => \inst13|ALT_INV_display[4]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst13|display\(3));

-- Location: LCCOMB_X20_Y8_N8
\inst|Div2|auto_generated|divider|divider|StageOut[20]~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Div2|auto_generated|divider|divider|StageOut[20]~49_combout\ = (\inst13|display\(3) & !\inst|Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|display\(3),
	datad => \inst|Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst|Div2|auto_generated|divider|divider|StageOut[20]~49_combout\);

-- Location: LCCOMB_X20_Y8_N20
\inst|Div2|auto_generated|divider|divider|add_sub_5_result_int[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Div2|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ = (((\inst|Div2|auto_generated|divider|divider|StageOut[20]~48_combout\) # (\inst|Div2|auto_generated|divider|divider|StageOut[20]~49_combout\)))
-- \inst|Div2|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ = CARRY((\inst|Div2|auto_generated|divider|divider|StageOut[20]~48_combout\) # (\inst|Div2|auto_generated|divider|divider|StageOut[20]~49_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div2|auto_generated|divider|divider|StageOut[20]~48_combout\,
	datab => \inst|Div2|auto_generated|divider|divider|StageOut[20]~49_combout\,
	datad => VCC,
	combout => \inst|Div2|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	cout => \inst|Div2|auto_generated|divider|divider|add_sub_5_result_int[1]~1\);

-- Location: LCCOMB_X20_Y8_N24
\inst|Div2|auto_generated|divider|divider|add_sub_5_result_int[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Div2|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ = (\inst|Div2|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & (((\inst|Div2|auto_generated|divider|divider|StageOut[22]~45_combout\) # 
-- (\inst|Div2|auto_generated|divider|divider|StageOut[22]~65_combout\)))) # (!\inst|Div2|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((((\inst|Div2|auto_generated|divider|divider|StageOut[22]~45_combout\) # 
-- (\inst|Div2|auto_generated|divider|divider|StageOut[22]~65_combout\)))))
-- \inst|Div2|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ = CARRY((!\inst|Div2|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((\inst|Div2|auto_generated|divider|divider|StageOut[22]~45_combout\) # 
-- (\inst|Div2|auto_generated|divider|divider|StageOut[22]~65_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div2|auto_generated|divider|divider|StageOut[22]~45_combout\,
	datab => \inst|Div2|auto_generated|divider|divider|StageOut[22]~65_combout\,
	datad => VCC,
	cin => \inst|Div2|auto_generated|divider|divider|add_sub_5_result_int[2]~3\,
	combout => \inst|Div2|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	cout => \inst|Div2|auto_generated|divider|divider|add_sub_5_result_int[3]~5\);

-- Location: LCCOMB_X20_Y8_N2
\inst|Div2|auto_generated|divider|divider|StageOut[23]~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Div2|auto_generated|divider|divider|StageOut[23]~44_combout\ = (\inst|Div2|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ & !\inst|Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Div2|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	datad => \inst|Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst|Div2|auto_generated|divider|divider|StageOut[23]~44_combout\);

-- Location: LCCOMB_X20_Y8_N26
\inst|Div2|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Div2|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ = CARRY((!\inst|Div2|auto_generated|divider|divider|StageOut[23]~64_combout\ & (!\inst|Div2|auto_generated|divider|divider|StageOut[23]~44_combout\ & 
-- !\inst|Div2|auto_generated|divider|divider|add_sub_5_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div2|auto_generated|divider|divider|StageOut[23]~64_combout\,
	datab => \inst|Div2|auto_generated|divider|divider|StageOut[23]~44_combout\,
	datad => VCC,
	cin => \inst|Div2|auto_generated|divider|divider|add_sub_5_result_int[3]~5\,
	cout => \inst|Div2|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\);

-- Location: LCCOMB_X20_Y8_N28
\inst|Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ = \inst|Div2|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst|Div2|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\,
	combout => \inst|Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\);

-- Location: LCCOMB_X21_Y8_N8
\inst|Div2|auto_generated|divider|divider|StageOut[28]~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Div2|auto_generated|divider|divider|StageOut[28]~50_combout\ = (\inst|Div2|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ & !\inst|Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Div2|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	datad => \inst|Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \inst|Div2|auto_generated|divider|divider|StageOut[28]~50_combout\);

-- Location: LCCOMB_X20_Y8_N18
\inst|Div2|auto_generated|divider|divider|StageOut[27]~66\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Div2|auto_generated|divider|divider|StageOut[27]~66_combout\ = (\inst|Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\inst|Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\inst13|display\(4)))) 
-- # (!\inst|Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (\inst|Div2|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div2|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datab => \inst13|display\(4),
	datac => \inst|Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \inst|Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \inst|Div2|auto_generated|divider|divider|StageOut[27]~66_combout\);

-- Location: LCCOMB_X21_Y8_N0
\inst|Div2|auto_generated|divider|divider|StageOut[26]~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Div2|auto_generated|divider|divider|StageOut[26]~53_combout\ = (\inst|Div2|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ & !\inst|Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Div2|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datad => \inst|Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \inst|Div2|auto_generated|divider|divider|StageOut[26]~53_combout\);

-- Location: LCCOMB_X18_Y8_N4
\inst13|initialSpeed~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|initialSpeed~6_combout\ = (\inst13|state.01~regout\ & (!\inst9|data\(2))) # (!\inst13|state.01~regout\ & ((!\inst13|display[2]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|state.01~regout\,
	datac => \inst9|data\(2),
	datad => \inst13|display[2]~5_combout\,
	combout => \inst13|initialSpeed~6_combout\);

-- Location: LCFF_X18_Y8_N5
\inst13|initialSpeed[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst13|initialSpeed~6_combout\,
	ena => \inst13|initialSpeed[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst13|initialSpeed\(2));

-- Location: LCCOMB_X18_Y8_N30
\inst13|display[2]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|display[2]~5_combout\ = (\inst13|isSet~regout\ & ((!\inst13|initialSpeed\(2)))) # (!\inst13|isSet~regout\ & (\Button~combout\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Button~combout\(2),
	datab => \inst13|initialSpeed\(2),
	datad => \inst13|isSet~regout\,
	combout => \inst13|display[2]~5_combout\);

-- Location: LCFF_X18_Y8_N31
\inst13|display[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst13|display[2]~5_combout\,
	sdata => \inst4|dis\(2),
	sload => \inst13|ALT_INV_display[4]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst13|display\(2));

-- Location: LCCOMB_X21_Y8_N26
\inst|Div2|auto_generated|divider|divider|StageOut[25]~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Div2|auto_generated|divider|divider|StageOut[25]~54_combout\ = (\inst13|display\(2) & \inst|Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|display\(2),
	datad => \inst|Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \inst|Div2|auto_generated|divider|divider|StageOut[25]~54_combout\);

-- Location: LCCOMB_X21_Y8_N16
\inst|Div2|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Div2|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\ = CARRY((!\inst|Div2|auto_generated|divider|divider|StageOut[28]~62_combout\ & (!\inst|Div2|auto_generated|divider|divider|StageOut[28]~50_combout\ & 
-- !\inst|Div2|auto_generated|divider|divider|add_sub_6_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div2|auto_generated|divider|divider|StageOut[28]~62_combout\,
	datab => \inst|Div2|auto_generated|divider|divider|StageOut[28]~50_combout\,
	datad => VCC,
	cin => \inst|Div2|auto_generated|divider|divider|add_sub_6_result_int[3]~5\,
	cout => \inst|Div2|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\);

-- Location: LCCOMB_X21_Y8_N18
\inst|Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ = \inst|Div2|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst|Div2|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\,
	combout => \inst|Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\);

-- Location: LCCOMB_X21_Y7_N30
\inst|Mod1|auto_generated|divider|divider|StageOut[30]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mod1|auto_generated|divider|divider|StageOut[30]~7_combout\ = (!\inst|Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & !\inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \inst|Mod1|auto_generated|divider|divider|StageOut[30]~7_combout\);

-- Location: LCCOMB_X21_Y7_N4
\inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ = (\inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ & (((\inst|Mod1|auto_generated|divider|divider|StageOut[31]~5_combout\) # 
-- (\inst|Mod1|auto_generated|divider|divider|StageOut[31]~4_combout\)))) # (!\inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ & (!\inst|Mod1|auto_generated|divider|divider|StageOut[31]~5_combout\ & 
-- (!\inst|Mod1|auto_generated|divider|divider|StageOut[31]~4_combout\)))
-- \inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ = CARRY((!\inst|Mod1|auto_generated|divider|divider|StageOut[31]~5_combout\ & (!\inst|Mod1|auto_generated|divider|divider|StageOut[31]~4_combout\ & 
-- !\inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod1|auto_generated|divider|divider|StageOut[31]~5_combout\,
	datab => \inst|Mod1|auto_generated|divider|divider|StageOut[31]~4_combout\,
	datad => VCC,
	cin => \inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\,
	combout => \inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	cout => \inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\);

-- Location: LCCOMB_X20_Y7_N24
\inst|Mod1|auto_generated|divider|divider|StageOut[33]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mod1|auto_generated|divider|divider|StageOut[33]~1_combout\ = (\inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ & !\inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	datad => \inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \inst|Mod1|auto_generated|divider|divider|StageOut[33]~1_combout\);

-- Location: LCCOMB_X21_Y7_N28
\inst|Mod1|auto_generated|divider|divider|StageOut[32]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mod1|auto_generated|divider|divider|StageOut[32]~2_combout\ = (!\inst|Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \inst|Mod1|auto_generated|divider|divider|StageOut[32]~2_combout\);

-- Location: LCCOMB_X21_Y7_N8
\inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ = CARRY((!\inst|Mod1|auto_generated|divider|divider|StageOut[33]~0_combout\ & (!\inst|Mod1|auto_generated|divider|divider|StageOut[33]~1_combout\ & 
-- !\inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod1|auto_generated|divider|divider|StageOut[33]~0_combout\,
	datab => \inst|Mod1|auto_generated|divider|divider|StageOut[33]~1_combout\,
	datad => VCC,
	cin => \inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\,
	cout => \inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\);

-- Location: LCCOMB_X21_Y7_N10
\inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ = \inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\,
	combout => \inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\);

-- Location: LCCOMB_X21_Y7_N14
\inst|Mux1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mux1~2_combout\ = (\inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & ((\inst|Mod1|auto_generated|divider|divider|StageOut[31]~5_combout\) # ((\inst|Mod1|auto_generated|divider|divider|StageOut[31]~4_combout\)))) # 
-- (!\inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & (((\inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod1|auto_generated|divider|divider|StageOut[31]~5_combout\,
	datab => \inst|Mod1|auto_generated|divider|divider|StageOut[31]~4_combout\,
	datac => \inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	datad => \inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \inst|Mux1~2_combout\);

-- Location: LCFF_X18_Y8_N1
\inst13|display[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst13|display[7]~0_combout\,
	sdata => \inst4|dis\(7),
	sload => \inst13|ALT_INV_display[4]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst13|display\(7));

-- Location: LCCOMB_X18_Y9_N2
\inst|Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ = \inst13|display\(5) $ (VCC)
-- \inst|Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ = CARRY(\inst13|display\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|display\(5),
	datad => VCC,
	combout => \inst|Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	cout => \inst|Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~1\);

-- Location: LCCOMB_X18_Y9_N4
\inst|Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ = (\inst13|display\(6) & (\inst|Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & VCC)) # (!\inst13|display\(6) & 
-- (!\inst|Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))
-- \inst|Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ = CARRY((!\inst13|display\(6) & !\inst|Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst13|display\(6),
	datad => VCC,
	cin => \inst|Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~1\,
	combout => \inst|Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	cout => \inst|Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~3\);

-- Location: LCCOMB_X18_Y9_N6
\inst|Mod2|auto_generated|divider|divider|add_sub_3_result_int[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mod2|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ = (\inst13|display\(7) & (\inst|Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ $ (GND))) # (!\inst13|display\(7) & 
-- (!\inst|Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & VCC))
-- \inst|Mod2|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ = CARRY((\inst13|display\(7) & !\inst|Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst13|display\(7),
	datad => VCC,
	cin => \inst|Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~3\,
	combout => \inst|Mod2|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	cout => \inst|Mod2|auto_generated|divider|divider|add_sub_3_result_int[3]~5\);

-- Location: LCCOMB_X18_Y9_N8
\inst|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ = !\inst|Mod2|auto_generated|divider|divider|add_sub_3_result_int[3]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst|Mod2|auto_generated|divider|divider|add_sub_3_result_int[3]~5\,
	combout => \inst|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\);

-- Location: LCCOMB_X18_Y9_N14
\inst|Mod2|auto_generated|divider|divider|StageOut[18]~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mod2|auto_generated|divider|divider|StageOut[18]~37_combout\ = (!\inst|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \inst|Mod2|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \inst|Mod2|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	combout => \inst|Mod2|auto_generated|divider|divider|StageOut[18]~37_combout\);

-- Location: LCCOMB_X18_Y9_N18
\inst|Mod2|auto_generated|divider|divider|StageOut[17]~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mod2|auto_generated|divider|divider|StageOut[17]~39_combout\ = (\inst|Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ & !\inst|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datad => \inst|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst|Mod2|auto_generated|divider|divider|StageOut[17]~39_combout\);

-- Location: LCCOMB_X18_Y9_N0
\inst|Mod2|auto_generated|divider|divider|StageOut[16]~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mod2|auto_generated|divider|divider|StageOut[16]~41_combout\ = (!\inst|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \inst|Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \inst|Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	combout => \inst|Mod2|auto_generated|divider|divider|StageOut[16]~41_combout\);

-- Location: LCCOMB_X18_Y9_N30
\inst|Mod2|auto_generated|divider|divider|StageOut[15]~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mod2|auto_generated|divider|divider|StageOut[15]~43_combout\ = (!\inst|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \inst13|display\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \inst13|display\(4),
	combout => \inst|Mod2|auto_generated|divider|divider|StageOut[15]~43_combout\);

-- Location: LCCOMB_X18_Y9_N26
\inst|Mod2|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mod2|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ = CARRY((!\inst|Mod2|auto_generated|divider|divider|StageOut[18]~36_combout\ & (!\inst|Mod2|auto_generated|divider|divider|StageOut[18]~37_combout\ & 
-- !\inst|Mod2|auto_generated|divider|divider|add_sub_4_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod2|auto_generated|divider|divider|StageOut[18]~36_combout\,
	datab => \inst|Mod2|auto_generated|divider|divider|StageOut[18]~37_combout\,
	datad => VCC,
	cin => \inst|Mod2|auto_generated|divider|divider|add_sub_4_result_int[3]~5\,
	cout => \inst|Mod2|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\);

-- Location: LCCOMB_X18_Y9_N28
\inst|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ = \inst|Mod2|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst|Mod2|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\,
	combout => \inst|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\);

-- Location: LCCOMB_X19_Y9_N22
\inst|Mod2|auto_generated|divider|divider|StageOut[22]~65\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mod2|auto_generated|divider|divider|StageOut[22]~65_combout\ = (\inst|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\inst|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\inst13|display\(5)))) 
-- # (!\inst|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\inst|Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datab => \inst13|display\(5),
	datac => \inst|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \inst|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst|Mod2|auto_generated|divider|divider|StageOut[22]~65_combout\);

-- Location: LCCOMB_X19_Y9_N0
\inst|Mod2|auto_generated|divider|divider|StageOut[23]~64\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mod2|auto_generated|divider|divider|StageOut[23]~64_combout\ = (\inst|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\inst|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\inst13|display\(6))) # 
-- (!\inst|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\inst|Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|display\(6),
	datab => \inst|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \inst|Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datad => \inst|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst|Mod2|auto_generated|divider|divider|StageOut[23]~64_combout\);

-- Location: LCCOMB_X19_Y9_N18
\inst|Mod2|auto_generated|divider|divider|StageOut[21]~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mod2|auto_generated|divider|divider|StageOut[21]~46_combout\ = (\inst13|display\(4) & \inst|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|display\(4),
	datad => \inst|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst|Mod2|auto_generated|divider|divider|StageOut[21]~46_combout\);

-- Location: LCCOMB_X19_Y9_N30
\inst|Mod2|auto_generated|divider|divider|StageOut[20]~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mod2|auto_generated|divider|divider|StageOut[20]~48_combout\ = (\inst13|display\(3) & \inst|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|display\(3),
	datad => \inst|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst|Mod2|auto_generated|divider|divider|StageOut[20]~48_combout\);

-- Location: LCCOMB_X19_Y9_N2
\inst|Mod2|auto_generated|divider|divider|add_sub_5_result_int[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mod2|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ = (((\inst|Mod2|auto_generated|divider|divider|StageOut[20]~49_combout\) # (\inst|Mod2|auto_generated|divider|divider|StageOut[20]~48_combout\)))
-- \inst|Mod2|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ = CARRY((\inst|Mod2|auto_generated|divider|divider|StageOut[20]~49_combout\) # (\inst|Mod2|auto_generated|divider|divider|StageOut[20]~48_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod2|auto_generated|divider|divider|StageOut[20]~49_combout\,
	datab => \inst|Mod2|auto_generated|divider|divider|StageOut[20]~48_combout\,
	datad => VCC,
	combout => \inst|Mod2|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	cout => \inst|Mod2|auto_generated|divider|divider|add_sub_5_result_int[1]~1\);

-- Location: LCCOMB_X19_Y9_N4
\inst|Mod2|auto_generated|divider|divider|add_sub_5_result_int[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mod2|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ = (\inst|Mod2|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (((\inst|Mod2|auto_generated|divider|divider|StageOut[21]~47_combout\) # 
-- (\inst|Mod2|auto_generated|divider|divider|StageOut[21]~46_combout\)))) # (!\inst|Mod2|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (!\inst|Mod2|auto_generated|divider|divider|StageOut[21]~47_combout\ & 
-- (!\inst|Mod2|auto_generated|divider|divider|StageOut[21]~46_combout\)))
-- \inst|Mod2|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ = CARRY((!\inst|Mod2|auto_generated|divider|divider|StageOut[21]~47_combout\ & (!\inst|Mod2|auto_generated|divider|divider|StageOut[21]~46_combout\ & 
-- !\inst|Mod2|auto_generated|divider|divider|add_sub_5_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod2|auto_generated|divider|divider|StageOut[21]~47_combout\,
	datab => \inst|Mod2|auto_generated|divider|divider|StageOut[21]~46_combout\,
	datad => VCC,
	cin => \inst|Mod2|auto_generated|divider|divider|add_sub_5_result_int[1]~1\,
	combout => \inst|Mod2|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	cout => \inst|Mod2|auto_generated|divider|divider|add_sub_5_result_int[2]~3\);

-- Location: LCCOMB_X19_Y9_N8
\inst|Mod2|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mod2|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ = CARRY((!\inst|Mod2|auto_generated|divider|divider|StageOut[23]~44_combout\ & (!\inst|Mod2|auto_generated|divider|divider|StageOut[23]~64_combout\ & 
-- !\inst|Mod2|auto_generated|divider|divider|add_sub_5_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod2|auto_generated|divider|divider|StageOut[23]~44_combout\,
	datab => \inst|Mod2|auto_generated|divider|divider|StageOut[23]~64_combout\,
	datad => VCC,
	cin => \inst|Mod2|auto_generated|divider|divider|add_sub_5_result_int[3]~5\,
	cout => \inst|Mod2|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\);

-- Location: LCCOMB_X19_Y9_N10
\inst|Mod2|auto_generated|divider|divider|add_sub_5_result_int[5]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mod2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ = \inst|Mod2|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst|Mod2|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\,
	combout => \inst|Mod2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\);

-- Location: LCCOMB_X19_Y6_N18
\inst|Mod2|auto_generated|divider|divider|StageOut[28]~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mod2|auto_generated|divider|divider|StageOut[28]~62_combout\ = (\inst|Mod2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\inst|Mod2|auto_generated|divider|divider|StageOut[22]~65_combout\) # 
-- ((\inst|Mod2|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ & !\inst|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod2|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datab => \inst|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \inst|Mod2|auto_generated|divider|divider|StageOut[22]~65_combout\,
	datad => \inst|Mod2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \inst|Mod2|auto_generated|divider|divider|StageOut[28]~62_combout\);

-- Location: LCCOMB_X19_Y9_N28
\inst|Mod2|auto_generated|divider|divider|StageOut[27]~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mod2|auto_generated|divider|divider|StageOut[27]~51_combout\ = (\inst|Mod2|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ & !\inst|Mod2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Mod2|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datad => \inst|Mod2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \inst|Mod2|auto_generated|divider|divider|StageOut[27]~51_combout\);

-- Location: LCCOMB_X20_Y9_N28
\inst|Mod2|auto_generated|divider|divider|StageOut[26]~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mod2|auto_generated|divider|divider|StageOut[26]~53_combout\ = (\inst|Mod2|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ & !\inst|Mod2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod2|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datad => \inst|Mod2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \inst|Mod2|auto_generated|divider|divider|StageOut[26]~53_combout\);

-- Location: LCCOMB_X19_Y6_N26
\inst|Mod2|auto_generated|divider|divider|StageOut[25]~55\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mod2|auto_generated|divider|divider|StageOut[25]~55_combout\ = (\inst13|display\(2) & !\inst|Mod2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|display\(2),
	datad => \inst|Mod2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \inst|Mod2|auto_generated|divider|divider|StageOut[25]~55_combout\);

-- Location: LCCOMB_X19_Y6_N6
\inst|Mod2|auto_generated|divider|divider|add_sub_6_result_int[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mod2|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ = (((\inst|Mod2|auto_generated|divider|divider|StageOut[25]~54_combout\) # (\inst|Mod2|auto_generated|divider|divider|StageOut[25]~55_combout\)))
-- \inst|Mod2|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ = CARRY((\inst|Mod2|auto_generated|divider|divider|StageOut[25]~54_combout\) # (\inst|Mod2|auto_generated|divider|divider|StageOut[25]~55_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod2|auto_generated|divider|divider|StageOut[25]~54_combout\,
	datab => \inst|Mod2|auto_generated|divider|divider|StageOut[25]~55_combout\,
	datad => VCC,
	combout => \inst|Mod2|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	cout => \inst|Mod2|auto_generated|divider|divider|add_sub_6_result_int[1]~1\);

-- Location: LCCOMB_X19_Y6_N12
\inst|Mod2|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mod2|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\ = CARRY((!\inst|Mod2|auto_generated|divider|divider|StageOut[28]~50_combout\ & (!\inst|Mod2|auto_generated|divider|divider|StageOut[28]~62_combout\ & 
-- !\inst|Mod2|auto_generated|divider|divider|add_sub_6_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod2|auto_generated|divider|divider|StageOut[28]~50_combout\,
	datab => \inst|Mod2|auto_generated|divider|divider|StageOut[28]~62_combout\,
	datad => VCC,
	cin => \inst|Mod2|auto_generated|divider|divider|add_sub_6_result_int[3]~5\,
	cout => \inst|Mod2|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\);

-- Location: LCCOMB_X19_Y6_N14
\inst|Mod2|auto_generated|divider|divider|add_sub_6_result_int[5]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mod2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ = \inst|Mod2|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst|Mod2|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\,
	combout => \inst|Mod2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\);

-- Location: LCCOMB_X19_Y6_N24
\inst|Mod2|auto_generated|divider|divider|StageOut[31]~61\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mod2|auto_generated|divider|divider|StageOut[31]~61_combout\ = (!\inst|Mod2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & \inst|Mod2|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Mod2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \inst|Mod2|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	combout => \inst|Mod2|auto_generated|divider|divider|StageOut[31]~61_combout\);

-- Location: LCCOMB_X19_Y6_N28
\inst|Mod2|auto_generated|divider|divider|StageOut[33]~63\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mod2|auto_generated|divider|divider|StageOut[33]~63_combout\ = (\inst|Mod2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\inst|Mod2|auto_generated|divider|divider|StageOut[27]~66_combout\) # 
-- ((\inst|Mod2|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ & !\inst|Mod2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod2|auto_generated|divider|divider|StageOut[27]~66_combout\,
	datab => \inst|Mod2|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datac => \inst|Mod2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \inst|Mod2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \inst|Mod2|auto_generated|divider|divider|StageOut[33]~63_combout\);

-- Location: LCCOMB_X19_Y6_N22
\inst|Mod2|auto_generated|divider|divider|StageOut[32]~67\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mod2|auto_generated|divider|divider|StageOut[32]~67_combout\ = (\inst|Mod2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\inst|Mod2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & (\inst13|display\(3))) # 
-- (!\inst|Mod2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\inst|Mod2|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|display\(3),
	datab => \inst|Mod2|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datac => \inst|Mod2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \inst|Mod2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \inst|Mod2|auto_generated|divider|divider|StageOut[32]~67_combout\);

-- Location: LCFF_X18_Y8_N9
\inst13|display[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst13|display[1]~6_combout\,
	sdata => \inst4|dis\(1),
	sload => \inst13|ALT_INV_display[4]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst13|display\(1));

-- Location: LCCOMB_X19_Y6_N4
\inst|Mod2|auto_generated|divider|divider|StageOut[30]~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mod2|auto_generated|divider|divider|StageOut[30]~56_combout\ = (\inst|Mod2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & \inst13|display\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Mod2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \inst13|display\(1),
	combout => \inst|Mod2|auto_generated|divider|divider|StageOut[30]~56_combout\);

-- Location: LCCOMB_X20_Y6_N18
\inst|Mod2|auto_generated|divider|divider|add_sub_7_result_int[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mod2|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ = (\inst|Mod2|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ & (((\inst|Mod2|auto_generated|divider|divider|StageOut[31]~60_combout\) # 
-- (\inst|Mod2|auto_generated|divider|divider|StageOut[31]~61_combout\)))) # (!\inst|Mod2|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ & (!\inst|Mod2|auto_generated|divider|divider|StageOut[31]~60_combout\ & 
-- (!\inst|Mod2|auto_generated|divider|divider|StageOut[31]~61_combout\)))
-- \inst|Mod2|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ = CARRY((!\inst|Mod2|auto_generated|divider|divider|StageOut[31]~60_combout\ & (!\inst|Mod2|auto_generated|divider|divider|StageOut[31]~61_combout\ & 
-- !\inst|Mod2|auto_generated|divider|divider|add_sub_7_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod2|auto_generated|divider|divider|StageOut[31]~60_combout\,
	datab => \inst|Mod2|auto_generated|divider|divider|StageOut[31]~61_combout\,
	datad => VCC,
	cin => \inst|Mod2|auto_generated|divider|divider|add_sub_7_result_int[1]~1\,
	combout => \inst|Mod2|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	cout => \inst|Mod2|auto_generated|divider|divider|add_sub_7_result_int[2]~3\);

-- Location: LCCOMB_X20_Y6_N22
\inst|Mod2|auto_generated|divider|divider|add_sub_7_result_int[4]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mod2|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ = CARRY((!\inst|Mod2|auto_generated|divider|divider|StageOut[33]~58_combout\ & (!\inst|Mod2|auto_generated|divider|divider|StageOut[33]~63_combout\ & 
-- !\inst|Mod2|auto_generated|divider|divider|add_sub_7_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod2|auto_generated|divider|divider|StageOut[33]~58_combout\,
	datab => \inst|Mod2|auto_generated|divider|divider|StageOut[33]~63_combout\,
	datad => VCC,
	cin => \inst|Mod2|auto_generated|divider|divider|add_sub_7_result_int[3]~5\,
	cout => \inst|Mod2|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\);

-- Location: LCCOMB_X20_Y6_N24
\inst|Mod2|auto_generated|divider|divider|add_sub_7_result_int[5]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mod2|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ = \inst|Mod2|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst|Mod2|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\,
	combout => \inst|Mod2|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\);

-- Location: LCCOMB_X20_Y6_N6
\inst|Mux1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mux1~3_combout\ = (\inst|Mod2|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & ((\inst|Mod2|auto_generated|divider|divider|StageOut[31]~60_combout\) # ((\inst|Mod2|auto_generated|divider|divider|StageOut[31]~61_combout\)))) # 
-- (!\inst|Mod2|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & (((\inst|Mod2|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod2|auto_generated|divider|divider|StageOut[31]~60_combout\,
	datab => \inst|Mod2|auto_generated|divider|divider|StageOut[31]~61_combout\,
	datac => \inst|Mod2|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datad => \inst|Mod2|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	combout => \inst|Mux1~3_combout\);

-- Location: LCCOMB_X20_Y6_N4
\inst|Mux1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mux1~4_combout\ = (\inst|col\(1) & (!\inst|col\(0) & ((\inst|Mux1~3_combout\)))) # (!\inst|col\(1) & (\inst|col\(0) & (\inst|Mux1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|col\(1),
	datab => \inst|col\(0),
	datac => \inst|Mux1~2_combout\,
	datad => \inst|Mux1~3_combout\,
	combout => \inst|Mux1~4_combout\);

-- Location: LCCOMB_X21_Y6_N20
\inst|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add0~0_combout\ = \inst|col\(0) $ (\inst|col\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|col\(0),
	datad => \inst|col\(1),
	combout => \inst|Add0~0_combout\);

-- Location: LCFF_X21_Y6_N27
\inst|col[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst17|out_16k~clkctrl_outclk\,
	sdata => \inst|Add0~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|col\(1));

-- Location: LCFF_X18_Y8_N3
\inst13|display[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst13|display[0]~7_combout\,
	sdata => \inst4|dis\(0),
	sload => \inst13|ALT_INV_display[4]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst13|display\(0));

-- Location: LCCOMB_X21_Y6_N24
\inst|Mux3~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mux3~3_combout\ = (!\inst|col\(0) & ((\inst|col\(1) & ((\inst13|display\(0)))) # (!\inst|col\(1) & (!\inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datab => \inst13|display\(0),
	datac => \inst|col\(0),
	datad => \inst|col\(1),
	combout => \inst|Mux3~3_combout\);

-- Location: LCCOMB_X21_Y6_N0
\inst|Mux3~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mux3~4_combout\ = (\inst|Mux3~3_combout\) # ((!\inst|Div2|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & (!\inst|col\(1) & \inst|col\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div2|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datab => \inst|col\(1),
	datac => \inst|col\(0),
	datad => \inst|Mux3~3_combout\,
	combout => \inst|Mux3~4_combout\);

-- Location: LCCOMB_X22_Y7_N16
\inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ = !\inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~9\,
	combout => \inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\);

-- Location: LCCOMB_X21_Y6_N12
\inst|Mux3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mux3~2_combout\ = (\inst|col\(0) & !\inst|col\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|col\(0),
	datad => \inst|col\(1),
	combout => \inst|Mux3~2_combout\);

-- Location: LCCOMB_X20_Y6_N0
\inst|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mux2~0_combout\ = (!\inst|col\(0) & ((\inst|Mod2|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & ((\inst13|display\(1)))) # (!\inst|Mod2|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & 
-- (\inst|Mod2|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod2|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	datab => \inst13|display\(1),
	datac => \inst|Mod2|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datad => \inst|col\(0),
	combout => \inst|Mux2~0_combout\);

-- Location: LCCOMB_X20_Y6_N30
\inst|Mux2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mux2~2_combout\ = (\inst|Mux2~1_combout\ & ((\inst|Mux3~2_combout\) # ((\inst|Add0~0_combout\ & \inst|Mux2~0_combout\)))) # (!\inst|Mux2~1_combout\ & (\inst|Add0~0_combout\ & ((\inst|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux2~1_combout\,
	datab => \inst|Add0~0_combout\,
	datac => \inst|Mux3~2_combout\,
	datad => \inst|Mux2~0_combout\,
	combout => \inst|Mux2~2_combout\);

-- Location: LCCOMB_X20_Y6_N12
\inst|Mux2~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mux2~3_combout\ = (\inst|Mux2~2_combout\) # ((!\inst|col\(1) & (!\inst|col\(0) & !\inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|col\(1),
	datab => \inst|col\(0),
	datac => \inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \inst|Mux2~2_combout\,
	combout => \inst|Mux2~3_combout\);

-- Location: LCCOMB_X21_Y6_N16
\inst|WideOr0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|WideOr0~0_combout\ = (\inst|Mux2~3_combout\ & (!\inst|Mux0~6_combout\)) # (!\inst|Mux2~3_combout\ & (\inst|Mux1~4_combout\ $ (((\inst|Mux0~6_combout\) # (!\inst|Mux3~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux0~6_combout\,
	datab => \inst|Mux1~4_combout\,
	datac => \inst|Mux3~4_combout\,
	datad => \inst|Mux2~3_combout\,
	combout => \inst|WideOr0~0_combout\);

-- Location: LCFF_X21_Y6_N17
\inst|OL[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst17|out_16k~clkctrl_outclk\,
	datain => \inst|WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|OL\(6));

-- Location: LCCOMB_X21_Y6_N28
\inst|WideOr1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|WideOr1~0_combout\ = (\inst|Mux0~6_combout\ & (!\inst|Mux1~4_combout\ & ((!\inst|Mux2~3_combout\)))) # (!\inst|Mux0~6_combout\ & ((\inst|Mux3~4_combout\ $ (!\inst|Mux2~3_combout\)) # (!\inst|Mux1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux0~6_combout\,
	datab => \inst|Mux1~4_combout\,
	datac => \inst|Mux3~4_combout\,
	datad => \inst|Mux2~3_combout\,
	combout => \inst|WideOr1~0_combout\);

-- Location: LCFF_X21_Y6_N29
\inst|OL[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst17|out_16k~clkctrl_outclk\,
	datain => \inst|WideOr1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|OL\(5));

-- Location: LCCOMB_X20_Y6_N28
\inst|WideOr2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|WideOr2~0_combout\ = (\inst|Mux1~4_combout\ & (!\inst|Mux0~6_combout\)) # (!\inst|Mux1~4_combout\ & (((!\inst|Mux0~6_combout\ & \inst|Mux3~4_combout\)) # (!\inst|Mux2~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux0~6_combout\,
	datab => \inst|Mux3~4_combout\,
	datac => \inst|Mux1~4_combout\,
	datad => \inst|Mux2~3_combout\,
	combout => \inst|WideOr2~0_combout\);

-- Location: LCFF_X20_Y6_N29
\inst|OL[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst17|out_16k~clkctrl_outclk\,
	datain => \inst|WideOr2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|OL\(4));

-- Location: LCCOMB_X20_Y6_N10
\inst|WideOr3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|WideOr3~0_combout\ = (\inst|Mux2~3_combout\ & (!\inst|Mux0~6_combout\ & ((!\inst|Mux1~4_combout\) # (!\inst|Mux3~4_combout\)))) # (!\inst|Mux2~3_combout\ & (\inst|Mux1~4_combout\ $ (((\inst|Mux0~6_combout\) # (!\inst|Mux3~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux0~6_combout\,
	datab => \inst|Mux3~4_combout\,
	datac => \inst|Mux1~4_combout\,
	datad => \inst|Mux2~3_combout\,
	combout => \inst|WideOr3~0_combout\);

-- Location: LCFF_X20_Y6_N11
\inst|OL[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst17|out_16k~clkctrl_outclk\,
	datain => \inst|WideOr3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|OL\(3));

-- Location: LCCOMB_X20_Y6_N8
\inst|WideOr4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|WideOr4~0_combout\ = (!\inst|Mux3~4_combout\ & ((\inst|Mux2~3_combout\ & (!\inst|Mux0~6_combout\)) # (!\inst|Mux2~3_combout\ & ((!\inst|Mux1~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux0~6_combout\,
	datab => \inst|Mux3~4_combout\,
	datac => \inst|Mux1~4_combout\,
	datad => \inst|Mux2~3_combout\,
	combout => \inst|WideOr4~0_combout\);

-- Location: LCFF_X20_Y6_N9
\inst|OL[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst17|out_16k~clkctrl_outclk\,
	datain => \inst|WideOr4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|OL\(2));

-- Location: LCCOMB_X21_Y6_N14
\inst|WideOr5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|WideOr5~0_combout\ = (\inst|Mux1~4_combout\ & (!\inst|Mux0~6_combout\ & ((!\inst|Mux2~3_combout\) # (!\inst|Mux3~4_combout\)))) # (!\inst|Mux1~4_combout\ & (!\inst|Mux2~3_combout\ & ((\inst|Mux0~6_combout\) # (!\inst|Mux3~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux0~6_combout\,
	datab => \inst|Mux1~4_combout\,
	datac => \inst|Mux3~4_combout\,
	datad => \inst|Mux2~3_combout\,
	combout => \inst|WideOr5~0_combout\);

-- Location: LCFF_X21_Y6_N15
\inst|OL[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst17|out_16k~clkctrl_outclk\,
	datain => \inst|WideOr5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|OL\(1));

-- Location: LCCOMB_X20_Y6_N26
\inst|WideOr6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|WideOr6~0_combout\ = (\inst|Mux1~4_combout\ & (!\inst|Mux0~6_combout\ & ((!\inst|Mux2~3_combout\) # (!\inst|Mux3~4_combout\)))) # (!\inst|Mux1~4_combout\ & (\inst|Mux0~6_combout\ $ (((\inst|Mux2~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux0~6_combout\,
	datab => \inst|Mux3~4_combout\,
	datac => \inst|Mux1~4_combout\,
	datad => \inst|Mux2~3_combout\,
	combout => \inst|WideOr6~0_combout\);

-- Location: LCFF_X20_Y6_N27
\inst|OL[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst17|out_16k~clkctrl_outclk\,
	datain => \inst|WideOr6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|OL\(0));

-- Location: LCCOMB_X14_Y4_N8
\inst13|led[7]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|led[7]~3_combout\ = (\inst13|LessThan2~7_combout\ & ((\inst13|led\(7)))) # (!\inst13|LessThan2~7_combout\ & (\inst13|led~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|led~12_combout\,
	datac => \inst13|led\(7),
	datad => \inst13|LessThan2~7_combout\,
	combout => \inst13|led[7]~3_combout\);

-- Location: LCCOMB_X13_Y8_N14
\inst13|led~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|led~13_combout\ = (\inst13|led\(7)) # ((\inst13|backStatus~12_combout\ & (\inst13|Equal6~0_combout\ & \inst13|degree~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|backStatus~12_combout\,
	datab => \inst13|led\(7),
	datac => \inst13|Equal6~0_combout\,
	datad => \inst13|degree~18_combout\,
	combout => \inst13|led~13_combout\);

-- Location: LCFF_X14_Y4_N9
\inst13|led[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst13|led[7]~3_combout\,
	sdata => \inst13|led~13_combout\,
	sload => \inst13|state.10~regout\,
	ena => \inst13|speed~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst13|led\(7));

-- Location: LCFF_X15_Y6_N21
\inst13|led[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \inst13|speed~33_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst13|led\(6));

-- Location: LCCOMB_X14_Y4_N10
\inst13|led~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|led~14_combout\ = (\inst13|state.00~regout\ & !\inst13|state.10~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|state.00~regout\,
	datad => \inst13|state.10~regout\,
	combout => \inst13|led~14_combout\);

-- Location: LCFF_X14_Y4_N11
\inst13|led[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst13|led~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst13|led\(5));

-- Location: LCCOMB_X14_Y9_N4
\inst13|led[4]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|led[4]~28_combout\ = !\inst13|mystate\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst13|mystate\(1),
	combout => \inst13|led[4]~28_combout\);

-- Location: LCCOMB_X14_Y10_N10
\inst13|speed~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|speed~34_combout\ = (!\inst13|state.10~regout\ & (\inst13|state.00~regout\ & !\inst13|state.01~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|state.10~regout\,
	datac => \inst13|state.00~regout\,
	datad => \inst13|state.01~regout\,
	combout => \inst13|speed~34_combout\);

-- Location: LCFF_X14_Y10_N25
\inst13|led[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \inst13|led[4]~28_combout\,
	sload => VCC,
	ena => \inst13|speed~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst13|led\(4));

-- Location: LCCOMB_X14_Y10_N30
\inst13|led[3]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|led[3]~29_combout\ = !\inst13|mystate\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst13|mystate\(0),
	combout => \inst13|led[3]~29_combout\);

-- Location: LCFF_X14_Y10_N31
\inst13|led[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst13|led[3]~29_combout\,
	ena => \inst13|speed~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst13|led\(3));

-- Location: LCCOMB_X12_Y8_N0
\inst13|led[1]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|led[1]~26_combout\ = (\inst13|state.10~regout\ & (((!\inst13|Equal5~0_combout\)))) # (!\inst13|state.10~regout\ & (((\inst13|mystate\(0))) # (!\inst13|mystate\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|state.10~regout\,
	datab => \inst13|mystate\(1),
	datac => \inst13|Equal5~0_combout\,
	datad => \inst13|mystate\(0),
	combout => \inst13|led[1]~26_combout\);

-- Location: LCCOMB_X12_Y8_N8
\inst13|led~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|led~17_combout\ = (\inst13|led~16_combout\ & (((\dinfrared~combout\(2)) # (!\inst13|led[1]~26_combout\)))) # (!\inst13|led~16_combout\ & (\inst13|led~11_combout\ & ((\inst13|led[1]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|led~16_combout\,
	datab => \inst13|led~11_combout\,
	datac => \dinfrared~combout\(2),
	datad => \inst13|led[1]~26_combout\,
	combout => \inst13|led~17_combout\);

-- Location: LCCOMB_X12_Y8_N14
\inst13|led[1]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|led[1]~18_combout\ = ((\inst13|LessThan2~7_combout\) # ((!\inst13|mystate\(1) & !\inst13|mystate\(0)))) # (!\inst13|led~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|mystate\(1),
	datab => \inst13|mystate\(0),
	datac => \inst13|led~10_combout\,
	datad => \inst13|LessThan2~7_combout\,
	combout => \inst13|led[1]~18_combout\);

-- Location: LCCOMB_X12_Y8_N4
\inst13|led[1]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|led[1]~19_combout\ = (\inst13|speed~33_combout\ & ((\inst13|state.10~regout\ & (!\inst9|data\(5))) # (!\inst13|state.10~regout\ & ((!\inst13|led[1]~18_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|data\(5),
	datab => \inst13|state.10~regout\,
	datac => \inst13|led[1]~18_combout\,
	datad => \inst13|speed~33_combout\,
	combout => \inst13|led[1]~19_combout\);

-- Location: LCFF_X12_Y8_N9
\inst13|led[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst13|led~17_combout\,
	ena => \inst13|led[1]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst13|led\(1));

-- Location: LCCOMB_X15_Y10_N4
\inst13|led~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|led~20_combout\ = (\inst13|backStatus.10~regout\) # ((\inst13|flag~regout\ $ (\inst9|data\(0))) # (!\inst13|backStatus.00~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|backStatus.10~regout\,
	datab => \inst13|flag~regout\,
	datac => \inst13|backStatus.00~regout\,
	datad => \inst9|data\(0),
	combout => \inst13|led~20_combout\);

-- Location: LCCOMB_X12_Y8_N10
\inst13|led~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|led~23_combout\ = (\inst13|led~22_combout\ & ((\dinfrared~combout\(1)) # ((!\inst13|led[1]~15_combout\)))) # (!\inst13|led~22_combout\ & (((\inst13|led[1]~15_combout\ & !\inst13|led~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101011011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|led~22_combout\,
	datab => \dinfrared~combout\(1),
	datac => \inst13|led[1]~15_combout\,
	datad => \inst13|led~20_combout\,
	combout => \inst13|led~23_combout\);

-- Location: LCFF_X12_Y8_N11
\inst13|led[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst13|led~23_combout\,
	ena => \inst13|led[1]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst13|led\(0));

-- Location: LCCOMB_X20_Y4_N16
\inst|Decoder0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Decoder0~0_combout\ = (\inst|col\(0) & \inst|col\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|col\(0),
	datad => \inst|col\(1),
	combout => \inst|Decoder0~0_combout\);

-- Location: LCFF_X20_Y4_N17
\inst|DIG[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst17|out_16k~clkctrl_outclk\,
	datain => \inst|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|DIG\(3));

-- Location: LCCOMB_X20_Y4_N2
\inst|Decoder0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Decoder0~1_combout\ = (!\inst|col\(0) & !\inst|col\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|col\(0),
	datad => \inst|col\(1),
	combout => \inst|Decoder0~1_combout\);

-- Location: LCFF_X20_Y4_N3
\inst|DIG[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst17|out_16k~clkctrl_outclk\,
	datain => \inst|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|DIG\(2));

-- Location: LCFF_X20_Y6_N23
\inst|DIG[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst17|out_16k~clkctrl_outclk\,
	sdata => \inst|Mux3~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|DIG\(1));

-- Location: LCCOMB_X20_Y4_N4
\inst|Decoder0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Decoder0~2_combout\ = (!\inst|col\(0) & \inst|col\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|col\(0),
	datad => \inst|col\(1),
	combout => \inst|Decoder0~2_combout\);

-- Location: LCFF_X20_Y4_N5
\inst|DIG[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst17|out_16k~clkctrl_outclk\,
	datain => \inst|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|DIG\(0));

-- Location: PIN_137,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\txd~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst3|txd~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_txd);

-- Location: PIN_99,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\dinfrared[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_dinfrared(3));

-- Location: PIN_75,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\dinfrared[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_dinfrared(0));

-- Location: PIN_163,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Infrared[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Infrared(1));

-- Location: PIN_150,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Infrared[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Infrared(0));

-- Location: PIN_23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\speedInfrac~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_speedInfrac);

-- Location: PIN_24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Signs[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Signs(1));

-- Location: PIN_27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Signs[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Signs(0));

-- Location: PIN_69,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Touch[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Touch(3));

-- Location: PIN_70,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Touch[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Touch(2));

-- Location: PIN_199,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\pwml~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst19|PWML~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_pwml);

-- Location: PIN_201,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\pwmr~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst19|PWMR~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_pwmr);

-- Location: PIN_152,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\beep~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst6|beep~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_beep);

-- Location: PIN_205,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\steer~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst18|steer~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_steer);

-- Location: PIN_169,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ultra_trigger~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst17|out_8~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ultra_trigger);

-- Location: PIN_146,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ultraback_trigger~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst17|out_8~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ultraback_trigger);

-- Location: PIN_171,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ultra_right_trigger~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst17|out_8~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ultra_right_trigger);

-- Location: PIN_147,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ultra_left_trigger~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst17|out_8~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ultra_left_trigger);

-- Location: PIN_44,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Digital[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst|OL\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Digital(6));

-- Location: PIN_40,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Digital[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst|OL\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Digital(5));

-- Location: PIN_45,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Digital[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst|OL\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Digital(4));

-- Location: PIN_47,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Digital[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst|OL\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Digital(3));

-- Location: PIN_48,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Digital[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst|OL\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Digital(2));

-- Location: PIN_41,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Digital[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst|OL\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Digital(1));

-- Location: PIN_43,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Digital[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst|OL\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Digital(0));

-- Location: PIN_56,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Led[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst13|led\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Led(7));

-- Location: PIN_57,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Led[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst13|led\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Led(6));

-- Location: PIN_58,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Led[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst13|led\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Led(5));

-- Location: PIN_59,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Led[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst13|led\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Led(4));

-- Location: PIN_60,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Led[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst13|led\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Led(3));

-- Location: PIN_61,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Led[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Led(2));

-- Location: PIN_63,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Led[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst13|led\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Led(1));

-- Location: PIN_64,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Led[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst13|led\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Led(0));

-- Location: PIN_39,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Position[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst|DIG\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Position(3));

-- Location: PIN_37,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Position[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst|DIG\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Position(2));

-- Location: PIN_36,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Position[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst|DIG\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Position(1));

-- Location: PIN_35,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Position[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst|DIG\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Position(0));
END structure;


