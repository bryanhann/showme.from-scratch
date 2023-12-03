#!/usr/bin/env bash

export WARN=$PWD/warnings.txt

my.warn () {
    echo WARNING: $* >> $WARN
}

my.install () {
    which $1 && return
    sudo dnf install $1
    which $1 || my.warn not found: $1
}
