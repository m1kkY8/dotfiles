alias :q='exit'

alias v='nvim'
alias v.='nvim .'
alias top='btop'
alias svim='sudo nvim'
alias nomnom='sudo killall'

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
alias cat='bat -pp'
alias nf='neofetch'

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

# yt-dlp

alias dlsong='yt-dlp --no-write-description --no-playlist --extract-audio --add-metadata --audio-format mp3'
alias dlalbum='yt-dlp --no-write-description --yes-playlist --extract-audio --add-metadata --audio-format mp3'
alias yt-best='yt-dlp -f bestaudio+bestvideo'

alias cdd='cd $(fd -H . "$HOME" --type d | fzf --info=inline-right --reverse --preview "tree -C {}")'
alias rmm='find | fzf --reverse --multi --cycle --info=inline-right | xargs -I {} rm -rf {}'

function vimf(){
    selected=$(fd -H --type f --type l --exclude=Pictures --exclude=Music \
        | fzf --info=inline-right --reverse --preview \
        "bat -pp --color=always {}" --preview-window=right,65%)

    if [[ -z $selected ]]; then
        return 0;
    else
        nvim $selected
    fi
}
