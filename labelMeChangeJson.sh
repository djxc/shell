#!/bin/bash

function labelmejson2img()
{
	echo "Now begin to search json file..."
	for file in `ls $1`									# 遍历文件夹中所有的文件
	  do
		if [ "${file##*.}"x = "json"x ]					# 判断文件的后缀名是否为json
			then
				filename=`basename $file`				# 获取json文件的名称
				temp_filename=`basename $file  .json`
				echo $filename
				suf=_json
				new_filename=${temp_filename}${suf}
			#    echo $new_filename
				cmd="labelme_json_to_dataset $1${filename} -o ${new_filename}"	# 定义命令
				eval $cmd														# 执行命令
			fi
	  done

}
folder=$1	# 需要输入的参数文件夹，在其中寻找json文件
labelmejson2img $folder
