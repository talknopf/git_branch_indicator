#!/bin/bash

# Setting colors
c_cyan=$(tput setaf 6)
c_red=$(tput setaf 1)
c_green=$(tput setaf 2)
c_purple=$(tput setaf 127)
c_yellow=$(tput setaf 3)
c_sgr0=$(tput sgr0)

branch_color (){
    if git rev-parse --git-dir >/dev/null 2>&1
    then
        color=""
        if git diff --quiet 2>/dev/null >&2
        then
            color=${c_green}
        else
            color=${c_red}
        fi
    else
        return 0
    fi
    echo -n $color
}

parse_git_branch (){
    if git rev-parse --git-dir >/dev/null 2>&1
    then
        gitver="["$(git branch 2>/dev/null| sed -n '/^\*/s/^\* //p')"]"
    else
        return 0
    fi
echo -e $gitver
}

#It's important to escape colors with \[ to indicate the length is 0 this prompt will display full path
PS1='\[${c_yellow}\]\u\[${c_sgr0}\]@\[${c_purple}\]\h\[${c_cyan}\]|$(pwd)|\[${c_sgr0}\]\[\[$(branch_color)\]$(parse_git_branch)\[${c_sgr0}\]$ '

#It's important to escape colors with \[ to indicate the length is 0 this prompt will display short path
PS1='\[${c_yellow}\]\u\[${c_sgr0}\]@\[${c_purple}\]\h\[${c_cyan}\]|\W|\[${c_sgr0}\]\[\[$(branch_color)\]$(parse_git_branch)\[${c_sgr0}\]$ '
