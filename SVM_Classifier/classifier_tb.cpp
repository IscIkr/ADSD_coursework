#include <stdio.h>
#include <math.h>
#include "classifier.h"
#include "dot_p.h"
#include "cordic.h"
#include "alpha.h"
#include "SV.h"
#include "testData.h"
#include <string.h>
#define SAMPLES 2000
#include <iostream>

int main () {

    int     i, j, error = 0;  //flag used to compare to the results
//int     test_ones = 0, out_ones=0;
    double  x[N], sv[NSV][N];
    int     out[SAMPLES];

    for (i=0;i<NSV;i++) {   //break SVs array into NSV*N matrix
        for (j=0;j<N;j++) {
            sv[i][j]=SVs[i*N+j];
        }
    }

//FILE    *fpout; //debugging
//fpout=fopen("out.h","w"); //debugging

    for (i=0;i<SAMPLES;i++) {
        memcpy(x, testData+i*N, N*sizeof(double));
//for (j=0;j<N;j++) printf("%d: x[%d] = %f\n", i*N + j, j, x[j]); //debugging: check if x is ok
        out[i] = classifier(alpha, sv, x, bias);
//fprintf(fpout,"%d\n",out[i]); //debugging: check output (1/0)
        if (out[i] != testDataLabel[i]) error++;
//if (testDataLabel[i] == 1) test_ones++;
//if (out[i] == 1) out_ones++;
    }
//printf("Given tanh:\n");
//printf("CORDIC tanh:\n");
//printf("#Test_Ones = %d. Percentage = %.5f\%\n\n", test_ones, 100*(double)test_ones/SAMPLES);

    fprintf(stdout, "Comparing result against golden output\n");
    fprintf(stdout, "**************************************\n");
    fprintf(stdout, "The classification error rate is %.2f%%\n", 100*(double)error/SAMPLES);
    fprintf(stdout, "**************************************\n");
    return 0;

}
