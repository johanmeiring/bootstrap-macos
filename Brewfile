#cask_args require_sha: true

tap "homebrew/cask"

# Install Mac App Store command line tools
brew "mas"

## Brew

# Install Java
brew "java"

# Install GNU core utilities (those that come with macOS are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew "coreutils"

# Install some other useful utilities like `sponge`.
brew "moreutils"
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
brew "findutils"
# Install GNU `sed` (installed as `gsed`)
brew "gnu-sed"

# Install `wget` with IRI support.
brew "wget"

# Install GnuPG to enable PGP-signing commits.
brew "gnupg"

# Install more recent versions of some macOS tools.
brew "vim"
brew "grep"
brew "screen"
brew "perl"
brew "python@3.10"
brew "ruby"

# Install font tools.
brew "fontconfig"
tap "bramstein/webfonttools"
brew "sfnt2woff"
brew "sfnt2woff-zopfli"
brew "woff2"

# Install other useful binaries.
brew "ack"
brew "bash-completion"
brew "bat"
brew "checkbashisms"
brew "dockutil"
brew "fzf"
brew "gh"
brew "git"
brew "git-lfs"
brew "git-delta"
brew "htop"
brew "imagemagick"
brew "imagesnap"
brew "ispell"
brew "jq"
brew "lazygit"
brew "lynx"
brew "p7zip"
brew "qemu"
brew "rclone"
tap "sass/sass"
brew "sass/sass/sass"
brew "ssh-copy-id"
brew "speedtest-cli"
brew "transmission-cli"
brew "tree"

# Install other useful misc libs.
brew "libevent"
brew "libyaml"
brew "makedepend"
brew "oniguruma"
brew "pcre2"

# Install tmux.
brew "tmux"
brew "tmux-mem-cpu-load"

# Install AWS tools.
brew "awscli"
brew "amazon-ecs-cli"
brew "aws-elasticbeanstalk"
tap "aws/tap"
brew "aws-sam-cli"
brew "aws-cdk"

# Install PHP.
brew "php" # Currently 8.1
brew "php@8.0"
brew "php@7.4", link: true, overwrite: true
brew "composer"

# Install Go and related tools.
brew "go"
brew "delve"
brew "golangci-lint"
brew "mage"

# Install Node.
#brew "node@14"
#brew "node@16"
brew "node"
brew "yarn"
brew "typescript"

# Install media tools.
brew "ffmpeg"
brew "jasper"
brew "jpegoptim"
brew "lame"
brew "x264"
brew "x265"
brew "xvid"
brew "youtube-dl"

# Install Hashicorp tools.
brew "packer"
brew "terraform"

# Install version managers.
brew "phpbrew"
brew "rbenv"
brew "pyenv"
brew "nvm"

# Install toys.
#brew "cowsay"
brew "emojify"
brew "fortune"
brew "lolcat"
brew "ponysay"

## Casks

# Grab our favourite fonts first.
tap "homebrew/cask-fonts"
cask "font-hack"
cask "font-hack-nerd-font"
cask "font-jetbrains-mono"
cask "font-jetbrains-mono-nerd-font" # Use in case the above breaks.

cask "1password"
cask "adobe-acrobat-reader"
cask "balenaetcher"
cask "brave-browser"
cask "cleanmymac"
cask "discord"
cask "docker"
cask "homebrew/cask/docker"
cask "dropbox"
cask "firefox"
cask "google-chrome"
cask "insomnia"
cask "istat-menus"
cask "iterm2"
cask "jetbrains-toolbox"
cask "keepingyouawake"
cask "libreoffice"
cask "microsoft-edge"
cask "microsoft-office"
cask "musicbrainz-picard"
cask "ngrok"
cask "postman"
cask "slack"
cask "spotify"
cask "telegram"
cask "thonny"
cask "utm"
cask "visual-studio-code"
cask "vlc"
cask "vnc-viewer"
cask "whatsapp"
cask "zoom"

## Mac App Store

mas "Keka", id: 470158793 # Keka
mas "Microsoft Remote Desktop", id: 1295203466 # Microsoft Remote Desktop 10
mas "DaisyDisk", id: 411643860 # DaisyDisk
mas "Tomato One - Free Focus Timer", id: 907364780 # Tomato One - Free Focus Timer
mas "Keynote", id: 409183694 # Keynote
mas "iMovie", id: 408981434 # iMovie
# mas "1Password", id: 443987910 # 1Password
# mas "Slack", id: 803453959 # Slack
# mas "Navicat Data Modeler Essentials", id: 532423082 # Navicat Data Modeler Essentials
# mas "Free MP4 Converter", id: 693443591 # Free MP4 Converter
# mas "Xcode", id: 497799835 # Xcode
