#!/bin/bash 

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)" && echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"' >> ~/.profile
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)" && sudo dnf group install development-tools --skip-unavailable && brew install gcc 

