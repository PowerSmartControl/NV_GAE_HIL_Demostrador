// PSC | Power Smart Control | JRF | 2018

#include "dc_dc.h"

void dc_dc (
		uint12 dutty_pot, float V_N_gnd, bool enable,
		bool T1, bool T2,  bool T3, bool T4,  bool T5, bool T6,
		bool *T1_out, bool *T2_out,  bool *T3_out, bool *T4_out,  bool *T5_out, bool *T6_out,
		float *V_N_gnd_out
){

	static int counter, counter_limit_tri=0;
	bool T1_here, T4_here=0;

	if (counter>409)
		counter=0;
	else
		counter++;

	if (counter<(int)(0.1f*dutty_pot)){
		T1_here=1;
		T4_here=0;
	}
	else{
		T1_here=0;
		T4_here=1;
	}

	if (enable==1){
		*T1_out=T1_here;
		*T4_out=T4_here;

		*T2_out=0;//only one branch of mosfet is working
		*T3_out=0;
		*T5_out=0;
		*T6_out=0;
		*V_N_gnd_out=0.0f;
	}
	else{
		*T1_out=T1;
		*T2_out=T2;
		*T3_out=T3;
		*T4_out=T4;
		*T5_out=T5;
		*T6_out=T6;
		*V_N_gnd_out=V_N_gnd;
	}

}

