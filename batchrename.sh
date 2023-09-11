#!/bin/bash

for file in $1/*
do

	if [[ $file =~ .$2$ ]];
	then
		tmp=${file%.*};
		tmp=${tmp#$1/};
		mv $file "$1/$tmp.$3"
		echo "renaming $file file to $1/$tmp.$3"
	fi
done
