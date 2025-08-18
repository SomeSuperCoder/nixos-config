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
                                hms = "home-manager switch --flake ${flakePath}";
                                edit-nixos-config = "cd ${flakePath} && nvim && cd -";
                                collect-garbage = "sudo nix-collect-garbage -d && rebuild-system";
				update-system = "sudo echo && cd ${flakePath} && nix flake update && rebuild-system --upgrade && hms && cd -";
				package-install = "nvim ${flakePath}/modules/packages.nix && rebuild-system";
                        };
        };
}
