#!/bin/bash

cd ~
git clone https://github.com/lisosia/dotfiles.git
echo "download done"
cd dotfiles

for f in .??*
do
    [[ "$f" == ".git" ]] && continue
    [[ "$f" == ".DS_Store" ]] && continue

    echo "$f"
    ln -snfv "$f" "$HOME"/"$f"
done
