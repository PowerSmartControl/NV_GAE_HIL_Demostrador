--Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
--Date        : Mon Jun 25 13:12:58 2018
--Host        : DESKTOP-ANME3V9 running 64-bit major release  (build 9200)
--Command     : generate_target NV_project.bd
--Design      : NV_project
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m00_couplers_imp_14GMZ89 is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end m00_couplers_imp_14GMZ89;

architecture STRUCTURE of m00_couplers_imp_14GMZ89 is
  signal m00_couplers_to_m00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_m00_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_m00_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_m00_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_m00_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_m00_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_m00_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_m00_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  M_AXI_araddr(31 downto 0) <= m00_couplers_to_m00_couplers_ARADDR(31 downto 0);
  M_AXI_arvalid(0) <= m00_couplers_to_m00_couplers_ARVALID(0);
  M_AXI_awaddr(31 downto 0) <= m00_couplers_to_m00_couplers_AWADDR(31 downto 0);
  M_AXI_awvalid(0) <= m00_couplers_to_m00_couplers_AWVALID(0);
  M_AXI_bready(0) <= m00_couplers_to_m00_couplers_BREADY(0);
  M_AXI_rready(0) <= m00_couplers_to_m00_couplers_RREADY(0);
  M_AXI_wdata(31 downto 0) <= m00_couplers_to_m00_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= m00_couplers_to_m00_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid(0) <= m00_couplers_to_m00_couplers_WVALID(0);
  S_AXI_arready(0) <= m00_couplers_to_m00_couplers_ARREADY(0);
  S_AXI_awready(0) <= m00_couplers_to_m00_couplers_AWREADY(0);
  S_AXI_bresp(1 downto 0) <= m00_couplers_to_m00_couplers_BRESP(1 downto 0);
  S_AXI_bvalid(0) <= m00_couplers_to_m00_couplers_BVALID(0);
  S_AXI_rdata(31 downto 0) <= m00_couplers_to_m00_couplers_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= m00_couplers_to_m00_couplers_RRESP(1 downto 0);
  S_AXI_rvalid(0) <= m00_couplers_to_m00_couplers_RVALID(0);
  S_AXI_wready(0) <= m00_couplers_to_m00_couplers_WREADY(0);
  m00_couplers_to_m00_couplers_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m00_couplers_to_m00_couplers_ARREADY(0) <= M_AXI_arready(0);
  m00_couplers_to_m00_couplers_ARVALID(0) <= S_AXI_arvalid(0);
  m00_couplers_to_m00_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m00_couplers_to_m00_couplers_AWREADY(0) <= M_AXI_awready(0);
  m00_couplers_to_m00_couplers_AWVALID(0) <= S_AXI_awvalid(0);
  m00_couplers_to_m00_couplers_BREADY(0) <= S_AXI_bready(0);
  m00_couplers_to_m00_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m00_couplers_to_m00_couplers_BVALID(0) <= M_AXI_bvalid(0);
  m00_couplers_to_m00_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  m00_couplers_to_m00_couplers_RREADY(0) <= S_AXI_rready(0);
  m00_couplers_to_m00_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m00_couplers_to_m00_couplers_RVALID(0) <= M_AXI_rvalid(0);
  m00_couplers_to_m00_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m00_couplers_to_m00_couplers_WREADY(0) <= M_AXI_wready(0);
  m00_couplers_to_m00_couplers_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m00_couplers_to_m00_couplers_WVALID(0) <= S_AXI_wvalid(0);
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m01_couplers_imp_1VW8MN3 is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end m01_couplers_imp_1VW8MN3;

architecture STRUCTURE of m01_couplers_imp_1VW8MN3 is
  signal m01_couplers_to_m01_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_m01_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m01_couplers_to_m01_couplers_ARREADY : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_ARVALID : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_m01_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m01_couplers_to_m01_couplers_AWREADY : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_AWVALID : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_BREADY : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m01_couplers_to_m01_couplers_BVALID : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_m01_couplers_RREADY : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m01_couplers_to_m01_couplers_RVALID : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_m01_couplers_WREADY : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m01_couplers_to_m01_couplers_WVALID : STD_LOGIC;
begin
  M_AXI_araddr(31 downto 0) <= m01_couplers_to_m01_couplers_ARADDR(31 downto 0);
  M_AXI_arprot(2 downto 0) <= m01_couplers_to_m01_couplers_ARPROT(2 downto 0);
  M_AXI_arvalid <= m01_couplers_to_m01_couplers_ARVALID;
  M_AXI_awaddr(31 downto 0) <= m01_couplers_to_m01_couplers_AWADDR(31 downto 0);
  M_AXI_awprot(2 downto 0) <= m01_couplers_to_m01_couplers_AWPROT(2 downto 0);
  M_AXI_awvalid <= m01_couplers_to_m01_couplers_AWVALID;
  M_AXI_bready <= m01_couplers_to_m01_couplers_BREADY;
  M_AXI_rready <= m01_couplers_to_m01_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= m01_couplers_to_m01_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= m01_couplers_to_m01_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid <= m01_couplers_to_m01_couplers_WVALID;
  S_AXI_arready <= m01_couplers_to_m01_couplers_ARREADY;
  S_AXI_awready <= m01_couplers_to_m01_couplers_AWREADY;
  S_AXI_bresp(1 downto 0) <= m01_couplers_to_m01_couplers_BRESP(1 downto 0);
  S_AXI_bvalid <= m01_couplers_to_m01_couplers_BVALID;
  S_AXI_rdata(31 downto 0) <= m01_couplers_to_m01_couplers_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= m01_couplers_to_m01_couplers_RRESP(1 downto 0);
  S_AXI_rvalid <= m01_couplers_to_m01_couplers_RVALID;
  S_AXI_wready <= m01_couplers_to_m01_couplers_WREADY;
  m01_couplers_to_m01_couplers_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m01_couplers_to_m01_couplers_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  m01_couplers_to_m01_couplers_ARREADY <= M_AXI_arready;
  m01_couplers_to_m01_couplers_ARVALID <= S_AXI_arvalid;
  m01_couplers_to_m01_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m01_couplers_to_m01_couplers_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  m01_couplers_to_m01_couplers_AWREADY <= M_AXI_awready;
  m01_couplers_to_m01_couplers_AWVALID <= S_AXI_awvalid;
  m01_couplers_to_m01_couplers_BREADY <= S_AXI_bready;
  m01_couplers_to_m01_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m01_couplers_to_m01_couplers_BVALID <= M_AXI_bvalid;
  m01_couplers_to_m01_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  m01_couplers_to_m01_couplers_RREADY <= S_AXI_rready;
  m01_couplers_to_m01_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m01_couplers_to_m01_couplers_RVALID <= M_AXI_rvalid;
  m01_couplers_to_m01_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m01_couplers_to_m01_couplers_WREADY <= M_AXI_wready;
  m01_couplers_to_m01_couplers_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m01_couplers_to_m01_couplers_WVALID <= S_AXI_wvalid;
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m02_couplers_imp_PA09CL is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end m02_couplers_imp_PA09CL;

architecture STRUCTURE of m02_couplers_imp_PA09CL is
  signal m02_couplers_to_m02_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_m02_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m02_couplers_to_m02_couplers_ARREADY : STD_LOGIC;
  signal m02_couplers_to_m02_couplers_ARVALID : STD_LOGIC;
  signal m02_couplers_to_m02_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_m02_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m02_couplers_to_m02_couplers_AWREADY : STD_LOGIC;
  signal m02_couplers_to_m02_couplers_AWVALID : STD_LOGIC;
  signal m02_couplers_to_m02_couplers_BREADY : STD_LOGIC;
  signal m02_couplers_to_m02_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m02_couplers_to_m02_couplers_BVALID : STD_LOGIC;
  signal m02_couplers_to_m02_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_m02_couplers_RREADY : STD_LOGIC;
  signal m02_couplers_to_m02_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m02_couplers_to_m02_couplers_RVALID : STD_LOGIC;
  signal m02_couplers_to_m02_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_m02_couplers_WREADY : STD_LOGIC;
  signal m02_couplers_to_m02_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m02_couplers_to_m02_couplers_WVALID : STD_LOGIC;
begin
  M_AXI_araddr(31 downto 0) <= m02_couplers_to_m02_couplers_ARADDR(31 downto 0);
  M_AXI_arprot(2 downto 0) <= m02_couplers_to_m02_couplers_ARPROT(2 downto 0);
  M_AXI_arvalid <= m02_couplers_to_m02_couplers_ARVALID;
  M_AXI_awaddr(31 downto 0) <= m02_couplers_to_m02_couplers_AWADDR(31 downto 0);
  M_AXI_awprot(2 downto 0) <= m02_couplers_to_m02_couplers_AWPROT(2 downto 0);
  M_AXI_awvalid <= m02_couplers_to_m02_couplers_AWVALID;
  M_AXI_bready <= m02_couplers_to_m02_couplers_BREADY;
  M_AXI_rready <= m02_couplers_to_m02_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= m02_couplers_to_m02_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= m02_couplers_to_m02_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid <= m02_couplers_to_m02_couplers_WVALID;
  S_AXI_arready <= m02_couplers_to_m02_couplers_ARREADY;
  S_AXI_awready <= m02_couplers_to_m02_couplers_AWREADY;
  S_AXI_bresp(1 downto 0) <= m02_couplers_to_m02_couplers_BRESP(1 downto 0);
  S_AXI_bvalid <= m02_couplers_to_m02_couplers_BVALID;
  S_AXI_rdata(31 downto 0) <= m02_couplers_to_m02_couplers_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= m02_couplers_to_m02_couplers_RRESP(1 downto 0);
  S_AXI_rvalid <= m02_couplers_to_m02_couplers_RVALID;
  S_AXI_wready <= m02_couplers_to_m02_couplers_WREADY;
  m02_couplers_to_m02_couplers_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m02_couplers_to_m02_couplers_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  m02_couplers_to_m02_couplers_ARREADY <= M_AXI_arready;
  m02_couplers_to_m02_couplers_ARVALID <= S_AXI_arvalid;
  m02_couplers_to_m02_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m02_couplers_to_m02_couplers_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  m02_couplers_to_m02_couplers_AWREADY <= M_AXI_awready;
  m02_couplers_to_m02_couplers_AWVALID <= S_AXI_awvalid;
  m02_couplers_to_m02_couplers_BREADY <= S_AXI_bready;
  m02_couplers_to_m02_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m02_couplers_to_m02_couplers_BVALID <= M_AXI_bvalid;
  m02_couplers_to_m02_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  m02_couplers_to_m02_couplers_RREADY <= S_AXI_rready;
  m02_couplers_to_m02_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m02_couplers_to_m02_couplers_RVALID <= M_AXI_rvalid;
  m02_couplers_to_m02_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m02_couplers_to_m02_couplers_WREADY <= M_AXI_wready;
  m02_couplers_to_m02_couplers_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m02_couplers_to_m02_couplers_WVALID <= S_AXI_wvalid;
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m03_couplers_imp_HC6SK3 is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end m03_couplers_imp_HC6SK3;

architecture STRUCTURE of m03_couplers_imp_HC6SK3 is
  signal m03_couplers_to_m03_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m03_couplers_to_m03_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m03_couplers_to_m03_couplers_ARREADY : STD_LOGIC;
  signal m03_couplers_to_m03_couplers_ARVALID : STD_LOGIC;
  signal m03_couplers_to_m03_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m03_couplers_to_m03_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m03_couplers_to_m03_couplers_AWREADY : STD_LOGIC;
  signal m03_couplers_to_m03_couplers_AWVALID : STD_LOGIC;
  signal m03_couplers_to_m03_couplers_BREADY : STD_LOGIC;
  signal m03_couplers_to_m03_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m03_couplers_to_m03_couplers_BVALID : STD_LOGIC;
  signal m03_couplers_to_m03_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m03_couplers_to_m03_couplers_RREADY : STD_LOGIC;
  signal m03_couplers_to_m03_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m03_couplers_to_m03_couplers_RVALID : STD_LOGIC;
  signal m03_couplers_to_m03_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m03_couplers_to_m03_couplers_WREADY : STD_LOGIC;
  signal m03_couplers_to_m03_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m03_couplers_to_m03_couplers_WVALID : STD_LOGIC;
begin
  M_AXI_araddr(31 downto 0) <= m03_couplers_to_m03_couplers_ARADDR(31 downto 0);
  M_AXI_arprot(2 downto 0) <= m03_couplers_to_m03_couplers_ARPROT(2 downto 0);
  M_AXI_arvalid <= m03_couplers_to_m03_couplers_ARVALID;
  M_AXI_awaddr(31 downto 0) <= m03_couplers_to_m03_couplers_AWADDR(31 downto 0);
  M_AXI_awprot(2 downto 0) <= m03_couplers_to_m03_couplers_AWPROT(2 downto 0);
  M_AXI_awvalid <= m03_couplers_to_m03_couplers_AWVALID;
  M_AXI_bready <= m03_couplers_to_m03_couplers_BREADY;
  M_AXI_rready <= m03_couplers_to_m03_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= m03_couplers_to_m03_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= m03_couplers_to_m03_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid <= m03_couplers_to_m03_couplers_WVALID;
  S_AXI_arready <= m03_couplers_to_m03_couplers_ARREADY;
  S_AXI_awready <= m03_couplers_to_m03_couplers_AWREADY;
  S_AXI_bresp(1 downto 0) <= m03_couplers_to_m03_couplers_BRESP(1 downto 0);
  S_AXI_bvalid <= m03_couplers_to_m03_couplers_BVALID;
  S_AXI_rdata(31 downto 0) <= m03_couplers_to_m03_couplers_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= m03_couplers_to_m03_couplers_RRESP(1 downto 0);
  S_AXI_rvalid <= m03_couplers_to_m03_couplers_RVALID;
  S_AXI_wready <= m03_couplers_to_m03_couplers_WREADY;
  m03_couplers_to_m03_couplers_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m03_couplers_to_m03_couplers_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  m03_couplers_to_m03_couplers_ARREADY <= M_AXI_arready;
  m03_couplers_to_m03_couplers_ARVALID <= S_AXI_arvalid;
  m03_couplers_to_m03_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m03_couplers_to_m03_couplers_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  m03_couplers_to_m03_couplers_AWREADY <= M_AXI_awready;
  m03_couplers_to_m03_couplers_AWVALID <= S_AXI_awvalid;
  m03_couplers_to_m03_couplers_BREADY <= S_AXI_bready;
  m03_couplers_to_m03_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m03_couplers_to_m03_couplers_BVALID <= M_AXI_bvalid;
  m03_couplers_to_m03_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  m03_couplers_to_m03_couplers_RREADY <= S_AXI_rready;
  m03_couplers_to_m03_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m03_couplers_to_m03_couplers_RVALID <= M_AXI_rvalid;
  m03_couplers_to_m03_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m03_couplers_to_m03_couplers_WREADY <= M_AXI_wready;
  m03_couplers_to_m03_couplers_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m03_couplers_to_m03_couplers_WVALID <= S_AXI_wvalid;
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m04_couplers_imp_1PXQR28 is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC;
    M_AXI_arprot : out STD_LOGIC;
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC;
    M_AXI_awprot : out STD_LOGIC;
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC;
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC;
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC;
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC;
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC;
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC;
    S_AXI_arprot : in STD_LOGIC;
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC;
    S_AXI_awprot : in STD_LOGIC;
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC;
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC;
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC;
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC;
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC;
    S_AXI_wvalid : in STD_LOGIC
  );
end m04_couplers_imp_1PXQR28;

architecture STRUCTURE of m04_couplers_imp_1PXQR28 is
  signal m04_couplers_to_m04_couplers_ARADDR : STD_LOGIC;
  signal m04_couplers_to_m04_couplers_ARPROT : STD_LOGIC;
  signal m04_couplers_to_m04_couplers_ARREADY : STD_LOGIC;
  signal m04_couplers_to_m04_couplers_ARVALID : STD_LOGIC;
  signal m04_couplers_to_m04_couplers_AWADDR : STD_LOGIC;
  signal m04_couplers_to_m04_couplers_AWPROT : STD_LOGIC;
  signal m04_couplers_to_m04_couplers_AWREADY : STD_LOGIC;
  signal m04_couplers_to_m04_couplers_AWVALID : STD_LOGIC;
  signal m04_couplers_to_m04_couplers_BREADY : STD_LOGIC;
  signal m04_couplers_to_m04_couplers_BRESP : STD_LOGIC;
  signal m04_couplers_to_m04_couplers_BVALID : STD_LOGIC;
  signal m04_couplers_to_m04_couplers_RDATA : STD_LOGIC;
  signal m04_couplers_to_m04_couplers_RREADY : STD_LOGIC;
  signal m04_couplers_to_m04_couplers_RRESP : STD_LOGIC;
  signal m04_couplers_to_m04_couplers_RVALID : STD_LOGIC;
  signal m04_couplers_to_m04_couplers_WDATA : STD_LOGIC;
  signal m04_couplers_to_m04_couplers_WREADY : STD_LOGIC;
  signal m04_couplers_to_m04_couplers_WSTRB : STD_LOGIC;
  signal m04_couplers_to_m04_couplers_WVALID : STD_LOGIC;
begin
  M_AXI_araddr <= m04_couplers_to_m04_couplers_ARADDR;
  M_AXI_arprot <= m04_couplers_to_m04_couplers_ARPROT;
  M_AXI_arvalid <= m04_couplers_to_m04_couplers_ARVALID;
  M_AXI_awaddr <= m04_couplers_to_m04_couplers_AWADDR;
  M_AXI_awprot <= m04_couplers_to_m04_couplers_AWPROT;
  M_AXI_awvalid <= m04_couplers_to_m04_couplers_AWVALID;
  M_AXI_bready <= m04_couplers_to_m04_couplers_BREADY;
  M_AXI_rready <= m04_couplers_to_m04_couplers_RREADY;
  M_AXI_wdata <= m04_couplers_to_m04_couplers_WDATA;
  M_AXI_wstrb <= m04_couplers_to_m04_couplers_WSTRB;
  M_AXI_wvalid <= m04_couplers_to_m04_couplers_WVALID;
  S_AXI_arready <= m04_couplers_to_m04_couplers_ARREADY;
  S_AXI_awready <= m04_couplers_to_m04_couplers_AWREADY;
  S_AXI_bresp <= m04_couplers_to_m04_couplers_BRESP;
  S_AXI_bvalid <= m04_couplers_to_m04_couplers_BVALID;
  S_AXI_rdata <= m04_couplers_to_m04_couplers_RDATA;
  S_AXI_rresp <= m04_couplers_to_m04_couplers_RRESP;
  S_AXI_rvalid <= m04_couplers_to_m04_couplers_RVALID;
  S_AXI_wready <= m04_couplers_to_m04_couplers_WREADY;
  m04_couplers_to_m04_couplers_ARADDR <= S_AXI_araddr;
  m04_couplers_to_m04_couplers_ARPROT <= S_AXI_arprot;
  m04_couplers_to_m04_couplers_ARREADY <= M_AXI_arready;
  m04_couplers_to_m04_couplers_ARVALID <= S_AXI_arvalid;
  m04_couplers_to_m04_couplers_AWADDR <= S_AXI_awaddr;
  m04_couplers_to_m04_couplers_AWPROT <= S_AXI_awprot;
  m04_couplers_to_m04_couplers_AWREADY <= M_AXI_awready;
  m04_couplers_to_m04_couplers_AWVALID <= S_AXI_awvalid;
  m04_couplers_to_m04_couplers_BREADY <= S_AXI_bready;
  m04_couplers_to_m04_couplers_BRESP <= M_AXI_bresp;
  m04_couplers_to_m04_couplers_BVALID <= M_AXI_bvalid;
  m04_couplers_to_m04_couplers_RDATA <= M_AXI_rdata;
  m04_couplers_to_m04_couplers_RREADY <= S_AXI_rready;
  m04_couplers_to_m04_couplers_RRESP <= M_AXI_rresp;
  m04_couplers_to_m04_couplers_RVALID <= M_AXI_rvalid;
  m04_couplers_to_m04_couplers_WDATA <= S_AXI_wdata;
  m04_couplers_to_m04_couplers_WREADY <= M_AXI_wready;
  m04_couplers_to_m04_couplers_WSTRB <= S_AXI_wstrb;
  m04_couplers_to_m04_couplers_WVALID <= S_AXI_wvalid;
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity s00_couplers_imp_1VKXCEW is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    S_AXI_arlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    S_AXI_awlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    S_AXI_rlast : out STD_LOGIC;
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    S_AXI_wlast : in STD_LOGIC;
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end s00_couplers_imp_1VKXCEW;

architecture STRUCTURE of s00_couplers_imp_1VKXCEW is
  component NV_project_auto_pc_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component NV_project_auto_pc_0;
  signal S_ACLK_1 : STD_LOGIC;
  signal S_ARESETN_1 : STD_LOGIC;
  signal auto_pc_to_s00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_s00_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_pc_to_s00_couplers_ARREADY : STD_LOGIC;
  signal auto_pc_to_s00_couplers_ARVALID : STD_LOGIC;
  signal auto_pc_to_s00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_s00_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_pc_to_s00_couplers_AWREADY : STD_LOGIC;
  signal auto_pc_to_s00_couplers_AWVALID : STD_LOGIC;
  signal auto_pc_to_s00_couplers_BREADY : STD_LOGIC;
  signal auto_pc_to_s00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_s00_couplers_BVALID : STD_LOGIC;
  signal auto_pc_to_s00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_s00_couplers_RREADY : STD_LOGIC;
  signal auto_pc_to_s00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_s00_couplers_RVALID : STD_LOGIC;
  signal auto_pc_to_s00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_s00_couplers_WREADY : STD_LOGIC;
  signal auto_pc_to_s00_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_s00_couplers_WVALID : STD_LOGIC;
  signal s00_couplers_to_auto_pc_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_auto_pc_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_auto_pc_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_pc_ARID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal s00_couplers_to_auto_pc_ARLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_pc_ARLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_auto_pc_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_auto_pc_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_pc_ARREADY : STD_LOGIC;
  signal s00_couplers_to_auto_pc_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_auto_pc_ARVALID : STD_LOGIC;
  signal s00_couplers_to_auto_pc_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_auto_pc_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_auto_pc_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_pc_AWID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal s00_couplers_to_auto_pc_AWLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_pc_AWLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_auto_pc_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_auto_pc_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_pc_AWREADY : STD_LOGIC;
  signal s00_couplers_to_auto_pc_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_auto_pc_AWVALID : STD_LOGIC;
  signal s00_couplers_to_auto_pc_BID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal s00_couplers_to_auto_pc_BREADY : STD_LOGIC;
  signal s00_couplers_to_auto_pc_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_auto_pc_BVALID : STD_LOGIC;
  signal s00_couplers_to_auto_pc_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_auto_pc_RID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal s00_couplers_to_auto_pc_RLAST : STD_LOGIC;
  signal s00_couplers_to_auto_pc_RREADY : STD_LOGIC;
  signal s00_couplers_to_auto_pc_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_auto_pc_RVALID : STD_LOGIC;
  signal s00_couplers_to_auto_pc_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_auto_pc_WID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal s00_couplers_to_auto_pc_WLAST : STD_LOGIC;
  signal s00_couplers_to_auto_pc_WREADY : STD_LOGIC;
  signal s00_couplers_to_auto_pc_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_pc_WVALID : STD_LOGIC;
begin
  M_AXI_araddr(31 downto 0) <= auto_pc_to_s00_couplers_ARADDR(31 downto 0);
  M_AXI_arprot(2 downto 0) <= auto_pc_to_s00_couplers_ARPROT(2 downto 0);
  M_AXI_arvalid <= auto_pc_to_s00_couplers_ARVALID;
  M_AXI_awaddr(31 downto 0) <= auto_pc_to_s00_couplers_AWADDR(31 downto 0);
  M_AXI_awprot(2 downto 0) <= auto_pc_to_s00_couplers_AWPROT(2 downto 0);
  M_AXI_awvalid <= auto_pc_to_s00_couplers_AWVALID;
  M_AXI_bready <= auto_pc_to_s00_couplers_BREADY;
  M_AXI_rready <= auto_pc_to_s00_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= auto_pc_to_s00_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= auto_pc_to_s00_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid <= auto_pc_to_s00_couplers_WVALID;
  S_ACLK_1 <= S_ACLK;
  S_ARESETN_1 <= S_ARESETN;
  S_AXI_arready <= s00_couplers_to_auto_pc_ARREADY;
  S_AXI_awready <= s00_couplers_to_auto_pc_AWREADY;
  S_AXI_bid(11 downto 0) <= s00_couplers_to_auto_pc_BID(11 downto 0);
  S_AXI_bresp(1 downto 0) <= s00_couplers_to_auto_pc_BRESP(1 downto 0);
  S_AXI_bvalid <= s00_couplers_to_auto_pc_BVALID;
  S_AXI_rdata(31 downto 0) <= s00_couplers_to_auto_pc_RDATA(31 downto 0);
  S_AXI_rid(11 downto 0) <= s00_couplers_to_auto_pc_RID(11 downto 0);
  S_AXI_rlast <= s00_couplers_to_auto_pc_RLAST;
  S_AXI_rresp(1 downto 0) <= s00_couplers_to_auto_pc_RRESP(1 downto 0);
  S_AXI_rvalid <= s00_couplers_to_auto_pc_RVALID;
  S_AXI_wready <= s00_couplers_to_auto_pc_WREADY;
  auto_pc_to_s00_couplers_ARREADY <= M_AXI_arready;
  auto_pc_to_s00_couplers_AWREADY <= M_AXI_awready;
  auto_pc_to_s00_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  auto_pc_to_s00_couplers_BVALID <= M_AXI_bvalid;
  auto_pc_to_s00_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  auto_pc_to_s00_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  auto_pc_to_s00_couplers_RVALID <= M_AXI_rvalid;
  auto_pc_to_s00_couplers_WREADY <= M_AXI_wready;
  s00_couplers_to_auto_pc_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  s00_couplers_to_auto_pc_ARBURST(1 downto 0) <= S_AXI_arburst(1 downto 0);
  s00_couplers_to_auto_pc_ARCACHE(3 downto 0) <= S_AXI_arcache(3 downto 0);
  s00_couplers_to_auto_pc_ARID(11 downto 0) <= S_AXI_arid(11 downto 0);
  s00_couplers_to_auto_pc_ARLEN(3 downto 0) <= S_AXI_arlen(3 downto 0);
  s00_couplers_to_auto_pc_ARLOCK(1 downto 0) <= S_AXI_arlock(1 downto 0);
  s00_couplers_to_auto_pc_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  s00_couplers_to_auto_pc_ARQOS(3 downto 0) <= S_AXI_arqos(3 downto 0);
  s00_couplers_to_auto_pc_ARSIZE(2 downto 0) <= S_AXI_arsize(2 downto 0);
  s00_couplers_to_auto_pc_ARVALID <= S_AXI_arvalid;
  s00_couplers_to_auto_pc_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  s00_couplers_to_auto_pc_AWBURST(1 downto 0) <= S_AXI_awburst(1 downto 0);
  s00_couplers_to_auto_pc_AWCACHE(3 downto 0) <= S_AXI_awcache(3 downto 0);
  s00_couplers_to_auto_pc_AWID(11 downto 0) <= S_AXI_awid(11 downto 0);
  s00_couplers_to_auto_pc_AWLEN(3 downto 0) <= S_AXI_awlen(3 downto 0);
  s00_couplers_to_auto_pc_AWLOCK(1 downto 0) <= S_AXI_awlock(1 downto 0);
  s00_couplers_to_auto_pc_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  s00_couplers_to_auto_pc_AWQOS(3 downto 0) <= S_AXI_awqos(3 downto 0);
  s00_couplers_to_auto_pc_AWSIZE(2 downto 0) <= S_AXI_awsize(2 downto 0);
  s00_couplers_to_auto_pc_AWVALID <= S_AXI_awvalid;
  s00_couplers_to_auto_pc_BREADY <= S_AXI_bready;
  s00_couplers_to_auto_pc_RREADY <= S_AXI_rready;
  s00_couplers_to_auto_pc_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  s00_couplers_to_auto_pc_WID(11 downto 0) <= S_AXI_wid(11 downto 0);
  s00_couplers_to_auto_pc_WLAST <= S_AXI_wlast;
  s00_couplers_to_auto_pc_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  s00_couplers_to_auto_pc_WVALID <= S_AXI_wvalid;
auto_pc: component NV_project_auto_pc_0
     port map (
      aclk => S_ACLK_1,
      aresetn => S_ARESETN_1,
      m_axi_araddr(31 downto 0) => auto_pc_to_s00_couplers_ARADDR(31 downto 0),
      m_axi_arprot(2 downto 0) => auto_pc_to_s00_couplers_ARPROT(2 downto 0),
      m_axi_arready => auto_pc_to_s00_couplers_ARREADY,
      m_axi_arvalid => auto_pc_to_s00_couplers_ARVALID,
      m_axi_awaddr(31 downto 0) => auto_pc_to_s00_couplers_AWADDR(31 downto 0),
      m_axi_awprot(2 downto 0) => auto_pc_to_s00_couplers_AWPROT(2 downto 0),
      m_axi_awready => auto_pc_to_s00_couplers_AWREADY,
      m_axi_awvalid => auto_pc_to_s00_couplers_AWVALID,
      m_axi_bready => auto_pc_to_s00_couplers_BREADY,
      m_axi_bresp(1 downto 0) => auto_pc_to_s00_couplers_BRESP(1 downto 0),
      m_axi_bvalid => auto_pc_to_s00_couplers_BVALID,
      m_axi_rdata(31 downto 0) => auto_pc_to_s00_couplers_RDATA(31 downto 0),
      m_axi_rready => auto_pc_to_s00_couplers_RREADY,
      m_axi_rresp(1 downto 0) => auto_pc_to_s00_couplers_RRESP(1 downto 0),
      m_axi_rvalid => auto_pc_to_s00_couplers_RVALID,
      m_axi_wdata(31 downto 0) => auto_pc_to_s00_couplers_WDATA(31 downto 0),
      m_axi_wready => auto_pc_to_s00_couplers_WREADY,
      m_axi_wstrb(3 downto 0) => auto_pc_to_s00_couplers_WSTRB(3 downto 0),
      m_axi_wvalid => auto_pc_to_s00_couplers_WVALID,
      s_axi_araddr(31 downto 0) => s00_couplers_to_auto_pc_ARADDR(31 downto 0),
      s_axi_arburst(1 downto 0) => s00_couplers_to_auto_pc_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => s00_couplers_to_auto_pc_ARCACHE(3 downto 0),
      s_axi_arid(11 downto 0) => s00_couplers_to_auto_pc_ARID(11 downto 0),
      s_axi_arlen(3 downto 0) => s00_couplers_to_auto_pc_ARLEN(3 downto 0),
      s_axi_arlock(1 downto 0) => s00_couplers_to_auto_pc_ARLOCK(1 downto 0),
      s_axi_arprot(2 downto 0) => s00_couplers_to_auto_pc_ARPROT(2 downto 0),
      s_axi_arqos(3 downto 0) => s00_couplers_to_auto_pc_ARQOS(3 downto 0),
      s_axi_arready => s00_couplers_to_auto_pc_ARREADY,
      s_axi_arsize(2 downto 0) => s00_couplers_to_auto_pc_ARSIZE(2 downto 0),
      s_axi_arvalid => s00_couplers_to_auto_pc_ARVALID,
      s_axi_awaddr(31 downto 0) => s00_couplers_to_auto_pc_AWADDR(31 downto 0),
      s_axi_awburst(1 downto 0) => s00_couplers_to_auto_pc_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => s00_couplers_to_auto_pc_AWCACHE(3 downto 0),
      s_axi_awid(11 downto 0) => s00_couplers_to_auto_pc_AWID(11 downto 0),
      s_axi_awlen(3 downto 0) => s00_couplers_to_auto_pc_AWLEN(3 downto 0),
      s_axi_awlock(1 downto 0) => s00_couplers_to_auto_pc_AWLOCK(1 downto 0),
      s_axi_awprot(2 downto 0) => s00_couplers_to_auto_pc_AWPROT(2 downto 0),
      s_axi_awqos(3 downto 0) => s00_couplers_to_auto_pc_AWQOS(3 downto 0),
      s_axi_awready => s00_couplers_to_auto_pc_AWREADY,
      s_axi_awsize(2 downto 0) => s00_couplers_to_auto_pc_AWSIZE(2 downto 0),
      s_axi_awvalid => s00_couplers_to_auto_pc_AWVALID,
      s_axi_bid(11 downto 0) => s00_couplers_to_auto_pc_BID(11 downto 0),
      s_axi_bready => s00_couplers_to_auto_pc_BREADY,
      s_axi_bresp(1 downto 0) => s00_couplers_to_auto_pc_BRESP(1 downto 0),
      s_axi_bvalid => s00_couplers_to_auto_pc_BVALID,
      s_axi_rdata(31 downto 0) => s00_couplers_to_auto_pc_RDATA(31 downto 0),
      s_axi_rid(11 downto 0) => s00_couplers_to_auto_pc_RID(11 downto 0),
      s_axi_rlast => s00_couplers_to_auto_pc_RLAST,
      s_axi_rready => s00_couplers_to_auto_pc_RREADY,
      s_axi_rresp(1 downto 0) => s00_couplers_to_auto_pc_RRESP(1 downto 0),
      s_axi_rvalid => s00_couplers_to_auto_pc_RVALID,
      s_axi_wdata(31 downto 0) => s00_couplers_to_auto_pc_WDATA(31 downto 0),
      s_axi_wid(11 downto 0) => s00_couplers_to_auto_pc_WID(11 downto 0),
      s_axi_wlast => s00_couplers_to_auto_pc_WLAST,
      s_axi_wready => s00_couplers_to_auto_pc_WREADY,
      s_axi_wstrb(3 downto 0) => s00_couplers_to_auto_pc_WSTRB(3 downto 0),
      s_axi_wvalid => s00_couplers_to_auto_pc_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity NV_project_ps7_0_axi_periph_0 is
  port (
    ACLK : in STD_LOGIC;
    ARESETN : in STD_LOGIC;
    M00_ACLK : in STD_LOGIC;
    M00_ARESETN : in STD_LOGIC;
    M00_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M01_ACLK : in STD_LOGIC;
    M01_ARESETN : in STD_LOGIC;
    M01_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M01_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M01_AXI_arready : in STD_LOGIC;
    M01_AXI_arvalid : out STD_LOGIC;
    M01_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M01_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M01_AXI_awready : in STD_LOGIC;
    M01_AXI_awvalid : out STD_LOGIC;
    M01_AXI_bready : out STD_LOGIC;
    M01_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M01_AXI_bvalid : in STD_LOGIC;
    M01_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M01_AXI_rready : out STD_LOGIC;
    M01_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M01_AXI_rvalid : in STD_LOGIC;
    M01_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M01_AXI_wready : in STD_LOGIC;
    M01_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M01_AXI_wvalid : out STD_LOGIC;
    M02_ACLK : in STD_LOGIC;
    M02_ARESETN : in STD_LOGIC;
    M02_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M02_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M02_AXI_arready : in STD_LOGIC;
    M02_AXI_arvalid : out STD_LOGIC;
    M02_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M02_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M02_AXI_awready : in STD_LOGIC;
    M02_AXI_awvalid : out STD_LOGIC;
    M02_AXI_bready : out STD_LOGIC;
    M02_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M02_AXI_bvalid : in STD_LOGIC;
    M02_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M02_AXI_rready : out STD_LOGIC;
    M02_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M02_AXI_rvalid : in STD_LOGIC;
    M02_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M02_AXI_wready : in STD_LOGIC;
    M02_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M02_AXI_wvalid : out STD_LOGIC;
    M03_ACLK : in STD_LOGIC;
    M03_ARESETN : in STD_LOGIC;
    M03_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M03_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M03_AXI_arready : in STD_LOGIC;
    M03_AXI_arvalid : out STD_LOGIC;
    M03_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M03_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M03_AXI_awready : in STD_LOGIC;
    M03_AXI_awvalid : out STD_LOGIC;
    M03_AXI_bready : out STD_LOGIC;
    M03_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M03_AXI_bvalid : in STD_LOGIC;
    M03_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M03_AXI_rready : out STD_LOGIC;
    M03_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M03_AXI_rvalid : in STD_LOGIC;
    M03_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M03_AXI_wready : in STD_LOGIC;
    M03_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M03_AXI_wvalid : out STD_LOGIC;
    M04_ACLK : in STD_LOGIC;
    M04_ARESETN : in STD_LOGIC;
    M04_AXI_araddr : out STD_LOGIC;
    M04_AXI_arprot : out STD_LOGIC;
    M04_AXI_arready : in STD_LOGIC;
    M04_AXI_arvalid : out STD_LOGIC;
    M04_AXI_awaddr : out STD_LOGIC;
    M04_AXI_awprot : out STD_LOGIC;
    M04_AXI_awready : in STD_LOGIC;
    M04_AXI_awvalid : out STD_LOGIC;
    M04_AXI_bready : out STD_LOGIC;
    M04_AXI_bresp : in STD_LOGIC;
    M04_AXI_bvalid : in STD_LOGIC;
    M04_AXI_rdata : in STD_LOGIC;
    M04_AXI_rready : out STD_LOGIC;
    M04_AXI_rresp : in STD_LOGIC;
    M04_AXI_rvalid : in STD_LOGIC;
    M04_AXI_wdata : out STD_LOGIC;
    M04_AXI_wready : in STD_LOGIC;
    M04_AXI_wstrb : out STD_LOGIC;
    M04_AXI_wvalid : out STD_LOGIC;
    S00_ACLK : in STD_LOGIC;
    S00_ARESETN : in STD_LOGIC;
    S00_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    S00_AXI_arlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arready : out STD_LOGIC;
    S00_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arvalid : in STD_LOGIC;
    S00_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    S00_AXI_awlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awready : out STD_LOGIC;
    S00_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awvalid : in STD_LOGIC;
    S00_AXI_bid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    S00_AXI_bready : in STD_LOGIC;
    S00_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_bvalid : out STD_LOGIC;
    S00_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_rid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    S00_AXI_rlast : out STD_LOGIC;
    S00_AXI_rready : in STD_LOGIC;
    S00_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_rvalid : out STD_LOGIC;
    S00_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_wid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    S00_AXI_wlast : in STD_LOGIC;
    S00_AXI_wready : out STD_LOGIC;
    S00_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_wvalid : in STD_LOGIC
  );
end NV_project_ps7_0_axi_periph_0;

architecture STRUCTURE of NV_project_ps7_0_axi_periph_0 is
  component NV_project_xbar_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 159 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 14 downto 0 );
    m_axi_awvalid : out STD_LOGIC_VECTOR ( 4 downto 0 );
    m_axi_awready : in STD_LOGIC_VECTOR ( 4 downto 0 );
    m_axi_wdata : out STD_LOGIC_VECTOR ( 159 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 19 downto 0 );
    m_axi_wvalid : out STD_LOGIC_VECTOR ( 4 downto 0 );
    m_axi_wready : in STD_LOGIC_VECTOR ( 4 downto 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 9 downto 0 );
    m_axi_bvalid : in STD_LOGIC_VECTOR ( 4 downto 0 );
    m_axi_bready : out STD_LOGIC_VECTOR ( 4 downto 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 159 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 14 downto 0 );
    m_axi_arvalid : out STD_LOGIC_VECTOR ( 4 downto 0 );
    m_axi_arready : in STD_LOGIC_VECTOR ( 4 downto 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 159 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 9 downto 0 );
    m_axi_rvalid : in STD_LOGIC_VECTOR ( 4 downto 0 );
    m_axi_rready : out STD_LOGIC_VECTOR ( 4 downto 0 )
  );
  end component NV_project_xbar_0;
  signal M00_ACLK_1 : STD_LOGIC;
  signal M00_ARESETN_1 : STD_LOGIC;
  signal M01_ACLK_1 : STD_LOGIC;
  signal M01_ARESETN_1 : STD_LOGIC;
  signal M02_ACLK_1 : STD_LOGIC;
  signal M02_ARESETN_1 : STD_LOGIC;
  signal M03_ACLK_1 : STD_LOGIC;
  signal M03_ARESETN_1 : STD_LOGIC;
  signal M04_ACLK_1 : STD_LOGIC;
  signal M04_ARESETN_1 : STD_LOGIC;
  signal S00_ACLK_1 : STD_LOGIC;
  signal S00_ARESETN_1 : STD_LOGIC;
  signal m00_couplers_to_ps7_0_axi_periph_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_ps7_0_axi_periph_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_ps7_0_axi_periph_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_ps7_0_axi_periph_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_ps7_0_axi_periph_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_ps7_0_axi_periph_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_ps7_0_axi_periph_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_ps7_0_axi_periph_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_ps7_0_axi_periph_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_ps7_0_axi_periph_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_ps7_0_axi_periph_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_ps7_0_axi_periph_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_ps7_0_axi_periph_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_ps7_0_axi_periph_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_ps7_0_axi_periph_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_ps7_0_axi_periph_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_ps7_0_axi_periph_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_ps7_0_axi_periph_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_ps7_0_axi_periph_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m01_couplers_to_ps7_0_axi_periph_ARREADY : STD_LOGIC;
  signal m01_couplers_to_ps7_0_axi_periph_ARVALID : STD_LOGIC;
  signal m01_couplers_to_ps7_0_axi_periph_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_ps7_0_axi_periph_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m01_couplers_to_ps7_0_axi_periph_AWREADY : STD_LOGIC;
  signal m01_couplers_to_ps7_0_axi_periph_AWVALID : STD_LOGIC;
  signal m01_couplers_to_ps7_0_axi_periph_BREADY : STD_LOGIC;
  signal m01_couplers_to_ps7_0_axi_periph_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m01_couplers_to_ps7_0_axi_periph_BVALID : STD_LOGIC;
  signal m01_couplers_to_ps7_0_axi_periph_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_ps7_0_axi_periph_RREADY : STD_LOGIC;
  signal m01_couplers_to_ps7_0_axi_periph_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m01_couplers_to_ps7_0_axi_periph_RVALID : STD_LOGIC;
  signal m01_couplers_to_ps7_0_axi_periph_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_ps7_0_axi_periph_WREADY : STD_LOGIC;
  signal m01_couplers_to_ps7_0_axi_periph_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m01_couplers_to_ps7_0_axi_periph_WVALID : STD_LOGIC;
  signal m02_couplers_to_ps7_0_axi_periph_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_ps7_0_axi_periph_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m02_couplers_to_ps7_0_axi_periph_ARREADY : STD_LOGIC;
  signal m02_couplers_to_ps7_0_axi_periph_ARVALID : STD_LOGIC;
  signal m02_couplers_to_ps7_0_axi_periph_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_ps7_0_axi_periph_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m02_couplers_to_ps7_0_axi_periph_AWREADY : STD_LOGIC;
  signal m02_couplers_to_ps7_0_axi_periph_AWVALID : STD_LOGIC;
  signal m02_couplers_to_ps7_0_axi_periph_BREADY : STD_LOGIC;
  signal m02_couplers_to_ps7_0_axi_periph_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m02_couplers_to_ps7_0_axi_periph_BVALID : STD_LOGIC;
  signal m02_couplers_to_ps7_0_axi_periph_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_ps7_0_axi_periph_RREADY : STD_LOGIC;
  signal m02_couplers_to_ps7_0_axi_periph_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m02_couplers_to_ps7_0_axi_periph_RVALID : STD_LOGIC;
  signal m02_couplers_to_ps7_0_axi_periph_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_ps7_0_axi_periph_WREADY : STD_LOGIC;
  signal m02_couplers_to_ps7_0_axi_periph_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m02_couplers_to_ps7_0_axi_periph_WVALID : STD_LOGIC;
  signal m03_couplers_to_ps7_0_axi_periph_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m03_couplers_to_ps7_0_axi_periph_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m03_couplers_to_ps7_0_axi_periph_ARREADY : STD_LOGIC;
  signal m03_couplers_to_ps7_0_axi_periph_ARVALID : STD_LOGIC;
  signal m03_couplers_to_ps7_0_axi_periph_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m03_couplers_to_ps7_0_axi_periph_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m03_couplers_to_ps7_0_axi_periph_AWREADY : STD_LOGIC;
  signal m03_couplers_to_ps7_0_axi_periph_AWVALID : STD_LOGIC;
  signal m03_couplers_to_ps7_0_axi_periph_BREADY : STD_LOGIC;
  signal m03_couplers_to_ps7_0_axi_periph_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m03_couplers_to_ps7_0_axi_periph_BVALID : STD_LOGIC;
  signal m03_couplers_to_ps7_0_axi_periph_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m03_couplers_to_ps7_0_axi_periph_RREADY : STD_LOGIC;
  signal m03_couplers_to_ps7_0_axi_periph_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m03_couplers_to_ps7_0_axi_periph_RVALID : STD_LOGIC;
  signal m03_couplers_to_ps7_0_axi_periph_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m03_couplers_to_ps7_0_axi_periph_WREADY : STD_LOGIC;
  signal m03_couplers_to_ps7_0_axi_periph_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m03_couplers_to_ps7_0_axi_periph_WVALID : STD_LOGIC;
  signal m04_couplers_to_ps7_0_axi_periph_ARADDR : STD_LOGIC;
  signal m04_couplers_to_ps7_0_axi_periph_ARPROT : STD_LOGIC;
  signal m04_couplers_to_ps7_0_axi_periph_ARREADY : STD_LOGIC;
  signal m04_couplers_to_ps7_0_axi_periph_ARVALID : STD_LOGIC;
  signal m04_couplers_to_ps7_0_axi_periph_AWADDR : STD_LOGIC;
  signal m04_couplers_to_ps7_0_axi_periph_AWPROT : STD_LOGIC;
  signal m04_couplers_to_ps7_0_axi_periph_AWREADY : STD_LOGIC;
  signal m04_couplers_to_ps7_0_axi_periph_AWVALID : STD_LOGIC;
  signal m04_couplers_to_ps7_0_axi_periph_BREADY : STD_LOGIC;
  signal m04_couplers_to_ps7_0_axi_periph_BRESP : STD_LOGIC;
  signal m04_couplers_to_ps7_0_axi_periph_BVALID : STD_LOGIC;
  signal m04_couplers_to_ps7_0_axi_periph_RDATA : STD_LOGIC;
  signal m04_couplers_to_ps7_0_axi_periph_RREADY : STD_LOGIC;
  signal m04_couplers_to_ps7_0_axi_periph_RRESP : STD_LOGIC;
  signal m04_couplers_to_ps7_0_axi_periph_RVALID : STD_LOGIC;
  signal m04_couplers_to_ps7_0_axi_periph_WDATA : STD_LOGIC;
  signal m04_couplers_to_ps7_0_axi_periph_WREADY : STD_LOGIC;
  signal m04_couplers_to_ps7_0_axi_periph_WSTRB : STD_LOGIC;
  signal m04_couplers_to_ps7_0_axi_periph_WVALID : STD_LOGIC;
  signal ps7_0_axi_periph_ACLK_net : STD_LOGIC;
  signal ps7_0_axi_periph_ARESETN_net : STD_LOGIC;
  signal ps7_0_axi_periph_to_s00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_ARID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_ARLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_ARLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_ARREADY : STD_LOGIC;
  signal ps7_0_axi_periph_to_s00_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_ARVALID : STD_LOGIC;
  signal ps7_0_axi_periph_to_s00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_AWID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_AWLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_AWLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_AWREADY : STD_LOGIC;
  signal ps7_0_axi_periph_to_s00_couplers_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_AWVALID : STD_LOGIC;
  signal ps7_0_axi_periph_to_s00_couplers_BID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_BREADY : STD_LOGIC;
  signal ps7_0_axi_periph_to_s00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_BVALID : STD_LOGIC;
  signal ps7_0_axi_periph_to_s00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_RID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_RLAST : STD_LOGIC;
  signal ps7_0_axi_periph_to_s00_couplers_RREADY : STD_LOGIC;
  signal ps7_0_axi_periph_to_s00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_RVALID : STD_LOGIC;
  signal ps7_0_axi_periph_to_s00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_WID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_WLAST : STD_LOGIC;
  signal ps7_0_axi_periph_to_s00_couplers_WREADY : STD_LOGIC;
  signal ps7_0_axi_periph_to_s00_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_WVALID : STD_LOGIC;
  signal s00_couplers_to_xbar_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_xbar_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_xbar_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_ARVALID : STD_LOGIC;
  signal s00_couplers_to_xbar_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_xbar_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_xbar_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_AWVALID : STD_LOGIC;
  signal s00_couplers_to_xbar_BREADY : STD_LOGIC;
  signal s00_couplers_to_xbar_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_xbar_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_xbar_RREADY : STD_LOGIC;
  signal s00_couplers_to_xbar_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_xbar_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_xbar_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_xbar_WVALID : STD_LOGIC;
  signal xbar_to_m00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m00_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m00_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m00_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m00_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m00_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m00_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m01_couplers_ARADDR : STD_LOGIC_VECTOR ( 63 downto 32 );
  signal xbar_to_m01_couplers_ARPROT : STD_LOGIC_VECTOR ( 5 downto 3 );
  signal xbar_to_m01_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m01_couplers_ARVALID : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_AWADDR : STD_LOGIC_VECTOR ( 63 downto 32 );
  signal xbar_to_m01_couplers_AWPROT : STD_LOGIC_VECTOR ( 5 downto 3 );
  signal xbar_to_m01_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m01_couplers_AWVALID : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_BREADY : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m01_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m01_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m01_couplers_RREADY : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m01_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m01_couplers_WDATA : STD_LOGIC_VECTOR ( 63 downto 32 );
  signal xbar_to_m01_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m01_couplers_WSTRB : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal xbar_to_m01_couplers_WVALID : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m02_couplers_ARADDR : STD_LOGIC_VECTOR ( 95 downto 64 );
  signal xbar_to_m02_couplers_ARPROT : STD_LOGIC_VECTOR ( 8 downto 6 );
  signal xbar_to_m02_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m02_couplers_ARVALID : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m02_couplers_AWADDR : STD_LOGIC_VECTOR ( 95 downto 64 );
  signal xbar_to_m02_couplers_AWPROT : STD_LOGIC_VECTOR ( 8 downto 6 );
  signal xbar_to_m02_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m02_couplers_AWVALID : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m02_couplers_BREADY : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m02_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m02_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m02_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m02_couplers_RREADY : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m02_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m02_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m02_couplers_WDATA : STD_LOGIC_VECTOR ( 95 downto 64 );
  signal xbar_to_m02_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m02_couplers_WSTRB : STD_LOGIC_VECTOR ( 11 downto 8 );
  signal xbar_to_m02_couplers_WVALID : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m03_couplers_ARADDR : STD_LOGIC_VECTOR ( 127 downto 96 );
  signal xbar_to_m03_couplers_ARPROT : STD_LOGIC_VECTOR ( 11 downto 9 );
  signal xbar_to_m03_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m03_couplers_ARVALID : STD_LOGIC_VECTOR ( 3 to 3 );
  signal xbar_to_m03_couplers_AWADDR : STD_LOGIC_VECTOR ( 127 downto 96 );
  signal xbar_to_m03_couplers_AWPROT : STD_LOGIC_VECTOR ( 11 downto 9 );
  signal xbar_to_m03_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m03_couplers_AWVALID : STD_LOGIC_VECTOR ( 3 to 3 );
  signal xbar_to_m03_couplers_BREADY : STD_LOGIC_VECTOR ( 3 to 3 );
  signal xbar_to_m03_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m03_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m03_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m03_couplers_RREADY : STD_LOGIC_VECTOR ( 3 to 3 );
  signal xbar_to_m03_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m03_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m03_couplers_WDATA : STD_LOGIC_VECTOR ( 127 downto 96 );
  signal xbar_to_m03_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m03_couplers_WSTRB : STD_LOGIC_VECTOR ( 15 downto 12 );
  signal xbar_to_m03_couplers_WVALID : STD_LOGIC_VECTOR ( 3 to 3 );
  signal xbar_to_m04_couplers_ARADDR : STD_LOGIC_VECTOR ( 159 downto 128 );
  signal xbar_to_m04_couplers_ARPROT : STD_LOGIC_VECTOR ( 14 downto 12 );
  signal xbar_to_m04_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m04_couplers_ARVALID : STD_LOGIC_VECTOR ( 4 to 4 );
  signal xbar_to_m04_couplers_AWADDR : STD_LOGIC_VECTOR ( 159 downto 128 );
  signal xbar_to_m04_couplers_AWPROT : STD_LOGIC_VECTOR ( 14 downto 12 );
  signal xbar_to_m04_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m04_couplers_AWVALID : STD_LOGIC_VECTOR ( 4 to 4 );
  signal xbar_to_m04_couplers_BREADY : STD_LOGIC_VECTOR ( 4 to 4 );
  signal xbar_to_m04_couplers_BRESP : STD_LOGIC;
  signal xbar_to_m04_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m04_couplers_RDATA : STD_LOGIC;
  signal xbar_to_m04_couplers_RREADY : STD_LOGIC_VECTOR ( 4 to 4 );
  signal xbar_to_m04_couplers_RRESP : STD_LOGIC;
  signal xbar_to_m04_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m04_couplers_WDATA : STD_LOGIC_VECTOR ( 159 downto 128 );
  signal xbar_to_m04_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m04_couplers_WSTRB : STD_LOGIC_VECTOR ( 19 downto 16 );
  signal xbar_to_m04_couplers_WVALID : STD_LOGIC_VECTOR ( 4 to 4 );
  signal NLW_xbar_m_axi_arprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_xbar_m_axi_awprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
begin
  M00_ACLK_1 <= M00_ACLK;
  M00_ARESETN_1 <= M00_ARESETN;
  M00_AXI_araddr(31 downto 0) <= m00_couplers_to_ps7_0_axi_periph_ARADDR(31 downto 0);
  M00_AXI_arvalid(0) <= m00_couplers_to_ps7_0_axi_periph_ARVALID(0);
  M00_AXI_awaddr(31 downto 0) <= m00_couplers_to_ps7_0_axi_periph_AWADDR(31 downto 0);
  M00_AXI_awvalid(0) <= m00_couplers_to_ps7_0_axi_periph_AWVALID(0);
  M00_AXI_bready(0) <= m00_couplers_to_ps7_0_axi_periph_BREADY(0);
  M00_AXI_rready(0) <= m00_couplers_to_ps7_0_axi_periph_RREADY(0);
  M00_AXI_wdata(31 downto 0) <= m00_couplers_to_ps7_0_axi_periph_WDATA(31 downto 0);
  M00_AXI_wstrb(3 downto 0) <= m00_couplers_to_ps7_0_axi_periph_WSTRB(3 downto 0);
  M00_AXI_wvalid(0) <= m00_couplers_to_ps7_0_axi_periph_WVALID(0);
  M01_ACLK_1 <= M01_ACLK;
  M01_ARESETN_1 <= M01_ARESETN;
  M01_AXI_araddr(31 downto 0) <= m01_couplers_to_ps7_0_axi_periph_ARADDR(31 downto 0);
  M01_AXI_arprot(2 downto 0) <= m01_couplers_to_ps7_0_axi_periph_ARPROT(2 downto 0);
  M01_AXI_arvalid <= m01_couplers_to_ps7_0_axi_periph_ARVALID;
  M01_AXI_awaddr(31 downto 0) <= m01_couplers_to_ps7_0_axi_periph_AWADDR(31 downto 0);
  M01_AXI_awprot(2 downto 0) <= m01_couplers_to_ps7_0_axi_periph_AWPROT(2 downto 0);
  M01_AXI_awvalid <= m01_couplers_to_ps7_0_axi_periph_AWVALID;
  M01_AXI_bready <= m01_couplers_to_ps7_0_axi_periph_BREADY;
  M01_AXI_rready <= m01_couplers_to_ps7_0_axi_periph_RREADY;
  M01_AXI_wdata(31 downto 0) <= m01_couplers_to_ps7_0_axi_periph_WDATA(31 downto 0);
  M01_AXI_wstrb(3 downto 0) <= m01_couplers_to_ps7_0_axi_periph_WSTRB(3 downto 0);
  M01_AXI_wvalid <= m01_couplers_to_ps7_0_axi_periph_WVALID;
  M02_ACLK_1 <= M02_ACLK;
  M02_ARESETN_1 <= M02_ARESETN;
  M02_AXI_araddr(31 downto 0) <= m02_couplers_to_ps7_0_axi_periph_ARADDR(31 downto 0);
  M02_AXI_arprot(2 downto 0) <= m02_couplers_to_ps7_0_axi_periph_ARPROT(2 downto 0);
  M02_AXI_arvalid <= m02_couplers_to_ps7_0_axi_periph_ARVALID;
  M02_AXI_awaddr(31 downto 0) <= m02_couplers_to_ps7_0_axi_periph_AWADDR(31 downto 0);
  M02_AXI_awprot(2 downto 0) <= m02_couplers_to_ps7_0_axi_periph_AWPROT(2 downto 0);
  M02_AXI_awvalid <= m02_couplers_to_ps7_0_axi_periph_AWVALID;
  M02_AXI_bready <= m02_couplers_to_ps7_0_axi_periph_BREADY;
  M02_AXI_rready <= m02_couplers_to_ps7_0_axi_periph_RREADY;
  M02_AXI_wdata(31 downto 0) <= m02_couplers_to_ps7_0_axi_periph_WDATA(31 downto 0);
  M02_AXI_wstrb(3 downto 0) <= m02_couplers_to_ps7_0_axi_periph_WSTRB(3 downto 0);
  M02_AXI_wvalid <= m02_couplers_to_ps7_0_axi_periph_WVALID;
  M03_ACLK_1 <= M03_ACLK;
  M03_ARESETN_1 <= M03_ARESETN;
  M03_AXI_araddr(31 downto 0) <= m03_couplers_to_ps7_0_axi_periph_ARADDR(31 downto 0);
  M03_AXI_arprot(2 downto 0) <= m03_couplers_to_ps7_0_axi_periph_ARPROT(2 downto 0);
  M03_AXI_arvalid <= m03_couplers_to_ps7_0_axi_periph_ARVALID;
  M03_AXI_awaddr(31 downto 0) <= m03_couplers_to_ps7_0_axi_periph_AWADDR(31 downto 0);
  M03_AXI_awprot(2 downto 0) <= m03_couplers_to_ps7_0_axi_periph_AWPROT(2 downto 0);
  M03_AXI_awvalid <= m03_couplers_to_ps7_0_axi_periph_AWVALID;
  M03_AXI_bready <= m03_couplers_to_ps7_0_axi_periph_BREADY;
  M03_AXI_rready <= m03_couplers_to_ps7_0_axi_periph_RREADY;
  M03_AXI_wdata(31 downto 0) <= m03_couplers_to_ps7_0_axi_periph_WDATA(31 downto 0);
  M03_AXI_wstrb(3 downto 0) <= m03_couplers_to_ps7_0_axi_periph_WSTRB(3 downto 0);
  M03_AXI_wvalid <= m03_couplers_to_ps7_0_axi_periph_WVALID;
  M04_ACLK_1 <= M04_ACLK;
  M04_ARESETN_1 <= M04_ARESETN;
  M04_AXI_araddr <= m04_couplers_to_ps7_0_axi_periph_ARADDR;
  M04_AXI_arprot <= m04_couplers_to_ps7_0_axi_periph_ARPROT;
  M04_AXI_arvalid <= m04_couplers_to_ps7_0_axi_periph_ARVALID;
  M04_AXI_awaddr <= m04_couplers_to_ps7_0_axi_periph_AWADDR;
  M04_AXI_awprot <= m04_couplers_to_ps7_0_axi_periph_AWPROT;
  M04_AXI_awvalid <= m04_couplers_to_ps7_0_axi_periph_AWVALID;
  M04_AXI_bready <= m04_couplers_to_ps7_0_axi_periph_BREADY;
  M04_AXI_rready <= m04_couplers_to_ps7_0_axi_periph_RREADY;
  M04_AXI_wdata <= m04_couplers_to_ps7_0_axi_periph_WDATA;
  M04_AXI_wstrb <= m04_couplers_to_ps7_0_axi_periph_WSTRB;
  M04_AXI_wvalid <= m04_couplers_to_ps7_0_axi_periph_WVALID;
  S00_ACLK_1 <= S00_ACLK;
  S00_ARESETN_1 <= S00_ARESETN;
  S00_AXI_arready <= ps7_0_axi_periph_to_s00_couplers_ARREADY;
  S00_AXI_awready <= ps7_0_axi_periph_to_s00_couplers_AWREADY;
  S00_AXI_bid(11 downto 0) <= ps7_0_axi_periph_to_s00_couplers_BID(11 downto 0);
  S00_AXI_bresp(1 downto 0) <= ps7_0_axi_periph_to_s00_couplers_BRESP(1 downto 0);
  S00_AXI_bvalid <= ps7_0_axi_periph_to_s00_couplers_BVALID;
  S00_AXI_rdata(31 downto 0) <= ps7_0_axi_periph_to_s00_couplers_RDATA(31 downto 0);
  S00_AXI_rid(11 downto 0) <= ps7_0_axi_periph_to_s00_couplers_RID(11 downto 0);
  S00_AXI_rlast <= ps7_0_axi_periph_to_s00_couplers_RLAST;
  S00_AXI_rresp(1 downto 0) <= ps7_0_axi_periph_to_s00_couplers_RRESP(1 downto 0);
  S00_AXI_rvalid <= ps7_0_axi_periph_to_s00_couplers_RVALID;
  S00_AXI_wready <= ps7_0_axi_periph_to_s00_couplers_WREADY;
  m00_couplers_to_ps7_0_axi_periph_ARREADY(0) <= M00_AXI_arready(0);
  m00_couplers_to_ps7_0_axi_periph_AWREADY(0) <= M00_AXI_awready(0);
  m00_couplers_to_ps7_0_axi_periph_BRESP(1 downto 0) <= M00_AXI_bresp(1 downto 0);
  m00_couplers_to_ps7_0_axi_periph_BVALID(0) <= M00_AXI_bvalid(0);
  m00_couplers_to_ps7_0_axi_periph_RDATA(31 downto 0) <= M00_AXI_rdata(31 downto 0);
  m00_couplers_to_ps7_0_axi_periph_RRESP(1 downto 0) <= M00_AXI_rresp(1 downto 0);
  m00_couplers_to_ps7_0_axi_periph_RVALID(0) <= M00_AXI_rvalid(0);
  m00_couplers_to_ps7_0_axi_periph_WREADY(0) <= M00_AXI_wready(0);
  m01_couplers_to_ps7_0_axi_periph_ARREADY <= M01_AXI_arready;
  m01_couplers_to_ps7_0_axi_periph_AWREADY <= M01_AXI_awready;
  m01_couplers_to_ps7_0_axi_periph_BRESP(1 downto 0) <= M01_AXI_bresp(1 downto 0);
  m01_couplers_to_ps7_0_axi_periph_BVALID <= M01_AXI_bvalid;
  m01_couplers_to_ps7_0_axi_periph_RDATA(31 downto 0) <= M01_AXI_rdata(31 downto 0);
  m01_couplers_to_ps7_0_axi_periph_RRESP(1 downto 0) <= M01_AXI_rresp(1 downto 0);
  m01_couplers_to_ps7_0_axi_periph_RVALID <= M01_AXI_rvalid;
  m01_couplers_to_ps7_0_axi_periph_WREADY <= M01_AXI_wready;
  m02_couplers_to_ps7_0_axi_periph_ARREADY <= M02_AXI_arready;
  m02_couplers_to_ps7_0_axi_periph_AWREADY <= M02_AXI_awready;
  m02_couplers_to_ps7_0_axi_periph_BRESP(1 downto 0) <= M02_AXI_bresp(1 downto 0);
  m02_couplers_to_ps7_0_axi_periph_BVALID <= M02_AXI_bvalid;
  m02_couplers_to_ps7_0_axi_periph_RDATA(31 downto 0) <= M02_AXI_rdata(31 downto 0);
  m02_couplers_to_ps7_0_axi_periph_RRESP(1 downto 0) <= M02_AXI_rresp(1 downto 0);
  m02_couplers_to_ps7_0_axi_periph_RVALID <= M02_AXI_rvalid;
  m02_couplers_to_ps7_0_axi_periph_WREADY <= M02_AXI_wready;
  m03_couplers_to_ps7_0_axi_periph_ARREADY <= M03_AXI_arready;
  m03_couplers_to_ps7_0_axi_periph_AWREADY <= M03_AXI_awready;
  m03_couplers_to_ps7_0_axi_periph_BRESP(1 downto 0) <= M03_AXI_bresp(1 downto 0);
  m03_couplers_to_ps7_0_axi_periph_BVALID <= M03_AXI_bvalid;
  m03_couplers_to_ps7_0_axi_periph_RDATA(31 downto 0) <= M03_AXI_rdata(31 downto 0);
  m03_couplers_to_ps7_0_axi_periph_RRESP(1 downto 0) <= M03_AXI_rresp(1 downto 0);
  m03_couplers_to_ps7_0_axi_periph_RVALID <= M03_AXI_rvalid;
  m03_couplers_to_ps7_0_axi_periph_WREADY <= M03_AXI_wready;
  m04_couplers_to_ps7_0_axi_periph_ARREADY <= M04_AXI_arready;
  m04_couplers_to_ps7_0_axi_periph_AWREADY <= M04_AXI_awready;
  m04_couplers_to_ps7_0_axi_periph_BRESP <= M04_AXI_bresp;
  m04_couplers_to_ps7_0_axi_periph_BVALID <= M04_AXI_bvalid;
  m04_couplers_to_ps7_0_axi_periph_RDATA <= M04_AXI_rdata;
  m04_couplers_to_ps7_0_axi_periph_RRESP <= M04_AXI_rresp;
  m04_couplers_to_ps7_0_axi_periph_RVALID <= M04_AXI_rvalid;
  m04_couplers_to_ps7_0_axi_periph_WREADY <= M04_AXI_wready;
  ps7_0_axi_periph_ACLK_net <= ACLK;
  ps7_0_axi_periph_ARESETN_net <= ARESETN;
  ps7_0_axi_periph_to_s00_couplers_ARADDR(31 downto 0) <= S00_AXI_araddr(31 downto 0);
  ps7_0_axi_periph_to_s00_couplers_ARBURST(1 downto 0) <= S00_AXI_arburst(1 downto 0);
  ps7_0_axi_periph_to_s00_couplers_ARCACHE(3 downto 0) <= S00_AXI_arcache(3 downto 0);
  ps7_0_axi_periph_to_s00_couplers_ARID(11 downto 0) <= S00_AXI_arid(11 downto 0);
  ps7_0_axi_periph_to_s00_couplers_ARLEN(3 downto 0) <= S00_AXI_arlen(3 downto 0);
  ps7_0_axi_periph_to_s00_couplers_ARLOCK(1 downto 0) <= S00_AXI_arlock(1 downto 0);
  ps7_0_axi_periph_to_s00_couplers_ARPROT(2 downto 0) <= S00_AXI_arprot(2 downto 0);
  ps7_0_axi_periph_to_s00_couplers_ARQOS(3 downto 0) <= S00_AXI_arqos(3 downto 0);
  ps7_0_axi_periph_to_s00_couplers_ARSIZE(2 downto 0) <= S00_AXI_arsize(2 downto 0);
  ps7_0_axi_periph_to_s00_couplers_ARVALID <= S00_AXI_arvalid;
  ps7_0_axi_periph_to_s00_couplers_AWADDR(31 downto 0) <= S00_AXI_awaddr(31 downto 0);
  ps7_0_axi_periph_to_s00_couplers_AWBURST(1 downto 0) <= S00_AXI_awburst(1 downto 0);
  ps7_0_axi_periph_to_s00_couplers_AWCACHE(3 downto 0) <= S00_AXI_awcache(3 downto 0);
  ps7_0_axi_periph_to_s00_couplers_AWID(11 downto 0) <= S00_AXI_awid(11 downto 0);
  ps7_0_axi_periph_to_s00_couplers_AWLEN(3 downto 0) <= S00_AXI_awlen(3 downto 0);
  ps7_0_axi_periph_to_s00_couplers_AWLOCK(1 downto 0) <= S00_AXI_awlock(1 downto 0);
  ps7_0_axi_periph_to_s00_couplers_AWPROT(2 downto 0) <= S00_AXI_awprot(2 downto 0);
  ps7_0_axi_periph_to_s00_couplers_AWQOS(3 downto 0) <= S00_AXI_awqos(3 downto 0);
  ps7_0_axi_periph_to_s00_couplers_AWSIZE(2 downto 0) <= S00_AXI_awsize(2 downto 0);
  ps7_0_axi_periph_to_s00_couplers_AWVALID <= S00_AXI_awvalid;
  ps7_0_axi_periph_to_s00_couplers_BREADY <= S00_AXI_bready;
  ps7_0_axi_periph_to_s00_couplers_RREADY <= S00_AXI_rready;
  ps7_0_axi_periph_to_s00_couplers_WDATA(31 downto 0) <= S00_AXI_wdata(31 downto 0);
  ps7_0_axi_periph_to_s00_couplers_WID(11 downto 0) <= S00_AXI_wid(11 downto 0);
  ps7_0_axi_periph_to_s00_couplers_WLAST <= S00_AXI_wlast;
  ps7_0_axi_periph_to_s00_couplers_WSTRB(3 downto 0) <= S00_AXI_wstrb(3 downto 0);
  ps7_0_axi_periph_to_s00_couplers_WVALID <= S00_AXI_wvalid;
m00_couplers: entity work.m00_couplers_imp_14GMZ89
     port map (
      M_ACLK => M00_ACLK_1,
      M_ARESETN => M00_ARESETN_1,
      M_AXI_araddr(31 downto 0) => m00_couplers_to_ps7_0_axi_periph_ARADDR(31 downto 0),
      M_AXI_arready(0) => m00_couplers_to_ps7_0_axi_periph_ARREADY(0),
      M_AXI_arvalid(0) => m00_couplers_to_ps7_0_axi_periph_ARVALID(0),
      M_AXI_awaddr(31 downto 0) => m00_couplers_to_ps7_0_axi_periph_AWADDR(31 downto 0),
      M_AXI_awready(0) => m00_couplers_to_ps7_0_axi_periph_AWREADY(0),
      M_AXI_awvalid(0) => m00_couplers_to_ps7_0_axi_periph_AWVALID(0),
      M_AXI_bready(0) => m00_couplers_to_ps7_0_axi_periph_BREADY(0),
      M_AXI_bresp(1 downto 0) => m00_couplers_to_ps7_0_axi_periph_BRESP(1 downto 0),
      M_AXI_bvalid(0) => m00_couplers_to_ps7_0_axi_periph_BVALID(0),
      M_AXI_rdata(31 downto 0) => m00_couplers_to_ps7_0_axi_periph_RDATA(31 downto 0),
      M_AXI_rready(0) => m00_couplers_to_ps7_0_axi_periph_RREADY(0),
      M_AXI_rresp(1 downto 0) => m00_couplers_to_ps7_0_axi_periph_RRESP(1 downto 0),
      M_AXI_rvalid(0) => m00_couplers_to_ps7_0_axi_periph_RVALID(0),
      M_AXI_wdata(31 downto 0) => m00_couplers_to_ps7_0_axi_periph_WDATA(31 downto 0),
      M_AXI_wready(0) => m00_couplers_to_ps7_0_axi_periph_WREADY(0),
      M_AXI_wstrb(3 downto 0) => m00_couplers_to_ps7_0_axi_periph_WSTRB(3 downto 0),
      M_AXI_wvalid(0) => m00_couplers_to_ps7_0_axi_periph_WVALID(0),
      S_ACLK => ps7_0_axi_periph_ACLK_net,
      S_ARESETN => ps7_0_axi_periph_ARESETN_net,
      S_AXI_araddr(31 downto 0) => xbar_to_m00_couplers_ARADDR(31 downto 0),
      S_AXI_arready(0) => xbar_to_m00_couplers_ARREADY(0),
      S_AXI_arvalid(0) => xbar_to_m00_couplers_ARVALID(0),
      S_AXI_awaddr(31 downto 0) => xbar_to_m00_couplers_AWADDR(31 downto 0),
      S_AXI_awready(0) => xbar_to_m00_couplers_AWREADY(0),
      S_AXI_awvalid(0) => xbar_to_m00_couplers_AWVALID(0),
      S_AXI_bready(0) => xbar_to_m00_couplers_BREADY(0),
      S_AXI_bresp(1 downto 0) => xbar_to_m00_couplers_BRESP(1 downto 0),
      S_AXI_bvalid(0) => xbar_to_m00_couplers_BVALID(0),
      S_AXI_rdata(31 downto 0) => xbar_to_m00_couplers_RDATA(31 downto 0),
      S_AXI_rready(0) => xbar_to_m00_couplers_RREADY(0),
      S_AXI_rresp(1 downto 0) => xbar_to_m00_couplers_RRESP(1 downto 0),
      S_AXI_rvalid(0) => xbar_to_m00_couplers_RVALID(0),
      S_AXI_wdata(31 downto 0) => xbar_to_m00_couplers_WDATA(31 downto 0),
      S_AXI_wready(0) => xbar_to_m00_couplers_WREADY(0),
      S_AXI_wstrb(3 downto 0) => xbar_to_m00_couplers_WSTRB(3 downto 0),
      S_AXI_wvalid(0) => xbar_to_m00_couplers_WVALID(0)
    );
m01_couplers: entity work.m01_couplers_imp_1VW8MN3
     port map (
      M_ACLK => M01_ACLK_1,
      M_ARESETN => M01_ARESETN_1,
      M_AXI_araddr(31 downto 0) => m01_couplers_to_ps7_0_axi_periph_ARADDR(31 downto 0),
      M_AXI_arprot(2 downto 0) => m01_couplers_to_ps7_0_axi_periph_ARPROT(2 downto 0),
      M_AXI_arready => m01_couplers_to_ps7_0_axi_periph_ARREADY,
      M_AXI_arvalid => m01_couplers_to_ps7_0_axi_periph_ARVALID,
      M_AXI_awaddr(31 downto 0) => m01_couplers_to_ps7_0_axi_periph_AWADDR(31 downto 0),
      M_AXI_awprot(2 downto 0) => m01_couplers_to_ps7_0_axi_periph_AWPROT(2 downto 0),
      M_AXI_awready => m01_couplers_to_ps7_0_axi_periph_AWREADY,
      M_AXI_awvalid => m01_couplers_to_ps7_0_axi_periph_AWVALID,
      M_AXI_bready => m01_couplers_to_ps7_0_axi_periph_BREADY,
      M_AXI_bresp(1 downto 0) => m01_couplers_to_ps7_0_axi_periph_BRESP(1 downto 0),
      M_AXI_bvalid => m01_couplers_to_ps7_0_axi_periph_BVALID,
      M_AXI_rdata(31 downto 0) => m01_couplers_to_ps7_0_axi_periph_RDATA(31 downto 0),
      M_AXI_rready => m01_couplers_to_ps7_0_axi_periph_RREADY,
      M_AXI_rresp(1 downto 0) => m01_couplers_to_ps7_0_axi_periph_RRESP(1 downto 0),
      M_AXI_rvalid => m01_couplers_to_ps7_0_axi_periph_RVALID,
      M_AXI_wdata(31 downto 0) => m01_couplers_to_ps7_0_axi_periph_WDATA(31 downto 0),
      M_AXI_wready => m01_couplers_to_ps7_0_axi_periph_WREADY,
      M_AXI_wstrb(3 downto 0) => m01_couplers_to_ps7_0_axi_periph_WSTRB(3 downto 0),
      M_AXI_wvalid => m01_couplers_to_ps7_0_axi_periph_WVALID,
      S_ACLK => ps7_0_axi_periph_ACLK_net,
      S_ARESETN => ps7_0_axi_periph_ARESETN_net,
      S_AXI_araddr(31 downto 0) => xbar_to_m01_couplers_ARADDR(63 downto 32),
      S_AXI_arprot(2 downto 0) => xbar_to_m01_couplers_ARPROT(5 downto 3),
      S_AXI_arready => xbar_to_m01_couplers_ARREADY,
      S_AXI_arvalid => xbar_to_m01_couplers_ARVALID(1),
      S_AXI_awaddr(31 downto 0) => xbar_to_m01_couplers_AWADDR(63 downto 32),
      S_AXI_awprot(2 downto 0) => xbar_to_m01_couplers_AWPROT(5 downto 3),
      S_AXI_awready => xbar_to_m01_couplers_AWREADY,
      S_AXI_awvalid => xbar_to_m01_couplers_AWVALID(1),
      S_AXI_bready => xbar_to_m01_couplers_BREADY(1),
      S_AXI_bresp(1 downto 0) => xbar_to_m01_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => xbar_to_m01_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => xbar_to_m01_couplers_RDATA(31 downto 0),
      S_AXI_rready => xbar_to_m01_couplers_RREADY(1),
      S_AXI_rresp(1 downto 0) => xbar_to_m01_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => xbar_to_m01_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => xbar_to_m01_couplers_WDATA(63 downto 32),
      S_AXI_wready => xbar_to_m01_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => xbar_to_m01_couplers_WSTRB(7 downto 4),
      S_AXI_wvalid => xbar_to_m01_couplers_WVALID(1)
    );
m02_couplers: entity work.m02_couplers_imp_PA09CL
     port map (
      M_ACLK => M02_ACLK_1,
      M_ARESETN => M02_ARESETN_1,
      M_AXI_araddr(31 downto 0) => m02_couplers_to_ps7_0_axi_periph_ARADDR(31 downto 0),
      M_AXI_arprot(2 downto 0) => m02_couplers_to_ps7_0_axi_periph_ARPROT(2 downto 0),
      M_AXI_arready => m02_couplers_to_ps7_0_axi_periph_ARREADY,
      M_AXI_arvalid => m02_couplers_to_ps7_0_axi_periph_ARVALID,
      M_AXI_awaddr(31 downto 0) => m02_couplers_to_ps7_0_axi_periph_AWADDR(31 downto 0),
      M_AXI_awprot(2 downto 0) => m02_couplers_to_ps7_0_axi_periph_AWPROT(2 downto 0),
      M_AXI_awready => m02_couplers_to_ps7_0_axi_periph_AWREADY,
      M_AXI_awvalid => m02_couplers_to_ps7_0_axi_periph_AWVALID,
      M_AXI_bready => m02_couplers_to_ps7_0_axi_periph_BREADY,
      M_AXI_bresp(1 downto 0) => m02_couplers_to_ps7_0_axi_periph_BRESP(1 downto 0),
      M_AXI_bvalid => m02_couplers_to_ps7_0_axi_periph_BVALID,
      M_AXI_rdata(31 downto 0) => m02_couplers_to_ps7_0_axi_periph_RDATA(31 downto 0),
      M_AXI_rready => m02_couplers_to_ps7_0_axi_periph_RREADY,
      M_AXI_rresp(1 downto 0) => m02_couplers_to_ps7_0_axi_periph_RRESP(1 downto 0),
      M_AXI_rvalid => m02_couplers_to_ps7_0_axi_periph_RVALID,
      M_AXI_wdata(31 downto 0) => m02_couplers_to_ps7_0_axi_periph_WDATA(31 downto 0),
      M_AXI_wready => m02_couplers_to_ps7_0_axi_periph_WREADY,
      M_AXI_wstrb(3 downto 0) => m02_couplers_to_ps7_0_axi_periph_WSTRB(3 downto 0),
      M_AXI_wvalid => m02_couplers_to_ps7_0_axi_periph_WVALID,
      S_ACLK => ps7_0_axi_periph_ACLK_net,
      S_ARESETN => ps7_0_axi_periph_ARESETN_net,
      S_AXI_araddr(31 downto 0) => xbar_to_m02_couplers_ARADDR(95 downto 64),
      S_AXI_arprot(2 downto 0) => xbar_to_m02_couplers_ARPROT(8 downto 6),
      S_AXI_arready => xbar_to_m02_couplers_ARREADY,
      S_AXI_arvalid => xbar_to_m02_couplers_ARVALID(2),
      S_AXI_awaddr(31 downto 0) => xbar_to_m02_couplers_AWADDR(95 downto 64),
      S_AXI_awprot(2 downto 0) => xbar_to_m02_couplers_AWPROT(8 downto 6),
      S_AXI_awready => xbar_to_m02_couplers_AWREADY,
      S_AXI_awvalid => xbar_to_m02_couplers_AWVALID(2),
      S_AXI_bready => xbar_to_m02_couplers_BREADY(2),
      S_AXI_bresp(1 downto 0) => xbar_to_m02_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => xbar_to_m02_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => xbar_to_m02_couplers_RDATA(31 downto 0),
      S_AXI_rready => xbar_to_m02_couplers_RREADY(2),
      S_AXI_rresp(1 downto 0) => xbar_to_m02_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => xbar_to_m02_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => xbar_to_m02_couplers_WDATA(95 downto 64),
      S_AXI_wready => xbar_to_m02_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => xbar_to_m02_couplers_WSTRB(11 downto 8),
      S_AXI_wvalid => xbar_to_m02_couplers_WVALID(2)
    );
m03_couplers: entity work.m03_couplers_imp_HC6SK3
     port map (
      M_ACLK => M03_ACLK_1,
      M_ARESETN => M03_ARESETN_1,
      M_AXI_araddr(31 downto 0) => m03_couplers_to_ps7_0_axi_periph_ARADDR(31 downto 0),
      M_AXI_arprot(2 downto 0) => m03_couplers_to_ps7_0_axi_periph_ARPROT(2 downto 0),
      M_AXI_arready => m03_couplers_to_ps7_0_axi_periph_ARREADY,
      M_AXI_arvalid => m03_couplers_to_ps7_0_axi_periph_ARVALID,
      M_AXI_awaddr(31 downto 0) => m03_couplers_to_ps7_0_axi_periph_AWADDR(31 downto 0),
      M_AXI_awprot(2 downto 0) => m03_couplers_to_ps7_0_axi_periph_AWPROT(2 downto 0),
      M_AXI_awready => m03_couplers_to_ps7_0_axi_periph_AWREADY,
      M_AXI_awvalid => m03_couplers_to_ps7_0_axi_periph_AWVALID,
      M_AXI_bready => m03_couplers_to_ps7_0_axi_periph_BREADY,
      M_AXI_bresp(1 downto 0) => m03_couplers_to_ps7_0_axi_periph_BRESP(1 downto 0),
      M_AXI_bvalid => m03_couplers_to_ps7_0_axi_periph_BVALID,
      M_AXI_rdata(31 downto 0) => m03_couplers_to_ps7_0_axi_periph_RDATA(31 downto 0),
      M_AXI_rready => m03_couplers_to_ps7_0_axi_periph_RREADY,
      M_AXI_rresp(1 downto 0) => m03_couplers_to_ps7_0_axi_periph_RRESP(1 downto 0),
      M_AXI_rvalid => m03_couplers_to_ps7_0_axi_periph_RVALID,
      M_AXI_wdata(31 downto 0) => m03_couplers_to_ps7_0_axi_periph_WDATA(31 downto 0),
      M_AXI_wready => m03_couplers_to_ps7_0_axi_periph_WREADY,
      M_AXI_wstrb(3 downto 0) => m03_couplers_to_ps7_0_axi_periph_WSTRB(3 downto 0),
      M_AXI_wvalid => m03_couplers_to_ps7_0_axi_periph_WVALID,
      S_ACLK => ps7_0_axi_periph_ACLK_net,
      S_ARESETN => ps7_0_axi_periph_ARESETN_net,
      S_AXI_araddr(31 downto 0) => xbar_to_m03_couplers_ARADDR(127 downto 96),
      S_AXI_arprot(2 downto 0) => xbar_to_m03_couplers_ARPROT(11 downto 9),
      S_AXI_arready => xbar_to_m03_couplers_ARREADY,
      S_AXI_arvalid => xbar_to_m03_couplers_ARVALID(3),
      S_AXI_awaddr(31 downto 0) => xbar_to_m03_couplers_AWADDR(127 downto 96),
      S_AXI_awprot(2 downto 0) => xbar_to_m03_couplers_AWPROT(11 downto 9),
      S_AXI_awready => xbar_to_m03_couplers_AWREADY,
      S_AXI_awvalid => xbar_to_m03_couplers_AWVALID(3),
      S_AXI_bready => xbar_to_m03_couplers_BREADY(3),
      S_AXI_bresp(1 downto 0) => xbar_to_m03_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => xbar_to_m03_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => xbar_to_m03_couplers_RDATA(31 downto 0),
      S_AXI_rready => xbar_to_m03_couplers_RREADY(3),
      S_AXI_rresp(1 downto 0) => xbar_to_m03_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => xbar_to_m03_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => xbar_to_m03_couplers_WDATA(127 downto 96),
      S_AXI_wready => xbar_to_m03_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => xbar_to_m03_couplers_WSTRB(15 downto 12),
      S_AXI_wvalid => xbar_to_m03_couplers_WVALID(3)
    );
m04_couplers: entity work.m04_couplers_imp_1PXQR28
     port map (
      M_ACLK => M04_ACLK_1,
      M_ARESETN => M04_ARESETN_1,
      M_AXI_araddr => m04_couplers_to_ps7_0_axi_periph_ARADDR,
      M_AXI_arprot => m04_couplers_to_ps7_0_axi_periph_ARPROT,
      M_AXI_arready => m04_couplers_to_ps7_0_axi_periph_ARREADY,
      M_AXI_arvalid => m04_couplers_to_ps7_0_axi_periph_ARVALID,
      M_AXI_awaddr => m04_couplers_to_ps7_0_axi_periph_AWADDR,
      M_AXI_awprot => m04_couplers_to_ps7_0_axi_periph_AWPROT,
      M_AXI_awready => m04_couplers_to_ps7_0_axi_periph_AWREADY,
      M_AXI_awvalid => m04_couplers_to_ps7_0_axi_periph_AWVALID,
      M_AXI_bready => m04_couplers_to_ps7_0_axi_periph_BREADY,
      M_AXI_bresp => m04_couplers_to_ps7_0_axi_periph_BRESP,
      M_AXI_bvalid => m04_couplers_to_ps7_0_axi_periph_BVALID,
      M_AXI_rdata => m04_couplers_to_ps7_0_axi_periph_RDATA,
      M_AXI_rready => m04_couplers_to_ps7_0_axi_periph_RREADY,
      M_AXI_rresp => m04_couplers_to_ps7_0_axi_periph_RRESP,
      M_AXI_rvalid => m04_couplers_to_ps7_0_axi_periph_RVALID,
      M_AXI_wdata => m04_couplers_to_ps7_0_axi_periph_WDATA,
      M_AXI_wready => m04_couplers_to_ps7_0_axi_periph_WREADY,
      M_AXI_wstrb => m04_couplers_to_ps7_0_axi_periph_WSTRB,
      M_AXI_wvalid => m04_couplers_to_ps7_0_axi_periph_WVALID,
      S_ACLK => ps7_0_axi_periph_ACLK_net,
      S_ARESETN => ps7_0_axi_periph_ARESETN_net,
      S_AXI_araddr => xbar_to_m04_couplers_ARADDR(128),
      S_AXI_arprot => xbar_to_m04_couplers_ARPROT(12),
      S_AXI_arready => xbar_to_m04_couplers_ARREADY,
      S_AXI_arvalid => xbar_to_m04_couplers_ARVALID(4),
      S_AXI_awaddr => xbar_to_m04_couplers_AWADDR(128),
      S_AXI_awprot => xbar_to_m04_couplers_AWPROT(12),
      S_AXI_awready => xbar_to_m04_couplers_AWREADY,
      S_AXI_awvalid => xbar_to_m04_couplers_AWVALID(4),
      S_AXI_bready => xbar_to_m04_couplers_BREADY(4),
      S_AXI_bresp => xbar_to_m04_couplers_BRESP,
      S_AXI_bvalid => xbar_to_m04_couplers_BVALID,
      S_AXI_rdata => xbar_to_m04_couplers_RDATA,
      S_AXI_rready => xbar_to_m04_couplers_RREADY(4),
      S_AXI_rresp => xbar_to_m04_couplers_RRESP,
      S_AXI_rvalid => xbar_to_m04_couplers_RVALID,
      S_AXI_wdata => xbar_to_m04_couplers_WDATA(128),
      S_AXI_wready => xbar_to_m04_couplers_WREADY,
      S_AXI_wstrb => xbar_to_m04_couplers_WSTRB(16),
      S_AXI_wvalid => xbar_to_m04_couplers_WVALID(4)
    );
s00_couplers: entity work.s00_couplers_imp_1VKXCEW
     port map (
      M_ACLK => ps7_0_axi_periph_ACLK_net,
      M_ARESETN => ps7_0_axi_periph_ARESETN_net,
      M_AXI_araddr(31 downto 0) => s00_couplers_to_xbar_ARADDR(31 downto 0),
      M_AXI_arprot(2 downto 0) => s00_couplers_to_xbar_ARPROT(2 downto 0),
      M_AXI_arready => s00_couplers_to_xbar_ARREADY(0),
      M_AXI_arvalid => s00_couplers_to_xbar_ARVALID,
      M_AXI_awaddr(31 downto 0) => s00_couplers_to_xbar_AWADDR(31 downto 0),
      M_AXI_awprot(2 downto 0) => s00_couplers_to_xbar_AWPROT(2 downto 0),
      M_AXI_awready => s00_couplers_to_xbar_AWREADY(0),
      M_AXI_awvalid => s00_couplers_to_xbar_AWVALID,
      M_AXI_bready => s00_couplers_to_xbar_BREADY,
      M_AXI_bresp(1 downto 0) => s00_couplers_to_xbar_BRESP(1 downto 0),
      M_AXI_bvalid => s00_couplers_to_xbar_BVALID(0),
      M_AXI_rdata(31 downto 0) => s00_couplers_to_xbar_RDATA(31 downto 0),
      M_AXI_rready => s00_couplers_to_xbar_RREADY,
      M_AXI_rresp(1 downto 0) => s00_couplers_to_xbar_RRESP(1 downto 0),
      M_AXI_rvalid => s00_couplers_to_xbar_RVALID(0),
      M_AXI_wdata(31 downto 0) => s00_couplers_to_xbar_WDATA(31 downto 0),
      M_AXI_wready => s00_couplers_to_xbar_WREADY(0),
      M_AXI_wstrb(3 downto 0) => s00_couplers_to_xbar_WSTRB(3 downto 0),
      M_AXI_wvalid => s00_couplers_to_xbar_WVALID,
      S_ACLK => S00_ACLK_1,
      S_ARESETN => S00_ARESETN_1,
      S_AXI_araddr(31 downto 0) => ps7_0_axi_periph_to_s00_couplers_ARADDR(31 downto 0),
      S_AXI_arburst(1 downto 0) => ps7_0_axi_periph_to_s00_couplers_ARBURST(1 downto 0),
      S_AXI_arcache(3 downto 0) => ps7_0_axi_periph_to_s00_couplers_ARCACHE(3 downto 0),
      S_AXI_arid(11 downto 0) => ps7_0_axi_periph_to_s00_couplers_ARID(11 downto 0),
      S_AXI_arlen(3 downto 0) => ps7_0_axi_periph_to_s00_couplers_ARLEN(3 downto 0),
      S_AXI_arlock(1 downto 0) => ps7_0_axi_periph_to_s00_couplers_ARLOCK(1 downto 0),
      S_AXI_arprot(2 downto 0) => ps7_0_axi_periph_to_s00_couplers_ARPROT(2 downto 0),
      S_AXI_arqos(3 downto 0) => ps7_0_axi_periph_to_s00_couplers_ARQOS(3 downto 0),
      S_AXI_arready => ps7_0_axi_periph_to_s00_couplers_ARREADY,
      S_AXI_arsize(2 downto 0) => ps7_0_axi_periph_to_s00_couplers_ARSIZE(2 downto 0),
      S_AXI_arvalid => ps7_0_axi_periph_to_s00_couplers_ARVALID,
      S_AXI_awaddr(31 downto 0) => ps7_0_axi_periph_to_s00_couplers_AWADDR(31 downto 0),
      S_AXI_awburst(1 downto 0) => ps7_0_axi_periph_to_s00_couplers_AWBURST(1 downto 0),
      S_AXI_awcache(3 downto 0) => ps7_0_axi_periph_to_s00_couplers_AWCACHE(3 downto 0),
      S_AXI_awid(11 downto 0) => ps7_0_axi_periph_to_s00_couplers_AWID(11 downto 0),
      S_AXI_awlen(3 downto 0) => ps7_0_axi_periph_to_s00_couplers_AWLEN(3 downto 0),
      S_AXI_awlock(1 downto 0) => ps7_0_axi_periph_to_s00_couplers_AWLOCK(1 downto 0),
      S_AXI_awprot(2 downto 0) => ps7_0_axi_periph_to_s00_couplers_AWPROT(2 downto 0),
      S_AXI_awqos(3 downto 0) => ps7_0_axi_periph_to_s00_couplers_AWQOS(3 downto 0),
      S_AXI_awready => ps7_0_axi_periph_to_s00_couplers_AWREADY,
      S_AXI_awsize(2 downto 0) => ps7_0_axi_periph_to_s00_couplers_AWSIZE(2 downto 0),
      S_AXI_awvalid => ps7_0_axi_periph_to_s00_couplers_AWVALID,
      S_AXI_bid(11 downto 0) => ps7_0_axi_periph_to_s00_couplers_BID(11 downto 0),
      S_AXI_bready => ps7_0_axi_periph_to_s00_couplers_BREADY,
      S_AXI_bresp(1 downto 0) => ps7_0_axi_periph_to_s00_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => ps7_0_axi_periph_to_s00_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => ps7_0_axi_periph_to_s00_couplers_RDATA(31 downto 0),
      S_AXI_rid(11 downto 0) => ps7_0_axi_periph_to_s00_couplers_RID(11 downto 0),
      S_AXI_rlast => ps7_0_axi_periph_to_s00_couplers_RLAST,
      S_AXI_rready => ps7_0_axi_periph_to_s00_couplers_RREADY,
      S_AXI_rresp(1 downto 0) => ps7_0_axi_periph_to_s00_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => ps7_0_axi_periph_to_s00_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => ps7_0_axi_periph_to_s00_couplers_WDATA(31 downto 0),
      S_AXI_wid(11 downto 0) => ps7_0_axi_periph_to_s00_couplers_WID(11 downto 0),
      S_AXI_wlast => ps7_0_axi_periph_to_s00_couplers_WLAST,
      S_AXI_wready => ps7_0_axi_periph_to_s00_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => ps7_0_axi_periph_to_s00_couplers_WSTRB(3 downto 0),
      S_AXI_wvalid => ps7_0_axi_periph_to_s00_couplers_WVALID
    );
xbar: component NV_project_xbar_0
     port map (
      aclk => ps7_0_axi_periph_ACLK_net,
      aresetn => ps7_0_axi_periph_ARESETN_net,
      m_axi_araddr(159 downto 128) => xbar_to_m04_couplers_ARADDR(159 downto 128),
      m_axi_araddr(127 downto 96) => xbar_to_m03_couplers_ARADDR(127 downto 96),
      m_axi_araddr(95 downto 64) => xbar_to_m02_couplers_ARADDR(95 downto 64),
      m_axi_araddr(63 downto 32) => xbar_to_m01_couplers_ARADDR(63 downto 32),
      m_axi_araddr(31 downto 0) => xbar_to_m00_couplers_ARADDR(31 downto 0),
      m_axi_arprot(14 downto 12) => xbar_to_m04_couplers_ARPROT(14 downto 12),
      m_axi_arprot(11 downto 9) => xbar_to_m03_couplers_ARPROT(11 downto 9),
      m_axi_arprot(8 downto 6) => xbar_to_m02_couplers_ARPROT(8 downto 6),
      m_axi_arprot(5 downto 3) => xbar_to_m01_couplers_ARPROT(5 downto 3),
      m_axi_arprot(2 downto 0) => NLW_xbar_m_axi_arprot_UNCONNECTED(2 downto 0),
      m_axi_arready(4) => xbar_to_m04_couplers_ARREADY,
      m_axi_arready(3) => xbar_to_m03_couplers_ARREADY,
      m_axi_arready(2) => xbar_to_m02_couplers_ARREADY,
      m_axi_arready(1) => xbar_to_m01_couplers_ARREADY,
      m_axi_arready(0) => xbar_to_m00_couplers_ARREADY(0),
      m_axi_arvalid(4) => xbar_to_m04_couplers_ARVALID(4),
      m_axi_arvalid(3) => xbar_to_m03_couplers_ARVALID(3),
      m_axi_arvalid(2) => xbar_to_m02_couplers_ARVALID(2),
      m_axi_arvalid(1) => xbar_to_m01_couplers_ARVALID(1),
      m_axi_arvalid(0) => xbar_to_m00_couplers_ARVALID(0),
      m_axi_awaddr(159 downto 128) => xbar_to_m04_couplers_AWADDR(159 downto 128),
      m_axi_awaddr(127 downto 96) => xbar_to_m03_couplers_AWADDR(127 downto 96),
      m_axi_awaddr(95 downto 64) => xbar_to_m02_couplers_AWADDR(95 downto 64),
      m_axi_awaddr(63 downto 32) => xbar_to_m01_couplers_AWADDR(63 downto 32),
      m_axi_awaddr(31 downto 0) => xbar_to_m00_couplers_AWADDR(31 downto 0),
      m_axi_awprot(14 downto 12) => xbar_to_m04_couplers_AWPROT(14 downto 12),
      m_axi_awprot(11 downto 9) => xbar_to_m03_couplers_AWPROT(11 downto 9),
      m_axi_awprot(8 downto 6) => xbar_to_m02_couplers_AWPROT(8 downto 6),
      m_axi_awprot(5 downto 3) => xbar_to_m01_couplers_AWPROT(5 downto 3),
      m_axi_awprot(2 downto 0) => NLW_xbar_m_axi_awprot_UNCONNECTED(2 downto 0),
      m_axi_awready(4) => xbar_to_m04_couplers_AWREADY,
      m_axi_awready(3) => xbar_to_m03_couplers_AWREADY,
      m_axi_awready(2) => xbar_to_m02_couplers_AWREADY,
      m_axi_awready(1) => xbar_to_m01_couplers_AWREADY,
      m_axi_awready(0) => xbar_to_m00_couplers_AWREADY(0),
      m_axi_awvalid(4) => xbar_to_m04_couplers_AWVALID(4),
      m_axi_awvalid(3) => xbar_to_m03_couplers_AWVALID(3),
      m_axi_awvalid(2) => xbar_to_m02_couplers_AWVALID(2),
      m_axi_awvalid(1) => xbar_to_m01_couplers_AWVALID(1),
      m_axi_awvalid(0) => xbar_to_m00_couplers_AWVALID(0),
      m_axi_bready(4) => xbar_to_m04_couplers_BREADY(4),
      m_axi_bready(3) => xbar_to_m03_couplers_BREADY(3),
      m_axi_bready(2) => xbar_to_m02_couplers_BREADY(2),
      m_axi_bready(1) => xbar_to_m01_couplers_BREADY(1),
      m_axi_bready(0) => xbar_to_m00_couplers_BREADY(0),
      m_axi_bresp(9) => xbar_to_m04_couplers_BRESP,
      m_axi_bresp(8) => xbar_to_m04_couplers_BRESP,
      m_axi_bresp(7 downto 6) => xbar_to_m03_couplers_BRESP(1 downto 0),
      m_axi_bresp(5 downto 4) => xbar_to_m02_couplers_BRESP(1 downto 0),
      m_axi_bresp(3 downto 2) => xbar_to_m01_couplers_BRESP(1 downto 0),
      m_axi_bresp(1 downto 0) => xbar_to_m00_couplers_BRESP(1 downto 0),
      m_axi_bvalid(4) => xbar_to_m04_couplers_BVALID,
      m_axi_bvalid(3) => xbar_to_m03_couplers_BVALID,
      m_axi_bvalid(2) => xbar_to_m02_couplers_BVALID,
      m_axi_bvalid(1) => xbar_to_m01_couplers_BVALID,
      m_axi_bvalid(0) => xbar_to_m00_couplers_BVALID(0),
      m_axi_rdata(159) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(158) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(157) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(156) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(155) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(154) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(153) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(152) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(151) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(150) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(149) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(148) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(147) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(146) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(145) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(144) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(143) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(142) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(141) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(140) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(139) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(138) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(137) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(136) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(135) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(134) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(133) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(132) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(131) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(130) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(129) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(128) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(127 downto 96) => xbar_to_m03_couplers_RDATA(31 downto 0),
      m_axi_rdata(95 downto 64) => xbar_to_m02_couplers_RDATA(31 downto 0),
      m_axi_rdata(63 downto 32) => xbar_to_m01_couplers_RDATA(31 downto 0),
      m_axi_rdata(31 downto 0) => xbar_to_m00_couplers_RDATA(31 downto 0),
      m_axi_rready(4) => xbar_to_m04_couplers_RREADY(4),
      m_axi_rready(3) => xbar_to_m03_couplers_RREADY(3),
      m_axi_rready(2) => xbar_to_m02_couplers_RREADY(2),
      m_axi_rready(1) => xbar_to_m01_couplers_RREADY(1),
      m_axi_rready(0) => xbar_to_m00_couplers_RREADY(0),
      m_axi_rresp(9) => xbar_to_m04_couplers_RRESP,
      m_axi_rresp(8) => xbar_to_m04_couplers_RRESP,
      m_axi_rresp(7 downto 6) => xbar_to_m03_couplers_RRESP(1 downto 0),
      m_axi_rresp(5 downto 4) => xbar_to_m02_couplers_RRESP(1 downto 0),
      m_axi_rresp(3 downto 2) => xbar_to_m01_couplers_RRESP(1 downto 0),
      m_axi_rresp(1 downto 0) => xbar_to_m00_couplers_RRESP(1 downto 0),
      m_axi_rvalid(4) => xbar_to_m04_couplers_RVALID,
      m_axi_rvalid(3) => xbar_to_m03_couplers_RVALID,
      m_axi_rvalid(2) => xbar_to_m02_couplers_RVALID,
      m_axi_rvalid(1) => xbar_to_m01_couplers_RVALID,
      m_axi_rvalid(0) => xbar_to_m00_couplers_RVALID(0),
      m_axi_wdata(159 downto 128) => xbar_to_m04_couplers_WDATA(159 downto 128),
      m_axi_wdata(127 downto 96) => xbar_to_m03_couplers_WDATA(127 downto 96),
      m_axi_wdata(95 downto 64) => xbar_to_m02_couplers_WDATA(95 downto 64),
      m_axi_wdata(63 downto 32) => xbar_to_m01_couplers_WDATA(63 downto 32),
      m_axi_wdata(31 downto 0) => xbar_to_m00_couplers_WDATA(31 downto 0),
      m_axi_wready(4) => xbar_to_m04_couplers_WREADY,
      m_axi_wready(3) => xbar_to_m03_couplers_WREADY,
      m_axi_wready(2) => xbar_to_m02_couplers_WREADY,
      m_axi_wready(1) => xbar_to_m01_couplers_WREADY,
      m_axi_wready(0) => xbar_to_m00_couplers_WREADY(0),
      m_axi_wstrb(19 downto 16) => xbar_to_m04_couplers_WSTRB(19 downto 16),
      m_axi_wstrb(15 downto 12) => xbar_to_m03_couplers_WSTRB(15 downto 12),
      m_axi_wstrb(11 downto 8) => xbar_to_m02_couplers_WSTRB(11 downto 8),
      m_axi_wstrb(7 downto 4) => xbar_to_m01_couplers_WSTRB(7 downto 4),
      m_axi_wstrb(3 downto 0) => xbar_to_m00_couplers_WSTRB(3 downto 0),
      m_axi_wvalid(4) => xbar_to_m04_couplers_WVALID(4),
      m_axi_wvalid(3) => xbar_to_m03_couplers_WVALID(3),
      m_axi_wvalid(2) => xbar_to_m02_couplers_WVALID(2),
      m_axi_wvalid(1) => xbar_to_m01_couplers_WVALID(1),
      m_axi_wvalid(0) => xbar_to_m00_couplers_WVALID(0),
      s_axi_araddr(31 downto 0) => s00_couplers_to_xbar_ARADDR(31 downto 0),
      s_axi_arprot(2 downto 0) => s00_couplers_to_xbar_ARPROT(2 downto 0),
      s_axi_arready(0) => s00_couplers_to_xbar_ARREADY(0),
      s_axi_arvalid(0) => s00_couplers_to_xbar_ARVALID,
      s_axi_awaddr(31 downto 0) => s00_couplers_to_xbar_AWADDR(31 downto 0),
      s_axi_awprot(2 downto 0) => s00_couplers_to_xbar_AWPROT(2 downto 0),
      s_axi_awready(0) => s00_couplers_to_xbar_AWREADY(0),
      s_axi_awvalid(0) => s00_couplers_to_xbar_AWVALID,
      s_axi_bready(0) => s00_couplers_to_xbar_BREADY,
      s_axi_bresp(1 downto 0) => s00_couplers_to_xbar_BRESP(1 downto 0),
      s_axi_bvalid(0) => s00_couplers_to_xbar_BVALID(0),
      s_axi_rdata(31 downto 0) => s00_couplers_to_xbar_RDATA(31 downto 0),
      s_axi_rready(0) => s00_couplers_to_xbar_RREADY,
      s_axi_rresp(1 downto 0) => s00_couplers_to_xbar_RRESP(1 downto 0),
      s_axi_rvalid(0) => s00_couplers_to_xbar_RVALID(0),
      s_axi_wdata(31 downto 0) => s00_couplers_to_xbar_WDATA(31 downto 0),
      s_axi_wready(0) => s00_couplers_to_xbar_WREADY(0),
      s_axi_wstrb(3 downto 0) => s00_couplers_to_xbar_WSTRB(3 downto 0),
      s_axi_wvalid(0) => s00_couplers_to_xbar_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
--  
  --  
  entity NV_project is
  port (
    DDR_0_addr : inout STD_LOGIC_VECTOR ( 14 downto 0 );
    DDR_0_ba : inout STD_LOGIC_VECTOR ( 2 downto 0 );
    DDR_0_cas_n : inout STD_LOGIC;
    DDR_0_ck_n : inout STD_LOGIC;
    DDR_0_ck_p : inout STD_LOGIC;
    DDR_0_cke : inout STD_LOGIC;
    DDR_0_cs_n : inout STD_LOGIC;
    DDR_0_dm : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_0_dq : inout STD_LOGIC_VECTOR ( 31 downto 0 );
    DDR_0_dqs_n : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_0_dqs_p : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_0_odt : inout STD_LOGIC;
    DDR_0_ras_n : inout STD_LOGIC;
    DDR_0_reset_n : inout STD_LOGIC;
    DDR_0_we_n : inout STD_LOGIC;
    DRIVER_DOWN_00 : in STD_LOGIC;
    DRIVER_DOWN_01 : in STD_LOGIC;
    DRIVER_DOWN_02 : in STD_LOGIC;
    DRIVER_DOWN_03 : in STD_LOGIC;
    DRIVER_DOWN_04 : in STD_LOGIC;
    DRIVER_DOWN_05 : in STD_LOGIC;
    DRIVER_DOWN_06 : in STD_LOGIC;
    DRIVER_UP_00 : in STD_LOGIC;
    DRIVER_UP_01 : in STD_LOGIC;
    DRIVER_UP_02 : in STD_LOGIC;
    DRIVER_UP_03 : in STD_LOGIC;
    DRIVER_UP_04 : in STD_LOGIC;
    DRIVER_UP_05 : in STD_LOGIC;
    DRIVER_UP_06 : in STD_LOGIC;
    Din_out_0 : out STD_LOGIC;
    Din_out_1 : out STD_LOGIC;
    Din_out_10 : out STD_LOGIC;
    Din_out_11 : out STD_LOGIC;
    Din_out_12 : out STD_LOGIC;
    Din_out_13 : out STD_LOGIC;
    Din_out_14 : out STD_LOGIC;
    Din_out_15 : out STD_LOGIC;
    Din_out_16 : out STD_LOGIC;
    Din_out_17 : out STD_LOGIC;
    Din_out_18 : out STD_LOGIC;
    Din_out_19 : out STD_LOGIC;
    Din_out_2 : out STD_LOGIC;
    Din_out_20 : out STD_LOGIC;
    Din_out_3 : out STD_LOGIC;
    Din_out_4 : out STD_LOGIC;
    Din_out_5 : out STD_LOGIC;
    Din_out_6 : out STD_LOGIC;
    Din_out_7 : out STD_LOGIC;
    Din_out_8 : out STD_LOGIC;
    Din_out_9 : out STD_LOGIC;
    FIXED_IO_0_ddr_vrn : inout STD_LOGIC;
    FIXED_IO_0_ddr_vrp : inout STD_LOGIC;
    FIXED_IO_0_mio : inout STD_LOGIC_VECTOR ( 53 downto 0 );
    FIXED_IO_0_ps_clk : inout STD_LOGIC;
    FIXED_IO_0_ps_porb : inout STD_LOGIC;
    FIXED_IO_0_ps_srstb : inout STD_LOGIC;
    SCLK_0 : out STD_LOGIC;
    SCLK_out_0 : out STD_LOGIC;
    SCLK_out_1 : out STD_LOGIC;
    SCLK_out_2 : out STD_LOGIC;
    SCLK_out_3 : out STD_LOGIC;
    SCLK_out_4 : out STD_LOGIC;
    SCLK_out_6 : out STD_LOGIC;
    SCLK_out_7 : out STD_LOGIC;
    SDATA1_0 : in STD_LOGIC;
    nCS_0 : out STD_LOGIC;
    nRST_out_0 : out STD_LOGIC;
    nRST_out_1 : out STD_LOGIC;
    nSync_out_0 : out STD_LOGIC;
    nSync_out_6 : out STD_LOGIC;
    scl_0 : inout STD_LOGIC;
    scl_1 : inout STD_LOGIC;
    sda_0 : inout STD_LOGIC;
    sda_1 : inout STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of NV_project : entity is "NV_project,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=NV_project,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=71,numReposBlks=64,numNonXlnxBlks=0,numHierBlks=7,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=9,numHdlrefBlks=14,numPkgbdBlks=0,bdsource=USER,da_axi4_cnt=15,da_board_cnt=30,da_clkrst_cnt=48,da_ps7_cnt=11,synth_mode=Global}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of NV_project : entity is "NV_project.hwdef";
end NV_project;

architecture STRUCTURE of NV_project is
  component NV_project_wind_turb_0_0 is
  port (
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    ap_start : in STD_LOGIC;
    ap_done : out STD_LOGIC;
    ap_idle : out STD_LOGIC;
    ap_ready : out STD_LOGIC;
    Tem_V : in STD_LOGIC_VECTOR ( 26 downto 0 );
    Pi_V : in STD_LOGIC_VECTOR ( 20 downto 0 );
    Wn_V : out STD_LOGIC_VECTOR ( 24 downto 0 )
  );
  end component NV_project_wind_turb_0_0;
  component NV_project_pmsm_0_0 is
  port (
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    ap_start : in STD_LOGIC;
    ap_done : out STD_LOGIC;
    ap_idle : out STD_LOGIC;
    ap_ready : out STD_LOGIC;
    Vs_a_V : in STD_LOGIC_VECTOR ( 24 downto 0 );
    Vs_b_V : in STD_LOGIC_VECTOR ( 24 downto 0 );
    Vs_c_V : in STD_LOGIC_VECTOR ( 24 downto 0 );
    VN_gnd_V : in STD_LOGIC_VECTOR ( 17 downto 0 );
    Wn_o_V : in STD_LOGIC_VECTOR ( 24 downto 0 );
    SG1_K2 : in STD_LOGIC;
    Is_a_V : out STD_LOGIC_VECTOR ( 24 downto 0 );
    Is_b_V : out STD_LOGIC_VECTOR ( 24 downto 0 );
    Is_c_V : out STD_LOGIC_VECTOR ( 24 downto 0 );
    Tem_V : out STD_LOGIC_VECTOR ( 26 downto 0 );
    Fem_a_r_V : out STD_LOGIC_VECTOR ( 24 downto 0 );
    Fem_b_r_V : out STD_LOGIC_VECTOR ( 24 downto 0 );
    Fem_c_r_V : out STD_LOGIC_VECTOR ( 24 downto 0 )
  );
  end component NV_project_pmsm_0_0;
  component NV_project_bridge3ph_0_0 is
  port (
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    ap_start : in STD_LOGIC;
    ap_done : out STD_LOGIC;
    ap_idle : out STD_LOGIC;
    ap_ready : out STD_LOGIC;
    T1 : in STD_LOGIC;
    T2 : in STD_LOGIC;
    T3 : in STD_LOGIC;
    T4 : in STD_LOGIC;
    T5 : in STD_LOGIC;
    T6 : in STD_LOGIC;
    Vdc_V : in STD_LOGIC_VECTOR ( 17 downto 0 );
    Ia_V : in STD_LOGIC_VECTOR ( 24 downto 0 );
    Ib_V : in STD_LOGIC_VECTOR ( 24 downto 0 );
    Ic_V : in STD_LOGIC_VECTOR ( 24 downto 0 );
    Va_V : out STD_LOGIC_VECTOR ( 24 downto 0 );
    Vb_V : out STD_LOGIC_VECTOR ( 24 downto 0 );
    Vc_V : out STD_LOGIC_VECTOR ( 24 downto 0 );
    Idc_V : out STD_LOGIC_VECTOR ( 24 downto 0 );
    Vn_gnd_V : out STD_LOGIC_VECTOR ( 17 downto 0 )
  );
  end component NV_project_bridge3ph_0_0;
  component NV_project_xlconstant_0_1 is
  port (
    dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component NV_project_xlconstant_0_1;
  component NV_project_xlconstant_1_1 is
  port (
    dout : out STD_LOGIC_VECTOR ( 10 downto 0 )
  );
  end component NV_project_xlconstant_1_1;
  component NV_project_processing_system7_0_1 is
  port (
    TTC0_WAVE0_OUT : out STD_LOGIC;
    TTC0_WAVE1_OUT : out STD_LOGIC;
    TTC0_WAVE2_OUT : out STD_LOGIC;
    USB0_PORT_INDCTL : out STD_LOGIC_VECTOR ( 1 downto 0 );
    USB0_VBUS_PWRSELECT : out STD_LOGIC;
    USB0_VBUS_PWRFAULT : in STD_LOGIC;
    M_AXI_GP0_ARVALID : out STD_LOGIC;
    M_AXI_GP0_AWVALID : out STD_LOGIC;
    M_AXI_GP0_BREADY : out STD_LOGIC;
    M_AXI_GP0_RREADY : out STD_LOGIC;
    M_AXI_GP0_WLAST : out STD_LOGIC;
    M_AXI_GP0_WVALID : out STD_LOGIC;
    M_AXI_GP0_ARID : out STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_GP0_AWID : out STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_GP0_WID : out STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_GP0_ARBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_GP0_ARLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_GP0_ARSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_GP0_AWBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_GP0_AWLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_GP0_AWSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_GP0_ARPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_GP0_AWPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_GP0_ARADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_GP0_AWADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_GP0_WDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_GP0_ARCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_ARLEN : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_ARQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_AWCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_AWLEN : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_AWQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_WSTRB : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_ACLK : in STD_LOGIC;
    M_AXI_GP0_ARREADY : in STD_LOGIC;
    M_AXI_GP0_AWREADY : in STD_LOGIC;
    M_AXI_GP0_BVALID : in STD_LOGIC;
    M_AXI_GP0_RLAST : in STD_LOGIC;
    M_AXI_GP0_RVALID : in STD_LOGIC;
    M_AXI_GP0_WREADY : in STD_LOGIC;
    M_AXI_GP0_BID : in STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_GP0_RID : in STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_GP0_BRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_GP0_RRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_GP0_RDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    IRQ_F2P : in STD_LOGIC_VECTOR ( 0 to 0 );
    FCLK_CLK0 : out STD_LOGIC;
    FCLK_CLK1 : out STD_LOGIC;
    FCLK_CLK2 : out STD_LOGIC;
    FCLK_CLK3 : out STD_LOGIC;
    FCLK_RESET0_N : out STD_LOGIC;
    MIO : inout STD_LOGIC_VECTOR ( 53 downto 0 );
    DDR_CAS_n : inout STD_LOGIC;
    DDR_CKE : inout STD_LOGIC;
    DDR_Clk_n : inout STD_LOGIC;
    DDR_Clk : inout STD_LOGIC;
    DDR_CS_n : inout STD_LOGIC;
    DDR_DRSTB : inout STD_LOGIC;
    DDR_ODT : inout STD_LOGIC;
    DDR_RAS_n : inout STD_LOGIC;
    DDR_WEB : inout STD_LOGIC;
    DDR_BankAddr : inout STD_LOGIC_VECTOR ( 2 downto 0 );
    DDR_Addr : inout STD_LOGIC_VECTOR ( 14 downto 0 );
    DDR_VRN : inout STD_LOGIC;
    DDR_VRP : inout STD_LOGIC;
    DDR_DM : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_DQ : inout STD_LOGIC_VECTOR ( 31 downto 0 );
    DDR_DQS_n : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_DQS : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    PS_SRSTB : inout STD_LOGIC;
    PS_CLK : inout STD_LOGIC;
    PS_PORB : inout STD_LOGIC
  );
  end component NV_project_processing_system7_0_1;
  component NV_project_axi_gpio_0_1 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    ip2intc_irpt : out STD_LOGIC;
    gpio_io_i : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component NV_project_axi_gpio_0_1;
  component NV_project_rst_ps7_0_100M_0 is
  port (
    slowest_sync_clk : in STD_LOGIC;
    ext_reset_in : in STD_LOGIC;
    aux_reset_in : in STD_LOGIC;
    mb_debug_sys_rst : in STD_LOGIC;
    dcm_locked : in STD_LOGIC;
    mb_reset : out STD_LOGIC;
    bus_struct_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    interconnect_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component NV_project_rst_ps7_0_100M_0;
  component NV_project_xlconstant_4_1 is
  port (
    dout : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component NV_project_xlconstant_4_1;
  component NV_project_xlconstant_4_2 is
  port (
    dout : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component NV_project_xlconstant_4_2;
  component NV_project_xlconstant_4_3 is
  port (
    dout : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component NV_project_xlconstant_4_3;
  component NV_project_xlconstant_4_4 is
  port (
    dout : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component NV_project_xlconstant_4_4;
  component NV_project_xlconstant_0_0 is
  port (
    dout : out STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  end component NV_project_xlconstant_0_0;
  component NV_project_xlconstant_1_0 is
  port (
    dout : out STD_LOGIC_VECTOR ( 9 downto 0 )
  );
  end component NV_project_xlconstant_1_0;
  component NV_project_xlconstant_1_2 is
  port (
    dout : out STD_LOGIC_VECTOR ( 9 downto 0 )
  );
  end component NV_project_xlconstant_1_2;
  component NV_project_xlconstant_1_3 is
  port (
    dout : out STD_LOGIC_VECTOR ( 9 downto 0 )
  );
  end component NV_project_xlconstant_1_3;
  component NV_project_xlconstant_15_0 is
  port (
    dout : out STD_LOGIC_VECTOR ( 9 downto 0 )
  );
  end component NV_project_xlconstant_15_0;
  component NV_project_xlconstant_17_0 is
  port (
    dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component NV_project_xlconstant_17_0;
  component NV_project_xlconstant_1_4 is
  port (
    dout : out STD_LOGIC_VECTOR ( 6 downto 0 )
  );
  end component NV_project_xlconstant_1_4;
  component NV_project_xlconstant_1_5 is
  port (
    dout : out STD_LOGIC_VECTOR ( 6 downto 0 )
  );
  end component NV_project_xlconstant_1_5;
  component NV_project_xlconstant_1_6 is
  port (
    dout : out STD_LOGIC_VECTOR ( 6 downto 0 )
  );
  end component NV_project_xlconstant_1_6;
  component NV_project_FSM_0_0 is
  port (
    CLK : in STD_LOGIC;
    RST : in STD_LOGIC;
    Start : out STD_LOGIC
  );
  end component NV_project_FSM_0_0;
  component NV_project_Test_normal_mode_MUX_0_0 is
  port (
    CLK : in STD_LOGIC;
    RST : in STD_LOGIC;
    mode : in STD_LOGIC;
    mode_dac : in STD_LOGIC;
    analog_output_TEST_1 : in STD_LOGIC_VECTOR ( 11 downto 0 );
    analog_output_TEST_2 : in STD_LOGIC_VECTOR ( 11 downto 0 );
    analog_output_TEST_3 : in STD_LOGIC_VECTOR ( 11 downto 0 );
    analog_output_TEST_4 : in STD_LOGIC_VECTOR ( 11 downto 0 );
    analog_output_TEST_5 : in STD_LOGIC_VECTOR ( 11 downto 0 );
    analog_output_TEST_6 : in STD_LOGIC_VECTOR ( 11 downto 0 );
    analog_output_TEST_7 : in STD_LOGIC_VECTOR ( 11 downto 0 );
    analog_output_TEST_8 : in STD_LOGIC_VECTOR ( 11 downto 0 );
    analog_output_TEST_9 : in STD_LOGIC_VECTOR ( 11 downto 0 );
    analog_output_TEST_10 : in STD_LOGIC_VECTOR ( 11 downto 0 );
    analog_output_TEST_11 : in STD_LOGIC_VECTOR ( 11 downto 0 );
    analog_output_TEST_12 : in STD_LOGIC_VECTOR ( 11 downto 0 );
    analog_output_TEST_13 : in STD_LOGIC_VECTOR ( 11 downto 0 );
    analog_output_TEST_14 : in STD_LOGIC_VECTOR ( 11 downto 0 );
    analog_output_TEST_15 : in STD_LOGIC_VECTOR ( 11 downto 0 );
    analog_output_TEST_16 : in STD_LOGIC_VECTOR ( 11 downto 0 );
    analog_output_TEST_17 : in STD_LOGIC_VECTOR ( 11 downto 0 );
    analog_output_NORMAL_1 : in STD_LOGIC_VECTOR ( 11 downto 0 );
    analog_output_NORMAL_2 : in STD_LOGIC_VECTOR ( 11 downto 0 );
    analog_output_NORMAL_3 : in STD_LOGIC_VECTOR ( 11 downto 0 );
    analog_output_NORMAL_4 : in STD_LOGIC_VECTOR ( 11 downto 0 );
    analog_output_NORMAL_5 : in STD_LOGIC_VECTOR ( 11 downto 0 );
    analog_output_NORMAL_6 : in STD_LOGIC_VECTOR ( 11 downto 0 );
    analog_output_NORMAL_7 : in STD_LOGIC_VECTOR ( 11 downto 0 );
    analog_output_NORMAL_8 : in STD_LOGIC_VECTOR ( 11 downto 0 );
    analog_output_NORMAL_9 : in STD_LOGIC_VECTOR ( 11 downto 0 );
    analog_output_NORMAL_10 : in STD_LOGIC_VECTOR ( 11 downto 0 );
    analog_output_NORMAL_11 : in STD_LOGIC_VECTOR ( 11 downto 0 );
    analog_output_NORMAL_12 : in STD_LOGIC_VECTOR ( 11 downto 0 );
    analog_output_NORMAL_13 : in STD_LOGIC_VECTOR ( 11 downto 0 );
    analog_output_NORMAL_14 : in STD_LOGIC_VECTOR ( 11 downto 0 );
    analog_output_NORMAL_15 : in STD_LOGIC_VECTOR ( 11 downto 0 );
    analog_output_NORMAL_16 : in STD_LOGIC_VECTOR ( 11 downto 0 );
    analog_output_NORMAL_17 : in STD_LOGIC_VECTOR ( 11 downto 0 );
    DigPot_output_TEST_1 : in STD_LOGIC_VECTOR ( 9 downto 0 );
    DigPot_output_TEST_2 : in STD_LOGIC_VECTOR ( 9 downto 0 );
    DigPot_output_TEST_3 : in STD_LOGIC_VECTOR ( 9 downto 0 );
    DigPot_output_TEST_4 : in STD_LOGIC_VECTOR ( 9 downto 0 );
    DigPot_output_NORMAL_1 : in STD_LOGIC_VECTOR ( 9 downto 0 );
    DigPot_output_NORMAL_2 : in STD_LOGIC_VECTOR ( 9 downto 0 );
    DigPot_output_NORMAL_3 : in STD_LOGIC_VECTOR ( 9 downto 0 );
    DigPot_output_NORMAL_4 : in STD_LOGIC_VECTOR ( 9 downto 0 );
    Expansor_output_TEST_1 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    Expansor_output_TEST_2 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    Expansor_output_TEST_3 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    Expansor_output_NORMAL_1 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    Expansor_output_NORMAL_2 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    Expansor_output_NORMAL_3 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    analog_output_1 : out STD_LOGIC_VECTOR ( 11 downto 0 );
    analog_output_2 : out STD_LOGIC_VECTOR ( 11 downto 0 );
    analog_output_3 : out STD_LOGIC_VECTOR ( 11 downto 0 );
    analog_output_4 : out STD_LOGIC_VECTOR ( 11 downto 0 );
    analog_output_5 : out STD_LOGIC_VECTOR ( 11 downto 0 );
    analog_output_6 : out STD_LOGIC_VECTOR ( 11 downto 0 );
    analog_output_7 : out STD_LOGIC_VECTOR ( 11 downto 0 );
    analog_output_8 : out STD_LOGIC_VECTOR ( 11 downto 0 );
    analog_output_9 : out STD_LOGIC_VECTOR ( 11 downto 0 );
    analog_output_10 : out STD_LOGIC_VECTOR ( 11 downto 0 );
    analog_output_11 : out STD_LOGIC_VECTOR ( 11 downto 0 );
    analog_output_12 : out STD_LOGIC_VECTOR ( 11 downto 0 );
    analog_output_13 : out STD_LOGIC_VECTOR ( 11 downto 0 );
    analog_output_14 : out STD_LOGIC_VECTOR ( 11 downto 0 );
    analog_output_15 : out STD_LOGIC_VECTOR ( 11 downto 0 );
    analog_output_16 : out STD_LOGIC_VECTOR ( 11 downto 0 );
    analog_output_17 : out STD_LOGIC_VECTOR ( 11 downto 0 );
    DigPot_output_1 : out STD_LOGIC_VECTOR ( 9 downto 0 );
    DigPot_output_2 : out STD_LOGIC_VECTOR ( 9 downto 0 );
    DigPot_output_3 : out STD_LOGIC_VECTOR ( 9 downto 0 );
    DigPot_output_4 : out STD_LOGIC_VECTOR ( 9 downto 0 );
    Expansor_output_1 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    Expansor_output_2 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    Expansor_output_3 : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  end component NV_project_Test_normal_mode_MUX_0_0;
  component NV_project_NV_io_controller_0_0 is
  port (
    mode : out STD_LOGIC_VECTOR ( 0 to 0 );
    mode_dac : out STD_LOGIC_VECTOR ( 0 to 0 );
    analog_output_maxValue_1 : out STD_LOGIC_VECTOR ( 11 downto 0 );
    analog_output_maxValue_2 : out STD_LOGIC_VECTOR ( 11 downto 0 );
    analog_output_maxValue_3 : out STD_LOGIC_VECTOR ( 11 downto 0 );
    analog_output_maxValue_4 : out STD_LOGIC_VECTOR ( 11 downto 0 );
    analog_output_maxValue_5 : out STD_LOGIC_VECTOR ( 11 downto 0 );
    analog_output_maxValue_6 : out STD_LOGIC_VECTOR ( 11 downto 0 );
    analog_output_maxValue_7 : out STD_LOGIC_VECTOR ( 11 downto 0 );
    analog_output_maxValue_8 : out STD_LOGIC_VECTOR ( 11 downto 0 );
    analog_output_maxValue_9 : out STD_LOGIC_VECTOR ( 11 downto 0 );
    analog_output_maxValue_10 : out STD_LOGIC_VECTOR ( 11 downto 0 );
    analog_output_maxValue_11 : out STD_LOGIC_VECTOR ( 11 downto 0 );
    analog_output_maxValue_12 : out STD_LOGIC_VECTOR ( 11 downto 0 );
    analog_output_maxValue_13 : out STD_LOGIC_VECTOR ( 11 downto 0 );
    analog_output_maxValue_14 : out STD_LOGIC_VECTOR ( 11 downto 0 );
    analog_output_maxValue_15 : out STD_LOGIC_VECTOR ( 11 downto 0 );
    analog_output_maxValue_16 : out STD_LOGIC_VECTOR ( 11 downto 0 );
    analog_output_maxValue_17 : out STD_LOGIC_VECTOR ( 11 downto 0 );
    analog_output_maxValue_18 : out STD_LOGIC_VECTOR ( 11 downto 0 );
    potDig_output_value_1 : out STD_LOGIC_VECTOR ( 9 downto 0 );
    potDig_output_value_2 : out STD_LOGIC_VECTOR ( 9 downto 0 );
    potDig_output_value_3 : out STD_LOGIC_VECTOR ( 9 downto 0 );
    potDig_output_value_4 : out STD_LOGIC_VECTOR ( 9 downto 0 );
    Expansor_output_value_1 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    Expansor_output_value_2 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    Expansor_output_value_3 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    Fan_input_value : in STD_LOGIC_VECTOR ( 11 downto 0 );
    Expansor_input_value : in STD_LOGIC_VECTOR ( 7 downto 0 );
    sp2 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    sp3 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    sp4 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    sp5 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    sp6 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    sp7 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    sp8 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s00_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_awready : out STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    s00_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s00_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_arready : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_rready : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC
  );
  end component NV_project_NV_io_controller_0_0;
  component NV_project_xlconstant_0_2 is
  port (
    dout : out STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  end component NV_project_xlconstant_0_2;
  component NV_project_NOT_8_0_0 is
  port (
    CLK : in STD_LOGIC;
    RST : in STD_LOGIC;
    in_8 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    out_8 : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  end component NV_project_NOT_8_0_0;
  component NV_project_xlconstant_4_5 is
  port (
    dout : out STD_LOGIC_VECTOR ( 6 downto 0 )
  );
  end component NV_project_xlconstant_4_5;
  component NV_project_DAC_121s101_0_0 is
  port (
    clk : in STD_LOGIC;
    RST : in STD_LOGIC;
    DATA1 : in STD_LOGIC_VECTOR ( 11 downto 0 );
    DATA2 : in STD_LOGIC_VECTOR ( 11 downto 0 );
    DATA3 : in STD_LOGIC_VECTOR ( 11 downto 0 );
    DATA4 : in STD_LOGIC_VECTOR ( 11 downto 0 );
    DATA5 : in STD_LOGIC_VECTOR ( 11 downto 0 );
    DATA6 : in STD_LOGIC_VECTOR ( 11 downto 0 );
    DATA7 : in STD_LOGIC_VECTOR ( 11 downto 0 );
    DATA8 : in STD_LOGIC_VECTOR ( 11 downto 0 );
    DATA9 : in STD_LOGIC_VECTOR ( 11 downto 0 );
    DATA10 : in STD_LOGIC_VECTOR ( 11 downto 0 );
    DATA11 : in STD_LOGIC_VECTOR ( 11 downto 0 );
    DATA12 : in STD_LOGIC_VECTOR ( 11 downto 0 );
    DATA13 : in STD_LOGIC_VECTOR ( 11 downto 0 );
    DATA14 : in STD_LOGIC_VECTOR ( 11 downto 0 );
    DATA15 : in STD_LOGIC_VECTOR ( 11 downto 0 );
    DATA16 : in STD_LOGIC_VECTOR ( 11 downto 0 );
    DATA17 : in STD_LOGIC_VECTOR ( 11 downto 0 );
    D1 : out STD_LOGIC;
    D2 : out STD_LOGIC;
    D3 : out STD_LOGIC;
    D4 : out STD_LOGIC;
    D5 : out STD_LOGIC;
    D6 : out STD_LOGIC;
    D7 : out STD_LOGIC;
    D8 : out STD_LOGIC;
    D9 : out STD_LOGIC;
    D10 : out STD_LOGIC;
    D11 : out STD_LOGIC;
    D12 : out STD_LOGIC;
    D13 : out STD_LOGIC;
    D14 : out STD_LOGIC;
    D15 : out STD_LOGIC;
    D16 : out STD_LOGIC;
    D17 : out STD_LOGIC;
    CLK_OUT : out STD_LOGIC;
    nSYNC : out STD_LOGIC;
    DONE : out STD_LOGIC
  );
  end component NV_project_DAC_121s101_0_0;
  component NV_project_AD_5293_v2_0_0 is
  port (
    clk : in STD_LOGIC;
    RST : in STD_LOGIC;
    DATA1 : in STD_LOGIC_VECTOR ( 9 downto 0 );
    DATA2 : in STD_LOGIC_VECTOR ( 9 downto 0 );
    DATA3 : in STD_LOGIC_VECTOR ( 9 downto 0 );
    DATA4 : in STD_LOGIC_VECTOR ( 9 downto 0 );
    D1 : out STD_LOGIC;
    D2 : out STD_LOGIC;
    D3 : out STD_LOGIC;
    D4 : out STD_LOGIC;
    START : in STD_LOGIC;
    CLK_OUT : out STD_LOGIC;
    nSYNC : out STD_LOGIC;
    DONE : out STD_LOGIC
  );
  end component NV_project_AD_5293_v2_0_0;
  component NV_project_xlconstant_22_0 is
  port (
    dout : out STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  end component NV_project_xlconstant_22_0;
  component NV_project_IGBT_input_selector_0_0 is
  port (
    CLK : in STD_LOGIC;
    RST : in STD_LOGIC;
    mode : in STD_LOGIC;
    grid_T1_test : in STD_LOGIC;
    grid_T2_test : in STD_LOGIC;
    grid_T3_test : in STD_LOGIC;
    grid_T4_test : in STD_LOGIC;
    grid_T5_test : in STD_LOGIC;
    grid_T6_test : in STD_LOGIC;
    grid_T1_NV : in STD_LOGIC;
    grid_T2_NV : in STD_LOGIC;
    grid_T3_NV : in STD_LOGIC;
    grid_T4_NV : in STD_LOGIC;
    grid_T5_NV : in STD_LOGIC;
    grid_T6_NV : in STD_LOGIC;
    grid_T1 : out STD_LOGIC;
    grid_T2 : out STD_LOGIC;
    grid_T3 : out STD_LOGIC;
    grid_T4 : out STD_LOGIC;
    grid_T5 : out STD_LOGIC;
    grid_T6 : out STD_LOGIC
  );
  end component NV_project_IGBT_input_selector_0_0;
  component NV_project_AD1RefComp_0_0 is
  port (
    CLK : in STD_LOGIC;
    RST : in STD_LOGIC;
    SDATA1 : in STD_LOGIC;
    SCLK : out STD_LOGIC;
    nCS : out STD_LOGIC;
    DATA1 : out STD_LOGIC_VECTOR ( 11 downto 0 );
    START : in STD_LOGIC;
    DONE : out STD_LOGIC
  );
  end component NV_project_AD1RefComp_0_0;
  component NV_project_gen_referencias_0_0 is
  port (
    reset : in STD_LOGIC;
    clk : in STD_LOGIC;
    ma : in STD_LOGIC_VECTOR ( 10 downto 0 );
    T1 : out STD_LOGIC;
    T2 : out STD_LOGIC;
    T3 : out STD_LOGIC;
    T4 : out STD_LOGIC;
    T5 : out STD_LOGIC;
    T6 : out STD_LOGIC
  );
  end component NV_project_gen_referencias_0_0;
  component NV_project_xlconcat_1_0 is
  port (
    In0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    dout : out STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  end component NV_project_xlconcat_1_0;
  component NV_project_xlconcat_2_0 is
  port (
    In0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In3 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In4 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In5 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In6 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In7 : in STD_LOGIC_VECTOR ( 0 to 0 );
    dout : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  end component NV_project_xlconcat_2_0;
  component NV_project_xlconcat_2_1 is
  port (
    In0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In3 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In4 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In5 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In6 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In7 : in STD_LOGIC_VECTOR ( 0 to 0 );
    dout : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  end component NV_project_xlconcat_2_1;
  component NV_project_xlconcat_3_0 is
  port (
    In0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In3 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In4 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In5 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In6 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In7 : in STD_LOGIC_VECTOR ( 0 to 0 );
    dout : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  end component NV_project_xlconcat_3_0;
  component NV_project_bit_order_adjust_tca9538_1_0 is
  port (
    CLK : in STD_LOGIC;
    RST : in STD_LOGIC;
    u10_data_in : in STD_LOGIC_VECTOR ( 7 downto 0 );
    u12_data_in : in STD_LOGIC_VECTOR ( 7 downto 0 );
    u14_data_in : in STD_LOGIC_VECTOR ( 7 downto 0 );
    u10_data_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    u12_data_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    u14_data_out : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  end component NV_project_bit_order_adjust_tca9538_1_0;
  component NV_project_xlconcat_0_0 is
  port (
    In0 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    In1 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    dout : out STD_LOGIC_VECTOR ( 4 downto 0 )
  );
  end component NV_project_xlconcat_0_0;
  component NV_project_xlconstant_19_1 is
  port (
    dout : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  end component NV_project_xlconstant_19_1;
  component NV_project_xlconstant_4_0 is
  port (
    dout : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component NV_project_xlconstant_4_0;
  component NV_project_xlconstant_18_0 is
  port (
    dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component NV_project_xlconstant_18_0;
  component NV_project_rst_ps7_0_50M_2 is
  port (
    slowest_sync_clk : in STD_LOGIC;
    ext_reset_in : in STD_LOGIC;
    aux_reset_in : in STD_LOGIC;
    mb_debug_sys_rst : in STD_LOGIC;
    dcm_locked : in STD_LOGIC;
    mb_reset : out STD_LOGIC;
    bus_struct_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    interconnect_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component NV_project_rst_ps7_0_50M_2;
  component NV_project_rst_ps7_0_10M_0 is
  port (
    slowest_sync_clk : in STD_LOGIC;
    ext_reset_in : in STD_LOGIC;
    aux_reset_in : in STD_LOGIC;
    mb_debug_sys_rst : in STD_LOGIC;
    dcm_locked : in STD_LOGIC;
    mb_reset : out STD_LOGIC;
    bus_struct_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    interconnect_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component NV_project_rst_ps7_0_10M_0;
  component NV_project_TCA9538_driver_input_0_0 is
  port (
    CLK : in STD_LOGIC;
    RST : in STD_LOGIC;
    start_in : in STD_LOGIC;
    address_in : in STD_LOGIC_VECTOR ( 6 downto 0 );
    data_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    nRST_out : out STD_LOGIC;
    sda : inout STD_LOGIC;
    scl : inout STD_LOGIC
  );
  end component NV_project_TCA9538_driver_input_0_0;
  component NV_project_start_peripheral_0_0 is
  port (
    CLK : in STD_LOGIC;
    RST : in STD_LOGIC;
    Start_DAC : out STD_LOGIC;
    Start_ADC : out STD_LOGIC;
    start_grid : out STD_LOGIC;
    Start_pot_dig : out STD_LOGIC;
    Start_inp_expa : out STD_LOGIC;
    Start_out_expa : out STD_LOGIC
  );
  end component NV_project_start_peripheral_0_0;
  component NV_project_TCA9538_driver_0_0 is
  port (
    CLK : in STD_LOGIC;
    RST : in STD_LOGIC;
    start_in : in STD_LOGIC;
    data_1_in : in STD_LOGIC_VECTOR ( 7 downto 0 );
    address_1_in : in STD_LOGIC_VECTOR ( 6 downto 0 );
    data_2_in : in STD_LOGIC_VECTOR ( 7 downto 0 );
    address_2_in : in STD_LOGIC_VECTOR ( 6 downto 0 );
    data_3_in : in STD_LOGIC_VECTOR ( 7 downto 0 );
    address_3_in : in STD_LOGIC_VECTOR ( 6 downto 0 );
    nRST_out : out STD_LOGIC;
    sda : inout STD_LOGIC;
    scl : inout STD_LOGIC
  );
  end component NV_project_TCA9538_driver_0_0;
  component NV_project_serial_interrupt_0_0 is
  port (
    CLK : in STD_LOGIC;
    RST : in STD_LOGIC;
    Console_1s_interrupt : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component NV_project_serial_interrupt_0_0;
  component NV_project_De_Multiplexer_8b_0_0 is
  port (
    CLK : in STD_LOGIC;
    RST : in STD_LOGIC;
    data_in : in STD_LOGIC_VECTOR ( 7 downto 0 );
    data_out_0 : out STD_LOGIC;
    data_out_1 : out STD_LOGIC;
    data_out_2 : out STD_LOGIC;
    data_out_3 : out STD_LOGIC;
    data_out_4 : out STD_LOGIC;
    data_out_5 : out STD_LOGIC;
    data_out_6 : out STD_LOGIC;
    data_out_7 : out STD_LOGIC;
    NOT_data_out_7 : out STD_LOGIC
  );
  end component NV_project_De_Multiplexer_8b_0_0;
  component NV_project_xlconstant_12_1 is
  port (
    dout : out STD_LOGIC_VECTOR ( 17 downto 0 )
  );
  end component NV_project_xlconstant_12_1;
  component NV_project_xlconstant_4_6 is
  port (
    dout : out STD_LOGIC_VECTOR ( 20 downto 0 )
  );
  end component NV_project_xlconstant_4_6;
  component NV_project_NV_parameter_load_0_0 is
  port (
    Pi : out STD_LOGIC_VECTOR ( 31 downto 0 );
    t_step_C : out STD_LOGIC_VECTOR ( 31 downto 0 );
    dt_L1 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    dt_L2 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    dt_C : out STD_LOGIC_VECTOR ( 31 downto 0 );
    rC : out STD_LOGIC_VECTOR ( 31 downto 0 );
    counter_limit : out STD_LOGIC_VECTOR ( 31 downto 0 );
    amp_a : out STD_LOGIC_VECTOR ( 31 downto 0 );
    amp_b : out STD_LOGIC_VECTOR ( 31 downto 0 );
    amp_c : out STD_LOGIC_VECTOR ( 31 downto 0 );
    I_in : out STD_LOGIC_VECTOR ( 31 downto 0 );
    phase_step_on : out STD_LOGIC_VECTOR ( 0 to 0 );
    phase_step : out STD_LOGIC_VECTOR ( 31 downto 0 );
    DC_bus_fixed_volt : out STD_LOGIC_VECTOR ( 31 downto 0 );
    rL1 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    rL2 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    inv_seq : out STD_LOGIC_VECTOR ( 0 to 0 );
    DC_bus_fived : out STD_LOGIC_VECTOR ( 0 to 0 );
    dig_out_18 : out STD_LOGIC_VECTOR ( 0 to 0 );
    mode_igbt_input : out STD_LOGIC_VECTOR ( 0 to 0 );
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 6 downto 0 );
    s00_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_awready : out STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    s00_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 6 downto 0 );
    s00_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_arready : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_rready : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC
  );
  end component NV_project_NV_parameter_load_0_0;
  component NV_project_start_200ns_0_0 is
  port (
    CLK : in STD_LOGIC;
    RST : in STD_LOGIC;
    start_200n : out STD_LOGIC
  );
  end component NV_project_start_200ns_0_0;
  component NV_project_grid_bridge3ph_0_0 is
  port (
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    ap_start : in STD_LOGIC;
    ap_done : out STD_LOGIC;
    ap_idle : out STD_LOGIC;
    ap_ready : out STD_LOGIC;
    T1 : in STD_LOGIC;
    T2 : in STD_LOGIC;
    T3 : in STD_LOGIC;
    T4 : in STD_LOGIC;
    T5 : in STD_LOGIC;
    T6 : in STD_LOGIC;
    Vdc : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Ia : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Ib : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Ic : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Va_r : out STD_LOGIC_VECTOR ( 31 downto 0 );
    Vb_r : out STD_LOGIC_VECTOR ( 31 downto 0 );
    Vc_r : out STD_LOGIC_VECTOR ( 31 downto 0 );
    Idc_r : out STD_LOGIC_VECTOR ( 31 downto 0 );
    V_n_gnd_r : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component NV_project_grid_bridge3ph_0_0;
  component NV_project_DCbus_dynamic_0_0 is
  port (
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    ap_start : in STD_LOGIC;
    ap_done : out STD_LOGIC;
    ap_idle : out STD_LOGIC;
    ap_ready : out STD_LOGIC;
    I_in : in STD_LOGIC_VECTOR ( 31 downto 0 );
    I_out : in STD_LOGIC_VECTOR ( 31 downto 0 );
    t_step_C : in STD_LOGIC_VECTOR ( 31 downto 0 );
    ena_chop_res : in STD_LOGIC;
    DC_bus_fixed_volt : in STD_LOGIC;
    V_DC_voltage_in : in STD_LOGIC_VECTOR ( 31 downto 0 );
    V_bus : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component NV_project_DCbus_dynamic_0_0;
  component NV_project_three_ph_modulator_0_0 is
  port (
    reset : in STD_LOGIC;
    clk : in STD_LOGIC;
    enable : in STD_LOGIC;
    mod_a : in STD_LOGIC_VECTOR ( 17 downto 0 );
    mod_b : in STD_LOGIC_VECTOR ( 17 downto 0 );
    mod_c : in STD_LOGIC_VECTOR ( 17 downto 0 );
    in_T1 : in STD_LOGIC;
    in_T2 : in STD_LOGIC;
    in_T3 : in STD_LOGIC;
    in_T4 : in STD_LOGIC;
    in_T5 : in STD_LOGIC;
    in_T6 : in STD_LOGIC;
    T1 : out STD_LOGIC;
    T2 : out STD_LOGIC;
    T3 : out STD_LOGIC;
    T4 : out STD_LOGIC;
    T5 : out STD_LOGIC;
    T6 : out STD_LOGIC
  );
  end component NV_project_three_ph_modulator_0_0;
  component NV_project_system_ila_0_0 is
  port (
    clk : in STD_LOGIC;
    probe0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe2 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe3 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe4 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe5 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe6 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe7 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe8 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe9 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe10 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe11 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe12 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe13 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe14 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe15 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe16 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe17 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe18 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe19 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe20 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe21 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe22 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe23 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe24 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe25 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe26 : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component NV_project_system_ila_0_0;
  component NV_project_grid_0_0 is
  port (
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    ap_start : in STD_LOGIC;
    ap_done : out STD_LOGIC;
    ap_idle : out STD_LOGIC;
    ap_ready : out STD_LOGIC;
    phase_step_on : in STD_LOGIC;
    phase_step : in STD_LOGIC_VECTOR ( 31 downto 0 );
    counter_limit : in STD_LOGIC_VECTOR ( 31 downto 0 );
    ampl_a : in STD_LOGIC_VECTOR ( 31 downto 0 );
    ampl_b : in STD_LOGIC_VECTOR ( 31 downto 0 );
    ampl_c : in STD_LOGIC_VECTOR ( 31 downto 0 );
    inv_seq : in STD_LOGIC;
    proof_flag_on : in STD_LOGIC;
    Grid_a_r : out STD_LOGIC_VECTOR ( 31 downto 0 );
    Grid_b_r : out STD_LOGIC_VECTOR ( 31 downto 0 );
    Grid_c_r : out STD_LOGIC_VECTOR ( 31 downto 0 );
    mod_a : out STD_LOGIC_VECTOR ( 17 downto 0 );
    mod_b : out STD_LOGIC_VECTOR ( 17 downto 0 );
    mod_c : out STD_LOGIC_VECTOR ( 17 downto 0 );
    I_out_proof : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component NV_project_grid_0_0;
  component NV_project_lcl_filter_0_0 is
  port (
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    ap_start : in STD_LOGIC;
    ap_done : out STD_LOGIC;
    ap_idle : out STD_LOGIC;
    ap_ready : out STD_LOGIC;
    V1_a : in STD_LOGIC_VECTOR ( 31 downto 0 );
    V1_b : in STD_LOGIC_VECTOR ( 31 downto 0 );
    V1_c : in STD_LOGIC_VECTOR ( 31 downto 0 );
    V2_a_s : in STD_LOGIC_VECTOR ( 31 downto 0 );
    V2_b_s : in STD_LOGIC_VECTOR ( 31 downto 0 );
    V2_c_s : in STD_LOGIC_VECTOR ( 31 downto 0 );
    VN_gnd : in STD_LOGIC_VECTOR ( 31 downto 0 );
    dT_L1 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    dT_L2 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    dT_C : in STD_LOGIC_VECTOR ( 31 downto 0 );
    rC : in STD_LOGIC_VECTOR ( 31 downto 0 );
    rL1 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    rL2 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Preload : in STD_LOGIC_VECTOR ( 31 downto 0 );
    CB1_K1_K3_V : in STD_LOGIC_VECTOR ( 4 downto 0 );
    IL1_a_r : out STD_LOGIC_VECTOR ( 31 downto 0 );
    IL1_b_r : out STD_LOGIC_VECTOR ( 31 downto 0 );
    IL1_c_r : out STD_LOGIC_VECTOR ( 31 downto 0 );
    IL2_a_r : out STD_LOGIC_VECTOR ( 31 downto 0 );
    IL2_b_r : out STD_LOGIC_VECTOR ( 31 downto 0 );
    IL2_c_r : out STD_LOGIC_VECTOR ( 31 downto 0 );
    Vp_a_r : out STD_LOGIC_VECTOR ( 31 downto 0 );
    Vp_b_r : out STD_LOGIC_VECTOR ( 31 downto 0 );
    Vp_c_r : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component NV_project_lcl_filter_0_0;
  component NV_project_gain_offset_truncation_1_1 is
  port (
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    ap_start : in STD_LOGIC;
    ap_done : out STD_LOGIC;
    ap_idle : out STD_LOGIC;
    ap_ready : out STD_LOGIC;
    in_I_LCL_1_a : in STD_LOGIC_VECTOR ( 31 downto 0 );
    in_I_LCL_1_b : in STD_LOGIC_VECTOR ( 31 downto 0 );
    in_I_LCL_1_c : in STD_LOGIC_VECTOR ( 31 downto 0 );
    in_I_pmsm_a : in STD_LOGIC_VECTOR ( 31 downto 0 );
    in_I_pmsm_b : in STD_LOGIC_VECTOR ( 31 downto 0 );
    in_I_pmsm_c : in STD_LOGIC_VECTOR ( 31 downto 0 );
    in_V_dc_bus : in STD_LOGIC_VECTOR ( 31 downto 0 );
    in_I_LCL_2_a : in STD_LOGIC_VECTOR ( 31 downto 0 );
    in_I_LCL_2_b : in STD_LOGIC_VECTOR ( 31 downto 0 );
    in_I_LCL_2_c : in STD_LOGIC_VECTOR ( 31 downto 0 );
    in_V_grid_a : in STD_LOGIC_VECTOR ( 31 downto 0 );
    in_V_grid_b : in STD_LOGIC_VECTOR ( 31 downto 0 );
    in_V_grid_c : in STD_LOGIC_VECTOR ( 31 downto 0 );
    in_Vp_a : in STD_LOGIC_VECTOR ( 31 downto 0 );
    in_Vp_b : in STD_LOGIC_VECTOR ( 31 downto 0 );
    in_Vp_c : in STD_LOGIC_VECTOR ( 31 downto 0 );
    in_V_fem_a : in STD_LOGIC_VECTOR ( 31 downto 0 );
    in_V_fem_b : in STD_LOGIC_VECTOR ( 31 downto 0 );
    in_V_fem_c : in STD_LOGIC_VECTOR ( 31 downto 0 );
    CB1_K1_K3_V : in STD_LOGIC_VECTOR ( 2 downto 0 );
    out_I_LCL_1_a : out STD_LOGIC_VECTOR ( 11 downto 0 );
    out_I_LCL_1_b : out STD_LOGIC_VECTOR ( 11 downto 0 );
    out_I_LCL_1_c : out STD_LOGIC_VECTOR ( 11 downto 0 );
    out_I_pmsm_a : out STD_LOGIC_VECTOR ( 11 downto 0 );
    out_I_pmsm_b : out STD_LOGIC_VECTOR ( 11 downto 0 );
    out_I_pmsm_c : out STD_LOGIC_VECTOR ( 11 downto 0 );
    out_V_dc_bus : out STD_LOGIC_VECTOR ( 11 downto 0 );
    out_I_LCL_2_a : out STD_LOGIC_VECTOR ( 11 downto 0 );
    out_I_LCL_2_b : out STD_LOGIC_VECTOR ( 11 downto 0 );
    out_I_LCL_2_c : out STD_LOGIC_VECTOR ( 11 downto 0 );
    out_V_grid_a : out STD_LOGIC_VECTOR ( 11 downto 0 );
    out_V_grid_b : out STD_LOGIC_VECTOR ( 11 downto 0 );
    out_V_grid_c : out STD_LOGIC_VECTOR ( 11 downto 0 );
    out_V_fem_a : out STD_LOGIC_VECTOR ( 11 downto 0 );
    out_V_fem_b : out STD_LOGIC_VECTOR ( 11 downto 0 );
    out_V_fem_c : out STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  end component NV_project_gain_offset_truncation_1_1;
  component NV_project_dc_dc_0_0 is
  port (
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    ap_start : in STD_LOGIC;
    ap_done : out STD_LOGIC;
    ap_idle : out STD_LOGIC;
    ap_ready : out STD_LOGIC;
    dutty_pot : in STD_LOGIC_VECTOR ( 11 downto 0 );
    V_N_gnd : in STD_LOGIC_VECTOR ( 31 downto 0 );
    enable : in STD_LOGIC;
    T1 : in STD_LOGIC;
    T2 : in STD_LOGIC;
    T3 : in STD_LOGIC;
    T4 : in STD_LOGIC;
    T5 : in STD_LOGIC;
    T6 : in STD_LOGIC;
    T1_out : out STD_LOGIC;
    T2_out : out STD_LOGIC;
    T3_out : out STD_LOGIC;
    T4_out : out STD_LOGIC;
    T5_out : out STD_LOGIC;
    T6_out : out STD_LOGIC;
    V_N_gnd_out : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component NV_project_dc_dc_0_0;
  component NV_project_parameter_load_2_0_0 is
  port (
    rL2 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    Preload : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ena_chop_res : out STD_LOGIC_VECTOR ( 0 to 0 );
    rL1 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    dc_dc_enable : out STD_LOGIC_VECTOR ( 0 to 0 );
    sp5 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    sp6 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    sp7 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    sp8 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    sp9 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    sp10 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    sp11 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    sp12 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    sp13 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    sp14 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    sp15 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    sp16 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    sp17 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    sp18 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    sp19 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    sp20 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    sp21 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    sp22 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    sp23 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    sp24 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    sp25 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    sp26 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    sp27 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    sp28 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    sp29 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 6 downto 0 );
    s00_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_awready : out STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    s00_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 6 downto 0 );
    s00_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_arready : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_rready : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC
  );
  end component NV_project_parameter_load_2_0_0;
  signal AD1RefComp_0_DATA1 : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal AD1RefComp_0_SCLK : STD_LOGIC;
  signal AD1RefComp_0_nCS : STD_LOGIC;
  signal AD_5293_v2_0_CLK_OUT : STD_LOGIC;
  signal AD_5293_v2_0_D1 : STD_LOGIC;
  signal AD_5293_v2_0_D2 : STD_LOGIC;
  signal AD_5293_v2_0_nSYNC : STD_LOGIC;
  signal DAC_121s101_0_CLK_OUT : STD_LOGIC;
  signal DAC_121s101_0_D1 : STD_LOGIC;
  signal DAC_121s101_0_D10 : STD_LOGIC;
  signal DAC_121s101_0_D11 : STD_LOGIC;
  signal DAC_121s101_0_D12 : STD_LOGIC;
  signal DAC_121s101_0_D13 : STD_LOGIC;
  signal DAC_121s101_0_D14 : STD_LOGIC;
  signal DAC_121s101_0_D15 : STD_LOGIC;
  signal DAC_121s101_0_D16 : STD_LOGIC;
  signal DAC_121s101_0_D17 : STD_LOGIC;
  signal DAC_121s101_0_D2 : STD_LOGIC;
  signal DAC_121s101_0_D3 : STD_LOGIC;
  signal DAC_121s101_0_D4 : STD_LOGIC;
  signal DAC_121s101_0_D5 : STD_LOGIC;
  signal DAC_121s101_0_D6 : STD_LOGIC;
  signal DAC_121s101_0_D7 : STD_LOGIC;
  signal DAC_121s101_0_D8 : STD_LOGIC;
  signal DAC_121s101_0_D9 : STD_LOGIC;
  signal DAC_121s101_0_nSYNC : STD_LOGIC;
  signal DCbus_dynamic_0_V_bus : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal DRIVER_DOWN_04_1 : STD_LOGIC;
  signal DRIVER_DOWN_05_1 : STD_LOGIC;
  signal DRIVER_DOWN_06_1 : STD_LOGIC;
  signal DRIVER_UP_03_1 : STD_LOGIC;
  signal DRIVER_UP_04_1 : STD_LOGIC;
  signal DRIVER_UP_05_1 : STD_LOGIC;
  signal DRIVER_UP_06_1 : STD_LOGIC;
  signal De_Multiplexer_8b_0_NOT_data_out_7 : STD_LOGIC;
  signal De_Multiplexer_8b_0_data_out_0 : STD_LOGIC;
  signal De_Multiplexer_8b_0_data_out_1 : STD_LOGIC;
  signal De_Multiplexer_8b_0_data_out_2 : STD_LOGIC;
  signal De_Multiplexer_8b_0_data_out_3 : STD_LOGIC;
  signal De_Multiplexer_8b_0_data_out_4 : STD_LOGIC;
  signal FSM_0_Start : STD_LOGIC;
  signal FSM_0_Start1 : STD_LOGIC;
  signal IGBT_input_selector_0_grid_T1 : STD_LOGIC;
  signal IGBT_input_selector_0_grid_T2 : STD_LOGIC;
  signal IGBT_input_selector_0_grid_T3 : STD_LOGIC;
  signal IGBT_input_selector_0_grid_T4 : STD_LOGIC;
  signal IGBT_input_selector_0_grid_T5 : STD_LOGIC;
  signal IGBT_input_selector_0_grid_T6 : STD_LOGIC;
  signal NOT_8_0_out_8 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NV_io_controller_0_Expansor_output_value_1 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NV_io_controller_0_Expansor_output_value_2 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NV_io_controller_0_Expansor_output_value_3 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NV_io_controller_0_analog_output_maxValue_1 : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal NV_io_controller_0_analog_output_maxValue_10 : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal NV_io_controller_0_analog_output_maxValue_11 : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal NV_io_controller_0_analog_output_maxValue_12 : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal NV_io_controller_0_analog_output_maxValue_13 : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal NV_io_controller_0_analog_output_maxValue_14 : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal NV_io_controller_0_analog_output_maxValue_15 : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal NV_io_controller_0_analog_output_maxValue_16 : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal NV_io_controller_0_analog_output_maxValue_17 : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal NV_io_controller_0_analog_output_maxValue_2 : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal NV_io_controller_0_analog_output_maxValue_3 : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal NV_io_controller_0_analog_output_maxValue_4 : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal NV_io_controller_0_analog_output_maxValue_5 : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal NV_io_controller_0_analog_output_maxValue_6 : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal NV_io_controller_0_analog_output_maxValue_7 : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal NV_io_controller_0_analog_output_maxValue_8 : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal NV_io_controller_0_analog_output_maxValue_9 : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal NV_io_controller_0_mode : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NV_io_controller_0_mode_dac : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NV_io_controller_0_potDig_output_value_1 : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal NV_io_controller_0_potDig_output_value_2 : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal NV_io_controller_0_potDig_output_value_3 : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal NV_io_controller_0_potDig_output_value_4 : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal NV_parameter_load_0_DC_bus_fived : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute DEBUG : string;
  attribute DEBUG of NV_parameter_load_0_DC_bus_fived : signal is "true";
  attribute MARK_DEBUG : boolean;
  attribute MARK_DEBUG of NV_parameter_load_0_DC_bus_fived : signal is std.standard.true;
  signal NV_parameter_load_0_DC_bus_fixed_volt : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute DEBUG of NV_parameter_load_0_DC_bus_fixed_volt : signal is "true";
  attribute MARK_DEBUG of NV_parameter_load_0_DC_bus_fixed_volt : signal is std.standard.true;
  signal NV_parameter_load_0_amp_a : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute DEBUG of NV_parameter_load_0_amp_a : signal is "true";
  attribute MARK_DEBUG of NV_parameter_load_0_amp_a : signal is std.standard.true;
  signal NV_parameter_load_0_amp_b : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute DEBUG of NV_parameter_load_0_amp_b : signal is "true";
  attribute MARK_DEBUG of NV_parameter_load_0_amp_b : signal is std.standard.true;
  signal NV_parameter_load_0_amp_c : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute DEBUG of NV_parameter_load_0_amp_c : signal is "true";
  attribute MARK_DEBUG of NV_parameter_load_0_amp_c : signal is std.standard.true;
  signal NV_parameter_load_0_counter_limit : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute DEBUG of NV_parameter_load_0_counter_limit : signal is "true";
  attribute MARK_DEBUG of NV_parameter_load_0_counter_limit : signal is std.standard.true;
  signal NV_parameter_load_0_dt_C : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute DEBUG of NV_parameter_load_0_dt_C : signal is "true";
  attribute MARK_DEBUG of NV_parameter_load_0_dt_C : signal is std.standard.true;
  signal NV_parameter_load_0_dt_L1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute DEBUG of NV_parameter_load_0_dt_L1 : signal is "true";
  attribute MARK_DEBUG of NV_parameter_load_0_dt_L1 : signal is std.standard.true;
  signal NV_parameter_load_0_dt_L2 : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute DEBUG of NV_parameter_load_0_dt_L2 : signal is "true";
  attribute MARK_DEBUG of NV_parameter_load_0_dt_L2 : signal is std.standard.true;
  signal NV_parameter_load_0_inv_seq : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute DEBUG of NV_parameter_load_0_inv_seq : signal is "true";
  attribute MARK_DEBUG of NV_parameter_load_0_inv_seq : signal is std.standard.true;
  signal NV_parameter_load_0_mode_igbt_input : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute DEBUG of NV_parameter_load_0_mode_igbt_input : signal is "true";
  attribute MARK_DEBUG of NV_parameter_load_0_mode_igbt_input : signal is std.standard.true;
  signal NV_parameter_load_0_phase_step : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute DEBUG of NV_parameter_load_0_phase_step : signal is "true";
  attribute MARK_DEBUG of NV_parameter_load_0_phase_step : signal is std.standard.true;
  signal NV_parameter_load_0_phase_step_on : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute DEBUG of NV_parameter_load_0_phase_step_on : signal is "true";
  attribute MARK_DEBUG of NV_parameter_load_0_phase_step_on : signal is std.standard.true;
  signal NV_parameter_load_0_rC : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute DEBUG of NV_parameter_load_0_rC : signal is "true";
  attribute MARK_DEBUG of NV_parameter_load_0_rC : signal is std.standard.true;
  signal NV_parameter_load_0_sp1 : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute DEBUG of NV_parameter_load_0_sp1 : signal is "true";
  attribute MARK_DEBUG of NV_parameter_load_0_sp1 : signal is std.standard.true;
  signal NV_parameter_load_0_t_step_C : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute DEBUG of NV_parameter_load_0_t_step_C : signal is "true";
  attribute MARK_DEBUG of NV_parameter_load_0_t_step_C : signal is std.standard.true;
  signal Net : STD_LOGIC;
  signal Net1 : STD_LOGIC;
  signal Net2 : STD_LOGIC;
  signal Net3 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Net4 : STD_LOGIC;
  signal Net5 : STD_LOGIC;
  signal Net6 : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute DEBUG of Net6 : signal is "true";
  attribute MARK_DEBUG of Net6 : signal is std.standard.true;
  signal SDATA1_0_1 : STD_LOGIC;
  signal TCA9538_driver_0_nRST_out : STD_LOGIC;
  signal TCA9538_driver_input_0_data_out : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal TCA9538_driver_input_0_nRST_out : STD_LOGIC;
  signal Test_normal_mode_MUX_0_DigPot_output_1 : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal Test_normal_mode_MUX_0_DigPot_output_2 : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal Test_normal_mode_MUX_0_DigPot_output_3 : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal Test_normal_mode_MUX_0_DigPot_output_4 : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal Test_normal_mode_MUX_0_Expansor_output_1 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal Test_normal_mode_MUX_0_Expansor_output_2 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal Test_normal_mode_MUX_0_Expansor_output_3 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_gpio_0_ip2intc_irpt : STD_LOGIC;
  signal bit_order_adjust_tca9538_1_u10_data_out : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal bit_order_adjust_tca9538_1_u12_data_out : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal bit_order_adjust_tca9538_1_u14_data_out : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal bridge3ph_0_Va_V : STD_LOGIC_VECTOR ( 24 downto 0 );
  signal bridge3ph_0_Vb_V : STD_LOGIC_VECTOR ( 24 downto 0 );
  signal bridge3ph_0_Vc_V : STD_LOGIC_VECTOR ( 24 downto 0 );
  signal bridge3ph_0_Vn_gnd_V : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal data_out_5 : STD_LOGIC;
  signal data_out_6 : STD_LOGIC;
  signal dc_dc_0_T1_out : STD_LOGIC;
  attribute DEBUG of dc_dc_0_T1_out : signal is "true";
  attribute MARK_DEBUG of dc_dc_0_T1_out : signal is std.standard.true;
  signal dc_dc_0_T2_out : STD_LOGIC;
  attribute DEBUG of dc_dc_0_T2_out : signal is "true";
  attribute MARK_DEBUG of dc_dc_0_T2_out : signal is std.standard.true;
  signal dc_dc_0_T3_out : STD_LOGIC;
  attribute DEBUG of dc_dc_0_T3_out : signal is "true";
  attribute MARK_DEBUG of dc_dc_0_T3_out : signal is std.standard.true;
  signal dc_dc_0_T4_out : STD_LOGIC;
  attribute DEBUG of dc_dc_0_T4_out : signal is "true";
  attribute MARK_DEBUG of dc_dc_0_T4_out : signal is std.standard.true;
  signal dc_dc_0_T5_out : STD_LOGIC;
  attribute DEBUG of dc_dc_0_T5_out : signal is "true";
  attribute MARK_DEBUG of dc_dc_0_T5_out : signal is std.standard.true;
  signal dc_dc_0_T6_out : STD_LOGIC;
  attribute DEBUG of dc_dc_0_T6_out : signal is "true";
  attribute MARK_DEBUG of dc_dc_0_T6_out : signal is std.standard.true;
  signal dc_dc_0_V_N_gnd_out : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal gain_offset_truncation_0_out_I_LCL_1_a_V : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal gain_offset_truncation_0_out_I_LCL_2_a_V : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal gain_offset_truncation_0_out_I_pmsm_a_V : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal gain_offset_truncation_0_out_V_dc_bus_V : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal gain_offset_truncation_0_out_V_fem_a_V : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal gain_offset_truncation_0_out_V_grid_a_V : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal gain_offset_truncation_1_out_I_LCL_1_b_V : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal gain_offset_truncation_1_out_I_LCL_1_c_V : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal gain_offset_truncation_1_out_I_LCL_2_b_V : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal gain_offset_truncation_1_out_I_LCL_2_c_V : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal gain_offset_truncation_1_out_I_pmsm_b_V : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal gain_offset_truncation_1_out_I_pmsm_c_V : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal gain_offset_truncation_1_out_V_fem_b_V : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal gain_offset_truncation_1_out_V_fem_c_V : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal gain_offset_truncation_1_out_V_grid_b_V : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal gain_offset_truncation_1_out_V_grid_c_V : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal gen_referencias_0_T1 : STD_LOGIC;
  signal gen_referencias_0_T2 : STD_LOGIC;
  signal gen_referencias_0_T3 : STD_LOGIC;
  signal gen_referencias_0_T4 : STD_LOGIC;
  signal gen_referencias_0_T5 : STD_LOGIC;
  signal gen_referencias_0_T6 : STD_LOGIC;
  signal grid_0_Grid_a_r : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal grid_0_Grid_b_r : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal grid_0_Grid_c_r : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal grid_0_I_out_proof : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal grid_0_mod_a : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal grid_0_mod_b : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal grid_0_mod_c : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal grid_bridge3ph_0_Idc_r : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal grid_bridge3ph_0_V_n_gnd_r : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal grid_bridge3ph_0_Va_r : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal grid_bridge3ph_0_Vb_r : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal grid_bridge3ph_0_Vc_r : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal lcl_filter_0_IL1_a_r : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal lcl_filter_0_IL1_b_r : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal lcl_filter_0_IL1_c_r : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal lcl_filter_0_IL2_a_r : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal lcl_filter_0_IL2_b_r : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal lcl_filter_0_IL2_c_r : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal lcl_filter_0_Vp_a_r : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal lcl_filter_0_Vp_b_r : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal lcl_filter_0_Vp_c_r : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal parameter_load_2_0_Preload : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute DEBUG of parameter_load_2_0_Preload : signal is "true";
  attribute MARK_DEBUG of parameter_load_2_0_Preload : signal is std.standard.true;
  signal parameter_load_2_0_dc_dc_enable : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute DEBUG of parameter_load_2_0_dc_dc_enable : signal is "true";
  attribute MARK_DEBUG of parameter_load_2_0_dc_dc_enable : signal is std.standard.true;
  signal parameter_load_2_0_rL1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute DEBUG of parameter_load_2_0_rL1 : signal is "true";
  attribute MARK_DEBUG of parameter_load_2_0_rL1 : signal is std.standard.true;
  signal parameter_load_2_0_rL2 : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute DEBUG of parameter_load_2_0_rL2 : signal is "true";
  attribute MARK_DEBUG of parameter_load_2_0_rL2 : signal is std.standard.true;
  signal pmsm_0_Is_a_V : STD_LOGIC_VECTOR ( 24 downto 0 );
  signal pmsm_0_Is_b_V : STD_LOGIC_VECTOR ( 24 downto 0 );
  signal pmsm_0_Is_c_V : STD_LOGIC_VECTOR ( 24 downto 0 );
  signal pmsm_0_Tem_V : STD_LOGIC_VECTOR ( 26 downto 0 );
  signal pmsm_0_ap_done : STD_LOGIC;
  signal processing_system7_0_DDR_ADDR : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal processing_system7_0_DDR_BA : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal processing_system7_0_DDR_CAS_N : STD_LOGIC;
  signal processing_system7_0_DDR_CKE : STD_LOGIC;
  signal processing_system7_0_DDR_CK_N : STD_LOGIC;
  signal processing_system7_0_DDR_CK_P : STD_LOGIC;
  signal processing_system7_0_DDR_CS_N : STD_LOGIC;
  signal processing_system7_0_DDR_DM : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_DDR_DQ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal processing_system7_0_DDR_DQS_N : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_DDR_DQS_P : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_DDR_ODT : STD_LOGIC;
  signal processing_system7_0_DDR_RAS_N : STD_LOGIC;
  signal processing_system7_0_DDR_RESET_N : STD_LOGIC;
  signal processing_system7_0_DDR_WE_N : STD_LOGIC;
  signal processing_system7_0_FCLK_CLK1 : STD_LOGIC;
  signal processing_system7_0_FCLK_CLK2 : STD_LOGIC;
  signal processing_system7_0_FCLK_CLK3 : STD_LOGIC;
  signal processing_system7_0_FCLK_RESET0_N : STD_LOGIC;
  signal processing_system7_0_FIXED_IO_DDR_VRN : STD_LOGIC;
  signal processing_system7_0_FIXED_IO_DDR_VRP : STD_LOGIC;
  signal processing_system7_0_FIXED_IO_MIO : STD_LOGIC_VECTOR ( 53 downto 0 );
  signal processing_system7_0_FIXED_IO_PS_CLK : STD_LOGIC;
  signal processing_system7_0_FIXED_IO_PS_PORB : STD_LOGIC;
  signal processing_system7_0_FIXED_IO_PS_SRSTB : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal processing_system7_0_M_AXI_GP0_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal processing_system7_0_M_AXI_GP0_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_M_AXI_GP0_ARID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal processing_system7_0_M_AXI_GP0_ARLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_M_AXI_GP0_ARLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal processing_system7_0_M_AXI_GP0_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal processing_system7_0_M_AXI_GP0_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_M_AXI_GP0_ARREADY : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal processing_system7_0_M_AXI_GP0_ARVALID : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal processing_system7_0_M_AXI_GP0_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal processing_system7_0_M_AXI_GP0_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_M_AXI_GP0_AWID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal processing_system7_0_M_AXI_GP0_AWLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_M_AXI_GP0_AWLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal processing_system7_0_M_AXI_GP0_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal processing_system7_0_M_AXI_GP0_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_M_AXI_GP0_AWREADY : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal processing_system7_0_M_AXI_GP0_AWVALID : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_BID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal processing_system7_0_M_AXI_GP0_BREADY : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal processing_system7_0_M_AXI_GP0_BVALID : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal processing_system7_0_M_AXI_GP0_RID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal processing_system7_0_M_AXI_GP0_RLAST : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_RREADY : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal processing_system7_0_M_AXI_GP0_RVALID : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal processing_system7_0_M_AXI_GP0_WID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal processing_system7_0_M_AXI_GP0_WLAST : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_WREADY : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_M_AXI_GP0_WVALID : STD_LOGIC;
  signal ps7_0_axi_periph_M00_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_M00_AXI_ARREADY : STD_LOGIC;
  signal ps7_0_axi_periph_M00_AXI_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ps7_0_axi_periph_M00_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_M00_AXI_AWREADY : STD_LOGIC;
  signal ps7_0_axi_periph_M00_AXI_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ps7_0_axi_periph_M00_AXI_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ps7_0_axi_periph_M00_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps7_0_axi_periph_M00_AXI_BVALID : STD_LOGIC;
  signal ps7_0_axi_periph_M00_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_M00_AXI_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ps7_0_axi_periph_M00_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps7_0_axi_periph_M00_AXI_RVALID : STD_LOGIC;
  signal ps7_0_axi_periph_M00_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_M00_AXI_WREADY : STD_LOGIC;
  signal ps7_0_axi_periph_M00_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ps7_0_axi_periph_M00_AXI_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ps7_0_axi_periph_M01_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_M01_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal ps7_0_axi_periph_M01_AXI_ARREADY : STD_LOGIC;
  signal ps7_0_axi_periph_M01_AXI_ARVALID : STD_LOGIC;
  signal ps7_0_axi_periph_M01_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_M01_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal ps7_0_axi_periph_M01_AXI_AWREADY : STD_LOGIC;
  signal ps7_0_axi_periph_M01_AXI_AWVALID : STD_LOGIC;
  signal ps7_0_axi_periph_M01_AXI_BREADY : STD_LOGIC;
  signal ps7_0_axi_periph_M01_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps7_0_axi_periph_M01_AXI_BVALID : STD_LOGIC;
  signal ps7_0_axi_periph_M01_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_M01_AXI_RREADY : STD_LOGIC;
  signal ps7_0_axi_periph_M01_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps7_0_axi_periph_M01_AXI_RVALID : STD_LOGIC;
  signal ps7_0_axi_periph_M01_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_M01_AXI_WREADY : STD_LOGIC;
  signal ps7_0_axi_periph_M01_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ps7_0_axi_periph_M01_AXI_WVALID : STD_LOGIC;
  signal ps7_0_axi_periph_M02_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_M02_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal ps7_0_axi_periph_M02_AXI_ARREADY : STD_LOGIC;
  signal ps7_0_axi_periph_M02_AXI_ARVALID : STD_LOGIC;
  signal ps7_0_axi_periph_M02_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_M02_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal ps7_0_axi_periph_M02_AXI_AWREADY : STD_LOGIC;
  signal ps7_0_axi_periph_M02_AXI_AWVALID : STD_LOGIC;
  signal ps7_0_axi_periph_M02_AXI_BREADY : STD_LOGIC;
  signal ps7_0_axi_periph_M02_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps7_0_axi_periph_M02_AXI_BVALID : STD_LOGIC;
  signal ps7_0_axi_periph_M02_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_M02_AXI_RREADY : STD_LOGIC;
  signal ps7_0_axi_periph_M02_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps7_0_axi_periph_M02_AXI_RVALID : STD_LOGIC;
  signal ps7_0_axi_periph_M02_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_M02_AXI_WREADY : STD_LOGIC;
  signal ps7_0_axi_periph_M02_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ps7_0_axi_periph_M02_AXI_WVALID : STD_LOGIC;
  signal ps7_0_axi_periph_M03_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_M03_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal ps7_0_axi_periph_M03_AXI_ARREADY : STD_LOGIC;
  signal ps7_0_axi_periph_M03_AXI_ARVALID : STD_LOGIC;
  signal ps7_0_axi_periph_M03_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_M03_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal ps7_0_axi_periph_M03_AXI_AWREADY : STD_LOGIC;
  signal ps7_0_axi_periph_M03_AXI_AWVALID : STD_LOGIC;
  signal ps7_0_axi_periph_M03_AXI_BREADY : STD_LOGIC;
  signal ps7_0_axi_periph_M03_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps7_0_axi_periph_M03_AXI_BVALID : STD_LOGIC;
  signal ps7_0_axi_periph_M03_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_M03_AXI_RREADY : STD_LOGIC;
  signal ps7_0_axi_periph_M03_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps7_0_axi_periph_M03_AXI_RVALID : STD_LOGIC;
  signal ps7_0_axi_periph_M03_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_M03_AXI_WREADY : STD_LOGIC;
  signal ps7_0_axi_periph_M03_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ps7_0_axi_periph_M03_AXI_WVALID : STD_LOGIC;
  signal rst_ps7_0_100M_interconnect_aresetn : STD_LOGIC_VECTOR ( 0 to 0 );
  signal rst_ps7_0_100M_peripheral_aresetn : STD_LOGIC_VECTOR ( 0 to 0 );
  signal rst_ps7_0_10M_peripheral_aresetn : STD_LOGIC_VECTOR ( 0 to 0 );
  signal rst_ps7_0_50M_peripheral_aresetn : STD_LOGIC_VECTOR ( 0 to 0 );
  signal serial_interrupt_0_Console_1s_interrupt : STD_LOGIC_VECTOR ( 0 to 0 );
  signal start_peripheral_0_Start_ADC : STD_LOGIC;
  signal start_peripheral_0_Start_inp_expa : STD_LOGIC;
  signal start_peripheral_0_Start_out_expa : STD_LOGIC;
  signal three_ph_modulator_0_T1 : STD_LOGIC;
  signal three_ph_modulator_0_T2 : STD_LOGIC;
  signal three_ph_modulator_0_T3 : STD_LOGIC;
  signal three_ph_modulator_0_T4 : STD_LOGIC;
  signal three_ph_modulator_0_T5 : STD_LOGIC;
  signal three_ph_modulator_0_T6 : STD_LOGIC;
  signal wind_turb_0_Wn_V : STD_LOGIC_VECTOR ( 24 downto 0 );
  signal wind_turb_0_ap_done : STD_LOGIC;
  signal xlconcat_0_dout : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal xlconcat_1_dout : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal xlconcat_2_dout : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal xlconcat_3_dout : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal xlconcat_4_dout : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal xlconstant_0_dout : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal xlconstant_10_dout : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal xlconstant_11_dout : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal xlconstant_12_dout : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal xlconstant_13_dout : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal xlconstant_14_dout : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal xlconstant_15_dout : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal xlconstant_16_dout : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal xlconstant_17_dout : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal xlconstant_18_dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xlconstant_19_dout : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xlconstant_1_dout : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal xlconstant_21_dout : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal xlconstant_22_dout : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal xlconstant_24_dout : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal xlconstant_2_dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xlconstant_3_dout : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal xlconstant_4_dout : STD_LOGIC_VECTOR ( 20 downto 0 );
  signal xlconstant_5_dout : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xlconstant_6_dout : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal xlconstant_8_dout : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal xlconstant_9_dout : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_AD1RefComp_0_DONE_UNCONNECTED : STD_LOGIC;
  signal NLW_AD_5293_v2_0_D3_UNCONNECTED : STD_LOGIC;
  signal NLW_AD_5293_v2_0_D4_UNCONNECTED : STD_LOGIC;
  signal NLW_AD_5293_v2_0_DONE_UNCONNECTED : STD_LOGIC;
  signal NLW_DAC_121s101_0_DONE_UNCONNECTED : STD_LOGIC;
  signal NLW_DCbus_dynamic_0_ap_done_UNCONNECTED : STD_LOGIC;
  signal NLW_DCbus_dynamic_0_ap_idle_UNCONNECTED : STD_LOGIC;
  signal NLW_DCbus_dynamic_0_ap_ready_UNCONNECTED : STD_LOGIC;
  signal NLW_De_Multiplexer_8b_0_data_out_7_UNCONNECTED : STD_LOGIC;
  signal NLW_NV_io_controller_0_analog_output_maxValue_18_UNCONNECTED : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal NLW_NV_io_controller_0_sp2_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_NV_io_controller_0_sp3_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_NV_io_controller_0_sp4_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_NV_parameter_load_0_I_in_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_NV_parameter_load_0_Pi_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_NV_parameter_load_0_rL1_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_NV_parameter_load_0_rL2_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Test_normal_mode_MUX_0_analog_output_1_UNCONNECTED : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal NLW_Test_normal_mode_MUX_0_analog_output_10_UNCONNECTED : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal NLW_Test_normal_mode_MUX_0_analog_output_11_UNCONNECTED : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal NLW_Test_normal_mode_MUX_0_analog_output_12_UNCONNECTED : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal NLW_Test_normal_mode_MUX_0_analog_output_13_UNCONNECTED : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal NLW_Test_normal_mode_MUX_0_analog_output_14_UNCONNECTED : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal NLW_Test_normal_mode_MUX_0_analog_output_15_UNCONNECTED : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal NLW_Test_normal_mode_MUX_0_analog_output_16_UNCONNECTED : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal NLW_Test_normal_mode_MUX_0_analog_output_17_UNCONNECTED : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal NLW_Test_normal_mode_MUX_0_analog_output_2_UNCONNECTED : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal NLW_Test_normal_mode_MUX_0_analog_output_3_UNCONNECTED : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal NLW_Test_normal_mode_MUX_0_analog_output_4_UNCONNECTED : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal NLW_Test_normal_mode_MUX_0_analog_output_5_UNCONNECTED : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal NLW_Test_normal_mode_MUX_0_analog_output_6_UNCONNECTED : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal NLW_Test_normal_mode_MUX_0_analog_output_7_UNCONNECTED : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal NLW_Test_normal_mode_MUX_0_analog_output_8_UNCONNECTED : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal NLW_Test_normal_mode_MUX_0_analog_output_9_UNCONNECTED : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal NLW_bridge3ph_0_ap_done_UNCONNECTED : STD_LOGIC;
  signal NLW_bridge3ph_0_ap_idle_UNCONNECTED : STD_LOGIC;
  signal NLW_bridge3ph_0_ap_ready_UNCONNECTED : STD_LOGIC;
  signal NLW_bridge3ph_0_Idc_V_UNCONNECTED : STD_LOGIC_VECTOR ( 24 downto 0 );
  signal NLW_dc_dc_0_ap_done_UNCONNECTED : STD_LOGIC;
  signal NLW_dc_dc_0_ap_idle_UNCONNECTED : STD_LOGIC;
  signal NLW_dc_dc_0_ap_ready_UNCONNECTED : STD_LOGIC;
  signal NLW_gain_offset_truncation_1_ap_done_UNCONNECTED : STD_LOGIC;
  signal NLW_gain_offset_truncation_1_ap_idle_UNCONNECTED : STD_LOGIC;
  signal NLW_gain_offset_truncation_1_ap_ready_UNCONNECTED : STD_LOGIC;
  signal NLW_grid_0_ap_done_UNCONNECTED : STD_LOGIC;
  signal NLW_grid_0_ap_idle_UNCONNECTED : STD_LOGIC;
  signal NLW_grid_0_ap_ready_UNCONNECTED : STD_LOGIC;
  signal NLW_grid_bridge3ph_0_ap_done_UNCONNECTED : STD_LOGIC;
  signal NLW_grid_bridge3ph_0_ap_idle_UNCONNECTED : STD_LOGIC;
  signal NLW_grid_bridge3ph_0_ap_ready_UNCONNECTED : STD_LOGIC;
  signal NLW_lcl_filter_0_ap_done_UNCONNECTED : STD_LOGIC;
  signal NLW_lcl_filter_0_ap_idle_UNCONNECTED : STD_LOGIC;
  signal NLW_lcl_filter_0_ap_ready_UNCONNECTED : STD_LOGIC;
  signal NLW_parameter_load_2_0_sp10_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_parameter_load_2_0_sp11_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_parameter_load_2_0_sp12_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_parameter_load_2_0_sp13_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_parameter_load_2_0_sp14_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_parameter_load_2_0_sp15_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_parameter_load_2_0_sp16_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_parameter_load_2_0_sp17_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_parameter_load_2_0_sp18_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_parameter_load_2_0_sp19_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_parameter_load_2_0_sp20_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_parameter_load_2_0_sp21_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_parameter_load_2_0_sp22_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_parameter_load_2_0_sp23_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_parameter_load_2_0_sp24_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_parameter_load_2_0_sp25_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_parameter_load_2_0_sp26_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_parameter_load_2_0_sp27_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_parameter_load_2_0_sp28_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_parameter_load_2_0_sp29_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_parameter_load_2_0_sp5_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_parameter_load_2_0_sp6_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_parameter_load_2_0_sp7_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_parameter_load_2_0_sp8_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_parameter_load_2_0_sp9_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_pmsm_0_ap_idle_UNCONNECTED : STD_LOGIC;
  signal NLW_pmsm_0_ap_ready_UNCONNECTED : STD_LOGIC;
  signal NLW_pmsm_0_Fem_a_r_V_UNCONNECTED : STD_LOGIC_VECTOR ( 24 downto 0 );
  signal NLW_pmsm_0_Fem_b_r_V_UNCONNECTED : STD_LOGIC_VECTOR ( 24 downto 0 );
  signal NLW_pmsm_0_Fem_c_r_V_UNCONNECTED : STD_LOGIC_VECTOR ( 24 downto 0 );
  signal NLW_processing_system7_0_FCLK_CLK3_UNCONNECTED : STD_LOGIC;
  signal NLW_processing_system7_0_TTC0_WAVE0_OUT_UNCONNECTED : STD_LOGIC;
  signal NLW_processing_system7_0_TTC0_WAVE1_OUT_UNCONNECTED : STD_LOGIC;
  signal NLW_processing_system7_0_TTC0_WAVE2_OUT_UNCONNECTED : STD_LOGIC;
  signal NLW_processing_system7_0_USB0_VBUS_PWRSELECT_UNCONNECTED : STD_LOGIC;
  signal NLW_processing_system7_0_USB0_PORT_INDCTL_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_ps7_0_axi_periph_M04_AXI_araddr_UNCONNECTED : STD_LOGIC;
  signal NLW_ps7_0_axi_periph_M04_AXI_arprot_UNCONNECTED : STD_LOGIC;
  signal NLW_ps7_0_axi_periph_M04_AXI_arvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_ps7_0_axi_periph_M04_AXI_awaddr_UNCONNECTED : STD_LOGIC;
  signal NLW_ps7_0_axi_periph_M04_AXI_awprot_UNCONNECTED : STD_LOGIC;
  signal NLW_ps7_0_axi_periph_M04_AXI_awvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_ps7_0_axi_periph_M04_AXI_bready_UNCONNECTED : STD_LOGIC;
  signal NLW_ps7_0_axi_periph_M04_AXI_rready_UNCONNECTED : STD_LOGIC;
  signal NLW_ps7_0_axi_periph_M04_AXI_wdata_UNCONNECTED : STD_LOGIC;
  signal NLW_ps7_0_axi_periph_M04_AXI_wstrb_UNCONNECTED : STD_LOGIC;
  signal NLW_ps7_0_axi_periph_M04_AXI_wvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_rst_ps7_0_100M_mb_reset_UNCONNECTED : STD_LOGIC;
  signal NLW_rst_ps7_0_100M_bus_struct_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_rst_ps7_0_100M_peripheral_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_rst_ps7_0_10M_mb_reset_UNCONNECTED : STD_LOGIC;
  signal NLW_rst_ps7_0_10M_bus_struct_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_rst_ps7_0_10M_interconnect_aresetn_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_rst_ps7_0_10M_peripheral_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_rst_ps7_0_50M_mb_reset_UNCONNECTED : STD_LOGIC;
  signal NLW_rst_ps7_0_50M_bus_struct_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_rst_ps7_0_50M_interconnect_aresetn_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_rst_ps7_0_50M_peripheral_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_start_peripheral_0_Start_DAC_UNCONNECTED : STD_LOGIC;
  signal NLW_start_peripheral_0_start_grid_UNCONNECTED : STD_LOGIC;
  signal NLW_wind_turb_0_ap_idle_UNCONNECTED : STD_LOGIC;
  signal NLW_wind_turb_0_ap_ready_UNCONNECTED : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of DDR_0_cas_n : signal is "xilinx.com:interface:ddrx:1.0 DDR_0 CAS_N";
  attribute X_INTERFACE_INFO of DDR_0_ck_n : signal is "xilinx.com:interface:ddrx:1.0 DDR_0 CK_N";
  attribute X_INTERFACE_INFO of DDR_0_ck_p : signal is "xilinx.com:interface:ddrx:1.0 DDR_0 CK_P";
  attribute X_INTERFACE_INFO of DDR_0_cke : signal is "xilinx.com:interface:ddrx:1.0 DDR_0 CKE";
  attribute X_INTERFACE_INFO of DDR_0_cs_n : signal is "xilinx.com:interface:ddrx:1.0 DDR_0 CS_N";
  attribute X_INTERFACE_INFO of DDR_0_odt : signal is "xilinx.com:interface:ddrx:1.0 DDR_0 ODT";
  attribute X_INTERFACE_INFO of DDR_0_ras_n : signal is "xilinx.com:interface:ddrx:1.0 DDR_0 RAS_N";
  attribute X_INTERFACE_INFO of DDR_0_reset_n : signal is "xilinx.com:interface:ddrx:1.0 DDR_0 RESET_N";
  attribute X_INTERFACE_INFO of DDR_0_we_n : signal is "xilinx.com:interface:ddrx:1.0 DDR_0 WE_N";
  attribute X_INTERFACE_INFO of FIXED_IO_0_ddr_vrn : signal is "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO_0 DDR_VRN";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of FIXED_IO_0_ddr_vrn : signal is "XIL_INTERFACENAME FIXED_IO_0, CAN_DEBUG false";
  attribute X_INTERFACE_INFO of FIXED_IO_0_ddr_vrp : signal is "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO_0 DDR_VRP";
  attribute X_INTERFACE_INFO of FIXED_IO_0_ps_clk : signal is "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO_0 PS_CLK";
  attribute X_INTERFACE_INFO of FIXED_IO_0_ps_porb : signal is "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO_0 PS_PORB";
  attribute X_INTERFACE_INFO of FIXED_IO_0_ps_srstb : signal is "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO_0 PS_SRSTB";
  attribute X_INTERFACE_INFO of DDR_0_addr : signal is "xilinx.com:interface:ddrx:1.0 DDR_0 ADDR";
  attribute X_INTERFACE_PARAMETER of DDR_0_addr : signal is "XIL_INTERFACENAME DDR_0, AXI_ARBITRATION_SCHEME TDM, BURST_LENGTH 8, CAN_DEBUG false, CAS_LATENCY 11, CAS_WRITE_LATENCY 11, CS_ENABLED true, DATA_MASK_ENABLED true, DATA_WIDTH 8, MEMORY_TYPE COMPONENTS, MEM_ADDR_MAP ROW_COLUMN_BANK, SLOT Single, TIMEPERIOD_PS 1250";
  attribute X_INTERFACE_INFO of DDR_0_ba : signal is "xilinx.com:interface:ddrx:1.0 DDR_0 BA";
  attribute X_INTERFACE_INFO of DDR_0_dm : signal is "xilinx.com:interface:ddrx:1.0 DDR_0 DM";
  attribute X_INTERFACE_INFO of DDR_0_dq : signal is "xilinx.com:interface:ddrx:1.0 DDR_0 DQ";
  attribute X_INTERFACE_INFO of DDR_0_dqs_n : signal is "xilinx.com:interface:ddrx:1.0 DDR_0 DQS_N";
  attribute X_INTERFACE_INFO of DDR_0_dqs_p : signal is "xilinx.com:interface:ddrx:1.0 DDR_0 DQS_P";
  attribute X_INTERFACE_INFO of FIXED_IO_0_mio : signal is "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO_0 MIO";
begin
  DRIVER_DOWN_04_1 <= DRIVER_DOWN_04;
  DRIVER_DOWN_05_1 <= DRIVER_DOWN_05;
  DRIVER_DOWN_06_1 <= DRIVER_DOWN_06;
  DRIVER_UP_03_1 <= DRIVER_UP_03;
  DRIVER_UP_04_1 <= DRIVER_UP_04;
  DRIVER_UP_05_1 <= DRIVER_UP_05;
  DRIVER_UP_06_1 <= DRIVER_UP_06;
  Din_out_0 <= DAC_121s101_0_D1;
  Din_out_1 <= DAC_121s101_0_D7;
  Din_out_10 <= DAC_121s101_0_D9;
  Din_out_11 <= DAC_121s101_0_D10;
  Din_out_12 <= DAC_121s101_0_D16;
  Din_out_13 <= DAC_121s101_0_D15;
  Din_out_14 <= DAC_121s101_0_D14;
  Din_out_15 <= DAC_121s101_0_D11;
  Din_out_16 <= DAC_121s101_0_D17;
  Din_out_17 <= AD_5293_v2_0_D1;
  Din_out_18 <= dc_dc_0_T1_out;
  Din_out_19 <= AD_5293_v2_0_D2;
  Din_out_2 <= DAC_121s101_0_D6;
  Din_out_20 <= dc_dc_0_T2_out;
  Din_out_3 <= DAC_121s101_0_D5;
  Din_out_4 <= DAC_121s101_0_D4;
  Din_out_5 <= DAC_121s101_0_D3;
  Din_out_6 <= DAC_121s101_0_D2;
  Din_out_7 <= DAC_121s101_0_D8;
  Din_out_8 <= DAC_121s101_0_D13;
  Din_out_9 <= DAC_121s101_0_D12;
  SCLK_0 <= AD1RefComp_0_SCLK;
  SCLK_out_0 <= DAC_121s101_0_CLK_OUT;
  SCLK_out_1 <= DAC_121s101_0_CLK_OUT;
  SCLK_out_2 <= DAC_121s101_0_CLK_OUT;
  SCLK_out_3 <= DAC_121s101_0_CLK_OUT;
  SCLK_out_4 <= DAC_121s101_0_CLK_OUT;
  SCLK_out_6 <= DAC_121s101_0_CLK_OUT;
  SCLK_out_7 <= AD_5293_v2_0_CLK_OUT;
  SDATA1_0_1 <= SDATA1_0;
  nCS_0 <= AD1RefComp_0_nCS;
  nRST_out_0 <= TCA9538_driver_0_nRST_out;
  nRST_out_1 <= TCA9538_driver_input_0_nRST_out;
  nSync_out_0 <= DAC_121s101_0_nSYNC;
  nSync_out_6 <= AD_5293_v2_0_nSYNC;
AD1RefComp_0: component NV_project_AD1RefComp_0_0
     port map (
      CLK => processing_system7_0_FCLK_CLK2,
      DATA1(11 downto 0) => AD1RefComp_0_DATA1(11 downto 0),
      DONE => NLW_AD1RefComp_0_DONE_UNCONNECTED,
      RST => rst_ps7_0_50M_peripheral_aresetn(0),
      SCLK => AD1RefComp_0_SCLK,
      SDATA1 => SDATA1_0_1,
      START => start_peripheral_0_Start_ADC,
      nCS => AD1RefComp_0_nCS
    );
AD_5293_v2_0: component NV_project_AD_5293_v2_0_0
     port map (
      CLK_OUT => AD_5293_v2_0_CLK_OUT,
      D1 => AD_5293_v2_0_D1,
      D2 => AD_5293_v2_0_D2,
      D3 => NLW_AD_5293_v2_0_D3_UNCONNECTED,
      D4 => NLW_AD_5293_v2_0_D4_UNCONNECTED,
      DATA1(9 downto 0) => Test_normal_mode_MUX_0_DigPot_output_1(9 downto 0),
      DATA2(9 downto 0) => Test_normal_mode_MUX_0_DigPot_output_2(9 downto 0),
      DATA3(9 downto 0) => Test_normal_mode_MUX_0_DigPot_output_3(9 downto 0),
      DATA4(9 downto 0) => Test_normal_mode_MUX_0_DigPot_output_4(9 downto 0),
      DONE => NLW_AD_5293_v2_0_DONE_UNCONNECTED,
      RST => rst_ps7_0_10M_peripheral_aresetn(0),
      START => Net1,
      clk => processing_system7_0_FCLK_CLK3,
      nSYNC => AD_5293_v2_0_nSYNC
    );
DAC_121s101_0: component NV_project_DAC_121s101_0_0
     port map (
      CLK_OUT => DAC_121s101_0_CLK_OUT,
      D1 => DAC_121s101_0_D1,
      D10 => DAC_121s101_0_D10,
      D11 => DAC_121s101_0_D11,
      D12 => DAC_121s101_0_D12,
      D13 => DAC_121s101_0_D13,
      D14 => DAC_121s101_0_D14,
      D15 => DAC_121s101_0_D15,
      D16 => DAC_121s101_0_D16,
      D17 => DAC_121s101_0_D17,
      D2 => DAC_121s101_0_D2,
      D3 => DAC_121s101_0_D3,
      D4 => DAC_121s101_0_D4,
      D5 => DAC_121s101_0_D5,
      D6 => DAC_121s101_0_D6,
      D7 => DAC_121s101_0_D7,
      D8 => DAC_121s101_0_D8,
      D9 => DAC_121s101_0_D9,
      DATA1(11 downto 0) => gain_offset_truncation_0_out_I_LCL_1_a_V(11 downto 0),
      DATA10(11 downto 0) => gain_offset_truncation_1_out_I_LCL_2_c_V(11 downto 0),
      DATA11(11 downto 0) => gain_offset_truncation_0_out_V_grid_a_V(11 downto 0),
      DATA12(11 downto 0) => gain_offset_truncation_1_out_V_grid_b_V(11 downto 0),
      DATA13(11 downto 0) => gain_offset_truncation_1_out_V_grid_c_V(11 downto 0),
      DATA14(11 downto 0) => xlconstant_24_dout(11 downto 0),
      DATA15(11 downto 0) => xlconstant_24_dout(11 downto 0),
      DATA16(11 downto 0) => xlconstant_24_dout(11 downto 0),
      DATA17(11 downto 0) => xlconstant_22_dout(11 downto 0),
      DATA2(11 downto 0) => gain_offset_truncation_1_out_I_LCL_1_b_V(11 downto 0),
      DATA3(11 downto 0) => gain_offset_truncation_1_out_I_LCL_1_c_V(11 downto 0),
      DATA4(11 downto 0) => xlconstant_24_dout(11 downto 0),
      DATA5(11 downto 0) => xlconstant_24_dout(11 downto 0),
      DATA6(11 downto 0) => xlconstant_24_dout(11 downto 0),
      DATA7(11 downto 0) => gain_offset_truncation_0_out_V_dc_bus_V(11 downto 0),
      DATA8(11 downto 0) => gain_offset_truncation_0_out_I_LCL_2_a_V(11 downto 0),
      DATA9(11 downto 0) => gain_offset_truncation_1_out_I_LCL_2_b_V(11 downto 0),
      DONE => NLW_DAC_121s101_0_DONE_UNCONNECTED,
      RST => rst_ps7_0_50M_peripheral_aresetn(0),
      clk => processing_system7_0_FCLK_CLK2,
      nSYNC => DAC_121s101_0_nSYNC
    );
DCbus_dynamic_0: component NV_project_DCbus_dynamic_0_0
     port map (
      DC_bus_fixed_volt => NV_parameter_load_0_DC_bus_fived(0),
      I_in(31 downto 0) => grid_0_I_out_proof(31 downto 0),
      I_out(31 downto 0) => grid_bridge3ph_0_Idc_r(31 downto 0),
      V_DC_voltage_in(31 downto 0) => NV_parameter_load_0_DC_bus_fixed_volt(31 downto 0),
      V_bus(31 downto 0) => DCbus_dynamic_0_V_bus(31 downto 0),
      ap_clk => processing_system7_0_FCLK_CLK1,
      ap_done => NLW_DCbus_dynamic_0_ap_done_UNCONNECTED,
      ap_idle => NLW_DCbus_dynamic_0_ap_idle_UNCONNECTED,
      ap_ready => NLW_DCbus_dynamic_0_ap_ready_UNCONNECTED,
      ap_rst_n => rst_ps7_0_100M_peripheral_aresetn(0),
      ap_start => FSM_0_Start1,
      ena_chop_res => DRIVER_UP_03_1,
      t_step_C(31 downto 0) => NV_parameter_load_0_t_step_C(31 downto 0)
    );
De_Multiplexer_8b_0: component NV_project_De_Multiplexer_8b_0_0
     port map (
      CLK => processing_system7_0_FCLK_CLK1,
      NOT_data_out_7 => De_Multiplexer_8b_0_NOT_data_out_7,
      RST => rst_ps7_0_100M_peripheral_aresetn(0),
      data_in(7 downto 0) => NOT_8_0_out_8(7 downto 0),
      data_out_0 => De_Multiplexer_8b_0_data_out_0,
      data_out_1 => De_Multiplexer_8b_0_data_out_2,
      data_out_2 => De_Multiplexer_8b_0_data_out_1,
      data_out_3 => De_Multiplexer_8b_0_data_out_3,
      data_out_4 => De_Multiplexer_8b_0_data_out_4,
      data_out_5 => data_out_5,
      data_out_6 => data_out_6,
      data_out_7 => NLW_De_Multiplexer_8b_0_data_out_7_UNCONNECTED
    );
FSM_0: component NV_project_FSM_0_0
     port map (
      CLK => processing_system7_0_FCLK_CLK1,
      RST => rst_ps7_0_100M_peripheral_aresetn(0),
      Start => FSM_0_Start
    );
IGBT_input_selector_0: component NV_project_IGBT_input_selector_0_0
     port map (
      CLK => processing_system7_0_FCLK_CLK1,
      RST => rst_ps7_0_100M_peripheral_aresetn(0),
      grid_T1 => IGBT_input_selector_0_grid_T1,
      grid_T1_NV => DRIVER_UP_06_1,
      grid_T1_test => gen_referencias_0_T1,
      grid_T2 => IGBT_input_selector_0_grid_T2,
      grid_T2_NV => DRIVER_UP_05_1,
      grid_T2_test => gen_referencias_0_T2,
      grid_T3 => IGBT_input_selector_0_grid_T3,
      grid_T3_NV => DRIVER_UP_04_1,
      grid_T3_test => gen_referencias_0_T3,
      grid_T4 => IGBT_input_selector_0_grid_T4,
      grid_T4_NV => DRIVER_DOWN_06_1,
      grid_T4_test => gen_referencias_0_T4,
      grid_T5 => IGBT_input_selector_0_grid_T5,
      grid_T5_NV => DRIVER_DOWN_05_1,
      grid_T5_test => gen_referencias_0_T5,
      grid_T6 => IGBT_input_selector_0_grid_T6,
      grid_T6_NV => DRIVER_DOWN_04_1,
      grid_T6_test => gen_referencias_0_T6,
      mode => NV_parameter_load_0_mode_igbt_input(0)
    );
NOT_8_0: component NV_project_NOT_8_0_0
     port map (
      CLK => processing_system7_0_FCLK_CLK1,
      RST => rst_ps7_0_100M_peripheral_aresetn(0),
      in_8(7 downto 0) => TCA9538_driver_input_0_data_out(7 downto 0),
      out_8(7 downto 0) => NOT_8_0_out_8(7 downto 0)
    );
NV_io_controller_0: component NV_project_NV_io_controller_0_0
     port map (
      Expansor_input_value(7 downto 0) => NOT_8_0_out_8(7 downto 0),
      Expansor_output_value_1(7 downto 0) => NV_io_controller_0_Expansor_output_value_1(7 downto 0),
      Expansor_output_value_2(7 downto 0) => NV_io_controller_0_Expansor_output_value_2(7 downto 0),
      Expansor_output_value_3(7 downto 0) => NV_io_controller_0_Expansor_output_value_3(7 downto 0),
      Fan_input_value(11 downto 0) => AD1RefComp_0_DATA1(11 downto 0),
      analog_output_maxValue_1(11 downto 0) => NV_io_controller_0_analog_output_maxValue_1(11 downto 0),
      analog_output_maxValue_10(11 downto 0) => NV_io_controller_0_analog_output_maxValue_10(11 downto 0),
      analog_output_maxValue_11(11 downto 0) => NV_io_controller_0_analog_output_maxValue_11(11 downto 0),
      analog_output_maxValue_12(11 downto 0) => NV_io_controller_0_analog_output_maxValue_12(11 downto 0),
      analog_output_maxValue_13(11 downto 0) => NV_io_controller_0_analog_output_maxValue_13(11 downto 0),
      analog_output_maxValue_14(11 downto 0) => NV_io_controller_0_analog_output_maxValue_14(11 downto 0),
      analog_output_maxValue_15(11 downto 0) => NV_io_controller_0_analog_output_maxValue_15(11 downto 0),
      analog_output_maxValue_16(11 downto 0) => NV_io_controller_0_analog_output_maxValue_16(11 downto 0),
      analog_output_maxValue_17(11 downto 0) => NV_io_controller_0_analog_output_maxValue_17(11 downto 0),
      analog_output_maxValue_18(11 downto 0) => NLW_NV_io_controller_0_analog_output_maxValue_18_UNCONNECTED(11 downto 0),
      analog_output_maxValue_2(11 downto 0) => NV_io_controller_0_analog_output_maxValue_2(11 downto 0),
      analog_output_maxValue_3(11 downto 0) => NV_io_controller_0_analog_output_maxValue_3(11 downto 0),
      analog_output_maxValue_4(11 downto 0) => NV_io_controller_0_analog_output_maxValue_4(11 downto 0),
      analog_output_maxValue_5(11 downto 0) => NV_io_controller_0_analog_output_maxValue_5(11 downto 0),
      analog_output_maxValue_6(11 downto 0) => NV_io_controller_0_analog_output_maxValue_6(11 downto 0),
      analog_output_maxValue_7(11 downto 0) => NV_io_controller_0_analog_output_maxValue_7(11 downto 0),
      analog_output_maxValue_8(11 downto 0) => NV_io_controller_0_analog_output_maxValue_8(11 downto 0),
      analog_output_maxValue_9(11 downto 0) => NV_io_controller_0_analog_output_maxValue_9(11 downto 0),
      mode(0) => NV_io_controller_0_mode(0),
      mode_dac(0) => NV_io_controller_0_mode_dac(0),
      potDig_output_value_1(9 downto 0) => NV_io_controller_0_potDig_output_value_1(9 downto 0),
      potDig_output_value_2(9 downto 0) => NV_io_controller_0_potDig_output_value_2(9 downto 0),
      potDig_output_value_3(9 downto 0) => NV_io_controller_0_potDig_output_value_3(9 downto 0),
      potDig_output_value_4(9 downto 0) => NV_io_controller_0_potDig_output_value_4(9 downto 0),
      s00_axi_aclk => processing_system7_0_FCLK_CLK1,
      s00_axi_araddr(7 downto 0) => ps7_0_axi_periph_M02_AXI_ARADDR(7 downto 0),
      s00_axi_aresetn => rst_ps7_0_100M_peripheral_aresetn(0),
      s00_axi_arprot(2 downto 0) => ps7_0_axi_periph_M02_AXI_ARPROT(2 downto 0),
      s00_axi_arready => ps7_0_axi_periph_M02_AXI_ARREADY,
      s00_axi_arvalid => ps7_0_axi_periph_M02_AXI_ARVALID,
      s00_axi_awaddr(7 downto 0) => ps7_0_axi_periph_M02_AXI_AWADDR(7 downto 0),
      s00_axi_awprot(2 downto 0) => ps7_0_axi_periph_M02_AXI_AWPROT(2 downto 0),
      s00_axi_awready => ps7_0_axi_periph_M02_AXI_AWREADY,
      s00_axi_awvalid => ps7_0_axi_periph_M02_AXI_AWVALID,
      s00_axi_bready => ps7_0_axi_periph_M02_AXI_BREADY,
      s00_axi_bresp(1 downto 0) => ps7_0_axi_periph_M02_AXI_BRESP(1 downto 0),
      s00_axi_bvalid => ps7_0_axi_periph_M02_AXI_BVALID,
      s00_axi_rdata(31 downto 0) => ps7_0_axi_periph_M02_AXI_RDATA(31 downto 0),
      s00_axi_rready => ps7_0_axi_periph_M02_AXI_RREADY,
      s00_axi_rresp(1 downto 0) => ps7_0_axi_periph_M02_AXI_RRESP(1 downto 0),
      s00_axi_rvalid => ps7_0_axi_periph_M02_AXI_RVALID,
      s00_axi_wdata(31 downto 0) => ps7_0_axi_periph_M02_AXI_WDATA(31 downto 0),
      s00_axi_wready => ps7_0_axi_periph_M02_AXI_WREADY,
      s00_axi_wstrb(3 downto 0) => ps7_0_axi_periph_M02_AXI_WSTRB(3 downto 0),
      s00_axi_wvalid => ps7_0_axi_periph_M02_AXI_WVALID,
      sp2(15 downto 0) => NLW_NV_io_controller_0_sp2_UNCONNECTED(15 downto 0),
      sp3(15 downto 0) => NLW_NV_io_controller_0_sp3_UNCONNECTED(15 downto 0),
      sp4(15 downto 0) => NLW_NV_io_controller_0_sp4_UNCONNECTED(15 downto 0),
      sp5(15 downto 0) => xlconstant_6_dout(15 downto 0),
      sp6(15 downto 0) => xlconstant_10_dout(15 downto 0),
      sp7(15 downto 0) => xlconstant_9_dout(15 downto 0),
      sp8(15 downto 0) => xlconstant_8_dout(15 downto 0)
    );
NV_parameter_load_0: component NV_project_NV_parameter_load_0_0
     port map (
      DC_bus_fived(0) => NV_parameter_load_0_DC_bus_fived(0),
      DC_bus_fixed_volt(31 downto 0) => NV_parameter_load_0_DC_bus_fixed_volt(31 downto 0),
      I_in(31 downto 0) => NLW_NV_parameter_load_0_I_in_UNCONNECTED(31 downto 0),
      Pi(31 downto 0) => NLW_NV_parameter_load_0_Pi_UNCONNECTED(31 downto 0),
      amp_a(31 downto 0) => NV_parameter_load_0_amp_a(31 downto 0),
      amp_b(31 downto 0) => NV_parameter_load_0_amp_b(31 downto 0),
      amp_c(31 downto 0) => NV_parameter_load_0_amp_c(31 downto 0),
      counter_limit(31 downto 0) => NV_parameter_load_0_counter_limit(31 downto 0),
      dig_out_18(0) => NV_parameter_load_0_sp1(0),
      dt_C(31 downto 0) => NV_parameter_load_0_dt_C(31 downto 0),
      dt_L1(31 downto 0) => NV_parameter_load_0_dt_L1(31 downto 0),
      dt_L2(31 downto 0) => NV_parameter_load_0_dt_L2(31 downto 0),
      inv_seq(0) => NV_parameter_load_0_inv_seq(0),
      mode_igbt_input(0) => NV_parameter_load_0_mode_igbt_input(0),
      phase_step(31 downto 0) => NV_parameter_load_0_phase_step(31 downto 0),
      phase_step_on(0) => NV_parameter_load_0_phase_step_on(0),
      rC(31 downto 0) => NV_parameter_load_0_rC(31 downto 0),
      rL1(31 downto 0) => NLW_NV_parameter_load_0_rL1_UNCONNECTED(31 downto 0),
      rL2(31 downto 0) => NLW_NV_parameter_load_0_rL2_UNCONNECTED(31 downto 0),
      s00_axi_aclk => processing_system7_0_FCLK_CLK1,
      s00_axi_araddr(6 downto 0) => ps7_0_axi_periph_M01_AXI_ARADDR(6 downto 0),
      s00_axi_aresetn => rst_ps7_0_100M_peripheral_aresetn(0),
      s00_axi_arprot(2 downto 0) => ps7_0_axi_periph_M01_AXI_ARPROT(2 downto 0),
      s00_axi_arready => ps7_0_axi_periph_M01_AXI_ARREADY,
      s00_axi_arvalid => ps7_0_axi_periph_M01_AXI_ARVALID,
      s00_axi_awaddr(6 downto 0) => ps7_0_axi_periph_M01_AXI_AWADDR(6 downto 0),
      s00_axi_awprot(2 downto 0) => ps7_0_axi_periph_M01_AXI_AWPROT(2 downto 0),
      s00_axi_awready => ps7_0_axi_periph_M01_AXI_AWREADY,
      s00_axi_awvalid => ps7_0_axi_periph_M01_AXI_AWVALID,
      s00_axi_bready => ps7_0_axi_periph_M01_AXI_BREADY,
      s00_axi_bresp(1 downto 0) => ps7_0_axi_periph_M01_AXI_BRESP(1 downto 0),
      s00_axi_bvalid => ps7_0_axi_periph_M01_AXI_BVALID,
      s00_axi_rdata(31 downto 0) => ps7_0_axi_periph_M01_AXI_RDATA(31 downto 0),
      s00_axi_rready => ps7_0_axi_periph_M01_AXI_RREADY,
      s00_axi_rresp(1 downto 0) => ps7_0_axi_periph_M01_AXI_RRESP(1 downto 0),
      s00_axi_rvalid => ps7_0_axi_periph_M01_AXI_RVALID,
      s00_axi_wdata(31 downto 0) => ps7_0_axi_periph_M01_AXI_WDATA(31 downto 0),
      s00_axi_wready => ps7_0_axi_periph_M01_AXI_WREADY,
      s00_axi_wstrb(3 downto 0) => ps7_0_axi_periph_M01_AXI_WSTRB(3 downto 0),
      s00_axi_wvalid => ps7_0_axi_periph_M01_AXI_WVALID,
      t_step_C(31 downto 0) => NV_parameter_load_0_t_step_C(31 downto 0)
    );
TCA9538_driver_0: component NV_project_TCA9538_driver_0_0
     port map (
      CLK => processing_system7_0_FCLK_CLK1,
      RST => rst_ps7_0_100M_peripheral_aresetn(0),
      address_1_in(6 downto 0) => xlconstant_1_dout(6 downto 0),
      address_2_in(6 downto 0) => xlconstant_17_dout(6 downto 0),
      address_3_in(6 downto 0) => xlconstant_21_dout(6 downto 0),
      data_1_in(7 downto 0) => bit_order_adjust_tca9538_1_u10_data_out(7 downto 0),
      data_2_in(7 downto 0) => bit_order_adjust_tca9538_1_u12_data_out(7 downto 0),
      data_3_in(7 downto 0) => bit_order_adjust_tca9538_1_u14_data_out(7 downto 0),
      nRST_out => TCA9538_driver_0_nRST_out,
      scl => scl_0,
      sda => sda_0,
      start_in => start_peripheral_0_Start_out_expa
    );
TCA9538_driver_input_0: component NV_project_TCA9538_driver_input_0_0
     port map (
      CLK => processing_system7_0_FCLK_CLK1,
      RST => rst_ps7_0_100M_peripheral_aresetn(0),
      address_in(6 downto 0) => xlconstant_11_dout(6 downto 0),
      data_out(7 downto 0) => TCA9538_driver_input_0_data_out(7 downto 0),
      nRST_out => TCA9538_driver_input_0_nRST_out,
      scl => scl_1,
      sda => sda_1,
      start_in => start_peripheral_0_Start_inp_expa
    );
Test_normal_mode_MUX_0: component NV_project_Test_normal_mode_MUX_0_0
     port map (
      CLK => processing_system7_0_FCLK_CLK1,
      DigPot_output_1(9 downto 0) => Test_normal_mode_MUX_0_DigPot_output_1(9 downto 0),
      DigPot_output_2(9 downto 0) => Test_normal_mode_MUX_0_DigPot_output_2(9 downto 0),
      DigPot_output_3(9 downto 0) => Test_normal_mode_MUX_0_DigPot_output_3(9 downto 0),
      DigPot_output_4(9 downto 0) => Test_normal_mode_MUX_0_DigPot_output_4(9 downto 0),
      DigPot_output_NORMAL_1(9 downto 0) => xlconstant_13_dout(9 downto 0),
      DigPot_output_NORMAL_2(9 downto 0) => xlconstant_14_dout(9 downto 0),
      DigPot_output_NORMAL_3(9 downto 0) => xlconstant_15_dout(9 downto 0),
      DigPot_output_NORMAL_4(9 downto 0) => xlconstant_16_dout(9 downto 0),
      DigPot_output_TEST_1(9 downto 0) => NV_io_controller_0_potDig_output_value_1(9 downto 0),
      DigPot_output_TEST_2(9 downto 0) => NV_io_controller_0_potDig_output_value_2(9 downto 0),
      DigPot_output_TEST_3(9 downto 0) => NV_io_controller_0_potDig_output_value_3(9 downto 0),
      DigPot_output_TEST_4(9 downto 0) => NV_io_controller_0_potDig_output_value_4(9 downto 0),
      Expansor_output_1(7 downto 0) => Test_normal_mode_MUX_0_Expansor_output_1(7 downto 0),
      Expansor_output_2(7 downto 0) => Test_normal_mode_MUX_0_Expansor_output_2(7 downto 0),
      Expansor_output_3(7 downto 0) => Test_normal_mode_MUX_0_Expansor_output_3(7 downto 0),
      Expansor_output_NORMAL_1(7 downto 0) => xlconcat_2_dout(7 downto 0),
      Expansor_output_NORMAL_2(7 downto 0) => xlconcat_3_dout(7 downto 0),
      Expansor_output_NORMAL_3(7 downto 0) => xlconcat_4_dout(7 downto 0),
      Expansor_output_TEST_1(7 downto 0) => NV_io_controller_0_Expansor_output_value_1(7 downto 0),
      Expansor_output_TEST_2(7 downto 0) => NV_io_controller_0_Expansor_output_value_2(7 downto 0),
      Expansor_output_TEST_3(7 downto 0) => NV_io_controller_0_Expansor_output_value_3(7 downto 0),
      RST => rst_ps7_0_100M_peripheral_aresetn(0),
      analog_output_1(11 downto 0) => NLW_Test_normal_mode_MUX_0_analog_output_1_UNCONNECTED(11 downto 0),
      analog_output_10(11 downto 0) => NLW_Test_normal_mode_MUX_0_analog_output_10_UNCONNECTED(11 downto 0),
      analog_output_11(11 downto 0) => NLW_Test_normal_mode_MUX_0_analog_output_11_UNCONNECTED(11 downto 0),
      analog_output_12(11 downto 0) => NLW_Test_normal_mode_MUX_0_analog_output_12_UNCONNECTED(11 downto 0),
      analog_output_13(11 downto 0) => NLW_Test_normal_mode_MUX_0_analog_output_13_UNCONNECTED(11 downto 0),
      analog_output_14(11 downto 0) => NLW_Test_normal_mode_MUX_0_analog_output_14_UNCONNECTED(11 downto 0),
      analog_output_15(11 downto 0) => NLW_Test_normal_mode_MUX_0_analog_output_15_UNCONNECTED(11 downto 0),
      analog_output_16(11 downto 0) => NLW_Test_normal_mode_MUX_0_analog_output_16_UNCONNECTED(11 downto 0),
      analog_output_17(11 downto 0) => NLW_Test_normal_mode_MUX_0_analog_output_17_UNCONNECTED(11 downto 0),
      analog_output_2(11 downto 0) => NLW_Test_normal_mode_MUX_0_analog_output_2_UNCONNECTED(11 downto 0),
      analog_output_3(11 downto 0) => NLW_Test_normal_mode_MUX_0_analog_output_3_UNCONNECTED(11 downto 0),
      analog_output_4(11 downto 0) => NLW_Test_normal_mode_MUX_0_analog_output_4_UNCONNECTED(11 downto 0),
      analog_output_5(11 downto 0) => NLW_Test_normal_mode_MUX_0_analog_output_5_UNCONNECTED(11 downto 0),
      analog_output_6(11 downto 0) => NLW_Test_normal_mode_MUX_0_analog_output_6_UNCONNECTED(11 downto 0),
      analog_output_7(11 downto 0) => NLW_Test_normal_mode_MUX_0_analog_output_7_UNCONNECTED(11 downto 0),
      analog_output_8(11 downto 0) => NLW_Test_normal_mode_MUX_0_analog_output_8_UNCONNECTED(11 downto 0),
      analog_output_9(11 downto 0) => NLW_Test_normal_mode_MUX_0_analog_output_9_UNCONNECTED(11 downto 0),
      analog_output_NORMAL_1(11 downto 0) => gain_offset_truncation_0_out_I_LCL_1_a_V(11 downto 0),
      analog_output_NORMAL_10(11 downto 0) => gain_offset_truncation_1_out_I_LCL_2_c_V(11 downto 0),
      analog_output_NORMAL_11(11 downto 0) => gain_offset_truncation_0_out_V_grid_a_V(11 downto 0),
      analog_output_NORMAL_12(11 downto 0) => gain_offset_truncation_1_out_V_grid_b_V(11 downto 0),
      analog_output_NORMAL_13(11 downto 0) => gain_offset_truncation_1_out_V_grid_c_V(11 downto 0),
      analog_output_NORMAL_14(11 downto 0) => gain_offset_truncation_0_out_V_fem_a_V(11 downto 0),
      analog_output_NORMAL_15(11 downto 0) => gain_offset_truncation_1_out_V_fem_b_V(11 downto 0),
      analog_output_NORMAL_16(11 downto 0) => gain_offset_truncation_1_out_V_fem_c_V(11 downto 0),
      analog_output_NORMAL_17(11 downto 0) => xlconstant_0_dout(11 downto 0),
      analog_output_NORMAL_2(11 downto 0) => gain_offset_truncation_1_out_I_LCL_1_b_V(11 downto 0),
      analog_output_NORMAL_3(11 downto 0) => gain_offset_truncation_1_out_I_LCL_1_c_V(11 downto 0),
      analog_output_NORMAL_4(11 downto 0) => gain_offset_truncation_0_out_I_pmsm_a_V(11 downto 0),
      analog_output_NORMAL_5(11 downto 0) => gain_offset_truncation_1_out_I_pmsm_b_V(11 downto 0),
      analog_output_NORMAL_6(11 downto 0) => gain_offset_truncation_1_out_I_pmsm_c_V(11 downto 0),
      analog_output_NORMAL_7(11 downto 0) => gain_offset_truncation_0_out_V_dc_bus_V(11 downto 0),
      analog_output_NORMAL_8(11 downto 0) => gain_offset_truncation_0_out_I_LCL_2_a_V(11 downto 0),
      analog_output_NORMAL_9(11 downto 0) => gain_offset_truncation_1_out_I_LCL_2_b_V(11 downto 0),
      analog_output_TEST_1(11 downto 0) => NV_io_controller_0_analog_output_maxValue_1(11 downto 0),
      analog_output_TEST_10(11 downto 0) => NV_io_controller_0_analog_output_maxValue_10(11 downto 0),
      analog_output_TEST_11(11 downto 0) => NV_io_controller_0_analog_output_maxValue_11(11 downto 0),
      analog_output_TEST_12(11 downto 0) => NV_io_controller_0_analog_output_maxValue_12(11 downto 0),
      analog_output_TEST_13(11 downto 0) => NV_io_controller_0_analog_output_maxValue_13(11 downto 0),
      analog_output_TEST_14(11 downto 0) => NV_io_controller_0_analog_output_maxValue_14(11 downto 0),
      analog_output_TEST_15(11 downto 0) => NV_io_controller_0_analog_output_maxValue_15(11 downto 0),
      analog_output_TEST_16(11 downto 0) => NV_io_controller_0_analog_output_maxValue_16(11 downto 0),
      analog_output_TEST_17(11 downto 0) => NV_io_controller_0_analog_output_maxValue_17(11 downto 0),
      analog_output_TEST_2(11 downto 0) => NV_io_controller_0_analog_output_maxValue_2(11 downto 0),
      analog_output_TEST_3(11 downto 0) => NV_io_controller_0_analog_output_maxValue_3(11 downto 0),
      analog_output_TEST_4(11 downto 0) => NV_io_controller_0_analog_output_maxValue_4(11 downto 0),
      analog_output_TEST_5(11 downto 0) => NV_io_controller_0_analog_output_maxValue_5(11 downto 0),
      analog_output_TEST_6(11 downto 0) => NV_io_controller_0_analog_output_maxValue_6(11 downto 0),
      analog_output_TEST_7(11 downto 0) => NV_io_controller_0_analog_output_maxValue_7(11 downto 0),
      analog_output_TEST_8(11 downto 0) => NV_io_controller_0_analog_output_maxValue_8(11 downto 0),
      analog_output_TEST_9(11 downto 0) => NV_io_controller_0_analog_output_maxValue_9(11 downto 0),
      mode => NV_io_controller_0_mode(0),
      mode_dac => NV_io_controller_0_mode_dac(0)
    );
axi_gpio_0: component NV_project_axi_gpio_0_1
     port map (
      gpio_io_i(0) => serial_interrupt_0_Console_1s_interrupt(0),
      ip2intc_irpt => axi_gpio_0_ip2intc_irpt,
      s_axi_aclk => processing_system7_0_FCLK_CLK1,
      s_axi_araddr(8 downto 0) => ps7_0_axi_periph_M00_AXI_ARADDR(8 downto 0),
      s_axi_aresetn => rst_ps7_0_100M_peripheral_aresetn(0),
      s_axi_arready => ps7_0_axi_periph_M00_AXI_ARREADY,
      s_axi_arvalid => ps7_0_axi_periph_M00_AXI_ARVALID(0),
      s_axi_awaddr(8 downto 0) => ps7_0_axi_periph_M00_AXI_AWADDR(8 downto 0),
      s_axi_awready => ps7_0_axi_periph_M00_AXI_AWREADY,
      s_axi_awvalid => ps7_0_axi_periph_M00_AXI_AWVALID(0),
      s_axi_bready => ps7_0_axi_periph_M00_AXI_BREADY(0),
      s_axi_bresp(1 downto 0) => ps7_0_axi_periph_M00_AXI_BRESP(1 downto 0),
      s_axi_bvalid => ps7_0_axi_periph_M00_AXI_BVALID,
      s_axi_rdata(31 downto 0) => ps7_0_axi_periph_M00_AXI_RDATA(31 downto 0),
      s_axi_rready => ps7_0_axi_periph_M00_AXI_RREADY(0),
      s_axi_rresp(1 downto 0) => ps7_0_axi_periph_M00_AXI_RRESP(1 downto 0),
      s_axi_rvalid => ps7_0_axi_periph_M00_AXI_RVALID,
      s_axi_wdata(31 downto 0) => ps7_0_axi_periph_M00_AXI_WDATA(31 downto 0),
      s_axi_wready => ps7_0_axi_periph_M00_AXI_WREADY,
      s_axi_wstrb(3 downto 0) => ps7_0_axi_periph_M00_AXI_WSTRB(3 downto 0),
      s_axi_wvalid => ps7_0_axi_periph_M00_AXI_WVALID(0)
    );
bit_order_adjust_tca9538_1: component NV_project_bit_order_adjust_tca9538_1_0
     port map (
      CLK => processing_system7_0_FCLK_CLK1,
      RST => rst_ps7_0_100M_peripheral_aresetn(0),
      u10_data_in(7 downto 0) => Test_normal_mode_MUX_0_Expansor_output_1(7 downto 0),
      u10_data_out(7 downto 0) => bit_order_adjust_tca9538_1_u10_data_out(7 downto 0),
      u12_data_in(7 downto 0) => Test_normal_mode_MUX_0_Expansor_output_2(7 downto 0),
      u12_data_out(7 downto 0) => bit_order_adjust_tca9538_1_u12_data_out(7 downto 0),
      u14_data_in(7 downto 0) => Test_normal_mode_MUX_0_Expansor_output_3(7 downto 0),
      u14_data_out(7 downto 0) => bit_order_adjust_tca9538_1_u14_data_out(7 downto 0)
    );
bridge3ph_0: component NV_project_bridge3ph_0_0
     port map (
      Ia_V(24 downto 0) => pmsm_0_Is_a_V(24 downto 0),
      Ib_V(24 downto 0) => pmsm_0_Is_b_V(24 downto 0),
      Ic_V(24 downto 0) => pmsm_0_Is_c_V(24 downto 0),
      Idc_V(24 downto 0) => NLW_bridge3ph_0_Idc_V_UNCONNECTED(24 downto 0),
      T1 => gen_referencias_0_T1,
      T2 => gen_referencias_0_T2,
      T3 => gen_referencias_0_T3,
      T4 => gen_referencias_0_T4,
      T5 => gen_referencias_0_T5,
      T6 => gen_referencias_0_T6,
      Va_V(24 downto 0) => bridge3ph_0_Va_V(24 downto 0),
      Vb_V(24 downto 0) => bridge3ph_0_Vb_V(24 downto 0),
      Vc_V(24 downto 0) => bridge3ph_0_Vc_V(24 downto 0),
      Vdc_V(17 downto 0) => xlconstant_12_dout(17 downto 0),
      Vn_gnd_V(17 downto 0) => bridge3ph_0_Vn_gnd_V(17 downto 0),
      ap_clk => processing_system7_0_FCLK_CLK1,
      ap_done => NLW_bridge3ph_0_ap_done_UNCONNECTED,
      ap_idle => NLW_bridge3ph_0_ap_idle_UNCONNECTED,
      ap_ready => NLW_bridge3ph_0_ap_ready_UNCONNECTED,
      ap_rst_n => rst_ps7_0_100M_peripheral_aresetn(0),
      ap_start => pmsm_0_ap_done
    );
dc_dc_0: component NV_project_dc_dc_0_0
     port map (
      T1 => three_ph_modulator_0_T1,
      T1_out => dc_dc_0_T1_out,
      T2 => three_ph_modulator_0_T2,
      T2_out => dc_dc_0_T2_out,
      T3 => three_ph_modulator_0_T3,
      T3_out => dc_dc_0_T3_out,
      T4 => three_ph_modulator_0_T4,
      T4_out => dc_dc_0_T4_out,
      T5 => three_ph_modulator_0_T5,
      T5_out => dc_dc_0_T5_out,
      T6 => three_ph_modulator_0_T6,
      T6_out => dc_dc_0_T6_out,
      V_N_gnd(31 downto 0) => grid_bridge3ph_0_V_n_gnd_r(31 downto 0),
      V_N_gnd_out(31 downto 0) => dc_dc_0_V_N_gnd_out(31 downto 0),
      ap_clk => processing_system7_0_FCLK_CLK1,
      ap_done => NLW_dc_dc_0_ap_done_UNCONNECTED,
      ap_idle => NLW_dc_dc_0_ap_idle_UNCONNECTED,
      ap_ready => NLW_dc_dc_0_ap_ready_UNCONNECTED,
      ap_rst_n => rst_ps7_0_100M_peripheral_aresetn(0),
      ap_start => FSM_0_Start1,
      dutty_pot(11 downto 0) => AD1RefComp_0_DATA1(11 downto 0),
      enable => parameter_load_2_0_dc_dc_enable(0)
    );
gain_offset_truncation_1: component NV_project_gain_offset_truncation_1_1
     port map (
      CB1_K1_K3_V(2 downto 0) => xlconcat_1_dout(2 downto 0),
      ap_clk => processing_system7_0_FCLK_CLK1,
      ap_done => NLW_gain_offset_truncation_1_ap_done_UNCONNECTED,
      ap_idle => NLW_gain_offset_truncation_1_ap_idle_UNCONNECTED,
      ap_ready => NLW_gain_offset_truncation_1_ap_ready_UNCONNECTED,
      ap_rst_n => rst_ps7_0_100M_peripheral_aresetn(0),
      ap_start => FSM_0_Start1,
      in_I_LCL_1_a(31 downto 0) => lcl_filter_0_IL1_a_r(31 downto 0),
      in_I_LCL_1_b(31 downto 0) => lcl_filter_0_IL1_b_r(31 downto 0),
      in_I_LCL_1_c(31 downto 0) => lcl_filter_0_IL1_c_r(31 downto 0),
      in_I_LCL_2_a(31 downto 0) => lcl_filter_0_IL2_a_r(31 downto 0),
      in_I_LCL_2_b(31 downto 0) => lcl_filter_0_IL2_b_r(31 downto 0),
      in_I_LCL_2_c(31 downto 0) => lcl_filter_0_IL2_c_r(31 downto 0),
      in_I_pmsm_a(31 downto 0) => xlconstant_5_dout(31 downto 0),
      in_I_pmsm_b(31 downto 0) => xlconstant_5_dout(31 downto 0),
      in_I_pmsm_c(31 downto 0) => xlconstant_5_dout(31 downto 0),
      in_V_dc_bus(31 downto 0) => DCbus_dynamic_0_V_bus(31 downto 0),
      in_V_fem_a(31 downto 0) => xlconstant_5_dout(31 downto 0),
      in_V_fem_b(31 downto 0) => xlconstant_5_dout(31 downto 0),
      in_V_fem_c(31 downto 0) => xlconstant_5_dout(31 downto 0),
      in_V_grid_a(31 downto 0) => grid_0_Grid_a_r(31 downto 0),
      in_V_grid_b(31 downto 0) => grid_0_Grid_b_r(31 downto 0),
      in_V_grid_c(31 downto 0) => grid_0_Grid_c_r(31 downto 0),
      in_Vp_a(31 downto 0) => lcl_filter_0_Vp_a_r(31 downto 0),
      in_Vp_b(31 downto 0) => lcl_filter_0_Vp_b_r(31 downto 0),
      in_Vp_c(31 downto 0) => lcl_filter_0_Vp_c_r(31 downto 0),
      out_I_LCL_1_a(11 downto 0) => gain_offset_truncation_0_out_I_LCL_1_a_V(11 downto 0),
      out_I_LCL_1_b(11 downto 0) => gain_offset_truncation_1_out_I_LCL_1_b_V(11 downto 0),
      out_I_LCL_1_c(11 downto 0) => gain_offset_truncation_1_out_I_LCL_1_c_V(11 downto 0),
      out_I_LCL_2_a(11 downto 0) => gain_offset_truncation_0_out_I_LCL_2_a_V(11 downto 0),
      out_I_LCL_2_b(11 downto 0) => gain_offset_truncation_1_out_I_LCL_2_b_V(11 downto 0),
      out_I_LCL_2_c(11 downto 0) => gain_offset_truncation_1_out_I_LCL_2_c_V(11 downto 0),
      out_I_pmsm_a(11 downto 0) => gain_offset_truncation_0_out_I_pmsm_a_V(11 downto 0),
      out_I_pmsm_b(11 downto 0) => gain_offset_truncation_1_out_I_pmsm_b_V(11 downto 0),
      out_I_pmsm_c(11 downto 0) => gain_offset_truncation_1_out_I_pmsm_c_V(11 downto 0),
      out_V_dc_bus(11 downto 0) => gain_offset_truncation_0_out_V_dc_bus_V(11 downto 0),
      out_V_fem_a(11 downto 0) => gain_offset_truncation_0_out_V_fem_a_V(11 downto 0),
      out_V_fem_b(11 downto 0) => gain_offset_truncation_1_out_V_fem_b_V(11 downto 0),
      out_V_fem_c(11 downto 0) => gain_offset_truncation_1_out_V_fem_c_V(11 downto 0),
      out_V_grid_a(11 downto 0) => gain_offset_truncation_0_out_V_grid_a_V(11 downto 0),
      out_V_grid_b(11 downto 0) => gain_offset_truncation_1_out_V_grid_b_V(11 downto 0),
      out_V_grid_c(11 downto 0) => gain_offset_truncation_1_out_V_grid_c_V(11 downto 0)
    );
gen_referencias_0: component NV_project_gen_referencias_0_0
     port map (
      T1 => gen_referencias_0_T1,
      T2 => gen_referencias_0_T2,
      T3 => gen_referencias_0_T3,
      T4 => gen_referencias_0_T4,
      T5 => gen_referencias_0_T5,
      T6 => gen_referencias_0_T6,
      clk => processing_system7_0_FCLK_CLK1,
      ma(10 downto 0) => xlconstant_3_dout(10 downto 0),
      reset => rst_ps7_0_100M_peripheral_aresetn(0)
    );
grid_0: component NV_project_grid_0_0
     port map (
      Grid_a_r(31 downto 0) => grid_0_Grid_a_r(31 downto 0),
      Grid_b_r(31 downto 0) => grid_0_Grid_b_r(31 downto 0),
      Grid_c_r(31 downto 0) => grid_0_Grid_c_r(31 downto 0),
      I_out_proof(31 downto 0) => grid_0_I_out_proof(31 downto 0),
      ampl_a(31 downto 0) => NV_parameter_load_0_amp_a(31 downto 0),
      ampl_b(31 downto 0) => NV_parameter_load_0_amp_b(31 downto 0),
      ampl_c(31 downto 0) => NV_parameter_load_0_amp_c(31 downto 0),
      ap_clk => processing_system7_0_FCLK_CLK1,
      ap_done => NLW_grid_0_ap_done_UNCONNECTED,
      ap_idle => NLW_grid_0_ap_idle_UNCONNECTED,
      ap_ready => NLW_grid_0_ap_ready_UNCONNECTED,
      ap_rst_n => rst_ps7_0_100M_peripheral_aresetn(0),
      ap_start => FSM_0_Start1,
      counter_limit(31 downto 0) => NV_parameter_load_0_counter_limit(31 downto 0),
      inv_seq => NV_parameter_load_0_inv_seq(0),
      mod_a(17 downto 0) => grid_0_mod_a(17 downto 0),
      mod_b(17 downto 0) => grid_0_mod_b(17 downto 0),
      mod_c(17 downto 0) => grid_0_mod_c(17 downto 0),
      phase_step(31 downto 0) => NV_parameter_load_0_phase_step(31 downto 0),
      phase_step_on => NV_parameter_load_0_phase_step_on(0),
      proof_flag_on => Net6(0)
    );
grid_bridge3ph_0: component NV_project_grid_bridge3ph_0_0
     port map (
      Ia(31 downto 0) => lcl_filter_0_IL1_a_r(31 downto 0),
      Ib(31 downto 0) => lcl_filter_0_IL1_b_r(31 downto 0),
      Ic(31 downto 0) => lcl_filter_0_IL1_c_r(31 downto 0),
      Idc_r(31 downto 0) => grid_bridge3ph_0_Idc_r(31 downto 0),
      T1 => dc_dc_0_T1_out,
      T2 => dc_dc_0_T2_out,
      T3 => dc_dc_0_T3_out,
      T4 => dc_dc_0_T4_out,
      T5 => dc_dc_0_T5_out,
      T6 => dc_dc_0_T6_out,
      V_n_gnd_r(31 downto 0) => grid_bridge3ph_0_V_n_gnd_r(31 downto 0),
      Va_r(31 downto 0) => grid_bridge3ph_0_Va_r(31 downto 0),
      Vb_r(31 downto 0) => grid_bridge3ph_0_Vb_r(31 downto 0),
      Vc_r(31 downto 0) => grid_bridge3ph_0_Vc_r(31 downto 0),
      Vdc(31 downto 0) => DCbus_dynamic_0_V_bus(31 downto 0),
      ap_clk => processing_system7_0_FCLK_CLK1,
      ap_done => NLW_grid_bridge3ph_0_ap_done_UNCONNECTED,
      ap_idle => NLW_grid_bridge3ph_0_ap_idle_UNCONNECTED,
      ap_ready => NLW_grid_bridge3ph_0_ap_ready_UNCONNECTED,
      ap_rst_n => rst_ps7_0_100M_peripheral_aresetn(0),
      ap_start => FSM_0_Start1
    );
lcl_filter_0: component NV_project_lcl_filter_0_0
     port map (
      CB1_K1_K3_V(4 downto 0) => xlconcat_0_dout(4 downto 0),
      IL1_a_r(31 downto 0) => lcl_filter_0_IL1_a_r(31 downto 0),
      IL1_b_r(31 downto 0) => lcl_filter_0_IL1_b_r(31 downto 0),
      IL1_c_r(31 downto 0) => lcl_filter_0_IL1_c_r(31 downto 0),
      IL2_a_r(31 downto 0) => lcl_filter_0_IL2_a_r(31 downto 0),
      IL2_b_r(31 downto 0) => lcl_filter_0_IL2_b_r(31 downto 0),
      IL2_c_r(31 downto 0) => lcl_filter_0_IL2_c_r(31 downto 0),
      Preload(31 downto 0) => parameter_load_2_0_Preload(31 downto 0),
      V1_a(31 downto 0) => grid_bridge3ph_0_Va_r(31 downto 0),
      V1_b(31 downto 0) => grid_bridge3ph_0_Vb_r(31 downto 0),
      V1_c(31 downto 0) => grid_bridge3ph_0_Vc_r(31 downto 0),
      V2_a_s(31 downto 0) => grid_0_Grid_a_r(31 downto 0),
      V2_b_s(31 downto 0) => grid_0_Grid_b_r(31 downto 0),
      V2_c_s(31 downto 0) => grid_0_Grid_c_r(31 downto 0),
      VN_gnd(31 downto 0) => dc_dc_0_V_N_gnd_out(31 downto 0),
      Vp_a_r(31 downto 0) => lcl_filter_0_Vp_a_r(31 downto 0),
      Vp_b_r(31 downto 0) => lcl_filter_0_Vp_b_r(31 downto 0),
      Vp_c_r(31 downto 0) => lcl_filter_0_Vp_c_r(31 downto 0),
      ap_clk => processing_system7_0_FCLK_CLK1,
      ap_done => NLW_lcl_filter_0_ap_done_UNCONNECTED,
      ap_idle => NLW_lcl_filter_0_ap_idle_UNCONNECTED,
      ap_ready => NLW_lcl_filter_0_ap_ready_UNCONNECTED,
      ap_rst_n => rst_ps7_0_100M_peripheral_aresetn(0),
      ap_start => FSM_0_Start1,
      dT_C(31 downto 0) => NV_parameter_load_0_dt_C(31 downto 0),
      dT_L1(31 downto 0) => NV_parameter_load_0_dt_L1(31 downto 0),
      dT_L2(31 downto 0) => NV_parameter_load_0_dt_L2(31 downto 0),
      rC(31 downto 0) => NV_parameter_load_0_rC(31 downto 0),
      rL1(31 downto 0) => parameter_load_2_0_rL1(31 downto 0),
      rL2(31 downto 0) => parameter_load_2_0_rL2(31 downto 0)
    );
parameter_load_2_0: component NV_project_parameter_load_2_0_0
     port map (
      Preload(31 downto 0) => parameter_load_2_0_Preload(31 downto 0),
      dc_dc_enable(0) => parameter_load_2_0_dc_dc_enable(0),
      ena_chop_res(0) => Net6(0),
      rL1(31 downto 0) => parameter_load_2_0_rL1(31 downto 0),
      rL2(31 downto 0) => parameter_load_2_0_rL2(31 downto 0),
      s00_axi_aclk => processing_system7_0_FCLK_CLK1,
      s00_axi_araddr(6 downto 0) => ps7_0_axi_periph_M03_AXI_ARADDR(6 downto 0),
      s00_axi_aresetn => rst_ps7_0_100M_peripheral_aresetn(0),
      s00_axi_arprot(2 downto 0) => ps7_0_axi_periph_M03_AXI_ARPROT(2 downto 0),
      s00_axi_arready => ps7_0_axi_periph_M03_AXI_ARREADY,
      s00_axi_arvalid => ps7_0_axi_periph_M03_AXI_ARVALID,
      s00_axi_awaddr(6 downto 0) => ps7_0_axi_periph_M03_AXI_AWADDR(6 downto 0),
      s00_axi_awprot(2 downto 0) => ps7_0_axi_periph_M03_AXI_AWPROT(2 downto 0),
      s00_axi_awready => ps7_0_axi_periph_M03_AXI_AWREADY,
      s00_axi_awvalid => ps7_0_axi_periph_M03_AXI_AWVALID,
      s00_axi_bready => ps7_0_axi_periph_M03_AXI_BREADY,
      s00_axi_bresp(1 downto 0) => ps7_0_axi_periph_M03_AXI_BRESP(1 downto 0),
      s00_axi_bvalid => ps7_0_axi_periph_M03_AXI_BVALID,
      s00_axi_rdata(31 downto 0) => ps7_0_axi_periph_M03_AXI_RDATA(31 downto 0),
      s00_axi_rready => ps7_0_axi_periph_M03_AXI_RREADY,
      s00_axi_rresp(1 downto 0) => ps7_0_axi_periph_M03_AXI_RRESP(1 downto 0),
      s00_axi_rvalid => ps7_0_axi_periph_M03_AXI_RVALID,
      s00_axi_wdata(31 downto 0) => ps7_0_axi_periph_M03_AXI_WDATA(31 downto 0),
      s00_axi_wready => ps7_0_axi_periph_M03_AXI_WREADY,
      s00_axi_wstrb(3 downto 0) => ps7_0_axi_periph_M03_AXI_WSTRB(3 downto 0),
      s00_axi_wvalid => ps7_0_axi_periph_M03_AXI_WVALID,
      sp10(31 downto 0) => NLW_parameter_load_2_0_sp10_UNCONNECTED(31 downto 0),
      sp11(31 downto 0) => NLW_parameter_load_2_0_sp11_UNCONNECTED(31 downto 0),
      sp12(31 downto 0) => NLW_parameter_load_2_0_sp12_UNCONNECTED(31 downto 0),
      sp13(31 downto 0) => NLW_parameter_load_2_0_sp13_UNCONNECTED(31 downto 0),
      sp14(31 downto 0) => NLW_parameter_load_2_0_sp14_UNCONNECTED(31 downto 0),
      sp15(31 downto 0) => NLW_parameter_load_2_0_sp15_UNCONNECTED(31 downto 0),
      sp16(31 downto 0) => NLW_parameter_load_2_0_sp16_UNCONNECTED(31 downto 0),
      sp17(31 downto 0) => NLW_parameter_load_2_0_sp17_UNCONNECTED(31 downto 0),
      sp18(31 downto 0) => NLW_parameter_load_2_0_sp18_UNCONNECTED(31 downto 0),
      sp19(31 downto 0) => NLW_parameter_load_2_0_sp19_UNCONNECTED(31 downto 0),
      sp20(31 downto 0) => NLW_parameter_load_2_0_sp20_UNCONNECTED(31 downto 0),
      sp21(31 downto 0) => NLW_parameter_load_2_0_sp21_UNCONNECTED(31 downto 0),
      sp22(31 downto 0) => NLW_parameter_load_2_0_sp22_UNCONNECTED(31 downto 0),
      sp23(31 downto 0) => NLW_parameter_load_2_0_sp23_UNCONNECTED(31 downto 0),
      sp24(31 downto 0) => NLW_parameter_load_2_0_sp24_UNCONNECTED(31 downto 0),
      sp25(31 downto 0) => NLW_parameter_load_2_0_sp25_UNCONNECTED(31 downto 0),
      sp26(31 downto 0) => NLW_parameter_load_2_0_sp26_UNCONNECTED(31 downto 0),
      sp27(31 downto 0) => NLW_parameter_load_2_0_sp27_UNCONNECTED(31 downto 0),
      sp28(31 downto 0) => NLW_parameter_load_2_0_sp28_UNCONNECTED(31 downto 0),
      sp29(31 downto 0) => NLW_parameter_load_2_0_sp29_UNCONNECTED(31 downto 0),
      sp5(31 downto 0) => NLW_parameter_load_2_0_sp5_UNCONNECTED(31 downto 0),
      sp6(31 downto 0) => NLW_parameter_load_2_0_sp6_UNCONNECTED(31 downto 0),
      sp7(31 downto 0) => NLW_parameter_load_2_0_sp7_UNCONNECTED(31 downto 0),
      sp8(31 downto 0) => NLW_parameter_load_2_0_sp8_UNCONNECTED(31 downto 0),
      sp9(31 downto 0) => NLW_parameter_load_2_0_sp9_UNCONNECTED(31 downto 0)
    );
pmsm_0: component NV_project_pmsm_0_0
     port map (
      Fem_a_r_V(24 downto 0) => NLW_pmsm_0_Fem_a_r_V_UNCONNECTED(24 downto 0),
      Fem_b_r_V(24 downto 0) => NLW_pmsm_0_Fem_b_r_V_UNCONNECTED(24 downto 0),
      Fem_c_r_V(24 downto 0) => NLW_pmsm_0_Fem_c_r_V_UNCONNECTED(24 downto 0),
      Is_a_V(24 downto 0) => pmsm_0_Is_a_V(24 downto 0),
      Is_b_V(24 downto 0) => pmsm_0_Is_b_V(24 downto 0),
      Is_c_V(24 downto 0) => pmsm_0_Is_c_V(24 downto 0),
      SG1_K2 => xlconstant_2_dout(0),
      Tem_V(26 downto 0) => pmsm_0_Tem_V(26 downto 0),
      VN_gnd_V(17 downto 0) => bridge3ph_0_Vn_gnd_V(17 downto 0),
      Vs_a_V(24 downto 0) => bridge3ph_0_Va_V(24 downto 0),
      Vs_b_V(24 downto 0) => bridge3ph_0_Vb_V(24 downto 0),
      Vs_c_V(24 downto 0) => bridge3ph_0_Vc_V(24 downto 0),
      Wn_o_V(24 downto 0) => wind_turb_0_Wn_V(24 downto 0),
      ap_clk => processing_system7_0_FCLK_CLK1,
      ap_done => pmsm_0_ap_done,
      ap_idle => NLW_pmsm_0_ap_idle_UNCONNECTED,
      ap_ready => NLW_pmsm_0_ap_ready_UNCONNECTED,
      ap_rst_n => rst_ps7_0_100M_peripheral_aresetn(0),
      ap_start => wind_turb_0_ap_done
    );
processing_system7_0: component NV_project_processing_system7_0_1
     port map (
      DDR_Addr(14 downto 0) => DDR_0_addr(14 downto 0),
      DDR_BankAddr(2 downto 0) => DDR_0_ba(2 downto 0),
      DDR_CAS_n => DDR_0_cas_n,
      DDR_CKE => DDR_0_cke,
      DDR_CS_n => DDR_0_cs_n,
      DDR_Clk => DDR_0_ck_p,
      DDR_Clk_n => DDR_0_ck_n,
      DDR_DM(3 downto 0) => DDR_0_dm(3 downto 0),
      DDR_DQ(31 downto 0) => DDR_0_dq(31 downto 0),
      DDR_DQS(3 downto 0) => DDR_0_dqs_p(3 downto 0),
      DDR_DQS_n(3 downto 0) => DDR_0_dqs_n(3 downto 0),
      DDR_DRSTB => DDR_0_reset_n,
      DDR_ODT => DDR_0_odt,
      DDR_RAS_n => DDR_0_ras_n,
      DDR_VRN => FIXED_IO_0_ddr_vrn,
      DDR_VRP => FIXED_IO_0_ddr_vrp,
      DDR_WEB => DDR_0_we_n,
      FCLK_CLK0 => processing_system7_0_FCLK_CLK1,
      FCLK_CLK1 => processing_system7_0_FCLK_CLK2,
      FCLK_CLK2 => processing_system7_0_FCLK_CLK3,
      FCLK_CLK3 => NLW_processing_system7_0_FCLK_CLK3_UNCONNECTED,
      FCLK_RESET0_N => processing_system7_0_FCLK_RESET0_N,
      IRQ_F2P(0) => axi_gpio_0_ip2intc_irpt,
      MIO(53 downto 0) => FIXED_IO_0_mio(53 downto 0),
      M_AXI_GP0_ACLK => processing_system7_0_FCLK_CLK1,
      M_AXI_GP0_ARADDR(31 downto 0) => processing_system7_0_M_AXI_GP0_ARADDR(31 downto 0),
      M_AXI_GP0_ARBURST(1 downto 0) => processing_system7_0_M_AXI_GP0_ARBURST(1 downto 0),
      M_AXI_GP0_ARCACHE(3 downto 0) => processing_system7_0_M_AXI_GP0_ARCACHE(3 downto 0),
      M_AXI_GP0_ARID(11 downto 0) => processing_system7_0_M_AXI_GP0_ARID(11 downto 0),
      M_AXI_GP0_ARLEN(3 downto 0) => processing_system7_0_M_AXI_GP0_ARLEN(3 downto 0),
      M_AXI_GP0_ARLOCK(1 downto 0) => processing_system7_0_M_AXI_GP0_ARLOCK(1 downto 0),
      M_AXI_GP0_ARPROT(2 downto 0) => processing_system7_0_M_AXI_GP0_ARPROT(2 downto 0),
      M_AXI_GP0_ARQOS(3 downto 0) => processing_system7_0_M_AXI_GP0_ARQOS(3 downto 0),
      M_AXI_GP0_ARREADY => processing_system7_0_M_AXI_GP0_ARREADY,
      M_AXI_GP0_ARSIZE(2 downto 0) => processing_system7_0_M_AXI_GP0_ARSIZE(2 downto 0),
      M_AXI_GP0_ARVALID => processing_system7_0_M_AXI_GP0_ARVALID,
      M_AXI_GP0_AWADDR(31 downto 0) => processing_system7_0_M_AXI_GP0_AWADDR(31 downto 0),
      M_AXI_GP0_AWBURST(1 downto 0) => processing_system7_0_M_AXI_GP0_AWBURST(1 downto 0),
      M_AXI_GP0_AWCACHE(3 downto 0) => processing_system7_0_M_AXI_GP0_AWCACHE(3 downto 0),
      M_AXI_GP0_AWID(11 downto 0) => processing_system7_0_M_AXI_GP0_AWID(11 downto 0),
      M_AXI_GP0_AWLEN(3 downto 0) => processing_system7_0_M_AXI_GP0_AWLEN(3 downto 0),
      M_AXI_GP0_AWLOCK(1 downto 0) => processing_system7_0_M_AXI_GP0_AWLOCK(1 downto 0),
      M_AXI_GP0_AWPROT(2 downto 0) => processing_system7_0_M_AXI_GP0_AWPROT(2 downto 0),
      M_AXI_GP0_AWQOS(3 downto 0) => processing_system7_0_M_AXI_GP0_AWQOS(3 downto 0),
      M_AXI_GP0_AWREADY => processing_system7_0_M_AXI_GP0_AWREADY,
      M_AXI_GP0_AWSIZE(2 downto 0) => processing_system7_0_M_AXI_GP0_AWSIZE(2 downto 0),
      M_AXI_GP0_AWVALID => processing_system7_0_M_AXI_GP0_AWVALID,
      M_AXI_GP0_BID(11 downto 0) => processing_system7_0_M_AXI_GP0_BID(11 downto 0),
      M_AXI_GP0_BREADY => processing_system7_0_M_AXI_GP0_BREADY,
      M_AXI_GP0_BRESP(1 downto 0) => processing_system7_0_M_AXI_GP0_BRESP(1 downto 0),
      M_AXI_GP0_BVALID => processing_system7_0_M_AXI_GP0_BVALID,
      M_AXI_GP0_RDATA(31 downto 0) => processing_system7_0_M_AXI_GP0_RDATA(31 downto 0),
      M_AXI_GP0_RID(11 downto 0) => processing_system7_0_M_AXI_GP0_RID(11 downto 0),
      M_AXI_GP0_RLAST => processing_system7_0_M_AXI_GP0_RLAST,
      M_AXI_GP0_RREADY => processing_system7_0_M_AXI_GP0_RREADY,
      M_AXI_GP0_RRESP(1 downto 0) => processing_system7_0_M_AXI_GP0_RRESP(1 downto 0),
      M_AXI_GP0_RVALID => processing_system7_0_M_AXI_GP0_RVALID,
      M_AXI_GP0_WDATA(31 downto 0) => processing_system7_0_M_AXI_GP0_WDATA(31 downto 0),
      M_AXI_GP0_WID(11 downto 0) => processing_system7_0_M_AXI_GP0_WID(11 downto 0),
      M_AXI_GP0_WLAST => processing_system7_0_M_AXI_GP0_WLAST,
      M_AXI_GP0_WREADY => processing_system7_0_M_AXI_GP0_WREADY,
      M_AXI_GP0_WSTRB(3 downto 0) => processing_system7_0_M_AXI_GP0_WSTRB(3 downto 0),
      M_AXI_GP0_WVALID => processing_system7_0_M_AXI_GP0_WVALID,
      PS_CLK => FIXED_IO_0_ps_clk,
      PS_PORB => FIXED_IO_0_ps_porb,
      PS_SRSTB => FIXED_IO_0_ps_srstb,
      TTC0_WAVE0_OUT => NLW_processing_system7_0_TTC0_WAVE0_OUT_UNCONNECTED,
      TTC0_WAVE1_OUT => NLW_processing_system7_0_TTC0_WAVE1_OUT_UNCONNECTED,
      TTC0_WAVE2_OUT => NLW_processing_system7_0_TTC0_WAVE2_OUT_UNCONNECTED,
      USB0_PORT_INDCTL(1 downto 0) => NLW_processing_system7_0_USB0_PORT_INDCTL_UNCONNECTED(1 downto 0),
      USB0_VBUS_PWRFAULT => '0',
      USB0_VBUS_PWRSELECT => NLW_processing_system7_0_USB0_VBUS_PWRSELECT_UNCONNECTED
    );
ps7_0_axi_periph: entity work.NV_project_ps7_0_axi_periph_0
     port map (
      ACLK => processing_system7_0_FCLK_CLK1,
      ARESETN => rst_ps7_0_100M_interconnect_aresetn(0),
      M00_ACLK => processing_system7_0_FCLK_CLK1,
      M00_ARESETN => rst_ps7_0_100M_peripheral_aresetn(0),
      M00_AXI_araddr(31 downto 0) => ps7_0_axi_periph_M00_AXI_ARADDR(31 downto 0),
      M00_AXI_arready(0) => ps7_0_axi_periph_M00_AXI_ARREADY,
      M00_AXI_arvalid(0) => ps7_0_axi_periph_M00_AXI_ARVALID(0),
      M00_AXI_awaddr(31 downto 0) => ps7_0_axi_periph_M00_AXI_AWADDR(31 downto 0),
      M00_AXI_awready(0) => ps7_0_axi_periph_M00_AXI_AWREADY,
      M00_AXI_awvalid(0) => ps7_0_axi_periph_M00_AXI_AWVALID(0),
      M00_AXI_bready(0) => ps7_0_axi_periph_M00_AXI_BREADY(0),
      M00_AXI_bresp(1 downto 0) => ps7_0_axi_periph_M00_AXI_BRESP(1 downto 0),
      M00_AXI_bvalid(0) => ps7_0_axi_periph_M00_AXI_BVALID,
      M00_AXI_rdata(31 downto 0) => ps7_0_axi_periph_M00_AXI_RDATA(31 downto 0),
      M00_AXI_rready(0) => ps7_0_axi_periph_M00_AXI_RREADY(0),
      M00_AXI_rresp(1 downto 0) => ps7_0_axi_periph_M00_AXI_RRESP(1 downto 0),
      M00_AXI_rvalid(0) => ps7_0_axi_periph_M00_AXI_RVALID,
      M00_AXI_wdata(31 downto 0) => ps7_0_axi_periph_M00_AXI_WDATA(31 downto 0),
      M00_AXI_wready(0) => ps7_0_axi_periph_M00_AXI_WREADY,
      M00_AXI_wstrb(3 downto 0) => ps7_0_axi_periph_M00_AXI_WSTRB(3 downto 0),
      M00_AXI_wvalid(0) => ps7_0_axi_periph_M00_AXI_WVALID(0),
      M01_ACLK => processing_system7_0_FCLK_CLK1,
      M01_ARESETN => rst_ps7_0_100M_peripheral_aresetn(0),
      M01_AXI_araddr(31 downto 0) => ps7_0_axi_periph_M01_AXI_ARADDR(31 downto 0),
      M01_AXI_arprot(2 downto 0) => ps7_0_axi_periph_M01_AXI_ARPROT(2 downto 0),
      M01_AXI_arready => ps7_0_axi_periph_M01_AXI_ARREADY,
      M01_AXI_arvalid => ps7_0_axi_periph_M01_AXI_ARVALID,
      M01_AXI_awaddr(31 downto 0) => ps7_0_axi_periph_M01_AXI_AWADDR(31 downto 0),
      M01_AXI_awprot(2 downto 0) => ps7_0_axi_periph_M01_AXI_AWPROT(2 downto 0),
      M01_AXI_awready => ps7_0_axi_periph_M01_AXI_AWREADY,
      M01_AXI_awvalid => ps7_0_axi_periph_M01_AXI_AWVALID,
      M01_AXI_bready => ps7_0_axi_periph_M01_AXI_BREADY,
      M01_AXI_bresp(1 downto 0) => ps7_0_axi_periph_M01_AXI_BRESP(1 downto 0),
      M01_AXI_bvalid => ps7_0_axi_periph_M01_AXI_BVALID,
      M01_AXI_rdata(31 downto 0) => ps7_0_axi_periph_M01_AXI_RDATA(31 downto 0),
      M01_AXI_rready => ps7_0_axi_periph_M01_AXI_RREADY,
      M01_AXI_rresp(1 downto 0) => ps7_0_axi_periph_M01_AXI_RRESP(1 downto 0),
      M01_AXI_rvalid => ps7_0_axi_periph_M01_AXI_RVALID,
      M01_AXI_wdata(31 downto 0) => ps7_0_axi_periph_M01_AXI_WDATA(31 downto 0),
      M01_AXI_wready => ps7_0_axi_periph_M01_AXI_WREADY,
      M01_AXI_wstrb(3 downto 0) => ps7_0_axi_periph_M01_AXI_WSTRB(3 downto 0),
      M01_AXI_wvalid => ps7_0_axi_periph_M01_AXI_WVALID,
      M02_ACLK => processing_system7_0_FCLK_CLK1,
      M02_ARESETN => rst_ps7_0_100M_peripheral_aresetn(0),
      M02_AXI_araddr(31 downto 0) => ps7_0_axi_periph_M02_AXI_ARADDR(31 downto 0),
      M02_AXI_arprot(2 downto 0) => ps7_0_axi_periph_M02_AXI_ARPROT(2 downto 0),
      M02_AXI_arready => ps7_0_axi_periph_M02_AXI_ARREADY,
      M02_AXI_arvalid => ps7_0_axi_periph_M02_AXI_ARVALID,
      M02_AXI_awaddr(31 downto 0) => ps7_0_axi_periph_M02_AXI_AWADDR(31 downto 0),
      M02_AXI_awprot(2 downto 0) => ps7_0_axi_periph_M02_AXI_AWPROT(2 downto 0),
      M02_AXI_awready => ps7_0_axi_periph_M02_AXI_AWREADY,
      M02_AXI_awvalid => ps7_0_axi_periph_M02_AXI_AWVALID,
      M02_AXI_bready => ps7_0_axi_periph_M02_AXI_BREADY,
      M02_AXI_bresp(1 downto 0) => ps7_0_axi_periph_M02_AXI_BRESP(1 downto 0),
      M02_AXI_bvalid => ps7_0_axi_periph_M02_AXI_BVALID,
      M02_AXI_rdata(31 downto 0) => ps7_0_axi_periph_M02_AXI_RDATA(31 downto 0),
      M02_AXI_rready => ps7_0_axi_periph_M02_AXI_RREADY,
      M02_AXI_rresp(1 downto 0) => ps7_0_axi_periph_M02_AXI_RRESP(1 downto 0),
      M02_AXI_rvalid => ps7_0_axi_periph_M02_AXI_RVALID,
      M02_AXI_wdata(31 downto 0) => ps7_0_axi_periph_M02_AXI_WDATA(31 downto 0),
      M02_AXI_wready => ps7_0_axi_periph_M02_AXI_WREADY,
      M02_AXI_wstrb(3 downto 0) => ps7_0_axi_periph_M02_AXI_WSTRB(3 downto 0),
      M02_AXI_wvalid => ps7_0_axi_periph_M02_AXI_WVALID,
      M03_ACLK => processing_system7_0_FCLK_CLK1,
      M03_ARESETN => rst_ps7_0_100M_peripheral_aresetn(0),
      M03_AXI_araddr(31 downto 0) => ps7_0_axi_periph_M03_AXI_ARADDR(31 downto 0),
      M03_AXI_arprot(2 downto 0) => ps7_0_axi_periph_M03_AXI_ARPROT(2 downto 0),
      M03_AXI_arready => ps7_0_axi_periph_M03_AXI_ARREADY,
      M03_AXI_arvalid => ps7_0_axi_periph_M03_AXI_ARVALID,
      M03_AXI_awaddr(31 downto 0) => ps7_0_axi_periph_M03_AXI_AWADDR(31 downto 0),
      M03_AXI_awprot(2 downto 0) => ps7_0_axi_periph_M03_AXI_AWPROT(2 downto 0),
      M03_AXI_awready => ps7_0_axi_periph_M03_AXI_AWREADY,
      M03_AXI_awvalid => ps7_0_axi_periph_M03_AXI_AWVALID,
      M03_AXI_bready => ps7_0_axi_periph_M03_AXI_BREADY,
      M03_AXI_bresp(1 downto 0) => ps7_0_axi_periph_M03_AXI_BRESP(1 downto 0),
      M03_AXI_bvalid => ps7_0_axi_periph_M03_AXI_BVALID,
      M03_AXI_rdata(31 downto 0) => ps7_0_axi_periph_M03_AXI_RDATA(31 downto 0),
      M03_AXI_rready => ps7_0_axi_periph_M03_AXI_RREADY,
      M03_AXI_rresp(1 downto 0) => ps7_0_axi_periph_M03_AXI_RRESP(1 downto 0),
      M03_AXI_rvalid => ps7_0_axi_periph_M03_AXI_RVALID,
      M03_AXI_wdata(31 downto 0) => ps7_0_axi_periph_M03_AXI_WDATA(31 downto 0),
      M03_AXI_wready => ps7_0_axi_periph_M03_AXI_WREADY,
      M03_AXI_wstrb(3 downto 0) => ps7_0_axi_periph_M03_AXI_WSTRB(3 downto 0),
      M03_AXI_wvalid => ps7_0_axi_periph_M03_AXI_WVALID,
      M04_ACLK => processing_system7_0_FCLK_CLK1,
      M04_ARESETN => rst_ps7_0_100M_peripheral_aresetn(0),
      M04_AXI_araddr => NLW_ps7_0_axi_periph_M04_AXI_araddr_UNCONNECTED,
      M04_AXI_arprot => NLW_ps7_0_axi_periph_M04_AXI_arprot_UNCONNECTED,
      M04_AXI_arready => '0',
      M04_AXI_arvalid => NLW_ps7_0_axi_periph_M04_AXI_arvalid_UNCONNECTED,
      M04_AXI_awaddr => NLW_ps7_0_axi_periph_M04_AXI_awaddr_UNCONNECTED,
      M04_AXI_awprot => NLW_ps7_0_axi_periph_M04_AXI_awprot_UNCONNECTED,
      M04_AXI_awready => '0',
      M04_AXI_awvalid => NLW_ps7_0_axi_periph_M04_AXI_awvalid_UNCONNECTED,
      M04_AXI_bready => NLW_ps7_0_axi_periph_M04_AXI_bready_UNCONNECTED,
      M04_AXI_bresp => '0',
      M04_AXI_bvalid => '0',
      M04_AXI_rdata => '0',
      M04_AXI_rready => NLW_ps7_0_axi_periph_M04_AXI_rready_UNCONNECTED,
      M04_AXI_rresp => '0',
      M04_AXI_rvalid => '0',
      M04_AXI_wdata => NLW_ps7_0_axi_periph_M04_AXI_wdata_UNCONNECTED,
      M04_AXI_wready => '0',
      M04_AXI_wstrb => NLW_ps7_0_axi_periph_M04_AXI_wstrb_UNCONNECTED,
      M04_AXI_wvalid => NLW_ps7_0_axi_periph_M04_AXI_wvalid_UNCONNECTED,
      S00_ACLK => processing_system7_0_FCLK_CLK1,
      S00_ARESETN => rst_ps7_0_100M_peripheral_aresetn(0),
      S00_AXI_araddr(31 downto 0) => processing_system7_0_M_AXI_GP0_ARADDR(31 downto 0),
      S00_AXI_arburst(1 downto 0) => processing_system7_0_M_AXI_GP0_ARBURST(1 downto 0),
      S00_AXI_arcache(3 downto 0) => processing_system7_0_M_AXI_GP0_ARCACHE(3 downto 0),
      S00_AXI_arid(11 downto 0) => processing_system7_0_M_AXI_GP0_ARID(11 downto 0),
      S00_AXI_arlen(3 downto 0) => processing_system7_0_M_AXI_GP0_ARLEN(3 downto 0),
      S00_AXI_arlock(1 downto 0) => processing_system7_0_M_AXI_GP0_ARLOCK(1 downto 0),
      S00_AXI_arprot(2 downto 0) => processing_system7_0_M_AXI_GP0_ARPROT(2 downto 0),
      S00_AXI_arqos(3 downto 0) => processing_system7_0_M_AXI_GP0_ARQOS(3 downto 0),
      S00_AXI_arready => processing_system7_0_M_AXI_GP0_ARREADY,
      S00_AXI_arsize(2 downto 0) => processing_system7_0_M_AXI_GP0_ARSIZE(2 downto 0),
      S00_AXI_arvalid => processing_system7_0_M_AXI_GP0_ARVALID,
      S00_AXI_awaddr(31 downto 0) => processing_system7_0_M_AXI_GP0_AWADDR(31 downto 0),
      S00_AXI_awburst(1 downto 0) => processing_system7_0_M_AXI_GP0_AWBURST(1 downto 0),
      S00_AXI_awcache(3 downto 0) => processing_system7_0_M_AXI_GP0_AWCACHE(3 downto 0),
      S00_AXI_awid(11 downto 0) => processing_system7_0_M_AXI_GP0_AWID(11 downto 0),
      S00_AXI_awlen(3 downto 0) => processing_system7_0_M_AXI_GP0_AWLEN(3 downto 0),
      S00_AXI_awlock(1 downto 0) => processing_system7_0_M_AXI_GP0_AWLOCK(1 downto 0),
      S00_AXI_awprot(2 downto 0) => processing_system7_0_M_AXI_GP0_AWPROT(2 downto 0),
      S00_AXI_awqos(3 downto 0) => processing_system7_0_M_AXI_GP0_AWQOS(3 downto 0),
      S00_AXI_awready => processing_system7_0_M_AXI_GP0_AWREADY,
      S00_AXI_awsize(2 downto 0) => processing_system7_0_M_AXI_GP0_AWSIZE(2 downto 0),
      S00_AXI_awvalid => processing_system7_0_M_AXI_GP0_AWVALID,
      S00_AXI_bid(11 downto 0) => processing_system7_0_M_AXI_GP0_BID(11 downto 0),
      S00_AXI_bready => processing_system7_0_M_AXI_GP0_BREADY,
      S00_AXI_bresp(1 downto 0) => processing_system7_0_M_AXI_GP0_BRESP(1 downto 0),
      S00_AXI_bvalid => processing_system7_0_M_AXI_GP0_BVALID,
      S00_AXI_rdata(31 downto 0) => processing_system7_0_M_AXI_GP0_RDATA(31 downto 0),
      S00_AXI_rid(11 downto 0) => processing_system7_0_M_AXI_GP0_RID(11 downto 0),
      S00_AXI_rlast => processing_system7_0_M_AXI_GP0_RLAST,
      S00_AXI_rready => processing_system7_0_M_AXI_GP0_RREADY,
      S00_AXI_rresp(1 downto 0) => processing_system7_0_M_AXI_GP0_RRESP(1 downto 0),
      S00_AXI_rvalid => processing_system7_0_M_AXI_GP0_RVALID,
      S00_AXI_wdata(31 downto 0) => processing_system7_0_M_AXI_GP0_WDATA(31 downto 0),
      S00_AXI_wid(11 downto 0) => processing_system7_0_M_AXI_GP0_WID(11 downto 0),
      S00_AXI_wlast => processing_system7_0_M_AXI_GP0_WLAST,
      S00_AXI_wready => processing_system7_0_M_AXI_GP0_WREADY,
      S00_AXI_wstrb(3 downto 0) => processing_system7_0_M_AXI_GP0_WSTRB(3 downto 0),
      S00_AXI_wvalid => processing_system7_0_M_AXI_GP0_WVALID
    );
rst_ps7_0_100M: component NV_project_rst_ps7_0_100M_0
     port map (
      aux_reset_in => '1',
      bus_struct_reset(0) => NLW_rst_ps7_0_100M_bus_struct_reset_UNCONNECTED(0),
      dcm_locked => '1',
      ext_reset_in => processing_system7_0_FCLK_RESET0_N,
      interconnect_aresetn(0) => rst_ps7_0_100M_interconnect_aresetn(0),
      mb_debug_sys_rst => '0',
      mb_reset => NLW_rst_ps7_0_100M_mb_reset_UNCONNECTED,
      peripheral_aresetn(0) => rst_ps7_0_100M_peripheral_aresetn(0),
      peripheral_reset(0) => NLW_rst_ps7_0_100M_peripheral_reset_UNCONNECTED(0),
      slowest_sync_clk => processing_system7_0_FCLK_CLK1
    );
rst_ps7_0_10M: component NV_project_rst_ps7_0_10M_0
     port map (
      aux_reset_in => '1',
      bus_struct_reset(0) => NLW_rst_ps7_0_10M_bus_struct_reset_UNCONNECTED(0),
      dcm_locked => '1',
      ext_reset_in => processing_system7_0_FCLK_RESET0_N,
      interconnect_aresetn(0) => NLW_rst_ps7_0_10M_interconnect_aresetn_UNCONNECTED(0),
      mb_debug_sys_rst => '0',
      mb_reset => NLW_rst_ps7_0_10M_mb_reset_UNCONNECTED,
      peripheral_aresetn(0) => rst_ps7_0_10M_peripheral_aresetn(0),
      peripheral_reset(0) => NLW_rst_ps7_0_10M_peripheral_reset_UNCONNECTED(0),
      slowest_sync_clk => processing_system7_0_FCLK_CLK3
    );
rst_ps7_0_50M: component NV_project_rst_ps7_0_50M_2
     port map (
      aux_reset_in => '1',
      bus_struct_reset(0) => NLW_rst_ps7_0_50M_bus_struct_reset_UNCONNECTED(0),
      dcm_locked => '1',
      ext_reset_in => processing_system7_0_FCLK_RESET0_N,
      interconnect_aresetn(0) => NLW_rst_ps7_0_50M_interconnect_aresetn_UNCONNECTED(0),
      mb_debug_sys_rst => '0',
      mb_reset => NLW_rst_ps7_0_50M_mb_reset_UNCONNECTED,
      peripheral_aresetn(0) => rst_ps7_0_50M_peripheral_aresetn(0),
      peripheral_reset(0) => NLW_rst_ps7_0_50M_peripheral_reset_UNCONNECTED(0),
      slowest_sync_clk => processing_system7_0_FCLK_CLK2
    );
serial_interrupt_0: component NV_project_serial_interrupt_0_0
     port map (
      CLK => processing_system7_0_FCLK_CLK1,
      Console_1s_interrupt(0) => serial_interrupt_0_Console_1s_interrupt(0),
      RST => rst_ps7_0_100M_peripheral_aresetn(0)
    );
start_200ns_0: component NV_project_start_200ns_0_0
     port map (
      CLK => processing_system7_0_FCLK_CLK1,
      RST => rst_ps7_0_100M_peripheral_aresetn(0),
      start_200n => FSM_0_Start1
    );
start_peripheral_0: component NV_project_start_peripheral_0_0
     port map (
      CLK => processing_system7_0_FCLK_CLK1,
      RST => rst_ps7_0_100M_peripheral_aresetn(0),
      Start_ADC => start_peripheral_0_Start_ADC,
      Start_DAC => NLW_start_peripheral_0_Start_DAC_UNCONNECTED,
      Start_inp_expa => start_peripheral_0_Start_inp_expa,
      Start_out_expa => start_peripheral_0_Start_out_expa,
      Start_pot_dig => Net1,
      start_grid => NLW_start_peripheral_0_start_grid_UNCONNECTED
    );
system_ila_0: component NV_project_system_ila_0_0
     port map (
      clk => processing_system7_0_FCLK_CLK1,
      probe0(0) => NV_parameter_load_0_mode_igbt_input(0),
      probe1(0) => NV_parameter_load_0_sp1(0),
      probe10(31 downto 0) => NV_parameter_load_0_amp_c(31 downto 0),
      probe11(0) => NV_parameter_load_0_inv_seq(0),
      probe12(31 downto 0) => NV_parameter_load_0_dt_L1(31 downto 0),
      probe13(31 downto 0) => NV_parameter_load_0_dt_L2(31 downto 0),
      probe14(31 downto 0) => NV_parameter_load_0_rC(31 downto 0),
      probe15(31 downto 0) => parameter_load_2_0_rL2(31 downto 0),
      probe16(31 downto 0) => parameter_load_2_0_Preload(31 downto 0),
      probe17(0) => Net6(0),
      probe18(31 downto 0) => parameter_load_2_0_rL1(31 downto 0),
      probe19(31 downto 0) => NV_parameter_load_0_dt_C(31 downto 0),
      probe2(31 downto 0) => NV_parameter_load_0_t_step_C(31 downto 0),
      probe20(0) => parameter_load_2_0_dc_dc_enable(0),
      probe21(0) => dc_dc_0_T1_out,
      probe22(0) => dc_dc_0_T2_out,
      probe23(0) => dc_dc_0_T3_out,
      probe24(0) => dc_dc_0_T4_out,
      probe25(0) => dc_dc_0_T5_out,
      probe26(0) => dc_dc_0_T6_out,
      probe3(0) => NV_parameter_load_0_DC_bus_fived(0),
      probe4(31 downto 0) => NV_parameter_load_0_DC_bus_fixed_volt(31 downto 0),
      probe5(0) => NV_parameter_load_0_phase_step_on(0),
      probe6(31 downto 0) => NV_parameter_load_0_phase_step(31 downto 0),
      probe7(31 downto 0) => NV_parameter_load_0_counter_limit(31 downto 0),
      probe8(31 downto 0) => NV_parameter_load_0_amp_a(31 downto 0),
      probe9(31 downto 0) => NV_parameter_load_0_amp_b(31 downto 0)
    );
three_ph_modulator_0: component NV_project_three_ph_modulator_0_0
     port map (
      T1 => three_ph_modulator_0_T1,
      T2 => three_ph_modulator_0_T2,
      T3 => three_ph_modulator_0_T3,
      T4 => three_ph_modulator_0_T4,
      T5 => three_ph_modulator_0_T5,
      T6 => three_ph_modulator_0_T6,
      clk => processing_system7_0_FCLK_CLK1,
      enable => Net6(0),
      in_T1 => IGBT_input_selector_0_grid_T1,
      in_T2 => IGBT_input_selector_0_grid_T2,
      in_T3 => IGBT_input_selector_0_grid_T3,
      in_T4 => IGBT_input_selector_0_grid_T4,
      in_T5 => IGBT_input_selector_0_grid_T5,
      in_T6 => IGBT_input_selector_0_grid_T6,
      mod_a(17 downto 0) => grid_0_mod_a(17 downto 0),
      mod_b(17 downto 0) => grid_0_mod_b(17 downto 0),
      mod_c(17 downto 0) => grid_0_mod_c(17 downto 0),
      reset => rst_ps7_0_100M_peripheral_aresetn(0)
    );
wind_turb_0: component NV_project_wind_turb_0_0
     port map (
      Pi_V(20 downto 0) => xlconstant_4_dout(20 downto 0),
      Tem_V(26 downto 0) => pmsm_0_Tem_V(26 downto 0),
      Wn_V(24 downto 0) => wind_turb_0_Wn_V(24 downto 0),
      ap_clk => processing_system7_0_FCLK_CLK1,
      ap_done => wind_turb_0_ap_done,
      ap_idle => NLW_wind_turb_0_ap_idle_UNCONNECTED,
      ap_ready => NLW_wind_turb_0_ap_ready_UNCONNECTED,
      ap_rst_n => rst_ps7_0_100M_peripheral_aresetn(0),
      ap_start => FSM_0_Start
    );
xlconcat_0: component NV_project_xlconcat_0_0
     port map (
      In0(2 downto 0) => xlconcat_1_dout(2 downto 0),
      In1(1 downto 0) => xlconstant_19_dout(1 downto 0),
      dout(4 downto 0) => xlconcat_0_dout(4 downto 0)
    );
xlconcat_1: component NV_project_xlconcat_1_0
     port map (
      In0(0) => De_Multiplexer_8b_0_data_out_1,
      In1(0) => De_Multiplexer_8b_0_data_out_0,
      In2(0) => De_Multiplexer_8b_0_NOT_data_out_7,
      dout(2 downto 0) => xlconcat_1_dout(2 downto 0)
    );
xlconcat_2: component NV_project_xlconcat_2_0
     port map (
      In0(0) => Net3(0),
      In1(0) => De_Multiplexer_8b_0_data_out_4,
      In2(0) => xlconstant_18_dout(0),
      In3(0) => De_Multiplexer_8b_0_data_out_2,
      In4(0) => Net3(0),
      In5(0) => xlconstant_18_dout(0),
      In6(0) => De_Multiplexer_8b_0_NOT_data_out_7,
      In7(0) => De_Multiplexer_8b_0_data_out_0,
      dout(7 downto 0) => xlconcat_2_dout(7 downto 0)
    );
xlconcat_3: component NV_project_xlconcat_2_1
     port map (
      In0(0) => De_Multiplexer_8b_0_data_out_1,
      In1(0) => xlconstant_18_dout(0),
      In2(0) => xlconstant_18_dout(0),
      In3(0) => xlconstant_18_dout(0),
      In4(0) => xlconstant_18_dout(0),
      In5(0) => xlconstant_18_dout(0),
      In6(0) => xlconstant_18_dout(0),
      In7(0) => De_Multiplexer_8b_0_data_out_3,
      dout(7 downto 0) => xlconcat_3_dout(7 downto 0)
    );
xlconcat_4: component NV_project_xlconcat_3_0
     port map (
      In0(0) => xlconstant_18_dout(0),
      In1(0) => Net3(0),
      In2(0) => NV_parameter_load_0_sp1(0),
      In3(0) => xlconstant_18_dout(0),
      In4(0) => xlconstant_18_dout(0),
      In5(0) => xlconstant_18_dout(0),
      In6(0) => xlconstant_18_dout(0),
      In7(0) => xlconstant_18_dout(0),
      dout(7 downto 0) => xlconcat_4_dout(7 downto 0)
    );
xlconstant_0: component NV_project_xlconstant_0_0
     port map (
      dout(11 downto 0) => xlconstant_0_dout(11 downto 0)
    );
xlconstant_1: component NV_project_xlconstant_1_4
     port map (
      dout(6 downto 0) => xlconstant_1_dout(6 downto 0)
    );
xlconstant_10: component NV_project_xlconstant_4_4
     port map (
      dout(15 downto 0) => xlconstant_10_dout(15 downto 0)
    );
xlconstant_11: component NV_project_xlconstant_4_5
     port map (
      dout(6 downto 0) => xlconstant_11_dout(6 downto 0)
    );
xlconstant_12: component NV_project_xlconstant_12_1
     port map (
      dout(17 downto 0) => xlconstant_12_dout(17 downto 0)
    );
xlconstant_13: component NV_project_xlconstant_1_0
     port map (
      dout(9 downto 0) => xlconstant_13_dout(9 downto 0)
    );
xlconstant_14: component NV_project_xlconstant_1_2
     port map (
      dout(9 downto 0) => xlconstant_14_dout(9 downto 0)
    );
xlconstant_15: component NV_project_xlconstant_1_3
     port map (
      dout(9 downto 0) => xlconstant_15_dout(9 downto 0)
    );
xlconstant_16: component NV_project_xlconstant_15_0
     port map (
      dout(9 downto 0) => xlconstant_16_dout(9 downto 0)
    );
xlconstant_17: component NV_project_xlconstant_1_5
     port map (
      dout(6 downto 0) => xlconstant_17_dout(6 downto 0)
    );
xlconstant_18: component NV_project_xlconstant_17_0
     port map (
      dout(0) => xlconstant_18_dout(0)
    );
xlconstant_19: component NV_project_xlconstant_19_1
     port map (
      dout(1 downto 0) => xlconstant_19_dout(1 downto 0)
    );
xlconstant_2: component NV_project_xlconstant_0_1
     port map (
      dout(0) => xlconstant_2_dout(0)
    );
xlconstant_20: component NV_project_xlconstant_18_0
     port map (
      dout(0) => Net3(0)
    );
xlconstant_21: component NV_project_xlconstant_1_6
     port map (
      dout(6 downto 0) => xlconstant_21_dout(6 downto 0)
    );
xlconstant_22: component NV_project_xlconstant_0_2
     port map (
      dout(11 downto 0) => xlconstant_22_dout(11 downto 0)
    );
xlconstant_24: component NV_project_xlconstant_22_0
     port map (
      dout(11 downto 0) => xlconstant_24_dout(11 downto 0)
    );
xlconstant_3: component NV_project_xlconstant_1_1
     port map (
      dout(10 downto 0) => xlconstant_3_dout(10 downto 0)
    );
xlconstant_4: component NV_project_xlconstant_4_6
     port map (
      dout(20 downto 0) => xlconstant_4_dout(20 downto 0)
    );
xlconstant_5: component NV_project_xlconstant_4_0
     port map (
      dout(31 downto 0) => xlconstant_5_dout(31 downto 0)
    );
xlconstant_6: component NV_project_xlconstant_4_1
     port map (
      dout(15 downto 0) => xlconstant_6_dout(15 downto 0)
    );
xlconstant_8: component NV_project_xlconstant_4_2
     port map (
      dout(15 downto 0) => xlconstant_8_dout(15 downto 0)
    );
xlconstant_9: component NV_project_xlconstant_4_3
     port map (
      dout(15 downto 0) => xlconstant_9_dout(15 downto 0)
    );
end STRUCTURE;
