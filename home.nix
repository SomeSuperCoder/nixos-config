{ config, pkgs, inputs, ... }: {
	home = {
		username = "allen";
		homeDirectory = "/home/allen";
		stateVersion = "25.05";
	};

	imports = [
		./home/git.nix
		./home/neovim.nix
                ./home/kitty.nix
                ./home/zsh.nix
		./home/tmux.nix

                ./home/hypr/hyprland.nix
		./home/hypr/hypridle.nix
                ./home/hypr/waybar.nix
		./home/hypr/rofi.nix
	];
}
