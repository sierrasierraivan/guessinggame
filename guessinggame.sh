#!/usr/bin/env bash

count_files() {
    find . -maxdepth 1 -type f | wc -l
}

file_count=$(count_files)

echo "Adivina cuántos archivos hay en el directorio actual."

while true
do
    read -p "Introduce tu número: " guess

    if [[ $guess -lt $file_count ]]
    then
        echo "Demasiado bajo."
    elif [[ $guess -gt $file_count ]]
    then
        echo "Demasiado alto."
    else
        echo "¡Correcto! Hay $file_count archivos."
        break
    fi
done