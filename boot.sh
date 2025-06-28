ascii_art=' ▄██████▄    ▄▄▄▄███▄▄▄▄      ▄████████    ▄████████  ▄████████    ▄█    █▄    ▄██   ▄  
███    ███ ▄██▀▀▀███▀▀▀██▄   ███    ███   ███    ███ ███    ███   ███    ███   ███   ██▄
███    ███ ███   ███   ███   ███    ███   ███    ███ ███    █▀    ███    ███   ███▄▄▄███
███    ███ ███   ███   ███   ███    ███  ▄███▄▄▄▄██▀ ███         ▄███▄▄▄▄███▄▄ ▀▀▀▀▀▀███
███    ███ ███   ███   ███ ▀███████████ ▀▀███▀▀▀▀▀   ███        ▀▀███▀▀▀▀███▀  ▄██   ███
███    ███ ███   ███   ███   ███    ███ ▀███████████ ███    █▄    ███    ███   ███   ███
███    ███ ███   ███   ███   ███    ███   ███    ███ ███    ███   ███    ███   ███   ███
 ▀██████▀   ▀█   ███   █▀    ███    █▀    ███    ███ ████████▀    ███    █▀     ▀█████▀ 
                                          ███    ███                                    '

echo -e "\n$ascii_art\n"
echo -e "Omarchy for Fedora Asahi Remix 42\n"

# Check if git is installed, install if not
if ! command -v git &>/dev/null; then
    echo "Installing git..."
    sudo dnf install -y git
fi

echo -e "\nCloning Omarchy for Fedora..."
rm -rf ~/.local/share/omarchy/

# Clone your fork of this repository
# Replace this URL with your actual repository URL
if [ -n "$OMARCHY_REPO" ]; then
    git clone "$OMARCHY_REPO" ~/.local/share/omarchy >/dev/null
else
    echo "Please set OMARCHY_REPO environment variable to your repository URL"
    echo "Example: export OMARCHY_REPO=https://github.com/yourusername/omarchy-fedora.git"
    exit 1
fi

echo -e "\nInstallation starting..."
source ~/.local/share/omarchy/install.sh
