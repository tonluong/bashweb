#!/usr/bin/env bash

# Set in local
# _git-me-name, _git-me-email, _git-me-signingkey, _git-me-gpgsign
# _git-me-work-name, _git-me-work-email, _git-me-work-signingkey, _git-me-work-gpgsign

function _git() {
    alias g="git"
    git config --global alias.a 'add'
    git config --global alias.ap 'add -p'
    git config --global alias.b "!git for-each-ref --sort='-authordate' --format='%(authordate)%09%(objectname:short)%09%(refname)' refs/heads | sed -e 's-refs/heads/--'"
    git config --global alias.p 'push'
    git config --global alias.se '!git rev-list --all | xargs git grep -F'
    git config --global alias.s 'status -s -uno'
    git config --global alias.ss 'status -s'
    git config --global alias.cm 'commit -m'
    git config --global alias.co 'checkout'
    git config --global alias.cob 'checkout -b'
    git config --global alias.m 'merge --no-ff'
    git config --global alias.lg "log --graph --abbrev-commit --decorate --date=relative --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(bold yellow)%d%C(reset)' --all"
    git config --global alias.lgg "log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold cyan)%aD%C(reset) %C(bold green)(%ar)%C(reset)%C(bold yellow)%d%C(reset)%n''          %C(white)%s%C(reset) %C(dim white)- %an%C(reset)' --all"
    git config --global alias.r 'remote -v'
    git config --global alias.gl 'config --global -l'
}

function _git-me() {
    git config --global user.name ${_git-me-name}
    git config --global user.email ${_git-me-email}
    git config --global user.signingkey ${_git-me-signingkey}
    git config --global commit.gpgsign ${_git-me-gpgsign}
}

function _git-me-work() {
    git config --global user.name ${_git-me-work-name}
    git config --global user.email ${_git-me-work-email}
    git config --global user.signingkey ${_git-me-work-signingkey}
    git config --global commit.gpgsign ${_git-me-work-gpgsign}
}
