#include "llvm/Pass.h"
#include "llvm/IR/Function.h"
#include "llvm/IR/Instructions.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/IR/IRBuilder.h"
#include "llvm/IR/DataLayout.h"
//#include <hiredis/hiredis.h> // Include the hiredis library

using namespace llvm;

namespace {
    struct HeapMemoryMeasurement : public FunctionPass {
        static char ID;
        HeapMemoryMeasurement() : FunctionPass(ID) {}

        bool runOnFunction(Function &F) override {
            errs() << "Heap memory measurement for function: " << F.getName() << "\n";

            unsigned long long allocatedBytes = 0;
            unsigned long long deallocatedBytes = 0;

            const DataLayout &DL = F.getParent()->getDataLayout(); // Initialize DataLayout

            for (auto &BB : F) {
                for (auto &I : BB) {
                    if (auto *allocInst = dyn_cast<AllocaInst>(&I)) {
                        Type *AllocType = allocInst->getAllocatedType();
                        allocatedBytes += DL.getTypeAllocSize(AllocType);
                    } else if (auto *freeInst = dyn_cast<CallInst>(&I)) {
                        Function *Callee = freeInst->getCalledFunction();
                        if (Callee && Callee->getName().startswith("free")) {
                            Value *AllocValue = freeInst->getOperand(0);
                            if (Instruction *AllocInst = dyn_cast<Instruction>(AllocValue)) {
                                if (auto *allocaInst = dyn_cast<AllocaInst>(AllocInst)) {
                                    Type *AllocType = allocaInst->getAllocatedType();
                                    deallocatedBytes += DL.getTypeAllocSize(AllocType);
                                }
                            }
                        }
                    }
                }
            }

            errs() << "Allocated bytes: " << allocatedBytes << "\n";
            errs() << "Deallocated bytes: " << deallocatedBytes << "\n";

            // Redis connection code commented out
            // ...

            return false; // We did not modify the function
        }

        void getAnalysisUsage(AnalysisUsage &AU) const override {
            AU.setPreservesAll();
        }
    };
}

char HeapMemoryMeasurement::ID = 0;

static RegisterPass<HeapMemoryMeasurement> X("heap-memory-measurement", "Heap Memory Measurement Pass");

