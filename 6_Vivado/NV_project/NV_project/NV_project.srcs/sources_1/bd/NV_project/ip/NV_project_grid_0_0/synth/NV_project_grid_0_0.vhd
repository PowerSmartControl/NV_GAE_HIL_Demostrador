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

-- IP VLNV: xilinx.com:hls:grid:1.0
-- IP Revision: 1806151346

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY NV_project_grid_0_0 IS
  PORT (
    ap_clk : IN STD_LOGIC;
    ap_rst_n : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    phase_step_on : IN STD_LOGIC;
    phase_step : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    counter_limit : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    ampl_a : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    ampl_b : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    ampl_c : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    inv_seq : IN STD_LOGIC;
    proof_flag_on : IN STD_LOGIC;
    Grid_a_r : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    Grid_b_r : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    Grid_c_r : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    mod_a : OUT STD_LOGIC_VECTOR(17 DOWNTO 0);
    mod_b : OUT STD_LOGIC_VECTOR(17 DOWNTO 0);
    mod_c : OUT STD_LOGIC_VECTOR(17 DOWNTO 0);
    I_out_proof : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
  );
END NV_project_grid_0_0;

ARCHITECTURE NV_project_grid_0_0_arch OF NV_project_grid_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF NV_project_grid_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT grid IS
    PORT (
      ap_clk : IN STD_LOGIC;
      ap_rst_n : IN STD_LOGIC;
      ap_start : IN STD_LOGIC;
      ap_done : OUT STD_LOGIC;
      ap_idle : OUT STD_LOGIC;
      ap_ready : OUT STD_LOGIC;
      phase_step_on : IN STD_LOGIC;
      phase_step : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      counter_limit : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      ampl_a : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      ampl_b : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      ampl_c : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      inv_seq : IN STD_LOGIC;
      proof_flag_on : IN STD_LOGIC;
      Grid_a_r : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      Grid_b_r : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      Grid_c_r : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      mod_a : OUT STD_LOGIC_VECTOR(17 DOWNTO 0);
      mod_b : OUT STD_LOGIC_VECTOR(17 DOWNTO 0);
      mod_c : OUT STD_LOGIC_VECTOR(17 DOWNTO 0);
      I_out_proof : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
    );
  END COMPONENT grid;
  ATTRIBUTE X_CORE_INFO : STRING;
  ATTRIBUTE X_CORE_INFO OF NV_project_grid_0_0_arch: ARCHITECTURE IS "grid,Vivado 2017.4";
  ATTRIBUTE CHECK_LICENSE_TYPE : STRING;
  ATTRIBUTE CHECK_LICENSE_TYPE OF NV_project_grid_0_0_arch : ARCHITECTURE IS "NV_project_grid_0_0,grid,{}";
  ATTRIBUTE CORE_GENERATION_INFO : STRING;
  ATTRIBUTE CORE_GENERATION_INFO OF NV_project_grid_0_0_arch: ARCHITECTURE IS "NV_project_grid_0_0,grid,{x_ipProduct=Vivado 2017.4,x_ipVendor=xilinx.com,x_ipLibrary=hls,x_ipName=grid,x_ipVersion=1.0,x_ipCoreRevision=1806151346,x_ipLanguage=VHDL,x_ipSimLanguage=MIXED}";
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER OF I_out_proof: SIGNAL IS "XIL_INTERFACENAME I_out_proof, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {float {sigwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 24}}}}}}";
  ATTRIBUTE X_INTERFACE_INFO OF I_out_proof: SIGNAL IS "xilinx.com:signal:data:1.0 I_out_proof DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF mod_c: SIGNAL IS "XIL_INTERFACENAME mod_c, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 18} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}";
  ATTRIBUTE X_INTERFACE_INFO OF mod_c: SIGNAL IS "xilinx.com:signal:data:1.0 mod_c DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF mod_b: SIGNAL IS "XIL_INTERFACENAME mod_b, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 18} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}";
  ATTRIBUTE X_INTERFACE_INFO OF mod_b: SIGNAL IS "xilinx.com:signal:data:1.0 mod_b DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF mod_a: SIGNAL IS "XIL_INTERFACENAME mod_a, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 18} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}";
  ATTRIBUTE X_INTERFACE_INFO OF mod_a: SIGNAL IS "xilinx.com:signal:data:1.0 mod_a DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF Grid_c_r: SIGNAL IS "XIL_INTERFACENAME Grid_c_r, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {float {sigwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 24}}}}}}";
  ATTRIBUTE X_INTERFACE_INFO OF Grid_c_r: SIGNAL IS "xilinx.com:signal:data:1.0 Grid_c_r DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF Grid_b_r: SIGNAL IS "XIL_INTERFACENAME Grid_b_r, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {float {sigwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 24}}}}}}";
  ATTRIBUTE X_INTERFACE_INFO OF Grid_b_r: SIGNAL IS "xilinx.com:signal:data:1.0 Grid_b_r DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF Grid_a_r: SIGNAL IS "XIL_INTERFACENAME Grid_a_r, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {float {sigwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 24}}}}}}";
  ATTRIBUTE X_INTERFACE_INFO OF Grid_a_r: SIGNAL IS "xilinx.com:signal:data:1.0 Grid_a_r DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF proof_flag_on: SIGNAL IS "XIL_INTERFACENAME proof_flag_on, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}";
  ATTRIBUTE X_INTERFACE_INFO OF proof_flag_on: SIGNAL IS "xilinx.com:signal:data:1.0 proof_flag_on DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF inv_seq: SIGNAL IS "XIL_INTERFACENAME inv_seq, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}";
  ATTRIBUTE X_INTERFACE_INFO OF inv_seq: SIGNAL IS "xilinx.com:signal:data:1.0 inv_seq DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF ampl_c: SIGNAL IS "XIL_INTERFACENAME ampl_c, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {float {sigwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 24}}}}}}";
  ATTRIBUTE X_INTERFACE_INFO OF ampl_c: SIGNAL IS "xilinx.com:signal:data:1.0 ampl_c DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF ampl_b: SIGNAL IS "XIL_INTERFACENAME ampl_b, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {float {sigwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 24}}}}}}";
  ATTRIBUTE X_INTERFACE_INFO OF ampl_b: SIGNAL IS "xilinx.com:signal:data:1.0 ampl_b DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF ampl_a: SIGNAL IS "XIL_INTERFACENAME ampl_a, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {float {sigwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 24}}}}}}";
  ATTRIBUTE X_INTERFACE_INFO OF ampl_a: SIGNAL IS "xilinx.com:signal:data:1.0 ampl_a DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF counter_limit: SIGNAL IS "XIL_INTERFACENAME counter_limit, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}";
  ATTRIBUTE X_INTERFACE_INFO OF counter_limit: SIGNAL IS "xilinx.com:signal:data:1.0 counter_limit DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF phase_step: SIGNAL IS "XIL_INTERFACENAME phase_step, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}";
  ATTRIBUTE X_INTERFACE_INFO OF phase_step: SIGNAL IS "xilinx.com:signal:data:1.0 phase_step DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF phase_step_on: SIGNAL IS "XIL_INTERFACENAME phase_step_on, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}";
  ATTRIBUTE X_INTERFACE_INFO OF phase_step_on: SIGNAL IS "xilinx.com:signal:data:1.0 phase_step_on DATA";
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
  U0 : grid
    PORT MAP (
      ap_clk => ap_clk,
      ap_rst_n => ap_rst_n,
      ap_start => ap_start,
      ap_done => ap_done,
      ap_idle => ap_idle,
      ap_ready => ap_ready,
      phase_step_on => phase_step_on,
      phase_step => phase_step,
      counter_limit => counter_limit,
      ampl_a => ampl_a,
      ampl_b => ampl_b,
      ampl_c => ampl_c,
      inv_seq => inv_seq,
      proof_flag_on => proof_flag_on,
      Grid_a_r => Grid_a_r,
      Grid_b_r => Grid_b_r,
      Grid_c_r => Grid_c_r,
      mod_a => mod_a,
      mod_b => mod_b,
      mod_c => mod_c,
      I_out_proof => I_out_proof
    );
END NV_project_grid_0_0_arch;
