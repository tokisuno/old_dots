# If you come from bash you might have to change your $PATH.

PATH=$HOME/bin:/usr/local/bin:$PATH

export GLFW_IM_MODULE=ibus
export CC="clang"
export CFLAGS="-ferror-limit=1 -gdwarf-4 -ggdb3 -O0 -std=c11 -Wall -Werror -Wextra -Wno-gnu-folding-constant -Wno-sign-compare -Wno-unused-parameter -Wno-unused-variable -Wno-unused-but-set-variable -Wshadow"
export LDLIBS="-lcrypt -lcs50 -lm"
setopt auto_cd
ZSH_THEME="mh" 
export ZSH="$HOME/.oh-my-zsh"
export PATH="$HOME/.config/emacs/bin:$PATH"
export PATH="$HOME/.local/share/scripts:$PATH"
export EDITOR=/usr/bin/nvim

# export DB_FILE="~/Sync/todo/default.db" 
plugins=(git sudo zsh-autosuggestions zsh-syntax-highlighting)
source $ZSH/oh-my-zsh.sh


mkd ()
{
    mkdir -p -- "$1" &&
       cd -P -- "$1"
}



[ "$TERM" = "xterm-kitty" ] && alias ssh="kitty +kitten ssh"

# User configuration
# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
        export EDITOR='nvim'
    else
        export EDITOR='nvim'
fi

if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"          
fi

if [ -d "$HOME/.deno/bin" ] ; then
    PATH="$HOME/.deno/bin:$PATH"          
fi

# Aliases

alias vim='nvim'
alias nala='apt'
# git aliases
alias ga="git add ."
alias gc="git commit -m 'kekw'"
alias gp="git push"
alias gg="ga && gc && gp"

# nordvpn aliases
alias vpnc="nordvpn connect"
alias vpnd="nordvpn disconnect"

# lazy config vim aliases
alias dvim="vim ~/.vimrc"
alias di3="vim ~/.config/i3/config"
alias dstat="vim ~/.config/i3status/config"
alias dzsh="vim ~/.zshrc"
alias dkit="vim ~/.config/kitty/kitty.conf"
alias so="swallow sioyek " 
alias sz="swallow zathura "
alias vpl='vim ~/.config/nvim/lua/toki/packer.lua/'
alias vrm='vim ~/.config/nvim/lua/toki/remap.lua'
alias dpi='vim ~/.config/picom.conf'

# for my neovim config
alias vc='cd ~/.config/nvim/ && ls'
alias vcc='cd ~/.config/nvim/lua/toki/ && ls'
alias vcp='cd ~/.config/nvim/after/plugin/ && ls'

alias neofetch='hyfetch'

alias back="cd .."

# for blog
alias sdfh="cd ~/Documents/website/blog"
alias comd="hugo server -D"
alias comx="hugo -t xmin"

alias dfm="emacsclient -c -a 'emacs'"

alias lkj='ssh server@192.168.0.203'

alias mpv='swallow mpv --save-position-on-quit'

# for syncthing
alias sdf='cd ~/Sync/'
alias sdfl='cd ~/Sync/hub/ling/'
alias temp='cd ~/Sync/hub/ling/4LC3/termpaper/'
alias tb="cd ~/Sync/hub/tbs/"
alias g1="so ~/Sync/hub/tbs/jp/genki1.pdf"
alias g2="so ~/Sync/hub/tbs/jp/genki2.pdf"


# pomodoro timer: requires tomoshell
alias qwer='tomatoshell -t 50 -d 10 -n 10'

alias dg="git clone https://github.com/tokisuno/dotfiles"
alias config="git --git-dir=$HOME/.dotfiles --work-tree=$HOME"
