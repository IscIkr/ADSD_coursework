#ifndef DOT_P_H_
#define DOT_P_H_
#include "classifier.h"
#include <ap_fixed.h>

typedef ap_fixed<32,8> data_8;
typedef ap_fixed<16,4> data_4;

void dot_p (
  data_8 *output,
  data_4 y[N],
  data_4 x[N]
  );

#endif
