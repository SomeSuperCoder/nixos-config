{ pkgs, ... }:

{ environment.systemPackages = with pkgs; [
# Super important
    home-manager

# Graphical apps
	firefox
	telegram-desktop
	ghostty
	gnome-tweaks
	nwg-look

# Regular system packages
	wget 
	tree
	psmisc

# CLI apps
	zoxide
	fd
	ripgrep
	gemini-cli
	btop
	fzf
	git

# Hyprland
	wofi
	waybar
	swww
	swaynotificationcenter
	libnotify
	kitty
	wl-clipboard
	hyprlock
	hyprshot
	pavucontrol
	networkmanagerapplet
	playerctl

# Themes
	zsh-syntax-highlighting
	nerd-fonts.jetbrains-mono
	bibata-cursors
## Catppuccin
	catppuccin-gtk
	catppuccin-grub
	catppuccin-papirus-folders

# Programming languages
	go
	python314
	rustc
	cargo
	nodejs
	deno

# DPI bypass software
	zapret

# Fetches
	neofetch
	fastfetch
	pfetch
	microfetch
	ufetch

# Funny CLI apps ;)
	fortune
	bb
	figlet
	toilet
	cowsay
	sl
	pipes
	cbonsai
	cmatrix
	unimatrix
	cava
	];
}
