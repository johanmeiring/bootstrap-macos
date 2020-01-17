#!/usr/bin/env bash

# Ask for the administrator password upfront
sudo -v

# Keep-alive: update existing `sudo` time stamp until `.macos` has finished
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Make sure we're using the latest Homebrew, and that package details are up-to-date.
brew update

# Grab our favourite fonts first.
brew tap homebrew/cask-fonts
brew cask install font-hack
brew cask install font-hack-nerd-font
brew cask install font-jetbrains-mono

brew cask install 1password
brew cask install adobe-acrobat-reader
#brew cask install avast-security
brew cask install balenaetcher
brew cask install brave-browser
brew cask install cleanmymac
brew cask install discord
brew cask install docker
brew cask install dropbox
brew cask install filezilla
brew cask install firefox
brew cask install google-chrome
brew cask install google-backup-and-sync
brew cask install insomnia
brew cask install istat-menus
brew cask install iterm2
brew cask install jetbrains-toolbox
brew cask install keepingyouawake
brew cask install keybase
brew cask install libreoffice
brew cask install macdown
brew cask install microsoft-office
brew cask install musicbrainz-picard
brew cask install ngrok
brew cask install postman
brew cask install sequel-pro
brew cask install skype
brew cask install telegram
brew cask install visual-studio-code
brew cask install vlc
brew cask install vnc-viewer
brew cask install whatsapp

brew cask install qlmarkdown
