#!/bin/bash
#
# theme.bash
# Copyright(C) 2019 marcos-ro <marcosroropeza@gmail.com>
#
# Distributed under terms of MIT license
#

__git_branch() {
    git branch 2>/dev/null | grep '^*' | colrm 1 2
}

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
    local NEW_LINE="\n\$ "
    local GIT_STATUS="${BOLD}${BLUE}$(__git_branch)${STOP}${NORMAL}"

    PS1="${USER} at ${HOST} in ${DIR}"
    if [ $EXIT_STATUS != 0 ]; then
        local ERROR="${BOLD}${RED}!${STOP}${NORMAL}"
        PS1="${PS1} 2> ${ERROR}"
    fi

    if [ -d .git ]; then
        PS1="${PS1} on ${GIT_STATUS}"
    fi

    PS1="${PS1} ${NEW_LINE}"
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

