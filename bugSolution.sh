#!/bin/bash

# This script demonstrates the corrected version of the previous script.

filename="my_file.txt"

if [ -f "$filename" ]; then
    # The correction is in this line; using double equals for comparison
    if [ "$filename" == "/dev/null" ]; then
        echo "File is /dev/null. Skipping..."
    else
        # Process the file
        cat "$filename"
    fi
fi