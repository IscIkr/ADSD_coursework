//
// Created by aurel on 10/02/2018.
//
# include <cstdlib>
# include <iostream>
# include <iomanip>
# include <cmath>
#include <stdio.h>

using namespace std;

# include "cordic_t.h"

int main ( );

void test001 ( );
void test002 ( );
void test003 ( );
void test004 ( );
void test005 ( );
void test006 ( );
void test007 ( );
void test008 ( );
void test009 ( );
void test010 ( );

//****************************************************************************80

int main ( )

//****************************************************************************80
//
//  Purpose:
//
//    MAIN is the main program for CORDIC_PRB.
//
//  Discussion:
//
//    CORDIC_PRB tests the CORDIC library.
//
//  Licensing:
//
//    This code is distributed under the GNU LGPL license.
//
//  Modified:
//
//    23 June 2007
//
//  Author:
//
//    John Burkardt
//
{
    cout << "\n";
    cout << "CORDIC_PRB:\n";
    cout << "  C++ version,\n";
    cout << "  Test the CORDIC library.\n";

    test001 ( );
    /*test002 ( );
    test003 ( );
    test004 ( );
    test005 ( );
    test006 ( );
    test007 ( );
    test008 ( );
    test009 ( );
    test010 ( );*/
//
//  Terminate.
//
    cout << "\n";
    cout << "CORDIC_PRB:\n";
    cout << "  Normal end of execution.\n";
    cout << "\n";

    return 0;
}
//****************************************************************************80

void test001 ( )

//****************************************************************************80
//
//  Purpose:
//
//    TEST001 demonstrates the use of COSSIN_CORDIC.
//
//  Licensing:
//
//    This code is distributed under the GNU LGPL license.
//
//  Modified:
//
//    14 June 2007
//
//  Author:
//
//    John Burkardt
//
{
    FILE         *fpout;
    FILE		   *fpin;
    const int    SAMPLES=13;
    double a;
    double c2;
    double s2;
    double t2;
    int j;

    fpout=fopen("out.dat","w");
    fpin=fopen("in.dat","r");

    cout << "\n";
    cout << "TEST001:\n";
    cout << "  COSSIN_CORDIC computes the tanh\n";
    cout << "  using the CORDIC algorithm.\n";
    cout << "\n";


    for (j=1;j<=SAMPLES;j++)
    {
        fscanf(fpin, "%d", &a);

        fprintf(stdout,"%d \n",a);
        coshsinh_cordic ( a, 2, 10, &c2, &s2 ); //m equals 2

        t2 = s2/c2;
        fprintf(stdout,"%d \n",t2);

        // Save the results.
        fprintf(fpout,"%d\n",t2);


    }

    fclose(fpin);
    fclose(fpout);

    printf ("Comparing against output data \n");
    if (system("diff -w out.dat out.gold.dat")) {

        fprintf(stdout, "*******************************************\n");
        fprintf(stdout, "FAIL: Output DOES NOT match the golden output\n");
        fprintf(stdout, "*******************************************\n");
        return;
    } else {
        fprintf(stdout, "*******************************************\n");
        fprintf(stdout, "PASS: The output matches the golden output!\n");
        fprintf(stdout, "*******************************************\n");
        return;
    }
}
