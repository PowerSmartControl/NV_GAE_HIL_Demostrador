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

-- IP VLNV: xilinx.com:hls:lcl_filter:1.0
-- IP Revision: 1806151416

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY NV_project_lcl_filter_0_0 IS
  PORT (
    ap_clk : IN STD_LOGIC;
    ap_rst_n : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    V1_a : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    V1_b : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    V1_c : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    V2_a_s : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    V2_b_s : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    V2_c_s : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    VN_gnd : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    dT_L1 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    dT_L2 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    dT_C : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    rC : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    rL1 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    rL2 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    Preload : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    CB1_K1_K3_V : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
    IL1_a_r : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    IL1_b_r : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    IL1_c_r : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    IL2_a_r : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    IL2_b_r : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    IL2_c_r : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    Vp_a_r : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    Vp_b_r : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    Vp_c_r : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
  );
END NV_project_lcl_filter_0_0;

ARCHITECTURE NV_project_lcl_filter_0_0_arch OF NV_project_lcl_filter_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF NV_project_lcl_filter_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT lcl_filter IS
    PORT (
      ap_clk : IN STD_LOGIC;
      ap_rst_n : IN STD_LOGIC;
      ap_start : IN STD_LOGIC;
      ap_done : OUT STD_LOGIC;
      ap_idle : OUT STD_LOGIC;
      ap_ready : OUT STD_LOGIC;
      V1_a : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      V1_b : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      V1_c : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      V2_a_s : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      V2_b_s : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      V2_c_s : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      VN_gnd : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      dT_L1 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      dT_L2 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      dT_C : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      rC : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      rL1 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      rL2 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      Preload : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      CB1_K1_K3_V : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
      IL1_a_r : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      IL1_b_r : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      IL1_c_r : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      IL2_a_r : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      IL2_b_r : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      IL2_c_r : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      Vp_a_r : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      Vp_b_r : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      Vp_c_r : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
    );
  END COMPONENT lcl_filter;
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER OF Vp_c_r: SIGNAL IS "XIL_INTERFACENAME Vp_c_r, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {float {sigwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 24}}}}}}";
  ATTRIBUTE X_INTERFACE_INFO OF Vp_c_r: SIGNAL IS "xilinx.com:signal:data:1.0 Vp_c_r DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF Vp_b_r: SIGNAL IS "XIL_INTERFACENAME Vp_b_r, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {float {sigwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 24}}}}}}";
  ATTRIBUTE X_INTERFACE_INFO OF Vp_b_r: SIGNAL IS "xilinx.com:signal:data:1.0 Vp_b_r DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF Vp_a_r: SIGNAL IS "XIL_INTERFACENAME Vp_a_r, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {float {sigwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 24}}}}}}";
  ATTRIBUTE X_INTERFACE_INFO OF Vp_a_r: SIGNAL IS "xilinx.com:signal:data:1.0 Vp_a_r DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF IL2_c_r: SIGNAL IS "XIL_INTERFACENAME IL2_c_r, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {float {sigwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 24}}}}}}";
  ATTRIBUTE X_INTERFACE_INFO OF IL2_c_r: SIGNAL IS "xilinx.com:signal:data:1.0 IL2_c_r DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF IL2_b_r: SIGNAL IS "XIL_INTERFACENAME IL2_b_r, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {float {sigwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 24}}}}}}";
  ATTRIBUTE X_INTERFACE_INFO OF IL2_b_r: SIGNAL IS "xilinx.com:signal:data:1.0 IL2_b_r DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF IL2_a_r: SIGNAL IS "XIL_INTERFACENAME IL2_a_r, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {float {sigwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 24}}}}}}";
  ATTRIBUTE X_INTERFACE_INFO OF IL2_a_r: SIGNAL IS "xilinx.com:signal:data:1.0 IL2_a_r DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF IL1_c_r: SIGNAL IS "XIL_INTERFACENAME IL1_c_r, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {float {sigwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 24}}}}}}";
  ATTRIBUTE X_INTERFACE_INFO OF IL1_c_r: SIGNAL IS "xilinx.com:signal:data:1.0 IL1_c_r DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF IL1_b_r: SIGNAL IS "XIL_INTERFACENAME IL1_b_r, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {float {sigwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 24}}}}}}";
  ATTRIBUTE X_INTERFACE_INFO OF IL1_b_r: SIGNAL IS "xilinx.com:signal:data:1.0 IL1_b_r DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF IL1_a_r: SIGNAL IS "XIL_INTERFACENAME IL1_a_r, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {float {sigwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 24}}}}}}";
  ATTRIBUTE X_INTERFACE_INFO OF IL1_a_r: SIGNAL IS "xilinx.com:signal:data:1.0 IL1_a_r DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF CB1_K1_K3_V: SIGNAL IS "XIL_INTERFACENAME CB1_K1_K3_V, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 5} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}";
  ATTRIBUTE X_INTERFACE_INFO OF CB1_K1_K3_V: SIGNAL IS "xilinx.com:signal:data:1.0 CB1_K1_K3_V DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF Preload: SIGNAL IS "XIL_INTERFACENAME Preload, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {float {sigwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 24}}}}}}";
  ATTRIBUTE X_INTERFACE_INFO OF Preload: SIGNAL IS "xilinx.com:signal:data:1.0 Preload DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF rL2: SIGNAL IS "XIL_INTERFACENAME rL2, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {float {sigwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 24}}}}}}";
  ATTRIBUTE X_INTERFACE_INFO OF rL2: SIGNAL IS "xilinx.com:signal:data:1.0 rL2 DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF rL1: SIGNAL IS "XIL_INTERFACENAME rL1, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {float {sigwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 24}}}}}}";
  ATTRIBUTE X_INTERFACE_INFO OF rL1: SIGNAL IS "xilinx.com:signal:data:1.0 rL1 DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF rC: SIGNAL IS "XIL_INTERFACENAME rC, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {float {sigwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 24}}}}}}";
  ATTRIBUTE X_INTERFACE_INFO OF rC: SIGNAL IS "xilinx.com:signal:data:1.0 rC DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF dT_C: SIGNAL IS "XIL_INTERFACENAME dT_C, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {float {sigwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 24}}}}}}";
  ATTRIBUTE X_INTERFACE_INFO OF dT_C: SIGNAL IS "xilinx.com:signal:data:1.0 dT_C DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF dT_L2: SIGNAL IS "XIL_INTERFACENAME dT_L2, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {float {sigwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 24}}}}}}";
  ATTRIBUTE X_INTERFACE_INFO OF dT_L2: SIGNAL IS "xilinx.com:signal:data:1.0 dT_L2 DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF dT_L1: SIGNAL IS "XIL_INTERFACENAME dT_L1, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {float {sigwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 24}}}}}}";
  ATTRIBUTE X_INTERFACE_INFO OF dT_L1: SIGNAL IS "xilinx.com:signal:data:1.0 dT_L1 DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF VN_gnd: SIGNAL IS "XIL_INTERFACENAME VN_gnd, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {float {sigwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 24}}}}}}";
  ATTRIBUTE X_INTERFACE_INFO OF VN_gnd: SIGNAL IS "xilinx.com:signal:data:1.0 VN_gnd DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF V2_c_s: SIGNAL IS "XIL_INTERFACENAME V2_c_s, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {float {sigwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 24}}}}}}";
  ATTRIBUTE X_INTERFACE_INFO OF V2_c_s: SIGNAL IS "xilinx.com:signal:data:1.0 V2_c_s DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF V2_b_s: SIGNAL IS "XIL_INTERFACENAME V2_b_s, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {float {sigwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 24}}}}}}";
  ATTRIBUTE X_INTERFACE_INFO OF V2_b_s: SIGNAL IS "xilinx.com:signal:data:1.0 V2_b_s DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF V2_a_s: SIGNAL IS "XIL_INTERFACENAME V2_a_s, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {float {sigwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 24}}}}}}";
  ATTRIBUTE X_INTERFACE_INFO OF V2_a_s: SIGNAL IS "xilinx.com:signal:data:1.0 V2_a_s DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF V1_c: SIGNAL IS "XIL_INTERFACENAME V1_c, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {float {sigwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 24}}}}}}";
  ATTRIBUTE X_INTERFACE_INFO OF V1_c: SIGNAL IS "xilinx.com:signal:data:1.0 V1_c DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF V1_b: SIGNAL IS "XIL_INTERFACENAME V1_b, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {float {sigwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 24}}}}}}";
  ATTRIBUTE X_INTERFACE_INFO OF V1_b: SIGNAL IS "xilinx.com:signal:data:1.0 V1_b DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF V1_a: SIGNAL IS "XIL_INTERFACENAME V1_a, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {float {sigwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 24}}}}}}";
  ATTRIBUTE X_INTERFACE_INFO OF V1_a: SIGNAL IS "xilinx.com:signal:data:1.0 V1_a DATA";
  ATTRIBUTE X_INTERFACE_INFO OF ap_ready: SIGNAL IS "xilinx.com:interface:acc_handshake:1.0 ap_ctrl ready";
  ATTRIBUTE X_INTERFACE_INFO OF ap_idle: SIGNAL IS "xilinx.com:interface:acc_handshake:1.0 ap_ctrl idle";
  ATTRIBUTE X_INTERFACE_INFO OF ap_done: SIGNAL IS "xilinx.com:interface:acc_handshake:1.0 ap_ctrl done";
  ATTRIBUTE X_INTERFACE_PARAMETER OF ap_start: SIGNAL IS "XIL_INTERFACENAME ap_ctrl, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {start {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} done {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} idle {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} ready {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}";
  ATTRIBUTE X_INTERFACE_INFO OF ap_start: SIGNAL IS "xilinx.com:interface:acc_handshake:1.0 ap_ctrl start";
  ATTRIBUTE X_INTERFACE_PARAMETER OF ap_rst_n: SIGNAL IS "XIL_INTERFACENAME ap_rst_n, POLARITY ACTIVE_LOW, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {RST {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}";
  ATTRIBUTE X_INTERFACE_INFO OF ap_rst_n: SIGNAL IS "xilinx.com:signal:reset:1.0 ap_rst_n RST";
  ATTRIBUTE X_INTERFACE_PARAMETER OF ap_clk: SIGNAL IS "XIL_INTERFACENAME ap_clk, ASSOCIATED_RESET ap_rst_n, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN NV_project_processing_system7_0_1_FCLK_CLK0";
  ATTRIBUTE X_INTERFACE_INFO OF ap_clk: SIGNAL IS "xilinx.com:signal:clock:1.0 ap_clk CLK";
BEGIN
  U0 : lcl_filter
    PORT MAP (
      ap_clk => ap_clk,
      ap_rst_n => ap_rst_n,
      ap_start => ap_start,
      ap_done => ap_done,
      ap_idle => ap_idle,
      ap_ready => ap_ready,
      V1_a => V1_a,
      V1_b => V1_b,
      V1_c => V1_c,
      V2_a_s => V2_a_s,
      V2_b_s => V2_b_s,
      V2_c_s => V2_c_s,
      VN_gnd => VN_gnd,
      dT_L1 => dT_L1,
      dT_L2 => dT_L2,
      dT_C => dT_C,
      rC => rC,
      rL1 => rL1,
      rL2 => rL2,
      Preload => Preload,
      CB1_K1_K3_V => CB1_K1_K3_V,
      IL1_a_r => IL1_a_r,
      IL1_b_r => IL1_b_r,
      IL1_c_r => IL1_c_r,
      IL2_a_r => IL2_a_r,
      IL2_b_r => IL2_b_r,
      IL2_c_r => IL2_c_r,
      Vp_a_r => Vp_a_r,
      Vp_b_r => Vp_b_r,
      Vp_c_r => Vp_c_r
    );
END NV_project_lcl_filter_0_0_arch;
