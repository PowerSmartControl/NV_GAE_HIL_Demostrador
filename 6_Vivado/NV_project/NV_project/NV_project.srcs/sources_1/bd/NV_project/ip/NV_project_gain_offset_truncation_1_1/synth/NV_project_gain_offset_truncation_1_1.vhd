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

-- IP VLNV: xilinx.com:hls:gain_offset_truncation:1.0
-- IP Revision: 1806151521

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY NV_project_gain_offset_truncation_1_1 IS
  PORT (
    ap_clk : IN STD_LOGIC;
    ap_rst_n : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    in_I_LCL_1_a : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    in_I_LCL_1_b : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    in_I_LCL_1_c : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    in_I_pmsm_a : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    in_I_pmsm_b : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    in_I_pmsm_c : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    in_V_dc_bus : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    in_I_LCL_2_a : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    in_I_LCL_2_b : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    in_I_LCL_2_c : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    in_V_grid_a : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    in_V_grid_b : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    in_V_grid_c : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    in_Vp_a : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    in_Vp_b : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    in_Vp_c : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    in_V_fem_a : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    in_V_fem_b : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    in_V_fem_c : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    CB1_K1_K3_V : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    out_I_LCL_1_a : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
    out_I_LCL_1_b : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
    out_I_LCL_1_c : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
    out_I_pmsm_a : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
    out_I_pmsm_b : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
    out_I_pmsm_c : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
    out_V_dc_bus : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
    out_I_LCL_2_a : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
    out_I_LCL_2_b : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
    out_I_LCL_2_c : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
    out_V_grid_a : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
    out_V_grid_b : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
    out_V_grid_c : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
    out_V_fem_a : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
    out_V_fem_b : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
    out_V_fem_c : OUT STD_LOGIC_VECTOR(11 DOWNTO 0)
  );
END NV_project_gain_offset_truncation_1_1;

ARCHITECTURE NV_project_gain_offset_truncation_1_1_arch OF NV_project_gain_offset_truncation_1_1 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF NV_project_gain_offset_truncation_1_1_arch: ARCHITECTURE IS "yes";
  COMPONENT gain_offset_truncation IS
    PORT (
      ap_clk : IN STD_LOGIC;
      ap_rst_n : IN STD_LOGIC;
      ap_start : IN STD_LOGIC;
      ap_done : OUT STD_LOGIC;
      ap_idle : OUT STD_LOGIC;
      ap_ready : OUT STD_LOGIC;
      in_I_LCL_1_a : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      in_I_LCL_1_b : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      in_I_LCL_1_c : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      in_I_pmsm_a : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      in_I_pmsm_b : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      in_I_pmsm_c : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      in_V_dc_bus : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      in_I_LCL_2_a : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      in_I_LCL_2_b : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      in_I_LCL_2_c : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      in_V_grid_a : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      in_V_grid_b : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      in_V_grid_c : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      in_Vp_a : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      in_Vp_b : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      in_Vp_c : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      in_V_fem_a : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      in_V_fem_b : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      in_V_fem_c : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      CB1_K1_K3_V : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      out_I_LCL_1_a : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
      out_I_LCL_1_b : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
      out_I_LCL_1_c : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
      out_I_pmsm_a : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
      out_I_pmsm_b : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
      out_I_pmsm_c : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
      out_V_dc_bus : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
      out_I_LCL_2_a : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
      out_I_LCL_2_b : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
      out_I_LCL_2_c : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
      out_V_grid_a : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
      out_V_grid_b : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
      out_V_grid_c : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
      out_V_fem_a : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
      out_V_fem_b : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
      out_V_fem_c : OUT STD_LOGIC_VECTOR(11 DOWNTO 0)
    );
  END COMPONENT gain_offset_truncation;
  ATTRIBUTE X_CORE_INFO : STRING;
  ATTRIBUTE X_CORE_INFO OF NV_project_gain_offset_truncation_1_1_arch: ARCHITECTURE IS "gain_offset_truncation,Vivado 2017.4";
  ATTRIBUTE CHECK_LICENSE_TYPE : STRING;
  ATTRIBUTE CHECK_LICENSE_TYPE OF NV_project_gain_offset_truncation_1_1_arch : ARCHITECTURE IS "NV_project_gain_offset_truncation_1_1,gain_offset_truncation,{}";
  ATTRIBUTE CORE_GENERATION_INFO : STRING;
  ATTRIBUTE CORE_GENERATION_INFO OF NV_project_gain_offset_truncation_1_1_arch: ARCHITECTURE IS "NV_project_gain_offset_truncation_1_1,gain_offset_truncation,{x_ipProduct=Vivado 2017.4,x_ipVendor=xilinx.com,x_ipLibrary=hls,x_ipName=gain_offset_truncation,x_ipVersion=1.0,x_ipCoreRevision=1806151521,x_ipLanguage=VHDL,x_ipSimLanguage=MIXED}";
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER OF out_V_fem_c: SIGNAL IS "XIL_INTERFACENAME out_V_fem_c, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 12} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}";
  ATTRIBUTE X_INTERFACE_INFO OF out_V_fem_c: SIGNAL IS "xilinx.com:signal:data:1.0 out_V_fem_c DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF out_V_fem_b: SIGNAL IS "XIL_INTERFACENAME out_V_fem_b, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 12} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}";
  ATTRIBUTE X_INTERFACE_INFO OF out_V_fem_b: SIGNAL IS "xilinx.com:signal:data:1.0 out_V_fem_b DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF out_V_fem_a: SIGNAL IS "XIL_INTERFACENAME out_V_fem_a, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 12} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}";
  ATTRIBUTE X_INTERFACE_INFO OF out_V_fem_a: SIGNAL IS "xilinx.com:signal:data:1.0 out_V_fem_a DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF out_V_grid_c: SIGNAL IS "XIL_INTERFACENAME out_V_grid_c, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 12} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}";
  ATTRIBUTE X_INTERFACE_INFO OF out_V_grid_c: SIGNAL IS "xilinx.com:signal:data:1.0 out_V_grid_c DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF out_V_grid_b: SIGNAL IS "XIL_INTERFACENAME out_V_grid_b, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 12} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}";
  ATTRIBUTE X_INTERFACE_INFO OF out_V_grid_b: SIGNAL IS "xilinx.com:signal:data:1.0 out_V_grid_b DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF out_V_grid_a: SIGNAL IS "XIL_INTERFACENAME out_V_grid_a, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 12} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}";
  ATTRIBUTE X_INTERFACE_INFO OF out_V_grid_a: SIGNAL IS "xilinx.com:signal:data:1.0 out_V_grid_a DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF out_I_LCL_2_c: SIGNAL IS "XIL_INTERFACENAME out_I_LCL_2_c, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 12} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}";
  ATTRIBUTE X_INTERFACE_INFO OF out_I_LCL_2_c: SIGNAL IS "xilinx.com:signal:data:1.0 out_I_LCL_2_c DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF out_I_LCL_2_b: SIGNAL IS "XIL_INTERFACENAME out_I_LCL_2_b, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 12} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}";
  ATTRIBUTE X_INTERFACE_INFO OF out_I_LCL_2_b: SIGNAL IS "xilinx.com:signal:data:1.0 out_I_LCL_2_b DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF out_I_LCL_2_a: SIGNAL IS "XIL_INTERFACENAME out_I_LCL_2_a, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 12} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}";
  ATTRIBUTE X_INTERFACE_INFO OF out_I_LCL_2_a: SIGNAL IS "xilinx.com:signal:data:1.0 out_I_LCL_2_a DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF out_V_dc_bus: SIGNAL IS "XIL_INTERFACENAME out_V_dc_bus, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 12} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}";
  ATTRIBUTE X_INTERFACE_INFO OF out_V_dc_bus: SIGNAL IS "xilinx.com:signal:data:1.0 out_V_dc_bus DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF out_I_pmsm_c: SIGNAL IS "XIL_INTERFACENAME out_I_pmsm_c, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 12} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}";
  ATTRIBUTE X_INTERFACE_INFO OF out_I_pmsm_c: SIGNAL IS "xilinx.com:signal:data:1.0 out_I_pmsm_c DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF out_I_pmsm_b: SIGNAL IS "XIL_INTERFACENAME out_I_pmsm_b, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 12} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}";
  ATTRIBUTE X_INTERFACE_INFO OF out_I_pmsm_b: SIGNAL IS "xilinx.com:signal:data:1.0 out_I_pmsm_b DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF out_I_pmsm_a: SIGNAL IS "XIL_INTERFACENAME out_I_pmsm_a, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 12} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}";
  ATTRIBUTE X_INTERFACE_INFO OF out_I_pmsm_a: SIGNAL IS "xilinx.com:signal:data:1.0 out_I_pmsm_a DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF out_I_LCL_1_c: SIGNAL IS "XIL_INTERFACENAME out_I_LCL_1_c, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 12} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}";
  ATTRIBUTE X_INTERFACE_INFO OF out_I_LCL_1_c: SIGNAL IS "xilinx.com:signal:data:1.0 out_I_LCL_1_c DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF out_I_LCL_1_b: SIGNAL IS "XIL_INTERFACENAME out_I_LCL_1_b, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 12} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}";
  ATTRIBUTE X_INTERFACE_INFO OF out_I_LCL_1_b: SIGNAL IS "xilinx.com:signal:data:1.0 out_I_LCL_1_b DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF out_I_LCL_1_a: SIGNAL IS "XIL_INTERFACENAME out_I_LCL_1_a, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 12} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}";
  ATTRIBUTE X_INTERFACE_INFO OF out_I_LCL_1_a: SIGNAL IS "xilinx.com:signal:data:1.0 out_I_LCL_1_a DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF CB1_K1_K3_V: SIGNAL IS "XIL_INTERFACENAME CB1_K1_K3_V, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 3} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}}";
  ATTRIBUTE X_INTERFACE_INFO OF CB1_K1_K3_V: SIGNAL IS "xilinx.com:signal:data:1.0 CB1_K1_K3_V DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF in_V_fem_c: SIGNAL IS "XIL_INTERFACENAME in_V_fem_c, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {float {sigwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 24}}}}}}";
  ATTRIBUTE X_INTERFACE_INFO OF in_V_fem_c: SIGNAL IS "xilinx.com:signal:data:1.0 in_V_fem_c DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF in_V_fem_b: SIGNAL IS "XIL_INTERFACENAME in_V_fem_b, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {float {sigwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 24}}}}}}";
  ATTRIBUTE X_INTERFACE_INFO OF in_V_fem_b: SIGNAL IS "xilinx.com:signal:data:1.0 in_V_fem_b DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF in_V_fem_a: SIGNAL IS "XIL_INTERFACENAME in_V_fem_a, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {float {sigwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 24}}}}}}";
  ATTRIBUTE X_INTERFACE_INFO OF in_V_fem_a: SIGNAL IS "xilinx.com:signal:data:1.0 in_V_fem_a DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF in_Vp_c: SIGNAL IS "XIL_INTERFACENAME in_Vp_c, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {float {sigwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 24}}}}}}";
  ATTRIBUTE X_INTERFACE_INFO OF in_Vp_c: SIGNAL IS "xilinx.com:signal:data:1.0 in_Vp_c DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF in_Vp_b: SIGNAL IS "XIL_INTERFACENAME in_Vp_b, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {float {sigwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 24}}}}}}";
  ATTRIBUTE X_INTERFACE_INFO OF in_Vp_b: SIGNAL IS "xilinx.com:signal:data:1.0 in_Vp_b DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF in_Vp_a: SIGNAL IS "XIL_INTERFACENAME in_Vp_a, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {float {sigwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 24}}}}}}";
  ATTRIBUTE X_INTERFACE_INFO OF in_Vp_a: SIGNAL IS "xilinx.com:signal:data:1.0 in_Vp_a DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF in_V_grid_c: SIGNAL IS "XIL_INTERFACENAME in_V_grid_c, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {float {sigwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 24}}}}}}";
  ATTRIBUTE X_INTERFACE_INFO OF in_V_grid_c: SIGNAL IS "xilinx.com:signal:data:1.0 in_V_grid_c DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF in_V_grid_b: SIGNAL IS "XIL_INTERFACENAME in_V_grid_b, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {float {sigwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 24}}}}}}";
  ATTRIBUTE X_INTERFACE_INFO OF in_V_grid_b: SIGNAL IS "xilinx.com:signal:data:1.0 in_V_grid_b DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF in_V_grid_a: SIGNAL IS "XIL_INTERFACENAME in_V_grid_a, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {float {sigwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 24}}}}}}";
  ATTRIBUTE X_INTERFACE_INFO OF in_V_grid_a: SIGNAL IS "xilinx.com:signal:data:1.0 in_V_grid_a DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF in_I_LCL_2_c: SIGNAL IS "XIL_INTERFACENAME in_I_LCL_2_c, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {float {sigwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 24}}}}}}";
  ATTRIBUTE X_INTERFACE_INFO OF in_I_LCL_2_c: SIGNAL IS "xilinx.com:signal:data:1.0 in_I_LCL_2_c DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF in_I_LCL_2_b: SIGNAL IS "XIL_INTERFACENAME in_I_LCL_2_b, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {float {sigwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 24}}}}}}";
  ATTRIBUTE X_INTERFACE_INFO OF in_I_LCL_2_b: SIGNAL IS "xilinx.com:signal:data:1.0 in_I_LCL_2_b DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF in_I_LCL_2_a: SIGNAL IS "XIL_INTERFACENAME in_I_LCL_2_a, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {float {sigwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 24}}}}}}";
  ATTRIBUTE X_INTERFACE_INFO OF in_I_LCL_2_a: SIGNAL IS "xilinx.com:signal:data:1.0 in_I_LCL_2_a DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF in_V_dc_bus: SIGNAL IS "XIL_INTERFACENAME in_V_dc_bus, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {float {sigwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 24}}}}}}";
  ATTRIBUTE X_INTERFACE_INFO OF in_V_dc_bus: SIGNAL IS "xilinx.com:signal:data:1.0 in_V_dc_bus DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF in_I_pmsm_c: SIGNAL IS "XIL_INTERFACENAME in_I_pmsm_c, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {float {sigwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 24}}}}}}";
  ATTRIBUTE X_INTERFACE_INFO OF in_I_pmsm_c: SIGNAL IS "xilinx.com:signal:data:1.0 in_I_pmsm_c DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF in_I_pmsm_b: SIGNAL IS "XIL_INTERFACENAME in_I_pmsm_b, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {float {sigwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 24}}}}}}";
  ATTRIBUTE X_INTERFACE_INFO OF in_I_pmsm_b: SIGNAL IS "xilinx.com:signal:data:1.0 in_I_pmsm_b DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF in_I_pmsm_a: SIGNAL IS "XIL_INTERFACENAME in_I_pmsm_a, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {float {sigwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 24}}}}}}";
  ATTRIBUTE X_INTERFACE_INFO OF in_I_pmsm_a: SIGNAL IS "xilinx.com:signal:data:1.0 in_I_pmsm_a DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF in_I_LCL_1_c: SIGNAL IS "XIL_INTERFACENAME in_I_LCL_1_c, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {float {sigwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 24}}}}}}";
  ATTRIBUTE X_INTERFACE_INFO OF in_I_LCL_1_c: SIGNAL IS "xilinx.com:signal:data:1.0 in_I_LCL_1_c DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF in_I_LCL_1_b: SIGNAL IS "XIL_INTERFACENAME in_I_LCL_1_b, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {float {sigwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 24}}}}}}";
  ATTRIBUTE X_INTERFACE_INFO OF in_I_LCL_1_b: SIGNAL IS "xilinx.com:signal:data:1.0 in_I_LCL_1_b DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF in_I_LCL_1_a: SIGNAL IS "XIL_INTERFACENAME in_I_LCL_1_a, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {float {sigwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 24}}}}}}";
  ATTRIBUTE X_INTERFACE_INFO OF in_I_LCL_1_a: SIGNAL IS "xilinx.com:signal:data:1.0 in_I_LCL_1_a DATA";
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
  U0 : gain_offset_truncation
    PORT MAP (
      ap_clk => ap_clk,
      ap_rst_n => ap_rst_n,
      ap_start => ap_start,
      ap_done => ap_done,
      ap_idle => ap_idle,
      ap_ready => ap_ready,
      in_I_LCL_1_a => in_I_LCL_1_a,
      in_I_LCL_1_b => in_I_LCL_1_b,
      in_I_LCL_1_c => in_I_LCL_1_c,
      in_I_pmsm_a => in_I_pmsm_a,
      in_I_pmsm_b => in_I_pmsm_b,
      in_I_pmsm_c => in_I_pmsm_c,
      in_V_dc_bus => in_V_dc_bus,
      in_I_LCL_2_a => in_I_LCL_2_a,
      in_I_LCL_2_b => in_I_LCL_2_b,
      in_I_LCL_2_c => in_I_LCL_2_c,
      in_V_grid_a => in_V_grid_a,
      in_V_grid_b => in_V_grid_b,
      in_V_grid_c => in_V_grid_c,
      in_Vp_a => in_Vp_a,
      in_Vp_b => in_Vp_b,
      in_Vp_c => in_Vp_c,
      in_V_fem_a => in_V_fem_a,
      in_V_fem_b => in_V_fem_b,
      in_V_fem_c => in_V_fem_c,
      CB1_K1_K3_V => CB1_K1_K3_V,
      out_I_LCL_1_a => out_I_LCL_1_a,
      out_I_LCL_1_b => out_I_LCL_1_b,
      out_I_LCL_1_c => out_I_LCL_1_c,
      out_I_pmsm_a => out_I_pmsm_a,
      out_I_pmsm_b => out_I_pmsm_b,
      out_I_pmsm_c => out_I_pmsm_c,
      out_V_dc_bus => out_V_dc_bus,
      out_I_LCL_2_a => out_I_LCL_2_a,
      out_I_LCL_2_b => out_I_LCL_2_b,
      out_I_LCL_2_c => out_I_LCL_2_c,
      out_V_grid_a => out_V_grid_a,
      out_V_grid_b => out_V_grid_b,
      out_V_grid_c => out_V_grid_c,
      out_V_fem_a => out_V_fem_a,
      out_V_fem_b => out_V_fem_b,
      out_V_fem_c => out_V_fem_c
    );
END NV_project_gain_offset_truncation_1_1_arch;
