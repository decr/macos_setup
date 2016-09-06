#!/bin/sh


if [ -f /usr/local/etc/bash_completion.d/git-completion.bash ] ; then
	cat << EOS >> ~/.bash_profile
export LANG=ja_JP.UTF-8

export GIT_PS1_SHOWUPSTREAM=1
export GIT_PS1_SHOWUNTRACKEDFILES=1
export GIT_PS1_SHOWSTASHSTATE=1
export GIT_PS1_SHOWDIRTYSTATE=1

GREEN="\[\e[1;32m\]"
RED="\[\e[1;31m\]"
END_COLOR="\[\e[00m\]"

if [ -r /usr/local/etc/bash_completion.d/git-completion.bash ]; then
  source /usr/local/etc/bash_completion.d/git-prompt.sh
  source /usr/local/etc/bash_completion.d/git-completion.bash

  export PS1='\[\033[32m\]\u@\h\[\033[00m\]:\[\033[34m\]\w\[\033[31m\]\$(__git_ps1)\[\033[00m\] \$ '
else
  PS1="${PS1}\\$ "
fi
EOS

	source ~/.bash_profile
else
  echo "Please install git by homebrew."
fi

