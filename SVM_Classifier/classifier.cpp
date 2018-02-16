#include "classifier.h"
#include "cordic.h"
#include "dot_p.h"
#include <math.h>

#include <iostream>
//int iteration = 0;
int classifier (
    double a[NSV],
    double label,
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
        coshsinh_cordic(2*dp, 20, &cosh, &sinh);
        //tanh_res = sinh/cosh;
        tanh_res = tanh(dp);
        sum += label * a[i] * tanh_res; //must take into account the label (see subject) because otherwise we won't know if the vector is a E or not
                                        // the idea is to send values we know in order to see if the algorithm gives a good output. However, I am not
                                        // conviced by that because the classifier should be able to tell us the result without indications. It would
                                        // have been great if there were 1050 labels so that we know they belong to the SVs and not the input.
//printf("SV = %d. Tanh = %f. Sum = %f\n", i+1, tanh_res, sum); //for debugging purposes
    }
    f = sum + b;
//printf("Sum = %f\n", f);
    if (f<0){
        return (-1);//because we need the sign
    }
    return (1);   //less or great than???
}
