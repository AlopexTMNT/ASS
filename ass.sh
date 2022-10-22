#!/bin/sh

# Alopex Setup Script

#
# MAKE A USER BEFORE EXECUTING THIS!!!
#

echo "Welcome to APC!"
echo "The script won't ask you if a yes or no question becuase I can't be bothered to find how to set it up so here is a sudo pop-up for checking for any update so you can Ctrl-C if you don't want to run the script."
sleep 1
sudo pacman -Syyu
sleep 1
sudo pacman -S xorg-server xorg-xinit libx11 libxinerama libxft webkit2gtk ranger vim mpv sxiv gimp zathura zathura-pdf-mupdf ttf-font-awesome firefox htop nitrogen rxvt-unicode texlive-most texlive-lang unclutter xf86-video-intel xclip man-db git alsa-utils alsa-firmware pulseaudio pulseaudio-alsa pavucontrol youtube-dl atomicparsley maim keepassxc xterm
sleep 1
mkdir Mounts
mkdir gits
mkdir Documents
mkdir Music
mkdir Videos
mkdir Pictures
mkdir .scripts
cd gits
git clone https://github.com/AlopexTMNT/dwm && cd dwm && sudo make clean install
cd ~/gits
git clone https://github.com/AlopexTMNT/st && cd st && sudo make clean install
cd ~/gits
git clone https://github.com/AlopexTMNT/config
git clone https://git.suckless.org/slstatus && cd slstatus && cp ~/gits/config/rice/slstaus/.config ~/gits/slstatus && sudo make clean install
cd ~/Pictures
git clone https://gitlab.com/dwt1/wallpapers.git
cd ~/gits
git clone https://aur.archlinux.org/networkmanager-dmenu-git.git && cd networkmanager-dmenu-git && makepkg -si
cd ~/gits
git clone https://git.suckless.org/dmenu && cd dmenu && sudo make clean install
cd ~/
cp ~/gits/config/rice/.bashrc ~/
cp ~/gits/config/rice/.xinitrc ~/
cp ~/gits/config/rice/.scripts/*.* ~/.scripts/
sleep 2
sudo echo "blacklist pcspkr" >/etc/modprobe.d/nobeep.conf
sudo echo "blacklist uvcvideo" >/etc/modprobe.d/novideo.conf
echo "Check if the webcam is blocked!!!!!!!!!!!!!"
echo"Check it after the reboot"
echo "Rebooting in 15 seconds!"
sleep 15
systemctl reboot
