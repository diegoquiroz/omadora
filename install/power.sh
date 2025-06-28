# Setting the performance profile can make a big difference. By default, most systems seem to start in balanced mode,
# even if they're not running off a battery. So let's make sure that's changed to performance.
sudo dnf install -y power-profiles-daemon

# Enable power-profiles-daemon service
sudo systemctl enable --now power-profiles-daemon

if ls /sys/class/power_supply/BAT* &>/dev/null; then
  # This computer runs on a battery
  powerprofilesctl set balanced
else
  # This computer runs on power outlet
  powerprofilesctl set performance
fi
