# Linux-work

## 一,文件结构
vscode是vs code自动生成
test.sh到test6.sh是学习shell中的一些小实例
笔记是学习shell中自己总结的一些比较容易错的用法和语法
**work1.sh**是递归阶乘的代码
**work2.sh**是自动解压的代码
**work3.sh**是排列文件大小的代码

## 二,运行结果
**阶乘**

    hbw@hbw-Vostro-3559:~/shell$ ./work1.sh 6
    720
    hbw@hbw-Vostro-3559:~/shell$ ./work1.sh
    usage: ./work1.sh [n]
    calculates a number's factorial
**自动解压缩**

![Alt text](https://github.com/converk/Linux-work/blob/master/2.png?raw=true)
**排列文件大小**

![Alt text](https://github.com/converk/Linux-work/blob/master/3.png?raw=true)


## 三,解题思路
**阶乘**

    先获取参数个数,如果不是一个参数则放出usage
    如果是一个参数则继续执行fun函数:
        先判断参数是不是0,是的话返回1,不是则继续执行
        定义两个局部变量和一个全局变量,全局变量i用来接受每一次的返回结果
        局部变量用来循环调用,当j_1=1时开始返回,
        用i接受最终的值,
        echo "$i"输出
**自动解压缩**

    根据不同的参数来执行不同的命令,当输入的是正确的路径,就先进入目的路径,之后再根据文件的后缀名来判断
    按照哪个方式来解压,输入错误的指令,根据情况输出提示信息
**排列文件大小**

    判断传入的参数,如果不是0个参数,或者四个参数,直接输出usage
    在是4个参数的情况下,如果第一和第三个参数不符合规范,打印usage
    之后再用du命令和相应的参数和管道来打印出相应的信息