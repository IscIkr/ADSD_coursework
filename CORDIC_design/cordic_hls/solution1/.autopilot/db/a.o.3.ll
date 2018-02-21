; ModuleID = 'C:/Users/Stavros/Imperial/2ndTerm/ADSD/Part2/git_files/CORDIC_design/cordic_hls/solution1/.autopilot/db/a.o.3.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@coshsinh_cordic_str = internal unnamed_addr constant [16 x i8] c"coshsinh_cordic\00" ; [#uses=1 type=[16 x i8]*]
@angles_pos = internal unnamed_addr constant [60 x double] [double 5.493000e-01, double 2.554000e-01, double 1.257000e-01, double 6.260000e-02, double 3.130000e-02, double 1.560000e-01, double 7.800000e-03, double 3.900000e-03, double 2.000000e-03, double 9.765600e-04, double 4.882800e-04, double 2.441400e-04, double 1.220700e-04, double 6.103500e-05, double 3.051800e-05, double 1.525900e-05, double 7.629400e-06, double 3.814700e-06, double 1.907300e-06, double 9.536700e-07, double 4.768400e-07, double 2.384200e-07, double 1.192100e-07, double 5.960500e-08, double 2.980200e-08, double 1.490100e-08, double 7.450600e-09, double 3.725300e-09, double 1.862600e-09, double 9.313200e-10, double 4.656600e-10, double 2.328300e-10, double 1.164200e-10, double 5.820800e-11, double 2.910400e-11, double 1.455200e-11, double 7.276000e-12, double 3.638000e-12, double 1.819000e-12, double 9.094900e-13, double 4.547500e-13, double 2.273700e-13, double 1.136900e-13, double 5.684300e-14, double 2.842200e-14, double 1.421100e-14, double 7.105400e-15, double 3.552700e-15, double 1.776400e-15, double 8.881800e-16, double 4.440900e-16, double 2.220400e-16, double 1.110200e-16, double 5.551100e-17, double 2.775600e-17, double 1.387800e-17, double 6.938900e-18, double 3.469400e-18, double 1.734700e-18, double 0.000000e+00] ; [#uses=1 type=[60 x double]*]
@angles_neg = internal unnamed_addr constant [11 x double] [double 9.730000e-01, double 1.354000e+00, double 1.717000e+00, double 2.071600e+00, double 2.422100e+00, double 2.770600e+00, double 3.118200e+00, double 3.465200e+00, double 3.812100e+00, double 4.158800e+00, double 4.505400e+00] ; [#uses=1 type=[11 x double]*]

; [#uses=1]
declare i64 @llvm.part.select.i64(i64, i32, i32) nounwind readnone

; [#uses=32]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=0]
define void @coshsinh_cordic(double %beta, i32 %m, i32 %n, double* %ch, double* %sh) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecBitsMap(double %beta) nounwind, !map !0
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %m) nounwind, !map !6
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %n) nounwind, !map !10
  call void (...)* @_ssdm_op_SpecBitsMap(double* %ch) nounwind, !map !14
  call void (...)* @_ssdm_op_SpecBitsMap(double* %sh) nounwind, !map !20
  call void (...)* @_ssdm_op_SpecTopModule([16 x i8]* @coshsinh_cordic_str) nounwind
  %n_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %n) nounwind ; [#uses=1 type=i32]
  call void @llvm.dbg.value(metadata !{i32 %n_read}, i64 0, metadata !24), !dbg !34 ; [debug line = 3:48] [debug variable = n]
  %m_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %m) nounwind ; [#uses=1 type=i32]
  call void @llvm.dbg.value(metadata !{i32 %m_read}, i64 0, metadata !35), !dbg !36 ; [debug line = 3:41] [debug variable = m]
  %beta_read = call double @_ssdm_op_Read.ap_auto.double(double %beta) nounwind ; [#uses=3 type=double]
  call void @llvm.dbg.value(metadata !{double %beta_read}, i64 0, metadata !37), !dbg !38 ; [debug line = 3:31] [debug variable = beta]
  call void @llvm.dbg.value(metadata !{double %beta}, i64 0, metadata !37), !dbg !38 ; [debug line = 3:31] [debug variable = beta]
  call void @llvm.dbg.value(metadata !{i32 %m}, i64 0, metadata !35), !dbg !36 ; [debug line = 3:41] [debug variable = m]
  call void @llvm.dbg.value(metadata !{i32 %n}, i64 0, metadata !24), !dbg !34 ; [debug line = 3:48] [debug variable = n]
  call void @llvm.dbg.value(metadata !{double* %ch}, i64 0, metadata !39), !dbg !40 ; [debug line = 3:59] [debug variable = ch]
  call void @llvm.dbg.value(metadata !{double* %sh}, i64 0, metadata !41), !dbg !42 ; [debug line = 3:71] [debug variable = sh]
  %beta_to_int = bitcast double %beta_read to i64 ; [#uses=2 type=i64]
  %tmp = call i11 @_ssdm_op_PartSelect.i11.i64.i32.i32(i64 %beta_to_int, i32 52, i32 62) ; [#uses=1 type=i11]
  %tmp_6 = trunc i64 %beta_to_int to i52          ; [#uses=1 type=i52]
  %notlhs = icmp ne i11 %tmp, -1                  ; [#uses=1 type=i1]
  %notrhs = icmp eq i52 %tmp_6, 0                 ; [#uses=1 type=i1]
  %tmp_12 = or i1 %notrhs, %notlhs                ; [#uses=1 type=i1]
  %tmp_16 = fcmp olt double %beta_read, 0.000000e+00, !dbg !43 ; [#uses=1 type=i1] [debug line = 102:5]
  %tmp_20 = and i1 %tmp_12, %tmp_16, !dbg !43     ; [#uses=1 type=i1] [debug line = 102:5]
  %sign_factor = select i1 %tmp_20, double -1.000000e+00, double 1.000000e+00, !dbg !43 ; [#uses=2 type=double] [debug line = 102:5]
  %j = sub nsw i32 0, %m_read, !dbg !45           ; [#uses=1 type=i32] [debug line = 110:11]
  call void @llvm.dbg.value(metadata !{i32 %j}, i64 0, metadata !47), !dbg !45 ; [debug line = 110:11] [debug variable = j]
  br label %1, !dbg !45                           ; [debug line = 110:11]

; <label>:1                                       ; preds = %2, %0
  %ch_load = phi double [ 1.000000e+00, %0 ], [ %c2, %2 ] ; [#uses=3 type=double]
  %tmp_2 = phi double [ 0.000000e+00, %0 ], [ %s2, %2 ] ; [#uses=3 type=double]
  %poweroftwo = phi double [ 6.250000e-02, %0 ], [ %poweroftwo_2, %2 ] ; [#uses=3 type=double]
  %j1 = phi i32 [ %j, %0 ], [ %j_2, %2 ]          ; [#uses=3 type=i32]
  %p_0 = phi double [ %beta_read, %0 ], [ %beta_assign, %2 ] ; [#uses=4 type=double]
  %tmp_3 = icmp slt i32 %j1, 1, !dbg !45          ; [#uses=1 type=i1] [debug line = 110:11]
  br i1 %tmp_3, label %2, label %.backedge, !dbg !45 ; [debug line = 110:11]

; <label>:2                                       ; preds = %1
  %tmp_4 = sub nsw i32 0, %j1, !dbg !48           ; [#uses=1 type=i32] [debug line = 112:3]
  %tmp_5 = sext i32 %tmp_4 to i64, !dbg !48       ; [#uses=1 type=i64] [debug line = 112:3]
  %angles_neg_addr = getelementptr inbounds [11 x double]* @angles_neg, i64 0, i64 %tmp_5, !dbg !48 ; [#uses=1 type=double*] [debug line = 112:3]
  %angle = load double* %angles_neg_addr, align 8, !dbg !48 ; [#uses=1 type=double] [debug line = 112:3]
  call void @llvm.dbg.value(metadata !{double %angle}, i64 0, metadata !50), !dbg !48 ; [debug line = 112:3] [debug variable = angle]
  %p_0_to_int = bitcast double %p_0 to i64        ; [#uses=2 type=i64]
  %tmp_23 = call i11 @_ssdm_op_PartSelect.i11.i64.i32.i32(i64 %p_0_to_int, i32 52, i32 62) ; [#uses=1 type=i11]
  %tmp_24 = trunc i64 %p_0_to_int to i52          ; [#uses=1 type=i52]
  %notlhs1 = icmp ne i11 %tmp_23, -1              ; [#uses=1 type=i1]
  %notrhs1 = icmp eq i52 %tmp_24, 0               ; [#uses=1 type=i1]
  %tmp_25 = or i1 %notrhs1, %notlhs1              ; [#uses=1 type=i1]
  %tmp_26 = fcmp olt double %p_0, 0.000000e+00, !dbg !51 ; [#uses=1 type=i1] [debug line = 114:3]
  %tmp_27 = and i1 %tmp_25, %tmp_26, !dbg !51     ; [#uses=1 type=i1] [debug line = 114:3]
  %sigma = select i1 %tmp_27, double -1.000000e+00, double 1.000000e+00, !dbg !51 ; [#uses=2 type=double] [debug line = 114:3]
  %tmp_7 = fsub double 1.000000e+00, %poweroftwo, !dbg !52 ; [#uses=1 type=double] [debug line = 117:9]
  %factor = fmul double %sigma, %tmp_7, !dbg !52  ; [#uses=2 type=double] [debug line = 117:9]
  call void @llvm.dbg.value(metadata !{double %factor}, i64 0, metadata !53), !dbg !52 ; [debug line = 117:9] [debug variable = factor]
  %tmp_9 = fmul double %factor, %tmp_2, !dbg !54  ; [#uses=1 type=double] [debug line = 119:9]
  %c2 = fadd double %ch_load, %tmp_9, !dbg !54    ; [#uses=1 type=double] [debug line = 119:9]
  call void @llvm.dbg.value(metadata !{double %c2}, i64 0, metadata !55), !dbg !54 ; [debug line = 119:9] [debug variable = c2]
  %tmp_s = fmul double %factor, %ch_load, !dbg !56 ; [#uses=1 type=double] [debug line = 120:9]
  %s2 = fadd double %tmp_s, %tmp_2, !dbg !56      ; [#uses=1 type=double] [debug line = 120:9]
  call void @llvm.dbg.value(metadata !{double %s2}, i64 0, metadata !57), !dbg !56 ; [debug line = 120:9] [debug variable = s2]
  %tmp_1 = fmul double %sigma, %angle, !dbg !58   ; [#uses=1 type=double] [debug line = 125:9]
  %beta_assign = fsub double %p_0, %tmp_1, !dbg !58 ; [#uses=1 type=double] [debug line = 125:9]
  call void @llvm.dbg.value(metadata !{double %beta_assign}, i64 0, metadata !37), !dbg !58 ; [debug line = 125:9] [debug variable = beta]
  %poweroftwo_2 = fmul double %poweroftwo, 2.000000e+00, !dbg !59 ; [#uses=1 type=double] [debug line = 126:3]
  call void @llvm.dbg.value(metadata !{double %poweroftwo_2}, i64 0, metadata !60), !dbg !59 ; [debug line = 126:3] [debug variable = poweroftwo]
  %j_2 = add nsw i32 1, %j1, !dbg !61             ; [#uses=1 type=i32] [debug line = 110:27]
  call void @llvm.dbg.value(metadata !{i32 %j_2}, i64 0, metadata !47), !dbg !61 ; [debug line = 110:27] [debug variable = j]
  br label %1, !dbg !61                           ; [debug line = 110:27]

.backedge:                                        ; preds = %_ifconv, %1
  %ch_load_2 = phi double [ %c2_3, %_ifconv ], [ %ch_load, %1 ] ; [#uses=3 type=double]
  %sh_load = phi double [ %s2_3, %_ifconv ], [ %tmp_2, %1 ] ; [#uses=3 type=double]
  %angle1 = phi double [ %angle_3, %_ifconv ], [ 5.493000e-01, %1 ] ; [#uses=3 type=double]
  %poweroftwo_1 = phi double [ %poweroftwo_3, %_ifconv ], [ %poweroftwo, %1 ] ; [#uses=3 type=double]
  %j_1 = phi i32 [ %j_3, %_ifconv ], [ 1, %1 ]    ; [#uses=6 type=i32]
  %p_1 = phi double [ %beta_assign_3, %_ifconv ], [ %p_0, %1 ] ; [#uses=3 type=double]
  %tmp_8 = icmp sgt i32 %j_1, %n_read, !dbg !62   ; [#uses=1 type=i1] [debug line = 131:8]
  br i1 %tmp_8, label %3, label %_ifconv, !dbg !62 ; [debug line = 131:8]

_ifconv:                                          ; preds = %.backedge
  %p_1_to_int = bitcast double %p_1 to i64        ; [#uses=2 type=i64]
  %tmp_28 = call i11 @_ssdm_op_PartSelect.i11.i64.i32.i32(i64 %p_1_to_int, i32 52, i32 62) ; [#uses=1 type=i11]
  %tmp_29 = trunc i64 %p_1_to_int to i52          ; [#uses=1 type=i52]
  %notlhs2 = icmp ne i11 %tmp_28, -1              ; [#uses=1 type=i1]
  %notrhs2 = icmp eq i52 %tmp_29, 0               ; [#uses=1 type=i1]
  %tmp_30 = or i1 %notrhs2, %notlhs2              ; [#uses=1 type=i1]
  %tmp_31 = fcmp olt double %p_1, 0.000000e+00, !dbg !64 ; [#uses=1 type=i1] [debug line = 133:9]
  %tmp_32 = and i1 %tmp_30, %tmp_31, !dbg !64     ; [#uses=1 type=i1] [debug line = 133:9]
  %sigma_1 = select i1 %tmp_32, double -1.000000e+00, double 1.000000e+00, !dbg !64 ; [#uses=2 type=double] [debug line = 133:9]
  %factor_1 = fmul double %sigma_1, %poweroftwo_1, !dbg !66 ; [#uses=2 type=double] [debug line = 136:9]
  call void @llvm.dbg.value(metadata !{double %factor_1}, i64 0, metadata !53), !dbg !66 ; [debug line = 136:9] [debug variable = factor]
  %tmp_13 = fmul double %factor_1, %sh_load, !dbg !67 ; [#uses=1 type=double] [debug line = 138:9]
  %c2_1 = fadd double %ch_load_2, %tmp_13, !dbg !67 ; [#uses=3 type=double] [debug line = 138:9]
  call void @llvm.dbg.value(metadata !{double %c2_1}, i64 0, metadata !55), !dbg !67 ; [debug line = 138:9] [debug variable = c2]
  %tmp_14 = fmul double %factor_1, %ch_load_2, !dbg !68 ; [#uses=1 type=double] [debug line = 139:9]
  %s2_1 = fadd double %tmp_14, %sh_load, !dbg !68 ; [#uses=3 type=double] [debug line = 139:9]
  call void @llvm.dbg.value(metadata !{double %s2_1}, i64 0, metadata !57), !dbg !68 ; [debug line = 139:9] [debug variable = s2]
  %tmp_15 = fmul double %sigma_1, %angle1, !dbg !69 ; [#uses=1 type=double] [debug line = 144:9]
  %beta_assign_1 = fsub double %p_1, %tmp_15, !dbg !69 ; [#uses=4 type=double] [debug line = 144:9]
  call void @llvm.dbg.value(metadata !{double %beta_assign_1}, i64 0, metadata !37), !dbg !69 ; [debug line = 144:9] [debug variable = beta]
  %beta_assign_1_to_int = bitcast double %beta_assign_1 to i64 ; [#uses=2 type=i64]
  %tmp_33 = call i11 @_ssdm_op_PartSelect.i11.i64.i32.i32(i64 %beta_assign_1_to_int, i32 52, i32 62) ; [#uses=1 type=i11]
  %tmp_34 = trunc i64 %beta_assign_1_to_int to i52 ; [#uses=1 type=i52]
  %notlhs3 = icmp ne i11 %tmp_33, -1              ; [#uses=1 type=i1]
  %notrhs3 = icmp eq i52 %tmp_34, 0               ; [#uses=1 type=i1]
  %tmp_35 = or i1 %notrhs3, %notlhs3              ; [#uses=1 type=i1]
  %tmp_36 = fcmp olt double %beta_assign_1, 0.000000e+00, !dbg !70 ; [#uses=1 type=i1] [debug line = 148:13]
  %tmp_37 = and i1 %tmp_35, %tmp_36, !dbg !70     ; [#uses=1 type=i1] [debug line = 148:13]
  %sigma_2 = select i1 %tmp_37, double -1.000000e+00, double 1.000000e+00, !dbg !70 ; [#uses=2 type=double] [debug line = 148:13]
  %factor_2 = fmul double %sigma_2, %poweroftwo_1, !dbg !72 ; [#uses=2 type=double] [debug line = 151:13]
  call void @llvm.dbg.value(metadata !{double %factor_2}, i64 0, metadata !53), !dbg !72 ; [debug line = 151:13] [debug variable = factor]
  %tmp_17 = fmul double %factor_2, %s2_1, !dbg !73 ; [#uses=1 type=double] [debug line = 153:13]
  %c2_2 = fadd double %c2_1, %tmp_17, !dbg !73    ; [#uses=1 type=double] [debug line = 153:13]
  call void @llvm.dbg.value(metadata !{double %c2_2}, i64 0, metadata !55), !dbg !73 ; [debug line = 153:13] [debug variable = c2]
  %tmp_18 = fmul double %factor_2, %c2_1, !dbg !74 ; [#uses=1 type=double] [debug line = 154:13]
  %s2_2 = fadd double %tmp_18, %s2_1, !dbg !74    ; [#uses=1 type=double] [debug line = 154:13]
  call void @llvm.dbg.value(metadata !{double %s2_2}, i64 0, metadata !57), !dbg !74 ; [debug line = 154:13] [debug variable = s2]
  %tmp_19 = fmul double %sigma_2, %angle1, !dbg !75 ; [#uses=1 type=double] [debug line = 159:13]
  %beta_assign_2 = fsub double %beta_assign_1, %tmp_19, !dbg !75 ; [#uses=1 type=double] [debug line = 159:13]
  call void @llvm.dbg.value(metadata !{double %beta_assign_2}, i64 0, metadata !37), !dbg !75 ; [debug line = 159:13] [debug variable = beta]
  %sel_tmp = icmp eq i32 %j_1, 40                 ; [#uses=1 type=i1]
  %sel_tmp1 = icmp eq i32 %j_1, 13                ; [#uses=1 type=i1]
  %sel_tmp2 = icmp eq i32 %j_1, 4                 ; [#uses=1 type=i1]
  %tmp1 = or i1 %sel_tmp1, %sel_tmp2              ; [#uses=1 type=i1]
  %sel_tmp4 = or i1 %tmp1, %sel_tmp               ; [#uses=3 type=i1]
  %c2_3 = select i1 %sel_tmp4, double %c2_2, double %c2_1 ; [#uses=1 type=double]
  call void @llvm.dbg.value(metadata !{double %c2_3}, i64 0, metadata !55), !dbg !67 ; [debug line = 138:9] [debug variable = c2]
  %s2_3 = select i1 %sel_tmp4, double %s2_2, double %s2_1 ; [#uses=1 type=double]
  call void @llvm.dbg.value(metadata !{double %s2_3}, i64 0, metadata !57), !dbg !68 ; [debug line = 139:9] [debug variable = s2]
  %beta_assign_3 = select i1 %sel_tmp4, double %beta_assign_2, double %beta_assign_1 ; [#uses=1 type=double]
  call void @llvm.dbg.value(metadata !{double %beta_assign_3}, i64 0, metadata !37), !dbg !69 ; [debug line = 144:9] [debug variable = beta]
  %poweroftwo_3 = fmul double %poweroftwo_1, 5.000000e-01, !dbg !76 ; [#uses=1 type=double] [debug line = 162:9]
  call void @llvm.dbg.value(metadata !{double %poweroftwo_3}, i64 0, metadata !60), !dbg !76 ; [debug line = 162:9] [debug variable = poweroftwo]
  %j_3 = add nsw i32 1, %j_1, !dbg !77            ; [#uses=2 type=i32] [debug line = 164:9]
  call void @llvm.dbg.value(metadata !{i32 %j_3}, i64 0, metadata !47), !dbg !78 ; [debug line = 131:23] [debug variable = j]
  %tmp_21 = icmp sgt i32 %j_3, 60, !dbg !77       ; [#uses=1 type=i1] [debug line = 164:9]
  %angle_1 = fmul double %angle1, 5.000000e-01, !dbg !79 ; [#uses=1 type=double] [debug line = 164:27]
  call void @llvm.dbg.value(metadata !{double %angle_1}, i64 0, metadata !50), !dbg !79 ; [debug line = 164:27] [debug variable = angle]
  %tmp_22 = zext i32 %j_1 to i64, !dbg !80        ; [#uses=1 type=i64] [debug line = 165:14]
  %angles_pos_addr = getelementptr inbounds [60 x double]* @angles_pos, i64 0, i64 %tmp_22, !dbg !80 ; [#uses=1 type=double*] [debug line = 165:14]
  %angle_2 = load double* %angles_pos_addr, align 8, !dbg !80 ; [#uses=1 type=double] [debug line = 165:14]
  call void @llvm.dbg.value(metadata !{double %angle_2}, i64 0, metadata !50), !dbg !80 ; [debug line = 165:14] [debug variable = angle]
  %angle_3 = select i1 %tmp_21, double %angle_1, double %angle_2 ; [#uses=1 type=double]
  call void @llvm.dbg.value(metadata !{double %angle_3}, i64 0, metadata !50), !dbg !79 ; [debug line = 164:27] [debug variable = angle]
  br label %.backedge

; <label>:3                                       ; preds = %.backedge
  %tmp_10 = fmul double %sign_factor, %ch_load_2, !dbg !81 ; [#uses=1 type=double] [debug line = 173:5]
  call void @_ssdm_op_Write.ap_auto.doubleP(double* %ch, double %tmp_10) nounwind, !dbg !81 ; [debug line = 173:5]
  %tmp_11 = fmul double %sign_factor, %sh_load, !dbg !82 ; [#uses=1 type=double] [debug line = 174:5]
  call void @_ssdm_op_Write.ap_auto.doubleP(double* %sh, double %tmp_11) nounwind, !dbg !82 ; [debug line = 174:5]
  ret void, !dbg !83                              ; [debug line = 176:5]
}

; [#uses=2]
define weak void @_ssdm_op_Write.ap_auto.doubleP(double*, double) {
entry:
  store double %1, double* %0
  ret void
}

; [#uses=1]
define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

; [#uses=5]
define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

; [#uses=2]
define weak i32 @_ssdm_op_Read.ap_auto.i32(i32) {
entry:
  ret i32 %0
}

; [#uses=1]
define weak double @_ssdm_op_Read.ap_auto.double(double) {
entry:
  ret double %0
}

; [#uses=0]
declare i52 @_ssdm_op_PartSelect.i52.i64.i32.i32(i64, i32, i32) nounwind readnone

; [#uses=4]
define weak i11 @_ssdm_op_PartSelect.i11.i64.i32.i32(i64, i32, i32) nounwind readnone {
entry:
  %empty = call i64 @llvm.part.select.i64(i64 %0, i32 %1, i32 %2) ; [#uses=1 type=i64]
  %empty_4 = trunc i64 %empty to i11              ; [#uses=1 type=i11]
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
!24 = metadata !{i32 786689, metadata !25, metadata !"n", metadata !26, i32 50331651, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!25 = metadata !{i32 786478, i32 0, metadata !26, metadata !"coshsinh_cordic", metadata !"coshsinh_cordic", metadata !"_Z15coshsinh_cordicdiiPdS_", metadata !26, i32 3, metadata !27, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (double, i32, i32, double*, double*)* @coshsinh_cordic, null, null, metadata !32, i32 3} ; [ DW_TAG_subprogram ]
!26 = metadata !{i32 786473, metadata !"cordic.cpp", metadata !"C:\5CUsers\5CStavros\5CImperial\5C2ndTerm\5CADSD\5CPart2\5Cgit_files\5CCORDIC_design", null} ; [ DW_TAG_file_type ]
!27 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !28, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!28 = metadata !{null, metadata !29, metadata !30, metadata !30, metadata !31, metadata !31}
!29 = metadata !{i32 786468, null, metadata !"double", null, i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ]
!30 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!31 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !29} ; [ DW_TAG_pointer_type ]
!32 = metadata !{metadata !33}
!33 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!34 = metadata !{i32 3, i32 48, metadata !25, null}
!35 = metadata !{i32 786689, metadata !25, metadata !"m", metadata !26, i32 33554435, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!36 = metadata !{i32 3, i32 41, metadata !25, null}
!37 = metadata !{i32 786689, metadata !25, metadata !"beta", metadata !26, i32 16777219, metadata !29, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!38 = metadata !{i32 3, i32 31, metadata !25, null}
!39 = metadata !{i32 786689, metadata !25, metadata !"ch", metadata !26, i32 67108867, metadata !31, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!40 = metadata !{i32 3, i32 59, metadata !25, null}
!41 = metadata !{i32 786689, metadata !25, metadata !"sh", metadata !26, i32 83886083, metadata !31, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!42 = metadata !{i32 3, i32 71, metadata !25, null}
!43 = metadata !{i32 102, i32 5, metadata !44, null}
!44 = metadata !{i32 786443, metadata !25, i32 3, i32 76, metadata !26, i32 0} ; [ DW_TAG_lexical_block ]
!45 = metadata !{i32 110, i32 11, metadata !46, null}
!46 = metadata !{i32 786443, metadata !44, i32 110, i32 5, metadata !26, i32 1} ; [ DW_TAG_lexical_block ]
!47 = metadata !{i32 786688, metadata !44, metadata !"j", metadata !26, i32 81, metadata !30, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!48 = metadata !{i32 112, i32 3, metadata !49, null}
!49 = metadata !{i32 786443, metadata !46, i32 110, i32 33, metadata !26, i32 2} ; [ DW_TAG_lexical_block ]
!50 = metadata !{i32 786688, metadata !44, metadata !"angle", metadata !26, i32 80, metadata !29, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!51 = metadata !{i32 114, i32 3, metadata !49, null}
!52 = metadata !{i32 117, i32 9, metadata !49, null}
!53 = metadata !{i32 786688, metadata !44, metadata !"factor", metadata !26, i32 80, metadata !29, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!54 = metadata !{i32 119, i32 9, metadata !49, null}
!55 = metadata !{i32 786688, metadata !44, metadata !"c2", metadata !26, i32 80, metadata !29, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!56 = metadata !{i32 120, i32 9, metadata !49, null}
!57 = metadata !{i32 786688, metadata !44, metadata !"s2", metadata !26, i32 80, metadata !29, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!58 = metadata !{i32 125, i32 9, metadata !49, null}
!59 = metadata !{i32 126, i32 3, metadata !49, null}
!60 = metadata !{i32 786688, metadata !44, metadata !"poweroftwo", metadata !26, i32 80, metadata !29, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!61 = metadata !{i32 110, i32 27, metadata !46, null}
!62 = metadata !{i32 131, i32 8, metadata !63, null}
!63 = metadata !{i32 786443, metadata !44, i32 131, i32 2, metadata !26, i32 3} ; [ DW_TAG_lexical_block ]
!64 = metadata !{i32 133, i32 9, metadata !65, null}
!65 = metadata !{i32 786443, metadata !63, i32 131, i32 29, metadata !26, i32 4} ; [ DW_TAG_lexical_block ]
!66 = metadata !{i32 136, i32 9, metadata !65, null}
!67 = metadata !{i32 138, i32 9, metadata !65, null}
!68 = metadata !{i32 139, i32 9, metadata !65, null}
!69 = metadata !{i32 144, i32 9, metadata !65, null}
!70 = metadata !{i32 148, i32 13, metadata !71, null}
!71 = metadata !{i32 786443, metadata !65, i32 146, i32 43, metadata !26, i32 5} ; [ DW_TAG_lexical_block ]
!72 = metadata !{i32 151, i32 13, metadata !71, null}
!73 = metadata !{i32 153, i32 13, metadata !71, null}
!74 = metadata !{i32 154, i32 13, metadata !71, null}
!75 = metadata !{i32 159, i32 13, metadata !71, null}
!76 = metadata !{i32 162, i32 9, metadata !65, null}
!77 = metadata !{i32 164, i32 9, metadata !65, null}
!78 = metadata !{i32 131, i32 23, metadata !63, null}
!79 = metadata !{i32 164, i32 27, metadata !65, null}
!80 = metadata !{i32 165, i32 14, metadata !65, null}
!81 = metadata !{i32 173, i32 5, metadata !44, null}
!82 = metadata !{i32 174, i32 5, metadata !44, null}
!83 = metadata !{i32 176, i32 5, metadata !44, null}
