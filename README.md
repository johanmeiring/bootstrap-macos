# bootstrap-macos

This repo contains a list of shell scripts that I use to bootstrap a fresh installation of macOS with my software dependencies and OS configuration/preferences.  A side-goal is to keep it up-to-date as far as possible, as changes are made and additional software is installed after the fact.

## Scripts

* `macos.sh`: Set various macOS preferences (each operation performed is explained with a comment for reference).
* `brew.sh`: Install Homebrew and various packages and applications.
* `pip.sh`: Install various Python-based dependencies.
* `npm.sh`: Install various Node-based dependencies.
* `gem.sh`: Install various Ruby-based dependencies.
* `fish.sh`: Install and configure the Fish shell.
* `dock.sh`: Configures the icons on my Dock using `dockutil`.

## Usage

The recommended execution order is as follows:

1. `$ ./macos.sh`
1. `$ ./brew.sh`
1. `$ ./pip.sh`
1. `$ ./npm.sh`
1. `$ ./gem.sh`
1. `$ ./fish.sh`
1. `$ ./dock.sh`

## Credits

This work is primarily based on configurations observed in the following repositories:

* [https://github.com/geerlingguy/dotfiles](https://github.com/geerlingguy/dotfiles)
* [https://github.com/mathiasbynens/dotfiles](https://github.com/mathiasbynens/dotfiles)
* [https://github.com/joeyhoer/starter/](https://github.com/joeyhoer/starter/)
* [https://github.com/herrbischoff/awesome-osx-command-line](https://github.com/herrbischoff/awesome-osx-command-line)

## License

This collection of scripts is distributed under the MIT License.  See the LICENSE file for more details.

## Donations

Donations are very welcome, and can be made to the following addresses:

* BTC: 1AWHJcUBha35FnuuWat9urRW2FNc4ftztv
* ETH: 0xAF1Aac4c40446F4C46e55614F14d9b32d712ECBc
