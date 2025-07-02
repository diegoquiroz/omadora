# Install Hyprland and related tools
sudo dnf install -y hyprland wofi waybar mako swaybg wl-clipboard

# Try to install additional Hyprland tools (may not all be available)
sudo dnf install -y hyprshot hyprpicker hyprlock hypridle || true

# Install desktop portals
sudo dnf install -y xdg-desktop-portal-hyprland xdg-desktop-portal-gtk || sudo dnf install -y xdg-desktop-portal-wlr

# Install additional Wayland tools
sudo dnf install -y wlr-randr grim slurp || true

# Set up Hyprland autostart
echo "[[ -z \$DISPLAY && \$(tty) == /dev/tty1 ]] && exec Hyprland" >~/.bash_profile
