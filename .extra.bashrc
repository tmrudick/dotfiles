# Add ~/bin to my path
export PATH=~/bin:$PATH

##### HISTORY #####
# Keep lots of history
export HISTFILESIZE=1000000000
export HISTSIZE=1000000
export HISTTIMEFORMAT="%F %T "
shopt -s cmdhist
shopt -s histappend

# Don't add duplicate lines into history
HISTCONTROL=ignoreboth

# Load other platform and work extras
arch=$(uname -s)
[ -f $HOME/.extra_$arch.bashrc ] && . $HOME/.extra_$arch.bashrc
[ -f $HOME/.extra_work_$arch.bashrc ] && . $HOME/.extra_work_$arch.bashrc

# Mark as loaded
export BASH_EXTRAS_LOADED=1
