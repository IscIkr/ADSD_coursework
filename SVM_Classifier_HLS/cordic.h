//
// Created by aurel on 10/02/2018.
//
#ifndef CORDIC_CORDIC_H
#define CORDIC_CORDIC_H
#include <ap_fixed.h>

typedef ap_fixed<32,8> data_8;
typedef ap_fixed<16,2> data_2;

void coshsinh_cordic ( data_8 beta, data_2 *th );

#endif
