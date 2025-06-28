# Install desktop applications and utilities
sudo dnf install -y \
  brightnessctl playerctl pamixer pavucontrol wireplumber \
  fcitx5 fcitx5-gtk fcitx5-qt fcitx5-configtool \
  nautilus sushi gnome-calculator \
  chromium vlc \
  evince imv

# Install applications via Flatpak
flatpak install -y flathub \
  com.onepassword.OnePassword \
  org.signal.Signal

# Install additional tools that might not be in main repos
sudo dnf install -y \
  wl-clipboard \
  clipse || echo "clipse not available, skipping"
