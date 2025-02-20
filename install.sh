#!/usr/bin/bash
echo "This will require Sudo access and will add lots of images to a root directory, read the script before proceeding"
read -p "Proceed? [y/n] " confirmation
if [[ "$confirmation" == [Yy] ]]; then
  echo "Continuing....."
  sleep 0.5
else
  echo "Aborted."
  exit 1
fi

if [ "$1" == "--uninstall" ]; then
  echo -e "\e[1m\e[31mThis will delete the directory: /usr/local/share/urn/themes/real-ann\e[0m"
  sudo -k rm -r /usr/local/share/urn/themes/real-ann
  echo ""
  echo "Select which theme to apply to urn (none to exit)"
  ls /usr/local/share/urn/themes | while IFS= read -r line; do echo -e "\033[1;34m$line\033[0m"; done
  read -p "Selection: " selection
  gsettings set wildmouse.urn theme $selection
  exit 0
fi

echo "Installing....."
sudo -k cp -r real-ann /usr/local/share/urn/themes/ && sudo mkdir /usr/local/share/urn/themes/real-ann/assets
echo "Theme installed!"
sleep 0.5
echo "Installing Images....."
sudo -k cp -r smpj sm64 pwaa lemmings /usr/local/share/urn/themes/real-ann/assets/
echo "Install successful!"
sleep 0.5
gsettings set wildmouse.urn theme real-ann
echo "Theme set!"

