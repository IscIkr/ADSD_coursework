; ModuleID = 'C:/Users/Stavros/Imperial/2ndTerm/ADSD/Part2/git_files/CORDIC_design/cordic_hls/solution1/.autopilot/db/a.g.1.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@coshsinh_cordic.str = internal unnamed_addr constant [16 x i8] c"coshsinh_cordic\00" ; [#uses=1 type=[16 x i8]*]
@angles_pos = internal unnamed_addr constant [60 x double] [double 5.493000e-01, double 2.554000e-01, double 1.257000e-01, double 6.260000e-02, double 3.130000e-02, double 1.560000e-01, double 7.800000e-03, double 3.900000e-03, double 2.000000e-03, double 9.765600e-04, double 4.882800e-04, double 2.441400e-04, double 1.220700e-04, double 6.103500e-05, double 3.051800e-05, double 1.525900e-05, double 7.629400e-06, double 3.814700e-06, double 1.907300e-06, double 9.536700e-07, double 4.768400e-07, double 2.384200e-07, double 1.192100e-07, double 5.960500e-08, double 2.980200e-08, double 1.490100e-08, double 7.450600e-09, double 3.725300e-09, double 1.862600e-09, double 9.313200e-10, double 4.656600e-10, double 2.328300e-10, double 1.164200e-10, double 5.820800e-11, double 2.910400e-11, double 1.455200e-11, double 7.276000e-12, double 3.638000e-12, double 1.819000e-12, double 9.094900e-13, double 4.547500e-13, double 2.273700e-13, double 1.136900e-13, double 5.684300e-14, double 2.842200e-14, double 1.421100e-14, double 7.105400e-15, double 3.552700e-15, double 1.776400e-15, double 8.881800e-16, double 4.440900e-16, double 2.220400e-16, double 1.110200e-16, double 5.551100e-17, double 2.775600e-17, double 1.387800e-17, double 6.938900e-18, double 3.469400e-18, double 1.734700e-18, double 0.000000e+00] ; [#uses=1 type=[60 x double]*]
@angles_neg = internal unnamed_addr constant [11 x double] [double 9.730000e-01, double 1.354000e+00, double 1.717000e+00, double 2.071600e+00, double 2.422100e+00, double 2.770600e+00, double 3.118200e+00, double 3.465200e+00, double 3.812100e+00, double 4.158800e+00, double 4.505400e+00] ; [#uses=1 type=[11 x double]*]

; [#uses=25]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=0]
define void @coshsinh_cordic(double %beta, i32 %m, i32 %n, double* %ch, double* %sh) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecTopModule([16 x i8]* @coshsinh_cordic.str) nounwind
  call void @llvm.dbg.value(metadata !{double %beta}, i64 0, metadata !14), !dbg !15 ; [debug line = 3:31] [debug variable = beta]
  call void @llvm.dbg.value(metadata !{i32 %m}, i64 0, metadata !16), !dbg !17 ; [debug line = 3:41] [debug variable = m]
  call void @llvm.dbg.value(metadata !{i32 %n}, i64 0, metadata !18), !dbg !19 ; [debug line = 3:48] [debug variable = n]
  call void @llvm.dbg.value(metadata !{double* %ch}, i64 0, metadata !20), !dbg !21 ; [debug line = 3:59] [debug variable = ch]
  call void @llvm.dbg.value(metadata !{double* %sh}, i64 0, metadata !22), !dbg !23 ; [debug line = 3:71] [debug variable = sh]
  br label %1

; <label>:1                                       ; preds = %0
  %tmp = fcmp olt double %beta, 0.000000e+00, !dbg !24 ; [#uses=1 type=i1] [debug line = 102:5]
  %sign_factor = select i1 %tmp, double -1.000000e+00, double 1.000000e+00, !dbg !24 ; [#uses=2 type=double] [debug line = 102:5]
  store double 1.000000e+00, double* %ch, align 8, !dbg !26 ; [debug line = 105:5]
  store double 0.000000e+00, double* %sh, align 8, !dbg !27 ; [debug line = 106:5]
  %j = sub nsw i32 0, %m, !dbg !28                ; [#uses=1 type=i32] [debug line = 110:11]
  call void @llvm.dbg.value(metadata !{i32 %j}, i64 0, metadata !30), !dbg !28 ; [debug line = 110:11] [debug variable = j]
  br label %2, !dbg !28                           ; [debug line = 110:11]

; <label>:2                                       ; preds = %3, %1
  %tmp.2 = phi double [ 0.000000e+00, %1 ], [ %s2, %3 ] ; [#uses=3 type=double]
  %poweroftwo = phi double [ 6.250000e-02, %1 ], [ %poweroftwo.2, %3 ] ; [#uses=3 type=double]
  %j1 = phi i32 [ %j, %1 ], [ %j.2, %3 ]          ; [#uses=3 type=i32]
  %.0 = phi double [ %beta, %1 ], [ %beta.assign, %3 ] ; [#uses=3 type=double]
  %tmp.3 = icmp slt i32 %j1, 1, !dbg !28          ; [#uses=1 type=i1] [debug line = 110:11]
  br i1 %tmp.3, label %3, label %4, !dbg !28      ; [debug line = 110:11]

; <label>:3                                       ; preds = %2
  %tmp.4 = sub nsw i32 0, %j1, !dbg !31           ; [#uses=1 type=i32] [debug line = 112:3]
  %tmp.5 = sext i32 %tmp.4 to i64, !dbg !31       ; [#uses=1 type=i64] [debug line = 112:3]
  %angles_neg.addr = getelementptr inbounds [11 x double]* @angles_neg, i64 0, i64 %tmp.5, !dbg !31 ; [#uses=1 type=double*] [debug line = 112:3]
  %angle = load double* %angles_neg.addr, align 8, !dbg !31 ; [#uses=2 type=double] [debug line = 112:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(double %angle) nounwind
  call void @llvm.dbg.value(metadata !{double %angle}, i64 0, metadata !33), !dbg !31 ; [debug line = 112:3] [debug variable = angle]
  %tmp.6 = fcmp olt double %.0, 0.000000e+00, !dbg !34 ; [#uses=1 type=i1] [debug line = 114:3]
  %sigma = select i1 %tmp.6, double -1.000000e+00, double 1.000000e+00, !dbg !34 ; [#uses=2 type=double] [debug line = 114:3]
  %tmp.7 = fsub double 1.000000e+00, %poweroftwo, !dbg !35 ; [#uses=1 type=double] [debug line = 117:9]
  %factor = fmul double %sigma, %tmp.7, !dbg !35  ; [#uses=2 type=double] [debug line = 117:9]
  call void @llvm.dbg.value(metadata !{double %factor}, i64 0, metadata !36), !dbg !35 ; [debug line = 117:9] [debug variable = factor]
  %ch.load = load double* %ch, align 8, !dbg !37  ; [#uses=2 type=double] [debug line = 119:9]
  %tmp.9 = fmul double %factor, %tmp.2, !dbg !37  ; [#uses=1 type=double] [debug line = 119:9]
  %c2 = fadd double %ch.load, %tmp.9, !dbg !37    ; [#uses=1 type=double] [debug line = 119:9]
  call void @llvm.dbg.value(metadata !{double %c2}, i64 0, metadata !38), !dbg !37 ; [debug line = 119:9] [debug variable = c2]
  %tmp.11 = fmul double %factor, %ch.load, !dbg !39 ; [#uses=1 type=double] [debug line = 120:9]
  %s2 = fadd double %tmp.11, %tmp.2, !dbg !39     ; [#uses=2 type=double] [debug line = 120:9]
  call void @llvm.dbg.value(metadata !{double %s2}, i64 0, metadata !40), !dbg !39 ; [debug line = 120:9] [debug variable = s2]
  store double %c2, double* %ch, align 8, !dbg !41 ; [debug line = 122:9]
  store double %s2, double* %sh, align 8, !dbg !42 ; [debug line = 123:9]
  %tmp.13 = fmul double %sigma, %angle, !dbg !43  ; [#uses=1 type=double] [debug line = 125:9]
  %beta.assign = fsub double %.0, %tmp.13, !dbg !43 ; [#uses=1 type=double] [debug line = 125:9]
  call void @llvm.dbg.value(metadata !{double %beta.assign}, i64 0, metadata !14), !dbg !43 ; [debug line = 125:9] [debug variable = beta]
  %poweroftwo.2 = fmul double %poweroftwo, 2.000000e+00, !dbg !44 ; [#uses=1 type=double] [debug line = 126:3]
  call void @llvm.dbg.value(metadata !{double %poweroftwo.2}, i64 0, metadata !45), !dbg !44 ; [debug line = 126:3] [debug variable = poweroftwo]
  %j.2 = add nsw i32 %j1, 1, !dbg !46             ; [#uses=1 type=i32] [debug line = 110:27]
  call void @llvm.dbg.value(metadata !{i32 %j.2}, i64 0, metadata !30), !dbg !46 ; [debug line = 110:27] [debug variable = j]
  br label %2, !dbg !46                           ; [debug line = 110:27]

; <label>:4                                       ; preds = %2
  %.0.lcssa = phi double [ %.0, %2 ]              ; [#uses=1 type=double]
  %poweroftwo.0.lcssa = phi double [ %poweroftwo, %2 ] ; [#uses=1 type=double]
  %.lcssa = phi double [ %tmp.2, %2 ]             ; [#uses=1 type=double]
  call void (...)* @_ssdm_SpecKeepArrayLoad(double 5.493000e-01) nounwind
  br label %.backedge, !dbg !47                   ; [debug line = 131:8]

.backedge:                                        ; preds = %.backedge.backedge, %4
  %tmp.17 = phi double [ %.lcssa, %4 ], [ %tmp.37, %.backedge.backedge ] ; [#uses=2 type=double]
  %angle1 = phi double [ 5.493000e-01, %4 ], [ %angle.0.be, %.backedge.backedge ] ; [#uses=3 type=double]
  %poweroftwo.1 = phi double [ %poweroftwo.0.lcssa, %4 ], [ %poweroftwo.3, %.backedge.backedge ] ; [#uses=3 type=double]
  %j.1 = phi i32 [ 1, %4 ], [ %j.3, %.backedge.backedge ] ; [#uses=4 type=i32]
  %.1 = phi double [ %.0.lcssa, %4 ], [ %.2, %.backedge.backedge ] ; [#uses=2 type=double]
  %tmp.18 = icmp sgt i32 %j.1, %n, !dbg !47       ; [#uses=1 type=i1] [debug line = 131:8]
  br i1 %tmp.18, label %8, label %5, !dbg !47     ; [debug line = 131:8]

; <label>:5                                       ; preds = %.backedge
  %tmp.21 = fcmp olt double %.1, 0.000000e+00, !dbg !49 ; [#uses=1 type=i1] [debug line = 133:9]
  %sigma.1 = select i1 %tmp.21, double -1.000000e+00, double 1.000000e+00, !dbg !49 ; [#uses=2 type=double] [debug line = 133:9]
  %factor.1 = fmul double %sigma.1, %poweroftwo.1, !dbg !51 ; [#uses=2 type=double] [debug line = 136:9]
  call void @llvm.dbg.value(metadata !{double %factor.1}, i64 0, metadata !36), !dbg !51 ; [debug line = 136:9] [debug variable = factor]
  %ch.load.2 = load double* %ch, align 8, !dbg !52 ; [#uses=2 type=double] [debug line = 138:9]
  %tmp.23 = fmul double %factor.1, %tmp.17, !dbg !52 ; [#uses=1 type=double] [debug line = 138:9]
  %c2.1 = fadd double %ch.load.2, %tmp.23, !dbg !52 ; [#uses=1 type=double] [debug line = 138:9]
  call void @llvm.dbg.value(metadata !{double %c2.1}, i64 0, metadata !38), !dbg !52 ; [debug line = 138:9] [debug variable = c2]
  %tmp.25 = fmul double %factor.1, %ch.load.2, !dbg !53 ; [#uses=1 type=double] [debug line = 139:9]
  %s2.1 = fadd double %tmp.25, %tmp.17, !dbg !53  ; [#uses=4 type=double] [debug line = 139:9]
  call void @llvm.dbg.value(metadata !{double %s2.1}, i64 0, metadata !40), !dbg !53 ; [debug line = 139:9] [debug variable = s2]
  store double %c2.1, double* %ch, align 8, !dbg !54 ; [debug line = 141:9]
  store double %s2.1, double* %sh, align 8, !dbg !55 ; [debug line = 142:9]
  %tmp.27 = fmul double %sigma.1, %angle1, !dbg !56 ; [#uses=1 type=double] [debug line = 144:9]
  %beta.assign.1 = fsub double %.1, %tmp.27, !dbg !56 ; [#uses=3 type=double] [debug line = 144:9]
  call void @llvm.dbg.value(metadata !{double %beta.assign.1}, i64 0, metadata !14), !dbg !56 ; [debug line = 144:9] [debug variable = beta]
  switch i32 %j.1, label %._crit_edge [
    i32 40, label %._crit_edge4
    i32 13, label %._crit_edge4
    i32 4, label %._crit_edge4
  ], !dbg !57                                     ; [debug line = 146:9]

._crit_edge4:                                     ; preds = %5, %5, %5
  %tmp.29 = fcmp olt double %beta.assign.1, 0.000000e+00, !dbg !58 ; [#uses=1 type=i1] [debug line = 148:13]
  %sigma.2 = select i1 %tmp.29, double -1.000000e+00, double 1.000000e+00, !dbg !58 ; [#uses=2 type=double] [debug line = 148:13]
  %factor.2 = fmul double %sigma.2, %poweroftwo.1, !dbg !60 ; [#uses=2 type=double] [debug line = 151:13]
  call void @llvm.dbg.value(metadata !{double %factor.2}, i64 0, metadata !36), !dbg !60 ; [debug line = 151:13] [debug variable = factor]
  %ch.load.3 = load double* %ch, align 8, !dbg !61 ; [#uses=2 type=double] [debug line = 153:13]
  %tmp.31 = fmul double %factor.2, %s2.1, !dbg !61 ; [#uses=1 type=double] [debug line = 153:13]
  %c2.2 = fadd double %ch.load.3, %tmp.31, !dbg !61 ; [#uses=1 type=double] [debug line = 153:13]
  call void @llvm.dbg.value(metadata !{double %c2.2}, i64 0, metadata !38), !dbg !61 ; [debug line = 153:13] [debug variable = c2]
  %tmp.33 = fmul double %factor.2, %ch.load.3, !dbg !62 ; [#uses=1 type=double] [debug line = 154:13]
  %s2.2 = fadd double %tmp.33, %s2.1, !dbg !62    ; [#uses=2 type=double] [debug line = 154:13]
  call void @llvm.dbg.value(metadata !{double %s2.2}, i64 0, metadata !40), !dbg !62 ; [debug line = 154:13] [debug variable = s2]
  store double %c2.2, double* %ch, align 8, !dbg !63 ; [debug line = 156:13]
  store double %s2.2, double* %sh, align 8, !dbg !64 ; [debug line = 157:13]
  %tmp.35 = fmul double %sigma.2, %angle1, !dbg !65 ; [#uses=1 type=double] [debug line = 159:13]
  %beta.assign.2 = fsub double %beta.assign.1, %tmp.35, !dbg !65 ; [#uses=1 type=double] [debug line = 159:13]
  call void @llvm.dbg.value(metadata !{double %beta.assign.2}, i64 0, metadata !14), !dbg !65 ; [debug line = 159:13] [debug variable = beta]
  br label %._crit_edge, !dbg !66                 ; [debug line = 160:9]

._crit_edge:                                      ; preds = %._crit_edge4, %5
  %tmp.37 = phi double [ %s2.2, %._crit_edge4 ], [ %s2.1, %5 ] ; [#uses=1 type=double]
  %.2 = phi double [ %beta.assign.2, %._crit_edge4 ], [ %beta.assign.1, %5 ] ; [#uses=1 type=double]
  %poweroftwo.3 = fmul double %poweroftwo.1, 5.000000e-01, !dbg !67 ; [#uses=1 type=double] [debug line = 162:9]
  call void @llvm.dbg.value(metadata !{double %poweroftwo.3}, i64 0, metadata !45), !dbg !67 ; [debug line = 162:9] [debug variable = poweroftwo]
  %j.3 = add nsw i32 %j.1, 1, !dbg !68            ; [#uses=2 type=i32] [debug line = 164:9]
  call void @llvm.dbg.value(metadata !{i32 %j.3}, i64 0, metadata !30), !dbg !69 ; [debug line = 131:23] [debug variable = j]
  %tmp.40 = icmp sgt i32 %j.3, 60, !dbg !68       ; [#uses=1 type=i1] [debug line = 164:9]
  br i1 %tmp.40, label %6, label %7, !dbg !68     ; [debug line = 164:9]

; <label>:6                                       ; preds = %._crit_edge
  %angle.2 = fmul double %angle1, 5.000000e-01, !dbg !70 ; [#uses=1 type=double] [debug line = 164:27]
  call void @llvm.dbg.value(metadata !{double %angle.2}, i64 0, metadata !33), !dbg !70 ; [debug line = 164:27] [debug variable = angle]
  br label %.backedge.backedge, !dbg !70          ; [debug line = 164:27]

.backedge.backedge:                               ; preds = %7, %6
  %angle.0.be = phi double [ %angle.2, %6 ], [ %angle.3, %7 ] ; [#uses=1 type=double]
  br label %.backedge

; <label>:7                                       ; preds = %._crit_edge
  %tmp.42 = sext i32 %j.1 to i64, !dbg !71        ; [#uses=1 type=i64] [debug line = 165:14]
  %angles_pos.addr = getelementptr inbounds [60 x double]* @angles_pos, i64 0, i64 %tmp.42, !dbg !71 ; [#uses=1 type=double*] [debug line = 165:14]
  %angle.3 = load double* %angles_pos.addr, align 8, !dbg !71 ; [#uses=2 type=double] [debug line = 165:14]
  call void (...)* @_ssdm_SpecKeepArrayLoad(double %angle.3) nounwind
  call void @llvm.dbg.value(metadata !{double %angle.3}, i64 0, metadata !33), !dbg !71 ; [debug line = 165:14] [debug variable = angle]
  br label %.backedge.backedge

; <label>:8                                       ; preds = %.backedge
  %ch.load.1 = load double* %ch, align 8, !dbg !72 ; [#uses=1 type=double] [debug line = 173:5]
  %tmp.19 = fmul double %sign_factor, %ch.load.1, !dbg !72 ; [#uses=1 type=double] [debug line = 173:5]
  store double %tmp.19, double* %ch, align 8, !dbg !72 ; [debug line = 173:5]
  %sh.load = load double* %sh, align 8, !dbg !73  ; [#uses=1 type=double] [debug line = 174:5]
  %tmp.20 = fmul double %sign_factor, %sh.load, !dbg !73 ; [#uses=1 type=double] [debug line = 174:5]
  store double %tmp.20, double* %sh, align 8, !dbg !73 ; [debug line = 174:5]
  ret void, !dbg !74                              ; [debug line = 176:5]
}

; [#uses=1]
declare void @_ssdm_op_SpecTopModule(...)

; [#uses=0]
declare i32 @_ssdm_op_SpecLoopName(...)

; [#uses=3]
declare void @_ssdm_SpecKeepArrayLoad(...)

!llvm.dbg.cu = !{!0}
!hls.encrypted.func = !{}

!0 = metadata !{i32 786449, i32 0, i32 4, metadata !"C:/Users/Stavros/Imperial/2ndTerm/ADSD/Part2/git_files/CORDIC_design/cordic_hls/solution1/.autopilot/db/cordic.pragma.2.cpp", metadata !"C:\5CUsers\5CStavros\5CImperial\5C2ndTerm\5CADSD\5CPart2\5Cgit_files\5CCORDIC_design", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !1} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5}
!5 = metadata !{i32 786478, i32 0, metadata !6, metadata !"coshsinh_cordic", metadata !"coshsinh_cordic", metadata !"_Z15coshsinh_cordicdiiPdS_", metadata !6, i32 3, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (double, i32, i32, double*, double*)* @coshsinh_cordic, null, null, metadata !12, i32 3} ; [ DW_TAG_subprogram ]
!6 = metadata !{i32 786473, metadata !"cordic.cpp", metadata !"C:\5CUsers\5CStavros\5CImperial\5C2ndTerm\5CADSD\5CPart2\5Cgit_files\5CCORDIC_design", null} ; [ DW_TAG_file_type ]
!7 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !8, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!8 = metadata !{null, metadata !9, metadata !10, metadata !10, metadata !11, metadata !11}
!9 = metadata !{i32 786468, null, metadata !"double", null, i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ]
!10 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!11 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ]
!12 = metadata !{metadata !13}
!13 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!14 = metadata !{i32 786689, metadata !5, metadata !"beta", metadata !6, i32 16777219, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!15 = metadata !{i32 3, i32 31, metadata !5, null}
!16 = metadata !{i32 786689, metadata !5, metadata !"m", metadata !6, i32 33554435, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!17 = metadata !{i32 3, i32 41, metadata !5, null}
!18 = metadata !{i32 786689, metadata !5, metadata !"n", metadata !6, i32 50331651, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!19 = metadata !{i32 3, i32 48, metadata !5, null}
!20 = metadata !{i32 786689, metadata !5, metadata !"ch", metadata !6, i32 67108867, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!21 = metadata !{i32 3, i32 59, metadata !5, null}
!22 = metadata !{i32 786689, metadata !5, metadata !"sh", metadata !6, i32 83886083, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!23 = metadata !{i32 3, i32 71, metadata !5, null}
!24 = metadata !{i32 102, i32 5, metadata !25, null}
!25 = metadata !{i32 786443, metadata !5, i32 3, i32 76, metadata !6, i32 0} ; [ DW_TAG_lexical_block ]
!26 = metadata !{i32 105, i32 5, metadata !25, null}
!27 = metadata !{i32 106, i32 5, metadata !25, null}
!28 = metadata !{i32 110, i32 11, metadata !29, null}
!29 = metadata !{i32 786443, metadata !25, i32 110, i32 5, metadata !6, i32 1} ; [ DW_TAG_lexical_block ]
!30 = metadata !{i32 786688, metadata !25, metadata !"j", metadata !6, i32 81, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!31 = metadata !{i32 112, i32 3, metadata !32, null}
!32 = metadata !{i32 786443, metadata !29, i32 110, i32 33, metadata !6, i32 2} ; [ DW_TAG_lexical_block ]
!33 = metadata !{i32 786688, metadata !25, metadata !"angle", metadata !6, i32 80, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!34 = metadata !{i32 114, i32 3, metadata !32, null}
!35 = metadata !{i32 117, i32 9, metadata !32, null}
!36 = metadata !{i32 786688, metadata !25, metadata !"factor", metadata !6, i32 80, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!37 = metadata !{i32 119, i32 9, metadata !32, null}
!38 = metadata !{i32 786688, metadata !25, metadata !"c2", metadata !6, i32 80, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!39 = metadata !{i32 120, i32 9, metadata !32, null}
!40 = metadata !{i32 786688, metadata !25, metadata !"s2", metadata !6, i32 80, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!41 = metadata !{i32 122, i32 9, metadata !32, null}
!42 = metadata !{i32 123, i32 9, metadata !32, null}
!43 = metadata !{i32 125, i32 9, metadata !32, null}
!44 = metadata !{i32 126, i32 3, metadata !32, null}
!45 = metadata !{i32 786688, metadata !25, metadata !"poweroftwo", metadata !6, i32 80, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!46 = metadata !{i32 110, i32 27, metadata !29, null}
!47 = metadata !{i32 131, i32 8, metadata !48, null}
!48 = metadata !{i32 786443, metadata !25, i32 131, i32 2, metadata !6, i32 3} ; [ DW_TAG_lexical_block ]
!49 = metadata !{i32 133, i32 9, metadata !50, null}
!50 = metadata !{i32 786443, metadata !48, i32 131, i32 29, metadata !6, i32 4} ; [ DW_TAG_lexical_block ]
!51 = metadata !{i32 136, i32 9, metadata !50, null}
!52 = metadata !{i32 138, i32 9, metadata !50, null}
!53 = metadata !{i32 139, i32 9, metadata !50, null}
!54 = metadata !{i32 141, i32 9, metadata !50, null}
!55 = metadata !{i32 142, i32 9, metadata !50, null}
!56 = metadata !{i32 144, i32 9, metadata !50, null}
!57 = metadata !{i32 146, i32 9, metadata !50, null}
!58 = metadata !{i32 148, i32 13, metadata !59, null}
!59 = metadata !{i32 786443, metadata !50, i32 146, i32 43, metadata !6, i32 5} ; [ DW_TAG_lexical_block ]
!60 = metadata !{i32 151, i32 13, metadata !59, null}
!61 = metadata !{i32 153, i32 13, metadata !59, null}
!62 = metadata !{i32 154, i32 13, metadata !59, null}
!63 = metadata !{i32 156, i32 13, metadata !59, null}
!64 = metadata !{i32 157, i32 13, metadata !59, null}
!65 = metadata !{i32 159, i32 13, metadata !59, null}
!66 = metadata !{i32 160, i32 9, metadata !59, null}
!67 = metadata !{i32 162, i32 9, metadata !50, null}
!68 = metadata !{i32 164, i32 9, metadata !50, null}
!69 = metadata !{i32 131, i32 23, metadata !48, null}
!70 = metadata !{i32 164, i32 27, metadata !50, null}
!71 = metadata !{i32 165, i32 14, metadata !50, null}
!72 = metadata !{i32 173, i32 5, metadata !25, null}
!73 = metadata !{i32 174, i32 5, metadata !25, null}
!74 = metadata !{i32 176, i32 5, metadata !25, null}
