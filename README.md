## Assignments for Introduction to Static Program Analysis.

- After completing the code assignemts in the corresponding subdirectories, you can go to the root direction, i.e., `Assignments/`, and type:

	- `./build.sh`: to compile and build the code in all subdirectories; or
	- `./build.sh [list_of_directories]`: to compile and build the code in the subdirectories you specified.

- After running `./build.sh`, an executable is expected to be in each corresponding subdirectory.

- Then, you can use the test cases in `Assignment.../Test-Cases` to check whether you code is correct.

#### Note:
Every time you upload your assignments, please attach your **NAME** and **STUDENT ID** to this README file!

## 作业一实验报告

#### 学号：3120262325
#### 姓名：李浩然

### 一、目录结构

`Assignment-1-IR/` 的详细结构如下：

```text
Assignment-1-IR/
├── SVFIR.cpp
├── svfir
├── Test-Cases/
├── Outcome/                    # LLVM IR 文本文件
│   ├── add.ll
│   ├── add_1.ll
│   ├── add_2.ll
│   ├── add_3.ll
│   ├── andersen.ll
│   ├── branch.ll
│   ├── control-flow.ll
│   ├── demo.ll
│   ├── example.ll
│   ├── interprocedural.ll
│   └── swap.ll
└── Graphs/                     # 按输入 IR 文件名分别保存图
    ├── add/
    ├── add_1/
    ├── add_2/
    ├── add_3/
    ├── andersen/
    ├── branch/
    ├── control-flow/
    ├── demo/
    ├── example/
    ├── interprocedural/
    └── swap/
        ├── pag.dot
        ├── pag.svg
        ├── callgraph.dot
        ├── callgraph.svg
        ├── icfg.dot
        └── icfg.svg
```

`Graphs` 中每个子目录均包含与 `swap/` 相同的三份 .dot 及对应的三份 .svg 文件。

### 二、文件说明

| 文件夹或文件 | 说明 |
|---|---|
| `SVFIR.cpp` | 构建 SVFIR，并获取、导出 PAG、CG 和 ICFG 的源码 |
| `svfir` | 编译得到的分析程序，读取 `.ll` 并生成三类 DOT 图 |
| `Test-Cases/` | 保存 add、andersen、branch、control-flow、demo、example、interprocedural、swap 的 C 源文件 |
| `Outcome/` | 保存 8 个测试的基础 IR，以及 add 的 3 组选项对比 IR |
| `Graphs/<名称>/` | 保存 `Outcome/<名称>.ll` 对应的模型及可视化结果 |
| `pag.dot` / `pag.svg` | 程序赋值图及其可视化结果，描述变量、对象及赋值相关关系 |
| `callgraph.dot` / `callgraph.svg` | 调用图及其可视化结果，描述函数间的调用关系 |
| `icfg.dot` / `icfg.svg` | 跨过程控制流图及其可视化结果，描述控制转移以及函数调用和返回关系 |

### 三、不同选项下的 .ll 文件对比

以下以 `add.c` 为例，各组均使用 `-S -emit-llvm` 生成文本形式的 LLVM IR。

| IR 文件 | 附加选项 | 实际区别 |
|---|---|---|
| `add.ll` | 无 | 参数和临时值主要使用 `%0`、`%1` 等编号，函数包含 `optnone` 属性，局部变量通过 `alloca`、`load`、`store` 操作 |
| `add_1.ll` | `-fno-discard-value-names` | **相较于 `add.ll`**，保留了更多可读的变量名称，参数 `%0` 变为 `%a`，栈槽 `%3` 变为 `%a.addr`，加法结果 `%8` 变为 `%add`。 |
| `add_2.ll` | `-fno-discard-value-names -Xclang -disable-O0-optnone` | **相较于 `add_1.ll`**，函数属性中的 `optnone` 消失，变量名称及函数体指令保持一致，仍保留 `alloca` 、 `load` 等。 |
| `add_3.ll` | `-fno-discard-value-names -g` | **相较于 `add_1.ll`**，增加了调试信息，主要计算及变量名称保留，但指令增加 `!dbg` 标记，并新增 `llvm.dbg.declare` 调用及 `DICompileUnit` 等元数据，记录源码文件、变量和行列位置。 |