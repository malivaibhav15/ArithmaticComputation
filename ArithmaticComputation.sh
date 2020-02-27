#!/bin/bash -x
result=1
read -p "Enter first number=" number1
read -p "Enter second number=" number2
read -p "Enter third number=" number3
result=$(( $(($number1+$number2))*$number3 ))
echo "Result of opeation (a+b*c)=$result"
