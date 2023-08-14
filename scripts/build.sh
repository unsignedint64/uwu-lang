#!/bin/bash

BASE_COMMAND=g++
BUILD_OUTPUT=.build
ARGS="$@"
PROGRAM_NAME=uwu.out

# Function to print an error message and exit
function print_error_and_exit {
  echo "Error: $1"
  exit 1
}

# Check if there are any arguments
if [ $# -eq 0 ]; then
  echo "No arguments supplied"
  exit 1
fi

# Create build directory if it doesn't exist
if [ ! -d "$BUILD_OUTPUT" ]; then
  mkdir "$BUILD_OUTPUT"
fi

# Build the program
echo "Building at $(date +"%Y-%m-%d %H:%M:%S")"
$BASE_COMMAND "$1" -o "$BUILD_OUTPUT/$PROGRAM_NAME" "${@:2}" || print_error_and_exit "Compilation failed"
echo "Build complete at $(date +"%Y-%m-%d %H:%M:%S")"

# Ask user if they want to run the program
read -p "Run program? (y/n) " -n 1 -r
echo ""

if [[ $REPLY =~ ^[Yy]$ ]]; then
  echo "Running program"
  sleep 1
  clear
  "$BUILD_OUTPUT/$PROGRAM_NAME"
fi
