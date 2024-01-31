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
                if (GV.isConstant()) continue; 

                errs() << "Global Variable: " << GV.getName() << "\n";
            }

            // Analysis of static variables in functions
            for (Function &F : M) {
                for (BasicBlock &BB : F) {
                    for (Instruction &I : BB) {
                        if (AllocaInst *AI = dyn_cast<AllocaInst>(&I)) {
                            
                            if (AI->isStaticAlloca()) {
                                errs() << "Static Variable in Function " << F.getName() << ": ";
                                errs() << *AI << "\n";
                            }
                        }
                    }
                }
            }

            return false; 
        }

        void getAnalysisUsage(AnalysisUsage &AU) const override {
            AU.setPreservesAll(); // Indicate that we don't modify the IR
        }
    };
}

char GlobalStaticAnalysisPass::ID = 0;
static RegisterPass<GlobalStaticAnalysisPass> X("global-static-analysis", "Global and Static Variable Analysis Pass");
