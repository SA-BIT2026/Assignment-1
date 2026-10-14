## Assignments for Introduction to Static Program Analysis.

-一、基本信息

课程名称： 程序静态分析基础

姓名： 王渝

学号： 3220262786


二、提交内容

源代码： SVFIR.cpp

测试用例： 包括 add、andersen、branch、control-flow、demo、example、interprocedural 和 swap。

LLVM IR 文件： 提交测试用例对应的 .ll 文件，以及 add 示例在不同优化级别下生成的 IR 文件。

图文件： 包括 SVFIR 图、ICFG（过程间控制流图）和 Call Graph（调用图）的 .dot 文件及对应的 PNG 可视化结果。

测试结果： test-results/ 目录中保存了各测试用例生成的图文件、可视化图片和部分运行日志。

三、测试与结果

使用 SVF 工具运行测试用例，生成相应的图文件，并通过 Graphviz 将 DOT 文件转换为 PNG 图片，以便观察和分析程序的图结构。



#### Note:
Every time you upload your assignments, please attach your **NAME** and **STUDENT ID** to this README file!
