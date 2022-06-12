# dotfiles - my entire config

## Dependencies
(i use mint btw)

```
sudo apt install i3 vim git picom ibus-hangul scrot xclip nitrogen rofi fonts-nanum fonts-nanum-coding fonts-nanum-eco fonts-nanum-extra texlive-latex-base texlive-fonts-recommended texlive-fonts-extra texlive-latex-extra texlive-lang-korean zsh libpam0g-dev libxcb-xkb-dev
```

## Config Files
- .vimrc
- .zshrc
- i3 config (.config/i3/config)
- i3status config (.config/i3status/config)

## Programs I use on Mint
```
git clone https://github.com/NLKNguyen/paper color-theme.git ~/.vim/pack/colors/start/papercolor-theme
```
```
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

```
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
```
```
https://apps.ankiweb.net/
```

```
- sudo add-apt-repository -y ppa:regolith-linux/stable && sudo apt install i3-gaps
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
