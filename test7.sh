#!/bin/bash

read m
j=$m
while [ $m -ge 2 ]
do
    i=$[$m-1]
    j=$[$j*$i]
    let "m--"
done
echo "$j"