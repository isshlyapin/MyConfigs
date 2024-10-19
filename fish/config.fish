set -g fish_greeting

if status is-interactive
    starship init fish | source
end

# List Directory
alias ls='eza -al --color=always --group-directories-first --icons'
alias lt='eza -T --color=always --group-directories-first --icons'
alias lta='eza -aT --color=always --group-directories-first --icons'

alias vi='nvim'
alias svi='sudo -E nvim'

alias c='clear'
alias up='yay -Syu'

alias conan_debug='conan install . --output-folder=build --build=missing -pr:b=debug -pr:h=debug'
alias conan_release='conan install . --output-folder=build --build=missing -pr:b=release -pr:h=release'

alias cmake_debug='cmake --preset conan-debug'
alias cmake_release='cmake --preset conan-release'

alias cmake_build_debug='cmake --build --preset conan-debug --clean-first -j4'
alias cmake_build_release='cmake --build --preset conan-release --clean-first -j4'

# Handy change dir shortcuts
abbr ..  'cd ..'
abbr ... 'cd ../..'

abbr g   'git'
abbr gst 'git status'
abbr gaa 'git add -A'
abbr gcm 'git commit -m'
abbr gca 'git commit --amend'

abbr gp  'git push'
abbr gpf 'git push --force'

abbr gcl 'git clone'

abbr gco 'git checkout'

abbr gb  'git branch'
abbr gba 'git branch -a'

abbr gl  'git log'
abbr glo 'git log --oneline'

#abbr cat  'bat'
#abbr df   'duf'
#abbr find 'fd'
#abbr man  'tldr'
#abbr top  'btop'
#abbr du   'ncdu'
#abbr ping 'gping'


# Always mkdir a path (this doesn't inhibit functionality to make a single dir)
# abbr mkdir 'mkdir -p'

# Fixes "Error opening terminal: xterm-kitty" when using the default kitty term to open some programs through ssh
# alias ssh='kitten ssh'
