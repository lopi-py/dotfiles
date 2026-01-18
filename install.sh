#!/usr/bin/env bash
set -e

PACKAGES=(
    zsh zoxide starship
    tmux lazygit btop fastfetch
    less wget ripgrep fd jq
    tree-sitter-cli

    nodejs npm
    python
    luarocks

    neovim-git
    opencode-bin
)

DESKTOP_PACKAGES=(
    hyprland
    hypridle
    hyprlock
    hyprshot
    xdg-desktop-portal-hyprland
    awww
    mako
    wl-clip-persist
    uwsm
    hyprpicker
    rofi
    rofi-emoji
    waybar
    wireplumber
    brightnessctl
    playerctl
    # matugen
    # yazi
    # cava

    # nautilus

    alacritty
    foot

    librewolf-bin
    rofi-nerdy
    # python-pywalfox
)

install_yay() {
    sudo pacman -S --needed --noconfirm base-devel git
    if ! command -v yay &>/dev/null; then
        echo -e "\n==> Instaling yay..."
        tmpdir="$(mktemp -d)"
        git clone https://aur.archlinux.org/yay.git "$tmpdir"
        makepkg -si --noconfirm -D "$tmpdir"
    fi
}

install_pkgs() {
    echo -e "\n==> Installing packages..."
    yay -S --needed --noconfirm "${PACKAGES[@]}"
}

install_dotfiles() {
    sudo pacman -S --needed --noconfirm yadm
    if [[ ! -d "$HOME/.local/share/yadm/repo.git" ]]; then
        echo -e "\n==> Installing dotfiles..."
        yadm clone "https://github.com/lopi-py/dotfiles.git"
    else
        echo -e "\n==> Updating dotfiles..."
        yadm pull
    fi
}

install_nvim_config() {
    if [[ ! -d "$HOME/.config/nvim" ]]; then
        echo -e "\n==> Installing neovim config..."
        git clone "https://github.com/lopi-py/nvim-config" "$HOME/.config/nvim"
    else
        echo -e "\n==> Updating neovim config..."
        git -C "$HOME/.config/nvim" pull
    fi
}

install_yay
install_pkgs
install_dotfiles
install_nvim_config
