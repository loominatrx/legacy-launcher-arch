#!/usr/bin/env bash

[[ "$(whoami)" = "root" ]] && echo "Script must be run as a normal user." && exit

[[ "$(whereis paru)" = "paru:" ]] && echo "paru must be installed to use AUR packages." && exit

# Colors
GREEN="\033[1;32m"
END="\033[0m"

# Downloading packages
pkgs=(
	zulu-21-bin
)
# paru -S "${pkgs[@]}"

# Downloading Legacy Launcher
echo -e "\nDownloading ${GREEN}Legacy Launcher${END}..."

curl https://llaun.ch/repo/downloads/LegacyLauncher_legacy.jar -o src/llaunch.jar

# Moving TLauncher files
echo -e "\nInstalling ${GREEN}Legacy Launcher${END}..."
sudo mkdir -p /usr/share/llaunch
sudo mv src/llaunch.jar /usr/share/llaunch/llaunch.jar

sudo mv src/llaunch /usr/bin/
sudo mv src/llaunch.png /usr/share/icons
sudo mv src/llaunch.desktop /usr/share/applications

echo -e "\n\nInstallation Complete!"
