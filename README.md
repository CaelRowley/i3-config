
useful series before ricing: https://www.youtube.com/watch?v=j1I63wGcvU4   

yay AUR helper: https://www.ostechnix.com/yay-found-yet-another-reliable-aur-helper/   

packages: (pacman -S package  / yay -S package)
```
i3-gaps
rofi
i3lock
compton
flashfocus-git
scrot
flameshot
feh
redshift
yay -S compton-tryone-git
pacman -S flameshot
pavucontrol
xorg-xprop
lxappearance
pavucontrol
nautilus 
gotop
```

to init setup: https://wiki.archlinux.org/index.php/Xinit   
~/.xinitrc   
https://wiki.archlinux.org/index.php/x_resources   
~/.Xresources   

gaps: https://gist.github.com/boreycutts/6417980039760d9d9dac0dd2148d4783   

compton: https://www.youtube.com/watch?v=5GpyaSEe0VY   

flashfocus: https://github.com/fennerm/flashfocus   

export PATH=$PATH:$HOME/.local/bin   

gotop: https://github.com/cjbassi/gotop   

unclutter: https://wiki.archlinux.org/index.php/Unclutter     

https://github.com/FortAwesome/Font-Awesome/releases   
.tff files into ~/.fonts   

https://fontawesome.com/cheatsheet?from=io   


network   
https://wiki.archlinux.org/index.php/Netctl   
wifi-menu   

```
if issues
ip link show 
ip link set wlp2s0 down
ip link set wlp2s0 up

systemctl stop dhcpcd.service
systemctl disable dhcpcd.service

systemctl status dhcpcd.service
sudo systemctl is-enabled dhcpcd

netctl status profile
netctl enable profile
netctl reenable profile
```

To see dependants   
pacman -Qi package 

All packages   
pacman -Q   

All AUR packages      
pacman -Qm   
