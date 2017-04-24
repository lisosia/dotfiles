mkdir -p ${HOME}/bin

# tldr (bash)
if ! [ -f ~/bin/tldr ] ;then
    curl -o ~/bin/tldr https://raw.githubusercontent.com/raylee/tldr/master/tldr
    chmod +x ~/bin/tldr
fi
