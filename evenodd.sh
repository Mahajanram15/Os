#!/bin/bash

> even
> odd

while read num
do
    if [ $((num % 2)) -eq 0 ]
    then
        echo $num >> even
    else
        echo $num >> odd
    fi
done < numbers.txt
