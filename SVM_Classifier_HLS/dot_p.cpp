#include "dot_p.h"

typedef ap_fixed<32,8> data_8;
typedef ap_fixed<16,4> data_4;

void dot_p (
  data_8 *product,
  data_4 y[N],
  data_4 x[N]
  ) {

  data_8 sum;
  short i;

  sum=0.0;
  for (i = 0; i <= N-1; i++) {
    sum+=y[i]*x[i];
  }
  *product=sum;
}
