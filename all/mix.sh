#!/bin/sh

function dm() {
  exec docker-machine $1 default
}

# sorted du
function duf() {
   du -sk "$@/*" | sort -n | while read size fname; do for unit in k M G T P E Z Y; do if [ $size -lt 1024 ]; then echo -e "${size} ${unit} ${fname}"; break; fi; size=$((size/1024)); done; done
}

fiunction mkcd() {
  mkdir $1
  cd $1
}

# -------------------------------------------------------------------
# directory movement
# -------------------------------------------------------------------
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias 'bk=cd $OLDPWD'
