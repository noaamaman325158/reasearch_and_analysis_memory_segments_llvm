clang++ heap_pass.cpp -fPIC -shared -o heap_pass_shared_object.so -fno-rtti

clang++ test_program.cpp -S  -emit-llvm -o test_program.ll

opt -enable-new-pm=0 -load /home/noaa/Desktop/test_llvm_built_in/heap_pass_shared_object.so -heap-memory-measurement test_program.ll -S -o heap_output.ll

rm heap_output.ll heap_pass_shared_object.so test_program.ll