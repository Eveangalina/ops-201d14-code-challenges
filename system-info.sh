#!/bin/bash


# Execution: 
echo "System Information:"
echo "==================="

# CPU
echo "CPU Information:"
lshw -class processor grep -A 5 'product:' | grep -v 'bus info:'

# Memory (RAM)
echo -e "\nMemory Information:"
lshw -class memory

# Graphics Card (GPU)
echo -e "\nGraphics Card Information:"
lshw -class display

# Network Adapters
echo -e "\nNetwork Adapter Information:"
lshw -class network

# End 


