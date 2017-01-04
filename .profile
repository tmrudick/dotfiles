DOT_PROFILE_LOADED=1
if [ -n "$BASH_VERSION" ]; then
  [ -f ~/.bashrc ] && ! [ "$DOT_BASHRC_LOADED" == "1" ] && . ~/.bashrc
  [ -f ~/.extra.bashrc ] && . ~/.extra.bashrc
  [ -f ~/.extra_work.bashrc ] && . ~/.extra_work.bashrc
fi