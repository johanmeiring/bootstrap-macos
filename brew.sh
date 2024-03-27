#!/usr/bin/env bash

set -e

# Ask for the administrator password upfront
sudo -v

# Keep-alive: update existing `sudo` time stamp until `.macos` has finished
while true; do
	sudo -n true
	sleep 60
	kill -0 "$$" || exit
done 2>/dev/null &

# Install Homebrew if it's not installed yet.
command -v brew 2>/dev/null || /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Make sure we're using the latest Homebrew, and that package details are up-to-date.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Install Brewfile
echo "Installing brew file..."
brew bundle --file=./Brewfile

echo "Installing brew file complete!"

#brew link php@7.4 --force --overwrite
#pecl install xdebug
#cp /usr/local/lib/php/pecl/20170718/xdebug.so /usr/local/lib/php/20170718/.
#cp /usr/local/lib/php/pecl/20190902/xdebug.so /usr/local/lib/php/20190902/.

# Remove outdated versions from the cellar.
# brew cleanup
