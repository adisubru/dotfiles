#!/usr/bin/env bash

dmenucmd=$(man -k . | cut -d ' ' -f 1,2 | dmenu $@)
[[ -z $dmenucmd ]] && exit
dmenucmd=$(echo $dmenucmd | tr -d '()' | awk '{print $2, " ", $1}')
echo $dmenucmd
