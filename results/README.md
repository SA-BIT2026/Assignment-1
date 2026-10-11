# Assignment-1 运行结果

各子目录对应 `Assignment-1-IR/Test-Cases/` 中的一个测试用例，包含程序输出的三种 DOT 图及其 SVG 图片。

- `pag`：程序赋值图（PAG）。
- `callgraph`：函数调用图。
- `icfg`：跨函数控制流图（ICFG）。

SVG 由同目录下的 DOT 文件通过 Graphviz 转换得到，例如：

```bash
dot -Tsvg callgraph.dot -o callgraph.svg
```

| 测试用例 | PAG | 调用图 | ICFG |
| --- | --- | --- | --- |
| [add.c](../Assignment-1-IR/Test-Cases/add.c) | [SVG](add/pag.svg) · [DOT](add/pag.dot) | [SVG](add/callgraph.svg) · [DOT](add/callgraph.dot) | [SVG](add/icfg.svg) · [DOT](add/icfg.dot) |
| [andersen.c](../Assignment-1-IR/Test-Cases/andersen.c) | [SVG](andersen/pag.svg) · [DOT](andersen/pag.dot) | [SVG](andersen/callgraph.svg) · [DOT](andersen/callgraph.dot) | [SVG](andersen/icfg.svg) · [DOT](andersen/icfg.dot) |
| [branch.c](../Assignment-1-IR/Test-Cases/branch.c) | [SVG](branch/pag.svg) · [DOT](branch/pag.dot) | [SVG](branch/callgraph.svg) · [DOT](branch/callgraph.dot) | [SVG](branch/icfg.svg) · [DOT](branch/icfg.dot) |
| [control-flow.c](../Assignment-1-IR/Test-Cases/control-flow.c) | [SVG](control-flow/pag.svg) · [DOT](control-flow/pag.dot) | [SVG](control-flow/callgraph.svg) · [DOT](control-flow/callgraph.dot) | [SVG](control-flow/icfg.svg) · [DOT](control-flow/icfg.dot) |
| [demo.c](../Assignment-1-IR/Test-Cases/demo.c) | [SVG](demo/pag.svg) · [DOT](demo/pag.dot) | [SVG](demo/callgraph.svg) · [DOT](demo/callgraph.dot) | [SVG](demo/icfg.svg) · [DOT](demo/icfg.dot) |
| [example.c](../Assignment-1-IR/Test-Cases/example.c) | [SVG](example/pag.svg) · [DOT](example/pag.dot) | [SVG](example/callgraph.svg) · [DOT](example/callgraph.dot) | [SVG](example/icfg.svg) · [DOT](example/icfg.dot) |
| [interprocedural.c](../Assignment-1-IR/Test-Cases/interprocedural.c) | [SVG](interprocedural/pag.svg) · [DOT](interprocedural/pag.dot) | [SVG](interprocedural/callgraph.svg) · [DOT](interprocedural/callgraph.dot) | [SVG](interprocedural/icfg.svg) · [DOT](interprocedural/icfg.dot) |
| [swap.c](../Assignment-1-IR/Test-Cases/swap.c) | [SVG](swap/pag.svg) · [DOT](swap/pag.dot) | [SVG](swap/callgraph.svg) · [DOT](swap/callgraph.dot) | [SVG](swap/icfg.svg) · [DOT](swap/icfg.dot) |
