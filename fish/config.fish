if status is-interactive
    # Commands to run in interactive sessions can go here
end

eval (/home/linuxbrew/.linuxbrew/bin/brew shellenv)

function fish_greeting
    echo (set_color yellow)󰮯(set_color white)    (set_color green)󰊠(set_color white)    (set_color red)󰊠(set_color white)    (set_color blue)󰊠(set_color white)    (set_color purple)󰊠(set_color normal)
end

#set -g fish_greeting
set -U fish_greeting

oh-my-posh init fish --config /home/linuxbrew/.linuxbrew/Cellar/oh-my-posh/17.2.0/themes/iterm2.omp.json | source

set -q GHCUP_INSTALL_BASE_PREFIX[1]; or set GHCUP_INSTALL_BASE_PREFIX $HOME ; set -gx PATH $HOME/.cabal/bin $PATH /home/max711/.ghcup/bin # ghcup-env

alias clear 'clear && fish_greeting'

