export https_proxy=http://127.0.0.1:7890 http_proxy=http://127.0.0.1:7890 all_proxy=socks5://127.0.0.1:7890

# setup zinit 
if [[ ! -f ~/.zinit/bin/zinit.zsh ]]; then
	mkdir ~/.zinit/bin
	git clone https://github.com/zdharma-continuum/zinit.git ~/.zinit/bin
fi
# load zinit
source ~/.zinit/bin/zinit.zsh


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
# autojump
zinit snippet OMZ::plugins/autojump/autojump.plugin.zsh
# setup fzf
if [[ ! -d ~/.fzf ]]; then
  git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
  ~/.fzf/install
fi
# alias
alias szsh='source ~/.zshrc'
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
bindkey '^F' fzf-file-widget

eval $(thefuck --alias)
# starship
# macos: brew install starship
eval "$(starship init zsh)"
export EDITOR=/opt/homebrew/bin/nvim
export RANGER_LOAD_DEFAULT_RC=FALSE
