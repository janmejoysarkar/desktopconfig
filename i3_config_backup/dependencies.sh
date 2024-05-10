#!/bin/bash

#system
pacman -S pipewire networkmanager

#essential
pacman -S network-manager-applet firefox picom power-profiles-daemon dunst xorg-xrandr alacritty

#Not essential
pacman -S xdotool rofi nitrogen imagemagick xss-lock i3lock man-db man-pages

#fonts
pacman -S noto-fonts noto-fonts-cjk noto-fonts-emoji noto-fonts-extra ttf-hack
