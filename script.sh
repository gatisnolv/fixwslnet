# Fix for Windows resetting WSL2's network adapters upon restart/ VPN connection.
# Based on: https://stackoverflow.com/a/67756837
# Usage:
sudo rm /etc/resolv.conf
sudo bash -c "echo -e nameserver 1.1.1.1 >> /etc/resolv.conf"
sudo bash -c "echo -e nameserver 1.0.0.1 >> /etc/resolv.conf"
sudo chattr +i /etc/resolv.conf
