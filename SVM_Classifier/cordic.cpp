//
// Created by aurel on 10/02/2018.
//
# include <cstdlib>
# include <iostream>
# include <iomanip>
# include <cmath>
# include <ctime>

using namespace std;

# include "cordic.h"

void coshsinh_cordic ( double beta, int n, double *ch, double *sh ) {

# define ANGLES_LENGTH 60

    double angles[ANGLES_LENGTH] = {
            0.5493,
            0.2554,
            0.1257,
            0.0626,
            0.0313,
            0.156,
            0.0078,
            0.0039,
            0.0020,
            9.7656e-04,
            4.8828e-04,
            2.4414e-04,
            1.2207e-04,
            6.1035e-05,
            3.0518e-05,
            1.5259e-05,
            7.6294e-06,
            3.8147e-06,
            1.9073e-06,
            9.5367e-07,
            4.7684e-07,
            2.3842e-07,
            1.1921e-07,
            5.9605e-08,
            2.9802e-08,
            1.4901e-08,
            7.4506e-09,
            3.7253e-09,
            1.8626e-09,
            9.3132e-10,
            4.6566e-10,
            2.3283e-10,
            1.1642e-10,
            5.8208e-11,
            2.9104e-11,
            1.4552e-11,
            7.2760e-12,
            3.6380e-12,
            1.8190e-12,
            9.0949e-13,
            4.5475e-13,
            2.2737e-13,
            1.1369e-13,
            5.6843e-14,
            2.8422e-14,
            1.4211e-14,
            7.1054e-15,
            3.5527e-15,
            1.7764e-15,
            8.8818e-16,
            4.4409e-16,
            2.2204e-16,
            1.1102e-16,
            5.5511e-17,
            2.7756e-17,
            1.3878e-17,
            6.9389e-18,
            3.4694e-18,
            1.7347e-18};
    double angle, c2, s2, factor, poweroftwo, sigma, sign_factor;
    int    j;
    double pi = 3.141592653589793;
//  double theta;
//  double kn = 1.20513; //vectors' length product in the hyperbolic case

//  theta = angle_shift ( beta, -pi );    //Shift angle to interval [-pi,pi]. No need for our tests

//  Shift angle to interval [-pi/3,pi/3] degrees and account for signs.
//  because it is the limit of our approximation for now

    if ( beta < -pi ) {
        *ch = 1;        //of course it is not the case in reality but just
        *sh = -*ch;     //concerning our 1% precision if above pi then tanh() = 1
        return;
    }
    else if ( pi < beta ) {
        *ch = 1;
        *sh = *ch;
        return;
    }

    if ( beta < 0 ) sign_factor = -1.0;
    else            sign_factor =  1.0;

    *ch = 1;    //Initialize loop variables:
    *sh = 0;    //https://fr.wikipedia.org/wiki/CORDIC

    poweroftwo = 0.5;
    angle = angles[0];

    for ( j = 1; j <= n; j++ ) {    //  Iterations

        if ( beta < 0.0 ) sigma = -1.0;
        else              sigma =  1.0;

        factor = sigma * poweroftwo;

        c2 =          *ch + factor * *sh;
        s2 = factor * *ch +          *sh;

        *ch = c2;
        *sh = s2;

        beta = beta - sigma * angle;    //Update the remaining angle.

        if( j == 4 || j == 13 || j == 40) {

            if ( beta < 0.0 ) sigma = -1.0;
            else              sigma =  1.0;

            factor = sigma * poweroftwo;

            c2 =          *ch + factor * *sh;
            s2 = factor * *ch +          *sh;

            *ch = c2;
            *sh = s2;

            beta = beta - sigma * angle;    //Update the remaining angle.
        }

        poweroftwo = poweroftwo / 2.0;

        if ( ANGLES_LENGTH < j + 1 ) angle = angle / 2.0;   //Update the angle from table,
        else                         angle = angles[j];     //or eventually by dividing by two.
    }

//    if ( 0 < n ) {
//        *ch = *ch * kn;   //Adjust length of output vector to be [cos(beta), sin(beta)]
//        *sh = *sh * kn;
//    }

    *ch = sign_factor * *ch;    //Adjust for possible sign change because
    *sh = sign_factor * *sh;    //angle was originally not in quadrant 1 or 4.

    return;
# undef ANGLES_LENGTH
}

//****************************************************************************80
//
//  Purpose:
//
//    COSSIN_CORDIC returns the sinh and cosineh of an angle by the CORDIC method.
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
//    Based on MATLAB code in a Wikipedia article.
//    C++ version by John Burkardt
//
//  Parameters:
//
//    Input, double BETA, the angle (in radians).
//
//    Input, int N, the number of iterations to take.
//    A value of 10 is low.  Good accuracy is achieved with 20 or more
//    iterations.
//
//    Output, double *C, *S, the cosine and sine of the angle.
//
//  Local Parameters:
//
//    Local, double ANGLES(60) = arctan ( (1/2)^(0:59) );
//
//    Local, double KPROD(33).  KPROD(j) = product ( 0 <= i <= j ) K(i)
//    where K(i) = 1 / sqrt ( 1 + (1/2)^(2i) ).
//
