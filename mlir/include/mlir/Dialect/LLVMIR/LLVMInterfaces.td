//===-- LLVMInterfaces.td - LLVM Interfaces ----------------*- tablegen -*-===//
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//
//
// This file defines op and type interfaces for the LLVM dialect in MLIR.
//
//===----------------------------------------------------------------------===//

#ifndef LLVMIR_INTERFACES
#define LLVMIR_INTERFACES

include "mlir/IR/OpBase.td"

def FastmathFlagsInterface : OpInterface<"FastmathFlagsInterface"> {
  let description = [{
    Access to op fastmath flags.
  }];

  let cppNamespace = "::mlir::LLVM";

  let methods = [
    InterfaceMethod<
      /*desc=*/        "Returns a FastmathFlagsAttr attribute for the operation",
      /*returnType=*/  "FastmathFlagsAttr",
      /*methodName=*/  "getFastmathAttr",
      /*args=*/        (ins),
      /*methodBody=*/  [{}],
      /*defaultImpl=*/ [{
        ConcreteOp op = cast<ConcreteOp>(this->getOperation());
        return op.getFastmathFlagsAttr();
      }]
      >,
    StaticInterfaceMethod<
      /*desc=*/        [{Returns the name of the FastmathFlagsAttr attribute
                         for the operation}],
      /*returnType=*/  "StringRef",
      /*methodName=*/  "getFastmathAttrName",
      /*args=*/        (ins),
      /*methodBody=*/  [{}],
      /*defaultImpl=*/ [{
        return "fastmathFlags";
      }]
      >
  ];
}

//===----------------------------------------------------------------------===//
// LLVM dialect type interfaces.
//===----------------------------------------------------------------------===//

// An interface for LLVM pointer element types.
def LLVM_PointerElementTypeInterface
    : TypeInterface<"PointerElementTypeInterface"> {
  let cppNamespace = "::mlir::LLVM";

  let description = [{
    An interface for types that are allowed as elements of LLVM pointer type.
    Such types must have a size.
  }];

  let methods = [
    InterfaceMethod<
      /*description=*/"Returns the size of the type in bytes.",
      /*retTy=*/"unsigned",
      /*methodName=*/"getSizeInBytes",
      /*args=*/(ins "const DataLayout &":$dataLayout),
      /*methodBody=*/"",
      /*defaultImplementation=*/[{
        return dataLayout.getTypeSize($_type);
      }]
    >
  ];
}


#endif // LLVMIR_INTERFACES
