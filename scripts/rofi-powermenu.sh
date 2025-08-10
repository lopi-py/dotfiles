theme="powermenu"
uptime="$(uptime -p | sed -e 's/up //g')"

lock="󰍁"
suspend="󰒲"
shutdown="󰐥"
reboot="󰜉"
logout="󰈆"

rofi_cmd() {
    rofi -dmenu -mesg "Uptime: $uptime" -theme "$theme" -selected-row 2
}

menu=$(echo -e "$lock\n$suspend\n$shutdown\n$reboot\n$logout" | rofi_cmd)
case $menu in
    $lock)
        sleep 0.1
        loginctl lock-session
        ;;
    $suspend)
        sleep 0.1
        systemctl suspend
        ;;
    $shutdown)
        systemctl poweroff
        ;;
    $reboot)
        systemctl reboot
        ;;
    $logout)
        uwsm stop
        ;;
esac
