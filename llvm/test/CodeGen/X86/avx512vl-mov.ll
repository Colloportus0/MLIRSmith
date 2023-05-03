; NOTE: Assertions have been autogenerated by utils/update_llc_test_checks.py
; RUN: llc < %s -mtriple=x86_64-apple-darwin -mcpu=knl -mattr=+avx512vl --show-mc-encoding| FileCheck %s

define <8 x i32> @test_256_1(ptr %addr) {
; CHECK-LABEL: test_256_1:
; CHECK:       ## %bb.0:
; CHECK-NEXT:    vmovups (%rdi), %ymm0 ## EVEX TO VEX Compression encoding: [0xc5,0xfc,0x10,0x07]
; CHECK-NEXT:    retq ## encoding: [0xc3]
  %res = load <8 x i32>, ptr %addr, align 1
  ret <8 x i32>%res
}

define <8 x i32> @test_256_2(ptr %addr) {
; CHECK-LABEL: test_256_2:
; CHECK:       ## %bb.0:
; CHECK-NEXT:    vmovaps (%rdi), %ymm0 ## EVEX TO VEX Compression encoding: [0xc5,0xfc,0x28,0x07]
; CHECK-NEXT:    retq ## encoding: [0xc3]
  %res = load <8 x i32>, ptr %addr, align 32
  ret <8 x i32>%res
}

define void @test_256_3(ptr %addr, <4 x i64> %data) {
; CHECK-LABEL: test_256_3:
; CHECK:       ## %bb.0:
; CHECK-NEXT:    vmovaps %ymm0, (%rdi) ## EVEX TO VEX Compression encoding: [0xc5,0xfc,0x29,0x07]
; CHECK-NEXT:    retq ## encoding: [0xc3]
  store <4 x i64>%data, ptr %addr, align 32
  ret void
}

define void @test_256_4(ptr %addr, <8 x i32> %data) {
; CHECK-LABEL: test_256_4:
; CHECK:       ## %bb.0:
; CHECK-NEXT:    vmovups %ymm0, (%rdi) ## EVEX TO VEX Compression encoding: [0xc5,0xfc,0x11,0x07]
; CHECK-NEXT:    retq ## encoding: [0xc3]
  store <8 x i32>%data, ptr %addr, align 1
  ret void
}

define void @test_256_5(ptr %addr, <8 x i32> %data) {
; CHECK-LABEL: test_256_5:
; CHECK:       ## %bb.0:
; CHECK-NEXT:    vmovaps %ymm0, (%rdi) ## EVEX TO VEX Compression encoding: [0xc5,0xfc,0x29,0x07]
; CHECK-NEXT:    retq ## encoding: [0xc3]
  store <8 x i32>%data, ptr %addr, align 32
  ret void
}

define  <4 x i64> @test_256_6(ptr %addr) {
; CHECK-LABEL: test_256_6:
; CHECK:       ## %bb.0:
; CHECK-NEXT:    vmovaps (%rdi), %ymm0 ## EVEX TO VEX Compression encoding: [0xc5,0xfc,0x28,0x07]
; CHECK-NEXT:    retq ## encoding: [0xc3]
  %res = load <4 x i64>, ptr %addr, align 32
  ret <4 x i64>%res
}

define void @test_256_7(ptr %addr, <4 x i64> %data) {
; CHECK-LABEL: test_256_7:
; CHECK:       ## %bb.0:
; CHECK-NEXT:    vmovups %ymm0, (%rdi) ## EVEX TO VEX Compression encoding: [0xc5,0xfc,0x11,0x07]
; CHECK-NEXT:    retq ## encoding: [0xc3]
  store <4 x i64>%data, ptr %addr, align 1
  ret void
}

define <4 x i64> @test_256_8(ptr %addr) {
; CHECK-LABEL: test_256_8:
; CHECK:       ## %bb.0:
; CHECK-NEXT:    vmovups (%rdi), %ymm0 ## EVEX TO VEX Compression encoding: [0xc5,0xfc,0x10,0x07]
; CHECK-NEXT:    retq ## encoding: [0xc3]
  %res = load <4 x i64>, ptr %addr, align 1
  ret <4 x i64>%res
}

define void @test_256_9(ptr %addr, <4 x double> %data) {
; CHECK-LABEL: test_256_9:
; CHECK:       ## %bb.0:
; CHECK-NEXT:    vmovaps %ymm0, (%rdi) ## EVEX TO VEX Compression encoding: [0xc5,0xfc,0x29,0x07]
; CHECK-NEXT:    retq ## encoding: [0xc3]
  store <4 x double>%data, ptr %addr, align 32
  ret void
}

define <4 x double> @test_256_10(ptr %addr) {
; CHECK-LABEL: test_256_10:
; CHECK:       ## %bb.0:
; CHECK-NEXT:    vmovaps (%rdi), %ymm0 ## EVEX TO VEX Compression encoding: [0xc5,0xfc,0x28,0x07]
; CHECK-NEXT:    retq ## encoding: [0xc3]
  %res = load <4 x double>, ptr %addr, align 32
  ret <4 x double>%res
}

define void @test_256_11(ptr %addr, <8 x float> %data) {
; CHECK-LABEL: test_256_11:
; CHECK:       ## %bb.0:
; CHECK-NEXT:    vmovaps %ymm0, (%rdi) ## EVEX TO VEX Compression encoding: [0xc5,0xfc,0x29,0x07]
; CHECK-NEXT:    retq ## encoding: [0xc3]
  store <8 x float>%data, ptr %addr, align 32
  ret void
}

define <8 x float> @test_256_12(ptr %addr) {
; CHECK-LABEL: test_256_12:
; CHECK:       ## %bb.0:
; CHECK-NEXT:    vmovaps (%rdi), %ymm0 ## EVEX TO VEX Compression encoding: [0xc5,0xfc,0x28,0x07]
; CHECK-NEXT:    retq ## encoding: [0xc3]
  %res = load <8 x float>, ptr %addr, align 32
  ret <8 x float>%res
}

define void @test_256_13(ptr %addr, <4 x double> %data) {
; CHECK-LABEL: test_256_13:
; CHECK:       ## %bb.0:
; CHECK-NEXT:    vmovups %ymm0, (%rdi) ## EVEX TO VEX Compression encoding: [0xc5,0xfc,0x11,0x07]
; CHECK-NEXT:    retq ## encoding: [0xc3]
  store <4 x double>%data, ptr %addr, align 1
  ret void
}

define <4 x double> @test_256_14(ptr %addr) {
; CHECK-LABEL: test_256_14:
; CHECK:       ## %bb.0:
; CHECK-NEXT:    vmovups (%rdi), %ymm0 ## EVEX TO VEX Compression encoding: [0xc5,0xfc,0x10,0x07]
; CHECK-NEXT:    retq ## encoding: [0xc3]
  %res = load <4 x double>, ptr %addr, align 1
  ret <4 x double>%res
}

define void @test_256_15(ptr %addr, <8 x float> %data) {
; CHECK-LABEL: test_256_15:
; CHECK:       ## %bb.0:
; CHECK-NEXT:    vmovups %ymm0, (%rdi) ## EVEX TO VEX Compression encoding: [0xc5,0xfc,0x11,0x07]
; CHECK-NEXT:    retq ## encoding: [0xc3]
  store <8 x float>%data, ptr %addr, align 1
  ret void
}

define <8 x float> @test_256_16(ptr %addr) {
; CHECK-LABEL: test_256_16:
; CHECK:       ## %bb.0:
; CHECK-NEXT:    vmovups (%rdi), %ymm0 ## EVEX TO VEX Compression encoding: [0xc5,0xfc,0x10,0x07]
; CHECK-NEXT:    retq ## encoding: [0xc3]
  %res = load <8 x float>, ptr %addr, align 1
  ret <8 x float>%res
}

define <8 x i32> @test_256_17(ptr %addr, <8 x i32> %old, <8 x i32> %mask1) {
; CHECK-LABEL: test_256_17:
; CHECK:       ## %bb.0:
; CHECK-NEXT:    vptestmd %ymm1, %ymm1, %k1 ## encoding: [0x62,0xf2,0x75,0x28,0x27,0xc9]
; CHECK-NEXT:    vmovdqa32 (%rdi), %ymm0 {%k1} ## encoding: [0x62,0xf1,0x7d,0x29,0x6f,0x07]
; CHECK-NEXT:    retq ## encoding: [0xc3]
  %mask = icmp ne <8 x i32> %mask1, zeroinitializer
  %r = load <8 x i32>, ptr %addr, align 32
  %res = select <8 x i1> %mask, <8 x i32> %r, <8 x i32> %old
  ret <8 x i32>%res
}

define <8 x i32> @test_256_18(ptr %addr, <8 x i32> %old, <8 x i32> %mask1) {
; CHECK-LABEL: test_256_18:
; CHECK:       ## %bb.0:
; CHECK-NEXT:    vptestmd %ymm1, %ymm1, %k1 ## encoding: [0x62,0xf2,0x75,0x28,0x27,0xc9]
; CHECK-NEXT:    vmovdqu32 (%rdi), %ymm0 {%k1} ## encoding: [0x62,0xf1,0x7e,0x29,0x6f,0x07]
; CHECK-NEXT:    retq ## encoding: [0xc3]
  %mask = icmp ne <8 x i32> %mask1, zeroinitializer
  %r = load <8 x i32>, ptr %addr, align 1
  %res = select <8 x i1> %mask, <8 x i32> %r, <8 x i32> %old
  ret <8 x i32>%res
}

define <8 x i32> @test_256_19(ptr %addr, <8 x i32> %mask1) {
; CHECK-LABEL: test_256_19:
; CHECK:       ## %bb.0:
; CHECK-NEXT:    vptestmd %ymm0, %ymm0, %k1 ## encoding: [0x62,0xf2,0x7d,0x28,0x27,0xc8]
; CHECK-NEXT:    vmovdqa32 (%rdi), %ymm0 {%k1} {z} ## encoding: [0x62,0xf1,0x7d,0xa9,0x6f,0x07]
; CHECK-NEXT:    retq ## encoding: [0xc3]
  %mask = icmp ne <8 x i32> %mask1, zeroinitializer
  %r = load <8 x i32>, ptr %addr, align 32
  %res = select <8 x i1> %mask, <8 x i32> %r, <8 x i32> zeroinitializer
  ret <8 x i32>%res
}

define <8 x i32> @test_256_20(ptr %addr, <8 x i32> %mask1) {
; CHECK-LABEL: test_256_20:
; CHECK:       ## %bb.0:
; CHECK-NEXT:    vptestmd %ymm0, %ymm0, %k1 ## encoding: [0x62,0xf2,0x7d,0x28,0x27,0xc8]
; CHECK-NEXT:    vmovdqu32 (%rdi), %ymm0 {%k1} {z} ## encoding: [0x62,0xf1,0x7e,0xa9,0x6f,0x07]
; CHECK-NEXT:    retq ## encoding: [0xc3]
  %mask = icmp ne <8 x i32> %mask1, zeroinitializer
  %r = load <8 x i32>, ptr %addr, align 1
  %res = select <8 x i1> %mask, <8 x i32> %r, <8 x i32> zeroinitializer
  ret <8 x i32>%res
}

define <4 x i64> @test_256_21(ptr %addr, <4 x i64> %old, <4 x i64> %mask1) {
; CHECK-LABEL: test_256_21:
; CHECK:       ## %bb.0:
; CHECK-NEXT:    vptestmq %ymm1, %ymm1, %k1 ## encoding: [0x62,0xf2,0xf5,0x28,0x27,0xc9]
; CHECK-NEXT:    vmovdqa64 (%rdi), %ymm0 {%k1} ## encoding: [0x62,0xf1,0xfd,0x29,0x6f,0x07]
; CHECK-NEXT:    retq ## encoding: [0xc3]
  %mask = icmp ne <4 x i64> %mask1, zeroinitializer
  %r = load <4 x i64>, ptr %addr, align 32
  %res = select <4 x i1> %mask, <4 x i64> %r, <4 x i64> %old
  ret <4 x i64>%res
}

define <4 x i64> @test_256_22(ptr %addr, <4 x i64> %old, <4 x i64> %mask1) {
; CHECK-LABEL: test_256_22:
; CHECK:       ## %bb.0:
; CHECK-NEXT:    vptestmq %ymm1, %ymm1, %k1 ## encoding: [0x62,0xf2,0xf5,0x28,0x27,0xc9]
; CHECK-NEXT:    vmovdqu64 (%rdi), %ymm0 {%k1} ## encoding: [0x62,0xf1,0xfe,0x29,0x6f,0x07]
; CHECK-NEXT:    retq ## encoding: [0xc3]
  %mask = icmp ne <4 x i64> %mask1, zeroinitializer
  %r = load <4 x i64>, ptr %addr, align 1
  %res = select <4 x i1> %mask, <4 x i64> %r, <4 x i64> %old
  ret <4 x i64>%res
}

define <4 x i64> @test_256_23(ptr %addr, <4 x i64> %mask1) {
; CHECK-LABEL: test_256_23:
; CHECK:       ## %bb.0:
; CHECK-NEXT:    vptestmq %ymm0, %ymm0, %k1 ## encoding: [0x62,0xf2,0xfd,0x28,0x27,0xc8]
; CHECK-NEXT:    vmovdqa64 (%rdi), %ymm0 {%k1} {z} ## encoding: [0x62,0xf1,0xfd,0xa9,0x6f,0x07]
; CHECK-NEXT:    retq ## encoding: [0xc3]
  %mask = icmp ne <4 x i64> %mask1, zeroinitializer
  %r = load <4 x i64>, ptr %addr, align 32
  %res = select <4 x i1> %mask, <4 x i64> %r, <4 x i64> zeroinitializer
  ret <4 x i64>%res
}

define <4 x i64> @test_256_24(ptr %addr, <4 x i64> %mask1) {
; CHECK-LABEL: test_256_24:
; CHECK:       ## %bb.0:
; CHECK-NEXT:    vptestmq %ymm0, %ymm0, %k1 ## encoding: [0x62,0xf2,0xfd,0x28,0x27,0xc8]
; CHECK-NEXT:    vmovdqu64 (%rdi), %ymm0 {%k1} {z} ## encoding: [0x62,0xf1,0xfe,0xa9,0x6f,0x07]
; CHECK-NEXT:    retq ## encoding: [0xc3]
  %mask = icmp ne <4 x i64> %mask1, zeroinitializer
  %r = load <4 x i64>, ptr %addr, align 1
  %res = select <4 x i1> %mask, <4 x i64> %r, <4 x i64> zeroinitializer
  ret <4 x i64>%res
}

define <8 x float> @test_256_25(ptr %addr, <8 x float> %old, <8 x float> %mask1) {
; CHECK-LABEL: test_256_25:
; CHECK:       ## %bb.0:
; CHECK-NEXT:    vxorps %xmm2, %xmm2, %xmm2 ## encoding: [0xc5,0xe8,0x57,0xd2]
; CHECK-NEXT:    vcmpneq_oqps %ymm2, %ymm1, %k1 ## encoding: [0x62,0xf1,0x74,0x28,0xc2,0xca,0x0c]
; CHECK-NEXT:    vmovaps (%rdi), %ymm0 {%k1} ## encoding: [0x62,0xf1,0x7c,0x29,0x28,0x07]
; CHECK-NEXT:    retq ## encoding: [0xc3]
  %mask = fcmp one <8 x float> %mask1, zeroinitializer
  %r = load <8 x float>, ptr %addr, align 32
  %res = select <8 x i1> %mask, <8 x float> %r, <8 x float> %old
  ret <8 x float>%res
}

define <8 x float> @test_256_26(ptr %addr, <8 x float> %old, <8 x float> %mask1) {
; CHECK-LABEL: test_256_26:
; CHECK:       ## %bb.0:
; CHECK-NEXT:    vxorps %xmm2, %xmm2, %xmm2 ## encoding: [0xc5,0xe8,0x57,0xd2]
; CHECK-NEXT:    vcmpneq_oqps %ymm2, %ymm1, %k1 ## encoding: [0x62,0xf1,0x74,0x28,0xc2,0xca,0x0c]
; CHECK-NEXT:    vmovups (%rdi), %ymm0 {%k1} ## encoding: [0x62,0xf1,0x7c,0x29,0x10,0x07]
; CHECK-NEXT:    retq ## encoding: [0xc3]
  %mask = fcmp one <8 x float> %mask1, zeroinitializer
  %r = load <8 x float>, ptr %addr, align 1
  %res = select <8 x i1> %mask, <8 x float> %r, <8 x float> %old
  ret <8 x float>%res
}

define <8 x float> @test_256_27(ptr %addr, <8 x float> %mask1) {
; CHECK-LABEL: test_256_27:
; CHECK:       ## %bb.0:
; CHECK-NEXT:    vxorps %xmm1, %xmm1, %xmm1 ## encoding: [0xc5,0xf0,0x57,0xc9]
; CHECK-NEXT:    vcmpneq_oqps %ymm1, %ymm0, %k1 ## encoding: [0x62,0xf1,0x7c,0x28,0xc2,0xc9,0x0c]
; CHECK-NEXT:    vmovaps (%rdi), %ymm0 {%k1} {z} ## encoding: [0x62,0xf1,0x7c,0xa9,0x28,0x07]
; CHECK-NEXT:    retq ## encoding: [0xc3]
  %mask = fcmp one <8 x float> %mask1, zeroinitializer
  %r = load <8 x float>, ptr %addr, align 32
  %res = select <8 x i1> %mask, <8 x float> %r, <8 x float> zeroinitializer
  ret <8 x float>%res
}

define <8 x float> @test_256_28(ptr %addr, <8 x float> %mask1) {
; CHECK-LABEL: test_256_28:
; CHECK:       ## %bb.0:
; CHECK-NEXT:    vxorps %xmm1, %xmm1, %xmm1 ## encoding: [0xc5,0xf0,0x57,0xc9]
; CHECK-NEXT:    vcmpneq_oqps %ymm1, %ymm0, %k1 ## encoding: [0x62,0xf1,0x7c,0x28,0xc2,0xc9,0x0c]
; CHECK-NEXT:    vmovups (%rdi), %ymm0 {%k1} {z} ## encoding: [0x62,0xf1,0x7c,0xa9,0x10,0x07]
; CHECK-NEXT:    retq ## encoding: [0xc3]
  %mask = fcmp one <8 x float> %mask1, zeroinitializer
  %r = load <8 x float>, ptr %addr, align 1
  %res = select <8 x i1> %mask, <8 x float> %r, <8 x float> zeroinitializer
  ret <8 x float>%res
}

define <4 x double> @test_256_29(ptr %addr, <4 x double> %old, <4 x i64> %mask1) {
; CHECK-LABEL: test_256_29:
; CHECK:       ## %bb.0:
; CHECK-NEXT:    vptestmq %ymm1, %ymm1, %k1 ## encoding: [0x62,0xf2,0xf5,0x28,0x27,0xc9]
; CHECK-NEXT:    vmovapd (%rdi), %ymm0 {%k1} ## encoding: [0x62,0xf1,0xfd,0x29,0x28,0x07]
; CHECK-NEXT:    retq ## encoding: [0xc3]
  %mask = icmp ne <4 x i64> %mask1, zeroinitializer
  %r = load <4 x double>, ptr %addr, align 32
  %res = select <4 x i1> %mask, <4 x double> %r, <4 x double> %old
  ret <4 x double>%res
}

define <4 x double> @test_256_30(ptr %addr, <4 x double> %old, <4 x i64> %mask1) {
; CHECK-LABEL: test_256_30:
; CHECK:       ## %bb.0:
; CHECK-NEXT:    vptestmq %ymm1, %ymm1, %k1 ## encoding: [0x62,0xf2,0xf5,0x28,0x27,0xc9]
; CHECK-NEXT:    vmovupd (%rdi), %ymm0 {%k1} ## encoding: [0x62,0xf1,0xfd,0x29,0x10,0x07]
; CHECK-NEXT:    retq ## encoding: [0xc3]
  %mask = icmp ne <4 x i64> %mask1, zeroinitializer
  %r = load <4 x double>, ptr %addr, align 1
  %res = select <4 x i1> %mask, <4 x double> %r, <4 x double> %old
  ret <4 x double>%res
}

define <4 x double> @test_256_31(ptr %addr, <4 x i64> %mask1) {
; CHECK-LABEL: test_256_31:
; CHECK:       ## %bb.0:
; CHECK-NEXT:    vptestmq %ymm0, %ymm0, %k1 ## encoding: [0x62,0xf2,0xfd,0x28,0x27,0xc8]
; CHECK-NEXT:    vmovapd (%rdi), %ymm0 {%k1} {z} ## encoding: [0x62,0xf1,0xfd,0xa9,0x28,0x07]
; CHECK-NEXT:    retq ## encoding: [0xc3]
  %mask = icmp ne <4 x i64> %mask1, zeroinitializer
  %r = load <4 x double>, ptr %addr, align 32
  %res = select <4 x i1> %mask, <4 x double> %r, <4 x double> zeroinitializer
  ret <4 x double>%res
}

define <4 x double> @test_256_32(ptr %addr, <4 x i64> %mask1) {
; CHECK-LABEL: test_256_32:
; CHECK:       ## %bb.0:
; CHECK-NEXT:    vptestmq %ymm0, %ymm0, %k1 ## encoding: [0x62,0xf2,0xfd,0x28,0x27,0xc8]
; CHECK-NEXT:    vmovupd (%rdi), %ymm0 {%k1} {z} ## encoding: [0x62,0xf1,0xfd,0xa9,0x10,0x07]
; CHECK-NEXT:    retq ## encoding: [0xc3]
  %mask = icmp ne <4 x i64> %mask1, zeroinitializer
  %r = load <4 x double>, ptr %addr, align 1
  %res = select <4 x i1> %mask, <4 x double> %r, <4 x double> zeroinitializer
  ret <4 x double>%res
}

define <4 x i32> @test_128_1(ptr %addr) {
; CHECK-LABEL: test_128_1:
; CHECK:       ## %bb.0:
; CHECK-NEXT:    vmovups (%rdi), %xmm0 ## EVEX TO VEX Compression encoding: [0xc5,0xf8,0x10,0x07]
; CHECK-NEXT:    retq ## encoding: [0xc3]
  %res = load <4 x i32>, ptr %addr, align 1
  ret <4 x i32>%res
}

define <4 x i32> @test_128_2(ptr %addr) {
; CHECK-LABEL: test_128_2:
; CHECK:       ## %bb.0:
; CHECK-NEXT:    vmovaps (%rdi), %xmm0 ## EVEX TO VEX Compression encoding: [0xc5,0xf8,0x28,0x07]
; CHECK-NEXT:    retq ## encoding: [0xc3]
  %res = load <4 x i32>, ptr %addr, align 16
  ret <4 x i32>%res
}

define void @test_128_3(ptr %addr, <2 x i64> %data) {
; CHECK-LABEL: test_128_3:
; CHECK:       ## %bb.0:
; CHECK-NEXT:    vmovaps %xmm0, (%rdi) ## EVEX TO VEX Compression encoding: [0xc5,0xf8,0x29,0x07]
; CHECK-NEXT:    retq ## encoding: [0xc3]
  store <2 x i64>%data, ptr %addr, align 16
  ret void
}

define void @test_128_4(ptr %addr, <4 x i32> %data) {
; CHECK-LABEL: test_128_4:
; CHECK:       ## %bb.0:
; CHECK-NEXT:    vmovups %xmm0, (%rdi) ## EVEX TO VEX Compression encoding: [0xc5,0xf8,0x11,0x07]
; CHECK-NEXT:    retq ## encoding: [0xc3]
  store <4 x i32>%data, ptr %addr, align 1
  ret void
}

define void @test_128_5(ptr %addr, <4 x i32> %data) {
; CHECK-LABEL: test_128_5:
; CHECK:       ## %bb.0:
; CHECK-NEXT:    vmovaps %xmm0, (%rdi) ## EVEX TO VEX Compression encoding: [0xc5,0xf8,0x29,0x07]
; CHECK-NEXT:    retq ## encoding: [0xc3]
  store <4 x i32>%data, ptr %addr, align 16
  ret void
}

define  <2 x i64> @test_128_6(ptr %addr) {
; CHECK-LABEL: test_128_6:
; CHECK:       ## %bb.0:
; CHECK-NEXT:    vmovaps (%rdi), %xmm0 ## EVEX TO VEX Compression encoding: [0xc5,0xf8,0x28,0x07]
; CHECK-NEXT:    retq ## encoding: [0xc3]
  %res = load <2 x i64>, ptr %addr, align 16
  ret <2 x i64>%res
}

define void @test_128_7(ptr %addr, <2 x i64> %data) {
; CHECK-LABEL: test_128_7:
; CHECK:       ## %bb.0:
; CHECK-NEXT:    vmovups %xmm0, (%rdi) ## EVEX TO VEX Compression encoding: [0xc5,0xf8,0x11,0x07]
; CHECK-NEXT:    retq ## encoding: [0xc3]
  store <2 x i64>%data, ptr %addr, align 1
  ret void
}

define <2 x i64> @test_128_8(ptr %addr) {
; CHECK-LABEL: test_128_8:
; CHECK:       ## %bb.0:
; CHECK-NEXT:    vmovups (%rdi), %xmm0 ## EVEX TO VEX Compression encoding: [0xc5,0xf8,0x10,0x07]
; CHECK-NEXT:    retq ## encoding: [0xc3]
  %res = load <2 x i64>, ptr %addr, align 1
  ret <2 x i64>%res
}

define void @test_128_9(ptr %addr, <2 x double> %data) {
; CHECK-LABEL: test_128_9:
; CHECK:       ## %bb.0:
; CHECK-NEXT:    vmovaps %xmm0, (%rdi) ## EVEX TO VEX Compression encoding: [0xc5,0xf8,0x29,0x07]
; CHECK-NEXT:    retq ## encoding: [0xc3]
  store <2 x double>%data, ptr %addr, align 16
  ret void
}

define <2 x double> @test_128_10(ptr %addr) {
; CHECK-LABEL: test_128_10:
; CHECK:       ## %bb.0:
; CHECK-NEXT:    vmovaps (%rdi), %xmm0 ## EVEX TO VEX Compression encoding: [0xc5,0xf8,0x28,0x07]
; CHECK-NEXT:    retq ## encoding: [0xc3]
  %res = load <2 x double>, ptr %addr, align 16
  ret <2 x double>%res
}

define void @test_128_11(ptr %addr, <4 x float> %data) {
; CHECK-LABEL: test_128_11:
; CHECK:       ## %bb.0:
; CHECK-NEXT:    vmovaps %xmm0, (%rdi) ## EVEX TO VEX Compression encoding: [0xc5,0xf8,0x29,0x07]
; CHECK-NEXT:    retq ## encoding: [0xc3]
  store <4 x float>%data, ptr %addr, align 16
  ret void
}

define <4 x float> @test_128_12(ptr %addr) {
; CHECK-LABEL: test_128_12:
; CHECK:       ## %bb.0:
; CHECK-NEXT:    vmovaps (%rdi), %xmm0 ## EVEX TO VEX Compression encoding: [0xc5,0xf8,0x28,0x07]
; CHECK-NEXT:    retq ## encoding: [0xc3]
  %res = load <4 x float>, ptr %addr, align 16
  ret <4 x float>%res
}

define void @test_128_13(ptr %addr, <2 x double> %data) {
; CHECK-LABEL: test_128_13:
; CHECK:       ## %bb.0:
; CHECK-NEXT:    vmovups %xmm0, (%rdi) ## EVEX TO VEX Compression encoding: [0xc5,0xf8,0x11,0x07]
; CHECK-NEXT:    retq ## encoding: [0xc3]
  store <2 x double>%data, ptr %addr, align 1
  ret void
}

define <2 x double> @test_128_14(ptr %addr) {
; CHECK-LABEL: test_128_14:
; CHECK:       ## %bb.0:
; CHECK-NEXT:    vmovups (%rdi), %xmm0 ## EVEX TO VEX Compression encoding: [0xc5,0xf8,0x10,0x07]
; CHECK-NEXT:    retq ## encoding: [0xc3]
  %res = load <2 x double>, ptr %addr, align 1
  ret <2 x double>%res
}

define void @test_128_15(ptr %addr, <4 x float> %data) {
; CHECK-LABEL: test_128_15:
; CHECK:       ## %bb.0:
; CHECK-NEXT:    vmovups %xmm0, (%rdi) ## EVEX TO VEX Compression encoding: [0xc5,0xf8,0x11,0x07]
; CHECK-NEXT:    retq ## encoding: [0xc3]
  store <4 x float>%data, ptr %addr, align 1
  ret void
}

define <4 x float> @test_128_16(ptr %addr) {
; CHECK-LABEL: test_128_16:
; CHECK:       ## %bb.0:
; CHECK-NEXT:    vmovups (%rdi), %xmm0 ## EVEX TO VEX Compression encoding: [0xc5,0xf8,0x10,0x07]
; CHECK-NEXT:    retq ## encoding: [0xc3]
  %res = load <4 x float>, ptr %addr, align 1
  ret <4 x float>%res
}

define <4 x i32> @test_128_17(ptr %addr, <4 x i32> %old, <4 x i32> %mask1) {
; CHECK-LABEL: test_128_17:
; CHECK:       ## %bb.0:
; CHECK-NEXT:    vptestmd %xmm1, %xmm1, %k1 ## encoding: [0x62,0xf2,0x75,0x08,0x27,0xc9]
; CHECK-NEXT:    vmovdqa32 (%rdi), %xmm0 {%k1} ## encoding: [0x62,0xf1,0x7d,0x09,0x6f,0x07]
; CHECK-NEXT:    retq ## encoding: [0xc3]
  %mask = icmp ne <4 x i32> %mask1, zeroinitializer
  %r = load <4 x i32>, ptr %addr, align 16
  %res = select <4 x i1> %mask, <4 x i32> %r, <4 x i32> %old
  ret <4 x i32>%res
}

define <4 x i32> @test_128_18(ptr %addr, <4 x i32> %old, <4 x i32> %mask1) {
; CHECK-LABEL: test_128_18:
; CHECK:       ## %bb.0:
; CHECK-NEXT:    vptestmd %xmm1, %xmm1, %k1 ## encoding: [0x62,0xf2,0x75,0x08,0x27,0xc9]
; CHECK-NEXT:    vmovdqu32 (%rdi), %xmm0 {%k1} ## encoding: [0x62,0xf1,0x7e,0x09,0x6f,0x07]
; CHECK-NEXT:    retq ## encoding: [0xc3]
  %mask = icmp ne <4 x i32> %mask1, zeroinitializer
  %r = load <4 x i32>, ptr %addr, align 1
  %res = select <4 x i1> %mask, <4 x i32> %r, <4 x i32> %old
  ret <4 x i32>%res
}

define <4 x i32> @test_128_19(ptr %addr, <4 x i32> %mask1) {
; CHECK-LABEL: test_128_19:
; CHECK:       ## %bb.0:
; CHECK-NEXT:    vptestmd %xmm0, %xmm0, %k1 ## encoding: [0x62,0xf2,0x7d,0x08,0x27,0xc8]
; CHECK-NEXT:    vmovdqa32 (%rdi), %xmm0 {%k1} {z} ## encoding: [0x62,0xf1,0x7d,0x89,0x6f,0x07]
; CHECK-NEXT:    retq ## encoding: [0xc3]
  %mask = icmp ne <4 x i32> %mask1, zeroinitializer
  %r = load <4 x i32>, ptr %addr, align 16
  %res = select <4 x i1> %mask, <4 x i32> %r, <4 x i32> zeroinitializer
  ret <4 x i32>%res
}

define <4 x i32> @test_128_20(ptr %addr, <4 x i32> %mask1) {
; CHECK-LABEL: test_128_20:
; CHECK:       ## %bb.0:
; CHECK-NEXT:    vptestmd %xmm0, %xmm0, %k1 ## encoding: [0x62,0xf2,0x7d,0x08,0x27,0xc8]
; CHECK-NEXT:    vmovdqu32 (%rdi), %xmm0 {%k1} {z} ## encoding: [0x62,0xf1,0x7e,0x89,0x6f,0x07]
; CHECK-NEXT:    retq ## encoding: [0xc3]
  %mask = icmp ne <4 x i32> %mask1, zeroinitializer
  %r = load <4 x i32>, ptr %addr, align 1
  %res = select <4 x i1> %mask, <4 x i32> %r, <4 x i32> zeroinitializer
  ret <4 x i32>%res
}

define <2 x i64> @test_128_21(ptr %addr, <2 x i64> %old, <2 x i64> %mask1) {
; CHECK-LABEL: test_128_21:
; CHECK:       ## %bb.0:
; CHECK-NEXT:    vptestmq %xmm1, %xmm1, %k1 ## encoding: [0x62,0xf2,0xf5,0x08,0x27,0xc9]
; CHECK-NEXT:    vmovdqa64 (%rdi), %xmm0 {%k1} ## encoding: [0x62,0xf1,0xfd,0x09,0x6f,0x07]
; CHECK-NEXT:    retq ## encoding: [0xc3]
  %mask = icmp ne <2 x i64> %mask1, zeroinitializer
  %r = load <2 x i64>, ptr %addr, align 16
  %res = select <2 x i1> %mask, <2 x i64> %r, <2 x i64> %old
  ret <2 x i64>%res
}

define <2 x i64> @test_128_22(ptr %addr, <2 x i64> %old, <2 x i64> %mask1) {
; CHECK-LABEL: test_128_22:
; CHECK:       ## %bb.0:
; CHECK-NEXT:    vptestmq %xmm1, %xmm1, %k1 ## encoding: [0x62,0xf2,0xf5,0x08,0x27,0xc9]
; CHECK-NEXT:    vmovdqu64 (%rdi), %xmm0 {%k1} ## encoding: [0x62,0xf1,0xfe,0x09,0x6f,0x07]
; CHECK-NEXT:    retq ## encoding: [0xc3]
  %mask = icmp ne <2 x i64> %mask1, zeroinitializer
  %r = load <2 x i64>, ptr %addr, align 1
  %res = select <2 x i1> %mask, <2 x i64> %r, <2 x i64> %old
  ret <2 x i64>%res
}

define <2 x i64> @test_128_23(ptr %addr, <2 x i64> %mask1) {
; CHECK-LABEL: test_128_23:
; CHECK:       ## %bb.0:
; CHECK-NEXT:    vptestmq %xmm0, %xmm0, %k1 ## encoding: [0x62,0xf2,0xfd,0x08,0x27,0xc8]
; CHECK-NEXT:    vmovdqa64 (%rdi), %xmm0 {%k1} {z} ## encoding: [0x62,0xf1,0xfd,0x89,0x6f,0x07]
; CHECK-NEXT:    retq ## encoding: [0xc3]
  %mask = icmp ne <2 x i64> %mask1, zeroinitializer
  %r = load <2 x i64>, ptr %addr, align 16
  %res = select <2 x i1> %mask, <2 x i64> %r, <2 x i64> zeroinitializer
  ret <2 x i64>%res
}

define <2 x i64> @test_128_24(ptr %addr, <2 x i64> %mask1) {
; CHECK-LABEL: test_128_24:
; CHECK:       ## %bb.0:
; CHECK-NEXT:    vptestmq %xmm0, %xmm0, %k1 ## encoding: [0x62,0xf2,0xfd,0x08,0x27,0xc8]
; CHECK-NEXT:    vmovdqu64 (%rdi), %xmm0 {%k1} {z} ## encoding: [0x62,0xf1,0xfe,0x89,0x6f,0x07]
; CHECK-NEXT:    retq ## encoding: [0xc3]
  %mask = icmp ne <2 x i64> %mask1, zeroinitializer
  %r = load <2 x i64>, ptr %addr, align 1
  %res = select <2 x i1> %mask, <2 x i64> %r, <2 x i64> zeroinitializer
  ret <2 x i64>%res
}

define <4 x float> @test_128_25(ptr %addr, <4 x float> %old, <4 x i32> %mask1) {
; CHECK-LABEL: test_128_25:
; CHECK:       ## %bb.0:
; CHECK-NEXT:    vptestmd %xmm1, %xmm1, %k1 ## encoding: [0x62,0xf2,0x75,0x08,0x27,0xc9]
; CHECK-NEXT:    vmovaps (%rdi), %xmm0 {%k1} ## encoding: [0x62,0xf1,0x7c,0x09,0x28,0x07]
; CHECK-NEXT:    retq ## encoding: [0xc3]
  %mask = icmp ne <4 x i32> %mask1, zeroinitializer
  %r = load <4 x float>, ptr %addr, align 16
  %res = select <4 x i1> %mask, <4 x float> %r, <4 x float> %old
  ret <4 x float>%res
}

define <4 x float> @test_128_26(ptr %addr, <4 x float> %old, <4 x i32> %mask1) {
; CHECK-LABEL: test_128_26:
; CHECK:       ## %bb.0:
; CHECK-NEXT:    vptestmd %xmm1, %xmm1, %k1 ## encoding: [0x62,0xf2,0x75,0x08,0x27,0xc9]
; CHECK-NEXT:    vmovups (%rdi), %xmm0 {%k1} ## encoding: [0x62,0xf1,0x7c,0x09,0x10,0x07]
; CHECK-NEXT:    retq ## encoding: [0xc3]
  %mask = icmp ne <4 x i32> %mask1, zeroinitializer
  %r = load <4 x float>, ptr %addr, align 1
  %res = select <4 x i1> %mask, <4 x float> %r, <4 x float> %old
  ret <4 x float>%res
}

define <4 x float> @test_128_27(ptr %addr, <4 x i32> %mask1) {
; CHECK-LABEL: test_128_27:
; CHECK:       ## %bb.0:
; CHECK-NEXT:    vptestmd %xmm0, %xmm0, %k1 ## encoding: [0x62,0xf2,0x7d,0x08,0x27,0xc8]
; CHECK-NEXT:    vmovaps (%rdi), %xmm0 {%k1} {z} ## encoding: [0x62,0xf1,0x7c,0x89,0x28,0x07]
; CHECK-NEXT:    retq ## encoding: [0xc3]
  %mask = icmp ne <4 x i32> %mask1, zeroinitializer
  %r = load <4 x float>, ptr %addr, align 16
  %res = select <4 x i1> %mask, <4 x float> %r, <4 x float> zeroinitializer
  ret <4 x float>%res
}

define <4 x float> @test_128_28(ptr %addr, <4 x i32> %mask1) {
; CHECK-LABEL: test_128_28:
; CHECK:       ## %bb.0:
; CHECK-NEXT:    vptestmd %xmm0, %xmm0, %k1 ## encoding: [0x62,0xf2,0x7d,0x08,0x27,0xc8]
; CHECK-NEXT:    vmovups (%rdi), %xmm0 {%k1} {z} ## encoding: [0x62,0xf1,0x7c,0x89,0x10,0x07]
; CHECK-NEXT:    retq ## encoding: [0xc3]
  %mask = icmp ne <4 x i32> %mask1, zeroinitializer
  %r = load <4 x float>, ptr %addr, align 1
  %res = select <4 x i1> %mask, <4 x float> %r, <4 x float> zeroinitializer
  ret <4 x float>%res
}

define <2 x double> @test_128_29(ptr %addr, <2 x double> %old, <2 x i64> %mask1) {
; CHECK-LABEL: test_128_29:
; CHECK:       ## %bb.0:
; CHECK-NEXT:    vptestmq %xmm1, %xmm1, %k1 ## encoding: [0x62,0xf2,0xf5,0x08,0x27,0xc9]
; CHECK-NEXT:    vmovapd (%rdi), %xmm0 {%k1} ## encoding: [0x62,0xf1,0xfd,0x09,0x28,0x07]
; CHECK-NEXT:    retq ## encoding: [0xc3]
  %mask = icmp ne <2 x i64> %mask1, zeroinitializer
  %r = load <2 x double>, ptr %addr, align 16
  %res = select <2 x i1> %mask, <2 x double> %r, <2 x double> %old
  ret <2 x double>%res
}

define <2 x double> @test_128_30(ptr %addr, <2 x double> %old, <2 x i64> %mask1) {
; CHECK-LABEL: test_128_30:
; CHECK:       ## %bb.0:
; CHECK-NEXT:    vptestmq %xmm1, %xmm1, %k1 ## encoding: [0x62,0xf2,0xf5,0x08,0x27,0xc9]
; CHECK-NEXT:    vmovupd (%rdi), %xmm0 {%k1} ## encoding: [0x62,0xf1,0xfd,0x09,0x10,0x07]
; CHECK-NEXT:    retq ## encoding: [0xc3]
  %mask = icmp ne <2 x i64> %mask1, zeroinitializer
  %r = load <2 x double>, ptr %addr, align 1
  %res = select <2 x i1> %mask, <2 x double> %r, <2 x double> %old
  ret <2 x double>%res
}

define <2 x double> @test_128_31(ptr %addr, <2 x i64> %mask1) {
; CHECK-LABEL: test_128_31:
; CHECK:       ## %bb.0:
; CHECK-NEXT:    vptestmq %xmm0, %xmm0, %k1 ## encoding: [0x62,0xf2,0xfd,0x08,0x27,0xc8]
; CHECK-NEXT:    vmovapd (%rdi), %xmm0 {%k1} {z} ## encoding: [0x62,0xf1,0xfd,0x89,0x28,0x07]
; CHECK-NEXT:    retq ## encoding: [0xc3]
  %mask = icmp ne <2 x i64> %mask1, zeroinitializer
  %r = load <2 x double>, ptr %addr, align 16
  %res = select <2 x i1> %mask, <2 x double> %r, <2 x double> zeroinitializer
  ret <2 x double>%res
}

define <2 x double> @test_128_32(ptr %addr, <2 x i64> %mask1) {
; CHECK-LABEL: test_128_32:
; CHECK:       ## %bb.0:
; CHECK-NEXT:    vptestmq %xmm0, %xmm0, %k1 ## encoding: [0x62,0xf2,0xfd,0x08,0x27,0xc8]
; CHECK-NEXT:    vmovupd (%rdi), %xmm0 {%k1} {z} ## encoding: [0x62,0xf1,0xfd,0x89,0x10,0x07]
; CHECK-NEXT:    retq ## encoding: [0xc3]
  %mask = icmp ne <2 x i64> %mask1, zeroinitializer
  %r = load <2 x double>, ptr %addr, align 1
  %res = select <2 x i1> %mask, <2 x double> %r, <2 x double> zeroinitializer
  ret <2 x double>%res
}
