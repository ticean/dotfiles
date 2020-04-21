if command -v helm >/dev/null 2>&1; then
  source <(helm completion zsh)
fi

if command -v kubectl >/dev/null 2>&1; then
  source <(kubectl completion zsh)
fi

if command -v minikube >/dev/null 2>&1; then
  source <(minikube completion zsh)
fi
