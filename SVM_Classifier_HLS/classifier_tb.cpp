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

    short   i, j, error = 0;  //flag used to compare to the results
    data_4  x[N], sv[NSV][N];
    bool    out[SAMPLES];

    for (i=0;i<NSV;i++) {   //break SVs array into NSV*N matrix
        for (j=0;j<N;j++) {
            sv[i][j]=SVs[i*N+j];
        }
    }

    FILE    *fpout; //debugging
    fpout=fopen("out.dat","w"); //debugging

    for (i=0;i<SAMPLES;i++) {
        memcpy(x, testData+i*N, N*sizeof(data_4));
        out[i] = classifier(alpha, sv, x, bias);
        fprintf(fpout,"%d\n",out[i]); //debugging: check output (1/0)
        if (out[i] != testDataLabel[i]) error++;
    }

    fclose(fpout);
    fprintf(stdout, "Comparing result against golden output\n\n");
    if (system("diff -w out.dat out.gold.dat")) fprintf(stdout, "CORDIC and TANH output files do not match!\n\n");
    else                                    	fprintf(stdout, "CORDIC and TANH output files are identical!\n\n");
    fprintf(stdout, "**************************************\n");
    fprintf(stdout, "The classification error rate is %.2f%%\n", 100*(double)error/SAMPLES);
    fprintf(stdout, "**************************************\n");

    return 0;
}
