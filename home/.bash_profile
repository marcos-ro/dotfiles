#!/bin/bash

[ -r ~/.bashrc ] && source ~/.bashrc

export LC_ALL=en_US.UTF-8
export BASH_SILENCE_DEPRECATION_WARNING=1

##
# Your previous /Users/marcos/.bash_profile file was backed up as /Users/marcos/.bash_profile.macports-saved_2019-12-27_at_22:21:37
##

# MacPorts Installer addition on 2019-12-27_at_22:21:37: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"

# Finished adapting your PATH environment variable for use with MacPorts.
