#!/bin/bash

# Write a shell program to implement simple calculator operations (Using Switch Case)

read -p "Enter first number: " x
read -p "Enter second number: " y

read -p "1. Addition || 2. Subtraction || 3. Multiplication || 4. Division :: " ch

case $ch in
  1)
    echo "$x + $y" | bc
    ;;
  2)
    echo "$x - $y" | bc
    ;;
  3)
    echo "$x * $y" | bc
    ;;
  4)
    echo "scale=2;$x / $y" | bc
    ;;
  *)
    echo "INVALID CHOICE"
    ;;
esac