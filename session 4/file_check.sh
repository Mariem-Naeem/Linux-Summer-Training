#!/bin/bash

if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <filename> <filepath>"
    exit 1
fi

filename=$1
filepath=$2

if [ -f "$filepath/$filename" ]; 
then
    echo "File exists"
    echo "Contents of $filename:"
    cat "$filepath/$filename"
else
    echo "File does not exist"
fi
