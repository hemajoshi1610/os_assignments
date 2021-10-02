#!/bin/bash
echo "Input path is $1" 

for file in $1/* 
do 
	if [ -f $file ]
	then 
	  ls -l $file
	fi
done
