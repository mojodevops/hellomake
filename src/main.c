/*
 ============================================================================
 Name        : hello.c
 Author      :
 Version     :
 Copyright   : Your copyright notice
 Description : Hello World in C, Ansi-style
 ============================================================================
 */
#include <locale.h>
#include <stdio.h>
#include "hello.h"
#include "world.h"
int main()
{
    // 显式指定UTF-8
    setlocale(LC_ALL, "en_US.UTF-8"); // Linux兼容
    setlocale(LC_ALL, ".UTF-8");      // Windows兼容
    printf("hello cmake 中文测试\n");
    hello();
    world();
    return 0;
}