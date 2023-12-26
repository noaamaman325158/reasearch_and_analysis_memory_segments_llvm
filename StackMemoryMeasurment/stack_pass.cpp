#include "llvm/Pass.h"
#include "llvm/IR/Function.h"
#include "llvm/IR/Instructions.h"
#include "llvm/Support/raw_ostream.h"

using namespace llvm;

namespace {
    struct StackMemoryAnalysis : public FunctionPass {
        static char ID;
        StackMemoryAnalysis() : FunctionPass(ID) {}

        bool runOnFunction(Function &F) override {
            errs() << "Stack memory analysis for function: " << F.getName() << "\n";

            unsigned numStackAllocations = 0;
            unsigned numStackDeallocations = 0;

            for (auto &BB : F) {
                for (auto &I : BB) {
                    if (auto *allocInst = dyn_cast<AllocaInst>(&I)) {
                        // Check if the allocation is for stack memory
                        if (allocInst->isStaticAlloca()) {
                            numStackAllocations++;
                        }
                    } else if (auto *freeInst = dyn_cast<CallInst>(&I)) {
                        Function *Callee = freeInst->getCalledFunction();
                        if (Callee && Callee->getName().startswith("llvm.stackrestore")) {
                            numStackDeallocations++;
                        }
                    }
                }
            }

            errs() << "Stack Allocations: " << numStackAllocations << "\n";
            errs() << "Stack Deallocations: " << numStackDeallocations << "\n";

            return false; // We did not modify the function
        }

        void getAnalysisUsage(AnalysisUsage &AU) const override {
            AU.setPreservesAll();
        }
    };
}

char StackMemoryAnalysis::ID = 0;

static RegisterPass<StackMemoryAnalysis> Y("stack-memory-analysis", "Stack Memory Analysis Pass");

