#compdef theme
# colson-arch-theme zsh completion — by Colson (@colson0x1)
_theme() {
  local -a cmds themes
  cmds=(list pick preview show random next graphite tmux wall next-wall rotate schedule forge sync add update remove credits install uninstall activate extensions target targets icons doctor export import completions current about version help)
  _theme_names() { themes=(${(f)"$(theme list --plain 2>/dev/null | sed 's/^[a-z]*: //; s/, */\n/g; s/^ *//')"}) }
  if (( CURRENT == 2 )); then
    _theme_names
    _describe 'command' cmds; _describe 'theme' themes
  elif [[ $words[2] == (preview|show|wall|remove|forge) ]]; then
    _theme_names
    _describe 'theme' themes
  elif [[ $words[2] == tmux ]]; then
    local -a sub; sub=(mine theme toggle key)
    _describe 'tmux' sub
  elif [[ $words[2] == (target|targets) ]]; then
    if (( CURRENT == 3 )); then local -a onoff; onoff=(on off); _describe 'state' onoff
    else local -a tg; tg=(wallpaper shell gtk accent icons cursor ghostty alacritty kitty foot tmux nvim btop browser vscode live font); _describe 'target' tg; fi
  elif [[ $words[2] == completions ]]; then
    local -a sh; sh=(zsh bash fish); _describe 'shell' sh
  fi
}
_theme "$@"
