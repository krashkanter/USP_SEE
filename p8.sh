#!/bin/bash

# For a given path names (ex a/b, a/b/c), design a shell script to create all the components in that path names as directories

if [ "$#" -ne 1 ]; then
  echo "INVALID NUMBER OF ARGUMENTS"
  exit
fi

curdir="$( pwd )"

for dir in $( echo "$1" | tr '/' " " ); do
  if [ -d "$dir" ]; then
    echo "$dir exists under $( pwd )"
    cd "$dir" || exit
  else
    mkdir "$dir"
    echo "$dir created under $( pwd )"
    cd "$dir" || exit
  fi
done
cd "$curdir" || exit