#三个例子

#1.只有for循环、if的例子

for aaa in 1 2 3 4 5 6 7 8
do 
 if test 0 -eq `expr $aaa % 2`
 then 
   echo "输出的偶数：${aaa}"
 fi
done

# while function  continue的例子 100以内获取2的倍数，打印出来，奇数数组打印出来，正常来讲的话
#和java不同，可以捕获到定义在if里面的变量


#其中返回值类型为int类型，其他类型都会报错！！！！
func(){
int=0
#read num
while(( $int <= $1))
do 
 if test 0 -eq `expr  $int % 2`
 then  
    echo  "100以内输出的偶数：$int"
 else
   array_num[$int]=$int
 fi
let "int++"
done
echo "输出的奇数数组为：${array_num[@]}"
return `expr $1 + 10`
}

echo ---函数开始----
#这里给实参，可以使用read关键字，最好使用通过$1 控制台给参数
func $1
echo "执行后为: $? "
echo ---函数结束----

# 3.case function break的例子   选择出自己想要的文本
#场景： 如果是start stop  restart status参数执行不同的命令

casefunction(){

case $1 in 
 start) 
  echo "start:java -jar xxx.jar";;
  stop)
  echo "stop: kill -9 xxx.jar ";;
  restart)
  echo "restart: kill -9 xxx.jar "
  echo "java -jar xxx.jar ";;
  *)
  echo  "请重新输入参数 start|stop|restart"
 esac
 
}
echo ----casefunction开始----
casefunction $1
echo ----casefunction结束----



