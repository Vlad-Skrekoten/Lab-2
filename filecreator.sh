#!/bin/bash

name="Vlad"
number=1

# Check the maximum existing number in the current directory
lastNumber=$(ls -1 | grep -oE "${name}[0-9]+" | grep -oE "[0-9]+" | sort -n | tail -n 1)

if [[ ! -z "$lastNumber" ]]
then
    number=$((lastNumber + 1))
fi

for ((i=1; i<=25; i++))
do
    filename="${name}${number}"
    touch "$filename"
    number=$((number + 1))
done