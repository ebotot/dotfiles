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

#vi mode enhancements
export KEYTIMEOUT=1

#enable fish syntax highlighting
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

#rm confirm
alias rm="rm -i"

#gruvbox colors
source "/usr/share/vim/vimfiles/gruvbox_256palette.sh"
