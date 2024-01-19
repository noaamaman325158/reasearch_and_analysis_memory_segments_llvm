clang++ stack_pass.cpp -fPIC -shared -o stack_pass_shared_object.so -fno-rtti

clang++ test_program.cpp -S  -emit-llvm -o test_program.ll

opt -enable-new-pm=0 -load /home/noaa/Desktop/test_llvm_built_in/stack_pass_shared_object.so -stack-memory-analysis test_program.ll -S -o stack_output.ll

rm stack_output.ll stack_pass_shared_object.so test_program.ll