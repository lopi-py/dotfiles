theme="screenshot"
output="$(xdg-user-dir PICTURES)/screenshots"

screen="󰍹"
region="󰆞"
window=""

rofi_cmd() {
    rofi -dmenu -theme "$theme"
}

if [[ "$1" == "--instant" ]]; then
    hyprshot -m output -m active --clipboard-only
    exit
fi

menu=$(echo -e "$screen\n$region\n$window" | rofi_cmd)
case $menu in
    $screen)
        sleep 0.1
        hyprshot -o "$output" -m output -m active
        ;;
    $region)
        hyprshot -o "$output" -m region
        ;;
    $window)
        hyprshot -o "$output" -m window
        ;;
esac
