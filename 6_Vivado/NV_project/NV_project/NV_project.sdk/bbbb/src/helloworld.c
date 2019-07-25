// PSC | Power Smart Control | JRF | 2018


//libraries
#include <string.h>
#include <stdio.h>
#include "platform.h"				//general SDK and Vivado files, drivers...
#include "xil_printf.h"				//default serial port
#include "xparameters.h"			//base address file
#include "NV_parameter_load.h"		//IP for sending parameters from uP to FPGA
#include "parameter_load_2.h"		//IP for sending parameters from uP to FPGA
#include "NV_io_controller.h"		//IP for communication between uP and FPGA (bidirectional)
#include "xscugic.h"				//interruptions
#include "xgpio.h"					//gpios
#include "xil_exception.h"


//#include "xscugic.h"				//interruptions
#include <xil_io.h>					//necessary for working with IPs
#include "xil_exception.h"
//#include "xgpio.h"				//gpios
//#include "xuartps.h"				//serial port (IP)

//function prototipes
static void 	FPGA_timer_Intr_Handler 		(void *InstancePtr);
static int  	InterruptSystemSetup			(XScuGic *XScuGicInstancePtr);
static int  	IntcInitFunction				(u16 DeviceId, XGpio *GpioInstancePtr);



//sending parameters from uP to FPGA (NV_parameter load IP driver, memory base position)
#define 	AXI_NV_PARAMETER_LOAD_BASEADDR		    XPAR_NV_PARAMETER_LOAD_0_S00_AXI_BASEADDR
//communication between FPGA and uP (bidirectional)
#define 	AXI_NV_IO_CONTROLLER_BASEADDR			XPAR_NV_IO_CONTROLLER_0_S00_AXI_BASEADDR
//communication between FPGA and uP number 2 (bidirectional)
#define 	AXI_NV_PARAMETER_LOAD_2_BASEADDR		XPAR_PARAMETER_LOAD_2_0_S00_AXI_BASEADDR

//gpio
#define 	GPIO_FPGA_timer							XPAR_AXI_GPIO_0_DEVICE_ID
//interruptions
#define 	INTC_GPIO_INTERRUPT_ID_FPGA_timer		XPAR_FABRIC_AXI_GPIO_0_IP2INTC_IRPT_INTR
//interruption mask
#define 	INT 									XGPIO_IR_CH1_MASK
//interruptio
#define 	INTC_DEVICE_ID					XPAR_PS7_SCUGIC_0_DEVICE_ID


//variables
//IP NV_PARAMETER_LOAD
int phase_step_on, ret_sel_marcha, sp6, sp7, sp8, sp9, sp10, sp11, sp12=0;

//IP NV_IO_CONTROLLER
int mode, potDig_output_value_1, potDig_output_value_2, potDig_output_value_3, potDig_output_value_4, Expansor_output_value_1, Expansor_output_value_2, Expansor_output_value_3;
int analog_output_maxValue_1, analog_output_maxValue_2, analog_output_maxValue_3, analog_output_maxValue_4, analog_output_maxValue_5, analog_output_maxValue_6, analog_output_maxValue_7, analog_output_maxValue_8, analog_output_maxValue_9, analog_output_maxValue_10, analog_output_maxValue_11, analog_output_maxValue_12, analog_output_maxValue_13, analog_output_maxValue_14, analog_output_maxValue_15, analog_output_maxValue_16, analog_output_maxValue_17, analog_output_maxValue_18;
int Fan_input_value, Expansor_input_value, nc1, nc2, nc3, nc4, nc5, nc6, nc7, nc8;
int Expansor_input_value_READ, mode_dac;
int inv_seq, DC_bus_fived, mode_igbt_input, sp1;
//parameter load 2
int sp_2_0, sp_2_1, sp_2_2, sp_2_3, sp_2_4, sp_2_5, sp_2_6, sp_2_7, sp_2_8, sp_2_9, sp_2_10, sp_2_11, sp_2_12, sp_2_13, sp_2_14, sp_2_15, sp_2_16, sp_2_17, sp_2_18, sp_2_19, sp_2_20, sp_2_21, sp_2_22, sp_2_23, sp_2_24, sp_2_25, sp_2_26, sp_2_27, sp_2_28, sp_2_29;
int ena_chop_res;
int Fan_speed;

float Lgrid, Pi, t_step_C, dt_L1, dt_L2, dt_C, rC, Ampl_a, Ampl_b, Ampl_c, I_in, phase_step, DC_bus_fixed_volt, rL1, rL2;
float rL2_real, Preload, rL1_real;
int Counter_limit, DC_DC_enable;

int flag_read=0;

char *charString = "01100101";
int c, k, n=0;
char expansor_values[7];
int Fan_input_value_READ = 4021;
char my_chain[1024];
char my_chain_2[1024];

XGpio 		GPIO_FPGA_timer_1;
XScuGic 	INTCInst;


//	*******************************************************************************************
//		MODE SELECTOR

int manual_or_console=1;	//1=>NV console / 0=>manual (serie terminal)

//	*******************************************************************************************


int j_C_bus_dc, j_DC_bus_fixed, j_V_bus_voltage, j_L1, j_L2, j_C, j_rL1, j_rL2, j_rPrecarga, j_rC, j_phaseStep, j_phaseStep_on, j_freq_grid, j_Ampl_a, j_Ampl_b, j_Ampl_c, j_inv_seq_grid=0;
int j_t_step, dig_out_18, dig_out_0, dig_out_1, dig_out_2, dig_out_3, dig_out_4, dig_out_5, dig_out_6, dig_out_7, dig_out_8, dig_out_9, dig_out_10, dig_out_11, dig_out_12, dig_out_13, dig_out_14, dig_out_15, dig_out_16, dig_out_17, NTC_0, NTC_1, NTC_2, NTC_3;
int counter=0;
int auxxxx;

unsigned int float_to_u32 (float val){
	unsigned int result;
	union float_bytes{
		float v;
		unsigned char bytes[4];
	}
	data;
	data.v = val;
	result = (data.bytes[3]<<24) + (data.bytes[2]<<16) + (data.bytes[1]<<8) + (data.bytes[0]);
	return result;

}

int main()
{
	init_platform();
	int aux;
	float aux_2;

	int status;																		//status para para inicializar

	//Initialize GPIO
	status = XGpio_Initialize(&GPIO_FPGA_timer_1, GPIO_FPGA_timer);
	if(status != XST_SUCCESS) return XST_FAILURE;
	XGpio_SetDataDirection(&GPIO_FPGA_timer_1, 1, 0xFF);	// Set as input

	//initialize interrupts
	status = IntcInitFunction(INTC_DEVICE_ID, &GPIO_FPGA_timer_1);
	if(status != XST_SUCCESS) return XST_FAILURE;

	//Initializing IP NV_PARAMETER_LOAD
	Pi=13.0f;
	t_step_C=0.00015;
	dt_L1=0.0016;			//AP_16_1
	dt_L2=0.008;//(600uH)		655;			//AP_16_1
	dt_C=0.016;			//AP_16_1
	rC=0.5;				//AP_31_21
	Counter_limit=49;//380;	//AP_16_15
	Ampl_a=	325.0;		//AP_25_16
	Ampl_b= 325.0;		//AP_25_16
	Ampl_c=	325.0;		//AP_25_16
	I_in=0.0;
	phase_step_on=0;	//bool
	phase_step=284.0;		//AP_13_12
	//50deg*1024/360deg = 142 - AP_25_16 arbitrary precision
	//sp1 to sp12 are included in case more parameters become necessary
	DC_bus_fixed_volt=800.0;//AP_18_12
	rL1=1.0;	//NOT USED
	rL2=1.0;    //NOT USED
	inv_seq=0;			//bool
	DC_bus_fived=0;		//bool
	ret_sel_marcha=1;
	mode_igbt_input=1;	//bool (1=> norvento PWM)

	//charging default values in NV_PARAMETER_LOAD IP
	//NV_PARAMETER_LOAD_mWriteReg (AXI_NV_PARAMETER_LOAD_BASEADDR,  28, float_to_u32(325.0f));

	NV_PARAMETER_LOAD_mWriteReg (AXI_NV_PARAMETER_LOAD_BASEADDR,  0, float_to_u32(Pi));
	NV_PARAMETER_LOAD_mWriteReg (AXI_NV_PARAMETER_LOAD_BASEADDR,  4, float_to_u32(t_step_C));
	NV_PARAMETER_LOAD_mWriteReg (AXI_NV_PARAMETER_LOAD_BASEADDR,  8, float_to_u32(dt_L1));
	NV_PARAMETER_LOAD_mWriteReg (AXI_NV_PARAMETER_LOAD_BASEADDR, 12, float_to_u32(dt_L2));
	NV_PARAMETER_LOAD_mWriteReg (AXI_NV_PARAMETER_LOAD_BASEADDR, 16, float_to_u32(dt_C));
	NV_PARAMETER_LOAD_mWriteReg (AXI_NV_PARAMETER_LOAD_BASEADDR, 20, float_to_u32(rC));
	NV_PARAMETER_LOAD_mWriteReg (AXI_NV_PARAMETER_LOAD_BASEADDR, 24, Counter_limit);
	NV_PARAMETER_LOAD_mWriteReg (AXI_NV_PARAMETER_LOAD_BASEADDR, 28, float_to_u32(Ampl_a));
	NV_PARAMETER_LOAD_mWriteReg (AXI_NV_PARAMETER_LOAD_BASEADDR, 32, float_to_u32(Ampl_b));
	NV_PARAMETER_LOAD_mWriteReg (AXI_NV_PARAMETER_LOAD_BASEADDR, 36, float_to_u32(Ampl_c));

	NV_PARAMETER_LOAD_mWriteReg (AXI_NV_PARAMETER_LOAD_BASEADDR, 40, float_to_u32(I_in));
	NV_PARAMETER_LOAD_mWriteReg (AXI_NV_PARAMETER_LOAD_BASEADDR, 44, phase_step_on);
	NV_PARAMETER_LOAD_mWriteReg (AXI_NV_PARAMETER_LOAD_BASEADDR, 48, (int)phase_step);
	NV_PARAMETER_LOAD_mWriteReg (AXI_NV_PARAMETER_LOAD_BASEADDR, 52, float_to_u32(DC_bus_fixed_volt));
	NV_PARAMETER_LOAD_mWriteReg (AXI_NV_PARAMETER_LOAD_BASEADDR, 56, float_to_u32(rL1));
	NV_PARAMETER_LOAD_mWriteReg (AXI_NV_PARAMETER_LOAD_BASEADDR, 60, float_to_u32(rL2));
	NV_PARAMETER_LOAD_mWriteReg (AXI_NV_PARAMETER_LOAD_BASEADDR, 64, inv_seq);
	NV_PARAMETER_LOAD_mWriteReg (AXI_NV_PARAMETER_LOAD_BASEADDR, 68, DC_bus_fived);
	NV_PARAMETER_LOAD_mWriteReg (AXI_NV_PARAMETER_LOAD_BASEADDR, 72, ret_sel_marcha);
	NV_PARAMETER_LOAD_mWriteReg (AXI_NV_PARAMETER_LOAD_BASEADDR, 76, mode_igbt_input);

	///////

	mode=0;	//0-> normal node | 1-> test mode
	analog_output_maxValue_1=2048;
	analog_output_maxValue_2=2048;
	analog_output_maxValue_3=2048;
	analog_output_maxValue_4=2048;
	analog_output_maxValue_5=2048;
	analog_output_maxValue_6=2048;
	analog_output_maxValue_7=2048;
	analog_output_maxValue_8=2048;
	analog_output_maxValue_9=2048;
	analog_output_maxValue_10=2048;
	analog_output_maxValue_11=2048;
	analog_output_maxValue_12=2048;
	analog_output_maxValue_13=2048;
	analog_output_maxValue_14=2048;
	analog_output_maxValue_15=2048;
	analog_output_maxValue_16=2048;
	analog_output_maxValue_17=2048;
	analog_output_maxValue_18=2048;		//not connected in hardware
	potDig_output_value_1=967;
	potDig_output_value_2=57;
	potDig_output_value_3=57;
	potDig_output_value_4=24;
	Expansor_output_value_1=0;//5;
	Expansor_output_value_2=0;//132;
	Expansor_output_value_3=0;//254;
	Fan_input_value=0;			//input
	Expansor_input_value=0;		//input
	//nc1 to nc8 are included in case more parameters become necessary
	mode_dac=1;	//outputs
	nc2=0;
	nc3=0;
	nc4=0;
	nc5=0;	//inputs
	nc6=0;
	nc7=0;
	nc8=0;

	//charging default values in NV_IO_CONTROLLER IP
	NV_IO_CONTROLLER_mWriteReg (XPAR_NV_IO_CONTROLLER_0_S00_AXI_BASEADDR, 0, mode);
	NV_IO_CONTROLLER_mWriteReg (XPAR_NV_IO_CONTROLLER_0_S00_AXI_BASEADDR, 4, analog_output_maxValue_1);
	NV_IO_CONTROLLER_mWriteReg (XPAR_NV_IO_CONTROLLER_0_S00_AXI_BASEADDR, 8, analog_output_maxValue_2);
	NV_IO_CONTROLLER_mWriteReg (XPAR_NV_IO_CONTROLLER_0_S00_AXI_BASEADDR, 12, analog_output_maxValue_3);
	NV_IO_CONTROLLER_mWriteReg (XPAR_NV_IO_CONTROLLER_0_S00_AXI_BASEADDR, 16, analog_output_maxValue_4);
	NV_IO_CONTROLLER_mWriteReg (XPAR_NV_IO_CONTROLLER_0_S00_AXI_BASEADDR, 20, analog_output_maxValue_5);
	NV_IO_CONTROLLER_mWriteReg (XPAR_NV_IO_CONTROLLER_0_S00_AXI_BASEADDR, 24, analog_output_maxValue_6);
	NV_IO_CONTROLLER_mWriteReg (XPAR_NV_IO_CONTROLLER_0_S00_AXI_BASEADDR, 28, analog_output_maxValue_7);
	NV_IO_CONTROLLER_mWriteReg (XPAR_NV_IO_CONTROLLER_0_S00_AXI_BASEADDR, 32, analog_output_maxValue_8);
	NV_IO_CONTROLLER_mWriteReg (XPAR_NV_IO_CONTROLLER_0_S00_AXI_BASEADDR, 36, analog_output_maxValue_9);

	NV_IO_CONTROLLER_mWriteReg (XPAR_NV_IO_CONTROLLER_0_S00_AXI_BASEADDR, 40, analog_output_maxValue_10);
	NV_IO_CONTROLLER_mWriteReg (XPAR_NV_IO_CONTROLLER_0_S00_AXI_BASEADDR, 44, analog_output_maxValue_11);
	NV_IO_CONTROLLER_mWriteReg (XPAR_NV_IO_CONTROLLER_0_S00_AXI_BASEADDR, 48, analog_output_maxValue_12);
	NV_IO_CONTROLLER_mWriteReg (XPAR_NV_IO_CONTROLLER_0_S00_AXI_BASEADDR, 52, analog_output_maxValue_13);
	NV_IO_CONTROLLER_mWriteReg (XPAR_NV_IO_CONTROLLER_0_S00_AXI_BASEADDR, 56, analog_output_maxValue_14);
	NV_IO_CONTROLLER_mWriteReg (XPAR_NV_IO_CONTROLLER_0_S00_AXI_BASEADDR, 60, analog_output_maxValue_15);
	NV_IO_CONTROLLER_mWriteReg (XPAR_NV_IO_CONTROLLER_0_S00_AXI_BASEADDR, 64, analog_output_maxValue_16);
	NV_IO_CONTROLLER_mWriteReg (XPAR_NV_IO_CONTROLLER_0_S00_AXI_BASEADDR, 68, analog_output_maxValue_17);
	NV_IO_CONTROLLER_mWriteReg (XPAR_NV_IO_CONTROLLER_0_S00_AXI_BASEADDR, 72, analog_output_maxValue_18);
	NV_IO_CONTROLLER_mWriteReg (XPAR_NV_IO_CONTROLLER_0_S00_AXI_BASEADDR, 76, potDig_output_value_1);

	NV_IO_CONTROLLER_mWriteReg (XPAR_NV_IO_CONTROLLER_0_S00_AXI_BASEADDR, 80, potDig_output_value_2);
	NV_IO_CONTROLLER_mWriteReg (XPAR_NV_IO_CONTROLLER_0_S00_AXI_BASEADDR, 84, potDig_output_value_3);
	NV_IO_CONTROLLER_mWriteReg (XPAR_NV_IO_CONTROLLER_0_S00_AXI_BASEADDR, 88, potDig_output_value_4);
	NV_IO_CONTROLLER_mWriteReg (XPAR_NV_IO_CONTROLLER_0_S00_AXI_BASEADDR, 92, Expansor_output_value_1);
	NV_IO_CONTROLLER_mWriteReg (XPAR_NV_IO_CONTROLLER_0_S00_AXI_BASEADDR, 96, Expansor_output_value_2);
	NV_IO_CONTROLLER_mWriteReg (XPAR_NV_IO_CONTROLLER_0_S00_AXI_BASEADDR, 100, Expansor_output_value_3);
	NV_IO_CONTROLLER_mWriteReg (XPAR_NV_IO_CONTROLLER_0_S00_AXI_BASEADDR, 104, 25);			//input
	NV_IO_CONTROLLER_mWriteReg (XPAR_NV_IO_CONTROLLER_0_S00_AXI_BASEADDR, 108, 25);		//input

	NV_IO_CONTROLLER_mWriteReg (XPAR_NV_IO_CONTROLLER_0_S00_AXI_BASEADDR, 112, mode_dac);
	NV_IO_CONTROLLER_mWriteReg (XPAR_NV_IO_CONTROLLER_0_S00_AXI_BASEADDR, 116, nc2);

	NV_IO_CONTROLLER_mWriteReg (XPAR_NV_IO_CONTROLLER_0_S00_AXI_BASEADDR, 120, nc3);
	NV_IO_CONTROLLER_mWriteReg (XPAR_NV_IO_CONTROLLER_0_S00_AXI_BASEADDR, 124, nc4);
	NV_IO_CONTROLLER_mWriteReg (XPAR_NV_IO_CONTROLLER_0_S00_AXI_BASEADDR, 128, 25);		//input
	NV_IO_CONTROLLER_mWriteReg (XPAR_NV_IO_CONTROLLER_0_S00_AXI_BASEADDR, 132, 25);		//input
	NV_IO_CONTROLLER_mWriteReg (XPAR_NV_IO_CONTROLLER_0_S00_AXI_BASEADDR, 136, 25);		//input
	NV_IO_CONTROLLER_mWriteReg (XPAR_NV_IO_CONTROLLER_0_S00_AXI_BASEADDR, 140, 25);		//input
	//inputs should be written for driver initializing

	///////

	rL2_real=(float)1.5f;//13;//200;//2;			//AP_30_23
	Preload=(float)11.0f;//200;//1408;//(11ohm)		640;			//AP_32_25
	ena_chop_res=0;		//bool
	rL1_real=(float)0.1f;			//spare / unused
	DC_DC_enable=0;
	sp_2_5=0;
	sp_2_6=0;
	sp_2_7=0;
	sp_2_8=0;
	sp_2_9=0;
	sp_2_10=0;
	sp_2_11=0;
	sp_2_12=0;
	sp_2_13=0;
	sp_2_14=0;
	sp_2_15=0;
	sp_2_16=0;
	sp_2_17=0;
	sp_2_18=0;
	sp_2_19=0;
	sp_2_20=0;
	sp_2_21=0;
	sp_2_22=0;
	sp_2_23=0;
	sp_2_24=0;
	sp_2_25=0;
	sp_2_26=0;
	sp_2_27=0;
	sp_2_28=0;
	sp_2_29=0;

	PARAMETER_LOAD_2_mWriteReg (AXI_NV_PARAMETER_LOAD_2_BASEADDR,  0, float_to_u32(rL2_real));
	PARAMETER_LOAD_2_mWriteReg (AXI_NV_PARAMETER_LOAD_2_BASEADDR,  4, float_to_u32(Preload));
	PARAMETER_LOAD_2_mWriteReg (AXI_NV_PARAMETER_LOAD_2_BASEADDR,  8, ena_chop_res);
	PARAMETER_LOAD_2_mWriteReg (AXI_NV_PARAMETER_LOAD_2_BASEADDR,  12, float_to_u32(rL1_real));
	PARAMETER_LOAD_2_mWriteReg (AXI_NV_PARAMETER_LOAD_2_BASEADDR,  16, DC_DC_enable);
	PARAMETER_LOAD_2_mWriteReg (AXI_NV_PARAMETER_LOAD_2_BASEADDR,  20, sp_2_5);
	PARAMETER_LOAD_2_mWriteReg (AXI_NV_PARAMETER_LOAD_2_BASEADDR,  24, sp_2_6);
	PARAMETER_LOAD_2_mWriteReg (AXI_NV_PARAMETER_LOAD_2_BASEADDR,  28, sp_2_7);
	PARAMETER_LOAD_2_mWriteReg (AXI_NV_PARAMETER_LOAD_2_BASEADDR,  32, sp_2_8);
	PARAMETER_LOAD_2_mWriteReg (AXI_NV_PARAMETER_LOAD_2_BASEADDR,  36, sp_2_9);
	PARAMETER_LOAD_2_mWriteReg (AXI_NV_PARAMETER_LOAD_2_BASEADDR,  40, sp_2_10);
	PARAMETER_LOAD_2_mWriteReg (AXI_NV_PARAMETER_LOAD_2_BASEADDR,  44, sp_2_11);
	PARAMETER_LOAD_2_mWriteReg (AXI_NV_PARAMETER_LOAD_2_BASEADDR,  48, sp_2_12);
	PARAMETER_LOAD_2_mWriteReg (AXI_NV_PARAMETER_LOAD_2_BASEADDR,  52, sp_2_13);
	PARAMETER_LOAD_2_mWriteReg (AXI_NV_PARAMETER_LOAD_2_BASEADDR,  56, sp_2_14);
	PARAMETER_LOAD_2_mWriteReg (AXI_NV_PARAMETER_LOAD_2_BASEADDR,  60, sp_2_15);
	PARAMETER_LOAD_2_mWriteReg (AXI_NV_PARAMETER_LOAD_2_BASEADDR,  64, sp_2_16);
	PARAMETER_LOAD_2_mWriteReg (AXI_NV_PARAMETER_LOAD_2_BASEADDR,  68, sp_2_17);
	PARAMETER_LOAD_2_mWriteReg (AXI_NV_PARAMETER_LOAD_2_BASEADDR,  72, sp_2_18);
	PARAMETER_LOAD_2_mWriteReg (AXI_NV_PARAMETER_LOAD_2_BASEADDR,  76, sp_2_19);
	PARAMETER_LOAD_2_mWriteReg (AXI_NV_PARAMETER_LOAD_2_BASEADDR,  80, sp_2_20);
	PARAMETER_LOAD_2_mWriteReg (AXI_NV_PARAMETER_LOAD_2_BASEADDR,  84, sp_2_21);
	PARAMETER_LOAD_2_mWriteReg (AXI_NV_PARAMETER_LOAD_2_BASEADDR,  88, sp_2_22);
	PARAMETER_LOAD_2_mWriteReg (AXI_NV_PARAMETER_LOAD_2_BASEADDR,  92, sp_2_23);
	PARAMETER_LOAD_2_mWriteReg (AXI_NV_PARAMETER_LOAD_2_BASEADDR,  96, sp_2_24);
	PARAMETER_LOAD_2_mWriteReg (AXI_NV_PARAMETER_LOAD_2_BASEADDR,  100, sp_2_25);
	PARAMETER_LOAD_2_mWriteReg (AXI_NV_PARAMETER_LOAD_2_BASEADDR,  104, sp_2_26);
	PARAMETER_LOAD_2_mWriteReg (AXI_NV_PARAMETER_LOAD_2_BASEADDR,  108, sp_2_27);
	PARAMETER_LOAD_2_mWriteReg (AXI_NV_PARAMETER_LOAD_2_BASEADDR,  112, sp_2_28);
	PARAMETER_LOAD_2_mWriteReg (AXI_NV_PARAMETER_LOAD_2_BASEADDR,  116, sp_2_29);




	//Flush UART FIFO
	//while (XUartPs_IsReceiveData(UART_BASEADDR)) XUartPs_ReadReg(UART_BASEADDR, XUARTPS_FIFO_OFFSET);

	//printf("\n PSC | Power Smart Control | 2018 \n");

	//printf("\n Initialization...	OK");


	//charString="01100101";
	//Fan_input_value_READ=1021;


	//never-ending loop
	for (;;){

		if (manual_or_console==1){	//mode console

			//k6 - prueba inyectar corriente a la red
			if (charString[2]=='1')																													/*Gamesa*/
				mode_igbt_input=0; //(internal pwm modulator)
			else
				mode_igbt_input=1;
			//k5
			if (charString[3]=='1')	{																												/*Gamesa*/
				ena_chop_res=1;	//active power injection
				j_C_bus_dc=600;
				j_DC_bus_fixed=1;
			}
			else
				ena_chop_res=0;
			//k2
			if (charString[6]=='1')																													/*Gamesa*/
				DC_DC_enable=1;	//dc_dc mode anabled
			else
				DC_DC_enable=0;



			//expansor of inputs read
			NV_IO_CONTROLLER_mWriteReg (XPAR_NV_IO_CONTROLLER_0_S00_AXI_BASEADDR,  108, 25);
			Expansor_input_value_READ	= NV_IO_CONTROLLER_mReadReg (XPAR_NV_IO_CONTROLLER_0_S00_AXI_BASEADDR,  108);
			//convert decimal to binary for digital inputs
			n=Expansor_input_value_READ;
			for (c = 7; c >= 0; c--)
			{
				k = n >> c;
				if (k & 1){
					expansor_values[7-c] = '1';
				}
				else{
					expansor_values[7-c] = '0';
				}
			}
			strcpy(charString,expansor_values);

			//fan read
			NV_IO_CONTROLLER_mWriteReg (XPAR_NV_IO_CONTROLLER_0_S00_AXI_BASEADDR,  104, 25);
			Fan_input_value_READ 		= NV_IO_CONTROLLER_mReadReg (XPAR_NV_IO_CONTROLLER_0_S00_AXI_BASEADDR,  104);
			Fan_speed =  (int)(((float)Fan_input_value_READ*100)/4096);

			//auxxxx = (int)(1.4 * j_C_bus_dc );

			//update FPGA values from console:
			// NV_PARAMETER_LOAD IP
			//NV_PARAMETER_LOAD_mWriteReg (AXI_NV_PARAMETER_LOAD_BASEADDR,  0, Pi);
			//	***	//the constants are for converting the console fixed point to FPGA float point.
			//	*** //4.0 is the difference between console tstep and FPGA tstep
			NV_PARAMETER_LOAD_mWriteReg (AXI_NV_PARAMETER_LOAD_BASEADDR,  4, float_to_u32(4.0f*0.0000038146f*j_C_bus_dc));
			NV_PARAMETER_LOAD_mWriteReg (AXI_NV_PARAMETER_LOAD_BASEADDR,  8, float_to_u32(4.0f*0.00003051f*j_L1));
			NV_PARAMETER_LOAD_mWriteReg (AXI_NV_PARAMETER_LOAD_BASEADDR, 12, float_to_u32(4.0f*0.00003051f*j_L2));
			NV_PARAMETER_LOAD_mWriteReg (AXI_NV_PARAMETER_LOAD_BASEADDR, 16, float_to_u32(4.0f*0.00003051f*j_C));
			NV_PARAMETER_LOAD_mWriteReg (AXI_NV_PARAMETER_LOAD_BASEADDR, 20, float_to_u32(0.000976f*j_rC));
			NV_PARAMETER_LOAD_mWriteReg (AXI_NV_PARAMETER_LOAD_BASEADDR, 24, (int)(0.12894f*j_freq_grid)+1);
			NV_PARAMETER_LOAD_mWriteReg (AXI_NV_PARAMETER_LOAD_BASEADDR, 28, float_to_u32(0.00195f*j_Ampl_a));
			NV_PARAMETER_LOAD_mWriteReg (AXI_NV_PARAMETER_LOAD_BASEADDR, 32, float_to_u32(0.00195f*j_Ampl_b));
			NV_PARAMETER_LOAD_mWriteReg (AXI_NV_PARAMETER_LOAD_BASEADDR, 36, float_to_u32(0.00195f*j_Ampl_c));

			NV_PARAMETER_LOAD_mWriteReg (AXI_NV_PARAMETER_LOAD_BASEADDR, 40, 0);//I_in);
			NV_PARAMETER_LOAD_mWriteReg (AXI_NV_PARAMETER_LOAD_BASEADDR, 44, j_phaseStep_on);
			NV_PARAMETER_LOAD_mWriteReg (AXI_NV_PARAMETER_LOAD_BASEADDR, 48, (int)j_phaseStep);
			NV_PARAMETER_LOAD_mWriteReg (AXI_NV_PARAMETER_LOAD_BASEADDR, 52, float_to_u32(0.015625f*j_V_bus_voltage));
			//NV_PARAMETER_LOAD_mWriteReg (AXI_NV_PARAMETER_LOAD_BASEADDR, 56, j_rL1*0.0078125);
			//			NV_PARAMETER_LOAD_mWriteReg (AXI_NV_PARAMETER_LOAD_BASEADDR, 60, rL2);//do not use
			NV_PARAMETER_LOAD_mWriteReg (AXI_NV_PARAMETER_LOAD_BASEADDR, 64, j_inv_seq_grid);
			NV_PARAMETER_LOAD_mWriteReg (AXI_NV_PARAMETER_LOAD_BASEADDR, 68, j_DC_bus_fixed);
			//			NV_PARAMETER_LOAD_mWriteReg (AXI_NV_PARAMETER_LOAD_BASEADDR, 72, ret_sel_marcha);
			NV_PARAMETER_LOAD_mWriteReg (AXI_NV_PARAMETER_LOAD_BASEADDR, 76, mode_igbt_input);//mode_igbt_input);

			///////

			// NV_IO_CONTROLLER IP
			//			NV_IO_CONTROLLER_mWriteReg (XPAR_NV_IO_CONTROLLER_0_S00_AXI_BASEADDR, 0, mode);
			//			NV_IO_CONTROLLER_mWriteReg (XPAR_NV_IO_CONTROLLER_0_S00_AXI_BASEADDR, 4, analog_output_maxValue_1);
			//			NV_IO_CONTROLLER_mWriteReg (XPAR_NV_IO_CONTROLLER_0_S00_AXI_BASEADDR, 8, analog_output_maxValue_2);
			//			NV_IO_CONTROLLER_mWriteReg (XPAR_NV_IO_CONTROLLER_0_S00_AXI_BASEADDR, 12, analog_output_maxValue_3);
			//			NV_IO_CONTROLLER_mWriteReg (XPAR_NV_IO_CONTROLLER_0_S00_AXI_BASEADDR, 16, analog_output_maxValue_4);
			//			NV_IO_CONTROLLER_mWriteReg (XPAR_NV_IO_CONTROLLER_0_S00_AXI_BASEADDR, 20, analog_output_maxValue_5);
			//			NV_IO_CONTROLLER_mWriteReg (XPAR_NV_IO_CONTROLLER_0_S00_AXI_BASEADDR, 24, analog_output_maxValue_6);
			//			NV_IO_CONTROLLER_mWriteReg (XPAR_NV_IO_CONTROLLER_0_S00_AXI_BASEADDR, 28, analog_output_maxValue_7);
			//			NV_IO_CONTROLLER_mWriteReg (XPAR_NV_IO_CONTROLLER_0_S00_AXI_BASEADDR, 32, analog_output_maxValue_8);
			//			NV_IO_CONTROLLER_mWriteReg (XPAR_NV_IO_CONTROLLER_0_S00_AXI_BASEADDR, 36, analog_output_maxValue_9);
			//			NV_IO_CONTROLLER_mWriteReg (XPAR_NV_IO_CONTROLLER_0_S00_AXI_BASEADDR, 40, analog_output_maxValue_10);
			//			NV_IO_CONTROLLER_mWriteReg (XPAR_NV_IO_CONTROLLER_0_S00_AXI_BASEADDR, 44, analog_output_maxValue_11);
			//			NV_IO_CONTROLLER_mWriteReg (XPAR_NV_IO_CONTROLLER_0_S00_AXI_BASEADDR, 48, analog_output_maxValue_12);
			//			NV_IO_CONTROLLER_mWriteReg (XPAR_NV_IO_CONTROLLER_0_S00_AXI_BASEADDR, 52, analog_output_maxValue_13);
			//			NV_IO_CONTROLLER_mWriteReg (XPAR_NV_IO_CONTROLLER_0_S00_AXI_BASEADDR, 56, analog_output_maxValue_14);
			//			NV_IO_CONTROLLER_mWriteReg (XPAR_NV_IO_CONTROLLER_0_S00_AXI_BASEADDR, 60, analog_output_maxValue_15);
			//			NV_IO_CONTROLLER_mWriteReg (XPAR_NV_IO_CONTROLLER_0_S00_AXI_BASEADDR, 64, analog_output_maxValue_16);
			//			NV_IO_CONTROLLER_mWriteReg (XPAR_NV_IO_CONTROLLER_0_S00_AXI_BASEADDR, 68, analog_output_maxValue_17);
			//			NV_IO_CONTROLLER_mWriteReg (XPAR_NV_IO_CONTROLLER_0_S00_AXI_BASEADDR, 72, analog_output_maxValue_18);
			//			NV_IO_CONTROLLER_mWriteReg (XPAR_NV_IO_CONTROLLER_0_S00_AXI_BASEADDR, 76, potDig_output_value_1);
			//			NV_IO_CONTROLLER_mWriteReg (XPAR_NV_IO_CONTROLLER_0_S00_AXI_BASEADDR, 80, potDig_output_value_2);
			//			NV_IO_CONTROLLER_mWriteReg (XPAR_NV_IO_CONTROLLER_0_S00_AXI_BASEADDR, 84, potDig_output_value_3);
			//			NV_IO_CONTROLLER_mWriteReg (XPAR_NV_IO_CONTROLLER_0_S00_AXI_BASEADDR, 88, potDig_output_value_4);
			//			NV_IO_CONTROLLER_mWriteReg (XPAR_NV_IO_CONTROLLER_0_S00_AXI_BASEADDR, 92, Expansor_output_value_1);
			//			NV_IO_CONTROLLER_mWriteReg (XPAR_NV_IO_CONTROLLER_0_S00_AXI_BASEADDR, 96, Expansor_output_value_2);
			//			NV_IO_CONTROLLER_mWriteReg (XPAR_NV_IO_CONTROLLER_0_S00_AXI_BASEADDR, 100, Expansor_output_value_3);
			//			NV_IO_CONTROLLER_mWriteReg (XPAR_NV_IO_CONTROLLER_0_S00_AXI_BASEADDR, 112, mode_dac);
			//			NV_IO_CONTROLLER_mWriteReg (XPAR_NV_IO_CONTROLLER_0_S00_AXI_BASEADDR, 116, nc2);
			//			NV_IO_CONTROLLER_mWriteReg (XPAR_NV_IO_CONTROLLER_0_S00_AXI_BASEADDR, 120, nc3);
			//			NV_IO_CONTROLLER_mWriteReg (XPAR_NV_IO_CONTROLLER_0_S00_AXI_BASEADDR, 124, nc4);

			///////



			// NV_PARAMETER_LOAD_2
			PARAMETER_LOAD_2_mWriteReg (AXI_NV_PARAMETER_LOAD_2_BASEADDR,  0, float_to_u32(1.5f));//0.0078125f*j_rL2));
			PARAMETER_LOAD_2_mWriteReg (AXI_NV_PARAMETER_LOAD_2_BASEADDR,  4, float_to_u32(0.00781f*j_rPrecarga));
			PARAMETER_LOAD_2_mWriteReg (AXI_NV_PARAMETER_LOAD_2_BASEADDR,  8, ena_chop_res);
			PARAMETER_LOAD_2_mWriteReg (AXI_NV_PARAMETER_LOAD_2_BASEADDR,  12, float_to_u32(0.1f));//0.0078125f*j_rL1));
			PARAMETER_LOAD_2_mWriteReg (AXI_NV_PARAMETER_LOAD_2_BASEADDR,  16, DC_DC_enable);
			//			PARAMETER_LOAD_2_mWriteReg (AXI_NV_PARAMETER_LOAD_2_BASEADDR,  20, sp_2_5);
			//			PARAMETER_LOAD_2_mWriteReg (AXI_NV_PARAMETER_LOAD_2_BASEADDR,  24, sp_2_6);
			//			PARAMETER_LOAD_2_mWriteReg (AXI_NV_PARAMETER_LOAD_2_BASEADDR,  28, sp_2_7);
			//			PARAMETER_LOAD_2_mWriteReg (AXI_NV_PARAMETER_LOAD_2_BASEADDR,  32, sp_2_8);
			//			PARAMETER_LOAD_2_mWriteReg (AXI_NV_PARAMETER_LOAD_2_BASEADDR,  36, sp_2_9);
			//			PARAMETER_LOAD_2_mWriteReg (AXI_NV_PARAMETER_LOAD_2_BASEADDR,  40, sp_2_10);
			//			PARAMETER_LOAD_2_mWriteReg (AXI_NV_PARAMETER_LOAD_2_BASEADDR,  44, sp_2_11);
			//			PARAMETER_LOAD_2_mWriteReg (AXI_NV_PARAMETER_LOAD_2_BASEADDR,  48, sp_2_12);
			//			PARAMETER_LOAD_2_mWriteReg (AXI_NV_PARAMETER_LOAD_2_BASEADDR,  52, sp_2_13);
			//			PARAMETER_LOAD_2_mWriteReg (AXI_NV_PARAMETER_LOAD_2_BASEADDR,  56, sp_2_14);
			//			PARAMETER_LOAD_2_mWriteReg (AXI_NV_PARAMETER_LOAD_2_BASEADDR,  60, sp_2_15);
			//			PARAMETER_LOAD_2_mWriteReg (AXI_NV_PARAMETER_LOAD_2_BASEADDR,  64, sp_2_16);
			//			PARAMETER_LOAD_2_mWriteReg (AXI_NV_PARAMETER_LOAD_2_BASEADDR,  68, sp_2_17);
			//			PARAMETER_LOAD_2_mWriteReg (AXI_NV_PARAMETER_LOAD_2_BASEADDR,  72, sp_2_18);
			//			PARAMETER_LOAD_2_mWriteReg (AXI_NV_PARAMETER_LOAD_2_BASEADDR,  76, sp_2_19);
			//			PARAMETER_LOAD_2_mWriteReg (AXI_NV_PARAMETER_LOAD_2_BASEADDR,  80, sp_2_20);
			//			PARAMETER_LOAD_2_mWriteReg (AXI_NV_PARAMETER_LOAD_2_BASEADDR,  84, sp_2_21);
			//			PARAMETER_LOAD_2_mWriteReg (AXI_NV_PARAMETER_LOAD_2_BASEADDR,  88, sp_2_22);
			//			PARAMETER_LOAD_2_mWriteReg (AXI_NV_PARAMETER_LOAD_2_BASEADDR,  92, sp_2_23);
			//			PARAMETER_LOAD_2_mWriteReg (AXI_NV_PARAMETER_LOAD_2_BASEADDR,  96, sp_2_24);
			//			PARAMETER_LOAD_2_mWriteReg (AXI_NV_PARAMETER_LOAD_2_BASEADDR,  100, sp_2_25);
			//			PARAMETER_LOAD_2_mWriteReg (AXI_NV_PARAMETER_LOAD_2_BASEADDR,  104, sp_2_26);
			//			PARAMETER_LOAD_2_mWriteReg (AXI_NV_PARAMETER_LOAD_2_BASEADDR,  108, sp_2_27);
			//			PARAMETER_LOAD_2_mWriteReg (AXI_NV_PARAMETER_LOAD_2_BASEADDR,  112, sp_2_28);
			//			PARAMETER_LOAD_2_mWriteReg (AXI_NV_PARAMETER_LOAD_2_BASEADDR,  116, sp_2_29);

		}
		else{

			printf("\n\nParameter list:\n\n");
			//parameter_load
			//printf("Pi:                                                              \t %-10d choose-> 1\n", Pi);
			printf("t_step_C:                                                        \t %f choose-> 2\n", t_step_C);
			printf("dt_L1:                                                           \t %f choose-> 3\n", dt_L1);
			printf("dt_L2:                                                           \t %f choose-> 4\n", dt_L2);
			printf("dt_C:                                                            \t %f choose-> 5\n", dt_C);
			printf("rC:                                                              \t %f choose-> 6\n", rC);
			printf("Counter_limit (grid freq):                                       \t %f choose-> 7\n", (float)Counter_limit);
			printf("Ampl_a:                                                          \t %f choose-> 8\n", Ampl_a);
			printf("Ampl_b:                                                          \t %f choose-> 9\n", Ampl_b);
			printf("Ampl_c:                                                          \t %f choose->10\n", Ampl_c);
			printf("I in dc bus:                                                           \t %f choose->11\n", Lgrid);
			printf("phase_step_on (1=> on):                                          \t %d choose->12\n", phase_step_on);
			printf("phase_step:                                                      \t %f choose->13\n", phase_step);
			printf("DC_bus_fixed_voltage (in volts):                                 \t %f choose->14\n", DC_bus_fixed_volt);
			//printf("rL1:           \t\t\t%i\t\tchoose->15\n", rL1);
			//printf("rL2:           \t\t\t%i\t\tchoose->16\n", rL2);
			printf("inv_seq (1=> seq inv):                                           \t %-10d choose->17\n", inv_seq);
			printf("DC_bus_fived (1=> fixed):                                        \t %-10d choose->18\n", DC_bus_fived);
			printf("mode_igbt_input (1=> norvento PWM):                              \t %-10d choose->19\n", mode_igbt_input);
			printf("retorno_sel_marcha:                                              \t %-10d choose->20\n", ret_sel_marcha);

			//parameter_load_2
			printf("rL2:                                                             \t %f choose->21\n", rL2_real);
			printf("Preload:                                                         \t %f choose->22\n", Preload);
			printf("rL1:                                                             \t %f choose->24\n", rL1_real);
			printf("power injection proof (1=> on):                                    \t %-10d choose->23\n", ena_chop_res);
			printf("DC_DC_enable (1=> on):                                    \t %-10d choose->25\n", DC_DC_enable);


			printf("\n		                    ===			\n");

			//io_controller
			NV_IO_CONTROLLER_mWriteReg (XPAR_NV_IO_CONTROLLER_0_S00_AXI_BASEADDR,  108, 25);
			Expansor_input_value_READ	= NV_IO_CONTROLLER_mReadReg (XPAR_NV_IO_CONTROLLER_0_S00_AXI_BASEADDR,  108);
			//convert decimal to binary for digital inputs

			n=Expansor_input_value_READ;
			for (c = 7; c >= 0; c--)
			{
				k = n >> c;

				if (k & 1){
					expansor_values[7-c] = '1';
					//printf("1");
				}
				else{
					expansor_values[7-c] = '0';
					//printf("0");
				}
			}
			strcpy(charString,expansor_values);

			printf("\nData read from:");
			printf ("\nDigital inputs exp:  (7) CB1->%c bulb->%c K6->%c K5->%c K4->%c K3->%c K2->%c K1->%c (0)", charString[0],charString[1],charString[2],charString[3],charString[4],charString[5],charString[6],charString[7]);
			//printf ("\nDigital inputs exp  %s", charString);
			NV_IO_CONTROLLER_mWriteReg (XPAR_NV_IO_CONTROLLER_0_S00_AXI_BASEADDR,  104, 25);
			Fan_input_value_READ 		= NV_IO_CONTROLLER_mReadReg (XPAR_NV_IO_CONTROLLER_0_S00_AXI_BASEADDR,  104);
			printf("\nFan speed:		 		\t\t\t%i %%\n", (int)(((float)Fan_input_value_READ*100)/4096));

			printf("\n		===			\n\n");

			/*
		//output parameters
		printf("DAC_analog_output_maxValue_1 (1 to 4095):               \t\t\t%i->%fV\t\tchoose->140\n", analog_output_maxValue_1, ((float)analog_output_maxValue_1*5/4096));
		printf("DAC_analog_output_maxValue_2 (1 to 4095):               \t\t\t%i->%fV\t\tchoose->150\n", analog_output_maxValue_2, ((float)analog_output_maxValue_2*5/4096));
		printf("DAC_analog_output_maxValue_3 (1 to 4095):               \t\t\t%i->%fV\t\tchoose->160\n", analog_output_maxValue_3, ((float)analog_output_maxValue_3*5/4096));
		printf("DAC_analog_output_maxValue_4 (1 to 4095):               \t\t\t%i->%fV\t\tchoose->170\n", analog_output_maxValue_4, ((float)analog_output_maxValue_4*5/4096));
		printf("DAC_analog_output_maxValue_5 (1 to 4095):               \t\t\t%i->%fV\t\tchoose->180\n", analog_output_maxValue_5, ((float)analog_output_maxValue_5*5/4096));
		printf("DAC_analog_output_maxValue_6 (1 to 4095):               \t\t\t%i->%fV\t\tchoose->190\n", analog_output_maxValue_6, ((float)analog_output_maxValue_6*5/4096));
		printf("DAC_analog_output_maxValue_7 (1 to 4095):               \t\t\t%i->%fV\t\tchoose->200\n", analog_output_maxValue_7, ((float)analog_output_maxValue_7*5/4096));
		printf("DAC_analog_output_maxValue_8 (1 to 4095):               \t\t\t%i->%fV\t\tchoose->210\n", analog_output_maxValue_8, ((float)analog_output_maxValue_8*5/4096));
		printf("DAC_analog_output_maxValue_9 (1 to 4095):               \t\t\t%i->%fV\t\tchoose->220\n", analog_output_maxValue_9, ((float)analog_output_maxValue_9*5/4096));
		printf("DAC_analog_output_maxValue_10 (1 to 4095):              \t\t\t%i->%fV\t\tchoose->230\n", analog_output_maxValue_10, ((float)analog_output_maxValue_10*5/4096));
		printf("DAC_analog_output_maxValue_11 (1 to 4095):              \t\t\t%i->%fV\t\tchoose->240\n", analog_output_maxValue_11, ((float)analog_output_maxValue_11*5/4096));
		printf("DAC_analog_output_maxValue_12 (1 to 4095):              \t\t\t%i->%fV\t\tchoose->250\n", analog_output_maxValue_12, ((float)analog_output_maxValue_12*5/4096));
		printf("DAC_analog_output_maxValue_13 (1 to 4095):              \t\t\t%i->%fV\t\tchoose->260\n", analog_output_maxValue_13, ((float)analog_output_maxValue_13*5/4096));
		printf("DAC_analog_output_maxValue_14 (1 to 4095):              \t\t\t%i->%fV\t\tchoose->270\n", analog_output_maxValue_14, ((float)analog_output_maxValue_14*5/4096));
		printf("DAC_analog_output_maxValue_15 (1 to 4095):              \t\t\t%i->%fV\t\tchoose->280\n", analog_output_maxValue_15, ((float)analog_output_maxValue_15*5/4096));
		printf("DAC_analog_output_maxValue_16 (1 to 4095):              \t\t\t%i->%fV\t\tchoose->290\n", analog_output_maxValue_16, ((float)analog_output_maxValue_16*5/4096));
			 */
			/*
		printf("potDig_output_value_1 (0 to 1023):                      \t\t\t%i\t\tchoose->300\n", potDig_output_value_1);
		printf("potDig_output_value_2 (0 to 1023):                      \t\t\t%i\t\tchoose->310\n", potDig_output_value_2);
		printf("potDig_output_value_3 (0 to 1023):                      \t\t\t%i\t\tchoose->320\n", potDig_output_value_3);
		printf("potDig_output_value_4 (0 to 1023):                      \t\t\t%i\t\tchoose->330\n", potDig_output_value_4);
			 */
			printf("Expansor_output_value_1 (0 to 255) (U10 NV board):                    \t\t\t%i\t\tchoose->340\n", Expansor_output_value_1);
			printf("Expansor_output_value_2 (0 to 255) (U12 NV board):                    \t\t\t%i\t\tchoose->350\n", Expansor_output_value_2);
			printf("Expansor_output_value_3 (0 to 255) (U14 NV board):                    \t\t\t%i\t\tchoose->360\n", Expansor_output_value_3);


			printf("\nmode (0->normal | 1->test):               \t\t\t%i\t\tchoose->370\n", mode);
			//printf("mode DAC (0->sawthooth):                  \t\t\t%i\t\tchoose->380\n", mode_dac);

			printf("\nreset bus):               \t\t\t%i\t\tchoose->999\n", mode);

			printf("\nDEFAULT VALUES FOR ALL \t\t\t\t\t\tchoose->390\n");

			printf("\n		========================================================================			\n");



			printf("\nSelect parameter to modify ->");
			scanf(" %d", &aux);
			printf("\nSelect new value (integer type) ->");
			scanf(" %f", &aux_2);



			switch (aux)
			{
			case 1:{
				Pi=aux_2;
				NV_PARAMETER_LOAD_mWriteReg (AXI_NV_PARAMETER_LOAD_BASEADDR,  0, Pi);
			}
			break;

			case 2:{
				t_step_C=aux_2;
				NV_PARAMETER_LOAD_mWriteReg (AXI_NV_PARAMETER_LOAD_BASEADDR,  4, t_step_C);
			}
			break;

			case 3:{
				dt_L1=aux_2;
				NV_PARAMETER_LOAD_mWriteReg (AXI_NV_PARAMETER_LOAD_BASEADDR,  8, dt_L1);
			}
			break;

			case 4:{
				dt_L2=aux_2;
				NV_PARAMETER_LOAD_mWriteReg (AXI_NV_PARAMETER_LOAD_BASEADDR, 12, dt_L2);
			}
			break;

			case 5:{
				dt_C=aux_2;
				NV_PARAMETER_LOAD_mWriteReg (AXI_NV_PARAMETER_LOAD_BASEADDR, 16, dt_C);
			}
			break;

			case 6:{
				rC=aux_2;
				NV_PARAMETER_LOAD_mWriteReg (AXI_NV_PARAMETER_LOAD_BASEADDR, 20, rC);
			}
			break;

			case 7:{
				Counter_limit=aux_2;
				NV_PARAMETER_LOAD_mWriteReg (AXI_NV_PARAMETER_LOAD_BASEADDR, 24, Counter_limit);
			}
			break;

			case 8:{
				Ampl_a=aux_2;
				NV_PARAMETER_LOAD_mWriteReg (AXI_NV_PARAMETER_LOAD_BASEADDR, 28, Ampl_a);
			}
			break;

			case 9:{
				Ampl_b=aux_2;
				NV_PARAMETER_LOAD_mWriteReg (AXI_NV_PARAMETER_LOAD_BASEADDR, 32, Ampl_b);
			}
			break;

			case 10:{
				Ampl_c=aux_2;
				NV_PARAMETER_LOAD_mWriteReg (AXI_NV_PARAMETER_LOAD_BASEADDR, 36, Ampl_c);
			}
			break;

			case 11:{
				Lgrid=aux_2;
				NV_PARAMETER_LOAD_mWriteReg (AXI_NV_PARAMETER_LOAD_BASEADDR, 40, Lgrid);
			}
			break;

			case 12:{
				phase_step_on=(int)aux_2;
				NV_PARAMETER_LOAD_mWriteReg (AXI_NV_PARAMETER_LOAD_BASEADDR, 44, phase_step_on);
			}
			break;

			case 13:{
				phase_step=aux_2;
				NV_PARAMETER_LOAD_mWriteReg (AXI_NV_PARAMETER_LOAD_BASEADDR, 48, phase_step);
			}
			break;

			case 14:{
				DC_bus_fixed_volt=aux_2;
				NV_PARAMETER_LOAD_mWriteReg (AXI_NV_PARAMETER_LOAD_BASEADDR, 52, DC_bus_fixed_volt);
			}
			break;

			case 15:{
				rL1=aux_2;
				NV_PARAMETER_LOAD_mWriteReg (AXI_NV_PARAMETER_LOAD_BASEADDR, 56, rL1);
			}
			break;

			case 16:{
				rL2=aux_2;
				NV_PARAMETER_LOAD_mWriteReg (AXI_NV_PARAMETER_LOAD_BASEADDR, 60, rL2);
			}
			break;

			case 17:{
				inv_seq=(int)aux_2;
				NV_PARAMETER_LOAD_mWriteReg (AXI_NV_PARAMETER_LOAD_BASEADDR, 64, inv_seq);
			}
			break;

			case 18:{
				DC_bus_fived=(int)aux_2;
				NV_PARAMETER_LOAD_mWriteReg (AXI_NV_PARAMETER_LOAD_BASEADDR, 68, DC_bus_fived);
			}
			break;

			case 19:{
				mode_igbt_input=(int)aux_2;
				NV_PARAMETER_LOAD_mWriteReg (AXI_NV_PARAMETER_LOAD_BASEADDR, 76, mode_igbt_input);
			}
			break;

			case 20:{
				ret_sel_marcha=(int)aux_2;
				NV_PARAMETER_LOAD_mWriteReg (AXI_NV_PARAMETER_LOAD_BASEADDR, 72, ret_sel_marcha);
			}
			break;

			case 21:{
				rL2_real=aux_2;
				PARAMETER_LOAD_2_mWriteReg (AXI_NV_PARAMETER_LOAD_2_BASEADDR, 0, rL2_real);
			}
			break;

			case 22:{
				Preload=aux_2;
				PARAMETER_LOAD_2_mWriteReg (AXI_NV_PARAMETER_LOAD_2_BASEADDR, 4, Preload);
			}
			break;

			case 23:{
				ena_chop_res=(int)aux_2;
				PARAMETER_LOAD_2_mWriteReg (AXI_NV_PARAMETER_LOAD_2_BASEADDR, 8, ena_chop_res);
			}
			break;

			case 24:{
				rL1_real=aux_2;
				PARAMETER_LOAD_2_mWriteReg (AXI_NV_PARAMETER_LOAD_2_BASEADDR, 12, rL1_real);
			}
			break;

			case 25:{
				DC_DC_enable=aux_2;
				PARAMETER_LOAD_2_mWriteReg (AXI_NV_PARAMETER_LOAD_2_BASEADDR, 16, (int)DC_DC_enable);
			}
			break;

			case 140:{
				analog_output_maxValue_1=aux_2;
				NV_IO_CONTROLLER_mWriteReg (XPAR_NV_IO_CONTROLLER_0_S00_AXI_BASEADDR, 4, analog_output_maxValue_1);
			}
			break;

			case 150:{
				analog_output_maxValue_2=aux_2;
				NV_IO_CONTROLLER_mWriteReg (XPAR_NV_IO_CONTROLLER_0_S00_AXI_BASEADDR, 8, analog_output_maxValue_2);
			}
			break;

			case 160:{
				analog_output_maxValue_3=aux_2;
				NV_IO_CONTROLLER_mWriteReg (XPAR_NV_IO_CONTROLLER_0_S00_AXI_BASEADDR, 12, analog_output_maxValue_3);
			}
			break;

			case 170:{
				analog_output_maxValue_4=aux_2;
				NV_IO_CONTROLLER_mWriteReg (XPAR_NV_IO_CONTROLLER_0_S00_AXI_BASEADDR, 16, analog_output_maxValue_4);
			}
			break;

			case 180:{
				analog_output_maxValue_5=aux_2;
				NV_IO_CONTROLLER_mWriteReg (XPAR_NV_IO_CONTROLLER_0_S00_AXI_BASEADDR, 20, analog_output_maxValue_5);
			}
			break;

			case 190:{
				analog_output_maxValue_6=aux_2;
				NV_IO_CONTROLLER_mWriteReg (XPAR_NV_IO_CONTROLLER_0_S00_AXI_BASEADDR, 24, analog_output_maxValue_6);
			}
			break;

			case 200:{
				analog_output_maxValue_7=aux_2;
				NV_IO_CONTROLLER_mWriteReg (XPAR_NV_IO_CONTROLLER_0_S00_AXI_BASEADDR, 28, analog_output_maxValue_7);
			}
			break;

			case 210:{
				analog_output_maxValue_8=aux_2;
				NV_IO_CONTROLLER_mWriteReg (XPAR_NV_IO_CONTROLLER_0_S00_AXI_BASEADDR, 32, analog_output_maxValue_8);
			}
			break;

			case 220:{
				analog_output_maxValue_9=aux_2;
				NV_IO_CONTROLLER_mWriteReg (XPAR_NV_IO_CONTROLLER_0_S00_AXI_BASEADDR, 36, analog_output_maxValue_9);
			}
			break;

			case 230:{
				analog_output_maxValue_10=aux_2;
				NV_IO_CONTROLLER_mWriteReg (XPAR_NV_IO_CONTROLLER_0_S00_AXI_BASEADDR, 40, analog_output_maxValue_10);
			}
			break;

			case 240:{
				analog_output_maxValue_11=aux_2;
				NV_IO_CONTROLLER_mWriteReg (XPAR_NV_IO_CONTROLLER_0_S00_AXI_BASEADDR, 44, analog_output_maxValue_11);
			}
			break;

			case 250:{
				analog_output_maxValue_12=aux_2;
				NV_IO_CONTROLLER_mWriteReg (XPAR_NV_IO_CONTROLLER_0_S00_AXI_BASEADDR, 48, analog_output_maxValue_12);
			}
			break;

			case 260:{
				analog_output_maxValue_13=aux_2;
				NV_IO_CONTROLLER_mWriteReg (XPAR_NV_IO_CONTROLLER_0_S00_AXI_BASEADDR, 52, analog_output_maxValue_13);
			}
			break;

			case 270:{
				analog_output_maxValue_14=aux_2;
				NV_IO_CONTROLLER_mWriteReg (XPAR_NV_IO_CONTROLLER_0_S00_AXI_BASEADDR, 56, analog_output_maxValue_14);
			}
			break;

			case 280:{
				analog_output_maxValue_15=aux_2;
				NV_IO_CONTROLLER_mWriteReg (XPAR_NV_IO_CONTROLLER_0_S00_AXI_BASEADDR, 60, analog_output_maxValue_15);
			}
			break;

			case 290:{
				analog_output_maxValue_16=aux_2;
				NV_IO_CONTROLLER_mWriteReg (XPAR_NV_IO_CONTROLLER_0_S00_AXI_BASEADDR, 64, analog_output_maxValue_16);
			}
			break;

			case 300:{
				potDig_output_value_1=aux_2;
				NV_IO_CONTROLLER_mWriteReg (XPAR_NV_IO_CONTROLLER_0_S00_AXI_BASEADDR, 76, potDig_output_value_1);
			}
			break;

			case 310:{
				potDig_output_value_2=aux_2;
				NV_IO_CONTROLLER_mWriteReg (XPAR_NV_IO_CONTROLLER_0_S00_AXI_BASEADDR, 80, potDig_output_value_2);
			}
			break;

			case 320:{
				potDig_output_value_3=aux_2;
				NV_IO_CONTROLLER_mWriteReg (XPAR_NV_IO_CONTROLLER_0_S00_AXI_BASEADDR, 84, potDig_output_value_3);
			}
			break;

			case 330:{
				potDig_output_value_4=aux_2;
				NV_IO_CONTROLLER_mWriteReg (XPAR_NV_IO_CONTROLLER_0_S00_AXI_BASEADDR, 88, potDig_output_value_4);
			}
			break;

			case 340:{
				Expansor_output_value_1=aux_2;
				NV_IO_CONTROLLER_mWriteReg (XPAR_NV_IO_CONTROLLER_0_S00_AXI_BASEADDR, 92, Expansor_output_value_1);
			}
			break;

			case 350:{
				Expansor_output_value_2=aux_2;
				NV_IO_CONTROLLER_mWriteReg (XPAR_NV_IO_CONTROLLER_0_S00_AXI_BASEADDR, 96, Expansor_output_value_2);
			}
			break;

			case 360:{
				Expansor_output_value_3=aux_2;
				NV_IO_CONTROLLER_mWriteReg (XPAR_NV_IO_CONTROLLER_0_S00_AXI_BASEADDR, 100, Expansor_output_value_3);
			}
			break;

			//	***
			case 370:{
				mode=(int)aux_2;
				NV_IO_CONTROLLER_mWriteReg (XPAR_NV_IO_CONTROLLER_0_S00_AXI_BASEADDR, 0, mode);
			}
			break;

			//	***
			case 380:{
				mode_dac=(int)aux_2;
				NV_IO_CONTROLLER_mWriteReg (XPAR_NV_IO_CONTROLLER_0_S00_AXI_BASEADDR, 112, mode_dac);
			}
			break;

			//default values
			case 390:{

				Pi=239713;
				t_step_C=10;
				dt_L1=131;			//AP_16_1
				dt_L2=655;			//AP_16_1
				dt_C=1311;			//AP_16_1
				rC=512;				//AP_31_21
				Counter_limit=75;	//AP_16_15
				Ampl_a=166400;		//AP_25_16
				Ampl_b=166400;		//AP_25_16
				Ampl_c=166400;		//AP_25_16
				Lgrid=3355;
				phase_step_on=0;	//bool
				phase_step=284;		//AP_13_12
				//50deg*1024/360deg = 142 - AP_25_16 arbitrary precision
				//sp1 to sp12 are included in case more parameters become necessary
				DC_bus_fixed_volt=51200;//AP_18_12
				rL1=1;				//AP_32_25
				rL2=1;				//AP_32_25
				inv_seq=0;			//bool
				DC_bus_fived=1;		//bool
				sp1=0;

				//charging default values in NV_PARAMETER_LOAD IP
				NV_PARAMETER_LOAD_mWriteReg (AXI_NV_PARAMETER_LOAD_BASEADDR,  0, Pi);
				NV_PARAMETER_LOAD_mWriteReg (AXI_NV_PARAMETER_LOAD_BASEADDR,  4, t_step_C);
				NV_PARAMETER_LOAD_mWriteReg (AXI_NV_PARAMETER_LOAD_BASEADDR,  8, dt_L1);
				NV_PARAMETER_LOAD_mWriteReg (AXI_NV_PARAMETER_LOAD_BASEADDR, 12, dt_L2);
				NV_PARAMETER_LOAD_mWriteReg (AXI_NV_PARAMETER_LOAD_BASEADDR, 16, dt_C);
				NV_PARAMETER_LOAD_mWriteReg (AXI_NV_PARAMETER_LOAD_BASEADDR, 20, rC);
				NV_PARAMETER_LOAD_mWriteReg (AXI_NV_PARAMETER_LOAD_BASEADDR, 24, Counter_limit);
				NV_PARAMETER_LOAD_mWriteReg (AXI_NV_PARAMETER_LOAD_BASEADDR, 28, Ampl_a);
				NV_PARAMETER_LOAD_mWriteReg (AXI_NV_PARAMETER_LOAD_BASEADDR, 32, Ampl_b);
				NV_PARAMETER_LOAD_mWriteReg (AXI_NV_PARAMETER_LOAD_BASEADDR, 36, Ampl_c);

				NV_PARAMETER_LOAD_mWriteReg (AXI_NV_PARAMETER_LOAD_BASEADDR, 40, Lgrid);
				NV_PARAMETER_LOAD_mWriteReg (AXI_NV_PARAMETER_LOAD_BASEADDR, 44, phase_step_on);
				NV_PARAMETER_LOAD_mWriteReg (AXI_NV_PARAMETER_LOAD_BASEADDR, 48, phase_step);
				NV_PARAMETER_LOAD_mWriteReg (AXI_NV_PARAMETER_LOAD_BASEADDR, 52, DC_bus_fixed_volt);
				NV_PARAMETER_LOAD_mWriteReg (AXI_NV_PARAMETER_LOAD_BASEADDR, 56, rL1);
				NV_PARAMETER_LOAD_mWriteReg (AXI_NV_PARAMETER_LOAD_BASEADDR, 60, rL2);
				NV_PARAMETER_LOAD_mWriteReg (AXI_NV_PARAMETER_LOAD_BASEADDR, 64, inv_seq);
				NV_PARAMETER_LOAD_mWriteReg (AXI_NV_PARAMETER_LOAD_BASEADDR, 68, DC_bus_fived);
				NV_PARAMETER_LOAD_mWriteReg (AXI_NV_PARAMETER_LOAD_BASEADDR, 72, sp1);
				NV_PARAMETER_LOAD_mWriteReg (AXI_NV_PARAMETER_LOAD_BASEADDR, 76, mode_igbt_input);

				//	***

				mode=0;
				analog_output_maxValue_1=2048;
				analog_output_maxValue_2=2048;
				analog_output_maxValue_3=2048;
				analog_output_maxValue_4=2048;
				analog_output_maxValue_5=2048;
				analog_output_maxValue_6=2048;
				analog_output_maxValue_7=2048;
				analog_output_maxValue_8=2048;
				analog_output_maxValue_9=2048;
				analog_output_maxValue_10=2048;
				analog_output_maxValue_11=2048;
				analog_output_maxValue_12=2048;
				analog_output_maxValue_13=2048;
				analog_output_maxValue_14=2048;
				analog_output_maxValue_15=2048;
				analog_output_maxValue_16=2048;
				analog_output_maxValue_17=2048;
				analog_output_maxValue_18=2048;
				potDig_output_value_1=967;
				potDig_output_value_2=57;
				potDig_output_value_3=57;
				potDig_output_value_4=24;
				Expansor_output_value_1=5;
				Expansor_output_value_2=132;
				Expansor_output_value_3=254;
				//nc1 to nc8 are included in case more parameters become necessary
				mode_dac=1;	//outputs
				nc2=0;
				nc3=0;
				nc4=0;
				nc5=0;	//inputs
				nc6=0;
				nc7=0;
				nc8=0;

				//charging default values in NV_IO_CONTROLLER IP
				NV_IO_CONTROLLER_mWriteReg (XPAR_NV_IO_CONTROLLER_0_S00_AXI_BASEADDR, 0, mode);
				NV_IO_CONTROLLER_mWriteReg (XPAR_NV_IO_CONTROLLER_0_S00_AXI_BASEADDR, 4, analog_output_maxValue_1);
				NV_IO_CONTROLLER_mWriteReg (XPAR_NV_IO_CONTROLLER_0_S00_AXI_BASEADDR, 8, analog_output_maxValue_2);
				NV_IO_CONTROLLER_mWriteReg (XPAR_NV_IO_CONTROLLER_0_S00_AXI_BASEADDR, 12, analog_output_maxValue_3);
				NV_IO_CONTROLLER_mWriteReg (XPAR_NV_IO_CONTROLLER_0_S00_AXI_BASEADDR, 16, analog_output_maxValue_4);
				NV_IO_CONTROLLER_mWriteReg (XPAR_NV_IO_CONTROLLER_0_S00_AXI_BASEADDR, 20, analog_output_maxValue_5);
				NV_IO_CONTROLLER_mWriteReg (XPAR_NV_IO_CONTROLLER_0_S00_AXI_BASEADDR, 24, analog_output_maxValue_6);
				NV_IO_CONTROLLER_mWriteReg (XPAR_NV_IO_CONTROLLER_0_S00_AXI_BASEADDR, 28, analog_output_maxValue_7);
				NV_IO_CONTROLLER_mWriteReg (XPAR_NV_IO_CONTROLLER_0_S00_AXI_BASEADDR, 32, analog_output_maxValue_8);
				NV_IO_CONTROLLER_mWriteReg (XPAR_NV_IO_CONTROLLER_0_S00_AXI_BASEADDR, 36, analog_output_maxValue_9);

				NV_IO_CONTROLLER_mWriteReg (XPAR_NV_IO_CONTROLLER_0_S00_AXI_BASEADDR, 40, analog_output_maxValue_10);
				NV_IO_CONTROLLER_mWriteReg (XPAR_NV_IO_CONTROLLER_0_S00_AXI_BASEADDR, 44, analog_output_maxValue_11);
				NV_IO_CONTROLLER_mWriteReg (XPAR_NV_IO_CONTROLLER_0_S00_AXI_BASEADDR, 48, analog_output_maxValue_12);
				NV_IO_CONTROLLER_mWriteReg (XPAR_NV_IO_CONTROLLER_0_S00_AXI_BASEADDR, 52, analog_output_maxValue_13);
				NV_IO_CONTROLLER_mWriteReg (XPAR_NV_IO_CONTROLLER_0_S00_AXI_BASEADDR, 56, analog_output_maxValue_14);
				NV_IO_CONTROLLER_mWriteReg (XPAR_NV_IO_CONTROLLER_0_S00_AXI_BASEADDR, 60, analog_output_maxValue_15);
				NV_IO_CONTROLLER_mWriteReg (XPAR_NV_IO_CONTROLLER_0_S00_AXI_BASEADDR, 64, analog_output_maxValue_16);
				NV_IO_CONTROLLER_mWriteReg (XPAR_NV_IO_CONTROLLER_0_S00_AXI_BASEADDR, 68, analog_output_maxValue_17);
				NV_IO_CONTROLLER_mWriteReg (XPAR_NV_IO_CONTROLLER_0_S00_AXI_BASEADDR, 72, analog_output_maxValue_18);
				NV_IO_CONTROLLER_mWriteReg (XPAR_NV_IO_CONTROLLER_0_S00_AXI_BASEADDR, 76, potDig_output_value_1);

				NV_IO_CONTROLLER_mWriteReg (XPAR_NV_IO_CONTROLLER_0_S00_AXI_BASEADDR, 80, potDig_output_value_2);
				NV_IO_CONTROLLER_mWriteReg (XPAR_NV_IO_CONTROLLER_0_S00_AXI_BASEADDR, 84, potDig_output_value_3);
				NV_IO_CONTROLLER_mWriteReg (XPAR_NV_IO_CONTROLLER_0_S00_AXI_BASEADDR, 88, potDig_output_value_4);
				NV_IO_CONTROLLER_mWriteReg (XPAR_NV_IO_CONTROLLER_0_S00_AXI_BASEADDR, 92, Expansor_output_value_1);
				NV_IO_CONTROLLER_mWriteReg (XPAR_NV_IO_CONTROLLER_0_S00_AXI_BASEADDR, 96, Expansor_output_value_2);
				NV_IO_CONTROLLER_mWriteReg (XPAR_NV_IO_CONTROLLER_0_S00_AXI_BASEADDR, 100, Expansor_output_value_3);
				NV_IO_CONTROLLER_mWriteReg (XPAR_NV_IO_CONTROLLER_0_S00_AXI_BASEADDR, 112, mode_dac);
				NV_IO_CONTROLLER_mWriteReg (XPAR_NV_IO_CONTROLLER_0_S00_AXI_BASEADDR, 116, nc2);

				NV_IO_CONTROLLER_mWriteReg (XPAR_NV_IO_CONTROLLER_0_S00_AXI_BASEADDR, 120, nc3);
				NV_IO_CONTROLLER_mWriteReg (XPAR_NV_IO_CONTROLLER_0_S00_AXI_BASEADDR, 124, nc4);

				//****

				rL2_real=1;			//AP_30_23
				Preload=640;			//AP_32_25
				ena_chop_res=0;		//bool

				PARAMETER_LOAD_2_mWriteReg (AXI_NV_PARAMETER_LOAD_2_BASEADDR,  0, rL2_real);
				PARAMETER_LOAD_2_mWriteReg (AXI_NV_PARAMETER_LOAD_2_BASEADDR,  4, Preload);
				PARAMETER_LOAD_2_mWriteReg (AXI_NV_PARAMETER_LOAD_2_BASEADDR,  8, ena_chop_res);

			}
			break;

			case 999:{

				DC_bus_fixed_volt=0;
				DC_bus_fived=1;
				NV_PARAMETER_LOAD_mWriteReg (AXI_NV_PARAMETER_LOAD_BASEADDR, 52, DC_bus_fixed_volt);
				for (int i=0;i++;i<99999999999999);
				NV_PARAMETER_LOAD_mWriteReg (AXI_NV_PARAMETER_LOAD_BASEADDR, 68, DC_bus_fived);
				for (int i=0;i++;i<99999999999999);

			}
			break;

			}	//switch end
		}

	}	//for loop end

	cleanup_platform();
	return 0;

}	//main end


//gpio interrupt handler -> ticker 1seg
void FPGA_timer_Intr_Handler(void *InstancePtr)
{
	XGpio_InterruptDisable(&GPIO_FPGA_timer_1, INT);										//DESHABILITAR LA INTERRUPCION
	if ((XGpio_InterruptGetStatus(&GPIO_FPGA_timer_1) & INT) != INT) {return;} 			//Ignore additional button presses

	char ch;
	if (manual_or_console==1){	//mode console
		counter++;

		//Digital inputs signals
		printf("%c\n", charString[7]);	//K1
		printf("%c\n", charString[6]);	//K2
		printf("%c\n", charString[5]);	//K3
		printf("%c\n", charString[4]);	//K4
		printf("%c\n", charString[3]);	//K5
		printf("%c\n", charString[2]);	//K6
		printf("%c\n", charString[0]);	//CB1
		printf("%c\n", charString[1]);	//Emergency lamp

		//fan speed
		printf("%i\n", Fan_speed);
		//printf("%i\n", 36);

		printf("P pp %i\n", counter);		//send data command for console
		//printf("\n\n");
		//flag_read=1;

		//scanf(" %s", &my_chain);
		//scanf(" %s", &my_chain_2);

		//scanf("%d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d", &dig_out_1, &dig_out_2, &dig_out_3, &dig_out_4, &dig_out_5, &dig_out_6, &dig_out_7, &dig_out_8, &dig_out_9, &dig_out_10, &dig_out_11, &dig_out_12, &dig_out_13, &dig_out_14, &dig_out_15, &dig_out_16, &dig_out_17, &dig_out_18, &NTC_0, &NTC_1, &NTC_2, &NTC_3);
		scanf("%s", &my_chain);
		sscanf(my_chain, "%d", &dig_out_1);

		scanf("%d%c", &dig_out_2, &ch);
		scanf("%d%c", &dig_out_3, &ch);
		scanf("%d%c", &dig_out_4, &ch);
		scanf("%d%c", &dig_out_5, &ch);
		scanf("%d%c", &dig_out_6, &ch);
		scanf("%d%c", &dig_out_7, &ch);
		scanf("%d%c", &dig_out_8, &ch);
		scanf("%d%c", &dig_out_9, &ch);
		scanf("%d%c", &dig_out_10, &ch);
		scanf("%d%c", &dig_out_11, &ch);
		scanf("%d%c", &dig_out_12, &ch);
		scanf("%d%c", &dig_out_13, &ch);
		scanf("%d%c", &dig_out_14, &ch);
		scanf("%d%c", &dig_out_15, &ch);
		scanf("%d%c", &dig_out_16, &ch);
		scanf("%d%c", &dig_out_17, &ch);
		scanf("%d%c", &dig_out_18, &ch);

		scanf("%d%c", &NTC_0, &ch);
		scanf("%d%c", &NTC_1, &ch);
		scanf("%d%c", &NTC_2, &ch);
		scanf("%d%c", &NTC_3, &ch);


		scanf("%d%c", &j_DC_bus_fixed, &ch);
		scanf("%d%c", &j_phaseStep_on, &ch);
		scanf("%d%c", &j_inv_seq_grid, &ch);
		//------------------------
		scanf("%d%c", &j_C_bus_dc, &ch);
		scanf("%d%c", &j_V_bus_voltage, &ch);
		scanf("%d%c", &j_t_step, &ch);
		scanf("%d%c", &j_L1, &ch);
		scanf("%d%c", &j_L2, &ch);
		scanf("%d%c", &j_C, &ch);
		scanf("%d%c", &j_rL1, &ch);
		scanf("%d%c", &j_rL2, &ch);
		scanf("%d%c", &j_rPrecarga, &ch);
		scanf("%d%c", &j_rC, &ch);
		scanf("%d%c", &j_phaseStep, &ch);
		scanf("%d%c", &j_freq_grid, &ch);
		scanf("%d%c", &j_Ampl_a, &ch);
		scanf("%d%c", &j_Ampl_b, &ch);
		scanf("%d%c", &j_Ampl_c, &ch);

		printf ("NV_1_%d_%d_%d_%d_%d_%d_%d_%d_%d_%d_%d_%d_%d_%d_%d_%d_%d_%d_%d_%d_%d_%d_1_\n", dig_out_1, dig_out_2, dig_out_3, dig_out_4, dig_out_5, dig_out_6, dig_out_7, dig_out_8, dig_out_9, dig_out_10, dig_out_11, dig_out_12, dig_out_13, dig_out_14, dig_out_15, dig_out_16, dig_out_17, dig_out_18, NTC_0, NTC_1, NTC_2, NTC_3);
		printf ("NV_2_%d_%d_%d_%d_%d_%d_%d_%d_%d_%d_%d_%d_%d_%d_%d_%d_%d_%d_2_\n", j_DC_bus_fixed, j_phaseStep_on, j_inv_seq_grid, j_C_bus_dc, j_V_bus_voltage, j_t_step, j_L1, j_L2, j_C, j_rL1, j_rL2, j_rPrecarga, j_rC, j_phaseStep, j_freq_grid, j_Ampl_a, j_Ampl_b, j_Ampl_c);

		//printf ("NV_%d\n", dig_out_1);
		//printf ("NV_%d\n", j_V_bus_voltage);
		//		for(int j=0,k=0;j<9999999;j++)
		//			k++;
		//
		//printf ("NV_00_%d_%d_00_\n", dig_out_0, dig_out_0);
		//		//printf("pepe\n");

		j_Ampl_a=j_Ampl_a/2;
		j_Ampl_b=j_Ampl_b/2;
		j_Ampl_c=j_Ampl_c/2;
	}

	(void)XGpio_InterruptClear(&GPIO_FPGA_timer_1, INT);									//BORRAR FLAG DE LA INTERRUPCION
	XGpio_InterruptEnable(&GPIO_FPGA_timer_1, INT);										//REHABILITAR LA INTERUPCION

}

//enable GPIO interrupts
int InterruptSystemSetup(XScuGic *XScuGicInstancePtr)
{
	//HABILITAR LAS INTERRUPCIONES DEL GPIO
	XGpio_InterruptEnable(&GPIO_FPGA_timer_1, INT);

	XGpio_InterruptGlobalEnable(&GPIO_FPGA_timer_1);

	Xil_ExceptionRegisterHandler(XIL_EXCEPTION_ID_INT, (Xil_ExceptionHandler)XScuGic_InterruptHandler, XScuGicInstancePtr);
	Xil_ExceptionEnable();

	return XST_SUCCESS;
}

//=================================================================================================
//joining handlers to interrupt sources
int IntcInitFunction (u16 DeviceId, XGpio *GpioInstancePtr)
{
	XScuGic_Config *IntcConfig;
	int status;

	//initialize interrupt controller
	IntcConfig = XScuGic_LookupConfig(DeviceId);
	status = XScuGic_CfgInitialize(&INTCInst, IntcConfig, IntcConfig->CpuBaseAddress);
	if(status != XST_SUCCESS) return XST_FAILURE;

	status = InterruptSystemSetup(&INTCInst);
	if(status != XST_SUCCESS) return XST_FAILURE;

	// Connect BTN interrupt to handler
	status = XScuGic_Connect(&INTCInst, INTC_GPIO_INTERRUPT_ID_FPGA_timer, (Xil_ExceptionHandler)FPGA_timer_Intr_Handler, (void *)GpioInstancePtr);
	if(status != XST_SUCCESS) return XST_FAILURE;


	// Enable GPIO interrupts interrupt
	XGpio_InterruptEnable(GpioInstancePtr, 1);
	XGpio_InterruptGlobalEnable(GpioInstancePtr);

	// Enable GPIO interrupts in the controller
	XScuGic_Enable(&INTCInst, INTC_GPIO_INTERRUPT_ID_FPGA_timer);

	return XST_SUCCESS;
}


























