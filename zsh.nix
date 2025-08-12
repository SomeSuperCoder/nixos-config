{
	programs.zsh = {
		enable = true;
		
		syntaxHighlighting.enable = true;
		
		ohMyZsh = {
			enable = true;

			theme = "robbyrussell";
		};
		
		shellAliases =
		let
			flakePath = "~/nix";
		in {
			rebuild-system = "sudo nixos-rebuild switch --flake ${flakePath}";
			hms = "home-manager switch --flake ${flakePath}";
		};
	};
}
