// Check that types, widths, __CLANG_ATOMIC* macros, etc. match on the host and
// device sides of CUDA compilations. Note that we filter out long double and
// maxwidth of _BitInt(), as this is intentionally different on host and device.
//
// Also ignore __CLANG_ATOMIC_LLONG_LOCK_FREE on i386. The default host CPU for
// an i386 triple is typically at least an i586, which has cmpxchg8b (Clang
// feature, "cx8"). Therefore, __CLANG_ATOMIC_LLONG_LOCK_FREE is 2 on the host,
// but the value should be 1 for the device.
//
// Unlike CUDA, the width of SPIR-V POINTER type could differ between host and
// device, because SPIR-V explicitly sets POINTER type width. So it is the
// user's responsibility to choose the offload with the right POINTER size,
// otherwise the values for __CLANG_ATOMIC_POINTER_LOCK_FREE could be different.

// RUN: mkdir -p %t

// RUN: %clang --cuda-host-only -nocudainc -nocudalib --offload=spirv32 -target i386-unknown-linux-gnu -x cuda -emit-llvm -E -dM -o - /dev/null \
// RUN:   | grep -E '__CLANG_ATOMIC' \
// RUN:   | grep -Ev '_ATOMIC_LLONG_LOCK_FREE' > %t/i386-host-defines-filtered
// RUN: %clang --cuda-device-only -nocudainc -nocudalib --offload=spirv32 -target i386-unknown-linux-gnu -x cuda -emit-llvm -E -dM -o - /dev/null \
// RUN:   | grep -E '__CLANG_ATOMIC' \
// RUN:   | grep -Ev '_ATOMIC_LLONG_LOCK_FREE' > %t/i386-device-defines-filtered
// RUN: diff %t/i386-host-defines-filtered %t/i386-device-defines-filtered

// RUN: %clang --cuda-host-only -nocudainc -nocudalib --offload=spirv32 -target i386-windows-msvc -x cuda -emit-llvm -E -dM -o - /dev/null \
// RUN:   | grep -E '__CLANG_ATOMIC' \
// RUN:   | grep -Ev '_ATOMIC_LLONG_LOCK_FREE' > %t/i386-msvc-host-defines-filtered
// RUN: %clang --cuda-device-only -nocudainc -nocudalib --offload=spirv32 -target i386-windows-msvc -x cuda -emit-llvm -E -dM -o - /dev/null \
// RUN:   | grep -E '__CLANG_ATOMIC' \
// RUN:   | grep -Ev '_ATOMIC_LLONG_LOCK_FREE' > %t/i386-msvc-device-defines-filtered
// RUN: diff %t/i386-msvc-host-defines-filtered %t/i386-msvc-device-defines-filtered

// RUN: %clang --cuda-host-only -nocudainc -nocudalib --offload=spirv64 -target x86_64-unknown-linux-gnu -x cuda -emit-llvm -E -dM -o - /dev/null \
// RUN:   | grep -E '__CLANG_ATOMIC' \
// RUN:   | grep -Ev '_ATOMIC_LLONG_LOCK_FREE' > %t/x86_64-host-defines-filtered
// RUN: %clang --cuda-device-only -nocudainc -nocudalib --offload=spirv64 -target x86_64-unknown-linux-gnu -x cuda -emit-llvm -E -dM -o - /dev/null \
// RUN:   | grep -E '__CLANG_ATOMIC' \
// RUN:   | grep -Ev '_ATOMIC_LLONG_LOCK_FREE' > %t/x86_64-device-defines-filtered
// RUN: diff %t/x86_64-host-defines-filtered %t/x86_64-device-defines-filtered

// RUN: %clang --cuda-host-only -nocudainc -nocudalib --offload=spirv64 -target powerpc64-unknown-linux-gnu -x cuda -emit-llvm -E -dM -o - /dev/null \
// RUN:   | grep -E '__CLANG_ATOMIC' \
// RUN:   | grep -Ev '_ATOMIC_LLONG_LOCK_FREE' > %t/powerpc64-host-defines-filtered
// RUN: %clang --cuda-device-only -nocudainc -nocudalib --offload=spirv64 -target powerpc64-unknown-linux-gnu -x cuda -emit-llvm -E -dM -o - /dev/null \
// RUN:   | grep -E '__CLANG_ATOMIC' \
// RUN:   | grep -Ev '_ATOMIC_LLONG_LOCK_FREE' > %t/powerpc64-device-defines-filtered
// RUN: diff %t/powerpc64-host-defines-filtered %t/powerpc64-device-defines-filtered

// RUN: %clang --cuda-host-only -nocudainc -nocudalib --offload=spirv64 -target x86_64-windows-msvc -x cuda -emit-llvm -E -dM -o - /dev/null \
// RUN:   | grep -E '__CLANG_ATOMIC' \
// RUN:   | grep -Ev '_ATOMIC_LLONG_LOCK_FREE' > %t/x86_64-msvc-host-defines-filtered
// RUN: %clang --cuda-device-only -nocudainc -nocudalib --offload=spirv64 -target x86_64-windows-msvc -x cuda -emit-llvm -E -dM -o - /dev/null \
// RUN:   | grep -E '__CLANG_ATOMIC' \
// RUN:   | grep -Ev '_ATOMIC_LLONG_LOCK_FREE' > %t/x86_64-msvc-device-defines-filtered
// RUN: diff %t/x86_64-msvc-host-defines-filtered %t/x86_64-msvc-device-defines-filtered

