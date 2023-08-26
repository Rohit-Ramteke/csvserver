#!/bin/bash


start_index=$1
end_index=$2
file="inputFile"

if [ -f "$file" ]
then
	rm $file
fi

i=$start_index
while [ $i -le $end_index ]; do
    # generating any random number between 1 to 1000
    random_number=$((1 + RANDOM % 1000))
    echo "$i, $random_number" >> "$file"
    i=$((i + 1))
done

echo "$file generating with random number"


