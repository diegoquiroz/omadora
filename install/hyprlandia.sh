# Install Hyprland and related tools
sudo dnf install -y \
  hyprland hyprshot hyprpicker hyprlock hypridle hyprpolkitagent \
  wofi waybar mako swaybg \
  xdg-desktop-portal-hyprland xdg-desktop-portal-gtk

# Install additional Wayland tools
sudo dnf install -y \
  wl-clipboard wlr-randr \
  grim slurp

# Start Hyprland on first session
echo "[[ -z \$DISPLAY && \$(tty) == /dev/tty1 ]] && exec Hyprland" >~/.bash_profile
