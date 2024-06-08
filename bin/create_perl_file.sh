#!/bin/bash

# Check if the filename is provided
if [ -z "$1" ]; then
  echo "Usage: $0 <filename> [relative_path]"
  exit 1
fi

# Get the filename and the optional relative path
filename=$1
relative_path=${2:-.}

echo "Filename: $filename"
echo "Relative Path: $relative_path"

# Create the full path
# Remove trailing slash from relative_path if it exists to avoid double slashes
full_path="${relative_path%/}/$filename"

echo "Full Path: $full_path"

# Create the directory if it doesn't exist
mkdir -p "$relative_path"

# Check if the directory was created successfully
if [ $? -ne 0 ]; then
  echo "Failed to create directory $relative_path"
  exit 1
fi

# Write the content to the file
cat <<EOL > "$full_path"
#!/usr/bin/perl
#$filename
use warnings;
use strict;
EOL

# Check if the file was written successfully
if [ $? -ne 0 ]; then
  echo "Failed to write to file $full_path"
  exit 1
fi

# Make the file executable
chmod +x "$full_path"

# Check if chmod was successful
if [ $? -ne 0 ]; then
  echo "Failed to make the file executable"
  exit 1
fi

# Output the file path
echo "File created at $full_path"
