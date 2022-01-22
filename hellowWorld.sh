#! /bin/bash -x

fileName=''
for file in `ls | grep -v /`
do
#body of for loop
fileName=`echo $file | awk -F. '{print $1}'`
mkdir $fileName
done
