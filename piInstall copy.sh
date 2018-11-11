#!/bin/bash

##################################################
# Script: multiChoice.sh
# Author: TheCoracle
# Creation Date: 2018-04-19
# Edit:
#
# Purpose: Run script to select each type of pi project
# so you don't have to manually install everything
#
# Notes:
##################################################

### PREP #########################################
export PATH="$PATH:/home/naspi/scripts/setup/"

# COLORS #
## No Colors ##
NC='\033[0m'

## Regular Colors ##
Red='\033[0;31m'          # Red
Green='\033[0;32m'        # Green
Yellow='\033[0;33m'       # Yellow
Purple='\033[0;35m'       # Purple
Cyan='\033[0;36m'         # Cyan
### PREP END #####################################

### SCRIPT #######################################

### CHOOSE PI ####################################
choice () {
    local choice=$1
    if [[ ${opts[choice]} ]] # toggle
    then
        opts[choice]=
    else
        opts[choice]=◉
    fi
}

PS3='Please enter your choice: '
while :
do
    clear
    options=("Option 1 ${opts[1]}" "Option 2 ${opts[2]}" "Option 3 ${opts[3]}" "Option 4 ${opts[4]}" "Option 5 ${opts[5]}" "Option 6 ${opts[6]}" "Option 7 ${opts[7]}" "Option 8 ${opts[8]}"  "Done")
    select opt in "${options[@]}"
    do
        case $opt in
            "Option 1 ${opts[1]}")
                choice 1
                break
            ;;
            "Option 2 ${opts[2]}")
                choice 2
                break
            ;;
            "Option 3 ${opts[3]}")
                choice 3
                break
            ;;
            "Option 4 ${opts[4]}")
                choice 4
                break
            ;;
            "Option 5 ${opts[5]}")
                choice 5
                break
            ;;
            "Option 6 ${opts[6]}")
                choice 6
                break
            ;;
            "Option 7 ${opts[7]}")
                choice 7
                break
            ;;
            "Option 8 ${opts[8]}")
                choice 8
                break
            ;;
            "Done")
                break 2
            ;;
            *) printf '%s\n' 'invalid option';;
        esac
    done
done

printf '%s\n' 'Options chosen:'
for opt in "${!opts[@]}"
do
    if [[ ${opts[opt]} ]]
    then
        printf '%s\n' "Option $opt"
    fi
done