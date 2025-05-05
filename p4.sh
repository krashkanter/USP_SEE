#!/bin/bash

# Design a shell program that takes two file names, checks the permissions for these files and if they are identical, output the common permissions; otherwise output each file name followed by its permissions

if [ "$#" -ne 2 ]; then
  echo "INVALID NUMBER OF ARGUMENTS"
  exit
elif [ ! -e "$1" ] || [ ! -e "$2" ]; then
  echo "FILE DOES NOT EXIST"
  exit
fi

per1="$( ls -l "$1" | cut -c 2-10 )"
per2="$( ls -l "$2" | cut -c 2-10 )"

if [ "$per1" == "$per2" ]; then
  echo "Permissions are identical: permission is $per1"
else
  echo "Permissions are not identical"
  echo "Permission of $1: $per1"
  echo "Permission of $2: $per2"
fi