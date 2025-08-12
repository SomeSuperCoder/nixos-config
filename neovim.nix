{ pkgs, lib, ... }:

{
	programs.nvf = {
		enable = true;
                enableManpages = true;
                
		settings.vim = {
			theme = {
				enable = true;
				name = "catppuccin";
				style = "mocha";
			};
			
			statusline.lualine.enable = true;
			telescope.enable = true;
			autocomplete.nvim-cmp.enable = true;
                        # nvim-tree.enable = true; ???

			
			lsp.enable = true;

			languages = {
				enableTreesitter = true;
				
				# Programming languages
				nix.enable = true;
				ts.enable = true;
				rust.enable = true;
                                go.enable = true;
			};
		};
	};
}
