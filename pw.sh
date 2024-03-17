#!/bin/bash

# start script

clear

figlet -f Bloody PenguWeather | lolcat

help()
{
    # help text
    echo "=========================================================="
    echo ""
    echo "= How To Use PenguWeather Tool?                              " | lolcat
    echo "= bash pw.sh [your city]       " | lolcat
    echo "= example: bash pw.sh tehran" | lolcat
    echo ""
    echo "=========================================================="
} 

check()
{
    # check the weather

    curl wttr.in/$1
}

# help or do? 

if [[ -z "$1" ]]
then 
    help
else
    check "$1"
fi

 