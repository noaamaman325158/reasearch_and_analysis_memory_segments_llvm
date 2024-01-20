#!/bin/bash

# Define file names
PASS_SOURCE="./Passes/static_and_global_vars.cpp"
PASS_SHARED_OBJECT="static_and_global_shared_object.so"
TEST_PROGRAM_SOURCE="./tests/test_program.cpp"
TEST_PROGRAM_IR="test_program.ll"
STATIC_AND_GLOBAL_OUTPUT="static_and_global_output.ll"

# Compile the LLVM pass into a shared object
echo "Compiling LLVM pass..."
clang++ $PASS_SOURCE -fPIC -shared -o $PASS_SHARED_OBJECT -fno-rtti `llvm-config --cxxflags --ldflags --libs` -lhiredis

# Compile the test program to LLVM IR
echo "Compiling test program to LLVM IR..."
clang++ $TEST_PROGRAM_SOURCE -S -emit-llvm -o $TEST_PROGRAM_IR

# Apply the LLVM pass to the test program's IR
echo "Applying LLVM pass to IR..."
opt -enable-new-pm=0 -load ./$PASS_SHARED_OBJECT -global-static-analysis $TEST_PROGRAM_IR -S -o $STATIC_AND_GLOBAL_OUTPUT

# Clean up generated files
echo "Cleaning up..."
[ -f $STATIC_AND_GLOBAL_OUTPUT ] && rm $STATIC_AND_GLOBAL_OUTPUT
[ -f $PASS_SHARED_OBJECT ] && rm $PASS_SHARED_OBJECT
[ -f $TEST_PROGRAM_IR ] && rm $TEST_PROGRAM_IR

echo "Process completed."

