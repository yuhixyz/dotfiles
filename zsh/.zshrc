export https_proxy=http://127.0.0.1:7890 http_proxy=http://127.0.0.1:7890 all_proxy=socks5://127.0.0.1:7890

# setup zinit 
if [[ ! -f /opt/homebrew/opt/zinit/zinit.zsh ]]; then
    brew install zinit
fi
# load zinit
source /opt/homebrew/opt/zinit/zinit.zsh


# plugins
# syntax highlight
zinit ice lucid wait='0' atinit='zpcompinit'
zinit light zdharma-continuum/fast-syntax-highlighting
# suggestions
zinit ice lucid wait='0' atload='_zsh_autosuggest_start'
zinit light zsh-users/zsh-autosuggestions
# zsh completions
zinit ice lucid wait='0'
zinit light zsh-users/zsh-completions
# conda completions
zinit light esc/conda-zsh-completion
# setup fzf
if [[ ! -d $(brew --prefix)/opt/fzf ]]; then
    brew install fzf
    $(brew --prefix)/opt/fzf/install
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

export TERM=xterm-256color

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

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export FZF_DEFAULT_OPTS="--height 40% --layout=reverse --preview '(highlight -O ansi {} || bat {}) 2> /dev/null | head -500'"
export FZF_COMPLETION_TRIGGER='\'
export FZF_DEFAULT_COMMAND='fd --type f --hidden --follow --exclude .git'

eval $(thefuck --alias)
# starship
# macos: brew install starship
eval "$(starship init zsh)"
export EDITOR=/opt/homebrew/bin/nvim
export RANGER_LOAD_DEFAULT_RC=FALSE
# zvm
zinit ice depth=1
zinit light jeffreytse/zsh-vi-mode
ZVM_VI_INSERT_ESCAPE_BINDKEY=jj
# arch -arm64 brew install z 
source /opt/homebrew/etc/profile.d/z.sh
