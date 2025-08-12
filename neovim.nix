{ pkgs, lib, ... }:

{
	programs.nvf = {
		enable = true;
                enableManpages = true;
                
		settings.vim = {
                        vimAlias = true;
                        viAlias = true;

			theme = {
				enable = true;
				name = "catppuccin";
				style = "mocha";
			};
			
			statusline.lualine.enable = true;
			telescope.enable = true;
			autocomplete.nvim-cmp.enable = true;

                        filetree = {
                                nvimTree.enable = true;
                        };

                        binds = {
                                whichKey.enable = true;
                                cheatsheet.enable = true;
                        };
			
			lsp.enable = true;

			languages = {
                                # enableFormat = true;
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
