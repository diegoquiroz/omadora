# Install Go if needed for gum
if ! command -v go &>/dev/null; then
  sudo dnf install -y golang
fi

# Try to install gum, fallback to basic input
if ! command -v gum &>/dev/null; then
  export PATH="$HOME/go/bin:$PATH"
  go install github.com/charmbracelet/gum@latest 2>/dev/null || true
  echo 'export PATH="$HOME/go/bin:$PATH"' >> ~/.bashrc
fi

# Get user input
if command -v gum &>/dev/null; then
  export OMARCHY_USER_NAME=$(gum input --placeholder "Enter full name" --prompt "Name> ")
  export OMARCHY_USER_EMAIL=$(gum input --placeholder "Enter email address" --prompt "Email> ")
else
  read -p "Enter full name: " OMARCHY_USER_NAME
  read -p "Enter email address: " OMARCHY_USER_EMAIL
  export OMARCHY_USER_NAME
  export OMARCHY_USER_EMAIL
fi
