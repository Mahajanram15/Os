#!/bin/bash

string=$1
substring=$2

count=$(echo "$string" | grep -o "$substring" | wc -l)

if [ $count -gt 0 ]
then
    echo "$substring is present in $string"
    echo "Occurrence count: $count"
else
    echo "$substring is not present in $string"
fi
