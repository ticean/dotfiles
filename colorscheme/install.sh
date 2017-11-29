#!/bin/sh
#
# Install Colors
# Does the legwork to install the nice colorschemes that I like.

BASE16_SHELL_SRC=git@github.com:chriskempson/base16-shell.git
BASE16_ITERM2_SRC=git@github.com:martinlindhe/base16-iterm2.git

COLOR_DIR="${HOME}/.config"
mkdir -p "$COLOR_DIR"

[ -d "${COLOR_DIR}/base16-shell" ] \
  || git clone "${BASE16_SHELL_SRC}" "${COLOR_DIR}/base16-shell"

[ -d "${COLOR_DIR}/base16-iterm2" ] \
  || git clone "${BASE16_ITERM2_SRC}" "${COLOR_DIR}/base16-iterm2"
