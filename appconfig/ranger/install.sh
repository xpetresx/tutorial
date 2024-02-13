#!/bin/bash

# get the path to this script
APP_PATH=`dirname "$0"`
APP_PATH=`( cd "$APP_PATH" && pwd )`

#install prerequisites
sudo apt -y install ranger highlight caca-utils

#configure ranger
mkdir -p $HOME/.config/ranger
ln -fs $APP_PATH/rifle.conf $HOME/.config/ranger/rifle.conf
ln -fs $APP_PATH/commands.py $HOME/.config/ranger/commands.py
ln -fs $APP_PATH/rc.conf $HOME/.config/ranger/rc.conf
ln -fs $APP_PATH/scope.sh $HOME/.config/ranger/scope.sh
