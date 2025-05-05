#!/bin/bash

# Design a shell program that takes in any number of arguments and print them in same order and in reverse order with suitable message

if [ "$#" -eq 0 ]; then
  echo "INVALID NUMBER OF ARGUMENTS"
  exit
fi
echo "Number of ARGUMENTS are: $#"
echo "ARGUMENTS are:"
num=1
for i in "$@"; do
  echo "arg$num is $i"
  num="$(expr "$num" + 1)"
done
echo "ARGUMENTS in reverse order: "
num="$#"
while [ "$num" -ne 0 ]; do
  eval echo "arg$num is \$$num"
  num="$(expr "$num" - 1)"
done