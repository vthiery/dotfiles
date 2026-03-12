# dotfiles

Managed with [chezmoi](https://chezmoi.io).

## Bootstrap a new machine

```sh
sh -c "$(curl -fsLS get.chezmoi.io)" -- init --apply --branch main vthiery
```

This will:
1. Install chezmoi
2. Apply all dotfiles
3. Install mise
4. Install oh-my-zsh + zsh-autosuggestions
5. Install starship
6. Install all tools via `mise install`
