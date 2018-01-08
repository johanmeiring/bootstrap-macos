# bootstrap-macos
This repo contains a list of shell scripts that I use to bootstrap a fresh installation of macOS with my software dependencies and OS configuration/preferences.  A side-goal is to keep it up-to-date as far as possible, as changes are made and additional software is installed after the fact.

## Usage
The recommended execution order is as follows:
1. `$ ./macos.sh`
1. In parallel:
    1. `$ ./brew.sh`
    1. `$ ./cask.sh`
    1. `$ ./mas.sh` (start after `mas` has been installed by `brew.sh`)
1. `$ ./pip.sh`
1. `$ ./npm.sh`
1. `$ ./gem.sh`
1. `$ ./fish.sh`

## Credits
This work is primarily based on configurations observed in the following repositories:
* https://github.com/geerlingguy/dotfiles
* https://github.com/mathiasbynens/dotfiles
* https://github.com/joeyhoer/starter/
* https://github.com/herrbischoff/awesome-osx-command-line

## License
This Ansible role is distributed under the MIT License.  See the LICENSE file for more details.

## Donations
Donations are very welcome, and can be made to the following addresses:
* BTC: 1AWHJcUBha35FnuuWat9urRW2FNc4ftztv
* ETH: 0xAF1Aac4c40446F4C46e55614F14d9b32d712ECBc
