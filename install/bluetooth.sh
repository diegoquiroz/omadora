# Turn on bluetooth by default
sudo systemctl enable --now bluetooth.service

# Install bluetooth controls
sudo dnf install -y blueberry bluez bluez-tools
