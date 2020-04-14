
if (( $+commands[rbenv] ))
then
  eval "$(jenv init -)"

  # Enable the export plugin if isn't already.
  jenv plugins | grep 'export' &>/dev/null || \
    (echo "Enabling jenv export plugin." && jenv enable-plugin export)
fi
