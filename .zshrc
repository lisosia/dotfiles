# Set up the prompt

autoload -Uz promptinit
promptinit
#prompt adam1 # prompt theta; to preview themes, $ prompt -p
PROMPT="%F{green}%n %~%f %# "

setopt histignorealldups sharehistory

# Use emacs keybindings even if our EDITOR is set to vi
bindkey -e

# HISTORY
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.zsh_history
# HISTORY_IGNORE='(l|l[asl]|l[asl] *|cd|cd *|fg|bg)' # do not work??
setopt EXTENDED_HISTORY # 開始と終了を記録
setopt hist_ignore_dups # 重複を記録しない
setopt hist_ignore_space # not restore history that begins with space 
setopt hist_ignore_all_dups # 重複するコマンドは古い方を削除する
setopt share_history
setopt hist_reduce_blanks
setopt hist_no_store # not store '$ history' to history

# Use modern completion system
autoload -Uz compinit
compinit

zstyle ':completion:*' auto-description 'specify: %d'
zstyle ':completion:*' completer _expand _complete _correct _approximate
zstyle ':completion:*' format 'Completing %d'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' menu select=2
eval "$(dircolors -b)"
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' matcher-list '' 'm:{a-z}={A-Z}' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=* l:|=*'
zstyle ':completion:*' menu select=long
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*' use-compctl false
zstyle ':completion:*' verbose true

zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31'
zstyle ':completion:*:kill:*' command 'ps -u $USER -o pid,%cpu,tty,cputime,cmd'


### load private zshrc
[ -f ~/.zshrc.local ] && source ~/.zshrc.local
