#include "cordic.h"

typedef ap_fixed<32,8> data_8;
typedef ap_fixed<16,4> data_4;
typedef ap_fixed<16,2> data_2;

void coshsinh_cordic ( data_8 beta, data_2 *th ) {

#define ANGLES_POS_LENGTH 60
#define ANGLES_NEG_LENGTH 11
#define NEG_ITERATIONS 3
#define POS_ITERATIONS 5

	data_2 angles_neg[ANGLES_NEG_LENGTH] = {
	    0.9730,
	    1.3540,
	    1.7170};
	data_2 angles_pos[ANGLES_POS_LENGTH] = {
		0.5493,
		0.2554,
		0.1257,
		0.0626,
		0.0313};

    data_4 ch, sh, ch2, sh2;
    data_2 poweroftwo;
    short  j;
    ch = 1;
    sh = 0;
    poweroftwo = 0.0625;

    for ( j = NEG_ITERATIONS-1; j >= 0; j-- ) {

		if ( beta < 0.0 ) {
	        ch2 =          			ch + (poweroftwo -1) * sh;
	        sh2 = (poweroftwo -1) * ch + 		           sh;
	        beta += angles_neg[j];
		}
        else {
	        ch2 =          			 ch + (1 - poweroftwo) * sh;
	        sh2 = (1 - poweroftwo) * ch + 		             sh;
	        beta -= angles_neg[j];
        }
        ch = ch2;
        sh = sh2;
		poweroftwo = poweroftwo * 2;
	}

	for ( j = 0; j <= POS_ITERATIONS-1; j++ ) {    //  Iterations

		if ( beta < 0.0 ) {
	        ch2 =      			ch - poweroftwo * sh;
	        sh2 = -poweroftwo * ch +   		      sh;
	        beta += angles_pos[j];
		}
        else {
	        ch2 =          	   ch + poweroftwo * sh;
	        sh2 = poweroftwo * ch + 		     sh;
	        beta -= angles_pos[j];
        }
        ch = ch2;
        sh = sh2;

        if( j == 4 || j == 13 || j == 40) {

    		if ( beta < 0.0 ) {
    	        ch2 =      			ch - poweroftwo * sh;
    	        sh2 = -poweroftwo * ch +   		      sh;
    	        beta += angles_pos[j];
    		}
            else {
    	        ch2 =          	   ch + poweroftwo * sh;
    	        sh2 = poweroftwo * ch + 		     sh;
    	        beta -= angles_pos[j];
            }
            ch = ch2;
            sh = sh2;
        }
        poweroftwo = poweroftwo / 2;
    }

	*th = sh/ch;

    return;

#undef ANGLES_POS_LENGTH
#undef ANGLES_NEG_LENGTH
#undef NEG_ITERATIONS
#undef POS_ITERATIONS
}
