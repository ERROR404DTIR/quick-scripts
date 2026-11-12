#!/usr/bin/env sh
# Installs all scripts into ~/.local/bin (override with PREFIX=/some/dir).
set -e
dir="${PREFIX:-$HOME/.local/bin}"
base="https://raw.githubusercontent.com/ERROR404DTIR/quick-scripts/main/bin"
mkdir -p "$dir"
for s in killport extract backup serve myip; do
  curl -fsSL "$base/$s" -o "$dir/$s"
  chmod +x "$dir/$s"
  echo "installed $s"
done
echo "Make sure $dir is in your PATH."
