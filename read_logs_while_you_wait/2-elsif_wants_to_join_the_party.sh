#!/bin/bash
head_count=0;
get_count=0;
while read line
do
    if echo $line | grep -q 'HEAD'
    then 
	((head_count++)); 
    elif echo $line | grep -q 'GET'
    then 
	((get_count++));
    fi
done < $1;
echo $head_count;
echo $get_count;
