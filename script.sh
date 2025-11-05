#! /usr/bin/env bash


arr=(10 20 40)

for arg in ${@:2}
do
	num=0
	while [ $num -lt 3 ];
	do
		python3 $arg.py ${arr[num]} $1 >> $arg.output

		num=$((num+1))
	
	done
done

<< 'testing'

num=0
while [ $num -lt 3 ];
do
       echo $2.py
       echo ${arr[num]}
       echo $1
       echo $2.output
	
       python3 $2.py ${arr[num]} $1 >> a.output

       num=$((num+1))
        

done
testing
