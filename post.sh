#/bin/bash

sudo -u repo makepkg --needed --noconfirm --syncdeps --cleanbuild --clean --force --dir /mnt/tkg/ntl
sudo -u repo makepkg --needed --noconfirm --syncdeps --cleanbuild --clean --force --dir /mnt/tkg/amd
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
sudo -u repo makepkg --needed --noconfirm --syncdeps --cleanbuild --clean --force --dir /mnt/tkg/schedtoold-git
sudo -u repo makepkg --needed --noconfirm --syncdeps --cleanbuild --clean --force --dir /mnt/tkg/zoom
sudo -u repo makepkg --needed --noconfirm --syncdeps --cleanbuild --clean --force --dir /mnt/tkg/ventoy-bin
sudo -u repo makepkg --needed --noconfirm --syncdeps --cleanbuild --clean --force --dir /mnt/tkg/visual-studio-code-bin
sudo -u repo makepkg --needed --noconfirm --syncdeps --cleanbuild --clean --force --dir /mnt/tkg/proton-ge-custom-bin
sudo -u repo makepkg --needed --noconfirm --syncdeps --cleanbuild --clean --force --dir /mnt/tkg/teams-for-linux-bin
sudo -u repo makepkg --needed --noconfirm --syncdeps --cleanbuild --clean --force --dir /mnt/tkg/sound-theme-smooth
sudo -u repo makepkg --needed --noconfirm --syncdeps --cleanbuild --clean --force --dir /mnt/tkg/networkmanager-ssh
# sudo -u repo makepkg --needed --noconfirm --syncdeps --cleanbuild --clean --dir /mnt/tkg/nvidia-all
# sudo -u repo makepkg --needed --noconfirm --syncdeps --cleanbuild --clean --dir /mnt/tkg/wine-tkg-git/wine-tkg-git

mv /mnt/tkg/ntl/*.pkg.tar.zst /mnt/tkg/repo
mv /mnt/tkg/amd/*.pkg.tar.zst /mnt/tkg/repo
mv /mnt/tkg/onedrive-abraunegg/*.pkg.tar.zst /mnt/tkg/repo
mv /mnt/tkg/google-chrome/*.pkg.tar.zst /mnt/tkg/repo
mv /mnt/tkg/microsoft-edge-stable-bin/*.pkg.tar.zst /mnt/tkg/repo
mv /mnt/tkg/blesh-git/*.pkg.tar.zst /mnt/tkg/repo
mv /mnt/tkg/ocs-url/*.pkg.tar.zst /mnt/tkg/repo
mv /mnt/tkg/aic94xx-firmware/*.pkg.tar.zst /mnt/tkg/repo
mv /mnt/tkg/ast-firmware/*.pkg.tar.zst /mnt/tkg/repo
mv /mnt/tkg/wd719x-firmware/*.pkg.tar.zst /mnt/tkg/repo
mv /mnt/tkg/upd72020x-fw/*.pkg.tar.zst /mnt/tkg/repo
mv /mnt/tkg/laptop-mode-tools-git/*.pkg.tar.zst /mnt/tkg/repo
mv /mnt/tkg/schedtoold-git/*.pkg.tar.zst /mnt/tkg/repo
mv /mnt/tkg/zoom/*.pkg.tar.zst /mnt/tkg/repo
mv /mnt/tkg/ventoy-bin/*.pkg.tar.zst /mnt/tkg/repo
mv /mnt/tkg/visual-studio-code-bin/*.pkg.tar.zst /mnt/tkg/repo
mv /mnt/tkg/proton-ge-custom-bin/*.pkg.tar.zst /mnt/tkg/repo
mv /mnt/tkg/teams-for-linux-bin/*.pkg.tar.zst /mnt/tkg/repo
mv /mnt/tkg/sound-theme-smooth/*.pkg.tar.zst /mnt/tkg/repo
mv /mnt/tkg/networkmanager-ssh/*.pkg.tar.zst /mnt/tkg/repo
mv /mnt/tkg/nvidia-all/*.pkg.tar.zst /mnt/tkg/repo
mv /mnt/tkg/wine-tkg-git/wine-tkg-git/*.pkg.tar.zst /mnt/tkg/repo

rm -rf /mnt/tkg/repo/themis*
repo-add -n -v /mnt/tkg/repo/themis.db.tar.gz /mnt/tkg/repo/*.pkg.tar.zst
# scp -P 45100 ./tekne* ./*.pkg.tar.zst devops@sivaractors.com:x86_64/
# ssh -p 45100 devops@sivaractors.com "sudo chown -R devops:nginx /home/devops/x86_64/"
# update
