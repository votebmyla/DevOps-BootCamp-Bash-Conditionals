#!/bin/bash

IFS=',' read -r -a array <<<"$1"

# sum of array
sum=0

# iterate array
for e in "${array[@]}"; do
  # check if element evem
  if [[ $(($e % 2)) -eq 0 ]]; then
    # add element
    sum=$(($e + $sum))
  fi
done

echo $sum
