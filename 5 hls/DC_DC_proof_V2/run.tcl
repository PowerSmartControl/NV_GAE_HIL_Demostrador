############################################################
## Script file to setup and run Vivado HLS.
## 26/02/2018
## Power Smart Control - JRF
############################################################

open_project dc_dc_prj
set_top dc_dc
add_files ./src/dc_dc.cpp
add_files ./src/dc_dc.h
add_files -tb src/tb_dc_dc.cpp

############################################################
# Synthesis solution
############################################################
open_solution "sol_IP_Vivado"
set_part {xc7z020clg400-1} -tool vivado
create_clock -period 10 -name default
config_rtl -encoding onehot -reset control -reset_level low

# source "./pmsm_prj/sol_sysgen/directives.tcl"
set_directive_interface -mode ap_none -register "dc_dc" T3_out
set_directive_interface -mode ap_none -register "dc_dc" T4_out
set_directive_interface -mode ap_none -register "dc_dc" T5_out
set_directive_interface -mode ap_none -register "dc_dc" T2_out
set_directive_interface -mode ap_none -register "dc_dc" V_N_gnd_out
set_directive_interface -mode ap_none -register "dc_dc" T1_out
set_directive_interface -mode ap_none -register "dc_dc" T6_out


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
set_directive_interface -mode ap_none -register "dc_dc" T3_out
set_directive_interface -mode ap_none -register "dc_dc" T4_out
set_directive_interface -mode ap_none -register "dc_dc" T5_out
set_directive_interface -mode ap_none -register "dc_dc" T2_out
set_directive_interface -mode ap_none -register "dc_dc" V_N_gnd_out
set_directive_interface -mode ap_none -register "dc_dc" T1_out
set_directive_interface -mode ap_none -register "dc_dc" T6_out


#csim_design
csynth_design
#cosim_design -setup -rtl vhdl
export_design -rtl vhdl -format sysgen

#close_project