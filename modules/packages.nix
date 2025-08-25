{ pkgs, ... }:

{
	nixpkgs.config.allowUnfree = true;
	environment.systemPackages = with pkgs; [
# Super important
		home-manager

# Graphical apps
			firefox
			telegram-desktop
			ghostty
			gnome-tweaks
			nwg-look
			kdePackages.kdenlive
			xournalpp
			obsidian
			musicpod
			gnome-boxes
			gimp
			krita
			obs-studio

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
			w3m-full

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
			brightnessctl

# Themes
			zsh-syntax-highlighting
			nerd-fonts.jetbrains-mono
			bibata-cursors
			candy-icons
## Catppuccin
			catppuccin-gtk
			catppuccin-grub
			catppuccin-papirus-folders

# Rofi
			rofi-calc
			rofi-emoji

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
			lolcat
# **Custom scripts**
# (import ../scripts/wallpapers.nix { inherit pkgs; })
			];
}
