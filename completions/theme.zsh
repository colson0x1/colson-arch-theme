#compdef theme
# colson-arch-theme zsh completion — by Colson (@colson0x1)
_theme() {
  local -a cmds themes
  cmds=(list pick preview show random next graphite wall next-wall rotate schedule sync add update remove credits install uninstall icons doctor export completions current about version help)
  if (( CURRENT == 2 )); then
    themes=(${(f)"$(theme list --plain 2>/dev/null | sed 's/^[a-z]*: //' | tr ',' '\n' | sed 's/^ *//')"})
    _describe 'command' cmds; _describe 'theme' themes
  elif [[ $words[2] == (preview|show|wall|remove) ]]; then
    themes=(${(f)"$(theme list --plain 2>/dev/null | sed 's/^[a-z]*: //' | tr ',' '\n' | sed 's/^ *//')"})
    _describe 'theme' themes
  fi
}
_theme "$@"

