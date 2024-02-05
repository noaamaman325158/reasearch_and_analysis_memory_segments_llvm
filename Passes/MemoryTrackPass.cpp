#include "llvm/Pass.h"
#include "llvm/IR/Function.h"
#include "llvm/IR/Instruction.h"
#include "llvm/IR/Instructions.h"
#include "llvm/IR/IRBuilder.h"
#include "llvm/IR/Module.h"
#include "llvm/IR/DataLayout.h"
#include "llvm/Support/raw_ostream.h"
//#include "pqxx/pqxx"

using namespace llvm;
//using namespace pqxx;

namespace {
    struct MemoryTrackerPass : public FunctionPass {
        static char ID;
        //connection C;  // Database connection object

        MemoryTrackerPass() : FunctionPass(ID) /*, C("dbname=...") - Removed initialization */ {}
        virtual bool runOnFunction(Function &F) override {
            Module *M = F.getParent();
            LLVMContext &Context = M->getContext();
            const DataLayout &DL = M->getDataLayout();

            // Define the prototype of the logging function.
            FunctionType *logFuncType = FunctionType::get(Type::getVoidTy(Context), false);
            FunctionCallee logFunc = M->getOrInsertFunction("logMemoryAccess", logFuncType);

            for (auto &B : F) {
                for (auto &I : B) {
                    if (auto *loadInst = dyn_cast<LoadInst>(&I)) {
                        // Handle load instruction
                        handleMemoryAccess(loadInst, DL, Context, logFunc, "load");
                    } else if (auto *storeInst = dyn_cast<StoreInst>(&I)) {
                        // Handle store instruction
                        handleMemoryAccess(storeInst, DL, Context, logFunc, "store");
                    }
                }
            }

            return false;
        }

        void handleMemoryAccess(Instruction *inst, const DataLayout &DL, LLVMContext &Context, FunctionCallee logFunc, const std::string &operationType) {
            IRBuilder<> Builder(inst);
            Builder.CreateCall(logFunc);  

            Value *ptr = nullptr;
            if (auto *loadInst = dyn_cast<LoadInst>(inst)) {
                ptr = loadInst->getPointerOperand();
            } else if (auto *storeInst = dyn_cast<StoreInst>(inst)) {
                ptr = storeInst->getPointerOperand();
            }

            if (ptr) {
                unsigned size = DL.getTypeAllocSize(ptr->getType()->getPointerElementType());
                std::string ptrAddress = ptr->getName().str();
                if (ptrAddress.empty()) {
                    ptrAddress = "anonymous";
                }

                // Extracting Debug Information
                std::string fileName = "unknown";
                unsigned lineNo = 0;
                if (DILocation *Loc = inst->getDebugLoc()) { // Here we get the location
                    lineNo = Loc->getLine();
                    fileName = Loc->getFilename().str();
                }

                // Print memory operation information along with file name and line number
                errs() << "Memory Operation: Type = " << operationType 
                    << ", Ptr = " << ptrAddress 
                    << ", Size = " << size 
                    << ", Location = " << fileName << ":" << lineNo << "\n";
            }
        }

    };
}

char MemoryTrackerPass::ID = 0;

static RegisterPass<MemoryTrackerPass> X("memtrack", "Memory Tracking Pass", false, false);
