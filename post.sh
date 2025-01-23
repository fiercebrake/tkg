#/bin/bash

makepkg --needed --noconfirm --syncdeps --cleanbuild --clean --dir /mnt/tkg/ntl
makepkg --needed --noconfirm --syncdeps --cleanbuild --clean --dir /mnt/tkg/nvidia-all
makepkg --needed --noconfirm --syncdeps --cleanbuild --clean --dir /mnt/tkg/wine-tkg-git/wine-tkg-git

mv ../ntl/*.pkg.tar.zst ./
mv ../nvidia-all/*.pkg.tar.zst ./
mv ../wine-tkg-git/wine-tkg-git/*.pkg.tar.zst ./

repo-add -n -v ./themis.db.tar.gz ./*.pkg.tar.zst
# scp -P 45100 ./tekne* ./*.pkg.tar.zst devops@sivaractors.com:x86_64/
# ssh -p 45100 devops@sivaractors.com "sudo chown -R devops:nginx /home/devops/x86_64/"
# update
