#include "dot_p.h"

#include <iostream>
//int iteration=1;
void dot_p (
  double *product,
  double y[N],
  double x[N]
  ) {

  double sum;
  int i;

  sum=0;
  for (i=0;i<=N-1;i++) {

    sum+=y[i]*x[i];
  }
  *product=sum;
//printf("%d: sv[0] = %f, x[0] = %f Sum = %f\n", iteration, y[0], x[0], sum); //for debugging purposes
//iteration++;
}
