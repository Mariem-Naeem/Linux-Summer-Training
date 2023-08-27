#!/bin/bash

if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <extension> <new_name>"
    exit 1
fi

extension=$1
new_name=$2
c=1

for file in *."$extension";
 do
    new_file="$new_name$c.$extension"

    mv "$file" "$new_file"

    echo "Renamed: $file to $new_file"

    ((c++))
done
