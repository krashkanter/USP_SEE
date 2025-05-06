#!/bin/bash

# Implement a shell program to check a file exists in the current directory or not, and then converts its filename to uppercase

for file in *; do
  if [ -f "$file" ]; then
    uppercase_name="$( echo "$file" | tr '[:upper:]' '[:lower:]' )"

    if [ "$file" != "$uppercase_name" ] && [ ! -e "$uppercase_name" ]; then
      mv "$file" "$uppercase_name"
      echo "Renamed: $file -> $uppercase_name"
    else
      echo "SKIPPING: $file (Target name exists or already in uppercase)"
    fi
  fi
done