// PSC | Power Smart Control | JRF | 2018

#include "dc_bus.h"

void DCbus_dynamic (
		float I_in, float I_out, float t_step_C, bool ena_chop_res, bool DC_bus_fixed_volt, float V_DC_voltage_in,
		float *V_bus){

	static float Delta_C, V_C, V_bus_dc, aux, auxx, V_R, V_R2=0.0f;
/*
	//const AP_19_1 	t_step_C = 0.000039215;//0.00004;
	const AP_22_1 	inv_R_eq=0.0027027;			//engaged resistor (always connected)   =1/37kohm
	const AP_9_1 	inv_R_eq_2 = 0.4;//0.0909;		//chopping resistor						=1/11ohm
	const AP_15_1 	rC = 0.01;		//DC bus capacitor internal resistor
	const AP_8_8  	inv_rC = 100;//100;		//	1/rC
	//const AP_9_1 	cero_cinco = 0.5;		//chopping resistor						=1/11ohm
*/

	const float 	inv_R_eq=0.005f;			//engaged resistor (always connected)   =1/37kohm
	const float 	inv_R_eq_2 = 0.4f;//0.0909;		//chopping resistor						=1/11ohm
	const float 	rC = 0.01f;		//DC bus capacitor internal resistor
	const float  	inv_rC = 100.0f;//100;		//	1/rC

	//I_out=I_out+cero_cinco;

	if (DC_bus_fixed_volt ==1){
		V_bus_dc = V_DC_voltage_in;
		auxx=1;
		aux=1;
		V_C=1;
	}
	else{

		if (ena_chop_res==0){
			V_R = V_bus_dc*inv_R_eq;
			auxx=(I_in - I_out - V_R)*rC;	//r=22kohm
			aux=(I_in - I_out - V_R);
		}
		else{
			V_R2 = V_bus_dc*inv_R_eq_2;
			auxx=(I_in - I_out - V_R2)*rC;	//r=11ohm
			aux=(I_in - I_out - V_R2);
		}


		//aux=auxx*inv_rC;

		//capacitor:
		V_bus_dc = (auxx + V_C);// + 800);
		V_C+=t_step_C*aux;
	}


	*V_bus=V_bus_dc;
}

