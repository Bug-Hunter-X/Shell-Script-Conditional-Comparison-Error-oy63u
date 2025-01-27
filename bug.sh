#!/bin/bash

# This script attempts to process a file, but it has a subtle error
# that can lead to unexpected behavior.

filename="my_file.txt"

if [ -f "$filename" ]; then
    # The error is in this line.  It uses a single equals for assignment 
    # in the test condition instead of a double equals for comparison.
    if [ $filename = "/dev/null" ]; then 
        echo "File is /dev/null. Skipping..."
    else
        # Process the file
        cat "$filename"
    fi
fi