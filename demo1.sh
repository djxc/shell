#!/bin/bash

str="hello world"
str1="dj"
str2="xc"
str3="home"
array=($str $str1 $str2 $str3)
echo ${array[*]}
cur_dateTime=$(date "+%Y-%m-%d %H:%M:%S")
m=$(date "+%M")
echo $m
echo $cur_dateTime
