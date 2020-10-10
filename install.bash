#!/bin/bash

if [[ $# -ne 1 ]]; then
    echo "One parameter with the folder name of choice is required! Exiting..."
    exit 2
fi

v=$1

cp -r $v/.arduino15 ~/.arduino15

echo "alias arcuino-cli=$PWD/$v/arduino-cli"

echo "Done!"

