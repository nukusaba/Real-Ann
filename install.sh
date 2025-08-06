#!/usr/bin/bash

mkdir -p ./build
sass ./src/main.scss ./build/real-ann.css
echo "✔ Compiled"
cp -r ./src/assets/ ./build/
sudo bash -c "rm -rf /usr/local/share/urn/themes/real-ann && cp -r ./build /usr/local/share/urn/themes/real-ann" # avoid running two sudo commands
echo "✔ Installed"
rm -r ./build/*

