#!/usr/bin/env bash

function count_files {
    files=$(find . -maxdepth 1 -type f | wc -l)
    echo $files
}

file_total=$(count_files)

echo "Welcome to the guessing game."

guess=-1

while [[ $guess -ne $file_total ]]
do
    read -p "Enter your guess: " guess

    if [[ $guess -lt $file_total ]]
    then
        echo "Too low"
    elif [[ $guess -gt $file_total ]]
    then
        echo "Too high"
    else
        echo "Correct!"
    fi
done