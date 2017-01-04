# Add ~/bin to my path
export PATH=~/bin:$PATH

# Load other platform and work extras
arch=$(uname -s)
[ -f $HOME/.extra_$arch.bashrc ] && . $HOME/.extra_$arch.bashrc
[ -f $HOME/.extra_work_$arch.bashrc ] && . $HOME/.extra_work_$arch.bashrc

# Mark as loaded
export BASH_EXTRAS_LOADED=1
