#include "PointerAnalysisPass.h"
#include "llvm/IR/Instructions.h"
#include "llvm/Support/raw_ostream.h"

using namespace llvm;

char PointerAnalysisPass::ID = 0;

bool PointerAnalysisPass::runOnFunction(Function &F) {
    errs() << "Analyzing Pointers in Function: " << F.getName() << "\n";

    std::map<Value*, bool> allocations;

    for (auto &BB : F) {
        for (auto &I : BB) {
            if (auto *call = dyn_cast<CallInst>(&I)) {
                Function *calledFunc = call->getCalledFunction();
                if (!calledFunc) continue;

                // Track allocations
                if (calledFunc->getName() == "malloc" || calledFunc->getName() == "operator new") {
                    errs() << "Memory allocation found: " << *call << "\n";
                    allocations[&I] = true; 
                }

                // Track deallocations
                if (calledFunc->getName() == "free" || calledFunc->getName() == "operator delete") {
                    errs() << "Memory deallocation found: " << *call << "\n";
                    if (call->getNumOperands() > 0) {
                        Value *deallocPtr = call->getOperand(0);
                        if (allocations.find(deallocPtr) != allocations.end()) {
                            allocations[deallocPtr] = false; 
                        }
                    }
                }
            }

            if (isa<LoadInst>(&I) || isa<StoreInst>(&I)) {
                Value *ptr = isa<LoadInst>(&I) ? cast<LoadInst>(&I)->getPointerOperand() : cast<StoreInst>(&I)->getPointerOperand();
                if (allocations.find(ptr) != allocations.end() && !allocations[ptr]) {
                    errs() << "Potential dangling pointer use: " << I << "\n";
                }
            }
        }
    }

    return false; // The pass does not modify the function
}

static RegisterPass<PointerAnalysisPass> X("pointer-analysis", "Pointer Analysis Pass");
