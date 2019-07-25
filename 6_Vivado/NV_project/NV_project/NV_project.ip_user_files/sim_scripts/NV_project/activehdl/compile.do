vlib work
vlib activehdl

vlib activehdl/xil_defaultlib
vlib activehdl/xpm
vlib activehdl/xlconstant_v1_1_3
vlib activehdl/xbip_utils_v3_0_8
vlib activehdl/axi_utils_v2_0_4
vlib activehdl/xbip_pipe_v3_0_4
vlib activehdl/xbip_dsp48_wrapper_v3_0_4
vlib activehdl/xbip_dsp48_addsub_v3_0_4
vlib activehdl/xbip_dsp48_multadd_v3_0_4
vlib activehdl/xbip_bram18k_v3_0_4
vlib activehdl/mult_gen_v12_0_13
vlib activehdl/floating_point_v7_1_5
vlib activehdl/axi_infrastructure_v1_1_0
vlib activehdl/smartconnect_v1_0
vlib activehdl/axi_protocol_checker_v2_0_1
vlib activehdl/axi_vip_v1_1_1
vlib activehdl/processing_system7_vip_v1_0_3
vlib activehdl/axi_lite_ipif_v3_0_4
vlib activehdl/lib_cdc_v1_0_2
vlib activehdl/interrupt_control_v3_1_4
vlib activehdl/axi_gpio_v2_0_17
vlib activehdl/proc_sys_reset_v5_0_12
vlib activehdl/generic_baseblocks_v2_1_0
vlib activehdl/axi_register_slice_v2_1_15
vlib activehdl/fifo_generator_v13_2_1
vlib activehdl/axi_data_fifo_v2_1_14
vlib activehdl/axi_crossbar_v2_1_16
vlib activehdl/xlconcat_v2_1_1
vlib activehdl/axi_protocol_converter_v2_1_15

vmap xil_defaultlib activehdl/xil_defaultlib
vmap xpm activehdl/xpm
vmap xlconstant_v1_1_3 activehdl/xlconstant_v1_1_3
vmap xbip_utils_v3_0_8 activehdl/xbip_utils_v3_0_8
vmap axi_utils_v2_0_4 activehdl/axi_utils_v2_0_4
vmap xbip_pipe_v3_0_4 activehdl/xbip_pipe_v3_0_4
vmap xbip_dsp48_wrapper_v3_0_4 activehdl/xbip_dsp48_wrapper_v3_0_4
vmap xbip_dsp48_addsub_v3_0_4 activehdl/xbip_dsp48_addsub_v3_0_4
vmap xbip_dsp48_multadd_v3_0_4 activehdl/xbip_dsp48_multadd_v3_0_4
vmap xbip_bram18k_v3_0_4 activehdl/xbip_bram18k_v3_0_4
vmap mult_gen_v12_0_13 activehdl/mult_gen_v12_0_13
vmap floating_point_v7_1_5 activehdl/floating_point_v7_1_5
vmap axi_infrastructure_v1_1_0 activehdl/axi_infrastructure_v1_1_0
vmap smartconnect_v1_0 activehdl/smartconnect_v1_0
vmap axi_protocol_checker_v2_0_1 activehdl/axi_protocol_checker_v2_0_1
vmap axi_vip_v1_1_1 activehdl/axi_vip_v1_1_1
vmap processing_system7_vip_v1_0_3 activehdl/processing_system7_vip_v1_0_3
vmap axi_lite_ipif_v3_0_4 activehdl/axi_lite_ipif_v3_0_4
vmap lib_cdc_v1_0_2 activehdl/lib_cdc_v1_0_2
vmap interrupt_control_v3_1_4 activehdl/interrupt_control_v3_1_4
vmap axi_gpio_v2_0_17 activehdl/axi_gpio_v2_0_17
vmap proc_sys_reset_v5_0_12 activehdl/proc_sys_reset_v5_0_12
vmap generic_baseblocks_v2_1_0 activehdl/generic_baseblocks_v2_1_0
vmap axi_register_slice_v2_1_15 activehdl/axi_register_slice_v2_1_15
vmap fifo_generator_v13_2_1 activehdl/fifo_generator_v13_2_1
vmap axi_data_fifo_v2_1_14 activehdl/axi_data_fifo_v2_1_14
vmap axi_crossbar_v2_1_16 activehdl/axi_crossbar_v2_1_16
vmap xlconcat_v2_1_1 activehdl/xlconcat_v2_1_1
vmap axi_protocol_converter_v2_1_15 activehdl/axi_protocol_converter_v2_1_15

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/ec67/hdl" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/02c8/hdl/verilog" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/1313/hdl" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/6180/hdl/verilog" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/a08d/hdl/verilog" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/6851/hdl/verilog" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/82bb/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/ec67/hdl" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/02c8/hdl/verilog" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/1313/hdl" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/6180/hdl/verilog" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/a08d/hdl/verilog" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/6851/hdl/verilog" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/82bb/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2017.4/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vivado/2017.4/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"C:/Xilinx/Vivado/2017.4/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"C:/Xilinx/Vivado/2017.4/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work xil_defaultlib -93 \
"../../../../NV_project.srcs/sources_1/bd/NV_project/ip/NV_project_gen_referencias_0_0/sim/NV_project_gen_referencias_0_0.vhd" \
"../../../../NV_project.srcs/sources_1/bd/NV_project/ip/NV_project_FSM_0_0/sim/NV_project_FSM_0_0.vhd" \
"../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/8ae6/hdl/vhdl/wind_turb.vhd" \
"../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/8ae6/hdl/vhdl/wind_turb_sdiv_33bkb.vhd" \
"../../../../NV_project.srcs/sources_1/bd/NV_project/ip/NV_project_wind_turb_0_0/sim/NV_project_wind_turb_0_0.vhd" \
"../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/56fe/hdl/vhdl/abc_2_dqo.vhd" \
"../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/56fe/hdl/vhdl/calc_sin_cos.vhd" \
"../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/56fe/hdl/vhdl/calc_sin_cos_sin_bkb.vhd" \
"../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/56fe/hdl/vhdl/dqo_2_abc.vhd" \
"../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/56fe/hdl/vhdl/pmsm.vhd" \
"../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/56fe/hdl/vhdl/pmsm_2.vhd" \
"../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/56fe/hdl/vhdl/pmsm_mac_muladd_2hbi.vhd" \
"../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/56fe/hdl/vhdl/pmsm_mac_muladd_2ibs.vhd" \
"../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/56fe/hdl/vhdl/pmsm_mac_mulsub_7kbM.vhd" \
"../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/56fe/hdl/vhdl/pmsm_mul_12ns_42seOg.vhd" \
"../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/56fe/hdl/vhdl/pmsm_mul_12s_42s_fYi.vhd" \
"../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/56fe/hdl/vhdl/pmsm_mul_4ns_65s_jbC.vhd" \
"../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/56fe/hdl/vhdl/pmsm_mul_mul_20nscud.vhd" \
"../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/56fe/hdl/vhdl/pmsm_mul_mul_20nsdEe.vhd" \
"../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/56fe/hdl/vhdl/pmsm_mul_mul_25s_g8j.vhd" \
"../../../../NV_project.srcs/sources_1/bd/NV_project/ip/NV_project_pmsm_0_0/sim/NV_project_pmsm_0_0.vhd" \
"../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/698d/hdl/vhdl/bridge.vhd" \
"../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/698d/hdl/vhdl/bridge3ph.vhd" \
"../../../../NV_project.srcs/sources_1/bd/NV_project/ip/NV_project_bridge3ph_0_0/sim/NV_project_bridge3ph_0_0.vhd" \

vlog -work xlconstant_v1_1_3  -v2k5 "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/ec67/hdl" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/02c8/hdl/verilog" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/1313/hdl" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/6180/hdl/verilog" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/a08d/hdl/verilog" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/6851/hdl/verilog" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/82bb/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/ec67/hdl" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/02c8/hdl/verilog" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/1313/hdl" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/6180/hdl/verilog" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/a08d/hdl/verilog" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/6851/hdl/verilog" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/82bb/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/0750/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/ec67/hdl" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/02c8/hdl/verilog" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/1313/hdl" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/6180/hdl/verilog" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/a08d/hdl/verilog" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/6851/hdl/verilog" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/82bb/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/ec67/hdl" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/02c8/hdl/verilog" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/1313/hdl" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/6180/hdl/verilog" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/a08d/hdl/verilog" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/6851/hdl/verilog" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/82bb/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../../NV_project.srcs/sources_1/bd/NV_project/ip/NV_project_xlconstant_0_1/sim/NV_project_xlconstant_0_1.v" \
"../../../../NV_project.srcs/sources_1/bd/NV_project/ip/NV_project_xlconstant_1_1/sim/NV_project_xlconstant_1_1.v" \

vcom -work xbip_utils_v3_0_8 -93 \
"../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/4173/hdl/xbip_utils_v3_0_vh_rfs.vhd" \

vcom -work axi_utils_v2_0_4 -93 \
"../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/4575/hdl/axi_utils_v2_0_vh_rfs.vhd" \

vcom -work xbip_pipe_v3_0_4 -93 \
"../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/ee5e/hdl/xbip_pipe_v3_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_wrapper_v3_0_4 -93 \
"../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/da55/hdl/xbip_dsp48_wrapper_v3_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_addsub_v3_0_4 -93 \
"../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/7b8d/hdl/xbip_dsp48_addsub_v3_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_multadd_v3_0_4 -93 \
"../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/65ba/hdl/xbip_dsp48_multadd_v3_0_vh_rfs.vhd" \

vcom -work xbip_bram18k_v3_0_4 -93 \
"../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/9eb4/hdl/xbip_bram18k_v3_0_vh_rfs.vhd" \

vcom -work mult_gen_v12_0_13 -93 \
"../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/257f/hdl/mult_gen_v12_0_vh_rfs.vhd" \

vcom -work floating_point_v7_1_5 -93 \
"../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/b20f/hdl/floating_point_v7_1_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/98e3/hdl/vhdl/DCbus_dynamic.vhd" \
"../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/98e3/hdl/vhdl/DCbus_dynamic_fadbkb.vhd" \
"../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/98e3/hdl/vhdl/DCbus_dynamic_fadcud.vhd" \
"../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/98e3/hdl/vhdl/DCbus_dynamic_fmudEe.vhd" \
"../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/98e3/hdl/ip/DCbus_dynamic_ap_faddfsub_3_full_dsp_32.vhd" \
"../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/98e3/hdl/ip/DCbus_dynamic_ap_fadd_3_full_dsp_32.vhd" \
"../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/98e3/hdl/ip/DCbus_dynamic_ap_fmul_2_max_dsp_32.vhd" \
"../../../../NV_project.srcs/sources_1/bd/NV_project/ip/NV_project_DCbus_dynamic_0_0/sim/NV_project_DCbus_dynamic_0_0.vhd" \
"../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/ca6d/hdl/vhdl/grid_bridge3ph.vhd" \
"../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/ca6d/hdl/vhdl/grid_bridge3ph_fabkb.vhd" \
"../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/ca6d/hdl/vhdl/grid_bridge3ph_fceOg.vhd" \
"../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/ca6d/hdl/vhdl/grid_bridge3ph_fmcud.vhd" \
"../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/ca6d/hdl/vhdl/grid_bridge3ph_sidEe.vhd" \
"../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/ca6d/hdl/ip/grid_bridge3ph_ap_fadd_3_full_dsp_32.vhd" \
"../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/ca6d/hdl/ip/grid_bridge3ph_ap_fcmp_0_no_dsp_32.vhd" \
"../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/ca6d/hdl/ip/grid_bridge3ph_ap_fmul_2_max_dsp_32.vhd" \
"../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/ca6d/hdl/ip/grid_bridge3ph_ap_sitofp_4_no_dsp_32.vhd" \
"../../../../NV_project.srcs/sources_1/bd/NV_project/ip/NV_project_grid_bridge3ph_0_0/sim/NV_project_grid_bridge3ph_0_0.vhd" \
"../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/ef6d/hdl/vhdl/lcl_filter.vhd" \
"../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/ef6d/hdl/vhdl/lcl_filter_faddfsbkb.vhd" \
"../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/ef6d/hdl/vhdl/lcl_filter_fcmp_3dEe.vhd" \
"../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/ef6d/hdl/vhdl/lcl_filter_fmul_3cud.vhd" \
"../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/ef6d/hdl/ip/lcl_filter_ap_faddfsub_3_full_dsp_32.vhd" \
"../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/ef6d/hdl/ip/lcl_filter_ap_fcmp_0_no_dsp_32.vhd" \
"../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/ef6d/hdl/ip/lcl_filter_ap_fmul_2_max_dsp_32.vhd" \
"../../../../NV_project.srcs/sources_1/bd/NV_project/ip/NV_project_lcl_filter_0_0/sim/NV_project_lcl_filter_0_0.vhd" \
"../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/617b/hdl/vhdl/grid.vhd" \
"../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/617b/hdl/vhdl/grid_fadd_32ns_32bkb.vhd" \
"../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/617b/hdl/vhdl/grid_fmul_32ns_32cud.vhd" \
"../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/617b/hdl/vhdl/grid_full_sine.vhd" \
"../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/617b/hdl/vhdl/grid_sitofp_32ns_dEe.vhd" \
"../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/617b/hdl/ip/grid_ap_fadd_3_full_dsp_32.vhd" \
"../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/617b/hdl/ip/grid_ap_fmul_2_max_dsp_32.vhd" \
"../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/617b/hdl/ip/grid_ap_sitofp_4_no_dsp_32.vhd" \
"../../../../NV_project.srcs/sources_1/bd/NV_project/ip/NV_project_grid_0_0/sim/NV_project_grid_0_0.vhd" \

vlog -work axi_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/ec67/hdl" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/02c8/hdl/verilog" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/1313/hdl" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/6180/hdl/verilog" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/a08d/hdl/verilog" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/6851/hdl/verilog" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/82bb/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/ec67/hdl" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/02c8/hdl/verilog" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/1313/hdl" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/6180/hdl/verilog" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/a08d/hdl/verilog" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/6851/hdl/verilog" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/82bb/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/ec67/hdl" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/02c8/hdl/verilog" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/1313/hdl" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/6180/hdl/verilog" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/a08d/hdl/verilog" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/6851/hdl/verilog" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/82bb/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/ec67/hdl" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/02c8/hdl/verilog" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/1313/hdl" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/6180/hdl/verilog" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/a08d/hdl/verilog" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/6851/hdl/verilog" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/82bb/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/02c8/hdl/sc_util_v1_0_vl_rfs.sv" \

vlog -work axi_protocol_checker_v2_0_1  -sv2k12 "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/ec67/hdl" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/02c8/hdl/verilog" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/1313/hdl" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/6180/hdl/verilog" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/a08d/hdl/verilog" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/6851/hdl/verilog" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/82bb/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/ec67/hdl" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/02c8/hdl/verilog" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/1313/hdl" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/6180/hdl/verilog" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/a08d/hdl/verilog" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/6851/hdl/verilog" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/82bb/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/3b24/hdl/axi_protocol_checker_v2_0_vl_rfs.sv" \

vlog -work axi_vip_v1_1_1  -sv2k12 "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/ec67/hdl" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/02c8/hdl/verilog" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/1313/hdl" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/6180/hdl/verilog" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/a08d/hdl/verilog" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/6851/hdl/verilog" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/82bb/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/ec67/hdl" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/02c8/hdl/verilog" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/1313/hdl" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/6180/hdl/verilog" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/a08d/hdl/verilog" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/6851/hdl/verilog" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/82bb/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/a16a/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_3  -sv2k12 "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/ec67/hdl" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/02c8/hdl/verilog" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/1313/hdl" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/6180/hdl/verilog" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/a08d/hdl/verilog" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/6851/hdl/verilog" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/82bb/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/ec67/hdl" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/02c8/hdl/verilog" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/1313/hdl" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/6180/hdl/verilog" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/a08d/hdl/verilog" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/6851/hdl/verilog" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/82bb/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/1313/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/ec67/hdl" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/02c8/hdl/verilog" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/1313/hdl" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/6180/hdl/verilog" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/a08d/hdl/verilog" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/6851/hdl/verilog" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/82bb/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/ec67/hdl" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/02c8/hdl/verilog" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/1313/hdl" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/6180/hdl/verilog" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/a08d/hdl/verilog" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/6851/hdl/verilog" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/82bb/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../../NV_project.srcs/sources_1/bd/NV_project/ip/NV_project_processing_system7_0_1/sim/NV_project_processing_system7_0_1.v" \

vcom -work axi_lite_ipif_v3_0_4 -93 \
"../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/cced/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work lib_cdc_v1_0_2 -93 \
"../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work interrupt_control_v3_1_4 -93 \
"../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/8e66/hdl/interrupt_control_v3_1_vh_rfs.vhd" \

vcom -work axi_gpio_v2_0_17 -93 \
"../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/c450/hdl/axi_gpio_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../../NV_project.srcs/sources_1/bd/NV_project/ip/NV_project_axi_gpio_0_1/sim/NV_project_axi_gpio_0_1.vhd" \

vcom -work proc_sys_reset_v5_0_12 -93 \
"../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/f86a/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../../NV_project.srcs/sources_1/bd/NV_project/ip/NV_project_rst_ps7_0_100M_0/sim/NV_project_rst_ps7_0_100M_0.vhd" \
"../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/e8b2/hdl/NV_parameter_load_v1_0_S00_AXI.vhd" \
"../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/e8b2/hdl/NV_parameter_load_v1_0.vhd" \
"../../../../NV_project.srcs/sources_1/bd/NV_project/ip/NV_project_NV_parameter_load_0_0/sim/NV_project_NV_parameter_load_0_0.vhd" \

vlog -work generic_baseblocks_v2_1_0  -v2k5 "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/ec67/hdl" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/02c8/hdl/verilog" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/1313/hdl" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/6180/hdl/verilog" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/a08d/hdl/verilog" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/6851/hdl/verilog" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/82bb/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/ec67/hdl" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/02c8/hdl/verilog" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/1313/hdl" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/6180/hdl/verilog" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/a08d/hdl/verilog" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/6851/hdl/verilog" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/82bb/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_15  -v2k5 "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/ec67/hdl" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/02c8/hdl/verilog" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/1313/hdl" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/6180/hdl/verilog" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/a08d/hdl/verilog" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/6851/hdl/verilog" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/82bb/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/ec67/hdl" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/02c8/hdl/verilog" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/1313/hdl" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/6180/hdl/verilog" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/a08d/hdl/verilog" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/6851/hdl/verilog" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/82bb/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/3ed1/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_1  -v2k5 "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/ec67/hdl" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/02c8/hdl/verilog" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/1313/hdl" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/6180/hdl/verilog" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/a08d/hdl/verilog" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/6851/hdl/verilog" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/82bb/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/ec67/hdl" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/02c8/hdl/verilog" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/1313/hdl" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/6180/hdl/verilog" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/a08d/hdl/verilog" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/6851/hdl/verilog" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/82bb/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/5c35/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_1 -93 \
"../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/5c35/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_1  -v2k5 "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/ec67/hdl" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/02c8/hdl/verilog" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/1313/hdl" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/6180/hdl/verilog" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/a08d/hdl/verilog" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/6851/hdl/verilog" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/82bb/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/ec67/hdl" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/02c8/hdl/verilog" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/1313/hdl" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/6180/hdl/verilog" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/a08d/hdl/verilog" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/6851/hdl/verilog" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/82bb/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/5c35/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axi_data_fifo_v2_1_14  -v2k5 "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/ec67/hdl" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/02c8/hdl/verilog" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/1313/hdl" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/6180/hdl/verilog" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/a08d/hdl/verilog" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/6851/hdl/verilog" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/82bb/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/ec67/hdl" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/02c8/hdl/verilog" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/1313/hdl" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/6180/hdl/verilog" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/a08d/hdl/verilog" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/6851/hdl/verilog" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/82bb/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/9909/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_16  -v2k5 "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/ec67/hdl" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/02c8/hdl/verilog" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/1313/hdl" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/6180/hdl/verilog" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/a08d/hdl/verilog" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/6851/hdl/verilog" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/82bb/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/ec67/hdl" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/02c8/hdl/verilog" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/1313/hdl" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/6180/hdl/verilog" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/a08d/hdl/verilog" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/6851/hdl/verilog" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/82bb/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/c631/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/ec67/hdl" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/02c8/hdl/verilog" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/1313/hdl" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/6180/hdl/verilog" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/a08d/hdl/verilog" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/6851/hdl/verilog" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/82bb/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/ec67/hdl" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/02c8/hdl/verilog" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/1313/hdl" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/6180/hdl/verilog" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/a08d/hdl/verilog" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/6851/hdl/verilog" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/82bb/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../../NV_project.srcs/sources_1/bd/NV_project/ip/NV_project_xbar_0/sim/NV_project_xbar_0.v" \

vcom -work xil_defaultlib -93 \
"../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/8c95/hdl/NV_io_controller_v1_0_S00_AXI.vhd" \
"../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/8c95/hdl/NV_io_controller_v1_0.vhd" \
"../../../../NV_project.srcs/sources_1/bd/NV_project/ip/NV_project_NV_io_controller_0_0/sim/NV_project_NV_io_controller_0_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/ec67/hdl" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/02c8/hdl/verilog" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/1313/hdl" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/6180/hdl/verilog" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/a08d/hdl/verilog" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/6851/hdl/verilog" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/82bb/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/ec67/hdl" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/02c8/hdl/verilog" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/1313/hdl" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/6180/hdl/verilog" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/a08d/hdl/verilog" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/6851/hdl/verilog" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/82bb/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../../NV_project.srcs/sources_1/bd/NV_project/ip/NV_project_xlconstant_4_1/sim/NV_project_xlconstant_4_1.v" \
"../../../../NV_project.srcs/sources_1/bd/NV_project/ip/NV_project_xlconstant_4_2/sim/NV_project_xlconstant_4_2.v" \
"../../../../NV_project.srcs/sources_1/bd/NV_project/ip/NV_project_xlconstant_4_3/sim/NV_project_xlconstant_4_3.v" \
"../../../../NV_project.srcs/sources_1/bd/NV_project/ip/NV_project_xlconstant_4_4/sim/NV_project_xlconstant_4_4.v" \

vcom -work xil_defaultlib -93 \
"../../../../NV_project.srcs/sources_1/bd/NV_project/ip/NV_project_Test_normal_mode_MUX_0_0/sim/NV_project_Test_normal_mode_MUX_0_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/ec67/hdl" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/02c8/hdl/verilog" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/1313/hdl" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/6180/hdl/verilog" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/a08d/hdl/verilog" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/6851/hdl/verilog" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/82bb/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/ec67/hdl" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/02c8/hdl/verilog" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/1313/hdl" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/6180/hdl/verilog" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/a08d/hdl/verilog" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/6851/hdl/verilog" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/82bb/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../../NV_project.srcs/sources_1/bd/NV_project/ip/NV_project_xlconstant_0_0/sim/NV_project_xlconstant_0_0.v" \
"../../../../NV_project.srcs/sources_1/bd/NV_project/ip/NV_project_xlconstant_1_0/sim/NV_project_xlconstant_1_0.v" \
"../../../../NV_project.srcs/sources_1/bd/NV_project/ip/NV_project_xlconstant_1_2/sim/NV_project_xlconstant_1_2.v" \
"../../../../NV_project.srcs/sources_1/bd/NV_project/ip/NV_project_xlconstant_1_3/sim/NV_project_xlconstant_1_3.v" \
"../../../../NV_project.srcs/sources_1/bd/NV_project/ip/NV_project_xlconstant_15_0/sim/NV_project_xlconstant_15_0.v" \
"../../../../NV_project.srcs/sources_1/bd/NV_project/ip/NV_project_xlconstant_17_0/sim/NV_project_xlconstant_17_0.v" \

vcom -work xil_defaultlib -93 \
"../../../../NV_project.srcs/sources_1/bd/NV_project/ip/NV_project_start_peripheral_0_0/sim/NV_project_start_peripheral_0_0.vhd" \
"../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/3919/src/i2c_2.vhd" \
"../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/3919/tca9538.vhd" \
"../../../../NV_project.srcs/sources_1/bd/NV_project/ip/NV_project_TCA9538_driver_0_0/sim/NV_project_TCA9538_driver_0_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/ec67/hdl" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/02c8/hdl/verilog" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/1313/hdl" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/6180/hdl/verilog" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/a08d/hdl/verilog" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/6851/hdl/verilog" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/82bb/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/ec67/hdl" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/02c8/hdl/verilog" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/1313/hdl" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/6180/hdl/verilog" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/a08d/hdl/verilog" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/6851/hdl/verilog" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/82bb/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../../NV_project.srcs/sources_1/bd/NV_project/ip/NV_project_xlconstant_1_4/sim/NV_project_xlconstant_1_4.v" \
"../../../../NV_project.srcs/sources_1/bd/NV_project/ip/NV_project_xlconstant_1_5/sim/NV_project_xlconstant_1_5.v" \
"../../../../NV_project.srcs/sources_1/bd/NV_project/ip/NV_project_xlconstant_1_6/sim/NV_project_xlconstant_1_6.v" \

vcom -work xil_defaultlib -93 \
"../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/2603/hdl/vhdl/gain_offset_truncation.vhd" \
"../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/2603/hdl/vhdl/gain_offset_truncbkb.vhd" \
"../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/2603/hdl/vhdl/gain_offset_trunccud.vhd" \
"../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/2603/hdl/vhdl/gain_offset_truncdEe.vhd" \
"../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/2603/hdl/vhdl/p_hls_fptoui_float_i.vhd" \
"../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/2603/hdl/ip/gain_offset_truncation_ap_faddfsub_3_full_dsp_32.vhd" \
"../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/2603/hdl/ip/gain_offset_truncation_ap_fmul_2_max_dsp_32.vhd" \
"../../../../NV_project.srcs/sources_1/bd/NV_project/ip/NV_project_gain_offset_truncation_1_1/sim/NV_project_gain_offset_truncation_1_1.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/ec67/hdl" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/02c8/hdl/verilog" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/1313/hdl" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/6180/hdl/verilog" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/a08d/hdl/verilog" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/6851/hdl/verilog" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/82bb/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/ec67/hdl" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/02c8/hdl/verilog" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/1313/hdl" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/6180/hdl/verilog" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/a08d/hdl/verilog" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/6851/hdl/verilog" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/82bb/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../../NV_project.srcs/sources_1/bd/NV_project/ip/NV_project_xlconstant_0_2/sim/NV_project_xlconstant_0_2.v" \

vcom -work xil_defaultlib -93 \
"../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/b893/TCA_9538_inputs.srcs/sources_1/new/i2c.vhd" \
"../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/b893/TCA_9538_inputs.srcs/sources_1/new/tca_9538_input.vhd" \
"../../../../NV_project.srcs/sources_1/bd/NV_project/ip/NV_project_TCA9538_driver_input_0_0/sim/NV_project_TCA9538_driver_input_0_0.vhd" \
"../../../../NV_project.srcs/sources_1/bd/NV_project/ip/NV_project_NOT_8_0_0/sim/NV_project_NOT_8_0_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/ec67/hdl" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/02c8/hdl/verilog" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/1313/hdl" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/6180/hdl/verilog" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/a08d/hdl/verilog" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/6851/hdl/verilog" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/82bb/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/ec67/hdl" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/02c8/hdl/verilog" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/1313/hdl" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/6180/hdl/verilog" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/a08d/hdl/verilog" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/6851/hdl/verilog" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/82bb/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../../NV_project.srcs/sources_1/bd/NV_project/ip/NV_project_xlconstant_4_5/sim/NV_project_xlconstant_4_5.v" \

vcom -work xil_defaultlib -93 \
"../../../../NV_project.srcs/sources_1/bd/NV_project/ip/NV_project_DAC_121s101_0_0/sim/NV_project_DAC_121s101_0_0.vhd" \
"../../../../NV_project.srcs/sources_1/bd/NV_project/ip/NV_project_AD_5293_v2_0_0/sim/NV_project_AD_5293_v2_0_0.vhd" \
"../../../../NV_project.srcs/sources_1/bd/NV_project/ip/NV_project_AD1RefComp_0_0/sim/NV_project_AD1RefComp_0_0.vhd" \
"../../../../NV_project.srcs/sources_1/bd/NV_project/ip/NV_project_De_Multiplexer_8b_0_0/sim/NV_project_De_Multiplexer_8b_0_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/ec67/hdl" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/02c8/hdl/verilog" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/1313/hdl" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/6180/hdl/verilog" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/a08d/hdl/verilog" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/6851/hdl/verilog" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/82bb/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/ec67/hdl" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/02c8/hdl/verilog" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/1313/hdl" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/6180/hdl/verilog" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/a08d/hdl/verilog" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/6851/hdl/verilog" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/82bb/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../../NV_project.srcs/sources_1/bd/NV_project/ip/NV_project_xlconstant_22_0/sim/NV_project_xlconstant_22_0.v" \

vcom -work xil_defaultlib -93 \
"../../../../NV_project.srcs/sources_1/bd/NV_project/ip/NV_project_IGBT_input_selector_0_0/sim/NV_project_IGBT_input_selector_0_0.vhd" \

vlog -work xlconcat_v2_1_1  -v2k5 "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/ec67/hdl" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/02c8/hdl/verilog" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/1313/hdl" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/6180/hdl/verilog" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/a08d/hdl/verilog" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/6851/hdl/verilog" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/82bb/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/ec67/hdl" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/02c8/hdl/verilog" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/1313/hdl" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/6180/hdl/verilog" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/a08d/hdl/verilog" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/6851/hdl/verilog" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/82bb/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/2f66/hdl/xlconcat_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/ec67/hdl" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/02c8/hdl/verilog" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/1313/hdl" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/6180/hdl/verilog" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/a08d/hdl/verilog" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/6851/hdl/verilog" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/82bb/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/ec67/hdl" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/02c8/hdl/verilog" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/1313/hdl" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/6180/hdl/verilog" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/a08d/hdl/verilog" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/6851/hdl/verilog" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/82bb/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../../NV_project.srcs/sources_1/bd/NV_project/ip/NV_project_xlconcat_1_0/sim/NV_project_xlconcat_1_0.v" \
"../../../../NV_project.srcs/sources_1/bd/NV_project/ip/NV_project_xlconcat_2_0/sim/NV_project_xlconcat_2_0.v" \
"../../../../NV_project.srcs/sources_1/bd/NV_project/ip/NV_project_xlconcat_2_1/sim/NV_project_xlconcat_2_1.v" \
"../../../../NV_project.srcs/sources_1/bd/NV_project/ip/NV_project_xlconcat_3_0/sim/NV_project_xlconcat_3_0.v" \

vcom -work xil_defaultlib -93 \
"../../../../NV_project.srcs/sources_1/bd/NV_project/ip/NV_project_bit_order_adjust_tca9538_1_0/sim/NV_project_bit_order_adjust_tca9538_1_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/ec67/hdl" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/02c8/hdl/verilog" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/1313/hdl" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/6180/hdl/verilog" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/a08d/hdl/verilog" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/6851/hdl/verilog" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/82bb/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/ec67/hdl" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/02c8/hdl/verilog" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/1313/hdl" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/6180/hdl/verilog" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/a08d/hdl/verilog" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/6851/hdl/verilog" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/82bb/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../../NV_project.srcs/sources_1/bd/NV_project/ip/NV_project_xlconcat_0_0/sim/NV_project_xlconcat_0_0.v" \
"../../../../NV_project.srcs/sources_1/bd/NV_project/ip/NV_project_xlconstant_19_1/sim/NV_project_xlconstant_19_1.v" \

vcom -work xil_defaultlib -93 \
"../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/e5d0/hdl/parameter_load_2_v1_0_S00_AXI.vhd" \
"../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/e5d0/hdl/parameter_load_2_v1_0.vhd" \
"../../../../NV_project.srcs/sources_1/bd/NV_project/ip/NV_project_parameter_load_2_0_0/sim/NV_project_parameter_load_2_0_0.vhd" \
"../../../../NV_project.srcs/sources_1/bd/NV_project/sim/NV_project.vhd" \
"../../../../NV_project.srcs/sources_1/bd/NV_project/ip/NV_project_serial_interrupt_0_0/sim/NV_project_serial_interrupt_0_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/ec67/hdl" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/02c8/hdl/verilog" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/1313/hdl" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/6180/hdl/verilog" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/a08d/hdl/verilog" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/6851/hdl/verilog" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/82bb/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/ec67/hdl" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/02c8/hdl/verilog" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/1313/hdl" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/6180/hdl/verilog" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/a08d/hdl/verilog" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/6851/hdl/verilog" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/82bb/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../../NV_project.srcs/sources_1/bd/NV_project/ip/NV_project_xlconstant_4_0/sim/NV_project_xlconstant_4_0.v" \
"../../../../NV_project.srcs/sources_1/bd/NV_project/ip/NV_project_xlconstant_18_0/sim/NV_project_xlconstant_18_0.v" \

vcom -work xil_defaultlib -93 \
"../../../../NV_project.srcs/sources_1/bd/NV_project/ip/NV_project_rst_ps7_0_50M_2/sim/NV_project_rst_ps7_0_50M_2.vhd" \
"../../../../NV_project.srcs/sources_1/bd/NV_project/ip/NV_project_rst_ps7_0_10M_0/sim/NV_project_rst_ps7_0_10M_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/ec67/hdl" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/02c8/hdl/verilog" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/1313/hdl" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/6180/hdl/verilog" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/a08d/hdl/verilog" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/6851/hdl/verilog" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/82bb/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/ec67/hdl" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/02c8/hdl/verilog" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/1313/hdl" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/6180/hdl/verilog" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/a08d/hdl/verilog" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/6851/hdl/verilog" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/82bb/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../../NV_project.srcs/sources_1/bd/NV_project/ip/NV_project_xlconstant_12_1/sim/NV_project_xlconstant_12_1.v" \

vcom -work xil_defaultlib -93 \
"../../../../NV_project.srcs/sources_1/bd/NV_project/ip/NV_project_start_200ns_0_0/sim/NV_project_start_200ns_0_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/ec67/hdl" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/02c8/hdl/verilog" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/1313/hdl" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/6180/hdl/verilog" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/a08d/hdl/verilog" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/6851/hdl/verilog" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/82bb/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/ec67/hdl" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/02c8/hdl/verilog" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/1313/hdl" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/6180/hdl/verilog" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/a08d/hdl/verilog" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/6851/hdl/verilog" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/82bb/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../../NV_project.srcs/sources_1/bd/NV_project/ip/NV_project_xlconstant_4_6/sim/NV_project_xlconstant_4_6.v" \

vcom -work xil_defaultlib -93 \
"../../../../NV_project.srcs/sources_1/bd/NV_project/ip/NV_project_three_ph_modulator_0_0/sim/NV_project_three_ph_modulator_0_0.vhd" \
"../../../../NV_project.srcs/sources_1/bd/NV_project/ip/NV_project_system_ila_0_0/bd_0/sim/bd_f43d.vhd" \
"../../../../NV_project.srcs/sources_1/bd/NV_project/ip/NV_project_system_ila_0_0/bd_0/ip/ip_0/sim/bd_f43d_ila_lib_0.vhd" \
"../../../../NV_project.srcs/sources_1/bd/NV_project/ip/NV_project_system_ila_0_0/sim/NV_project_system_ila_0_0.vhd" \
"../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/5380/hdl/vhdl/dc_dc.vhd" \
"../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/5380/hdl/vhdl/dc_dc_fmul_32ns_3bkb.vhd" \
"../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/5380/hdl/vhdl/dc_dc_sitofp_32nscud.vhd" \
"../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/5380/hdl/ip/dc_dc_ap_fmul_2_max_dsp_32.vhd" \
"../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/5380/hdl/ip/dc_dc_ap_sitofp_4_no_dsp_32.vhd" \
"../../../../NV_project.srcs/sources_1/bd/NV_project/ip/NV_project_dc_dc_0_0/sim/NV_project_dc_dc_0_0.vhd" \

vlog -work axi_protocol_converter_v2_1_15  -v2k5 "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/ec67/hdl" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/02c8/hdl/verilog" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/1313/hdl" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/6180/hdl/verilog" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/a08d/hdl/verilog" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/6851/hdl/verilog" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/82bb/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/ec67/hdl" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/02c8/hdl/verilog" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/1313/hdl" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/6180/hdl/verilog" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/a08d/hdl/verilog" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/6851/hdl/verilog" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/82bb/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/ff69/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/ec67/hdl" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/02c8/hdl/verilog" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/1313/hdl" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/6180/hdl/verilog" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/a08d/hdl/verilog" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/6851/hdl/verilog" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/82bb/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/ec67/hdl" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/02c8/hdl/verilog" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/1313/hdl" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/6180/hdl/verilog" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/a08d/hdl/verilog" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/6851/hdl/verilog" "+incdir+../../../../NV_project.srcs/sources_1/bd/NV_project/ipshared/82bb/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../../NV_project.srcs/sources_1/bd/NV_project/ip/NV_project_auto_pc_0/sim/NV_project_auto_pc_0.v" \

vlog -work xil_defaultlib \
"glbl.v"

