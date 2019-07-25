// PSC | Power Smart Control | JRF | 2018

#ifndef H_dc_dc
#define H_dc_dc

//#include "hls_math.h"	//standard C data types
#include "ap_fixed.h"	//arbitrary precision data types
#include "ap_cint.h"	//arbitrary precision data types
using namespace std;		//this namespace declaration is necessary for using Ap_fixed.h method for data type conversions



typedef  ap_fixed<21, 12, AP_RND_CONV, AP_SAT> 	AP_21_12;			//21 total bits. 12 integer bits
typedef  ap_fixed<18, 12, AP_RND_CONV, AP_SAT> 	AP_18_12;			//18 total bits. 12 integer bits
typedef  ap_fixed<16, 9, AP_RND_CONV, AP_SAT> 	AP_16_9;			//16 total bits. 7 integer bits
typedef  ap_fixed<16, 7, AP_RND_CONV, AP_SAT> 	AP_16_7;			//16 total bits. 7 integer bits
typedef  ap_fixed<16, 3, AP_RND_CONV, AP_SAT>	AP_16_3;			//16 total bits. 3 integer bits
typedef  ap_fixed<40, 12, AP_RND_CONV, AP_SAT>	AP_40_12;			//40 total bits. 12 integer bits
typedef  ap_fixed<47, 21, AP_RND_CONV, AP_SAT>	AP_47_21;			//47 total bits. 21 integer bits
typedef  ap_fixed<52, 26, AP_RND_CONV, AP_SAT>	AP_52_26;			//47 total bits. 21 integer bits
typedef  ap_fixed<21, 16, AP_RND_CONV, AP_SAT>	AP_21_16;			//47 total bits. 21 integer bits
typedef  ap_fixed<25, 16, AP_RND_CONV, AP_SAT>	AP_25_16;			//47 total bits. 21 integer bits
typedef  ap_fixed<27, 18, AP_RND_CONV, AP_SAT>	AP_27_18;			//47 total bits. 21 integer bits

typedef  ap_fixed<13, 5, AP_RND_CONV, AP_SAT> 	AP_13_5;			//21 total bits. 12 integer bits
typedef  ap_fixed<12, 4, AP_RND_CONV, AP_SAT> 	AP_12_4;
typedef  ap_fixed<10, 2, AP_RND_CONV, AP_SAT> 	AP_10_2;
typedef  ap_fixed<14, 4, AP_RND_CONV, AP_SAT> 	AP_14_4;
typedef  ap_fixed<18,11, AP_RND_CONV, AP_SAT> 	AP_18_11;
typedef  ap_fixed<16, 7, AP_RND_CONV, AP_SAT> 	AP_16_7;
typedef  ap_fixed<25,16, AP_RND_CONV, AP_SAT>	AP_25_16;
typedef  ap_fixed<16, 1, AP_RND_CONV, AP_SAT> 	AP_16_1;
typedef  ap_fixed< 4, 1, AP_RND_CONV, AP_SAT> 	AP_4_1;
typedef  ap_fixed< 2, 1, AP_RND_CONV, AP_SAT> 	AP_2_1;
typedef  ap_fixed< 8, 7, AP_RND_CONV, AP_SAT> 	AP_8_7;
typedef  ap_fixed< 3, 3, AP_RND_CONV, AP_SAT>	AP_3_3;
typedef  ap_fixed< 8, 1, AP_RND_CONV, AP_SAT>	AP_8_1;
typedef  ap_fixed<26, 1, AP_RND_CONV, AP_SAT>	AP_26_1;
typedef  ap_fixed<22,21, AP_RND_CONV, AP_SAT>	AP_22_21;
typedef  ap_fixed<15, 1, AP_RND_CONV, AP_SAT>	AP_15_1;
typedef  ap_fixed<10, 1, AP_RND_CONV, AP_SAT>	AP_10_1;
typedef  ap_fixed<20, 1, AP_RND_CONV, AP_SAT>	AP_20_1;
typedef  ap_fixed<28, 1, AP_RND_CONV, AP_SAT>	AP_28_1;




typedef  ap_fixed<21, 12, AP_RND_CONV, AP_SAT> 	AP_21_12;			//21 total bits. 12 integer bits
typedef  ap_fixed<18, 12, AP_RND_CONV, AP_SAT> 	AP_18_12;
typedef  ap_fixed<16,  9, AP_RND_CONV, AP_SAT> 	AP_16_9;
//typedef  ap_fixed<16,  7, AP_RND_CONV, AP_SAT> 	AP_16_7;
typedef  ap_fixed<16,  3, AP_RND_CONV, AP_SAT>	AP_16_3;
typedef  ap_fixed<40, 12, AP_RND_CONV, AP_SAT>	AP_40_12;
typedef  ap_fixed<47, 21, AP_RND_CONV, AP_SAT>	AP_47_21;
typedef  ap_fixed<52, 26, AP_RND_CONV, AP_SAT>	AP_52_26;
typedef  ap_fixed<21, 16, AP_RND_CONV, AP_SAT>	AP_21_16;

typedef  ap_fixed<27, 18, AP_RND_CONV, AP_SAT>	AP_27_18;

typedef  ap_fixed<21, 20, AP_RND_CONV, AP_SAT>	AP_21_20;
typedef  ap_fixed<30, 18, AP_RND_CONV, AP_SAT>	AP_30_18;
typedef  ap_fixed< 6,  5, AP_RND_CONV, AP_SAT>	AP_6_5;
typedef  ap_fixed<19,  1, AP_RND_CONV, AP_SAT>	AP_19_1;
typedef  ap_fixed< 2,  1, AP_RND_CONV, AP_SAT>	AP_2_1;
typedef  ap_fixed< 9,  1, AP_RND_CONV, AP_SAT>	AP_9_1;

typedef  ap_fixed< 16,  16, AP_RND_CONV, AP_SAT>	AP_16_16;
typedef  ap_fixed< 5,  5, AP_RND_CONV, AP_SAT>	AP_5_5;
typedef  ap_fixed< 22,  1, AP_RND_CONV, AP_SAT>	AP_22_1;
typedef  ap_fixed< 5,  1, AP_RND_CONV, AP_SAT>	AP_5_1;
typedef  ap_fixed< 8,  8, AP_RND_CONV, AP_SAT>	AP_8_8;
typedef  ap_fixed<18, 18, AP_RND_CONV, AP_SAT>	AP_18_18;
typedef  ap_fixed<12, 12, AP_RND_CONV, AP_SAT>	AP_12_12;

typedef  ap_fixed< 32, 12, AP_RND_CONV, AP_SAT>	AP_32_12;

const AP_18_18 full_tri[1000] ={0,262,525,787,1050,1312,1574,1837,2099,2362,2624,2886,3149,3411,3674,3936,4198,4461,4723,4986,5248,5511,5773,6035,6298,6560,6823,7085,7347,7610,7872,8135,8397,8659,8922,9184,9447,9709,9971,10234,10496,10759,11021,11283,11546,11808,12071,12333,12595,12858,13120,13383,13645,13908,14170,14432,14695,14957,15220,15482,15744,16007,16269,16532,16794,17056,17319,17581,17844,18106,18368,18631,18893,19156,19418,19680,19943,20205,20468,20730,20992,21255,21517,21780,22042,22305,22567,22829,23092,23354,23617,23879,24141,24404,24666,24929,25191,25453,25716,25978,26241,26503,26765,27028,27290,27553,27815,28077,28340,28602,28865,29127,29389,29652,29914,30177,30439,30702,30964,31226,31489,31751,32014,32276,32538,32801,33063,33326,33588,33850,34113,34375,34638,34900,35162,35425,35687,35950,36212,36474,36737,36999,37262,37524,37786,38049,38311,38574,38836,39099,39361,39623,39886,40148,40411,40673,40935,41198,41460,41723,41985,42247,42510,42772,43035,43297,43559,43822,44084,44347,44609,44871,45134,45396,45659,45921,46183,46446,46708,46971,47233,47496,47758,48020,48283,48545,48808,49070,49332,49595,49857,50120,50382,50644,50907,51169,51432,51694,51956,52219,52481,52744,53006,53268,53531,53793,54056,54318,54580,54843,55105,55368,55630,55893,56155,56417,56680,56942,57205,57467,57729,57992,58254,58517,58779,59041,59304,59566,59829,60091,60353,60616,60878,61141,61403,61665,61928,62190,62453,62715,62977,63240,63502,63765,64027,64290,64552,64814,65077,65339,65470,65208,64946,64683,64421,64158,63896,63634,63371,63109,62846,62584,62322,62059,61797,61534,61272,61010,60747,60485,60222,59960,59698,59435,59173,58910,58648,58385,58123,57861,57598,57336,57073,56811,56549,56286,56024,55761,55499,55237,54974,54712,54449,54187,53925,53662,53400,53137,52875,52613,52350,52088,51825,51563,51301,51038,50776,50513,50251,49989,49726,49464,49201,48939,48676,48414,48152,47889,47627,47364,47102,46840,46577,46315,46052,45790,45528,45265,45003,44740,44478,44216,43953,43691,43428,43166,42904,42641,42379,42116,41854,41592,41329,41067,40804,40542,40279,40017,39755,39492,39230,38967,38705,38443,38180,37918,37655,37393,37131,36868,36606,36343,36081,35819,35556,35294,35031,34769,34507,34244,33982,33719,33457,33195,32932,32670,32407,32145,31882,31620,31358,31095,30833,30570,30308,30046,29783,29521,29258,28996,28734,28471,28209,27946,27684,27422,27159,26897,26634,26372,26110,25847,25585,25322,25060,24798,24535,24273,24010,23748,23485,23223,22961,22698,22436,22173,21911,21649,21386,21124,20861,20599,20337,20074,19812,19549,19287,19025,18762,18500,18237,17975,17713,17450,17188,16925,16663,16401,16138,15876,15613,15351,15088,14826,14564,14301,14039,13776,13514,13252,12989,12727,12464,12202,11940,11677,11415,11152,10890,10628,10365,10103,9840,9578,9316,9053,8791,8528,8266,8004,7741,7479,7216,6954,6691,6429,6167,5904,5642,5379,5117,4855,4592,4330,4067,3805,3543,3280,3018,2755,2493,2231,1968,1706,1443,1181,919,656,394,131,-131,-393,-656,-918,-1181,-1443,-1706,-1968,-2230,-2493,-2755,-3018,-3280,-3542,-3805,-4067,-4330,-4592,-4854,-5117,-5379,-5642,-5904,-6166,-6429,-6691,-6954,-7216,-7478,-7741,-8003,-8266,-8528,-8790,-9053,-9315,-9578,-9840,-10103,-10365,-10627,-10890,-11152,-11415,-11677,-11939,-12202,-12464,-12727,-12989,-13251,-13514,-13776,-14039,-14301,-14563,-14826,-15088,-15351,-15613,-15875,-16138,-16400,-16663,-16925,-17187,-17450,-17712,-17975,-18237,-18500,-18762,-19024,-19287,-19549,-19812,-20074,-20336,-20599,-20861,-21124,-21386,-21648,-21911,-22173,-22436,-22698,-22960,-23223,-23485,-23748,-24010,-24272,-24535,-24797,-25060,-25322,-25584,-25847,-26109,-26372,-26634,-26896,-27159,-27421,-27684,-27946,-28209,-28471,-28733,-28996,-29258,-29521,-29783,-30045,-30308,-30570,-30833,-31095,-31357,-31620,-31882,-32145,-32407,-32669,-32932,-33194,-33457,-33719,-33981,-34244,-34506,-34769,-35031,-35293,-35556,-35818,-36081,-36343,-36606,-36868,-37130,-37393,-37655,-37918,-38180,-38442,-38705,-38967,-39230,-39492,-39754,-40017,-40279,-40542,-40804,-41066,-41329,-41591,-41854,-42116,-42378,-42641,-42903,-43166,-43428,-43690,-43953,-44215,-44478,-44740,-45003,-45265,-45527,-45790,-46052,-46315,-46577,-46839,-47102,-47364,-47627,-47889,-48151,-48414,-48676,-48939,-49201,-49463,-49726,-49988,-50251,-50513,-50775,-51038,-51300,-51563,-51825,-52087,-52350,-52612,-52875,-53137,-53400,-53662,-53924,-54187,-54449,-54712,-54974,-55236,-55499,-55761,-56024,-56286,-56548,-56811,-57073,-57336,-57598,-57860,-58123,-58385,-58648,-58910,-59172,-59435,-59697,-59960,-60222,-60484,-60747,-61009,-61272,-61534,-61797,-62059,-62321,-62584,-62846,-63109,-63371,-63633,-63896,-64158,-64421,-64683,-64945,-65208,-65470,-65339,-65077,-64815,-64552,-64290,-64027,-63765,-63503,-63240,-62978,-62715,-62453,-62191,-61928,-61666,-61403,-61141,-60878,-60616,-60354,-60091,-59829,-59566,-59304,-59042,-58779,-58517,-58254,-57992,-57730,-57467,-57205,-56942,-56680,-56418,-56155,-55893,-55630,-55368,-55106,-54843,-54581,-54318,-54056,-53794,-53531,-53269,-53006,-52744,-52481,-52219,-51957,-51694,-51432,-51169,-50907,-50645,-50382,-50120,-49857,-49595,-49333,-49070,-48808,-48545,-48283,-48021,-47758,-47496,-47233,-46971,-46709,-46446,-46184,-45921,-45659,-45397,-45134,-44872,-44609,-44347,-44084,-43822,-43560,-43297,-43035,-42772,-42510,-42248,-41985,-41723,-41460,-41198,-40936,-40673,-40411,-40148,-39886,-39624,-39361,-39099,-38836,-38574,-38312,-38049,-37787,-37524,-37262,-37000,-36737,-36475,-36212,-35950,-35687,-35425,-35163,-34900,-34638,-34375,-34113,-33851,-33588,-33326,-33063,-32801,-32539,-32276,-32014,-31751,-31489,-31227,-30964,-30702,-30439,-30177,-29915,-29652,-29390,-29127,-28865,-28603,-28340,-28078,-27815,-27553,-27291,-27028,-26766,-26503,-26241,-25978,-25716,-25454,-25191,-24929,-24666,-24404,-24142,-23879,-23617,-23354,-23092,-22830,-22567,-22305,-22042,-21780,-21518,-21255,-20993,-20730,-20468,-20206,-19943,-19681,-19418,-19156,-18894,-18631,-18369,-18106,-17844,-17581,-17319,-17057,-16794,-16532,-16269,-16007,-15745,-15482,-15220,-14957,-14695,-14433,-14170,-13908,-13645,-13383,-13121,-12858,-12596,-12333,-12071,-11809,-11546,-11284,-11021,-10759,-10497,-10234,-9972,-9709,-9447,-9184,-8922,-8660,-8397,-8135,-7872,-7610,-7348,-7085,-6823,-6560,-6298,-6036,-5773,-5511,-5248,-4986,-4724,-4461,-4199,-3936,-3674,-3412,-3149,-2887,-2624,-2362,-2100,-1837,-1575,-1312,-1050,-787,-525,-263, 0};

void dc_dc (
		uint12 dutty_pot, float V_N_gnd, bool enable,
		bool T1, bool T2,  bool T3, bool T4,  bool T5, bool T6,
		bool *T1_out, bool *T2_out,  bool *T3_out, bool *T4_out,  bool *T5_out, bool *T6_out,
		float *V_N_gnd_out
);


#endif //#ifndef H_dc_dc