/**
 * SVFIR.cpp
 * @author kisslune
 */

#include "Graphs/SVFG.h"
#include "SVF-LLVM/SVFIRBuilder.h"

using namespace SVF;
using namespace llvm;
using namespace std;

int main(int argc, char** argv)
{
    int arg_num = 0;
    int extraArgc = 4;
    char** arg_value = new char*[argc + extraArgc];
    for (; arg_num < argc; ++arg_num) {
        arg_value[arg_num] = argv[arg_num];
    }
    std::vector<std::string> moduleNameVec;

    int orgArgNum = arg_num;
    arg_value[arg_num++] = (char*)"-model-arrays=true";
    arg_value[arg_num++] = (char*)"-pre-field-sensitive=false";
    arg_value[arg_num++] = (char*)"-model-consts=true";
    arg_value[arg_num++] = (char*)"-stat=false";
    assert(arg_num == (orgArgNum + extraArgc) && "more extra arguments? Change the value of extraArgc");

    moduleNameVec = OptionBase::parseOptions(arg_num, arg_value, "SVF IR", "[options] <input-bitcode...>");

    // ① 构建 SVF Module（只调用这一次）
    LLVMModuleSet::getLLVMModuleSet()->buildSVFModule(moduleNameVec);

    // ② 实例化 builder 并构建 PAG（同时构建 call graph 和 ICFG）
    SVFIRBuilder builder;                                   // ← 全文件只有这一句
    cout << "Generating SVFIR(PAG), call graph and ICFG ..." << endl;
    SVFIR *pag = builder.build();

    // ③ 把三个图 dump 到文件
    pag->dump("pag");
    pag->getCallGraph()->dump("callgraph");
    pag->getICFG()->dump("icfg");

    return 0;
}
