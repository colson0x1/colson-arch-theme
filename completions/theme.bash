# colson-arch-theme bash completion — by Colson (@colson0x1)
_theme() {
  local cur="${COMP_WORDS[COMP_CWORD]}" prev="${COMP_WORDS[1]}"
  local cmds="list pick preview show random next graphite tmux wall next-wall rotate schedule forge sync add update remove credits install uninstall activate extensions target targets icons doctor export import completions current about version help"
  if [ "$COMP_CWORD" -eq 1 ]; then
    local themes; themes="$(theme list --plain 2>/dev/null | sed 's/^[a-z]*: //; s/, */ /g')"
    COMPREPLY=($(compgen -W "$cmds $themes" -- "$cur")); return
  fi
  case "$prev" in
    tmux) COMPREPLY=($(compgen -W "mine theme toggle key" -- "$cur")) ;;
    target|targets) if [ "$COMP_CWORD" -eq 2 ]; then COMPREPLY=($(compgen -W "on off" -- "$cur"));
                    else COMPREPLY=($(compgen -W "wallpaper shell gtk accent icons cursor ghostty alacritty kitty foot tmux nvim btop browser vscode live font" -- "$cur")); fi ;;
    completions) COMPREPLY=($(compgen -W "zsh bash fish" -- "$cur")) ;;
    preview|show|wall|remove|forge) local themes; themes="$(theme list --plain 2>/dev/null | sed 's/^[a-z]*: //; s/, */ /g')"
                    COMPREPLY=($(compgen -W "$themes" -- "$cur")) ;;
  esac
}
complete -F _theme theme
