#!/bin/sh
# Install starship prompt - https://starship.rs
if ! command -v starship >/dev/null 2>&1; then
  curl -sS https://starship.rs/install.sh | sh -s -- --yes
fi
