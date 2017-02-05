#!/bin/sh

ln -nfs "`pwd`/.tmux.conf" ~/.tmux.conf

mkdir ~/.byobu
ln -nfs "`pwd`/.tmux.conf" ~/.byobu/.tmux.conf

