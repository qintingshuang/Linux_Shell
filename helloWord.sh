#! /bin/bash
################shell 第一节#####################
#定义变量
hello="qintingshaung"
#只读 readonly
readonly world="shell练习第一节"
#删除变量，注意只读的不能删除
unset hello
#输出文字，其中引用表量要用$
echo ${hello}$world

#拼接字符串，一般shell只有两种变量类型 String与数字 也是最常用的
your_name="runoob"
#双引号
greeting="haha,"$your_name"!"
greeting_1="haha,${your_name}"
echo  $greeting   $greeting_1
#单引号
greeting_2='hello,'$your_name'!'
greeting_3='hello,${your_name} !'
echo  $greeting_2 $greeting_3

#获取字符串长度
bb="abcdef"
echo ${#bb} #输出 4 


#截取字符串，其中的从第2个字符开始（1+1），获取4个字符
cc="hello world"
echo ${cc:1:4} 

#输出字符e或者o的位置，其中位置的第一位为1，即e的位置为2
dd="hello world"
echo  `expr index  "$dd" eo`  #输出的是2


########数组学习############
#数据赋值
array_name=(value0 value1 value2 value3)
#其中@是输出所有的元素
echo ${array_name[@]}

#第二种赋值方式
array_country[0]=china
array_country[1]=English
country=${array_country[0]}
echo $country

#取得数组元素的个数
length=${#array_name[@]}
length_1=${#array_name[*]}
length_2=${#array_country[1]}

echo "数据的长度 ${length}  也可以表示为*的模式 ${length_1}  单个的长度 ${length_2}"


#echo 代码注释

#多行注释
echo ":<<! world !"
:<<!
echo 代码注释
echo 代码注释
echo 代码注释
echo 代码注释
!

 






























