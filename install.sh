#!/usr/bin/env bash
# colson-arch-theme — from-source installer (no curl-pipe, no sudo). by Colson (@colson0x1)
set -euo pipefail

usage() {
  cat <<'EOF'
colson-arch-theme — from-source installer

  ./install.sh                    link bin/theme into ~/.local/bin, install the manifest, run `theme install`
  ./install.sh --no-sync          same, but skip the theme library sync for now
  ./install.sh --no-extensions    same, but skip the GNOME extension set
  ./install.sh --help             this text

The link is a symlink, so edits to this clone are live. Nothing here needs sudo.
EOF
}

case "${1:-}" in
  -h|--help) usage; exit 0 ;;
esac

HERE="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
BIN="${XDG_BIN_HOME:-$HOME/.local/bin}"
DATA="${XDG_DATA_HOME:-$HOME/.local/share}/colson-arch-theme"
mkdir -p "$BIN" "$DATA"
ln -sfn "$HERE/bin/theme" "$BIN/theme"
cp -f "$HERE/manifest/themes.txt" "$DATA/manifest.txt"
case ":$PATH:" in *":$BIN:"*) ;; *) echo "note: add $BIN to your PATH" ;; esac
echo "linked: $BIN/theme → $HERE/bin/theme"
exec "$BIN/theme" install "$@"
