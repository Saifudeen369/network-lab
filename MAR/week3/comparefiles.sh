#!/bin/bash


read file1
read file2

if [ ! -e "$file1" ]; then
    echo "File '$file1' does not exist."
    exit 1
fi

if [ ! -e "$file2" ]; then
    echo "File '$file2' does not exist."
    exit 1
fi


if cmp -s "$file1" "$file2"; then
    echo "The files '$file1' and '$file2' are identical."
else
    echo "The files '$file1' and '$file2' are different."
fi
