#!/bin/bash

# Function to create a directory if it doesn't exist
create_dir() {
  if [[ ! -d "$1" ]]; then
    mkdir -p "$1"
  fi
}

# Get the current directory
current_dir=$(pwd)

# Iterate through all files in the current directory
for file in "$current_dir"/*; do
  # Get the file extension
  extension="${file##*.}"

  # Skip files with .sh extension
  if [[ "$extension" == "sh" ]]; then
    continue
  fi

  # Create a directory for the file type if it doesn't exist and it's not a directory itself
  if [[ ! -d "$current_dir/$extension" ]]; then
    create_dir "$current_dir/$extension"
  fi

  # Move the file to the corresponding directory
  mv "$file" "$current_dir/$extension"
done
