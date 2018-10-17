#!/bin/bash

#this file contains info on the number of cores on the VM
# /proc/cpuinfo

#grep is used to search for a string:

#no_core_cpu=`grep -i processor /proc/cpuinfo | wc -l`

no_core_cpu=$(grep -i processor /proc/cpuinfo | wc -l)

if [ -n "$1" ]; then
	if [[ "$1" =~ ^[0-9]+$ ]]; then
		if [ $no_core_cpu -lt $1 ]; then 
	        	echo "Insufficent CPUs, install abandoned"	
  		else
			echo "Number of CPUs is: $no_core_cpu"
        	fi
	else
		echo "Param $1 is not an integer"
	fi
else
	echo "Param \$1 not provided"
fi
