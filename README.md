# MLIRSmith

MLIRSmith is a fuzzing technique for the MLIR compiler infrastructure, which can directly generate MLIR programs to fuzz the MLIR compiler infrastructure.

## Note: The number of function, which is one of the hyperparameters, is set to be 1 in the evaluation. 

## Setting up MLIRSmith

MLIRSmith runs natively on Linux. Detailed instructions are provided below. The following commands apply to build MLIRSmith from source.

``` bash
git clone https://github.com/Colloportus0/MLIRSmith.git
mkdir MLIRSmith/build
cd MLIRSmith/build
cmake -G Ninja ../llvm \
	-DLLVM_ENABLE_PROJECTS=mlir \
    -DLLVM_BUILD_EXAMPLES=ON \
    -DLLVM_TARGETS_TO_BUILD="X86;NVPTX;AMDGPU" \
    -DCMAKE_BUILD_TYPE=Release \
    -DLLVM_ENABLE_ASSERTIONS=ON \
    -DCMAKE_C_FLAGS="-g -O0 -fprofile-arcs -ftest-coverage" \
    -DCMAKE_CXX_FLAGS="-g -O0 -fprofile-arcs -ftest-coverage" \
    -DCMAKE_EXE_LINKER_FLAGS="-g -fprofile-arcs -ftest-coverage -lgcov" \
    -DLLVM_PARALLEL_LINK_JOBS=2
cmake --build . --target check-mlir
```

## Use MLIRSmith

Suppose MLIRSmith is installed to `$HOME/MLIRSmith` locally. You can simply generate a **MLIR** program from `src.mlir` :

```bash
cd $HOME/MLIRSmith
build/bin/toyc-ch5 -emit=mlir-affine src.mlir 2>test.mlir
```

### MLIR Compiler Fuzzing

The `mlir-fuzz.py` using Algorithm ~3 in our paper can be used for fuzzing MLIR compiler infrastructure. The *opts* in Algorithm 3 can be found in [opt.txt](opt.txt)

Using the following command to fuzz MLIR compiler infrastructure for 24 hours:

```bash
timeout 86400s python3 mlir-fuzz.py
```

## Learning More

- Bugs: 

  The details of confirmed/fixed bugs detected by MLIRSmith over a two-month fuzzing period are presented in [bugs_in_total](paper/MLIRSmith_bugs.xlsx)

- 24-hour Generated Programs:

  The MLIR programs generated in *RQ2* in our paper can be found in:

  a) Programs generated by MLIRSmith in 24 hours: [MLIRSmith_mlir](paper/generated_program/MLIRSmith_mlir)
  
  b) Programs generated by NNSmith(IREE) in 24 hours: [NNSmith_IREE_mlir](paper/generated_program/NNSmith_IREE_mlir)
  
  c) Programs generated by NNSmith(ONNX-MLIR) in 24 hours: [NNSmith_ONNX-MLIR_mlir](paper/generated_program/NNSmith_ONNX-MLIR_mlir)
  
- 24-hour Generated Gcov Files:

  We use `GCOV` to measure the number of lines and branches covered by MLIRSmith and baselines. The generated gcov files can be found in:

  a) Gcov files of MLIRSmith: [MLIRSmith_gcov](paper/generated_gcov/MLIRSmith_gcov)

  b) Gcov files of NNSmith(IREE): [NNSmith_IREE_gcov](paper/generated_gcov/NNSmith_IREE_gcov)

  c) Gcov files of NNSmith(ONNX-MLIR): [NNSmith_ONNX-MLIR_gcov](paper/generated_gcov/NNSmith_ONNX-MLIR_gcov)

- 24-hour Generated Dcov Files:

  We use `toyc-ch6` in this repository to measure the diversity of the MLIR programs generated by MLIRSmith and baselines. The generated dcov files, i.e. the measured result, can be found in:

  a) Dcov files of MLIRSmith: [MLIRSmith_dcov](paper/generated_dcov/MLIRSmith_dcov)
  
  b) Dcov files of NNSmith(IREE): [NNSmith_IREE_dcov](paper/generated_dcov/NNSmith_IREE_dcov)
  
  c) Dcov files of NNSmith(ONNX-MLIR): [NNSmith_ONNX-MLIR_dcov](paper/generated_dcov/NNSmith_ONNX-MLIR_dcov)

