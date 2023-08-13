#!/bin/bash

BUILD_OUTPUT=.build

if [ -d "$BUILD_OUTPUT" ]; then
  rm -rf $BUILD_OUTPUT
fi

echo "Build output cleared"