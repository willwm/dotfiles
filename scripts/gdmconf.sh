# Enable tap-to-click (https://wiki.archlinux.org/index.php/GDM#Enabling_tap-to-click)
sudo -u gdm dbus-launch gsettings set org.gnome.desktop.peripherals.touchpad tap-to-click true

# Set 12h Clock (https://askubuntu.com/a/1046753)
sudo -u gdm dbus-launch gsettings set org.gnome.desktop.interface clock-format '12h'
