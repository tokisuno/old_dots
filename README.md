# dotfiles - my entire config
*my apps aptclone is probs outdated. there are also programs i use that i compiled by source. i.e. ibus. i am planning on learning arch over the summer*
### Config Files
- .zshrc (~/)
- neovim config (.config/nvim)
- i3 config (.config/i3/config)
- i3blocks config (.config/i3blocks/config)
- kitty (.config/kitty/kitty.conf)
- autostart for setting sensitivity on desktop/laptop (x220 and desktop)

![image](https://github.com/tokisuno/dotfiles/assets/85533116/17a0e331-bdb0-48f9-b746-780f934a6644)


```
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```
```
git clone https://github.com/NLKNguyen/paper color-theme.git ~/.vim/pack/colors/start/papercolor-theme
```
```
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

*some files in here will be left here for legacy, so if anyone still wants to use my .vimrc or i3status, feel free. they won't be updated again, and it's more worth it to just learn how to customize them yourself tbh.*
