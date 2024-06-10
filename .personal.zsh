#zsh
alias personals='nvim ~/.personal.zsh'
alias aliases='nvim ~/.aliases.zsh'

alias updatelinks='stow . --adopt'
alias ispit='touch $(seq -f "%g.c" 1 5)'

#vim
alias nvimrc='cd ~/.config/nvim && nvim'
alias purgevim='rm -rf ~/.config/nvim ~/.local/share/nvim'

alias sorter='python3 ~/projects/py-sorter/sorter.py'

#bot
alias adolfus='node ~/projects/bot/bot.js &'

#tastatura
alias swapcaps='setxkbmap -option "ctrl:swapcaps"'
alias swapesc='setxkbmap -option "caps:swapescape"'
alias restorekbd='setxkbmap -option'
alias xmod='xmodmap ~/.Xmodmap'

#c-chat
alias runs='~/projects/c-chat/bin/chat_server'
alias runc='~/projects/c-chat/bin/chat_client'

#masine
alias linode='ssh mile@linode'
alias mint='sudo virsh start mint'
alias kali='sudo virsh start kali'

alias smint='ssh mile@mint'
alias skali="ssh tox@kali"


alias dlmusic="~/projects/yt-scraper/downloader.sh"

alias saver="~/projects/bash-scripts/saver"
alias vencord="~/projects/bash-scripts/vencord"
alias pdf='zathura'
alias vreme='~/projects/bash-scripts/api | jq ".main"'
alias kys='sudo shutdown now'
alias spot='LD_PRELOAD=/usr/local/lib/spotify-adblock.so spotify &'
alias ip='ip --color'
alias myip='curl ifconfig.me'
alias initproject="git init && npm init -y && echo 'node_modules\npackage-lock.json' > .gitignore"

alias navit="navi --tldr"
alias rec="asciinema rec"
