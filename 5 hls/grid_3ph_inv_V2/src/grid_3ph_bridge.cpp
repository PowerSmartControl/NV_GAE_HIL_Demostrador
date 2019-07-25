#include "grid_3ph_bridge.h"

void grid_bridge3ph (
		bool T1, bool T2,
		bool T3, bool T4,
		bool T5, bool T6,
		float Vdc,
		float Ia, float Ib, float Ic,
		float *Va_r, float *Vb_r, float *Vc_r,
		float *Idc_r,
		float *V_n_gnd_r ){

	static bool T1_eq, T2_eq, T3_eq, T4_eq, T5_eq, T6_eq, T1_diodo, T2_diodo, T3_diodo, T4_diodo, T5_diodo, T6_diodo=0;
	static float a,b,c, V_n_gnd=0.0f;
	static float aux_act_a, aux_act_b, aux_act_c, aux_prev_a, aux_prev_b, aux_prev_c=0.0f;
	static float a_ant, a_ant_1, a_ant_2, a_ant_3, a_ant_4, a_ant_5, a_ant_6, b_ant, b_ant_1, b_ant_2, b_ant_3, b_ant_4, b_ant_5, b_ant_6, c_ant, c_ant_1, c_ant_2, c_ant_3, c_ant_4, c_ant_5, c_ant_6=0.0f;
	/*
	const  AP_9_1 	one_cuarter = 	0.25;
	//const  AP_8_1 	threshold = 	0;
	//const  AP_8_1 	inv_threshold = 0;
	const  AP_16_3 	dos_terc 	= 	0.6666666666;
	const  AP_16_3	un_terc 	= 		0.3333333333;
	const  AP_16_3 	uno 	= 		1;
	const  AP_8_1 	cero_dos 	= 	0.2;
	const  AP_8_1	cero_ocho 	= 	0.8;
	const  AP_8_1 un_octavo =		0.125;
*/
	const  float 	one_cuarter = 	0.25f;
	//const  AP_8_1 	threshold = 	0;
	//const  AP_8_1 	inv_threshold = 0;
	const  float 	dos_terc 	= 	0.6666666666f;
	const  float		un_terc 	= 		0.3333333333f;
	const  float 	cero_dos 	= 	0.2f;
	const  float		cero_ocho 	= 	0.8f;
	const  float 	un_octavo =		0.125f;

	//conduction par T1
	if (T1==0 && T4==0 && Ia<0)
		T1_eq=1;									//mosfet / igbt
	else if (T1==1 || T4==1)
		T1_eq=T1;
	else
		T1_eq=0;

	//conduction par T2
	if (T2==0 && T5==0 && Ib<0)
		T2_eq=1;
	else if (T2==1 || T5==1)
		T2_eq=T2;
	else
		T2_eq=0;

	//conduction par T3
	if (T3==0 && T6==0 && Ic<0)
		T3_eq=1;
	else if (T3==1 || T6==1)
		T3_eq=T3;
	else
		T3_eq=0;

	//generate outputs voltages:
	if (T1_eq==1)
		a=Vdc;
	else
		a=0;//0.0001;

	if (T2_eq==1)
		b=Vdc;
	else
		b=0;//0.0001;

	if (T3_eq==1)
		c=Vdc;
	else
		c=0;//0.0001;
	/*
if (T1==0 && T2==0 && T3==0 && T4==0 && T5==0 && T6==0)	{
	*Idc_r= ( Ia*T1_eq +  Ib*T2_eq +  Ic*T3_eq );
*/

*Idc_r= ( Ia*T1_eq +  Ib*T2_eq +  Ic*T3_eq );
	//rectifier mode
	/*
if (T1==0 && T2==0 && T3==0 && T4==0 && T5==0 && T6==0)	{//rectifier mode
	a=(a + a_ant + a_ant_1 + a_ant_2 + a_ant_3+ a_ant_4 +a_ant_5 + a_ant_6)*un_octavo;
	b=(b + b_ant + b_ant_1 + b_ant_2 + b_ant_3+ b_ant_4 +b_ant_5 + b_ant_6)*un_octavo;
	c=(c + c_ant + c_ant_1 + c_ant_2 + c_ant_3+ c_ant_4 +c_ant_5 + c_ant_6)*un_octavo;
	}
*/

	*V_n_gnd_r=(a+b+c)*un_terc;


	*Va_r = a;
	*Vb_r = b;
	*Vc_r = c;
/*
	//filter coefficient update
	a_ant_6=a_ant_5;
	a_ant_5=a_ant_4;
	a_ant_4=a_ant_3;
	a_ant_3=a_ant_2;
	a_ant_2=a_ant_1;
	a_ant_1=a_ant;
	a_ant=a;

	b_ant_6=b_ant_5;
	b_ant_5=b_ant_4;
	b_ant_4=b_ant_3;
	b_ant_3=b_ant_2;
	b_ant_2=b_ant_1;
	b_ant_1=b_ant;
	b_ant=b;

	c_ant_6=c_ant_5;
	c_ant_5=c_ant_4;
	c_ant_4=c_ant_3;
	c_ant_3=c_ant_2;
	c_ant_2=c_ant_1;
	c_ant_1=c_ant;
	c_ant=c;
*/

}


