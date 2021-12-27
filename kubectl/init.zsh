if (( ! $+commands[kubectl] )); then
  return 1
fi

source <(kubectl completion zsh)

source "${0:h}/alias.zsh"

if (( ${+_comps[kubectl]} )); then
  kj() { kubectl "$@" -o json | jq; }
  kjx() { kubectl "$@" -o json | fx; }
  ky() { kubectl "$@" -o yaml | yh; }

  compdef kj=kubectl
  compdef kjx=kubectl
  compdef ky=kubectl
fi