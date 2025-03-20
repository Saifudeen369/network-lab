#!/bin/bash

read file_path
if [ ! -e "$file_path" ]; then
    echo "File does not exist."
    exit 1
fi


if [ -r "$file_path" ]; then
    echo "$file_path has read permission."
else
    echo "$file_path does not have read permission."
fi


if [ -w "$file_path" ]; then
    echo "$file_path has write permission."
else
    echo "$file_path does not have write permission."
fi


if [ -x "$file_path" ]; then
    echo "$file_path has execute permission."
else
    echo "$file_path does not have execute permission."
fi

