#include "BSSSegmentAnalysisPass.h"
#include "llvm/IR/GlobalVariable.h"
#include "llvm/IR/Module.h"
#include "llvm/IR/Type.h"
#include "llvm/Support/raw_ostream.h"

using namespace llvm;

char BSSSegmentAnalysisPass::ID = 0;

bool BSSSegmentAnalysisPass::runOnModule(Module &M) {
    errs() << "Analyzing potential .bss segment variables:\n";

    unsigned long totalSize = 0;
    unsigned int variableCount = 0;
    uint64_t largestSize = 0;
    StringRef largestVariableName;

    for (GlobalVariable &GV : M.globals()) {
        if (!GV.hasInitializer() || GV.getInitializer()->isNullValue()) {
            variableCount++;
            errs() << "Global Variable: " << GV.getName();
            errs() << " - Type: " << *(GV.getValueType());

            if (GV.getValueType()->isSized()) {
                uint64_t size = M.getDataLayout().getTypeAllocSize(GV.getValueType());
                errs() << " - Size: " << size << " bytes";
                totalSize += size;

                if (size > largestSize) {
                    largestSize = size;
                    largestVariableName = GV.getName();
                }
            }

            errs() << "\n";
        }
    }

    errs() << "Total potential .bss segment size: " << totalSize << " bytes\n";
    errs() << "Number of variables: " << variableCount << "\n";
    errs() << "Average size of variables: " << (variableCount ? totalSize / variableCount : 0) << " bytes\n";
    errs() << "Largest variable: " << largestVariableName << " (" << largestSize << " bytes)\n";

    return false; 
}

static RegisterPass<BSSSegmentAnalysisPass> X("bss-analysis", "BSS Segment Analysis Pass");
