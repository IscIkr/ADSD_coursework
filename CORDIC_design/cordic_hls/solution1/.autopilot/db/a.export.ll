; ModuleID = 'C:/Users/Stavros/Imperial/2ndTerm/ADSD/Part2/git_files/CORDIC_design/cordic_hls/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@coshsinh_cordic_str = internal unnamed_addr constant [16 x i8] c"coshsinh_cordic\00"
@angles_pos = internal unnamed_addr constant [60 x double] [double 5.493000e-01, double 2.554000e-01, double 1.257000e-01, double 6.260000e-02, double 3.130000e-02, double 1.560000e-01, double 7.800000e-03, double 3.900000e-03, double 2.000000e-03, double 9.765600e-04, double 4.882800e-04, double 2.441400e-04, double 1.220700e-04, double 6.103500e-05, double 3.051800e-05, double 1.525900e-05, double 7.629400e-06, double 3.814700e-06, double 1.907300e-06, double 9.536700e-07, double 4.768400e-07, double 2.384200e-07, double 1.192100e-07, double 5.960500e-08, double 2.980200e-08, double 1.490100e-08, double 7.450600e-09, double 3.725300e-09, double 1.862600e-09, double 9.313200e-10, double 4.656600e-10, double 2.328300e-10, double 1.164200e-10, double 5.820800e-11, double 2.910400e-11, double 1.455200e-11, double 7.276000e-12, double 3.638000e-12, double 1.819000e-12, double 9.094900e-13, double 4.547500e-13, double 2.273700e-13, double 1.136900e-13, double 5.684300e-14, double 2.842200e-14, double 1.421100e-14, double 7.105400e-15, double 3.552700e-15, double 1.776400e-15, double 8.881800e-16, double 4.440900e-16, double 2.220400e-16, double 1.110200e-16, double 5.551100e-17, double 2.775600e-17, double 1.387800e-17, double 6.938900e-18, double 3.469400e-18, double 1.734700e-18, double 0.000000e+00]
@angles_neg = internal unnamed_addr constant [11 x double] [double 9.730000e-01, double 1.354000e+00, double 1.717000e+00, double 2.071600e+00, double 2.422100e+00, double 2.770600e+00, double 3.118200e+00, double 3.465200e+00, double 3.812100e+00, double 4.158800e+00, double 4.505400e+00]

declare i64 @llvm.part.select.i64(i64, i32, i32) nounwind readnone

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

define void @coshsinh_cordic(double %beta, i32 %m, i32 %n, double* %ch, double* %sh) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecBitsMap(double %beta) nounwind, !map !0
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %m) nounwind, !map !6
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %n) nounwind, !map !10
  call void (...)* @_ssdm_op_SpecBitsMap(double* %ch) nounwind, !map !14
  call void (...)* @_ssdm_op_SpecBitsMap(double* %sh) nounwind, !map !20
  call void (...)* @_ssdm_op_SpecTopModule([16 x i8]* @coshsinh_cordic_str) nounwind
  %n_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %n) nounwind
  %m_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %m) nounwind
  %beta_read = call double @_ssdm_op_Read.ap_auto.double(double %beta) nounwind
  %beta_to_int = bitcast double %beta_read to i64
  %tmp = call i11 @_ssdm_op_PartSelect.i11.i64.i32.i32(i64 %beta_to_int, i32 52, i32 62)
  %tmp_6 = trunc i64 %beta_to_int to i52
  %notlhs = icmp ne i11 %tmp, -1
  %notrhs = icmp eq i52 %tmp_6, 0
  %tmp_12 = or i1 %notrhs, %notlhs
  %tmp_16 = fcmp olt double %beta_read, 0.000000e+00
  %tmp_20 = and i1 %tmp_12, %tmp_16
  %sign_factor = select i1 %tmp_20, double -1.000000e+00, double 1.000000e+00
  %j = sub nsw i32 0, %m_read
  br label %1

; <label>:1                                       ; preds = %2, %0
  %ch_load = phi double [ 1.000000e+00, %0 ], [ %c2, %2 ]
  %tmp_2 = phi double [ 0.000000e+00, %0 ], [ %s2, %2 ]
  %poweroftwo = phi double [ 6.250000e-02, %0 ], [ %poweroftwo_2, %2 ]
  %j1 = phi i32 [ %j, %0 ], [ %j_2, %2 ]
  %p_0 = phi double [ %beta_read, %0 ], [ %beta_assign, %2 ]
  %tmp_3 = icmp slt i32 %j1, 1
  br i1 %tmp_3, label %2, label %.backedge

; <label>:2                                       ; preds = %1
  %tmp_4 = sub nsw i32 0, %j1
  %tmp_5 = sext i32 %tmp_4 to i64
  %angles_neg_addr = getelementptr inbounds [11 x double]* @angles_neg, i64 0, i64 %tmp_5
  %angle = load double* %angles_neg_addr, align 8
  %p_0_to_int = bitcast double %p_0 to i64
  %tmp_23 = call i11 @_ssdm_op_PartSelect.i11.i64.i32.i32(i64 %p_0_to_int, i32 52, i32 62)
  %tmp_24 = trunc i64 %p_0_to_int to i52
  %notlhs1 = icmp ne i11 %tmp_23, -1
  %notrhs1 = icmp eq i52 %tmp_24, 0
  %tmp_25 = or i1 %notrhs1, %notlhs1
  %tmp_26 = fcmp olt double %p_0, 0.000000e+00
  %tmp_27 = and i1 %tmp_25, %tmp_26
  %sigma = select i1 %tmp_27, double -1.000000e+00, double 1.000000e+00
  %tmp_7 = fsub double 1.000000e+00, %poweroftwo
  %factor = fmul double %sigma, %tmp_7
  %tmp_9 = fmul double %factor, %tmp_2
  %c2 = fadd double %ch_load, %tmp_9
  %tmp_s = fmul double %factor, %ch_load
  %s2 = fadd double %tmp_s, %tmp_2
  %tmp_1 = fmul double %sigma, %angle
  %beta_assign = fsub double %p_0, %tmp_1
  %poweroftwo_2 = fmul double %poweroftwo, 2.000000e+00
  %j_2 = add nsw i32 1, %j1
  br label %1

.backedge:                                        ; preds = %1, %_ifconv
  %ch_load_2 = phi double [ %c2_3, %_ifconv ], [ %ch_load, %1 ]
  %sh_load = phi double [ %s2_3, %_ifconv ], [ %tmp_2, %1 ]
  %angle1 = phi double [ %angle_3, %_ifconv ], [ 5.493000e-01, %1 ]
  %poweroftwo_1 = phi double [ %poweroftwo_3, %_ifconv ], [ %poweroftwo, %1 ]
  %j_1 = phi i32 [ %j_3, %_ifconv ], [ 1, %1 ]
  %p_1 = phi double [ %beta_assign_3, %_ifconv ], [ %p_0, %1 ]
  %tmp_8 = icmp sgt i32 %j_1, %n_read
  br i1 %tmp_8, label %3, label %_ifconv

_ifconv:                                          ; preds = %.backedge
  %p_1_to_int = bitcast double %p_1 to i64
  %tmp_28 = call i11 @_ssdm_op_PartSelect.i11.i64.i32.i32(i64 %p_1_to_int, i32 52, i32 62)
  %tmp_29 = trunc i64 %p_1_to_int to i52
  %notlhs2 = icmp ne i11 %tmp_28, -1
  %notrhs2 = icmp eq i52 %tmp_29, 0
  %tmp_30 = or i1 %notrhs2, %notlhs2
  %tmp_31 = fcmp olt double %p_1, 0.000000e+00
  %tmp_32 = and i1 %tmp_30, %tmp_31
  %sigma_1 = select i1 %tmp_32, double -1.000000e+00, double 1.000000e+00
  %factor_1 = fmul double %sigma_1, %poweroftwo_1
  %tmp_13 = fmul double %factor_1, %sh_load
  %c2_1 = fadd double %ch_load_2, %tmp_13
  %tmp_14 = fmul double %factor_1, %ch_load_2
  %s2_1 = fadd double %tmp_14, %sh_load
  %tmp_15 = fmul double %sigma_1, %angle1
  %beta_assign_1 = fsub double %p_1, %tmp_15
  %beta_assign_1_to_int = bitcast double %beta_assign_1 to i64
  %tmp_33 = call i11 @_ssdm_op_PartSelect.i11.i64.i32.i32(i64 %beta_assign_1_to_int, i32 52, i32 62)
  %tmp_34 = trunc i64 %beta_assign_1_to_int to i52
  %notlhs3 = icmp ne i11 %tmp_33, -1
  %notrhs3 = icmp eq i52 %tmp_34, 0
  %tmp_35 = or i1 %notrhs3, %notlhs3
  %tmp_36 = fcmp olt double %beta_assign_1, 0.000000e+00
  %tmp_37 = and i1 %tmp_35, %tmp_36
  %sigma_2 = select i1 %tmp_37, double -1.000000e+00, double 1.000000e+00
  %factor_2 = fmul double %sigma_2, %poweroftwo_1
  %tmp_17 = fmul double %factor_2, %s2_1
  %c2_2 = fadd double %c2_1, %tmp_17
  %tmp_18 = fmul double %factor_2, %c2_1
  %s2_2 = fadd double %tmp_18, %s2_1
  %tmp_19 = fmul double %sigma_2, %angle1
  %beta_assign_2 = fsub double %beta_assign_1, %tmp_19
  %sel_tmp = icmp eq i32 %j_1, 40
  %sel_tmp1 = icmp eq i32 %j_1, 13
  %sel_tmp2 = icmp eq i32 %j_1, 4
  %tmp1 = or i1 %sel_tmp1, %sel_tmp2
  %sel_tmp4 = or i1 %tmp1, %sel_tmp
  %c2_3 = select i1 %sel_tmp4, double %c2_2, double %c2_1
  %s2_3 = select i1 %sel_tmp4, double %s2_2, double %s2_1
  %beta_assign_3 = select i1 %sel_tmp4, double %beta_assign_2, double %beta_assign_1
  %poweroftwo_3 = fmul double %poweroftwo_1, 5.000000e-01
  %j_3 = add nsw i32 1, %j_1
  %tmp_21 = icmp sgt i32 %j_3, 60
  %angle_1 = fmul double %angle1, 5.000000e-01
  %tmp_22 = zext i32 %j_1 to i64
  %angles_pos_addr = getelementptr inbounds [60 x double]* @angles_pos, i64 0, i64 %tmp_22
  %angle_2 = load double* %angles_pos_addr, align 8
  %angle_3 = select i1 %tmp_21, double %angle_1, double %angle_2
  br label %.backedge

; <label>:3                                       ; preds = %.backedge
  %tmp_10 = fmul double %sign_factor, %ch_load_2
  call void @_ssdm_op_Write.ap_auto.doubleP(double* %ch, double %tmp_10) nounwind
  %tmp_11 = fmul double %sign_factor, %sh_load
  call void @_ssdm_op_Write.ap_auto.doubleP(double* %sh, double %tmp_11) nounwind
  ret void
}

define weak void @_ssdm_op_Write.ap_auto.doubleP(double*, double) {
entry:
  store double %1, double* %0
  ret void
}

define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

define weak i32 @_ssdm_op_Read.ap_auto.i32(i32) {
entry:
  ret i32 %0
}

define weak double @_ssdm_op_Read.ap_auto.double(double) {
entry:
  ret double %0
}

declare i52 @_ssdm_op_PartSelect.i52.i64.i32.i32(i64, i32, i32) nounwind readnone

define weak i11 @_ssdm_op_PartSelect.i11.i64.i32.i32(i64, i32, i32) nounwind readnone {
entry:
  %empty = call i64 @llvm.part.select.i64(i64 %0, i32 %1, i32 %2)
  %empty_4 = trunc i64 %empty to i11
  ret i11 %empty_4
}

!hls.encrypted.func = !{}
!llvm.map.gv = !{}

!0 = metadata !{metadata !1}
!1 = metadata !{i32 0, i32 63, metadata !2}
!2 = metadata !{metadata !3}
!3 = metadata !{metadata !"beta", metadata !4, metadata !"double", i32 0, i32 63}
!4 = metadata !{metadata !5}
!5 = metadata !{i32 0, i32 0, i32 0}
!6 = metadata !{metadata !7}
!7 = metadata !{i32 0, i32 31, metadata !8}
!8 = metadata !{metadata !9}
!9 = metadata !{metadata !"m", metadata !4, metadata !"int", i32 0, i32 31}
!10 = metadata !{metadata !11}
!11 = metadata !{i32 0, i32 31, metadata !12}
!12 = metadata !{metadata !13}
!13 = metadata !{metadata !"n", metadata !4, metadata !"int", i32 0, i32 31}
!14 = metadata !{metadata !15}
!15 = metadata !{i32 0, i32 63, metadata !16}
!16 = metadata !{metadata !17}
!17 = metadata !{metadata !"ch", metadata !18, metadata !"double", i32 0, i32 63}
!18 = metadata !{metadata !19}
!19 = metadata !{i32 0, i32 0, i32 1}
!20 = metadata !{metadata !21}
!21 = metadata !{i32 0, i32 63, metadata !22}
!22 = metadata !{metadata !23}
!23 = metadata !{metadata !"sh", metadata !18, metadata !"double", i32 0, i32 63}
