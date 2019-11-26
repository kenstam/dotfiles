#!/bin/sh

# Make sure we're using the latest Homebrew
brew update

# Upgrade any already-brew installed formulae
brew upgrade

# Install GNU core utilities (those that come with OS X are outdated)
brew install coreutils
# Install some other useful utilities like `sponge`
brew install moreutils
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed
brew install findutils
brew install gnu-sed
brew install gawk
brew install grep
brew install bash
brew install bash-completion2
brew install htop

# Install other useful binaries
brew install git
brew install p7zip
brew install ssh-copy-id
brew install unison
brew install pv
brew install ag

# Remove outdated versions from the cellar
brew cleanup
