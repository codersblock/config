alias ls='ls -a'
alias ll='ls -al'
alias vim='~/.vim/bin/vim/src/vim'
alias glimpse='grep -rnw -e'

export CLICOLOR=1
export LSCOLORS=GxAGFhDxCxegedabagaced
export PATH="$PATH:/Users/jslater/Library/Python/3.5/bin"
export BASH_SILENCE_DEPRECATION_WARNING=1

export PS1='\[\e[1;36m\][\t]:\[\e[1;33m\]\w\$\[\e[0;1m\]'

# auto-start tmux in iTerm: attach to the "main" session if it exists, else create it
if [[ $- == *i* && "$TERM_PROGRAM" == "iTerm.app" && -z "$TMUX" ]] && command -v tmux >/dev/null 2>&1; then
  tmux new-session -A -s main
fi
