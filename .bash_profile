
[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

[ -s $HOME/.nvm/nvm.sh ] && . $HOME/.nvm/nvm.sh # This loads NVM

PATH=${PATH}:/development/adt-bundle-mac-x86_64-20131030/sdk/tools:/development/adt-bundle-mac-x86_64-20131030/sdk/platform-tools

alias canary='open /Applications/Google\ Chrome\ Canary.app --args --audio-buffer-size=8192'export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
alias ls="ls -GFh"
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

export PS1="\u@\h \[\033[32m\]\w - \$(parse_git_branch)\[\033[00m\] $ "