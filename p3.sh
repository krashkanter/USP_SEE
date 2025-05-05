#!/bin/bash

# Implement a shell program to search a pattern in a file that will take both pattern and filename from the command line arguments

if [ $# -ne 2 ]; then
  echo "INVALID NUMBER OF ARGUMENTS"
  exit
fi

word="$(grep "$1" "$2")"
if [ "$(echo "$word" | wc -c)" -eq 1 ]; then
  echo "Pattern not found"
else
  echo "Pattern found"
fi