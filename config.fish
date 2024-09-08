if status is-interactive
    # Commands to run in interactive sessions can go here
    set -gx STARSHIP_CONFIG $HOME/.config/starship/starship.toml
    set -gx SHELL $(which fish)

    source ~/.config/fish/functions/base.fish
    source ~/.config/fish/conf.d/secret.fish

    set -gx nvm_file = $(brew --prefix npm)/nvm.sh
    if test -f $nvm_file
      source nvm_file
    end

    starship init fish | source
    atuin init fish | source
end

function fish_greeting
  neofetch
end
