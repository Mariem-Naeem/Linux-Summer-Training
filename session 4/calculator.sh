#!/bin/bash

echo "1. Addition"

echo "2. Subtraction"

echo "3. Multiplication"

echo "5. Exit"

read -p "Enter your choice " c 
while (( c != 5 ))
do 
read -p "Enter the First number " n1
read -p "Enter the second number " n2
if (( c == 1 ))
then
r=$(($n1+$n2)) 
echo "${n1} + ${n2} = "$r
elif (( c == 2 ))
then
r=$(($n1-$n2))
echo "${n1} - ${n2} = "$r
elif (( c == 3 ))
then 
r=$(($n1*$n2))
echo "${n1} * ${n2} = "$r
fi
read -p "Enter Your choice " c
done 
