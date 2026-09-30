#!/usr/bin/env bash
# Dotfiles installation / symlinking script
set -euo pipefail

DOTFILES_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
BACKUP_DIR="$HOME/.dotfiles-backup/$(date +%Y%m%d_%H%M%S)"

echo "==> Setting up dotfiles from $DOTFILES_DIR"

link_item() {
    local src="$1"
    local dest="$2"

    if [ -e "$dest" ] || [ -L "$dest" ]; then
        if [ "$(readlink -f "$dest" 2>/dev/null)" = "$src" ]; then
            echo " [SKIP] $dest already correctly linked."
            return
        fi
        mkdir -p "$BACKUP_DIR"
        echo " [BACKUP] Moving existing $dest to $BACKUP_DIR"
        mv "$dest" "$BACKUP_DIR/"
    fi

    mkdir -p "$(dirname "$dest")"
    ln -sf "$src" "$dest"
    echo " [LINK] $dest -> $src"
}

# Link .config items
if [ -d "$DOTFILES_DIR/.config" ]; then
    for item in "$DOTFILES_DIR/.config"/*; do
        [ -e "$item" ] || continue
        base="$(basename "$item")"
        link_item "$item" "$HOME/.config/$base"
    done
fi

# Link shell files
[ -f "$DOTFILES_DIR/.bashrc" ] && link_item "$DOTFILES_DIR/.bashrc" "$HOME/.bashrc"
[ -f "$DOTFILES_DIR/.bash_profile" ] && link_item "$DOTFILES_DIR/.bash_profile" "$HOME/.bash_profile"

# Wallpapers
if [ -d "$DOTFILES_DIR/Pictures/Wallpapers" ]; then
    mkdir -p "$HOME/Pictures/Wallpapers"
    cp -rn "$DOTFILES_DIR/Pictures/Wallpapers"/* "$HOME/Pictures/Wallpapers/" 2>/dev/null || true
    echo " [SYNC] Wallpapers copied to ~/Pictures/Wallpapers"
fi

echo "==> Dotfiles setup completed successfully!"
