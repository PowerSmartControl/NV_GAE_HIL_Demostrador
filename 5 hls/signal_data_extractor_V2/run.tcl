############################################################
## Script file to setup and run Vivado HLS.
## 26/02/2018
## Power Smart Control - JRF
############################################################

open_project signal_data_extractor_V2_prj
set_top signal_data_extractor
add_files ./src/signal_data_extractor.cpp
add_files ./src/signal_data_extractor.h
add_files -tb ./src/tb_signal_data_extractor.cpp

############################################################
# Synthesis solution
############################################################
open_solution "sol_IP_Vivado"
set_part {xc7z020clg400-1} -tool vivado
create_clock -period 10 -name default
config_rtl -encoding onehot -reset control -reset_level low

# source "./pmsm_prj/sol_sysgen/directives.tcl"
set_directive_interface -mode ap_none "signal_data_extractor" IL1_c_r
set_directive_interface -mode ap_none "signal_data_extractor" IL2_a_r
set_directive_interface -mode ap_none "signal_data_extractor" Ipmsm_a_r
set_directive_interface -mode ap_none "signal_data_extractor" Vgrid_c_r
set_directive_interface -mode ap_none "signal_data_extractor" Vbus_dc_r
set_directive_interface -mode ap_none "signal_data_extractor" IL2_b_r
set_directive_interface -mode ap_none "signal_data_extractor" Vpmsm_a_r
set_directive_interface -mode ap_none "signal_data_extractor" Vpmsm_b_r
set_directive_interface -mode ap_none "signal_data_extractor" Vgrid_a_r
set_directive_interface -mode ap_none "signal_data_extractor" Vpmsm_c_r
set_directive_interface -mode ap_none "signal_data_extractor" Ipmsm_b_r
set_directive_interface -mode ap_none "signal_data_extractor" Ipmsm_c_r
set_directive_interface -mode ap_none "signal_data_extractor" IL1_a_r
set_directive_interface -mode ap_none "signal_data_extractor" IL2_c_r
set_directive_interface -mode ap_none "signal_data_extractor" Vgrid_b_r
set_directive_interface -mode ap_none "signal_data_extractor" IL1_b_r
set_directive_allocation -limit 5 -type operation "signal_data_extractor" mul

#csim_design
csynth_design
#cosim_design -setup -rtl vhdl
#export_design -rtl vhdl -format ip_catalog -description "wind_turb model" -vendor "PSC" -display_name "wind_turb"
export_design -rtl vhdl -format ip_catalog

############################################################
# Sysgen solution
############################################################
open_solution "sol_sysgen"
set_part {xc7z020clg400-1} -tool vivado
create_clock -period 10 -name default
config_rtl -encoding onehot -reset control -reset_level low

# source "./pmsm_prj/sol_sysgen/directives.tcl"
set_directive_interface -mode ap_none "signal_data_extractor" IL1_c_r
set_directive_interface -mode ap_none "signal_data_extractor" IL2_a_r
set_directive_interface -mode ap_none "signal_data_extractor" Ipmsm_a_r
set_directive_interface -mode ap_none "signal_data_extractor" Vgrid_c_r
set_directive_interface -mode ap_none "signal_data_extractor" Vbus_dc_r
set_directive_interface -mode ap_none "signal_data_extractor" IL2_b_r
set_directive_interface -mode ap_none "signal_data_extractor" Vpmsm_a_r
set_directive_interface -mode ap_none "signal_data_extractor" Vpmsm_b_r
set_directive_interface -mode ap_none "signal_data_extractor" Vgrid_a_r
set_directive_interface -mode ap_none "signal_data_extractor" Vpmsm_c_r
set_directive_interface -mode ap_none "signal_data_extractor" Ipmsm_b_r
set_directive_interface -mode ap_none "signal_data_extractor" Ipmsm_c_r
set_directive_interface -mode ap_none "signal_data_extractor" IL1_a_r
set_directive_interface -mode ap_none "signal_data_extractor" IL2_c_r
set_directive_interface -mode ap_none "signal_data_extractor" Vgrid_b_r
set_directive_interface -mode ap_none "signal_data_extractor" IL1_b_r
set_directive_allocation -limit 5 -type operation "signal_data_extractor" mul


#csim_design
csynth_design
#cosim_design -setup -rtl vhdl
export_design -rtl vhdl -format sysgen


#close_project