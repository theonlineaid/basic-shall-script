#!/bin/bash
echo "Today is " `date`

echo -e "\nenter the path to directory"
read the_path

echo -e "\n you path has the following files and folders: "

ls $the_path

echo "What's your name?" 

read entered_name 

echo -e "\nWelcome to bash tutorial" $entered_name
