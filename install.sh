#!/bin/bash
#! [ -d ~/.dotfile_backup ] && mkdir ~/.dotfile_backup
for i in .*; do
  if ! [[ $i == "." ]] && ! [[ $i == ".." ]] && ! [[ $i == .git* ]]; then
    if [ -e ~/$i ]; then
      if ! ( cp ~/$i ~/.dotfile_backup/$i ) || ! ( rm ~/$i || unlink ~/$i ); then
        echo "Failed on $i" > /dev/stderr
        exit 1
      fi
    fi
    if ln -s $(pwd)/$i ~/$i; then
      echo "Linked: $i" > /dev/stderr
    else
      echo "Failed on $i" > /dev/stderr
      exit 1
    fi
  fi
done

# Link oh-my-zsh custom directory
mv $ZSH_CUSTOM ~/.dotfile_backup/custom
ln -s ohmyzsh $ZSH_CUSTOM

exit 0