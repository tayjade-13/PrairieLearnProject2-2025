#! usr/bin.env bash

arr=(10 20 40)

num=0
while [ $num -lt 3 ];
do
	# echo ${arr[num]}
	python3 programA.py ${arr[num]}
        num=$((num+1))
done

