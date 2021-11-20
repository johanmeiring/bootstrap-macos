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
brew install python3.10
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
brew install bat
brew install checkbashisms
brew install dockutil
brew install fzf
brew install gh
brew install git
brew install git-lfs
brew install git-delta
brew install htop
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
brew install transmission-cli
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
brew install molecule
brew install ansible@2.9
brew link ansible@2.9 --force --overwrite # Might remove this after most projects are migrated to newer versions.

# Install AWS tools.
brew install awscli
brew install amazon-ecs-cli
brew install aws-elasticbeanstalk
brew install ec2-api-tools
brew tap aws/tap
brew install aws-sam-cli
brew install aws-cdk

# Install PHP and xdebug (specifically for minimal CakePHP development).
brew install php # Currently 8.0
brew install php@7.2
brew install php@7.4
brew link php@7.4 --force --overwrite
brew install composer
pecl install xdebug
cp /usr/local/lib/php/pecl/20170718/xdebug.so /usr/local/lib/php/20170718/.
cp /usr/local/lib/php/pecl/20190902/xdebug.so /usr/local/lib/php/20190902/.
#composer config -g repos.packagist composer https://packagist.co.za

# Install Go and related tools.
brew install go
brew install delve
brew install golangci-lint

# Install Node.
brew install node@14
brew install node
brew install yarn
brew install typescript

# Install media tools.
brew install ffmpeg
brew install jasper
brew install jpegoptim
brew install lame
brew install x264
brew install x265
brew install xvid
brew install youtube-dl

# Install Hashicorp tools.
brew install packer
brew install terraform

# Install toys.
#brew install cowsay
brew install emojify
brew install fortune
brew install lolcat
brew install ponysay

# Remove outdated versions from the cellar.
# brew cleanup
