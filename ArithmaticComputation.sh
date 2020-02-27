#!/bin/bash -x
operation1=1
operation2=1
operation3=1
operation4=1
declare -A result
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
result[operation1]=$operation1
result[operation2]=$operation2
result[operation3]=$operation3
result[operation4]=$operation4
echo "Dictionary=${result[@]}"
