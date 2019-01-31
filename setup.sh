#!/bin/bash

## Install Java 11 ===================================================
sudo add-apt-repository ppa:linuxuprising/java
sudo apt-get install oracle-java11-installer
java -version # Check Java version


# Micro Editor =======================================================
snap install micro --classic
sudo apt-get install xclip


## Adding PPAs =======================================================
# Google Chrome
# wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -  
# sudo sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list'
# It is better to install Google Chrome by it's deb installer via official website: https://www.google.com/chrome/
# sudo apt-get install google-chrome-stable               # Google Chrome


# Atom Editor ========================================================
# sudo add-apt-repository ppa:webupd8team/atom            # Atom
# It is better to install it's deb installer via it's official website: https://atom.io/


## Atom Plugin ----------------------------------------------
sudo apm install \
remote-ftp color-picker autocomplete-modules autocomplete-webgl fold-functions \
goto-definition highlight-selected markdown-preview-plus open-in-browsers package-list  
# sudo apm install sync-settings


# Android Studio ==========================================================
sudo apt-add-repository ppa:paolorotolo/android-studio  # Android Studio  
sudo apt-get install android-studio  


sudo add-apt-repository ppa:olivier-berten/misc         # MySQL Workbench  
# Via: https://dev.mysql.com/downloads/workbench/

sudo add-apt-repository ppa:vajdics/netbeans-installer  # Netbeans
# Via: https://netbeans.apache.org/download/index.html


# CADDY Webserver ===============================================================
# sudo add-apt-repository ppa:hduran-8/caddy              # CADDY
# sudo apt-get install caddy apache2                      # Install CADDY

# sudo add-apt-repository ppa:webupd8team/sublime-text-2  # Sublime Text 2
# sudo add-apt-repository ppa:webupd8team/sublime-text-3  # Sublime Text 3
# sudo apt-get install sublime-text-installer   # Sublime Text 3


## Update & Install ==================================================
sudo apt-get update  
sudo apt-get install filezilla                          # FTP Access  
sudo apt-get install p7zip-full p7zip-rar unzip         # Compress & Decompress  
sudo apt-get install atom nodejs npm                    # Web development  


sudo apt-get install r-base octave                       # Big data & Math  
sudo apt-get install blender gimp inkscape shutter       # Graphic Design Tools  
sudo apt-get install monodevelop vlc mpv golang netbeans-installer
sudo apt-get install mysql-server mysql-workbench        # MySQL  
sudo apt-get install gnome-raw-thumbnailer ufraw-batch   # Raw File Preview 

# Chinese Language Packages
sudo apt-get install language-pack-zh-hans language-pack-gnome-zh-hans language-pack-zh-hans-base language-pack-gnome-zh-hans-base \  
sudo apt-get install language-pack-zh-hant language-pack-gnome-zh-hant language-pack-zh-hant-base language-pack-gnome-zh-hant-base \  
sudo apt-get install fcitx fcitx-imlist fcitx-table-quick-classic   # Quicl Input Method  



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


## Set US input is the default one
fcitx-imlist -s us

## Disable Apache2 on boot
sudo systemctl disable apache2

## Downloading Go Package
go get github.com/tealeg/xlsx
go get github.com/gorilla/context
go get github.com/gorilla/mux
go get github.com/gorilla/securecookie
go get github.com/gorilla/sessions
go get github.com/gorilla/websocket
