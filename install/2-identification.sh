# Need gum to query for input
# Install gum via go (not available in Fedora repos)
if ! command -v gum &>/dev/null; then
  go install github.com/charmbracelet/gum@latest
  # Add go bin to PATH if not already there
  if [[ ":$PATH:" != *":$HOME/go/bin:"* ]]; then
    export PATH="$HOME/go/bin:$PATH"
    echo 'export PATH="$HOME/go/bin:$PATH"' >> ~/.bashrc
  fi
fi

# Configure identification
echo -e "\nEnter identification for git and autocomplete..."
export OMARCHY_USER_NAME=$(gum input --placeholder "Enter full name" --prompt "Name> ")
export OMARCHY_USER_EMAIL=$(gum input --placeholder "Enter email address" --prompt "Email> ")
