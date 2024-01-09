#!/bin/bash
source config.txt
source ./../03/check.sh
source ./../03/set.sh
source ./../03/out.sh

function confCheck()
{
    if [[ $# -eq 0 ]]
    then
        BG1=$column1_background
        BG2=$column2_background
        F1=$column1_font_color
        F2=$column2_font_color
        
        if [[ -z $BG1 ]] || [[ -z $BG2 ]] || [[ -z $F1 ]] || [[ -z $F2 ]]
        then
            BG1=1; BG2=2; F1=3; F2=6;

            colorCheck $BG1 $F1 $BG2 $F2
            echo ""
            outputColor default
        else
            check $BG1 $F1 $BG2 $F2
            echo ""
            outputColor
        fi
    else
        echo "Аргументов быть не должно"
        exit 1
    fi
}
