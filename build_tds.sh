clang++ tds_pass.cpp -fPIC -shared -o tds_pass_shared_object.so -fno-rtti

clang++ test_program.cpp -S  -emit-llvm -o test_program.ll

opt -enable-new-pm=0 -load /home/noaa/Desktop/test_llvm_built_in/tds_pass_shared_object.so -tds-analysis test_program.ll -S -o tds_output.ll

rm tds_output.ll tds_pass_shared_object.so test_program.ll