#!/bin/bash

DOT_TARGET=".dotfiles"

cd $HOME
git clone https://github.com/lisosia/dotfiles.git ${DOT_TARGET}
echo "download done"

cd ${DOT_TARGET}
for f in .??*
do
    [[ "$f" == ".git" ]] && continue
    [[ "$f" == ".DS_Store" ]] && continue

    echo "$f"
    ln -sfv ${HOME}/${DOT_TARGET}/${f} ${HOME}/${f}
done
