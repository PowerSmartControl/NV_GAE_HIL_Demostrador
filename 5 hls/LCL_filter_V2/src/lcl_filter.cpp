#include "lcl_filter.h"

void lcl_filter (
		float V1_a, float V1_b, float V1_c,
		float V2_a_, float V2_b_, float V2_c_,
		float VN_gnd,
		float dT_L1, float dT_L2, float dT_C, float rC, float rL1, float rL2, float Preload,
		AP_5_5 CB1_K1_K3,
		float *IL1_a_r, float *IL1_b_r, float *IL1_c_r,
		float *IL2_a_r, float *IL2_b_r, float *IL2_c_r,
		float *Vp_a_r, float *Vp_b_r, float *Vp_c_r

){

	static float A_I_L1_a, A_I_L1_b, A_I_L1_c;//=0.0f;
	static float A_I_L2_a, A_I_L2_b, A_I_L2_c;//=0.0f;
	static float A_Vc_a, A_Vc_b, A_Vc_c;//=0.0f;
	static float aux_1_a, aux_1_b, aux_1_c, aux_2_a, aux_2_b, aux_2_c;//=0.0f;
	static float auxx_1_a, auxx_1_b, auxx_1_c, auxx_2_a, auxx_2_b, auxx_2_c;//=0.0f;

	static float I_L1_a, I_L1_b, I_L1_c;//=0.0f;
	//static AP_32_12 aux_a, aux_b, aux_c;
	static float I_L2_a, I_L2_b, I_L2_c, I_L2_a_prev, I_L2_b_prev, I_L2_c_prev;//=0.0f;
	static float Vp_a, Vp_b, Vp_c;//=0.0f;
	static float VC_a, VC_b, VC_c;//=0.0f;
	static float rL2_real;//=0.0f;
/*
	//const  AP_11_1  cero_cero_uno = 0.01;
	//const  AP_11_1  	cero_cinco = 0.5;
	const  AP_7_1  	cero_uno = 0.1;
	const  AP_7_1  	cero_nueve = 0.9;

	const  AP_32_25 R_open_contactor = 1000;
	*/
	/*
	const  AP_30_23 rL1 = 0.01;
	const  AP_30_23 rL2 = 0.01;
	const  AP_32_25 Preload = 11;
	const  AP_16_1 dT_L1 = 0.0004;
	const  AP_16_1 dT_L2 = 0.002;
	const  AP_16_1 dT_C= 0.004;
	const  AP_31_21 rC= 0.5;
	*/
	const  float  	cero_uno = 0.01f;
	const  float  	cero_nueve = 0.99f;
	const  float	R_open_contactor = 5000.0f;

	if (CB1_K1_K3==0 or CB1_K1_K3==1 or CB1_K1_K3==2 or CB1_K1_K3==3 or CB1_K1_K3==4)
		rL2_real=R_open_contactor;	//1kohm
	else if (CB1_K1_K3==5)
		rL2_real=Preload;
	else
		rL2_real=rL2;

	aux_1_a = I_L1_a*rL1;
	aux_1_b = I_L1_b*rL1;
	aux_1_c = I_L1_c*rL1;

	aux_2_a = I_L2_a*rL2_real;
	aux_2_b = I_L2_b*rL2_real;
	aux_2_c = I_L2_c*rL2_real;
/*
	auxx_1_a = V1_a - Vp_a - aux_1_a;
	auxx_1_b = V1_b - Vp_b - aux_1_b;
	auxx_1_c = V1_c - Vp_c - aux_1_c;

	auxx_2_a = Vp_a - (V2_a_ + VN_gnd) - aux_2_a;
	auxx_2_b = Vp_b - (V2_b_ + VN_gnd) - aux_2_b;
	auxx_2_c = Vp_c - (V2_c_ + VN_gnd) - aux_2_c;
*/
	//First LCL inductor:
	A_I_L1_a = dT_L1 * (V1_a - Vp_a - aux_1_a);
	A_I_L1_b = dT_L1 * (V1_b - Vp_b - aux_1_b);
	A_I_L1_c = dT_L1 * (V1_c - Vp_c - aux_1_c);

	//Second LCL inductor and grid inductor:
	A_I_L2_a = dT_L2 * (Vp_a - (V2_a_ + VN_gnd) - aux_2_a);
	A_I_L2_b = dT_L2 * (Vp_b - (V2_b_ + VN_gnd) - aux_2_b);
	A_I_L2_c = dT_L2 * (Vp_c - (V2_c_ + VN_gnd) - aux_2_c);

	//LCL capacitor:
	A_Vc_a = dT_C*(I_L1_a - I_L2_a);
	A_Vc_b = dT_C*(I_L1_b - I_L2_b);
	A_Vc_c = dT_C*(I_L1_c - I_L2_c);

	//Voltage between LCL inductors:
	Vp_a = (I_L1_a-I_L2_a)*rC + VC_a + VN_gnd;
	Vp_b = (I_L1_b-I_L2_b)*rC + VC_b + VN_gnd;
	Vp_c = (I_L1_c-I_L2_c)*rC + VC_c + VN_gnd;

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


	if (rL2_real>12){
		I_L2_a = (I_L2_a*cero_uno+I_L2_a_prev);
		I_L2_b = (I_L2_b*cero_uno+I_L2_b_prev);
		I_L2_c = (I_L2_c*cero_uno+I_L2_c_prev);

		I_L2_a_prev=I_L2_a*cero_nueve;
		I_L2_b_prev=I_L2_b*cero_nueve;
		I_L2_c_prev=I_L2_c*cero_nueve;
	}

	//Outputs
	 *IL1_a_r = I_L1_a;
	 *IL1_b_r = I_L1_b;
	 *IL1_c_r = I_L1_c;

	 *IL2_a_r = I_L2_a;
	 *IL2_b_r = I_L2_b;
	 *IL2_c_r = I_L2_c;

	 *Vp_a_r=Vp_a-VN_gnd;
	 *Vp_b_r=Vp_b-VN_gnd;
	 *Vp_c_r=Vp_c-VN_gnd;




}
