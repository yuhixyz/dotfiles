source /etc/profile
export http_proxy=http://127.0.0.1:7890 https_proxy=http://127.0.0.1:7890 ALL_PROXY=socks5://127.0.0.1:7891
export EDITOR=/opt/homebrew/bin/nvim
export RANGER_LOAD_DEFAULT_RC=FALSE
export TERM=xterm-256color

# antlr4
export CLASSPATH=".:/usr/local/lib/antlr-4.9.2-complete.jar:$CLASSPATH"
alias antlr4='java -jar /usr/local/lib/antlr-4.9.2-complete.jar'
alias grun='java org.antlr.v4.gui.TestRig'

# setup fzf
if [[ ! -d $(brew --prefix)/opt/fzf ]]; then
    brew install fzf
    $(brew --prefix)/opt/fzf/install
fi
export FZF_DEFAULT_OPTS="--height 40% --layout=reverse --color=fg:#908caa,bg:#232136,hl:#ea9a97 --color=fg+:#e0def4,bg+:#393552,hl+:#eb6f92 --color=info:#56526e,prompt:#f6c177,pointer:#eb6f92 --color=marker:#9ccfd8,spinner:#56526e,header:#56526e"
export FZF_COMPLETION_TRIGGER='\'
export FZF_DEFAULT_COMMAND='fd --type f --hidden --follow --exclude .git'

# zsh completion
if type brew &>/dev/null
then
  FPATH="$(brew --prefix)/share/zsh/site-functions:${FPATH}"

  autoload -Uz compinit
  compinit
fi
# alias
alias szsh='source ~/.zshrc'
alias lg='lazygit'
alias vi='nvim'
alias vim='nvim'
alias nvi='nvim'
alias ra='ranger'
alias ls='exa -h'
alias la='ls -a'
alias ll='ls -al'
alias mkdir='mkdir -p'
# z.lua
alias zh='z -I -t .' # path history fzf
alias zf='z -I' # path fzf
# tmux
alias tls='tmux ls'
alias tks='tmux kill-session -t'
alias tka='tmux kill-server'
# alias ta='tmux attach-session -t'  # tm
# alias tn='tmux new-session -t'     # tm
# tm - create new tmux session, or switch to existing one. Works from within tmux too. (@bag-man)
# `tm` will allow you to select your tmux session via fzf.
# `tm irc` will attach to the irc session (if it exists), else it will create it.
tm() {
  [[ -n "$TMUX" ]] && change="switch-client" || change="attach-session"
  if [ $1 ]; then
	tmux $change -t "$1" 2>/dev/null || (tmux new-session -d -s $1 && tmux $change -t "$1"); return
  fi
  session=$(tmux list-sessions -F "#{session_name}" 2>/dev/null | fzf --exit-0) &&  tmux $change -t "$session" || echo "No sessions found."
}
mkcd() {
    mkdir -p "$1"
    cd "$1"
}

# https://github.com/conda-forge/miniforge/#download
# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/yuhixyz/miniforge3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/yuhixyz/miniforge3/etc/profile.d/conda.sh" ]; then
        . "/Users/yuhixyz/miniforge3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/yuhixyz/miniforge3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

# case insensitive completion
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}' 'r:|=*' 'l:|=* r:|=*'



# setup zinit 
if [[ ! -f /opt/homebrew/opt/zinit/zinit.zsh ]]; then
    brew install zinit
fi
# load zinit
source /opt/homebrew/opt/zinit/zinit.zsh
# plugins
# zsh completions
zinit ice lucid wait='0'
zinit light zsh-users/zsh-completions
# syntax highlight
zinit ice lucid wait='0' atinit='zpcompinit'
zinit light zdharma-continuum/fast-syntax-highlighting
# suggestions
zinit ice lucid wait='0' atload='_zsh_autosuggest_start'
zinit light zsh-users/zsh-autosuggestions
# conda completions
zinit light esc/conda-zsh-completion
# zshvimode
function zvm_config() {
  ZVM_LINE_INIT_MODE=$ZVM_MODE_INSERT
  ZVM_VI_INSERT_ESCAPE_BINDKEY=jj
}
zinit ice depth=1
zinit light jeffreytse/zsh-vi-mode
zvm_after_init_commands+=('[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh')
# z.lua
zinit light skywind3000/z.lua
# thefuck
eval $(thefuck --alias)

# starship
eval "$(starship init zsh)"
