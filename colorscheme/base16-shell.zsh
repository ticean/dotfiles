# Color with Base16 shell.
# See: https://github.com/chriskempson/base16-shell
BASE16_SHELL=$HOME/.config/base16-shell/
[ -n "$PS1" ] \
  && [ -s "$BASE16_SHELL/profile_helper.sh" ] \
  && eval "$("$BASE16_SHELL/profile_helper.sh")"

source $HOME/.config/base16-shell/scripts/base16-eighties.sh
