#!/bin/bash 

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)" && sudo dnf group install development-tools --skip-unavailable  

