#!/bin/bash


BASE_COMMAND=g++
BUILD_OUTPUT=.build

ARGS=$@

function getArgs {
  echo "${@:2}"
}

function getCurrentTimestamp {
  echo $(date +"%Y-%m-%d %H:%M:%S")
}

# Check if there are any arguments
if [ $# -eq 0 ]; then
  echo "No arguments supplied"
  exit 1
fi


if [ ! -d "$BUILD_OUTPUT" ]; then
  mkdir $BUILD_OUTPUT
fi

echo "Building at $(getCurrentTimestamp)"

$BASE_COMMAND $1 -o $(getArgs $ARGS) $BUILD_OUTPUT/uwu.out


echo "Build complete at $(getCurrentTimestamp)"

# Ask user if they want to run the program
read -p "Run program? (y/n) " -n 1 -r

echo ""

if [[ $REPLY =~ ^[Yy]$ ]]; then
  echo "Running program"
  sleep 1
  clear
  $BUILD_OUTPUT/uwu.out
fi