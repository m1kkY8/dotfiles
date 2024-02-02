# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="powerlevel10k/powerlevel10k"
#ZSH_THEME="robbyrussell"

plugins=(git zsh-autosuggestions zsh-syntax-highlighting golang rust)

source $ZSH/oh-my-zsh.sh

### PROJECT SPECIFIC ALIAS 

alias run_server='~/projects/c-chat/bin/chat_server'
alias run_client='~/projects/c-chat/bin/chat_client'

alias mile='sudo virsh start archlinux'
alias smile='ssh mile@mile'

###
alias :q='exit'

alias v='nvim'
alias v.='nvim .'
alias top='btop'
alias svim='sudo nvim'
alias purgevim='rm -rf ~/.config/nvim;rm -rf ~/.local/share/nvim'
alias nomnom='sudo killall'

alias dots='cd ~/dotfiles/'

alias zshconf='nvim ~/.zshrc'
alias sex='exec zsh'

alias pacman='sudo pacman --color=auto'
alias yay='yay --color=auto'

alias s='sudo su -'
alias shutdown='shutdown now'

alias c='clear'
alias ll='exa --long --git --icons -lhr -snew'
alias lla='exa --long --git --icons -lahr -snew'
alias gla='lla | grep'
alias cat='bat'
alias nf='neofetch'
alias open='xdg-open'

alias pacs='sudo pacman -S'
alias pacsyu='sudo pacman -Syu'
alias pacrns='sudo pacman -Rns'
alias search='sudo pacman -Ss | grep'
alias sfile='grep -Rnw . -e'
alias sshstart='sudo systemctl start sshd'

alias cpv='rsync -avh --info=progress2'

alias gpp='g++'
alias pyrun='python3'

alias pyserver='python3 -m http.server'

alias usage='du -ch | grep total'
alias sorter='python3 ~/projects/py-sorter/sorter.py'
alias rsorter='~/.local/bin/rust_sorter'
# yt-dlp

alias dlsong='yt-dlp --no-write-description --no-playlist --extract-audio --add-metadata --audio-format mp3'
alias dlalbum='yt-dlp --no-write-description --yes-playlist --extract-audio --add-metadata --audio-format mp3'
alias yt-best='yt-dlp -f bestaudio+bestvideo'

alias cdd='cd $(fd -H . "$HOME" --type d | fzf --info=inline-right --reverse --preview "tree -C {}")'
alias rmm='find | fzf --reverse --multi --cycle --info=inline-right | xargs -I {} rm -rf {}'

function vimf(){
    selected=$(fd -H --type f --type l --exclude=Pictures --exclude=Music \
        | fzf --info=inline-right --reverse --preview \
        "bat --color=always {}" --preview-window=right,65%)

    if [[ -z $selected ]]; then
        return 0;
    else
        nvim $selected
    fi
}

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

