# Changelog

All notable changes to **colson-arch-theme** are documented here.
The format follows [Keep a Changelog](https://keepachangelog.com/en/1.1.0/), and the project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

## [1.0.2] — 2026-09-05

### Fixed
- Packaging. The `files` whitelist named the whole `bin/` directory, and npm's own rules say a path included through `files` cannot be excluded by `.npmignore` — so any stray file in that directory (Python bytecode, an editor backup) would ship. It now names `bin/theme` exactly. The redundant `.npmignore` is gone, and CI fails if the tarball ever contains anything other than the ten intended files. The npm 1.0.2 tarball carries this fix; the `v1.0.2` tag predates it by one commit.
- Neovim hook. It now applies at `VimEnter`, after every startup script, so a colorscheme set by your own plugins can no longer clobber it; it re-aligns on every later `:colorscheme`; and it clears the editor canvas (`Normal`, gutter, end-of-buffer, message area) to the terminal surface whenever the theme and the editor agree on light/dark. Neovim no longer sits in a differently colored box inside the terminal, and under Graphite the editor is true black. Scheme names are whitelisted before they reach Lua.
- Ghostty wording. Ghostty re-reads its config only on `ctrl+shift+,`; new windows do not pick a theme up on their own. Help and README say so now, and the README explains how to get an edge-to-edge terminal: zero padding plus a cell height that divides the screen height, since padding is painted in the window color and `window-padding-color = extend` stretches whatever sits at the edge.

## [1.0.1] — 2026-09-04

### Fixed
- Release alignment. The `v1.0.0` tag was cut one commit before the final 1.0.0 build that npm shipped, so a source build from the tag lacked `--dry-run` and the graceful error handling. 1.0.1 is cut from a single commit for npm and the PKGBUILD alike.

### Changed
- README rewritten around the one-command install — `npm i -g colson-arch-theme && theme install` up front and as the closing recap — with a pacman-native path through the shipped PKGBUILD, per-distro prerequisites, shell-completion setup, the GNOME extension table, a scripting reference, troubleshooting, and the versioning policy. Exact figures throughout: 133 themes (22 official, 111 community), 660 wallpapers.
- `install.sh` gained `--help`.
- This changelog adopts the Keep a Changelog format.

### Removed
- `CONTRIBUTING.md`. Adding a theme is documented in the README under "Bring Any Omarchy Theme"; the development loop is `./install.sh --no-sync`.

## [1.0.0] — 2026-09-04

Initial release.

### Added
- **Theme engine** — whitelist extraction from `colors.toml` (both dialects), `ghostty.conf`, `alacritty.toml`, `kitty.conf`; full 16-color palettes for 133/133 themes.
- **OS-wide application** — wallpaper (+dark, +lock screen), generated GNOME Shell theme (User Themes), GTK apps (shipped `gtk.css` or a generated libadwaita color sheet), accent + light/dark, Ghostty, Neovim hook, btop, icon variants.
- **Graphite** — true-black monochrome OS base (shell + GTK + terminal), always one command away.
- **Browse** — status dashboard, swatch grid, live-preview fzf picker, preview card, author screenshots.
- **Wallpaper** — per-theme sets, random, rotation timer (`rotate`), day/night `schedule`.
- **Library** — manifest-driven `sync` (official bundle + community repositories, parallel shallow clones), `add`, `update`, `remove`, `credits`.
- **System** — idempotent `install` (hooks, timer, curated GNOME extension set, desktop polish), reversible `uninstall`, `doctor`, `icons` (pacman/yay/paru/apt/dnf), `export`/`import`, shell completions for zsh/bash/fish, `--json`/`--plain`.
- **`--dry-run`** on every state-changing command; every error path exits non-zero with a one-line message, never a traceback.
- **Packaging** — npm (`colson-arch-theme`), PKGBUILD for pacman-native installs, from-source installer.

[Unreleased]: https://github.com/colson0x1/colson-arch-theme/compare/v1.0.2...HEAD
[1.0.2]: https://github.com/colson0x1/colson-arch-theme/compare/v1.0.1...v1.0.2
[1.0.1]: https://github.com/colson0x1/colson-arch-theme/compare/v1.0.0...v1.0.1
[1.0.0]: https://github.com/colson0x1/colson-arch-theme/releases/tag/v1.0.0
