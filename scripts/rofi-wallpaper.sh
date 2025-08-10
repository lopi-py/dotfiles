theme="launcher"
wallpapers="$(xdg-user-dir PICTURES)/wallpapers"

get_wallpapers_list() {
    find "$wallpapers" -type f | rg -i '\.(jpg|jpeg|png)$' | while read -r img; do
        name=$(basename "$img")
        echo -en "$name\x00icon\x1f$img\n"
    done
}

rofi_cmd() {
    rofi -dmenu -p "wallpaper" -theme "$theme" -show-icons \
        -theme-str "listview { lines: 2; columns: 4; }
            element { orientation: vertical; } 
            element-icon { padding: 8px; size: 128px; }"
}

menu=$(get_wallpapers_list | rofi_cmd)
[[ -z "$menu" ]] && exit

~/scripts/set-wallpaper.sh "$wallpapers/$menu"
