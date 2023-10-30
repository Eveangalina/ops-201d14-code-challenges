#!/bin/bash

# Script Name: loops.sh
# Author Name: eve
# Purpose: ops challenge class 05


# Decloration of Variables 

# Decloration of Functions
kill_process(){
    while :
    do
    ps aux
    echo #line break
    read -p "Enter PID:  " process_id
    if kill -9 $process_id 2>/dev/null; then
    echo "successfully killed process with PID $process_id."
    else
    echo "failed to kill process with PID $process_id. It may not exist"
    fi 
    read -p "kill another process? (y/n): " continue killing
    if [[ $continue_killing == "n"  || $continue_killing == "N" ]]; then
    break
    fi

    done
}

# Main 

kill_process
# End