#include "classifier.h"
#include "cordic.h"
#include "dot_p.h"

typedef ap_fixed<32,10> data_10;
typedef ap_fixed<32,8> data_8;
typedef ap_fixed<16,5> data_5;
typedef ap_fixed<16,4> data_4;
typedef ap_fixed<16,2> data_2;

bool classifier (
    data_5 a[NSV],
    data_4 sv[NSV][N],
    data_4 x[N],
    data_10 b
    )
{
	data_8 dp;
	data_2 th;
    data_10 sum = 0.0;
    short i;

    for ( i = 0 ; i < NSV ; i++) {
        dot_p(&dp, sv[i], x);
        coshsinh_cordic(2*dp, &th);
        sum += a[i] * th;
    }

    return ((sum+b)<0);   //less or great than???
}
