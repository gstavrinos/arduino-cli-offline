#!/bin/bash

if [[ $# -ne 1 ]]; then
    echo "One parameter with the folder name of choice is required! Exiting..."
    exit 2
fi

v=$1

cp -r $v/.arduino15 ~/.arduino15

./$v/arduino-cli lib install JC_Button
./$v/arduino-cli lib install "Adafruit NeoPixel"
./$v/arduino-cli lib install SharpIR
./$v/arduino-cli lib install AccelStepper
./$v/arduino-cli lib install SD
./$v/arduino-cli lib install "Adafruit VS1053 Library" 
./$v/arduino-cli lib install SdFat
./$v/arduino-cli lib install "VS1053 for use with SdFat"
./$v/arduino-cli lib install MFRC522

echo "alias arcuino-cli=$PWD/$v/arduino-cli" >> ~/.bashrc

echo "Done!"

