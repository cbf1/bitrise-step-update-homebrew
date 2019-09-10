#!/bin/bash -ex

if [[ "${homebrew_cleanup}" == "yes" ]]; then
  envman unset --key HOMEBREW_NO_INSTALL_CLEANUP
else
  envman add --key HOMEBREW_NO_INSTALL_CLEANUP --value 1
fi

brew update
