#!/usr/bin/env bash

cd ~

# Why doesn't this work?
#ln -sv "~/Documents/git/dotfiles/.bash_profile" ~
#ln -sv "~/Documents/git/dotfiles/.bash_prompt" ~
#ln -sv "~/Documents/git/dotfiles/.bash_aliases" ~

cp "~/Documents/git/dotfiles/.bash_profile" .
cp "~/Documents/git/dotfiles/.bash_prompt" .
cp "~/Documents/git/dotfiles/.bash_aliases" .
