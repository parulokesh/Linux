#!/bin/bash
echo "Enter the filename"
read filename
word=`wc -l $filename | awk -F " " '{print$1}'`
while read line
do
	n=`head -$word $filename | tail -1`
	echo "$n"
	word=`expr $word - 1`
done < $filename
