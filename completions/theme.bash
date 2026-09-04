# colson-arch-theme bash completion — by Colson (@colson0x1)
_theme() {
  local cur="${COMP_WORDS[COMP_CWORD]}"
  local themes="$(theme list --plain 2>/dev/null | sed 's/^[a-z]*: //' | tr ',' ' ')"
  COMPREPLY=($(compgen -W "list pick preview show random next graphite wall next-wall rotate schedule sync add update remove credits install uninstall icons doctor export completions current about version help $themes" -- "$cur"))
}
complete -F _theme theme

