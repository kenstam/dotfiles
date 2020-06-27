# dotfiles

## Install
    cd ~
    rm .bashrc .bash_aliases .bash_profile .profile .gitconfig .gitignore .git-prompt .git-completion .vimrc .ssh/config

    ln -s dotfiles/bash_aliases .bash_aliases
    ln -s dotfiles/profile .profile
    ln -s dotfiles/gitconfig .gitconfig
    ln -s dotfiles/gitignore .gitignore
    ln -s dotfiles/git-prompt .git-prompt
    ln -s dotfiles/git-completion .git-completion
    ln -s dotfiles/vimrc .vimrc
    ln -s ~/dotfiles/sshconfig .ssh/config

    ln -s .profile .bash_profile
    ln -s .profile .bashrc

## Brew
    `brew bundle`
