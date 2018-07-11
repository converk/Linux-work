#!/bin/bash
#传入一个参数,计算阶乘

i=1  #全局变量

fun(){
    local j=$1   #定义两个局部变量
    local j_1=$[$j-1]
    if [ $j_1 -eq 1 ]
    then
        i=2
    else
        fun $j_1
        i=$[$j*$i]
    fi
}

if [ $# -ne 1 ]
then
    echo "usage: $0 [n]"
    echo "calculates a number's factorial"
else
    fun $1
    echo "$i"
fi
