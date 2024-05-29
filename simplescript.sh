#!/bin/bash

# Source file path
source_file="/c/Users/Ahmed/OneDrive/Documents/ElHabashyItLinApp/HabashyConfig.pickle"

# Destination directory path
destination_dir="/c/Users/Ahmed/OneDrive/Documents/My-GitHub/Habashy"

# Check if the source file exists
if [ -f "$source_file" ]; then
    # Copy the file to the destination directory
    cp "$source_file" "$destination_dir"
    echo "File copied successfully."
	git add HabashyConfig.pickle
	git status
	git commit -m "Script Worked and Uploaded file .."
	git push origin main
	
else
    echo "Source file not found."
    exit 1
fi

