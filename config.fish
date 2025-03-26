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

    if not pgrep gpg-agent > /dev/null
        gpg-agent --daemon
    end
end

function fish_greeting
#  neofetch
end

# pnpm
set -gx PNPM_HOME "/Users/drifter/Library/pnpm"
if not string match -q -- $PNPM_HOME $PATH
  set -gx PATH "$PNPM_HOME" $PATH
end
# pnpm end
