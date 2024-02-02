# Define file names
PASS_SOURCE="./Passes/tds_pass.cpp"
PASS_SHARED_OBJECT="tds_pass_shared_object.so"
TEST_PROGRAM_SOURCE="./tests/basic_program.cpp"
TEST_PROGRAM_IR="basic_program.ll"
TDS_OUTPUT="tds_output.ll"


# Compile the LLVM pass into a shared object
echo "Compiling LLVM pass..."
clang++ $PASS_SOURCE -fPIC -shared -o $PASS_SHARED_OBJECT -fno-rtti `llvm-config --cxxflags --ldflags --libs` -lhiredis

# Compile the test program to LLVM IR
echo "Compiling test program to LLVM IR..."
clang++ $TEST_PROGRAM_SOURCE -S -emit-llvm -o $TEST_PROGRAM_IR

# Apply the LLVM pass to the test program's IR
echo "Applying LLVM pass to IR..."
opt -enable-new-pm=0 -load ./$PASS_SHARED_OBJECT -tds-analysis $TEST_PROGRAM_IR -S -o $TDS_OUTPUT

# Clean up generated files
echo "Cleaning up..."
rm $TDS_OUTPUT $PASS_SHARED_OBJECT $TEST_PROGRAM_IR

echo "Process completed."
