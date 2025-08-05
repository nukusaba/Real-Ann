#!/usr/bin/bash

sass ./src/main.scss build/real-ann.css
echo "✔ Compiled"
cp -r ./src/assets/ build/
sudo cp -r ./build /usr/local/share/urn/themes/real-ann
echo "✔ Installed"
rm -r build/*

