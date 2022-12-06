# Add in my functions

source "$ZDOTDIR/zsh-functions"


#zsh_add_file "zsh-functions"
zsh_add_file "zsh-aliases"
source "zsh-env"
# source "flooble"

# Set up the prompt

autoload -Uz promptinit
promptinit
prompt adam1

setopt histignorealldups sharehistory

# Use emacs keybindings even if our EDITOR is set to vi
bindkey -e

# Keep 1000 lines of history within the shell and save it to ~/.zsh_history:
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.zsh_history

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

# This plugin must be loaded LAST.
source "/usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"
#ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern)
#ZSH_HIGHLIGHT_STYLES[default]=none
#ZSH_HIGHLIGHT_STYLES[unknown-token]=fg=red,bold
#ZSH_HIGHLIGHT_STYLES[reserved-word]=fg=cyan,bold
#ZSH_HIGHLIGHT_STYLES[suffix-alias]=fg=green,underline
#ZSH_HIGHLIGHT_STYLES[global-alias]=fg=magenta,bold
#ZSH_HIGHLIGHT_STYLES[precommand]=fg=green,underline
#ZSH_HIGHLIGHT_STYLES[commandseparator]=fg=blue,bold
#ZSH_HIGHLIGHT_STYLES[autodirectory]=fg=green,underline
#ZSH_HIGHLIGHT_STYLES[path]=underline
#ZSH_HIGHLIGHT_STYLES[path_pathseparator]=
#ZSH_HIGHLIGHT_STYLES[path_prefix_pathseparator]=
#ZSH_HIGHLIGHT_STYLES[globbing]=fg=blue,bold
#ZSH_HIGHLIGHT_STYLES[history-expansion]=fg=blue,bold
#ZSH_HIGHLIGHT_STYLES[command-substitution]=none
#ZSH_HIGHLIGHT_STYLES[command-substitution-delimiter]=fg=magenta,bold
#ZSH_HIGHLIGHT_STYLES[process-substitution]=none
#ZSH_HIGHLIGHT_STYLES[process-substitution-delimiter]=fg=magenta,bold
#ZSH_HIGHLIGHT_STYLES[single-hyphen-option]=fg=magenta,bold
#ZSH_HIGHLIGHT_STYLES[double-hyphen-option]=fg=magenta,bold
#ZSH_HIGHLIGHT_STYLES[back-quoted-argument]=none
#ZSH_HIGHLIGHT_STYLES[back-quoted-argument-delimiter]=fg=blue,bold
#ZSH_HIGHLIGHT_STYLES[single-quoted-argument]=fg=yellow
#ZSH_HIGHLIGHT_STYLES[double-quoted-argument]=fg=yellow
#ZSH_HIGHLIGHT_STYLES[dollar-quoted-argument]=fg=yellow
#ZSH_HIGHLIGHT_STYLES[rc-quote]=fg=magenta,bold
#ZSH_HIGHLIGHT_STYLES[dollar-double-quoted-argument]=fg=magenta,bold
#ZSH_HIGHLIGHT_STYLES[back-double-quoted-argument]=fg=magenta,bold
#ZSH_HIGHLIGHT_STYLES[back-dollar-quoted-argument]=fg=magenta,bold
#ZSH_HIGHLIGHT_STYLES[assign]=none
#ZSH_HIGHLIGHT_STYLES[redirection]=fg=blue,bold
#ZSH_HIGHLIGHT_STYLES[comment]=fg=black,bold
#ZSH_HIGHLIGHT_STYLES[named-fd]=none
#ZSH_HIGHLIGHT_STYLES[numeric-fd]=none
#ZSH_HIGHLIGHT_STYLES[arg0]=fg=green,bold
#ZSH_HIGHLIGHT_STYLES[bracket-error]=fg=red,bold
#ZSH_HIGHLIGHT_STYLES[bracket-level-1]=fg=blue,bold
#ZSH_HIGHLIGHT_STYLES[bracket-level-2]=fg=green,bold
#ZSH_HIGHLIGHT_STYLES[bracket-level-3]=fg=magenta,bold
#ZSH_HIGHLIGHT_STYLES[bracket-level-4]=fg=yellow,bold
#ZSH_HIGHLIGHT_STYLES[bracket-level-5]=fg=cyan,bold
#ZSH_HIGHLIGHT_STYLES[cursor-matchingbracket]=standout


