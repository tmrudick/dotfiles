# Ctrl+right/left for jumping words
bindkey "$terminfo[kRIT5]" forward-word
bindkey "$terminfo[kLFT5]" backward-word

# Up/Down serches through history
bindkey "$terminfo[kcuu1]" history-beginning-search-backward
bindkey "$terminfo[kcud1]" history-beginning-search-forward
