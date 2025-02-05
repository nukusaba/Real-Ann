#!/usr/bin/bash
echo "This will require Sudo access, read the script before proceeding"
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

sudo -k cp -r real-ann /usr/local/share/urn/themes/
echo "Install successful"
gsettings set wildmouse.urn theme real-ann
echo "Theme set"
exit 0

