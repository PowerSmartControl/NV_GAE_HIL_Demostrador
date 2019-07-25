--Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Command: generate_target bd_f43d.bd
--Design : bd_f43d
--Purpose: IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_f43d is
  port (
    clk : in STD_LOGIC;
    probe0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe1 : in STD_LOGIC_VECTOR ( 0 to 0 );
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
    probe2 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe3 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe4 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe5 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe6 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe7 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe8 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe9 : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of bd_f43d : entity is "bd_f43d,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=bd_f43d,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=1,numReposBlks=1,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=SBD,synth_mode=Global}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of bd_f43d : entity is "NV_project_system_ila_0_0.hwdef";
end bd_f43d;

architecture STRUCTURE of bd_f43d is
  component bd_f43d_ila_lib_0 is
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
    probe19 : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component bd_f43d_ila_lib_0;
  signal clk_1 : STD_LOGIC;
  signal probe0_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal probe10_1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal probe11_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal probe12_1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal probe13_1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal probe14_1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal probe15_1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal probe16_1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal probe17_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal probe18_1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal probe19_1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal probe1_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal probe2_1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal probe3_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal probe4_1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal probe5_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal probe6_1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal probe7_1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal probe8_1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal probe9_1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 CLK.CLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME CLK.CLK, CLK_DOMAIN NV_project_processing_system7_0_1_FCLK_CLK0, FREQ_HZ 100000000, PHASE 0.000";
begin
  clk_1 <= clk;
  probe0_1(0) <= probe0(0);
  probe10_1(31 downto 0) <= probe10(31 downto 0);
  probe11_1(0) <= probe11(0);
  probe12_1(31 downto 0) <= probe12(31 downto 0);
  probe13_1(31 downto 0) <= probe13(31 downto 0);
  probe14_1(31 downto 0) <= probe14(31 downto 0);
  probe15_1(31 downto 0) <= probe15(31 downto 0);
  probe16_1(31 downto 0) <= probe16(31 downto 0);
  probe17_1(0) <= probe17(0);
  probe18_1(31 downto 0) <= probe18(31 downto 0);
  probe19_1(31 downto 0) <= probe19(31 downto 0);
  probe1_1(0) <= probe1(0);
  probe2_1(31 downto 0) <= probe2(31 downto 0);
  probe3_1(0) <= probe3(0);
  probe4_1(31 downto 0) <= probe4(31 downto 0);
  probe5_1(0) <= probe5(0);
  probe6_1(31 downto 0) <= probe6(31 downto 0);
  probe7_1(31 downto 0) <= probe7(31 downto 0);
  probe8_1(31 downto 0) <= probe8(31 downto 0);
  probe9_1(31 downto 0) <= probe9(31 downto 0);
ila_lib: component bd_f43d_ila_lib_0
     port map (
      clk => clk_1,
      probe0(0) => probe0_1(0),
      probe1(0) => probe1_1(0),
      probe10(31 downto 0) => probe10_1(31 downto 0),
      probe11(0) => probe11_1(0),
      probe12(31 downto 0) => probe12_1(31 downto 0),
      probe13(31 downto 0) => probe13_1(31 downto 0),
      probe14(31 downto 0) => probe14_1(31 downto 0),
      probe15(31 downto 0) => probe15_1(31 downto 0),
      probe16(31 downto 0) => probe16_1(31 downto 0),
      probe17(0) => probe17_1(0),
      probe18(31 downto 0) => probe18_1(31 downto 0),
      probe19(31 downto 0) => probe19_1(31 downto 0),
      probe2(31 downto 0) => probe2_1(31 downto 0),
      probe3(0) => probe3_1(0),
      probe4(31 downto 0) => probe4_1(31 downto 0),
      probe5(0) => probe5_1(0),
      probe6(31 downto 0) => probe6_1(31 downto 0),
      probe7(31 downto 0) => probe7_1(31 downto 0),
      probe8(31 downto 0) => probe8_1(31 downto 0),
      probe9(31 downto 0) => probe9_1(31 downto 0)
    );
end STRUCTURE;
