<div align="center">
<h1>Colson Arch Theme (colson-arch-theme npm) 🎨</h1>
<h2>Omarchy-grade Theming for GNOME on Arch Linux — by COLSON! 🚀</h2>
<h3>133 Omarchy themes · 660 wallpapers · one command themes the ENTIRE OS</h3>
<h3>GNOME Shell (generated) · GTK apps · Wallpaper · Accent · Ghostty · Neovim · btop · Icons</h3>
<h2>🎯 Live-preview picker · Wallpaper rotation · Day/Night scheduling · True-black Graphite base 🔥</h2>
<h2>Worldclass Desktop Experience for Engineers 💎</h2>

<p>
<a href="https://www.npmjs.com/package/colson-arch-theme"><img src="https://img.shields.io/npm/v/colson-arch-theme?style=for-the-badge&logo=npm&color=cb3837" alt="npm version"></a>
<a href="https://github.com/colson0x1/colson-arch-theme/actions/workflows/ci.yml"><img src="https://img.shields.io/github/actions/workflow/status/colson0x1/colson-arch-theme/ci.yml?style=for-the-badge&label=CI&logo=githubactions&logoColor=white" alt="CI"></a>
<img src="https://img.shields.io/badge/GNOME-45%20%E2%80%93%2050-4A86CF?style=for-the-badge&logo=gnome&logoColor=white" alt="GNOME 45–50">
<img src="https://img.shields.io/badge/Python-3.11%2B-3776AB?style=for-the-badge&logo=python&logoColor=white" alt="Python 3.11+">
<img src="https://img.shields.io/badge/dependencies-zero-000000?style=for-the-badge" alt="zero dependencies">
<img src="https://img.shields.io/badge/Arch%20%7C%20Manjaro%20%7C%20EndeavourOS%20%7C%20CachyOS-first--class-1793D1?style=for-the-badge&logo=archlinux&logoColor=white" alt="Arch family">
<a href="LICENSE"><img src="https://img.shields.io/badge/License-MIT-000000?style=for-the-badge" alt="MIT"></a>
</p>
</div>

Step into the most complete desktop theming system built for GNOME. **colson-arch-theme** takes the entire [Omarchy](https://omarchy.org) theme catalog — DHH's meticulously curated collection — and brings it to GNOME with something Omarchy itself never had to solve: it **generates a full GNOME Shell theme and a libadwaita color sheet from every palette**, so the top bar, overview, quick settings, notifications, lock screen, and every GTK app follow the theme. Not just your wallpaper. Not just your terminal. **The whole operating system.** 🔥

Engineered for hand-tuned machines by someone who runs one: it never takes your system over. A true-black monochrome base called **Graphite** is the default; every one of the 133 palettes is opt-in — one command in, one command back. One dependency-free Python file. Nothing from a theme is ever executed. Every hook is idempotent and reversible.

<a id="install-in-one-go"></a>
## ⚡ Install in One Go

```shell
npm i -g colson-arch-theme && theme install
```

Log out and back in **once** (GNOME only discovers new extensions at login), then:

```shell
theme pick
```

That's it. 🎉 Type to filter 133 themes with a live palette preview; <kbd>Enter</kbd> applies everything — GNOME Shell, GTK apps, wallpaper, accent, Ghostty, Neovim, btop, icons.

Prefer a native `pacman` package with no Node.js involved? Clone and `makepkg -si` — see [Installation](#installation).

<a id="preview"></a>
## 📸 Preview

<!-- Screenshots: theme pick mid-preview · shell recolored (moodpeak) · graphite true-black OS · theme list swatch grid -->
<!-- ![colson arch theme](https://i.imgur.com/XXXXXXX.png) -->

```
 THEME SYSTEM   active moodpeak   · 133 themes · 660 wallpapers   ·  by Colson (@colson0x1)

 OFFICIAL (22)
   catppuccin             ████████████████   3w  dark   catppuccin
   tokyo-night            ████████████████   4w  dark   tokyonight-night
   vantablack             ████████████████   2w  dark   -
 COMMUNITY (111)
 ▸ moodpeak               ████████████████   5w  dark   aether
   synthwave84            ████████████████   6w  dark   synthwave84
   futurism               ████████████████   4w  dark   -
```
*Every row carries a live true-color swatch rendered from the theme's actual palette.*

<a id="table-of-contents"></a>
## 📚 Table of Contents

- [⚡ Install in One Go](#install-in-one-go)
- [🎯 Why This Exists](#why-this-exists)
- [✨ Features](#features)
- [🛠️ Installation](#installation) — [Requirements](#requirements) · [NPM](#installation-through-npm) · [Arch Linux / pacman](#installation-on-arch-linux-with-pacman) · [From source](#installation-from-source) · [Prerequisites by distro](#prerequisites-by-distro) · [First launch](#first-launch) · [Shell completions](#shell-completions)
- [🧭 Commands](#commands)
- [🎛️ What a Switch Changes](#what-a-switch-changes)
- [🖤 Graphite — The True-Black OS](#graphite)
- [🌗 Day / Night](#day-night)
- [🖼️ Wallpaper Rotation](#wallpaper-rotation)
- [🧩 The GNOME Layer](#the-gnome-layer)
- [➕ Bring Any Omarchy Theme](#bring-any-omarchy-theme)
- [🤖 Scripting & Automation](#scripting-and-automation)
- [🏗️ Architecture](#architecture)
- [🛡️ Built for Hand-Tuned Systems](#built-for-hand-tuned-systems)
- [🐧 Compatibility](#compatibility)
- [🔄 Updating](#updating)
- [🧯 Uninstall](#uninstall)
- [🩺 Troubleshooting](#troubleshooting)
- [✅ Verified](#verified)
- [🧾 Versioning](#versioning)
- [🙏 Credits](#credits) · [📜 License](#license)

<a id="why-this-exists"></a>
## 🎯 Why This Exists

Omarchy ships the best theme catalog in Linux — and it is **Hyprland-only**. If you run GNOME, the world's most-used Linux desktop, none of it applies to you.

This project fixes that, and goes further than a color swap:

| | Omarchy (Hyprland) | colson-arch-theme (GNOME) |
|---|---|---|
| Theme catalog | 133 official + community | **the same 133 — synced from the source repos** |
| Desktop shell | Waybar / Walker / Mako | **GNOME Shell theme generated per palette** |
| Apps | GTK via theme `gtk.css` | **shipped `gtk.css` OR a generated libadwaita sheet — 133/133 coverage** |
| Terminal | Alacritty / Ghostty / Kitty | Ghostty (whitelisted color keys only) |
| Editor | Neovim (LazyVim) | Neovim (any config — one-line hook, silent fallback) |
| Picker | Super+Alt+Space menu | `theme pick` — fzf with a live palette preview card |
| Extras | menu-driven | wallpaper rotation timer · day/night schedule · export/import · doctor · `--dry-run` |
| Base state | a theme, always | **Graphite: true-black monochrome OS, palettes opt-in** |

<a id="features"></a>
## ✨ Features

- 🎨 **OS-wide theming** — wallpaper (+dark, +lock screen), generated GNOME Shell theme, GTK4/GTK3 apps, accent color, light/dark mode, Ghostty, Neovim, btop, icon variants
- 🧠 **Generated, not hand-written** — every theme gets a GNOME Shell stylesheet and a libadwaita color sheet derived from its palette; coverage is total
- 🖤 **Graphite** — true-black monochrome base for the entire OS, always one command away
- 🔍 **Live-preview picker** — fzf browser with a full palette card, sample text in the theme's own colors, <kbd>Enter</kbd> applies
- 🎛️ **Grid with swatches** — `theme list` renders a true-color swatch per theme; monochrome chrome, color only where color is the information
- 🖼️ **Wallpaper rotation** — systemd user timer, per-theme sets, `theme rotate 15`
- 🌗 **Day/Night scheduling** — `theme schedule set 07:00=catppuccin-latte 19:00=moodpeak`
- 📦 **Manifest-driven library** — themes are cloned, never vendored; `theme sync`, `add`, `update`, `remove`, `credits`
- 🛡️ **Nothing from a theme is ever executed** — colors are whitelist-extracted from data files
- 🔁 **Idempotent, reversible** — `theme install` / `theme uninstall` leave no trace
- 🧪 **`--dry-run` everywhere** — every state-changing command prints exactly what it would do and touches nothing
- 🩺 **`theme doctor`** — distro, GNOME, hooks, extensions, timers, palette coverage, `--json`
- 🐚 **Completions** for zsh, bash, fish · `--json` / `--plain` for scripting · `NO_COLOR` respected
- 🖥️ **Curated GNOME extension set** — macOS-grade dock, glass blur, Hyprland-style tiling, rounded corners, Spotlight-style search, user themes
- 🪶 **Zero dependencies** — one Python file on the standard library; GNOME and git are the only hard requirements

<a id="installation"></a>
## 🛠️ Installation

<a id="requirements"></a>
### Requirements

| Requirement | Purpose | |
|---|---|---|
| **GNOME 45 – 50** (Wayland or X11) | the desktop being themed — the only hard dependency | ✅ |
| **Python ≥ 3.11** | runs the CLI — standard library only, no packages | ✅ |
| **git** | syncs the theme library | ✅ |
| **glib2** (`gsettings`) | ships with every GNOME install | ✅ |
| **Node.js ≥ 18** | the npm install path only | npm path |
| **fzf** | `theme pick`, the live-preview picker | optional |
| **uv** or **pipx** | installs the GNOME extension set (`gnome-extensions-cli`) | optional |
| **Ghostty · Neovim · btop** | integrations — auto-detected, silently skipped when absent | optional |
| **Papirus / Yaru icons · adw-gtk-theme · Bibata cursor** | icon variants, GTK3 coverage, cursor — `theme icons` prints the exact line | optional |

<a id="installation-through-npm"></a>
### Installation through NPM (recommended)

```shell
npm i -g colson-arch-theme
theme install
```

The global install puts `theme` (and its long alias `colson-arch-theme`) on your `PATH`. `theme install` is idempotent — run it as often as you like.

<a id="installation-on-arch-linux-with-pacman"></a>
### Installation on Arch Linux with pacman

The repository ships a `PKGBUILD`. Build it and you get a real, first-class package: `/usr/bin/theme`, system-wide shell completions, declared dependencies and optional dependencies, and a clean removal through `pacman` like any other package.

```shell
sudo pacman -S --needed base-devel git
git clone https://github.com/colson0x1/colson-arch-theme.git
cd colson-arch-theme
makepkg -si
theme install
```

`makepkg` downloads the pinned release tarball from GitHub and verifies its SHA-256 before building. No Node.js on this path.

<a id="installation-from-source"></a>
### Installation from source

```shell
git clone https://github.com/colson0x1/colson-arch-theme.git
cd colson-arch-theme && ./install.sh
```

`install.sh` symlinks `bin/theme` into `~/.local/bin`, installs the manifest, and runs `theme install`. No pipe-to-shell, no `sudo`. Because it is a symlink, edits to the clone are live — this is the development loop. Flags pass straight through: `./install.sh --no-sync --no-extensions`.

<a id="prerequisites-by-distro"></a>
### Prerequisites by distro

<details>
<summary><b>🐧 Arch Linux / Manjaro / EndeavourOS / CachyOS / Garuda</b> (click to expand)</summary>

```shell
sudo pacman -S --needed python git fzf uv nodejs npm       # nodejs + npm only for the npm path
yay -S papirus-icon-theme yaru-icon-theme adw-gtk-theme bibata-cursor-theme
gsettings set org.gnome.desktop.interface cursor-theme 'Bibata-Modern-Classic'
```

</details>

<details>
<summary><b>🐧 Fedora Workstation</b> (click to expand)</summary>

```shell
sudo dnf install python3 git fzf pipx nodejs npm
theme icons          # prints the dnf line for the icon + cursor packages
```

</details>

<details>
<summary><b>🐧 Ubuntu 24.04+ / Debian 13+</b> (click to expand)</summary>

```shell
sudo apt install python3 git fzf pipx nodejs npm
theme icons          # prints the apt line for the icon + cursor packages
```

</details>

<a id="first-launch"></a>
### First launch

`theme install` is idempotent and does five things: syncs the library (official bundle + community manifest — shallow, parallel clones, no theme code executed), wires the Ghostty include and the Neovim hook, starts the wallpaper-rotation timer, installs the curated GNOME extension set, and applies the desktop polish (dock, blur, boot-to-desktop, window buttons).

**Log out and back in once** — GNOME Shell only discovers new extensions at login. Then:

```shell
theme icons        # the icon + cursor package line for pacman / yay / paru / apt / dnf
theme doctor       # every layer green?
theme pick         # go
```

The full library is about **5.5 GB** — 133 theme repositories with 660 wallpapers, many of them 4K. To start small: `theme install --no-sync`, then `theme sync --official` for the 22 official themes, and `theme sync` whenever you want the rest.

<a id="shell-completions"></a>
### Shell completions

The pacman package installs completions system-wide — nothing to do. For the npm and source paths, generate them once:

```shell
# zsh — then add  fpath=(~/.zfunc $fpath)  before compinit in ~/.zshrc
mkdir -p ~/.zfunc && theme completions zsh > ~/.zfunc/_theme

# bash
mkdir -p ~/.local/share/bash-completion/completions && theme completions bash > ~/.local/share/bash-completion/completions/theme

# fish
mkdir -p ~/.config/fish/completions && theme completions fish > ~/.config/fish/completions/theme.fish
```

<a id="commands"></a>
## 🧭 Commands

| Group | Commands |
|---|---|
| **Browse** | `theme` · `theme list [--plain\|--json]` · `theme pick` · `theme preview <name>` · `theme show <name>` |
| **Apply** | `theme <name> [random]` · `theme random` · `theme next` · `theme graphite` |
| **Wallpaper** | `theme wall <name\|random>` · `theme next-wall` · `theme rotate <min\|off>` · `theme schedule set HH:MM=theme …` |
| **Library** | `theme sync [--official]` · `theme add <git-url> [name]` · `theme update` · `theme remove <name>` · `theme credits` |
| **System** | `theme install [--no-sync] [--no-extensions]` · `theme uninstall [--purge]` · `theme icons` · `theme doctor [-v\|--json]` · `theme export` / `theme import <file>` · `theme completions <zsh\|bash\|fish>` |
| **Info** | `theme current [--json]` · `theme about [--json]` · `theme version` · `theme help [command]` |

`theme help` is a full manual with grouped sections; `theme help <command>` is a deep-dive with examples. Bare `theme` prints the status dashboard: active theme, wallpaper, rotation, schedule, library size.

> 🧪 **`--dry-run`** works on every state-changing command — `install`, `uninstall`, any theme apply, `schedule`, `rotate`, `sync`. It prints exactly what would change (gsettings writes, systemd units, clones) and touches nothing.

<a id="what-a-switch-changes"></a>
## 🎛️ What a Switch Changes

| Layer | Mechanism |
|---|---|
| **Wallpaper** | GNOME `picture-uri` + `picture-uri-dark` + lock screen, zoom-fit |
| **GNOME Shell** | `~/.themes/theme-<name>/gnome-shell/gnome-shell.css` generated from the palette — top bar, overview, quick settings, popups, notifications, search, lock — loaded via User Themes |
| **GTK apps** | the theme's `gtk.css` when shipped, otherwise a generated libadwaita sheet (`window`, `view`, `headerbar`, `sidebar`, `card`, `popover`, `accent`, `success`, `warning`, `error`) into `gtk-4.0` + `gtk-3.0` |
| **GNOME** | accent color from the theme's accent · `color-scheme` from its mode |
| **Ghostty** | palette to `~/.config/ghostty/themes/active.conf`, pulled by a one-line include — press <kbd>ctrl</kbd>+<kbd>shift</kbd>+<kbd>,</kbd> once and every open Ghostty window reloads |
| **Neovim** | `active-nvim.lua` via a one-line hook in `init.lua` — applies the theme's declared colorscheme at `VimEnter` when it is installed, clears the editor canvas (`Normal`, gutter, end-of-buffer, message area) to the terminal surface whenever theme and editor agree on light/dark, and re-aligns after any later `:colorscheme` |
| **btop** | theme file copied, `color_theme` set |
| **Icons** | the theme's declared Yaru variant or Papirus, when installed |

<a id="graphite"></a>
## 🖤 Graphite — The True-Black OS

```shell
theme graphite && theme wall futurism
```

Pure `#000000` surfaces, crisp `#edeef1` text, white accent — across the shell, every GTK app, the terminal, and the Neovim canvas inside it. The wallpaper is left alone, so the doctrine and the eye candy don't have to fight: a monochrome OS under a cinematic wallpaper.

<a id="day-night"></a>
## 🌗 Day / Night

```shell
theme schedule set 07:00=catppuccin-latte 19:00=moodpeak
theme schedule            # show the slots
theme schedule off
```

A user timer checks every five minutes and applies the latest slot at or before the current time — survives reboots, needs no daemon of its own.

<a id="wallpaper-rotation"></a>
## 🖼️ Wallpaper Rotation

```shell
theme rotate 15           # every 15 minutes, within the active theme's set (all 660 on graphite)
theme rotate off
theme next-wall           # step by hand — the timer calls exactly this
theme wall random         # any wallpaper from any theme, right now
theme wall moodpeak       # one from a specific theme's set
```

<a id="the-gnome-layer"></a>
## 🧩 The GNOME Layer

`theme install` sets up nine extensions — every one GNOME 45–50 compatible — through `gnome-extensions-cli`, installed on demand with `uv` or `pipx`. Skip the whole layer with `theme install --no-extensions`.

| Extension | Role |
|---|---|
| Dash to Dock | macOS-grade dock |
| Blur my Shell | glass blur on the panel, overview, and dock |
| Just Perfection | boot to desktop, snappier animations |
| Rounded Window Corners | rounded window chrome |
| Tiling Shell | Hyprland-style tiling layouts |
| Space Bar | workspace indicator in the top bar |
| AppIndicator Support | tray icons |
| User Themes | loads the generated GNOME Shell themes |
| Search Light | Spotlight-style search |

<a id="bring-any-omarchy-theme"></a>
## ➕ Bring Any Omarchy Theme

Any Omarchy theme repository on the internet works — not only the 133 in the manifest.

```shell
theme add https://github.com/user/omarchy-foo-theme          # clone it, remember it in your local manifest
theme add https://github.com/user/omarchy-foo-theme foo      # with an explicit name
theme preview foo                                             # the card: palette, accent, wallpapers, what it will generate
theme foo
theme remove foo                                              # official themes are protected
```

A bundle is data only: `colors.toml` (either dialect) or `ghostty.conf` / `alacritty.toml` / `kitty.conf`, plus `backgrounds/`. Colors are whitelist-extracted from those files; nothing in the repository is ever executed.

Want a theme shipped to everyone? Add one line to [`manifest/themes.txt`](manifest/themes.txt) and open a pull request:

```
name https://github.com/user/omarchy-name-theme
```

Verify first with `theme add <url>` and `theme doctor` — the theme must yield a full 16-color palette.

<a id="scripting-and-automation"></a>
## 🤖 Scripting & Automation

Every command that produces data speaks JSON; every human-facing command has a `--plain` form; every state-changing command has `--dry-run`. Errors are one line on stderr with a non-zero exit — never a traceback.

```shell
theme list --json | jq -r '.[] | select(.mode == "light") | .name'   # every light theme
theme current --json                                                  # the active theme, as data
theme doctor --json | jq '.coverage'                                  # palette coverage as data
theme moodpeak --dry-run                                              # every write it would make, none performed
theme export > ~/theme-setup.json                                     # active theme, schedule, added themes
theme import ~/theme-setup.json                                       # restore on another machine
```

| Switch | Effect |
|---|---|
| `--json` | machine-readable output on `list`, `current`, `doctor`, `about` |
| `--plain` | no color, no chrome, no credit footer — for pipes and scripts |
| `--dry-run` | print the gsettings writes, systemd units, and clones; touch nothing |
| `NO_COLOR=1` or a non-TTY | disables color automatically |
| `FORCE_COLOR=1` | forces color through a pipe |

<a id="architecture"></a>
## 🏗️ Architecture

```
theme <name>
  ├─ terminal_colors()   colors.toml (both dialects) → ghostty.conf → alacritty.toml → kitty.conf   whitelist extraction
  ├─ set_wall()          gsettings picture-uri · picture-uri-dark · screensaver
  ├─ shell_apply()       ~/.themes/theme-<name>/gnome-shell/gnome-shell.css   (@import stock resource, override colors)
  ├─ gtk_apply()         shipped gtk.css  →  or gtk_generate(): libadwaita @define-color sheet
  ├─ accent + mode       org.gnome.desktop.interface accent-color · color-scheme
  ├─ Ghostty · Neovim · btop · icons
  └─ state               ~/.config/colson-arch-theme/active
```

- **One dependency-free Python file** (`bin/theme`) ships identically via npm, the PKGBUILD, and a git clone — no runtime, no framework, nothing to break.
- The shell theme uses the `@import url("resource:///org/gnome/shell/theme/gnome-shell.css")` technique: the stock stylesheet stays authoritative for layout; only colors are overridden. If GNOME ever rejects a generated sheet, it falls back to stock. Nothing breaks.
- XDG paths throughout: library in `$XDG_DATA_HOME/colson-arch-theme/themes`, state in `$XDG_CONFIG_HOME/colson-arch-theme`, generated shell themes in `~/.themes/theme-<name>/`.
- Everything runs as your user: `gsettings`, `systemctl --user`, files under `$HOME`. Nothing touches `/` except the pacman package itself.

<a id="built-for-hand-tuned-systems"></a>
## 🛡️ Built for Hand-Tuned Systems

These are the laws this project is engineered around — the reason it can live on a production workstation:

1. **Nothing from a theme is ever executed.** Bundles are data. Only whitelisted color keys ever reach your configs.
2. **Graphite is the base; palettes are opt-in.** Your terminal doctrine survives every experiment.
3. **Every hook is idempotent and reversible.** Re-run `install` freely; `uninstall` removes every line it added.
4. **Themes are never vendored.** 5.5 GB and 111 authors' licenses stay where they belong — `theme sync` clones, `theme credits` credits.
5. **Monochrome chrome.** Color appears only where color *is* the information — the swatches.
6. **No network surprises.** The only network activity is `git clone` / `git pull` of the repositories you asked for. No telemetry, no update checks, no pipe-to-shell.

<a id="compatibility"></a>
## 🐧 Compatibility

- **Arch-first**: `theme icons` speaks `pacman` / `yay` / `paru`, the PKGBUILD declares real dependencies, the extension set is tested on Arch.
- **Every Arch flavor**: Manjaro, EndeavourOS, CachyOS, Garuda, ArcoLinux — anything with GNOME.
- **Any GNOME distro works**: Fedora Workstation, Ubuntu, Debian, openSUSE — GNOME is the only hard dependency; `theme icons` prints the `apt` / `dnf` lines.
- **Wayland and X11** — every mechanism is `gsettings`, GNOME Shell stylesheets, and GTK CSS; none of it depends on the session type.

<a id="updating"></a>
## 🔄 Updating

```shell
npm update -g colson-arch-theme       # npm path
theme update                          # git pull every theme in the library
theme doctor                          # verify the whole stack is green
```

pacman path: pull the clone and rebuild — `git pull && makepkg -si`.

<a id="uninstall"></a>
## 🧯 Uninstall

```shell
theme uninstall             # reverses hooks, timers, and GTK overrides; keeps the library
theme uninstall --purge     # also removes the library and state
```

Then drop the binary the way it came in: `npm uninstall -g colson-arch-theme` on the npm path, or remove the `colson-arch-theme` package with `pacman` on the pacman path.

<a id="troubleshooting"></a>
## 🩺 Troubleshooting

`theme doctor -v` first — it reports the distro, GNOME version, every hook, every extension, both timers, and palette coverage for all 133 themes. Then:

| Symptom | Cause · Fix |
|---|---|
| `theme: command not found` after `npm i -g` | npm's global bin directory is not on your `PATH` — `export PATH="$(npm prefix -g)/bin:$PATH"` in your shell rc |
| Top bar / overview did not recolor | User Themes is loaded at login only — log out and back in once, then apply the theme again; `theme doctor` shows whether the extension is present |
| Ghostty still shows the old palette | Ghostty re-reads its config only on reload — press <kbd>ctrl</kbd>+<kbd>shift</kbd>+<kbd>,</kbd> once; new windows do not pick it up on their own |
| Neovim looks boxed inside the terminal, or the tmux bar stops short of the edges | Ghostty paints its window padding, and the leftover strip when the cell height does not divide the window height, in the window background color. For an edge-to-edge grid set `window-padding-x = 0` and `window-padding-y = 0`, then pick `adjust-cell-height` so the cell height divides your screen height exactly (on a 1080px screen, a 24px cell gives 45 rows), and restart Ghostty — padding changes apply to new windows only. `window-padding-color = extend` is the alternative, but it stretches whatever sits at the edge, a colored tmux tab included |
| GTK3 apps ignore the theme | Install `adw-gtk-theme` — it makes GTK3 apps read the same color sheet GTK4 apps do |
| Neovim colorscheme did not change | The hook applies at `VimEnter`, so restart Neovim after a switch. It changes the scheme only when the declared one is installed (`theme preview <name>` shows which), and it always aligns the editor canvas to the terminal when both are dark or both are light |
| `theme pick` refuses to start | It needs `fzf` — `sudo pacman -S fzf` (or your distro's equivalent) |
| Extensions were skipped during `install` | `gnome-extensions-cli` is installed on demand and needs `uv` or `pipx`; install one and re-run `theme install` |
| The first `theme install` takes a while | It clones 133 repositories (about 5.5 GB); use `theme install --no-sync` and `theme sync --official` to start with 22 |
| I want my old desktop back | `theme graphite` for the monochrome base, or `theme uninstall` to reverse every hook and timer |

<a id="verified"></a>
## ✅ Verified

Every documented flow is exercised against a throwaway `$HOME` before release — install (twice, for idempotence), apply, Graphite, wallpaper, `list --plain/--json`, preview, `doctor --json`, schedule, export → import, completions, uninstall — plus ten error paths that must fail with a one-line message and a non-zero exit, never a traceback. The npm tarball is installed to a scratch prefix and run from there; the PKGBUILD is built with `makepkg` and its contents inspected.

```shell
theme doctor -v      # your own machine, any time
npm test             # parse + smoke, no GNOME required
```

CI runs on every push: compile, smoke, manifest validation, `shellcheck` on the installer.

<a id="versioning"></a>
## 🧾 Versioning

[Semantic Versioning](https://semver.org). Every release is cut from a single tagged commit, so the npm tarball and the PKGBUILD's release tarball are the same bytes. History lives in [CHANGELOG.md](CHANGELOG.md).

<a id="credits"></a>
## 🙏 Credits

- **[Omarchy](https://omarchy.org)** by DHH and the Omacom Foundation — the theme format and the official bundle.
- **Every community theme author** — run `theme credits` for the full list with repositories. This tool stands on their work.
- **The GNOME extension authors** behind the desktop layer.

<a id="license"></a>
## 📜 License

MIT © [Colson](https://github.com/colson0x1). Themes remain under their authors' licenses.

<a id="get-started"></a>
## 🚀 Get Started in One Go

```shell
npm i -g colson-arch-theme && theme install     # then log out and back in once
theme pick
```

---

<div align="center">
<h3>Made with 💎 by <a href="https://github.com/colson0x1">Colson (@colson0x1)</a></h3>
<p>Part of the <b>colson-*</b> tooling line — <a href="https://www.npmjs.com/package/colson-nvim">colson-nvim</a> · <a href="https://www.npmjs.com/package/colson-tmux">colson-tmux</a> · <b>colson-arch-theme</b></p>
<p>Peace! 🕊</p>
</div>
