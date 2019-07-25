#include "lcl_filter.h"

void lcl_filter (
		AP_32_12 V1_a, AP_32_12 V1_b, AP_32_12 V1_c,
		AP_32_12 V2_a_, AP_32_12 V2_b_, AP_32_12 V2_c_,
		AP_32_12 VN_gnd,
		AP_16_1 dT_L1, AP_16_1 dT_L2, AP_16_1 dT_C, AP_31_21 rC, AP_30_23 rL1_NC, AP_30_23 rL2, AP_32_25 Preload,
		AP_5_5 CB1_K1_K3,
		AP_32_12 *IL1_a_r, AP_32_12 *IL1_b_r, AP_32_12 *IL1_c_r,
		AP_32_12 *IL2_a_r, AP_32_12 *IL2_b_r, AP_32_12 *IL2_c_r,
		AP_32_12 *Vp_a_r, AP_32_12 *Vp_b_r, AP_32_12 *Vp_c_r

){
/*
	static AP_32_12 A_I_L1_a, A_I_L1_b, A_I_L1_c;
	static AP_32_12 A_I_L2_a, A_I_L2_b, A_I_L2_c;
	static AP_32_12 A_Vc_a, A_Vc_b, A_Vc_c;

	static AP_32_12 I_L1_a, I_L1_b, I_L1_c;
	static AP_32_12 aux_a, aux_b, aux_c;
	static AP_32_12 I_L2_a, I_L2_b, I_L2_c, I_L2_a_prev, I_L2_b_prev, I_L2_c_prev;
	static AP_32_12 Vp_a, Vp_b, Vp_c;
	static AP_32_12 VC_a, VC_b, VC_c;
	static AP_32_25 rL2_real;

	//const  AP_11_1  cero_cero_uno = 0.01;
	//const  AP_11_1  	cero_cinco = 0.5;
	//const  AP_11_1  	cero_uno = 0.1;
	//const  AP_11_1  	cero_nueve = 0.9;
	const  AP_18_11 R_open_contactor = 100;
	const  AP_11_1 rL1 = 0.01;

	if (CB1_K1_K3==0 or CB1_K1_K3==1 or CB1_K1_K3==2 or CB1_K1_K3==3 or CB1_K1_K3==4)
		rL2_real=R_open_contactor;	//1kohm
	else if (CB1_K1_K3==5)
		rL2_real=Preload;
	else
		rL2_real=rL2;
*/

	static AP_32_6 A_I_L1_a, A_I_L1_b, A_I_L1_c;
	static AP_32_6 A_I_L2_a, A_I_L2_b, A_I_L2_c;
	static AP_32_6 A_Vc_a, A_Vc_b, A_Vc_c;

	static AP_32_12 I_L1_a, I_L1_b, I_L1_c;
	static AP_32_12 aux_a, aux_b, aux_c;
	static AP_32_12 I_L2_a, I_L2_b, I_L2_c, I_L2_a_prev, I_L2_b_prev, I_L2_c_prev;
	static AP_32_12 Vp_a, Vp_b, Vp_c;
	static AP_32_12 VC_a, VC_b, VC_c;
	static AP_32_25 rL2_real;

	//const  AP_11_1  cero_cero_uno = 0.01;
	//const  AP_11_1  	cero_cinco = 0.5;
	const  AP_11_1  	cero_uno = 0.1;
	const  AP_11_1  	cero_nueve = 0.9;

	const  AP_32_25 R_open_contactor = 1000;
	const  AP_32_25 rL1 = 0.01;
	const  AP_32_25 rL2_2 = 0.01;
	const  AP_32_25 Preload_2 = 11;
	const  AP_16_1 dT_L2_2 = 0.000333;
/*
	if (CB1_K1_K3==0 or CB1_K1_K3==1 or CB1_K1_K3==2 or CB1_K1_K3==3 or CB1_K1_K3==4)
		rL2_real=R_open_contactor;	//1kohm
	else if (CB1_K1_K3==5)
		rL2_real=Preload;
	else
		rL2_real=rL2;
	*/
	if (CB1_K1_K3==0 or CB1_K1_K3==1 or CB1_K1_K3==2 or CB1_K1_K3==3 or CB1_K1_K3==4)
		rL2_real=R_open_contactor;	//1kohm
	else if (CB1_K1_K3==5)
		rL2_real=Preload;
	else
		rL2_real=rL2;

	/*
	//First LCL inductor:
	A_I_L1_a = dT_L1*(V1_a - Vp_a - I_L1_a*rL1);
	A_I_L1_b = dT_L1*(V1_b - Vp_b - I_L1_b*rL1);
	A_I_L1_c = dT_L1*(V1_c - Vp_c - I_L1_c*rL1);

	//Second LCL inductor and grid inductor:
	A_I_L2_a = dT_L2*(Vp_a - V2_a_ - I_L2_a*rL2_real);
	A_I_L2_b = dT_L2*(Vp_b - V2_b_ - I_L2_b*rL2_real);
	A_I_L2_c = dT_L2*(Vp_c - V2_c_ - I_L2_c*rL2_real);

	//LCL capacitor:
	A_Vc_a = dT_C*(I_L1_a - I_L2_a);
	A_Vc_b = dT_C*(I_L1_b - I_L2_b);
	A_Vc_c = dT_C*(I_L1_c - I_L2_c);

	//Voltage between LCL inductors:
	Vp_a = (I_L1_a-I_L2_a)*rC + VC_a ;
	Vp_b = (I_L1_b-I_L2_b)*rC + VC_b ;
	Vp_c = (I_L1_c-I_L2_c)*rC + VC_c ;

	//Accumulation:
	I_L1_a += A_I_L1_a;// + cero_cero_uno;
	I_L1_b += A_I_L1_b;// + cero_cero_uno;
	I_L1_c += A_I_L1_c;// + cero_cero_uno;

	I_L2_a += A_I_L2_a;
	I_L2_b += A_I_L2_b;
	I_L2_c += A_I_L2_c;

	VC_a += A_Vc_a;
	VC_b += A_Vc_b;
	VC_c += A_Vc_c;

	//Outputs
	 *IL1_a_r = I_L1_a;
	 *IL1_b_r = I_L1_b;
	 *IL1_c_r = I_L1_c;

	if (CB1_K1_K3==0 or CB1_K1_K3==1 or CB1_K1_K3==2 or CB1_K1_K3==3 or CB1_K1_K3==4 or CB1_K1_K3==5){

		I_L2_a = (I_L2_a*cero_uno+I_L2_a_prev);
		I_L2_b = (I_L2_b*cero_uno+I_L2_b_prev);
		I_L2_c = (I_L2_c*cero_uno+I_L2_c_prev);

		I_L2_a_prev=I_L2_a*cero_nueve;
		I_L2_b_prev=I_L2_b*cero_nueve;
		I_L2_c_prev=I_L2_c*cero_nueve;
	}


	 *IL2_a_r = I_L2_a;
	 *IL2_b_r = I_L2_b;
	 *IL2_c_r = I_L2_c;

	 *Vp_a_r=Vp_a-VN_gnd;
	 *Vp_b_r=Vp_b-VN_gnd;
	 *Vp_c_r=Vp_c-VN_gnd;
	 */

	//inductor

	aux_a = I_L2_a* rL2_real;
	aux_b = I_L2_b* rL2_real;
	aux_c = I_L2_c* rL2_real;

	A_I_L2_a= dT_L2*(V1_a - (V2_a_+VN_gnd) - aux_a);
	A_I_L2_b= dT_L2*(V1_b - (V2_b_+VN_gnd) - aux_b);
	A_I_L2_c= dT_L2*(V1_c - (V2_c_+VN_gnd) - aux_c);

	if (CB1_K1_K3==0 or CB1_K1_K3==1 or CB1_K1_K3==2 or CB1_K1_K3==3 or CB1_K1_K3==4){	//CB1 opened
		I_L2_a = 0;
		I_L2_b = 0;
		I_L2_c = 0;
	}
	else{
		I_L2_a+=A_I_L2_a;
		I_L2_b+=A_I_L2_b;
		I_L2_c+=A_I_L2_c;
	}

	if (rL2_real>12){
		I_L2_a = (I_L2_a*cero_uno+I_L2_a_prev);
		I_L2_b = (I_L2_b*cero_uno+I_L2_b_prev);
		I_L2_c = (I_L2_c*cero_uno+I_L2_c_prev);

		I_L2_a_prev=I_L2_a*cero_nueve;
		I_L2_b_prev=I_L2_b*cero_nueve;
		I_L2_c_prev=I_L2_c*cero_nueve;
	}

	//extract output values
	*IL1_a_r = I_L2_a;
	*IL1_b_r = I_L2_b;
	*IL1_c_r = I_L2_c;

	*IL2_a_r = I_L2_a;
	*IL2_b_r = I_L2_b;
	*IL2_c_r = I_L2_c;

	*Vp_a_r=0;
	*Vp_b_r=0;
	*Vp_c_r=0;




}


