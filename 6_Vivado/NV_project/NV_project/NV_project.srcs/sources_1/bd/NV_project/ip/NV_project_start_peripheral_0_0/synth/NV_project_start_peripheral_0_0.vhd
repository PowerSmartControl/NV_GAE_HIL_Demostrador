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

-- IP VLNV: xilinx.com:module_ref:start_peripheral:1.0
-- IP Revision: 1

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY NV_project_start_peripheral_0_0 IS
  PORT (
    CLK : IN STD_LOGIC;
    RST : IN STD_LOGIC;
    Start_DAC : OUT STD_LOGIC;
    Start_ADC : OUT STD_LOGIC;
    start_grid : OUT STD_LOGIC;
    Start_pot_dig : OUT STD_LOGIC;
    Start_inp_expa : OUT STD_LOGIC;
    Start_out_expa : OUT STD_LOGIC
  );
END NV_project_start_peripheral_0_0;

ARCHITECTURE NV_project_start_peripheral_0_0_arch OF NV_project_start_peripheral_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF NV_project_start_peripheral_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT start_peripheral IS
    PORT (
      CLK : IN STD_LOGIC;
      RST : IN STD_LOGIC;
      Start_DAC : OUT STD_LOGIC;
      Start_ADC : OUT STD_LOGIC;
      start_grid : OUT STD_LOGIC;
      Start_pot_dig : OUT STD_LOGIC;
      Start_inp_expa : OUT STD_LOGIC;
      Start_out_expa : OUT STD_LOGIC
    );
  END COMPONENT start_peripheral;
  ATTRIBUTE X_CORE_INFO : STRING;
  ATTRIBUTE X_CORE_INFO OF NV_project_start_peripheral_0_0_arch: ARCHITECTURE IS "start_peripheral,Vivado 2017.4";
  ATTRIBUTE CHECK_LICENSE_TYPE : STRING;
  ATTRIBUTE CHECK_LICENSE_TYPE OF NV_project_start_peripheral_0_0_arch : ARCHITECTURE IS "NV_project_start_peripheral_0_0,start_peripheral,{}";
  ATTRIBUTE CORE_GENERATION_INFO : STRING;
  ATTRIBUTE CORE_GENERATION_INFO OF NV_project_start_peripheral_0_0_arch: ARCHITECTURE IS "NV_project_start_peripheral_0_0,start_peripheral,{x_ipProduct=Vivado 2017.4,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=start_peripheral,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VHDL,x_ipSimLanguage=MIXED}";
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER OF RST: SIGNAL IS "XIL_INTERFACENAME RST, POLARITY ACTIVE_LOW";
  ATTRIBUTE X_INTERFACE_INFO OF RST: SIGNAL IS "xilinx.com:signal:reset:1.0 RST RST";
  ATTRIBUTE X_INTERFACE_PARAMETER OF CLK: SIGNAL IS "XIL_INTERFACENAME CLK, ASSOCIATED_RESET RST, FREQ_HZ 1e+08, PHASE 0.000, CLK_DOMAIN NV_project_processing_system7_0_1_FCLK_CLK0";
  ATTRIBUTE X_INTERFACE_INFO OF CLK: SIGNAL IS "xilinx.com:signal:clock:1.0 CLK CLK";
BEGIN
  U0 : start_peripheral
    PORT MAP (
      CLK => CLK,
      RST => RST,
      Start_DAC => Start_DAC,
      Start_ADC => Start_ADC,
      start_grid => start_grid,
      Start_pot_dig => Start_pot_dig,
      Start_inp_expa => Start_inp_expa,
      Start_out_expa => Start_out_expa
    );
END NV_project_start_peripheral_0_0_arch;
