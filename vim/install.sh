vim_bundle_dir="$HOME/.vim/bundle"
mkdir -p "$vim_bundle_dir"

if [ -d "$vim_bundle_dir/vundle" ]; then
  echo "Vim Vundle directory already exists, not cloning with git. Using existing repo."
else
  git clone https://github.com/gmarik/vundle "$vim_bundle_dir/vundle"
fi

echo "Cleaning Vim Bundle."
vim -c "BundleClean" -c "q" -c "q"

echo "Installing Vim Bundle."
vim -c "BundleInstall" -c "q" -c "q"

echo "Updating Vim Bundle."
vim -c "BundleUpdate" -c "q" -c "q"
