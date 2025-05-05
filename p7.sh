#!/bin/bash

# Implement a shell program to change the case of an argument to uppercase and lowercase

if [ "$#" -ne 1 ]; then
  echo "INVALID NUMBER OF ARGUMENTS"
  exit
fi

str="$1"

upper=$(echo "$str" | tr '[:lower:]' '[:upper:]' )
echo "UPPERCASE: $upper"

lower=$(echo "$str" | tr '[:upper:]' '[:lower:]' )
echo "lowercase: $lower"