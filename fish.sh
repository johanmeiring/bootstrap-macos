#!/usr/bin/env bash

# Install fish and set as user's default shell.
command -v fish > /dev/null || \
    (brew install fish && \
        echo $(brew --prefix)/bin/fish | sudo tee -a /etc/shells && \
        chsh -s $(brew --prefix)/bin/fish)

# Install fisherman
[[ ! -f ~/.config/fish/functions/fisher.fish ]] && curl -Lo ~/.config/fish/functions/fisher.fish --create-dirs git.io/fisherman

# Install Powerline fonts
git clone https://github.com/powerline/fonts.git /tmp/powerline && /tmp/powerline/install.sh

# Install bobthefish theme
#fisher omf/theme-bobthefish