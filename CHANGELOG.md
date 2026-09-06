# Changelog

All notable changes to **colson-arch-theme** are documented here.
The format follows [Keep a Changelog](https://keepachangelog.com/en/1.1.0/), and the project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

## [1.1.1] — 2026-09-06

The app grid, the overview canvas and the dock now actually take the theme.

### Fixed
- Shell selectors are GNOME 45–50's real ones: the overview canvas (`#overviewGroup`), app grid tiles (`.overview-tile`), folders, running dots (`.app-grid-running-dot`), page dots, `#dash .dash-background`, dialog and notification buttons. 1.1.0's rules targeted class names that no longer exist, so the app grid still looked stock. The `@import` of a stylesheet resource GNOME 47+ no longer ships is gone; GNOME keeps its own stylesheet loaded underneath a user theme regardless.
- Icon and theme lookup follows `XDG_DATA_DIRS` instead of assuming `/usr/share`, and the isolated test suite is isolated from the system's icon and theme directories.

### Changed
- dash-to-dock follows the palette: its surface takes the theme background and its running dots the accent; both reset on uninstall.
- Re-applying the active theme reloads the rewritten shell stylesheet at once (User Themes only re-reads on a name change, so the name is bounced).

## [1.1.0] — 2026-09-05

The whole desktop turns at once, and it turns live.

### Added
- **Live everywhere.** After a switch, every open terminal is recolored over OSC 4/10/11/12 (Ghostty, Kitty, Alacritty, foot, WezTerm, GNOME Console/Terminal, Ptyxis, Konsole and others), every running Neovim re-runs the hook over its RPC socket, and tmux re-sources its theme. No reload, no restart, no logout. Graphite sends the OSC reset forms so each terminal returns to its own configuration.
- **Terminals.** Alacritty (`general.import`), Kitty (`include`) and foot (`include`) join Ghostty: one generated fragment per terminal, wired by `theme install` only when that terminal's config exists, removed by `theme uninstall`.
- **tmux, opt-in.** `theme target on tmux` themes the status line, window tabs, pane borders, messages and copy mode from the palette and sources it live. Off by default so a hand-built status line is never overridden.
- **Icons with accent-colored folders.** The declared Yaru variant when installed (with `-dark` on dark themes), else the variant nearest the accent; without Yaru, a user-level icon theme that inherits Papirus and swaps every folder icon for the Papirus color nearest the accent. Symlinks and an index only, no root, removed on uninstall.
- **Cursor.** Bibata Modern Ice on dark themes, Classic on light, when installed.
- **GTK3.** `adw-gtk3` / `adw-gtk3-dark` selected by mode when installed, so GTK3 apps read the same colors as libadwaita apps.
- **Browser frame.** Chromium, Chrome, Brave, Vivaldi and Edge take the theme's frame color through their own `--set-theme-color`, only while running; nothing is launched behind your back.
- **Editor theme.** VS Code, Cursor, VSCodium and Code - OSS switch `workbench.colorTheme` to the theme the bundle declares, only when that extension is already installed; nothing is ever installed. The previous value is remembered and Graphite or uninstall restores it. Only that one key is touched, comments and trailing commas survive.
- **Targets.** `theme targets` lists what a switch may touch; `theme target on|off <name>` decides. Everything is on except tmux.
- **`theme activate`.** Enables the GNOME extensions the running shell already knows (including User Themes when it was loaded but never enabled) and says exactly which ones still need one login.
- GNOME fallback desktop color follows the theme, so the lock fade and any wallpaper gap match.

### Changed
- The GNOME Shell stylesheet covers far more of the shell: translucent glass surfaces with depth, quick settings toggles and sliders, calendar, notifications, OSD, dash, app grid, search results, workspace indicator, window switcher, dialogs, switches, scrollbars, lock and login. The stock stylesheet stays authoritative for layout.
- The switch report is grouped: desktop, terminals, editors, browser, live.
- `theme install` reports hooks for every terminal and enables whatever the running shell can load now; `theme doctor` shows extension states, terminals and hooks, live targets, browsers, editors and which icon packs are missing.
- `theme uninstall` also removes the terminal fragments, the icon overlay, restores editor themes and resets the GTK, icon, cursor and fallback color settings.

### Fixed
- Color matching for icon variants and folder colors judges colorfulness by RGB chroma, so near-black and pale accents map to the right family.

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

[Unreleased]: https://github.com/colson0x1/colson-arch-theme/compare/v1.1.1...HEAD
[1.1.1]: https://github.com/colson0x1/colson-arch-theme/compare/v1.1.0...v1.1.1
[1.1.0]: https://github.com/colson0x1/colson-arch-theme/compare/v1.0.2...v1.1.0
[1.0.2]: https://github.com/colson0x1/colson-arch-theme/compare/v1.0.1...v1.0.2
[1.0.1]: https://github.com/colson0x1/colson-arch-theme/compare/v1.0.0...v1.0.1
[1.0.0]: https://github.com/colson0x1/colson-arch-theme/releases/tag/v1.0.0
