#!/bin/bash
source output.sh

function check()
{
    if [ $# -eq 1 ]
    then
        if [[ $1 =~ /$ ]]
        then
            if [[ -d "$1" ]]
            then
                output "$1"
            else
                echo "Указанный путь не существует или не является директорией."
            fi
        else
            echo "Должна быть директория (путь заканчивается на '/')"
            exit 1
        fi
    else
        echo "Ошибка: Должен быть введен один параметр"
        exit 1
    fi
}

check "$@"