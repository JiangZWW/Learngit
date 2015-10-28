#!/bin/bash 
#author:jiangziwei
#date:20151019
declare i=0
List=([0]='/bin/bash' [1]='/bin/mongo')
Num=${#List[@]}
timestamp=`date +%s`
values=`ps -Of|grep ${List[$i]}|grep -v grep|wc -l`

while [ $i -lt $Num  ];do
 echo "linux.proc_num" "$timestamp" "$values" "sname=${List[$i]}"
 i=$[$i+1]
done
