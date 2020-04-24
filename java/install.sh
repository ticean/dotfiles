# jenv is installed by by Brew,
# this completes the configuration by initialzing and enabling plugins

#if ( $+commands[jenv] ); then
  eval "$(jenv init -)"

  # Enable the export plugin if isn't already.
  jenv plugins | grep 'export' &>/dev/null || \
    (echo "Enabling jenv export plugin." && jenv enable-plugin export)

  # Install java versions with jenv
  # OpenJDK (Installed by Brew, but...)
  # openjdk is keg-only, which means it was not symlinked into /usr/local,
  sudo ln -sfn /usr/local/opt/openjdk/libexec/openjdk.jdk /Library/Java/JavaVirtualMachines/openjdk.jdk
  sudo ln -sfn /usr/local/opt/openjdk@11/libexec/openjdk.jdk /Library/Java/JavaVirtualMachines/openjdk-11.jdk
  sudo ln -sfn /usr/local/opt/openjdk@13/libexec/openjdk.jdk /Library/Java/JavaVirtualMachines/openjdk-13.jdk
#fi

