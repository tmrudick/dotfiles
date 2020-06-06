#### oh my zsh ####
export ZSH="/Users/tmr/.oh-my-zsh"

# Set the terminal theme
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="spaceship"

# Enable command auto-correction
ENABLE_CORRECTION="true"

# Enable plugins
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Plugins
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration
export EDITOR='vim'

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/tmr/tools/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/tmr/tools/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/tmr/tools/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/tmr/tools/google-cloud-sdk/completion.zsh.inc'; fi

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
