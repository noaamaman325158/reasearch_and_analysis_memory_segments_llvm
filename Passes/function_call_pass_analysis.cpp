#include "FunctionCallAnalysisPass.h"
#include "llvm/IR/Instructions.h"
#include "llvm/Support/raw_ostream.h"

using namespace llvm;

char FunctionCallAnalysisPass::ID = 0;

bool FunctionCallAnalysisPass::runOnModule(Module &M) {
    errs() << "Function Call Analysis:\n";

    for (Function &F : M) {
        if (F.isDeclaration()) continue;

        errs() << "Function: " << F.getName() << "\n";
        std::map<Function *, unsigned> callCounts;

        for (BasicBlock &BB : F) {
            for (Instruction &I : BB) {
                if (auto *callInst = dyn_cast<CallInst>(&I)) {
                    if (Function *calledFunc = callInst->getCalledFunction()) {
                        callCounts[calledFunc]++;
                    }
                }
            }
        }

        for (auto &callCount : callCounts) {
            errs() << "  Function " << callCount.first->getName() << " is called "
                   << callCount.second << " time(s)\n";
            if (callCount.first == &F) {
                errs() << "  Recursive call detected\n";
            }
        }
    }

    return false; // The pass does not modify the module
}

static RegisterPass<FunctionCallAnalysisPass> X("func-call-analysis", "Function Call Analysis Pass");
