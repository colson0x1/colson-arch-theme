<div align="center">
<h1>Colson Arch Theme (colson-arch-theme npm) 🎨</h1>
<h2>Omarchy-grade Theming for GNOME on Arch Linux — by COLSON! 🚀</h2>
<h3>133+ Omarchy themes · 660+ wallpapers · one command themes the ENTIRE OS</h3>
<h3>GNOME Shell (generated) · GTK apps · Wallpaper · Accent · Ghostty · Neovim · btop · Icons</h3>
<h2>🎯 Live-preview picker · Wallpaper rotation · Day/Night scheduling · True-black Graphite base 🔥</h2>
<h2>Worldclass Desktop Experience for Engineers 💎</h2>

<p>
<a href="https://www.npmjs.com/package/colson-arch-theme"><img src="https://img.shields.io/npm/v/colson-arch-theme?style=for-the-badge&logo=npm&color=cb3837" alt="npm version"></a>
<a href="https://aur.archlinux.org/packages/colson-arch-theme"><img src="https://img.shields.io/badge/AUR-colson--arch--theme-1793D1?style=for-the-badge&logo=archlinux&logoColor=white" alt="AUR"></a>
<img src="https://img.shields.io/badge/GNOME-45%20%E2%80%93%2050-4A86CF?style=for-the-badge&logo=gnome&logoColor=white" alt="GNOME 45–50">
<img src="https://img.shields.io/badge/Python-3.11%2B-3776AB?style=for-the-badge&logo=python&logoColor=white" alt="Python 3.11+">
<img src="https://img.shields.io/badge/Arch%20%7C%20Manjaro%20%7C%20EndeavourOS%20%7C%20CachyOS-first--class-1793D1?style=for-the-badge" alt="Arch family">
<img src="https://img.shields.io/badge/License-MIT-000000?style=for-the-badge" alt="MIT">
</p>
</div>

Step into the most complete desktop theming system ever built for GNOME. **colson-arch-theme** takes the entire [Omarchy](https://omarchy.org) theme catalog — DHH's legendary, meticulously curated collection — and brings it to GNOME with something Omarchy itself never had to solve: it **generates a full GNOME Shell theme and a libadwaita color sheet from every palette**, so the top bar, overview, quick settings, notifications, lock screen, and every GTK app follow the theme. Not just your wallpaper. Not just your terminal. **The whole operating system.** 🔥

Engineered for hand-tuned machines by someone who runs one: it never takes your system over. A true-black monochrome base called **Graphite** is the default; every one of the 133 palettes is opt-in — one command in, one command back.

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

## ⚡ TL;DR — One Command

```bash
npm i -g colson-arch-theme && theme install
```

Then log out and back in once (GNOME only scans for new extensions at login), and:

```bash
theme pick            # browse 133 themes with a live preview — Enter applies EVERYTHING
theme moodpeak        # or apply directly: shell · GTK · wallpaper · accent · Ghostty · nvim · btop · icons
theme graphite        # the whole OS in true black and white
theme random          # roulette 🎲
```

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
| Extras | — | wallpaper rotation timer · day/night schedule · export/import · doctor |
| Base state | a theme, always | **Graphite: true-black monochrome OS, palettes opt-in** |

## ✨ Features

- 🎨 **OS-wide theming** — wallpaper (+dark, +lock screen), generated GNOME Shell theme, GTK4/GTK3 apps, accent color, light/dark mode, Ghostty, Neovim, btop, icon variants
- 🧠 **Generated, not hand-written** — every theme gets a GNOME Shell stylesheet and a libadwaita color sheet derived from its palette; coverage is total
- 🖤 **Graphite** — true-black monochrome base for the entire OS, always one command away
- 🔍 **Live-preview picker** — fzf browser with a full palette card, sample text in the theme's own colors, Enter applies
- 🎛️ **Grid with swatches** — `theme list` renders a true-color swatch per theme; monochrome chrome, color only where color is the information
- 🖼️ **Wallpaper rotation** — systemd user timer, per-theme sets, `theme rotate 15`
- 🌗 **Day/Night scheduling** — `theme schedule set 07:00=catppuccin-latte 19:00=moodpeak`
- 📦 **Manifest-driven library** — themes are cloned, never vendored; `theme sync`, `add`, `update`, `remove`, `credits`
- 🛡️ **Nothing from a theme is ever executed** — colors are whitelist-extracted from data files
- 🔁 **Idempotent, reversible** — `theme install` / `theme uninstall` leave no trace
- 🩺 **`theme doctor`** — distro, GNOME, hooks, extensions, timers, palette coverage, `--json`
- 🐚 **Completions** for zsh, bash, fish · `--json` / `--plain` for scripting · `NO_COLOR` respected
- 🖥️ **Curated GNOME extension set** — macOS-grade dock, glass blur, Hyprland-style tiling, rounded corners, Spotlight-style search, user themes

## 🧭 Commands

| Group | Commands |
|---|---|
| **Browse** | `theme` · `theme list [--plain\|--json]` · `theme pick` · `theme preview <name>` · `theme show <name>` |
| **Apply** | `theme <name> [random]` · `theme random` · `theme next` · `theme graphite` |
| **Wallpaper** | `theme wall <name\|random>` · `theme next-wall` · `theme rotate <min\|off>` · `theme schedule set HH:MM=theme …` |
| **Library** | `theme sync` · `theme add <git-url>` · `theme update` · `theme remove <name>` · `theme credits` |
| **System** | `theme install` · `theme uninstall [--purge]` · `theme icons` · `theme doctor [-v\|--json]` · `theme export` / `import` · `theme completions <shell>` |
| **Info** | `theme current` · `theme about` · `theme version` · `theme help [command]` |

`theme help` is a full manual with grouped sections; `theme help <command>` is a deep-dive with examples.

> 🧪 **`--dry-run`** works on every state-changing command (`install`, `uninstall`, any theme apply, `schedule`, `rotate`, `sync`). It prints exactly what would change — gsettings writes, systemd units, clones — and touches nothing. Combine with `--json` / `--plain` for scripting, and `NO_COLOR=1` for plain output.

## 🛠️ Installation

### Requirements
- **GNOME 45–50** (Wayland or X11) — the only hard dependency
- **Python ≥ 3.11** and **git**
- Optional, auto-detected: **Ghostty**, **Neovim**, **btop**, **fzf** (for `theme pick`), **uv** or **pipx** (installs the GNOME extension set)

### Installation through NPM
```bash
npm i -g colson-arch-theme
theme install
```

### Installation through the AUR (Arch, Manjaro, EndeavourOS, CachyOS, Garuda)
```bash
yay -S colson-arch-theme
theme install
```

### From source
```bash
git clone https://github.com/colson0x1/colson-arch-theme.git
cd colson-arch-theme && ./install.sh
```

### First Launch
`theme install` is idempotent and does five things: syncs the library (official bundle + community manifest, shallow and parallel), wires the Ghostty include and the Neovim hook, starts the wallpaper-rotation timer, installs the curated GNOME extension set, and applies the desktop polish (dock, blur, boot-to-desktop, window buttons).

**Log out and back in once** — GNOME Shell only discovers new extensions at login. Then:

```bash
theme icons        # prints the icon + cursor package line for pacman / yay / paru / apt / dnf
theme pick
```

## 🎛️ What a Switch Changes

| Layer | Mechanism |
|---|---|
| **Wallpaper** | GNOME `picture-uri` + `picture-uri-dark` + lock screen, zoom-fit |
| **GNOME Shell** | `~/.themes/theme-<name>/gnome-shell/gnome-shell.css` generated from the palette — top bar, overview, quick settings, popups, notifications, search, lock — loaded via User Themes |
| **GTK apps** | the theme's `gtk.css` when shipped, otherwise a generated libadwaita sheet (`window`, `view`, `headerbar`, `sidebar`, `card`, `popover`, `accent`, `success`, `warning`, `error`) into `gtk-4.0` + `gtk-3.0` |
| **GNOME** | accent color from the theme's accent · `color-scheme` from its mode |
| **Ghostty** | palette to `~/.config/ghostty/themes/active.conf`, pulled by a one-line include — reload with <kbd>ctrl</kbd>+<kbd>shift</kbd>+<kbd>,</kbd> |
| **Neovim** | `active-nvim.lua` via a one-line hook in `init.lua` — sets the colorscheme if installed, no-ops otherwise |
| **btop** | theme file copied, `color_theme` set |
| **Icons** | the theme's declared Yaru variant or Papirus, when installed |

## 🖤 Graphite — The True-Black OS

```bash
theme graphite && theme wall futurism
```
Pure `#000000` surfaces, crisp `#edeef1` text, white accent — across the shell, every GTK app, and the terminal. The doctrine and the eye candy don't have to fight: a monochrome OS under a cinematic wallpaper.

## 🌗 Day / Night

```bash
theme schedule set 07:00=catppuccin-latte 19:00=moodpeak
theme schedule           # show · theme schedule off
```
A user timer checks every five minutes and applies the latest slot at or before the current time.

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

- **One dependency-free Python file** (`bin/theme`) ships identically via npm, the AUR, and a git clone — no runtime, no framework, nothing to break.
- The shell theme uses the `@import url("resource:///org/gnome/shell/theme/gnome-shell.css")` technique: the stock stylesheet stays authoritative for layout; only colors are overridden. If GNOME ever rejects a generated sheet, it falls back to stock. Nothing breaks.
- XDG paths throughout: library in `$XDG_DATA_HOME/colson-arch-theme/themes`, state in `$XDG_CONFIG_HOME/colson-arch-theme`.

## 🏢 Built for Hand-Tuned Systems

These are the laws this project is engineered around — the reason it can live on a production workstation:

1. **Nothing from a theme is ever executed.** Bundles are data. Only whitelisted color keys ever reach your configs.
2. **Graphite is the base; palettes are opt-in.** Your terminal doctrine survives every experiment.
3. **Every hook is idempotent and reversible.** Re-run `install` freely; `uninstall` removes every line it added.
4. **Themes are never vendored.** 5+ GB and 111 authors' licenses stay where they belong — `theme sync` clones, `theme credits` credits.
5. **Monochrome chrome.** Color appears only where color *is* the information — the swatches.

## 🐧 Compatibility

- **Arch-first**: `theme icons` speaks `pacman` / `yay` / `paru`, the AUR package declares real dependencies, the extension set is tested on Arch.
- **Every Arch flavor**: Manjaro, EndeavourOS, CachyOS, Garuda, ArcoLinux — anything with GNOME.
- **Any GNOME distro works**: Fedora Workstation, Ubuntu, Debian, openSUSE — GNOME is the only hard dependency; `theme icons` prints the `apt` / `dnf` lines.

## ❕ Keeping Everything Up-to-Date

```bash
npm update -g colson-arch-theme     # or: yay -Syu colson-arch-theme
theme update                         # pull every theme repo
theme doctor                         # verify the whole stack is green
```

## 🧯 Uninstall

```bash
theme uninstall            # reverses hooks, timers and GTK overrides; keeps the library
theme uninstall --purge    # also removes the library and state
```

## ✅ Verified

Every documented flow is exercised against a throwaway `$HOME` before release — install (twice, for idempotence), apply, Graphite, wallpaper, `list --plain/--json`, preview, `doctor --json`, schedule, export→import, completions, uninstall — plus ten error paths that must fail with a one-line message and a non-zero exit, never a traceback. The npm tarball is installed to a scratch prefix and run from there; the PKGBUILD is built with `makepkg` and its contents inspected.

```bash
theme doctor -v      # your own machine, any time
npm test             # parse + smoke, no GNOME required
```

## 🤝 Contributing

Adding a theme is one line in `manifest/themes.txt` — `name https://github.com/user/repo`. See [CONTRIBUTING.md](CONTRIBUTING.md) for the development loop, style, and the Conventional Commits standard this repo follows.

## 🙏 Credits

- **[Omarchy](https://omarchy.org)** by DHH and the Omacom Foundation — the theme format and the official bundle.
- **Every community theme author** — run `theme credits` for the full list with repositories. This tool stands on their work.

## 📜 License

MIT © [Colson](https://github.com/colson0x1). Themes remain under their authors' licenses.

---

<div align="center">
<h3>Made with 💎 by <a href="https://github.com/colson0x1">Colson (@colson0x1)</a></h3>
<p>Part of the <b>colson-*</b> tooling line — <a href="https://www.npmjs.com/package/colson-nvim">colson-nvim</a> · <a href="https://www.npmjs.com/package/colson-tmux">colson-tmux</a> · <b>colson-arch-theme</b></p>
</div>
