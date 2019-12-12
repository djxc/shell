#!/bin/bash

function printFile()
{
	for file in `ls $1`
		do
			if [ -d "$file" ]
				then
			#	printFile $file
				dir=`basename $file`
				echo $dir
			elif [ -f "$file" ]
				then
				echo `basename $file`
			fi
		done
}
echo "**************************************"
printFile $1


