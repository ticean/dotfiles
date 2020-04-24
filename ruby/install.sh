if test "$(command -v rbenv)"; then
  echo "Installing latest Ruby via rbenv-build, if not install already..." >&2
  LATEST_RUBY_VERSION=$(rbenv install -l | grep -v - | tail -1)

  rbenv install --skip-existing "$LATEST_RUBY_VERSION"
  rbenv global "$LATEST_RUBY_VERSION"
  rbenv rehash

  unset LATEST_RUBY_VERSION
fi
