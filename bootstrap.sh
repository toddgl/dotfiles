#!/bin/sh

set -e

echo "Linking dotfiles..."

ln -sf "$PWD/.config/sway" ~/.config/sway
ln -sf "$PWD/.config/waybar" ~/.config/waybar
ln -sf "$PWD/.config/lf" ~/.config/lf
ln -sf "$PWD/.config/wal" ~/.config/wal

mkdir -p ~/.local/bin
ln -sf "$PWD/.local/bin/"* ~/.local/bin/

echo "Done. Restart sway."

