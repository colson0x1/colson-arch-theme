# colson-arch-theme fish completion — by Colson (@colson0x1)
set -l cmds list pick preview show random next graphite tmux wall next-wall rotate schedule forge sync add update remove credits install uninstall activate extensions target targets icons doctor export import completions current about version help
for c in $cmds
  complete -c theme -f -n "not __fish_seen_subcommand_from $cmds" -a $c
end
complete -c theme -f -n "not __fish_seen_subcommand_from $cmds" -a '(theme list --plain 2>/dev/null | sed "s/^[a-z]*: //; s/, */\n/g" | string trim)'
complete -c theme -f -n "__fish_seen_subcommand_from preview show wall remove forge" -a '(theme list --plain 2>/dev/null | sed "s/^[a-z]*: //; s/, */\n/g" | string trim)'
complete -c theme -f -n "__fish_seen_subcommand_from tmux" -a "mine theme toggle key"
complete -c theme -f -n "__fish_seen_subcommand_from target targets" -a "on off wallpaper shell gtk accent icons cursor ghostty alacritty kitty foot tmux nvim btop browser vscode live font"
complete -c theme -f -n "__fish_seen_subcommand_from completions" -a "zsh bash fish"
