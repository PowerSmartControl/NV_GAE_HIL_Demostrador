// PSC | Power Smart Control | JRF | 2018

#include "signal_data_extractor.h"

//this block calculate the rms value of different waves supposed sinusoidal.
//the sampling freq is determined by flag_5KHz (100 points per 50Hz wave)
//and the output freq is determined by flag_5Hz (1 output per 10 periods of 50Hz wave)


void signal_data_extractor (
		AP_25_16 IL1_a,  	AP_25_16 IL1_b,  	AP_25_16 IL1_c,
		AP_25_16 IL2_a,  	AP_25_16 IL2_b,  	AP_25_16 IL2_c,
		AP_25_16 Ipmsm_a,  	AP_25_16 Ipmsm_b,  	AP_25_16 Ipmsm_c,
		AP_25_16 Vgrid_a,  	AP_25_16 Vgrid_b,  	AP_25_16 Vgrid_c,
		AP_25_16 Vpmsm_a,  	AP_25_16 Vpmsm_b,  	AP_25_16 Vpmsm_c,
		AP_18_12 Vbus_dc,
		bool flag_5KHz, bool flag_5Hz,

		APu_12_12 *IL1_a_r,  	APu_12_12 *IL1_b_r,  	APu_12_12 *IL1_c_r,
		APu_12_12 *IL2_a_r,  	APu_12_12 *IL2_b_r,  	APu_12_12 *IL2_c_r,
		APu_12_12 *Ipmsm_a_r,  	APu_12_12 *Ipmsm_b_r,  	APu_12_12 *Ipmsm_c_r,
		APu_12_12 *Vgrid_a_r,  	APu_12_12 *Vgrid_b_r,  	APu_12_12 *Vgrid_c_r,
		APu_12_12 *Vpmsm_a_r,  	APu_12_12 *Vpmsm_b_r,  	APu_12_12 *Vpmsm_c_r,
		APu_12_12 *Vbus_dc_r

){

	const AP_4_4 upper_limit = 5;
	const AP_4_4 lower_limit = -5;
	const AP_5_1 rms_value = 0.707106;	//   1/sqrt(2)=0.707

	static AP_25_16 IL1_a_aux, IL1_b_aux, IL1_c_aux, IL2_a_aux, IL2_b_aux, IL2_c_aux, Ipmsm_a_aux, Ipmsm_b_aux, Ipmsm_c_aux, Vgrid_a_aux, Vgrid_b_aux, Vgrid_c_aux, Vpmsm_a_aux, Vpmsm_b_aux, Vpmsm_c_aux=0;
	static AP_25_16 IL1_a_prev, IL1_b_prev, IL1_c_prev, IL2_a_prev, IL2_b_prev, IL2_c_prev, Ipmsm_a_prev, Ipmsm_b_prev, Ipmsm_c_prev, Vgrid_a_prev, Vgrid_b_prev, Vgrid_c_prev, Vpmsm_a_prev, Vpmsm_b_prev, Vpmsm_c_prev=0;
	static AP_25_16 IL1_a_max, IL1_b_max, IL1_c_max, IL2_a_max, IL2_b_max, IL2_c_max, Ipmsm_a_max, Ipmsm_b_max, Ipmsm_c_max, Vgrid_a_max, Vgrid_b_max, Vgrid_c_max, Vpmsm_a_max, Vpmsm_b_max, Vpmsm_c_max=0;
	static bool IL1_a_positive, IL1_b_positive, IL1_c_positive, IL2_a_positive, IL2_b_positive, IL2_c_positive, Ipmsm_a_positive, Ipmsm_b_positive, Ipmsm_c_positive, Vgrid_a_positive, Vgrid_b_positive, Vgrid_c_positive, Vpmsm_a_positive, Vpmsm_b_positive, Vpmsm_c_positive=0;
	static bool flag_5KHz_prev, flag_5Hz_prev=0;

	static AP_18_12 Vbus_dc_aux;

	if (flag_5KHz==1 and flag_5KHz_prev==0){	//calculate maximum value per period

		if (IL1_a>upper_limit and IL1_a_prev<lower_limit)	//positive wave
			IL1_a_positive=1;
		else
			IL1_a_positive=0;

		if (IL1_a_positive==1 and IL1_a>IL1_a_prev)	//accumulate maximum value per positive period of the wave
			IL1_a_aux=IL1_a;
		//
		if (IL1_b>upper_limit and IL1_b_prev<lower_limit)	//positive wave
			IL1_b_positive=1;
		else
			IL1_b_positive=0;

		if (IL1_b_positive==1 and IL1_b>IL1_b_prev)	//accumulate maximum value per positive period of the wave
			IL1_b_aux=IL1_b;
		//
		if (IL1_c>upper_limit and IL1_c_prev<lower_limit)	//positive wave
			IL1_c_positive=1;
		else
			IL1_c_positive=0;

		if (IL1_c_positive==1 and IL1_c>IL1_c_prev)	//accumulate maximum value per positive period of the wave
			IL1_c_aux=IL1_c;
		//
		//
		if (IL2_a>upper_limit and IL2_a_prev<lower_limit)	//positive wave
			IL2_a_positive=1;
		else
			IL2_a_positive=0;

		if (IL2_a_positive==1 and IL2_a>IL2_a_prev)	//accumulate maximum value per positive period of the wave
			IL2_a_aux=IL2_a;
		//
		if (IL2_b>upper_limit and IL2_b_prev<lower_limit)	//positive wave
			IL2_b_positive=1;
		else
			IL2_b_positive=0;

		if (IL2_b_positive==1 and IL2_b>IL2_b_prev)	//accumulate maximum value per positive period of the wave
			IL2_b_aux=IL2_b;
		//
		if (IL2_c>upper_limit and IL2_c_prev<lower_limit)	//positive wave
			IL2_c_positive=1;
		else
			IL2_c_positive=0;

		if (IL2_c_positive==1 and IL2_c>IL2_c_prev)	//accumulate maximum value per positive period of the wave
			IL2_c_aux=IL2_c;
		//
		//
		if (Ipmsm_a>upper_limit and Ipmsm_a_prev<lower_limit)	//positive wave
			Ipmsm_a_positive=1;
		else
			Ipmsm_a_positive=0;

		if (Ipmsm_a_positive==1 and Ipmsm_a>Ipmsm_a_prev)	//accumulate maximum value per positive period of the wave
			Ipmsm_a_aux=Ipmsm_a;
		//
		if (Ipmsm_b>upper_limit and Ipmsm_b_prev<lower_limit)	//positive wave
			Ipmsm_b_positive=1;
		else
			Ipmsm_b_positive=0;

		if (Ipmsm_b_positive==1 and Ipmsm_b>Ipmsm_b_prev)	//accumulate maximum value per positive period of the wave
			Ipmsm_b_aux=Ipmsm_b;
		//
		if (Ipmsm_c>upper_limit and Ipmsm_c_prev<lower_limit)	//positive wave
			Ipmsm_c_positive=1;
		else
			Ipmsm_c_positive=0;

		if (Ipmsm_c_positive==1 and Ipmsm_c>Ipmsm_c_prev)	//accumulate maximum value per positive period of the wave
			Ipmsm_c_aux=Ipmsm_c;
		//
		//
		if (Vgrid_a>upper_limit and Vgrid_a_prev<lower_limit)	//positive wave
			Vgrid_a_positive=1;
		else
			Vgrid_a_positive=0;

		if (Vgrid_a_positive==1 and Vgrid_a>Vgrid_a_prev)	//accumulate maximum value per positive period of the wave
			Vgrid_a_aux=Vgrid_a;
		//
		if (Vgrid_b>upper_limit and Vgrid_b_prev<lower_limit)	//positive wave
			Vgrid_b_positive=1;
		else
			Vgrid_b_positive=0;

		if (Vgrid_b_positive==1 and Vgrid_b>Vgrid_b_prev)	//accumulate maximum value per positive period of the wave
			Vgrid_b_aux=Vgrid_b;
		//
		if (Vgrid_c>upper_limit and Vgrid_c_prev<lower_limit)	//positive wave
			Vgrid_c_positive=1;
		else
			Vgrid_c_positive=0;

		if (Vgrid_c_positive==1 and Vgrid_c>Vgrid_c_prev)	//accumulate maximum value per positive period of the wave
			Vgrid_c_aux=Vgrid_c;
		//
		//
		if (Vpmsm_a>upper_limit and Vpmsm_a_prev<lower_limit)	//positive wave
			Vpmsm_a_positive=1;
		else
			Vpmsm_a_positive=0;

		if (Vpmsm_a_positive==1 and Vpmsm_a>Vpmsm_a_prev)	//accumulate maximum value per positive period of the wave
			Vpmsm_a_aux=Vpmsm_a;
		//
		if (Vpmsm_b>upper_limit and Vpmsm_b_prev<lower_limit)	//positive wave
			Vpmsm_b_positive=1;
		else
			Vpmsm_b_positive=0;

		if (Vpmsm_b_positive==1 and Vpmsm_b>Vpmsm_b_prev)	//accumulate maximum value per positive period of the wave
			Vpmsm_b_aux=Vpmsm_b;
		//
		if (Vpmsm_c>upper_limit and Vpmsm_c_prev<lower_limit)	//positive wave
			Vpmsm_c_positive=1;
		else
			Vpmsm_c_positive=0;

		if (Vpmsm_c_positive==1 and Vpmsm_c>Vpmsm_c_prev)	//accumulate maximum value per positive period of the wave
			Vpmsm_c_aux=Vpmsm_c;
		//
		//

		//refresh values
		IL1_a_prev     =  IL1_a;
		IL1_b_prev     =  IL1_b;
		IL1_c_prev     =  IL1_c;
		IL2_a_prev     =  IL2_a;
		IL2_b_prev     =  IL2_b;
		IL2_c_prev     =  IL2_c;
		Ipmsm_a_prev   =  Ipmsm_a;
		Ipmsm_b_prev   =  Ipmsm_b;
		Ipmsm_c_prev   =  Ipmsm_c;
		Vgrid_a_prev   =  Vgrid_a;
		Vgrid_b_prev   =  Vgrid_b;
		Vgrid_c_prev   =  Vgrid_c;
		Vpmsm_a_prev   =  Vpmsm_a;
		Vpmsm_b_prev   =  Vpmsm_b;
		Vpmsm_c_prev   =  Vpmsm_c;

	}

	if (flag_5Hz==1 and flag_5Hz_prev==0){		//generate output rms value

		if (IL1_a_positive==0)
			*IL1_a_r = IL1_a_aux*rms_value;
		//
		if (IL1_b_positive==0)
			*IL1_b_r = IL1_b_aux*rms_value;
		//
		if (IL1_c_positive==0)
			*IL1_c_r = IL1_c_aux*rms_value;
		//
		//
		if (IL2_a_positive==0)
			*IL2_a_r = IL2_a_aux*rms_value;
		//
		if (IL2_b_positive==0)
			*IL2_b_r = IL2_b_aux*rms_value;
		//
		if (IL2_c_positive==0)
			*IL2_c_r = IL2_c_aux*rms_value;
		//
		//
		if (Ipmsm_a_positive==0)
			*Ipmsm_a_r = Ipmsm_a_aux*rms_value;
		//
		if (Ipmsm_b_positive==0)
			*Ipmsm_b_r = Ipmsm_b_aux*rms_value;
		//
		if (Ipmsm_c_positive==0)
			*Ipmsm_c_r = Ipmsm_c_aux*rms_value;
		//
		//
		if (Vgrid_a_positive==0)
			*Vgrid_a_r = Vgrid_a_aux*rms_value;
		//
		if (Vgrid_b_positive==0)
			*Vgrid_b_r = Vgrid_b_aux*rms_value;
		//
		if (Vgrid_c_positive==0)
			*Vgrid_c_r = Vgrid_c_aux*rms_value;
		//
		//
		if (Vpmsm_a_positive==0)
			*Vpmsm_a_r = Vpmsm_a_aux*rms_value;
		//
		if (Vpmsm_b_positive==0)
			*Vpmsm_b_r = Vpmsm_b_aux*rms_value;
		//
		if (Vpmsm_c_positive==0)
			*Vpmsm_c_r = Vpmsm_c_aux*rms_value;
		//
		//
		*Vbus_dc_r=Vbus_dc;

	}

	flag_5Hz_prev=flag_5Hz;
	flag_5KHz_prev=flag_5KHz;


}
