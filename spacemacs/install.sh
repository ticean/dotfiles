emacs_dir=$HOME/.emacs.d

if [ -d "$emacs_dir" ]; then
  echo "Emacs dir '$emacs_dir' already exists."
else
  git clone https://github.com/syl20bnr/spacemacs "$emacs_dir"
fi
