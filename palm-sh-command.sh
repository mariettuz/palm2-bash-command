#!/bin/bash

if [ $# -eq 0 ]
    then
        echo "No arguments supplied"
        exit 1
fi

arguments=$(printf " %q " "$@")

CLEAR_LINE="tput el 1"
BOLD="tput bold"
RESET="tput sgr0"

${BOLD}
echo -e "\033[32mPalm 2 Response:\033[0m"
echo ''
echo ''
python3 palm-sh-command.py "$arguments"
echo ''
echo ''
${RESET}
