#include "classifier.h"
#include "cordic.h"
#include "dot_p.h"
#include <math.h>
#define POS_ITERATIONS 10
#define NEG_ITERATIONS 2   //max value 10

#include <iostream>
//int iteration = 0;
int classifier (
    double a[NSV],
    double sv[NSV][N],
    double x[N],
    double b
    )
{
    double f, dp, cosh, sinh, tanh_res;
    double sum = 0;
    int i;
//for (i=0;i<N;i++) printf("%d: x[%d] = %f\n", iteration*N+i+1, i, x[i]); //debugging: check if x is ok
//iteration++;
    for ( i = 0 ; i < NSV ; i++) {
        dot_p(&dp, sv[i], x);
        coshsinh_cordic(2*dp, NEG_ITERATIONS, POS_ITERATIONS, &cosh, &sinh);
        tanh_res = sinh/cosh;
        //tanh_res = tanh(2*dp);
        sum += a[i] * tanh_res;
//printf("SV = %d. Tanh = %f. Sum = %f\n", i+1, tanh_res, sum); //for debugging purposes
    }
    f = sum + b;
//printf("Sum = %f\n", f);
    return (f<0);   //less or great than???
}
