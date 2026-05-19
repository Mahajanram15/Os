#!/bin/bash

dir_count=0
file_count=0
link_count=0
total_size=0

for item in *
do
    if [ -d "$item" ]
    then
        echo "DIR  $item/"
        dir_count=$((dir_count + 1))

    elif [ -L "$item" ]
    then
        echo "LINK $item@"
        link_count=$((link_count + 1))

    elif [ -f "$item" ]
    then
        echo "FILE $item"
        file_count=$((file_count + 1))

        size=$(wc -c < "$item")
        total_size=$((total_size + size))
    fi
done

echo
echo "Directories : $dir_count"
echo "Links       : $link_count"
echo "Files       : $file_count"
echo "Total Size  : $total_size bytes"
