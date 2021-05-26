#!/bin/bash

if [[ $# -ne 1 ]]; then
    echo "One parameter with the new folder name is required! Exiting..."
    exit 2
fi

v=$1

mkdir $v

read -n 1 -p "Place the appropriate arduino-cli executable in the $v folder and then press any key to continue..."

./$v/arduino-cli core update-index
./$v/arduino-cli core install arduino:avr
./$v/arduino-cli lib update-index
./$v/arduino-cli lib install JC_Button
./$v/arduino-cli lib install "Adafruit NeoPixel"
./$v/arduino-cli lib install SharpIR
./$v/arduino-cli lib install AccelStepper
./$v/arduino-cli lib install SD
./$v/arduino-cli lib install "Adafruit VS1053 Library" 
./$v/arduino-cli lib install SdFat
./$v/arduino-cli lib install "VS1053 for use with SdFat"
./$v/arduino-cli lib install MFRC522

cp -r ~/.arduino15 $v/ 

echo "Done!"

