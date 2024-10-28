#!/bin/sh

# Author : Zara Ali
# Copyright (c) Tutorialspoint.com
# Script follows here:

echo "What is your name?"
read PERSON
echo "Hello, $PERSON"

# readonly name="Omor faruk"

name="not a person"

unset name

echo $name
# Uppercase for configuration or constants
DATABASE_URL="mysql://localhost:3306"

# Lowercase for local variables
filename="data.txt"

echo "Connecting to $DATABASE_URL with file $filename"



# Display predefined shell variables
echo "Current Shell: $SHELL"          # Outputs the path of the current shell
echo "Home Directory: $HOME"          # Outputs the current user's home directory
echo "Current User: $USER"            # Outputs the username of the current user

# Custom shell variable
MY_SHELL_VAR="This is a custom shell variable"
echo "Custom Shell Variable: $MY_SHELL_VAR"

echo $$


echo "File Name: $0"
echo "First Parameter : $1"
echo "Second Parameter : $2"
echo "Quoted Values: $@"
echo "Quoted Values: $*"
echo "Total Number of Parameters : $#"