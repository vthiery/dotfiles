#!/bin/sh
# Install all tools declared in mise config
export PATH="$HOME/.local/bin:$PATH"

# Register asdf plugins not in the default mise registry
mise plugin add stratus-red-team https://github.com/asdf-community/asdf-stratus-red-team.git
mise plugin add teleport-ent https://github.com/mise-plugins/mise-teleport-ent.git

mise install
