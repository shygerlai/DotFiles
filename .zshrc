setopt magicequalsubst
setopt notify
WORDCHARS=${WORDCHARS//\/}
bindkey -e
bindkey ' ' magic-space
bindkey '^U' backward-kill-line
bindkey '^[[3;5~' kill-word
bindkey '^[[3~' delete-char
bindkey '^[[1;5C' forward-word
bindkey '^[[1;5D' backward-word
bindkey '^[[5~' beginning-of-buffer-or-history
bindkey '^[[6~' end-of-buffer-or-history
bindkey '^[[H' beginning-of-line
bindkey '^[[F' end-of-line
bindkey '^[[Z' undo
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=20000
setopt hist_expire_dups_first
setopt hist_ignore_dups
setopt hist_ignore_space
setopt hist_verify
TIMEFMT=$'\nreal\t%E\nuser\t%U\nsys\t%S\ncpu\t%P'
alias history="history 0"
alias ll='ls -al'
alias la='ls -A'
alias l='ls -CF'
alias c="clear"
alias cd..="cd .."
alias l="ls -ahls --color=auto"
alias r="reset"
alias shred="shred -zf"
alias sl="ls --color=auto"
alias ll="ls -al --color=auto"
alias vi="vim"
alias n="nvim"
alias ls="ls --color=auto"
alias dir="dir --color=auto"
alias vdir="vdir --color=auto"
alias grep="grep --color=auto"
alias fgrep="fgrep --color=auto"
alias egrep="egrep --color=auto"
alias wget="wget -c --user-agent 'noleak'"
alias dd="dd status=progress"
alias df="df -h"
alias free="free -h"
alias du="du -h"
alias ipy="ipython"
alias gdb="gdb -q"
alias config="git --git-dir=$HOME/.cfg --work-tree=$HOME"
# Env
export LD_PRELOAD=""
export EDITOR="vim"
export PATH="$HOME/bin:/usr/lib/ccache/bin/:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:/opt/bin:/usr/games/bin:$PATH"
export PATH=$HOME/.local/bin:$PATH
export PATH=$HOME/.local/share/nvim/mason/bin:$PATH
export TERM=xterm-256color
# Completion
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}' 'r:|=*' 'l:|=* r:|=*'
autoload -Uz compinit && compinit
# Python
export PYTHONIOENCODING=utf8
# zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
eval "$(starship init zsh)"
eval "$(zellij setup --generate-auto-start zsh)"
