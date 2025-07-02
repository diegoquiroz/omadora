# Install development tools and enable additional repositories for Fedora
sudo dnf groupinstall -y "Development Tools" "C Development Tools and Libraries"

# Enable RPM Fusion repositories for additional packages
sudo dnf install -y \
  https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm \
  https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

# Enable Flathub for additional applications
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo

# Enable Hyprland COPR repository
sudo dnf copr enable -y solopasha/hyprland
