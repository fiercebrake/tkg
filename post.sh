#/bin/bash


declare -a arr_packages=('onedrive-abraunegg' 'google-chrome' 'microsoft-edge-stable-bin' 'blesh-git' 'ocs-url' 'aic94xx-firmware' \
                         'ast-firmware' 'wd719x-firmware' 'upd72020x-fw' 'laptop-mode-tools-git' 'schedtoold' 'zoom' 'ventoy-bin' \
                         'visual-studio-code-bin' 'proton-ge-custom-bin' 'teams-for-linux-bin' 'sound-theme-smooth' \
                         'networkmanager-ssh' 'bitwarden-bin' 'pikaur' 'yubico-authenticator-bin' 'bibata-cursor-theme-bin' \
                         'flat-remix' 'kora-icon-theme' 'httpfs2-2gbplus' 'ttf-ms-win10-auto' 'libwireplumber-4.0-compat' 'pwvucontrol' \
			 'heroic-games-launcher' 'crossover' 'linux-tkg' 'nvidia-all' 'wine-tkg-git')

declare -a arr_config=('ntl' 'nvd' 'wne')


sudo -u repo mkdir /mnt/tkg/repo


function del_folder() {
  sudo rm -rf /mnt/tkg/$1
}


function get_folder() {
  if [[ $1 == 'linux-tkg' ]] || [[ $1 == 'nvidia-all' ]] || [[ $1 == 'wine-tkg-git' ]]; then
    domain='github.com/Frogging-Family'
  else
    domain='aur.archlinux.org'
  fi
  sudo -u repo git clone https://$domain/$1.git /mnt/tkg/$1
}


function get_package() {
  folder=$1
  
  if [[ $1 == 'linux-tkg' ]] || [[ $1 == 'nvidia-all' ]]; then
      cp ./customization-$1.cfg ./$1/customization.cfg
  fi
  
  if [[ $1 == 'wine-tkg-git' ]]; then
      folder=$1/$1
      cp ./customization-$1.cfg ./$1/$1/customization.cfg
  fi

  sudo -u repo makepkg --needed --noconfirm --syncdeps --cleanbuild --clean --skippgpcheck --force --dir /mnt/tkg/$folder
  
  if [[ $1 == 'httpfs2-2gbplus' ]] || [[ $1 == 'libwireplumber-4.0-compat' ]] || [[ $1 == 'linux-tkg' ]]; then
    sudo pacman --needed --noconfirm -U /mnt/tkg/$1/*.pkg.tar.zst
  fi

  mv -f /mnt/tkg/$folder/*.pkg.tar.zst /mnt/tkg/repo
}


function post_repo() {
  rm -rf /mnt/tkg/repo/themis*
  repo-add -n -v /mnt/tkg/repo/themis.db.tar.gz /mnt/tkg/repo/*.pkg.tar.zst
}

for package in "${arr_packages[@]}";
do
  del_folder $package

  get_folder $package

  get_package $package
done

post_repo
