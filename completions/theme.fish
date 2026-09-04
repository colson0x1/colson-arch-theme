# colson-arch-theme fish completion — by Colson (@colson0x1)
complete -c theme -f -a list
complete -c theme -f -a pick
complete -c theme -f -a preview
complete -c theme -f -a show
complete -c theme -f -a random
complete -c theme -f -a next
complete -c theme -f -a graphite
complete -c theme -f -a wall
complete -c theme -f -a next-wall
complete -c theme -f -a rotate
complete -c theme -f -a schedule
complete -c theme -f -a sync
complete -c theme -f -a add
complete -c theme -f -a update
complete -c theme -f -a remove
complete -c theme -f -a credits
complete -c theme -f -a install
complete -c theme -f -a uninstall
complete -c theme -f -a icons
complete -c theme -f -a doctor
complete -c theme -f -a export
complete -c theme -f -a completions
complete -c theme -f -a current
complete -c theme -f -a about
complete -c theme -f -a version
complete -c theme -f -a help
complete -c theme -f -a '(theme list --plain 2>/dev/null | sed "s/^[a-z]*: //" | tr "," "\n" | string trim)'
