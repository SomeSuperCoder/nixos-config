{ pkgs }:

pkgs.writeShellScriptBin "wallpaper-switcher" ''
   # Wallpaper directory
WALLPAPER_DIR="$HOME/Wallpapers"

# Rofi theme (optional)
# ROFI_THEME="~/.config/rofi/wallpaper.rasi"

# Get list of wallpaper files
WALLPAPERS=("$WALLPAPER_DIR"/*.{jpg,jpeg,png})

# Function to display images in Rofi
function display_wallpapers() {
    for file in "$\{WALLPAPERS[@]}"; do
        echo -en "$(basename "$file")\x00icon\x1f$file\n"
    done
}
# Function to set wallpaper
function set_wallpaper() {
    local wallpaper="$1"
    # Using feh
    # feh --bg-fill "$wallpaper"
    # For other wallpaper setters, replace the above line:
    # nitrogen --set-zoom-fill "$wallpaper"
    # or
    # swaybg -i "$wallpaper" (for Wayland)
    swww img "$chosen" --transition-type center
    cp "$chosen" ~/.config/background
}

# Main function
function main() {
    # Check if wallpapers exist
    if [ $\{#WALLPAPERS[@]} -eq 0 ]; then
        notify-send "Wallpaper Selector" "No wallpapers found in $WALLPAPER_DIR"
        exit 1
    fi

    # Show Rofi menu
    chosen="$WALLPAPER_DIR/$(display_wallpapers | rofi -dmenu -i -show-icons -p "Select wallpaper")"

    # If a wallpaper was chosen
    if [ -n "$chosen" ]; then
        set_wallpaper "$chosen"
        # notify-send "Wallpaper Changed" "Selected: $(basename "$chosen")"
    fi
}

main 
''
