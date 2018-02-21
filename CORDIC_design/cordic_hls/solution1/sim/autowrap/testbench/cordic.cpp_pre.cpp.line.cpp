#pragma line 1 "C:/Users/Stavros/Imperial/2ndTerm/ADSD/Part2/git_files/CORDIC_design/cordic.cpp"
#pragma line 1 "<built-in>"
#pragma line 1 "<command-line>"
#pragma line 1 "C:/Users/Stavros/Imperial/2ndTerm/ADSD/Part2/git_files/CORDIC_design/cordic.cpp"
#pragma line 1 "C:/Users/Stavros/Imperial/2ndTerm/ADSD/Part2/git_files/CORDIC_design/cordic.h" 1
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
void coshsinh_cordic ( double beta, int m, int n, double *c, double *s );
#pragma line 2 "C:/Users/Stavros/Imperial/2ndTerm/ADSD/Part2/git_files/CORDIC_design/cordic.cpp" 2
#pragma empty_line
void coshsinh_cordic ( double beta, int m, int n, double *ch, double *sh ) {
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
 double angles_neg[11] = {
     0.9730,
     1.3540,
     1.7170,
     2.0716,
     2.4221,
     2.7706,
     3.1182,
     3.4652,
     3.8121,
     4.1588,
     4.5054};
    double angles_pos[60] = {
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
    int j;
#pragma line 102 "C:/Users/Stavros/Imperial/2ndTerm/ADSD/Part2/git_files/CORDIC_design/cordic.cpp"
    if ( beta < 0 ) sign_factor = -1.0;
    else sign_factor = 1.0;
#pragma empty_line
    *ch = 1;
    *sh = 0;
#pragma empty_line
    poweroftwo = 0.0625;
#pragma empty_line
    for ( j = -m; j <= 0; j++ ) {
#pragma empty_line
  angle = angles_neg[-j];
#pragma empty_line
  if ( beta < 0.0 ) sigma = -1.0;
        else sigma = 1.0;
#pragma empty_line
        factor = sigma * (1 - poweroftwo);
#pragma empty_line
        c2 = *ch + factor * *sh;
        s2 = factor * *ch + *sh;
#pragma empty_line
        *ch = c2;
        *sh = s2;
#pragma empty_line
        beta = beta - sigma * angle;
  poweroftwo = poweroftwo * 2.0;
 }
#pragma empty_line
 angle = angles_pos[0];
#pragma empty_line
 for ( j = 1; j <= n; j++ ) {
#pragma empty_line
        if ( beta < 0.0 ) sigma = -1.0;
        else sigma = 1.0;
#pragma empty_line
        factor = sigma * poweroftwo;
#pragma empty_line
        c2 = *ch + factor * *sh;
        s2 = factor * *ch + *sh;
#pragma empty_line
        *ch = c2;
        *sh = s2;
#pragma empty_line
        beta = beta - sigma * angle;
#pragma empty_line
        if( j == 4 || j == 13 || j == 40) {
#pragma empty_line
            if ( beta < 0.0 ) sigma = -1.0;
            else sigma = 1.0;
#pragma empty_line
            factor = sigma * poweroftwo;
#pragma empty_line
            c2 = *ch + factor * *sh;
            s2 = factor * *ch + *sh;
#pragma empty_line
            *ch = c2;
            *sh = s2;
#pragma empty_line
            beta = beta - sigma * angle;
        }
#pragma empty_line
        poweroftwo = poweroftwo / 2.0;
#pragma empty_line
        if ( 60 < j + 1 ) angle = angle / 2.0;
        else angle = angles_pos[j];
    }
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
    *ch = sign_factor * *ch;
    *sh = sign_factor * *sh;
#pragma empty_line
    return;
#pragma empty_line
#pragma empty_line
}
