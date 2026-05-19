#!/bin/bash

echo "Enter a number:"
read num

temp=$num
reverse=0
flag=0

if [ $num -le 1 ]
then
    flag=1
else
    for (( i=2; i<=num/2; i++ ))
    do
        if [ $((num % i)) -eq 0 ]
        then
            flag=1
            break
        fi
    done
fi

if [ $flag -eq 0 ]
then
    echo "$num is Prime"
else
    echo "$num is Not Prime"
fi

while [ $temp -gt 0 ]
do
    rem=$((temp % 10))
    reverse=$((reverse * 10 + rem))
    temp=$((temp / 10))
done

echo "Reverse number is: $reverse"
