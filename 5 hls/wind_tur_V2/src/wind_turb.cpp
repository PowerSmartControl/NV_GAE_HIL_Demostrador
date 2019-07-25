// PSC | Power Smart Control | JRF | 2018

#include "wind_turb.h"


void wind_turb (
		AP_27_18 Tem, AP_21_20 Pi,
		AP_25_16 *Wn){	//Pi (input) = 0.5* Rblades* 3.14159* Vwind^3* airDensity* Cp

	const AP_26_1 dT_Ceq 	= 0.00004;	//dT = 0.000001	| Ceq = 0.05 =>  dT/Ceq=0.00002
	const AP_6_5  V0 		= 10.0;

	static AP_30_18 iV;
	static AP_30_18 Ti;
	static AP_30_18 iWn;

	iWn = iV + V0;					//Wn
	Ti = Pi/iWn;					//Instantaneous torque				//this division is a great issue in terms of timing!
	iV += (Ti+Tem)*dT_Ceq;			//V torque bus

	//Output:
	*Wn = (AP_25_16)iWn;

}
