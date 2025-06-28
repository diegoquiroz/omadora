# Install additional applications via dnf and flatpak
sudo dnf install -y \
  libreoffice \
  pinta xournalpp

# Install applications via Flatpak
flatpak install -y flathub \
  com.discordapp.Discord \
  com.spotify.Client \
  com.dropbox.Client \
  us.zoom.Zoom \
  md.obsidian.Obsidian \
  io.typora.Typora \
  com.obsproject.Studio \
  org.kde.kdenlive

# Copy over Omarchy applications
source ~/.local/share/omarchy/bin/omarchy-sync-applications
