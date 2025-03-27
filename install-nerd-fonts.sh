#!/usr/bin/env bash

# Directory where Nerd Fonts will be cloned
NF_DIR="$HOME/nerd-fonts"
FONT_DIR="$HOME/.local/share/fonts"

# Clone with partial blob data to keep it light
if [ ! -d "$NF_DIR" ]; then
  git clone --filter=blob:none https://github.com/ryanoasis/nerd-fonts.git "$NF_DIR"
fi

cd "$NF_DIR" || exit 1

# Enable sparse-checkout for specific fonts
git sparse-checkout init --cone
git sparse-checkout set patched-fonts

# List of desired fonts
FONTS=(
  BlexMono
  CommitMono
  D2Coding
  FiraCode
  Hack
  JetBrainsMono
  Meslo
  Noto
  ProFont
  SourceCodePro
  ShureTechMono
  SpaceMono
  Terminess
  UbuntuMono
  UbuntuSans
)

# Make sure fonts dir exists
mkdir -p "$FONT_DIR"

# Install each font using Nerd Fonts script
for font in "${FONTS[@]}"; do
  echo "Installing $font..."
  ./install.sh "$font"
done

# Rebuild font cache
echo "Rebuilding font cache..."
fc-cache -fv

echo "✅ Nerd Fonts installed successfully!"
