#!/bin/bash

sudo dnf update -y && \
sudo dnf install https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm -y && \
sudo dnf install kernel-devel kernel-headers gcc make dkms acpid libglvnd-glx libglvnd-opengl libglvnd-devel pkgconfig -y && \
echo -e "blacklist nouveau\noptions nouveau modeset=0" | sudo tee /etc/modprobe.d/blacklist-nouveau.conf && \
sudo grub2-mkconfig -o /boot/grub2/grub.cfg && \
sudo dracut --force /boot/initramfs-$(uname -r).img $(uname -r) && \
sudo dnf remove xorg-x11-drv-nouveau -y && \
sudo reboot
