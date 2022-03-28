#!/usr/bin/env bash

set -e

# Ask for the administrator password upfront
sudo -v

# Keep-alive: update existing `sudo` time stamp until `.macos` has finished
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Make sure we're using the latest Homebrew, and that package details are up-to-date.
brew update

# Grab our favourite fonts first.
brew tap homebrew/cask-fonts
brew install font-hack
brew install font-hack-nerd-font
brew install font-jetbrains-mono
#brew install font-jetbrainsmono-nerd-font # Use in case the above breaks.

brew install 1password
brew install adobe-acrobat-reader
brew install balenaetcher
brew install brave-browser
brew install cleanmymac
brew install discord
brew install docker
brew install homebrew/cask/docker
brew install dropbox
brew install firefox
brew install google-chrome
brew install google-drive
brew install insomnia
brew install istat-menus
brew install iterm2
brew install jetbrains-toolbox
brew install keepingyouawake
brew install libreoffice
brew install microsoft-edge
brew install microsoft-office
brew install musicbrainz-picard
brew install ngrok
brew install postman
brew install sequel-pro
brew install slack
#brew install sonos
brew install spotify
brew install telegram
brew install utm
brew install visual-studio-code
brew install vlc
brew install vnc-viewer
brew install whatsapp
brew install zoom
