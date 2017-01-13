# -----------------------------------------------------------------------------
#  1. Adapted 'cd' command
# -----------------------------------------------------------------------------

cd() {
    local LIGHT_GRAY="\033[0;37m"
    local NO_COLOR="\033[0m"

    if [[ $@ == '-' ]]; then
        builtin cd "$@" > /dev/null
    else
        builtin cd "$@"
    fi
    echo -e "    $LIGHT_GRAY"`pwd`"$NO_COLOR"
}

# -----------------------------------------------------------------------------
#  2. Prompt
# -----------------------------------------------------------------------------

function prompt {
    local OK_OR_ERR=$?

    local BLACK="\[\033[0;30m\]"
    local RED="\[\033[0;31m\]"
    local GREEN="\[\033[0;32m\]"
    local BROWN="\[\033[0;33m\]"
    local BLUE="\[\033[0;34m\]"
    local PURPLE="\[\033[0;35m\]"
    local CYAN="\[\033[0;36m\]"
    local LIGHT_GRAY="\[\033[0;37m\]"

    local DARK_GRAY="\[\033[1;30m\]"
    local LIGHT_RED="\[\033[1;31m\]"
    local LIGHT_GREEN="\[\033[1;32m\]"
    local YELLOW="\[\033[1;33m\]"
    local LIGHT_BLUE="\[\033[1;34m\]"
    local LIGHT_PURPLE="\[\033[1;35m\]"
    local LIGHT_CYAN="\[\033[1;36m\]"
    local WHITE="\[\033[1;37m\]"

    local NO_COLOR="\[\033[0m\]"

    local TIME="\A"
    local DATE="$(date +%y/%m/%d)"
    local USERNAME="\u"
    local HOSTNAME="\h"
    local WORKING_DIRECTORY="\w"

    local GIT="$(git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/[\1]/')"

    if [ $OK_OR_ERR = 0 ]; then
        PS1=''$PURPLE'['$TIME']'$GREEN'[OK]'$CYAN'['$USERNAME'@'$HOSTNAME':'$RED''$WORKING_DIRECTORY']'$GREEN''$GIT' '$NO_COLOR''
    else
        PS1=''$PURPLE'['$TIME']'$RED'[ER]'$CYAN'['$USERNAME'@'$HOSTNAME':'$RED''$WORKING_DIRECTORY']'$GREEN''$GIT' '$NO_COLOR''
    fi
}

PROMPT_COMMAND=prompt

# -----------------------------------------------------------------------------
#  3. Terminal Colors
# -----------------------------------------------------------------------------

export CLICOLOR=1
export LSCOLORS=Exfxcxdxbxexexabagacad

# -----------------------------------------------------------------------------
#  4. Aliases
# -----------------------------------------------------------------------------

alias la='ls -A'
alias ll='ls -lh'
alias lla='ls -lhA'

