#!/bin/bash

# Program : To rename a given file and move it to another directory.
# Language: bash
# Author : S.Moris

# The file paths are given in the commandline as an argument.
# We need only 2 arguments  [OLD NAME] [NEW NAME]
if [[ $# -lt 2 ]]; then
    echo " We need two parameters."
elif [[ $# -gt 2 ]]; then
    echo " There is an excessive parameters."
else
    echo "Renaming files now."
fi
# echo $#  - Used to print the number of argumets.

#Renaming Files.
old_file=$1
new_file=$2
#echo $old_file - Used for debugging, comment it while running the script.
cp $old_file $new_file
echo "The file : $old_file is copied to $new_file"
