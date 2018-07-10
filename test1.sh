#!/bin/bash

echo "参数总个数:$#"
echo "文件名为:$0"
echo "第一个参数:$1"
echo "第二个参数:$2"
echo "第三个参数:$3"
echo "$@"
echo "$*"
echo "$@[1]"
echo "$*[1]"
for i in "$@";do
	echo $i
done
for i in "$*";do
	echo $i
done
