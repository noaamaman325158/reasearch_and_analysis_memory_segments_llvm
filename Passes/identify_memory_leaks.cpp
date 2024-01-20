#include "llvm/Pass.h"
#include "llvm/IR/Function.h"
#include "llvm/IR/Instructions.h"
#include "llvm/IR/Module.h"
#include "llvm/Support/raw_ostream.h"

using namespace llvm;

namespace {
    struct MemoryLeakDetectorPass : public FunctionPass {
        static char ID;
        MemoryLeakDetectorPass() : FunctionPass(ID) {}

        bool runOnFunction(Function &F) override {
            std::map<Value *, bool> allocations;
            unsigned int allocCount = 0;
            unsigned int deallocCount = 0;

            for (BasicBlock &BB : F) {
                for (Instruction &I : BB) {
                    if (auto *callInst = dyn_cast<CallInst>(&I)) {
                        if (Function *calledFunc = callInst->getCalledFunction()) {
                            StringRef funcName = calledFunc->getName();

                            // Check for allocation
                            if (funcName == "malloc") {
                                allocations[&I] = false; // false indicates not freed
                                allocCount++;
                            }

                            // Check for deallocation
                            if (funcName == "free" && callInst->getNumOperands() > 0) {
                                Value *arg = callInst->getOperand(0);
                                if (allocations.find(arg) != allocations.end()) {
                                    allocations[arg] = true; // Mark as freed
                                    deallocCount++;
                                }
                            }
                        }
                    }
                }
            }

            // Report allocations and deallocations
            errs() << "In function " << F.getName() << ":\n";
            errs() << "Number of allocations: " << allocCount << "\n";
            errs() << "Number of deallocations: " << deallocCount << "\n";

            // Check for leaks
            for (auto &alloc : allocations) {
                if (!alloc.second) {
                    errs() << "Potential memory leak: Memory allocated at ";
                    alloc.first->print(errs());
                    errs() << " is not freed in function " << F.getName() << "\n";
                }
            }

            return false;
        }

        void getAnalysisUsage(AnalysisUsage &AU) const override {
            AU.setPreservesAll();
        }
    };
}

char MemoryLeakDetectorPass::ID = 0;
static RegisterPass<MemoryLeakDetectorPass> X("memleak", "Memory Leak Detector Pass");
