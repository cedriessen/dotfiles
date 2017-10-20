#!/usr/bin/env bash

# http://sdkman.io

# Check for SDKMAN and install it if missing
if test ! $(which sdk); then
  echo "Installing SDKMAN..."
  curl -s "https://get.sdkman.io" | bash
fi



