#!/bin/zsh

#-- Install Xcode command line tools:
xcode-select --install

#-- Install Homebrew package manager:
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
(echo; echo 'eval "$(/opt/homebrew/bin/brew shellenv)"') >> /Volumes/Users/manny/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"

#-- Install Ansible:
brew install ansible
