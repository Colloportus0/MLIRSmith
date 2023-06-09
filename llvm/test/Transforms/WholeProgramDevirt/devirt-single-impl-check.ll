; RUN: opt -S -passes=wholeprogramdevirt -whole-program-visibility -pass-remarks=wholeprogramdevirt %s 2>&1 | FileCheck %s

target datalayout = "e-p:64:64"
target triple = "x86_64-unknown-linux-gnu"

; CHECK: remark: <unknown>:0:0: single-impl: devirtualized a call to vf
; CHECK: remark: <unknown>:0:0: single-impl: devirtualized a call to vf
; CHECK: remark: <unknown>:0:0: devirtualized vf
; CHECK-NOT: devirtualized

@vt1 = constant [1 x ptr] [ptr @vf], !type !0
@vt2 = constant [1 x ptr] [ptr @vf], !type !0

define void @vf(ptr %this) {
  ret void
}

; CHECK: define void @call
define void @call(ptr %obj) {
  %vtable = load ptr, ptr %obj
  %pair = call {ptr, i1} @llvm.type.checked.load(ptr %vtable, i32 0, metadata !"typeid")
  %fptr = extractvalue {ptr, i1} %pair, 0
  %p = extractvalue {ptr, i1} %pair, 1
  ; CHECK: br i1 true,
  br i1 %p, label %cont, label %trap

cont:
  ; CHECK: call void @vf(
  call void %fptr(ptr %obj)
  ret void

trap:
  call void @llvm.trap()
  unreachable
}

@vt3 = private unnamed_addr constant [1 x i32] [
  i32 trunc (i64 sub (i64 ptrtoint (ptr dso_local_equivalent @vf to i64), i64 ptrtoint (ptr @vt3 to i64)) to i32)
], align 4, !type !1

; CHECK: define void @call2
define void @call2(ptr %obj) {
  %vtable = load ptr, ptr %obj
  %pair = call {ptr, i1} @llvm.type.checked.load(ptr %vtable, i32 0, metadata !"typeid2")
  %fptr = extractvalue {ptr, i1} %pair, 0
  %p = extractvalue {ptr, i1} %pair, 1
  ; CHECK: br i1 true,
  br i1 %p, label %cont, label %trap

cont:
  ; CHECK: call void @vf(
  call void %fptr(ptr %obj)
  ret void

trap:
  call void @llvm.trap()
  unreachable
}

declare {ptr, i1} @llvm.type.checked.load(ptr, i32, metadata)
declare void @llvm.trap()

!0 = !{i32 0, !"typeid"}
!1 = !{i32 0, !"typeid2"}
