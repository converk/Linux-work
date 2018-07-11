#!/bin/bash
fun(){
    echo "这是第一个shell函数"
}
echo "函数开始运行"
fun
echo "函数结束运行"

fun1(){
    echo "请输入两个参数"
    echo "第一个"
    read m
    echo "第二个"
    read n
    q=$[$m+$n]
    echo "$q"
}
fun1

fun2(){
    echo "参数个数为$#"
    echo "第一个参数为$1"
    echo "第二个参数为$2"
    echo "第三个参数为$3"
    echo "所有参数$*"
    echo "所有参数$@"
    for i in "$*";do
        echo "$i"
    done
    for i in "$@";do
        echo "$i"
    done
}
fun2 1 2 3