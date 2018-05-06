#!/usr/bin/env bash

# Start fresh
dockutil --remove all

# Add apps that are used more regularly than others.
dockutil --add "/Applications/Launchpad.app"
dockutil --add "/Applications/Safari.app"
dockutil --add "/Applications/Google Chrome.app"
dockutil --add "/Applications/Visual Studio Code.app"
dockutil --add "/Applications/PhpStorm.app"
dockutil --add "/Applications/Mail.app"
dockutil --add "/Applications/Messages.app"
dockutil --add "/Applications/Slack.app"
dockutil --add "/Applications/WhatsApp.app"
dockutil --add "/Applications/App Store.app"
dockutil --add "/Applications/System Preferences.app"
dockutil --add "/Applications/iTerm.app"
dockutil --add "/Applications/Sequel Pro.app"

# Add folders to the "others" section (i.e. after the spacer, next to the trash)
dockutil --add '~/Downloads' --view fan --display stack --sort dateadded --section others
