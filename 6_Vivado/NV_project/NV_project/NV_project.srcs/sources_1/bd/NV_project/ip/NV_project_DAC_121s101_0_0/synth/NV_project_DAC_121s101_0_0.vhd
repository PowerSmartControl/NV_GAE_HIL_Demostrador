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

-- IP VLNV: xilinx.com:module_ref:DAC_121s101:1.0
-- IP Revision: 1

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY NV_project_DAC_121s101_0_0 IS
  PORT (
    clk : IN STD_LOGIC;
    RST : IN STD_LOGIC;
    DATA1 : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
    DATA2 : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
    DATA3 : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
    DATA4 : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
    DATA5 : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
    DATA6 : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
    DATA7 : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
    DATA8 : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
    DATA9 : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
    DATA10 : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
    DATA11 : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
    DATA12 : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
    DATA13 : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
    DATA14 : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
    DATA15 : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
    DATA16 : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
    DATA17 : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
    D1 : OUT STD_LOGIC;
    D2 : OUT STD_LOGIC;
    D3 : OUT STD_LOGIC;
    D4 : OUT STD_LOGIC;
    D5 : OUT STD_LOGIC;
    D6 : OUT STD_LOGIC;
    D7 : OUT STD_LOGIC;
    D8 : OUT STD_LOGIC;
    D9 : OUT STD_LOGIC;
    D10 : OUT STD_LOGIC;
    D11 : OUT STD_LOGIC;
    D12 : OUT STD_LOGIC;
    D13 : OUT STD_LOGIC;
    D14 : OUT STD_LOGIC;
    D15 : OUT STD_LOGIC;
    D16 : OUT STD_LOGIC;
    D17 : OUT STD_LOGIC;
    CLK_OUT : OUT STD_LOGIC;
    nSYNC : OUT STD_LOGIC;
    DONE : OUT STD_LOGIC
  );
END NV_project_DAC_121s101_0_0;

ARCHITECTURE NV_project_DAC_121s101_0_0_arch OF NV_project_DAC_121s101_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF NV_project_DAC_121s101_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT DAC_121s101 IS
    PORT (
      clk : IN STD_LOGIC;
      RST : IN STD_LOGIC;
      DATA1 : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
      DATA2 : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
      DATA3 : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
      DATA4 : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
      DATA5 : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
      DATA6 : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
      DATA7 : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
      DATA8 : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
      DATA9 : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
      DATA10 : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
      DATA11 : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
      DATA12 : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
      DATA13 : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
      DATA14 : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
      DATA15 : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
      DATA16 : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
      DATA17 : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
      D1 : OUT STD_LOGIC;
      D2 : OUT STD_LOGIC;
      D3 : OUT STD_LOGIC;
      D4 : OUT STD_LOGIC;
      D5 : OUT STD_LOGIC;
      D6 : OUT STD_LOGIC;
      D7 : OUT STD_LOGIC;
      D8 : OUT STD_LOGIC;
      D9 : OUT STD_LOGIC;
      D10 : OUT STD_LOGIC;
      D11 : OUT STD_LOGIC;
      D12 : OUT STD_LOGIC;
      D13 : OUT STD_LOGIC;
      D14 : OUT STD_LOGIC;
      D15 : OUT STD_LOGIC;
      D16 : OUT STD_LOGIC;
      D17 : OUT STD_LOGIC;
      CLK_OUT : OUT STD_LOGIC;
      nSYNC : OUT STD_LOGIC;
      DONE : OUT STD_LOGIC
    );
  END COMPONENT DAC_121s101;
  ATTRIBUTE X_CORE_INFO : STRING;
  ATTRIBUTE X_CORE_INFO OF NV_project_DAC_121s101_0_0_arch: ARCHITECTURE IS "DAC_121s101,Vivado 2017.4";
  ATTRIBUTE CHECK_LICENSE_TYPE : STRING;
  ATTRIBUTE CHECK_LICENSE_TYPE OF NV_project_DAC_121s101_0_0_arch : ARCHITECTURE IS "NV_project_DAC_121s101_0_0,DAC_121s101,{}";
  ATTRIBUTE CORE_GENERATION_INFO : STRING;
  ATTRIBUTE CORE_GENERATION_INFO OF NV_project_DAC_121s101_0_0_arch: ARCHITECTURE IS "NV_project_DAC_121s101_0_0,DAC_121s101,{x_ipProduct=Vivado 2017.4,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=DAC_121s101,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VHDL,x_ipSimLanguage=MIXED}";
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER OF RST: SIGNAL IS "XIL_INTERFACENAME RST, POLARITY ACTIVE_LOW";
  ATTRIBUTE X_INTERFACE_INFO OF RST: SIGNAL IS "xilinx.com:signal:reset:1.0 RST RST";
  ATTRIBUTE X_INTERFACE_PARAMETER OF clk: SIGNAL IS "XIL_INTERFACENAME clk, ASSOCIATED_RESET RST, FREQ_HZ 50000000, PHASE 0.000, CLK_DOMAIN NV_project_processing_system7_0_1_FCLK_CLK1";
  ATTRIBUTE X_INTERFACE_INFO OF clk: SIGNAL IS "xilinx.com:signal:clock:1.0 clk CLK";
BEGIN
  U0 : DAC_121s101
    PORT MAP (
      clk => clk,
      RST => RST,
      DATA1 => DATA1,
      DATA2 => DATA2,
      DATA3 => DATA3,
      DATA4 => DATA4,
      DATA5 => DATA5,
      DATA6 => DATA6,
      DATA7 => DATA7,
      DATA8 => DATA8,
      DATA9 => DATA9,
      DATA10 => DATA10,
      DATA11 => DATA11,
      DATA12 => DATA12,
      DATA13 => DATA13,
      DATA14 => DATA14,
      DATA15 => DATA15,
      DATA16 => DATA16,
      DATA17 => DATA17,
      D1 => D1,
      D2 => D2,
      D3 => D3,
      D4 => D4,
      D5 => D5,
      D6 => D6,
      D7 => D7,
      D8 => D8,
      D9 => D9,
      D10 => D10,
      D11 => D11,
      D12 => D12,
      D13 => D13,
      D14 => D14,
      D15 => D15,
      D16 => D16,
      D17 => D17,
      CLK_OUT => CLK_OUT,
      nSYNC => nSYNC,
      DONE => DONE
    );
END NV_project_DAC_121s101_0_0_arch;
