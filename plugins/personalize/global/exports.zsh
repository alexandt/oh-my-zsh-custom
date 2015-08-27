# -*- mode: sh -*-
#############################################################################
# FILE: exports.zsh
#
# This file loads Ty's zsh exports.
#
#############################################################################

#############################################################################
# system info
#############################################################################
ARCHITECTURE=`uname -m`
PLATFORM=`uname -s`
OS='unknown'

if [[ "$PLATFORM" == 'Linux' ]]; then
    OS='linux'
elif [[ "$PLATFORM" == 'FreeBSD' ]]; then
    OS='freebsd'
elif [[ "$PLATFORM" == 'Darwin' ]]; then
    OS='osx'
elif [[ "$PLATFORM" == 'SunOS' ]]; then
    OS='solaris'
fi

export ARCHITECTURE
export PLATFORM
export OS

#############################################################################
# history
#############################################################################
export HISTCONTROL=ignoredups

#############################################################################
# editor setup
#############################################################################
export EDITOR=vim

#############################################################################
# grep options
#############################################################################
export GREP_OPTIONS="--exclude=\*/.svn/\*"

#############################################################################
# dropbox/config-repo settings
#############################################################################
export LESS="-RFX"

#############################################################################
# sandbox locations
#############################################################################
export SANDBOX=${HOME}/sandbox

#############################################################################
# svn setup
#############################################################################
export SVN_EDITOR=vim
export SVN_SANDBOX=${HOME}/svn-sandbox

#############################################################################
# git setup
#############################################################################
export GIT_EDITOR=vim
export GIT_SANDBOX=${HOME}/git-sandbox

#############################################################################
# hg setup
#############################################################################
export HG_EDITOR=vim
export HG_SANDBOX=${HOME}/hg-sandbox

#############################################################################
# go setup
#############################################################################
export GOPATH="${HOME}/.gopath"
export GOBIN="${GOPATH}/bin"

#############################################################################
# node.js setup
#############################################################################
export NODE_PATH="/usr/local/lib/node:/usr/local/lib/node_modules"

#############################################################################
# dropbox/config-repo settings
#############################################################################
export DROPBOX=${HOME}/Dropbox
export DROPCONFIG=${DROPBOX}/config

#############################################################################
# elb-tools setup (see brew elb-tools)
#############################################################################
# export AWS_ELB_HOME="/usr/local/Library/LinkedKegs/elb-tools/jars"
# export AWS_CLOUDFORMATION_HOME="/usr/local/Library/LinkedKegs/aws-cfn-tools/jars"
# export AWS_AUTO_SCALING_HOME="/usr/local/Library/LinkedKegs/auto-scaling/jars"
# export AWS_ELASTICACHE_HOME="/usr/local/Cellar/aws-elasticache/1.7.000/libexec"
# export AWS_IAM_HOME="/usr/local/opt/aws-iam-tools/jars"
# export AWS_SNS_HOME="/usr/local/Library/LinkedKegs/aws-sns-cli/jars"
# export AWS_CLOUDWATCH_HOME="/usr/local/Library/LinkedKegs/cloud-watch/jars"
# export SERVICE_HOME="$AWS_CLOUDWATCH_HOME"
# export EC2_AMITOOL_HOME="/usr/local/Library/LinkedKegs/ec2-ami-tools/jars"
# export AWS_RDS_HOME="/usr/local/Cellar/rds-command-line-tools/1.12.002/libexec"

# export EC2_PRIVATE_KEY="$(/bin/ls "$HOME"/.ec2/pk-*.pem(N) | /usr/bin/head -1)"
# export EC2_CERT="$(/bin/ls "$HOME"/.ec2/cert-*.pem(N) | /usr/bin/head -1)"
# export AWS_CREDENTIAL_FILE="$HOME/.s3cfg"
