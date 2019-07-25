
################################################################
# This is a generated script based on design: NV_project
#
# Though there are limitations about the generated script,
# the main purpose of this utility is to make learning
# IP Integrator Tcl commands easier.
################################################################

namespace eval _tcl {
proc get_script_folder {} {
   set script_path [file normalize [info script]]
   set script_folder [file dirname $script_path]
   return $script_folder
}
}
variable script_folder
set script_folder [_tcl::get_script_folder]

################################################################
# Check if script is running in correct Vivado version.
################################################################
set scripts_vivado_version 2017.4
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   catch {common::send_msg_id "BD_TCL-109" "ERROR" "This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_bd_tcl to create an updated script."}

   return 1
}

################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source NV_project_script.tcl


# The design that will be created by this Tcl script contains the following 
# module references:
# AD1RefComp, AD_5293_v2, DAC_121s101, De_Multiplexer_8b, FSM, IGBT_input_selector, NOT_8, Test_normal_mode_MUX, bit_order_adjust_tca9538, gen_referencias, serial_interrupt, start_200ns, start_peripheral, three_ph_modulator

# Please add the sources of those modules before sourcing this Tcl script.

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xc7z020clg400-1
   set_property BOARD_PART em.avnet.com:microzed_7020:part0:1.1 [current_project]
}


# CHANGE DESIGN NAME HERE
variable design_name
set design_name NV_project

# If you do not already have an existing IP Integrator design open,
# you can create a design using the following command:
#    create_bd_design $design_name

# Creating design if needed
set errMsg ""
set nRet 0

set cur_design [current_bd_design -quiet]
set list_cells [get_bd_cells -quiet]

if { ${design_name} eq "" } {
   # USE CASES:
   #    1) Design_name not set

   set errMsg "Please set the variable <design_name> to a non-empty value."
   set nRet 1

} elseif { ${cur_design} ne "" && ${list_cells} eq "" } {
   # USE CASES:
   #    2): Current design opened AND is empty AND names same.
   #    3): Current design opened AND is empty AND names diff; design_name NOT in project.
   #    4): Current design opened AND is empty AND names diff; design_name exists in project.

   if { $cur_design ne $design_name } {
      common::send_msg_id "BD_TCL-001" "INFO" "Changing value of <design_name> from <$design_name> to <$cur_design> since current design is empty."
      set design_name [get_property NAME $cur_design]
   }
   common::send_msg_id "BD_TCL-002" "INFO" "Constructing design in IPI design <$cur_design>..."

} elseif { ${cur_design} ne "" && $list_cells ne "" && $cur_design eq $design_name } {
   # USE CASES:
   #    5) Current design opened AND has components AND same names.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 1
} elseif { [get_files -quiet ${design_name}.bd] ne "" } {
   # USE CASES: 
   #    6) Current opened design, has components, but diff names, design_name exists in project.
   #    7) No opened design, design_name exists in project.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 2

} else {
   # USE CASES:
   #    8) No opened design, design_name not in project.
   #    9) Current opened design, has components, but diff names, design_name not in project.

   common::send_msg_id "BD_TCL-003" "INFO" "Currently there is no design <$design_name> in project, so creating one..."

   create_bd_design $design_name

   common::send_msg_id "BD_TCL-004" "INFO" "Making design <$design_name> as current_bd_design."
   current_bd_design $design_name

}

  # Add USER_COMMENTS on $design_name
  set_property USER_COMMENTS.comment_0 " " [get_bd_designs $design_name]
  set_property USER_COMMENTS.comment_1 " " [get_bd_designs $design_name]

common::send_msg_id "BD_TCL-005" "INFO" "Currently the variable <design_name> is equal to \"$design_name\"."

if { $nRet != 0 } {
   catch {common::send_msg_id "BD_TCL-114" "ERROR" $errMsg}
   return $nRet
}

##################################################################
# DESIGN PROCs
##################################################################



# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  variable script_folder
  variable design_name

  if { $parentCell eq "" } {
     set parentCell [get_bd_cells /]
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj


  # Create interface ports
  set DDR_0 [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:ddrx_rtl:1.0 DDR_0 ]
  set FIXED_IO_0 [ create_bd_intf_port -mode Master -vlnv xilinx.com:display_processing_system7:fixedio_rtl:1.0 FIXED_IO_0 ]

  # Create ports
  set DRIVER_DOWN_00 [ create_bd_port -dir I DRIVER_DOWN_00 ]
  set DRIVER_DOWN_01 [ create_bd_port -dir I DRIVER_DOWN_01 ]
  set DRIVER_DOWN_02 [ create_bd_port -dir I DRIVER_DOWN_02 ]
  set DRIVER_DOWN_03 [ create_bd_port -dir I DRIVER_DOWN_03 ]
  set DRIVER_DOWN_04 [ create_bd_port -dir I DRIVER_DOWN_04 ]
  set DRIVER_DOWN_05 [ create_bd_port -dir I DRIVER_DOWN_05 ]
  set DRIVER_DOWN_06 [ create_bd_port -dir I DRIVER_DOWN_06 ]
  set DRIVER_UP_00 [ create_bd_port -dir I DRIVER_UP_00 ]
  set DRIVER_UP_01 [ create_bd_port -dir I DRIVER_UP_01 ]
  set DRIVER_UP_02 [ create_bd_port -dir I DRIVER_UP_02 ]
  set DRIVER_UP_03 [ create_bd_port -dir I DRIVER_UP_03 ]
  set DRIVER_UP_04 [ create_bd_port -dir I DRIVER_UP_04 ]
  set DRIVER_UP_05 [ create_bd_port -dir I DRIVER_UP_05 ]
  set DRIVER_UP_06 [ create_bd_port -dir I DRIVER_UP_06 ]
  set Din_out_0 [ create_bd_port -dir O Din_out_0 ]
  set Din_out_1 [ create_bd_port -dir O Din_out_1 ]
  set Din_out_2 [ create_bd_port -dir O Din_out_2 ]
  set Din_out_3 [ create_bd_port -dir O Din_out_3 ]
  set Din_out_4 [ create_bd_port -dir O Din_out_4 ]
  set Din_out_5 [ create_bd_port -dir O Din_out_5 ]
  set Din_out_6 [ create_bd_port -dir O Din_out_6 ]
  set Din_out_7 [ create_bd_port -dir O Din_out_7 ]
  set Din_out_8 [ create_bd_port -dir O Din_out_8 ]
  set Din_out_9 [ create_bd_port -dir O Din_out_9 ]
  set Din_out_10 [ create_bd_port -dir O Din_out_10 ]
  set Din_out_11 [ create_bd_port -dir O Din_out_11 ]
  set Din_out_12 [ create_bd_port -dir O Din_out_12 ]
  set Din_out_13 [ create_bd_port -dir O Din_out_13 ]
  set Din_out_14 [ create_bd_port -dir O Din_out_14 ]
  set Din_out_15 [ create_bd_port -dir O Din_out_15 ]
  set Din_out_16 [ create_bd_port -dir O Din_out_16 ]
  set Din_out_17 [ create_bd_port -dir O Din_out_17 ]
  set Din_out_18 [ create_bd_port -dir O Din_out_18 ]
  set Din_out_19 [ create_bd_port -dir O Din_out_19 ]
  set Din_out_20 [ create_bd_port -dir O Din_out_20 ]
  set SCLK_0 [ create_bd_port -dir O SCLK_0 ]
  set SCLK_out_0 [ create_bd_port -dir O SCLK_out_0 ]
  set SCLK_out_1 [ create_bd_port -dir O SCLK_out_1 ]
  set SCLK_out_2 [ create_bd_port -dir O SCLK_out_2 ]
  set SCLK_out_3 [ create_bd_port -dir O SCLK_out_3 ]
  set SCLK_out_4 [ create_bd_port -dir O SCLK_out_4 ]
  set SCLK_out_6 [ create_bd_port -dir O SCLK_out_6 ]
  set SCLK_out_7 [ create_bd_port -dir O SCLK_out_7 ]
  set SDATA1_0 [ create_bd_port -dir I SDATA1_0 ]
  set nCS_0 [ create_bd_port -dir O nCS_0 ]
  set nRST_out_0 [ create_bd_port -dir O nRST_out_0 ]
  set nRST_out_1 [ create_bd_port -dir O nRST_out_1 ]
  set nSync_out_0 [ create_bd_port -dir O nSync_out_0 ]
  set nSync_out_6 [ create_bd_port -dir O nSync_out_6 ]
  set scl_0 [ create_bd_port -dir IO scl_0 ]
  set scl_1 [ create_bd_port -dir IO scl_1 ]
  set sda_0 [ create_bd_port -dir IO sda_0 ]
  set sda_1 [ create_bd_port -dir IO sda_1 ]

  # Create instance: AD1RefComp_0, and set properties
  set block_name AD1RefComp
  set block_cell_name AD1RefComp_0
  if { [catch {set AD1RefComp_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $AD1RefComp_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: AD_5293_v2_0, and set properties
  set block_name AD_5293_v2
  set block_cell_name AD_5293_v2_0
  if { [catch {set AD_5293_v2_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $AD_5293_v2_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: DAC_121s101_0, and set properties
  set block_name DAC_121s101
  set block_cell_name DAC_121s101_0
  if { [catch {set DAC_121s101_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $DAC_121s101_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: DCbus_dynamic_0, and set properties
  set DCbus_dynamic_0 [ create_bd_cell -type ip -vlnv xilinx.com:hls:DCbus_dynamic:1.0 DCbus_dynamic_0 ]

  # Create instance: De_Multiplexer_8b_0, and set properties
  set block_name De_Multiplexer_8b
  set block_cell_name De_Multiplexer_8b_0
  if { [catch {set De_Multiplexer_8b_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $De_Multiplexer_8b_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: FSM_0, and set properties
  set block_name FSM
  set block_cell_name FSM_0
  if { [catch {set FSM_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $FSM_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: IGBT_input_selector_0, and set properties
  set block_name IGBT_input_selector
  set block_cell_name IGBT_input_selector_0
  if { [catch {set IGBT_input_selector_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $IGBT_input_selector_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: NOT_8_0, and set properties
  set block_name NOT_8
  set block_cell_name NOT_8_0
  if { [catch {set NOT_8_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $NOT_8_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: NV_io_controller_0, and set properties
  set NV_io_controller_0 [ create_bd_cell -type ip -vlnv xilinx.com:user:NV_io_controller:1.0 NV_io_controller_0 ]

  # Create instance: NV_parameter_load_0, and set properties
  set NV_parameter_load_0 [ create_bd_cell -type ip -vlnv xilinx.com:user:NV_parameter_load:1.0 NV_parameter_load_0 ]

  # Create instance: TCA9538_driver_0, and set properties
  set TCA9538_driver_0 [ create_bd_cell -type ip -vlnv xilinx.com:user:TCA9538_driver:1.0 TCA9538_driver_0 ]

  # Create instance: TCA9538_driver_input_0, and set properties
  set TCA9538_driver_input_0 [ create_bd_cell -type ip -vlnv xilinx.com:user:TCA9538_driver_input:1.0 TCA9538_driver_input_0 ]

  # Create instance: Test_normal_mode_MUX_0, and set properties
  set block_name Test_normal_mode_MUX
  set block_cell_name Test_normal_mode_MUX_0
  if { [catch {set Test_normal_mode_MUX_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $Test_normal_mode_MUX_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: axi_gpio_0, and set properties
  set axi_gpio_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 axi_gpio_0 ]
  set_property -dict [ list \
   CONFIG.C_ALL_INPUTS {1} \
   CONFIG.C_ALL_OUTPUTS {0} \
   CONFIG.C_GPIO_WIDTH {1} \
   CONFIG.C_INTERRUPT_PRESENT {1} \
 ] $axi_gpio_0

  # Create instance: bit_order_adjust_tca9538_1, and set properties
  set block_name bit_order_adjust_tca9538
  set block_cell_name bit_order_adjust_tca9538_1
  if { [catch {set bit_order_adjust_tca9538_1 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $bit_order_adjust_tca9538_1 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: bridge3ph_0, and set properties
  set bridge3ph_0 [ create_bd_cell -type ip -vlnv xilinx.com:hls:bridge3ph:1.0 bridge3ph_0 ]

  # Create instance: dc_dc_0, and set properties
  set dc_dc_0 [ create_bd_cell -type ip -vlnv xilinx.com:hls:dc_dc:1.0 dc_dc_0 ]

  # Create instance: gain_offset_truncation_1, and set properties
  set gain_offset_truncation_1 [ create_bd_cell -type ip -vlnv xilinx.com:hls:gain_offset_truncation:1.0 gain_offset_truncation_1 ]

  # Create instance: gen_referencias_0, and set properties
  set block_name gen_referencias
  set block_cell_name gen_referencias_0
  if { [catch {set gen_referencias_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $gen_referencias_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: grid_0, and set properties
  set grid_0 [ create_bd_cell -type ip -vlnv xilinx.com:hls:grid:1.0 grid_0 ]

  # Create instance: grid_bridge3ph_0, and set properties
  set grid_bridge3ph_0 [ create_bd_cell -type ip -vlnv xilinx.com:hls:grid_bridge3ph:1.0 grid_bridge3ph_0 ]

  # Create instance: lcl_filter_0, and set properties
  set lcl_filter_0 [ create_bd_cell -type ip -vlnv xilinx.com:hls:lcl_filter:1.0 lcl_filter_0 ]

  # Create instance: parameter_load_2_0, and set properties
  set parameter_load_2_0 [ create_bd_cell -type ip -vlnv xilinx.com:user:parameter_load_2:1.0 parameter_load_2_0 ]

  # Create instance: pmsm_0, and set properties
  set pmsm_0 [ create_bd_cell -type ip -vlnv xilinx.com:hls:pmsm:1.0 pmsm_0 ]

  # Create instance: processing_system7_0, and set properties
  set processing_system7_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:processing_system7:5.5 processing_system7_0 ]
  set_property -dict [ list \
   CONFIG.PCW_ACT_APU_PERIPHERAL_FREQMHZ {666.666687} \
   CONFIG.PCW_ACT_CAN_PERIPHERAL_FREQMHZ {10.000000} \
   CONFIG.PCW_ACT_DCI_PERIPHERAL_FREQMHZ {10.158730} \
   CONFIG.PCW_ACT_ENET0_PERIPHERAL_FREQMHZ {125.000000} \
   CONFIG.PCW_ACT_ENET1_PERIPHERAL_FREQMHZ {10.000000} \
   CONFIG.PCW_ACT_FPGA0_PERIPHERAL_FREQMHZ {100.000000} \
   CONFIG.PCW_ACT_FPGA1_PERIPHERAL_FREQMHZ {50.000000} \
   CONFIG.PCW_ACT_FPGA2_PERIPHERAL_FREQMHZ {10.000000} \
   CONFIG.PCW_ACT_FPGA3_PERIPHERAL_FREQMHZ {2.500000} \
   CONFIG.PCW_ACT_PCAP_PERIPHERAL_FREQMHZ {200.000000} \
   CONFIG.PCW_ACT_QSPI_PERIPHERAL_FREQMHZ {200.000000} \
   CONFIG.PCW_ACT_SDIO_PERIPHERAL_FREQMHZ {25.000000} \
   CONFIG.PCW_ACT_SMC_PERIPHERAL_FREQMHZ {10.000000} \
   CONFIG.PCW_ACT_SPI_PERIPHERAL_FREQMHZ {10.000000} \
   CONFIG.PCW_ACT_TPIU_PERIPHERAL_FREQMHZ {200.000000} \
   CONFIG.PCW_ACT_TTC0_CLK0_PERIPHERAL_FREQMHZ {111.111115} \
   CONFIG.PCW_ACT_TTC0_CLK1_PERIPHERAL_FREQMHZ {111.111115} \
   CONFIG.PCW_ACT_TTC0_CLK2_PERIPHERAL_FREQMHZ {111.111115} \
   CONFIG.PCW_ACT_TTC1_CLK0_PERIPHERAL_FREQMHZ {111.111115} \
   CONFIG.PCW_ACT_TTC1_CLK1_PERIPHERAL_FREQMHZ {111.111115} \
   CONFIG.PCW_ACT_TTC1_CLK2_PERIPHERAL_FREQMHZ {111.111115} \
   CONFIG.PCW_ACT_UART_PERIPHERAL_FREQMHZ {50.000000} \
   CONFIG.PCW_ACT_WDT_PERIPHERAL_FREQMHZ {111.111115} \
   CONFIG.PCW_APU_CLK_RATIO_ENABLE {6:2:1} \
   CONFIG.PCW_APU_PERIPHERAL_FREQMHZ {667} \
   CONFIG.PCW_ARMPLL_CTRL_FBDIV {40} \
   CONFIG.PCW_CAN_PERIPHERAL_DIVISOR0 {1} \
   CONFIG.PCW_CAN_PERIPHERAL_DIVISOR1 {1} \
   CONFIG.PCW_CLK0_FREQ {100000000} \
   CONFIG.PCW_CLK1_FREQ {50000000} \
   CONFIG.PCW_CLK2_FREQ {10000000} \
   CONFIG.PCW_CLK3_FREQ {2500000} \
   CONFIG.PCW_CPU_CPU_6X4X_MAX_RANGE {667} \
   CONFIG.PCW_CPU_CPU_PLL_FREQMHZ {1333.333} \
   CONFIG.PCW_CPU_PERIPHERAL_CLKSRC {ARM PLL} \
   CONFIG.PCW_CPU_PERIPHERAL_DIVISOR0 {2} \
   CONFIG.PCW_CRYSTAL_PERIPHERAL_FREQMHZ {33.333333} \
   CONFIG.PCW_DCI_PERIPHERAL_DIVISOR0 {15} \
   CONFIG.PCW_DCI_PERIPHERAL_DIVISOR1 {7} \
   CONFIG.PCW_DDRPLL_CTRL_FBDIV {32} \
   CONFIG.PCW_DDR_DDR_PLL_FREQMHZ {1066.667} \
   CONFIG.PCW_DDR_PERIPHERAL_CLKSRC {DDR PLL} \
   CONFIG.PCW_DDR_PERIPHERAL_DIVISOR0 {2} \
   CONFIG.PCW_DDR_RAM_HIGHADDR {0x3FFFFFFF} \
   CONFIG.PCW_DM_WIDTH {4} \
   CONFIG.PCW_DQS_WIDTH {4} \
   CONFIG.PCW_DQ_WIDTH {32} \
   CONFIG.PCW_ENET0_ENET0_IO {MIO 16 .. 27} \
   CONFIG.PCW_ENET0_GRP_MDIO_ENABLE {1} \
   CONFIG.PCW_ENET0_GRP_MDIO_IO {MIO 52 .. 53} \
   CONFIG.PCW_ENET0_PERIPHERAL_CLKSRC {IO PLL} \
   CONFIG.PCW_ENET0_PERIPHERAL_DIVISOR0 {8} \
   CONFIG.PCW_ENET0_PERIPHERAL_DIVISOR1 {1} \
   CONFIG.PCW_ENET0_PERIPHERAL_ENABLE {1} \
   CONFIG.PCW_ENET0_PERIPHERAL_FREQMHZ {1000 Mbps} \
   CONFIG.PCW_ENET0_RESET_ENABLE {0} \
   CONFIG.PCW_ENET1_PERIPHERAL_DIVISOR0 {1} \
   CONFIG.PCW_ENET1_PERIPHERAL_DIVISOR1 {1} \
   CONFIG.PCW_ENET1_RESET_ENABLE {0} \
   CONFIG.PCW_ENET_RESET_ENABLE {1} \
   CONFIG.PCW_ENET_RESET_SELECT {Share reset pin} \
   CONFIG.PCW_EN_CLK0_PORT {1} \
   CONFIG.PCW_EN_CLK1_PORT {1} \
   CONFIG.PCW_EN_CLK2_PORT {1} \
   CONFIG.PCW_EN_CLK3_PORT {1} \
   CONFIG.PCW_EN_DDR {1} \
   CONFIG.PCW_EN_EMIO_TTC0 {1} \
   CONFIG.PCW_EN_ENET0 {1} \
   CONFIG.PCW_EN_GPIO {1} \
   CONFIG.PCW_EN_QSPI {1} \
   CONFIG.PCW_EN_RST0_PORT {1} \
   CONFIG.PCW_EN_RST1_PORT {0} \
   CONFIG.PCW_EN_RST2_PORT {0} \
   CONFIG.PCW_EN_RST3_PORT {0} \
   CONFIG.PCW_EN_SDIO0 {1} \
   CONFIG.PCW_EN_TTC0 {1} \
   CONFIG.PCW_EN_UART1 {1} \
   CONFIG.PCW_EN_USB0 {1} \
   CONFIG.PCW_FCLK0_PERIPHERAL_CLKSRC {IO PLL} \
   CONFIG.PCW_FCLK0_PERIPHERAL_DIVISOR0 {5} \
   CONFIG.PCW_FCLK0_PERIPHERAL_DIVISOR1 {2} \
   CONFIG.PCW_FCLK1_PERIPHERAL_CLKSRC {IO PLL} \
   CONFIG.PCW_FCLK1_PERIPHERAL_DIVISOR0 {5} \
   CONFIG.PCW_FCLK1_PERIPHERAL_DIVISOR1 {4} \
   CONFIG.PCW_FCLK2_PERIPHERAL_CLKSRC {IO PLL} \
   CONFIG.PCW_FCLK2_PERIPHERAL_DIVISOR0 {10} \
   CONFIG.PCW_FCLK2_PERIPHERAL_DIVISOR1 {10} \
   CONFIG.PCW_FCLK3_PERIPHERAL_CLKSRC {IO PLL} \
   CONFIG.PCW_FCLK3_PERIPHERAL_DIVISOR0 {20} \
   CONFIG.PCW_FCLK3_PERIPHERAL_DIVISOR1 {20} \
   CONFIG.PCW_FCLK_CLK0_BUF {TRUE} \
   CONFIG.PCW_FCLK_CLK1_BUF {TRUE} \
   CONFIG.PCW_FCLK_CLK2_BUF {FALSE} \
   CONFIG.PCW_FCLK_CLK3_BUF {TRUE} \
   CONFIG.PCW_FPGA0_PERIPHERAL_FREQMHZ {100} \
   CONFIG.PCW_FPGA1_PERIPHERAL_FREQMHZ {50} \
   CONFIG.PCW_FPGA2_PERIPHERAL_FREQMHZ {10} \
   CONFIG.PCW_FPGA3_PERIPHERAL_FREQMHZ {2.5} \
   CONFIG.PCW_FPGA_FCLK0_ENABLE {1} \
   CONFIG.PCW_FPGA_FCLK1_ENABLE {1} \
   CONFIG.PCW_FPGA_FCLK2_ENABLE {1} \
   CONFIG.PCW_FPGA_FCLK3_ENABLE {1} \
   CONFIG.PCW_GPIO_EMIO_GPIO_ENABLE {0} \
   CONFIG.PCW_GPIO_MIO_GPIO_ENABLE {1} \
   CONFIG.PCW_GPIO_MIO_GPIO_IO {MIO} \
   CONFIG.PCW_GPIO_PERIPHERAL_ENABLE {1} \
   CONFIG.PCW_I2C0_RESET_ENABLE {0} \
   CONFIG.PCW_I2C1_RESET_ENABLE {0} \
   CONFIG.PCW_I2C_PERIPHERAL_FREQMHZ {25} \
   CONFIG.PCW_I2C_RESET_ENABLE {0} \
   CONFIG.PCW_IOPLL_CTRL_FBDIV {30} \
   CONFIG.PCW_IO_IO_PLL_FREQMHZ {1000.000} \
   CONFIG.PCW_IRQ_F2P_INTR {1} \
   CONFIG.PCW_MIO_0_DIRECTION {inout} \
   CONFIG.PCW_MIO_0_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_0_PULLUP {disabled} \
   CONFIG.PCW_MIO_0_SLEW {slow} \
   CONFIG.PCW_MIO_10_DIRECTION {inout} \
   CONFIG.PCW_MIO_10_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_10_PULLUP {disabled} \
   CONFIG.PCW_MIO_10_SLEW {slow} \
   CONFIG.PCW_MIO_11_DIRECTION {inout} \
   CONFIG.PCW_MIO_11_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_11_PULLUP {disabled} \
   CONFIG.PCW_MIO_11_SLEW {slow} \
   CONFIG.PCW_MIO_12_DIRECTION {inout} \
   CONFIG.PCW_MIO_12_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_12_PULLUP {disabled} \
   CONFIG.PCW_MIO_12_SLEW {slow} \
   CONFIG.PCW_MIO_13_DIRECTION {inout} \
   CONFIG.PCW_MIO_13_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_13_PULLUP {disabled} \
   CONFIG.PCW_MIO_13_SLEW {slow} \
   CONFIG.PCW_MIO_14_DIRECTION {inout} \
   CONFIG.PCW_MIO_14_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_14_PULLUP {disabled} \
   CONFIG.PCW_MIO_14_SLEW {slow} \
   CONFIG.PCW_MIO_15_DIRECTION {inout} \
   CONFIG.PCW_MIO_15_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_15_PULLUP {disabled} \
   CONFIG.PCW_MIO_15_SLEW {slow} \
   CONFIG.PCW_MIO_16_DIRECTION {out} \
   CONFIG.PCW_MIO_16_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_16_PULLUP {disabled} \
   CONFIG.PCW_MIO_16_SLEW {slow} \
   CONFIG.PCW_MIO_17_DIRECTION {out} \
   CONFIG.PCW_MIO_17_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_17_PULLUP {disabled} \
   CONFIG.PCW_MIO_17_SLEW {slow} \
   CONFIG.PCW_MIO_18_DIRECTION {out} \
   CONFIG.PCW_MIO_18_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_18_PULLUP {disabled} \
   CONFIG.PCW_MIO_18_SLEW {slow} \
   CONFIG.PCW_MIO_19_DIRECTION {out} \
   CONFIG.PCW_MIO_19_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_19_PULLUP {disabled} \
   CONFIG.PCW_MIO_19_SLEW {slow} \
   CONFIG.PCW_MIO_1_DIRECTION {out} \
   CONFIG.PCW_MIO_1_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_1_PULLUP {disabled} \
   CONFIG.PCW_MIO_1_SLEW {slow} \
   CONFIG.PCW_MIO_20_DIRECTION {out} \
   CONFIG.PCW_MIO_20_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_20_PULLUP {disabled} \
   CONFIG.PCW_MIO_20_SLEW {slow} \
   CONFIG.PCW_MIO_21_DIRECTION {out} \
   CONFIG.PCW_MIO_21_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_21_PULLUP {disabled} \
   CONFIG.PCW_MIO_21_SLEW {slow} \
   CONFIG.PCW_MIO_22_DIRECTION {in} \
   CONFIG.PCW_MIO_22_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_22_PULLUP {disabled} \
   CONFIG.PCW_MIO_22_SLEW {slow} \
   CONFIG.PCW_MIO_23_DIRECTION {in} \
   CONFIG.PCW_MIO_23_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_23_PULLUP {disabled} \
   CONFIG.PCW_MIO_23_SLEW {slow} \
   CONFIG.PCW_MIO_24_DIRECTION {in} \
   CONFIG.PCW_MIO_24_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_24_PULLUP {disabled} \
   CONFIG.PCW_MIO_24_SLEW {slow} \
   CONFIG.PCW_MIO_25_DIRECTION {in} \
   CONFIG.PCW_MIO_25_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_25_PULLUP {disabled} \
   CONFIG.PCW_MIO_25_SLEW {slow} \
   CONFIG.PCW_MIO_26_DIRECTION {in} \
   CONFIG.PCW_MIO_26_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_26_PULLUP {disabled} \
   CONFIG.PCW_MIO_26_SLEW {slow} \
   CONFIG.PCW_MIO_27_DIRECTION {in} \
   CONFIG.PCW_MIO_27_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_27_PULLUP {disabled} \
   CONFIG.PCW_MIO_27_SLEW {slow} \
   CONFIG.PCW_MIO_28_DIRECTION {inout} \
   CONFIG.PCW_MIO_28_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_28_PULLUP {disabled} \
   CONFIG.PCW_MIO_28_SLEW {slow} \
   CONFIG.PCW_MIO_29_DIRECTION {in} \
   CONFIG.PCW_MIO_29_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_29_PULLUP {disabled} \
   CONFIG.PCW_MIO_29_SLEW {slow} \
   CONFIG.PCW_MIO_2_DIRECTION {inout} \
   CONFIG.PCW_MIO_2_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_2_PULLUP {disabled} \
   CONFIG.PCW_MIO_2_SLEW {slow} \
   CONFIG.PCW_MIO_30_DIRECTION {out} \
   CONFIG.PCW_MIO_30_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_30_PULLUP {disabled} \
   CONFIG.PCW_MIO_30_SLEW {slow} \
   CONFIG.PCW_MIO_31_DIRECTION {in} \
   CONFIG.PCW_MIO_31_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_31_PULLUP {disabled} \
   CONFIG.PCW_MIO_31_SLEW {slow} \
   CONFIG.PCW_MIO_32_DIRECTION {inout} \
   CONFIG.PCW_MIO_32_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_32_PULLUP {disabled} \
   CONFIG.PCW_MIO_32_SLEW {slow} \
   CONFIG.PCW_MIO_33_DIRECTION {inout} \
   CONFIG.PCW_MIO_33_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_33_PULLUP {disabled} \
   CONFIG.PCW_MIO_33_SLEW {slow} \
   CONFIG.PCW_MIO_34_DIRECTION {inout} \
   CONFIG.PCW_MIO_34_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_34_PULLUP {disabled} \
   CONFIG.PCW_MIO_34_SLEW {slow} \
   CONFIG.PCW_MIO_35_DIRECTION {inout} \
   CONFIG.PCW_MIO_35_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_35_PULLUP {disabled} \
   CONFIG.PCW_MIO_35_SLEW {slow} \
   CONFIG.PCW_MIO_36_DIRECTION {in} \
   CONFIG.PCW_MIO_36_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_36_PULLUP {disabled} \
   CONFIG.PCW_MIO_36_SLEW {slow} \
   CONFIG.PCW_MIO_37_DIRECTION {inout} \
   CONFIG.PCW_MIO_37_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_37_PULLUP {disabled} \
   CONFIG.PCW_MIO_37_SLEW {slow} \
   CONFIG.PCW_MIO_38_DIRECTION {inout} \
   CONFIG.PCW_MIO_38_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_38_PULLUP {disabled} \
   CONFIG.PCW_MIO_38_SLEW {slow} \
   CONFIG.PCW_MIO_39_DIRECTION {inout} \
   CONFIG.PCW_MIO_39_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_39_PULLUP {disabled} \
   CONFIG.PCW_MIO_39_SLEW {slow} \
   CONFIG.PCW_MIO_3_DIRECTION {inout} \
   CONFIG.PCW_MIO_3_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_3_PULLUP {disabled} \
   CONFIG.PCW_MIO_3_SLEW {slow} \
   CONFIG.PCW_MIO_40_DIRECTION {inout} \
   CONFIG.PCW_MIO_40_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_40_PULLUP {disabled} \
   CONFIG.PCW_MIO_40_SLEW {slow} \
   CONFIG.PCW_MIO_41_DIRECTION {inout} \
   CONFIG.PCW_MIO_41_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_41_PULLUP {disabled} \
   CONFIG.PCW_MIO_41_SLEW {slow} \
   CONFIG.PCW_MIO_42_DIRECTION {inout} \
   CONFIG.PCW_MIO_42_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_42_PULLUP {disabled} \
   CONFIG.PCW_MIO_42_SLEW {slow} \
   CONFIG.PCW_MIO_43_DIRECTION {inout} \
   CONFIG.PCW_MIO_43_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_43_PULLUP {disabled} \
   CONFIG.PCW_MIO_43_SLEW {slow} \
   CONFIG.PCW_MIO_44_DIRECTION {inout} \
   CONFIG.PCW_MIO_44_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_44_PULLUP {disabled} \
   CONFIG.PCW_MIO_44_SLEW {slow} \
   CONFIG.PCW_MIO_45_DIRECTION {inout} \
   CONFIG.PCW_MIO_45_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_45_PULLUP {disabled} \
   CONFIG.PCW_MIO_45_SLEW {slow} \
   CONFIG.PCW_MIO_46_DIRECTION {in} \
   CONFIG.PCW_MIO_46_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_46_PULLUP {disabled} \
   CONFIG.PCW_MIO_46_SLEW {slow} \
   CONFIG.PCW_MIO_47_DIRECTION {inout} \
   CONFIG.PCW_MIO_47_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_47_PULLUP {disabled} \
   CONFIG.PCW_MIO_47_SLEW {slow} \
   CONFIG.PCW_MIO_48_DIRECTION {out} \
   CONFIG.PCW_MIO_48_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_48_PULLUP {disabled} \
   CONFIG.PCW_MIO_48_SLEW {slow} \
   CONFIG.PCW_MIO_49_DIRECTION {in} \
   CONFIG.PCW_MIO_49_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_49_PULLUP {disabled} \
   CONFIG.PCW_MIO_49_SLEW {slow} \
   CONFIG.PCW_MIO_4_DIRECTION {inout} \
   CONFIG.PCW_MIO_4_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_4_PULLUP {disabled} \
   CONFIG.PCW_MIO_4_SLEW {slow} \
   CONFIG.PCW_MIO_50_DIRECTION {in} \
   CONFIG.PCW_MIO_50_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_50_PULLUP {disabled} \
   CONFIG.PCW_MIO_50_SLEW {slow} \
   CONFIG.PCW_MIO_51_DIRECTION {inout} \
   CONFIG.PCW_MIO_51_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_51_PULLUP {disabled} \
   CONFIG.PCW_MIO_51_SLEW {slow} \
   CONFIG.PCW_MIO_52_DIRECTION {out} \
   CONFIG.PCW_MIO_52_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_52_PULLUP {disabled} \
   CONFIG.PCW_MIO_52_SLEW {slow} \
   CONFIG.PCW_MIO_53_DIRECTION {inout} \
   CONFIG.PCW_MIO_53_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_53_PULLUP {disabled} \
   CONFIG.PCW_MIO_53_SLEW {slow} \
   CONFIG.PCW_MIO_5_DIRECTION {inout} \
   CONFIG.PCW_MIO_5_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_5_PULLUP {disabled} \
   CONFIG.PCW_MIO_5_SLEW {slow} \
   CONFIG.PCW_MIO_6_DIRECTION {out} \
   CONFIG.PCW_MIO_6_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_6_PULLUP {disabled} \
   CONFIG.PCW_MIO_6_SLEW {slow} \
   CONFIG.PCW_MIO_7_DIRECTION {out} \
   CONFIG.PCW_MIO_7_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_7_PULLUP {disabled} \
   CONFIG.PCW_MIO_7_SLEW {slow} \
   CONFIG.PCW_MIO_8_DIRECTION {out} \
   CONFIG.PCW_MIO_8_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_8_PULLUP {disabled} \
   CONFIG.PCW_MIO_8_SLEW {slow} \
   CONFIG.PCW_MIO_9_DIRECTION {inout} \
   CONFIG.PCW_MIO_9_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_9_PULLUP {disabled} \
   CONFIG.PCW_MIO_9_SLEW {slow} \
   CONFIG.PCW_MIO_PRIMITIVE {54} \
   CONFIG.PCW_MIO_TREE_PERIPHERALS {GPIO#Quad SPI Flash#Quad SPI Flash#Quad SPI Flash#Quad SPI Flash#Quad SPI Flash#Quad SPI Flash#USB Reset#Quad SPI Flash#GPIO#GPIO#GPIO#GPIO#GPIO#GPIO#GPIO#Enet 0#Enet 0#Enet 0#Enet 0#Enet 0#Enet 0#Enet 0#Enet 0#Enet 0#Enet 0#Enet 0#Enet 0#USB 0#USB 0#USB 0#USB 0#USB 0#USB 0#USB 0#USB 0#USB 0#USB 0#USB 0#USB 0#SD 0#SD 0#SD 0#SD 0#SD 0#SD 0#SD 0#GPIO#UART 1#UART 1#SD 0#GPIO#Enet 0#Enet 0} \
   CONFIG.PCW_MIO_TREE_SIGNALS {gpio[0]#qspi0_ss_b#qspi0_io[0]#qspi0_io[1]#qspi0_io[2]#qspi0_io[3]/HOLD_B#qspi0_sclk#reset#qspi_fbclk#gpio[9]#gpio[10]#gpio[11]#gpio[12]#gpio[13]#gpio[14]#gpio[15]#tx_clk#txd[0]#txd[1]#txd[2]#txd[3]#tx_ctl#rx_clk#rxd[0]#rxd[1]#rxd[2]#rxd[3]#rx_ctl#data[4]#dir#stp#nxt#data[0]#data[1]#data[2]#data[3]#clk#data[5]#data[6]#data[7]#clk#cmd#data[0]#data[1]#data[2]#data[3]#cd#gpio[47]#tx#rx#wp#gpio[51]#mdc#mdio} \
   CONFIG.PCW_NAND_GRP_D8_ENABLE {0} \
   CONFIG.PCW_NAND_PERIPHERAL_ENABLE {0} \
   CONFIG.PCW_NOR_GRP_A25_ENABLE {0} \
   CONFIG.PCW_NOR_GRP_CS0_ENABLE {0} \
   CONFIG.PCW_NOR_GRP_CS1_ENABLE {0} \
   CONFIG.PCW_NOR_GRP_SRAM_CS0_ENABLE {0} \
   CONFIG.PCW_NOR_GRP_SRAM_CS1_ENABLE {0} \
   CONFIG.PCW_NOR_GRP_SRAM_INT_ENABLE {0} \
   CONFIG.PCW_NOR_PERIPHERAL_ENABLE {0} \
   CONFIG.PCW_PACKAGE_DDR_BOARD_DELAY0 {0.416} \
   CONFIG.PCW_PACKAGE_DDR_BOARD_DELAY1 {0.408} \
   CONFIG.PCW_PACKAGE_DDR_BOARD_DELAY2 {0.369} \
   CONFIG.PCW_PACKAGE_DDR_BOARD_DELAY3 {0.370} \
   CONFIG.PCW_PACKAGE_DDR_DQS_TO_CLK_DELAY_0 {0.001} \
   CONFIG.PCW_PACKAGE_DDR_DQS_TO_CLK_DELAY_1 {0.037} \
   CONFIG.PCW_PACKAGE_DDR_DQS_TO_CLK_DELAY_2 {-0.074} \
   CONFIG.PCW_PACKAGE_DDR_DQS_TO_CLK_DELAY_3 {-0.098} \
   CONFIG.PCW_PACKAGE_NAME {clg400} \
   CONFIG.PCW_PCAP_PERIPHERAL_DIVISOR0 {5} \
   CONFIG.PCW_PRESET_BANK0_VOLTAGE {LVCMOS 3.3V} \
   CONFIG.PCW_PRESET_BANK1_VOLTAGE {LVCMOS 1.8V} \
   CONFIG.PCW_QSPI_GRP_FBCLK_ENABLE {1} \
   CONFIG.PCW_QSPI_GRP_FBCLK_IO {MIO 8} \
   CONFIG.PCW_QSPI_GRP_IO1_ENABLE {0} \
   CONFIG.PCW_QSPI_GRP_SINGLE_SS_ENABLE {1} \
   CONFIG.PCW_QSPI_GRP_SINGLE_SS_IO {MIO 1 .. 6} \
   CONFIG.PCW_QSPI_GRP_SS1_ENABLE {0} \
   CONFIG.PCW_QSPI_PERIPHERAL_CLKSRC {IO PLL} \
   CONFIG.PCW_QSPI_PERIPHERAL_DIVISOR0 {5} \
   CONFIG.PCW_QSPI_PERIPHERAL_ENABLE {1} \
   CONFIG.PCW_QSPI_PERIPHERAL_FREQMHZ {200} \
   CONFIG.PCW_QSPI_QSPI_IO {MIO 1 .. 6} \
   CONFIG.PCW_SD0_GRP_CD_ENABLE {1} \
   CONFIG.PCW_SD0_GRP_CD_IO {MIO 46} \
   CONFIG.PCW_SD0_GRP_POW_ENABLE {0} \
   CONFIG.PCW_SD0_GRP_WP_ENABLE {1} \
   CONFIG.PCW_SD0_GRP_WP_IO {MIO 50} \
   CONFIG.PCW_SD0_PERIPHERAL_ENABLE {1} \
   CONFIG.PCW_SD0_SD0_IO {MIO 40 .. 45} \
   CONFIG.PCW_SDIO_PERIPHERAL_CLKSRC {IO PLL} \
   CONFIG.PCW_SDIO_PERIPHERAL_DIVISOR0 {40} \
   CONFIG.PCW_SDIO_PERIPHERAL_FREQMHZ {25} \
   CONFIG.PCW_SDIO_PERIPHERAL_VALID {1} \
   CONFIG.PCW_SINGLE_QSPI_DATA_MODE {x4} \
   CONFIG.PCW_SMC_PERIPHERAL_DIVISOR0 {1} \
   CONFIG.PCW_SPI_PERIPHERAL_DIVISOR0 {1} \
   CONFIG.PCW_TPIU_PERIPHERAL_DIVISOR0 {1} \
   CONFIG.PCW_TTC0_CLK0_PERIPHERAL_CLKSRC {CPU_1X} \
   CONFIG.PCW_TTC0_CLK0_PERIPHERAL_FREQMHZ {111.111115} \
   CONFIG.PCW_TTC0_CLK1_PERIPHERAL_CLKSRC {CPU_1X} \
   CONFIG.PCW_TTC0_CLK1_PERIPHERAL_FREQMHZ {111.111115} \
   CONFIG.PCW_TTC0_CLK2_PERIPHERAL_CLKSRC {CPU_1X} \
   CONFIG.PCW_TTC0_CLK2_PERIPHERAL_FREQMHZ {111.111115} \
   CONFIG.PCW_TTC0_PERIPHERAL_ENABLE {1} \
   CONFIG.PCW_TTC0_TTC0_IO {EMIO} \
   CONFIG.PCW_TTC_PERIPHERAL_FREQMHZ {50} \
   CONFIG.PCW_UART1_GRP_FULL_ENABLE {0} \
   CONFIG.PCW_UART1_PERIPHERAL_ENABLE {1} \
   CONFIG.PCW_UART1_UART1_IO {MIO 48 .. 49} \
   CONFIG.PCW_UART_PERIPHERAL_CLKSRC {IO PLL} \
   CONFIG.PCW_UART_PERIPHERAL_DIVISOR0 {20} \
   CONFIG.PCW_UART_PERIPHERAL_FREQMHZ {50} \
   CONFIG.PCW_UART_PERIPHERAL_VALID {1} \
   CONFIG.PCW_UIPARAM_ACT_DDR_FREQ_MHZ {533.333374} \
   CONFIG.PCW_UIPARAM_DDR_BANK_ADDR_COUNT {3} \
   CONFIG.PCW_UIPARAM_DDR_BL {8} \
   CONFIG.PCW_UIPARAM_DDR_BOARD_DELAY0 {0.294} \
   CONFIG.PCW_UIPARAM_DDR_BOARD_DELAY1 {0.298} \
   CONFIG.PCW_UIPARAM_DDR_BOARD_DELAY2 {0.338} \
   CONFIG.PCW_UIPARAM_DDR_BOARD_DELAY3 {0.334} \
   CONFIG.PCW_UIPARAM_DDR_BUS_WIDTH {32 Bit} \
   CONFIG.PCW_UIPARAM_DDR_CL {7} \
   CONFIG.PCW_UIPARAM_DDR_CLOCK_0_LENGTH_MM {54.14} \
   CONFIG.PCW_UIPARAM_DDR_CLOCK_1_LENGTH_MM {54.14} \
   CONFIG.PCW_UIPARAM_DDR_CLOCK_2_LENGTH_MM {39.7} \
   CONFIG.PCW_UIPARAM_DDR_CLOCK_3_LENGTH_MM {39.7} \
   CONFIG.PCW_UIPARAM_DDR_COL_ADDR_COUNT {10} \
   CONFIG.PCW_UIPARAM_DDR_CWL {6} \
   CONFIG.PCW_UIPARAM_DDR_DEVICE_CAPACITY {4096 MBits} \
   CONFIG.PCW_UIPARAM_DDR_DQS_0_LENGTH_MM {50.05} \
   CONFIG.PCW_UIPARAM_DDR_DQS_1_LENGTH_MM {50.43} \
   CONFIG.PCW_UIPARAM_DDR_DQS_2_LENGTH_MM {50.10} \
   CONFIG.PCW_UIPARAM_DDR_DQS_3_LENGTH_MM {50.01} \
   CONFIG.PCW_UIPARAM_DDR_DQS_TO_CLK_DELAY_0 {-0.073} \
   CONFIG.PCW_UIPARAM_DDR_DQS_TO_CLK_DELAY_1 {-0.072} \
   CONFIG.PCW_UIPARAM_DDR_DQS_TO_CLK_DELAY_2 {0.024} \
   CONFIG.PCW_UIPARAM_DDR_DQS_TO_CLK_DELAY_3 {0.023} \
   CONFIG.PCW_UIPARAM_DDR_DQ_0_LENGTH_MM {49.59} \
   CONFIG.PCW_UIPARAM_DDR_DQ_1_LENGTH_MM {51.74} \
   CONFIG.PCW_UIPARAM_DDR_DQ_2_LENGTH_MM {50.32} \
   CONFIG.PCW_UIPARAM_DDR_DQ_3_LENGTH_MM {48.55} \
   CONFIG.PCW_UIPARAM_DDR_DRAM_WIDTH {16 Bits} \
   CONFIG.PCW_UIPARAM_DDR_ECC {Disabled} \
   CONFIG.PCW_UIPARAM_DDR_MEMORY_TYPE {DDR 3} \
   CONFIG.PCW_UIPARAM_DDR_PARTNO {MT41K256M16 RE-125} \
   CONFIG.PCW_UIPARAM_DDR_ROW_ADDR_COUNT {15} \
   CONFIG.PCW_UIPARAM_DDR_SPEED_BIN {DDR3_1066F} \
   CONFIG.PCW_UIPARAM_DDR_TRAIN_DATA_EYE {1} \
   CONFIG.PCW_UIPARAM_DDR_TRAIN_READ_GATE {1} \
   CONFIG.PCW_UIPARAM_DDR_TRAIN_WRITE_LEVEL {1} \
   CONFIG.PCW_UIPARAM_DDR_T_FAW {40.0} \
   CONFIG.PCW_UIPARAM_DDR_T_RAS_MIN {35.0} \
   CONFIG.PCW_UIPARAM_DDR_T_RC {48.75} \
   CONFIG.PCW_UIPARAM_DDR_T_RCD {7} \
   CONFIG.PCW_UIPARAM_DDR_T_RP {7} \
   CONFIG.PCW_UIPARAM_DDR_USE_INTERNAL_VREF {0} \
   CONFIG.PCW_USB0_PERIPHERAL_ENABLE {1} \
   CONFIG.PCW_USB0_PERIPHERAL_FREQMHZ {60} \
   CONFIG.PCW_USB0_RESET_ENABLE {1} \
   CONFIG.PCW_USB0_RESET_IO {MIO 7} \
   CONFIG.PCW_USB0_USB0_IO {MIO 28 .. 39} \
   CONFIG.PCW_USB1_RESET_ENABLE {0} \
   CONFIG.PCW_USB_RESET_ENABLE {1} \
   CONFIG.PCW_USB_RESET_SELECT {Share reset pin} \
   CONFIG.PCW_USE_FABRIC_INTERRUPT {1} \
   CONFIG.PCW_USE_M_AXI_GP0 {1} \
   CONFIG.PCW_USE_M_AXI_GP1 {0} \
 ] $processing_system7_0

  # Create instance: ps7_0_axi_periph, and set properties
  set ps7_0_axi_periph [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 ps7_0_axi_periph ]
  set_property -dict [ list \
   CONFIG.NUM_MI {5} \
 ] $ps7_0_axi_periph

  # Create instance: rst_ps7_0_100M, and set properties
  set rst_ps7_0_100M [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 rst_ps7_0_100M ]

  # Create instance: rst_ps7_0_10M, and set properties
  set rst_ps7_0_10M [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 rst_ps7_0_10M ]

  # Create instance: rst_ps7_0_50M, and set properties
  set rst_ps7_0_50M [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 rst_ps7_0_50M ]

  # Create instance: serial_interrupt_0, and set properties
  set block_name serial_interrupt
  set block_cell_name serial_interrupt_0
  if { [catch {set serial_interrupt_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $serial_interrupt_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: start_200ns_0, and set properties
  set block_name start_200ns
  set block_cell_name start_200ns_0
  if { [catch {set start_200ns_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $start_200ns_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: start_peripheral_0, and set properties
  set block_name start_peripheral
  set block_cell_name start_peripheral_0
  if { [catch {set start_peripheral_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $start_peripheral_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: system_ila_0, and set properties
  set system_ila_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:system_ila:1.1 system_ila_0 ]
  set_property -dict [ list \
   CONFIG.C_MON_TYPE {NATIVE} \
   CONFIG.C_NUM_OF_PROBES {27} \
   CONFIG.C_PROBE0_TYPE {1} \
   CONFIG.C_PROBE10_TYPE {1} \
   CONFIG.C_PROBE11_TYPE {1} \
   CONFIG.C_PROBE12_TYPE {1} \
   CONFIG.C_PROBE13_TYPE {1} \
   CONFIG.C_PROBE14_TYPE {1} \
   CONFIG.C_PROBE15_TYPE {1} \
   CONFIG.C_PROBE16_TYPE {1} \
   CONFIG.C_PROBE17_TYPE {1} \
   CONFIG.C_PROBE18_TYPE {1} \
   CONFIG.C_PROBE19_TYPE {1} \
   CONFIG.C_PROBE1_TYPE {1} \
   CONFIG.C_PROBE20_TYPE {1} \
   CONFIG.C_PROBE21_TYPE {1} \
   CONFIG.C_PROBE22_TYPE {1} \
   CONFIG.C_PROBE23_TYPE {1} \
   CONFIG.C_PROBE24_TYPE {1} \
   CONFIG.C_PROBE25_TYPE {1} \
   CONFIG.C_PROBE26_TYPE {1} \
   CONFIG.C_PROBE2_TYPE {1} \
   CONFIG.C_PROBE3_TYPE {1} \
   CONFIG.C_PROBE4_TYPE {1} \
   CONFIG.C_PROBE5_TYPE {1} \
   CONFIG.C_PROBE6_TYPE {1} \
   CONFIG.C_PROBE7_TYPE {1} \
   CONFIG.C_PROBE8_TYPE {1} \
   CONFIG.C_PROBE9_TYPE {1} \
 ] $system_ila_0

  # Create instance: three_ph_modulator_0, and set properties
  set block_name three_ph_modulator
  set block_cell_name three_ph_modulator_0
  if { [catch {set three_ph_modulator_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $three_ph_modulator_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: wind_turb_0, and set properties
  set wind_turb_0 [ create_bd_cell -type ip -vlnv xilinx.com:hls:wind_turb:1.0 wind_turb_0 ]

  # Create instance: xlconcat_0, and set properties
  set xlconcat_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 xlconcat_0 ]
  set_property -dict [ list \
   CONFIG.IN0_WIDTH {3} \
   CONFIG.IN1_WIDTH {2} \
   CONFIG.NUM_PORTS {2} \
 ] $xlconcat_0

  # Create instance: xlconcat_1, and set properties
  set xlconcat_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 xlconcat_1 ]
  set_property -dict [ list \
   CONFIG.IN0_WIDTH {1} \
   CONFIG.IN1_WIDTH {1} \
   CONFIG.NUM_PORTS {3} \
 ] $xlconcat_1

  # Create instance: xlconcat_2, and set properties
  set xlconcat_2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 xlconcat_2 ]
  set_property -dict [ list \
   CONFIG.NUM_PORTS {8} \
 ] $xlconcat_2

  # Create instance: xlconcat_3, and set properties
  set xlconcat_3 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 xlconcat_3 ]
  set_property -dict [ list \
   CONFIG.NUM_PORTS {8} \
 ] $xlconcat_3

  # Create instance: xlconcat_4, and set properties
  set xlconcat_4 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 xlconcat_4 ]
  set_property -dict [ list \
   CONFIG.NUM_PORTS {8} \
 ] $xlconcat_4

  # Create instance: xlconstant_0, and set properties
  set xlconstant_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_0 ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {2048} \
   CONFIG.CONST_WIDTH {12} \
 ] $xlconstant_0

  # Create instance: xlconstant_1, and set properties
  set xlconstant_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_1 ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {112} \
   CONFIG.CONST_WIDTH {7} \
 ] $xlconstant_1

  # Create instance: xlconstant_2, and set properties
  set xlconstant_2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_2 ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {0} \
   CONFIG.CONST_WIDTH {1} \
 ] $xlconstant_2

  # Create instance: xlconstant_3, and set properties
  set xlconstant_3 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_3 ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {254} \
   CONFIG.CONST_WIDTH {11} \
 ] $xlconstant_3

  # Create instance: xlconstant_4, and set properties
  set xlconstant_4 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_4 ]
  set_property -dict [ list \
   CONFIG.CONST_WIDTH {21} \
 ] $xlconstant_4

  # Create instance: xlconstant_5, and set properties
  set xlconstant_5 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_5 ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {0} \
   CONFIG.CONST_WIDTH {32} \
 ] $xlconstant_5

  # Create instance: xlconstant_6, and set properties
  set xlconstant_6 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_6 ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {0} \
   CONFIG.CONST_WIDTH {16} \
 ] $xlconstant_6

  # Create instance: xlconstant_8, and set properties
  set xlconstant_8 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_8 ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {0} \
   CONFIG.CONST_WIDTH {16} \
 ] $xlconstant_8

  # Create instance: xlconstant_9, and set properties
  set xlconstant_9 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_9 ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {0} \
   CONFIG.CONST_WIDTH {16} \
 ] $xlconstant_9

  # Create instance: xlconstant_10, and set properties
  set xlconstant_10 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_10 ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {0} \
   CONFIG.CONST_WIDTH {16} \
 ] $xlconstant_10

  # Create instance: xlconstant_11, and set properties
  set xlconstant_11 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_11 ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {112} \
   CONFIG.CONST_WIDTH {7} \
 ] $xlconstant_11

  # Create instance: xlconstant_12, and set properties
  set xlconstant_12 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_12 ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {10} \
   CONFIG.CONST_WIDTH {18} \
 ] $xlconstant_12

  # Create instance: xlconstant_13, and set properties
  set xlconstant_13 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_13 ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {967} \
   CONFIG.CONST_WIDTH {10} \
 ] $xlconstant_13

  # Create instance: xlconstant_14, and set properties
  set xlconstant_14 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_14 ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {57} \
   CONFIG.CONST_WIDTH {10} \
 ] $xlconstant_14

  # Create instance: xlconstant_15, and set properties
  set xlconstant_15 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_15 ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {57} \
   CONFIG.CONST_WIDTH {10} \
 ] $xlconstant_15

  # Create instance: xlconstant_16, and set properties
  set xlconstant_16 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_16 ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {24} \
   CONFIG.CONST_WIDTH {10} \
 ] $xlconstant_16

  # Create instance: xlconstant_17, and set properties
  set xlconstant_17 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_17 ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {113} \
   CONFIG.CONST_WIDTH {7} \
 ] $xlconstant_17

  # Create instance: xlconstant_18, and set properties
  set xlconstant_18 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_18 ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {0} \
   CONFIG.CONST_WIDTH {1} \
 ] $xlconstant_18

  # Create instance: xlconstant_19, and set properties
  set xlconstant_19 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_19 ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {0} \
   CONFIG.CONST_WIDTH {2} \
 ] $xlconstant_19

  # Create instance: xlconstant_20, and set properties
  set xlconstant_20 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_20 ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {1} \
   CONFIG.CONST_WIDTH {1} \
 ] $xlconstant_20

  # Create instance: xlconstant_21, and set properties
  set xlconstant_21 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_21 ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {114} \
   CONFIG.CONST_WIDTH {7} \
 ] $xlconstant_21

  # Create instance: xlconstant_22, and set properties
  set xlconstant_22 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_22 ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {2048} \
   CONFIG.CONST_WIDTH {12} \
 ] $xlconstant_22

  # Create instance: xlconstant_24, and set properties
  set xlconstant_24 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_24 ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {2048} \
   CONFIG.CONST_WIDTH {12} \
 ] $xlconstant_24

  # Create interface connections
  connect_bd_intf_net -intf_net processing_system7_0_DDR [get_bd_intf_ports DDR_0] [get_bd_intf_pins processing_system7_0/DDR]
  connect_bd_intf_net -intf_net processing_system7_0_FIXED_IO [get_bd_intf_ports FIXED_IO_0] [get_bd_intf_pins processing_system7_0/FIXED_IO]
  connect_bd_intf_net -intf_net processing_system7_0_M_AXI_GP0 [get_bd_intf_pins processing_system7_0/M_AXI_GP0] [get_bd_intf_pins ps7_0_axi_periph/S00_AXI]
  connect_bd_intf_net -intf_net ps7_0_axi_periph_M00_AXI [get_bd_intf_pins axi_gpio_0/S_AXI] [get_bd_intf_pins ps7_0_axi_periph/M00_AXI]
  connect_bd_intf_net -intf_net ps7_0_axi_periph_M01_AXI [get_bd_intf_pins NV_parameter_load_0/S00_AXI] [get_bd_intf_pins ps7_0_axi_periph/M01_AXI]
  connect_bd_intf_net -intf_net ps7_0_axi_periph_M02_AXI [get_bd_intf_pins NV_io_controller_0/S00_AXI] [get_bd_intf_pins ps7_0_axi_periph/M02_AXI]
  connect_bd_intf_net -intf_net ps7_0_axi_periph_M03_AXI [get_bd_intf_pins parameter_load_2_0/S00_AXI] [get_bd_intf_pins ps7_0_axi_periph/M03_AXI]

  # Create port connections
  connect_bd_net -net AD1RefComp_0_DATA1 [get_bd_pins AD1RefComp_0/DATA1] [get_bd_pins NV_io_controller_0/Fan_input_value] [get_bd_pins dc_dc_0/dutty_pot]
  connect_bd_net -net AD1RefComp_0_SCLK [get_bd_ports SCLK_0] [get_bd_pins AD1RefComp_0/SCLK]
  connect_bd_net -net AD1RefComp_0_nCS [get_bd_ports nCS_0] [get_bd_pins AD1RefComp_0/nCS]
  connect_bd_net -net AD_5293_v2_0_CLK_OUT [get_bd_ports SCLK_out_7] [get_bd_pins AD_5293_v2_0/CLK_OUT]
  connect_bd_net -net AD_5293_v2_0_D1 [get_bd_ports Din_out_17] [get_bd_pins AD_5293_v2_0/D1]
  connect_bd_net -net AD_5293_v2_0_D2 [get_bd_ports Din_out_19] [get_bd_pins AD_5293_v2_0/D2]
  connect_bd_net -net AD_5293_v2_0_nSYNC [get_bd_ports nSync_out_6] [get_bd_pins AD_5293_v2_0/nSYNC]
  connect_bd_net -net DAC_121s101_0_CLK_OUT [get_bd_ports SCLK_out_0] [get_bd_ports SCLK_out_1] [get_bd_ports SCLK_out_2] [get_bd_ports SCLK_out_3] [get_bd_ports SCLK_out_4] [get_bd_ports SCLK_out_6] [get_bd_pins DAC_121s101_0/CLK_OUT]
  connect_bd_net -net DAC_121s101_0_D1 [get_bd_ports Din_out_0] [get_bd_pins DAC_121s101_0/D1]
  connect_bd_net -net DAC_121s101_0_D2 [get_bd_ports Din_out_6] [get_bd_pins DAC_121s101_0/D2]
  connect_bd_net -net DAC_121s101_0_D3 [get_bd_ports Din_out_5] [get_bd_pins DAC_121s101_0/D3]
  connect_bd_net -net DAC_121s101_0_D4 [get_bd_ports Din_out_4] [get_bd_pins DAC_121s101_0/D4]
  connect_bd_net -net DAC_121s101_0_D5 [get_bd_ports Din_out_3] [get_bd_pins DAC_121s101_0/D5]
  connect_bd_net -net DAC_121s101_0_D6 [get_bd_ports Din_out_2] [get_bd_pins DAC_121s101_0/D6]
  connect_bd_net -net DAC_121s101_0_D7 [get_bd_ports Din_out_1] [get_bd_pins DAC_121s101_0/D7]
  connect_bd_net -net DAC_121s101_0_D8 [get_bd_ports Din_out_7] [get_bd_pins DAC_121s101_0/D8]
  connect_bd_net -net DAC_121s101_0_D9 [get_bd_ports Din_out_10] [get_bd_pins DAC_121s101_0/D9]
  connect_bd_net -net DAC_121s101_0_D10 [get_bd_ports Din_out_11] [get_bd_pins DAC_121s101_0/D10]
  connect_bd_net -net DAC_121s101_0_D11 [get_bd_ports Din_out_15] [get_bd_pins DAC_121s101_0/D11]
  connect_bd_net -net DAC_121s101_0_D12 [get_bd_ports Din_out_9] [get_bd_pins DAC_121s101_0/D12]
  connect_bd_net -net DAC_121s101_0_D13 [get_bd_ports Din_out_8] [get_bd_pins DAC_121s101_0/D13]
  connect_bd_net -net DAC_121s101_0_D14 [get_bd_ports Din_out_14] [get_bd_pins DAC_121s101_0/D14]
  connect_bd_net -net DAC_121s101_0_D15 [get_bd_ports Din_out_13] [get_bd_pins DAC_121s101_0/D15]
  connect_bd_net -net DAC_121s101_0_D16 [get_bd_ports Din_out_12] [get_bd_pins DAC_121s101_0/D16]
  connect_bd_net -net DAC_121s101_0_D17 [get_bd_ports Din_out_16] [get_bd_pins DAC_121s101_0/D17]
  connect_bd_net -net DAC_121s101_0_nSYNC [get_bd_ports nSync_out_0] [get_bd_pins DAC_121s101_0/nSYNC]
  connect_bd_net -net DCbus_dynamic_0_V_bus [get_bd_pins DCbus_dynamic_0/V_bus] [get_bd_pins gain_offset_truncation_1/in_V_dc_bus] [get_bd_pins grid_bridge3ph_0/Vdc]
  connect_bd_net -net DRIVER_DOWN_04_1 [get_bd_ports DRIVER_DOWN_04] [get_bd_pins IGBT_input_selector_0/grid_T6_NV]
  connect_bd_net -net DRIVER_DOWN_05_1 [get_bd_ports DRIVER_DOWN_05] [get_bd_pins IGBT_input_selector_0/grid_T5_NV]
  connect_bd_net -net DRIVER_DOWN_06_1 [get_bd_ports DRIVER_DOWN_06] [get_bd_pins IGBT_input_selector_0/grid_T4_NV]
  connect_bd_net -net DRIVER_UP_03_1 [get_bd_ports DRIVER_UP_03] [get_bd_pins DCbus_dynamic_0/ena_chop_res]
  connect_bd_net -net DRIVER_UP_04_1 [get_bd_ports DRIVER_UP_04] [get_bd_pins IGBT_input_selector_0/grid_T3_NV]
  connect_bd_net -net DRIVER_UP_05_1 [get_bd_ports DRIVER_UP_05] [get_bd_pins IGBT_input_selector_0/grid_T2_NV]
  connect_bd_net -net DRIVER_UP_06_1 [get_bd_ports DRIVER_UP_06] [get_bd_pins IGBT_input_selector_0/grid_T1_NV]
  connect_bd_net -net De_Multiplexer_8b_0_NOT_data_out_7 [get_bd_pins De_Multiplexer_8b_0/NOT_data_out_7] [get_bd_pins xlconcat_1/In2] [get_bd_pins xlconcat_2/In6]
  connect_bd_net -net De_Multiplexer_8b_0_data_out_0 [get_bd_pins De_Multiplexer_8b_0/data_out_0] [get_bd_pins xlconcat_1/In1] [get_bd_pins xlconcat_2/In7]
  connect_bd_net -net De_Multiplexer_8b_0_data_out_1 [get_bd_pins De_Multiplexer_8b_0/data_out_2] [get_bd_pins xlconcat_1/In0] [get_bd_pins xlconcat_3/In0]
  connect_bd_net -net De_Multiplexer_8b_0_data_out_2 [get_bd_pins De_Multiplexer_8b_0/data_out_1] [get_bd_pins xlconcat_2/In3]
  connect_bd_net -net De_Multiplexer_8b_0_data_out_3 [get_bd_pins De_Multiplexer_8b_0/data_out_3] [get_bd_pins xlconcat_3/In7]
  connect_bd_net -net De_Multiplexer_8b_0_data_out_4 [get_bd_pins De_Multiplexer_8b_0/data_out_4] [get_bd_pins xlconcat_2/In1]
  connect_bd_net -net FSM_0_Start [get_bd_pins FSM_0/Start] [get_bd_pins wind_turb_0/ap_start]
  connect_bd_net -net FSM_0_Start1 [get_bd_pins DCbus_dynamic_0/ap_start] [get_bd_pins dc_dc_0/ap_start] [get_bd_pins gain_offset_truncation_1/ap_start] [get_bd_pins grid_0/ap_start] [get_bd_pins grid_bridge3ph_0/ap_start] [get_bd_pins lcl_filter_0/ap_start] [get_bd_pins start_200ns_0/start_200n]
  connect_bd_net -net IGBT_input_selector_0_grid_T1 [get_bd_pins IGBT_input_selector_0/grid_T1] [get_bd_pins three_ph_modulator_0/in_T1]
  connect_bd_net -net IGBT_input_selector_0_grid_T2 [get_bd_pins IGBT_input_selector_0/grid_T2] [get_bd_pins three_ph_modulator_0/in_T2]
  connect_bd_net -net IGBT_input_selector_0_grid_T3 [get_bd_pins IGBT_input_selector_0/grid_T3] [get_bd_pins three_ph_modulator_0/in_T3]
  connect_bd_net -net IGBT_input_selector_0_grid_T4 [get_bd_pins IGBT_input_selector_0/grid_T4] [get_bd_pins three_ph_modulator_0/in_T4]
  connect_bd_net -net IGBT_input_selector_0_grid_T5 [get_bd_pins IGBT_input_selector_0/grid_T5] [get_bd_pins three_ph_modulator_0/in_T5]
  connect_bd_net -net IGBT_input_selector_0_grid_T6 [get_bd_pins IGBT_input_selector_0/grid_T6] [get_bd_pins three_ph_modulator_0/in_T6]
  connect_bd_net -net NOT_8_0_out_8 [get_bd_pins De_Multiplexer_8b_0/data_in] [get_bd_pins NOT_8_0/out_8] [get_bd_pins NV_io_controller_0/Expansor_input_value]
  connect_bd_net -net NV_io_controller_0_Expansor_output_value_1 [get_bd_pins NV_io_controller_0/Expansor_output_value_1] [get_bd_pins Test_normal_mode_MUX_0/Expansor_output_TEST_1]
  connect_bd_net -net NV_io_controller_0_Expansor_output_value_2 [get_bd_pins NV_io_controller_0/Expansor_output_value_2] [get_bd_pins Test_normal_mode_MUX_0/Expansor_output_TEST_2]
  connect_bd_net -net NV_io_controller_0_Expansor_output_value_3 [get_bd_pins NV_io_controller_0/Expansor_output_value_3] [get_bd_pins Test_normal_mode_MUX_0/Expansor_output_TEST_3]
  connect_bd_net -net NV_io_controller_0_analog_output_maxValue_1 [get_bd_pins NV_io_controller_0/analog_output_maxValue_1] [get_bd_pins Test_normal_mode_MUX_0/analog_output_TEST_1]
  connect_bd_net -net NV_io_controller_0_analog_output_maxValue_2 [get_bd_pins NV_io_controller_0/analog_output_maxValue_2] [get_bd_pins Test_normal_mode_MUX_0/analog_output_TEST_2]
  connect_bd_net -net NV_io_controller_0_analog_output_maxValue_3 [get_bd_pins NV_io_controller_0/analog_output_maxValue_3] [get_bd_pins Test_normal_mode_MUX_0/analog_output_TEST_3]
  connect_bd_net -net NV_io_controller_0_analog_output_maxValue_4 [get_bd_pins NV_io_controller_0/analog_output_maxValue_4] [get_bd_pins Test_normal_mode_MUX_0/analog_output_TEST_4]
  connect_bd_net -net NV_io_controller_0_analog_output_maxValue_5 [get_bd_pins NV_io_controller_0/analog_output_maxValue_5] [get_bd_pins Test_normal_mode_MUX_0/analog_output_TEST_5]
  connect_bd_net -net NV_io_controller_0_analog_output_maxValue_6 [get_bd_pins NV_io_controller_0/analog_output_maxValue_6] [get_bd_pins Test_normal_mode_MUX_0/analog_output_TEST_6]
  connect_bd_net -net NV_io_controller_0_analog_output_maxValue_7 [get_bd_pins NV_io_controller_0/analog_output_maxValue_7] [get_bd_pins Test_normal_mode_MUX_0/analog_output_TEST_7]
  connect_bd_net -net NV_io_controller_0_analog_output_maxValue_8 [get_bd_pins NV_io_controller_0/analog_output_maxValue_8] [get_bd_pins Test_normal_mode_MUX_0/analog_output_TEST_8]
  connect_bd_net -net NV_io_controller_0_analog_output_maxValue_9 [get_bd_pins NV_io_controller_0/analog_output_maxValue_9] [get_bd_pins Test_normal_mode_MUX_0/analog_output_TEST_9]
  connect_bd_net -net NV_io_controller_0_analog_output_maxValue_10 [get_bd_pins NV_io_controller_0/analog_output_maxValue_10] [get_bd_pins Test_normal_mode_MUX_0/analog_output_TEST_10]
  connect_bd_net -net NV_io_controller_0_analog_output_maxValue_11 [get_bd_pins NV_io_controller_0/analog_output_maxValue_11] [get_bd_pins Test_normal_mode_MUX_0/analog_output_TEST_11]
  connect_bd_net -net NV_io_controller_0_analog_output_maxValue_12 [get_bd_pins NV_io_controller_0/analog_output_maxValue_12] [get_bd_pins Test_normal_mode_MUX_0/analog_output_TEST_12]
  connect_bd_net -net NV_io_controller_0_analog_output_maxValue_13 [get_bd_pins NV_io_controller_0/analog_output_maxValue_13] [get_bd_pins Test_normal_mode_MUX_0/analog_output_TEST_13]
  connect_bd_net -net NV_io_controller_0_analog_output_maxValue_14 [get_bd_pins NV_io_controller_0/analog_output_maxValue_14] [get_bd_pins Test_normal_mode_MUX_0/analog_output_TEST_14]
  connect_bd_net -net NV_io_controller_0_analog_output_maxValue_15 [get_bd_pins NV_io_controller_0/analog_output_maxValue_15] [get_bd_pins Test_normal_mode_MUX_0/analog_output_TEST_15]
  connect_bd_net -net NV_io_controller_0_analog_output_maxValue_16 [get_bd_pins NV_io_controller_0/analog_output_maxValue_16] [get_bd_pins Test_normal_mode_MUX_0/analog_output_TEST_16]
  connect_bd_net -net NV_io_controller_0_analog_output_maxValue_17 [get_bd_pins NV_io_controller_0/analog_output_maxValue_17] [get_bd_pins Test_normal_mode_MUX_0/analog_output_TEST_17]
  connect_bd_net -net NV_io_controller_0_mode [get_bd_pins NV_io_controller_0/mode] [get_bd_pins Test_normal_mode_MUX_0/mode]
  connect_bd_net -net NV_io_controller_0_mode_dac [get_bd_pins NV_io_controller_0/mode_dac] [get_bd_pins Test_normal_mode_MUX_0/mode_dac]
  connect_bd_net -net NV_io_controller_0_potDig_output_value_1 [get_bd_pins NV_io_controller_0/potDig_output_value_1] [get_bd_pins Test_normal_mode_MUX_0/DigPot_output_TEST_1]
  connect_bd_net -net NV_io_controller_0_potDig_output_value_2 [get_bd_pins NV_io_controller_0/potDig_output_value_2] [get_bd_pins Test_normal_mode_MUX_0/DigPot_output_TEST_2]
  connect_bd_net -net NV_io_controller_0_potDig_output_value_3 [get_bd_pins NV_io_controller_0/potDig_output_value_3] [get_bd_pins Test_normal_mode_MUX_0/DigPot_output_TEST_3]
  connect_bd_net -net NV_io_controller_0_potDig_output_value_4 [get_bd_pins NV_io_controller_0/potDig_output_value_4] [get_bd_pins Test_normal_mode_MUX_0/DigPot_output_TEST_4]
  connect_bd_net -net NV_parameter_load_0_DC_bus_fived [get_bd_pins DCbus_dynamic_0/DC_bus_fixed_volt] [get_bd_pins NV_parameter_load_0/DC_bus_fived] [get_bd_pins system_ila_0/probe3]
  set_property -dict [ list \
HDL_ATTRIBUTE.DEBUG {true} \
 ] [get_bd_nets NV_parameter_load_0_DC_bus_fived]
  connect_bd_net -net NV_parameter_load_0_DC_bus_fixed_volt [get_bd_pins DCbus_dynamic_0/V_DC_voltage_in] [get_bd_pins NV_parameter_load_0/DC_bus_fixed_volt] [get_bd_pins system_ila_0/probe4]
  set_property -dict [ list \
HDL_ATTRIBUTE.DEBUG {true} \
 ] [get_bd_nets NV_parameter_load_0_DC_bus_fixed_volt]
  connect_bd_net -net NV_parameter_load_0_amp_a [get_bd_pins NV_parameter_load_0/amp_a] [get_bd_pins grid_0/ampl_a] [get_bd_pins system_ila_0/probe8]
  set_property -dict [ list \
HDL_ATTRIBUTE.DEBUG {true} \
 ] [get_bd_nets NV_parameter_load_0_amp_a]
  connect_bd_net -net NV_parameter_load_0_amp_b [get_bd_pins NV_parameter_load_0/amp_b] [get_bd_pins grid_0/ampl_b] [get_bd_pins system_ila_0/probe9]
  set_property -dict [ list \
HDL_ATTRIBUTE.DEBUG {true} \
 ] [get_bd_nets NV_parameter_load_0_amp_b]
  connect_bd_net -net NV_parameter_load_0_amp_c [get_bd_pins NV_parameter_load_0/amp_c] [get_bd_pins grid_0/ampl_c] [get_bd_pins system_ila_0/probe10]
  set_property -dict [ list \
HDL_ATTRIBUTE.DEBUG {true} \
 ] [get_bd_nets NV_parameter_load_0_amp_c]
  connect_bd_net -net NV_parameter_load_0_counter_limit [get_bd_pins NV_parameter_load_0/counter_limit] [get_bd_pins grid_0/counter_limit] [get_bd_pins system_ila_0/probe7]
  set_property -dict [ list \
HDL_ATTRIBUTE.DEBUG {true} \
 ] [get_bd_nets NV_parameter_load_0_counter_limit]
  connect_bd_net -net NV_parameter_load_0_dt_C [get_bd_pins NV_parameter_load_0/dt_C] [get_bd_pins lcl_filter_0/dT_C] [get_bd_pins system_ila_0/probe19]
  set_property -dict [ list \
HDL_ATTRIBUTE.DEBUG {true} \
 ] [get_bd_nets NV_parameter_load_0_dt_C]
  connect_bd_net -net NV_parameter_load_0_dt_L1 [get_bd_pins NV_parameter_load_0/dt_L1] [get_bd_pins lcl_filter_0/dT_L1] [get_bd_pins system_ila_0/probe12]
  set_property -dict [ list \
HDL_ATTRIBUTE.DEBUG {true} \
 ] [get_bd_nets NV_parameter_load_0_dt_L1]
  connect_bd_net -net NV_parameter_load_0_dt_L2 [get_bd_pins NV_parameter_load_0/dt_L2] [get_bd_pins lcl_filter_0/dT_L2] [get_bd_pins system_ila_0/probe13]
  set_property -dict [ list \
HDL_ATTRIBUTE.DEBUG {true} \
 ] [get_bd_nets NV_parameter_load_0_dt_L2]
  connect_bd_net -net NV_parameter_load_0_inv_seq [get_bd_pins NV_parameter_load_0/inv_seq] [get_bd_pins grid_0/inv_seq] [get_bd_pins system_ila_0/probe11]
  set_property -dict [ list \
HDL_ATTRIBUTE.DEBUG {true} \
 ] [get_bd_nets NV_parameter_load_0_inv_seq]
  connect_bd_net -net NV_parameter_load_0_mode_igbt_input [get_bd_pins IGBT_input_selector_0/mode] [get_bd_pins NV_parameter_load_0/mode_igbt_input] [get_bd_pins system_ila_0/probe0]
  set_property -dict [ list \
HDL_ATTRIBUTE.DEBUG {true} \
 ] [get_bd_nets NV_parameter_load_0_mode_igbt_input]
  connect_bd_net -net NV_parameter_load_0_phase_step [get_bd_pins NV_parameter_load_0/phase_step] [get_bd_pins grid_0/phase_step] [get_bd_pins system_ila_0/probe6]
  set_property -dict [ list \
HDL_ATTRIBUTE.DEBUG {true} \
 ] [get_bd_nets NV_parameter_load_0_phase_step]
  connect_bd_net -net NV_parameter_load_0_phase_step_on [get_bd_pins NV_parameter_load_0/phase_step_on] [get_bd_pins grid_0/phase_step_on] [get_bd_pins system_ila_0/probe5]
  set_property -dict [ list \
HDL_ATTRIBUTE.DEBUG {true} \
 ] [get_bd_nets NV_parameter_load_0_phase_step_on]
  connect_bd_net -net NV_parameter_load_0_rC [get_bd_pins NV_parameter_load_0/rC] [get_bd_pins lcl_filter_0/rC] [get_bd_pins system_ila_0/probe14]
  set_property -dict [ list \
HDL_ATTRIBUTE.DEBUG {true} \
 ] [get_bd_nets NV_parameter_load_0_rC]
  connect_bd_net -net NV_parameter_load_0_sp1 [get_bd_pins NV_parameter_load_0/dig_out_18] [get_bd_pins system_ila_0/probe1] [get_bd_pins xlconcat_4/In2]
  set_property -dict [ list \
HDL_ATTRIBUTE.DEBUG {true} \
 ] [get_bd_nets NV_parameter_load_0_sp1]
  connect_bd_net -net NV_parameter_load_0_t_step_C [get_bd_pins DCbus_dynamic_0/t_step_C] [get_bd_pins NV_parameter_load_0/t_step_C] [get_bd_pins system_ila_0/probe2]
  set_property -dict [ list \
HDL_ATTRIBUTE.DEBUG {true} \
 ] [get_bd_nets NV_parameter_load_0_t_step_C]
  connect_bd_net -net Net [get_bd_ports sda_0] [get_bd_pins TCA9538_driver_0/sda]
  connect_bd_net -net Net1 [get_bd_pins AD_5293_v2_0/START] [get_bd_pins start_peripheral_0/Start_pot_dig]
  connect_bd_net -net Net2 [get_bd_ports scl_0] [get_bd_pins TCA9538_driver_0/scl]
  connect_bd_net -net Net3 [get_bd_pins xlconcat_2/In0] [get_bd_pins xlconcat_2/In4] [get_bd_pins xlconcat_4/In1] [get_bd_pins xlconstant_20/dout]
  connect_bd_net -net Net4 [get_bd_ports sda_1] [get_bd_pins TCA9538_driver_input_0/sda]
  connect_bd_net -net Net5 [get_bd_ports scl_1] [get_bd_pins TCA9538_driver_input_0/scl]
  connect_bd_net -net Net6 [get_bd_pins grid_0/proof_flag_on] [get_bd_pins parameter_load_2_0/ena_chop_res] [get_bd_pins system_ila_0/probe17] [get_bd_pins three_ph_modulator_0/enable]
  set_property -dict [ list \
HDL_ATTRIBUTE.DEBUG {true} \
 ] [get_bd_nets Net6]
  connect_bd_net -net SDATA1_0_1 [get_bd_ports SDATA1_0] [get_bd_pins AD1RefComp_0/SDATA1]
  connect_bd_net -net TCA9538_driver_0_nRST_out [get_bd_ports nRST_out_0] [get_bd_pins TCA9538_driver_0/nRST_out]
  connect_bd_net -net TCA9538_driver_input_0_data_out [get_bd_pins NOT_8_0/in_8] [get_bd_pins TCA9538_driver_input_0/data_out]
  connect_bd_net -net TCA9538_driver_input_0_nRST_out [get_bd_ports nRST_out_1] [get_bd_pins TCA9538_driver_input_0/nRST_out]
  connect_bd_net -net Test_normal_mode_MUX_0_DigPot_output_1 [get_bd_pins AD_5293_v2_0/DATA1] [get_bd_pins Test_normal_mode_MUX_0/DigPot_output_1]
  connect_bd_net -net Test_normal_mode_MUX_0_DigPot_output_2 [get_bd_pins AD_5293_v2_0/DATA2] [get_bd_pins Test_normal_mode_MUX_0/DigPot_output_2]
  connect_bd_net -net Test_normal_mode_MUX_0_DigPot_output_3 [get_bd_pins AD_5293_v2_0/DATA3] [get_bd_pins Test_normal_mode_MUX_0/DigPot_output_3]
  connect_bd_net -net Test_normal_mode_MUX_0_DigPot_output_4 [get_bd_pins AD_5293_v2_0/DATA4] [get_bd_pins Test_normal_mode_MUX_0/DigPot_output_4]
  connect_bd_net -net Test_normal_mode_MUX_0_Expansor_output_1 [get_bd_pins Test_normal_mode_MUX_0/Expansor_output_1] [get_bd_pins bit_order_adjust_tca9538_1/u10_data_in]
  connect_bd_net -net Test_normal_mode_MUX_0_Expansor_output_2 [get_bd_pins Test_normal_mode_MUX_0/Expansor_output_2] [get_bd_pins bit_order_adjust_tca9538_1/u12_data_in]
  connect_bd_net -net Test_normal_mode_MUX_0_Expansor_output_3 [get_bd_pins Test_normal_mode_MUX_0/Expansor_output_3] [get_bd_pins bit_order_adjust_tca9538_1/u14_data_in]
  connect_bd_net -net axi_gpio_0_ip2intc_irpt [get_bd_pins axi_gpio_0/ip2intc_irpt] [get_bd_pins processing_system7_0/IRQ_F2P]
  connect_bd_net -net bit_order_adjust_tca9538_1_u10_data_out [get_bd_pins TCA9538_driver_0/data_1_in] [get_bd_pins bit_order_adjust_tca9538_1/u10_data_out]
  connect_bd_net -net bit_order_adjust_tca9538_1_u12_data_out [get_bd_pins TCA9538_driver_0/data_2_in] [get_bd_pins bit_order_adjust_tca9538_1/u12_data_out]
  connect_bd_net -net bit_order_adjust_tca9538_1_u14_data_out [get_bd_pins TCA9538_driver_0/data_3_in] [get_bd_pins bit_order_adjust_tca9538_1/u14_data_out]
  connect_bd_net -net bridge3ph_0_Va_V [get_bd_pins bridge3ph_0/Va_V] [get_bd_pins pmsm_0/Vs_a_V]
  connect_bd_net -net bridge3ph_0_Vb_V [get_bd_pins bridge3ph_0/Vb_V] [get_bd_pins pmsm_0/Vs_b_V]
  connect_bd_net -net bridge3ph_0_Vc_V [get_bd_pins bridge3ph_0/Vc_V] [get_bd_pins pmsm_0/Vs_c_V]
  connect_bd_net -net bridge3ph_0_Vn_gnd_V [get_bd_pins bridge3ph_0/Vn_gnd_V] [get_bd_pins pmsm_0/VN_gnd_V]
  connect_bd_net -net data_out_5 [get_bd_pins De_Multiplexer_8b_0/data_out_5]
  connect_bd_net -net data_out_6 [get_bd_pins De_Multiplexer_8b_0/data_out_6]
  connect_bd_net -net dc_dc_0_T1_out [get_bd_ports Din_out_18] [get_bd_pins dc_dc_0/T1_out] [get_bd_pins grid_bridge3ph_0/T1] [get_bd_pins system_ila_0/probe21]
  set_property -dict [ list \
HDL_ATTRIBUTE.DEBUG {true} \
 ] [get_bd_nets dc_dc_0_T1_out]
  connect_bd_net -net dc_dc_0_T2_out [get_bd_ports Din_out_20] [get_bd_pins dc_dc_0/T2_out] [get_bd_pins grid_bridge3ph_0/T2] [get_bd_pins system_ila_0/probe22]
  set_property -dict [ list \
HDL_ATTRIBUTE.DEBUG {true} \
 ] [get_bd_nets dc_dc_0_T2_out]
  connect_bd_net -net dc_dc_0_T3_out [get_bd_pins dc_dc_0/T3_out] [get_bd_pins grid_bridge3ph_0/T3] [get_bd_pins system_ila_0/probe23]
  set_property -dict [ list \
HDL_ATTRIBUTE.DEBUG {true} \
 ] [get_bd_nets dc_dc_0_T3_out]
  connect_bd_net -net dc_dc_0_T4_out [get_bd_pins dc_dc_0/T4_out] [get_bd_pins grid_bridge3ph_0/T4] [get_bd_pins system_ila_0/probe24]
  set_property -dict [ list \
HDL_ATTRIBUTE.DEBUG {true} \
 ] [get_bd_nets dc_dc_0_T4_out]
  connect_bd_net -net dc_dc_0_T5_out [get_bd_pins dc_dc_0/T5_out] [get_bd_pins grid_bridge3ph_0/T5] [get_bd_pins system_ila_0/probe25]
  set_property -dict [ list \
HDL_ATTRIBUTE.DEBUG {true} \
 ] [get_bd_nets dc_dc_0_T5_out]
  connect_bd_net -net dc_dc_0_T6_out [get_bd_pins dc_dc_0/T6_out] [get_bd_pins grid_bridge3ph_0/T6] [get_bd_pins system_ila_0/probe26]
  set_property -dict [ list \
HDL_ATTRIBUTE.DEBUG {true} \
 ] [get_bd_nets dc_dc_0_T6_out]
  connect_bd_net -net dc_dc_0_V_N_gnd_out [get_bd_pins dc_dc_0/V_N_gnd_out] [get_bd_pins lcl_filter_0/VN_gnd]
  connect_bd_net -net gain_offset_truncation_0_out_I_LCL_1_a_V [get_bd_pins DAC_121s101_0/DATA1] [get_bd_pins Test_normal_mode_MUX_0/analog_output_NORMAL_1] [get_bd_pins gain_offset_truncation_1/out_I_LCL_1_a]
  connect_bd_net -net gain_offset_truncation_0_out_I_LCL_2_a_V [get_bd_pins DAC_121s101_0/DATA8] [get_bd_pins Test_normal_mode_MUX_0/analog_output_NORMAL_8] [get_bd_pins gain_offset_truncation_1/out_I_LCL_2_a]
  connect_bd_net -net gain_offset_truncation_0_out_I_pmsm_a_V [get_bd_pins Test_normal_mode_MUX_0/analog_output_NORMAL_4] [get_bd_pins gain_offset_truncation_1/out_I_pmsm_a]
  connect_bd_net -net gain_offset_truncation_0_out_V_dc_bus_V [get_bd_pins DAC_121s101_0/DATA7] [get_bd_pins Test_normal_mode_MUX_0/analog_output_NORMAL_7] [get_bd_pins gain_offset_truncation_1/out_V_dc_bus]
  connect_bd_net -net gain_offset_truncation_0_out_V_fem_a_V [get_bd_pins Test_normal_mode_MUX_0/analog_output_NORMAL_14] [get_bd_pins gain_offset_truncation_1/out_V_fem_a]
  connect_bd_net -net gain_offset_truncation_0_out_V_grid_a_V [get_bd_pins DAC_121s101_0/DATA11] [get_bd_pins Test_normal_mode_MUX_0/analog_output_NORMAL_11] [get_bd_pins gain_offset_truncation_1/out_V_grid_a]
  connect_bd_net -net gain_offset_truncation_1_out_I_LCL_1_b_V [get_bd_pins DAC_121s101_0/DATA2] [get_bd_pins Test_normal_mode_MUX_0/analog_output_NORMAL_2] [get_bd_pins gain_offset_truncation_1/out_I_LCL_1_b]
  connect_bd_net -net gain_offset_truncation_1_out_I_LCL_1_c_V [get_bd_pins DAC_121s101_0/DATA3] [get_bd_pins Test_normal_mode_MUX_0/analog_output_NORMAL_3] [get_bd_pins gain_offset_truncation_1/out_I_LCL_1_c]
  connect_bd_net -net gain_offset_truncation_1_out_I_LCL_2_b_V [get_bd_pins DAC_121s101_0/DATA9] [get_bd_pins Test_normal_mode_MUX_0/analog_output_NORMAL_9] [get_bd_pins gain_offset_truncation_1/out_I_LCL_2_b]
  connect_bd_net -net gain_offset_truncation_1_out_I_LCL_2_c_V [get_bd_pins DAC_121s101_0/DATA10] [get_bd_pins Test_normal_mode_MUX_0/analog_output_NORMAL_10] [get_bd_pins gain_offset_truncation_1/out_I_LCL_2_c]
  connect_bd_net -net gain_offset_truncation_1_out_I_pmsm_b_V [get_bd_pins Test_normal_mode_MUX_0/analog_output_NORMAL_5] [get_bd_pins gain_offset_truncation_1/out_I_pmsm_b]
  connect_bd_net -net gain_offset_truncation_1_out_I_pmsm_c_V [get_bd_pins Test_normal_mode_MUX_0/analog_output_NORMAL_6] [get_bd_pins gain_offset_truncation_1/out_I_pmsm_c]
  connect_bd_net -net gain_offset_truncation_1_out_V_fem_b_V [get_bd_pins Test_normal_mode_MUX_0/analog_output_NORMAL_15] [get_bd_pins gain_offset_truncation_1/out_V_fem_b]
  connect_bd_net -net gain_offset_truncation_1_out_V_fem_c_V [get_bd_pins Test_normal_mode_MUX_0/analog_output_NORMAL_16] [get_bd_pins gain_offset_truncation_1/out_V_fem_c]
  connect_bd_net -net gain_offset_truncation_1_out_V_grid_b_V [get_bd_pins DAC_121s101_0/DATA12] [get_bd_pins Test_normal_mode_MUX_0/analog_output_NORMAL_12] [get_bd_pins gain_offset_truncation_1/out_V_grid_b]
  connect_bd_net -net gain_offset_truncation_1_out_V_grid_c_V [get_bd_pins DAC_121s101_0/DATA13] [get_bd_pins Test_normal_mode_MUX_0/analog_output_NORMAL_13] [get_bd_pins gain_offset_truncation_1/out_V_grid_c]
  connect_bd_net -net gen_referencias_0_T1 [get_bd_pins IGBT_input_selector_0/grid_T1_test] [get_bd_pins bridge3ph_0/T1] [get_bd_pins gen_referencias_0/T1]
  connect_bd_net -net gen_referencias_0_T2 [get_bd_pins IGBT_input_selector_0/grid_T2_test] [get_bd_pins bridge3ph_0/T2] [get_bd_pins gen_referencias_0/T2]
  connect_bd_net -net gen_referencias_0_T3 [get_bd_pins IGBT_input_selector_0/grid_T3_test] [get_bd_pins bridge3ph_0/T3] [get_bd_pins gen_referencias_0/T3]
  connect_bd_net -net gen_referencias_0_T4 [get_bd_pins IGBT_input_selector_0/grid_T4_test] [get_bd_pins bridge3ph_0/T4] [get_bd_pins gen_referencias_0/T4]
  connect_bd_net -net gen_referencias_0_T5 [get_bd_pins IGBT_input_selector_0/grid_T5_test] [get_bd_pins bridge3ph_0/T5] [get_bd_pins gen_referencias_0/T5]
  connect_bd_net -net gen_referencias_0_T6 [get_bd_pins IGBT_input_selector_0/grid_T6_test] [get_bd_pins bridge3ph_0/T6] [get_bd_pins gen_referencias_0/T6]
  connect_bd_net -net grid_0_Grid_a_r [get_bd_pins gain_offset_truncation_1/in_V_grid_a] [get_bd_pins grid_0/Grid_a_r] [get_bd_pins lcl_filter_0/V2_a_s]
  connect_bd_net -net grid_0_Grid_b_r [get_bd_pins gain_offset_truncation_1/in_V_grid_b] [get_bd_pins grid_0/Grid_b_r] [get_bd_pins lcl_filter_0/V2_b_s]
  connect_bd_net -net grid_0_Grid_c_r [get_bd_pins gain_offset_truncation_1/in_V_grid_c] [get_bd_pins grid_0/Grid_c_r] [get_bd_pins lcl_filter_0/V2_c_s]
  connect_bd_net -net grid_0_I_out_proof [get_bd_pins DCbus_dynamic_0/I_in] [get_bd_pins grid_0/I_out_proof]
  connect_bd_net -net grid_0_mod_a [get_bd_pins grid_0/mod_a] [get_bd_pins three_ph_modulator_0/mod_a]
  connect_bd_net -net grid_0_mod_b [get_bd_pins grid_0/mod_b] [get_bd_pins three_ph_modulator_0/mod_b]
  connect_bd_net -net grid_0_mod_c [get_bd_pins grid_0/mod_c] [get_bd_pins three_ph_modulator_0/mod_c]
  connect_bd_net -net grid_bridge3ph_0_Idc_r [get_bd_pins DCbus_dynamic_0/I_out] [get_bd_pins grid_bridge3ph_0/Idc_r]
  connect_bd_net -net grid_bridge3ph_0_V_n_gnd_r [get_bd_pins dc_dc_0/V_N_gnd] [get_bd_pins grid_bridge3ph_0/V_n_gnd_r]
  connect_bd_net -net grid_bridge3ph_0_Va_r [get_bd_pins grid_bridge3ph_0/Va_r] [get_bd_pins lcl_filter_0/V1_a]
  connect_bd_net -net grid_bridge3ph_0_Vb_r [get_bd_pins grid_bridge3ph_0/Vb_r] [get_bd_pins lcl_filter_0/V1_b]
  connect_bd_net -net grid_bridge3ph_0_Vc_r [get_bd_pins grid_bridge3ph_0/Vc_r] [get_bd_pins lcl_filter_0/V1_c]
  connect_bd_net -net lcl_filter_0_IL1_a_r [get_bd_pins gain_offset_truncation_1/in_I_LCL_1_a] [get_bd_pins grid_bridge3ph_0/Ia] [get_bd_pins lcl_filter_0/IL1_a_r]
  connect_bd_net -net lcl_filter_0_IL1_b_r [get_bd_pins gain_offset_truncation_1/in_I_LCL_1_b] [get_bd_pins grid_bridge3ph_0/Ib] [get_bd_pins lcl_filter_0/IL1_b_r]
  connect_bd_net -net lcl_filter_0_IL1_c_r [get_bd_pins gain_offset_truncation_1/in_I_LCL_1_c] [get_bd_pins grid_bridge3ph_0/Ic] [get_bd_pins lcl_filter_0/IL1_c_r]
  connect_bd_net -net lcl_filter_0_IL2_a_r [get_bd_pins gain_offset_truncation_1/in_I_LCL_2_a] [get_bd_pins lcl_filter_0/IL2_a_r]
  connect_bd_net -net lcl_filter_0_IL2_b_r [get_bd_pins gain_offset_truncation_1/in_I_LCL_2_b] [get_bd_pins lcl_filter_0/IL2_b_r]
  connect_bd_net -net lcl_filter_0_IL2_c_r [get_bd_pins gain_offset_truncation_1/in_I_LCL_2_c] [get_bd_pins lcl_filter_0/IL2_c_r]
  connect_bd_net -net lcl_filter_0_Vp_a_r [get_bd_pins gain_offset_truncation_1/in_Vp_a] [get_bd_pins lcl_filter_0/Vp_a_r]
  connect_bd_net -net lcl_filter_0_Vp_b_r [get_bd_pins gain_offset_truncation_1/in_Vp_b] [get_bd_pins lcl_filter_0/Vp_b_r]
  connect_bd_net -net lcl_filter_0_Vp_c_r [get_bd_pins gain_offset_truncation_1/in_Vp_c] [get_bd_pins lcl_filter_0/Vp_c_r]
  connect_bd_net -net parameter_load_2_0_Preload [get_bd_pins lcl_filter_0/Preload] [get_bd_pins parameter_load_2_0/Preload] [get_bd_pins system_ila_0/probe16]
  set_property -dict [ list \
HDL_ATTRIBUTE.DEBUG {true} \
 ] [get_bd_nets parameter_load_2_0_Preload]
  connect_bd_net -net parameter_load_2_0_dc_dc_enable [get_bd_pins dc_dc_0/enable] [get_bd_pins parameter_load_2_0/dc_dc_enable] [get_bd_pins system_ila_0/probe20]
  set_property -dict [ list \
HDL_ATTRIBUTE.DEBUG {true} \
 ] [get_bd_nets parameter_load_2_0_dc_dc_enable]
  connect_bd_net -net parameter_load_2_0_rL1 [get_bd_pins lcl_filter_0/rL1] [get_bd_pins parameter_load_2_0/rL1] [get_bd_pins system_ila_0/probe18]
  set_property -dict [ list \
HDL_ATTRIBUTE.DEBUG {true} \
 ] [get_bd_nets parameter_load_2_0_rL1]
  connect_bd_net -net parameter_load_2_0_rL2 [get_bd_pins lcl_filter_0/rL2] [get_bd_pins parameter_load_2_0/rL2] [get_bd_pins system_ila_0/probe15]
  set_property -dict [ list \
HDL_ATTRIBUTE.DEBUG {true} \
 ] [get_bd_nets parameter_load_2_0_rL2]
  connect_bd_net -net pmsm_0_Is_a_V [get_bd_pins bridge3ph_0/Ia_V] [get_bd_pins pmsm_0/Is_a_V]
  connect_bd_net -net pmsm_0_Is_b_V [get_bd_pins bridge3ph_0/Ib_V] [get_bd_pins pmsm_0/Is_b_V]
  connect_bd_net -net pmsm_0_Is_c_V [get_bd_pins bridge3ph_0/Ic_V] [get_bd_pins pmsm_0/Is_c_V]
  connect_bd_net -net pmsm_0_Tem_V [get_bd_pins pmsm_0/Tem_V] [get_bd_pins wind_turb_0/Tem_V]
  connect_bd_net -net pmsm_0_ap_done [get_bd_pins bridge3ph_0/ap_start] [get_bd_pins pmsm_0/ap_done]
  connect_bd_net -net processing_system7_0_FCLK_CLK1 [get_bd_pins DCbus_dynamic_0/ap_clk] [get_bd_pins De_Multiplexer_8b_0/CLK] [get_bd_pins FSM_0/CLK] [get_bd_pins IGBT_input_selector_0/CLK] [get_bd_pins NOT_8_0/CLK] [get_bd_pins NV_io_controller_0/s00_axi_aclk] [get_bd_pins NV_parameter_load_0/s00_axi_aclk] [get_bd_pins TCA9538_driver_0/CLK] [get_bd_pins TCA9538_driver_input_0/CLK] [get_bd_pins Test_normal_mode_MUX_0/CLK] [get_bd_pins axi_gpio_0/s_axi_aclk] [get_bd_pins bit_order_adjust_tca9538_1/CLK] [get_bd_pins bridge3ph_0/ap_clk] [get_bd_pins dc_dc_0/ap_clk] [get_bd_pins gain_offset_truncation_1/ap_clk] [get_bd_pins gen_referencias_0/clk] [get_bd_pins grid_0/ap_clk] [get_bd_pins grid_bridge3ph_0/ap_clk] [get_bd_pins lcl_filter_0/ap_clk] [get_bd_pins parameter_load_2_0/s00_axi_aclk] [get_bd_pins pmsm_0/ap_clk] [get_bd_pins processing_system7_0/FCLK_CLK0] [get_bd_pins processing_system7_0/M_AXI_GP0_ACLK] [get_bd_pins ps7_0_axi_periph/ACLK] [get_bd_pins ps7_0_axi_periph/M00_ACLK] [get_bd_pins ps7_0_axi_periph/M01_ACLK] [get_bd_pins ps7_0_axi_periph/M02_ACLK] [get_bd_pins ps7_0_axi_periph/M03_ACLK] [get_bd_pins ps7_0_axi_periph/M04_ACLK] [get_bd_pins ps7_0_axi_periph/S00_ACLK] [get_bd_pins rst_ps7_0_100M/slowest_sync_clk] [get_bd_pins serial_interrupt_0/CLK] [get_bd_pins start_200ns_0/CLK] [get_bd_pins start_peripheral_0/CLK] [get_bd_pins system_ila_0/clk] [get_bd_pins three_ph_modulator_0/clk] [get_bd_pins wind_turb_0/ap_clk]
  connect_bd_net -net processing_system7_0_FCLK_CLK2 [get_bd_pins AD1RefComp_0/CLK] [get_bd_pins DAC_121s101_0/clk] [get_bd_pins processing_system7_0/FCLK_CLK1] [get_bd_pins rst_ps7_0_50M/slowest_sync_clk]
  connect_bd_net -net processing_system7_0_FCLK_CLK3 [get_bd_pins AD_5293_v2_0/clk] [get_bd_pins processing_system7_0/FCLK_CLK2] [get_bd_pins rst_ps7_0_10M/slowest_sync_clk]
  connect_bd_net -net processing_system7_0_FCLK_RESET0_N [get_bd_pins processing_system7_0/FCLK_RESET0_N] [get_bd_pins rst_ps7_0_100M/ext_reset_in] [get_bd_pins rst_ps7_0_10M/ext_reset_in] [get_bd_pins rst_ps7_0_50M/ext_reset_in]
  connect_bd_net -net rst_ps7_0_100M_interconnect_aresetn [get_bd_pins ps7_0_axi_periph/ARESETN] [get_bd_pins rst_ps7_0_100M/interconnect_aresetn]
  connect_bd_net -net rst_ps7_0_100M_peripheral_aresetn [get_bd_pins DCbus_dynamic_0/ap_rst_n] [get_bd_pins De_Multiplexer_8b_0/RST] [get_bd_pins FSM_0/RST] [get_bd_pins IGBT_input_selector_0/RST] [get_bd_pins NOT_8_0/RST] [get_bd_pins NV_io_controller_0/s00_axi_aresetn] [get_bd_pins NV_parameter_load_0/s00_axi_aresetn] [get_bd_pins TCA9538_driver_0/RST] [get_bd_pins TCA9538_driver_input_0/RST] [get_bd_pins Test_normal_mode_MUX_0/RST] [get_bd_pins axi_gpio_0/s_axi_aresetn] [get_bd_pins bit_order_adjust_tca9538_1/RST] [get_bd_pins bridge3ph_0/ap_rst_n] [get_bd_pins dc_dc_0/ap_rst_n] [get_bd_pins gain_offset_truncation_1/ap_rst_n] [get_bd_pins gen_referencias_0/reset] [get_bd_pins grid_0/ap_rst_n] [get_bd_pins grid_bridge3ph_0/ap_rst_n] [get_bd_pins lcl_filter_0/ap_rst_n] [get_bd_pins parameter_load_2_0/s00_axi_aresetn] [get_bd_pins pmsm_0/ap_rst_n] [get_bd_pins ps7_0_axi_periph/M00_ARESETN] [get_bd_pins ps7_0_axi_periph/M01_ARESETN] [get_bd_pins ps7_0_axi_periph/M02_ARESETN] [get_bd_pins ps7_0_axi_periph/M03_ARESETN] [get_bd_pins ps7_0_axi_periph/M04_ARESETN] [get_bd_pins ps7_0_axi_periph/S00_ARESETN] [get_bd_pins rst_ps7_0_100M/peripheral_aresetn] [get_bd_pins serial_interrupt_0/RST] [get_bd_pins start_200ns_0/RST] [get_bd_pins start_peripheral_0/RST] [get_bd_pins three_ph_modulator_0/reset] [get_bd_pins wind_turb_0/ap_rst_n]
  connect_bd_net -net rst_ps7_0_10M_peripheral_aresetn [get_bd_pins AD_5293_v2_0/RST] [get_bd_pins rst_ps7_0_10M/peripheral_aresetn]
  connect_bd_net -net rst_ps7_0_50M_peripheral_aresetn [get_bd_pins AD1RefComp_0/RST] [get_bd_pins DAC_121s101_0/RST] [get_bd_pins rst_ps7_0_50M/peripheral_aresetn]
  connect_bd_net -net serial_interrupt_0_Console_1s_interrupt [get_bd_pins axi_gpio_0/gpio_io_i] [get_bd_pins serial_interrupt_0/Console_1s_interrupt]
  connect_bd_net -net start_peripheral_0_Start_ADC [get_bd_pins AD1RefComp_0/START] [get_bd_pins start_peripheral_0/Start_ADC]
  connect_bd_net -net start_peripheral_0_Start_inp_expa [get_bd_pins TCA9538_driver_input_0/start_in] [get_bd_pins start_peripheral_0/Start_inp_expa]
  connect_bd_net -net start_peripheral_0_Start_out_expa [get_bd_pins TCA9538_driver_0/start_in] [get_bd_pins start_peripheral_0/Start_out_expa]
  connect_bd_net -net three_ph_modulator_0_T1 [get_bd_pins dc_dc_0/T1] [get_bd_pins three_ph_modulator_0/T1]
  connect_bd_net -net three_ph_modulator_0_T2 [get_bd_pins dc_dc_0/T2] [get_bd_pins three_ph_modulator_0/T2]
  connect_bd_net -net three_ph_modulator_0_T3 [get_bd_pins dc_dc_0/T3] [get_bd_pins three_ph_modulator_0/T3]
  connect_bd_net -net three_ph_modulator_0_T4 [get_bd_pins dc_dc_0/T4] [get_bd_pins three_ph_modulator_0/T4]
  connect_bd_net -net three_ph_modulator_0_T5 [get_bd_pins dc_dc_0/T5] [get_bd_pins three_ph_modulator_0/T5]
  connect_bd_net -net three_ph_modulator_0_T6 [get_bd_pins dc_dc_0/T6] [get_bd_pins three_ph_modulator_0/T6]
  connect_bd_net -net wind_turb_0_Wn_V [get_bd_pins pmsm_0/Wn_o_V] [get_bd_pins wind_turb_0/Wn_V]
  connect_bd_net -net wind_turb_0_ap_done [get_bd_pins pmsm_0/ap_start] [get_bd_pins wind_turb_0/ap_done]
  connect_bd_net -net xlconcat_0_dout [get_bd_pins lcl_filter_0/CB1_K1_K3_V] [get_bd_pins xlconcat_0/dout]
  connect_bd_net -net xlconcat_1_dout [get_bd_pins gain_offset_truncation_1/CB1_K1_K3_V] [get_bd_pins xlconcat_0/In0] [get_bd_pins xlconcat_1/dout]
  connect_bd_net -net xlconcat_2_dout [get_bd_pins Test_normal_mode_MUX_0/Expansor_output_NORMAL_1] [get_bd_pins xlconcat_2/dout]
  connect_bd_net -net xlconcat_3_dout [get_bd_pins Test_normal_mode_MUX_0/Expansor_output_NORMAL_2] [get_bd_pins xlconcat_3/dout]
  connect_bd_net -net xlconcat_4_dout [get_bd_pins Test_normal_mode_MUX_0/Expansor_output_NORMAL_3] [get_bd_pins xlconcat_4/dout]
  connect_bd_net -net xlconstant_0_dout [get_bd_pins Test_normal_mode_MUX_0/analog_output_NORMAL_17] [get_bd_pins xlconstant_0/dout]
  connect_bd_net -net xlconstant_10_dout [get_bd_pins NV_io_controller_0/sp6] [get_bd_pins xlconstant_10/dout]
  connect_bd_net -net xlconstant_11_dout [get_bd_pins TCA9538_driver_input_0/address_in] [get_bd_pins xlconstant_11/dout]
  connect_bd_net -net xlconstant_12_dout [get_bd_pins bridge3ph_0/Vdc_V] [get_bd_pins xlconstant_12/dout]
  connect_bd_net -net xlconstant_13_dout [get_bd_pins Test_normal_mode_MUX_0/DigPot_output_NORMAL_1] [get_bd_pins xlconstant_13/dout]
  connect_bd_net -net xlconstant_14_dout [get_bd_pins Test_normal_mode_MUX_0/DigPot_output_NORMAL_2] [get_bd_pins xlconstant_14/dout]
  connect_bd_net -net xlconstant_15_dout [get_bd_pins Test_normal_mode_MUX_0/DigPot_output_NORMAL_3] [get_bd_pins xlconstant_15/dout]
  connect_bd_net -net xlconstant_16_dout [get_bd_pins Test_normal_mode_MUX_0/DigPot_output_NORMAL_4] [get_bd_pins xlconstant_16/dout]
  connect_bd_net -net xlconstant_17_dout [get_bd_pins TCA9538_driver_0/address_2_in] [get_bd_pins xlconstant_17/dout]
  connect_bd_net -net xlconstant_18_dout [get_bd_pins xlconcat_2/In2] [get_bd_pins xlconcat_2/In5] [get_bd_pins xlconcat_3/In1] [get_bd_pins xlconcat_3/In2] [get_bd_pins xlconcat_3/In3] [get_bd_pins xlconcat_3/In4] [get_bd_pins xlconcat_3/In5] [get_bd_pins xlconcat_3/In6] [get_bd_pins xlconcat_4/In0] [get_bd_pins xlconcat_4/In3] [get_bd_pins xlconcat_4/In4] [get_bd_pins xlconcat_4/In5] [get_bd_pins xlconcat_4/In6] [get_bd_pins xlconcat_4/In7] [get_bd_pins xlconstant_18/dout]
  connect_bd_net -net xlconstant_19_dout [get_bd_pins xlconcat_0/In1] [get_bd_pins xlconstant_19/dout]
  connect_bd_net -net xlconstant_1_dout [get_bd_pins TCA9538_driver_0/address_1_in] [get_bd_pins xlconstant_1/dout]
  connect_bd_net -net xlconstant_21_dout [get_bd_pins TCA9538_driver_0/address_3_in] [get_bd_pins xlconstant_21/dout]
  connect_bd_net -net xlconstant_22_dout [get_bd_pins DAC_121s101_0/DATA17] [get_bd_pins xlconstant_22/dout]
  connect_bd_net -net xlconstant_24_dout [get_bd_pins DAC_121s101_0/DATA4] [get_bd_pins DAC_121s101_0/DATA5] [get_bd_pins DAC_121s101_0/DATA6] [get_bd_pins DAC_121s101_0/DATA14] [get_bd_pins DAC_121s101_0/DATA15] [get_bd_pins DAC_121s101_0/DATA16] [get_bd_pins xlconstant_24/dout]
  connect_bd_net -net xlconstant_2_dout [get_bd_pins pmsm_0/SG1_K2] [get_bd_pins xlconstant_2/dout]
  connect_bd_net -net xlconstant_3_dout [get_bd_pins gen_referencias_0/ma] [get_bd_pins xlconstant_3/dout]
  connect_bd_net -net xlconstant_4_dout [get_bd_pins wind_turb_0/Pi_V] [get_bd_pins xlconstant_4/dout]
  connect_bd_net -net xlconstant_5_dout [get_bd_pins gain_offset_truncation_1/in_I_pmsm_a] [get_bd_pins gain_offset_truncation_1/in_I_pmsm_b] [get_bd_pins gain_offset_truncation_1/in_I_pmsm_c] [get_bd_pins gain_offset_truncation_1/in_V_fem_a] [get_bd_pins gain_offset_truncation_1/in_V_fem_b] [get_bd_pins gain_offset_truncation_1/in_V_fem_c] [get_bd_pins xlconstant_5/dout]
  connect_bd_net -net xlconstant_6_dout [get_bd_pins NV_io_controller_0/sp5] [get_bd_pins xlconstant_6/dout]
  connect_bd_net -net xlconstant_8_dout [get_bd_pins NV_io_controller_0/sp8] [get_bd_pins xlconstant_8/dout]
  connect_bd_net -net xlconstant_9_dout [get_bd_pins NV_io_controller_0/sp7] [get_bd_pins xlconstant_9/dout]

  # Create address segments
  create_bd_addr_seg -range 0x00010000 -offset 0x43C10000 [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs NV_io_controller_0/S00_AXI/S00_AXI_reg] SEG_NV_io_controller_0_S00_AXI_reg
  create_bd_addr_seg -range 0x00010000 -offset 0x43C00000 [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs NV_parameter_load_0/S00_AXI/S00_AXI_reg] SEG_NV_parameter_load_0_S00_AXI_reg
  create_bd_addr_seg -range 0x00010000 -offset 0x41200000 [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs axi_gpio_0/S_AXI/Reg] SEG_axi_gpio_0_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x43C20000 [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs parameter_load_2_0/S00_AXI/S00_AXI_reg] SEG_parameter_load_2_0_S00_AXI_reg


  # Restore current instance
  current_bd_instance $oldCurInst

  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


