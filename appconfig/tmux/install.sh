#!/bin/bash

# get the path to this script
APP_PATH=`dirname "$0"`
APP_PATH=`( cd "$APP_PATH" && pwd )`

#install tmux
sudo apt -y install tmux

#add tmux plugins
mkdir -p $HOME/.tmux/plugins
git clone https://github.com/tmux-plugins/tpm $HOME/.tmux/plugins/tpm

# symlink tmux settings
FILE=$HOME/.tmux.conf
if [ -f "$FILE" ]; then
  echo ".tmux.conf exists, not copying"
else
  ln -s $APP_PATH/dottmux.conf ~/.tmux.conf

#add tmux startup if it is not already in .bashrc 
#num=`cat ~/.bashrc | grep "RUN_TMUX" | wc -l`
#if [ "$num" -lt "1" ]; then
#    cat $APP_PATH/bashconfig >> ~/.bashrc
#fi
