#!/bin/bash

a=10
b=20
if test $[a-b] -lt $[a+b]
then
	echo '相等'
else
	echo '不相等'
fi
c='google'
d='baidu'
if test $c = $d
then
	printf "相等\n"
else
	printf "不相等\n"
fi
if test -x ./test4.sh
then
	printf "可执行\n"
else
	printf "不可执行\n"
fi
if test -z $c
then
	echo '为0'
else
	echo '不为0'
fi
