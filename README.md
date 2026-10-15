## Assignments for Introduction to Static Program Analysis.

- After completing the code assignemts in the corresponding subdirectories, you can go to the root direction, i.e., `Assignments/`, and type:

	- `./build.sh`: to compile and build the code in all subdirectories; or
	- `./build.sh [list_of_directories]`: to compile and build the code in the subdirectories you specified.

- After running `./build.sh`, an executable is expected to be in each corresponding subdirectory.

- Then, you can use the test cases in `Assignment.../Test-Cases` to check whether you code is correct.

#### Note:
Every time you upload your assignments, please attach your **NAME** and **STUDENT ID** to this README file!

### Assignment 1: generate program graphs

`SVFIR.cpp` builds the PAG, runs Andersen's pointer analysis to resolve indirect
calls, and updates the ICFG with the resolved call and return edges. It writes
`pag.dot`, `callgraph.dot`, and `icfg.dot` to the current working directory.

Use the LLVM 16 installation matching your SVF build with the supplied build
script. For example, after building:

```sh
mkdir -p build/example
cd build/example
"$LLVM_DIR/bin/clang" -g -O0 -Xclang -disable-O0-optnone -emit-llvm -c \
    ../../Assignment-1-IR/Test-Cases/example.c -o example.bc
../../Assignment-1-IR/svfir example.bc
```

Keep the compiler used to generate bitcode consistent with the LLVM version
linked into SVF. The generated DOT files can be viewed with Graphviz.
