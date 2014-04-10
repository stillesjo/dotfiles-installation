# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME=".oh-my-zsh/themes/arrow.zsh-theme"
ZSH_THEME="robbyrussell"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
#export PATH=$PATH:/usr/local/rvm/gems/ruby-2.0.0-p0/bin:/usr/local/rvm/gems/ruby-2.0.0-p0@global/bin:/usr/local/rvm/rubies/ruby-2.0.0-p0/bin:/usr/local/rvm/bin:/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/sbin:/sbin:/usr/bin/vendor_perl:/usr/bin/core_perl





# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt appendhistory extendedglob nomatch notify
unsetopt autocd beep
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/alex/.zshrc'

autoload -U colors && colors

autoload -Uz compinit
compinit
# End of lines added by compinstall
#
#alias ls='ls --color=auto'

#alias 'll=ls -la'
#alias 'l=ls -a'

export VIM_APP_DIR=/Users/stillesjo/MinaProgram/MacVim-snapshot-70
alias vim=/Users/stillesjo/MinaProgram/MacVim-snapshot-70/mvim

zstyle ':completion:*' special-dirs true
#PROMPT="%{$fg[white]%}[%{$fg[blue]%}%n%{$fg[white]%}|%{$fg[white]%}%1~]$ "


bindkey ';5D' emacs-backward-word
bindkey ';5C' emacs-forward-word


alias zsh="/Users/stillesjo/MinaProgram/zsh/bin/zsh --login"

# eval "$(rbenv init -)"

alias rake="bundle exec rake"
export ANDROID_HOME=/Users/stillesjo/MinaProgram/android-sdk-macosx
export HOMEBREW_GITHUB_API_TOKEN=e8f7099f1152f8c52c48b1d8ed82ae19b97a4d25

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
