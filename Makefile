# 指定编译器
CC = gcc

# 编译参数，-Iinclude 表示头文件在 include 目录下
CFLAGS = -Iinclude

# 源文件目录
SRCDIR = src

# 构建输出目录
BUILDDIR = build

# 自动查找 src 目录下所有 .c 文件，生成源文件列表
SOURCES = $(wildcard $(SRCDIR)/*.c)

# 将每个源文件名从 src/xxx.c 替换为 build/xxx.o，生成目标文件列表
OBJECTS = $(patsubst $(SRCDIR)/%.c,$(BUILDDIR)/%.o,$(SOURCES))

# 最终生成的可执行文件路径
TARGET = $(BUILDDIR)/hellomake

# 规则：把 src/xxx.c 编译为 build/xxx.o
$(BUILDDIR)/%.o: $(SRCDIR)/%.c
	@mkdir -p $(BUILDDIR)         # 如果 build 目录不存在则创建
	$(CC) $(CFLAGS) -c $< -o $@   # 编译源文件为目标文件

# 规则：把所有 .o 文件链接为最终可执行文件
$(TARGET): $(OBJECTS)
	$(CC) $(CFLAGS) $^ -o $@      # 链接所有目标文件生成可执行文件

# 默认目标，执行 make 时会构建 $(TARGET)
all: $(TARGET)

.PHONY: clean
# 清理构建生成的文件
clean:
	rm -rf $(BUILDDIR)/*.o $(TARGET)