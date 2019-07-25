onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+NV_project -L xil_defaultlib -L xpm -L xlconstant_v1_1_3 -L xbip_utils_v3_0_8 -L axi_utils_v2_0_4 -L xbip_pipe_v3_0_4 -L xbip_dsp48_wrapper_v3_0_4 -L xbip_dsp48_addsub_v3_0_4 -L xbip_dsp48_multadd_v3_0_4 -L xbip_bram18k_v3_0_4 -L mult_gen_v12_0_13 -L floating_point_v7_1_5 -L axi_infrastructure_v1_1_0 -L smartconnect_v1_0 -L axi_protocol_checker_v2_0_1 -L axi_vip_v1_1_1 -L processing_system7_vip_v1_0_3 -L axi_lite_ipif_v3_0_4 -L lib_cdc_v1_0_2 -L interrupt_control_v3_1_4 -L axi_gpio_v2_0_17 -L proc_sys_reset_v5_0_12 -L generic_baseblocks_v2_1_0 -L axi_register_slice_v2_1_15 -L fifo_generator_v13_2_1 -L axi_data_fifo_v2_1_14 -L axi_crossbar_v2_1_16 -L xlconcat_v2_1_1 -L axi_protocol_converter_v2_1_15 -L xilinx_vip -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.NV_project xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {NV_project.udo}

run -all

endsim

quit -force
