# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH


# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
# source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

#eval $(thefuck --alias)
# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="mh" # set by `omz`

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git sudo zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

[ "$TERM" = "xterm-kitty" ] && alias ssh="kitty +kitten ssh"

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
        export EDITOR='vim'
    else
        export EDITOR='gedit'
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

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
 alias zshconfig="vim ~/.zshrc"
 alias ohmyzsh="vim ~/.oh-my-zsh"

alias vim='nvim'


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

alias zzz="xviewer ~/calm.gif -fwg"

alias g1="so ~/Dropbox/hub/ling/tbs/jp/genki1.pdf"
alias g2="so ~/Dropbox/hub/ling/tbs/jp/genki2.pdf"

alias db="cd ~/Dropbox"

alias wu="wordle random"
alias wd="wordle daily"

alias back="cd .."

alias api="xclip -sel c < ~/Dropbox/api"

alias sdf="hugo server -D"
alias wer="hugo -t xmin"

alias ling="cd ~/Dropbox/hub/ling"
alias tb="cd ~/Dropbox/hub/ling/tbs"

alias lkj='ssh server@192.168.0.203'

alias dg="git clone https://github.com/tokisuno/dotfiles"

alias vc='cd ~/.config/nvim/ && ls'
alias vcc='cd ~/.config/nvim/lua/toki/ && ls'
alias vcp='cd ~/.config/nvim/after/plugin/ && ls'

alias neofetch='hyfetch'

alias config="git --git-dir=$HOME/.dotfiles --work-tree=$HOME"
