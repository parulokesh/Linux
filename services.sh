#!/bin/bash
services="sshd jenkins java python"
for i in $services
do
	ps -C $i
	if [ $? -ne 0 ]
	then
		echo "$i service is not running" | mail -s "monitering services" harshahd1997@gmail.com
	fi
done

