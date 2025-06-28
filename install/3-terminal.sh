# Install terminal applications and utilities
sudo dnf install -y \
  wget curl unzip bind-utils \
  eza fzf ripgrep zoxide bat \
  wl-clipboard fastfetch btop \
  man-db tldr less whois mlocate \
  alacritty

# Update locate database
sudo updatedb
