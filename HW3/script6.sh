#!/bin/bash

if [ $# -ne 3 ]; then
  echo "Usage: $0 x y filename"
  exit 1
fi

x=$1
y=$2
filename=$3


# Print lines x to y of the file
sed -n "${x},${y}p" $filename
