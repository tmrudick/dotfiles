# Add ~/bin to my path
export PATH=~/bin:$PATH

# Keep lots of history
export HISTSIZE=10000
export HISTFILESIZE=1000000000

# Load other platform and work extras
arch=$(uname -s)
[ -f $HOME/.extra_$arch.bashrc ] && . $HOME/.extra_$arch.bashrc
[ -f $HOME/.extra_work_$arch.bashrc ] && . $HOME/.extra_work_$arch.bashrc

# Mark as loaded
export BASH_EXTRAS_LOADED=1
