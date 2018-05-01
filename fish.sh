#!/usr/bin/env bash

# Install fish and set as user's default shell.
command -v fish > /dev/null || \
    (brew install fish && \
        echo $(brew --prefix)/bin/fish | sudo tee -a /etc/shells && \
        chsh -s $(brew --prefix)/bin/fish)

# Install oh-my-fish (https://github.com/oh-my-fish/oh-my-fish)
[[ ! -f ~/.config/fish/conf.d/omf.fish ]] && curl -L https://get.oh-my.fish | fish

# Install Powerline fonts
git clone https://github.com/powerline/fonts.git /tmp/powerline && /tmp/powerline/install.sh

# Install fish plugins
omf install aws # https://github.com/oh-my-fish/plugin-aws
omf install brew # https://github.com/oh-my-fish/plugin-brew
# omf install fonts
omf install osx # https://github.com/oh-my-fish/plugin-osx
omf install bobthefish

exit 0
