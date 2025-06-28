# Omarchy for Fedora Asahi Remix 42

This is a port of the original [Omarchy](https://github.com/basecamp/omarchy) from Arch Linux to Fedora Asahi Remix 42, optimized for Apple Silicon Macs.

## Prerequisites

- Fresh installation of Fedora Asahi Remix 42
- Internet connection
- sudo privileges

## Installation

1. **Clone this repository:**
   ```bash
   git clone https://github.com/yourusername/omarchy-fedora.git ~/.local/share/omarchy
   ```

2. **Run the installation:**
   ```bash
   source ~/.local/share/omarchy/install.sh
   ```

   Or use the bootstrap script:
   ```bash
   export OMARCHY_REPO=https://github.com/yourusername/omarchy-fedora.git
   bash <(curl -s https://raw.githubusercontent.com/yourusername/omarchy-fedora/main/boot.sh)
   ```

## What Gets Installed

### Package Management
- **DNF**: Fedora's package manager with RPM Fusion repositories
- **Flatpak**: For additional applications from Flathub
- **COPR**: Community repositories for latest packages

### Hyprland Desktop Environment
- **Hyprland**: Wayland compositor
- **Waybar**: Status bar
- **Wofi**: Application launcher  
- **Mako**: Notification daemon
- **Hyprlock/Hypridle**: Screen locking and idle management

### Applications
- **Terminal**: Alacritty
- **Browser**: Chromium
- **File Manager**: Nautilus
- **Editor**: Neovim with LazyVim
- **Media**: VLC, imv (image viewer)
- **Password Manager**: 1Password (Flatpak)
- **Communication**: Signal (Flatpak)

### Development Tools
- **Languages**: Rust, Go, Node.js, Ruby
- **Tools**: GitHub CLI, Lazygit, Lazydocker
- **Runtime Manager**: mise
- **Container**: Docker

### Themes
Six beautiful coordinated themes:
- Catppuccin
- Everforest  
- Gruvbox
- Kanagawa
- Nord
- Tokyo Night

## Key Differences from Arch Version

1. **Package Manager**: Uses `dnf` instead of `pacman`/`yay`
2. **Repositories**: Uses RPM Fusion instead of AUR
3. **Flatpak Integration**: More applications installed via Flatpak
4. **ARM64 Optimized**: Binaries compiled for Apple Silicon
5. **Fedora Services**: Uses systemd services as configured for Fedora

## Usage

- **Switch themes**: `omarchy-theme-next`
- **Update system**: `omarchy-update`
- **Hyprland shortcuts**: See `~/.local/share/omarchy/default/hypr/bindings.conf`

## Troubleshooting

### Missing Packages
Some packages might not be available in Fedora repositories. Check:
1. RPM Fusion repositories are enabled
2. COPR repositories are working
3. Flatpak is properly configured

### Hyprland Issues
If Hyprland doesn't start:
1. Check if running on Wayland session
2. Verify graphics drivers are installed
3. Check Hyprland logs: `journalctl -u hyprland`

### Apple Silicon Specific
- Some binaries are downloaded for ARM64 architecture
- Apple display brightness control via `asdcontrol`
- Optimized for Apple hardware features

## Contributing

This is a community port. Original credit goes to [Basecamp's Omarchy](https://github.com/basecamp/omarchy).

## License

MIT License (same as original Omarchy) 