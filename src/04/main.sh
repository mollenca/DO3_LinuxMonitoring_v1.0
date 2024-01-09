#!/bin/bash

#1 - white, 2 - red, 3 - green, 4 - blue, 5 – purple, 6 - black

source check.sh
source output2.sh

whiteFont="\033[97m"
redFont="\033[31m"
greenFont="\033[32m"
blueFont="\033[34m"
purpleFont="\033[35m"
blackFont="\033[30m"

whiteBG="\033[107m"
redBG="\033[41m"
greenBG="\033[42m"
blueBG="\033[44m"
purpleBG="\033[45m"
blackBG="\033[40m"
NORMAL="\033[0m"

BG1=0;
F1=0;
BG2=0;
F2=0;

confCheck "$@"