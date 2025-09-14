#/bin/bash

declare -a arr_packages=('onedrive-abraunegg' 'google-chrome' 'microsoft-edge-stable-bin' 'blesh-git' 'ocs-url' 'aic94xx-firmware' \
	                       'ast-firmware' 'wd719x-firmware' 'upd72020x-fw' 'laptop-mode-tools-git' 'schedtoold' 'zoom' 'ventoy-bin' \
			                   'visual-studio-code-bin' 'proton-ge-custom-bin' 'teams-for-linux-bin' 'sound-theme-smooth' 'networkmanager-ssh' \
			                   'bitwarden-bin' 'amd' 'ntl' 'wine-tkg-git' 'nvidia-all')

for package in "${arr_packages[@]}";
do
  sudo -u repo makepkg --needed --noconfirm --syncdeps --cleanbuild --clean --force --dir /mnt/tkg/"$package"
done

mv --force /mnt/tkg/*/*.pkg.tar.zst /mnt/tkg/repo

rm -rf /mnt/tkg/repo/themis*
repo-add -n -v /mnt/tkg/repo/themis.db.tar.gz /mnt/tkg/repo/*.pkg.tar.zst
# scp -P 45100 ./tekne* ./*.pkg.tar.zst devops@sivaractors.com:x86_64/
# ssh -p 45100 devops@sivaractors.com "sudo chown -R devops:nginx /home/devops/x86_64/"
# update
