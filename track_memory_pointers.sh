#!/bin/bash

# Define file names
PASS_SOURCE="./Passes/MemoryTrackPass.cpp"
PASS_SHARED_OBJECT="memory_tracker_pass.so"
TEST_PROGRAM_SOURCE="./tests/test_program.cpp"
TEST_PROGRAM_IR="test_program.ll"
MEMORY_TRACKER_OUTPUT="memory_tracker_output.ll"

# Compile the LLVM pass into a shared object
# Link against the pqxx library for PostgreSQL support
# Enable RTTI and exceptions, and specify C++14 as the standard
echo "Compiling LLVM pass..."
clang++ -fPIC -shared $PASS_SOURCE -o $PASS_SHARED_OBJECT `llvm-config --cxxflags --ldflags --libs` -lpqxx -lpq -frtti -std=c++14 -fexceptions

# Compile the test program to LLVM IR
echo "Compiling test program to LLVM IR..."
clang++ -S -emit-llvm $TEST_PROGRAM_SOURCE -o $TEST_PROGRAM_IR -std=c++14

# Apply the LLVM pass to the test program's IR
echo "Applying LLVM pass to IR..."
opt -enable-new-pm=0 -load ./$PASS_SHARED_OBJECT -memtrack $TEST_PROGRAM_IR -S -o $MEMORY_TRACKER_OUTPUT

# Display the output IR (optional)
echo "Displaying modified IR..."
cat $MEMORY_TRACKER_OUTPUT

# Clean up generated files
echo "Cleaning up..."
[ -f $MEMORY_TRACKER_OUTPUT ] && rm $MEMORY_TRACKER_OUTPUT
[ -f $PASS_SHARED_OBJECT ] && rm $PASS_SHARED_OBJECT
[ -f $TEST_PROGRAM_IR ] && rm $TEST_PROGRAM_IR

echo "Process completed."
