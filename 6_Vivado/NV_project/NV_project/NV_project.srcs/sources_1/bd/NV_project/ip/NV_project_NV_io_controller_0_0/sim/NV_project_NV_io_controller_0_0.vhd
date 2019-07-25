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

-- IP VLNV: xilinx.com:user:NV_io_controller:1.0
-- IP Revision: 8

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY NV_project_NV_io_controller_0_0 IS
  PORT (
    mode : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    mode_dac : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    analog_output_maxValue_1 : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
    analog_output_maxValue_2 : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
    analog_output_maxValue_3 : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
    analog_output_maxValue_4 : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
    analog_output_maxValue_5 : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
    analog_output_maxValue_6 : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
    analog_output_maxValue_7 : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
    analog_output_maxValue_8 : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
    analog_output_maxValue_9 : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
    analog_output_maxValue_10 : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
    analog_output_maxValue_11 : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
    analog_output_maxValue_12 : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
    analog_output_maxValue_13 : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
    analog_output_maxValue_14 : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
    analog_output_maxValue_15 : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
    analog_output_maxValue_16 : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
    analog_output_maxValue_17 : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
    analog_output_maxValue_18 : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
    potDig_output_value_1 : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
    potDig_output_value_2 : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
    potDig_output_value_3 : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
    potDig_output_value_4 : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
    Expansor_output_value_1 : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    Expansor_output_value_2 : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    Expansor_output_value_3 : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    Fan_input_value : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
    Expansor_input_value : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    sp2 : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    sp3 : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    sp4 : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    sp5 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    sp6 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    sp7 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    sp8 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    s00_axi_awaddr : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    s00_axi_awprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    s00_axi_awvalid : IN STD_LOGIC;
    s00_axi_awready : OUT STD_LOGIC;
    s00_axi_wdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    s00_axi_wstrb : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    s00_axi_wvalid : IN STD_LOGIC;
    s00_axi_wready : OUT STD_LOGIC;
    s00_axi_bresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    s00_axi_bvalid : OUT STD_LOGIC;
    s00_axi_bready : IN STD_LOGIC;
    s00_axi_araddr : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    s00_axi_arprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    s00_axi_arvalid : IN STD_LOGIC;
    s00_axi_arready : OUT STD_LOGIC;
    s00_axi_rdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    s00_axi_rresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    s00_axi_rvalid : OUT STD_LOGIC;
    s00_axi_rready : IN STD_LOGIC;
    s00_axi_aclk : IN STD_LOGIC;
    s00_axi_aresetn : IN STD_LOGIC
  );
END NV_project_NV_io_controller_0_0;

ARCHITECTURE NV_project_NV_io_controller_0_0_arch OF NV_project_NV_io_controller_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF NV_project_NV_io_controller_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT NV_io_controller_v1_0 IS
    GENERIC (
      C_S00_AXI_DATA_WIDTH : INTEGER; -- Width of S_AXI data bus
      C_S00_AXI_ADDR_WIDTH : INTEGER -- Width of S_AXI address bus
    );
    PORT (
      mode : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      mode_dac : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      analog_output_maxValue_1 : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
      analog_output_maxValue_2 : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
      analog_output_maxValue_3 : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
      analog_output_maxValue_4 : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
      analog_output_maxValue_5 : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
      analog_output_maxValue_6 : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
      analog_output_maxValue_7 : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
      analog_output_maxValue_8 : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
      analog_output_maxValue_9 : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
      analog_output_maxValue_10 : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
      analog_output_maxValue_11 : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
      analog_output_maxValue_12 : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
      analog_output_maxValue_13 : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
      analog_output_maxValue_14 : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
      analog_output_maxValue_15 : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
      analog_output_maxValue_16 : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
      analog_output_maxValue_17 : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
      analog_output_maxValue_18 : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
      potDig_output_value_1 : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
      potDig_output_value_2 : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
      potDig_output_value_3 : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
      potDig_output_value_4 : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
      Expansor_output_value_1 : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      Expansor_output_value_2 : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      Expansor_output_value_3 : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      Fan_input_value : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
      Expansor_input_value : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      sp2 : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      sp3 : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      sp4 : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      sp5 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      sp6 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      sp7 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      sp8 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      s00_axi_awaddr : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      s00_axi_awprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      s00_axi_awvalid : IN STD_LOGIC;
      s00_axi_awready : OUT STD_LOGIC;
      s00_axi_wdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      s00_axi_wstrb : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      s00_axi_wvalid : IN STD_LOGIC;
      s00_axi_wready : OUT STD_LOGIC;
      s00_axi_bresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      s00_axi_bvalid : OUT STD_LOGIC;
      s00_axi_bready : IN STD_LOGIC;
      s00_axi_araddr : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      s00_axi_arprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      s00_axi_arvalid : IN STD_LOGIC;
      s00_axi_arready : OUT STD_LOGIC;
      s00_axi_rdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      s00_axi_rresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      s00_axi_rvalid : OUT STD_LOGIC;
      s00_axi_rready : IN STD_LOGIC;
      s00_axi_aclk : IN STD_LOGIC;
      s00_axi_aresetn : IN STD_LOGIC
    );
  END COMPONENT NV_io_controller_v1_0;
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER OF s00_axi_aresetn: SIGNAL IS "XIL_INTERFACENAME S00_AXI_RST, POLARITY ACTIVE_LOW";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_aresetn: SIGNAL IS "xilinx.com:signal:reset:1.0 S00_AXI_RST RST";
  ATTRIBUTE X_INTERFACE_PARAMETER OF s00_axi_aclk: SIGNAL IS "XIL_INTERFACENAME S00_AXI_CLK, ASSOCIATED_BUSIF S00_AXI, ASSOCIATED_RESET s00_axi_aresetn, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN NV_project_processing_system7_0_1_FCLK_CLK0";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_aclk: SIGNAL IS "xilinx.com:signal:clock:1.0 S00_AXI_CLK CLK";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_rready: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI RREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_rvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI RVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_rresp: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI RRESP";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_rdata: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI RDATA";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_arready: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_arvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_arprot: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_araddr: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_bready: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI BREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_bvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI BVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_bresp: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI BRESP";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_wready: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI WREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_wvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI WVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_wstrb: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI WSTRB";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_wdata: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI WDATA";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_awready: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI AWREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_awvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI AWVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_awprot: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI AWPROT";
  ATTRIBUTE X_INTERFACE_PARAMETER OF s00_axi_awaddr: SIGNAL IS "XIL_INTERFACENAME S00_AXI, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 36, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 8, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN NV_project_processing_system7_0_1_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_awaddr: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR";
BEGIN
  U0 : NV_io_controller_v1_0
    GENERIC MAP (
      C_S00_AXI_DATA_WIDTH => 32,
      C_S00_AXI_ADDR_WIDTH => 8
    )
    PORT MAP (
      mode => mode,
      mode_dac => mode_dac,
      analog_output_maxValue_1 => analog_output_maxValue_1,
      analog_output_maxValue_2 => analog_output_maxValue_2,
      analog_output_maxValue_3 => analog_output_maxValue_3,
      analog_output_maxValue_4 => analog_output_maxValue_4,
      analog_output_maxValue_5 => analog_output_maxValue_5,
      analog_output_maxValue_6 => analog_output_maxValue_6,
      analog_output_maxValue_7 => analog_output_maxValue_7,
      analog_output_maxValue_8 => analog_output_maxValue_8,
      analog_output_maxValue_9 => analog_output_maxValue_9,
      analog_output_maxValue_10 => analog_output_maxValue_10,
      analog_output_maxValue_11 => analog_output_maxValue_11,
      analog_output_maxValue_12 => analog_output_maxValue_12,
      analog_output_maxValue_13 => analog_output_maxValue_13,
      analog_output_maxValue_14 => analog_output_maxValue_14,
      analog_output_maxValue_15 => analog_output_maxValue_15,
      analog_output_maxValue_16 => analog_output_maxValue_16,
      analog_output_maxValue_17 => analog_output_maxValue_17,
      analog_output_maxValue_18 => analog_output_maxValue_18,
      potDig_output_value_1 => potDig_output_value_1,
      potDig_output_value_2 => potDig_output_value_2,
      potDig_output_value_3 => potDig_output_value_3,
      potDig_output_value_4 => potDig_output_value_4,
      Expansor_output_value_1 => Expansor_output_value_1,
      Expansor_output_value_2 => Expansor_output_value_2,
      Expansor_output_value_3 => Expansor_output_value_3,
      Fan_input_value => Fan_input_value,
      Expansor_input_value => Expansor_input_value,
      sp2 => sp2,
      sp3 => sp3,
      sp4 => sp4,
      sp5 => sp5,
      sp6 => sp6,
      sp7 => sp7,
      sp8 => sp8,
      s00_axi_awaddr => s00_axi_awaddr,
      s00_axi_awprot => s00_axi_awprot,
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_awready => s00_axi_awready,
      s00_axi_wdata => s00_axi_wdata,
      s00_axi_wstrb => s00_axi_wstrb,
      s00_axi_wvalid => s00_axi_wvalid,
      s00_axi_wready => s00_axi_wready,
      s00_axi_bresp => s00_axi_bresp,
      s00_axi_bvalid => s00_axi_bvalid,
      s00_axi_bready => s00_axi_bready,
      s00_axi_araddr => s00_axi_araddr,
      s00_axi_arprot => s00_axi_arprot,
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_arready => s00_axi_arready,
      s00_axi_rdata => s00_axi_rdata,
      s00_axi_rresp => s00_axi_rresp,
      s00_axi_rvalid => s00_axi_rvalid,
      s00_axi_rready => s00_axi_rready,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_aresetn => s00_axi_aresetn
    );
END NV_project_NV_io_controller_0_0_arch;
