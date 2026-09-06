#!/usr/bin/env bash
# colson-arch-theme — isolated end-to-end test. by Colson (@colson0x1)
#
# Runs the real `theme` binary inside a throwaway HOME with every system command that could touch a
# desktop replaced by a logging stub: gsettings, systemctl, nvim, tmux, ps, pgrep, a browser, the icon
# cache, gnome-extensions. Synthetic theme bundles, Papirus, Bibata and adw-gtk3 stand in for the real
# packages. Nothing here can reach the machine it runs on.
set -euo pipefail
HERE="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
T="$HERE/bin/theme"; export T
FAKE="$(mktemp -d "${TMPDIR:-/tmp}/colson-arch-theme-test.XXXXXX")"
cleanup() { python3 -c 'import shutil, sys; shutil.rmtree(sys.argv[1], ignore_errors=True)' "$FAKE"; }
trap cleanup EXIT
export FAKE
export HOME="$FAKE" XDG_CONFIG_HOME="$FAKE/.config" XDG_DATA_HOME="$FAKE/.local/share" XDG_RUNTIME_DIR="$FAKE/run" XDG_DATA_DIRS="$FAKE/usr/share"
export PATH="$FAKE/bin:$PATH" NO_COLOR=1 PYTHONDONTWRITEBYTECODE=1

mkdir -p "$FAKE/bin" "$FAKE/run" "$FAKE/.config"/{alacritty,kitty,foot,tmux,ghostty,nvim,"Cursor/User"} \
         "$FAKE/.local/share/colson-arch-theme/themes/_omarchy/themes" "$FAKE/.cursor/extensions/catppuccin.catppuccin-vsc-3.17.0" \
         "$FAKE/.local/share/icons" "$FAKE/.local/share/themes/adw-gtk3-dark" "$FAKE/.local/share/themes/adw-gtk3" "$FAKE/usr/share/icons" \
         "$FAKE/.local/share/gnome-shell/extensions/dash-to-dock@micxgx.gmail.com/schemas" "$FAKE/.local/share/gnome-shell/extensions/user-theme@gnome-shell-extensions.gcampax.github.com/schemas"

# ── stubs ──────────────────────────────────────────────────────────────────────
stub() { printf '#!/usr/bin/env bash\n%s\n' "$2" > "$FAKE/bin/$1"; chmod +x "$FAKE/bin/$1"; }
stub gsettings 'echo "gsettings $*" >> "$FAKE/calls.log"; [ "$1" = get ] && echo "'"'"''"'"'"; exit 0'
stub systemctl 'echo "systemctl $*" >> "$FAKE/calls.log"; [ "${2:-}" = is-active ] && echo inactive; exit 0'
stub nvim 'echo "nvim $*" >> "$FAKE/calls.log"; exit 0'
stub tmux 'echo "tmux $*" >> "$FAKE/calls.log"; exit 0'
stub ps 'exit 0'
stub pgrep '[ "${2:-}" = chromium ] && exit 0; exit 1'
stub chromium 'echo "chromium $*" >> "$FAKE/calls.log"; exit 0'
stub gtk-update-icon-cache 'exit 0'
stub gnome-extensions 'exit 1'
stub gnome-shell 'echo "GNOME Shell 50.0"'

# ── user configs, in the shapes people actually have ──────────────────────────
printf '[window]\nopacity = 0.9\n\n[general]\nlive_config_reload = true\n' > "$FAKE/.config/alacritty/alacritty.toml"
printf 'font_size 12\n' > "$FAKE/.config/kitty/kitty.conf"
printf '[main]\nfont=monospace:size=11\n[colors]\nalpha=1.0\n' > "$FAKE/.config/foot/foot.ini"
printf 'set -g prefix C-a\nset -g status-style "bg=#000000,fg=#00b32d"\n' > "$FAKE/.config/tmux/tmux.conf"
printf 'background = #000000\n' > "$FAKE/.config/ghostty/config"
printf 'vim.opt.number = true\n' > "$FAKE/.config/nvim/init.lua"
printf '{\n  "workbench.iconTheme": "material-icon-theme",\n  // a comment survives\n  "workbench.colorTheme": "Cursor Dark",\n  "editor.fontSize": 14,\n}\n' > "$FAKE/.config/Cursor/User/settings.json"

# ── synthetic bundles: a dark and a light theme ────────────────────────────────
B="$FAKE/.local/share/colson-arch-theme/themes/_omarchy/themes"
mkdir -p "$B/mocha/backgrounds" "$B/latte/backgrounds"
cat > "$B/mocha/colors.toml" <<'EOF'
accent = "#89b4fa"
foreground = "#cdd6f4"
background = "#1e1e2e"
selection_background = "#45475a"
color0 = "#45475a"
color1 = "#f38ba8"
color2 = "#a6e3a1"
color3 = "#f9e2af"
color4 = "#89b4fa"
color5 = "#f5c2e7"
color6 = "#94e2d5"
color7 = "#bac2de"
color8 = "#585b70"
color9 = "#f38ba8"
color10 = "#a6e3a1"
color11 = "#f9e2af"
color12 = "#89b4fa"
color13 = "#f5c2e7"
color14 = "#94e2d5"
color15 = "#a6adc8"
EOF
printf '{ "name": "Catppuccin Mocha", "extension": "catppuccin.catppuccin-vsc" }\n' > "$B/mocha/vscode.json"
printf 'Yaru-blue\n' > "$B/mocha/icons.theme"
printf 'return { colorscheme = "catppuccin-mocha" }\n' > "$B/mocha/neovim.lua"
printf 'font = "mono"\nradius = 6\nglass = 0.9\ncoords = "36.1699° N · 115.1398° W"\n' > "$B/mocha/gnome.toml"
stub fc-list 'echo "JetBrainsMono Nerd Font"' 
printf 'x' > "$B/mocha/backgrounds/1.jpg"
sed 's/#1e1e2e/#eff1f5/; s/#cdd6f4/#4c4f69/; s/accent = "#89b4fa"/accent = "#1e66f5"\nmode = "light"/' "$B/mocha/colors.toml" > "$B/latte/colors.toml"
printf 'x' > "$B/latte/backgrounds/1.jpg"

# ── synthetic icon and cursor packs ───────────────────────────────────────────
P="$FAKE/.local/share/icons/Papirus"; mkdir -p "$P/48x48/places" "$P/22x22/places" "$P/48x48/apps"
cat > "$P/index.theme" <<'EOF'
[Icon Theme]
Name=Papirus
Inherits=breeze,hicolor
Directories=22x22/places,48x48/places,48x48/apps

[22x22/places]
Context=Places
Size=22
Type=Fixed

[48x48/places]
Context=Places
Size=48
Type=Fixed

[48x48/apps]
Context=Applications
Size=48
Type=Fixed
EOF
for c in blue adwaita violet black white; do for d in 22x22 48x48; do for v in "" -open -documents; do printf '<svg/>' > "$P/$d/places/folder-$c$v.svg"; done; done; done
mkdir -p "$FAKE/.local/share/icons/Papirus-Dark"; printf '[Icon Theme]\nName=Papirus-Dark\nInherits=Papirus\n' > "$FAKE/.local/share/icons/Papirus-Dark/index.theme"
for b in Bibata-Modern-Ice Bibata-Modern-Classic; do mkdir -p "$FAKE/.local/share/icons/$b"; printf '[Icon Theme]\nName=%s\n' "$b" > "$FAKE/.local/share/icons/$b/index.theme"; done
python3 - <<'EOF'
import os, socket
for n in ("nvim.1.0", "nvim.2.0"):
    socket.socket(socket.AF_UNIX).bind(os.path.join(os.environ["XDG_RUNTIME_DIR"], n))
EOF

# ── the flows ─────────────────────────────────────────────────────────────────
"$T" install --no-sync --no-extensions > "$FAKE/install1.log"
"$T" install --no-sync --no-extensions > "$FAKE/install2.log"
: > "$FAKE/calls.log"
"$T" mocha > "$FAKE/mocha.log"
python3 - <<'EOF'
import os, pathlib, re, tomllib
F = pathlib.Path(os.environ["FAKE"]); cfg = F / ".config"
i1, i2 = (F / "install1.log").read_text(), (F / "install2.log").read_text()
assert "alacritty: import wired" in i1 and "kitty: include wired" in i1 and "foot: include wired" in i1 and "tmux: source-file wired" in i1, i1
assert "alacritty: import already wired" in i2 and "kitty: include already wired" in i2 and "tmux: source-file already wired" in i2, i2
ala = (cfg / "alacritty/alacritty.toml").read_text()
assert '[general]\nimport = ["~/.config/alacritty/colson-arch-theme.toml"]\nlive_config_reload = true' in ala, ala
tomllib.loads(ala); tomllib.loads((cfg / "alacritty/colson-arch-theme.toml").read_text())
assert 'background = "#1e1e2e"' in (cfg / "alacritty/colson-arch-theme.toml").read_text()
assert "background #1e1e2e" in (cfg / "kitty/colson-arch-theme.conf").read_text()
fo = (cfg / "foot/colson-arch-theme.ini").read_text()
assert "[colors]\nbackground=1e1e2e" in fo and "[cursor]\ncolor=1e1e2e" in fo and (cfg / "foot/foot.ini").read_text().startswith("# colson-arch-theme:")
tm = (cfg / "tmux/colson-arch-theme.conf").read_text()
assert 'set -g status-style "bg=#1e1e2e' in tm and "source-file -q " in (cfg / "tmux/tmux.conf").read_text()
assert 'set -g window-status-current-format "#[fg=#000000,bg=#89b4fa,bold] #I #{b:pane_current_path} "' in tm, tm
assert 'set -g @colson-arch-theme-status-right "#{?client_prefix,' in tm and "tmux compose'" in tm and "bind T run-shell -b '" in tm and "tmux toggle" in tm, tm
assert not (cfg / "colson-arch-theme/tmux").exists() or (cfg / "colson-arch-theme/tmux").read_text().strip() == "theme"
s = (cfg / "Cursor/User/settings.json").read_text()
assert '"workbench.colorTheme": "Catppuccin Mocha"' in s and "// a comment survives" in s and '"editor.fontSize": 14,' in s, s
assert '"Cursor": "Cursor Dark"' in (cfg / "colson-arch-theme/vscode.prev").read_text()
ov = F / ".local/share/icons/colson-arch-theme-papirus-blue-dark"
idx = (ov / "index.theme").read_text()
assert "Inherits=Papirus-Dark,Papirus,breeze-dark,hicolor" in idx and "Directories=22x22/places,48x48/places" in idx and "[48x48/places]\nSize=48\nContext=Places\nType=Fixed" in idx, idx
assert sorted(p.name for p in (ov / "48x48/places").iterdir()) == ["folder-documents.svg", "folder-open.svg", "folder.svg"]
assert os.readlink(ov / "48x48/places/folder.svg").endswith("Papirus/48x48/places/folder-blue.svg") and not (ov / "48x48/apps").exists()
log = (F / "calls.log").read_text()
for needle in ("icon-theme colson-arch-theme-papirus-blue-dark", "cursor-theme Bibata-Modern-Ice", "gtk-theme adw-gtk3-dark",
               "primary-color #1e1e2e", "accent-color blue", "color-scheme prefer-dark", "picture-uri file://",
               "chromium --no-startup-window --set-theme-color=30,30,46", "tmux source-file -q"):
    assert needle in log, needle
assert log.count("nvim --server") == 2 and "--remote-expr execute('luafile" in log
css = (F / ".themes/theme-mocha/gnome-shell/gnome-shell.css").read_text()
assert css.startswith("/* theme: mocha") and "@import" not in css and not re.search(r"@[A-Z0-9_]+@", css) and css.count("{") == css.count("}")
for sel in ("#overviewGroup { background-color: #1e1e2e; }", ".overview-tile:hover", ".app-grid-running-dot { background-color: #89b4fa; }", "#dash .dash-background", ".app-folder {"):
    assert sel in css, sel
for needle in ("org.gnome.shell.extensions.dash-to-dock background-color '#1e1e2e'", "org.gnome.shell.extensions.dash-to-dock custom-theme-running-dots-color '#89b4fa'",
               "org.gnome.shell.extensions.user-theme name theme-mocha"):
    assert needle in log, needle
gtk = (cfg / "gtk-4.0/gtk.css").read_text(); gtk3 = (cfg / "gtk-3.0/gtk.css").read_text()
assert "@define-color accent_bg_color #89b4fa" in gtk and ":root {" in gtk and "--window-bg-color: #1e1e2e;" in gtk and "--accent-bg-color: #89b4fa;" in gtk
assert "@define-color theme_bg_color #1e1e2e" in gtk3 and "@define-color theme_selected_bg_color #89b4fa" in gtk3
assert 'stage { font-family: "JetBrainsMono Nerd Font"' in css and "border-radius: 6px" in css, "gnome.toml knobs must reach the shell sheet"
assert "font-name 'JetBrainsMono Nerd Font 10'" in log or "reset org.gnome.desktop.interface font-name" in log
hook = (cfg / "colson-arch-theme/active-nvim.lua").read_text()
assert 'local scheme, mode = "catppuccin-mocha", "dark"' in hook
rep = (F / "mocha.log").read_text()
assert "icons colson-arch-theme-papirus-blue-dark" in rep and "cursor Bibata-Modern-Ice" in rep and "vscode Catppuccin Mocha → Cursor" in rep and "2 neovim · tmux" in rep, rep
print("mocha: hooks, fragments, editor, overlay, shell + gtk sheets, gsettings, browser, live — OK")
EOF

# ── tmux: yours or the theme's ────────────────────────────────────────────────
: > "$FAKE/calls.log"
"$T" tmux mine > "$FAKE/tmux-mine.log"
"$T" tmux > "$FAKE/tmux-status.log"
python3 - <<'EOF'
import os, pathlib
F = pathlib.Path(os.environ["FAKE"]); cfg = F / ".config"; log = (F / "calls.log").read_text()
tm = (cfg / "tmux/colson-arch-theme.conf").read_text()
assert tm.startswith("# colson-arch-theme: graphite — your own tmux status line rules") and "status-style" not in tm and "bind T run-shell -b '" in tm, tm
assert (cfg / "colson-arch-theme/tmux").read_text().strip() == "mine"
for needle in ("tmux set -gqu status-style", "tmux set -gqu status-right", "tmux set -gqu window-status-current-format", "tmux set -gqu menu-selected-style",
               "tmux set -gqu @colson-arch-theme-status-right", f"tmux source-file -q {cfg}/tmux/tmux.conf"):
    assert needle in log, needle
assert f"tmux source-file -q {cfg}/tmux/colson-arch-theme.conf" not in log
assert "your own status line" in (F / "tmux-mine.log").read_text()
st = (F / "tmux-status.log").read_text()
assert "your own status line" in st and "mine — yours until the next switch" in st and "prefix T" in st and "source-file wired" in st, st
print("tmux mine: fragment steps aside, options unset, tmux.conf re-sourced, state recorded — OK")
EOF
: > "$FAKE/calls.log"
"$T" tmux toggle > /dev/null
python3 - <<'EOF'
import os, pathlib
F = pathlib.Path(os.environ["FAKE"]); cfg = F / ".config"; log = (F / "calls.log").read_text()
assert 'set -g status-style "bg=#1e1e2e' in (cfg / "tmux/colson-arch-theme.conf").read_text()
assert (cfg / "colson-arch-theme/tmux").read_text().strip() == "theme" and f"tmux source-file -q {cfg}/tmux/colson-arch-theme.conf" in log  # written: it differed from mine
EOF
"$T" tmux mine > /dev/null
: > "$FAKE/calls.log"
"$T" mocha > /dev/null
python3 - <<'EOF'
import os, pathlib
F = pathlib.Path(os.environ["FAKE"]); cfg = F / ".config"; log = (F / "calls.log").read_text()
assert (cfg / "colson-arch-theme/tmux").read_text().strip() == "theme", "a switch brings the theme's status line back"
assert 'set -g status-style "bg=#1e1e2e' in (cfg / "tmux/colson-arch-theme.conf").read_text() and "tmux source-file -q " in log
EOF
: > "$FAKE/calls.log"
"$T" target off tmux > "$FAKE/target-off.log"
python3 - <<'EOF'
import os, pathlib
F = pathlib.Path(os.environ["FAKE"]); cfg = F / ".config"; log = (F / "calls.log").read_text()
assert "status-style" not in (cfg / "tmux/colson-arch-theme.conf").read_text() and "tmux set -gqu status-style" in log
assert "(your own status line, live)" in (F / "target-off.log").read_text(), (F / "target-off.log").read_text()
EOF
: > "$FAKE/calls.log"
"$T" target on tmux > "$FAKE/target-on.log"
python3 - <<'EOF'
import os, pathlib
F = pathlib.Path(os.environ["FAKE"]); cfg = F / ".config"; log = (F / "calls.log").read_text()
assert 'set -g status-style "bg=#1e1e2e' in (cfg / "tmux/colson-arch-theme.conf").read_text() and f"tmux source-file -q {cfg}/tmux/colson-arch-theme.conf" in log
assert "(the theme's status line, live)" in (F / "target-on.log").read_text(), (F / "target-on.log").read_text()
EOF
: > "$FAKE/calls.log"
"$T" tmux key F12 > /dev/null
"$T" tmux key off > /dev/null
"$T" tmux key T > /dev/null
python3 - <<'EOF'
import os, pathlib
F = pathlib.Path(os.environ["FAKE"]); cfg = F / ".config"; log = (F / "calls.log").read_text()
assert "tmux unbind T\n" in log and "tmux unbind F12\n" in log and (cfg / "colson-arch-theme/tmux-key").read_text().strip() == "T", log
assert "bind T run-shell -b '" in (cfg / "tmux/colson-arch-theme.conf").read_text()
print("tmux toggle, switch, target on/off, key — OK")
EOF
PYTHONDONTWRITEBYTECODE=1 HOME="$FAKE" T="$T" python3 - <<'EOF'
import importlib.util, os, re
from importlib.machinery import SourceFileLoader
spec = importlib.util.spec_from_loader("th", SourceFileLoader("th", os.environ["T"])); th = importlib.util.module_from_spec(spec); spec.loader.exec_module(th)
assert th.tmux_hooks("#(a) x #[fg=red]#(b $(c)) #{?x,#(d),} #(open") == ["#(a)", "#(b $(c))", "#(d)"]
assert th.tmux_hooks("plain %H:%M") == []
d = th.themes()["mocha"]; lines, acc, mode = th.terminal_colors(d)
frag = th.tmux_fragment("mocha", lines, acc, "dark")
setted = set(re.findall(r"^set -gq? (\S+)", frag, re.M)) - {f"@{th.APP}-status-left", f"@{th.APP}-status-right"}
assert setted == set(th.TMUX_OPTIONS) - {"status-left", "status-right"}, setted ^ set(th.TMUX_OPTIONS)
assert "#(" not in frag.replace("run-shell", ""), "run-shell format-expands #(…); the design must never travel through it"
print("tmux unit: #(…) extraction, fragment options == restore list — OK")
EOF
: > "$FAKE/calls.log"
"$T" latte > "$FAKE/latte.log"
python3 - <<'EOF'
import os, pathlib
F = pathlib.Path(os.environ["FAKE"]); log = (F / "calls.log").read_text(); rep = (F / "latte.log").read_text()
for needle in ("color-scheme default", "gtk-theme adw-gtk3", "cursor-theme Bibata-Modern-Classic", "icon-theme colson-arch-theme-papirus-"):
    assert needle in log, needle
assert "gtk-theme adw-gtk3-dark" not in log
assert 'local scheme, mode = nil, "light"' in (F / ".config/colson-arch-theme/active-nvim.lua").read_text()
assert "reset org.gnome.desktop.interface font-name" in log, "sans theme must restore the default font"
overlays = sorted(p.name for p in (F / ".local/share/icons").glob("colson-arch-theme-papirus-*"))
assert len(overlays) == 1 and not overlays[0].endswith("-dark"), overlays
print("latte: light mode flips gtk3, cursor, color-scheme; one light overlay replaces the dark one — OK")
EOF
: > "$FAKE/calls.log"
"$T" graphite > "$FAKE/graphite.log"
python3 - <<'EOF'
import os, pathlib
F = pathlib.Path(os.environ["FAKE"]); cfg = F / ".config"; log = (F / "calls.log").read_text(); rep = (F / "graphite.log").read_text()
assert '"workbench.colorTheme": "Cursor Dark"' in (cfg / "Cursor/User/settings.json").read_text() and not (cfg / "colson-arch-theme/vscode.prev").exists()
assert "chromium --no-startup-window --set-theme-color=0,0,0" in log and "accent-color slate" in log and "primary-color #000000" in log
assert (cfg / "alacritty/colson-arch-theme.toml").read_text().startswith("# colson-arch-theme: graphite")
assert "status-style" not in (cfg / "tmux/colson-arch-theme.conf").read_text() and "tmux set -gqu status-style" in log, "graphite returns your own tmux status line"
assert 'local scheme, mode = nil, "dark"' in (cfg / "colson-arch-theme/active-nvim.lua").read_text()
assert "icons colson-arch-theme-papirus-white-dark" in rep and "vscode restored: Cursor" in rep, rep
print("graphite: editor restored, black frame, white folders, base fragments — OK")
EOF
"$T" uninstall > /dev/null
python3 - <<'EOF'
import os, pathlib
F = pathlib.Path(os.environ["FAKE"]); cfg = F / ".config"
assert (cfg / "alacritty/alacritty.toml").read_text() == '[window]\nopacity = 0.9\n\n[general]\nlive_config_reload = true\n'
for f in ("kitty/kitty.conf", "foot/foot.ini", "tmux/tmux.conf", "ghostty/config", "nvim/init.lua"):
    assert "colson-arch-theme" not in (cfg / f).read_text(), f
for f in ("alacritty/colson-arch-theme.toml", "kitty/colson-arch-theme.conf", "foot/colson-arch-theme.ini", "tmux/colson-arch-theme.conf", "gtk-4.0/gtk.css", "gtk-3.0/gtk.css"):
    assert not (cfg / f).exists(), f
assert not list((F / ".local/share/icons").glob("colson-arch-theme-papirus-*"))
log = (F / "calls.log").read_text()
assert "tmux unbind T\n" in log and not (cfg / "colson-arch-theme/tmux").exists() and not (cfg / "colson-arch-theme/tmux-key").exists()
for k in ("gtk-theme", "icon-theme", "cursor-theme"):
    assert f"gsettings reset org.gnome.desktop.interface {k}" in log, k
assert "reset org.gnome.shell.extensions.dash-to-dock custom-background-color" in log and "org.gnome.shell.extensions.user-theme name " in log
print("uninstall: every file back to how it was, overlays gone, settings + dock reset — OK")
EOF
n=$("$T" extensions --plain | wc -l); [ "$n" -eq 9 ] || { echo "extensions --plain: expected 9 rows, got $n"; exit 1; }
echo "extensions: 9 rows offline — OK"
# ── collections + forge ───────────────────────────────────────────────────────
mkdir -p "$FAKE/.local/share/colson-arch-theme/themes/_pack/themes/packone/backgrounds"
cp "$B/mocha/colors.toml" "$FAKE/.local/share/colson-arch-theme/themes/_pack/themes/packone/colors.toml"
"$T" list --plain | grep -q "packone" || { echo "collection bundle not listed"; exit 1; }
"$T" remove packone >/dev/null 2>&1 && { echo "collection bundle must not be removable"; exit 1; }
"$T" forge mocha --svg --size 960x540 > "$FAKE/forge.log"
"$T" forge packone --svg --size 960x540 --styles grid,phosphor --out "$FAKE/forge-out" > /dev/null
python3 - <<'EOF'
import os, pathlib, re, xml.etree.ElementTree as ET
F = pathlib.Path(os.environ["FAKE"])
over = F / ".local/share/colson-arch-theme/themes/_forge/mocha/backgrounds"
files = sorted(p.name for p in over.iterdir())
assert files == ["circuit.svg", "contour.svg", "grid.svg", "lamport.svg", "phosphor.svg", "rack.svg", "spectrum.svg", "topology.svg"], files
for p in over.iterdir():
    root = ET.fromstring(p.read_text())
    assert root.tag.endswith("svg") and root.get("viewBox") == "0 0 960 540", p.name
    txt = p.read_text().lower()
    assert "#1e1e2e" in txt and "#89b4fa" in txt, p.name          # background and accent come from the palette
    assert "nan" not in txt and not re.search(r"@[a-z0-9_]+@", txt), p.name
a = (over / "grid.svg").read_text(); (over / "grid.svg").unlink()
os.system(f'"{os.environ["T"]}" forge mocha --svg --size 960x540 --styles grid >/dev/null')
assert (over / "grid.svg").read_text() == a, "forge must be deterministic"
out = F / "forge-out"; assert sorted(p.name for p in out.iterdir()) == ["grid.svg", "phosphor.svg"]
assert "forge" in (F / "forge.log").read_text() and "8 wallpapers" in (F / "forge.log").read_text()
print("forge: 8 styles valid SVG in the palette, deterministic, --out honored; collection listed and protected — OK")
EOF
echo "isolated suite: all green"
