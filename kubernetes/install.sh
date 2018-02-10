#!/bin/sh
#
# Install Helm plugins.

HELM_PLUGIN_DIR="${HOME}/.helm/plugins"
HELM_PLUGIN_REPO=git@github.com:app-registry/appr-helm-plugin.git
HELM_DIFF_PLUGIN_REPO=git@github.com:databus23/helm-diff.git

mkdir -p "${HELM_PLUGIN_DIR}"

# Install the registry plugin.
# https://github.com/app-registry/appr-helm-plugin
[ -d "${HELM_PLUGIN_DIR}/registry" ] \
  || git clone "${HELM_PLUGIN_REPO}" "${HELM_PLUGIN_DIR}/registry"

# Install plugins
helm plugin install https://github.com/databus23/helm-diff
