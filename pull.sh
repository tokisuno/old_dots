#!/bin/bash

# tokisuno scuffed config installation script

cp -t ~/dotfiles ~/.zshrc ~/.vimrc ~/.config/picom.conf\
&& mkdir i3status\
&& cp -t i3status ~/.config/i3status/config\
&& mkdir i3\
&& cp -t i3 ~/.config/i3/config\
&& mkdir kitty\
&& cp -t kitty ~/.config/kitty/kitty.conf\
&& mkdir nvim\
&& cp -r ~/.config/nvim/ .

