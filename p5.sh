#!/bin/bash

# Implement a shell program to display the length of the name and also display first three characters and last three characters in the name in two different lines if the name contains at least 6 characters

echo "Enter your name: "
read name
length="${#name}"
if [ "$length" -ge 6 ]; then
  echo "Length of the name: $length"
  first_three=$(echo "$name" | head -c 3)
  echo "First three characters: $first_three"
  last_three=$(echo "$name" | tail -c 4)
  echo "Last three characters: $last_three"
else
  echo "Name should have at least 6 characters"
fi