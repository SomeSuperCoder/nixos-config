{ pkgs, ... }:

{
	programs.zsh = {
		enable = true;
		
		syntaxHighlighting.enable = true;
		
		oh-my-zsh = {
			enable = true;

			theme = "robbyrussell";
		};
		
		shellAliases =
		let
			flakePath = "~/nixos-config";
		in {
			rebuild-system = "sudo nixos-rebuild switch --flake ${flakePath}";
                                collect-garbage = "sudo nix-collect-garbage -d && rebuild-system";
                                hms = "home-manager switch --flake ${flakePath}";
                        };
        };
}
