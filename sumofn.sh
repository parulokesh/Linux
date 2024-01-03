#!/bin/bash
echo "Enter the number:"
read num
sum=0
while [ $num -gt 0 ]
do
	sum=`expr $num + $sum`
	num=`expr $num - 1`
done
echo "Sum of first n number is $sum"
