#zmodload zsh/zprof   
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.cache/zsh/history
setopt HIST_IGNORE_SPACE

autoload -U colors && colors
autoload -U compinit
zstyle ":completion:*" menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)  # include hidden files.

alias start="Hyprland"
alias ls="ls --color=auto"
alias l="ls --group-directories-first -la --ignore=.."
alias du="du -shc"
alias vim="nvim"
alias dotfiles="/usr/bin/git --git-dir=$HOME/.local/share/dotfiles/ --work-tree=$HOME"
alias s="tmux_sessionizer.sh"
alias ff="fastfetch"
alias counter="counter.sh"
alias update="sudo pacman -Syy && yay && flatpak update"

source ~/.config/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.config/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.config/zsh/plugins/powerlevel10k/powerlevel10k.zsh-theme
# To customize prompt, run `p10k configure` or edit ~/.config/zsh/.p10k.zsh.
[[ ! -f ~/.config/zsh/.p10k.zsh ]] || source ~/.config/zsh/.p10k.zsh

# NVM
# Slows start-up time significantly
# Uncomment only if you need to install other node versions
# export NVM_DIR=~/.local/share/nvm
# [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"

# Use node without nvm
source $HOME/.local/bin/node.sh

#zprof
