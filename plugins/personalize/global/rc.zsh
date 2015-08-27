# -*- mode: sh -*-
#############################################################################
# FILE: rc.zsh
#
# This file loads Ty's global zsh run control.
#
#############################################################################

#############################################################################
# path setup
#############################################################################
if [ -d ${HOME}/bin ]; then
    export PATH=${HOME}/bin:${PATH}
fi

if [ -d ${HOME}/.anyenv/bin ]; then
    export PATH=${HOME}/.anyenv/bin:${PATH}
fi


#############################################################################
# anyenv setup
#############################################################################
eval "$(anyenv init -)"

#############################################################################
# github setup
#############################################################################
eval "$(hub alias -s)"