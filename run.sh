#!/bin/bash

# Check if filename is provided
if [ $# -eq 0 ]; then
    echo "Please provide the assembly file name (without extension)"
    exit 1
fi

filename=$1

# Assemble the code
as -o "$filename.o" "$filename.s"

# Link the object file
ld -o "$filename" "$filename.o"

# Run the program
./"$filename"

# Print the exit status
echo "Exit status: $?"

# Clean up
rm "$filename.o" "$filename"
