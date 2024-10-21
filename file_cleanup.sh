#!/bin/bash

create_dir() {
  if [[ ! -d "$1" ]]; then
    mkdir -p "$1"
  fi
}

# Get the current directory
current_dir=$(pwd)

# Iterate through all files
for file in "$current_dir"/*; do
  # Get the file extension
  extension="${file##*.}"

  # Skip files with .sh extension
  if [[ "$extension" == "sh" ]]; then
    continue
  fi

  
  if [[ ! -d "$current_dir/$extension" ]]; then
    create_dir "$current_dir/$extension"
  fi

  mv "$file" "$current_dir/$extension"
done
