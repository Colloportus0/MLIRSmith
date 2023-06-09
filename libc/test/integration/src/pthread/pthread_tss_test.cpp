//===-- Tests for TSS API like pthread_setspecific etc. -------------------===//
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//

#include "src/pthread/pthread_create.h"
#include "src/pthread/pthread_exit.h"
#include "src/pthread/pthread_getspecific.h"
#include "src/pthread/pthread_join.h"
#include "src/pthread/pthread_key_create.h"
#include "src/pthread/pthread_key_delete.h"
#include "src/pthread/pthread_setspecific.h"
#include "test/IntegrationTest/test.h"

#include <pthread.h>

static constexpr int THREAD_DATA_INITVAL = 0x1234;
static constexpr int THREAD_DATA_FINIVAL = 0x4321;
static constexpr int THREAD_RUN_VAL = 0x600D;

int child_thread_data = THREAD_DATA_INITVAL;
int main_thread_data = THREAD_DATA_INITVAL;

pthread_key_t key;
void dtor(void *data) {
  auto *v = reinterpret_cast<int *>(data);
  *v = THREAD_DATA_FINIVAL;
}

void *func(void *obj) {
  ASSERT_EQ(__llvm_libc::pthread_setspecific(key, &child_thread_data), 0);
  int *d = reinterpret_cast<int *>(__llvm_libc::pthread_getspecific(key));
  ASSERT_TRUE(d != nullptr);
  ASSERT_EQ(&child_thread_data, d);
  ASSERT_EQ(*d, THREAD_DATA_INITVAL);
  *reinterpret_cast<int *>(obj) = THREAD_RUN_VAL;
  return nullptr;
}

TEST_MAIN() {
  ASSERT_EQ(__llvm_libc::pthread_key_create(&key, &dtor), 0);
  ASSERT_EQ(__llvm_libc::pthread_setspecific(key, &main_thread_data), 0);
  int *d = reinterpret_cast<int *>(__llvm_libc::pthread_getspecific(key));
  ASSERT_TRUE(d != nullptr);
  ASSERT_EQ(&main_thread_data, d);
  ASSERT_EQ(*d, THREAD_DATA_INITVAL);

  pthread_t th;
  int arg = 0xBAD;
  ASSERT_EQ(__llvm_libc::pthread_create(&th, nullptr, &func, &arg), 0);
  void *retval = &child_thread_data; // Init to some non-nullptr val.
  ASSERT_EQ(__llvm_libc::pthread_join(th, &retval), 0);
  ASSERT_EQ(retval, nullptr);
  ASSERT_EQ(arg, THREAD_RUN_VAL);
  ASSERT_EQ(child_thread_data, THREAD_DATA_FINIVAL);

  ASSERT_EQ(__llvm_libc::pthread_key_delete(key), 0);
  return 0;
}
