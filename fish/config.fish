if status is-interactive
    alias v="nvim"
    alias ls="ls -a"
    alias nnn="nnn -EH"
    alias c="clear"
    # Package Mangement
    alias i="yay -S"
    alias u="yay -U"
    alias yr="yay -R"
    alias yu="yay -Syu"
    alias pi="doas pacman -S"
    alias pu="doas pacman -U"
    alias pr="doas pacman -R"
    alias pyu="doas pacman -Syu"
    # Navigation
    alias .1 = "cd ../"
    alias .2 = "cd ../.."
    alias .3 = "cd ../../.."
    alias .4 = "cd ../../../.."
    alias .5 = "cd ../../../../.."

    # Root Permission
    alias sudo="doas"

    # Information
    alias ff="fastfetch"
    alias sshell="echo $SHELL"
    alias seditor="echo $EDITOR"

    # "ls" to "exa"
    alias ls="exa -al --no-permissions --no-user --no-filesize --no-time --color=always --group-directories-first"
    alias ll="exa -l --color=always --group-directories-first"
    alias l. = "exa -al --no-permissions --no-user --no-filesize --no-time --color=always --group-directories-first ../ | lolcat"
    alias l.2 = "exa -al --no-permissions --no-user --no-filesize --no-time --color=always --group-directories-first ../.. | lolcat"
    alias l.3 = "exa -al --no-permissions --no-user --no-filesize --no-time --color=always --group-directories-first ../../.. | lolcat"
    alias lhome = "exa -al --no-permissions --no-user --no-filesize --no-time --color=always --group-directories-first ~ | lolcat"

    oh-my-posh init fish --config ~/.config/ohmyposh/catppuccin.omp.json | source
    doas completion fish | source
    zoxide init fish | source
    export $EDITOR=nvim
    set fish_greeting ""
    clear
end
