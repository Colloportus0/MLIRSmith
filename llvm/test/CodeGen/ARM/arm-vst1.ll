; NOTE: Assertions have been autogenerated by utils/update_llc_test_checks.py
; RUN: llc < %s -mtriple=armv8-linux-gnueabi -verify-machineinstrs -asm-verbose=false | FileCheck %s

; %struct.uint16x4x2_t = type { <4 x i16>, <4 x i16> }
; %struct.uint16x4x3_t = type { <4 x i16>, <4 x i16>, <4 x i16> }
; %struct.uint16x4x4_t = type { <4 x i16>, <4 x i16>, <4 x i16>, <4 x i16> }

; %struct.uint32x2x2_t = type { <2 x i32>, <2 x i32> }
; %struct.uint32x2x3_t = type { <2 x i32>, <2 x i32>, <2 x i32> }
; %struct.uint32x2x4_t = type { <2 x i32>, <2 x i32>, <2 x i32>, <2 x i32> }

; %struct.uint64x1x2_t = type { <1 x i64>, <1 x i64> }
; %struct.uint64x1x3_t = type { <1 x i64>, <1 x i64>, <1 x i64> }
; %struct.uint64x1x4_t = type { <1 x i64>, <1 x i64>, <1 x i64>, <1 x i64> }

; %struct.uint8x8x2_t = type { <8 x i8>, <8 x i8> }
; %struct.uint8x8x3_t = type { <8 x i8>, <8 x i8>, <8 x i8> }
; %struct.uint8x8x4_t = type { <8 x i8>, <8 x i8>, <8 x i8>, <8 x i8> }

; %struct.uint16x8x2_t = type { <8 x i16>, <8 x i16> }
; %struct.uint16x8x3_t = type { <8 x i16>, <8 x i16>, <8 x i16> }
; %struct.uint16x8x4_t = type { <8 x i16>, <8 x i16>, <8 x i16>, <8 x i16> }

; %struct.uint32x4x2_t = type { <4 x i32>, <4 x i32> }
; %struct.uint32x4x3_t = type { <4 x i32>, <4 x i32>, <4 x i32> }
; %struct.uint32x4x4_t = type { <4 x i32>, <4 x i32>, <4 x i32>, <4 x i32> }

; %struct.uint64x2x2_t = type { <2 x i64>, <2 x i64> }
; %struct.uint64x2x3_t = type { <2 x i64>, <2 x i64>, <2 x i64> }
; %struct.uint64x2x4_t = type { <2 x i64>, <2 x i64>, <2 x i64>, <2 x i64> }

; %struct.uint8x16x2_t = type { <16 x i8>, <16 x i8> }
; %struct.uint8x16x3_t = type { <16 x i8>, <16 x i8>, <16 x i8> }
; %struct.uint8x16x4_t = type { <16 x i8>, <16 x i8>, <16 x i8>, <16 x i8> }

%struct.uint16x4x2_t = type { [2 x <4 x i16>] }
%struct.uint16x4x3_t = type { [3 x <4 x i16>] }
%struct.uint16x4x4_t = type { [4 x <4 x i16>] }
%struct.uint32x2x2_t = type { [2 x <2 x i32>] }
%struct.uint32x2x3_t = type { [3 x <2 x i32>] }
%struct.uint32x2x4_t = type { [4 x <2 x i32>] }
%struct.uint64x1x2_t = type { [2 x <1 x i64>] }
%struct.uint64x1x3_t = type { [3 x <1 x i64>] }
%struct.uint64x1x4_t = type { [4 x <1 x i64>] }
%struct.uint8x8x2_t = type { [2 x <8 x i8>] }
%struct.uint8x8x3_t = type { [3 x <8 x i8>] }
%struct.uint8x8x4_t = type { [4 x <8 x i8>] }
%struct.uint16x8x2_t = type { [2 x <8 x i16>] }
%struct.uint16x8x3_t = type { [3 x <8 x i16>] }
%struct.uint16x8x4_t = type { [4 x <8 x i16>] }
%struct.uint32x4x2_t = type { [2 x <4 x i32>] }
%struct.uint32x4x3_t = type { [3 x <4 x i32>] }
%struct.uint32x4x4_t = type { [4 x <4 x i32>] }
%struct.uint64x2x2_t = type { [2 x <2 x i64>] }
%struct.uint64x2x3_t = type { [3 x <2 x i64>] }
%struct.uint64x2x4_t = type { [4 x <2 x i64>] }
%struct.uint8x16x2_t = type { [2 x <16 x i8>] }
%struct.uint8x16x3_t = type { [3 x <16 x i8>] }
%struct.uint8x16x4_t = type { [4 x <16 x i8>] }

declare void @llvm.arm.neon.vst1x2.p0.v4i16(ptr nocapture, <4 x i16>, <4 x i16>) argmemonly nounwind
declare void @llvm.arm.neon.vst1x3.p0.v4i16(ptr nocapture, <4 x i16>, <4 x i16>, <4 x i16>) argmemonly nounwind
declare void @llvm.arm.neon.vst1x4.p0.v4i16(ptr nocapture, <4 x i16>, <4 x i16>, <4 x i16>, <4 x i16>) argmemonly nounwind

declare void @llvm.arm.neon.vst1x2.p0.v2i32(ptr nocapture, <2 x i32>, <2 x i32>) argmemonly nounwind
declare void @llvm.arm.neon.vst1x3.p0.v2i32(ptr nocapture, <2 x i32>, <2 x i32>, <2 x i32>) argmemonly nounwind
declare void @llvm.arm.neon.vst1x4.p0.v2i32(ptr nocapture, <2 x i32>, <2 x i32>, <2 x i32>, <2 x i32>) argmemonly nounwind

declare void @llvm.arm.neon.vst1x2.p0.v1i64(ptr nocapture, <1 x i64>, <1 x i64>) argmemonly nounwind
declare void @llvm.arm.neon.vst1x3.p0.v1i64(ptr nocapture, <1 x i64>, <1 x i64>, <1 x i64>) argmemonly nounwind
declare void @llvm.arm.neon.vst1x4.p0.v1i64(ptr nocapture, <1 x i64>, <1 x i64>, <1 x i64>, <1 x i64>) argmemonly nounwind

declare void @llvm.arm.neon.vst1x2.p0.v8i8(ptr nocapture, <8 x i8>, <8 x i8>) argmemonly nounwind
declare void @llvm.arm.neon.vst1x3.p0.v8i8(ptr nocapture, <8 x i8>, <8 x i8>, <8 x i8>) argmemonly nounwind
declare void @llvm.arm.neon.vst1x4.p0.v8i8(ptr nocapture, <8 x i8>, <8 x i8>, <8 x i8>, <8 x i8>) argmemonly nounwind

declare void @llvm.arm.neon.vst1x2.p0.v8i16(ptr nocapture, <8 x i16>, <8 x i16>) argmemonly nounwind
declare void @llvm.arm.neon.vst1x3.p0.v8i16(ptr nocapture, <8 x i16>, <8 x i16>, <8 x i16>) argmemonly nounwind
declare void @llvm.arm.neon.vst1x4.p0.v8i16(ptr nocapture, <8 x i16>, <8 x i16>, <8 x i16>, <8 x i16>) argmemonly nounwind

declare void @llvm.arm.neon.vst1x2.p0.v4i32(ptr nocapture, <4 x i32>, <4 x i32>) argmemonly nounwind
declare void @llvm.arm.neon.vst1x3.p0.v4i32(ptr nocapture, <4 x i32>, <4 x i32>, <4 x i32>) argmemonly nounwind
declare void @llvm.arm.neon.vst1x4.p0.v4i32(ptr nocapture, <4 x i32>, <4 x i32>, <4 x i32>, <4 x i32>) argmemonly nounwind

declare void @llvm.arm.neon.vst1x2.p0.v2i64(ptr nocapture, <2 x i64>, <2 x i64>) argmemonly nounwind
declare void @llvm.arm.neon.vst1x3.p0.v2i64(ptr nocapture, <2 x i64>, <2 x i64>, <2 x i64>) argmemonly nounwind
declare void @llvm.arm.neon.vst1x4.p0.v2i64(ptr nocapture, <2 x i64>, <2 x i64>, <2 x i64>, <2 x i64>) argmemonly nounwind

declare void @llvm.arm.neon.vst1x2.p0.v16i8(ptr nocapture, <16 x i8>, <16 x i8>) argmemonly nounwind
declare void @llvm.arm.neon.vst1x3.p0.v16i8(ptr nocapture, <16 x i8>, <16 x i8>, <16 x i8>) argmemonly nounwind
declare void @llvm.arm.neon.vst1x4.p0.v16i8(ptr nocapture, <16 x i8>, <16 x i8>, <16 x i8>, <16 x i8>) argmemonly nounwind

define arm_aapcs_vfpcc void @test_vst1_u16_x2(ptr %a, %struct.uint16x4x2_t %b) nounwind {
; CHECK-LABEL: test_vst1_u16_x2:
; CHECK:         vst1.16 {d0, d1}, [r0:64]
; CHECK-NEXT:    bx lr
entry:
  %b0 = extractvalue %struct.uint16x4x2_t %b, 0, 0
  %b1 = extractvalue %struct.uint16x4x2_t %b, 0, 1
  tail call void @llvm.arm.neon.vst1x2.p0.v4i16(ptr %a, <4 x i16> %b0, <4 x i16> %b1)
  ret void
}

define arm_aapcs_vfpcc void @test_vst1_u16_x3(ptr %a, %struct.uint16x4x3_t %b) nounwind {
; CHECK-LABEL: test_vst1_u16_x3:
; CHECK:         vst1.16 {d0, d1, d2}, [r0:64]
; CHECK-NEXT:    bx lr
entry:
  %b0 = extractvalue %struct.uint16x4x3_t %b, 0, 0
  %b1 = extractvalue %struct.uint16x4x3_t %b, 0, 1
  %b2 = extractvalue %struct.uint16x4x3_t %b, 0, 2
  tail call void @llvm.arm.neon.vst1x3.p0.v4i16(ptr %a, <4 x i16> %b0, <4 x i16> %b1, <4 x i16> %b2)
  ret void
}

define arm_aapcs_vfpcc void @test_vst1_u16_x4(ptr %a, %struct.uint16x4x4_t %b) nounwind {
; CHECK-LABEL: test_vst1_u16_x4:
; CHECK:         vst1.16 {d0, d1, d2, d3}, [r0:256]
; CHECK-NEXT:    bx lr
entry:
  %b0 = extractvalue %struct.uint16x4x4_t %b, 0, 0
  %b1 = extractvalue %struct.uint16x4x4_t %b, 0, 1
  %b2 = extractvalue %struct.uint16x4x4_t %b, 0, 2
  %b3 = extractvalue %struct.uint16x4x4_t %b, 0, 3
  tail call void @llvm.arm.neon.vst1x4.p0.v4i16(ptr %a, <4 x i16> %b0, <4 x i16> %b1, <4 x i16> %b2, <4 x i16> %b3)
  ret void
}

define arm_aapcs_vfpcc void @test_vst1_u32_x2(ptr %a, %struct.uint32x2x2_t %b) nounwind {
; CHECK-LABEL: test_vst1_u32_x2:
; CHECK:         vst1.32 {d0, d1}, [r0:64]
; CHECK-NEXT:    bx lr
entry:
  %b0 = extractvalue %struct.uint32x2x2_t %b, 0, 0
  %b1 = extractvalue %struct.uint32x2x2_t %b, 0, 1
  tail call void @llvm.arm.neon.vst1x2.p0.v2i32(ptr %a, <2 x i32> %b0, <2 x i32> %b1)
  ret void
}

define arm_aapcs_vfpcc void @test_vst1_u32_x3(ptr %a, %struct.uint32x2x3_t %b) nounwind {
; CHECK-LABEL: test_vst1_u32_x3:
; CHECK:         vst1.32 {d0, d1, d2}, [r0:64]
; CHECK-NEXT:    bx lr
entry:
  %b0 = extractvalue %struct.uint32x2x3_t %b, 0, 0
  %b1 = extractvalue %struct.uint32x2x3_t %b, 0, 1
  %b2 = extractvalue %struct.uint32x2x3_t %b, 0, 2
  tail call void @llvm.arm.neon.vst1x3.p0.v2i32(ptr %a, <2 x i32> %b0, <2 x i32> %b1, <2 x i32> %b2)
  ret void
}

define arm_aapcs_vfpcc void @test_vst1_u32_x4(ptr %a, %struct.uint32x2x4_t %b) nounwind {
; CHECK-LABEL: test_vst1_u32_x4:
; CHECK:         vst1.32 {d0, d1, d2, d3}, [r0:256]
; CHECK-NEXT:    bx lr
entry:
  %b0 = extractvalue %struct.uint32x2x4_t %b, 0, 0
  %b1 = extractvalue %struct.uint32x2x4_t %b, 0, 1
  %b2 = extractvalue %struct.uint32x2x4_t %b, 0, 2
  %b3 = extractvalue %struct.uint32x2x4_t %b, 0, 3
  tail call void @llvm.arm.neon.vst1x4.p0.v2i32(ptr %a, <2 x i32> %b0, <2 x i32> %b1, <2 x i32> %b2, <2 x i32> %b3)
  ret void
}

define arm_aapcs_vfpcc void @test_vst1_u64_x2(ptr %a, %struct.uint64x1x2_t %b) nounwind {
; CHECK-LABEL: test_vst1_u64_x2:
; CHECK:         vst1.64 {d0, d1}, [r0:64]
; CHECK-NEXT:    bx lr
entry:
  %b0 = extractvalue %struct.uint64x1x2_t %b, 0, 0
  %b1 = extractvalue %struct.uint64x1x2_t %b, 0, 1
  tail call void @llvm.arm.neon.vst1x2.p0.v1i64(ptr %a, <1 x i64> %b0, <1 x i64> %b1)
  ret void
}

define arm_aapcs_vfpcc void @test_vst1_u64_x3(ptr %a, %struct.uint64x1x3_t %b) nounwind {
; CHECK-LABEL: test_vst1_u64_x3:
; CHECK:         vst1.64 {d0, d1, d2}, [r0:64]
; CHECK-NEXT:    bx lr
entry:
  %b0 = extractvalue %struct.uint64x1x3_t %b, 0, 0
  %b1 = extractvalue %struct.uint64x1x3_t %b, 0, 1
  %b2 = extractvalue %struct.uint64x1x3_t %b, 0, 2
  tail call void @llvm.arm.neon.vst1x3.p0.v1i64(ptr %a, <1 x i64> %b0, <1 x i64> %b1, <1 x i64> %b2)
  ret void
}

define arm_aapcs_vfpcc void @test_vst1_u64_x4(ptr %a, %struct.uint64x1x4_t %b) nounwind {
; CHECK-LABEL: test_vst1_u64_x4:
; CHECK:         vst1.64 {d0, d1, d2, d3}, [r0:256]
; CHECK-NEXT:    bx lr
entry:
  %b0 = extractvalue %struct.uint64x1x4_t %b, 0, 0
  %b1 = extractvalue %struct.uint64x1x4_t %b, 0, 1
  %b2 = extractvalue %struct.uint64x1x4_t %b, 0, 2
  %b3 = extractvalue %struct.uint64x1x4_t %b, 0, 3
  tail call void @llvm.arm.neon.vst1x4.p0.v1i64(ptr %a, <1 x i64> %b0, <1 x i64> %b1, <1 x i64> %b2, <1 x i64> %b3)
  ret void
}

define arm_aapcs_vfpcc void @test_vst1_u8_x2(ptr %a, %struct.uint8x8x2_t %b) nounwind {
; CHECK-LABEL: test_vst1_u8_x2:
; CHECK:         vst1.8 {d0, d1}, [r0:64]
; CHECK-NEXT:    bx lr
entry:
  %b0 = extractvalue %struct.uint8x8x2_t %b, 0, 0
  %b1 = extractvalue %struct.uint8x8x2_t %b, 0, 1
  tail call void @llvm.arm.neon.vst1x2.p0.v8i8(ptr %a, <8 x i8> %b0, <8 x i8> %b1)
  ret void
}

define arm_aapcs_vfpcc void @test_vst1_u8_x3(ptr %a, %struct.uint8x8x3_t %b) nounwind {
; CHECK-LABEL: test_vst1_u8_x3:
; CHECK:         vst1.8 {d0, d1, d2}, [r0:64]
; CHECK-NEXT:    bx lr
entry:
  %b0 = extractvalue %struct.uint8x8x3_t %b, 0, 0
  %b1 = extractvalue %struct.uint8x8x3_t %b, 0, 1
  %b2 = extractvalue %struct.uint8x8x3_t %b, 0, 2
  tail call void @llvm.arm.neon.vst1x3.p0.v8i8(ptr %a, <8 x i8> %b0, <8 x i8> %b1, <8 x i8> %b2)
  ret void
}

define arm_aapcs_vfpcc void @test_vst1_u8_x4(ptr %a, %struct.uint8x8x4_t %b) nounwind {
; CHECK-LABEL: test_vst1_u8_x4:
; CHECK:         vst1.8 {d0, d1, d2, d3}, [r0:256]
; CHECK-NEXT:    bx lr
entry:
  %b0 = extractvalue %struct.uint8x8x4_t %b, 0, 0
  %b1 = extractvalue %struct.uint8x8x4_t %b, 0, 1
  %b2 = extractvalue %struct.uint8x8x4_t %b, 0, 2
  %b3 = extractvalue %struct.uint8x8x4_t %b, 0, 3
  tail call void @llvm.arm.neon.vst1x4.p0.v8i8(ptr %a, <8 x i8> %b0, <8 x i8> %b1, <8 x i8> %b2, <8 x i8> %b3)
  ret void
}

define arm_aapcs_vfpcc void @test_vst1q_u16_x2(ptr %a, %struct.uint16x8x2_t %b) nounwind {
; CHECK-LABEL: test_vst1q_u16_x2:
; CHECK:         vst1.16 {d0, d1, d2, d3}, [r0:256]
; CHECK-NEXT:    bx lr
entry:
  %b0 = extractvalue %struct.uint16x8x2_t %b, 0, 0
  %b1 = extractvalue %struct.uint16x8x2_t %b, 0, 1
  tail call void @llvm.arm.neon.vst1x2.p0.v8i16(ptr %a, <8 x i16> %b0, <8 x i16> %b1)
  ret void
}

define arm_aapcs_vfpcc void @test_vst1q_u16_x3(ptr %a, %struct.uint16x8x3_t %b) nounwind {
; CHECK-LABEL: test_vst1q_u16_x3:
; CHECK:         vst1.16 {d0, d1, d2}, [r0:64]!
; CHECK-NEXT:    vst1.16 {d3, d4, d5}, [r0:64]
; CHECK-NEXT:    bx lr
entry:
  %b0 = extractvalue %struct.uint16x8x3_t %b, 0, 0
  %b1 = extractvalue %struct.uint16x8x3_t %b, 0, 1
  %b2 = extractvalue %struct.uint16x8x3_t %b, 0, 2
  tail call void @llvm.arm.neon.vst1x3.p0.v8i16(ptr %a, <8 x i16> %b0, <8 x i16> %b1, <8 x i16> %b2)
  ret void
}

define arm_aapcs_vfpcc void @test_vst1q_u16_x4(ptr %a, %struct.uint16x8x4_t %b) nounwind {
; CHECK-LABEL: test_vst1q_u16_x4:
; CHECK:         vst1.16 {d0, d1, d2, d3}, [r0:256]!
; CHECK-NEXT:    vst1.16 {d4, d5, d6, d7}, [r0:256]
; CHECK-NEXT:    bx lr
entry:
  %b0 = extractvalue %struct.uint16x8x4_t %b, 0, 0
  %b1 = extractvalue %struct.uint16x8x4_t %b, 0, 1
  %b2 = extractvalue %struct.uint16x8x4_t %b, 0, 2
  %b3 = extractvalue %struct.uint16x8x4_t %b, 0, 3
  tail call void @llvm.arm.neon.vst1x4.p0.v8i16(ptr %a, <8 x i16> %b0, <8 x i16> %b1, <8 x i16> %b2, <8 x i16> %b3)
  ret void
}

define arm_aapcs_vfpcc void @test_vst1q_u32_x2(ptr %a, %struct.uint32x4x2_t %b) nounwind {
; CHECK-LABEL: test_vst1q_u32_x2:
; CHECK:         vst1.32 {d0, d1, d2, d3}, [r0:256]
; CHECK-NEXT:    bx lr
entry:
  %b0 = extractvalue %struct.uint32x4x2_t %b, 0, 0
  %b1 = extractvalue %struct.uint32x4x2_t %b, 0, 1
  tail call void @llvm.arm.neon.vst1x2.p0.v4i32(ptr %a, <4 x i32> %b0, <4 x i32> %b1)
  ret void
}

define arm_aapcs_vfpcc void @test_vst1q_u32_x3(ptr %a, %struct.uint32x4x3_t %b) nounwind {
; CHECK-LABEL: test_vst1q_u32_x3:
; CHECK:         vst1.32 {d0, d1, d2}, [r0:64]!
; CHECK-NEXT:    vst1.32 {d3, d4, d5}, [r0:64]
; CHECK-NEXT:    bx lr
entry:
  %b0 = extractvalue %struct.uint32x4x3_t %b, 0, 0
  %b1 = extractvalue %struct.uint32x4x3_t %b, 0, 1
  %b2 = extractvalue %struct.uint32x4x3_t %b, 0, 2
  tail call void @llvm.arm.neon.vst1x3.p0.v4i32(ptr %a, <4 x i32> %b0, <4 x i32> %b1, <4 x i32> %b2)
  ret void
}

define arm_aapcs_vfpcc void @test_vst1q_u32_x4(ptr %a, %struct.uint32x4x4_t %b) nounwind {
; CHECK-LABEL: test_vst1q_u32_x4:
; CHECK:         vst1.32 {d0, d1, d2, d3}, [r0:256]!
; CHECK-NEXT:    vst1.32 {d4, d5, d6, d7}, [r0:256]
; CHECK-NEXT:    bx lr
entry:
  %b0 = extractvalue %struct.uint32x4x4_t %b, 0, 0
  %b1 = extractvalue %struct.uint32x4x4_t %b, 0, 1
  %b2 = extractvalue %struct.uint32x4x4_t %b, 0, 2
  %b3 = extractvalue %struct.uint32x4x4_t %b, 0, 3
  tail call void @llvm.arm.neon.vst1x4.p0.v4i32(ptr %a, <4 x i32> %b0, <4 x i32> %b1, <4 x i32> %b2, <4 x i32> %b3)
  ret void
}

define arm_aapcs_vfpcc void @test_vst1q_u64_x2(ptr %a, %struct.uint64x2x2_t %b) nounwind {
; CHECK-LABEL: test_vst1q_u64_x2:
; CHECK:         vst1.64 {d0, d1, d2, d3}, [r0:256]
; CHECK-NEXT:    bx lr
entry:
  %b0 = extractvalue %struct.uint64x2x2_t %b, 0, 0
  %b1 = extractvalue %struct.uint64x2x2_t %b, 0, 1
  tail call void @llvm.arm.neon.vst1x2.p0.v2i64(ptr %a, <2 x i64> %b0, <2 x i64> %b1)
  ret void
}

define arm_aapcs_vfpcc void @test_vst1q_u64_x3(ptr %a, %struct.uint64x2x3_t %b) nounwind {
; CHECK-LABEL: test_vst1q_u64_x3:
; CHECK:         vst1.64 {d0, d1, d2}, [r0:64]!
; CHECK-NEXT:    vst1.64 {d3, d4, d5}, [r0:64]
; CHECK-NEXT:    bx lr
entry:
  %b0 = extractvalue %struct.uint64x2x3_t %b, 0, 0
  %b1 = extractvalue %struct.uint64x2x3_t %b, 0, 1
  %b2 = extractvalue %struct.uint64x2x3_t %b, 0, 2
  tail call void @llvm.arm.neon.vst1x3.p0.v2i64(ptr %a, <2 x i64> %b0, <2 x i64> %b1, <2 x i64> %b2)
  ret void
}

define arm_aapcs_vfpcc void @test_vst1q_u64_x4(ptr %a, %struct.uint64x2x4_t %b) nounwind {
; CHECK-LABEL: test_vst1q_u64_x4:
; CHECK:         vst1.64 {d0, d1, d2, d3}, [r0:256]!
; CHECK-NEXT:    vst1.64 {d4, d5, d6, d7}, [r0:256]
; CHECK-NEXT:    bx lr
entry:
  %b0 = extractvalue %struct.uint64x2x4_t %b, 0, 0
  %b1 = extractvalue %struct.uint64x2x4_t %b, 0, 1
  %b2 = extractvalue %struct.uint64x2x4_t %b, 0, 2
  %b3 = extractvalue %struct.uint64x2x4_t %b, 0, 3
  tail call void @llvm.arm.neon.vst1x4.p0.v2i64(ptr %a, <2 x i64> %b0, <2 x i64> %b1, <2 x i64> %b2, <2 x i64> %b3)
  ret void
}

define arm_aapcs_vfpcc void @test_vst1q_u8_x2(ptr %a, %struct.uint8x16x2_t %b) nounwind {
; CHECK-LABEL: test_vst1q_u8_x2:
; CHECK:         vst1.8 {d0, d1, d2, d3}, [r0:256]
; CHECK-NEXT:    bx lr
entry:
  %b0 = extractvalue %struct.uint8x16x2_t %b, 0, 0
  %b1 = extractvalue %struct.uint8x16x2_t %b, 0, 1
  tail call void @llvm.arm.neon.vst1x2.p0.v16i8(ptr %a, <16 x i8> %b0, <16 x i8> %b1)
  ret void
}

define arm_aapcs_vfpcc void @test_vst1q_u8_x3(ptr %a, %struct.uint8x16x3_t %b) nounwind {
; CHECK-LABEL: test_vst1q_u8_x3:
; CHECK:         vst1.8 {d0, d1, d2}, [r0:64]!
; CHECK-NEXT:    vst1.8 {d3, d4, d5}, [r0:64]
; CHECK-NEXT:    bx lr
entry:
  %b0 = extractvalue %struct.uint8x16x3_t %b, 0, 0
  %b1 = extractvalue %struct.uint8x16x3_t %b, 0, 1
  %b2 = extractvalue %struct.uint8x16x3_t %b, 0, 2
  tail call void @llvm.arm.neon.vst1x3.p0.v16i8(ptr %a, <16 x i8> %b0, <16 x i8> %b1, <16 x i8> %b2)
  ret void
}

define arm_aapcs_vfpcc void @test_vst1q_u8_x4(ptr %a, %struct.uint8x16x4_t %b) nounwind {
; CHECK-LABEL: test_vst1q_u8_x4:
; CHECK:         vst1.8 {d0, d1, d2, d3}, [r0:256]!
; CHECK-NEXT:    vst1.8 {d4, d5, d6, d7}, [r0:256]
; CHECK-NEXT:    bx lr
entry:
  %b0 = extractvalue %struct.uint8x16x4_t %b, 0, 0
  %b1 = extractvalue %struct.uint8x16x4_t %b, 0, 1
  %b2 = extractvalue %struct.uint8x16x4_t %b, 0, 2
  %b3 = extractvalue %struct.uint8x16x4_t %b, 0, 3
  tail call void @llvm.arm.neon.vst1x4.p0.v16i8(ptr %a, <16 x i8> %b0, <16 x i8> %b1, <16 x i8> %b2, <16 x i8> %b3)
  ret void
}

; Post increment

define arm_aapcs_vfpcc ptr @test_vst1_u8_x2_post_imm(ptr %a, %struct.uint8x8x2_t %b) nounwind {
; CHECK-LABEL: test_vst1_u8_x2_post_imm:
; CHECK:         vst1.8 {d0, d1}, [r0:64]!
; CHECK-NEXT:    bx lr
entry:
  %b0 = extractvalue %struct.uint8x8x2_t %b, 0, 0
  %b1 = extractvalue %struct.uint8x8x2_t %b, 0, 1
  tail call void @llvm.arm.neon.vst1x2.p0.v8i8(ptr %a, <8 x i8> %b0, <8 x i8> %b1)
  %tmp = getelementptr i8, ptr %a, i32 16
  ret ptr %tmp
}

define arm_aapcs_vfpcc ptr @test_vst1_u8_x2_post_reg(ptr %a, %struct.uint8x8x2_t %b, i32 %inc) nounwind {
; CHECK-LABEL: test_vst1_u8_x2_post_reg:
; CHECK:         vst1.8 {d0, d1}, [r0:64], r1
; CHECK-NEXT:    bx lr
entry:
  %b0 = extractvalue %struct.uint8x8x2_t %b, 0, 0
  %b1 = extractvalue %struct.uint8x8x2_t %b, 0, 1
  tail call void @llvm.arm.neon.vst1x2.p0.v8i8(ptr %a, <8 x i8> %b0, <8 x i8> %b1)
  %tmp = getelementptr i8, ptr %a, i32 %inc
  ret ptr %tmp
}

define arm_aapcs_vfpcc ptr @test_vst1_u16_x2_post_imm(ptr %a, %struct.uint16x4x2_t %b) nounwind {
; CHECK-LABEL: test_vst1_u16_x2_post_imm:
; CHECK:         vst1.16 {d0, d1}, [r0:64]!
; CHECK-NEXT:    bx lr
  %b0 = extractvalue %struct.uint16x4x2_t %b, 0, 0
  %b1 = extractvalue %struct.uint16x4x2_t %b, 0, 1
  tail call void @llvm.arm.neon.vst1x2.p0.v4i16(ptr %a, <4 x i16> %b0, <4 x i16> %b1)
  %tmp = getelementptr i16, ptr %a, i32 8
  ret ptr %tmp
}

define arm_aapcs_vfpcc ptr @test_vst1_u16_x2_post_reg(ptr %a, %struct.uint16x4x2_t %b, i32 %inc) nounwind {
; CHECK-LABEL: test_vst1_u16_x2_post_reg:
; CHECK:         lsl r1, r1, #1
; CHECK-NEXT:    vst1.16 {d0, d1}, [r0:64], r1
; CHECK-NEXT:    bx lr
  %b0 = extractvalue %struct.uint16x4x2_t %b, 0, 0
  %b1 = extractvalue %struct.uint16x4x2_t %b, 0, 1
  tail call void @llvm.arm.neon.vst1x2.p0.v4i16(ptr %a, <4 x i16> %b0, <4 x i16> %b1)
  %tmp = getelementptr i16, ptr %a, i32 %inc
  ret ptr %tmp
}

define arm_aapcs_vfpcc ptr @test_vst1_u32_x2_post_imm(ptr %a, %struct.uint32x2x2_t %b) nounwind {
; CHECK-LABEL: test_vst1_u32_x2_post_imm:
; CHECK:         vst1.32 {d0, d1}, [r0:64]!
; CHECK-NEXT:    bx lr
entry:
  %b0 = extractvalue %struct.uint32x2x2_t %b, 0, 0
  %b1 = extractvalue %struct.uint32x2x2_t %b, 0, 1
  tail call void @llvm.arm.neon.vst1x2.p0.v2i32(ptr %a, <2 x i32> %b0, <2 x i32> %b1)
  %tmp = getelementptr i32, ptr %a, i32 4
  ret ptr %tmp
}

define arm_aapcs_vfpcc ptr @test_vst1_u32_x2_post_reg(ptr %a, %struct.uint32x2x2_t %b, i32 %inc) nounwind {
; CHECK-LABEL: test_vst1_u32_x2_post_reg:
; CHECK:         lsl r1, r1, #2
; CHECK-NEXT:    vst1.32 {d0, d1}, [r0:64], r1
; CHECK-NEXT:    bx lr
entry:
  %b0 = extractvalue %struct.uint32x2x2_t %b, 0, 0
  %b1 = extractvalue %struct.uint32x2x2_t %b, 0, 1
  tail call void @llvm.arm.neon.vst1x2.p0.v2i32(ptr %a, <2 x i32> %b0, <2 x i32> %b1)
  %tmp = getelementptr i32, ptr %a, i32 %inc
  ret ptr %tmp
}

define arm_aapcs_vfpcc ptr @test_vst1_u64_x2_post_imm(ptr %a, %struct.uint64x1x2_t %b) nounwind {
; CHECK-LABEL: test_vst1_u64_x2_post_imm:
; CHECK:         vst1.64 {d0, d1}, [r0:64]!
; CHECK-NEXT:    bx lr
entry:
  %b0 = extractvalue %struct.uint64x1x2_t %b, 0, 0
  %b1 = extractvalue %struct.uint64x1x2_t %b, 0, 1
  tail call void @llvm.arm.neon.vst1x2.p0.v1i64(ptr %a, <1 x i64> %b0, <1 x i64> %b1)
  %tmp = getelementptr i64, ptr %a, i32 2
  ret ptr %tmp
}

define arm_aapcs_vfpcc ptr @test_vst1_u64_x2_post_reg(ptr %a, %struct.uint64x1x2_t %b, i32 %inc) nounwind {
; CHECK-LABEL: test_vst1_u64_x2_post_reg:
; CHECK:         lsl r1, r1, #3
; CHECK-NEXT:    vst1.64 {d0, d1}, [r0:64], r1
; CHECK-NEXT:    bx lr
entry:
  %b0 = extractvalue %struct.uint64x1x2_t %b, 0, 0
  %b1 = extractvalue %struct.uint64x1x2_t %b, 0, 1
  tail call void @llvm.arm.neon.vst1x2.p0.v1i64(ptr %a, <1 x i64> %b0, <1 x i64> %b1)
  %tmp = getelementptr i64, ptr %a, i32 %inc
  ret ptr %tmp
}

define arm_aapcs_vfpcc ptr @test_vst1q_u8_x2_post_imm(ptr %a, %struct.uint8x16x2_t %b) nounwind {
; CHECK-LABEL: test_vst1q_u8_x2_post_imm:
; CHECK:         vst1.8 {d0, d1, d2, d3}, [r0:256]!
; CHECK-NEXT:    bx lr
entry:
  %b0 = extractvalue %struct.uint8x16x2_t %b, 0, 0
  %b1 = extractvalue %struct.uint8x16x2_t %b, 0, 1
  tail call void @llvm.arm.neon.vst1x2.p0.v16i8(ptr %a, <16 x i8> %b0, <16 x i8> %b1)
  %tmp = getelementptr i8, ptr %a, i32 32
  ret ptr %tmp
}

define arm_aapcs_vfpcc ptr @test_vst1q_u8_x2_post_reg(ptr %a, %struct.uint8x16x2_t %b, i32 %inc) nounwind {
; CHECK-LABEL: test_vst1q_u8_x2_post_reg:
; CHECK:         vst1.8 {d0, d1, d2, d3}, [r0:256], r1
; CHECK-NEXT:    bx lr
entry:
  %b0 = extractvalue %struct.uint8x16x2_t %b, 0, 0
  %b1 = extractvalue %struct.uint8x16x2_t %b, 0, 1
  tail call void @llvm.arm.neon.vst1x2.p0.v16i8(ptr %a, <16 x i8> %b0, <16 x i8> %b1)
  %tmp = getelementptr i8, ptr %a, i32 %inc
  ret ptr %tmp
}

define arm_aapcs_vfpcc ptr @test_vst1q_u16_x2_post_imm(ptr %a, %struct.uint16x8x2_t %b) nounwind {
; CHECK-LABEL: test_vst1q_u16_x2_post_imm:
; CHECK:         vst1.16 {d0, d1, d2, d3}, [r0:256]!
; CHECK-NEXT:    bx lr
entry:
  %b0 = extractvalue %struct.uint16x8x2_t %b, 0, 0
  %b1 = extractvalue %struct.uint16x8x2_t %b, 0, 1
  tail call void @llvm.arm.neon.vst1x2.p0.v8i16(ptr %a, <8 x i16> %b0, <8 x i16> %b1)
  %tmp = getelementptr i16, ptr %a, i32 16
  ret ptr %tmp
}

define arm_aapcs_vfpcc ptr @test_vst1q_u16_x2_post_reg(ptr %a, %struct.uint16x8x2_t %b, i32 %inc) nounwind {
; CHECK-LABEL: test_vst1q_u16_x2_post_reg:
; CHECK:         lsl r1, r1, #1
; CHECK-NEXT:    vst1.16 {d0, d1, d2, d3}, [r0:256], r1
; CHECK-NEXT:    bx lr
entry:
  %b0 = extractvalue %struct.uint16x8x2_t %b, 0, 0
  %b1 = extractvalue %struct.uint16x8x2_t %b, 0, 1
  tail call void @llvm.arm.neon.vst1x2.p0.v8i16(ptr %a, <8 x i16> %b0, <8 x i16> %b1)
  %tmp = getelementptr i16, ptr %a, i32 %inc
  ret ptr %tmp
}

define arm_aapcs_vfpcc ptr @test_vst1q_u32_x2_post_imm(ptr %a, %struct.uint32x4x2_t %b) nounwind {
; CHECK-LABEL: test_vst1q_u32_x2_post_imm:
; CHECK:         vst1.32 {d0, d1, d2, d3}, [r0:256]!
; CHECK-NEXT:    bx lr
entry:
  %b0 = extractvalue %struct.uint32x4x2_t %b, 0, 0
  %b1 = extractvalue %struct.uint32x4x2_t %b, 0, 1
  tail call void @llvm.arm.neon.vst1x2.p0.v4i32(ptr %a, <4 x i32> %b0, <4 x i32> %b1)
  %tmp = getelementptr i32, ptr %a, i32 8
  ret ptr %tmp
}

define arm_aapcs_vfpcc ptr @test_vst1q_u32_x2_post_reg(ptr %a, %struct.uint32x4x2_t %b, i32 %inc) nounwind {
; CHECK-LABEL: test_vst1q_u32_x2_post_reg:
; CHECK:         lsl r1, r1, #2
; CHECK-NEXT:    vst1.32 {d0, d1, d2, d3}, [r0:256], r1
; CHECK-NEXT:    bx lr
entry:
  %b0 = extractvalue %struct.uint32x4x2_t %b, 0, 0
  %b1 = extractvalue %struct.uint32x4x2_t %b, 0, 1
  tail call void @llvm.arm.neon.vst1x2.p0.v4i32(ptr %a, <4 x i32> %b0, <4 x i32> %b1)
  %tmp = getelementptr i32, ptr %a, i32 %inc
  ret ptr %tmp
}

define arm_aapcs_vfpcc ptr @test_vst1q_u64_x2_post_imm(ptr %a, %struct.uint64x2x2_t %b) nounwind {
; CHECK-LABEL: test_vst1q_u64_x2_post_imm:
; CHECK:         vst1.64 {d0, d1, d2, d3}, [r0:256]!
; CHECK-NEXT:    bx lr
entry:
  %b0 = extractvalue %struct.uint64x2x2_t %b, 0, 0
  %b1 = extractvalue %struct.uint64x2x2_t %b, 0, 1
  tail call void @llvm.arm.neon.vst1x2.p0.v2i64(ptr %a, <2 x i64> %b0, <2 x i64> %b1)
  %tmp = getelementptr i64, ptr %a, i32 4
  ret ptr %tmp
}

define arm_aapcs_vfpcc ptr @test_vst1q_u64_x2_post_reg(ptr %a, %struct.uint64x2x2_t %b, i32 %inc) nounwind {
; CHECK-LABEL: test_vst1q_u64_x2_post_reg:
; CHECK:         lsl r1, r1, #3
; CHECK-NEXT:    vst1.64 {d0, d1, d2, d3}, [r0:256], r1
; CHECK-NEXT:    bx lr
entry:
  %b0 = extractvalue %struct.uint64x2x2_t %b, 0, 0
  %b1 = extractvalue %struct.uint64x2x2_t %b, 0, 1
  tail call void @llvm.arm.neon.vst1x2.p0.v2i64(ptr %a, <2 x i64> %b0, <2 x i64> %b1)
  %tmp = getelementptr i64, ptr %a, i32 %inc
  ret ptr %tmp
}


define arm_aapcs_vfpcc ptr @test_vst1_u8_x3_post_imm(ptr %a, %struct.uint8x8x3_t %b) nounwind {
; CHECK-LABEL: test_vst1_u8_x3_post_imm:
; CHECK:         vst1.8 {d0, d1, d2}, [r0:64]!
; CHECK-NEXT:    bx lr
entry:
  %b0 = extractvalue %struct.uint8x8x3_t %b, 0, 0
  %b1 = extractvalue %struct.uint8x8x3_t %b, 0, 1
  %b2 = extractvalue %struct.uint8x8x3_t %b, 0, 2
  tail call void @llvm.arm.neon.vst1x3.p0.v8i8(ptr %a, <8 x i8> %b0, <8 x i8> %b1, <8 x i8> %b2)
  %tmp = getelementptr i8, ptr %a, i32 24
  ret ptr %tmp
}

define arm_aapcs_vfpcc ptr @test_vst1_u8_x3_post_reg(ptr %a, %struct.uint8x8x3_t %b, i32 %inc) nounwind {
; CHECK-LABEL: test_vst1_u8_x3_post_reg:
; CHECK:         vst1.8 {d0, d1, d2}, [r0:64], r1
; CHECK-NEXT:    bx lr
entry:
  %b0 = extractvalue %struct.uint8x8x3_t %b, 0, 0
  %b1 = extractvalue %struct.uint8x8x3_t %b, 0, 1
  %b2 = extractvalue %struct.uint8x8x3_t %b, 0, 2
  tail call void @llvm.arm.neon.vst1x3.p0.v8i8(ptr %a, <8 x i8> %b0, <8 x i8> %b1, <8 x i8> %b2)
  %tmp = getelementptr i8, ptr %a, i32 %inc
  ret ptr %tmp
}

define arm_aapcs_vfpcc ptr @test_vst1_u16_x3_post_imm(ptr %a, %struct.uint16x4x3_t %b) nounwind {
; CHECK-LABEL: test_vst1_u16_x3_post_imm:
; CHECK:         vst1.16 {d0, d1, d2}, [r0:64]!
; CHECK-NEXT:    bx lr
  %b0 = extractvalue %struct.uint16x4x3_t %b, 0, 0
  %b1 = extractvalue %struct.uint16x4x3_t %b, 0, 1
  %b2 = extractvalue %struct.uint16x4x3_t %b, 0, 2
  tail call void @llvm.arm.neon.vst1x3.p0.v4i16(ptr %a, <4 x i16> %b0, <4 x i16> %b1, <4 x i16> %b2)
  %tmp = getelementptr i16, ptr %a, i32 12
  ret ptr %tmp
}

define arm_aapcs_vfpcc ptr @test_vst1_u16_x3_post_reg(ptr %a, %struct.uint16x4x3_t %b, i32 %inc) nounwind {
; CHECK-LABEL: test_vst1_u16_x3_post_reg:
; CHECK:         lsl r1, r1, #1
; CHECK-NEXT:    vst1.16 {d0, d1, d2}, [r0:64], r1
; CHECK-NEXT:    bx lr
  %b0 = extractvalue %struct.uint16x4x3_t %b, 0, 0
  %b1 = extractvalue %struct.uint16x4x3_t %b, 0, 1
  %b2 = extractvalue %struct.uint16x4x3_t %b, 0, 2
  tail call void @llvm.arm.neon.vst1x3.p0.v4i16(ptr %a, <4 x i16> %b0, <4 x i16> %b1, <4 x i16> %b2)
  %tmp = getelementptr i16, ptr %a, i32 %inc
  ret ptr %tmp
}

define arm_aapcs_vfpcc ptr @test_vst1_u32_x3_post_imm(ptr %a, %struct.uint32x2x3_t %b) nounwind {
; CHECK-LABEL: test_vst1_u32_x3_post_imm:
; CHECK:         vst1.32 {d0, d1, d2}, [r0:64]!
; CHECK-NEXT:    bx lr
entry:
  %b0 = extractvalue %struct.uint32x2x3_t %b, 0, 0
  %b1 = extractvalue %struct.uint32x2x3_t %b, 0, 1
  %b2 = extractvalue %struct.uint32x2x3_t %b, 0, 2
  tail call void @llvm.arm.neon.vst1x3.p0.v2i32(ptr %a, <2 x i32> %b0, <2 x i32> %b1, <2 x i32> %b2)
  %tmp = getelementptr i32, ptr %a, i32 6
  ret ptr %tmp
}

define arm_aapcs_vfpcc ptr @test_vst1_u32_x3_post_reg(ptr %a, %struct.uint32x2x3_t %b, i32 %inc) nounwind {
; CHECK-LABEL: test_vst1_u32_x3_post_reg:
; CHECK:         lsl r1, r1, #2
; CHECK-NEXT:    vst1.32 {d0, d1, d2}, [r0:64], r1
; CHECK-NEXT:    bx lr
entry:
  %b0 = extractvalue %struct.uint32x2x3_t %b, 0, 0
  %b1 = extractvalue %struct.uint32x2x3_t %b, 0, 1
  %b2 = extractvalue %struct.uint32x2x3_t %b, 0, 2
  tail call void @llvm.arm.neon.vst1x3.p0.v2i32(ptr %a, <2 x i32> %b0, <2 x i32> %b1, <2 x i32> %b2)
  %tmp = getelementptr i32, ptr %a, i32 %inc
  ret ptr %tmp
}

define arm_aapcs_vfpcc ptr @test_vst1_u64_x3_post_imm(ptr %a, %struct.uint64x1x3_t %b) nounwind {
; CHECK-LABEL: test_vst1_u64_x3_post_imm:
; CHECK:         vst1.64 {d0, d1, d2}, [r0:64]!
; CHECK-NEXT:    bx lr
entry:
  %b0 = extractvalue %struct.uint64x1x3_t %b, 0, 0
  %b1 = extractvalue %struct.uint64x1x3_t %b, 0, 1
  %b2 = extractvalue %struct.uint64x1x3_t %b, 0, 2
  tail call void @llvm.arm.neon.vst1x3.p0.v1i64(ptr %a, <1 x i64> %b0, <1 x i64> %b1, <1 x i64> %b2)
  %tmp = getelementptr i64, ptr %a, i32 3
  ret ptr %tmp
}

define arm_aapcs_vfpcc ptr @test_vst1_u64_x3_post_reg(ptr %a, %struct.uint64x1x3_t %b, i32 %inc) nounwind {
; CHECK-LABEL: test_vst1_u64_x3_post_reg:
; CHECK:         lsl r1, r1, #3
; CHECK-NEXT:    vst1.64 {d0, d1, d2}, [r0:64], r1
; CHECK-NEXT:    bx lr
entry:
  %b0 = extractvalue %struct.uint64x1x3_t %b, 0, 0
  %b1 = extractvalue %struct.uint64x1x3_t %b, 0, 1
  %b2 = extractvalue %struct.uint64x1x3_t %b, 0, 2
  tail call void @llvm.arm.neon.vst1x3.p0.v1i64(ptr %a, <1 x i64> %b0, <1 x i64> %b1, <1 x i64> %b2)
  %tmp = getelementptr i64, ptr %a, i32 %inc
  ret ptr %tmp
}

define arm_aapcs_vfpcc ptr @test_vst1q_u8_x3_post_imm(ptr %a, %struct.uint8x16x3_t %b) nounwind {
; CHECK-LABEL: test_vst1q_u8_x3_post_imm:
; CHECK:         vst1.8 {d0, d1, d2}, [r0:64]!
; CHECK-NEXT:    vst1.8 {d3, d4, d5}, [r0:64]!
; CHECK-NEXT:    bx lr
entry:
  %b0 = extractvalue %struct.uint8x16x3_t %b, 0, 0
  %b1 = extractvalue %struct.uint8x16x3_t %b, 0, 1
  %b2 = extractvalue %struct.uint8x16x3_t %b, 0, 2
  tail call void @llvm.arm.neon.vst1x3.p0.v16i8(ptr %a, <16 x i8> %b0, <16 x i8> %b1, <16 x i8> %b2)
  %tmp = getelementptr i8, ptr %a, i32 48
  ret ptr %tmp
}

define arm_aapcs_vfpcc ptr @test_vst1q_u16_x3_post_imm(ptr %a, %struct.uint16x8x3_t %b) nounwind {
; CHECK-LABEL: test_vst1q_u16_x3_post_imm:
; CHECK:         vst1.16 {d0, d1, d2}, [r0:64]!
; CHECK-NEXT:    vst1.16 {d3, d4, d5}, [r0:64]!
; CHECK-NEXT:    bx lr
entry:
  %b0 = extractvalue %struct.uint16x8x3_t %b, 0, 0
  %b1 = extractvalue %struct.uint16x8x3_t %b, 0, 1
  %b2 = extractvalue %struct.uint16x8x3_t %b, 0, 2
  tail call void @llvm.arm.neon.vst1x3.p0.v8i16(ptr %a, <8 x i16> %b0, <8 x i16> %b1, <8 x i16> %b2)
  %tmp = getelementptr i16, ptr %a, i32 24
  ret ptr %tmp
}

define arm_aapcs_vfpcc ptr @test_vst1q_u32_x3_post_imm(ptr %a, %struct.uint32x4x3_t %b) nounwind {
; CHECK-LABEL: test_vst1q_u32_x3_post_imm:
; CHECK:         vst1.32 {d0, d1, d2}, [r0:64]!
; CHECK-NEXT:    vst1.32 {d3, d4, d5}, [r0:64]!
; CHECK-NEXT:    bx lr
entry:
  %b0 = extractvalue %struct.uint32x4x3_t %b, 0, 0
  %b1 = extractvalue %struct.uint32x4x3_t %b, 0, 1
  %b2 = extractvalue %struct.uint32x4x3_t %b, 0, 2
  tail call void @llvm.arm.neon.vst1x3.p0.v4i32(ptr %a, <4 x i32> %b0, <4 x i32> %b1, <4 x i32> %b2)
  %tmp = getelementptr i32, ptr %a, i32 12
  ret ptr %tmp
}

define arm_aapcs_vfpcc ptr @test_vst1q_u64_x3_post_imm(ptr %a, %struct.uint64x2x3_t %b) nounwind {
; CHECK-LABEL: test_vst1q_u64_x3_post_imm:
; CHECK:         vst1.64 {d0, d1, d2}, [r0:64]!
; CHECK-NEXT:    vst1.64 {d3, d4, d5}, [r0:64]!
; CHECK-NEXT:    bx lr
entry:
  %b0 = extractvalue %struct.uint64x2x3_t %b, 0, 0
  %b1 = extractvalue %struct.uint64x2x3_t %b, 0, 1
  %b2 = extractvalue %struct.uint64x2x3_t %b, 0, 2
  tail call void @llvm.arm.neon.vst1x3.p0.v2i64(ptr %a, <2 x i64> %b0, <2 x i64> %b1, <2 x i64> %b2)
  %tmp = getelementptr i64, ptr %a, i32 6
  ret ptr %tmp
}

define arm_aapcs_vfpcc ptr @test_vst1_u8_x4_post_imm(ptr %a, %struct.uint8x8x4_t %b) nounwind {
; CHECK-LABEL: test_vst1_u8_x4_post_imm:
; CHECK:         vst1.8 {d0, d1, d2, d3}, [r0:256]!
; CHECK-NEXT:    bx lr
entry:
  %b0 = extractvalue %struct.uint8x8x4_t %b, 0, 0
  %b1 = extractvalue %struct.uint8x8x4_t %b, 0, 1
  %b2 = extractvalue %struct.uint8x8x4_t %b, 0, 2
  %b3 = extractvalue %struct.uint8x8x4_t %b, 0, 3
  tail call void @llvm.arm.neon.vst1x4.p0.v8i8(ptr %a, <8 x i8> %b0, <8 x i8> %b1, <8 x i8> %b2, <8 x i8> %b3)
  %tmp = getelementptr i8, ptr %a, i32 32
  ret ptr %tmp
}

define arm_aapcs_vfpcc ptr @test_vst1_u8_x4_post_reg(ptr %a, %struct.uint8x8x4_t %b, i32 %inc) nounwind {
; CHECK-LABEL: test_vst1_u8_x4_post_reg:
; CHECK:         vst1.8 {d0, d1, d2, d3}, [r0:256], r1
; CHECK-NEXT:    bx lr
entry:
  %b0 = extractvalue %struct.uint8x8x4_t %b, 0, 0
  %b1 = extractvalue %struct.uint8x8x4_t %b, 0, 1
  %b2 = extractvalue %struct.uint8x8x4_t %b, 0, 2
  %b3 = extractvalue %struct.uint8x8x4_t %b, 0, 3
  tail call void @llvm.arm.neon.vst1x4.p0.v8i8(ptr %a, <8 x i8> %b0, <8 x i8> %b1, <8 x i8> %b2, <8 x i8> %b3)
  %tmp = getelementptr i8, ptr %a, i32 %inc
  ret ptr %tmp
}

define arm_aapcs_vfpcc ptr @test_vst1_u16_x4_post_imm(ptr %a, %struct.uint16x4x4_t %b) nounwind {
; CHECK-LABEL: test_vst1_u16_x4_post_imm:
; CHECK:         vst1.16 {d0, d1, d2, d3}, [r0:256]!
; CHECK-NEXT:    bx lr
  %b0 = extractvalue %struct.uint16x4x4_t %b, 0, 0
  %b1 = extractvalue %struct.uint16x4x4_t %b, 0, 1
  %b2 = extractvalue %struct.uint16x4x4_t %b, 0, 2
  %b3 = extractvalue %struct.uint16x4x4_t %b, 0, 3
  tail call void @llvm.arm.neon.vst1x4.p0.v4i16(ptr %a, <4 x i16> %b0, <4 x i16> %b1, <4 x i16> %b2, <4 x i16> %b3)
  %tmp = getelementptr i16, ptr %a, i32 16
  ret ptr %tmp
}

define arm_aapcs_vfpcc ptr @test_vst1_u16_x4_post_reg(ptr %a, %struct.uint16x4x4_t %b, i32 %inc) nounwind {
; CHECK-LABEL: test_vst1_u16_x4_post_reg:
; CHECK:         lsl r1, r1, #1
; CHECK-NEXT:    vst1.16 {d0, d1, d2, d3}, [r0:256], r1
; CHECK-NEXT:    bx lr
  %b0 = extractvalue %struct.uint16x4x4_t %b, 0, 0
  %b1 = extractvalue %struct.uint16x4x4_t %b, 0, 1
  %b2 = extractvalue %struct.uint16x4x4_t %b, 0, 2
  %b3 = extractvalue %struct.uint16x4x4_t %b, 0, 3
  tail call void @llvm.arm.neon.vst1x4.p0.v4i16(ptr %a, <4 x i16> %b0, <4 x i16> %b1, <4 x i16> %b2, <4 x i16> %b3)
  %tmp = getelementptr i16, ptr %a, i32 %inc
  ret ptr %tmp
}

define arm_aapcs_vfpcc ptr @test_vst1_u32_x4_post_imm(ptr %a, %struct.uint32x2x4_t %b) nounwind {
; CHECK-LABEL: test_vst1_u32_x4_post_imm:
; CHECK:         vst1.32 {d0, d1, d2, d3}, [r0:256]!
; CHECK-NEXT:    bx lr
entry:
  %b0 = extractvalue %struct.uint32x2x4_t %b, 0, 0
  %b1 = extractvalue %struct.uint32x2x4_t %b, 0, 1
  %b2 = extractvalue %struct.uint32x2x4_t %b, 0, 2
  %b3 = extractvalue %struct.uint32x2x4_t %b, 0, 3
  tail call void @llvm.arm.neon.vst1x4.p0.v2i32(ptr %a, <2 x i32> %b0, <2 x i32> %b1, <2 x i32> %b2, <2 x i32> %b3)
  %tmp = getelementptr i32, ptr %a, i32 8
  ret ptr %tmp
}

define arm_aapcs_vfpcc ptr @test_vst1_u32_x4_post_reg(ptr %a, %struct.uint32x2x4_t %b, i32 %inc) nounwind {
; CHECK-LABEL: test_vst1_u32_x4_post_reg:
; CHECK:         lsl r1, r1, #2
; CHECK-NEXT:    vst1.32 {d0, d1, d2, d3}, [r0:256], r1
; CHECK-NEXT:    bx lr
entry:
  %b0 = extractvalue %struct.uint32x2x4_t %b, 0, 0
  %b1 = extractvalue %struct.uint32x2x4_t %b, 0, 1
  %b2 = extractvalue %struct.uint32x2x4_t %b, 0, 2
  %b3 = extractvalue %struct.uint32x2x4_t %b, 0, 3
  tail call void @llvm.arm.neon.vst1x4.p0.v2i32(ptr %a, <2 x i32> %b0, <2 x i32> %b1, <2 x i32> %b2, <2 x i32> %b3)
  %tmp = getelementptr i32, ptr %a, i32 %inc
  ret ptr %tmp
}

define arm_aapcs_vfpcc ptr @test_vst1_u64_x4_post_imm(ptr %a, %struct.uint64x1x4_t %b) nounwind {
; CHECK-LABEL: test_vst1_u64_x4_post_imm:
; CHECK:         vst1.64 {d0, d1, d2, d3}, [r0:256]!
; CHECK-NEXT:    bx lr
entry:
  %b0 = extractvalue %struct.uint64x1x4_t %b, 0, 0
  %b1 = extractvalue %struct.uint64x1x4_t %b, 0, 1
  %b2 = extractvalue %struct.uint64x1x4_t %b, 0, 2
  %b3 = extractvalue %struct.uint64x1x4_t %b, 0, 3
  tail call void @llvm.arm.neon.vst1x4.p0.v1i64(ptr %a, <1 x i64> %b0, <1 x i64> %b1, <1 x i64> %b2, <1 x i64> %b3)
  %tmp = getelementptr i64, ptr %a, i32 4
  ret ptr %tmp
}

define arm_aapcs_vfpcc ptr @test_vst1_u64_x4_post_reg(ptr %a, %struct.uint64x1x4_t %b, i32 %inc) nounwind {
; CHECK-LABEL: test_vst1_u64_x4_post_reg:
; CHECK:         lsl r1, r1, #3
; CHECK-NEXT:    vst1.64 {d0, d1, d2, d3}, [r0:256], r1
; CHECK-NEXT:    bx lr
entry:
  %b0 = extractvalue %struct.uint64x1x4_t %b, 0, 0
  %b1 = extractvalue %struct.uint64x1x4_t %b, 0, 1
  %b2 = extractvalue %struct.uint64x1x4_t %b, 0, 2
  %b3 = extractvalue %struct.uint64x1x4_t %b, 0, 3
  tail call void @llvm.arm.neon.vst1x4.p0.v1i64(ptr %a, <1 x i64> %b0, <1 x i64> %b1, <1 x i64> %b2, <1 x i64> %b3)
  %tmp = getelementptr i64, ptr %a, i32 %inc
  ret ptr %tmp
}

define arm_aapcs_vfpcc ptr @test_vst1q_u8_x4_post_imm(ptr %a, %struct.uint8x16x4_t %b) nounwind {
; CHECK-LABEL: test_vst1q_u8_x4_post_imm:
; CHECK:         vst1.8 {d0, d1, d2, d3}, [r0:256]!
; CHECK-NEXT:    vst1.8 {d4, d5, d6, d7}, [r0:256]!
; CHECK-NEXT:    bx lr
entry:
  %b0 = extractvalue %struct.uint8x16x4_t %b, 0, 0
  %b1 = extractvalue %struct.uint8x16x4_t %b, 0, 1
  %b2 = extractvalue %struct.uint8x16x4_t %b, 0, 2
  %b3 = extractvalue %struct.uint8x16x4_t %b, 0, 3
  tail call void @llvm.arm.neon.vst1x4.p0.v16i8(ptr %a, <16 x i8> %b0, <16 x i8> %b1, <16 x i8> %b2, <16 x i8> %b3)
  %tmp = getelementptr i8, ptr %a, i32 64
  ret ptr %tmp
}

define arm_aapcs_vfpcc ptr @test_vst1q_u16_x4_post_imm(ptr %a, %struct.uint16x8x4_t %b) nounwind {
; CHECK-LABEL: test_vst1q_u16_x4_post_imm:
; CHECK:         vst1.16 {d0, d1, d2, d3}, [r0:256]!
; CHECK-NEXT:    vst1.16 {d4, d5, d6, d7}, [r0:256]!
; CHECK-NEXT:    bx lr
entry:
  %b0 = extractvalue %struct.uint16x8x4_t %b, 0, 0
  %b1 = extractvalue %struct.uint16x8x4_t %b, 0, 1
  %b2 = extractvalue %struct.uint16x8x4_t %b, 0, 2
  %b3 = extractvalue %struct.uint16x8x4_t %b, 0, 3
  tail call void @llvm.arm.neon.vst1x4.p0.v8i16(ptr %a, <8 x i16> %b0, <8 x i16> %b1, <8 x i16> %b2, <8 x i16> %b3)
  %tmp = getelementptr i16, ptr %a, i32 32
  ret ptr %tmp
}

define arm_aapcs_vfpcc ptr @test_vst1q_u32_x4_post_imm(ptr %a, %struct.uint32x4x4_t %b) nounwind {
; CHECK-LABEL: test_vst1q_u32_x4_post_imm:
; CHECK:         vst1.32 {d0, d1, d2, d3}, [r0:256]!
; CHECK-NEXT:    vst1.32 {d4, d5, d6, d7}, [r0:256]!
; CHECK-NEXT:    bx lr
entry:
  %b0 = extractvalue %struct.uint32x4x4_t %b, 0, 0
  %b1 = extractvalue %struct.uint32x4x4_t %b, 0, 1
  %b2 = extractvalue %struct.uint32x4x4_t %b, 0, 2
  %b3 = extractvalue %struct.uint32x4x4_t %b, 0, 3
  tail call void @llvm.arm.neon.vst1x4.p0.v4i32(ptr %a, <4 x i32> %b0, <4 x i32> %b1, <4 x i32> %b2, <4 x i32> %b3)
  %tmp = getelementptr i32, ptr %a, i32 16
  ret ptr %tmp
}

define arm_aapcs_vfpcc ptr @test_vst1q_u64_x4_post_imm(ptr %a, %struct.uint64x2x4_t %b) nounwind {
; CHECK-LABEL: test_vst1q_u64_x4_post_imm:
; CHECK:         vst1.64 {d0, d1, d2, d3}, [r0:256]!
; CHECK-NEXT:    vst1.64 {d4, d5, d6, d7}, [r0:256]!
; CHECK-NEXT:    bx lr
entry:
  %b0 = extractvalue %struct.uint64x2x4_t %b, 0, 0
  %b1 = extractvalue %struct.uint64x2x4_t %b, 0, 1
  %b2 = extractvalue %struct.uint64x2x4_t %b, 0, 2
  %b3 = extractvalue %struct.uint64x2x4_t %b, 0, 3
  tail call void @llvm.arm.neon.vst1x4.p0.v2i64(ptr %a, <2 x i64> %b0, <2 x i64> %b1, <2 x i64> %b2, <2 x i64> %b3)
  %tmp = getelementptr i64, ptr %a, i32 8
  ret ptr %tmp
}