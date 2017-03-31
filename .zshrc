# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/ebot/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

#prompt
autoload -Uz promptinit
promptinit
prompt walters

#terminfo_down_sc=$terminfo[cud1]$terminfo[cuu1]$terminfo[sc]$terminfo[cud1]
#function zle-line-init zle-keymap-select {
#    VIMODE="${${KEYMAP/vicmd/-- NORMAL --}/(main|viins)/-- INSERT --}"
#    PROMPT="%{$terminfo_down_sc$VIMODE$terminfo[rc]%}$PROMPT"
#    zle reset-prompt
#}
#preexec () { print -rn -- $terminfo[el]; }
#zle -N zle-line-init
#zle -N zle-keymap-select

#vi mode enhancements
export KEYTIMEOUT=1

#arrow-key completion
zstyle ':completion:*' menu select

#enable zsh-completions
fpath=(path/to/zsh-completions/src $fpath)

#enable fish syntax highlighting
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

#rm confirm
alias rm="rm -i"
