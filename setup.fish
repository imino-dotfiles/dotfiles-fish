#!/bin/fish

# export
set pwd (realpath ./)

# symlink
ln -nsf $pwd/fish/fish/* ~/.config/fish/ 
ln -nsf $pwd/fish/source/* ~/.config/fish/
