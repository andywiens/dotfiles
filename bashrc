set -o vi

alias ls='ls -a'
alias downloads="cd ~/Downloads"
alias desktop="cd ~/Desktop"
alias muriwai="ssh muriwai.local"
alias mvnnt='mvn -Dmaven.test.skip=true'

alias redirect_fm_db="ssh -L 35432:192.168.23.133:5432 _andrew@fm-registry"
alias redirect_fm_to_blackcoffee="ssh -L 8443:10.5.17.23:443 _andrew@vm-blackcoffee"


export PS1='\[\e]0;\w\a\]\n\[\e[32m\]\u@\H \[\e[33m\]\w\[\e[0m\]\n$\[\033]0;\u@\H (\W):\w\007\] '
# 
# add colors to terminal (see man ls for details)
CLICOLOR=1
# Order:
# 1. directory, 2. symbolic link, 3. socket, 4. pipe, 5. executable, 6. block special, 7. character special
# 8. executabel with setuid bit set, 9. executable with setgid bit set, 10. directory writable to others, with sticky bit
#11. directory writable to others, without sticky bit
#
# Colors
# a - black, b - red, c - green, d - brown (yellow), e - blue, f - magenta, g - cyan, h - light grey
# A - Bold black, B - Bold red, C - Bold green, D - Bold brown (yellow), E - Bold blue, F - Bold Magenta, G - Bold cyan,
# H - Bold light grey (appears bright white), x - default color
LSCOLORS=gxFxCxDxBxegedabagacad
export CLICOLOR
export LSCOLORS


PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
