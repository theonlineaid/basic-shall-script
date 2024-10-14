#!/bin/bash

# Declare an indexed array
fruits=("apple" "banana" "cherry")

# Accessing elements
echo "${fruits[0]}"  # Output: apple
echo "${fruits[1]}"  # Output: banana

# Length of the array
echo "Number of fruits: ${#fruits[@]}"  # Output: 3

# Iterating over the array
for fruit in "${fruits[@]}"; do
    echo "$fruit"
done



# Declare an associative array
declare -A colors

# Adding key-value pairs
colors[apple]="red"
colors[banana]="yellow"
colors[cherry]="dark red"

# Accessing elements
echo "The color of an apple is ${colors[apple]}"  # Output: red

# Iterating over the associative array
for fruit in "${!colors[@]}"; do
    echo "$fruit is ${colors[$fruit]}"
done