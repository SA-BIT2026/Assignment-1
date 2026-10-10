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

    LLVMModuleSet::getLLVMModuleSet()->buildSVFModule(moduleNameVec);

    // Instantiate an SVFIR builder
    SVFIRBuilder builder;
    cout << "Generating SVFIR(PAG), call graph and ICFG ..." << endl;

    // TODO: here, generate SVFIR(PAG), call graph and ICFG, and dump them to files
    //@{
    // Build the SVFIR (PAG). The builder also constructs the ICFG and the call
    // graph of the program internally, so they can be fetched from the SVFIR.
    SVFIR* pag = builder.build();

    CallGraph* callGraph = pag->getCallGraph();
    ICFG* icfg = pag->getICFG();

    // Dump the three graphs as Graphviz dot files into the current directory.
    pag->dump("svfir");            // svfir.dot    : SVFIR (PAG)
    callGraph->dump("callgraph");  // callgraph.dot: call graph
    icfg->dump("icfg");            // icfg.dot     : ICFG
    //@}

    return 0;
}
