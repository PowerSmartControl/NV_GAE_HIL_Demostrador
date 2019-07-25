-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2017.4
-- Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity p_hls_fptoui_float_i is
port (
    ap_ready : OUT STD_LOGIC;
    x : IN STD_LOGIC_VECTOR (31 downto 0);
    ap_return : OUT STD_LOGIC_VECTOR (15 downto 0) );
end;


architecture behav of p_hls_fptoui_float_i is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv32_17 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000010111";
    constant ap_const_lv32_1E : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000011110";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv9_181 : STD_LOGIC_VECTOR (8 downto 0) := "110000001";
    constant ap_const_lv32_8 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001000";
    constant ap_const_lv8_7F : STD_LOGIC_VECTOR (7 downto 0) := "01111111";
    constant ap_const_lv32_18 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000011000";
    constant ap_const_lv32_27 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000100111";
    constant ap_const_logic_0 : STD_LOGIC := '0';

    signal p_Val2_s_fu_38_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal loc_V_1_fu_52_p1 : STD_LOGIC_VECTOR (22 downto 0);
    signal tmp_3_i_i_fu_56_p4 : STD_LOGIC_VECTOR (24 downto 0);
    signal loc_V_fu_42_p4 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp_i_i_i_cast1_fu_70_p1 : STD_LOGIC_VECTOR (8 downto 0);
    signal sh_assign_fu_74_p2 : STD_LOGIC_VECTOR (8 downto 0);
    signal tmp_5_i_i_fu_88_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal isNeg_fu_80_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_5_i_i_cast_fu_94_p1 : STD_LOGIC_VECTOR (8 downto 0);
    signal sh_assign_1_fu_98_p3 : STD_LOGIC_VECTOR (8 downto 0);
    signal sh_assign_1_cast_fu_106_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal sh_assign_1_cast_cas_fu_110_p1 : STD_LOGIC_VECTOR (24 downto 0);
    signal tmp_3_i_i_cast2_fu_66_p1 : STD_LOGIC_VECTOR (62 downto 0);
    signal tmp_7_i_i_fu_114_p1 : STD_LOGIC_VECTOR (62 downto 0);
    signal tmp_8_i_i_fu_118_p2 : STD_LOGIC_VECTOR (24 downto 0);
    signal tmp_fu_130_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_i_i_fu_124_p2 : STD_LOGIC_VECTOR (62 downto 0);
    signal tmp_1_fu_138_p1 : STD_LOGIC_VECTOR (15 downto 0);
    signal tmp_2_fu_142_p4 : STD_LOGIC_VECTOR (15 downto 0);


begin



    ap_ready <= ap_const_logic_1;
    ap_return <= 
        tmp_1_fu_138_p1 when (isNeg_fu_80_p3(0) = '1') else 
        tmp_2_fu_142_p4;
    isNeg_fu_80_p3 <= sh_assign_fu_74_p2(8 downto 8);
    loc_V_1_fu_52_p1 <= p_Val2_s_fu_38_p1(23 - 1 downto 0);
    loc_V_fu_42_p4 <= p_Val2_s_fu_38_p1(30 downto 23);
    p_Val2_s_fu_38_p1 <= x;
        sh_assign_1_cast_cas_fu_110_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(sh_assign_1_fu_98_p3),25));

        sh_assign_1_cast_fu_106_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(sh_assign_1_fu_98_p3),32));

    sh_assign_1_fu_98_p3 <= 
        tmp_5_i_i_cast_fu_94_p1 when (isNeg_fu_80_p3(0) = '1') else 
        sh_assign_fu_74_p2;
    sh_assign_fu_74_p2 <= std_logic_vector(signed(ap_const_lv9_181) + signed(tmp_i_i_i_cast1_fu_70_p1));
    tmp_1_fu_138_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_fu_130_p3),16));
    tmp_2_fu_142_p4 <= tmp_i_i_fu_124_p2(39 downto 24);
    tmp_3_i_i_cast2_fu_66_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_3_i_i_fu_56_p4),63));
    tmp_3_i_i_fu_56_p4 <= ((ap_const_lv1_1 & loc_V_1_fu_52_p1) & ap_const_lv1_0);
        tmp_5_i_i_cast_fu_94_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(tmp_5_i_i_fu_88_p2),9));

    tmp_5_i_i_fu_88_p2 <= std_logic_vector(unsigned(ap_const_lv8_7F) - unsigned(loc_V_fu_42_p4));
    tmp_7_i_i_fu_114_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(sh_assign_1_cast_fu_106_p1),63));
    tmp_8_i_i_fu_118_p2 <= std_logic_vector(shift_right(unsigned(tmp_3_i_i_fu_56_p4),to_integer(unsigned('0' & sh_assign_1_cast_cas_fu_110_p1(25-1 downto 0)))));
    tmp_fu_130_p3 <= tmp_8_i_i_fu_118_p2(24 downto 24);
    tmp_i_i_fu_124_p2 <= std_logic_vector(shift_left(unsigned(tmp_3_i_i_cast2_fu_66_p1),to_integer(unsigned('0' & tmp_7_i_i_fu_114_p1(31-1 downto 0)))));
    tmp_i_i_i_cast1_fu_70_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(loc_V_fu_42_p4),9));
end behav;