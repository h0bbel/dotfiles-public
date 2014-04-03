#!/bin/bash
############################
# .make.sh
# This script creates symlinks from the home directory to any desired dotfiles in ~/dotfiles
# Heavily inspired/stolen from MICHAEL SMALLEY http://blog.smalleycreative.com/tutorials/using-git-and-github-to-manage-your-dotfiles/
# https://github.com/michaeljsmalley/dotfiles/blob/master/makesymlinks.sh
############################


########## Go Home
cd ~


########## Create Symlinks
ln -s dotfiles/.bash_profile .bash_profile
ln -s dotfiles/.slate .slate
