#!/bin/bash

BUILD_OUTPUT=.build

# Function to print an error message and exit
function print_error_and_exit {
  echo "Error: $1"
  exit 1
}

# Check if build output directory exists
if [ -d "$BUILD_OUTPUT" ]; then
  # Attempt to remove the directory
  rm -rf "$BUILD_OUTPUT" || print_error_and_exit "Failed to clear build output"
fi

echo "Build output cleared"
