{ config, pkgs, inputs, ... }: {
	home = {
		username = "allen";
		homeDirectory = "/home/allen";
		stateVersion = "25.05";

                packages = with pkgs.gnomeExtensions; [
                        blur-my-shell
                        logo-menu
                ];
	};

	imports = [
		./git.nix
		./neovim.nix
                ./hyprland.nix
	];
}
