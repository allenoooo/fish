alias v="nvim"
alias cat="bat"
alias kc="kubectl"
alias ls="eza -l"
alias lg="lazygit"

#function c
#  open -a /Applications/Cursor.app $argv
#end

function tmuxn
  tmux new -n $argv
end

function gv
  cd ~/code/wander
  v --listen ~/.cache/nvim/godot.pipe .
end
