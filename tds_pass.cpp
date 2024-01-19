#include "llvm/Pass.h"
#include "llvm/IR/Function.h"
#include "llvm/IR/Instructions.h"
#include "llvm/IR/Module.h"
#include "llvm/Support/raw_ostream.h"

using namespace llvm;

namespace {
struct TSDAnalysisPass : public FunctionPass {
  static char ID;
  TSDAnalysisPass() : FunctionPass(ID) {}

  bool runOnFunction(Function &F) override {
    errs() << "Analyzing TSD in function: " << F.getName() << "\n";

    bool foundTSD = false;

    for (BasicBlock &BB : F) {
      for (Instruction &I : BB) {
        if (auto *callInst = dyn_cast<CallInst>(&I)) {
          if (auto *func = callInst->getCalledFunction()) {
            if (func->getName().startswith("__tls_get_addr")) {
              errs() << "Thread-Local Variable Access: " << func->getName() << "\n";
              foundTSD = true;
            }
          }
        }
      }
    }

    return foundTSD;
  }

  void getAnalysisUsage(AnalysisUsage &AU) const override {
    AU.setPreservesAll();
  }
};
}

char TSDAnalysisPass::ID = 0;

static RegisterPass<TSDAnalysisPass> X("tds-analysis", "TSD Analysis Pass");

