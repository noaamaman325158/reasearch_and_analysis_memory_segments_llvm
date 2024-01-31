#!/bin/bash

# Define file names
PASS_SOURCE="./Passes/identify_memory_leaks.cpp"
PASS_SHARED_OBJECT="identify_memory_leaks_shared_object.so"
TEST_PROGRAM_SOURCE="./tests/test_program.cpp"
TEST_PROGRAM_IR="test_program.ll"
HEAP_OUTPUT="identify_memory_leaks_out.ll"

# Compile the LLVM pass into a shared object
echo "Compiling LLVM pass..."
clang++ $PASS_SOURCE -fPIC -shared -o $PASS_SHARED_OBJECT -fno-rtti `llvm-config --cxxflags --ldflags --libs` -lhiredis

# Compile the test program to LLVM IR
echo "Compiling test program to LLVM IR..."
clang++ $TEST_PROGRAM_SOURCE -S -emit-llvm -o $TEST_PROGRAM_IR

# Apply the LLVM pass to the test program's IR
echo "Applying LLVM pass to IR..."
opt -enable-new-pm=0 -load ./$PASS_SHARED_OBJECT -heap-memory-measurement $TEST_PROGRAM_IR -S -o $HEAP_OUTPUT

# Clean up generated files
echo "Cleaning up..."
rm $HEAP_OUTPUT $PASS_SHARED_OBJECT $TEST_PROGRAM_IR

echo "Process completed."
