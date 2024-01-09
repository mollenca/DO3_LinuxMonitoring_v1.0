#!/bin/bash

source config.txt
source check.sh

function outputColor()
{
    color $F1 F1;
    color $F2 F2;
    color $BG1 BG1;
    color $BG2 BG2;
    
    if [[ $1 == "default" ]]
    then
        column1_background=default
        column1_font_color=default
        column2_background=default
        column2_font_color=default
    fi
    
    echo "Column 1 background = $column1_background ($BG1)"
    echo "Column 1 font color = $column1_font_color ($F1)"
    echo "Column 2 background = $column2_background ($BG2)"
    echo "Column 2 font color = $column2_font_color ($F2)"
}

function color()
{
    if [[ $1 == "$whiteFont" ]] || [[ $1 == "$whiteBG" ]]
    then
    eval "$2='white'"
    elif [[ $1 == "$redFont" ]] || [[ $1 == "$redBG" ]]
    then
    eval "$2='red'"
    elif [[ $1 == "$greenFont" ]] || [[ $1 == "$greenBG" ]]
    then
    eval "$2='green'"
    elif [[ $1 == "$blueFont" ]] || [[ $1 == "$blueBG" ]]
    then
    eval "$2='blue'"
    elif [[ $1 == "$purpleFont" ]] || [[ $1 == "$purpleBG" ]]
    then
    eval "$2='purple'"
    elif [[ $1 == "$blackFont" ]] || [[ $1 == "$blackBG" ]]
    then
    eval "$2='black'"
    fi
}
