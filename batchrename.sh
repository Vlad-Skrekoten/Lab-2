#!/bin/bash
directory=$1
original_extension=$2
new_extension=$3

for file in "$directory"/*."$original_extension"; do
    if [ -f "$file" ]; then
        filename=$(basename "$file" ".$original_extension")

        new_filename="$filename.$new_extension"

        mv "$file" "$directory/$new_filename"

        echo "Переіменовую $file на $new_filename"
    fi
done