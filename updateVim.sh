#!/bin/bash

cp ~/.vimrc /Volumes/Ido\'s Hard Drive/Code/Vim/.vimrc
git add .
git commit -m "UPDATED VIM"
git push origin master
echo "VIM UPDATED"
