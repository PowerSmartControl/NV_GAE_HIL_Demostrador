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

-- IP VLNV: xilinx.com:module_ref:three_ph_modulator:1.0
-- IP Revision: 1

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY NV_project_three_ph_modulator_0_0 IS
  PORT (
    reset : IN STD_LOGIC;
    clk : IN STD_LOGIC;
    enable : IN STD_LOGIC;
    mod_a : IN STD_LOGIC_VECTOR(17 DOWNTO 0);
    mod_b : IN STD_LOGIC_VECTOR(17 DOWNTO 0);
    mod_c : IN STD_LOGIC_VECTOR(17 DOWNTO 0);
    in_T1 : IN STD_LOGIC;
    in_T2 : IN STD_LOGIC;
    in_T3 : IN STD_LOGIC;
    in_T4 : IN STD_LOGIC;
    in_T5 : IN STD_LOGIC;
    in_T6 : IN STD_LOGIC;
    T1 : OUT STD_LOGIC;
    T2 : OUT STD_LOGIC;
    T3 : OUT STD_LOGIC;
    T4 : OUT STD_LOGIC;
    T5 : OUT STD_LOGIC;
    T6 : OUT STD_LOGIC
  );
END NV_project_three_ph_modulator_0_0;

ARCHITECTURE NV_project_three_ph_modulator_0_0_arch OF NV_project_three_ph_modulator_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF NV_project_three_ph_modulator_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT three_ph_modulator IS
    PORT (
      reset : IN STD_LOGIC;
      clk : IN STD_LOGIC;
      enable : IN STD_LOGIC;
      mod_a : IN STD_LOGIC_VECTOR(17 DOWNTO 0);
      mod_b : IN STD_LOGIC_VECTOR(17 DOWNTO 0);
      mod_c : IN STD_LOGIC_VECTOR(17 DOWNTO 0);
      in_T1 : IN STD_LOGIC;
      in_T2 : IN STD_LOGIC;
      in_T3 : IN STD_LOGIC;
      in_T4 : IN STD_LOGIC;
      in_T5 : IN STD_LOGIC;
      in_T6 : IN STD_LOGIC;
      T1 : OUT STD_LOGIC;
      T2 : OUT STD_LOGIC;
      T3 : OUT STD_LOGIC;
      T4 : OUT STD_LOGIC;
      T5 : OUT STD_LOGIC;
      T6 : OUT STD_LOGIC
    );
  END COMPONENT three_ph_modulator;
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER OF clk: SIGNAL IS "XIL_INTERFACENAME clk, ASSOCIATED_RESET reset, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN NV_project_processing_system7_0_1_FCLK_CLK0";
  ATTRIBUTE X_INTERFACE_INFO OF clk: SIGNAL IS "xilinx.com:signal:clock:1.0 clk CLK";
  ATTRIBUTE X_INTERFACE_PARAMETER OF reset: SIGNAL IS "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW";
  ATTRIBUTE X_INTERFACE_INFO OF reset: SIGNAL IS "xilinx.com:signal:reset:1.0 reset RST";
BEGIN
  U0 : three_ph_modulator
    PORT MAP (
      reset => reset,
      clk => clk,
      enable => enable,
      mod_a => mod_a,
      mod_b => mod_b,
      mod_c => mod_c,
      in_T1 => in_T1,
      in_T2 => in_T2,
      in_T3 => in_T3,
      in_T4 => in_T4,
      in_T5 => in_T5,
      in_T6 => in_T6,
      T1 => T1,
      T2 => T2,
      T3 => T3,
      T4 => T4,
      T5 => T5,
      T6 => T6
    );
END NV_project_three_ph_modulator_0_0_arch;
