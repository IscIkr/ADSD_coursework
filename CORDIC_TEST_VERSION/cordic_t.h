//
// Created by aurel on 10/02/2018.
//
#ifndef CORDIC_CORDIC_H
#define CORDIC_CORDIC_H

void coshsinh_cordic ( double beta, int m, int n, double *c, double *s );
void tanh_values ( int *n_data, double *x, double *fx );
#endif