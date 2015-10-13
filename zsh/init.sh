#!/bin/sh
# set zsh as default shell
if ! hash zsh 2>/dev/null ; then
  brew install zsh
  chsh -s /bin/zsh
fi

# create a bin path into home and add it to $PATH
if [ ! -d ~/bin ]; then
  mkdir ~/bin  
  # link some useful shortcuts here  
  ln -s /Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl ~/bin/subl
fi
