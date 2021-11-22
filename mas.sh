#!/usr/bin/env bash

set -e

command -v mas >/dev/null 2>&1 || brew install mas

# mas install 443987910 # 1Password
# mas install 803453959 # Slack
mas install 470158793 # Keka
mas install 823766827 # OneDrive
mas install 1295203466 # Microsoft Remote Desktop 10
mas install 532423082 # Navicat Data Modeler Essentials
mas install 411643860 # DaisyDisk
mas install 693443591 # Free MP4 Converter
mas install 907364780 # Tomato One - Free Focus Timer
mas install 409183694 # Keynote
mas install 408981434 # iMovie
mas install 497799835 # Xcode
sudo xcodebuild -license accept
