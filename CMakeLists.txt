cmake_minimum_required(VERSION 3.13.4)
project(MyLLVMPass)

find_package(LLVM REQUIRED CONFIG)

add_definitions(${LLVM_DEFINITIONS})
include_directories(${LLVM_INCLUDE_DIRS})

add_library(LLVMMypass MODULE
  MyPass.cpp
)

set_target_properties(LLVMMypass PROPERTIES
  COMPILE_FLAGS "-fno-rtti"
)

