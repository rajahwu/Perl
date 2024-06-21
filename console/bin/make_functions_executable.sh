#!/bin/bash

# Directory where the functions are located
functions_dir="./console/functions"

# Check if the functions directory exists
if [ ! -d "$functions_dir" ]; then
  echo "Functions directory not found."
  exit 1
fi

# Loop through the files in the functions directory
for file in "$functions_dir"/*; do
  # Check if the file is a regular file and has execute permissions
  if [ -f "$file" ] && [ ! -x "$file" ]; then
    # Make the file executable
    chmod +x "$file"
    echo "Made $file executable."
  fi
done
