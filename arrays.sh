#!/bin/bash

# Script Name: array.sh
# Author Name: eve
# Purpose: create an array using four directories
# Execution: bash array.sh or ./array.sh chomod -x array.sh


# Decloration of Variables

dirs=("dir1" "dir2" "dir3" "dir4")

for directories in "${directories[@]}"; do 
mkdir $directories
touch "$directories/newfile.txt"
done

# Decloration of Functions

# Main

echo ${dirs[2]}

echo "text files created in directories"

# End
