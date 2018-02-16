#ifndef CLASSIFIER_H_
#define CLASSIFIER_H_
#define NSV	1050
#define N 16
#define SAMPLES 2000
#define IT 20

int classifier (
  double a[NSV],
  double label,
  double sv[NSV][N],
  double x[N],
  double b
  );

#endif
