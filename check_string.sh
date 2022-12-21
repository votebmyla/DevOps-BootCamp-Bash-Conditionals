#!/bin/bash

# variable for number count
numbers=0
# variable for symbol count
symbols=0
# variable for letter count
letters=0

# input string
input=$1
# input string length
input_len=${#input}

# iterate each string symbol
for i in $(seq 0 $(($input_len - 1))); do
  case ${input:$i:1} in
  # if i variable is letter
  [A-Za-z])
    letters=$(($letters + 1))
    ;;
  # if i variable is number
  [0-9])
    numbers=$(($numbers + 1))
    ;;
    # if i variable is whitespace
  [' '])
    continue
    ;;
    # if i variable is symbol
  *['!&()'@#$%^*_+])
    symbols=$(($symbols + 1))
    ;;
  esac
done

echo "Numbers: $numbers Symbols: $symbols Letters: $letters"
