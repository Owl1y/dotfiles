# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/a/.oh-my-zsh"


# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

path+=('/home/a/.local/bin')

plugins=(git)

source $ZSH/oh-my-zsh.sh

#setting vim as my default text editor
export EDITOR=vim


alias upgrade="sudo pacman -Syu"              # Synchronize with repositories and then upgrade packages that are out of date on the local system.
alias pacman-download="pacman -Sw"            # Download specified package(s) as .tar.xz ball
alias pac="sudo pacman -S"                    # Install specific package(s) from the repositories
alias pacman-install-file="sudo pacman -U"    # Install specific package not from the repositories but from a file 
alias pacr="sudo pacman -R"                   # Remove the specified package(s), retaining its configuration(s) and required dependencies
alias pacman-purge="sudo pacman -Rns"         # Remove the specified package(s), its configuration(s) and unneeded dependencies
alias pacman-repoinfo="pacman -Si"            # Display information about a given package in the repositories
alias pacsearch="pacman -Ss"                  # Search for package(s) in the repositories
alias pacman-dbinfo="pacman -Qi"              # Display information about a given package in the local database
alias pacman-dbsearch="pacman -Qs"            # Search for package(s) in the local database
alias paclist="pacman -Qdt"      # List all packages which are orphaned
alias pacCC="sudo pacman -Scc"                # Clean cache - delete all the package files in the cache
alias pacman-list-package-files="pacman -Ql"  # List all files installed by a given package
alias pacman-provides-="pacman -Qo"           # Show package(s) owning the specified file(s)
alias pacman-force-installed="pacman -D --asexp"   # Mark one or more installed packages as explicitly installed 
alias pacman-force-uninstalled="pacman -D --asdep" # Mark one or more installed packages as non explicitly installed

alias nv="nvim"


alias yt="yt-dlp"
alias ytjson="yt --skip-download --write-info-json"




alias ls="exa --icons --grid --group-directories-first"
alias lsa="exa --icons -a --group-directories-first"
alias lt='exa --tree --icons --level=2'
alias lta='exa --tree --icons'

alias bpt='bpytop'
alias mac='/var/lib/libvirt/images'




#export PATH="home/a/.local/share/lunarvim:$PATH"

eval "$(starship init zsh)"
