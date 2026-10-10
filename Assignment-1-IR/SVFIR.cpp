/**
 * SVFIR.cpp
 * @author kisslune
 */

#include "Graphs/SVFG.h"
#include "SVF-LLVM/SVFIRBuilder.h"
#include "WPA/Andersen.h"

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

    LLVMModuleSet::getLLVMModuleSet()->buildSVFModule(moduleNameVec);

    // Instantiate an SVFIR builder
    SVFIRBuilder builder;
    cout << "Generating SVFIR(PAG), call graph and ICFG ..." << endl;

    // TODO: here, generate SVFIR(PAG), call graph and ICFG, and dump them to files
    //@{
        // 1. 构建 SVFIR，也称为 PAG（程序赋值图）
        // builder.build() 同时会构建初始 ICFG
        SVFIR* pag = builder.build();
        pag->dump("pag");

        // 2. 运行 Andersen 指针分析，获取并导出调用图
        AndersenWaveDiff* ander =
            AndersenWaveDiff::createAndersenWaveDiff(pag);

        auto* callgraph = ander->getCallGraph();
        callgraph->dump("callgraph");

        // 3. 获取并导出过程间控制流图（ICFG）
        ICFG* icfg = pag->getICFG();
        icfg->dump("icfg");
    //@}

    return 0;
}
