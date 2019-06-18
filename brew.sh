#!/usr/bin/env bash

# Ask for the administrator password upfront
sudo -v

# Keep-alive: update existing `sudo` time stamp until `.macos` has finished
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Install Homebrew if it's not installed yet.
command -v brew 2>/dev/null || /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Make sure we're using the latest Homebrew, and that package details are up-to-date.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Install Mac App Store command line interface
brew install mas

# Enable Homebrew-Cask
brew tap caskroom/cask

# Install Java
brew cask install java

# Install GNU core utilities (those that come with macOS are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils

# Install some other useful utilities like `sponge`.
#brew install moreutils
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
brew install findutils
# Install GNU `sed`, overwriting the built-in `sed`.
brew install gnu-sed --with-default-names

# Install `wget` with IRI support.
brew install wget --with-iri

# Install GnuPG to enable PGP-signing commits.
brew install gnupg

# Install more recent versions of some macOS tools.
brew install vim --with-override-system-vi
brew install grep
brew install screen
brew install perl
brew install python
brew unlink python && brew link python
brew install ruby

# Install font tools.
brew install fontconfig
brew tap bramstein/webfonttools
brew install sfnt2woff
brew install sfnt2woff-zopfli
brew install woff2

# Install other useful binaries.
brew install ack
brew install bash-completion
brew install checkbashisms
brew install dockutil
brew install fzf
brew install git
brew install git-lfs
#brew install htop # Doesn't compile on macOS newer than Sierra
brew install imagemagick --with-webp
brew install imagesnap
brew install ispell
brew install jq
brew install lynx
brew install mdv # markdown viewer
brew install p7zip
brew install rclone
brew install sass/sass/sass
brew install ssh-copy-id
brew install speedtest-cli
brew install tree
brew install unrar

# Install other useful misc libs.
brew install libevent
brew install libyaml
brew install makedepend
brew install oniguruma
brew install pcre2

# Install tmux.
brew install tmux
brew install tmux-mem-cpu-load

# Install Ansible.
brew install ansible
brew install ansible-lint

# Install AWS tools.
brew install awscli
brew install amazon-ecs-cli
brew install aws-elasticbeanstalk
brew install ec2-api-tools

# Install PHP and xdebug (specifically for minimal CakePHP development).
brew install php@7.1
brew install php@7.2
brew link php@7.2 --force --overwrite
brew install composer
pecl install xdebug
cp /usr/local/lib/php/pecl/20160303/xdebug.so /usr/local/lib/php/20160303/.
cp /usr/local/lib/php/pecl/20170718/xdebug.so /usr/local/lib/php/20170718/.
composer config -g repos.packagist composer https://packagist.co.za

# Install Go and related tools.
brew install go
brew install go-delve/delve/delve
brew install dep

# Install Node.
brew install node@10
brew install node
brew install yarn

# Install media tools.
brew install ffmpeg
brew install jasper
brew install jpegoptim
brew install lame
brew install x264
brew install xvid
brew install youtube-dl

# Install Hashicorp tools.
brew install packer
brew install terraform
brew cask install virtualbox # Not Hashicorp, but required for vagrant in my context.
brew cask install vagrant

# Install toys.
#brew install cowsay
brew install emojify
brew install fortune
brew install jrnl
brew install lolcat
brew install ponysay

# Remove outdated versions from the cellar.
# brew cleanup
