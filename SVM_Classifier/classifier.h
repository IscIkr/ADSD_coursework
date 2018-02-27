#ifndef CLASSIFIER_H_
#define CLASSIFIER_H_
#define NSV	1050
#define N 16
#define IT 20


int classifier (
  double a[NSV],
  double sv[NSV][N],
  double x[N],
  double b,
  double *maxDP, double *minDP,
  double *maxCH, double *minCH,
  double *maxSH, double *minSH,
  double *maxTH, double *minTH,
  double *maxSum, double *minSum,
  double *maxF, double *minF
  );

#endif
