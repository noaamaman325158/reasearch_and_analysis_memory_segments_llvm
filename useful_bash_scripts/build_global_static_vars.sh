#!/bin/bash

# Get the directory where the script is located
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" &>/dev/null && pwd)"

# Define file names using relative paths
PASS_SOURCE="$SCRIPT_DIR/Passes/static_and_global_vars.cpp"
PASS_SHARED_OBJECT="$SCRIPT_DIR/static_and_global_shared_object.so"
TEST_PROGRAM_SOURCE="$SCRIPT_DIR/tests/test_program.cpp"
TEST_PROGRAM_IR="$SCRIPT_DIR/test_program.ll"
STATIC_AND_GLOBAL_OUTPUT="$SCRIPT_DIR/static_and_global_output.ll"

# Compile the LLVM pass into a shared object
echo "Compiling LLVM pass..."
clang++ $PASS_SOURCE -fPIC -shared -o $PASS_SHARED_OBJECT -fno-rtti $(llvm-config --cxxflags --ldflags --libs) -lhiredis

# Compile the test program to LLVM IR
echo "Compiling test program to LLVM IR..."
clang++ $TEST_PROGRAM_SOURCE -S -emit-llvm -o $TEST_PROGRAM_IR

# Apply the LLVM pass to the test program's IR
echo "Applying LLVM pass to IR..."
opt -enable-new-pm=0 -load $PASS_SHARED_OBJECT -heap-memory-measurement $TEST_PROGRAM_IR -S -o $STATIC_AND_GLOBAL_OUTPUT

# Clean up generated files
echo "Cleaning up..."
rm $STATIC_AND_GLOBAL_OUTPUT $PASS_SHARED_OBJECT $TEST_PROGRAM_IR

echo "Process completed."
