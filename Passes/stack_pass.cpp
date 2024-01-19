#include "llvm/Pass.h"
#include "llvm/IR/Function.h"
#include "llvm/IR/Instructions.h"
#include "llvm/Support/raw_ostream.h"
#include <sstream>
#include <hiredis/hiredis.h>

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

            // Get the current Unix timestamp
            std::time_t timestamp = std::time(nullptr);

            // Store allocated and deallocated memory data in Redis
            redisCommand(c, "SET %s %llu", allocatedKey.c_str(), numStackAllocations);
            redisCommand(c, "ZADD allocated_keys %ld %s", static_cast<long>(timestamp), allocatedKey.c_str());

            redisCommand(c, "SET %s %llu", deallocatedKey.c_str(), numStackDeallocations);
            redisCommand(c, "ZADD deallocated_keys %ld %s", static_cast<long>(timestamp), deallocatedKey.c_str());




            // Disconnect
            redisFree(c);


            return false; // We did not modify the function
        }

        void getAnalysisUsage(AnalysisUsage &AU) const override {
            AU.setPreservesAll();
        }
    };
}

char StackMemoryAnalysis::ID = 0;

static RegisterPass<StackMemoryAnalysis> Y("stack-memory-analysis", "Stack Memory Analysis Pass");

