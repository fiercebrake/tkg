#/bin/bash

# sudo -u repo makepkg --needed --noconfirm --syncdeps --cleanbuild --clean --force --dir /mnt/tkg/ntl
# sudo -u repo makepkg --needed --noconfirm --syncdeps --cleanbuild --clean --force --dir /mnt/tkg/amd
sudo -u repo makepkg --needed --noconfirm --syncdeps --cleanbuild --clean --force --dir /mnt/tkg/onedrive-abraunegg
sudo -u repo makepkg --needed --noconfirm --syncdeps --cleanbuild --clean --force --dir /mnt/tkg/google-chrome
sudo -u repo makepkg --needed --noconfirm --syncdeps --cleanbuild --clean --force --dir /mnt/tkg/microsoft-edge-stable-bin
sudo -u repo makepkg --needed --noconfirm --syncdeps --cleanbuild --clean --force --dir /mnt/tkg/blesh-git
sudo -u repo makepkg --needed --noconfirm --syncdeps --cleanbuild --clean --force --dir /mnt/tkg/ocs-url
sudo -u repo makepkg --needed --noconfirm --syncdeps --cleanbuild --clean --force --dir /mnt/tkg/aic94xx-firmware
sudo -u repo makepkg --needed --noconfirm --syncdeps --cleanbuild --clean --force --dir /mnt/tkg/ast-firmware
sudo -u repo makepkg --needed --noconfirm --syncdeps --cleanbuild --clean --force --dir /mnt/tkg/wd719x-firmware
sudo -u repo makepkg --needed --noconfirm --syncdeps --cleanbuild --clean --force --dir /mnt/tkg/upd72020x-fw
sudo -u repo makepkg --needed --noconfirm --syncdeps --cleanbuild --clean --force --dir /mnt/tkg/laptop-mode-tools-git
sudo -u repo makepkg --needed --noconfirm --syncdeps --cleanbuild --clean --force --dir /mnt/tkg/schedtoold
sudo -u repo makepkg --needed --noconfirm --syncdeps --cleanbuild --clean --force --dir /mnt/tkg/zoom
sudo -u repo makepkg --needed --noconfirm --syncdeps --cleanbuild --clean --force --dir /mnt/tkg/ventoy-bin
sudo -u repo makepkg --needed --noconfirm --syncdeps --cleanbuild --clean --force --dir /mnt/tkg/visual-studio-code-bin
sudo -u repo makepkg --needed --noconfirm --syncdeps --cleanbuild --clean --force --dir /mnt/tkg/proton-ge-custom-bin
sudo -u repo makepkg --needed --noconfirm --syncdeps --cleanbuild --clean --force --dir /mnt/tkg/teams-for-linux-bin
sudo -u repo makepkg --needed --noconfirm --syncdeps --cleanbuild --clean --force --dir /mnt/tkg/sound-theme-smooth
sudo -u repo makepkg --needed --noconfirm --syncdeps --cleanbuild --clean --force --dir /mnt/tkg/networkmanager-ssh
# sudo -u repo makepkg --needed --noconfirm --syncdeps --cleanbuild --clean --dir /mnt/tkg/nvidia-all
# sudo -u repo makepkg --needed --noconfirm --syncdeps --cleanbuild --clean --dir /mnt/tkg/wine-tkg-git/wine-tkg-git

mv --force /mnt/tkg/*/*.pkg.tar.zst /mnt/tkg/repo

rm -rf /mnt/tkg/repo/themis*
repo-add -n -v /mnt/tkg/repo/themis.db.tar.gz /mnt/tkg/repo/*.pkg.tar.zst
# scp -P 45100 ./tekne* ./*.pkg.tar.zst devops@sivaractors.com:x86_64/
# ssh -p 45100 devops@sivaractors.com "sudo chown -R devops:nginx /home/devops/x86_64/"
# update
