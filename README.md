# Linux-work

## 一,文件结构
vscode是vs code自动生成
test.sh到test6.sh是学习shell中的一些小实例
笔记是学习shell中自己总结的一些比较容易错的用法和语法
**work1.sh**是递归阶乘的代码
**work2.sh**是自动解压的代码

## 二,运行结果
**阶乘**

    hbw@hbw-Vostro-3559:~/shell$ ./work1.sh 6
    720
    hbw@hbw-Vostro-3559:~/shell$ ./work1.sh
    usage: ./work1.sh [n]
    calculates a number's factorial
**自动解压缩**

![Alt text](/home/hbw/图片/2.png)

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