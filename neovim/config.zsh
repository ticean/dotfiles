mkdir -p ${XDG_CONFIG_HOME:=~/.config}

if [[ ! -d $XDG_CONFIG_HOME/nvim ]]; then
  ln -s ~/.vim $XDG_CONFIG_HOME/nvim
fi

if [[ ! -f $XDG_CONFIG_HOME/nvim/init.vim ]]; then
  ln -s ~/.vimrc $XDG_CONFIG_HOME/nvim/init.vim
fi
