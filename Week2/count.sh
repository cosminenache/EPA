#!/bin/bash

#this file contains info on the number of cores on the VM
# /proc/cpuinfo

#grep is used to search for a string:

#no_core_cpu=`grep -i processor /proc/cpuinfo | wc -l`

no_core_cpu=$(grep -i processor /proc/cpuinfo | wc -l)

if [ $no_core_cpu -lt $1 ] 
	then exit
fi

echo $no_core_cpu
