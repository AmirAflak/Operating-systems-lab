#!/bin/bash

# Check that exactly two arguments were passed
if [ $# -ne 2 ]; then
    echo "Error: expected two arguments"
    exit 1
fi
