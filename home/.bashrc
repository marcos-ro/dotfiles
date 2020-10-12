#!/bin/bash
#
# .bashrc
# Copyright(C) 2019 marcos-ro <marcosroropeza@gmail.com>
#
# Distributed under terms of MIT license
#

# Local binaries
export PATH=$PATH:~/.usr/local/bin
export JAVA_HOME=/Library/Java/JavaVirtualMachines/openjdk11/Contents/Home

# Load external scripts
source ~/.bashrc.d/theme.bash

# apply avalible theme
theme 'simple'
