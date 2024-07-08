# zsh
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="flazz"
plugins=(git zsh-autosuggestions)
source $ZSH/oh-my-zsh.sh

# aliases
alias dkr="docker compose down && docker compose build && docker compose up"
alias pylint="ruff format . && ruff --fix ."

# haskell
[ -f "/Users/aidan/.ghcup/env" ] && source "/Users/aidan/.ghcup/env"

# ocaml
[[ ! -r /Users/aidan/.opam/opam-init/init.zsh ]] || source /Users/aidan/.opam/opam-init/init.zsh  > /dev/null 2> /dev/null
source /Users/aidan/.config/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"

# tmux
export PATH="/opt/homebrew/bin:$PATH"
export PATH="$HOME/.tmux/plugins/tmuxifier/bin:$PATH"
eval "$(tmuxifier init -)"

# ruby
source /opt/homebrew/opt/chruby/share/chruby/chruby.sh
source /opt/homebrew/opt/chruby/share/chruby/auto.sh
chruby ruby-3.1.3

# LLVM
export PATH="/opt/homebrew/Cellar/llvm/16.0.6/bin:$PATH"

# pnpm
export PNPM_HOME="/Users/aidan/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac

# conda
export PATH="/opt/homebrew/anaconda3/bin:$PATH"

# vim
alias v="nvim"
alias vim="nvim"

# zoxide
eval "$(zoxide init zsh)"

# less
alias less="vim -R"

# zoxide
alias cd="z"

# connect to headphones via terminal
alias airpods="blueutil --disconnect c4-35-d9-14-6b-95 && blueutil --connect c4-35-d9-14-6b-95"

# fzf over history
function nvim-history() {
    nvim +History
}
zle -N nvim-history
bindkey '^F' nvim-history  

# git
alias g="git"
alias gs="git status"
alias ga="git add"
alias gc="git commit"
alias gp="git pull"
gall() { git add . && git commit -m "$1" && git push }

