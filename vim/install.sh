vim_bundle_dir=$HOME/.vim/bundle
mkdir -p "$vim_bundle_dir"

if [ -d "$vim_bundle_dir/vundle" ]; then
  echo "Vim Vundle directory already exists, not cloning with git."
else
  git clone https://github.com/gmarik/vundle "$vim_bundle_dir/vundle"
fi

$HOME/bin/vim -c "BundleInstall" -c "q" -c "q"
