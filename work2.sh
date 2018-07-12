#!/bin/bash

if [ $# -eq 1 -a $1 = "--list" ]  #当只有一个参数,而且是--list时显示支持的类型
then
    echo "Supported file types :zip tar tar.gz tar.bz2"
elif [ $# -eq 2 -o $# -eq 1 ]
then
    file1=$1
    if [ $# -eq 2 ]
    then
        cd $2
    else
        cd ./  #没有第二个参数,默认当前目录,其实也可以不用写,但我就想写上去..
    fi
    echo "$a"
    if [ ${file1##*.} = "gz" ]  #下面就是根据不同的后缀来使用不同的命令
    then
        tar -zxvf $1
    elif [ "${file1##*.}" = "bz2" ]
    then
        tar -jxvf $1
    elif [ "${file1##*.}" = "tar" ]
    then
        tar -xvf $1
    else
        unzip $1
    fi
else  #当参数不满足上述两种条件时,显示usage
    echo "usage: $0 [--list] or [Source compressed file] [Destination path]"
    echo "Self compression.sh according to the file name suffix"
fi
