#include "llvm/Pass.h"
#include "llvm/IR/Module.h"
#include "llvm/IR/GlobalVariable.h"
#include "llvm/IR/Instructions.h"
#include "llvm/Support/raw_ostream.h"

using namespace llvm;

namespace {
    struct GlobalStaticAnalysisPass : public ModulePass {
        static char ID;
        GlobalStaticAnalysisPass() : ModulePass(ID) {}

        bool runOnModule(Module &M) override {
            errs() << "Analyzing Global and Static Variables\n";

            for (GlobalVariable &GV : M.globals()) {
                if (GV.isConstant()) continue; // Skip constant globals

                errs() << "Global Variable: " << GV.getName() << "\n";
                // Additional analysis can be done here
            }

            // Analysis of static variables in functions
            for (Function &F : M) {
                for (BasicBlock &BB : F) {
                    for (Instruction &I : BB) {
                        if (AllocaInst *AI = dyn_cast<AllocaInst>(&I)) {
                            // Check if the allocation is static (local to the function)
                            if (AI->isStaticAlloca()) {
                                errs() << "Static Variable in Function " << F.getName() << ": ";
                                errs() << *AI << "\n";
                                // Further analysis can be implemented here
                            }
                        }
                    }
                }
            }

            return false; // Return false because we are not modifying the module
        }

        void getAnalysisUsage(AnalysisUsage &AU) const override {
            AU.setPreservesAll(); // Indicate that we don't modify the IR
        }
    };
}

char GlobalStaticAnalysisPass::ID = 0;
static RegisterPass<GlobalStaticAnalysisPass> X("global-static-analysis", "Global and Static Variable Analysis Pass");
