width=$(hyprctl -j monitors | jq -r '.[0].width')
height=$(hyprctl -j monitors | jq -r '.[0].height')
x=$(hyprctl -j cursorpos | jq -r '.x')
y=$(hyprctl -j cursorpos | jq -r '.y')

cursorpos=$(awk -v x="$x" -v y="$y" -v w="$width" -v h="$height" \
    'BEGIN { printf "%.4f,%.4f\n", x/w, y/h }')

swww img --transition-type grow \
    --transition-fps 60 \
    --transition-duration 1.25 \
    --transition-pos "$cursorpos" \
    --invert-y \
    "$1"

matugen image $1
