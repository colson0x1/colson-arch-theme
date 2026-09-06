# Maintainer: Colson (@colson0x1)
pkgname=colson-arch-theme
pkgver=1.2.0
pkgrel=1
pkgdesc="Omarchy-grade theming for GNOME on Arch — 143 themes incl. the original Colson pack, wallpapers forged from any palette, live across GNOME Shell, GTK, icons, cursor, terminals, tmux, Neovim, btop, browser and editors"
arch=('any')
url="https://github.com/colson0x1/colson-arch-theme"
license=('MIT')
depends=('python>=3.11' 'git' 'gnome-shell' 'glib2')
optdepends=('fzf: interactive picker (theme pick)'
            'alacritty: terminal palette'
            'kitty: terminal palette'
            'foot: terminal palette'
            'tmux: status line theme (opt-in)'
            'chromium: browser frame color'
            'ghostty: terminal palette integration'
            'neovim: colorscheme hook'
            'btop: btop theme sync'
            'librsvg: theme forge renders wallpapers to 4K PNG'
            'uv: installs the GNOME extension set via gext'
            'papirus-icon-theme: icon theme fallback'
            'yaru-icon-theme: per-theme icon variants'
            'adw-gtk-theme: GTK3 apps follow the theme'
            'bibata-cursor-theme: cursor theme')
source=("$pkgname-$pkgver.tar.gz::$url/archive/v$pkgver.tar.gz")
sha256sums=('57c2f5112a45d5b1427300a63320be126ad592bb0a6cda93b2ad73587e8ac324')

package() {
  cd "$pkgname-$pkgver"
  install -Dm755 bin/theme "$pkgdir/usr/bin/theme"
  ln -s theme "$pkgdir/usr/bin/colson-arch-theme"
  install -Dm644 manifest/themes.txt "$pkgdir/usr/share/$pkgname/manifest/themes.txt"
  install -Dm644 completions/theme.zsh "$pkgdir/usr/share/zsh/site-functions/_theme"
  install -Dm644 completions/theme.bash "$pkgdir/usr/share/bash-completion/completions/theme"
  install -Dm644 completions/theme.fish "$pkgdir/usr/share/fish/vendor_completions.d/theme.fish"
  install -Dm644 README.md "$pkgdir/usr/share/doc/$pkgname/README.md"
  install -Dm644 LICENSE "$pkgdir/usr/share/licenses/$pkgname/LICENSE"
}
