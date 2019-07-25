-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2017.4
-- Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity bridge is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    T1 : IN STD_LOGIC;
    T2 : IN STD_LOGIC;
    T3 : IN STD_LOGIC;
    T4 : IN STD_LOGIC;
    T5 : IN STD_LOGIC;
    T6 : IN STD_LOGIC;
    Vdc_V : IN STD_LOGIC_VECTOR (17 downto 0);
    Ia_V : IN STD_LOGIC_VECTOR (24 downto 0);
    Ib_V : IN STD_LOGIC_VECTOR (24 downto 0);
    Ic_V : IN STD_LOGIC_VECTOR (24 downto 0);
    Va_aux_V_1 : OUT STD_LOGIC_VECTOR (24 downto 0);
    Va_aux_V_1_ap_vld : OUT STD_LOGIC;
    Vb_aux_V_1 : OUT STD_LOGIC_VECTOR (24 downto 0);
    Vb_aux_V_1_ap_vld : OUT STD_LOGIC;
    Vc_aux_V_1 : OUT STD_LOGIC_VECTOR (24 downto 0);
    Vc_aux_V_1_ap_vld : OUT STD_LOGIC;
    Vn_gnd_aux_V : OUT STD_LOGIC_VECTOR (17 downto 0);
    Vn_gnd_aux_V_ap_vld : OUT STD_LOGIC );
end;


architecture behav of bridge is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (4 downto 0) := "00001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (4 downto 0) := "00010";
    constant ap_ST_fsm_state3 : STD_LOGIC_VECTOR (4 downto 0) := "00100";
    constant ap_ST_fsm_state4 : STD_LOGIC_VECTOR (4 downto 0) := "01000";
    constant ap_ST_fsm_state5 : STD_LOGIC_VECTOR (4 downto 0) := "10000";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv25_0 : STD_LOGIC_VECTOR (24 downto 0) := "0000000000000000000000000";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_4 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000100";
    constant ap_const_lv32_18 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000011000";
    constant ap_const_lv3_0 : STD_LOGIC_VECTOR (2 downto 0) := "000";
    constant ap_const_lv40_AAA : STD_LOGIC_VECTOR (39 downto 0) := "0000000000000000000000000000101010101010";
    constant ap_const_lv32_27 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000100111";
    constant ap_const_lv32_21 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000100001";
    constant ap_const_lv32_10 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000010000";
    constant ap_const_lv32_F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001111";
    constant ap_const_lv15_0 : STD_LOGIC_VECTOR (14 downto 0) := "000000000000000";
    constant ap_const_lv32_11 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000010001";
    constant ap_const_lv32_22 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000100010";
    constant ap_const_lv32_23 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000100011";
    constant ap_const_lv5_1F : STD_LOGIC_VECTOR (4 downto 0) := "11111";
    constant ap_const_lv6_3F : STD_LOGIC_VECTOR (5 downto 0) := "111111";
    constant ap_const_lv6_0 : STD_LOGIC_VECTOR (5 downto 0) := "000000";
    constant ap_const_lv18_1FFFF : STD_LOGIC_VECTOR (17 downto 0) := "011111111111111111";
    constant ap_const_lv18_20000 : STD_LOGIC_VECTOR (17 downto 0) := "100000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;

    signal ap_CS_fsm : STD_LOGIC_VECTOR (4 downto 0) := "00001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal Va_aux_V : STD_LOGIC_VECTOR (24 downto 0) := "0000000000000000000000000";
    signal Vb_aux_V : STD_LOGIC_VECTOR (24 downto 0) := "0000000000000000000000000";
    signal Vc_aux_V : STD_LOGIC_VECTOR (24 downto 0) := "0000000000000000000000000";
    signal p_Vc_aux_V_flag_fu_388_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal p_Vc_aux_V_flag_reg_716 : STD_LOGIC_VECTOR (0 downto 0);
    signal p_Val2_17_fu_394_p3 : STD_LOGIC_VECTOR (24 downto 0);
    signal p_Val2_17_reg_720 : STD_LOGIC_VECTOR (24 downto 0);
    signal p_Val2_21_fu_428_p2 : STD_LOGIC_VECTOR (25 downto 0);
    signal p_Val2_21_reg_726 : STD_LOGIC_VECTOR (25 downto 0);
    signal r_V_fu_440_p2 : STD_LOGIC_VECTOR (26 downto 0);
    signal r_V_reg_731 : STD_LOGIC_VECTOR (26 downto 0);
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal p_Val2_22_fu_449_p2 : STD_LOGIC_VECTOR (39 downto 0);
    signal p_Val2_22_reg_736 : STD_LOGIC_VECTOR (39 downto 0);
    signal ap_CS_fsm_state3 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state3 : signal is "none";
    signal signbit_reg_746 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_29_fu_463_p1 : STD_LOGIC_VECTOR (14 downto 0);
    signal tmp_29_reg_752 : STD_LOGIC_VECTOR (14 downto 0);
    signal tmp_30_reg_757 : STD_LOGIC_VECTOR (0 downto 0);
    signal p_Val2_24_fu_519_p2 : STD_LOGIC_VECTOR (17 downto 0);
    signal p_Val2_24_reg_762 : STD_LOGIC_VECTOR (17 downto 0);
    signal ap_CS_fsm_state4 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state4 : signal is "none";
    signal newsignbit_fu_530_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal newsignbit_reg_768 : STD_LOGIC_VECTOR (0 downto 0);
    signal carry_fu_544_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal carry_reg_773 : STD_LOGIC_VECTOR (0 downto 0);
    signal Range1_all_ones_fu_580_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal Range1_all_ones_reg_779 : STD_LOGIC_VECTOR (0 downto 0);
    signal Range1_all_zeros_fu_586_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal Range1_all_zeros_reg_785 : STD_LOGIC_VECTOR (0 downto 0);
    signal brmerge40_demorgan_i_fu_612_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal brmerge40_demorgan_i_reg_790 : STD_LOGIC_VECTOR (0 downto 0);
    signal p_Val2_s_fu_354_p3 : STD_LOGIC_VECTOR (24 downto 0);
    signal p_Va_aux_V_flag_fu_348_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal p_Val2_20_fu_374_p3 : STD_LOGIC_VECTOR (24 downto 0);
    signal p_Vb_aux_V_flag_fu_368_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_CS_fsm_state5 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state5 : signal is "none";
    signal brmerge_fu_150_p0 : STD_LOGIC_VECTOR (0 downto 0);
    signal brmerge_fu_150_p1 : STD_LOGIC_VECTOR (0 downto 0);
    signal brmerge_fu_150_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_24_fu_162_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal brmerge_not_fu_156_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal or_cond_fu_170_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal p_T1_fu_176_p1 : STD_LOGIC_VECTOR (0 downto 0);
    signal brmerge3_fu_182_p0 : STD_LOGIC_VECTOR (0 downto 0);
    signal brmerge3_fu_182_p1 : STD_LOGIC_VECTOR (0 downto 0);
    signal brmerge3_fu_182_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_25_fu_194_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal brmerge3_not_fu_188_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal or_cond1_fu_202_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal p_T2_fu_208_p1 : STD_LOGIC_VECTOR (0 downto 0);
    signal brmerge4_fu_214_p0 : STD_LOGIC_VECTOR (0 downto 0);
    signal brmerge4_fu_214_p1 : STD_LOGIC_VECTOR (0 downto 0);
    signal brmerge4_fu_214_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_26_fu_226_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal brmerge4_not_fu_220_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal or_cond2_fu_234_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal p_T3_fu_240_p1 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_3_fu_246_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal or_cond4_fu_252_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal p_T4_fu_258_p1 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_4_fu_264_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal or_cond6_fu_270_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal p_T5_fu_276_p1 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_5_fu_282_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal or_cond8_fu_288_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal p_T6_fu_294_p1 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_6_fu_304_p3 : STD_LOGIC_VECTOR (20 downto 0);
    signal p_T1_fu_176_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_17_cast_fu_312_p1 : STD_LOGIC_VECTOR (24 downto 0);
    signal p_T2_fu_208_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal p_T3_fu_240_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal p_T4_fu_258_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal Va_aux_V_loc_fu_316_p3 : STD_LOGIC_VECTOR (24 downto 0);
    signal p_T5_fu_276_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal Vb_aux_V_loc_fu_328_p3 : STD_LOGIC_VECTOR (24 downto 0);
    signal p_T6_fu_294_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal Vc_aux_V_loc_fu_340_p3 : STD_LOGIC_VECTOR (24 downto 0);
    signal tmp_7_fu_420_p1 : STD_LOGIC_VECTOR (25 downto 0);
    signal tmp_8_fu_424_p1 : STD_LOGIC_VECTOR (25 downto 0);
    signal tmp_9_fu_434_p1 : STD_LOGIC_VECTOR (26 downto 0);
    signal tmp_s_fu_437_p1 : STD_LOGIC_VECTOR (26 downto 0);
    signal p_Val2_22_fu_449_p1 : STD_LOGIC_VECTOR (26 downto 0);
    signal tmp_31_fu_496_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal r_fu_491_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal r_i_i_fu_503_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal qbit_fu_484_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal qb_assign_1_fu_509_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal p_Val2_23_fu_475_p4 : STD_LOGIC_VECTOR (17 downto 0);
    signal tmp_1_fu_515_p1 : STD_LOGIC_VECTOR (17 downto 0);
    signal tmp_2_fu_538_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_10_fu_556_p4 : STD_LOGIC_VECTOR (4 downto 0);
    signal tmp_11_fu_571_p4 : STD_LOGIC_VECTOR (5 downto 0);
    signal tmp_33_fu_549_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal Range2_all_ones_fu_565_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_12_fu_592_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal p_41_i_fu_598_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal deleted_ones_fu_604_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal deleted_zeros_fu_618_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal p_not_i_fu_627_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal brmerge_i_fu_633_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_13_fu_638_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal p_38_i_fu_623_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_demorgan_fu_649_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_fu_654_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal underflow_fu_660_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal overflow_fu_643_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp1_fu_671_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal brmerge_i_i_fu_665_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal underflow_not_fu_676_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal p_Val2_31_mux_fu_682_p3 : STD_LOGIC_VECTOR (17 downto 0);
    signal p_Val2_s_10_fu_689_p3 : STD_LOGIC_VECTOR (17 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (4 downto 0);


begin




    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_fsm_state1;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;

    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state4)) then
                Range1_all_ones_reg_779 <= Range1_all_ones_fu_580_p2;
                Range1_all_zeros_reg_785 <= Range1_all_zeros_fu_586_p2;
                brmerge40_demorgan_i_reg_790 <= brmerge40_demorgan_i_fu_612_p2;
                carry_reg_773 <= carry_fu_544_p2;
                newsignbit_reg_768 <= p_Val2_24_fu_519_p2(17 downto 17);
                p_Val2_24_reg_762 <= p_Val2_24_fu_519_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((p_Va_aux_V_flag_fu_348_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then
                Va_aux_V <= p_Val2_s_fu_354_p3;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((p_Vb_aux_V_flag_fu_368_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then
                Vb_aux_V <= p_Val2_20_fu_374_p3;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((p_Vc_aux_V_flag_reg_716 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state4))) then
                Vc_aux_V <= p_Val2_17_reg_720;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then
                p_Val2_17_reg_720 <= p_Val2_17_fu_394_p3;
                p_Val2_21_reg_726 <= p_Val2_21_fu_428_p2;
                p_Vc_aux_V_flag_reg_716 <= p_Vc_aux_V_flag_fu_388_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state3)) then
                p_Val2_22_reg_736 <= p_Val2_22_fu_449_p2;
                signbit_reg_746 <= p_Val2_22_fu_449_p2(39 downto 39);
                tmp_29_reg_752 <= tmp_29_fu_463_p1;
                tmp_30_reg_757 <= p_Val2_22_fu_449_p2(33 downto 33);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state2)) then
                r_V_reg_731 <= r_V_fu_440_p2;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, ap_CS_fsm_state1)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                ap_NS_fsm <= ap_ST_fsm_state3;
            when ap_ST_fsm_state3 => 
                ap_NS_fsm <= ap_ST_fsm_state4;
            when ap_ST_fsm_state4 => 
                ap_NS_fsm <= ap_ST_fsm_state5;
            when ap_ST_fsm_state5 => 
                ap_NS_fsm <= ap_ST_fsm_state1;
            when others =>  
                ap_NS_fsm <= "XXXXX";
        end case;
    end process;
    Range1_all_ones_fu_580_p2 <= "1" when (tmp_11_fu_571_p4 = ap_const_lv6_3F) else "0";
    Range1_all_zeros_fu_586_p2 <= "1" when (tmp_11_fu_571_p4 = ap_const_lv6_0) else "0";
    Range2_all_ones_fu_565_p2 <= "1" when (tmp_10_fu_556_p4 = ap_const_lv5_1F) else "0";
    Va_aux_V_1 <= p_Val2_s_fu_354_p3;

    Va_aux_V_1_ap_vld_assign_proc : process(ap_start, ap_CS_fsm_state1)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then 
            Va_aux_V_1_ap_vld <= ap_const_logic_1;
        else 
            Va_aux_V_1_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

    Va_aux_V_loc_fu_316_p3 <= 
        tmp_17_cast_fu_312_p1 when (p_T1_fu_176_p2(0) = '1') else 
        Va_aux_V;
    Vb_aux_V_1 <= p_Val2_20_fu_374_p3;

    Vb_aux_V_1_ap_vld_assign_proc : process(ap_start, ap_CS_fsm_state1)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then 
            Vb_aux_V_1_ap_vld <= ap_const_logic_1;
        else 
            Vb_aux_V_1_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

    Vb_aux_V_loc_fu_328_p3 <= 
        tmp_17_cast_fu_312_p1 when (p_T2_fu_208_p2(0) = '1') else 
        Vb_aux_V;
    Vc_aux_V_1 <= 
        ap_const_lv25_0 when (p_T6_fu_294_p2(0) = '1') else 
        Vc_aux_V_loc_fu_340_p3;

    Vc_aux_V_1_ap_vld_assign_proc : process(ap_start, ap_CS_fsm_state1)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then 
            Vc_aux_V_1_ap_vld <= ap_const_logic_1;
        else 
            Vc_aux_V_1_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

    Vc_aux_V_loc_fu_340_p3 <= 
        tmp_17_cast_fu_312_p1 when (p_T3_fu_240_p2(0) = '1') else 
        Vc_aux_V;
    Vn_gnd_aux_V <= 
        p_Val2_31_mux_fu_682_p3 when (underflow_not_fu_676_p2(0) = '1') else 
        p_Val2_s_10_fu_689_p3;

    Vn_gnd_aux_V_ap_vld_assign_proc : process(ap_CS_fsm_state5)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
            Vn_gnd_aux_V_ap_vld <= ap_const_logic_1;
        else 
            Vn_gnd_aux_V_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
    ap_CS_fsm_state3 <= ap_CS_fsm(2);
    ap_CS_fsm_state4 <= ap_CS_fsm(3);
    ap_CS_fsm_state5 <= ap_CS_fsm(4);

    ap_done_assign_proc : process(ap_start, ap_CS_fsm_state1, ap_CS_fsm_state5)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state5) or ((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1)))) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_assign_proc : process(ap_start, ap_CS_fsm_state1)
    begin
        if (((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_ready_assign_proc : process(ap_CS_fsm_state5)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;

    brmerge3_fu_182_p0 <= (0=>T2, others=>'-');
    brmerge3_fu_182_p1 <= (0=>T5, others=>'-');
    brmerge3_fu_182_p2 <= (brmerge3_fu_182_p1 or brmerge3_fu_182_p0);
    brmerge3_not_fu_188_p2 <= (brmerge3_fu_182_p2 xor ap_const_lv1_1);
    brmerge40_demorgan_i_fu_612_p2 <= (newsignbit_fu_530_p3 and deleted_ones_fu_604_p3);
    brmerge4_fu_214_p0 <= (0=>T3, others=>'-');
    brmerge4_fu_214_p1 <= (0=>T6, others=>'-');
    brmerge4_fu_214_p2 <= (brmerge4_fu_214_p1 or brmerge4_fu_214_p0);
    brmerge4_not_fu_220_p2 <= (brmerge4_fu_214_p2 xor ap_const_lv1_1);
    brmerge_fu_150_p0 <= (0=>T1, others=>'-');
    brmerge_fu_150_p1 <= (0=>T4, others=>'-');
    brmerge_fu_150_p2 <= (brmerge_fu_150_p1 or brmerge_fu_150_p0);
    brmerge_i_fu_633_p2 <= (p_not_i_fu_627_p2 or newsignbit_reg_768);
    brmerge_i_i_fu_665_p2 <= (underflow_fu_660_p2 or overflow_fu_643_p2);
    brmerge_not_fu_156_p2 <= (brmerge_fu_150_p2 xor ap_const_lv1_1);
    carry_fu_544_p2 <= (tmp_30_reg_757 and tmp_2_fu_538_p2);
    deleted_ones_fu_604_p3 <= 
        p_41_i_fu_598_p2 when (carry_fu_544_p2(0) = '1') else 
        Range1_all_ones_fu_580_p2;
    deleted_zeros_fu_618_p3 <= 
        Range1_all_ones_reg_779 when (carry_reg_773(0) = '1') else 
        Range1_all_zeros_reg_785;
    newsignbit_fu_530_p3 <= p_Val2_24_fu_519_p2(17 downto 17);
    or_cond1_fu_202_p2 <= (tmp_25_fu_194_p3 and brmerge3_not_fu_188_p2);
    or_cond2_fu_234_p2 <= (tmp_26_fu_226_p3 and brmerge4_not_fu_220_p2);
    or_cond4_fu_252_p2 <= (tmp_3_fu_246_p2 and brmerge_not_fu_156_p2);
    or_cond6_fu_270_p2 <= (tmp_4_fu_264_p2 and brmerge3_not_fu_188_p2);
    or_cond8_fu_288_p2 <= (tmp_5_fu_282_p2 and brmerge4_not_fu_220_p2);
    or_cond_fu_170_p2 <= (tmp_24_fu_162_p3 and brmerge_not_fu_156_p2);
    overflow_fu_643_p2 <= (tmp_13_fu_638_p2 and brmerge_i_fu_633_p2);
    p_38_i_fu_623_p2 <= (carry_reg_773 and Range1_all_ones_reg_779);
    p_41_i_fu_598_p2 <= (tmp_12_fu_592_p2 and Range2_all_ones_fu_565_p2);
    p_T1_fu_176_p1 <= (0=>T1, others=>'-');
    p_T1_fu_176_p2 <= (p_T1_fu_176_p1 or or_cond_fu_170_p2);
    p_T2_fu_208_p1 <= (0=>T2, others=>'-');
    p_T2_fu_208_p2 <= (p_T2_fu_208_p1 or or_cond1_fu_202_p2);
    p_T3_fu_240_p1 <= (0=>T3, others=>'-');
    p_T3_fu_240_p2 <= (p_T3_fu_240_p1 or or_cond2_fu_234_p2);
    p_T4_fu_258_p1 <= (0=>T4, others=>'-');
    p_T4_fu_258_p2 <= (p_T4_fu_258_p1 or or_cond4_fu_252_p2);
    p_T5_fu_276_p1 <= (0=>T5, others=>'-');
    p_T5_fu_276_p2 <= (p_T5_fu_276_p1 or or_cond6_fu_270_p2);
    p_T6_fu_294_p1 <= (0=>T6, others=>'-');
    p_T6_fu_294_p2 <= (p_T6_fu_294_p1 or or_cond8_fu_288_p2);
    p_Va_aux_V_flag_fu_348_p2 <= (p_T4_fu_258_p2 or p_T1_fu_176_p2);
    p_Val2_17_fu_394_p3 <= 
        ap_const_lv25_0 when (p_T6_fu_294_p2(0) = '1') else 
        Vc_aux_V_loc_fu_340_p3;
    p_Val2_20_fu_374_p3 <= 
        ap_const_lv25_0 when (p_T5_fu_276_p2(0) = '1') else 
        Vb_aux_V_loc_fu_328_p3;
    p_Val2_21_fu_428_p2 <= std_logic_vector(signed(tmp_7_fu_420_p1) + signed(tmp_8_fu_424_p1));
    p_Val2_22_fu_449_p1 <= r_V_reg_731;
    p_Val2_22_fu_449_p2 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(std_logic_vector(signed('0' &ap_const_lv40_AAA) * signed(p_Val2_22_fu_449_p1))), 40));
    p_Val2_23_fu_475_p4 <= p_Val2_22_reg_736(33 downto 16);
    p_Val2_24_fu_519_p2 <= std_logic_vector(unsigned(p_Val2_23_fu_475_p4) + unsigned(tmp_1_fu_515_p1));
    p_Val2_31_mux_fu_682_p3 <= 
        ap_const_lv18_1FFFF when (brmerge_i_i_fu_665_p2(0) = '1') else 
        p_Val2_24_reg_762;
    p_Val2_s_10_fu_689_p3 <= 
        ap_const_lv18_20000 when (underflow_fu_660_p2(0) = '1') else 
        p_Val2_24_reg_762;
    p_Val2_s_fu_354_p3 <= 
        ap_const_lv25_0 when (p_T4_fu_258_p2(0) = '1') else 
        Va_aux_V_loc_fu_316_p3;
    p_Vb_aux_V_flag_fu_368_p2 <= (p_T5_fu_276_p2 or p_T2_fu_208_p2);
    p_Vc_aux_V_flag_fu_388_p2 <= (p_T6_fu_294_p2 or p_T3_fu_240_p2);
    p_not_i_fu_627_p2 <= (deleted_zeros_fu_618_p3 xor ap_const_lv1_1);
    qb_assign_1_fu_509_p2 <= (r_i_i_fu_503_p2 and qbit_fu_484_p3);
    qbit_fu_484_p3 <= p_Val2_22_reg_736(15 downto 15);
    r_V_fu_440_p2 <= std_logic_vector(signed(tmp_9_fu_434_p1) + signed(tmp_s_fu_437_p1));
    r_fu_491_p2 <= "0" when (tmp_29_reg_752 = ap_const_lv15_0) else "1";
    r_i_i_fu_503_p2 <= (tmp_31_fu_496_p3 or r_fu_491_p2);
    tmp1_fu_671_p2 <= (tmp_13_fu_638_p2 or brmerge40_demorgan_i_reg_790);
    tmp_10_fu_556_p4 <= p_Val2_22_reg_736(39 downto 35);
    tmp_11_fu_571_p4 <= p_Val2_22_reg_736(39 downto 34);
    tmp_12_fu_592_p2 <= (tmp_33_fu_549_p3 xor ap_const_lv1_1);
    tmp_13_fu_638_p2 <= (signbit_reg_746 xor ap_const_lv1_1);
        tmp_17_cast_fu_312_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(tmp_6_fu_304_p3),25));

    tmp_1_fu_515_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(qb_assign_1_fu_509_p2),18));
    tmp_24_fu_162_p3 <= Ia_V(24 downto 24);
    tmp_25_fu_194_p3 <= Ib_V(24 downto 24);
    tmp_26_fu_226_p3 <= Ic_V(24 downto 24);
    tmp_29_fu_463_p1 <= p_Val2_22_fu_449_p2(15 - 1 downto 0);
    tmp_2_fu_538_p2 <= (newsignbit_fu_530_p3 xor ap_const_lv1_1);
    tmp_31_fu_496_p3 <= p_Val2_22_reg_736(16 downto 16);
    tmp_33_fu_549_p3 <= p_Val2_22_reg_736(34 downto 34);
    tmp_3_fu_246_p2 <= "1" when (signed(Ia_V) > signed(ap_const_lv25_0)) else "0";
    tmp_4_fu_264_p2 <= "1" when (signed(Ib_V) > signed(ap_const_lv25_0)) else "0";
    tmp_5_fu_282_p2 <= "1" when (signed(Ic_V) > signed(ap_const_lv25_0)) else "0";
    tmp_6_fu_304_p3 <= (Vdc_V & ap_const_lv3_0);
        tmp_7_fu_420_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(p_Val2_s_fu_354_p3),26));

        tmp_8_fu_424_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(p_Val2_20_fu_374_p3),26));

        tmp_9_fu_434_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(p_Val2_21_reg_726),27));

    tmp_demorgan_fu_649_p2 <= (p_38_i_fu_623_p2 or brmerge40_demorgan_i_reg_790);
    tmp_fu_654_p2 <= (tmp_demorgan_fu_649_p2 xor ap_const_lv1_1);
        tmp_s_fu_437_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(p_Val2_17_reg_720),27));

    underflow_fu_660_p2 <= (tmp_fu_654_p2 and signbit_reg_746);
    underflow_not_fu_676_p2 <= (tmp1_fu_671_p2 or p_38_i_fu_623_p2);
end behav;