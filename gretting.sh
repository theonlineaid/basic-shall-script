#!/bin/bash

# while read line
# do
#   echo $line
# done < input.txt

echo "Hello, $1!"


echo "Please enter a number: "
read num

if [ $num -gt 0 ]; then
  echo "$num is positive"
elif [ $num -lt 0 ]; then
  echo "$num is negative"
else
  echo "$num is zero"
fi