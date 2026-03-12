#!/bin/sh
# Install mise - https://mise.jdx.dev
if ! command -v mise >/dev/null 2>&1; then
  curl https://mise.run | sh
fi
