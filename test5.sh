#!/bin/bash

a=20
b=10
if [ $a == $b ]
then
	echo "a等于b"
elif [ $a -lt $b ]
then
	echo "a<b"
else
	echo "a>b"
fi
m=$[a+b]
n=$[a-b]
if test $[m] -eq $[n]
then
	echo "m=n"
elif test $[m] -lt $[n]
then
	echo "m<n"
else
	echo "m>n"
fi
strs=(1 2 3 4 5)
for i in ${strs[@]}
do
	echo  "$i"
done
j=1
while [ $j -le 5 ]
do
	echo "$j"
	let "j++"
done
while read name
do
	echo "按下ctrl+D退出"
	echo "$name is a good name"
done

echo "请输入一个1到3之间的数字"
echo "你输入的数字为"
read num
case $num in
	1)
		echo "你输入了1"
	;;
	2)
		echo "你输入了2"
	;;
	3)
		echo "你输入了3"
	;;
	*)
		echo "你没有输入正确"
	;;
esac

while true
do
	read num
	case $num in
		1)
			echo "跳出循环"
			continue
		;;
		*)
			echo "$num"
		;;
	esac
done

