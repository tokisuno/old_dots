# dotfiles - my entire config

## Dependencies
(i use mint btw)
*there are most likely other dependencies for these programs that i can't list rn but they def exist.*
```
sudo apt install i3 vim git picom ibus-hangul scrot xclip nitrogen rofi fonts-nanum fonts-nanum-coding fonts-nanum-eco fonts-nanum-extra texlive-full texlive-fonts-recommended texlive-fonts-extra texlive-latex-extra texlive-lang-korean zsh libpam0g-dev libxcb-xkb-dev ibus-anthy 
```


## Config Files
- .vimrc
- .zshrc
- i3 config (.config/i3/config)
- i3status config (.config/i3status/config)
- autostart for setting sensitivity on desktop/laptop (x220 and desktop)

## Programs I use on Mint
**NOTE: FIX THE COLOUR THEME SHIT**
```
git clone https://github.com/NLKNguyen/paper color-theme.git ~/.vim/pack/colors/start/papercolor-theme
```
```
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```
```
sioyek.info (portable appimage in /bin kekw)
```

```
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
```
```
https://apps.ankiweb.net/
```
*i think this isn't needed anymore on new versions of mint since gaps merged with the main i3 repo iirc*
```
sudo add-apt-repository -y ppa:regolith-linux/stable && sudo apt install i3-gaps
```

## IMPORTANT FOR WHEN USING SLIPPI ON LINUX

1 - Type the following into your terminal
```
sudo rm -f /etc/udev/rules.d/51-gcadapter.rules && sudo touch /etc/udev/rules.d/51-gcadapter.rules && echo 'SUBSYSTEM=="usb", ENV{DEVTYPE}=="usb_device", ATTRS{idVendor}=="057e", ATTRS{idProduct}=="0337", MODE="0666"' | sudo tee /etc/udev/rules.d/51-gcadapter.rules > /dev/null && sudo udevadm control --reload-rules
```

2 - It should work from here. If not, run this

```
sudo systemctl restart udev.service && sudo systemctl restart systemd-udevd.service
```
