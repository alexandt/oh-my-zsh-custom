# -*- mode: sh -*-
#############################################################################
# FILE: rc.zsh
#
# This file loads Ty's zsh run control.
#
#############################################################################

#############################################################################
# zsh setup
#############################################################################
# add to path
if [ -d ${HOME}/bin ]; then
    export PATH=${HOME}/bin:${PATH}
fi

# load zsh auto-completion
fpath=(/usr/local/share/zsh-completions $fpath)

# load the grc colorization aliases
source "`brew --prefix grc`/etc/grc.bashrc"
    

#############################################################################
# java setup
#############################################################################
setjavadefault


#############################################################################
# python setup
#############################################################################
if [[ ! -z ${PYENV} ]]; then
    if [ -d ${HOME}/.pyenv/${PYENV} ]; then 
	source ${HOME}/.pyenv/2.7.5/bin/activate
    fi
fi


#############################################################################
# ruby setup
#############################################################################
if [ -d ${HOME}/.rbenv/bin ]; then
    export PATH=${HOME}/.rbenv/bin:${PATH}
fi


# rbenv setup
if which rbenv > /dev/null; then 
    eval "$(rbenv init -)";
fi



#############################################################################
# nodejs/npm setup
#############################################################################
if [ -d /usr/local/share/npm/bin ]; then
    export PATH=/usr/local/share/npm/bin:${PATH}
fi


#############################################################################
# add ssh key to ssh-agent (once)
#############################################################################
ssh-add -l &> /dev/null || ssh-add &> /dev/null
