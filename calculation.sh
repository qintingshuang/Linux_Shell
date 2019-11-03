#! /bin/bash

#计算符
#原生的bash不支持数学运算，但是可以通过其他的命令来实现，例如expr
#其中要写成2 + 2 不是2+2
#反引号，而不是单引号 
val=`expr 2 + 2`
echo "两者之和为：$val"

a=10
b=20

val=`expr $a + $b`
echo "a+b: $val"

val=`expr  $a - $b`
echo "a-b:$val"

val=`expr $a / $b`
echo "a/b ：$val"

# 乘号要加\
val=`expr $a \* $b`
echo  "a*b: $val"

if [ $a == $b ]
then  
echo  "a==b";
fi

if  [ $a != $b ]
then  
echo "a！=b"
fi

##关系运算符 
#关系运算符只支持数字，不支持字符串
# -eq  相等
# -ne  不等
# -gt  左边大于右边
# -ge  左边大于等于右边
# -lt  左边小于右边
# -le  左边小于等于右边

if [ $a -eq $b ]
then
  echo "a等于b"
elif [ $a -ne $b ]
then
  echo "a不等于b"
elif [ $a -lt $b ]
then
  echo  "a小于b"
else
  echo "都不符合"
fi

####   &&是并    || 是或者

#字符串运算符
#   = != 
# -z 长度是否为0，为0返回true   -n 长度是否为0，不为0返回true 
#  $   检测字符串是否为空，不为空返回true  直接写

aaa="adaudh"

if [ -z $aaa ]
then  
echo  "字符串长度不为0"
fi

if [ $aaa ]
then  
echo  "字符串不为空"
fi



#文件测试运算符
bbb="./helloWord.sh"

if [ -r $bbb ]
then  
echo  "文件可读"
fi

if [ -e $bbb ]
then  
echo  "文件存在"
fi

if [ -f $bbb ]
then  
echo  "文件为普通文件"
fi

if [ -s  $bbb ]
then 
echo 文件不为空
fi



#echo相关  -e 开始转义
echo -e "hello \n"
echo  "Word"   
echo  `date`




#printf相关
#%s %c %d %f都是格式替代符

#%-10s 指一个宽度为10个字符（-表示左对齐，没有则表示右对齐），
#任何字符都会被显示在10个字符宽的字符内，如果不足则自动以空格填充，
#超过也会将内容全部显示出来。

#%-4.2f 指格式化为小数，其中.2指保留2位小数。

printf "%-10s %-8s %-4s\n" 姓名 性别 体重kg 
printf "%-10s %-8s %-4.2f\n" 郭靖 男 66.1234
printf "%-10s %-8s %-4.2f\n" 杨过 男 48.6543 
printf "%-10s %-8s %-4.2f\n" 郭芙 女 47.9876   


#test 数值、字符串的话，直接比就行
num1="rooboo"
num2="dhadha"
if test $num1 = $num2
then
   echo 两字符串相同
else
   echo 两字符串不相同  
fi

#如果是文件相关的话，直接加参数就可以
bbb="./helloWold.sh"
if  test  -e $bbb
then 
  echo 文件存在
else
  echo 文件不存在
fi
  
  
 

   

function_1(){
echo 被source引用了
}


   



































