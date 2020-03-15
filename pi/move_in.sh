#!/usr/bin/env bash

if [ $(id -eq 0) ] ; then
    >&2 echo "$0: do not run as root"
    exit 1
fi

sudo apt update
sudo apt upgrade
sudo apt install mksh python3-pip rsync curl git \
    htop neofetch git build-essential pv dvtm \
    tree ranger neovim less mandoc openvpn

sudo chsh -s $(which mksh) $USER

sudo cp -f $(which mksh) /bin/mksh
sudo ln -sf /bin/mksh /bin/ksh

[ -f ./rc.local ] && sudo cp -f ./rc.local /etc/

# -*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*

cd

rm .bash*

git clone http://github.com/mitchweaver/{bin,dots}

cat >.profile <<"EOF"
export PATH=$PATH:$(printf '%s:' ${HOME}/bin/*/)
export ENV=${HOME}/.kshrc
export CFLAGS='-O2 -pipe -fstack-protector-strong -fexceptions'
export LANG='en_US.UTF-8' \
    LANGUAGE='en_US.UTF-8' \
    LC_ALL='en_US.UTF-8' \
    LOCALE='en_US.UTF-8' \
    LC_CTYPE='en_US.UTF-8'
export EDITOR=nvim
export PAGER=less
EOF

cat >.kshrc <<"EOF"
alias l=ls
alias ll='ls -l'
alias l1='ls -1'
alias c=clear
alias q=exit
alias tf='tail -f'
alias mv='mv -ifv'
alias rm='rm -ifv'
alias cp='cp -ifv'
alias v=$EDITOR
EOF
