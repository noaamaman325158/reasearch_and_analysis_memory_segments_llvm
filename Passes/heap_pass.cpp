#include "llvm/Pass.h"
#include "llvm/IR/Function.h"
#include "llvm/IR/Instructions.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/IR/IRBuilder.h"
#include "llvm/IR/DataLayout.h"
#include <hiredis/hiredis.h>
#include <chrono>
#include <sstream>

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


            // Generate a unique identifier for this run
            auto now = std::chrono::system_clock::now();
            auto duration = now.time_since_epoch();
            auto millis = std::chrono::duration_cast<std::chrono::milliseconds>(duration).count();
            std::stringstream ss;
            ss << millis;  // Convert to string

            std::string runID = ss.str();
            errs() << "Run ID: " << runID << "\n";

            /// Connect to Redis
            redisContext *c = redisConnect("127.0.0.1", 6379);
            if (c == NULL || c->err) {
                if (c) {
                    errs() << "Error: " << c->errstr << "\n";
                    redisFree(c);
                } else {
                    errs() << "Can't allocate redis context\n";
                }
                return false;
            }



            // Send data to Redis
            std::string functionName = F.getName().str();

            // Create Redis keys with unique identifier
            std::string allocatedKey = runID + ":" + functionName + ":allocated";
            std::string deallocatedKey = runID + ":" + functionName + ":deallocated";

            // Store allocated and deallocated memory data in Redis
            redisCommand(c, "SET %s %llu", allocatedKey.c_str(), allocatedBytes);
            redisCommand(c, "SET %s %llu", deallocatedKey.c_str(), deallocatedBytes);

            // Store keys in a Redis list or set associated with the runID
            redisCommand(c, "LPUSH %s %s", runID.c_str(), allocatedKey.c_str());
            redisCommand(c, "LPUSH %s %s", runID.c_str(), deallocatedKey.c_str());


            // Disconnect
            redisFree(c);

            return false; // We did not modify the function
        }

        void getAnalysisUsage(AnalysisUsage &AU) const override {
            AU.setPreservesAll();
        }
    };
}

char HeapMemoryMeasurement::ID = 0;

static RegisterPass<HeapMemoryMeasurement> X("heap-memory-measurement", "Heap Memory Measurement Pass");
