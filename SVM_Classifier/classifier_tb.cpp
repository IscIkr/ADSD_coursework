#include <stdio.h>
#include <math.h>
#include "classifier.h"
#include "dot_p.h"
#include "cordic.h"
#include "alpha.h"
#include "SV.h"
#include "testData.h"
#include <iostream>
#include <string.h>

int main () {

    int     i, j, flag=0, flag_cmp = 0;             //flag used to compare to the results
//int     test_ones = 0, out_ones=0;
    double  x[N], sv[NSV][N];
    int     out[SAMPLES];
    double testDataLabel_used;

    for (i=0;i<NSV;i++) {             //break SVs array into NSV*N matrix
        for (j=0;j<N;j++) {
            sv[i][j]=SVs[i*N+j];
        }
    }

FILE    *fpout; //debugging
fpout=fopen("out.h","w"); //debugging

    for (i=0;i<SAMPLES;i++) {
        memcpy(x, testData+i*N, N*sizeof(double));
//for (j=0;j<N;j++) printf("%d: x[%d] = %f\n", i*N + j, j, x[j]); //debugging: check if x is ok
        if (testDataLabel[i] == 0){
            testDataLabel_used =-1;
        }else{
            testDataLabel_used = 1;
        }
        out[i] = classifier(alpha,testDataLabel_used, sv, x, bias);
fprintf(fpout,"%d\n",out[i]); //debugging: check output (1/0)
        if (out[i] == -1) flag++;
        if (out[i] == testDataLabel_used) flag_cmp++;
//if (testDataLabel[i] == 1) test_ones++;
//if (out[i] == 1) out_ones++;
    }
    double precision =100 *( (double) flag / (double) SAMPLES); //just to see how many times the algo detects a "E"
    double diff_label_res = 100 * ( (double) flag_cmp / (double) SAMPLES);
//printf("Given tanh:\n");
//printf("CORDIC tanh:\n");
//printf("#Test_Ones = %d. Percentage = %.5f\%\n\n", test_ones, 100*(double)test_ones/SAMPLES);
//printf("#Out_Ones = %d. Percentage = %.5f\%\n\n", out_ones, 100*(double)out_ones/SAMPLES);

    printf ("Determining the bad decision ratio \n");
    printf("value: %f \n",precision);
    printf ("Comparing f(x) and the labels \n");
    printf("value: %f",diff_label_res);
    /*
    if (flag!=0) {
        fprintf(stdout, "*********************************************\n");
        fprintf(stdout, "FAIL: Output DOES NOT match the golden output\n");
        fprintf(stdout, "*********************************************\n");
        return 1;
    } else {
        fprintf(stdout, "*******************************************\n");
        fprintf(stdout, "PASS: The output matches the golden output!\n");
        fprintf(stdout, "*******************************************\n");
        return 0;
    }*/
}
