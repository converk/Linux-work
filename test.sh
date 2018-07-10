#!/bin/bash

echo 'hello,world'
my_url='google'
greeting="hello,${my_url}"
greeting1="hello,$my_url"
echo $greeting $greeting1
echo ${#greeting}
echo ${greeting:2:5}
echo `expr index "${my_url}" o`
strings=('hbw' 'google' 'baidu' 'hust' 'eic')
echo ${strings[1]}
echo ${#strings[1]}
echo ${strings[@]}
echo ${#strings[@]}

