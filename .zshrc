if [ -z $DISPLAY ]; then 
   neofetch
fi 
export OPENAI_KEY=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
autoload -U colors && colors
export _JAVA_AWT_WM_NONREPARENTING=1
export zshdir=/home/as/.zsh
export PATH=$PATH:/home/as/.bin/bin:/usr/local/java/jdk19/bin
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
QT_QPA_PLATFORM=wayland
add-zsh-hook precmd randomise_prompt_colour
#PROMPT="%{$fg_bold[yellow]%}%~%$ "
#export XDG_CURRENT_DESKTOP=sway
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export PATH=$PATH:/usr/local/bin
alias clear="printf '\033[2J\033[3J\033[1;1H'"
# Created by `pipx` on 2023-10-29 12:30:31
export PATH="$PATH:/home/as/.local/bin"
