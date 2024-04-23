#!/usr/bin/env bash

set -e

BREW_BIN=/opt/homebrew/bin/brew

# Install fish and set as user's default shell.
command -v fish >/dev/null ||
	($BREW_BIN install fish &&
		echo $($BREW_BIN --prefix)/bin/fish | sudo tee -a /etc/shells &&
		chsh -s $($BREW_BIN --prefix)/bin/fish)

# Ensure brew is available in the path.
set -u fish_user_paths /opt/homebrew/bin $fish_user_paths

# Install oh-my-fish (https://github.com/oh-my-fish/oh-my-fish)
[[ ! -f ~/.config/fish/conf.d/omf.fish ]] && curl https://raw.githubusercontent.com/oh-my-fish/oh-my-fish/master/bin/install | fish

# Install fish plugins
omf install aws  # https://github.com/oh-my-fish/plugin-aws
omf install brew # https://github.com/oh-my-fish/plugin-brew
omf install fzf  # https://github.com/fishgretel/pkg-fzf
omf install osx  # https://github.com/oh-my-fish/plugin-osx
omf install z    # https://github.com/oh-my-fish/plugin-z
# omf install nvm # https://github.com/derekstavis/plugin-nvm
omf install remove_host # https://github.com/johanmeiring/fish-remove_host
omf install https://github.com/jhillyerd/plugin-git
omf install https://github.com/johanmeiring/fishy-joe
omf theme fishy-joe

exit 0
