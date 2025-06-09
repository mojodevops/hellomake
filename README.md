# HelloMake 项目

## 项目简介

本项目演示了如何使用 Makefile 管理一个简单的 C 语言多文件工程的编译过程。  
项目结构清晰，适合初学者学习 Makefile 的基本用法。

## 目录结构

```
hellomake/
├── include/         # 头文件目录（如 hello.h, world.h）
├── src/             # 源文件目录（如 main.c, hello.c, world.c）
├── build/           # 编译输出目录（自动生成）
├── Makefile         # 构建脚本
└── README.md        # 项目说明
```

## 编译方法

在 Linux 或 macOS 终端下，进入项目根目录，执行：

```sh
make
```

编译完成后，生成的可执行文件位于 `build/hellomake`。

## 清理构建文件

执行：

```sh
make clean
```

会删除 `build/` 目录下的所有中间文件和最终可执行文件。

## Makefile 说明

- 自动查找 `src/` 目录下所有 `.c` 文件，无需手动维护源文件列表。
- 所有目标文件和可执行文件都输出到 `build/` 目录。
- 支持增量编译和一键清理。

## 适用环境

- GCC 编译器
- Linux/macOS（如需在 Windows 下使用，请将 `rm -rf` 替换为 `del` 命令）
