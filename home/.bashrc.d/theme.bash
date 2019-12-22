#!/bin/bash
#
# theme.bash
# Copyright(C) 2019 marcos-ro <marcosroropeza@gmail.com>
#
# Distributed under terms of MIT license
#

__simple_theme() {
    local EXIT_STATUS=$?

    # definition of colors
    local BLUE="\[\e[0;34m\["
    local RED="\[\e[0;31m\["
    local STOP="\[\e[m\["

    # definition of font styles
    local BOLD="\[\e[1m\["
    local NORMAL="\[\e[22m\["

    # definitions of prompt parts
    local USER="${BOLD}${BLUE}\u${STOP}${NORMAL}"
    local HOST="${BOLD}${BLUE}\h${STOP}${NORMAL}"
    local DIR="${BOLD}${BLUE}\w${STOP}${NORMAL}"
    local TIME="[${BOLD}${BLUE}\t${STOP}${NORMAL}]"

    if [ $EXIT_STATUS == 0 ]; then
        PS1="${TIME} ${USER}@${HOST}:${DIR}> "
    else
        ERROR="[${BOLD}${RED}!${STOP}${NORMAL}]"
        PS1="${TIME} ${USER}@${HOST}:${DIR}${ERROR}> "
    fi
}

function theme() {
    case $1 in
        'simple')
            PROMPT_COMMAND=__simple_theme
         ;;

        *)
            export PS1="\u@\h:\w>"
        ;;
    esac
}

