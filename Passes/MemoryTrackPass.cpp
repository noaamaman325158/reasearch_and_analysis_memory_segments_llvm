#include "llvm/Pass.h"
#include "llvm/IR/Function.h"
#include "llvm/IR/Instruction.h"
#include "llvm/IR/Instructions.h"
#include "llvm/IR/Module.h"
#include "llvm/IR/Type.h"
#include "llvm/Support/raw_ostream.h"

using namespace llvm;

namespace {
  struct MemoryTrackerPass : public FunctionPass {
    static char ID;
    MemoryTrackerPass() : FunctionPass(ID) {}

    virtual bool runOnFunction(Function &F) override {
      const DataLayout &DL = F.getParent()->getDataLayout();

      for (auto &B : F) {
        for (auto &I : B) {
          if (auto *loadInst = dyn_cast<LoadInst>(&I)) {
            // Handle load instruction
            Value *ptr = loadInst->getPointerOperand();
            unsigned size = DL.getTypeAllocSize(ptr->getType()->getPointerElementType());
            errs() << "Load Instruction: Ptr = " << *ptr << ", Size = " << size << "\n";
          } else if (auto *storeInst = dyn_cast<StoreInst>(&I)) {
            // Handle store instruction
            Value *ptr = storeInst->getPointerOperand();
            unsigned size = DL.getTypeAllocSize(ptr->getType()->getPointerElementType());
            errs() << "Store Instruction: Ptr = " << *ptr << ", Size = " << size << "\n";
          }
        }
      }
      return false;
    }
  };
}

char MemoryTrackerPass::ID = 0;
static RegisterPass<MemoryTrackerPass> X("memtrack", "Memory Tracking Pass", false, false);
