#!/bin/bash

if [ $# -eq 1 -a $1 = "--list" ]
then
    echo "Supported file types :zip tar tar.gz tar.bz2"
elif [ $# -eq 2 ]
then
    cd $2
    i=${$1##*.}  #提取文件后缀
    if [ i = gz ]
    then
        tar -zxvf $1
    elif [ i = bz2 ]
    then
        tar -jxvf $1
    elif [ i = tar ]
    then
        tar -xvf $1
    else
        unzip $1
    fi
else
    echo "usage: $0 [--list] or [Source compressed file] [Destination path]"
    echo "Self compression.sh according to the file name suffix"
fi
