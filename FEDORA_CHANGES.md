# Changes Made for Fedora Asahi Remix 42 Port

This document summarizes all the changes made to port Omarchy from Arch Linux to Fedora Asahi Remix 42.

## Package Manager Changes

### From Arch (`pacman`/`yay`) to Fedora (`dnf`/`flatpak`)

| Arch Package | Fedora Equivalent | Installation Method |
|--------------|-------------------|-------------------|
| `yay` (AUR helper) | RPM Fusion + COPR | `dnf` repositories |
| `base-devel` | `Development Tools` | `dnf groupinstall` |
| `ttf-font-awesome` | `fontawesome-fonts` | `dnf install` |
| `noto-fonts*` | `google-noto-*` | `dnf install` |
| `kvantum-qt5` | `kvantum` | `dnf install` |
| `1password-beta` | `com.onepassword.OnePassword` | Flatpak |
| `signal-desktop` | `org.signal.Signal` | Flatpak |
| `spotify` | `com.spotify.Client` | Flatpak |
| `obsidian` | `md.obsidian.Obsidian` | Flatpak |

## Repository Setup

### Arch Linux
- AUR via `yay`

### Fedora Asahi Remix 42
- **RPM Fusion**: Free and non-free repositories
- **Flathub**: Flatpak applications
- **COPR**: `solopasha/hyprland` for latest Hyprland packages

## Architecture-Specific Changes

### ARM64 Binary Downloads
- **lazygit**: Download ARM64 binary from GitHub releases
- **lazydocker**: Download ARM64 binary from GitHub releases
- **mise**: Install via curl script (multi-arch)
- **gum**: Install via Go (compiled locally)

## Service Management

### Systemd Services
All systemd commands remain the same:
- `systemctl enable --now bluetooth.service`
- `systemctl enable --now docker`
- `systemctl enable --now cups.service`
- `systemctl enable --now power-profiles-daemon`

## File Structure Changes

### New Files
- `FEDORA_INSTALL.md` - Fedora-specific installation guide
- `FEDORA_CHANGES.md` - This change summary

### Modified Files
- `README.md` - Updated for Fedora
- `boot.sh` - Uses `dnf` instead of `pacman`, environment variable for repo
- All `install/*.sh` scripts - Converted package managers
- `install.sh` - Updated updatedb path

### Renamed Files
- `install/1-yay.sh` → `install/1-repositories.sh` - Better reflects Fedora setup

## Installation Script Changes

### 1-yay.sh → 1-repositories.sh (renamed)
- Install Development Tools group
- Enable RPM Fusion repositories
- Enable Flathub
- Enable Hyprland COPR

### Package Installation Scripts
- **hyprlandia.sh**: Added `wl-clipboard`, `grim`, `slurp`
- **desktop.sh**: Split between `dnf` and Flatpak installs
- **development.sh**: Added `golang`, manual binary installs
- **fonts.sh**: Updated package names, kept manual installs
- **docker.sh**: Official Docker repository setup
- **nvim.sh**: Added `nodejs npm`, install tree-sitter via npm
- **terminal.sh**: Updated package names (`inetutils` → `bind-utils`, etc.)
- **theme.sh**: Updated Qt package name
- **xtras.sh**: Moved most apps to Flatpak

## Special Handling

### Tools Not in Repositories
- **gum**: Install via Go
- **mise**: Install via curl script  
- **lazygit/lazydocker**: Download ARM64 binaries
- **Nerd Fonts**: Manual download (same as original)

### Apple Silicon Optimizations
- **asdcontrol**: Kept for Apple display brightness control
- **ARM64 binaries**: Specific downloads for Apple Silicon
- **Asahi-specific**: No special changes needed, standard Fedora packages work

## Testing Recommendations

1. **Virtual Machine**: Test on Fedora 42 VM first
2. **Real Hardware**: Test on actual Apple Silicon Mac with Asahi
3. **Package Availability**: Verify all packages are available in configured repositories
4. **Flatpak Apps**: Ensure Flatpak applications launch correctly
5. **Hyprland**: Verify Hyprland starts and all features work
6. **Theme Switching**: Test theme switching functionality
7. **Development Tools**: Verify all dev tools install and work correctly

## Known Issues

1. **Package Availability**: Some packages might not be available in Fedora 42 yet
2. **COPR Stability**: Third-party COPR repositories might be unstable
3. **Flatpak Permissions**: Some Flatpak apps might need additional permissions
4. **ARM64 Binaries**: Some tools might not have ARM64 releases yet

## Future Improvements

1. **Package Verification**: Add checks for package availability before installation
2. **Fallback Options**: Provide alternatives for unavailable packages
3. **Error Handling**: Better error handling for failed installations
4. **Update Script**: Adapt update script for Fedora package management
5. **Asahi Optimizations**: Add Asahi-specific optimizations 