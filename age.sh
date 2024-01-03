#!/bin/bash
echo "enter the filename"
read filename
count=1
while read line
do
	age=`echo "$line" | awk -F " " '{print$(NF-1)}'`
	if [ $count -gt 1 ]
	then
		if [ $age -gt 60 ]
		then
			name=`echo "$line" | awk -F " " '{print$1}'`
			echo "$name"
		fi
	fi
	count=`expr $count + 1`
done < $filename
