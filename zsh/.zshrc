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
alias ls='ls --color=auto'
alias ll='ls -l'
alias la='ls -a'
alias mkdir='mkdir -p'
# tmux
alias tn='tmux new -s'
alias tks='tmux kill-session -t'
alias tka='tmux kill-server'
alias tls='tmux ls'
alias ta='tmux a -t'

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
export FZF_DEFAULT_OPTS='--height 40% --layout=reverse --border'
export FZF_COMPLETION_TRIGGER='ll'
export FZF_COMPLETION_TRIGGER='\'
export FZF_DEFAULT_COMMAND='fd --type f --hidden --follow --exclude .git'

# starship
# macos: brew install zsh
# centos: sh -c "$(curl -fsSL https://starship.rs/install.sh)"
eval "$(starship init zsh)"
