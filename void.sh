#!/bin/bash
set -e

sudo xbps-install -Sy xbps

sudo xbps-install -u

sudo xbps-install -Sy void-repo-nonfree void-repo-multilib void-repo-multilib-nonfree

sudo xbps-install -Sy

sudo xbps-install -Sy mesa-dri

sudo xbps-install -Sy dbus NetworkManager pipewire wireplumber elogind polkit polkit-gnome bluez alsa-plugins-pulseaudio alsa-utils

sudo xbps-install -Sy tlp tlp-rdw thermald

sudo xbps-install -Sy linux-firmware intel-ucode intel-media-driver mesa-vulkan-intel font-firacode noto-fonts-ttf noto-fonts-cjk noto-fonts-emoji ffmpeg nerd-fonts-symbols-ttf

sudo xbps-install -Sy sddm grim Thunar swww brightnessctl

sudo xbps-install -Sy mangowc fastfetch nano firefox Waybar rofi foot

sudo ln -sf /etc/sv/dbus /var/service/
sudo ln -sf /etc/sv/elogind /var/service/
sudo ln -sf /etc/sv/NetworkManager /var/service/
sudo ln -sf /etc/sv/bluetoothd /var/service/
sudo ln -sf /etc/sv/tlp /var/service/
sudo ln -sf /etc/sv/thermald /var/service/
sudo ln -sf /etc/sv/sddm /var/service/
sudo rm -f /var/service/dhcpcd
sudo rm -f /var/service/wpa_supplicant

sudo usermod -aG video,audio,input,storage,network $USER

sudo reboot
