-- (c) Copyright 1995-2018 Xilinx, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: xilinx.com:module_ref:Test_normal_mode_MUX:1.0
-- IP Revision: 1

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY NV_project_Test_normal_mode_MUX_0_0 IS
  PORT (
    CLK : IN STD_LOGIC;
    RST : IN STD_LOGIC;
    mode : IN STD_LOGIC;
    mode_dac : IN STD_LOGIC;
    analog_output_TEST_1 : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
    analog_output_TEST_2 : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
    analog_output_TEST_3 : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
    analog_output_TEST_4 : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
    analog_output_TEST_5 : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
    analog_output_TEST_6 : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
    analog_output_TEST_7 : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
    analog_output_TEST_8 : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
    analog_output_TEST_9 : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
    analog_output_TEST_10 : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
    analog_output_TEST_11 : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
    analog_output_TEST_12 : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
    analog_output_TEST_13 : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
    analog_output_TEST_14 : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
    analog_output_TEST_15 : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
    analog_output_TEST_16 : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
    analog_output_TEST_17 : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
    analog_output_NORMAL_1 : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
    analog_output_NORMAL_2 : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
    analog_output_NORMAL_3 : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
    analog_output_NORMAL_4 : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
    analog_output_NORMAL_5 : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
    analog_output_NORMAL_6 : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
    analog_output_NORMAL_7 : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
    analog_output_NORMAL_8 : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
    analog_output_NORMAL_9 : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
    analog_output_NORMAL_10 : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
    analog_output_NORMAL_11 : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
    analog_output_NORMAL_12 : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
    analog_output_NORMAL_13 : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
    analog_output_NORMAL_14 : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
    analog_output_NORMAL_15 : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
    analog_output_NORMAL_16 : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
    analog_output_NORMAL_17 : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
    DigPot_output_TEST_1 : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
    DigPot_output_TEST_2 : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
    DigPot_output_TEST_3 : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
    DigPot_output_TEST_4 : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
    DigPot_output_NORMAL_1 : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
    DigPot_output_NORMAL_2 : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
    DigPot_output_NORMAL_3 : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
    DigPot_output_NORMAL_4 : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
    Expansor_output_TEST_1 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    Expansor_output_TEST_2 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    Expansor_output_TEST_3 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    Expansor_output_NORMAL_1 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    Expansor_output_NORMAL_2 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    Expansor_output_NORMAL_3 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    analog_output_1 : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
    analog_output_2 : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
    analog_output_3 : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
    analog_output_4 : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
    analog_output_5 : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
    analog_output_6 : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
    analog_output_7 : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
    analog_output_8 : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
    analog_output_9 : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
    analog_output_10 : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
    analog_output_11 : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
    analog_output_12 : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
    analog_output_13 : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
    analog_output_14 : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
    analog_output_15 : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
    analog_output_16 : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
    analog_output_17 : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
    DigPot_output_1 : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
    DigPot_output_2 : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
    DigPot_output_3 : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
    DigPot_output_4 : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
    Expansor_output_1 : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    Expansor_output_2 : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    Expansor_output_3 : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
  );
END NV_project_Test_normal_mode_MUX_0_0;

ARCHITECTURE NV_project_Test_normal_mode_MUX_0_0_arch OF NV_project_Test_normal_mode_MUX_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF NV_project_Test_normal_mode_MUX_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT Test_normal_mode_MUX IS
    PORT (
      CLK : IN STD_LOGIC;
      RST : IN STD_LOGIC;
      mode : IN STD_LOGIC;
      mode_dac : IN STD_LOGIC;
      analog_output_TEST_1 : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
      analog_output_TEST_2 : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
      analog_output_TEST_3 : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
      analog_output_TEST_4 : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
      analog_output_TEST_5 : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
      analog_output_TEST_6 : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
      analog_output_TEST_7 : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
      analog_output_TEST_8 : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
      analog_output_TEST_9 : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
      analog_output_TEST_10 : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
      analog_output_TEST_11 : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
      analog_output_TEST_12 : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
      analog_output_TEST_13 : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
      analog_output_TEST_14 : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
      analog_output_TEST_15 : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
      analog_output_TEST_16 : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
      analog_output_TEST_17 : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
      analog_output_NORMAL_1 : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
      analog_output_NORMAL_2 : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
      analog_output_NORMAL_3 : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
      analog_output_NORMAL_4 : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
      analog_output_NORMAL_5 : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
      analog_output_NORMAL_6 : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
      analog_output_NORMAL_7 : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
      analog_output_NORMAL_8 : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
      analog_output_NORMAL_9 : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
      analog_output_NORMAL_10 : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
      analog_output_NORMAL_11 : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
      analog_output_NORMAL_12 : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
      analog_output_NORMAL_13 : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
      analog_output_NORMAL_14 : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
      analog_output_NORMAL_15 : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
      analog_output_NORMAL_16 : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
      analog_output_NORMAL_17 : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
      DigPot_output_TEST_1 : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
      DigPot_output_TEST_2 : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
      DigPot_output_TEST_3 : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
      DigPot_output_TEST_4 : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
      DigPot_output_NORMAL_1 : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
      DigPot_output_NORMAL_2 : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
      DigPot_output_NORMAL_3 : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
      DigPot_output_NORMAL_4 : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
      Expansor_output_TEST_1 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      Expansor_output_TEST_2 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      Expansor_output_TEST_3 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      Expansor_output_NORMAL_1 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      Expansor_output_NORMAL_2 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      Expansor_output_NORMAL_3 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      analog_output_1 : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
      analog_output_2 : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
      analog_output_3 : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
      analog_output_4 : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
      analog_output_5 : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
      analog_output_6 : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
      analog_output_7 : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
      analog_output_8 : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
      analog_output_9 : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
      analog_output_10 : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
      analog_output_11 : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
      analog_output_12 : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
      analog_output_13 : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
      analog_output_14 : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
      analog_output_15 : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
      analog_output_16 : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
      analog_output_17 : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
      DigPot_output_1 : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
      DigPot_output_2 : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
      DigPot_output_3 : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
      DigPot_output_4 : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
      Expansor_output_1 : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      Expansor_output_2 : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      Expansor_output_3 : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
    );
  END COMPONENT Test_normal_mode_MUX;
  ATTRIBUTE X_CORE_INFO : STRING;
  ATTRIBUTE X_CORE_INFO OF NV_project_Test_normal_mode_MUX_0_0_arch: ARCHITECTURE IS "Test_normal_mode_MUX,Vivado 2017.4";
  ATTRIBUTE CHECK_LICENSE_TYPE : STRING;
  ATTRIBUTE CHECK_LICENSE_TYPE OF NV_project_Test_normal_mode_MUX_0_0_arch : ARCHITECTURE IS "NV_project_Test_normal_mode_MUX_0_0,Test_normal_mode_MUX,{}";
  ATTRIBUTE CORE_GENERATION_INFO : STRING;
  ATTRIBUTE CORE_GENERATION_INFO OF NV_project_Test_normal_mode_MUX_0_0_arch: ARCHITECTURE IS "NV_project_Test_normal_mode_MUX_0_0,Test_normal_mode_MUX,{x_ipProduct=Vivado 2017.4,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=Test_normal_mode_MUX,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VHDL,x_ipSimLanguage=MIXED}";
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER OF RST: SIGNAL IS "XIL_INTERFACENAME RST, POLARITY ACTIVE_LOW";
  ATTRIBUTE X_INTERFACE_INFO OF RST: SIGNAL IS "xilinx.com:signal:reset:1.0 RST RST";
  ATTRIBUTE X_INTERFACE_PARAMETER OF CLK: SIGNAL IS "XIL_INTERFACENAME CLK, ASSOCIATED_RESET RST, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN NV_project_processing_system7_0_1_FCLK_CLK0";
  ATTRIBUTE X_INTERFACE_INFO OF CLK: SIGNAL IS "xilinx.com:signal:clock:1.0 CLK CLK";
BEGIN
  U0 : Test_normal_mode_MUX
    PORT MAP (
      CLK => CLK,
      RST => RST,
      mode => mode,
      mode_dac => mode_dac,
      analog_output_TEST_1 => analog_output_TEST_1,
      analog_output_TEST_2 => analog_output_TEST_2,
      analog_output_TEST_3 => analog_output_TEST_3,
      analog_output_TEST_4 => analog_output_TEST_4,
      analog_output_TEST_5 => analog_output_TEST_5,
      analog_output_TEST_6 => analog_output_TEST_6,
      analog_output_TEST_7 => analog_output_TEST_7,
      analog_output_TEST_8 => analog_output_TEST_8,
      analog_output_TEST_9 => analog_output_TEST_9,
      analog_output_TEST_10 => analog_output_TEST_10,
      analog_output_TEST_11 => analog_output_TEST_11,
      analog_output_TEST_12 => analog_output_TEST_12,
      analog_output_TEST_13 => analog_output_TEST_13,
      analog_output_TEST_14 => analog_output_TEST_14,
      analog_output_TEST_15 => analog_output_TEST_15,
      analog_output_TEST_16 => analog_output_TEST_16,
      analog_output_TEST_17 => analog_output_TEST_17,
      analog_output_NORMAL_1 => analog_output_NORMAL_1,
      analog_output_NORMAL_2 => analog_output_NORMAL_2,
      analog_output_NORMAL_3 => analog_output_NORMAL_3,
      analog_output_NORMAL_4 => analog_output_NORMAL_4,
      analog_output_NORMAL_5 => analog_output_NORMAL_5,
      analog_output_NORMAL_6 => analog_output_NORMAL_6,
      analog_output_NORMAL_7 => analog_output_NORMAL_7,
      analog_output_NORMAL_8 => analog_output_NORMAL_8,
      analog_output_NORMAL_9 => analog_output_NORMAL_9,
      analog_output_NORMAL_10 => analog_output_NORMAL_10,
      analog_output_NORMAL_11 => analog_output_NORMAL_11,
      analog_output_NORMAL_12 => analog_output_NORMAL_12,
      analog_output_NORMAL_13 => analog_output_NORMAL_13,
      analog_output_NORMAL_14 => analog_output_NORMAL_14,
      analog_output_NORMAL_15 => analog_output_NORMAL_15,
      analog_output_NORMAL_16 => analog_output_NORMAL_16,
      analog_output_NORMAL_17 => analog_output_NORMAL_17,
      DigPot_output_TEST_1 => DigPot_output_TEST_1,
      DigPot_output_TEST_2 => DigPot_output_TEST_2,
      DigPot_output_TEST_3 => DigPot_output_TEST_3,
      DigPot_output_TEST_4 => DigPot_output_TEST_4,
      DigPot_output_NORMAL_1 => DigPot_output_NORMAL_1,
      DigPot_output_NORMAL_2 => DigPot_output_NORMAL_2,
      DigPot_output_NORMAL_3 => DigPot_output_NORMAL_3,
      DigPot_output_NORMAL_4 => DigPot_output_NORMAL_4,
      Expansor_output_TEST_1 => Expansor_output_TEST_1,
      Expansor_output_TEST_2 => Expansor_output_TEST_2,
      Expansor_output_TEST_3 => Expansor_output_TEST_3,
      Expansor_output_NORMAL_1 => Expansor_output_NORMAL_1,
      Expansor_output_NORMAL_2 => Expansor_output_NORMAL_2,
      Expansor_output_NORMAL_3 => Expansor_output_NORMAL_3,
      analog_output_1 => analog_output_1,
      analog_output_2 => analog_output_2,
      analog_output_3 => analog_output_3,
      analog_output_4 => analog_output_4,
      analog_output_5 => analog_output_5,
      analog_output_6 => analog_output_6,
      analog_output_7 => analog_output_7,
      analog_output_8 => analog_output_8,
      analog_output_9 => analog_output_9,
      analog_output_10 => analog_output_10,
      analog_output_11 => analog_output_11,
      analog_output_12 => analog_output_12,
      analog_output_13 => analog_output_13,
      analog_output_14 => analog_output_14,
      analog_output_15 => analog_output_15,
      analog_output_16 => analog_output_16,
      analog_output_17 => analog_output_17,
      DigPot_output_1 => DigPot_output_1,
      DigPot_output_2 => DigPot_output_2,
      DigPot_output_3 => DigPot_output_3,
      DigPot_output_4 => DigPot_output_4,
      Expansor_output_1 => Expansor_output_1,
      Expansor_output_2 => Expansor_output_2,
      Expansor_output_3 => Expansor_output_3
    );
END NV_project_Test_normal_mode_MUX_0_0_arch;
