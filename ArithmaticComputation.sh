#!/bin/bash -x
operation1=1
operation2=1
read -p "Enter first number=" number1
read -p "Enter second number=" number2
read -p "Enter third number=" number3
operation1=$(( $(($number1+$number2))*$number3 ))
echo "Result of opeation (a+b*c)=$operation1"
operation2=$(( $(($number1*$number2))+$number3 ))
echo "Result of opeation (a*b+c)=$operation2"

