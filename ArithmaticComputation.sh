#!/bin/bash -x
operation1=1
operation2=1
operation3=1
operation4=1
declare -A result
declare -a array
read -p "Enter first number=" number1
read -p "Enter second number=" number2
read -p "Enter third number=" number3
operation1=$(( $(($number1+$number2))*$number3 ))
echo "Result of opeation (a+b*c)=$operation1"
operation2=$(( $(($number1*$number2))+$number3 ))
echo "Result of opeation (a*b+c)=$operation2"
operation3=`expr "(($number3+$number1))/$number2" | bc -l`
echo "Result of opeation (c+a/b)=$operation3"
operation4=$(( $(($number1%$number2))+$number3 ))
echo "Result of opeation (a%b+c)=$operation4"
result[0]=$operation1
result[1]=$operation2
result[2]=$operation3
result[3]=$operation4
echo "Dictionary=${result[@]}"
size=${#result[@]}
for (( counter=0; counter<$size; counter++ ))
do
	array[counter]=${result[$counter]}
done
echo "Array={${array[@]}}"
