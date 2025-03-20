#!/bin/bash

read file_path


if [ -s "$file_path" ]; then
    echo "$file_path is not empty."
else
    echo "$file_path is empty or does not exist."
fi

