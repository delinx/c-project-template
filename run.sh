c#!/bin/bash

if [ -z "$1" ]; then
  echo "Error: No executable name provided."
  exit 1
fi

if [ "$2" == "RELEASE" ]; then
    cd build/release
    clear
    echo "Running in RELEASE mode."
    ninja && $1
elif [ "$2" == "DEBUG" ]; then
    cd build/debug
    clear
    echo "Running in DEBUG mode."
    ninja && $1
elif [ "$2" == "UNIT" ]; then
    cd build/unit
    clear
    echo "Running in UNIT test mode."
    ninja && $1
else
  echo "Invalid argument: $2"
fi
