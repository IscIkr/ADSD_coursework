#pragma line 1 "cordic.cpp"
#pragma line 1 "cordic.cpp" 1
#pragma line 1 "<built-in>" 1
#pragma line 1 "<built-in>" 3
#pragma line 152 "<built-in>" 3
#pragma line 1 "<command line>" 1
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma line 1 "C:/Xilinx/Vivado_HLS/2016.2/common/technology/autopilot\\etc/autopilot_ssdm_op.h" 1
/* autopilot_ssdm_op.h*/
/*
#-  (c) Copyright 2011-2016 Xilinx, Inc. All rights reserved.
#-
#-  This file contains confidential and proprietary information
#-  of Xilinx, Inc. and is protected under U.S. and
#-  international copyright and other intellectual property
#-  laws.
#-
#-  DISCLAIMER
#-  This disclaimer is not a license and does not grant any
#-  rights to the materials distributed herewith. Except as
#-  otherwise provided in a valid license issued to you by
#-  Xilinx, and to the maximum extent permitted by applicable
#-  law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
#-  WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
#-  AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
#-  BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
#-  INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
#-  (2) Xilinx shall not be liable (whether in contract or tort,
#-  including negligence, or under any other theory of
#-  liability) for any loss or damage of any kind or nature
#-  related to, arising under or in connection with these
#-  materials, including for any direct, or any indirect,
#-  special, incidental, or consequential loss or damage
#-  (including loss of data, profits, goodwill, or any type of
#-  loss or damage suffered as a result of any action brought
#-  by a third party) even if such damage or loss was
#-  reasonably foreseeable or Xilinx had been advised of the
#-  possibility of the same.
#-
#-  CRITICAL APPLICATIONS
#-  Xilinx products are not designed or intended to be fail-
#-  safe, or for use in any application requiring fail-safe
#-  performance, such as life-support or safety devices or
#-  systems, Class III medical devices, nuclear facilities,
#-  applications related to the deployment of airbags, or any
#-  other applications that could lead to death, personal
#-  injury, or severe property or environmental damage
#-  (individually and collectively, "Critical
#-  Applications"). Customer assumes the sole risk and
#-  liability of any use of Xilinx products in Critical
#-  Applications, subject only to applicable laws and
#-  regulations governing limitations on product liability.
#-
#-  THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
#-  PART OF THIS FILE AT ALL TIMES. 
#- ************************************************************************
#pragma empty_line
 *
 * $Id$
 */
#pragma line 145 "C:/Xilinx/Vivado_HLS/2016.2/common/technology/autopilot\\etc/autopilot_ssdm_op.h"
/*#define AP_SPEC_ATTR __attribute__ ((pure))*/
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern "C" {
#pragma empty_line
    /****** SSDM Intrinsics: OPERATIONS ***/
    // Interface operations
#pragma empty_line
    //typedef unsigned int __attribute__ ((bitwidth(1))) _uint1_;
    typedef bool _uint1_;
#pragma empty_line
    void _ssdm_op_IfRead(...) __attribute__ ((nothrow));
    void _ssdm_op_IfWrite(...) __attribute__ ((nothrow));
    _uint1_ _ssdm_op_IfNbRead(...) __attribute__ ((nothrow));
    _uint1_ _ssdm_op_IfNbWrite(...) __attribute__ ((nothrow));
    _uint1_ _ssdm_op_IfCanRead(...) __attribute__ ((nothrow));
    _uint1_ _ssdm_op_IfCanWrite(...) __attribute__ ((nothrow));
#pragma empty_line
    // Stream Intrinsics
    void _ssdm_StreamRead(...) __attribute__ ((nothrow));
    void _ssdm_StreamWrite(...) __attribute__ ((nothrow));
    _uint1_ _ssdm_StreamNbRead(...) __attribute__ ((nothrow));
    _uint1_ _ssdm_StreamNbWrite(...) __attribute__ ((nothrow));
    _uint1_ _ssdm_StreamCanRead(...) __attribute__ ((nothrow));
    _uint1_ _ssdm_StreamCanWrite(...) __attribute__ ((nothrow));
    unsigned _ssdm_StreamSize(...) __attribute__ ((nothrow));
#pragma empty_line
    // Misc
    void _ssdm_op_MemShiftRead(...) __attribute__ ((nothrow));
#pragma empty_line
    void _ssdm_op_Wait(...) __attribute__ ((nothrow));
    void _ssdm_op_Poll(...) __attribute__ ((nothrow));
#pragma empty_line
    void _ssdm_op_Return(...) __attribute__ ((nothrow));
#pragma empty_line
    /* SSDM Intrinsics: SPECIFICATIONS */
    void _ssdm_op_SpecSynModule(...) __attribute__ ((nothrow));
    void _ssdm_op_SpecTopModule(...) __attribute__ ((nothrow));
    void _ssdm_op_SpecProcessDecl(...) __attribute__ ((nothrow));
    void _ssdm_op_SpecProcessDef(...) __attribute__ ((nothrow));
    void _ssdm_op_SpecPort(...) __attribute__ ((nothrow));
    void _ssdm_op_SpecConnection(...) __attribute__ ((nothrow));
    void _ssdm_op_SpecChannel(...) __attribute__ ((nothrow));
    void _ssdm_op_SpecSensitive(...) __attribute__ ((nothrow));
    void _ssdm_op_SpecModuleInst(...) __attribute__ ((nothrow));
    void _ssdm_op_SpecPortMap(...) __attribute__ ((nothrow));
#pragma empty_line
    void _ssdm_op_SpecReset(...) __attribute__ ((nothrow));
#pragma empty_line
    void _ssdm_op_SpecPlatform(...) __attribute__ ((nothrow));
    void _ssdm_op_SpecClockDomain(...) __attribute__ ((nothrow));
    void _ssdm_op_SpecPowerDomain(...) __attribute__ ((nothrow));
#pragma empty_line
    int _ssdm_op_SpecRegionBegin(...) __attribute__ ((nothrow));
    int _ssdm_op_SpecRegionEnd(...) __attribute__ ((nothrow));
#pragma empty_line
    void _ssdm_op_SpecLoopName(...) __attribute__ ((nothrow));
#pragma empty_line
    void _ssdm_op_SpecLoopTripCount(...) __attribute__ ((nothrow));
#pragma empty_line
    int _ssdm_op_SpecStateBegin(...) __attribute__ ((nothrow));
    int _ssdm_op_SpecStateEnd(...) __attribute__ ((nothrow));
#pragma empty_line
    void _ssdm_op_SpecInterface(...) __attribute__ ((nothrow));
#pragma empty_line
    void _ssdm_op_SpecPipeline(...) __attribute__ ((nothrow));
    void _ssdm_op_SpecDataflowPipeline(...) __attribute__ ((nothrow));
#pragma empty_line
#pragma empty_line
    void _ssdm_op_SpecLatency(...) __attribute__ ((nothrow));
    void _ssdm_op_SpecParallel(...) __attribute__ ((nothrow));
    void _ssdm_op_SpecProtocol(...) __attribute__ ((nothrow));
    void _ssdm_op_SpecOccurrence(...) __attribute__ ((nothrow));
#pragma empty_line
    void _ssdm_op_SpecResource(...) __attribute__ ((nothrow));
    void _ssdm_op_SpecResourceLimit(...) __attribute__ ((nothrow));
    void _ssdm_op_SpecCHCore(...) __attribute__ ((nothrow));
    void _ssdm_op_SpecFUCore(...) __attribute__ ((nothrow));
    void _ssdm_op_SpecIFCore(...) __attribute__ ((nothrow));
    void _ssdm_op_SpecIPCore(...) __attribute__ ((nothrow));
    void _ssdm_op_SpecKeepValue(...) __attribute__ ((nothrow));
    void _ssdm_op_SpecMemCore(...) __attribute__ ((nothrow));
#pragma empty_line
    void _ssdm_op_SpecExt(...) __attribute__ ((nothrow));
    /*void* _ssdm_op_SpecProcess(...) SSDM_SPEC_ATTR;
    void* _ssdm_op_SpecEdge(...) SSDM_SPEC_ATTR; */
#pragma empty_line
    /* Presynthesis directive functions */
    void _ssdm_SpecArrayDimSize(...) __attribute__ ((nothrow));
#pragma empty_line
    void _ssdm_RegionBegin(...) __attribute__ ((nothrow));
    void _ssdm_RegionEnd(...) __attribute__ ((nothrow));
#pragma empty_line
    void _ssdm_Unroll(...) __attribute__ ((nothrow));
    void _ssdm_UnrollRegion(...) __attribute__ ((nothrow));
#pragma empty_line
    void _ssdm_InlineAll(...) __attribute__ ((nothrow));
    void _ssdm_InlineLoop(...) __attribute__ ((nothrow));
    void _ssdm_Inline(...) __attribute__ ((nothrow));
    void _ssdm_InlineSelf(...) __attribute__ ((nothrow));
    void _ssdm_InlineRegion(...) __attribute__ ((nothrow));
#pragma empty_line
    void _ssdm_SpecArrayMap(...) __attribute__ ((nothrow));
    void _ssdm_SpecArrayPartition(...) __attribute__ ((nothrow));
    void _ssdm_SpecArrayReshape(...) __attribute__ ((nothrow));
#pragma empty_line
    void _ssdm_SpecStream(...) __attribute__ ((nothrow));
#pragma empty_line
    void _ssdm_SpecExpr(...) __attribute__ ((nothrow));
    void _ssdm_SpecExprBalance(...) __attribute__ ((nothrow));
#pragma empty_line
    void _ssdm_SpecDependence(...) __attribute__ ((nothrow));
#pragma empty_line
    void _ssdm_SpecLoopMerge(...) __attribute__ ((nothrow));
    void _ssdm_SpecLoopFlatten(...) __attribute__ ((nothrow));
    void _ssdm_SpecLoopRewind(...) __attribute__ ((nothrow));
#pragma empty_line
    void _ssdm_SpecFuncInstantiation(...) __attribute__ ((nothrow));
    void _ssdm_SpecFuncBuffer(...) __attribute__ ((nothrow));
    void _ssdm_SpecFuncExtract(...) __attribute__ ((nothrow));
    void _ssdm_SpecConstant(...) __attribute__ ((nothrow));
#pragma empty_line
    void _ssdm_DataPack(...) __attribute__ ((nothrow));
    void _ssdm_SpecDataPack(...) __attribute__ ((nothrow));
#pragma empty_line
    void _ssdm_op_SpecBitsMap(...) __attribute__ ((nothrow));
    void _ssdm_op_SpecLicense(...) __attribute__ ((nothrow));
#pragma empty_line
    void __xilinx_ip_top(...) __attribute__ ((nothrow));
#pragma empty_line
#pragma empty_line
}
#pragma line 407 "C:/Xilinx/Vivado_HLS/2016.2/common/technology/autopilot\\etc/autopilot_ssdm_op.h"
/*#define _ssdm_op_WaitUntil(X) while (!(X)) _ssdm_op_Wait(1);
#define _ssdm_op_Delayed(X) X */
#pragma line 421 "C:/Xilinx/Vivado_HLS/2016.2/common/technology/autopilot\\etc/autopilot_ssdm_op.h"
// XSIP watermark, do not delete 67d7842dbbe25473c3c32b93c0da8047785f30d78e8a024de1b57352245f9689
#pragma line 7 "<command line>" 2
#pragma line 1 "<built-in>" 2
#pragma line 1 "cordic.cpp" 2
#pragma line 1 "./cordic.h" 1
//
// Created by aurel on 10/02/2018.
//
#pragma empty_line
#pragma empty_line
#pragma empty_line
void coshsinh_cordic ( double beta, int m, int n, double *c, double *s );
#pragma line 2 "cordic.cpp" 2
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
//  double pi = 3.141592653589793;
//  double theta;
//  double kn = 1.20513; //vectors' length product in the hyperbolic case
#pragma empty_line
//  theta = angle_shift ( beta, -pi );    //Shift angle to interval [-pi,pi]. No need for our tests
#pragma empty_line
//  Shift angle to interval [-pi/3,pi/3] degrees and account for signs.
//  because it is the limit of our approximation for now
#pragma empty_line
//    if ( beta < -pi ) {
//        *ch = 1;        //of course it is not the case in reality but just
//        *sh = -*ch;     //concerning our 1% precision if above pi then tanh() = 1
//        return;
//    }
//    else if ( pi < beta ) {
//        *ch = 1;
//        *sh = *ch;
//        return;
//    }
#pragma empty_line
    if ( beta < 0 ) sign_factor = -1.0;
    else sign_factor = 1.0;
#pragma empty_line
    *ch = 1; //Initialize loop variables:
    *sh = 0; //https://fr.wikipedia.org/wiki/CORDIC
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
        beta = beta - sigma * angle; //Update the remaining angle.
  poweroftwo = poweroftwo * 2.0;
 }
#pragma empty_line
 angle = angles_pos[0];
#pragma empty_line
 for ( j = 1; j <= n; j++ ) { //  Iterations
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
        beta = beta - sigma * angle; //Update the remaining angle.
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
            beta = beta - sigma * angle; //Update the remaining angle.
        }
#pragma empty_line
        poweroftwo = poweroftwo / 2.0;
#pragma empty_line
        if ( 60 < j + 1 ) angle = angle / 2.0; //Update the angle from table,
        else angle = angles_pos[j]; //or eventually by dividing by two.
    }
#pragma empty_line
//    if ( 0 < n ) {
//        *ch = *ch * kn;   //Adjust length of output vector to be [cos(beta), sin(beta)]
//        *sh = *sh * kn;
//    }
#pragma empty_line
    *ch = sign_factor * *ch; //Adjust for possible sign change because
    *sh = sign_factor * *sh; //angle was originally not in quadrant 1 or 4.
#pragma empty_line
    return;
#pragma empty_line
#pragma empty_line
}
#pragma empty_line
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
#pragma empty_line
#pragma empty_line
//****************************************************************************80
