setopt interactivecomments # allow comments in interactive mode
setopt magicequalsubst     # enable filename expansion for arguments of the form ‘anything=expression’
setopt notify              # report the status of background jobs immediately

WORDCHARS=${WORDCHARS//\/} # Don't consider certain characters part of the word

bindkey -e                                        # emacs key bindings
bindkey ' ' magic-space                           # do history expansion on space
bindkey '^U' backward-kill-line                   # ctrl + U
bindkey '^[[3;5~' kill-word                       # ctrl + Supr
bindkey '^[[3~' delete-char                       # delete
bindkey '^[[1;5C' forward-word                    # ctrl + ->
bindkey '^[[1;5D' backward-word                   # ctrl + <-
bindkey '^[[5~' beginning-of-buffer-or-history    # page up
bindkey '^[[6~' end-of-buffer-or-history          # page down
bindkey '^[[H' beginning-of-line                  # home
bindkey '^[[F' end-of-line                        # end
bindkey '^[[Z' undo                               # shift + tab undo last action

autoload -Uz compinit

HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=20000
setopt hist_expire_dups_first # delete duplicates first when HISTFILE size exceeds HISTSIZE
setopt hist_ignore_dups       # ignore duplicated commands history list
setopt hist_ignore_space      # ignore commands that start with space
setopt hist_verify            # show command with history expansion to user before running it
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
alias ls="ls --color=auto"
alias dir="dir --color=auto"
alias vdir="vdir --color=auto"
alias grep="grep --color=auto"
alias fgrep="fgrep --color=auto"
alias egrep="egrep --color=auto"
alias wget="wget -c --user-agent 'noleak'"
alias dd="dd status=progress"
alias df="df -h"                          # human-readable sizes
alias free="free -h"
alias du="du -h"
alias ida="wine '/home/wh0am1/.wine/drive_c/Program Files (x86)/Hex-Rays IDA Professional Advanced Floating And Decompiler Full Activated/ida.exe'"
alias ida64="wine '/home/wh0am1/.wine/drive_c/Program Files (x86)/Hex-Rays IDA Professional Advanced Floating And Decompiler Full Activated/ida64.exe'"
alias ipy="ipython3"
alias gdb="gdb -q"
alias config="git --git-dir=$HOME/.cfg --work-tree=$HOME"

# Env
export LD_PRELOAD=""
export EDITOR="vim"
export PATH="$HOME/bin:/usr/lib/ccache/bin/:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:/opt/bin:/usr/bin/core_perl:/usr/games/bin:$HOME/go/bin:$PATH"
export PATH=$HOME/.local/bin:$PATH
export PATH=$HOME/.local/share/nvim/mason/bin:$PATH # yup, wtf
export TERM=xterm-256color
. "$HOME/.cargo/env"

# For ignoring case
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}' 'r:|=*' 'l:|=* r:|=*'
autoload -Uz compinit && compinit

# Python stuff
export PYTHONIOENCODING=utf8
export WORKON_HOME=~/.virtualenvs
source /home/wh0am1/.local/bin/virtualenvwrapper.sh

source /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
eval "$(starship init zsh)"
eval "$(zellij setup --generate-auto-start zsh)"
