#ifndef CLASSIFIER_H_
#define CLASSIFIER_H_
#define NSV	1050
#define N 16

#include <ap_fixed.h>

typedef ap_fixed<32,10> data_10;
typedef ap_fixed<16,5> data_5;
typedef ap_fixed<16,4> data_4;

bool classifier (
  data_5 a[NSV],
  data_4 sv[NSV][N],
  data_4 x[N],
  data_10 b
  );

#endif
