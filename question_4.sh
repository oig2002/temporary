#!/bin/bash
pid_array=()
fail_array=()
pid_array=( $(ps -ef | grep -v grep | awk '{print $2}') )

for NUMBER in ${pid_array[@]}
do
	if [ $NUMBER -ge 31337 ]
	then
		kill -9 $NUMBER
		if [ $? -eq 0 ]
		then
   			echo "PID $NUMBER has been killed"
		else
			fail_array+=($NUMBER)
		fi
	fi
done
echo "Failed processes: ${fail_array[*]}"