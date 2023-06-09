; NOTE: Assertions have been autogenerated by utils/update_analyze_test_checks.py
; RUN: opt "-passes=print<scalar-evolution>" -disable-output < %s 2>&1 | FileCheck %s

define void @a(ptr %p) {
; CHECK-LABEL: 'a'
; CHECK-NEXT:  Classifying expressions for: @a
; CHECK-NEXT:    %1 = getelementptr <vscale x 4 x i32>, ptr null, i32 3
; CHECK-NEXT:    --> ((48 * vscale) + null) U: [0,-15) S: [-9223372036854775808,9223372036854775793)
; CHECK-NEXT:    %2 = getelementptr <vscale x 1 x i64>, ptr %p, i32 1
; CHECK-NEXT:    --> ((8 * vscale) + %p) U: full-set S: full-set
; CHECK-NEXT:  Determining loop execution counts for: @a
;
  getelementptr <vscale x 4 x i32>, ptr null, i32 3
  getelementptr <vscale x 1 x i64>, ptr %p, i32 1
  ret void
}
