
# Bash prompts
#PS1='[\[\e[96m\]\u\[\e[0m\]@\[\e[92m\]\h\[\e[0m\]:\[\e[95m\]\w\[\e[0m\]:]\[\e[93m\]\$\[\e[0m\]' # regular
# PS1='[\[\e[95m\]\w\[\e[0m\]]\$' # only full working dir
#PS1='[\[\e[95m\]\W\[\e[0m\]]\$' # only working dir base
#PS1='\[\e[1m\]MacBookPro\[\e[0m\][\[\e[95m\]\w\[\e[0m\]]\$' # only working dir, and a text

# git promtp
PROMPT_COMMAND='PS1_CMD1=$(__git_ps1 " (%s)")'; PS1='[\[\e[38;5;129m\]\u\[\e[0m\]@\[\e[38;5;201m\]\w\[\e[38;5;45;1;3m\]${PS1_CMD1}\[\e[0m\]]\\$'

# git promt with text
# PROMPT_COMMAND='PS1_CMD1=$(__git_ps1 " (%s)")'; PS1='[\[\e[38;5;129m\]\u\[\e[0m\]@macbookpro:\[\e[38;5;201m\]\w\[\e[38;5;45;1;3m\]${PS1_CMD1}\[\e[0m\]]\\$'


# My variables
editor="nvim"
bashrc="~/.bash_profile"
vimrc="~/.config/nvim/init.lua"

alias l="ls -lh --color=always"
alias ll="ls -lha --color=always"
alias vrc="$editor $vimrc"
alias vbrc="$editor $bashrc"
alias sbrc="source $bashrc"
alias c="clear"
alias cl="clear && l"
alias p="pwd"
alias gc="git add . && git commit -m"
alias c1="cd ../"
alias c2="cd ../../"
alias c3="cd ../../../"
alias vim="$editor"
alias rm="rm -rf"
alias jl="jupyter lab"
alias py="python"
alias cna="conda activate"
alias cnd="conda deactivate"