if [ -z $DISPLAY ]; then 
   neofetch
fi 

# source ~/.zsh/zsh-vi-mode/zsh-vi-mode.zsh
autoload -U colors && colors
export _JAVA_AWT_WM_NONREPARENTING=1
export zshdir=~/.zsh
export PATH=$PATH:~/.bin/bin
autoload -Uz compinit 
if [[ -n $zshdir/.zcompdump(#qN.mh+24) ]]; then
	compinit;
else
	compinit -C;
fi;
alias learn="cd /home/as/pwnable/"
## flyctl export PATH
# export FLYCTL_INSTALL="/home/as/.fly"
 # export PATH="$FLYCTL_INSTALL/bin:$PATH"
alias kcsc="cd /home/as/kcsc"
## activate python virtual environment ##
#source /home/as/.local/bin/activate
## Colorize the ls output ##
alias ls='ls --color=auto'
source $zshdir/zsh-autosuggestions/zsh-autosuggestions.zsh
source $zshdir/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
export HISTFILE="$zshdir/.zsh_history"
HISTSIZE=10000000
SAVEHIST=10000000
setopt appendhistory
setopt BANG_HIST                 # Treat the '!' character specially during expansion.
setopt EXTENDED_HISTORY          # Write the history file in the ":start:elapsed;command" format.
setopt INC_APPEND_HISTORY        # Write to the history file immediately, not when the shell exits.
setopt SHARE_HISTORY             # Share history between all sessions.
setopt HIST_EXPIRE_DUPS_FIRST    # Expire duplicate entries first when trimming history.
setopt HIST_IGNORE_DUPS          # Don't record an entry that was just recorded again.
setopt HIST_IGNORE_ALL_DUPS      # Delete old recorded entry if new entry is a duplicate.
setopt HIST_FIND_NO_DUPS         # Do not display a line previously found.
setopt HIST_IGNORE_SPACE         # Don't record an entry starting with a space.
setopt HIST_SAVE_NO_DUPS         # Don't write duplicate entries in the history file.
setopt HIST_REDUCE_BLANKS        # Remove superfluous blanks before recording entry.
setopt HIST_VERIFY               # Don't execute immediately upon history expansion.
setopt HIST_BEEP
# Colors: black, red, green, yellow, *blue, magenta, cyan, and white.
#
# Note: If you change %c% in line
# 	%{$terminfo[bold]$fg[yellow]%}%c%{$reset_color%}\
# to %~% it will display the whole working directory
# [TIME] [PRIVILEGES USER @ MACHINE] [DIRECTORY] on git:BRANCH STATE code:LAST_EXIT_CODE
# $ COMMAND
randomise_prompt_colour () {

	entries=($(shuf -i 1-9))
	PS1="%B%F{$((entries[1]))}%n@%c% 🍎 "


}
XDG_SESSION_TYPE=wayland
QT_QPA_PLATFORM=wayland
add-zsh-hook precmd randomise_prompt_colour
#PROMPT="%{$fg_bold[yellow]%}%~%$ "
#export XDG_CURRENT_DESKTOP=sway
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export PATH=$PATH:/usr/local/bin
#alias clear="printf '\033[2J\033[3J\033[1;1H'"
# Created by `pipx` on 2023-10-29 12:30:31
export PATH="$PATH:~/.local/bin"
#vim mode configuration
#
bindkey -v
export KEYTIMEOUT=1
zstyle ':completion:*' menu select
zmodload zsh/complist
# Use vim keys in tab complete menu:
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history
bindkey -v '^?' backward-delete-char

# Change cursor shape for different vi modes.
function zle-keymap-select {
  if [[ ${KEYMAP} == vicmd ]] ||
     [[ $1 = 'block' ]]; then
    echo -ne '\e[1 q'
  elif [[ ${KEYMAP} == main ]] ||
       [[ ${KEYMAP} == viins ]] ||
       [[ ${KEYMAP} = '' ]] ||
       [[ $1 = 'beam' ]]; then
    echo -ne '\e[5 q'
  fi
}
zle -N zle-keymap-select
zle-line-init() {
    zle -K viins # initiate `vi insert` as keymap (can be removed if `bindkey -V` has been set elsewhere)
    echo -ne "\e[5 q"
}
zle -N zle-line-init
echo -ne '\e[5 q' # Use beam shape cursor on startup.
preexec() { echo -ne '\e[5 q' ;} # Use beam shape cursor for each new prompt.
#the end of vim mode configuration
