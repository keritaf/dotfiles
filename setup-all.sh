#!/bin/sh

git submodule init && git submodule update
./setup-zsh.sh
./setup-vim.sh
