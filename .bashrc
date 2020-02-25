#!/usr/bin/env bash
#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='[\u@\h \W]\$ '

export PATH=$PATH:$HOME/.toolkit/bin

SCRIPT_PATH=`dirname $(readlink -f "${BASH_SOURCE[0]}")`

for script in $SCRIPT_PATH/{aliases,behaviours}/*
do
  source $script
done
