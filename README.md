<div align="center">

# colson-arch-theme

**Omarchy-grade theming for GNOME on Arch — and any GNOME distro.**

One command themes the whole OS: GNOME Shell, GTK apps, wallpaper, accent, Ghostty, Neovim, btop, icons.
133+ Omarchy themes · 660+ wallpapers · live-preview picker · wallpaper rotation · day/night scheduling · a true-black monochrome base.

[![npm](https://img.shields.io/npm/v/colson-arch-theme?style=flat-square&color=000)](https://www.npmjs.com/package/colson-arch-theme)
[![AUR](https://img.shields.io/aur/version/colson-arch-theme?style=flat-square&color=000)](https://aur.archlinux.org/packages/colson-arch-theme)
[![license](https://img.shields.io/badge/license-MIT-000?style=flat-square)](LICENSE)
[![GNOME](https://img.shields.io/badge/GNOME-45%E2%80%9350-000?style=flat-square)](#compatibility)
[![zero deps](https://img.shields.io/badge/deps-python%20%2B%20git-000?style=flat-square)](#how-it-works)

by **Colson** ([@colson0x1](https://github.com/colson0x1))

</div>

---

```
$ theme pick            # browse 133 themes with a live preview — Enter applies everything
$ theme moodpeak        # wallpaper · GNOME Shell · GTK apps · accent · Ghostty · nvim · btop · icons
$ theme graphite        # the whole OS in true black and white
$ theme random          # roulette
```

## Why this exists

[Omarchy](https://omarchy.org) — DHH's opinionated Arch — ships the best-curated theme catalog in Linux. It is also **Hyprland-only**. If you run GNOME (most people do), none of it applies to you.

`colson-arch-theme` brings the **entire catalog to GNOME** and goes further than a color swap: it **generates a GNOME Shell theme and a libadwaita color sheet from each palette**, so the top bar, overview, quick settings, notifications, lock screen, and every GTK app follow the theme — not just the wallpaper and terminal.

It is built for a hand-tuned system, so it never takes yours over:

- **Graphite is the base.** A true-black monochrome OS theme (shell, GTK, terminal). Every Omarchy palette is opt-in, one command away, one command back.
- **Nothing from a theme is ever executed.** Colors are whitelist-extracted from data files. Theme repos are cloned, never run.
- **Every hook is idempotent and reversible.** `theme install` wires it; `theme uninstall` removes every trace.

## Install

**npm** (any distro with Node):
```bash
npm i -g colson-arch-theme && theme install
```

**AUR** (Arch and derivatives — Manjaro, EndeavourOS, CachyOS, Garuda):
```bash
yay -S colson-arch-theme && theme install
```

**From source:**
```bash
git clone https://github.com/colson0x1/colson-arch-theme.git
cd colson-arch-theme && ./install.sh
```

`theme install` is idempotent and does five things: clones the theme library (official bundle + the community manifest, shallow and parallel), wires the Ghostty include and the Neovim hook, starts the wallpaper-rotation timer, installs the curated GNOME extension set, and applies the desktop polish. **Log out and back in once** afterwards — GNOME Shell only scans for new extensions at login.

Then the two optional finishing touches:
```bash
theme icons        # prints the icon + cursor package line for your package manager
theme pick
```

## What a switch changes

| Layer | Mechanism |
|---|---|
| **Wallpaper** | GNOME `picture-uri` + dark variant + lock screen, zoom-fit |
| **GNOME Shell** | a shell theme **generated from the palette** — top bar, overview, quick settings, popups, notifications, search, lock screen — loaded through the User Themes extension |
| **GTK apps** | the theme's own `gtk.css` when it ships one, otherwise a **generated libadwaita color sheet** (window/view/headerbar/sidebar/card/popover/accent/success/warning/error) into `gtk-4.0` and `gtk-3.0` |
| **GNOME** | accent color from the theme's accent · light/dark from its mode |
| **Ghostty** | palette written to `~/.config/ghostty/themes/active.conf`, pulled in by a one-line include (reload with <kbd>ctrl</kbd>+<kbd>shift</kbd>+<kbd>,</kbd>) |
| **Neovim** | `active-nvim.lua`, loaded by a one-line hook — sets the theme's colorscheme if you have it, silently no-ops otherwise |
| **btop** | theme file copied, `color_theme` set |
| **Icons** | the theme's declared icon variant (Yaru-*) or Papirus, when installed |

Coverage is total: every one of the 133 themes yields a full 16-color palette (`theme doctor` proves it), so every theme themes everything.

## Commands

```
BROWSE     theme · list · pick · preview <name> · show <name>
APPLY      theme <name> [random] · random · next · graphite
WALLPAPER  wall <name|random> · next-wall · rotate <minutes|off> · schedule set HH:MM=theme …
LIBRARY    sync · add <git-url> · update · remove <name> · credits
SYSTEM     install · uninstall [--purge] · icons · doctor · export/import · completions <shell>
INFO       current · about · version · help [command]
```

`theme help` is a full manual; `theme help <command>` is a deep-dive. `--plain` and `--json` on `list`, `current`, `about`, `doctor` for scripting. Color output auto-disables when piped (`NO_COLOR` respected).

### The picker

`theme pick` opens an fzf browser: type to filter, the preview card renders live — accent, bg/fg/cursor, all 16 colors with hex, and a sample line painted in the theme's own foreground-on-background — and <kbd>Enter</kbd> applies everything.

### Day/night

```bash
theme schedule set 07:00=catppuccin-latte 19:00=moodpeak
```
A user timer checks every five minutes and applies the latest slot at or before the current time. `theme schedule off` stops it.

### Graphite

```bash
theme graphite && theme wall futurism
```
Monochrome OS, cinematic wallpaper. The terminal doctrine and the eye candy don't have to fight.

## How it works

```
theme <name>
  ├─ terminal_colors()   colors.toml → ghostty.conf → alacritty.toml → kitty.conf   (whitelist extraction)
  ├─ set_wall()          gsettings picture-uri / picture-uri-dark / screensaver
  ├─ shell_apply()       ~/.themes/theme-<name>/gnome-shell/gnome-shell.css   (imports stock theme, overrides colors)
  ├─ gtk_apply()         theme gtk.css  →  or gtk_generate(): libadwaita @define-color sheet
  ├─ accent + mode       org.gnome.desktop.interface accent-color / color-scheme
  ├─ Ghostty · nvim · btop · icons
  └─ state               ~/.config/colson-arch-theme/active
```

The shell theme uses the `@import url("resource:///…/gnome-shell.css")` technique (the same one the Marble shell theme relies on): the stock stylesheet stays authoritative for layout; only colors are overridden. If GNOME ever rejects a generated sheet it falls back to stock — nothing breaks.

The library is **never bundled**. Themes belong to their authors; the package ships a manifest and `theme sync` clones them. `theme credits` lists every author and repository.

## Compatibility

- **GNOME 45–50** on Wayland or X11 is the only hard dependency. Python ≥ 3.11 and git.
- **Arch-first**: `theme icons` speaks `pacman` / `yay` / `paru`, the AUR package declares real dependencies, and the extension set is tested on Arch.
- **Any GNOME distro works**: Fedora, Ubuntu, Debian, openSUSE — `theme icons` prints the right line for `apt` and `dnf`.
- Optional, auto-detected: Ghostty, Neovim, btop, fzf (`pick`), `uv`/`pipx` (extension installs via `gext`).

## Uninstall

```bash
theme uninstall           # reverses hooks, timers, GTK overrides; keeps the library
theme uninstall --purge   # and removes the library and state
```

## Contributing

Adding a theme is one line in `manifest/themes.txt` (`name https://github.com/user/repo`). See [CONTRIBUTING.md](CONTRIBUTING.md).

## Credits

- [Omarchy](https://omarchy.org) by DHH and the Omacom Foundation — the theme format and the official bundle.
- Every community theme author — run `theme credits` for the full list with repositories.

## License

MIT © [Colson](https://github.com/colson0x1). Themes remain under their authors' licenses.

---

<div align="center"><sub>colson-arch-theme · by Colson (@colson0x1) · part of the <a href="https://github.com/colson0x1">colson-*</a> tooling line with colson-nvim and colson-tmux</sub></div>
