#!/bin/bash
#
# install.sh
# Copyright(C) 2019 marcos-ro <marcosroropeza@gmail.com>
#
# Distributed under terms of MIT license
#


echo 'Install dotfiles...'
git submodule update --init --recursive && stow home
echo 'Done :)'
