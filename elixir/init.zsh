# Return if requirements are not found.
if (( ! $+commands[elixir] )); then
  return 1
fi

# Source module files.
source "${0:h}/alias.zsh"
