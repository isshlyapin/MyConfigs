
source ~/.zsh-abbr/zsh-abbr.zsh

# Handy change dir shortcuts
alias ..='cd ..'
alias ...='cd ../..'

#####################################################
###                МОИ НАСТРОЙКИ                  ###
#####################################################

# Список используемых плагинов
plugins=(zsh-256color zsh-autosuggestions F-Sy-H you-should-use)

alias zshcfg="nvim ~/.zshrc"

# Сокращения для работы с git
alias gp  = "git push"
alias gpf = "git push --force"
alias gba = "git branch --all"
alias gca = "git commit --amend"
alias gst = "git status"
alias gaa = "git add --all"
alias gl  = "git log"
alias glo = "git log --oneline"

# Список abbr
# abbr -g gb    = "git branch"
# abbr -g gco   = "git checkout"
# abbr -g gcl   = "git clone"
# abbr -g ga    = "git add"
# abbr -g gcmsg = "git commit -m"


alias cat  = "bat"
alias df   = "duf"
alias find = "fd"
alias man  = "tldr"
alias top  = "btop"
alias du   = "ncdu"
alias ping = "gping"

alias vi   = "nvim"
alias svi  = "sudo -E nvim"

alias c    = "clear"

alias ls   = "eza -al --color=always --group-directories-first --icons" # preferred listing
alias lt   = "eza -T --color=always --group-directories-first --icons" # tree listing
alias lta  = "eza -aT --color=always --group-directories-first --icons" # all tree listing

alias up    = "$aurhelper -Syu" # update system/package/aur
alias upmir = "rankmirrors -n 5 /etc/pacman.d/mirrorlist.bkp > /etc/pacman.d/mirrorlist"
