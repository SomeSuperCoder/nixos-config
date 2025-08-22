{
	description = "My system configuration";

	inputs = {
		nixpkgs.url = "github:nixos/nixpkgs/nixos-25.05";

		home-manager = {
			url = "github:nix-community/home-manager/release-25.05";
			inputs.nixpkgs.follows = "nixpkgs";
		};

                nixvim.url = "github:nix-community/nixvim";
                nixvim.inputs.nixpkgs.follows = "nixpkgs";

                catppuccin.url = "github:catppuccin/nix";

		zen-browser.url = "github:MarceColl/zen-browser-flake";
	};

	outputs = { nixpkgs, home-manager, nixvim, catppuccin, ... }:
		let
			system = "x86_64-linux";
		in {
		nixosConfigurations.nixos = nixpkgs.lib.nixosSystem {
			inherit system;
			modules = [ ./configuration.nix catppuccin.nixosModules.catppuccin ];
		};

		homeConfigurations.allen = home-manager.lib.homeManagerConfiguration {
			pkgs = nixpkgs.legacyPackages.${system};
			modules = [ ./home.nix nixvim.homeModules.nixvim catppuccin.homeModules.catppuccin ];
		};
	};
}
