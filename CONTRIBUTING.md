# Contributing

## Add a theme
One line in `manifest/themes.txt`:
```
name https://github.com/user/omarchy-name-theme
```
Rules: the repo must be an Omarchy theme bundle (`colors.toml` or `ghostty.conf`/`alacritty.toml`/`kitty.conf`, plus `backgrounds/`). Verify locally with `theme add <url>` then `theme doctor` — the theme must yield a full 16-color palette. No theme code is ever executed by this tool; bundles are data only.

## Develop
```
git clone https://github.com/colson0x1/colson-arch-theme && cd colson-arch-theme
./install.sh --no-sync        # symlinks bin/theme → ~/.local/bin/theme, so edits are live
theme doctor -v
```
`bin/theme` is a single dependency-free Python 3.11+ file on purpose — it ships identically via npm, the AUR, and a git clone. Keep it that way.

## Style
- Python: standard library only; keep functions small; every hook idempotent and reversible.
- Output: monochrome chrome (bold/dim), color only where color is the information (swatches). No emoji.
- Commits: Conventional Commits (`feat:`, `fix:`, `docs:`, `build:`, `ci:`, `chore:`), imperative subject, meaningful body for non-trivial changes.

## Pull requests
1. `npm test` passes (compile + smoke).
2. `theme doctor` is green on a GNOME machine.
3. If you touched theming output, include a screenshot.
