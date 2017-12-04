#!/bin/sh
#
# Install Helm plugins.

HELM_PLUGIN_DIR="${HOME}/.helm/plugins"
APPR_HELM_PLUGIN_REPO=git@github.com:app-registry/appr-helm-plugin.git

mkdir -p "${HELM_PLUGIN_DIR}"

# Install the registry plugin.
# https://github.com/app-registry/appr-helm-plugin
[ -d "${HELM_PLUGIN_DIR}/registry" ] \
  || git clone "${APPR_HELM_PLUGIN_REPO}" "${HELM_PLUGIN_DIR}/registry"
