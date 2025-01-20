# Real Ann
A theme for the [Urn speedrun spliter](https://github.com/paoloose/urn) that uses images for split backgrounds based on the splits name.

---
# Current progress
Currently `Real Ann` supports very little, and is more of a demo concept. 
However i plan on getting some of the popular speedrun games in there, and some not so popular ones too.

## What it supports
- Most SM64 level shortenings without star count in split name.
- SM64 70 star with star count in split name with one specific route.

## What is planed to be supported
- Every SM64 Run with various amounts of stars in split's names.
- Every Level in the game "Lemmings" with level names as split names.
- Some one-off things for games i personaly enjoy running or watching.

## What is not planed to be supported 
- SM64 single star splits.

## Behaviour if no image is included for the split name
If the split name doesnt have a image assigned to it, it will default to a rounded grey background.

---
# Installation
1. Download the `urn-gtk.css` file and put it in Urn's root directory. (be sure to back up the old `urn-gtk.css` file)
2. Recompile Urn
``` bash
make && sudo make install
```

**Note:** Images are pulled as raw links from this Git repo over internet. Manual download of the images is not needed. This Also means that a internet connection is required for this theme to work, the reason this is done is because a local version of this theme would not be easy to achive due to the need for absolute links, and i do not want people to install this in root.
