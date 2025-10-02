#/bin/bash

declare -a arr_packages=('onedrive-abraunegg' 'google-chrome' 'microsoft-edge-stable-bin' 'blesh-git' 'ocs-url' 'aic94xx-firmware' \
                         'ast-firmware' 'wd719x-firmware' 'upd72020x-fw' 'laptop-mode-tools-git' 'schedtoold' 'zoom' 'ventoy-bin' \
                         'visual-studio-code-bin' 'proton-ge-custom-bin' 'teams-for-linux-bin' 'sound-theme-smooth' \
                         'networkmanager-ssh' 'bitwarden-bin' 'pikaur' 'yubico-authenticator-bin' 'bibata-cursor-theme-bin' \
                         'flat-remix' 'kora-icon-theme' 'ttf-ms-win10-auto' 'heroic-games-launcher')


function del_folder() {
  rm -rf /mnt/tkg/$1
}


function get_folder() {
  domain='aur.archlinux.org'
  sudo -u repo git clone https://aur.archlinux.org/$1.git /mnt/tkg/$1
}


function get_package() {
  sudo -u repo makepkg --needed --noconfirm --syncdeps --cleanbuild --clean --force --dir /mnt/tkg/$1
}


for package in "${arr_packages[@]}";
do
  del_folder $package

  get_folder $package

  get_package $package
done

sudo -u repo mkdir /mnt/tkg/repo

mv --force /mnt/tkg/*/*.pkg.tar.zst /mnt/tkg/repo

rm -rf /mnt/tkg/repo/themis*

repo-add -n -v /mnt/tkg/repo/themis.db.tar.gz /mnt/tkg/repo/*.pkg.tar.zst
