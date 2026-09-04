# Changelog

## 1.0.0 — 2026-09-04
Initial release.
- Theme engine: whitelist extraction from `colors.toml` (both dialects), `ghostty.conf`, `alacritty.toml`, `kitty.conf`; 133/133 full palettes.
- OS-wide application: wallpaper (+dark, +lock), generated GNOME Shell theme (User Themes), GTK apps (shipped `gtk.css` or generated libadwaita color sheet), accent + light/dark, Ghostty, Neovim hook, btop, icon variants.
- Graphite: true-black monochrome OS base (shell + GTK + terminal), always one command away.
- Browse: status dashboard, swatch grid, live-preview fzf picker, preview card, author screenshots.
- Wallpaper: per-theme sets, random, rotation timer (`rotate`), day/night `schedule`.
- Library: manifest-driven `sync` (official bundle + 117 community repos, parallel shallow clones), `add`, `update`, `remove`, `credits`.
- System: idempotent `install` (hooks, timer, curated GNOME extension set, desktop polish), reversible `uninstall`, `doctor`, `icons` (pacman/yay/paru/apt/dnf), `export`/`import`, shell completions, `--json`/`--plain`.
- Packaging: npm (`colson-arch-theme`), AUR PKGBUILD, from-source installer.
