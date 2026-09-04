# Maintainer: Colson (@colson0x1)
pkgname=colson-arch-theme
pkgver=1.0.0
pkgrel=1
pkgdesc="Omarchy-grade theming for GNOME on Arch — 133+ themes, generated GNOME Shell + GTK theming, Ghostty/Neovim/btop, picker, rotation, scheduling"
arch=('any')
url="https://github.com/colson0x1/colson-arch-theme"
license=('MIT')
depends=('python>=3.11' 'git' 'gnome-shell' 'glib2')
optdepends=('fzf: interactive picker (theme pick)'
            'ghostty: terminal palette integration'
            'neovim: colorscheme hook'
            'btop: btop theme sync'
            'uv: installs the GNOME extension set via gext'
            'papirus-icon-theme: icon theme fallback'
            'yaru-icon-theme: per-theme icon variants'
            'adw-gtk-theme: GTK3 apps follow the theme'
            'bibata-cursor-theme: cursor theme')
source=("$pkgname-$pkgver.tar.gz::$url/archive/v$pkgver.tar.gz")
sha256sums=('SKIP')

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
