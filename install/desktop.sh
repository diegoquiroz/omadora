# Install desktop applications and utilities
sudo dnf install -y brightnessctl playerctl pamixer pavucontrol wireplumber
sudo dnf install -y nautilus sushi gnome-calculator chromium vlc evince
sudo dnf install -y fcitx5 fcitx5-gtk fcitx5-qt fcitx5-configtool || true
sudo dnf install -y imv wl-clipboard || true

# Install applications via Flatpak
flatpak install -y flathub com.onepassword.OnePassword org.signal.Signal || true

# Install additional tools
sudo dnf install -y clipse || true
