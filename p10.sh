#!/bin/bash

# Implement a shell program to locate the position of a character in a string

echo "Enter a string: "
read input_string

echo "Enter the character to locate: "
read char

position=$( echo "$input_string" | awk -v ch="$char" '
{
  index_pos=index($0, ch);
  if (index_pos > 0) {
    print index_pos;
  } else {
    print "Character not found";
  }
}
')

echo "Position: $position"