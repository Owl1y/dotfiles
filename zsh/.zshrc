# If you come from bash you might have to change your $PATH.
 export PATH=$HOME/bin:/usr/local/bin:$PATH
 export HISTFILE=~/.zsh_history

# Path to your oh-my-zsh installation.
 export ZSH="/home/aj/.oh-my-zsh"
 export MANPAGER='lvim +Man!'
 export __NV_PRIME_RENDER_OFFLOAD=1
 export __GLX_VENDOR_LIBRARY_NAME=nvidia

# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
# ZSH_THEME="robbyrussell"


path+=('/home/aj/.local/bin')
path+=('/home/aj/go/bin')
path+=('/home/aj/scripts')

plugins=(git)

# source $ZSH/oh-my-zsh.sh
# source "$HOME/.config/zsh/zsh-functions"
autoload -U compinit; compinit
#setting vim as my default text editor
export EDITOR=lvim


#   █████╗ ██╗     ██╗ █████╗ ███████╗███████╗███████╗
#  ██╔══██╗██║     ██║██╔══██╗██╔════╝██╔════╝██╔════╝
#  ███████║██║     ██║███████║███████╗█████╗  ███████╗
#  ██╔══██║██║     ██║██╔══██║╚════██║██╔══╝  ╚════██║
#  ██║  ██║███████╗██║██║  ██║███████║███████╗███████║
#  ╚═╝  ╚═╝╚══════╝╚═╝╚═╝  ╚═╝╚══════╝╚══════╝╚══════╝

alias upgrade="sudo pacman -Syu"              # Synchronize with repositories and then upgrade packages that are out of date on the local system.
alias pacman-download="pacman -Sw"            # Download specified package(s) as .tar.xz ball
alias pac="sudo pacman -S"                    # Install specific package(s) from the repositories
alias pacman-install-file="sudo pacman -U"    # Install specific package not from the repositories but from a file 
alias pacr="sudo pacman -R"                   # Remove the specified package(s), retaining its configuration(s) and required dependencies
alias pacman-purge="sudo pacman -Rns"         # Remove the specified package(s), its configuration(s) and unneeded dependencies alias pacman-repoinfo="pacman -Si"            # Display information about a given package in the repositories alias pacsearch="pacman -Ss"                  # Search for package(s) in the repositories
alias pacQi="pacman -Qi"              # Display information about a given package in the local database
alias pacman-dbsearch="pacman -Qs"            # Search for package(s) in the local database
alias paclist="pacman -Qdt"      # List all packages which are orphaned
alias pacCC="sudo pacman -Scc"                # Clean cache - delete all the package files in the cache
alias pacQl="pacman -Ql"  # List all files installed by a given package
alias pacman-provides-="pacman -Qo"           # Show package(s) owning the specified file(s)
alias pacman-force-installed="pacman -D --asexp"   # Mark one or more installed packages as explicitly installed 
alias pacman-force-uninstalled="pacman -D --asdep" # Mark one or more installed packages as non explicitly installed
alias pacfzf="pacman -Slq | fzf --multi --preview 'pacman -Si {1}' | xargs -ro sudo pacman -S"
alias parufzf="paru -Slq | fzf --multi --preview 'paru -Si {1}' | xargs -ro paru -S"


alias lv="lvim"
alias nv="nvim"

alias mi="mediainfo"

alias yt="yt-dlp"
alias ytjson="yt --skip-download --write-info-json" # downloads json video info
alias ytF="yt -F" # shows me different video types
alias ytf="yt -f" # i have to enter the ID to get the file i want
alias yta="yt --audio-format -x"
alias ytba="yt --audio-format best -x" #gets the best audio 
alias ytbe='yt -f "bv+ba/b"' # best audio and video 
alias ytbext='yt -S "ext"' # best extension Download 
alias ytmp3="yt --extract-audio --audio-format mp3 "



alias ls="exa --icons --grid --group-directories-first"
alias lsa="exa --icons -a --group-directories-first"
alias lt='exa --tree --icons --level=2'
alias lta='exa --tree --icons'
alias lla='ll -ah'
alias le="ls -l -s extension"
alias lls="exa -la --icons --sort newest --group-directories-first"
alias size="ls -l -s size"
alias watchls='watch -cd --interval 0.1 "exa -la --icons --sort newest --group-directories-first"'
alias sizew='watch -cd --interval 0.1 "exa -la --icons --sort size --group-directories-first"'
alias namew='watch -cd --interval 0.1 "exa -la --icons --sort=name --group-directories-first"'

alias mac='/var/lib/libvirt/images'
alias spot="flatpak run com.spotify.Client"
alias obs="flatpak run com.obsproject.Studio"
alias killcmus="sudo kill -9 "$(pidof cmus)""

eval "$(fnm env --use-on-cd)"
eval "$(zoxide init zsh)"
eval "$(starship init zsh)"

loop () {
    while ; do 
        $@ ; 
        sleep 1; 
    done
} 







fortune | cowsay -f bud-frogs | lolcat
