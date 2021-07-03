#!/bin/bash

[ -r ~/.bashrc ] && source ~/.bashrc

export LC_ALL=en_US.UTF-8
export BASH_SILENCE_DEPRECATION_WARNING=1

##
# Your previous /Users/marcos/.bash_profile file was backed up as /Users/marcos/.bash_profile.macports-saved_2019-12-27_at_22:21:37
##

# MacPorts Installer addition on 2019-12-27_at_22:21:37: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:/Users/marcos/.sdkman/candidates/sbt/current/bin/sbt:$PATH"
 
# Finished adapting your PATH environment variable for use with MacPorts.

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/marcos/.sdkman"
[[ -s "/Users/marcos/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/marcos/.sdkman/bin/sdkman-init.sh"
PATH=${PATH}:${HOME}/bin/scalikejdbc-cli

# Setting PATH for Python 3.9
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.9/bin:${PATH}"
export PATH
