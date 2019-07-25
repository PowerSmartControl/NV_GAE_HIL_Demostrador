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

-- IP VLNV: xilinx.com:hls:bridge3ph:1.0
-- IP Revision: 1803011122

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY NV_project_bridge3ph_0_0 IS
  PORT (
    ap_clk : IN STD_LOGIC;
    ap_rst_n : IN STD_LOGIC;
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
    Vdc_V : IN STD_LOGIC_VECTOR(17 DOWNTO 0);
    Ia_V : IN STD_LOGIC_VECTOR(24 DOWNTO 0);
    Ib_V : IN STD_LOGIC_VECTOR(24 DOWNTO 0);
    Ic_V : IN STD_LOGIC_VECTOR(24 DOWNTO 0);
    Va_V : OUT STD_LOGIC_VECTOR(24 DOWNTO 0);
    Vb_V : OUT STD_LOGIC_VECTOR(24 DOWNTO 0);
    Vc_V : OUT STD_LOGIC_VECTOR(24 DOWNTO 0);
    Idc_V : OUT STD_LOGIC_VECTOR(24 DOWNTO 0);
    Vn_gnd_V : OUT STD_LOGIC_VECTOR(17 DOWNTO 0)
  );
END NV_project_bridge3ph_0_0;

ARCHITECTURE NV_project_bridge3ph_0_0_arch OF NV_project_bridge3ph_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF NV_project_bridge3ph_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT bridge3ph IS
    PORT (
      ap_clk : IN STD_LOGIC;
      ap_rst_n : IN STD_LOGIC;
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
      Vdc_V : IN STD_LOGIC_VECTOR(17 DOWNTO 0);
      Ia_V : IN STD_LOGIC_VECTOR(24 DOWNTO 0);
      Ib_V : IN STD_LOGIC_VECTOR(24 DOWNTO 0);
      Ic_V : IN STD_LOGIC_VECTOR(24 DOWNTO 0);
      Va_V : OUT STD_LOGIC_VECTOR(24 DOWNTO 0);
      Vb_V : OUT STD_LOGIC_VECTOR(24 DOWNTO 0);
      Vc_V : OUT STD_LOGIC_VECTOR(24 DOWNTO 0);
      Idc_V : OUT STD_LOGIC_VECTOR(24 DOWNTO 0);
      Vn_gnd_V : OUT STD_LOGIC_VECTOR(17 DOWNTO 0)
    );
  END COMPONENT bridge3ph;
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER OF Vn_gnd_V: SIGNAL IS "XIL_INTERFACENAME Vn_gnd_V, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 18} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 6} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}";
  ATTRIBUTE X_INTERFACE_INFO OF Vn_gnd_V: SIGNAL IS "xilinx.com:signal:data:1.0 Vn_gnd_V DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF Idc_V: SIGNAL IS "XIL_INTERFACENAME Idc_V, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 25} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 9} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}";
  ATTRIBUTE X_INTERFACE_INFO OF Idc_V: SIGNAL IS "xilinx.com:signal:data:1.0 Idc_V DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF Vc_V: SIGNAL IS "XIL_INTERFACENAME Vc_V, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 25} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 9} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}";
  ATTRIBUTE X_INTERFACE_INFO OF Vc_V: SIGNAL IS "xilinx.com:signal:data:1.0 Vc_V DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF Vb_V: SIGNAL IS "XIL_INTERFACENAME Vb_V, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 25} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 9} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}";
  ATTRIBUTE X_INTERFACE_INFO OF Vb_V: SIGNAL IS "xilinx.com:signal:data:1.0 Vb_V DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF Va_V: SIGNAL IS "XIL_INTERFACENAME Va_V, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 25} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 9} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}";
  ATTRIBUTE X_INTERFACE_INFO OF Va_V: SIGNAL IS "xilinx.com:signal:data:1.0 Va_V DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF Ic_V: SIGNAL IS "XIL_INTERFACENAME Ic_V, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 25} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 9} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}";
  ATTRIBUTE X_INTERFACE_INFO OF Ic_V: SIGNAL IS "xilinx.com:signal:data:1.0 Ic_V DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF Ib_V: SIGNAL IS "XIL_INTERFACENAME Ib_V, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 25} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 9} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}";
  ATTRIBUTE X_INTERFACE_INFO OF Ib_V: SIGNAL IS "xilinx.com:signal:data:1.0 Ib_V DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF Ia_V: SIGNAL IS "XIL_INTERFACENAME Ia_V, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 25} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 9} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}";
  ATTRIBUTE X_INTERFACE_INFO OF Ia_V: SIGNAL IS "xilinx.com:signal:data:1.0 Ia_V DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF Vdc_V: SIGNAL IS "XIL_INTERFACENAME Vdc_V, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 18} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 6} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}";
  ATTRIBUTE X_INTERFACE_INFO OF Vdc_V: SIGNAL IS "xilinx.com:signal:data:1.0 Vdc_V DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF T6: SIGNAL IS "XIL_INTERFACENAME T6, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}";
  ATTRIBUTE X_INTERFACE_INFO OF T6: SIGNAL IS "xilinx.com:signal:data:1.0 T6 DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF T5: SIGNAL IS "XIL_INTERFACENAME T5, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}";
  ATTRIBUTE X_INTERFACE_INFO OF T5: SIGNAL IS "xilinx.com:signal:data:1.0 T5 DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF T4: SIGNAL IS "XIL_INTERFACENAME T4, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}";
  ATTRIBUTE X_INTERFACE_INFO OF T4: SIGNAL IS "xilinx.com:signal:data:1.0 T4 DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF T3: SIGNAL IS "XIL_INTERFACENAME T3, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}";
  ATTRIBUTE X_INTERFACE_INFO OF T3: SIGNAL IS "xilinx.com:signal:data:1.0 T3 DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF T2: SIGNAL IS "XIL_INTERFACENAME T2, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}";
  ATTRIBUTE X_INTERFACE_INFO OF T2: SIGNAL IS "xilinx.com:signal:data:1.0 T2 DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF T1: SIGNAL IS "XIL_INTERFACENAME T1, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}";
  ATTRIBUTE X_INTERFACE_INFO OF T1: SIGNAL IS "xilinx.com:signal:data:1.0 T1 DATA";
  ATTRIBUTE X_INTERFACE_INFO OF ap_ready: SIGNAL IS "xilinx.com:interface:acc_handshake:1.0 ap_ctrl ready";
  ATTRIBUTE X_INTERFACE_INFO OF ap_idle: SIGNAL IS "xilinx.com:interface:acc_handshake:1.0 ap_ctrl idle";
  ATTRIBUTE X_INTERFACE_INFO OF ap_done: SIGNAL IS "xilinx.com:interface:acc_handshake:1.0 ap_ctrl done";
  ATTRIBUTE X_INTERFACE_PARAMETER OF ap_start: SIGNAL IS "XIL_INTERFACENAME ap_ctrl, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {start {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} done {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} idle {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} ready {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}";
  ATTRIBUTE X_INTERFACE_INFO OF ap_start: SIGNAL IS "xilinx.com:interface:acc_handshake:1.0 ap_ctrl start";
  ATTRIBUTE X_INTERFACE_PARAMETER OF ap_rst_n: SIGNAL IS "XIL_INTERFACENAME ap_rst_n, POLARITY ACTIVE_LOW, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {RST {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}";
  ATTRIBUTE X_INTERFACE_INFO OF ap_rst_n: SIGNAL IS "xilinx.com:signal:reset:1.0 ap_rst_n RST";
  ATTRIBUTE X_INTERFACE_PARAMETER OF ap_clk: SIGNAL IS "XIL_INTERFACENAME ap_clk, ASSOCIATED_RESET ap_rst_n, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}, FREQ_HZ 50000000, PHASE 0.000, CLK_DOMAIN NV_project_processing_system7_0_0_FCLK_CLK0";
  ATTRIBUTE X_INTERFACE_INFO OF ap_clk: SIGNAL IS "xilinx.com:signal:clock:1.0 ap_clk CLK";
BEGIN
  U0 : bridge3ph
    PORT MAP (
      ap_clk => ap_clk,
      ap_rst_n => ap_rst_n,
      ap_start => ap_start,
      ap_done => ap_done,
      ap_idle => ap_idle,
      ap_ready => ap_ready,
      T1 => T1,
      T2 => T2,
      T3 => T3,
      T4 => T4,
      T5 => T5,
      T6 => T6,
      Vdc_V => Vdc_V,
      Ia_V => Ia_V,
      Ib_V => Ib_V,
      Ic_V => Ic_V,
      Va_V => Va_V,
      Vb_V => Vb_V,
      Vc_V => Vc_V,
      Idc_V => Idc_V,
      Vn_gnd_V => Vn_gnd_V
    );
END NV_project_bridge3ph_0_0_arch;
