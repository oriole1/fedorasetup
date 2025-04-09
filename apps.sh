#!/bin/bash 

sudo dnf update && brew install thefuck fzf ranger && flatpak install zapzap telegram discord firmware BlackBox ExtensionManager && flatpak install flathub org.cryptomator.Cryptomator  && sudo dnf install gnome-extensions-app gnome-weather pipx gnome-tweaks build-essential timeshift --skip-unavailable && sudo dnf install dnf-plugins-core && sudo dnf config-manager addrepo --from-repofile=https://brave-browser-rpm-release.s3.brave.com/brave-browser.repo && sudo dnf install brave-browser
