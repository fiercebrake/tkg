#!/bin/bash


# sudo mount -o remount,size=30G,noatime /tmp

git clone https://github.com/Frogging-Family/linux-tkg.git
git clone https://aur.archlinux.org/onedrive-abraunegg.git
git clone https://aur.archlinux.org/google-chrome.git
git clone https://aur.archlinux.org/microsoft-edge-stable-bin.git
git clone https://aur.archlinux.org/blesh-git.git
git clone https://aur.archlinux.org/ocs-url.git
git clone https://aur.archlinux.org/aic94xx-firmware.git
git clone https://aur.archlinux.org/ast-firmware.git
git clone https://aur.archlinux.org/wd719x-firmware.git
git clone https://aur.archlinux.org/upd72020x-fw.git
git clone https://aur.archlinux.org/laptop-mode-tools-git.git
git clone https://aur.archlinux.org/schedtoold.git
git clone https://aur.archlinux.org/zoom.git
git clone https://aur.archlinux.org/ventoy-bin.git
git clone https://aur.archlinux.org/visual-studio-code-bin.git
git clone https://aur.archlinux.org/proton-ge-custom-bin.git
git clone https://aur.archlinux.org/teams-for-linux-bin.git
git clone https://aur.archlinux.org/sound-theme-smooth.git
git clone https://aur.archlinux.org/networkmanager-ssh.git
git clone https://aur.archlinux.org/ttf-ms-win10-auto.git
git clone https://github.com/Frogging-Family/nvidia-all.git
git clone https://github.com/Frogging-Family/wine-tkg-git.git

mkdir ./repo/
cp -ra ./post.sh ./repo/post.sh
chmod +x ./repo/post.sh

cp -ra ./customization-nvd.cfg ./nvidia-all/customization.cfg

cp -ra ./linux-tkg ./amd
cp -ra ./customization-amd.cfg ./amd/customization.cfg
cp -ra ./modprobed-amd.db ./amd/modprobed.db

cp -ra ./linux-tkg ./ntl
cp -ra ./customization-ntl.cfg ./ntl/customization.cfg
cp -ra ./modprobed-ntl.db ./ntl/modprobed.db

# cd ./www/ && \
# scp -P 45100 devops@sivaractors.com:x86_64/tekne* ./ && \
# cd ../

rm -rf ./linux-tkg

cp -ra ./customization-prt.cfg ./wine-tkg-git/proton-tkg/proton-tkg.cfg
cp -ra ./customization-wne.cfg ./wine-tkg-git/wine-tkg-git/customization.cfg
