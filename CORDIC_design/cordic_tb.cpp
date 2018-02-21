//
// Created by aurel on 10/02/2018.
//
#include <iostream>
#include <cmath>
#include <fstream>
#include <cstdlib>

using namespace std;

#include "cordic.h"

int main () {

    const int  	SAMPLES=13;
    double 		a, c, s, t;
    int 		j;

    ofstream fpout("out.dat");
    ifstream fpin("in.gold.dat");

    for (j=1;j<=SAMPLES;j++) {

    	fpin >> a;
        //cout << "angle = " << a << "\n";

        coshsinh_cordic ( a, 2, 10, &c, &s ); //m equals 2
        t = s/c;

        // Save the results.
        fpout << t << "\n";
        //cout << t << " " << tanh(a) << "\n";
    }

    fpin.close();
    fpout.close();

    printf ("Comparing against output data \n");
    if (system("diff -w out.dat out.gold.dat")) {

        fprintf(stdout, "*******************************************\n");
        fprintf(stdout, "FAIL: Output DOES NOT match the golden output\n");
        fprintf(stdout, "*******************************************\n");
        return 0;
    } else {
        fprintf(stdout, "*******************************************\n");
        fprintf(stdout, "PASS: The output matches the golden output!\n");
        fprintf(stdout, "*******************************************\n");
        return 0;
    }
}
