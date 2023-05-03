; NOTE: Assertions have been autogenerated by utils/update_test_checks.py UTC_ARGS: --function-signature
; RUN: opt -passes=inline -enable-noalias-to-md-conversion -S < %s | FileCheck %s
; RUN: opt -aa-pipeline=basic-aa -passes=inline -enable-noalias-to-md-conversion -S < %s | FileCheck %s
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

declare void @llvm.memcpy.p0.p0.i64(ptr nocapture, ptr nocapture readonly, i64, i1) #0
declare void @hey() #0

define void @hello(ptr noalias nocapture %a, ptr noalias nocapture readonly %c, ptr nocapture %b) #1 {
; CHECK-LABEL: define {{[^@]+}}@hello
; CHECK-SAME: (ptr noalias nocapture [[A:%.*]], ptr noalias nocapture readonly [[C:%.*]], ptr nocapture [[B:%.*]]) #[[ATTR2:[0-9]+]] {
; CHECK-NEXT:  entry:
; CHECK-NEXT:    [[L:%.*]] = alloca i8, i32 512, align 1
; CHECK-NEXT:    call void @llvm.memcpy.p0.p0.i64(ptr align 16 [[A]], ptr align 16 [[B]], i64 16, i1 false)
; CHECK-NEXT:    call void @llvm.memcpy.p0.p0.i64(ptr align 16 [[B]], ptr align 16 [[C]], i64 16, i1 false)
; CHECK-NEXT:    call void @llvm.memcpy.p0.p0.i64(ptr align 16 [[A]], ptr align 16 [[C]], i64 16, i1 false)
; CHECK-NEXT:    call void @hey()
; CHECK-NEXT:    call void @llvm.memcpy.p0.p0.i64(ptr align 16 [[L]], ptr align 16 [[C]], i64 16, i1 false)
; CHECK-NEXT:    ret void
;
entry:
  %l = alloca i8, i32 512, align 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %a, ptr align 16 %b, i64 16, i1 0)
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %b, ptr align 16 %c, i64 16, i1 0)
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %a, ptr align 16 %c, i64 16, i1 0)
  call void @hey()
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %l, ptr align 16 %c, i64 16, i1 0)
  ret void
}

define void @foo(ptr nocapture %a, ptr nocapture readonly %c, ptr nocapture %b) #2 {
; CHECK-LABEL: define {{[^@]+}}@foo
; CHECK-SAME: (ptr nocapture [[A:%.*]], ptr nocapture readonly [[C:%.*]], ptr nocapture [[B:%.*]]) #[[ATTR3:[0-9]+]] {
; CHECK-NEXT:  entry:
; CHECK-NEXT:    [[L_I:%.*]] = alloca i8, i32 512, align 1
; CHECK-NEXT:    call void @llvm.experimental.noalias.scope.decl(metadata [[META0:![0-9]+]])
; CHECK-NEXT:    call void @llvm.experimental.noalias.scope.decl(metadata [[META3:![0-9]+]])
; CHECK-NEXT:    call void @llvm.lifetime.start.p0(i64 512, ptr [[L_I]])
; CHECK-NEXT:    call void @llvm.memcpy.p0.p0.i64(ptr align 16 [[A]], ptr align 16 [[B]], i64 16, i1 false), !noalias !3
; CHECK-NEXT:    call void @llvm.memcpy.p0.p0.i64(ptr align 16 [[B]], ptr align 16 [[C]], i64 16, i1 false), !noalias !0
; CHECK-NEXT:    call void @llvm.memcpy.p0.p0.i64(ptr align 16 [[A]], ptr align 16 [[C]], i64 16, i1 false), !alias.scope !5
; CHECK-NEXT:    call void @hey(), !noalias !5
; CHECK-NEXT:    call void @llvm.memcpy.p0.p0.i64(ptr align 16 [[L_I]], ptr align 16 [[C]], i64 16, i1 false), !noalias !0
; CHECK-NEXT:    call void @llvm.lifetime.end.p0(i64 512, ptr [[L_I]])
; CHECK-NEXT:    ret void
;
entry:
  tail call void @hello(ptr %a, ptr %c, ptr %b)
  ret void
}

define void @hello_cs(ptr nocapture %a, ptr nocapture readonly %c, ptr nocapture %b) #1 {
; CHECK-LABEL: define {{[^@]+}}@hello_cs
; CHECK-SAME: (ptr nocapture [[A:%.*]], ptr nocapture readonly [[C:%.*]], ptr nocapture [[B:%.*]]) #[[ATTR2]] {
; CHECK-NEXT:  entry:
; CHECK-NEXT:    [[L:%.*]] = alloca i8, i32 512, align 1
; CHECK-NEXT:    call void @llvm.memcpy.p0.p0.i64(ptr align 16 [[A]], ptr align 16 [[B]], i64 16, i1 false)
; CHECK-NEXT:    call void @llvm.memcpy.p0.p0.i64(ptr align 16 [[B]], ptr align 16 [[C]], i64 16, i1 false)
; CHECK-NEXT:    call void @llvm.memcpy.p0.p0.i64(ptr align 16 [[A]], ptr align 16 [[C]], i64 16, i1 false)
; CHECK-NEXT:    call void @hey()
; CHECK-NEXT:    call void @llvm.memcpy.p0.p0.i64(ptr align 16 [[L]], ptr align 16 [[C]], i64 16, i1 false)
; CHECK-NEXT:    ret void
;
entry:
  %l = alloca i8, i32 512, align 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %a, ptr align 16 %b, i64 16, i1 0)
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %b, ptr align 16 %c, i64 16, i1 0)
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %a, ptr align 16 %c, i64 16, i1 0)
  call void @hey()
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %l, ptr align 16 %c, i64 16, i1 0)
  ret void
}

define void @foo_cs(ptr nocapture %a, ptr nocapture readonly %c, ptr nocapture %b) #2 {
; CHECK-LABEL: define {{[^@]+}}@foo_cs
; CHECK-SAME: (ptr nocapture [[A:%.*]], ptr nocapture readonly [[C:%.*]], ptr nocapture [[B:%.*]]) #[[ATTR3]] {
; CHECK-NEXT:  entry:
; CHECK-NEXT:    [[L_I:%.*]] = alloca i8, i32 512, align 1
; CHECK-NEXT:    call void @llvm.experimental.noalias.scope.decl(metadata [[META6:![0-9]+]])
; CHECK-NEXT:    call void @llvm.experimental.noalias.scope.decl(metadata [[META9:![0-9]+]])
; CHECK-NEXT:    call void @llvm.lifetime.start.p0(i64 512, ptr [[L_I]])
; CHECK-NEXT:    call void @llvm.memcpy.p0.p0.i64(ptr align 16 [[A]], ptr align 16 [[B]], i64 16, i1 false), !noalias !9
; CHECK-NEXT:    call void @llvm.memcpy.p0.p0.i64(ptr align 16 [[B]], ptr align 16 [[C]], i64 16, i1 false), !noalias !6
; CHECK-NEXT:    call void @llvm.memcpy.p0.p0.i64(ptr align 16 [[A]], ptr align 16 [[C]], i64 16, i1 false), !alias.scope !11
; CHECK-NEXT:    call void @hey(), !noalias !11
; CHECK-NEXT:    call void @llvm.memcpy.p0.p0.i64(ptr align 16 [[L_I]], ptr align 16 [[C]], i64 16, i1 false), !noalias !6
; CHECK-NEXT:    call void @llvm.lifetime.end.p0(i64 512, ptr [[L_I]])
; CHECK-NEXT:    ret void
;
entry:
  tail call void @hello_cs(ptr noalias %a, ptr noalias %c, ptr %b)
  ret void
}

attributes #0 = { argmemonly nofree nosync nounwind willreturn }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable }

; CHECK: !0 = !{!1}
; CHECK: !1 = distinct !{!1, !2, !"hello: %a"}
; CHECK: !2 = distinct !{!2, !"hello"}
; CHECK: !3 = !{!4}
; CHECK: !4 = distinct !{!4, !2, !"hello: %c"}
; CHECK: !5 = !{!1, !4}

; CHECK: !6 = !{!7}
; CHECK: !7 = distinct !{!7, !8, !"hello_cs: %a"}
; CHECK: !8 = distinct !{!8, !"hello_cs"}
; CHECK: !9 = !{!10}
; CHECK: !10 = distinct !{!10, !8, !"hello_cs: %c"}
; CHECK: !11 = !{!7, !10}