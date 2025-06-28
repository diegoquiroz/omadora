if ! command -v ruby &>/dev/null; then
  # Install Ruby build dependencies
  sudo dnf install -y gcc gcc-c++ make openssl-devel readline-devel zlib-devel libffi-devel
  
  # Install Ruby using mise (should already be installed from development.sh)
  if command -v mise &>/dev/null; then
    mise install ruby
    mise use ruby -g
    
    # Trust .ruby-version
    mise settings add idiomatic_version_file_enable_tools ruby
  else
    echo "mise not found, installing Ruby via dnf"
    sudo dnf install -y ruby ruby-devel
  fi
fi
