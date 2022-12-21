#!/bin/bash

if [[ $1 == *K ]]; then
  # removes K at the end, then adds C
  echo "$((${1/%K/} - 273))C"
else
  # removes C at the end, then adds K
  echo "$((${1/%C/} + 273))K"
fi
