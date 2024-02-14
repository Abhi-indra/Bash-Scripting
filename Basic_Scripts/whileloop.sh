#!/bin/bash

<< comment
This is while loop

comment

num=0

while [[  $num -le 5 ]]
do
	echo "test"
	num=$(( num+1 ))
done
