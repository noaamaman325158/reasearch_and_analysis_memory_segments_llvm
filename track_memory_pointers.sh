#!/bin/bash

# Define file names
PASS_SOURCE="./Passes/MemoryTrackPass.cpp"
PASS_SHARED_OBJECT="memory_tracker_pass.so"
TEST_PROGRAM_SOURCE="./tests/test_program.cpp"
TEST_PROGRAM_IR="test_program.ll"
MEMORY_TRACKER_OUTPUT="memory_tracker_output.ll"

# Check for necessary tools
if ! command -v clang++ &> /dev/null
then
    echo "clang++ could not be found, please install or set path"
    exit 1
fi

if ! command -v opt &> /dev/null
then
    echo "opt could not be found, please install or set path"
    exit 1
fi

if ! command -v llvm-config &> /dev/null
then
    echo "llvm-config could not be found, please install or set path"
    exit 1
fi

# Compile the LLVM pass into a shared object
echo "Compiling LLVM pass from $PASS_SOURCE..."
clang++ -fPIC -shared $PASS_SOURCE -o $PASS_SHARED_OBJECT `llvm-config --cxxflags --ldflags --libs` -lpqxx -lpq -frtti -std=c++14 -fexceptions
if [ $? -ne 0 ]; then
    echo "Error: LLVM pass compilation failed."
    exit 1
fi

# Compile the test program to LLVM IR
echo "Compiling test program $TEST_PROGRAM_SOURCE to LLVM IR..."
clang++ -S -emit-llvm -g $TEST_PROGRAM_SOURCE -o $TEST_PROGRAM_IR -std=c++14
if [ $? -ne 0 ]; then
    echo "Error: Compiling test program to IR failed."
    exit 1
fi

# Apply the LLVM pass to the test program's IR
echo "Applying LLVM pass to $TEST_PROGRAM_IR..."
opt -enable-new-pm=0 -load ./$PASS_SHARED_OBJECT -memtrack $TEST_PROGRAM_IR -S -o $MEMORY_TRACKER_OUTPUT
if [ $? -ne 0 ]; then
    echo "Error: LLVM pass application failed."
    exit 1
fi

# Display the output IR (optional)
echo "Displaying modified IR from $MEMORY_TRACKER_OUTPUT..."
cat $MEMORY_TRACKER_OUTPUT

# Clean up generated files
echo "Cleaning up generated files..."
[ -f $MEMORY_TRACKER_OUTPUT ] && rm $MEMORY_TRACKER_OUTPUT
[ -f $PASS_SHARED_OBJECT ] && rm $PASS_SHARED_OBJECT
[ -f $TEST_PROGRAM_IR ] && rm $TEST_PROGRAM_IR

echo "Process completed successfully."
