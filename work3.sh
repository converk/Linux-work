if [ $# -ne 0 -a $# -ne 4 -a $# -ne 2 ]  #当传进来的参数不全时,输出提示
then   
    echo "usage: $0 [-n N] [ -d DIR ]"
    echo "Show top N largest files/directories"
else
    if [ $# -eq 4 ]  #当有四个参数是,判断是否符合标准
    then
        if [ $1 != "-n" -o $3 != "-d" ]  #如果不符合标准,返回信息
        then
            echo "usage: $0 [-n N] [ -d DIR ]"
            echo "Show top N largest files/directories"
        else
            du -sh $4* | sort -rn | head -$2
        fi
    fi
    if [ $# -eq 0 ]  #当没有参数的时候
    then
         du -sh * | sort -rn  #打印出当前目录下的文件排序
    fi
    if [ $# -eq 2 ]   #当有两个参数时分情况讨论
    then
        if [ $1 = "-n" ]
        then
            du -sh * | sort -rn | head -$2
        fi
        if [ $1 = "-d" ]
        then
            du -sh $2* | sort -rn
        fi
    fi
fi