{ config, pkgs, inputs, ... }: {
	home = {
		username = "allen";
		homeDirectory = "/home/allen";
		stateVersion = "25.05";
	};

	imports = [
		./git.nix
		./neovim.nix
	];
}
