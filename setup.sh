#!/bin/bash

## Adding PPAs =======================================================
# Google Chrome
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -  
sudo sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list'

sudo add-apt-repository ppa:webupd8team/java            # Java  
sudo add-apt-repository ppa:webupd8team/atom            # Atom  
sudo apt-add-repository ppa:paolorotolo/android-studio  # Android Studio  
sudo add-apt-repository ppa:olivier-berten/misc         # MySQL Workbench  
sudo add-apt-repository ppa:vajdics/netbeans-installer  # Netbeans  
sudo add-apt-repository ppa:hduran-8/caddy              # CADDY


## Update & Install ==================================================
sudo apt-get update  
sudo apt-get install oracle-java8-installer             # Java 8  
sudo apt-get install filezilla                          # FTP Access  
sudo apt-get install p7zip-full p7zip-rar unzip         # Compress & Decompress  
sudo apt-get install atom nodejs npm                    # Web development  
sudo apt-get install google-chrome-stable               # Google Chrome
sudo apt-get install android-studio  
sudo apt-get install r-base octave                       # Big data & Math  
sudo apt-get install blender gimp inkscape shutter       # Graphic Design Tools  
sudo apt-get install monodevelop vlc golang netbeans-installer
sudo apt-get install mysql-server mysql-workbench        # MySQL  
sudo apt-get install gnome-raw-thumbnailer ufraw-batch   # Raw File Preview  
# Chinese Language Packages
sudo apt-get install language-pack-zh-hans language-pack-gnome-zh-hans language-pack-zh-hans-base language-pack-gnome-zh-hans-base \  
sudo apt-get install language-pack-zh-hant language-pack-gnome-zh-hant language-pack-zh-hant-base language-pack-gnome-zh-hant-base \  
sudo apt-get install fcitx fcitx-imlist fcitx-table-quick-classic   # Quicl Input Method  
sudo apt-get install caddy apache2            # Server
sudo apt-get install darktable rawtherapee    # Photo Editing



## Configuration ===================================================
## Configure Node
sudo ln -s /usr/bin/nodejs /usr/bin/node

## Install Node NPM Checker
sudo npm install -g check-node-version

## Update Node & NPM
sudo npm cache clean -f  
sudo npm install -g n  
sudo n stable

## NPM Packages
sudo npm install -g react react-dom webpack webpack-dev-server

## Atom Plugin
sudo apm install remote-ftp  
sudo apm install color-picker  
sudo apm install autocomplete-modules  
sudo apm install autocomplete-webgl  
sudo apm install fold-functions  
sudo apm install goto-definition  
sudo apm install highlight-selected  
sudo apm install markdown-preview-plus  
sudo apm install open-in-browsers  
sudo apm install package-list  
sudo apm install sync-settings

## Set US input is the default one
fcitx-imlist -s us

## Disable Apache2 on boot
sudo systemctl disable apache2
