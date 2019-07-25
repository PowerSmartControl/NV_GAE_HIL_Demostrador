// PSC | Power Smart Control | JRF | 2018

#include "pmsm_inv.h"

void bridge (
		bool T1, bool T2,
		bool T3, bool T4,
		bool T5, bool T6,
		AP_18_12 Vdc,
		AP_25_16 Ia, AP_25_16 Ib, AP_25_16 Ic,
		AP_25_16 *Va, AP_25_16 *Vb, AP_25_16 *Vc,
		AP_18_12 *Vn_gnd){

	static bool T1_eq, T2_eq, T3_eq, T4_eq, T5_eq, T6_eq;
	const AP_16_3 un_terc 	= 0.3333;

	static AP_25_16 Va_aux, Vb_aux, Vc_aux;

	//conduction par T1
	if (T1==0 && T4==0 && Ia<0)
		T1_eq=1;									//mosfet / igbt
	else
		T1_eq=T1;							      	//diode
	//conduction par T2
	if (T2==0 && T5==0 && Ib<0)
		T2_eq=1;
	else
		T2_eq=T2;
	//conduction par T3
	if (T3==0 && T6==0 && Ic<0)
		T3_eq=1;
	else
		T3_eq=T3;
	//conduction par T4
	if (T1==0 && T4==0 && Ia>0)
		T4_eq=1;
	else
		T4_eq=T4;
	//conduction par T5
	if (T2==0 && T5==0 && Ib>0)
		T5_eq=1;
	else
		T5_eq=T5;
	//conduction par T6
	if (T3==0 && T6==0 && Ic>0)
		T6_eq=1;
	else
		T6_eq=T6;

	//generate all the voltages:
	if (T1_eq==1)
		Va_aux=Vdc;
	if (T2_eq==1)
		Vb_aux=Vdc;
	if (T3_eq==1)
		Vc_aux=Vdc;
	if (T4_eq==1)
		Va_aux=0;
	if (T5_eq==1)
		Vb_aux=0;
	if (T6_eq==1)
		Vc_aux=0;

	*Va = Va_aux;
	*Vb = Vb_aux;
	*Vc = Vc_aux;

	//calculate neutro to ground voltage
	*Vn_gnd=(Va_aux+Vb_aux+Vc_aux)*un_terc;

}

void current_DC_bus (
		bool T1, bool T2,
		bool T3, bool T4,
		bool T5, bool T6,
		AP_25_16 Ia, AP_25_16 Ib, AP_25_16 Ic,
		AP_25_16 *Idc){

	static bool T1_diodo, T2_diodo, T3_diodo, T4_diodo, T5_diodo, T6_diodo;

	//conduction par T1
	if (T1==0 && T4==0 && Ia<0)
		T1_diodo=1;
	else
		T1_diodo=0;
	//conduction par T2
	if (T2==0 && T5==0 && Ib<0)
		T2_diodo=1;
	else
		T2_diodo=0;
	//conduction par T3
	if (T3==0 && T6==0 && Ic<0)
		T3_diodo=1;
	else
		T3_diodo=0;
	/*
	//conduction par T4
	if (T1==0 && T4==0 && Ia>0)
		T4_diodo=1;
	else
		T4_diodo=0;
	//conduction par T5
	if (T2==0 && T5==0 && Ib>0)
		T5_diodo=1;
	else
		T5_diodo=0;
	//conduction par T6
	if (T3==0 && T6==0 && Ic>0)
		T6_diodo=1;
	else
		T6_diodo=0;
		*/
	//generate DC input current from pmsm
	*Idc=( Ia * T1+ Ia * T1_diodo +  Ib * T2 + Ib * T2_diodo +  Ic * T3 + Ic * T3_diodo );

}

void bridge3ph (
		bool T1, bool T2,
		bool T3, bool T4,
		bool T5, bool T6,
		AP_18_12 Vdc,
		AP_25_16 Ia, AP_25_16 Ib, AP_25_16 Ic,
		AP_25_16 *Va, AP_25_16 *Vb, AP_25_16 *Vc,
		AP_25_16 *Idc,
		AP_18_12 *Vn_gnd){

	static AP_25_16 Va_aux, Vb_aux, Vc_aux, Ia_aux, Ib_aux, Ic_aux;
	static AP_18_12 Vn_gnd_aux;
	static AP_25_16 Idc_aux;
	static AP_18_12 Vdc_real, counter;

	if (counter>10){		//initialize DC bus voltage
		Vdc_real=Vdc;		//this is necessary because the block who establish Vdc (DC_bus_dynamic) value is initialized after this block
		counter=0;
	}
	else{
		counter=counter+1;
		Vdc_real=800;
	}

	bridge(T1, T2, T3, T4, T5, T6, Vdc_real, -Ia, -Ib, -Ic, &Va_aux, &Vb_aux, &Vc_aux, &Vn_gnd_aux);

	current_DC_bus(T1, T2, T3, T4, T5, T6, Ia, Ib, Ic, &Idc_aux);

	*Va=Va_aux;
	*Vb=Vb_aux;
	*Vc=Vc_aux;
	*Idc=Idc_aux;
	*Vn_gnd=Vn_gnd_aux;

}
