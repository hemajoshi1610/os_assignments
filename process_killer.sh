#!/bin/bash
#Script to take comma separated process names and kill them 
read -p "Enter names of processes separated by comma " processNames
IFS=','
for process in $processNames
do
	#If there are multiple processes with same name pidof gives output of all pids
        #but with space separated, so its necessary to split them using space separator 
	#before killing each process
	pids=$(pidof $process)
	echo "killing process $process with pid as $pids"
	IFS=' '
	for pid in $pids
	do
		kill -9 $pid
	done
done
