#!/bin/bash

# Implement a shell program to find and display the largest and smallest of three numbers

read -p "Enter first number: " x
read -p "Enter second number: " y
read -p "Enter third number: " z

if [ "$x" -gt "$y" ] && [ "$x" -gt "$z" ]; then
  echo "$x is the largest number"
elif [ "$y" -gt "$x" ] && [ "$y" -gt "$z" ]; then
  echo "$y is the largest number"
else
  echo "$z is the largest number"
fi

if [ "$x" -lt "$y" ] && [ "$x" -lt "$z" ]; then
  echo "$x is the smallest number"
elif [ "$y" -lt "$x" ] && [ "$y" -lt "$z" ]; then
  echo "$y is the smallest number"
else
  echo "$z is the smallest number"
fi