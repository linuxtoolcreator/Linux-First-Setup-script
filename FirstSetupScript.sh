#!/bin/sh

# Ek depolar eklenmesi
apt-add-repository ppa:tista/adapta # Adapta theme repo
add-apt-repository ppa:papirus/papirus # Papirus icon theme repo
add-apt-repository ppa:agornostal/ulauncher # Ulauncher repo
add-apt-repository ppa:wereturtle/ppa # Ghostwriter repo

# Güncel paket listeleri alımı
apt-get update

# .deb dosyaları alımı
wget https://prerelease.keybase.io/keybase_amd64.deb
wget https://atom.io/download/deb/atom-amd64.deb

# Repolar kurulumu
apt-get install adapta-gtk-theme -y
apt-get install papirus-icon-theme -y
apt install gnome-tweak-tool -y
apt-get install ulauncher -y
apt-get install filezilla -y
apt-get install inkscape -y
apt-get install calibre -y
apt-get install torbrowser-launcher -y
apt-get install ghostwriter -y
apt-get install hunspell-en-gb -y # Ghostwriter'a yazım denetimi ekler
apt-get install gimp -y
apt-get install plank -y
# FlatPack kurulumu ve ayarı
apt install flatpak
add-apt-repository ppa:flatpak/stable
apt update
sudo apt install flatpak
apt install gnome-software-plugin-flatpak
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

# snap dosyaları kurulumu
snap install spotify
snap install gitkraken

# .deb dosyaları kurulumu
dpkg -i keybase_amd64.deb
dpkg -i atom-amd64.deb
apt --fix-broken install -y # Fix Minecraft dependency issue.

# .deb Dosyaları temizlenmesi
rm -f keybase_amd64.deb
rm -f atom-amd64.deb

# Ulauncher PW oluşturucu için yükleme gereksinimleri
apt install python3-pip -y
pip3 install pwgen

# Bitiş
echo Uygulamalar Başarılı bir şekilde kuruldu. Ancak bir kere yeniden başlaması gerekmektedir...

# Exit the script
exit 0
