#!/bin/bash

topDir()
{
    out=$(du -h "$1" | sort -rh | head -5 | awk '{print" - "$2", "$1}')
    IFS=$'\n'
    count=0
    for var in $out
    do
        ((count +=1))
    echo "$count $var"
    done
}
