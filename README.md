<div align="center">
<h1>Colson Arch Theme (colson-arch-theme npm) 🎨</h1>
<h2>Omarchy-grade Theming for GNOME on Arch Linux — by COLSON! 🚀</h2>
<h3>142 themes · 133 from Omarchy + the original Colson pack · wallpapers forged from any palette · one command themes the ENTIRE OS</h3>
<h3>GNOME Shell (generated) · GTK apps · Icons & Cursor · Ghostty / Alacritty / Kitty / foot · tmux · Neovim · btop · Browser · Editors</h3>
<h2>⚡ LIVE — every open terminal, every Neovim, tmux and the browser frame turn the instant you switch ⚡</h2>
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

And it is **live**. Switch a theme and every open terminal recolors over OSC, every running Neovim re-themes over RPC, tmux re-sources, the browser frame follows, the editor follows, folders take the accent — in about a second, with no reload, no restart and no logout. Omarchy needs Alacritty to reload a file; macOS cannot do this at all.

Engineered for hand-tuned machines by someone who runs one: it never takes your system over. A true-black monochrome base called **Graphite** is the default; every one of the 133 palettes is opt-in — one command in, one command back. One dependency-free Python file. Nothing from a theme is ever executed. Nothing is launched or installed behind your back. Every hook is idempotent and reversible, and `theme targets` decides exactly what a switch may touch.

<a id="install-in-one-go"></a>
## ⚡ Install in One Go

```shell
npm i -g colson-arch-theme && theme install
```

Log out and back in **once** (GNOME only discovers new extensions at login), then:

```shell
theme pick
```

That's it. 🎉 Type to filter 142 themes with a live palette preview; <kbd>Enter</kbd> applies everything — GNOME Shell, GTK apps, wallpaper, accent, Ghostty, Neovim, btop, icons.

Prefer a native `pacman` package with no Node.js involved? Clone and `makepkg -si` — see [Installation](#installation).

<a id="preview"></a>
## 📸 Preview

<!-- Screenshots: theme pick mid-preview · shell recolored (moodpeak) · graphite true-black OS · theme list swatch grid -->
<!-- ![colson arch theme](https://i.imgur.com/XXXXXXX.png) -->

```
 THEME SYSTEM   active hyperscale   · 142 themes · 696 wallpapers   ·  by Colson (@colson0x1)

 OFFICIAL (22)
   catppuccin             ████████████████   3w  dark   catppuccin
   tokyo-night            ████████████████   4w  dark   tokyonight-night
   vantablack             ████████████████   2w  dark   -
 COLSON PACK (9)
 ▸ hyperscale             ████████████████   4w  dark   tokyonight
   phosphor               ████████████████   4w  dark   -
   cupertino              ████████████████   4w  light  github_light
 COMMUNITY (111)
   moodpeak               ████████████████   5w  dark   aether
   synthwave84            ████████████████   6w  dark   synthwave84
   futurism               ████████████████   4w  dark   -
```
*Every row carries a live true-color swatch rendered from the theme's actual palette.*

```
 catppuccin   dark · accent blue   (open windows recolored; ctrl+shift+, makes new Ghostty windows match)
   desktop    wallpaper set · shell generated · gtk generated · adw-gtk3-dark · icons colson-arch-theme-papirus-blue-dark · cursor Bibata-Modern-Ice
   terminals  ghostty 20 keys · alacritty yes · kitty yes · foot yes
   editors    nvim catppuccin-nvim · btop yes · vscode Catppuccin Mocha → Cursor
   browser    chromium, google-chrome-stable
   live       3 terminals · 2 neovim
```
*A switch report: every layer it touched, and how many open terminals and Neovims turned live.*

<a id="table-of-contents"></a>
## 📚 Table of Contents

- [⚡ Install in One Go](#install-in-one-go)
- [🎯 Why This Exists](#why-this-exists)
- [✨ Features](#features)
- [🛠️ Installation](#installation) — [Requirements](#requirements) · [NPM](#installation-through-npm) · [Arch Linux / pacman](#installation-on-arch-linux-with-pacman) · [From source](#installation-from-source) · [Prerequisites by distro](#prerequisites-by-distro) · [First launch](#first-launch) · [Shell completions](#shell-completions)
- [🧭 Commands](#commands)
- [🎛️ What a Switch Changes](#what-a-switch-changes)
- [⚡ Live Everywhere](#live-everywhere)
- [🎚️ Targets](#targets)
- [📁 Icons, Folders and Cursor](#icons-folders-and-cursor)
- [🖤 Graphite — The True-Black OS](#graphite)
- [🌗 Day / Night](#day-night)
- [🖼️ Wallpaper Rotation](#wallpaper-rotation)
- [🧩 The GNOME Layer](#the-gnome-layer)
- [➕ Bring Any Omarchy Theme](#bring-any-omarchy-theme)
- [🧬 The Colson Pack](#the-colson-pack)
- [🔨 Forge — Wallpapers From the Palette](#forge)
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
| Theme catalog | 133 official + community | **the same 133 — synced from the source repos — plus nine original Colson pack themes** |
| Wallpapers | the photos each theme ships | those, **plus eight engineering styles forged from any theme's palette**: topology, rack, phosphor, circuit, spectrum, grid, contour, lamport |
| Desktop shell | Waybar / Walker / Mako | **GNOME Shell theme generated per palette** |
| Apps | GTK via theme `gtk.css` | **shipped `gtk.css` OR a generated libadwaita sheet — 133/133 coverage** |
| Terminals | Alacritty / Ghostty / Kitty | Ghostty · Alacritty · Kitty · foot (whitelisted color keys only) |
| Live switching | Alacritty re-reads its file | **every open terminal (OSC), every running Neovim (RPC), tmux, browser frame — instantly** |
| Icons | Yaru variant | Yaru variant, or **Papirus with every folder recolored to the accent** · Bibata cursor by light/dark |
| Browser | Chromium theme color | Chromium / Chrome / Brave / Vivaldi / Edge frame color — handed to a running browser only |
| Editors | Neovim (LazyVim) · VS Code with extension install | Neovim (any config) · VS Code / Cursor / VSCodium — only when the extension is already installed, restored by Graphite |
| Multiplexer | — | tmux status line, borders, messages, copy mode (opt-in) |
| Control | — | `theme targets` — choose what a switch may touch |
| Picker | Super+Alt+Space menu | `theme pick` — fzf with a live palette preview card |
| Extras | menu-driven | wallpaper rotation timer · day/night schedule · export/import · doctor · `--dry-run` |
| Base state | a theme, always | **Graphite: true-black monochrome OS, palettes opt-in** |

<a id="features"></a>
## ✨ Features

- ⚡ **Live everywhere** — open terminals recolor over OSC, running Neovims re-theme over RPC, tmux re-sources, the browser frame and editor follow; nothing to reload
- 🎨 **OS-wide theming** — wallpaper (+dark, +lock screen), generated GNOME Shell theme, GTK4/GTK3 apps, accent color, light/dark mode, fallback desktop color, Ghostty / Alacritty / Kitty / foot, tmux, Neovim, btop
- 📁 **Icons that follow the accent** — the declared Yaru variant, or Papirus with every folder recolored to the accent through a user-level overlay; Bibata cursor by light/dark
- 🌐 **Browser and editor** — Chromium-family frame color while the browser runs; VS Code / Cursor / VSCodium theme when its extension is already installed, restored by Graphite
- 🎚️ **Targets** — `theme targets` lists what a switch may touch; turn any layer off, or tmux on
- 🔨 **Forge** — `theme forge` renders original wallpapers from any theme's palette in eight engineering styles, deterministic and offline, 4K PNG
- 🧬 **The Colson pack** — nine original themes: hacker culture, hyperscale, consensus, boardroom, Bay fog, golden hour, Cupertino light, red team
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
| **librsvg** (`rsvg-convert`) | renders forged wallpapers to 4K PNG; without it GNOME uses the SVG directly | optional |
| **uv** or **pipx** | installs the GNOME extension set (`gnome-extensions-cli`) | optional |
| **Ghostty · Alacritty · Kitty · foot · tmux · Neovim · btop** | integrations — auto-detected, silently skipped when absent; tmux is opt-in | optional |
| **Chromium · Chrome · Brave · VS Code · Cursor · VSCodium** | browser frame color and editor theme — auto-detected | optional |
| **Papirus / Yaru icons · adw-gtk-theme · Bibata cursor** | accent-colored folders, GTK3 coverage, cursor — `theme icons` prints the exact line | optional |

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

`theme install` enables every extension the running shell can already load. GNOME only discovers **newly installed** extension folders at login, so the first install ends with **log out and back in once**; `theme activate` tells you precisely which ones are waiting for that. Then:

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
| **Wallpaper** | `theme wall <name\|random>` · `theme next-wall` · `theme rotate <min\|off>` · `theme schedule set HH:MM=theme …` · `theme forge [name\|all] [--styles …] [--size WxH]` |
| **Library** | `theme sync [--official]` · `theme add <git-url> [name]` · `theme update` · `theme remove <name>` · `theme credits` |
| **System** | `theme install [--no-sync] [--no-extensions]` · `theme activate` · `theme extensions [--upstream]` · `theme targets` / `theme target on\|off <name>` · `theme uninstall [--purge]` · `theme icons` · `theme doctor [-v\|--json]` · `theme export` / `theme import <file>` · `theme completions <zsh\|bash\|fish>` |
| **Info** | `theme current [--json]` · `theme about [--json]` · `theme version` · `theme help [command]` |

`theme help` is a full manual with grouped sections; `theme help <command>` is a deep-dive with examples. Bare `theme` prints the status dashboard: active theme, wallpaper, rotation, schedule, library size.

> 🧪 **`--dry-run`** works on every state-changing command — `install`, `uninstall`, any theme apply, `schedule`, `rotate`, `sync`. It prints exactly what would change (gsettings writes, systemd units, clones) and touches nothing.

<a id="what-a-switch-changes"></a>
## 🎛️ What a Switch Changes

| Layer | Mechanism |
|---|---|
| **Wallpaper** | GNOME `picture-uri` + `picture-uri-dark` + lock screen, zoom-fit |
| **GNOME Shell** | `~/.themes/theme-<name>/gnome-shell/gnome-shell.css` generated from the palette — top bar, the overview canvas behind the app grid, app tiles, folders and running dots, dash and dash-to-dock, quick settings, menus, calendar, notifications, dialogs, switcher, lock — loaded via User Themes and reloaded on every switch |
| **GTK apps** | the theme's `gtk.css` when shipped, otherwise a generated libadwaita sheet (`window`, `view`, `headerbar`, `sidebar`, `card`, `popover`, `accent`, `success`, `warning`, `error`) into `gtk-4.0` + `gtk-3.0` · `adw-gtk3` / `adw-gtk3-dark` selected by mode when installed |
| **GNOME** | accent color from the theme's accent · `color-scheme` from its mode · fallback desktop color behind the wallpaper and lock fade |
| **Icons & cursor** | the declared Yaru variant (`-dark` on dark themes), else the variant nearest the accent; without Yaru, a Papirus overlay with every folder in the accent's color · Bibata Modern Ice on dark, Classic on light |
| **Terminals** | Ghostty include · Alacritty `general.import` · Kitty `include` · foot `include` — one generated fragment each, and every **open** window recolors instantly over OSC; <kbd>ctrl</kbd>+<kbd>shift</kbd>+<kbd>,</kbd> makes **new** Ghostty windows match |
| **tmux** | opt-in (`theme target on tmux`): status line, window tabs, pane borders, messages, copy mode — sourced live |
| **Neovim** | `active-nvim.lua` via a one-line hook in `init.lua` — the declared colorscheme at `VimEnter` when installed, the canvas (`Normal`, gutter, end-of-buffer, message area) cleared to the terminal surface whenever theme and editor agree on light/dark, re-aligned after any `:colorscheme` — and every running instance re-themed over RPC |
| **btop** | theme file copied, `color_theme` set |
| **Browser** | Chromium / Chrome / Brave / Vivaldi / Edge frame color through the browser's own `--set-theme-color`, only while it runs |
| **Editors** | VS Code / Cursor / VSCodium / Code - OSS `workbench.colorTheme` when the bundle's extension is already installed; the previous value is remembered and Graphite restores it |

<a id="live-everywhere"></a>
## ⚡ Live Everywhere

A switch does not leave you a list of things to reload. In about a second:

| Surface | How it turns live |
|---|---|
| Open terminals | OSC 4 (16 slots), 10, 11, 12 and 17 written to the pty of every shell a running terminal emulator owns — Ghostty, Kitty, Alacritty, foot, WezTerm, GNOME Console / Terminal, Ptyxis, Konsole, Tilix, Black Box, Rio, Contour, Warp. Graphite sends the reset forms, so each terminal returns to its own config |
| Running Neovims | `nvim --server <socket> --remote-expr` re-runs the hook in every instance found under `$XDG_RUNTIME_DIR`. No keys are sent; insert mode is never disturbed |
| tmux | `tmux source-file` of the generated theme (when the tmux target is on) |
| GNOME Shell | User Themes switches stylesheets live |
| Browser | the browser's own IPC applies the frame color to the running instance |
| Editors | VS Code and Cursor watch `settings.json` and re-theme themselves |

What still needs a moment of yours: a **new** Ghostty window uses the config Ghostty loaded at startup, so press <kbd>ctrl</kbd>+<kbd>shift</kbd>+<kbd>,</kbd> once after a switch; GTK apps read `gtk.css` when they start; btop reads its theme on launch. Extensions installed after login need one logout, and `theme activate` names them.

<a id="targets"></a>
## 🎚️ Targets

Every layer is a target you can switch off — or on, for the opt-in ones. Nothing else changes; `theme <name>` simply skips what you turned off.

```shell
theme targets                 # the list, with on/off and what each one touches
theme target off browser      # never touch the browser frame
theme target on tmux          # theme the tmux status line too (then: theme install, theme <name>)
```

| Target | Default | Touches |
|---|---|---|
| `wallpaper` | on | GNOME wallpaper, dark variant, lock screen |
| `shell` | on | generated GNOME Shell theme via User Themes |
| `gtk` | on | GTK4/GTK3 apps: shipped `gtk.css` or generated libadwaita colors; `adw-gtk3` by mode |
| `accent` | on | GNOME accent color, light/dark `color-scheme`, fallback desktop color |
| `icons` | on | Yaru variant, or Papirus with accent-colored folders |
| `cursor` | on | Bibata Ice on dark, Classic on light |
| `ghostty` · `alacritty` · `kitty` · `foot` | on | that terminal's palette fragment |
| `tmux` | **off** | status line, borders, messages, copy mode — your own status design wins by default |
| `nvim` | on | Neovim hook |
| `btop` | on | btop theme |
| `browser` | on | Chromium-family frame color, running browsers only |
| `vscode` | on | VS Code-family `workbench.colorTheme`, only when the extension is installed |
| `live` | on | the instant recolor pass |

<a id="icons-folders-and-cursor"></a>
## 📁 Icons, Folders and Cursor

Most bundles declare a Yaru icon variant (`Yaru-blue`, `Yaru-magenta`, `Yaru-sage`, …). When Yaru is installed, that variant is used, `-dark` on dark themes; when a bundle declares none, the variant nearest the accent is chosen. Without Yaru, Papirus does something Omarchy never had: a **user-level icon theme** is generated under `~/.local/share/icons/` that inherits `Papirus-Dark` (or `Papirus` on light themes) and points every folder icon at the Papirus folder color nearest the accent — blue folders for Catppuccin, violet for a purple theme, white for Graphite. Only symlinks and an `index.theme` are written; no root, no files modified, removed by `theme uninstall`. The cursor follows the mode: Bibata Modern Ice (white) on dark themes, Bibata Modern Classic (black) on light ones.

```shell
theme icons        # prints the package line: Papirus + Yaru icons, adw-gtk3, Bibata — for your package manager
```

<a id="graphite"></a>
## 🖤 Graphite — The True-Black OS

```shell
theme graphite && theme wall futurism
```

Pure `#000000` surfaces, crisp `#edeef1` text, white accent — across the shell, every GTK app, the terminals, the Neovim canvas, the browser frame, white folders on Papirus, and tmux when it is a target; editor themes go back to yours. The wallpaper is left alone, so the doctrine and the eye candy don't have to fight: a monochrome OS under a cinematic wallpaper.

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

`theme install` sets up nine extensions through `gnome-extensions-cli`, installed on demand with `uv` or `pipx`, and enables every one the running shell can already load. GNOME learns about newly installed extension folders only at login, and it refuses an extension whose metadata does not list your GNOME release. Authors often support a new release on their default branch weeks before it reaches extensions.gnome.org, so `theme extensions` checks the author's repository for each out-of-date extension, and `theme extensions --upstream` installs that build when it is a plain extension tree: the tree is copied in and its schemas compiled, exactly what the author's own install does, nothing from the repository is run, and GNOME's version check is never switched off. `theme activate` and `theme doctor` report both cases by name. Skip the whole layer with `theme install --no-extensions`.

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

<a id="the-colson-pack"></a>
## 🧬 The Colson Pack

Omarchy's catalog is someone else's taste. These nine are mine, shipped as their own bundle collection at [colson0x1/colson-theme-pack](https://github.com/colson0x1/colson-theme-pack) and part of the default library. Every one is a complete bundle: a 16-color palette, an icon variant, a browser frame color, an editor theme where one fits, and four wallpapers forged from the palette itself — no stock imagery anywhere.

| Theme | Mode | Accent | The room |
|---|---|---|---|
| `phosphor` | dark | `#3DFF8A` | DEF CON after midnight — true black, P1-phosphor green, a cluster log that never stops scrolling |
| `amber` | dark | `#FFB000` | the amber CRT in the machine room — warm monochrome, one glowing rail |
| `hyperscale` | dark | `#34C6FF` | billions of requests — data-center navy, status-LED cyan, rack rows and replication rings |
| `quorum` | dark | `#E0B45A` | consensus — slate and teal with a gold quorum accent, vector clocks and hash rings |
| `platinum` | dark | `#D9C8A9` | the boardroom — near-black, warm whites, one champagne line |
| `fog` | dark | `#8FB3C9` | Bay Area, 6 a.m. — cool grey-blue, soft contours, the sun behind the marine layer |
| `golden` | dark | `#FF9F43` | Palo Alto golden hour — warm dark, sunset orange, the last commit before dinner |
| `cupertino` | light | `#0A6CFF` | aluminum and daylight — graphite type, system blue, the design studio |
| `zeroday` | dark | `#FF2D55` | red team — black and crimson, glowing traces, a waterfall with too many carriers |

```shell
theme hyperscale        # or: theme pick — the pack has its own group
```

<a id="forge"></a>
## 🔨 Forge — Wallpapers From the Palette

Any theme, not only the pack. `theme forge` takes a theme's palette and renders original wallpapers in eight styles, deterministic per theme and style, offline, as resolution-independent SVG rendered to 4K PNG when `rsvg-convert` is installed. They join that theme's wallpaper set through an overlay under `_forge/`, so a third-party bundle is never written to and `theme wall <name>` draws from both.

| Style | What it draws |
|---|---|
| `topology` | regions of services, replication paths with packets in flight, a consistent-hashing ring with vnodes and rf=3 arcs |
| `rack` | a 42U data-center row — eight racks, units, cable trays, status LEDs with the accent lit here and there |
| `phosphor` | a scrolling cluster log on a scan-lined CRT: raft terms, ISR changes, p99s, key rotations, your username at the prompt |
| `circuit` | PCB traces routed Manhattan-style around ICs, vias, silkscreen labels, glowing power rails |
| `spectrum` | an SDR view — spectrum trace, carriers, a waterfall with dropouts and bursts |
| `grid` | golden-ratio minimalism — a fine grid, one accent rule, corner marks, coordinates |
| `contour` | terrain contours from a synthetic heightfield under a low sun — Bay fog |
| `lamport` | happens-before across six processes, vector clocks, a consistent cut |

```shell
theme forge                                   # the active theme, all eight styles, 3840×2160 PNG
theme forge fog --styles contour,grid         # two styles for one theme
theme forge phosphor --seed 7                 # a different variation of the same palette
theme forge all                               # SVG for every theme in the library
theme forge void --out ~/Pictures/void        # render somewhere else entirely
```

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
theme <name>                                  every step gated by `theme targets`
  ├─ terminal_colors()   colors.toml (both dialects) → ghostty.conf → alacritty.toml → kitty.conf   whitelist extraction
  ├─ set_wall()          gsettings picture-uri · picture-uri-dark · screensaver · primary-color
  ├─ shell_apply()       ~/.themes/theme-<name>/gnome-shell/gnome-shell.css   (layered over the stock sheet) · dock_apply() dash-to-dock colors
  ├─ gtk_apply()         shipped gtk.css  →  or gtk_generate(): libadwaita @define-color sheet · adw-gtk3 by mode
  ├─ icons_apply()       Yaru variant  →  or papirus_overlay(): ~/.local/share/icons/<overlay>/ with accent folders
  ├─ cursor_apply()      Bibata by mode
  ├─ fragments           ghostty · alacritty · kitty · foot · tmux (opt-in)
  ├─ nvim_hook_write()   ~/.config/colson-arch-theme/active-nvim.lua
  ├─ forge_render()      palette → SVG (8 styles) → rsvg-convert → 4K PNG, into _forge/<name>/backgrounds (theme forge)
  ├─ browsers_apply()    --set-theme-color to running Chromium-family browsers
  ├─ editors_apply()     workbench.colorTheme where the extension is installed
  ├─ state               ~/.config/colson-arch-theme/active
  └─ live                terminals_live() OSC → nvim_live() RPC → tmux_live()
```

- **One dependency-free Python file** (`bin/theme`) ships identically via npm, the PKGBUILD, and a git clone — no runtime, no framework, nothing to break.
- GNOME always keeps its own stylesheet loaded underneath a user theme, so the generated sheet only layers the palette's color, translucency and depth on top, written against GNOME 45–50's real selectors: `#overviewGroup` for the app grid canvas, `.overview-tile` for app icons, `.app-folder`, `.app-grid-running-dot`, `#dash .dash-background`, the quick settings, menus, dialogs, lock. A rule the shell rejects is dropped, never fatal. dash-to-dock takes the theme background for its surface and the accent for its running dots.
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
7. **Nothing runs behind your back.** Browsers are never launched to be recolored, editor extensions are never installed, tmux is opt-in, and every layer can be switched off.

<a id="compatibility"></a>
## 🐧 Compatibility

- **Arch-first**: `theme icons` speaks `pacman` / `yay` / `paru`, the PKGBUILD declares real dependencies, the extension set is tested on Arch.
- **Every Arch flavor**: Manjaro, EndeavourOS, CachyOS, Garuda, ArcoLinux — anything with GNOME.
- **Any GNOME distro works**: Fedora Workstation, Ubuntu, Debian, openSUSE — GNOME is the only hard dependency; `theme icons` prints the `apt` / `dnf` lines.
- **Wayland and X11** — every mechanism is `gsettings`, GNOME Shell stylesheets, and GTK CSS; none of it depends on the session type.
- **Any terminal that speaks OSC 4/10/11/12** recolors live, whether or not it has a config fragment: Ghostty, Kitty, Alacritty, foot, WezTerm, GNOME Console and Terminal, Ptyxis, Konsole, Tilix, Black Box, Rio, Contour, Warp.

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
theme uninstall             # reverses every hook (Ghostty, Neovim, Alacritty, Kitty, foot, tmux), timers, GTK overrides,
                            # the icon overlay and the gtk/icon/cursor settings; restores editor themes; keeps the library
theme uninstall --purge     # also removes the library and state
```

Then drop the binary the way it came in: `npm uninstall -g colson-arch-theme` on the npm path, or remove the `colson-arch-theme` package with `pacman` on the pacman path.

<a id="troubleshooting"></a>
## 🩺 Troubleshooting

`theme doctor -v` first — it reports the distro, GNOME version, every hook, every extension, both timers, and palette coverage for all 142 themes. Then:

| Symptom | Cause · Fix |
|---|---|
| `theme: command not found` after `npm i -g` | npm's global bin directory is not on your `PATH` — `export PATH="$(npm prefix -g)/bin:$PATH"` in your shell rc |
| Top bar / overview did not recolor | Run `theme activate` — it enables User Themes when GNOME has already loaded it and names the extensions that still need one logout. After the login, apply the theme once more |
| An extension is "out of date" | GNOME refuses a build whose metadata does not list its release. `theme extensions` shows whether the author's repository already declares yours; `theme extensions --upstream` installs that build and it loads at the next login. If the author has not caught up either, it is genuinely waiting on them |
| Icons, folders or cursor did not change | No icon or cursor pack is installed; `theme icons` prints the package line. Folder recoloring needs Papirus, the cursor needs Bibata, GTK3 coverage needs `adw-gtk3` |
| Browser frame did not change | The color is handed only to a running browser, never to a launched one; switch again while it runs, or leave it on the next switch |
| Editor theme did not change | The bundle's extension is not installed in that editor, and nothing is ever installed for you; the report says so by name |
| I don't want a layer touched | `theme target off <name>` — see [Targets](#targets) |
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

CI runs on every push: compile, smoke, an exact check of the tarball's contents, manifest validation, `shellcheck` on the installer. The live layer, the icon overlay, the terminal hooks and the editor integration are exercised in an isolated home with stubbed system commands, so nothing in the suite can touch a real desktop.

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
